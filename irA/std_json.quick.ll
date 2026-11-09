source_filename = "std_json.quick.ll"
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
%"std/json:reader" = type { { i64, ptr }, i64, { i64, ptr }, i64, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/json:Object" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"std/json:writer" = type { { i64, ptr }, i32, %"std/prelude/text:StringBuilder" }
%"std/json:Key" = type { { i64, ptr } }
%"std/json:Skip" = type { }
@G_2estd_2fjson_2eMaxDepth = constant <{ [8 x i8] }> <{ [8 x i8] c"\E8\03\00\00\00\00\00\00" }>, align 8
@G_2estd_2fjson_2ehexDigits = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\10\00\00\00\00\00\00\00", ptr @G_2estd_2fjson_2ehexDigits.k1 }>, align 8
@G_2estd_2fjson_2ehexDigits.k1 = internal global <{ [16 x i8] }> <{ [16 x i8] c"\30\31\32\33\34\35\36\37\38\39\61\62\63\64\65\66" }>, align 8
define dso_local { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca %"std/json:reader"
  %l6 = alloca i32
  %l9 = alloca { i64, ptr }
  %rv = alloca { i32, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"std/json:reader" @std_2fjson_3areader_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0)
  store %"std/json:reader" %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load %"std/json:reader", ptr %l3
  %t5 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 112, i64 8)
  store %"std/json:reader" %t4, ptr %t5
  store ptr %t5, ptr %l1, !tbaa !29
  %t7 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i32 @std_2fjson_2estd_2fjson_3areader_2erun(ptr %v1, ptr %t7)
  store i32 %t9, ptr %l6
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  br label %bb2
bb2:
  br label %bb4
bb3:
  %t12 = load i32, ptr %l6, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, ptr } zeroinitializer, i32 %t20, 0
  store { i32, ptr } %t22, ptr %rv
  br label %ret
bb4:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"std/json:reader", ptr %t23, i32 0, i32 2
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l9, !tbaa !27
  %t27 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr ptr, ptr %t28, i64 0
  %t30 = load ptr, ptr %t29, !tbaa !39
  %t32 = insertvalue { i32, ptr } zeroinitializer, ptr %t30, 1
  store { i32, ptr } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i64, ptr } @std_2fjson_2eKeyOf(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i32
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 4}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 1
  %t9 = extractvalue { i64, ptr } %t6, 0
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  call void @olang_textcopy(ptr %t10, ptr %t8, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t9, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t12, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t14 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t14, ptr %l7
  br label %bb4
bb4:
  %t15 = load %"std/prelude/text:StringBuilder", ptr %l7
  store %"std/prelude/text:StringBuilder" %t15, ptr %l2
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = load i32, ptr %l1, !range !{i32 0, i32 4}
  call void @std_2fjson_2ekeyInto(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %t16, i32 %t17)
  br label %bb5
bb5:
  %t22 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t22, ptr %l12
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fjson_2ekeyInto(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i32
  %l3 = alloca i8
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i8
  %l13 = alloca i8
  %l14 = alloca i8
  %l21 = alloca i8
  %l27 = alloca i64
  %l30 = alloca i64
  %l48 = alloca { i64, ptr }
  %l55 = alloca i1
  %l57 = alloca i1
  %l58 = alloca { i64, ptr }
  %l67 = alloca i8
  %l68 = alloca { i64, ptr }
  %l73 = alloca i1
  %l74 = alloca i1
  %l76 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l82 = alloca i1
  %l87 = alloca i1
  %l93 = alloca ptr
  %l96 = alloca i1
  %l99 = alloca i8
  %l101 = alloca i8
  %l103 = alloca i8
  %l106 = alloca ptr
  %l108 = alloca i8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t6, { i64, ptr } %t7)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %ret
bb4:
  %t10 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t12 = trunc i64 2 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i8 95, ptr %l21, !tbaa !22
  br label %bb7
bb6:
  store i8 45, ptr %l21, !tbaa !22
  br label %bb7
bb7:
  %t15 = load i8, ptr %l21, !tbaa !22
  store i8 %t15, ptr %l3, !tbaa !22
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t24 = icmp sgt i64 %t20, %t21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load i64, ptr %l8, !tbaa !24
  %t28 = icmp sgt i64 %t26, 0
  br i1 %t28, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb13
bb10:
  %t30 = load i64, ptr %l7, !tbaa !24
  %t31 = load i64, ptr %l6, !tbaa !24
  %t34 = sub i64 %t30, %t31
  %t35 = load i64, ptr %l8, !tbaa !24
  %t38 = add i64 %t34, %t35
  %t40 = sub i64 %t38, 1
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = sdiv i64 %t40, %t41
  store i64 %t44, ptr %l30, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l30, !tbaa !24
  store i64 %t46, ptr %l27, !tbaa !24
  br label %bb13
bb13:
  %t47 = load i64, ptr %l27, !tbaa !24
  store i64 %t47, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb14
bb14:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb15, label %bb16
bb15:
  br label %bb69
bb16:
  br label %bb17
bb17:
  %t56 = load i64, ptr %l6, !tbaa !24
  %t57 = load i64, ptr %l10, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = mul i64 %t57, %t58
  %t64 = add i64 %t56, %t61
  store i64 %t64, ptr %l11, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t66, ptr %l48, !tbaa !27
  %t67 = load i64, ptr %l11, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  store i8 %t72, ptr %l12, !tbaa !22
  %t74 = load i8, ptr %l12, !tbaa !22
  %t76 = icmp eq i8 %t74, 95
  br i1 %t76, label %bb18, label %bb19
bb18:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb68
bb19:
  br label %bb20
bb20:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t80 = icmp sgt i64 %t78, 0
  br i1 %t80, label %bb21, label %bb22
bb21:
  %t82 = load i8, ptr %l12, !tbaa !22
  %t84 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t82)
  store i1 %t84, ptr %l57
  br label %bb23
bb22:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb24
bb23:
  %t85 = load i1, ptr %l57, !tbaa !21
  store i1 %t85, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l55, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t87, ptr %l58, !tbaa !27
  %t88 = load i64, ptr %l11, !tbaa !24
  %t90 = sub i64 %t88, 1
  %t92 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = getelementptr i8, ptr %t93, i64 %t90
  %t95 = load i8, ptr %t94, !tbaa !32
  store i8 %t95, ptr %l13, !tbaa !22
  %t97 = load i64, ptr %l11, !tbaa !24
  %t99 = add i64 %t97, 1
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t105 = icmp slt i64 %t99, %t102
  br i1 %t105, label %bb27, label %bb28
bb26:
  br label %bb46
bb27:
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l68, !tbaa !27
  %t108 = load i64, ptr %l11, !tbaa !24
  %t110 = add i64 %t108, 1
  %t112 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i8, ptr %t113, i64 %t110
  %t115 = load i8, ptr %t114, !tbaa !32
  store i8 %t115, ptr %l67, !tbaa !22
  br label %bb29
bb28:
  store i8 32, ptr %l67, !tbaa !22
  br label %bb29
bb29:
  %t117 = load i8, ptr %l67, !tbaa !22
  store i8 %t117, ptr %l14, !tbaa !22
  %t118 = load i8, ptr %l13, !tbaa !22
  %t120 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %t118)
  store i1 %t120, ptr %l73
  br label %bb30
bb30:
  %t121 = load i1, ptr %l73, !tbaa !21
  br i1 %t121, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb34
bb32:
  %t122 = load i8, ptr %l13, !tbaa !22
  %t124 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t122)
  store i1 %t124, ptr %l76
  br label %bb33
bb33:
  %t125 = load i1, ptr %l76, !tbaa !21
  store i1 %t125, ptr %l74, !tbaa !21
  br label %bb34
bb34:
  %t126 = load i1, ptr %l74, !tbaa !21
  br i1 %t126, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb42
bb36:
  %t127 = load i8, ptr %l13, !tbaa !22
  %t129 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t127)
  store i1 %t129, ptr %l79
  br label %bb37
bb37:
  %t130 = load i1, ptr %l79, !tbaa !21
  br i1 %t130, label %bb38, label %bb39
bb38:
  %t131 = load i8, ptr %l14, !tbaa !22
  %t133 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %t131)
  store i1 %t133, ptr %l82
  br label %bb40
bb39:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb41
bb40:
  %t134 = load i1, ptr %l82, !tbaa !21
  store i1 %t134, ptr %l80, !tbaa !21
  br label %bb41
bb41:
  %t135 = load i1, ptr %l80, !tbaa !21
  store i1 %t135, ptr %l77, !tbaa !21
  br label %bb42
bb42:
  %t136 = load i1, ptr %l77, !tbaa !21
  br i1 %t136, label %bb43, label %bb44
bb43:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb45
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t137 = load i64, ptr %l5, !tbaa !24
  %t139 = icmp eq i64 %t137, 0
  br i1 %t139, label %bb47, label %bb48
bb47:
  %t141 = load i64, ptr %l4, !tbaa !24
  %t143 = icmp sgt i64 %t141, 0
  br i1 %t143, label %bb49, label %bb50
bb48:
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l106, !tbaa !29
  %t146 = load i8, ptr %l12, !tbaa !22
  %t148 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t146)
  store i8 %t148, ptr %l108
  br label %bb65
bb49:
  %t149 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t151 = trunc i64 1 to i32
  %t152 = icmp eq i32 %t149, %t151
  %t154 = xor i1 %t152, true
  store i1 %t154, ptr %l87, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb51
bb51:
  %t156 = load i1, ptr %l87, !tbaa !21
  br i1 %t156, label %bb52, label %bb53
bb52:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i8, ptr %l3, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t157, i8 %t158)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l93, !tbaa !29
  %t162 = load i32, ptr %l2, !range !{i32 0, i32 4}
  %t164 = trunc i64 1 to i32
  %t165 = icmp eq i32 %t162, %t164
  br i1 %t165, label %bb56, label %bb57
bb56:
  %t167 = load i64, ptr %l4, !tbaa !24
  %t169 = icmp sgt i64 %t167, 0
  store i1 %t169, ptr %l96, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb58
bb58:
  %t171 = load i1, ptr %l96, !tbaa !21
  br i1 %t171, label %bb59, label %bb60
bb59:
  %t172 = load i8, ptr %l12, !tbaa !22
  %t174 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %t172)
  store i8 %t174, ptr %l101
  br label %bb61
bb60:
  %t175 = load i8, ptr %l12, !tbaa !22
  %t177 = call i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %t175)
  store i8 %t177, ptr %l103
  br label %bb62
bb61:
  %t178 = load i8, ptr %l101, !tbaa !22
  store i8 %t178, ptr %l99, !tbaa !22
  br label %bb63
bb62:
  %t179 = load i8, ptr %l103, !tbaa !22
  store i8 %t179, ptr %l99, !tbaa !22
  br label %bb63
bb63:
  %t180 = load ptr, ptr %l93, !tbaa !29
  %t181 = load i8, ptr %l99, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t180, i8 %t181)
  br label %bb64
bb64:
  %t182 = load i64, ptr %l4, !tbaa !24
  %t184 = add i64 %t182, 1
  store i64 %t184, ptr %l4, !tbaa !24
  br label %bb67
bb65:
  %t186 = load ptr, ptr %l106, !tbaa !29
  %t187 = load i8, ptr %l108, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t186, i8 %t187)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t188 = load i64, ptr %l5, !tbaa !24
  %t190 = add i64 %t188, 1
  store i64 %t190, ptr %l5, !tbaa !24
  br label %bb68
bb68:
  %t192 = load i64, ptr %l10, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l10, !tbaa !24
  br label %bb14
bb69:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @std_2fjson_2enameIndex(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l26 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l57 = alloca { i64, ptr }
  %l60 = alloca i64
  %l63 = alloca { i64, ptr }
  %l67 = alloca i1
  %l68 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l78 = alloca i1
  %l85 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l1, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp sle i64 %t5, 8
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = icmp sge i64 0, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t11 = icmp sle i64 0, 2305843009213693951
  br i1 %t11, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_bc241580f27121ab_ca64d2d20e518e77)
  unreachable
bb5:
  %t13 = mul i64 0, 4
  %t14 = insertvalue { i64, ptr } undef, i64 0, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t15, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_bc241580f27121ab_ca64d2d20e518e77)
  unreachable
bb7:
  store i64 16, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  %t17 = load i64, ptr %l2, !tbaa !24
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = mul i64 2, %t18
  %t23 = icmp slt i64 %t17, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = mul i64 %t27, 2
  store i64 %t29, ptr %l2, !tbaa !24
  br label %bb12
bb12:
  br label %bb8
bb13:
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l26, !tbaa !24
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb14, label %bb15
bb14:
  %t35 = load i64, ptr %l26, !tbaa !24
  %t36 = icmp sle i64 %t35, 2305843009213693951
  br i1 %t36, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_19fd7578c5cb7196_ea7f2a837a8496c2)
  unreachable
bb16:
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = mul i64 %t38, 4
  %t40 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l3, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = sub i64 %t44, 1
  store i64 %t46, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t50, %t51
  br i1 %t54, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_19fd7578c5cb7196_ea7f2a837a8496c2)
  unreachable
bb18:
  %t56 = load i64, ptr %l7, !tbaa !24
  %t58 = icmp sgt i64 %t56, 0
  br i1 %t58, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb23
bb20:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l5, !tbaa !24
  %t64 = sub i64 %t60, %t61
  %t65 = load i64, ptr %l7, !tbaa !24
  %t68 = add i64 %t64, %t65
  %t70 = sub i64 %t68, 1
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = sdiv i64 %t70, %t71
  store i64 %t74, ptr %l39, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb22
bb22:
  %t76 = load i64, ptr %l39, !tbaa !24
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb23
bb23:
  %t77 = load i64, ptr %l36, !tbaa !24
  store i64 %t77, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb24
bb24:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb25, label %bb26
bb25:
  br label %bb40
bb26:
  br label %bb27
bb27:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t88 = load i64, ptr %l7, !tbaa !24
  %t91 = mul i64 %t87, %t88
  %t94 = add i64 %t86, %t91
  store i64 %t94, ptr %l10, !tbaa !24
  %t96 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t96, ptr %l57, !tbaa !27
  %t97 = load i64, ptr %l10, !tbaa !24
  %t99 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t100 = load ptr, ptr %t99, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %t100, i64 %t97
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !37
  %t104 = call i64 @std_2fjson_2enameHash_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t102)
  store i64 %t104, ptr %l60
  br label %bb28
bb28:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t106 = load i64, ptr %l60, !tbaa !24
  %t108 = and i64 %t106, %t105
  store i64 %t108, ptr %l11, !tbaa !24
  br label %bb29
bb29:
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t110, ptr %l63, !tbaa !27
  %t111 = load i64, ptr %l11, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i32, ptr %t114, i64 %t111
  %t116 = load i32, ptr %t115, !tbaa !33
  %t118 = icmp ne i32 %t116, 0
  br i1 %t118, label %bb30, label %bb31
bb30:
  %t120 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t120, ptr %l68, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t121, ptr %l69, !tbaa !27
  %t122 = load i64, ptr %l11, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr i32, ptr %t125, i64 %t122
  %t127 = load i32, ptr %t126, !tbaa !33
  %t129 = sext i32 %t127 to i64
  %t131 = sub i64 %t129, 1
  %t133 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %t134, i64 %t131
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !37
  %t137 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t137, ptr %l75, !tbaa !27
  %t138 = load i64, ptr %l10, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr { i64, ptr }, ptr %t141, i64 %t138
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !37
  %t146 = call i1 @std_2fjson_2esameName_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v0, { i64, ptr } %t136, { i64, ptr } %t143)
  store i1 %t146, ptr %l78
  br label %bb32
bb31:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb33
bb32:
  %t147 = load i1, ptr %l78, !tbaa !21
  %t148 = xor i1 %t147, true
  store i1 %t148, ptr %l67, !tbaa !21
  br label %bb33
bb33:
  %t150 = load i1, ptr %l67, !tbaa !21
  %t151 = xor i1 %t150, true
  br i1 %t151, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  %t153 = load i64, ptr %l11, !tbaa !24
  %t155 = add i64 %t153, 1
  %t156 = load i64, ptr %l4, !tbaa !24
  %t159 = and i64 %t155, %t156
  store i64 %t159, ptr %l11, !tbaa !24
  br label %bb37
bb37:
  br label %bb29
bb38:
  %t161 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t161, ptr %l85, !tbaa !27
  %t162 = load i64, ptr %l11, !tbaa !24
  %t163 = load i64, ptr %l10, !tbaa !24
  %t165 = add i64 %t163, 1
  %t167 = trunc i64 %t165 to i32
  %t170 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t171 = load ptr, ptr %t170, !tbaa !27
  %t172 = getelementptr i32, ptr %t171, i64 %t162
  store i32 %t167, ptr %t172, !tbaa !33
  br label %bb39
bb39:
  %t173 = load i64, ptr %l9, !tbaa !24
  %t175 = add i64 %t173, 1
  store i64 %t175, ptr %l9, !tbaa !24
  br label %bb24
bb40:
  %t177 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t177, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @std_2fjson_2enumEq(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca double
  %l3 = alloca double
  %l4 = alloca i128
  %l6 = alloca ptr
  %l7 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l21 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l34 = alloca i128
  %l36 = alloca i128
  %l37 = alloca i32
  %l41 = alloca i128
  %l43 = alloca i128
  %l44 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t2 = load ptr, ptr %l6, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l6, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { double }, ptr %t12, i32 0, i32 0
  %t14 = load double, ptr %t13
  store double %t14, ptr %l2, !tbaa !26
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t17 = load ptr, ptr %l12, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 8}
  %t23 = icmp eq i64 %t21, 2
  store i1 %t23, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l13, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { double }, ptr %t27, i32 0, i32 0
  %t29 = load double, ptr %t28
  store double %t29, ptr %l3, !tbaa !26
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t31 = load double, ptr %l2, !tbaa !26
  %t32 = load double, ptr %l3, !tbaa !26
  %t35 = fcmp oeq double %t31, %t32
  store i1 %t35, ptr %rv
  br label %ret
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_6a96f216a7a18db5_c7851721732fae9)
  unreachable
bb16:
  br label %bb22
bb17:
  br i1 true, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_2a2c934c6745fec4_9721022dc2e60418)
  unreachable
bb22:
  %t37 = load ptr, ptr %l1, !tbaa !29
  store ptr %t37, ptr %l21, !tbaa !29
  store i1 false, ptr %l22, !tbaa !21
  %t38 = load ptr, ptr %l21, !tbaa !29
  %t39 = icmp ne ptr %t38, null
  br i1 %t39, label %bb23, label %bb24
bb23:
  %t41 = load ptr, ptr %l21, !tbaa !29
  %t42 = load i64, ptr %t41, !range !{i64 0, i64 8}
  %t44 = icmp eq i64 %t42, 2
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb24
bb24:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb25, label %bb26
bb25:
  br label %bb35
bb26:
  %t46 = load ptr, ptr %l1, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb27, label %bb28
bb27:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb28
bb28:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb29, label %bb30
bb29:
  br label %bb35
bb30:
  %t55 = load ptr, ptr %l1, !tbaa !29
  store ptr %t55, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t56 = load ptr, ptr %l29, !tbaa !29
  %t57 = icmp ne ptr %t56, null
  br i1 %t57, label %bb31, label %bb32
bb31:
  %t59 = load ptr, ptr %l29, !tbaa !29
  %t60 = load i64, ptr %t59, !range !{i64 0, i64 8}
  %t62 = icmp eq i64 %t60, 4
  store i1 %t62, ptr %l30, !tbaa !21
  br label %bb32
bb32:
  %t63 = load i1, ptr %l30, !tbaa !21
  br i1 %t63, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i1 false, ptr %rv
  br label %ret
bb40:
  call void @__olang_check_failed(ptr @olang_loc_247b9c864b1325ff_f9e87c5eec2e2b33)
  unreachable
bb41:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call { i32, i128 } @std_2fjson_2estd_2fjson_3aJson_2ewhole(ptr %v0, ptr %t65)
  %t68 = extractvalue { i32, i128 } %t67, 1
  %t69 = extractvalue { i32, i128 } %t67, 0
  store i32 %t69, ptr %l37
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb43, label %ok.71, !prof !99
ok.71:
  store i128 %t68, ptr %l36
  br label %bb42
bb42:
  %t72 = load i128, ptr %l36
  store i128 %t72, ptr %l34
  br label %bb47
bb43:
  %t73 = load i32, ptr %l37, !tbaa !23
  %t74 = ashr i32 %t73, 16
  %t76 = icmp eq i32 %t74, 1
  br i1 %t76, label %bb44, label %bb45
bb44:
  call void @__olang_errpay_pop()
  br label %bb45
bb45:
  br label %bb46
bb46:
  store i1 false, ptr %rv
  br label %ret
bb47:
  %t79 = load i128, ptr %l34
  store i128 %t79, ptr %l4
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = call { i32, i128 } @std_2fjson_2estd_2fjson_3aJson_2ewhole(ptr %v1, ptr %t80)
  %t83 = extractvalue { i32, i128 } %t82, 1
  %t84 = extractvalue { i32, i128 } %t82, 0
  store i32 %t84, ptr %l44
  %t85 = icmp ne i32 %t84, 0
  br i1 %t85, label %bb49, label %ok.86, !prof !99
ok.86:
  store i128 %t83, ptr %l43
  br label %bb48
bb48:
  %t87 = load i128, ptr %l43
  store i128 %t87, ptr %l41
  br label %bb53
bb49:
  %t88 = load i32, ptr %l44, !tbaa !23
  %t89 = ashr i32 %t88, 16
  %t91 = icmp eq i32 %t89, 1
  br i1 %t91, label %bb50, label %bb51
bb50:
  call void @__olang_errpay_pop()
  br label %bb51
bb51:
  br label %bb52
bb52:
  store i1 false, ptr %rv
  br label %ret
bb53:
  %t94 = load i128, ptr %l41
  %t95 = load i128, ptr %l4
  %t99 = icmp eq i128 %t95, %t94
  store i1 %t99, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2fjson_2eplainEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i8
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb18
bb3:
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  store i8 %t19, ptr %l3, !tbaa !22
  %t21 = load i8, ptr %l3, !tbaa !22
  %t23 = icmp eq i8 %t21, 34
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i8, ptr %l3, !tbaa !22
  %t27 = icmp eq i8 %t25, 92
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t30 = load i8, ptr %l3, !tbaa !22
  %t32 = icmp ult i8 %t30, 32
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb13
bb12:
  %t35 = load i8, ptr %l3, !tbaa !22
  %t37 = icmp uge i8 %t35, -128
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t40 = load i64, ptr %l2, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb17
bb17:
  br label %bb1
bb18:
  %t46 = load i64, ptr %l2, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fjson_2eputUtf8(ptr %v0, i64 %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %rv = alloca i64
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 128
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb2:
  br label %bb6
bb3:
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t11, ptr %l8, !tbaa !27
  %t12 = load i64, ptr %l1, !tbaa !24
  %t13 = load i64, ptr %l0, !tbaa !24
  %t15 = trunc i64 %t13 to i8
  %t18 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t12
  store i8 %t15, ptr %t20, !tbaa !32
  br label %bb5
bb4:
  br label %bb5
bb5:
  store i64 1, ptr %rv
  br label %ret
bb6:
  %t22 = load i64, ptr %l0, !tbaa !24
  %t24 = icmp slt i64 %t22, 2048
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb9, label %bb10
bb8:
  br label %bb12
bb9:
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l18, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  %t34 = load i64, ptr %l0, !tbaa !24
  %t36 = ashr i64 %t34, 6
  %t38 = or i64 192, %t36
  %t40 = trunc i64 %t38 to i8
  %t43 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 %t33
  store i8 %t40, ptr %t45, !tbaa !32
  %t46 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t46, ptr %l24, !tbaa !27
  %t47 = load i64, ptr %l1, !tbaa !24
  %t49 = add i64 %t47, 1
  %t50 = load i64, ptr %l0, !tbaa !24
  %t52 = and i64 %t50, 63
  %t54 = or i64 128, %t52
  %t56 = trunc i64 %t54 to i8
  %t59 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i8, ptr %t60, i64 %t49
  store i8 %t56, ptr %t61, !tbaa !32
  br label %bb11
bb10:
  br label %bb11
bb11:
  store i64 2, ptr %rv
  br label %ret
bb12:
  %t63 = load i64, ptr %l0, !tbaa !24
  %t65 = icmp slt i64 %t63, 65536
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  %t71 = icmp sgt i64 %t69, 0
  br i1 %t71, label %bb15, label %bb16
bb14:
  br label %bb18
bb15:
  %t73 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t73, ptr %l37, !tbaa !27
  %t74 = load i64, ptr %l1, !tbaa !24
  %t75 = load i64, ptr %l0, !tbaa !24
  %t77 = ashr i64 %t75, 12
  %t79 = or i64 224, %t77
  %t81 = trunc i64 %t79 to i8
  %t84 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i8, ptr %t85, i64 %t74
  store i8 %t81, ptr %t86, !tbaa !32
  %t87 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t87, ptr %l43, !tbaa !27
  %t88 = load i64, ptr %l1, !tbaa !24
  %t90 = add i64 %t88, 1
  %t91 = load i64, ptr %l0, !tbaa !24
  %t93 = ashr i64 %t91, 6
  %t95 = and i64 %t93, 63
  %t97 = or i64 128, %t95
  %t99 = trunc i64 %t97 to i8
  %t102 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i8, ptr %t103, i64 %t90
  store i8 %t99, ptr %t104, !tbaa !32
  %t105 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t105, ptr %l51, !tbaa !27
  %t106 = load i64, ptr %l1, !tbaa !24
  %t108 = add i64 %t106, 2
  %t109 = load i64, ptr %l0, !tbaa !24
  %t111 = and i64 %t109, 63
  %t113 = or i64 128, %t111
  %t115 = trunc i64 %t113 to i8
  %t118 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr i8, ptr %t119, i64 %t108
  store i8 %t115, ptr %t120, !tbaa !32
  br label %bb17
bb16:
  br label %bb17
bb17:
  store i64 3, ptr %rv
  br label %ret
bb18:
  %t122 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t126 = icmp sgt i64 %t124, 0
  br i1 %t126, label %bb19, label %bb20
bb19:
  %t128 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t128, ptr %l62, !tbaa !27
  %t129 = load i64, ptr %l1, !tbaa !24
  %t130 = load i64, ptr %l0, !tbaa !24
  %t132 = ashr i64 %t130, 18
  %t134 = or i64 240, %t132
  %t136 = trunc i64 %t134 to i8
  %t139 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i8, ptr %t140, i64 %t129
  store i8 %t136, ptr %t141, !tbaa !32
  %t142 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t142, ptr %l68, !tbaa !27
  %t143 = load i64, ptr %l1, !tbaa !24
  %t145 = add i64 %t143, 1
  %t146 = load i64, ptr %l0, !tbaa !24
  %t148 = ashr i64 %t146, 12
  %t150 = and i64 %t148, 63
  %t152 = or i64 128, %t150
  %t154 = trunc i64 %t152 to i8
  %t157 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr i8, ptr %t158, i64 %t145
  store i8 %t154, ptr %t159, !tbaa !32
  %t160 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t160, ptr %l76, !tbaa !27
  %t161 = load i64, ptr %l1, !tbaa !24
  %t163 = add i64 %t161, 2
  %t164 = load i64, ptr %l0, !tbaa !24
  %t166 = ashr i64 %t164, 6
  %t168 = and i64 %t166, 63
  %t170 = or i64 128, %t168
  %t172 = trunc i64 %t170 to i8
  %t175 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 %t163
  store i8 %t172, ptr %t177, !tbaa !32
  %t178 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t178, ptr %l84, !tbaa !27
  %t179 = load i64, ptr %l1, !tbaa !24
  %t181 = add i64 %t179, 3
  %t182 = load i64, ptr %l0, !tbaa !24
  %t184 = and i64 %t182, 63
  %t186 = or i64 128, %t184
  %t188 = trunc i64 %t186 to i8
  %t191 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr i8, ptr %t192, i64 %t181
  store i8 %t188, ptr %t193, !tbaa !32
  br label %bb21
bb20:
  br label %bb21
bb21:
  store i64 4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @std_2fjson_2espaceEnd(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i8
  %l10 = alloca { i64, ptr }
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp slt i64 %t3, %t6
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %bb18
bb3:
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t13, ptr %l10, !tbaa !27
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i8, ptr %t17, i64 %t14
  %t19 = load i8, ptr %t18, !tbaa !32
  store i8 %t19, ptr %l3, !tbaa !22
  %t21 = load i8, ptr %l3, !tbaa !22
  %t23 = icmp ne i8 %t21, 32
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = load i8, ptr %l3, !tbaa !22
  %t27 = icmp ne i8 %t25, 10
  store i1 %t27, ptr %l15, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l15, !tbaa !21
  br label %bb7
bb7:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t30 = load i8, ptr %l3, !tbaa !22
  %t32 = icmp ne i8 %t30, 13
  store i1 %t32, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t34 = load i1, ptr %l18, !tbaa !21
  br i1 %t34, label %bb11, label %bb12
bb11:
  %t35 = load i8, ptr %l3, !tbaa !22
  %t37 = icmp ne i8 %t35, 9
  store i1 %t37, ptr %l21, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb14, label %bb15
bb14:
  %t40 = load i64, ptr %l2, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l2, !tbaa !24
  br label %bb17
bb17:
  br label %bb1
bb18:
  %t46 = load i64, ptr %l2, !tbaa !24
  store i64 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i1
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, ptr } }
  %t19 = alloca { i64, [2 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 6
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
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
  %t18 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t16, 1
  store { i32, { i64, ptr } } %t18, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 8, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t21, ptr %l9
  %t22 = call ptr @__olang_errpay_push()
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l10
  %t25 = inttoptr i64 %t24 to ptr
  %t27 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t25, ptr %l9)
  store { i64, [2 x i64] } %t27, ptr %l12
  br label %bb10
bb10:
  %t28 = load { i64, [2 x i64] }, ptr %l12
  %t29 = load i64, ptr %l10
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc_a(ptr %t30, i64 24, i64 8)
  store { i64, [2 x i64] } %t28, ptr %t31
  call void @__olang_errpay_set(ptr %t31)
  %t34 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65544, 0
  store { i32, { i64, ptr } } %t34, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_7a4bfc7c7b524c63_98397af697b8e9df)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i1 } @std_2fjson_2estd_2fjson_3aJson_2eAsBool(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca ptr
  %l3 = alloca i1
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, i1 }
  %t19 = alloca { i64, [2 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { i1 }, ptr %t12, i32 0, i32 0
  %t14 = load i1, ptr %t13
  store i1 %t14, ptr %l1, !tbaa !21
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load i1, ptr %l1, !tbaa !21
  %t18 = insertvalue { i32, i1 } zeroinitializer, i1 %t16, 1
  store { i32, i1 } %t18, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 8, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t21, ptr %l9
  %t22 = call ptr @__olang_errpay_push()
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l10
  %t25 = inttoptr i64 %t24 to ptr
  %t27 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t25, ptr %l9)
  store { i64, [2 x i64] } %t27, ptr %l12
  br label %bb10
bb10:
  %t28 = load { i64, [2 x i64] }, ptr %l12
  %t29 = load i64, ptr %l10
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc_a(ptr %t30, i64 24, i64 8)
  store { i64, [2 x i64] } %t28, ptr %t31
  call void @__olang_errpay_set(ptr %t31)
  %t34 = insertvalue { i32, i1 } zeroinitializer, i32 65544, 0
  store { i32, i1 } %t34, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_fa9f38c9682d865a_6f1f2fc1eaeb7f26)
  unreachable
ret:
  %rr = load { i32, i1 }, ptr %rv
  ret { i32, i1 } %rr
}

define dso_local { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i128
  %l2 = alloca i128
  %l4 = alloca i128
  %l5 = alloca i32
  %l10 = alloca i1
  %l14 = alloca { i64, [2 x i64] }
  %l15 = alloca i64
  %l17 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, i64 }
  %t34 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, i128 } @std_2fjson_2estd_2fjson_3aJson_2ewhole(ptr %v0, ptr %a0)
  %t4 = extractvalue { i32, i128 } %t3, 1
  %t5 = extractvalue { i32, i128 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i128 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i128, ptr %l4
  store i128 %t8, ptr %l2
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
  %t19 = insertvalue { i32, i64 } zeroinitializer, i32 %t17, 0
  store { i32, i64 } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load i128, ptr %l2
  store i128 %t20, ptr %l1
  %t21 = load i128, ptr %l1
  %t22 = sext i64 -9223372036854775808 to i128
  %t25 = icmp slt i128 %t21, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t27 = load i128, ptr %l1
  %t28 = sext i64 9223372036854775807 to i128
  %t31 = icmp sgt i128 %t27, %t28
  store i1 %t31, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l10, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  store { i64, [2 x i64] } zeroinitializer, ptr %t34
  %t35 = getelementptr { i64, [2 x i64] }, ptr %t34, i32 0, i32 0
  store i64 8, ptr %t35
  %t36 = load { i64, [2 x i64] }, ptr %t34
  store { i64, [2 x i64] } %t36, ptr %l14
  %t37 = call ptr @__olang_errpay_push()
  %t38 = ptrtoint ptr %t37 to i64
  store i64 %t38, ptr %l15, !tbaa !24
  %t39 = load i64, ptr %l15
  %t40 = inttoptr i64 %t39 to ptr
  %t42 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t40, ptr %l14)
  store { i64, [2 x i64] } %t42, ptr %l17
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t43 = load { i64, [2 x i64] }, ptr %l17
  %t44 = load i64, ptr %l15
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc_a(ptr %t45, i64 24, i64 8)
  store { i64, [2 x i64] } %t43, ptr %t46
  call void @__olang_errpay_set(ptr %t46)
  %t49 = insertvalue { i32, i64 } zeroinitializer, i32 65544, 0
  store { i32, i64 } %t49, ptr %rv
  br label %ret
bb10:
  %t50 = load i128, ptr %l1
  %t52 = trunc i128 %t50 to i64
  %t54 = insertvalue { i32, i64 } zeroinitializer, i64 %t52, 1
  store { i32, i64 } %t54, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local { i32, double } @std_2fjson_2estd_2fjson_3aJson_2eAsNum(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca double
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l27 = alloca { i64, [2 x i64] }
  %l28 = alloca i64
  %l30 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, double }
  %t59 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { double }, ptr %t12, i32 0, i32 0
  %t14 = load double, ptr %t13
  store double %t14, ptr %l1, !tbaa !26
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load double, ptr %l1, !tbaa !26
  %t18 = insertvalue { i32, double } zeroinitializer, double %t16, 1
  store { i32, double } %t18, ptr %rv
  br label %ret
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb7, label %bb8
bb7:
  %t23 = load ptr, ptr %l11, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 3
  store i1 %t26, ptr %l12, !tbaa !21
  br label %bb8
bb8:
  %t27 = load i1, ptr %l12, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { i64 }, ptr %t30, i32 0, i32 0
  %t32 = load i64, ptr %t31
  store i64 %t32, ptr %l2, !tbaa !24
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = sitofp i64 %t34 to double
  %t38 = insertvalue { i32, double } zeroinitializer, double %t36, 1
  store { i32, double } %t38, ptr %rv
  br label %ret
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb13, label %bb14
bb13:
  %t43 = load ptr, ptr %l19, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 8}
  %t46 = icmp eq i64 %t44, 4
  store i1 %t46, ptr %l20, !tbaa !21
  br label %bb14
bb14:
  %t47 = load i1, ptr %l20, !tbaa !21
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [2 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { i64 }, ptr %t50, i32 0, i32 0
  %t52 = load i64, ptr %t51
  store i64 %t52, ptr %l3, !tbaa !65
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t54 = load i64, ptr %l3, !tbaa !65
  %t56 = uitofp i64 %t54 to double
  %t58 = insertvalue { i32, double } zeroinitializer, double %t56, 1
  store { i32, double } %t58, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb23
bb21:
  store { i64, [2 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [2 x i64] }, ptr %t59, i32 0, i32 0
  store i64 8, ptr %t60
  %t61 = load { i64, [2 x i64] }, ptr %t59
  store { i64, [2 x i64] } %t61, ptr %l27
  %t62 = call ptr @__olang_errpay_push()
  %t63 = ptrtoint ptr %t62 to i64
  store i64 %t63, ptr %l28, !tbaa !24
  %t64 = load i64, ptr %l28
  %t65 = inttoptr i64 %t64 to ptr
  %t67 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t65, ptr %l27)
  store { i64, [2 x i64] } %t67, ptr %l30
  br label %bb22
bb22:
  %t68 = load { i64, [2 x i64] }, ptr %l30
  %t69 = load i64, ptr %l28
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call ptr @__olang_scope_alloc_a(ptr %t70, i64 24, i64 8)
  store { i64, [2 x i64] } %t68, ptr %t71
  call void @__olang_errpay_set(ptr %t71)
  %t74 = insertvalue { i32, double } zeroinitializer, i32 65544, 0
  store { i32, double } %t74, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_c3fd3a937aadf066_df3562c3c4e6c4da)
  unreachable
ret:
  %rr = load { i32, double }, ptr %rv
  ret { i32, double } %rr
}

define dso_local { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAsObj(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, ptr }
  %t19 = alloca { i64, [2 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = insertvalue { i32, ptr } zeroinitializer, ptr %t16, 1
  store { i32, ptr } %t18, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 8, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t21, ptr %l9
  %t22 = call ptr @__olang_errpay_push()
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l10
  %t25 = inttoptr i64 %t24 to ptr
  %t27 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t25, ptr %l9)
  store { i64, [2 x i64] } %t27, ptr %l12
  br label %bb10
bb10:
  %t28 = load { i64, [2 x i64] }, ptr %l12
  %t29 = load i64, ptr %l10
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc_a(ptr %t30, i64 24, i64 8)
  store { i64, [2 x i64] } %t28, ptr %t31
  call void @__olang_errpay_set(ptr %t31)
  %t34 = insertvalue { i32, ptr } zeroinitializer, i32 65544, 0
  store { i32, ptr } %t34, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_9bf067a17252b335_30d904505e687d39)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i1
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, { i64, ptr } }
  %t19 = alloca { i64, [2 x i64] }, align 8
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 5
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l3, !tbaa !21
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
  %t18 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t16, 1
  store { i32, { i64, ptr } } %t18, ptr %rv
  br label %ret
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb11
bb9:
  store { i64, [2 x i64] } zeroinitializer, ptr %t19
  %t20 = getelementptr { i64, [2 x i64] }, ptr %t19, i32 0, i32 0
  store i64 8, ptr %t20
  %t21 = load { i64, [2 x i64] }, ptr %t19
  store { i64, [2 x i64] } %t21, ptr %l9
  %t22 = call ptr @__olang_errpay_push()
  %t23 = ptrtoint ptr %t22 to i64
  store i64 %t23, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l10
  %t25 = inttoptr i64 %t24 to ptr
  %t27 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t25, ptr %l9)
  store { i64, [2 x i64] } %t27, ptr %l12
  br label %bb10
bb10:
  %t28 = load { i64, [2 x i64] }, ptr %l12
  %t29 = load i64, ptr %l10
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call ptr @__olang_scope_alloc_a(ptr %t30, i64 24, i64 8)
  store { i64, [2 x i64] } %t28, ptr %t31
  call void @__olang_errpay_set(ptr %t31)
  %t34 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65544, 0
  store { i32, { i64, ptr } } %t34, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_d2781e368edd9e2f_3a33f3735a4c4ba3)
  unreachable
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsUint(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca i128
  %l2 = alloca i128
  %l4 = alloca i128
  %l5 = alloca i32
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, i64 }
  %t25 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, i128 } @std_2fjson_2estd_2fjson_3aJson_2ewhole(ptr %v0, ptr %a0)
  %t4 = extractvalue { i32, i128 } %t3, 1
  %t5 = extractvalue { i32, i128 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i128 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i128, ptr %l4
  store i128 %t8, ptr %l2
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
  %t19 = insertvalue { i32, i64 } zeroinitializer, i32 %t17, 0
  store { i32, i64 } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load i128, ptr %l2
  store i128 %t20, ptr %l1
  %t21 = load i128, ptr %l1
  %t23 = icmp slt i128 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [2 x i64] }, ptr %t25, i32 0, i32 0
  store i64 8, ptr %t26
  %t27 = load { i64, [2 x i64] }, ptr %t25
  store { i64, [2 x i64] } %t27, ptr %l9
  %t28 = call ptr @__olang_errpay_push()
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l10, !tbaa !24
  %t30 = load i64, ptr %l10
  %t31 = inttoptr i64 %t30 to ptr
  %t33 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t31, ptr %l9)
  store { i64, [2 x i64] } %t33, ptr %l12
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t34 = load { i64, [2 x i64] }, ptr %l12
  %t35 = load i64, ptr %l10
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = call ptr @__olang_scope_alloc_a(ptr %t36, i64 24, i64 8)
  store { i64, [2 x i64] } %t34, ptr %t37
  call void @__olang_errpay_set(ptr %t37)
  %t40 = insertvalue { i32, i64 } zeroinitializer, i32 65544, 0
  store { i32, i64 } %t40, ptr %rv
  br label %ret
bb7:
  %t41 = load i128, ptr %l1
  %t43 = trunc i128 %t41 to i64
  %t45 = insertvalue { i32, i64 } zeroinitializer, i64 %t43, 1
  store { i32, i64 } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i1 @std_2fjson_2estd_2fjson_3aJson_2eEq(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l77 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l85 = alloca ptr
  %l86 = alloca i1
  %l102 = alloca i64
  %l105 = alloca i64
  %l123 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l129 = alloca i1
  %l136 = alloca ptr
  %l137 = alloca i1
  %l142 = alloca ptr
  %l143 = alloca i1
  %l149 = alloca i64
  %l151 = alloca i64
  %l155 = alloca i64
  %l159 = alloca i64
  %l162 = alloca i64
  %l180 = alloca i64
  %l183 = alloca { i64, ptr }
  %l186 = alloca i64
  %l187 = alloca i32
  %l189 = alloca i64
  %l192 = alloca { i64, ptr }
  %l195 = alloca i64
  %l196 = alloca i32
  %l199 = alloca { i64, ptr }
  %l203 = alloca { i64, ptr }
  %l206 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t2 = load ptr, ptr %l24, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l24, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l25, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l25, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t10 = load ptr, ptr %l1, !tbaa !29
  store ptr %t10, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t11 = load ptr, ptr %l28, !tbaa !29
  %t12 = icmp ne ptr %t11, null
  br i1 %t12, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l28, !tbaa !29
  %t15 = load i64, ptr %t14, !range !{i64 0, i64 8}
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l29, !tbaa !21
  br label %bb7
bb7:
  %t18 = load i1, ptr %l29, !tbaa !21
  store i1 %t18, ptr %rv
  br label %ret
bb8:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t20 = load ptr, ptr %l32, !tbaa !29
  %t21 = icmp ne ptr %t20, null
  br i1 %t21, label %bb9, label %bb10
bb9:
  %t23 = load ptr, ptr %l32, !tbaa !29
  %t24 = load i64, ptr %t23, !range !{i64 0, i64 8}
  %t26 = icmp eq i64 %t24, 1
  store i1 %t26, ptr %l33, !tbaa !21
  br label %bb10
bb10:
  %t27 = load i1, ptr %l33, !tbaa !21
  br i1 %t27, label %bb11, label %bb12
bb11:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 1
  %t31 = getelementptr { i1 }, ptr %t30, i32 0, i32 0
  %t32 = load i1, ptr %t31
  store i1 %t32, ptr %l2, !tbaa !21
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t34 = load ptr, ptr %l1, !tbaa !29
  store ptr %t34, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t35 = load ptr, ptr %l38, !tbaa !29
  %t36 = icmp ne ptr %t35, null
  br i1 %t36, label %bb14, label %bb15
bb14:
  %t38 = load ptr, ptr %l38, !tbaa !29
  %t39 = load i64, ptr %t38, !range !{i64 0, i64 8}
  %t41 = icmp eq i64 %t39, 1
  store i1 %t41, ptr %l39, !tbaa !21
  br label %bb15
bb15:
  %t42 = load i1, ptr %l39, !tbaa !21
  br i1 %t42, label %bb16, label %bb17
bb16:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr { i64, [2 x i64] }, ptr %t43, i32 0, i32 1
  %t46 = getelementptr { i1 }, ptr %t45, i32 0, i32 0
  %t47 = load i1, ptr %t46
  store i1 %t47, ptr %l3, !tbaa !21
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t49 = load i1, ptr %l2, !tbaa !21
  %t50 = load i1, ptr %l3, !tbaa !21
  %t53 = icmp eq i1 %t49, %t50
  store i1 %t53, ptr %rv
  br label %ret
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  store i1 false, ptr %rv
  br label %ret
bb23:
  call void @__olang_check_failed(ptr @olang_loc_a7b0a92300089828_a6e8a6d400231804)
  unreachable
bb24:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t57 = load ptr, ptr %l48, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb25, label %bb26
bb25:
  %t60 = load ptr, ptr %l48, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 8}
  %t63 = icmp eq i64 %t61, 2
  store i1 %t63, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t64 = load i1, ptr %l49, !tbaa !21
  br i1 %t64, label %bb27, label %bb28
bb27:
  br label %bb37
bb28:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t66 = load ptr, ptr %l52, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb29, label %bb30
bb29:
  %t69 = load ptr, ptr %l52, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 3
  store i1 %t72, ptr %l53, !tbaa !21
  br label %bb30
bb30:
  %t73 = load i1, ptr %l53, !tbaa !21
  br i1 %t73, label %bb31, label %bb32
bb31:
  br label %bb37
bb32:
  %t74 = load ptr, ptr %l0, !tbaa !29
  store ptr %t74, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t75 = load ptr, ptr %l56, !tbaa !29
  %t76 = icmp ne ptr %t75, null
  br i1 %t76, label %bb33, label %bb34
bb33:
  %t78 = load ptr, ptr %l56, !tbaa !29
  %t79 = load i64, ptr %t78, !range !{i64 0, i64 8}
  %t81 = icmp eq i64 %t79, 4
  store i1 %t81, ptr %l57, !tbaa !21
  br label %bb34
bb34:
  %t82 = load i1, ptr %l57, !tbaa !21
  br i1 %t82, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t87 = call i1 @std_2fjson_2enumEq(ptr %v0, ptr %v1, ptr %t83, ptr %t84)
  store i1 %t87, ptr %l62
  br label %bb38
bb38:
  %t88 = load i1, ptr %l62, !tbaa !21
  store i1 %t88, ptr %rv
  br label %ret
bb39:
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t90 = load ptr, ptr %l63, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb40, label %bb41
bb40:
  %t93 = load ptr, ptr %l63, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 5
  store i1 %t96, ptr %l64, !tbaa !21
  br label %bb41
bb41:
  %t97 = load i1, ptr %l64, !tbaa !21
  br i1 %t97, label %bb42, label %bb43
bb42:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr { i64, [2 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { { i64, ptr } }, ptr %t100, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101
  store { i64, ptr } %t102, ptr %l4, !tbaa !27
  br label %bb44
bb43:
  br label %bb56
bb44:
  %t104 = load ptr, ptr %l1, !tbaa !29
  store ptr %t104, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t105 = load ptr, ptr %l69, !tbaa !29
  %t106 = icmp ne ptr %t105, null
  br i1 %t106, label %bb45, label %bb46
bb45:
  %t108 = load ptr, ptr %l69, !tbaa !29
  %t109 = load i64, ptr %t108, !range !{i64 0, i64 8}
  %t111 = icmp eq i64 %t109, 5
  store i1 %t111, ptr %l70, !tbaa !21
  br label %bb46
bb46:
  %t112 = load i1, ptr %l70, !tbaa !21
  br i1 %t112, label %bb47, label %bb48
bb47:
  %t113 = load ptr, ptr %l1, !tbaa !29
  %t115 = getelementptr { i64, [2 x i64] }, ptr %t113, i32 0, i32 1
  %t116 = getelementptr { { i64, ptr } }, ptr %t115, i32 0, i32 0
  %t117 = load { i64, ptr }, ptr %t116
  store { i64, ptr } %t117, ptr %l5, !tbaa !27
  br label %bb49
bb48:
  br label %bb51
bb49:
  %t119 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t123 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t119, { i64, ptr } %t120)
  store i1 %t123, ptr %l77
  br label %bb50
bb50:
  %t124 = load i1, ptr %l77, !tbaa !21
  store i1 %t124, ptr %rv
  br label %ret
bb51:
  br i1 true, label %bb52, label %bb53
bb52:
  br label %bb54
bb53:
  br label %bb55
bb54:
  store i1 false, ptr %rv
  br label %ret
bb55:
  call void @__olang_check_failed(ptr @olang_loc_a07ba4d7ff0a56f9_d8356302010b83f5)
  unreachable
bb56:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t127 = load ptr, ptr %l79, !tbaa !29
  %t128 = icmp ne ptr %t127, null
  br i1 %t128, label %bb57, label %bb58
bb57:
  %t130 = load ptr, ptr %l79, !tbaa !29
  %t131 = load i64, ptr %t130, !range !{i64 0, i64 8}
  %t133 = icmp eq i64 %t131, 6
  store i1 %t133, ptr %l80, !tbaa !21
  br label %bb58
bb58:
  %t134 = load i1, ptr %l80, !tbaa !21
  br i1 %t134, label %bb59, label %bb60
bb59:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t135, i32 0, i32 1
  %t138 = getelementptr { { i64, ptr } }, ptr %t137, i32 0, i32 0
  %t139 = load { i64, ptr }, ptr %t138
  store { i64, ptr } %t139, ptr %l6, !tbaa !27
  br label %bb61
bb60:
  br label %bb91
bb61:
  %t141 = load ptr, ptr %l1, !tbaa !29
  store ptr %t141, ptr %l85, !tbaa !29
  store i1 false, ptr %l86, !tbaa !21
  %t142 = load ptr, ptr %l85, !tbaa !29
  %t143 = icmp ne ptr %t142, null
  br i1 %t143, label %bb62, label %bb63
bb62:
  %t145 = load ptr, ptr %l85, !tbaa !29
  %t146 = load i64, ptr %t145, !range !{i64 0, i64 8}
  %t148 = icmp eq i64 %t146, 6
  store i1 %t148, ptr %l86, !tbaa !21
  br label %bb63
bb63:
  %t149 = load i1, ptr %l86, !tbaa !21
  br i1 %t149, label %bb64, label %bb65
bb64:
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [2 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { { i64, ptr } }, ptr %t152, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153
  store { i64, ptr } %t154, ptr %l7, !tbaa !27
  br label %bb66
bb65:
  br label %bb86
bb66:
  %t156 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t159 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t159, 0
  %t164 = icmp ne i64 %t158, %t161
  br i1 %t164, label %bb67, label %bb68
bb67:
  store i1 false, ptr %rv
  br label %ret
bb68:
  br label %bb69
bb69:
  store i64 0, ptr %l8, !tbaa !24
  %t167 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t169 = extractvalue { i64, ptr } %t167, 0
  store i64 %t169, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t171 = load i64, ptr %l9, !tbaa !24
  %t172 = load i64, ptr %l8, !tbaa !24
  %t175 = icmp sgt i64 %t171, %t172
  br i1 %t175, label %bb70, label %bb71
bb70:
  %t177 = load i64, ptr %l10, !tbaa !24
  %t179 = icmp sgt i64 %t177, 0
  br i1 %t179, label %bb72, label %bb73
bb71:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb75
bb72:
  %t181 = load i64, ptr %l9, !tbaa !24
  %t182 = load i64, ptr %l8, !tbaa !24
  %t185 = sub i64 %t181, %t182
  %t186 = load i64, ptr %l10, !tbaa !24
  %t189 = add i64 %t185, %t186
  %t191 = sub i64 %t189, 1
  %t192 = load i64, ptr %l10, !tbaa !24
  %t195 = sdiv i64 %t191, %t192
  store i64 %t195, ptr %l105, !tbaa !24
  br label %bb74
bb73:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb74
bb74:
  %t197 = load i64, ptr %l105, !tbaa !24
  store i64 %t197, ptr %l102, !tbaa !24
  br label %bb75
bb75:
  %t198 = load i64, ptr %l102, !tbaa !24
  store i64 %t198, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb76
bb76:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = load i64, ptr %l11, !tbaa !24
  %t203 = icmp slt i64 %t199, %t200
  %t205 = xor i1 %t203, true
  br i1 %t205, label %bb77, label %bb78
bb77:
  br label %bb85
bb78:
  br label %bb79
bb79:
  %t207 = load i64, ptr %l8, !tbaa !24
  %t208 = load i64, ptr %l12, !tbaa !24
  %t209 = load i64, ptr %l10, !tbaa !24
  %t212 = mul i64 %t208, %t209
  %t215 = add i64 %t207, %t212
  store i64 %t215, ptr %l13, !tbaa !24
  %t217 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t217, ptr %l123, !tbaa !27
  %t218 = load i64, ptr %l13, !tbaa !24
  %t220 = getelementptr { i64, ptr }, ptr %l123, i32 0, i32 1
  %t221 = load ptr, ptr %t220, !tbaa !27
  %t222 = getelementptr ptr, ptr %t221, i64 %t218
  %t223 = load ptr, ptr %t222, !tbaa !39
  %t224 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t224, ptr %l126, !tbaa !27
  %t225 = load i64, ptr %l13, !tbaa !24
  %t227 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr ptr, ptr %t228, i64 %t225
  %t230 = load ptr, ptr %t229, !tbaa !39
  %t233 = call i1 @std_2fjson_2estd_2fjson_3aJson_2eEq(ptr %v0, ptr %v1, ptr %t223, ptr %t230)
  store i1 %t233, ptr %l129
  br label %bb80
bb80:
  %t234 = load i1, ptr %l129, !tbaa !21
  %t235 = xor i1 %t234, true
  br i1 %t235, label %bb81, label %bb82
bb81:
  store i1 false, ptr %rv
  br label %ret
bb82:
  br label %bb83
bb83:
  br label %bb84
bb84:
  %t238 = load i64, ptr %l12, !tbaa !24
  %t240 = add i64 %t238, 1
  store i64 %t240, ptr %l12, !tbaa !24
  br label %bb76
bb85:
  store i1 true, ptr %rv
  br label %ret
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  store i1 false, ptr %rv
  br label %ret
bb90:
  call void @__olang_check_failed(ptr @olang_loc_22f1698915dd4682_a0313dce564b9a3e)
  unreachable
bb91:
  %t244 = load ptr, ptr %l0, !tbaa !29
  store ptr %t244, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t245 = load ptr, ptr %l136, !tbaa !29
  %t246 = icmp ne ptr %t245, null
  br i1 %t246, label %bb92, label %bb93
bb92:
  %t248 = load ptr, ptr %l136, !tbaa !29
  %t249 = load i64, ptr %t248, !range !{i64 0, i64 8}
  %t251 = icmp eq i64 %t249, 7
  store i1 %t251, ptr %l137, !tbaa !21
  br label %bb93
bb93:
  %t252 = load i1, ptr %l137, !tbaa !21
  br i1 %t252, label %bb94, label %bb95
bb94:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr { i64, [2 x i64] }, ptr %t253, i32 0, i32 1
  %t256 = getelementptr { ptr }, ptr %t255, i32 0, i32 0
  %t257 = load ptr, ptr %t256
  store ptr %t257, ptr %l14, !tbaa !29
  br label %bb96
bb95:
  br label %bb137
bb96:
  %t259 = load ptr, ptr %l1, !tbaa !29
  store ptr %t259, ptr %l142, !tbaa !29
  store i1 false, ptr %l143, !tbaa !21
  %t260 = load ptr, ptr %l142, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb97, label %bb98
bb97:
  %t263 = load ptr, ptr %l142, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 8}
  %t266 = icmp eq i64 %t264, 7
  store i1 %t266, ptr %l143, !tbaa !21
  br label %bb98
bb98:
  %t267 = load i1, ptr %l143, !tbaa !21
  br i1 %t267, label %bb99, label %bb100
bb99:
  %t268 = load ptr, ptr %l1, !tbaa !29
  %t270 = getelementptr { i64, [2 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { ptr }, ptr %t270, i32 0, i32 0
  %t272 = load ptr, ptr %t271
  store ptr %t272, ptr %l15, !tbaa !29
  br label %bb101
bb100:
  br label %bb132
bb101:
  %t274 = load ptr, ptr %l14, !tbaa !29
  %t276 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %t274)
  store i64 %t276, ptr %l149
  br label %bb102
bb102:
  %t277 = load ptr, ptr %l15, !tbaa !29
  %t279 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v1, ptr %t277)
  store i64 %t279, ptr %l151
  br label %bb103
bb103:
  %t280 = load i64, ptr %l149, !tbaa !24
  %t281 = load i64, ptr %l151, !tbaa !24
  %t282 = icmp ne i64 %t280, %t281
  br i1 %t282, label %bb104, label %bb105
bb104:
  store i1 false, ptr %rv
  br label %ret
bb105:
  br label %bb106
bb106:
  store i64 0, ptr %l16, !tbaa !24
  %t285 = load ptr, ptr %l14, !tbaa !29
  %t287 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %t285)
  store i64 %t287, ptr %l155
  br label %bb107
bb107:
  %t288 = load i64, ptr %l155, !tbaa !24
  store i64 %t288, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t289 = load i64, ptr %l17, !tbaa !24
  %t290 = load i64, ptr %l16, !tbaa !24
  %t293 = icmp sgt i64 %t289, %t290
  br i1 %t293, label %bb108, label %bb109
bb108:
  %t295 = load i64, ptr %l18, !tbaa !24
  %t297 = icmp sgt i64 %t295, 0
  br i1 %t297, label %bb110, label %bb111
bb109:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb113
bb110:
  %t299 = load i64, ptr %l17, !tbaa !24
  %t300 = load i64, ptr %l16, !tbaa !24
  %t303 = sub i64 %t299, %t300
  %t304 = load i64, ptr %l18, !tbaa !24
  %t307 = add i64 %t303, %t304
  %t309 = sub i64 %t307, 1
  %t310 = load i64, ptr %l18, !tbaa !24
  %t313 = sdiv i64 %t309, %t310
  store i64 %t313, ptr %l162, !tbaa !24
  br label %bb112
bb111:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb112
bb112:
  %t315 = load i64, ptr %l162, !tbaa !24
  store i64 %t315, ptr %l159, !tbaa !24
  br label %bb113
bb113:
  %t316 = load i64, ptr %l159, !tbaa !24
  store i64 %t316, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb114
bb114:
  %t317 = load i64, ptr %l20, !tbaa !24
  %t318 = load i64, ptr %l19, !tbaa !24
  %t321 = icmp slt i64 %t317, %t318
  %t323 = xor i1 %t321, true
  br i1 %t323, label %bb115, label %bb116
bb115:
  br label %bb131
bb116:
  br label %bb117
bb117:
  %t325 = load i64, ptr %l16, !tbaa !24
  %t326 = load i64, ptr %l20, !tbaa !24
  %t327 = load i64, ptr %l18, !tbaa !24
  %t330 = mul i64 %t326, %t327
  %t333 = add i64 %t325, %t330
  store i64 %t333, ptr %l21, !tbaa !24
  %t335 = load ptr, ptr %l15, !tbaa !29
  %t336 = load ptr, ptr %l14, !tbaa !29
  %t338 = getelementptr %"std/json:Object", ptr %t336, i32 0, i32 0
  %t339 = load { i64, ptr }, ptr %t338, !tbaa !27
  store { i64, ptr } %t339, ptr %l183, !tbaa !27
  %t340 = load i64, ptr %l21, !tbaa !24
  %t342 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !27
  %t344 = getelementptr { i64, ptr }, ptr %t343, i64 %t340
  %t345 = load { i64, ptr }, ptr %t344, !tbaa !37
  %t348 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aObject_2efind_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v1, ptr %v0, ptr %t335, { i64, ptr } %t345)
  %t349 = extractvalue { i32, i64 } %t348, 1
  %t350 = extractvalue { i32, i64 } %t348, 0
  store i32 %t350, ptr %l187
  %t351 = icmp ne i32 %t350, 0
  br i1 %t351, label %bb119, label %ok.352, !prof !99
ok.352:
  store i64 %t349, ptr %l186
  br label %bb118
bb118:
  %t353 = load i64, ptr %l186, !tbaa !24
  store i64 %t353, ptr %l180, !tbaa !24
  br label %bb121
bb119:
  br label %bb120
bb120:
  store i1 false, ptr %rv
  br label %ret
bb121:
  %t355 = load i64, ptr %l180, !tbaa !24
  store i64 %t355, ptr %l22, !tbaa !24
  %t356 = load ptr, ptr %l14, !tbaa !29
  %t357 = load ptr, ptr %l14, !tbaa !29
  %t359 = getelementptr %"std/json:Object", ptr %t357, i32 0, i32 0
  %t360 = load { i64, ptr }, ptr %t359, !tbaa !27
  store { i64, ptr } %t360, ptr %l192, !tbaa !27
  %t361 = load i64, ptr %l21, !tbaa !24
  %t363 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr { i64, ptr }, ptr %t364, i64 %t361
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !37
  %t369 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aObject_2efind_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v0, ptr %t356, { i64, ptr } %t366)
  %t370 = extractvalue { i32, i64 } %t369, 1
  %t371 = extractvalue { i32, i64 } %t369, 0
  store i32 %t371, ptr %l196
  %t372 = icmp ne i32 %t371, 0
  br i1 %t372, label %bb123, label %ok.373, !prof !99
ok.373:
  store i64 %t370, ptr %l195
  br label %bb122
bb122:
  %t374 = load i64, ptr %l195, !tbaa !24
  store i64 %t374, ptr %l189, !tbaa !24
  br label %bb125
bb123:
  br label %bb124
bb124:
  store i1 false, ptr %rv
  br label %ret
bb125:
  %t376 = load i64, ptr %l189, !tbaa !24
  %t377 = load ptr, ptr %l14, !tbaa !29
  %t379 = getelementptr %"std/json:Object", ptr %t377, i32 0, i32 1
  %t380 = load { i64, ptr }, ptr %t379, !tbaa !27
  store { i64, ptr } %t380, ptr %l199, !tbaa !27
  %t383 = getelementptr { i64, ptr }, ptr %l199, i32 0, i32 1
  %t384 = load ptr, ptr %t383, !tbaa !27
  %t385 = getelementptr ptr, ptr %t384, i64 %t376
  %t386 = load ptr, ptr %t385, !tbaa !39
  %t387 = load ptr, ptr %l15, !tbaa !29
  %t389 = getelementptr %"std/json:Object", ptr %t387, i32 0, i32 1
  %t390 = load { i64, ptr }, ptr %t389, !tbaa !27
  store { i64, ptr } %t390, ptr %l203, !tbaa !27
  %t391 = load i64, ptr %l22, !tbaa !24
  %t393 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t394 = load ptr, ptr %t393, !tbaa !27
  %t395 = getelementptr ptr, ptr %t394, i64 %t391
  %t396 = load ptr, ptr %t395, !tbaa !39
  %t399 = call i1 @std_2fjson_2estd_2fjson_3aJson_2eEq(ptr %v0, ptr %v1, ptr %t386, ptr %t396)
  store i1 %t399, ptr %l206
  br label %bb126
bb126:
  %t400 = load i1, ptr %l206, !tbaa !21
  %t401 = xor i1 %t400, true
  br i1 %t401, label %bb127, label %bb128
bb127:
  store i1 false, ptr %rv
  br label %ret
bb128:
  br label %bb129
bb129:
  br label %bb130
bb130:
  %t404 = load i64, ptr %l20, !tbaa !24
  %t406 = add i64 %t404, 1
  store i64 %t406, ptr %l20, !tbaa !24
  br label %bb114
bb131:
  store i1 true, ptr %rv
  br label %ret
bb132:
  br i1 true, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb136
bb135:
  store i1 false, ptr %rv
  br label %ret
bb136:
  call void @__olang_check_failed(ptr @olang_loc_e7435678738af803_3f3d624b6ec28d3f)
  unreachable
bb137:
  br i1 true, label %bb138, label %bb139
bb138:
  br label %bb140
bb139:
  br label %bb141
bb140:
  store i1 false, ptr %rv
  br label %ret
bb141:
  call void @__olang_check_failed(ptr @olang_loc_cd6f075822d3ba64_2e9ce5061183e548)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @std_2fjson_2estd_2fjson_3aJson_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l11 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i1 false, ptr %l4, !tbaa !21
  %t2 = load ptr, ptr %l3, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l4, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l4, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i1 @std_2fjson_2estd_2fjson_3aObject_2eHas(ptr %v0, ptr %v1, ptr %t16, { i64, ptr } %a1)
  store i1 %t20, ptr %l11
  br label %bb6
bb6:
  %t21 = load i1, ptr %l11, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_a95109d49c9a5ab2_e7f3aa33cdaf23de)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2fjson_2estd_2fjson_3aJson_2eHash(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca double
  %l3 = alloca i128
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca double
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l27 = alloca ptr
  %l28 = alloca i1
  %l34 = alloca i64
  %l35 = alloca ptr
  %l36 = alloca i1
  %l48 = alloca ptr
  %l49 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l56 = alloca i128
  %l58 = alloca i128
  %l59 = alloca i32
  %l66 = alloca i128
  %l75 = alloca i1
  %l81 = alloca double
  %l87 = alloca i64
  %l90 = alloca i64
  %l92 = alloca i64
  %l94 = alloca ptr
  %l95 = alloca i1
  %l101 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca i1
  %l115 = alloca { i64, ptr }
  %l119 = alloca i64
  %l121 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca i1
  %l133 = alloca i64
  %l137 = alloca i64
  %l140 = alloca i64
  %l158 = alloca i64
  %l160 = alloca { i64, ptr }
  %l163 = alloca i64
  %l165 = alloca { i64, ptr }
  %l168 = alloca i64
  %s7 = alloca %olang.scope
  %rv = alloca i64
  %t129 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t2 = load ptr, ptr %l22, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l22, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l23, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l23, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  store i64 1, ptr %rv
  br label %ret
bb6:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t12 = load ptr, ptr %l27, !tbaa !29
  %t13 = icmp ne ptr %t12, null
  br i1 %t13, label %bb7, label %bb8
bb7:
  %t15 = load ptr, ptr %l27, !tbaa !29
  %t16 = load i64, ptr %t15, !range !{i64 0, i64 8}
  %t18 = icmp eq i64 %t16, 1
  store i1 %t18, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t19 = load i1, ptr %l28, !tbaa !21
  br i1 %t19, label %bb9, label %bb10
bb9:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t20, i32 0, i32 1
  %t23 = getelementptr { i1 }, ptr %t22, i32 0, i32 0
  %t24 = load i1, ptr %t23
  store i1 %t24, ptr %l1, !tbaa !21
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t26 = load i1, ptr %l1, !tbaa !21
  br i1 %t26, label %bb12, label %bb13
bb12:
  store i64 2, ptr %l34, !tbaa !24
  br label %bb14
bb13:
  store i64 3, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t28 = load i64, ptr %l34, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
bb15:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t30 = load ptr, ptr %l35, !tbaa !29
  %t31 = icmp ne ptr %t30, null
  br i1 %t31, label %bb16, label %bb17
bb16:
  %t33 = load ptr, ptr %l35, !tbaa !29
  %t34 = load i64, ptr %t33, !range !{i64 0, i64 8}
  %t36 = icmp eq i64 %t34, 2
  store i1 %t36, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t37 = load i1, ptr %l36, !tbaa !21
  br i1 %t37, label %bb18, label %bb19
bb18:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr { i64, [2 x i64] }, ptr %t38, i32 0, i32 1
  %t41 = getelementptr { double }, ptr %t40, i32 0, i32 0
  %t42 = load double, ptr %t41
  store double %t42, ptr %l2, !tbaa !26
  br label %bb20
bb19:
  br label %bb24
bb20:
  %t44 = load double, ptr %l2, !tbaa !26
  %t46 = fcmp oeq double %t44, 0x0000000000000000
  br i1 %t46, label %bb21, label %bb22
bb21:
  store i64 4, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t49 = load double, ptr %l2, !tbaa !26
  %t51 = bitcast double %t49 to i64
  %t54 = mul i64 %t51, 1099511628211
  store i64 %t54, ptr %rv
  br label %ret
bb24:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l48, !tbaa !29
  store i1 false, ptr %l49, !tbaa !21
  %t57 = load ptr, ptr %l48, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb25, label %bb26
bb25:
  %t60 = load ptr, ptr %l48, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 8}
  %t63 = icmp eq i64 %t61, 3
  store i1 %t63, ptr %l49, !tbaa !21
  br label %bb26
bb26:
  %t64 = load i1, ptr %l49, !tbaa !21
  br i1 %t64, label %bb27, label %bb28
bb27:
  br label %bb33
bb28:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t66 = load ptr, ptr %l52, !tbaa !29
  %t67 = icmp ne ptr %t66, null
  br i1 %t67, label %bb29, label %bb30
bb29:
  %t69 = load ptr, ptr %l52, !tbaa !29
  %t70 = load i64, ptr %t69, !range !{i64 0, i64 8}
  %t72 = icmp eq i64 %t70, 4
  store i1 %t72, ptr %l53, !tbaa !21
  br label %bb30
bb30:
  %t73 = load i1, ptr %l53, !tbaa !21
  br i1 %t73, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb56
bb33:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call { i32, i128 } @std_2fjson_2estd_2fjson_3aJson_2ewhole(ptr %v0, ptr %t74)
  %t77 = extractvalue { i32, i128 } %t76, 1
  %t78 = extractvalue { i32, i128 } %t76, 0
  store i32 %t78, ptr %l59
  %t79 = icmp ne i32 %t78, 0
  br i1 %t79, label %bb35, label %ok.80, !prof !99
ok.80:
  store i128 %t77, ptr %l58
  br label %bb34
bb34:
  %t81 = load i128, ptr %l58
  store i128 %t81, ptr %l56
  br label %bb39
bb35:
  %t82 = load i32, ptr %l59, !tbaa !23
  %t83 = ashr i32 %t82, 16
  %t85 = icmp eq i32 %t83, 1
  br i1 %t85, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb38
bb38:
  store i64 0, ptr %rv
  br label %ret
bb39:
  %t88 = load i128, ptr %l56
  store i128 %t88, ptr %l3
  %t89 = load i128, ptr %l3
  %t91 = icmp slt i128 %t89, 0
  store i1 %t91, ptr %l4, !tbaa !21
  %t93 = load i1, ptr %l4, !tbaa !21
  br i1 %t93, label %bb40, label %bb41
bb40:
  %t95 = load i128, ptr %l3
  %t97 = sub i128 0, %t95
  store i128 %t97, ptr %l66
  br label %bb42
bb41:
  %t99 = load i128, ptr %l3
  store i128 %t99, ptr %l66
  br label %bb42
bb42:
  %t101 = load i128, ptr %l66
  %t102 = trunc i128 %t101 to i64
  store i64 %t102, ptr %l5, !tbaa !65
  %t104 = load i64, ptr %l5, !tbaa !65
  %t106 = uitofp i64 %t104 to double
  store double %t106, ptr %l6, !tbaa !26
  %t108 = load double, ptr %l6, !tbaa !26
  %t110 = fcmp olt double %t108, 0x43f0000000000000
  br i1 %t110, label %bb43, label %bb44
bb43:
  %t112 = load double, ptr %l6, !tbaa !26
  %t114 = fptoui double %t112 to i64
  %t115 = load i64, ptr %l5, !tbaa !65
  %t118 = icmp eq i64 %t114, %t115
  store i1 %t118, ptr %l75, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb45
bb45:
  %t120 = load i1, ptr %l75, !tbaa !21
  br i1 %t120, label %bb46, label %bb47
bb46:
  store %olang.scope zeroinitializer, ptr %s7
  %t121 = load i1, ptr %l4, !tbaa !21
  br i1 %t121, label %bb48, label %bb49
bb47:
  br label %bb52
bb48:
  %t123 = load double, ptr %l6, !tbaa !26
  %t125 = fneg double %t123
  store double %t125, ptr %l81, !tbaa !26
  br label %bb50
bb49:
  %t127 = load double, ptr %l6, !tbaa !26
  store double %t127, ptr %l81, !tbaa !26
  br label %bb50
bb50:
  store { i64, [2 x i64] } zeroinitializer, ptr %t129
  %t130 = getelementptr { i64, [2 x i64] }, ptr %t129, i32 0, i32 0
  store i64 2, ptr %t130
  %t131 = load double, ptr %l81, !tbaa !26
  %t132 = insertvalue { double } undef, double %t131, 0
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t129, i32 0, i32 1
  store { double } %t132, ptr %t133
  %t134 = load { i64, [2 x i64] }, ptr %t129
  %t136 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 24, i64 8)
  store { i64, [2 x i64] } %t134, ptr %t136
  %t138 = call i64 @std_2fjson_2estd_2fjson_3aJson_2eHash(ptr %s7, ptr %t136)
  store i64 %t138, ptr %l87
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s7)
  %t139 = load i64, ptr %l87, !tbaa !24
  store i64 %t139, ptr %rv
  br label %ret
bb52:
  %t140 = load i64, ptr %l5, !tbaa !65
  %t143 = mul i64 %t140, 1099511628211
  store i64 %t143, ptr %l90, !tbaa !24
  %t144 = load i1, ptr %l4, !tbaa !21
  br i1 %t144, label %bb53, label %bb54
bb53:
  store i64 7, ptr %l92, !tbaa !24
  br label %bb55
bb54:
  store i64 9, ptr %l92, !tbaa !24
  br label %bb55
bb55:
  %t146 = load i64, ptr %l90, !tbaa !24
  %t147 = load i64, ptr %l92, !tbaa !24
  %t148 = add i64 %t146, %t147
  store i64 %t148, ptr %rv
  br label %ret
bb56:
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t151 = load ptr, ptr %l94, !tbaa !29
  %t152 = icmp ne ptr %t151, null
  br i1 %t152, label %bb57, label %bb58
bb57:
  %t154 = load ptr, ptr %l94, !tbaa !29
  %t155 = load i64, ptr %t154, !range !{i64 0, i64 8}
  %t157 = icmp eq i64 %t155, 5
  store i1 %t157, ptr %l95, !tbaa !21
  br label %bb58
bb58:
  %t158 = load i1, ptr %l95, !tbaa !21
  br i1 %t158, label %bb59, label %bb60
bb59:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr { i64, [2 x i64] }, ptr %t159, i32 0, i32 1
  %t162 = getelementptr { { i64, ptr } }, ptr %t161, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162
  store { i64, ptr } %t163, ptr %l7, !tbaa !27
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t165 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t167 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %t165)
  store i64 %t167, ptr %l101
  br label %bb62
bb62:
  %t168 = load i64, ptr %l101, !tbaa !24
  store i64 %t168, ptr %rv
  br label %ret
bb63:
  %t169 = load ptr, ptr %l0, !tbaa !29
  store ptr %t169, ptr %l102, !tbaa !29
  store i1 false, ptr %l103, !tbaa !21
  %t170 = load ptr, ptr %l102, !tbaa !29
  %t171 = icmp ne ptr %t170, null
  br i1 %t171, label %bb64, label %bb65
bb64:
  %t173 = load ptr, ptr %l102, !tbaa !29
  %t174 = load i64, ptr %t173, !range !{i64 0, i64 8}
  %t176 = icmp eq i64 %t174, 6
  store i1 %t176, ptr %l103, !tbaa !21
  br label %bb65
bb65:
  %t177 = load i1, ptr %l103, !tbaa !21
  br i1 %t177, label %bb66, label %bb67
bb66:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr { i64, [2 x i64] }, ptr %t178, i32 0, i32 1
  %t181 = getelementptr { { i64, ptr } }, ptr %t180, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  store { i64, ptr } %t182, ptr %l8, !tbaa !27
  br label %bb68
bb67:
  br label %bb76
bb68:
  store i64 5, ptr %l9, !tbaa !24
  %t184 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t184, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  store i64 %t188, ptr %l12, !tbaa !24
  br label %bb69
bb69:
  %t190 = load i64, ptr %l11, !tbaa !24
  %t191 = load i64, ptr %l12, !tbaa !24
  %t194 = icmp slt i64 %t190, %t191
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb70, label %bb71
bb70:
  br label %bb75
bb71:
  br label %bb72
bb72:
  %t198 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t198, ptr %l115, !tbaa !27
  %t199 = load i64, ptr %l11, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr ptr, ptr %t202, i64 %t199
  %t204 = load ptr, ptr %t203, !tbaa !39
  %t206 = load i64, ptr %l9, !tbaa !24
  %t208 = mul i64 %t206, 31
  store i64 %t208, ptr %l119, !tbaa !24
  %t211 = call i64 @std_2fjson_2estd_2fjson_3aJson_2eHash(ptr %v0, ptr %t204)
  store i64 %t211, ptr %l121
  br label %bb73
bb73:
  %t212 = load i64, ptr %l119, !tbaa !24
  %t213 = load i64, ptr %l121, !tbaa !24
  %t214 = add i64 %t212, %t213
  store i64 %t214, ptr %l9, !tbaa !24
  br label %bb74
bb74:
  %t216 = load i64, ptr %l11, !tbaa !24
  %t218 = add i64 %t216, 1
  store i64 %t218, ptr %l11, !tbaa !24
  br label %bb69
bb75:
  %t220 = load i64, ptr %l9, !tbaa !24
  store i64 %t220, ptr %rv
  br label %ret
bb76:
  %t222 = load ptr, ptr %l0, !tbaa !29
  store ptr %t222, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t223 = load ptr, ptr %l126, !tbaa !29
  %t224 = icmp ne ptr %t223, null
  br i1 %t224, label %bb77, label %bb78
bb77:
  %t226 = load ptr, ptr %l126, !tbaa !29
  %t227 = load i64, ptr %t226, !range !{i64 0, i64 8}
  %t229 = icmp eq i64 %t227, 7
  store i1 %t229, ptr %l127, !tbaa !21
  br label %bb78
bb78:
  %t230 = load i1, ptr %l127, !tbaa !21
  br i1 %t230, label %bb79, label %bb80
bb79:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr { i64, [2 x i64] }, ptr %t231, i32 0, i32 1
  %t234 = getelementptr { ptr }, ptr %t233, i32 0, i32 0
  %t235 = load ptr, ptr %t234
  store ptr %t235, ptr %l14, !tbaa !29
  br label %bb81
bb80:
  br label %bb97
bb81:
  store i64 6, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t237 = load ptr, ptr %l14, !tbaa !29
  %t239 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %t237)
  store i64 %t239, ptr %l133
  br label %bb82
bb82:
  %t240 = load i64, ptr %l133, !tbaa !24
  store i64 %t240, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t241 = load i64, ptr %l17, !tbaa !24
  %t242 = load i64, ptr %l16, !tbaa !24
  %t245 = icmp sgt i64 %t241, %t242
  br i1 %t245, label %bb83, label %bb84
bb83:
  %t247 = load i64, ptr %l18, !tbaa !24
  %t249 = icmp sgt i64 %t247, 0
  br i1 %t249, label %bb85, label %bb86
bb84:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb88
bb85:
  %t251 = load i64, ptr %l17, !tbaa !24
  %t252 = load i64, ptr %l16, !tbaa !24
  %t255 = sub i64 %t251, %t252
  %t256 = load i64, ptr %l18, !tbaa !24
  %t259 = add i64 %t255, %t256
  %t261 = sub i64 %t259, 1
  %t262 = load i64, ptr %l18, !tbaa !24
  %t265 = sdiv i64 %t261, %t262
  store i64 %t265, ptr %l140, !tbaa !24
  br label %bb87
bb86:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb87
bb87:
  %t267 = load i64, ptr %l140, !tbaa !24
  store i64 %t267, ptr %l137, !tbaa !24
  br label %bb88
bb88:
  %t268 = load i64, ptr %l137, !tbaa !24
  store i64 %t268, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb89
bb89:
  %t269 = load i64, ptr %l20, !tbaa !24
  %t270 = load i64, ptr %l19, !tbaa !24
  %t273 = icmp slt i64 %t269, %t270
  %t275 = xor i1 %t273, true
  br i1 %t275, label %bb90, label %bb91
bb90:
  br label %bb96
bb91:
  br label %bb92
bb92:
  %t277 = load i64, ptr %l16, !tbaa !24
  %t278 = load i64, ptr %l20, !tbaa !24
  %t279 = load i64, ptr %l18, !tbaa !24
  %t282 = mul i64 %t278, %t279
  %t285 = add i64 %t277, %t282
  store i64 %t285, ptr %l21, !tbaa !24
  %t287 = load i64, ptr %l15, !tbaa !24
  store i64 %t287, ptr %l158, !tbaa !24
  %t288 = load ptr, ptr %l14, !tbaa !29
  %t290 = getelementptr %"std/json:Object", ptr %t288, i32 0, i32 0
  %t291 = load { i64, ptr }, ptr %t290, !tbaa !27
  store { i64, ptr } %t291, ptr %l160, !tbaa !27
  %t292 = load i64, ptr %l21, !tbaa !24
  %t294 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t295 = load ptr, ptr %t294, !tbaa !27
  %t296 = getelementptr { i64, ptr }, ptr %t295, i64 %t292
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !37
  %t299 = call i64 @std_2fjson_2enameHash_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %t297)
  store i64 %t299, ptr %l163
  br label %bb93
bb93:
  %t300 = load ptr, ptr %l14, !tbaa !29
  %t302 = getelementptr %"std/json:Object", ptr %t300, i32 0, i32 1
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  store { i64, ptr } %t303, ptr %l165, !tbaa !27
  %t304 = load i64, ptr %l21, !tbaa !24
  %t306 = getelementptr { i64, ptr }, ptr %l165, i32 0, i32 1
  %t307 = load ptr, ptr %t306, !tbaa !27
  %t308 = getelementptr ptr, ptr %t307, i64 %t304
  %t309 = load ptr, ptr %t308, !tbaa !39
  %t311 = call i64 @std_2fjson_2estd_2fjson_3aJson_2eHash(ptr %v0, ptr %t309)
  store i64 %t311, ptr %l168
  br label %bb94
bb94:
  %t312 = load i64, ptr %l163, !tbaa !24
  %t313 = load i64, ptr %l168, !tbaa !24
  %t314 = xor i64 %t312, %t313
  %t316 = mul i64 %t314, 1099511628211
  %t317 = load i64, ptr %l158, !tbaa !24
  %t319 = add i64 %t317, %t316
  store i64 %t319, ptr %l15, !tbaa !24
  br label %bb95
bb95:
  %t321 = load i64, ptr %l20, !tbaa !24
  %t323 = add i64 %t321, 1
  store i64 %t323, ptr %l20, !tbaa !24
  br label %bb89
bb96:
  %t325 = load i64, ptr %l15, !tbaa !24
  store i64 %t325, ptr %rv
  br label %ret
bb97:
  br i1 true, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb101
bb100:
  store i64 0, ptr %rv
  br label %ret
bb101:
  call void @__olang_check_failed(ptr @olang_loc_664da5dbc2e51de6_83a7e6ee135f5f2a)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fjson_2estd_2fjson_3aJson_2eIsNull(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  store i1 false, ptr %l2, !tbaa !21
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l2, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l2, !tbaa !21
  store i1 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @std_2fjson_2estd_2fjson_3aJson_2eStr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t4 = call { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v1, ptr %a0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, i32 0)
  store { i64, ptr } %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t5, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l6, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t19, ptr %l4, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, i128 } @std_2fjson_2estd_2fjson_3aJson_2ewhole(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca double
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca { i64, [2 x i64] }
  %l25 = alloca i64
  %l27 = alloca { i64, [2 x i64] }
  %l40 = alloca { i64, [2 x i64] }
  %l41 = alloca i64
  %l43 = alloca { i64, [2 x i64] }
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l65 = alloca { i64, [2 x i64] }
  %l66 = alloca i64
  %l68 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, i128 }
  %t41 = alloca { i64, [2 x i64] }, align 8
  %t78 = alloca { i64, [2 x i64] }, align 8
  %t141 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  store i1 false, ptr %l5, !tbaa !21
  %t2 = load ptr, ptr %l4, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { double }, ptr %t12, i32 0, i32 0
  %t14 = load double, ptr %t13
  store double %t14, ptr %l1, !tbaa !26
  br label %bb5
bb4:
  br label %bb26
bb5:
  %t16 = load double, ptr %l1, !tbaa !26
  %t17 = load double, ptr %l1, !tbaa !26
  %t20 = fcmp une double %t16, %t17
  br i1 %t20, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t22 = load double, ptr %l1, !tbaa !26
  %t23 = load double, ptr %l1, !tbaa !26
  %t26 = fsub double %t22, %t23
  %t28 = fcmp une double %t26, 0x0000000000000000
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l13, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb11
bb10:
  %t31 = load double, ptr %l1, !tbaa !26
  %t33 = fcmp oge double %t31, 0x43f0000000000000
  store i1 %t33, ptr %l18, !tbaa !21
  br label %bb11
bb11:
  %t35 = load i1, ptr %l18, !tbaa !21
  br i1 %t35, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  %t36 = load double, ptr %l1, !tbaa !26
  %t38 = fcmp olt double %t36, 0xc3e0000000000000
  store i1 %t38, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t40 = load i1, ptr %l21, !tbaa !21
  br i1 %t40, label %bb15, label %bb16
bb15:
  store { i64, [2 x i64] } zeroinitializer, ptr %t41
  %t42 = getelementptr { i64, [2 x i64] }, ptr %t41, i32 0, i32 0
  store i64 8, ptr %t42
  %t43 = load { i64, [2 x i64] }, ptr %t41
  store { i64, [2 x i64] } %t43, ptr %l24
  %t44 = call ptr @__olang_errpay_push()
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l25, !tbaa !24
  %t46 = load i64, ptr %l25
  %t47 = inttoptr i64 %t46 to ptr
  %t49 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t47, ptr %l24)
  store { i64, [2 x i64] } %t49, ptr %l27
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t50 = load { i64, [2 x i64] }, ptr %l27
  %t51 = load i64, ptr %l25
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = call ptr @__olang_scope_alloc_a(ptr %t52, i64 24, i64 8)
  store { i64, [2 x i64] } %t50, ptr %t53
  call void @__olang_errpay_set(ptr %t53)
  %t56 = insertvalue { i32, i128 } zeroinitializer, i32 65544, 0
  store { i32, i128 } %t56, ptr %rv
  br label %ret
bb18:
  %t57 = load double, ptr %l1, !tbaa !26
  %t59 = fcmp oge double %t57, 0x43e0000000000000
  br i1 %t59, label %bb19, label %bb20
bb19:
  %t61 = load double, ptr %l1, !tbaa !26
  %t63 = fptoui double %t61 to i64
  %t65 = zext i64 %t63 to i128
  %t67 = insertvalue { i32, i128 } zeroinitializer, i128 %t65, 1
  store { i32, i128 } %t67, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t68 = load double, ptr %l1, !tbaa !26
  %t70 = fptosi double %t68 to i64
  %t72 = sitofp i64 %t70 to double
  %t73 = load double, ptr %l1, !tbaa !26
  %t76 = fcmp une double %t72, %t73
  br i1 %t76, label %bb22, label %bb23
bb22:
  store { i64, [2 x i64] } zeroinitializer, ptr %t78
  %t79 = getelementptr { i64, [2 x i64] }, ptr %t78, i32 0, i32 0
  store i64 8, ptr %t79
  %t80 = load { i64, [2 x i64] }, ptr %t78
  store { i64, [2 x i64] } %t80, ptr %l40
  %t81 = call ptr @__olang_errpay_push()
  %t82 = ptrtoint ptr %t81 to i64
  store i64 %t82, ptr %l41, !tbaa !24
  %t83 = load i64, ptr %l41
  %t84 = inttoptr i64 %t83 to ptr
  %t86 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t84, ptr %l40)
  store { i64, [2 x i64] } %t86, ptr %l43
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t87 = load { i64, [2 x i64] }, ptr %l43
  %t88 = load i64, ptr %l41
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call ptr @__olang_scope_alloc_a(ptr %t89, i64 24, i64 8)
  store { i64, [2 x i64] } %t87, ptr %t90
  call void @__olang_errpay_set(ptr %t90)
  %t93 = insertvalue { i32, i128 } zeroinitializer, i32 65544, 0
  store { i32, i128 } %t93, ptr %rv
  br label %ret
bb25:
  %t94 = load double, ptr %l1, !tbaa !26
  %t96 = fptosi double %t94 to i64
  %t98 = sext i64 %t96 to i128
  %t100 = insertvalue { i32, i128 } zeroinitializer, i128 %t98, 1
  store { i32, i128 } %t100, ptr %rv
  br label %ret
bb26:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t102 = load ptr, ptr %l49, !tbaa !29
  %t103 = icmp ne ptr %t102, null
  br i1 %t103, label %bb27, label %bb28
bb27:
  %t105 = load ptr, ptr %l49, !tbaa !29
  %t106 = load i64, ptr %t105, !range !{i64 0, i64 8}
  %t108 = icmp eq i64 %t106, 3
  store i1 %t108, ptr %l50, !tbaa !21
  br label %bb28
bb28:
  %t109 = load i1, ptr %l50, !tbaa !21
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t110, i32 0, i32 1
  %t113 = getelementptr { i64 }, ptr %t112, i32 0, i32 0
  %t114 = load i64, ptr %t113
  store i64 %t114, ptr %l2, !tbaa !24
  br label %bb31
bb30:
  br label %bb32
bb31:
  %t116 = load i64, ptr %l2, !tbaa !24
  %t118 = sext i64 %t116 to i128
  %t120 = insertvalue { i32, i128 } zeroinitializer, i128 %t118, 1
  store { i32, i128 } %t120, ptr %rv
  br label %ret
bb32:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t122 = load ptr, ptr %l57, !tbaa !29
  %t123 = icmp ne ptr %t122, null
  br i1 %t123, label %bb33, label %bb34
bb33:
  %t125 = load ptr, ptr %l57, !tbaa !29
  %t126 = load i64, ptr %t125, !range !{i64 0, i64 8}
  %t128 = icmp eq i64 %t126, 4
  store i1 %t128, ptr %l58, !tbaa !21
  br label %bb34
bb34:
  %t129 = load i1, ptr %l58, !tbaa !21
  br i1 %t129, label %bb35, label %bb36
bb35:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 1
  %t133 = getelementptr { i64 }, ptr %t132, i32 0, i32 0
  %t134 = load i64, ptr %t133
  store i64 %t134, ptr %l3, !tbaa !65
  br label %bb37
bb36:
  br label %bb38
bb37:
  %t136 = load i64, ptr %l3, !tbaa !65
  %t138 = zext i64 %t136 to i128
  %t140 = insertvalue { i32, i128 } zeroinitializer, i128 %t138, 1
  store { i32, i128 } %t140, ptr %rv
  br label %ret
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb43
bb41:
  store { i64, [2 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t141, i32 0, i32 0
  store i64 8, ptr %t142
  %t143 = load { i64, [2 x i64] }, ptr %t141
  store { i64, [2 x i64] } %t143, ptr %l65
  %t144 = call ptr @__olang_errpay_push()
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l66, !tbaa !24
  %t146 = load i64, ptr %l66
  %t147 = inttoptr i64 %t146 to ptr
  %t149 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t147, ptr %l65)
  store { i64, [2 x i64] } %t149, ptr %l68
  br label %bb42
bb42:
  %t150 = load { i64, [2 x i64] }, ptr %l68
  %t151 = load i64, ptr %l66
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call ptr @__olang_scope_alloc_a(ptr %t152, i64 24, i64 8)
  store { i64, [2 x i64] } %t150, ptr %t153
  call void @__olang_errpay_set(ptr %t153)
  %t156 = insertvalue { i32, i128 } zeroinitializer, i32 65544, 0
  store { i32, i128 } %t156, ptr %rv
  br label %ret
bb43:
  call void @__olang_check_failed(ptr @olang_loc_3d7deb9fd92cdf7_48602bd2c42c5c33)
  unreachable
ret:
  %rr = load { i32, i128 }, ptr %rv
  ret { i32, i128 } %rr
}

define dso_local { i32, ptr } @std_2fjson_2estd_2fjson_3aObject_2eAt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, [2 x i64] }
  %l14 = alloca i64
  %l16 = alloca { i64, [2 x i64] }
  %s1 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t30 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:Object", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t9 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aObject_2efind_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %t5, { i64, ptr } %t6)
  %t10 = extractvalue { i32, i64 } %t9, 1
  %t11 = extractvalue { i32, i64 } %t9, 0
  store i32 %t11, ptr %l8
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb2, label %ok.13, !prof !99
ok.13:
  store i64 %t10, ptr %l7
  br label %bb1
bb1:
  %t14 = load i64, ptr %l7, !tbaa !24
  store i64 %t14, ptr %l4, !tbaa !24
  br label %bb5
bb2:
  br label %bb3
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t15 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  store i64 %t18, ptr %l11, !tbaa !24
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = mul i64 %t19, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t20)
  %t22 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  store { i64, ptr } %t23, ptr %l12, !tbaa !27
  %t24 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = load i64, ptr %l11, !tbaa !24
  %t29 = mul i64 %t28, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %t27, i64 %t29, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t30
  %t31 = getelementptr { i64, [2 x i64] }, ptr %t30, i32 0, i32 0
  store i64 7, ptr %t31
  %t32 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t33 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t32, 0
  %t34 = getelementptr { i64, [2 x i64] }, ptr %t30, i32 0, i32 1
  store { { i64, ptr } } %t33, ptr %t34
  %t35 = load { i64, [2 x i64] }, ptr %t30
  store { i64, [2 x i64] } %t35, ptr %l13
  %t36 = call ptr @__olang_errpay_push()
  %t37 = ptrtoint ptr %t36 to i64
  store i64 %t37, ptr %l14, !tbaa !24
  %t38 = load i64, ptr %l14
  %t39 = inttoptr i64 %t38 to ptr
  %t41 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t39, ptr %l13)
  store { i64, [2 x i64] } %t41, ptr %l16
  br label %bb4
bb4:
  %t42 = load { i64, [2 x i64] }, ptr %l16
  %t43 = load i64, ptr %l14
  %t44 = inttoptr i64 %t43 to ptr
  %t45 = call ptr @__olang_scope_alloc_a(ptr %t44, i64 24, i64 8)
  store { i64, [2 x i64] } %t42, ptr %t45
  call void @__olang_errpay_set(ptr %t45)
  call void @__olang_scope_close(ptr %s1)
  %t48 = insertvalue { i32, ptr } zeroinitializer, i32 65543, 0
  store { i32, ptr } %t48, ptr %rv
  br label %ret
bb5:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t49
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = insertvalue { i32, ptr } zeroinitializer, ptr %t53, 1
  store { i32, ptr } %t55, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @std_2fjson_2estd_2fjson_3aObject_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aObject_2efind_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load i64, ptr %l5, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"std/json:Object", ptr %a0, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @std_2fjson_2estd_2fjson_3areader_2eclose(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l41 = alloca i64
  %l44 = alloca i64
  %l62 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l85 = alloca i64
  %l87 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l96 = alloca i64
  %l99 = alloca i64
  %l117 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l129 = alloca ptr
  %l130 = alloca %"std/json:Object"
  %l133 = alloca %"std/json:Object"
  %l134 = alloca i32
  %l140 = alloca ptr
  %t52 = alloca i64
  %t161 = alloca { i64, [2 x i64] }, align 8
  %t190 = alloca i64
  %t297 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l18, !tbaa !29
  %t2 = load ptr, ptr %l18, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t2, i32 0, i32 8
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  %t8 = load ptr, ptr %l18, !tbaa !29
  %t9 = getelementptr %"std/json:reader", ptr %t8, i32 0, i32 8
  store i64 %t6, ptr %t9, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/json:reader", ptr %t10, i32 0, i32 6
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l22, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"std/json:reader", ptr %t14, i32 0, i32 8
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 %t17
  %t22 = load i64, ptr %t21, !tbaa !34
  store i64 %t22, ptr %l1, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"std/json:reader", ptr %t24, i32 0, i32 3
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = sub i64 %t27, %t28
  store i64 %t31, ptr %l2, !tbaa !24
  %t33 = load i64, ptr %l2, !tbaa !24
  store i64 %t33, ptr %l30, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/json:reader", ptr %t34, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l32, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 0
  %t41 = load ptr, ptr %t40, !tbaa !39
  store ptr %t41, ptr %l33, !tbaa !29
  %t42 = load i64, ptr %l30, !tbaa !24
  %t43 = icmp sge i64 %t42, 0
  br i1 %t43, label %bb1, label %bb2
bb1:
  %t45 = load i64, ptr %l30, !tbaa !24
  %t46 = icmp sle i64 %t45, 1152921504606846975
  br i1 %t46, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4cf869d60c4ca172_ef56e6f5157a9496)
  unreachable
bb3:
  %t48 = load i64, ptr %l30, !tbaa !24
  %t49 = mul i64 %t48, 8
  %t50 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t49)
  %t51 = load ptr, ptr %l33, !tbaa !29
  store i64 0, ptr %t52
  br label %fill.53
fill.53:
  %t56 = load i64, ptr %t52
  %t57 = icmp slt i64 %t56, %t48
  br i1 %t57, label %fillb.54, label %filld.55
fillb.54:
  %t58 = getelementptr ptr, ptr %t50, i64 %t56
  store ptr %t51, ptr %t58
  %t59 = add i64 %t56, 1
  store i64 %t59, ptr %t52
  br label %fill.53
filld.55:
  %t60 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t50, 1
  store { i64, ptr } %t61, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t63 = load i64, ptr %l2, !tbaa !24
  store i64 %t63, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l4, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4cf869d60c4ca172_ef56e6f5157a9496)
  unreachable
bb5:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l41, !tbaa !24
  br label %bb10
bb7:
  %t75 = load i64, ptr %l5, !tbaa !24
  %t76 = load i64, ptr %l4, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l6, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l44, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l44, !tbaa !24
  br label %bb9
bb9:
  %t91 = load i64, ptr %l44, !tbaa !24
  store i64 %t91, ptr %l41, !tbaa !24
  br label %bb10
bb10:
  %t92 = load i64, ptr %l41, !tbaa !24
  store i64 %t92, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l7, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  br label %bb14
bb14:
  %t101 = load i64, ptr %l4, !tbaa !24
  %t102 = load i64, ptr %l8, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l9, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t111, ptr %l62, !tbaa !27
  %t112 = load i64, ptr %l9, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"std/json:reader", ptr %t113, i32 0, i32 2
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l65, !tbaa !27
  %t117 = load i64, ptr %l1, !tbaa !24
  %t118 = load i64, ptr %l9, !tbaa !24
  %t121 = add i64 %t117, %t118
  %t123 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr ptr, ptr %t124, i64 %t121
  %t126 = load ptr, ptr %t125, !tbaa !39
  %t129 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr ptr, ptr %t130, i64 %t112
  store ptr %t126, ptr %t131, !tbaa !39
  br label %bb15
bb15:
  %t132 = load i64, ptr %l8, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l8, !tbaa !24
  br label %bb11
bb16:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i64, ptr %l1, !tbaa !24
  %t140 = getelementptr %"std/json:reader", ptr %t136, i32 0, i32 3
  store i64 %t137, ptr %t140, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"std/json:reader", ptr %t141, i32 0, i32 7
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l75, !tbaa !27
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"std/json:reader", ptr %t145, i32 0, i32 8
  %t148 = load i64, ptr %t147, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i64, ptr %t151, i64 %t148
  %t153 = load i64, ptr %t152, !tbaa !34
  store i64 %t153, ptr %l10, !tbaa !24
  %t155 = load i64, ptr %l10, !tbaa !24
  %t157 = icmp slt i64 %t155, 0
  br i1 %t157, label %bb17, label %bb18
bb17:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, [2 x i64] } zeroinitializer, ptr %t161
  %t162 = getelementptr { i64, [2 x i64] }, ptr %t161, i32 0, i32 0
  store i64 6, ptr %t162
  %t164 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t160, 0
  %t165 = getelementptr { i64, [2 x i64] }, ptr %t161, i32 0, i32 1
  store { { i64, ptr } } %t164, ptr %t165
  %t166 = load { i64, [2 x i64] }, ptr %t161
  %t168 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t166, ptr %t168
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t159, ptr %t168)
  br label %bb19
bb18:
  %t171 = load i64, ptr %l2, !tbaa !24
  store i64 %t171, ptr %l85, !tbaa !24
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"std/json:reader", ptr %t172, i32 0, i32 4
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  store { i64, ptr } %t175, ptr %l87, !tbaa !27
  %t176 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr { i64, ptr }, ptr %t177, i64 0
  %t179 = load { i64, ptr }, ptr %t178, !tbaa !37
  store { i64, ptr } %t179, ptr %l88, !tbaa !27
  %t180 = load i64, ptr %l85, !tbaa !24
  %t181 = icmp sge i64 %t180, 0
  br i1 %t181, label %bb20, label %bb21
bb19:
  br label %bb43
bb20:
  %t183 = load i64, ptr %l85, !tbaa !24
  %t184 = icmp sle i64 %t183, 576460752303423487
  br i1 %t184, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_a4e4729341d0d567_917d86fd422044ab)
  unreachable
bb22:
  %t186 = load i64, ptr %l85, !tbaa !24
  %t187 = mul i64 %t186, 16
  %t188 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t187)
  %t189 = load { i64, ptr }, ptr %l88, !tbaa !27
  store i64 0, ptr %t190
  br label %fill.191
fill.191:
  %t194 = load i64, ptr %t190
  %t195 = icmp slt i64 %t194, %t186
  br i1 %t195, label %fillb.192, label %filld.193
fillb.192:
  %t196 = getelementptr { i64, ptr }, ptr %t188, i64 %t194
  store { i64, ptr } %t189, ptr %t196
  %t197 = add i64 %t194, 1
  store i64 %t197, ptr %t190
  br label %fill.191
filld.193:
  %t198 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t188, 1
  store { i64, ptr } %t199, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t201 = load i64, ptr %l2, !tbaa !24
  store i64 %t201, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t203 = load i64, ptr %l13, !tbaa !24
  %t204 = load i64, ptr %l12, !tbaa !24
  %t207 = icmp sgt i64 %t203, %t204
  br i1 %t207, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_a4e4729341d0d567_917d86fd422044ab)
  unreachable
bb24:
  %t209 = load i64, ptr %l14, !tbaa !24
  %t211 = icmp sgt i64 %t209, 0
  br i1 %t211, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l96, !tbaa !24
  br label %bb29
bb26:
  %t213 = load i64, ptr %l13, !tbaa !24
  %t214 = load i64, ptr %l12, !tbaa !24
  %t217 = sub i64 %t213, %t214
  %t218 = load i64, ptr %l14, !tbaa !24
  %t221 = add i64 %t217, %t218
  %t223 = sub i64 %t221, 1
  %t224 = load i64, ptr %l14, !tbaa !24
  %t227 = sdiv i64 %t223, %t224
  store i64 %t227, ptr %l99, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb28
bb28:
  %t229 = load i64, ptr %l99, !tbaa !24
  store i64 %t229, ptr %l96, !tbaa !24
  br label %bb29
bb29:
  %t230 = load i64, ptr %l96, !tbaa !24
  store i64 %t230, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb30
bb30:
  %t231 = load i64, ptr %l16, !tbaa !24
  %t232 = load i64, ptr %l15, !tbaa !24
  %t235 = icmp slt i64 %t231, %t232
  %t237 = xor i1 %t235, true
  br i1 %t237, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t239 = load i64, ptr %l12, !tbaa !24
  %t240 = load i64, ptr %l16, !tbaa !24
  %t241 = load i64, ptr %l14, !tbaa !24
  %t244 = mul i64 %t240, %t241
  %t247 = add i64 %t239, %t244
  store i64 %t247, ptr %l17, !tbaa !24
  %t249 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t249, ptr %l117, !tbaa !27
  %t250 = load i64, ptr %l17, !tbaa !24
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"std/json:reader", ptr %t251, i32 0, i32 4
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l120, !tbaa !27
  %t255 = load i64, ptr %l10, !tbaa !24
  %t256 = load i64, ptr %l17, !tbaa !24
  %t259 = add i64 %t255, %t256
  %t261 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t262 = load ptr, ptr %t261, !tbaa !27
  %t263 = getelementptr { i64, ptr }, ptr %t262, i64 %t259
  %t264 = load { i64, ptr }, ptr %t263, !tbaa !37
  %t267 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t268 = load ptr, ptr %t267, !tbaa !27
  %t269 = getelementptr { i64, ptr }, ptr %t268, i64 %t250
  store { i64, ptr } %t264, ptr %t269, !tbaa !37
  br label %bb34
bb34:
  %t270 = load i64, ptr %l16, !tbaa !24
  %t272 = add i64 %t270, 1
  store i64 %t272, ptr %l16, !tbaa !24
  br label %bb30
bb35:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i64, ptr %l10, !tbaa !24
  %t278 = getelementptr %"std/json:reader", ptr %t274, i32 0, i32 5
  store i64 %t275, ptr %t278, !tbaa !24
  %t279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t279, ptr %l129, !tbaa !29
  %t280 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t281 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t284 = call { i32, %"std/json:Object" } @std_2fjson_3aObject_2ector(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t280, { i64, ptr } %t281)
  %t285 = extractvalue { i32, %"std/json:Object" } %t284, 1
  %t286 = extractvalue { i32, %"std/json:Object" } %t284, 0
  store i32 %t286, ptr %l134
  %t287 = icmp ne i32 %t286, 0
  br i1 %t287, label %bb37, label %ok.288, !prof !99
ok.288:
  store %"std/json:Object" %t285, ptr %l133
  br label %bb36
bb36:
  %t289 = load %"std/json:Object", ptr %l133
  store %"std/json:Object" %t289, ptr %l130
  br label %bb41
bb37:
  %t290 = load i32, ptr %l134, !tbaa !23
  %t291 = ashr i32 %t290, 16
  %t293 = icmp eq i32 %t291, 1
  br i1 %t293, label %bb38, label %bb39
bb38:
  call void @__olang_errpay_pop()
  br label %bb39
bb39:
  br label %bb40
bb40:
  call void @__olang_check_failed(ptr @olang_loc_78dc4052a96c39eb_b95510f79f72ba17)
  unreachable
bb41:
  %t295 = load %"std/json:Object", ptr %l130
  %t296 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 48, i64 8)
  store %"std/json:Object" %t295, ptr %t296
  store { i64, [2 x i64] } zeroinitializer, ptr %t297
  %t298 = getelementptr { i64, [2 x i64] }, ptr %t297, i32 0, i32 0
  store i64 7, ptr %t298
  %t300 = insertvalue { ptr } undef, ptr %t296, 0
  %t301 = getelementptr { i64, [2 x i64] }, ptr %t297, i32 0, i32 1
  store { ptr } %t300, ptr %t301
  %t302 = load { i64, [2 x i64] }, ptr %t297
  %t304 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t302, ptr %t304
  %t305 = load ptr, ptr %l129, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t305, ptr %t304)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t307 = load ptr, ptr %l0, !tbaa !29
  store ptr %t307, ptr %l140, !tbaa !29
  %t308 = load ptr, ptr %l140, !tbaa !29
  %t309 = getelementptr %"std/json:reader", ptr %t308, i32 0, i32 1
  %t310 = load i64, ptr %t309, !tbaa !24
  %t312 = add i64 %t310, 1
  %t314 = load ptr, ptr %l140, !tbaa !29
  %t315 = getelementptr %"std/json:reader", ptr %t314, i32 0, i32 1
  store i64 %t312, ptr %t315, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i8
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l40 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/json:reader", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t4, i64 %t10)
  store i64 %t13, ptr %l14
  br label %bb1
bb1:
  %t14 = load i64, ptr %l14, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb7
bb4:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l21, !tbaa !24
  store i64 %t41, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l18, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"std/json:reader", ptr %t61, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l40, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t59
  %t70 = load i8, ptr %t69, !tbaa !32
  store i8 %t70, ptr %l8, !tbaa !22
  %t72 = load i8, ptr %l8, !tbaa !22
  %t74 = icmp eq i8 %t72, 10
  br i1 %t74, label %bb12, label %bb13
bb12:
  store i64 1, ptr %l1, !tbaa !24
  br label %bb17
bb13:
  %t76 = load i8, ptr %l8, !tbaa !22
  %t78 = and i8 %t76, -64
  %t80 = icmp ne i8 %t78, -128
  br i1 %t80, label %bb14, label %bb15
bb14:
  %t82 = load i64, ptr %l1, !tbaa !24
  %t84 = add i64 %t82, 1
  store i64 %t84, ptr %l1, !tbaa !24
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l6, !tbaa !24
  br label %bb8
bb19:
  %t90 = load i64, ptr %l1, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/json:reader", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  %t10 = icmp slt i64 %t1, %t7
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"std/json:reader", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l9, !tbaa !27
  %t16 = load i64, ptr %l1, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t23 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t21)
  store i1 %t23, ptr %l12
  br label %bb3
bb2:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  %t24 = load i1, ptr %l12, !tbaa !21
  store i1 %t24, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t25 = load i1, ptr %l7, !tbaa !21
  store i1 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2eescape(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i8
  %l4 = alloca i8
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l15 = alloca ptr
  %l19 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, [2 x i64] }
  %l23 = alloca i64
  %l25 = alloca { i64, [2 x i64] }
  %l29 = alloca { i64, ptr }
  %l36 = alloca i1
  %l39 = alloca i1
  %l55 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i32
  %l65 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca i64
  %l78 = alloca i64
  %l79 = alloca { i64, [2 x i64] }
  %l80 = alloca i64
  %l82 = alloca { i64, [2 x i64] }
  %l87 = alloca i1
  %l97 = alloca i1
  %l99 = alloca { i64, ptr }
  %l104 = alloca i1
  %l106 = alloca { i64, ptr }
  %l115 = alloca i64
  %l117 = alloca i64
  %l118 = alloca { i64, [2 x i64] }
  %l119 = alloca i64
  %l121 = alloca { i64, [2 x i64] }
  %l124 = alloca i64
  %l129 = alloca i64
  %l130 = alloca i32
  %l134 = alloca i1
  %l140 = alloca i64
  %l142 = alloca i64
  %l143 = alloca { i64, [2 x i64] }
  %l144 = alloca i64
  %l146 = alloca { i64, [2 x i64] }
  %l149 = alloca ptr
  %l162 = alloca i64
  %l164 = alloca i64
  %l166 = alloca i64
  %l167 = alloca { i64, [2 x i64] }
  %l168 = alloca i64
  %l170 = alloca { i64, [2 x i64] }
  %l176 = alloca { i64, ptr }
  %l179 = alloca ptr
  %rv = alloca { i32, i64 }
  %t32 = alloca { i64, [2 x i64] }, align 8
  %t173 = alloca { i64, [2 x i64] }, align 8
  %t266 = alloca { i64, [2 x i64] }, align 8
  %t334 = alloca { i64, [2 x i64] }, align 8
  %t390 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/json:reader", ptr %t7, i32 0, i32 0
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t15 = icmp eq i64 %t6, %t12
  br i1 %t15, label %bb1, label %bb2
bb1:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l15, !tbaa !29
  %t18 = load ptr, ptr %l15, !tbaa !29
  %t19 = getelementptr %"std/json:reader", ptr %t18, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = add i64 %t20, 1
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = getelementptr %"std/json:reader", ptr %t24, i32 0, i32 1
  store i64 %t22, ptr %t25, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l19
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t29)
  store i64 %t31, ptr %l21
  br label %bb4
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 0
  store i64 1, ptr %t33
  %t34 = load i64, ptr %l19, !tbaa !24
  %t35 = insertvalue { i64, i64 } undef, i64 %t34, 0
  %t36 = load i64, ptr %l21, !tbaa !24
  %t37 = insertvalue { i64, i64 } %t35, i64 %t36, 1
  %t38 = getelementptr { i64, [2 x i64] }, ptr %t32, i32 0, i32 1
  store { i64, i64 } %t37, ptr %t38
  %t39 = load { i64, [2 x i64] }, ptr %t32
  store { i64, [2 x i64] } %t39, ptr %l22
  %t40 = call ptr @__olang_errpay_push()
  %t41 = ptrtoint ptr %t40 to i64
  store i64 %t41, ptr %l23, !tbaa !24
  %t42 = load i64, ptr %l23
  %t43 = inttoptr i64 %t42 to ptr
  %t45 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t43, ptr %l22)
  store { i64, [2 x i64] } %t45, ptr %l25
  br label %bb5
bb5:
  %t46 = load { i64, [2 x i64] }, ptr %l25
  %t47 = load i64, ptr %l23
  %t48 = inttoptr i64 %t47 to ptr
  %t49 = call ptr @__olang_scope_alloc_a(ptr %t48, i64 24, i64 8)
  store { i64, [2 x i64] } %t46, ptr %t49
  call void @__olang_errpay_set(ptr %t49)
  %t52 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t52, ptr %rv
  br label %ret
bb6:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"std/json:reader", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l29, !tbaa !27
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"std/json:reader", ptr %t57, i32 0, i32 1
  %t60 = load i64, ptr %t59, !tbaa !24
  %t62 = add i64 %t60, 1
  %t64 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 %t62
  %t67 = load i8, ptr %t66, !tbaa !32
  store i8 %t67, ptr %l3, !tbaa !22
  store i8 0, ptr %l4, !tbaa !22
  %t69 = load i8, ptr %l3, !tbaa !22
  %t71 = icmp eq i8 %t69, 34
  br i1 %t71, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb9
bb8:
  %t73 = load i8, ptr %l3, !tbaa !22
  %t75 = icmp eq i8 %t73, 92
  store i1 %t75, ptr %l36, !tbaa !21
  br label %bb9
bb9:
  %t77 = load i1, ptr %l36, !tbaa !21
  br i1 %t77, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb12
bb11:
  %t78 = load i8, ptr %l3, !tbaa !22
  %t80 = icmp eq i8 %t78, 47
  store i1 %t80, ptr %l39, !tbaa !21
  br label %bb12
bb12:
  %t82 = load i1, ptr %l39, !tbaa !21
  br i1 %t82, label %bb13, label %bb14
bb13:
  %t83 = load i8, ptr %l3, !tbaa !22
  store i8 %t83, ptr %l4, !tbaa !22
  br label %bb78
bb14:
  %t85 = load i8, ptr %l3, !tbaa !22
  %t87 = icmp eq i8 %t85, 110
  br i1 %t87, label %bb15, label %bb16
bb15:
  store i8 10, ptr %l4, !tbaa !22
  br label %bb77
bb16:
  %t89 = load i8, ptr %l3, !tbaa !22
  %t91 = icmp eq i8 %t89, 116
  br i1 %t91, label %bb17, label %bb18
bb17:
  store i8 9, ptr %l4, !tbaa !22
  br label %bb76
bb18:
  %t93 = load i8, ptr %l3, !tbaa !22
  %t95 = icmp eq i8 %t93, 114
  br i1 %t95, label %bb19, label %bb20
bb19:
  store i8 13, ptr %l4, !tbaa !22
  br label %bb75
bb20:
  %t97 = load i8, ptr %l3, !tbaa !22
  %t99 = icmp eq i8 %t97, 98
  br i1 %t99, label %bb21, label %bb22
bb21:
  store i8 8, ptr %l4, !tbaa !22
  br label %bb74
bb22:
  %t101 = load i8, ptr %l3, !tbaa !22
  %t103 = icmp eq i8 %t101, 102
  br i1 %t103, label %bb23, label %bb24
bb23:
  store i8 12, ptr %l4, !tbaa !22
  br label %bb73
bb24:
  %t105 = load i8, ptr %l3, !tbaa !22
  %t107 = icmp eq i8 %t105, 117
  br i1 %t107, label %bb25, label %bb26
bb25:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"std/json:reader", ptr %t110, i32 0, i32 1
  %t113 = load i64, ptr %t112, !tbaa !24
  %t115 = add i64 %t113, 2
  %t118 = call { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2ehex4(ptr %v0, ptr %t109, i64 %t115)
  %t119 = extractvalue { i32, i64 } %t118, 1
  %t120 = extractvalue { i32, i64 } %t118, 0
  store i32 %t120, ptr %l61
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb28, label %ok.122, !prof !99
ok.122:
  store i64 %t119, ptr %l60
  br label %bb27
bb26:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t123)
  store i64 %t125, ptr %l164
  br label %bb70
bb27:
  %t126 = load i64, ptr %l60, !tbaa !24
  store i64 %t126, ptr %l55, !tbaa !24
  br label %bb29
bb28:
  %t127 = load i32, ptr %l61, !tbaa !23
  %t128 = lshr i32 %t127, 16
  %t129 = and i32 %t127, 65535
  %t130 = icmp eq i32 %t128, 1
  %t131 = select i1 %t130, i32 1, i32 0
  %t132 = icmp eq i32 %t127, 0
  %t133 = shl i32 %t131, 16
  %t134 = or i32 %t133, %t129
  %t135 = select i1 %t132, i32 0, i32 %t134
  %t137 = insertvalue { i32, i64 } zeroinitializer, i32 %t135, 0
  store { i32, i64 } %t137, ptr %rv
  br label %ret
bb29:
  %t138 = load i64, ptr %l55, !tbaa !24
  store i64 %t138, ptr %l5, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"std/json:reader", ptr %t139, i32 0, i32 1
  %t142 = load i64, ptr %t141, !tbaa !24
  store i64 %t142, ptr %l6, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l65, !tbaa !29
  %t145 = load ptr, ptr %l65, !tbaa !29
  %t146 = getelementptr %"std/json:reader", ptr %t145, i32 0, i32 1
  %t147 = load i64, ptr %t146, !tbaa !24
  %t149 = add i64 %t147, 6
  %t151 = load ptr, ptr %l65, !tbaa !29
  %t152 = getelementptr %"std/json:reader", ptr %t151, i32 0, i32 1
  store i64 %t149, ptr %t152, !tbaa !24
  %t153 = load i64, ptr %l5, !tbaa !24
  %t155 = icmp sge i64 %t153, 56320
  br i1 %t155, label %bb30, label %bb31
bb30:
  %t157 = load i64, ptr %l5, !tbaa !24
  %t159 = icmp sle i64 %t157, 57343
  store i1 %t159, ptr %l70, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb32
bb32:
  %t161 = load i1, ptr %l70, !tbaa !21
  br i1 %t161, label %bb33, label %bb34
bb33:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i64, ptr %l6, !tbaa !24
  %t166 = getelementptr %"std/json:reader", ptr %t162, i32 0, i32 1
  store i64 %t163, ptr %t166, !tbaa !24
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t167)
  store i64 %t169, ptr %l76
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t170)
  store i64 %t172, ptr %l78
  br label %bb36
bb36:
  store { i64, [2 x i64] } zeroinitializer, ptr %t173
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t173, i32 0, i32 0
  store i64 2, ptr %t174
  %t175 = load i64, ptr %l76, !tbaa !24
  %t176 = insertvalue { i64, i64 } undef, i64 %t175, 0
  %t177 = load i64, ptr %l78, !tbaa !24
  %t178 = insertvalue { i64, i64 } %t176, i64 %t177, 1
  %t179 = getelementptr { i64, [2 x i64] }, ptr %t173, i32 0, i32 1
  store { i64, i64 } %t178, ptr %t179
  %t180 = load { i64, [2 x i64] }, ptr %t173
  store { i64, [2 x i64] } %t180, ptr %l79
  %t181 = call ptr @__olang_errpay_push()
  %t182 = ptrtoint ptr %t181 to i64
  store i64 %t182, ptr %l80, !tbaa !24
  %t183 = load i64, ptr %l80
  %t184 = inttoptr i64 %t183 to ptr
  %t186 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t184, ptr %l79)
  store { i64, [2 x i64] } %t186, ptr %l82
  br label %bb37
bb37:
  %t187 = load { i64, [2 x i64] }, ptr %l82
  %t188 = load i64, ptr %l80
  %t189 = inttoptr i64 %t188 to ptr
  %t190 = call ptr @__olang_scope_alloc_a(ptr %t189, i64 24, i64 8)
  store { i64, [2 x i64] } %t187, ptr %t190
  call void @__olang_errpay_set(ptr %t190)
  %t193 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t193, ptr %rv
  br label %ret
bb38:
  %t194 = load i64, ptr %l5, !tbaa !24
  %t196 = icmp sge i64 %t194, 55296
  br i1 %t196, label %bb39, label %bb40
bb39:
  %t198 = load i64, ptr %l5, !tbaa !24
  %t200 = icmp sle i64 %t198, 56319
  store i1 %t200, ptr %l87, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb41
bb41:
  %t202 = load i1, ptr %l87, !tbaa !21
  br i1 %t202, label %bb42, label %bb43
bb42:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"std/json:reader", ptr %t203, i32 0, i32 1
  %t206 = load i64, ptr %t205, !tbaa !24
  %t208 = add i64 %t206, 1
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"std/json:reader", ptr %t209, i32 0, i32 0
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  %t214 = extractvalue { i64, ptr } %t212, 0
  %t217 = icmp sge i64 %t208, %t214
  br i1 %t217, label %bb44, label %bb45
bb43:
  br label %bb68
bb44:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb46
bb45:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"std/json:reader", ptr %t219, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  store { i64, ptr } %t222, ptr %l99, !tbaa !27
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"std/json:reader", ptr %t223, i32 0, i32 1
  %t226 = load i64, ptr %t225, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr i8, ptr %t229, i64 %t226
  %t231 = load i8, ptr %t230, !tbaa !32
  %t233 = icmp ne i8 %t231, 92
  store i1 %t233, ptr %l97, !tbaa !21
  br label %bb46
bb46:
  %t235 = load i1, ptr %l97, !tbaa !21
  br i1 %t235, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb49
bb48:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"std/json:reader", ptr %t236, i32 0, i32 0
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  store { i64, ptr } %t239, ptr %l106, !tbaa !27
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"std/json:reader", ptr %t240, i32 0, i32 1
  %t243 = load i64, ptr %t242, !tbaa !24
  %t245 = add i64 %t243, 1
  %t247 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i8, ptr %t248, i64 %t245
  %t250 = load i8, ptr %t249, !tbaa !32
  %t252 = icmp ne i8 %t250, 117
  store i1 %t252, ptr %l104, !tbaa !21
  br label %bb49
bb49:
  %t254 = load i1, ptr %l104, !tbaa !21
  br i1 %t254, label %bb50, label %bb51
bb50:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t256 = load i64, ptr %l6, !tbaa !24
  %t259 = getelementptr %"std/json:reader", ptr %t255, i32 0, i32 1
  store i64 %t256, ptr %t259, !tbaa !24
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t262 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t260)
  store i64 %t262, ptr %l115
  br label %bb52
bb51:
  br label %bb55
bb52:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t263)
  store i64 %t265, ptr %l117
  br label %bb53
bb53:
  store { i64, [2 x i64] } zeroinitializer, ptr %t266
  %t267 = getelementptr { i64, [2 x i64] }, ptr %t266, i32 0, i32 0
  store i64 2, ptr %t267
  %t268 = load i64, ptr %l115, !tbaa !24
  %t269 = insertvalue { i64, i64 } undef, i64 %t268, 0
  %t270 = load i64, ptr %l117, !tbaa !24
  %t271 = insertvalue { i64, i64 } %t269, i64 %t270, 1
  %t272 = getelementptr { i64, [2 x i64] }, ptr %t266, i32 0, i32 1
  store { i64, i64 } %t271, ptr %t272
  %t273 = load { i64, [2 x i64] }, ptr %t266
  store { i64, [2 x i64] } %t273, ptr %l118
  %t274 = call ptr @__olang_errpay_push()
  %t275 = ptrtoint ptr %t274 to i64
  store i64 %t275, ptr %l119, !tbaa !24
  %t276 = load i64, ptr %l119
  %t277 = inttoptr i64 %t276 to ptr
  %t279 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t277, ptr %l118)
  store { i64, [2 x i64] } %t279, ptr %l121
  br label %bb54
bb54:
  %t280 = load { i64, [2 x i64] }, ptr %l121
  %t281 = load i64, ptr %l119
  %t282 = inttoptr i64 %t281 to ptr
  %t283 = call ptr @__olang_scope_alloc_a(ptr %t282, i64 24, i64 8)
  store { i64, [2 x i64] } %t280, ptr %t283
  call void @__olang_errpay_set(ptr %t283)
  %t286 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t286, ptr %rv
  br label %ret
bb55:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t290 = getelementptr %"std/json:reader", ptr %t288, i32 0, i32 1
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = add i64 %t291, 2
  %t296 = call { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2ehex4(ptr %v0, ptr %t287, i64 %t293)
  %t297 = extractvalue { i32, i64 } %t296, 1
  %t298 = extractvalue { i32, i64 } %t296, 0
  store i32 %t298, ptr %l130
  %t299 = icmp ne i32 %t298, 0
  br i1 %t299, label %bb57, label %ok.300, !prof !99
ok.300:
  store i64 %t297, ptr %l129
  br label %bb56
bb56:
  %t301 = load i64, ptr %l129, !tbaa !24
  store i64 %t301, ptr %l124, !tbaa !24
  br label %bb58
bb57:
  %t302 = load i32, ptr %l130, !tbaa !23
  %t303 = lshr i32 %t302, 16
  %t304 = and i32 %t302, 65535
  %t305 = icmp eq i32 %t303, 1
  %t306 = select i1 %t305, i32 1, i32 0
  %t307 = icmp eq i32 %t302, 0
  %t308 = shl i32 %t306, 16
  %t309 = or i32 %t308, %t304
  %t310 = select i1 %t307, i32 0, i32 %t309
  %t312 = insertvalue { i32, i64 } zeroinitializer, i32 %t310, 0
  store { i32, i64 } %t312, ptr %rv
  br label %ret
bb58:
  %t313 = load i64, ptr %l124, !tbaa !24
  store i64 %t313, ptr %l7, !tbaa !24
  %t314 = load i64, ptr %l7, !tbaa !24
  %t316 = icmp slt i64 %t314, 56320
  br i1 %t316, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb61
bb60:
  %t318 = load i64, ptr %l7, !tbaa !24
  %t320 = icmp sgt i64 %t318, 57343
  store i1 %t320, ptr %l134, !tbaa !21
  br label %bb61
bb61:
  %t322 = load i1, ptr %l134, !tbaa !21
  br i1 %t322, label %bb62, label %bb63
bb62:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t324 = load i64, ptr %l6, !tbaa !24
  %t327 = getelementptr %"std/json:reader", ptr %t323, i32 0, i32 1
  store i64 %t324, ptr %t327, !tbaa !24
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t328)
  store i64 %t330, ptr %l140
  br label %bb64
bb63:
  br label %bb67
bb64:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t331)
  store i64 %t333, ptr %l142
  br label %bb65
bb65:
  store { i64, [2 x i64] } zeroinitializer, ptr %t334
  %t335 = getelementptr { i64, [2 x i64] }, ptr %t334, i32 0, i32 0
  store i64 2, ptr %t335
  %t336 = load i64, ptr %l140, !tbaa !24
  %t337 = insertvalue { i64, i64 } undef, i64 %t336, 0
  %t338 = load i64, ptr %l142, !tbaa !24
  %t339 = insertvalue { i64, i64 } %t337, i64 %t338, 1
  %t340 = getelementptr { i64, [2 x i64] }, ptr %t334, i32 0, i32 1
  store { i64, i64 } %t339, ptr %t340
  %t341 = load { i64, [2 x i64] }, ptr %t334
  store { i64, [2 x i64] } %t341, ptr %l143
  %t342 = call ptr @__olang_errpay_push()
  %t343 = ptrtoint ptr %t342 to i64
  store i64 %t343, ptr %l144, !tbaa !24
  %t344 = load i64, ptr %l144
  %t345 = inttoptr i64 %t344 to ptr
  %t347 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t345, ptr %l143)
  store { i64, [2 x i64] } %t347, ptr %l146
  br label %bb66
bb66:
  %t348 = load { i64, [2 x i64] }, ptr %l146
  %t349 = load i64, ptr %l144
  %t350 = inttoptr i64 %t349 to ptr
  %t351 = call ptr @__olang_scope_alloc_a(ptr %t350, i64 24, i64 8)
  store { i64, [2 x i64] } %t348, ptr %t351
  call void @__olang_errpay_set(ptr %t351)
  %t354 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t354, ptr %rv
  br label %ret
bb67:
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l149, !tbaa !29
  %t356 = load ptr, ptr %l149, !tbaa !29
  %t357 = getelementptr %"std/json:reader", ptr %t356, i32 0, i32 1
  %t358 = load i64, ptr %t357, !tbaa !24
  %t360 = add i64 %t358, 6
  %t362 = load ptr, ptr %l149, !tbaa !29
  %t363 = getelementptr %"std/json:reader", ptr %t362, i32 0, i32 1
  store i64 %t360, ptr %t363, !tbaa !24
  %t364 = load i64, ptr %l5, !tbaa !24
  %t366 = sub i64 %t364, 55296
  %t368 = shl i64 %t366, 10
  %t370 = add i64 65536, %t368
  %t371 = load i64, ptr %l7, !tbaa !24
  %t373 = sub i64 %t371, 56320
  %t376 = add i64 %t370, %t373
  store i64 %t376, ptr %l5, !tbaa !24
  br label %bb68
bb68:
  %t378 = load i64, ptr %l5, !tbaa !24
  %t379 = load i64, ptr %l1, !tbaa !24
  %t380 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t384 = call i64 @std_2fjson_2eputUtf8(ptr %v1, i64 %t378, i64 %t379, { i64, ptr } %t380)
  store i64 %t384, ptr %l162
  br label %bb69
bb69:
  %t385 = load i64, ptr %l162, !tbaa !24
  %t386 = insertvalue { i32, i64 } zeroinitializer, i64 %t385, 1
  store { i32, i64 } %t386, ptr %rv
  br label %ret
bb70:
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t389 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t387)
  store i64 %t389, ptr %l166
  br label %bb71
bb71:
  store { i64, [2 x i64] } zeroinitializer, ptr %t390
  %t391 = getelementptr { i64, [2 x i64] }, ptr %t390, i32 0, i32 0
  store i64 2, ptr %t391
  %t392 = load i64, ptr %l164, !tbaa !24
  %t393 = insertvalue { i64, i64 } undef, i64 %t392, 0
  %t394 = load i64, ptr %l166, !tbaa !24
  %t395 = insertvalue { i64, i64 } %t393, i64 %t394, 1
  %t396 = getelementptr { i64, [2 x i64] }, ptr %t390, i32 0, i32 1
  store { i64, i64 } %t395, ptr %t396
  %t397 = load { i64, [2 x i64] }, ptr %t390
  store { i64, [2 x i64] } %t397, ptr %l167
  %t398 = call ptr @__olang_errpay_push()
  %t399 = ptrtoint ptr %t398 to i64
  store i64 %t399, ptr %l168, !tbaa !24
  %t400 = load i64, ptr %l168
  %t401 = inttoptr i64 %t400 to ptr
  %t403 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t401, ptr %l167)
  store { i64, [2 x i64] } %t403, ptr %l170
  br label %bb72
bb72:
  %t404 = load { i64, [2 x i64] }, ptr %l170
  %t405 = load i64, ptr %l168
  %t406 = inttoptr i64 %t405 to ptr
  %t407 = call ptr @__olang_scope_alloc_a(ptr %t406, i64 24, i64 8)
  store { i64, [2 x i64] } %t404, ptr %t407
  call void @__olang_errpay_set(ptr %t407)
  %t410 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t410, ptr %rv
  br label %ret
bb73:
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t411 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t413 = extractvalue { i64, ptr } %t411, 0
  %t415 = icmp sgt i64 %t413, 0
  br i1 %t415, label %bb79, label %bb80
bb79:
  %t417 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t417, ptr %l176, !tbaa !27
  %t418 = load i64, ptr %l1, !tbaa !24
  %t419 = load i8, ptr %l4, !tbaa !22
  %t422 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t423 = load ptr, ptr %t422, !tbaa !27
  %t424 = getelementptr i8, ptr %t423, i64 %t418
  store i8 %t419, ptr %t424, !tbaa !32
  br label %bb81
bb80:
  br label %bb81
bb81:
  %t425 = load ptr, ptr %l0, !tbaa !29
  store ptr %t425, ptr %l179, !tbaa !29
  %t426 = load ptr, ptr %l179, !tbaa !29
  %t427 = getelementptr %"std/json:reader", ptr %t426, i32 0, i32 1
  %t428 = load i64, ptr %t427, !tbaa !24
  %t430 = add i64 %t428, 2
  %t432 = load ptr, ptr %l179, !tbaa !29
  %t433 = getelementptr %"std/json:reader", ptr %t432, i32 0, i32 1
  store i64 %t430, ptr %t433, !tbaa !24
  %t435 = insertvalue { i32, i64 } zeroinitializer, i64 1, 1
  store { i32, i64 } %t435, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local ptr @std_2fjson_2estd_2fjson_3areader_2eexact(ptr %v0, ptr %v1, ptr %a0, i64 %a1, double %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca double
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i8
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l25 = alloca i64
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %l46 = alloca i1
  %l54 = alloca i64
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i32
  %l58 = alloca i64
  %l59 = alloca i32
  %l60 = alloca i64
  %l61 = alloca { i64, ptr }
  %l62 = alloca i64
  %l63 = alloca i32
  %l64 = alloca i64
  %l65 = alloca i32
  %l71 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca ptr
  %t50 = alloca { i64, [2 x i64] }, align 8
  %t96 = alloca { i64, [2 x i64] }, align 8
  %t137 = alloca { i64, [2 x i64] }, align 8
  %t162 = alloca { i64, [2 x i64] }, align 8
  %t172 = alloca { i64, [2 x i64] }, align 8
  %t201 = alloca { i64, [2 x i64] }, align 8
  %t211 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store double %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l11, !tbaa !27
  store i64 %a1, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/json:reader", ptr %t6, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  store i64 %t9, ptr %l14, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l15, !tbaa !24
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l12, !tbaa !24
  %t16 = load i64, ptr %l14, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_9ab7127216e6ddd3_9523f6c3485c577)
  unreachable
bb3:
  %t19 = load i64, ptr %l14, !tbaa !24
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = icmp sle i64 %t19, %t20
  br i1 %t21, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_9ab7127216e6ddd3_9523f6c3485c577)
  unreachable
bb5:
  %t23 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = load i64, ptr %l12, !tbaa !24
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = getelementptr i8, ptr %t24, i64 %t25
  %t28 = sub i64 %t26, %t25
  %t29 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t27, 1
  store { i64, ptr } %t30, ptr %l3, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  store i64 %t34, ptr %l21, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t35, ptr %l22, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i8, ptr %t37, i64 0
  %t39 = load i8, ptr %t38, !tbaa !32
  %t41 = icmp eq i8 %t39, 45
  br i1 %t41, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9ab7127216e6ddd3_9523f6c3485c577)
  unreachable
bb7:
  store i64 1, ptr %l25, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb9
bb9:
  %t43 = load i64, ptr %l21, !tbaa !24
  %t44 = load i64, ptr %l25, !tbaa !24
  %t45 = sub i64 %t43, %t44
  %t47 = icmp sle i64 %t45, 15
  br i1 %t47, label %bb10, label %bb11
bb10:
  %t49 = load double, ptr %l2, !tbaa !26
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 2, ptr %t51
  %t53 = insertvalue { double } undef, double %t49, 0
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  store { double } %t53, ptr %t54
  %t55 = load { i64, [2 x i64] }, ptr %t50
  %t57 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t55, ptr %t57
  call void @__olang_scope_close(ptr %s0)
  store ptr %t57, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t59 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t59, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t63 = extractvalue { i64, ptr } %t61, 0
  store i64 %t63, ptr %l6, !tbaa !24
  br label %bb13
bb13:
  %t65 = load i64, ptr %l5, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = icmp slt i64 %t65, %t66
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  br label %bb27
bb15:
  br label %bb16
bb16:
  %t73 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t73, ptr %l38, !tbaa !27
  %t74 = load i64, ptr %l5, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i8, ptr %t77, i64 %t74
  %t79 = load i8, ptr %t78, !tbaa !32
  store i8 %t79, ptr %l7, !tbaa !22
  %t81 = load i8, ptr %l7, !tbaa !22
  %t83 = icmp eq i8 %t81, 46
  br i1 %t83, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb19
bb18:
  %t85 = load i8, ptr %l7, !tbaa !22
  %t87 = icmp eq i8 %t85, 101
  store i1 %t87, ptr %l43, !tbaa !21
  br label %bb19
bb19:
  %t89 = load i1, ptr %l43, !tbaa !21
  br i1 %t89, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb22
bb21:
  %t90 = load i8, ptr %l7, !tbaa !22
  %t92 = icmp eq i8 %t90, 69
  store i1 %t92, ptr %l46, !tbaa !21
  br label %bb22
bb22:
  %t94 = load i1, ptr %l46, !tbaa !21
  br i1 %t94, label %bb23, label %bb24
bb23:
  %t95 = load double, ptr %l2, !tbaa !26
  store { i64, [2 x i64] } zeroinitializer, ptr %t96
  %t97 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 0
  store i64 2, ptr %t97
  %t99 = insertvalue { double } undef, double %t95, 0
  %t100 = getelementptr { i64, [2 x i64] }, ptr %t96, i32 0, i32 1
  store { double } %t99, ptr %t100
  %t101 = load { i64, [2 x i64] }, ptr %t96
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t101, ptr %t103
  call void @__olang_scope_close(ptr %s0)
  store ptr %t103, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t105 = load i64, ptr %l5, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l5, !tbaa !24
  br label %bb13
bb27:
  %t109 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t109, ptr %l55, !tbaa !27
  %t110 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l57
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb29, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l56
  br label %bb28
bb28:
  %t115 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t116 = load i64, ptr %l56, !tbaa !24
  %t117 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t115, i64 %t116)
  %t118 = extractvalue { i32, i64 } %t117, 1
  %t119 = extractvalue { i32, i64 } %t117, 0
  store i32 %t119, ptr %l59
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb32, label %ok.121, !prof !99
ok.121:
  store i64 %t118, ptr %l58
  br label %bb31
bb29:
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t122 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t122, ptr %l61, !tbaa !27
  %t123 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s6, i64 10)
  %t124 = extractvalue { i32, i64 } %t123, 1
  %t125 = extractvalue { i32, i64 } %t123, 0
  store i32 %t125, ptr %l63
  %t126 = icmp ne i32 %t125, 0
  br i1 %t126, label %bb34, label %ok.127, !prof !99
ok.127:
  store i64 %t124, ptr %l62
  br label %bb33
bb31:
  %t128 = load i64, ptr %l58, !tbaa !24
  store i64 %t128, ptr %l54, !tbaa !24
  br label %bb45
bb32:
  br label %bb30
bb33:
  %t129 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t130 = load i64, ptr %l62, !tbaa !24
  %t131 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %t129, i64 %t130)
  %t132 = extractvalue { i32, i64 } %t131, 1
  %t133 = extractvalue { i32, i64 } %t131, 0
  store i32 %t133, ptr %l65
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb37, label %ok.135, !prof !99
ok.135:
  store i64 %t132, ptr %l64
  br label %bb36
bb34:
  br label %bb35
bb35:
  %t136 = load double, ptr %l2, !tbaa !26
  store { i64, [2 x i64] } zeroinitializer, ptr %t137
  %t138 = getelementptr { i64, [2 x i64] }, ptr %t137, i32 0, i32 0
  store i64 2, ptr %t138
  %t140 = insertvalue { double } undef, double %t136, 0
  %t141 = getelementptr { i64, [2 x i64] }, ptr %t137, i32 0, i32 1
  store { double } %t140, ptr %t141
  %t142 = load { i64, [2 x i64] }, ptr %t137
  %t144 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t142, ptr %t144
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t144, ptr %rv
  br label %ret
bb36:
  %t146 = load i64, ptr %l64, !tbaa !65
  store i64 %t146, ptr %l60, !tbaa !65
  br label %bb38
bb37:
  br label %bb35
bb38:
  %t147 = load i64, ptr %l60, !tbaa !65
  store i64 %t147, ptr %l8, !tbaa !65
  %t148 = load double, ptr %l2, !tbaa !26
  %t150 = fcmp olt double %t148, 0x43f0000000000000
  br i1 %t150, label %bb39, label %bb40
bb39:
  %t152 = load double, ptr %l2, !tbaa !26
  %t154 = fptoui double %t152 to i64
  %t155 = load i64, ptr %l8, !tbaa !65
  %t158 = icmp eq i64 %t154, %t155
  store i1 %t158, ptr %l71, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb41
bb41:
  %t160 = load i1, ptr %l71, !tbaa !21
  br i1 %t160, label %bb42, label %bb43
bb42:
  %t161 = load double, ptr %l2, !tbaa !26
  store { i64, [2 x i64] } zeroinitializer, ptr %t162
  %t163 = getelementptr { i64, [2 x i64] }, ptr %t162, i32 0, i32 0
  store i64 2, ptr %t163
  %t165 = insertvalue { double } undef, double %t161, 0
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t162, i32 0, i32 1
  store { double } %t165, ptr %t166
  %t167 = load { i64, [2 x i64] }, ptr %t162
  %t169 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t167, ptr %t169
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t169, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t171 = load i64, ptr %l8, !tbaa !65
  store { i64, [2 x i64] } zeroinitializer, ptr %t172
  %t173 = getelementptr { i64, [2 x i64] }, ptr %t172, i32 0, i32 0
  store i64 4, ptr %t173
  %t175 = insertvalue { i64 } undef, i64 %t171, 0
  %t176 = getelementptr { i64, [2 x i64] }, ptr %t172, i32 0, i32 1
  store { i64 } %t175, ptr %t176
  %t177 = load { i64, [2 x i64] }, ptr %t172
  %t179 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t177, ptr %t179
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store ptr %t179, ptr %rv
  br label %ret
bb45:
  %t181 = load i64, ptr %l54, !tbaa !24
  store i64 %t181, ptr %l9, !tbaa !24
  %t182 = load double, ptr %l2, !tbaa !26
  %t184 = fcmp oge double %t182, 0xc3e0000000000000
  br i1 %t184, label %bb46, label %bb47
bb46:
  %t186 = load double, ptr %l2, !tbaa !26
  %t188 = fcmp olt double %t186, 0x43e0000000000000
  store i1 %t188, ptr %l84, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb48
bb48:
  %t190 = load i1, ptr %l84, !tbaa !21
  br i1 %t190, label %bb49, label %bb50
bb49:
  %t191 = load double, ptr %l2, !tbaa !26
  %t193 = fptosi double %t191 to i64
  %t194 = load i64, ptr %l9, !tbaa !24
  %t197 = icmp eq i64 %t193, %t194
  store i1 %t197, ptr %l87, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb51
bb51:
  %t199 = load i1, ptr %l87, !tbaa !21
  br i1 %t199, label %bb52, label %bb53
bb52:
  %t200 = load double, ptr %l2, !tbaa !26
  store { i64, [2 x i64] } zeroinitializer, ptr %t201
  %t202 = getelementptr { i64, [2 x i64] }, ptr %t201, i32 0, i32 0
  store i64 2, ptr %t202
  %t204 = insertvalue { double } undef, double %t200, 0
  %t205 = getelementptr { i64, [2 x i64] }, ptr %t201, i32 0, i32 1
  store { double } %t204, ptr %t205
  %t206 = load { i64, [2 x i64] }, ptr %t201
  %t208 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t206, ptr %t208
  call void @__olang_scope_close(ptr %s0)
  store ptr %t208, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t210 = load i64, ptr %l9, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t211
  %t212 = getelementptr { i64, [2 x i64] }, ptr %t211, i32 0, i32 0
  store i64 3, ptr %t212
  %t214 = insertvalue { i64 } undef, i64 %t210, 0
  %t215 = getelementptr { i64, [2 x i64] }, ptr %t211, i32 0, i32 1
  store { i64 } %t214, ptr %t215
  %t216 = load { i64, [2 x i64] }, ptr %t211
  %t218 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t216, ptr %t218
  call void @__olang_scope_close(ptr %s0)
  store ptr %t218, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2ehex4(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l9 = alloca i8
  %l10 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l48 = alloca i64
  %l50 = alloca i64
  %l51 = alloca { i64, [2 x i64] }
  %l52 = alloca i64
  %l54 = alloca { i64, [2 x i64] }
  %l58 = alloca { i64, ptr }
  %l63 = alloca i1
  %l71 = alloca i1
  %l80 = alloca i1
  %l90 = alloca i64
  %l92 = alloca i64
  %l93 = alloca { i64, [2 x i64] }
  %l94 = alloca i64
  %l96 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, i64 }
  %t80 = alloca { i64, [2 x i64] }, align 8
  %t172 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l3, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = add i64 %t3, 4
  store i64 %t5, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb3:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l20, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb5
bb5:
  %t33 = load i64, ptr %l20, !tbaa !24
  store i64 %t33, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb8, label %bb9
bb8:
  br label %bb39
bb9:
  br label %bb10
bb10:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/json:reader", ptr %t54, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = extractvalue { i64, ptr } %t57, 0
  %t62 = icmp sge i64 %t53, %t59
  br i1 %t62, label %bb11, label %bb12
bb11:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"std/json:reader", ptr %t65, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t68, 0
  %t73 = getelementptr %"std/json:reader", ptr %t64, i32 0, i32 1
  store i64 %t70, ptr %t73, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t74)
  store i64 %t76, ptr %l48
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t77)
  store i64 %t79, ptr %l50
  br label %bb14
bb14:
  store { i64, [2 x i64] } zeroinitializer, ptr %t80
  %t81 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 0
  store i64 1, ptr %t81
  %t82 = load i64, ptr %l48, !tbaa !24
  %t83 = insertvalue { i64, i64 } undef, i64 %t82, 0
  %t84 = load i64, ptr %l50, !tbaa !24
  %t85 = insertvalue { i64, i64 } %t83, i64 %t84, 1
  %t86 = getelementptr { i64, [2 x i64] }, ptr %t80, i32 0, i32 1
  store { i64, i64 } %t85, ptr %t86
  %t87 = load { i64, [2 x i64] }, ptr %t80
  store { i64, [2 x i64] } %t87, ptr %l51
  %t88 = call ptr @__olang_errpay_push()
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l52, !tbaa !24
  %t90 = load i64, ptr %l52
  %t91 = inttoptr i64 %t90 to ptr
  %t93 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t91, ptr %l51)
  store { i64, [2 x i64] } %t93, ptr %l54
  br label %bb15
bb15:
  %t94 = load { i64, [2 x i64] }, ptr %l54
  %t95 = load i64, ptr %l52
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = call ptr @__olang_scope_alloc_a(ptr %t96, i64 24, i64 8)
  store { i64, [2 x i64] } %t94, ptr %t97
  call void @__olang_errpay_set(ptr %t97)
  %t100 = insertvalue { i32, i64 } zeroinitializer, i32 65537, 0
  store { i32, i64 } %t100, ptr %rv
  br label %ret
bb16:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"std/json:reader", ptr %t101, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  store { i64, ptr } %t104, ptr %l58, !tbaa !27
  %t105 = load i64, ptr %l8, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i8, ptr %t108, i64 %t105
  %t110 = load i8, ptr %t109, !tbaa !32
  store i8 %t110, ptr %l9, !tbaa !22
  store i64 0, ptr %l10, !tbaa !24
  %t112 = load i8, ptr %l9, !tbaa !22
  %t114 = icmp uge i8 %t112, 48
  br i1 %t114, label %bb17, label %bb18
bb17:
  %t116 = load i8, ptr %l9, !tbaa !22
  %t118 = icmp ule i8 %t116, 57
  store i1 %t118, ptr %l63, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb19
bb19:
  %t120 = load i1, ptr %l63, !tbaa !21
  br i1 %t120, label %bb20, label %bb21
bb20:
  %t121 = load i8, ptr %l9, !tbaa !22
  %t123 = sub i8 %t121, 48
  %t125 = zext i8 %t123 to i64
  store i64 %t125, ptr %l10, !tbaa !24
  br label %bb37
bb21:
  %t127 = load i8, ptr %l9, !tbaa !22
  %t129 = icmp uge i8 %t127, 97
  br i1 %t129, label %bb22, label %bb23
bb22:
  %t131 = load i8, ptr %l9, !tbaa !22
  %t133 = icmp ule i8 %t131, 102
  store i1 %t133, ptr %l71, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l71, !tbaa !21
  br label %bb24
bb24:
  %t135 = load i1, ptr %l71, !tbaa !21
  br i1 %t135, label %bb25, label %bb26
bb25:
  %t136 = load i8, ptr %l9, !tbaa !22
  %t138 = sub i8 %t136, 97
  %t140 = zext i8 %t138 to i64
  %t142 = add i64 %t140, 10
  store i64 %t142, ptr %l10, !tbaa !24
  br label %bb36
bb26:
  %t144 = load i8, ptr %l9, !tbaa !22
  %t146 = icmp uge i8 %t144, 65
  br i1 %t146, label %bb27, label %bb28
bb27:
  %t148 = load i8, ptr %l9, !tbaa !22
  %t150 = icmp ule i8 %t148, 70
  store i1 %t150, ptr %l80, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb29
bb29:
  %t152 = load i1, ptr %l80, !tbaa !21
  br i1 %t152, label %bb30, label %bb31
bb30:
  %t153 = load i8, ptr %l9, !tbaa !22
  %t155 = sub i8 %t153, 65
  %t157 = zext i8 %t155 to i64
  %t159 = add i64 %t157, 10
  store i64 %t159, ptr %l10, !tbaa !24
  br label %bb35
bb31:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i64, ptr %l8, !tbaa !24
  %t165 = getelementptr %"std/json:reader", ptr %t161, i32 0, i32 1
  store i64 %t162, ptr %t165, !tbaa !24
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t166)
  store i64 %t168, ptr %l90
  br label %bb32
bb32:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t169)
  store i64 %t171, ptr %l92
  br label %bb33
bb33:
  store { i64, [2 x i64] } zeroinitializer, ptr %t172
  %t173 = getelementptr { i64, [2 x i64] }, ptr %t172, i32 0, i32 0
  store i64 2, ptr %t173
  %t174 = load i64, ptr %l90, !tbaa !24
  %t175 = insertvalue { i64, i64 } undef, i64 %t174, 0
  %t176 = load i64, ptr %l92, !tbaa !24
  %t177 = insertvalue { i64, i64 } %t175, i64 %t176, 1
  %t178 = getelementptr { i64, [2 x i64] }, ptr %t172, i32 0, i32 1
  store { i64, i64 } %t177, ptr %t178
  %t179 = load { i64, [2 x i64] }, ptr %t172
  store { i64, [2 x i64] } %t179, ptr %l93
  %t180 = call ptr @__olang_errpay_push()
  %t181 = ptrtoint ptr %t180 to i64
  store i64 %t181, ptr %l94, !tbaa !24
  %t182 = load i64, ptr %l94
  %t183 = inttoptr i64 %t182 to ptr
  %t185 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t183, ptr %l93)
  store { i64, [2 x i64] } %t185, ptr %l96
  br label %bb34
bb34:
  %t186 = load { i64, [2 x i64] }, ptr %l96
  %t187 = load i64, ptr %l94
  %t188 = inttoptr i64 %t187 to ptr
  %t189 = call ptr @__olang_scope_alloc_a(ptr %t188, i64 24, i64 8)
  store { i64, [2 x i64] } %t186, ptr %t189
  call void @__olang_errpay_set(ptr %t189)
  %t192 = insertvalue { i32, i64 } zeroinitializer, i32 65538, 0
  store { i32, i64 } %t192, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t193 = load i64, ptr %l2, !tbaa !24
  %t195 = mul i64 %t193, 16
  %t196 = load i64, ptr %l10, !tbaa !24
  %t199 = add i64 %t195, %t196
  store i64 %t199, ptr %l2, !tbaa !24
  br label %bb38
bb38:
  %t201 = load i64, ptr %l7, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l7, !tbaa !24
  br label %bb7
bb39:
  %t205 = load i64, ptr %l2, !tbaa !24
  %t207 = insertvalue { i32, i64 } zeroinitializer, i64 %t205, 1
  store { i32, i64 } %t207, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i1 @std_2fjson_2estd_2fjson_3areader_2einObject(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 7
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/json:reader", ptr %t5, i32 0, i32 8
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i64, ptr %t13, i64 %t10
  %t15 = load i64, ptr %t14, !tbaa !34
  %t17 = icmp sge i64 %t15, 0
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i64
  %l39 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 1, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/json:reader", ptr %t5, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = call i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %t4, i64 %t10)
  store i64 %t13, ptr %l13
  br label %bb1
bb1:
  %t14 = load i64, ptr %l13, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = icmp sgt i64 %t15, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp sgt i64 %t21, 0
  br i1 %t23, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = sub i64 %t25, %t26
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = sub i64 %t33, 1
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = sdiv i64 %t35, %t36
  store i64 %t39, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t41 = load i64, ptr %l20, !tbaa !24
  store i64 %t41, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t42 = load i64, ptr %l17, !tbaa !24
  store i64 %t42, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t43 = load i64, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t47 = icmp slt i64 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb9, label %bb10
bb9:
  br label %bb16
bb10:
  br label %bb11
bb11:
  %t51 = load i64, ptr %l2, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = mul i64 %t52, %t53
  %t59 = add i64 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"std/json:reader", ptr %t61, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l39, !tbaa !27
  %t67 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i8, ptr %t68, i64 %t59
  %t70 = load i8, ptr %t69, !tbaa !32
  %t72 = icmp eq i8 %t70, 10
  br i1 %t72, label %bb12, label %bb13
bb12:
  %t74 = load i64, ptr %l1, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l1, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = add i64 %t78, 1
  store i64 %t80, ptr %l6, !tbaa !24
  br label %bb8
bb16:
  %t82 = load i64, ptr %l1, !tbaa !24
  store i64 %t82, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i32 @std_2fjson_2estd_2fjson_3areader_2ename(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %l13 = alloca i64
  %l15 = alloca { i64, [2 x i64] }
  %l19 = alloca { i64, ptr }
  %l25 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca i64
  %l31 = alloca { i64, [2 x i64] }
  %l34 = alloca ptr
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca i32
  %l50 = alloca i64
  %l52 = alloca i64
  %l53 = alloca { i64, [2 x i64] }
  %l54 = alloca i64
  %l56 = alloca { i64, [2 x i64] }
  %l60 = alloca { i64, ptr }
  %l66 = alloca i64
  %l68 = alloca i64
  %l69 = alloca { i64, [2 x i64] }
  %l70 = alloca i64
  %l72 = alloca { i64, [2 x i64] }
  %l75 = alloca ptr
  %rv = alloca i32
  %t23 = alloca { i64, [2 x i64] }, align 8
  %t65 = alloca { i64, [2 x i64] }, align 8
  %t135 = alloca { i64, [2 x i64] }, align 8
  %t177 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"std/json:reader", ptr %t3, i32 0, i32 1
  %t6 = load i64, ptr %t5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"std/json:reader", ptr %t7, i32 0, i32 0
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  %t15 = icmp eq i64 %t6, %t12
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l9
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t20)
  store i64 %t22, ptr %l11
  br label %bb5
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t23
  %t24 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 0
  store i64 1, ptr %t24
  %t25 = load i64, ptr %l9, !tbaa !24
  %t26 = insertvalue { i64, i64 } undef, i64 %t25, 0
  %t27 = load i64, ptr %l11, !tbaa !24
  %t28 = insertvalue { i64, i64 } %t26, i64 %t27, 1
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 1
  store { i64, i64 } %t28, ptr %t29
  %t30 = load { i64, [2 x i64] }, ptr %t23
  store { i64, [2 x i64] } %t30, ptr %l12
  %t31 = call ptr @__olang_errpay_push()
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l13, !tbaa !24
  %t33 = load i64, ptr %l13
  %t34 = inttoptr i64 %t33 to ptr
  %t36 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t34, ptr %l12)
  store { i64, [2 x i64] } %t36, ptr %l15
  br label %bb6
bb6:
  %t37 = load { i64, [2 x i64] }, ptr %l15
  %t38 = load i64, ptr %l13
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = call ptr @__olang_scope_alloc_a(ptr %t39, i64 24, i64 8)
  store { i64, [2 x i64] } %t37, ptr %t40
  call void @__olang_errpay_set(ptr %t40)
  store i32 65537, ptr %rv
  br label %ret
bb7:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/json:reader", ptr %t43, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l19, !tbaa !27
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"std/json:reader", ptr %t47, i32 0, i32 1
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i8, ptr %t53, i64 %t50
  %t55 = load i8, ptr %t54, !tbaa !32
  %t57 = icmp ne i8 %t55, 34
  br i1 %t57, label %bb8, label %bb9
bb8:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l25
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t62)
  store i64 %t64, ptr %l27
  br label %bb11
bb11:
  store { i64, [2 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [2 x i64] }, ptr %t65, i32 0, i32 0
  store i64 0, ptr %t66
  %t67 = load i64, ptr %l25, !tbaa !24
  %t68 = insertvalue { i64, i64 } undef, i64 %t67, 0
  %t69 = load i64, ptr %l27, !tbaa !24
  %t70 = insertvalue { i64, i64 } %t68, i64 %t69, 1
  %t71 = getelementptr { i64, [2 x i64] }, ptr %t65, i32 0, i32 1
  store { i64, i64 } %t70, ptr %t71
  %t72 = load { i64, [2 x i64] }, ptr %t65
  store { i64, [2 x i64] } %t72, ptr %l28
  %t73 = call ptr @__olang_errpay_push()
  %t74 = ptrtoint ptr %t73 to i64
  store i64 %t74, ptr %l29, !tbaa !24
  %t75 = load i64, ptr %l29
  %t76 = inttoptr i64 %t75 to ptr
  %t78 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t76, ptr %l28)
  store { i64, [2 x i64] } %t78, ptr %l31
  br label %bb12
bb12:
  %t79 = load { i64, [2 x i64] }, ptr %l31
  %t80 = load i64, ptr %l29
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call ptr @__olang_scope_alloc_a(ptr %t81, i64 24, i64 8)
  store { i64, [2 x i64] } %t79, ptr %t82
  call void @__olang_errpay_set(ptr %t82)
  store i32 65536, ptr %rv
  br label %ret
bb13:
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l34, !tbaa !29
  %t86 = ptrtoint ptr %v0 to i64
  store i64 %t86, ptr %l36, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t87, label %bb14, label %bb15
bb14:
  %t89 = call ptr @__olang_region_make(ptr %v0)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l36, !tbaa !24
  br label %bb15
bb15:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l36
  %t93 = inttoptr i64 %t92 to ptr
  %t95 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3areader_2estring(ptr %v0, ptr %t93, ptr %t91)
  %t96 = extractvalue { i32, { i64, ptr } } %t95, 1
  %t97 = extractvalue { i32, { i64, ptr } } %t95, 0
  store i32 %t97, ptr %l40
  %t98 = icmp ne i32 %t97, 0
  br i1 %t98, label %bb17, label %ok.99, !prof !99
ok.99:
  store { i64, ptr } %t96, ptr %l39
  br label %bb16
bb16:
  %t100 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t100, ptr %l35, !tbaa !27
  br label %bb18
bb17:
  %t101 = load i32, ptr %l40, !tbaa !23
  %t102 = lshr i32 %t101, 16
  %t103 = and i32 %t101, 65535
  %t104 = icmp eq i32 %t102, 1
  %t105 = select i1 %t104, i32 1, i32 0
  %t106 = icmp eq i32 %t101, 0
  %t107 = shl i32 %t105, 16
  %t108 = or i32 %t107, %t103
  %t109 = select i1 %t106, i32 0, i32 %t108
  store i32 %t109, ptr %rv
  br label %ret
bb18:
  %t111 = load ptr, ptr %l34, !tbaa !29
  %t112 = load { i64, ptr }, ptr %l35, !tbaa !27
  call void @std_2fjson_2estd_2fjson_3areader_2epushName(ptr %v0, ptr %v0, ptr %t111, { i64, ptr } %t112)
  br label %bb19
bb19:
  %t113 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t113)
  br label %bb20
bb20:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"std/json:reader", ptr %t115, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"std/json:reader", ptr %t119, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t127 = icmp eq i64 %t118, %t124
  br i1 %t127, label %bb21, label %bb22
bb21:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t129)
  store i64 %t131, ptr %l50
  br label %bb23
bb22:
  br label %bb26
bb23:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t132)
  store i64 %t134, ptr %l52
  br label %bb24
bb24:
  store { i64, [2 x i64] } zeroinitializer, ptr %t135
  %t136 = getelementptr { i64, [2 x i64] }, ptr %t135, i32 0, i32 0
  store i64 1, ptr %t136
  %t137 = load i64, ptr %l50, !tbaa !24
  %t138 = insertvalue { i64, i64 } undef, i64 %t137, 0
  %t139 = load i64, ptr %l52, !tbaa !24
  %t140 = insertvalue { i64, i64 } %t138, i64 %t139, 1
  %t141 = getelementptr { i64, [2 x i64] }, ptr %t135, i32 0, i32 1
  store { i64, i64 } %t140, ptr %t141
  %t142 = load { i64, [2 x i64] }, ptr %t135
  store { i64, [2 x i64] } %t142, ptr %l53
  %t143 = call ptr @__olang_errpay_push()
  %t144 = ptrtoint ptr %t143 to i64
  store i64 %t144, ptr %l54, !tbaa !24
  %t145 = load i64, ptr %l54
  %t146 = inttoptr i64 %t145 to ptr
  %t148 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t146, ptr %l53)
  store { i64, [2 x i64] } %t148, ptr %l56
  br label %bb25
bb25:
  %t149 = load { i64, [2 x i64] }, ptr %l56
  %t150 = load i64, ptr %l54
  %t151 = inttoptr i64 %t150 to ptr
  %t152 = call ptr @__olang_scope_alloc_a(ptr %t151, i64 24, i64 8)
  store { i64, [2 x i64] } %t149, ptr %t152
  call void @__olang_errpay_set(ptr %t152)
  store i32 65537, ptr %rv
  br label %ret
bb26:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"std/json:reader", ptr %t155, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l60, !tbaa !27
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = getelementptr %"std/json:reader", ptr %t159, i32 0, i32 1
  %t162 = load i64, ptr %t161, !tbaa !24
  %t164 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !27
  %t166 = getelementptr i8, ptr %t165, i64 %t162
  %t167 = load i8, ptr %t166, !tbaa !32
  %t169 = icmp ne i8 %t167, 58
  br i1 %t169, label %bb27, label %bb28
bb27:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l66
  br label %bb29
bb28:
  br label %bb32
bb29:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t174)
  store i64 %t176, ptr %l68
  br label %bb30
bb30:
  store { i64, [2 x i64] } zeroinitializer, ptr %t177
  %t178 = getelementptr { i64, [2 x i64] }, ptr %t177, i32 0, i32 0
  store i64 0, ptr %t178
  %t179 = load i64, ptr %l66, !tbaa !24
  %t180 = insertvalue { i64, i64 } undef, i64 %t179, 0
  %t181 = load i64, ptr %l68, !tbaa !24
  %t182 = insertvalue { i64, i64 } %t180, i64 %t181, 1
  %t183 = getelementptr { i64, [2 x i64] }, ptr %t177, i32 0, i32 1
  store { i64, i64 } %t182, ptr %t183
  %t184 = load { i64, [2 x i64] }, ptr %t177
  store { i64, [2 x i64] } %t184, ptr %l69
  %t185 = call ptr @__olang_errpay_push()
  %t186 = ptrtoint ptr %t185 to i64
  store i64 %t186, ptr %l70, !tbaa !24
  %t187 = load i64, ptr %l70
  %t188 = inttoptr i64 %t187 to ptr
  %t190 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t188, ptr %l69)
  store { i64, [2 x i64] } %t190, ptr %l72
  br label %bb31
bb31:
  %t191 = load { i64, [2 x i64] }, ptr %l72
  %t192 = load i64, ptr %l70
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = call ptr @__olang_scope_alloc_a(ptr %t193, i64 24, i64 8)
  store { i64, [2 x i64] } %t191, ptr %t194
  call void @__olang_errpay_set(ptr %t194)
  store i32 65536, ptr %rv
  br label %ret
bb32:
  %t197 = load ptr, ptr %l0, !tbaa !29
  store ptr %t197, ptr %l75, !tbaa !29
  %t198 = load ptr, ptr %l75, !tbaa !29
  %t199 = getelementptr %"std/json:reader", ptr %t198, i32 0, i32 1
  %t200 = load i64, ptr %t199, !tbaa !24
  %t202 = add i64 %t200, 1
  %t204 = load ptr, ptr %l75, !tbaa !29
  %t205 = getelementptr %"std/json:reader", ptr %t204, i32 0, i32 1
  store i64 %t202, ptr %t205, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, double } @std_2fjson_2estd_2fjson_3areader_2enumber(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l10 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l22 = alloca i1
  %l25 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, [2 x i64] }
  %l29 = alloca i64
  %l31 = alloca { i64, [2 x i64] }
  %l35 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l46 = alloca i1
  %l48 = alloca i64
  %l50 = alloca i64
  %l51 = alloca { i64, [2 x i64] }
  %l52 = alloca i64
  %l54 = alloca { i64, [2 x i64] }
  %l60 = alloca i1
  %l65 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l85 = alloca i1
  %l87 = alloca { i64, ptr }
  %l92 = alloca ptr
  %l98 = alloca i1
  %l101 = alloca i64
  %l103 = alloca i64
  %l104 = alloca { i64, [2 x i64] }
  %l105 = alloca i64
  %l107 = alloca { i64, [2 x i64] }
  %l113 = alloca i1
  %l115 = alloca ptr
  %l124 = alloca i1
  %l126 = alloca { i64, ptr }
  %l131 = alloca i1
  %l133 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l147 = alloca i1
  %l149 = alloca { i64, ptr }
  %l154 = alloca i1
  %l156 = alloca { i64, ptr }
  %l161 = alloca ptr
  %l167 = alloca i1
  %l170 = alloca i64
  %l172 = alloca i64
  %l173 = alloca { i64, [2 x i64] }
  %l174 = alloca i64
  %l176 = alloca { i64, [2 x i64] }
  %l182 = alloca i1
  %l184 = alloca ptr
  %l189 = alloca double
  %l195 = alloca double
  %l197 = alloca { i64, ptr }
  %l198 = alloca i64
  %l200 = alloca i64
  %l201 = alloca i64
  %l206 = alloca double
  %l207 = alloca i32
  %l211 = alloca i64
  %l213 = alloca i64
  %l214 = alloca { i64, [2 x i64] }
  %l215 = alloca i64
  %l217 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, double }
  %t50 = alloca { i64, [2 x i64] }, align 8
  %t111 = alloca { i64, [2 x i64] }, align 8
  %t241 = alloca { i64, [2 x i64] }, align 8
  %t413 = alloca { i64, [2 x i64] }, align 8
  %t518 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/json:reader", ptr %t6, i32 0, i32 0
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l10, !tbaa !27
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/json:reader", ptr %t10, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  %t15 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i8, ptr %t16, i64 %t13
  %t18 = load i8, ptr %t17, !tbaa !32
  %t20 = icmp eq i8 %t18, 45
  store i1 %t20, ptr %l2, !tbaa !21
  %t22 = load i1, ptr %l2, !tbaa !21
  br i1 %t22, label %bb1, label %bb2
bb1:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l16, !tbaa !29
  %t26 = getelementptr %"std/json:reader", ptr %t25, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  %t29 = add i64 %t27, 1
  %t31 = load ptr, ptr %l16, !tbaa !29
  %t32 = getelementptr %"std/json:reader", ptr %t31, i32 0, i32 1
  store i64 %t29, ptr %t32, !tbaa !24
  br label %bb3
bb2:
  br label %bb3
bb3:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/json:reader", ptr %t34, i32 0, i32 1
  %t37 = load i64, ptr %t36, !tbaa !24
  %t40 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t33, i64 %t37)
  store i1 %t40, ptr %l22
  br label %bb4
bb4:
  %t41 = load i1, ptr %l22, !tbaa !21
  %t42 = xor i1 %t41, true
  br i1 %t42, label %bb5, label %bb6
bb5:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l25
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t47)
  store i64 %t49, ptr %l27
  br label %bb8
bb8:
  store { i64, [2 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 0
  store i64 3, ptr %t51
  %t52 = load i64, ptr %l25, !tbaa !24
  %t53 = insertvalue { i64, i64 } undef, i64 %t52, 0
  %t54 = load i64, ptr %l27, !tbaa !24
  %t55 = insertvalue { i64, i64 } %t53, i64 %t54, 1
  %t56 = getelementptr { i64, [2 x i64] }, ptr %t50, i32 0, i32 1
  store { i64, i64 } %t55, ptr %t56
  %t57 = load { i64, [2 x i64] }, ptr %t50
  store { i64, [2 x i64] } %t57, ptr %l28
  %t58 = call ptr @__olang_errpay_push()
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l29, !tbaa !24
  %t60 = load i64, ptr %l29
  %t61 = inttoptr i64 %t60 to ptr
  %t63 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t61, ptr %l28)
  store { i64, [2 x i64] } %t63, ptr %l31
  br label %bb9
bb9:
  %t64 = load { i64, [2 x i64] }, ptr %l31
  %t65 = load i64, ptr %l29
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = call ptr @__olang_scope_alloc_a(ptr %t66, i64 24, i64 8)
  store { i64, [2 x i64] } %t64, ptr %t67
  call void @__olang_errpay_set(ptr %t67)
  %t70 = insertvalue { i32, double } zeroinitializer, i32 65539, 0
  store { i32, double } %t70, ptr %rv
  br label %ret
bb10:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"std/json:reader", ptr %t71, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l35, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"std/json:reader", ptr %t75, i32 0, i32 1
  %t78 = load i64, ptr %t77, !tbaa !24
  %t80 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr i8, ptr %t81, i64 %t78
  %t83 = load i8, ptr %t82, !tbaa !32
  %t85 = icmp eq i8 %t83, 48
  br i1 %t85, label %bb11, label %bb12
bb11:
  %t87 = load ptr, ptr %l0, !tbaa !29
  store ptr %t87, ptr %l40, !tbaa !29
  %t88 = load ptr, ptr %l40, !tbaa !29
  %t89 = getelementptr %"std/json:reader", ptr %t88, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !24
  %t92 = add i64 %t90, 1
  %t94 = load ptr, ptr %l40, !tbaa !29
  %t95 = getelementptr %"std/json:reader", ptr %t94, i32 0, i32 1
  store i64 %t92, ptr %t95, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"std/json:reader", ptr %t97, i32 0, i32 1
  %t100 = load i64, ptr %t99, !tbaa !24
  %t103 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t96, i64 %t100)
  store i1 %t103, ptr %l46
  br label %bb13
bb12:
  br label %bb20
bb13:
  %t104 = load i1, ptr %l46, !tbaa !21
  br i1 %t104, label %bb14, label %bb15
bb14:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t105)
  store i64 %t107, ptr %l48
  br label %bb16
bb15:
  br label %bb19
bb16:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t108)
  store i64 %t110, ptr %l50
  br label %bb17
bb17:
  store { i64, [2 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 0
  store i64 3, ptr %t112
  %t113 = load i64, ptr %l48, !tbaa !24
  %t114 = insertvalue { i64, i64 } undef, i64 %t113, 0
  %t115 = load i64, ptr %l50, !tbaa !24
  %t116 = insertvalue { i64, i64 } %t114, i64 %t115, 1
  %t117 = getelementptr { i64, [2 x i64] }, ptr %t111, i32 0, i32 1
  store { i64, i64 } %t116, ptr %t117
  %t118 = load { i64, [2 x i64] }, ptr %t111
  store { i64, [2 x i64] } %t118, ptr %l51
  %t119 = call ptr @__olang_errpay_push()
  %t120 = ptrtoint ptr %t119 to i64
  store i64 %t120, ptr %l52, !tbaa !24
  %t121 = load i64, ptr %l52
  %t122 = inttoptr i64 %t121 to ptr
  %t124 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t122, ptr %l51)
  store { i64, [2 x i64] } %t124, ptr %l54
  br label %bb18
bb18:
  %t125 = load { i64, [2 x i64] }, ptr %l54
  %t126 = load i64, ptr %l52
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = call ptr @__olang_scope_alloc_a(ptr %t127, i64 24, i64 8)
  store { i64, [2 x i64] } %t125, ptr %t128
  call void @__olang_errpay_set(ptr %t128)
  %t131 = insertvalue { i32, double } zeroinitializer, i32 65539, 0
  store { i32, double } %t131, ptr %rv
  br label %ret
bb19:
  br label %bb27
bb20:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"std/json:reader", ptr %t133, i32 0, i32 1
  %t136 = load i64, ptr %t135, !tbaa !24
  %t139 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t132, i64 %t136)
  store i1 %t139, ptr %l60
  br label %bb21
bb21:
  %t140 = load i1, ptr %l60, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t143 = load i64, ptr %l3, !tbaa !24
  %t145 = mul i64 %t143, 10
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"std/json:reader", ptr %t146, i32 0, i32 0
  %t149 = load { i64, ptr }, ptr %t148, !tbaa !27
  store { i64, ptr } %t149, ptr %l65, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"std/json:reader", ptr %t150, i32 0, i32 1
  %t153 = load i64, ptr %t152, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i8, ptr %t156, i64 %t153
  %t158 = load i8, ptr %t157, !tbaa !32
  %t160 = sub i8 %t158, 48
  %t162 = zext i8 %t160 to i64
  %t165 = add i64 %t145, %t162
  store i64 %t165, ptr %l3, !tbaa !24
  %t167 = load i64, ptr %l4, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l4, !tbaa !24
  %t171 = load ptr, ptr %l0, !tbaa !29
  store ptr %t171, ptr %l74, !tbaa !29
  %t172 = load ptr, ptr %l74, !tbaa !29
  %t173 = getelementptr %"std/json:reader", ptr %t172, i32 0, i32 1
  %t174 = load i64, ptr %t173, !tbaa !24
  %t176 = add i64 %t174, 1
  %t178 = load ptr, ptr %l74, !tbaa !29
  %t179 = getelementptr %"std/json:reader", ptr %t178, i32 0, i32 1
  store i64 %t176, ptr %t179, !tbaa !24
  br label %bb25
bb25:
  br label %bb20
bb26:
  br label %bb27
bb27:
  %t180 = load i64, ptr %l4, !tbaa !24
  %t182 = icmp sle i64 %t180, 15
  store i1 %t182, ptr %l5, !tbaa !21
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"std/json:reader", ptr %t184, i32 0, i32 1
  %t187 = load i64, ptr %t186, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"std/json:reader", ptr %t188, i32 0, i32 0
  %t191 = load { i64, ptr }, ptr %t190, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t196 = icmp slt i64 %t187, %t193
  br i1 %t196, label %bb28, label %bb29
bb28:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"std/json:reader", ptr %t198, i32 0, i32 0
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l87, !tbaa !27
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"std/json:reader", ptr %t202, i32 0, i32 1
  %t205 = load i64, ptr %t204, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i8, ptr %t208, i64 %t205
  %t210 = load i8, ptr %t209, !tbaa !32
  %t212 = icmp eq i8 %t210, 46
  store i1 %t212, ptr %l85, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l85, !tbaa !21
  br label %bb30
bb30:
  %t214 = load i1, ptr %l85, !tbaa !21
  br i1 %t214, label %bb31, label %bb32
bb31:
  store i1 false, ptr %l5, !tbaa !21
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l92, !tbaa !29
  %t216 = load ptr, ptr %l92, !tbaa !29
  %t217 = getelementptr %"std/json:reader", ptr %t216, i32 0, i32 1
  %t218 = load i64, ptr %t217, !tbaa !24
  %t220 = add i64 %t218, 1
  %t222 = load ptr, ptr %l92, !tbaa !29
  %t223 = getelementptr %"std/json:reader", ptr %t222, i32 0, i32 1
  store i64 %t220, ptr %t223, !tbaa !24
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"std/json:reader", ptr %t225, i32 0, i32 1
  %t228 = load i64, ptr %t227, !tbaa !24
  %t231 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t224, i64 %t228)
  store i1 %t231, ptr %l98
  br label %bb33
bb32:
  br label %bb47
bb33:
  %t232 = load i1, ptr %l98, !tbaa !21
  %t233 = xor i1 %t232, true
  br i1 %t233, label %bb34, label %bb35
bb34:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t235)
  store i64 %t237, ptr %l101
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t238)
  store i64 %t240, ptr %l103
  br label %bb37
bb37:
  store { i64, [2 x i64] } zeroinitializer, ptr %t241
  %t242 = getelementptr { i64, [2 x i64] }, ptr %t241, i32 0, i32 0
  store i64 3, ptr %t242
  %t243 = load i64, ptr %l101, !tbaa !24
  %t244 = insertvalue { i64, i64 } undef, i64 %t243, 0
  %t245 = load i64, ptr %l103, !tbaa !24
  %t246 = insertvalue { i64, i64 } %t244, i64 %t245, 1
  %t247 = getelementptr { i64, [2 x i64] }, ptr %t241, i32 0, i32 1
  store { i64, i64 } %t246, ptr %t247
  %t248 = load { i64, [2 x i64] }, ptr %t241
  store { i64, [2 x i64] } %t248, ptr %l104
  %t249 = call ptr @__olang_errpay_push()
  %t250 = ptrtoint ptr %t249 to i64
  store i64 %t250, ptr %l105, !tbaa !24
  %t251 = load i64, ptr %l105
  %t252 = inttoptr i64 %t251 to ptr
  %t254 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t252, ptr %l104)
  store { i64, [2 x i64] } %t254, ptr %l107
  br label %bb38
bb38:
  %t255 = load { i64, [2 x i64] }, ptr %l107
  %t256 = load i64, ptr %l105
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = call ptr @__olang_scope_alloc_a(ptr %t257, i64 24, i64 8)
  store { i64, [2 x i64] } %t255, ptr %t258
  call void @__olang_errpay_set(ptr %t258)
  %t261 = insertvalue { i32, double } zeroinitializer, i32 65539, 0
  store { i32, double } %t261, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"std/json:reader", ptr %t263, i32 0, i32 1
  %t266 = load i64, ptr %t265, !tbaa !24
  %t269 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t262, i64 %t266)
  store i1 %t269, ptr %l113
  br label %bb41
bb41:
  %t270 = load i1, ptr %l113, !tbaa !21
  %t271 = xor i1 %t270, true
  br i1 %t271, label %bb42, label %bb43
bb42:
  br label %bb46
bb43:
  br label %bb44
bb44:
  %t273 = load ptr, ptr %l0, !tbaa !29
  store ptr %t273, ptr %l115, !tbaa !29
  %t274 = load ptr, ptr %l115, !tbaa !29
  %t275 = getelementptr %"std/json:reader", ptr %t274, i32 0, i32 1
  %t276 = load i64, ptr %t275, !tbaa !24
  %t278 = add i64 %t276, 1
  %t280 = load ptr, ptr %l115, !tbaa !29
  %t281 = getelementptr %"std/json:reader", ptr %t280, i32 0, i32 1
  store i64 %t278, ptr %t281, !tbaa !24
  br label %bb45
bb45:
  br label %bb40
bb46:
  br label %bb47
bb47:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"std/json:reader", ptr %t282, i32 0, i32 1
  %t285 = load i64, ptr %t284, !tbaa !24
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"std/json:reader", ptr %t286, i32 0, i32 0
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t289, 0
  %t294 = icmp slt i64 %t285, %t291
  br i1 %t294, label %bb48, label %bb49
bb48:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"std/json:reader", ptr %t296, i32 0, i32 0
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  store { i64, ptr } %t299, ptr %l126, !tbaa !27
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"std/json:reader", ptr %t300, i32 0, i32 1
  %t303 = load i64, ptr %t302, !tbaa !24
  %t305 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr i8, ptr %t306, i64 %t303
  %t308 = load i8, ptr %t307, !tbaa !32
  %t310 = icmp eq i8 %t308, 101
  br i1 %t310, label %bb50, label %bb51
bb49:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb53
bb50:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb52
bb51:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"std/json:reader", ptr %t312, i32 0, i32 0
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !27
  store { i64, ptr } %t315, ptr %l133, !tbaa !27
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"std/json:reader", ptr %t316, i32 0, i32 1
  %t319 = load i64, ptr %t318, !tbaa !24
  %t321 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t322 = load ptr, ptr %t321, !tbaa !27
  %t323 = getelementptr i8, ptr %t322, i64 %t319
  %t324 = load i8, ptr %t323, !tbaa !32
  %t326 = icmp eq i8 %t324, 69
  store i1 %t326, ptr %l131, !tbaa !21
  br label %bb52
bb52:
  %t328 = load i1, ptr %l131, !tbaa !21
  store i1 %t328, ptr %l124, !tbaa !21
  br label %bb53
bb53:
  %t329 = load i1, ptr %l124, !tbaa !21
  br i1 %t329, label %bb54, label %bb55
bb54:
  store i1 false, ptr %l5, !tbaa !21
  %t330 = load ptr, ptr %l0, !tbaa !29
  store ptr %t330, ptr %l138, !tbaa !29
  %t331 = load ptr, ptr %l138, !tbaa !29
  %t332 = getelementptr %"std/json:reader", ptr %t331, i32 0, i32 1
  %t333 = load i64, ptr %t332, !tbaa !24
  %t335 = add i64 %t333, 1
  %t337 = load ptr, ptr %l138, !tbaa !29
  %t338 = getelementptr %"std/json:reader", ptr %t337, i32 0, i32 1
  store i64 %t335, ptr %t338, !tbaa !24
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"std/json:reader", ptr %t339, i32 0, i32 1
  %t342 = load i64, ptr %t341, !tbaa !24
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"std/json:reader", ptr %t343, i32 0, i32 0
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t351 = icmp slt i64 %t342, %t348
  br i1 %t351, label %bb56, label %bb57
bb55:
  br label %bb79
bb56:
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t355 = getelementptr %"std/json:reader", ptr %t353, i32 0, i32 0
  %t356 = load { i64, ptr }, ptr %t355, !tbaa !27
  store { i64, ptr } %t356, ptr %l149, !tbaa !27
  %t357 = load ptr, ptr %l0, !tbaa !29
  %t359 = getelementptr %"std/json:reader", ptr %t357, i32 0, i32 1
  %t360 = load i64, ptr %t359, !tbaa !24
  %t362 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t363 = load ptr, ptr %t362, !tbaa !27
  %t364 = getelementptr i8, ptr %t363, i64 %t360
  %t365 = load i8, ptr %t364, !tbaa !32
  %t367 = icmp eq i8 %t365, 43
  br i1 %t367, label %bb58, label %bb59
bb57:
  store i1 false, ptr %l147, !tbaa !21
  br label %bb61
bb58:
  store i1 true, ptr %l154, !tbaa !21
  br label %bb60
bb59:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr %"std/json:reader", ptr %t369, i32 0, i32 0
  %t372 = load { i64, ptr }, ptr %t371, !tbaa !27
  store { i64, ptr } %t372, ptr %l156, !tbaa !27
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = getelementptr %"std/json:reader", ptr %t373, i32 0, i32 1
  %t376 = load i64, ptr %t375, !tbaa !24
  %t378 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t379 = load ptr, ptr %t378, !tbaa !27
  %t380 = getelementptr i8, ptr %t379, i64 %t376
  %t381 = load i8, ptr %t380, !tbaa !32
  %t383 = icmp eq i8 %t381, 45
  store i1 %t383, ptr %l154, !tbaa !21
  br label %bb60
bb60:
  %t385 = load i1, ptr %l154, !tbaa !21
  store i1 %t385, ptr %l147, !tbaa !21
  br label %bb61
bb61:
  %t386 = load i1, ptr %l147, !tbaa !21
  br i1 %t386, label %bb62, label %bb63
bb62:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l161, !tbaa !29
  %t388 = load ptr, ptr %l161, !tbaa !29
  %t389 = getelementptr %"std/json:reader", ptr %t388, i32 0, i32 1
  %t390 = load i64, ptr %t389, !tbaa !24
  %t392 = add i64 %t390, 1
  %t394 = load ptr, ptr %l161, !tbaa !29
  %t395 = getelementptr %"std/json:reader", ptr %t394, i32 0, i32 1
  store i64 %t392, ptr %t395, !tbaa !24
  br label %bb64
bb63:
  br label %bb64
bb64:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"std/json:reader", ptr %t397, i32 0, i32 1
  %t400 = load i64, ptr %t399, !tbaa !24
  %t403 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t396, i64 %t400)
  store i1 %t403, ptr %l167
  br label %bb65
bb65:
  %t404 = load i1, ptr %l167, !tbaa !21
  %t405 = xor i1 %t404, true
  br i1 %t405, label %bb66, label %bb67
bb66:
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t409 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t407)
  store i64 %t409, ptr %l170
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t410 = load ptr, ptr %l0, !tbaa !29
  %t412 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t410)
  store i64 %t412, ptr %l172
  br label %bb69
bb69:
  store { i64, [2 x i64] } zeroinitializer, ptr %t413
  %t414 = getelementptr { i64, [2 x i64] }, ptr %t413, i32 0, i32 0
  store i64 3, ptr %t414
  %t415 = load i64, ptr %l170, !tbaa !24
  %t416 = insertvalue { i64, i64 } undef, i64 %t415, 0
  %t417 = load i64, ptr %l172, !tbaa !24
  %t418 = insertvalue { i64, i64 } %t416, i64 %t417, 1
  %t419 = getelementptr { i64, [2 x i64] }, ptr %t413, i32 0, i32 1
  store { i64, i64 } %t418, ptr %t419
  %t420 = load { i64, [2 x i64] }, ptr %t413
  store { i64, [2 x i64] } %t420, ptr %l173
  %t421 = call ptr @__olang_errpay_push()
  %t422 = ptrtoint ptr %t421 to i64
  store i64 %t422, ptr %l174, !tbaa !24
  %t423 = load i64, ptr %l174
  %t424 = inttoptr i64 %t423 to ptr
  %t426 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t424, ptr %l173)
  store { i64, [2 x i64] } %t426, ptr %l176
  br label %bb70
bb70:
  %t427 = load { i64, [2 x i64] }, ptr %l176
  %t428 = load i64, ptr %l174
  %t429 = inttoptr i64 %t428 to ptr
  %t430 = call ptr @__olang_scope_alloc_a(ptr %t429, i64 24, i64 8)
  store { i64, [2 x i64] } %t427, ptr %t430
  call void @__olang_errpay_set(ptr %t430)
  %t433 = insertvalue { i32, double } zeroinitializer, i32 65539, 0
  store { i32, double } %t433, ptr %rv
  br label %ret
bb71:
  br label %bb72
bb72:
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = getelementptr %"std/json:reader", ptr %t435, i32 0, i32 1
  %t438 = load i64, ptr %t437, !tbaa !24
  %t441 = call i1 @std_2fjson_2estd_2fjson_3areader_2edigitAt(ptr %v0, ptr %t434, i64 %t438)
  store i1 %t441, ptr %l182
  br label %bb73
bb73:
  %t442 = load i1, ptr %l182, !tbaa !21
  %t443 = xor i1 %t442, true
  br i1 %t443, label %bb74, label %bb75
bb74:
  br label %bb78
bb75:
  br label %bb76
bb76:
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l184, !tbaa !29
  %t446 = load ptr, ptr %l184, !tbaa !29
  %t447 = getelementptr %"std/json:reader", ptr %t446, i32 0, i32 1
  %t448 = load i64, ptr %t447, !tbaa !24
  %t450 = add i64 %t448, 1
  %t452 = load ptr, ptr %l184, !tbaa !29
  %t453 = getelementptr %"std/json:reader", ptr %t452, i32 0, i32 1
  store i64 %t450, ptr %t453, !tbaa !24
  br label %bb77
bb77:
  br label %bb72
bb78:
  br label %bb79
bb79:
  %t454 = load i1, ptr %l5, !tbaa !21
  br i1 %t454, label %bb80, label %bb81
bb80:
  %t456 = load i1, ptr %l2, !tbaa !21
  br i1 %t456, label %bb82, label %bb83
bb81:
  br label %bb85
bb82:
  %t458 = load i64, ptr %l3, !tbaa !24
  %t460 = sitofp i64 %t458 to double
  %t462 = fneg double %t460
  store double %t462, ptr %l189, !tbaa !26
  br label %bb84
bb83:
  %t464 = load i64, ptr %l3, !tbaa !24
  %t466 = sitofp i64 %t464 to double
  store double %t466, ptr %l189, !tbaa !26
  br label %bb84
bb84:
  %t468 = load double, ptr %l189, !tbaa !26
  %t469 = insertvalue { i32, double } zeroinitializer, double %t468, 1
  store { i32, double } %t469, ptr %rv
  br label %ret
bb85:
  %t470 = load ptr, ptr %l0, !tbaa !29
  %t472 = getelementptr %"std/json:reader", ptr %t470, i32 0, i32 0
  %t473 = load { i64, ptr }, ptr %t472, !tbaa !27
  store { i64, ptr } %t473, ptr %l197, !tbaa !27
  %t474 = load i64, ptr %l1, !tbaa !24
  store i64 %t474, ptr %l198, !tbaa !24
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"std/json:reader", ptr %t475, i32 0, i32 1
  %t478 = load i64, ptr %t477, !tbaa !24
  store i64 %t478, ptr %l200, !tbaa !24
  %t479 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t479, 0
  store i64 %t480, ptr %l201, !tbaa !24
  %t481 = load i64, ptr %l198, !tbaa !24
  %t482 = icmp sge i64 %t481, 0
  br i1 %t482, label %bb86, label %bb87
bb86:
  %t484 = load i64, ptr %l198, !tbaa !24
  %t485 = load i64, ptr %l200, !tbaa !24
  %t486 = icmp sle i64 %t484, %t485
  br i1 %t486, label %bb88, label %bb89
bb87:
  call void @__olang_check_failed(ptr @olang_loc_1d597537a8745baf_fba5a5429ece169b)
  unreachable
bb88:
  %t488 = load i64, ptr %l200, !tbaa !24
  %t489 = load i64, ptr %l201, !tbaa !24
  %t490 = icmp sle i64 %t488, %t489
  br i1 %t490, label %bb90, label %bb91
bb89:
  call void @__olang_check_failed(ptr @olang_loc_1d597537a8745baf_fba5a5429ece169b)
  unreachable
bb90:
  %t492 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t493 = load ptr, ptr %t492, !tbaa !27
  %t494 = load i64, ptr %l198, !tbaa !24
  %t495 = load i64, ptr %l200, !tbaa !24
  %t496 = getelementptr i8, ptr %t493, i64 %t494
  %t497 = sub i64 %t495, %t494
  %t498 = insertvalue { i64, ptr } undef, i64 %t497, 0
  %t499 = insertvalue { i64, ptr } %t498, ptr %t496, 1
  %t501 = call { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %v0, { i64, ptr } %t499)
  %t502 = extractvalue { i32, double } %t501, 1
  %t503 = extractvalue { i32, double } %t501, 0
  store i32 %t503, ptr %l207
  %t504 = icmp ne i32 %t503, 0
  br i1 %t504, label %bb93, label %ok.505, !prof !99
ok.505:
  store double %t502, ptr %l206
  br label %bb92
bb91:
  call void @__olang_check_failed(ptr @olang_loc_1d597537a8745baf_fba5a5429ece169b)
  unreachable
bb92:
  %t506 = load double, ptr %l206, !tbaa !26
  store double %t506, ptr %l195, !tbaa !26
  br label %bb98
bb93:
  br label %bb94
bb94:
  %t507 = load ptr, ptr %l0, !tbaa !29
  %t508 = load i64, ptr %l1, !tbaa !24
  %t511 = getelementptr %"std/json:reader", ptr %t507, i32 0, i32 1
  store i64 %t508, ptr %t511, !tbaa !24
  %t512 = load ptr, ptr %l0, !tbaa !29
  %t514 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t512)
  store i64 %t514, ptr %l211
  br label %bb95
bb95:
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t517 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t515)
  store i64 %t517, ptr %l213
  br label %bb96
bb96:
  store { i64, [2 x i64] } zeroinitializer, ptr %t518
  %t519 = getelementptr { i64, [2 x i64] }, ptr %t518, i32 0, i32 0
  store i64 3, ptr %t519
  %t520 = load i64, ptr %l211, !tbaa !24
  %t521 = insertvalue { i64, i64 } undef, i64 %t520, 0
  %t522 = load i64, ptr %l213, !tbaa !24
  %t523 = insertvalue { i64, i64 } %t521, i64 %t522, 1
  %t524 = getelementptr { i64, [2 x i64] }, ptr %t518, i32 0, i32 1
  store { i64, i64 } %t523, ptr %t524
  %t525 = load { i64, [2 x i64] }, ptr %t518
  store { i64, [2 x i64] } %t525, ptr %l214
  %t526 = call ptr @__olang_errpay_push()
  %t527 = ptrtoint ptr %t526 to i64
  store i64 %t527, ptr %l215, !tbaa !24
  %t528 = load i64, ptr %l215
  %t529 = inttoptr i64 %t528 to ptr
  %t531 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t529, ptr %l214)
  store { i64, [2 x i64] } %t531, ptr %l217
  br label %bb97
bb97:
  %t532 = load { i64, [2 x i64] }, ptr %l217
  %t533 = load i64, ptr %l215
  %t534 = inttoptr i64 %t533 to ptr
  %t535 = call ptr @__olang_scope_alloc_a(ptr %t534, i64 24, i64 8)
  store { i64, [2 x i64] } %t532, ptr %t535
  call void @__olang_errpay_set(ptr %t535)
  %t538 = insertvalue { i32, double } zeroinitializer, i32 65539, 0
  store { i32, double } %t538, ptr %rv
  br label %ret
bb98:
  %t539 = load double, ptr %l195, !tbaa !26
  %t542 = insertvalue { i32, double } zeroinitializer, double %t539, 1
  store { i32, double } %t542, ptr %rv
  br label %ret
ret:
  %rr = load { i32, double }, ptr %rv
  ret { i32, double } %rr
}

define dso_local i32 @std_2fjson_2estd_2fjson_3areader_2eopen(ptr %v0, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca i64
  %l21 = alloca { i64, [2 x i64] }
  %l34 = alloca ptr
  %l35 = alloca i64
  %l39 = alloca i64
  %l43 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca i64
  %l54 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l83 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca i64
  %l107 = alloca i64
  %l110 = alloca ptr
  %l113 = alloca ptr
  %rv = alloca i32
  %t16 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 8
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr @G_2estd_2fjson_2eMaxDepth, !tbaa !24
  %t8 = icmp eq i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l15
  br label %bb3
bb2:
  br label %bb6
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l17
  br label %bb4
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t16
  %t17 = getelementptr { i64, [2 x i64] }, ptr %t16, i32 0, i32 0
  store i64 6, ptr %t17
  %t18 = load i64, ptr %l15, !tbaa !24
  %t19 = insertvalue { i64, i64 } undef, i64 %t18, 0
  %t20 = load i64, ptr %l17, !tbaa !24
  %t21 = insertvalue { i64, i64 } %t19, i64 %t20, 1
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t16, i32 0, i32 1
  store { i64, i64 } %t21, ptr %t22
  %t23 = load { i64, [2 x i64] }, ptr %t16
  store { i64, [2 x i64] } %t23, ptr %l18
  %t24 = call ptr @__olang_errpay_push()
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l19, !tbaa !24
  %t26 = load i64, ptr %l19
  %t27 = inttoptr i64 %t26 to ptr
  %t29 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t27, ptr %l18)
  store { i64, [2 x i64] } %t29, ptr %l21
  br label %bb5
bb5:
  %t30 = load { i64, [2 x i64] }, ptr %l21
  %t31 = load i64, ptr %l19
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = call ptr @__olang_scope_alloc_a(ptr %t32, i64 24, i64 8)
  store { i64, [2 x i64] } %t30, ptr %t33
  call void @__olang_errpay_set(ptr %t33)
  store i32 65542, ptr %rv
  br label %ret
bb6:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"std/json:reader", ptr %t36, i32 0, i32 8
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"std/json:reader", ptr %t40, i32 0, i32 6
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t48 = icmp eq i64 %t39, %t45
  br i1 %t48, label %bb7, label %bb8
bb7:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"std/json:reader", ptr %t50, i32 0, i32 6
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l2, !tbaa !27
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/json:reader", ptr %t55, i32 0, i32 7
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l3, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l34, !tbaa !29
  %t61 = ptrtoint ptr %v0 to i64
  store i64 %t61, ptr %l35, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e6
  br i1 %t62, label %bb9, label %bb10
bb8:
  br label %bb37
bb9:
  %t64 = call ptr @__olang_region_make(ptr %v0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l35, !tbaa !24
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"std/json:reader", ptr %t66, i32 0, i32 8
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = mul i64 %t69, 2
  store i64 %t71, ptr %l39, !tbaa !24
  %t72 = load i64, ptr %l39, !tbaa !24
  %t73 = icmp sge i64 %t72, 0
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t75 = load i64, ptr %l39, !tbaa !24
  %t76 = icmp sle i64 %t75, 1152921504606846975
  br i1 %t76, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_85df472c87ddc01c_576e573e0ca51428)
  unreachable
bb13:
  %t78 = load i64, ptr %l39, !tbaa !24
  %t79 = mul i64 %t78, 8
  %t80 = load i64, ptr %l35
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = call ptr @__olang_scope_alloc_zeroed(ptr %t81, i64 %t79)
  %t83 = insertvalue { i64, ptr } undef, i64 %t78, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t82, 1
  %t85 = load ptr, ptr %l34, !tbaa !29
  %t86 = getelementptr %"std/json:reader", ptr %t85, i32 0, i32 6
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l43, !tbaa !27
  %t89 = load ptr, ptr %l34, !tbaa !29
  %t90 = getelementptr %"std/json:reader", ptr %t89, i32 0, i32 6
  store { i64, ptr } %t84, ptr %t90, !tbaa !27
  %t91 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e6
  br i1 %t91, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_85df472c87ddc01c_576e573e0ca51428)
  unreachable
bb15:
  %t93 = load { i64, ptr }, ptr %l43
  %t94 = extractvalue { i64, ptr } %t93, 1
  call void @__olang_region_release(ptr %t94)
  store { i64, ptr } zeroinitializer, ptr %l43
  br label %bb16
bb16:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l45, !tbaa !29
  %t96 = ptrtoint ptr %v0 to i64
  store i64 %t96, ptr %l46, !tbaa !24
  %t97 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e7
  br i1 %t97, label %bb17, label %bb18
bb17:
  %t99 = call ptr @__olang_region_make(ptr %v0)
  %t100 = ptrtoint ptr %t99 to i64
  store i64 %t100, ptr %l46, !tbaa !24
  br label %bb18
bb18:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"std/json:reader", ptr %t101, i32 0, i32 8
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = mul i64 %t104, 2
  store i64 %t106, ptr %l50, !tbaa !24
  %t107 = load i64, ptr %l50, !tbaa !24
  %t108 = icmp sge i64 %t107, 0
  br i1 %t108, label %bb19, label %bb20
bb19:
  %t110 = load i64, ptr %l50, !tbaa !24
  %t111 = icmp sle i64 %t110, 1152921504606846975
  br i1 %t111, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_99863128c17f1e9_63398a4432912015)
  unreachable
bb21:
  %t113 = load i64, ptr %l50, !tbaa !24
  %t114 = mul i64 %t113, 8
  %t115 = load i64, ptr %l46
  %t116 = inttoptr i64 %t115 to ptr
  %t117 = call ptr @__olang_scope_alloc_zeroed(ptr %t116, i64 %t114)
  %t118 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %t117, 1
  %t120 = load ptr, ptr %l45, !tbaa !29
  %t121 = getelementptr %"std/json:reader", ptr %t120, i32 0, i32 7
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l54, !tbaa !27
  %t124 = load ptr, ptr %l45, !tbaa !29
  %t125 = getelementptr %"std/json:reader", ptr %t124, i32 0, i32 7
  store { i64, ptr } %t119, ptr %t125, !tbaa !27
  %t126 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e7
  br i1 %t126, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_99863128c17f1e9_63398a4432912015)
  unreachable
bb23:
  %t128 = load { i64, ptr }, ptr %l54
  %t129 = extractvalue { i64, ptr } %t128, 1
  call void @__olang_region_release(ptr %t129)
  store { i64, ptr } zeroinitializer, ptr %l54
  br label %bb24
bb24:
  store i64 0, ptr %l4, !tbaa !24
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"std/json:reader", ptr %t130, i32 0, i32 8
  %t133 = load i64, ptr %t132, !tbaa !24
  store i64 %t133, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t135 = load i64, ptr %l5, !tbaa !24
  %t136 = load i64, ptr %l4, !tbaa !24
  %t139 = icmp sgt i64 %t135, %t136
  br i1 %t139, label %bb25, label %bb26
bb25:
  %t141 = load i64, ptr %l6, !tbaa !24
  %t143 = icmp sgt i64 %t141, 0
  br i1 %t143, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb30
bb27:
  %t145 = load i64, ptr %l5, !tbaa !24
  %t146 = load i64, ptr %l4, !tbaa !24
  %t149 = sub i64 %t145, %t146
  %t150 = load i64, ptr %l6, !tbaa !24
  %t153 = add i64 %t149, %t150
  %t155 = sub i64 %t153, 1
  %t156 = load i64, ptr %l6, !tbaa !24
  %t159 = sdiv i64 %t155, %t156
  store i64 %t159, ptr %l64, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb29
bb29:
  %t161 = load i64, ptr %l64, !tbaa !24
  store i64 %t161, ptr %l61, !tbaa !24
  br label %bb30
bb30:
  %t162 = load i64, ptr %l61, !tbaa !24
  store i64 %t162, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb31
bb31:
  %t163 = load i64, ptr %l8, !tbaa !24
  %t164 = load i64, ptr %l7, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  br label %bb34
bb34:
  %t171 = load i64, ptr %l4, !tbaa !24
  %t172 = load i64, ptr %l8, !tbaa !24
  %t173 = load i64, ptr %l6, !tbaa !24
  %t176 = mul i64 %t172, %t173
  %t179 = add i64 %t171, %t176
  store i64 %t179, ptr %l9, !tbaa !24
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"std/json:reader", ptr %t181, i32 0, i32 6
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  store { i64, ptr } %t184, ptr %l83, !tbaa !27
  %t185 = load i64, ptr %l9, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t186, ptr %l85, !tbaa !27
  %t187 = load i64, ptr %l9, !tbaa !24
  %t189 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !27
  %t191 = getelementptr i64, ptr %t190, i64 %t187
  %t192 = load i64, ptr %t191, !tbaa !34
  %t195 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i64, ptr %t196, i64 %t185
  store i64 %t192, ptr %t197, !tbaa !34
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"std/json:reader", ptr %t198, i32 0, i32 7
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l89, !tbaa !27
  %t202 = load i64, ptr %l9, !tbaa !24
  %t203 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t203, ptr %l91, !tbaa !27
  %t204 = load i64, ptr %l9, !tbaa !24
  %t206 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr i64, ptr %t207, i64 %t204
  %t209 = load i64, ptr %t208, !tbaa !34
  %t212 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr i64, ptr %t213, i64 %t202
  store i64 %t209, ptr %t214, !tbaa !34
  br label %bb35
bb35:
  %t215 = load i64, ptr %l8, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l8, !tbaa !24
  br label %bb31
bb36:
  br label %bb37
bb37:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"std/json:reader", ptr %t219, i32 0, i32 6
  %t222 = load { i64, ptr }, ptr %t221, !tbaa !27
  store { i64, ptr } %t222, ptr %l97, !tbaa !27
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"std/json:reader", ptr %t223, i32 0, i32 8
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"std/json:reader", ptr %t227, i32 0, i32 3
  %t230 = load i64, ptr %t229, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i64, ptr %t234, i64 %t226
  store i64 %t230, ptr %t235, !tbaa !34
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"std/json:reader", ptr %t236, i32 0, i32 7
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  store { i64, ptr } %t239, ptr %l103, !tbaa !27
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"std/json:reader", ptr %t240, i32 0, i32 8
  %t243 = load i64, ptr %t242, !tbaa !24
  store i64 %t243, ptr %l105, !tbaa !24
  br i1 %a1, label %bb38, label %bb39
bb38:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"std/json:reader", ptr %t246, i32 0, i32 5
  %t249 = load i64, ptr %t248, !tbaa !24
  store i64 %t249, ptr %l107, !tbaa !24
  br label %bb40
bb39:
  store i64 -1, ptr %l107, !tbaa !24
  br label %bb40
bb40:
  %t251 = load i64, ptr %l107, !tbaa !24
  %t252 = load i64, ptr %l105, !tbaa !24
  %t253 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t254 = load ptr, ptr %t253, !tbaa !27
  %t255 = getelementptr i64, ptr %t254, i64 %t252
  store i64 %t251, ptr %t255, !tbaa !34
  %t256 = load ptr, ptr %l0, !tbaa !29
  store ptr %t256, ptr %l110, !tbaa !29
  %t257 = load ptr, ptr %l110, !tbaa !29
  %t258 = getelementptr %"std/json:reader", ptr %t257, i32 0, i32 8
  %t259 = load i64, ptr %t258, !tbaa !24
  %t261 = add i64 %t259, 1
  %t263 = load ptr, ptr %l110, !tbaa !29
  %t264 = getelementptr %"std/json:reader", ptr %t263, i32 0, i32 8
  store i64 %t261, ptr %t264, !tbaa !24
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l113, !tbaa !29
  %t266 = load ptr, ptr %l113, !tbaa !29
  %t267 = getelementptr %"std/json:reader", ptr %t266, i32 0, i32 1
  %t268 = load i64, ptr %t267, !tbaa !24
  %t270 = add i64 %t268, 1
  %t272 = load ptr, ptr %l113, !tbaa !29
  %t273 = getelementptr %"std/json:reader", ptr %t272, i32 0, i32 1
  store i64 %t270, ptr %t273, !tbaa !24
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca ptr
  %l31 = alloca i64
  %l34 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l61 = alloca { i64, ptr }
  %l65 = alloca ptr
  %t42 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/json:reader", ptr %t5, i32 0, i32 2
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"std/json:reader", ptr %t15, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"std/json:reader", ptr %t21, i32 0, i32 3
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = mul i64 %t24, 2
  store i64 %t26, ptr %l20, !tbaa !24
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l21, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr ptr, ptr %t29, i64 0
  %t31 = load ptr, ptr %t30, !tbaa !39
  store ptr %t31, ptr %l22, !tbaa !29
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  br i1 %t33, label %bb3, label %bb4
bb2:
  br label %bb19
bb3:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = icmp sle i64 %t35, 1152921504606846975
  br i1 %t36, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_8fccbc1a4d1c0f20_785a6b4725d4309c)
  unreachable
bb5:
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = mul i64 %t38, 8
  %t40 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t39)
  %t41 = load ptr, ptr %l22, !tbaa !29
  store i64 0, ptr %t42
  br label %fill.43
fill.43:
  %t46 = load i64, ptr %t42
  %t47 = icmp slt i64 %t46, %t38
  br i1 %t47, label %fillb.44, label %filld.45
fillb.44:
  %t48 = getelementptr ptr, ptr %t40, i64 %t46
  store ptr %t41, ptr %t48
  %t49 = add i64 %t46, 1
  store i64 %t49, ptr %t42
  br label %fill.43
filld.45:
  %t50 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t40, 1
  %t53 = load ptr, ptr %l17, !tbaa !29
  %t54 = getelementptr %"std/json:reader", ptr %t53, i32 0, i32 2
  store { i64, ptr } %t51, ptr %t54, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/json:reader", ptr %t55, i32 0, i32 3
  %t58 = load i64, ptr %t57, !tbaa !24
  store i64 %t58, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t60 = load i64, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l3, !tbaa !24
  %t64 = icmp sgt i64 %t60, %t61
  br i1 %t64, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_8fccbc1a4d1c0f20_785a6b4725d4309c)
  unreachable
bb7:
  %t66 = load i64, ptr %l5, !tbaa !24
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb12
bb9:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l3, !tbaa !24
  %t74 = sub i64 %t70, %t71
  %t75 = load i64, ptr %l5, !tbaa !24
  %t78 = add i64 %t74, %t75
  %t80 = sub i64 %t78, 1
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = sdiv i64 %t80, %t81
  store i64 %t84, ptr %l34, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb11
bb11:
  %t86 = load i64, ptr %l34, !tbaa !24
  store i64 %t86, ptr %l31, !tbaa !24
  br label %bb12
bb12:
  %t87 = load i64, ptr %l31, !tbaa !24
  store i64 %t87, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t88 = load i64, ptr %l7, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = icmp slt i64 %t88, %t89
  %t94 = xor i1 %t92, true
  br i1 %t94, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  br label %bb16
bb16:
  %t96 = load i64, ptr %l3, !tbaa !24
  %t97 = load i64, ptr %l7, !tbaa !24
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = mul i64 %t97, %t98
  %t104 = add i64 %t96, %t101
  store i64 %t104, ptr %l8, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/json:reader", ptr %t106, i32 0, i32 2
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  store { i64, ptr } %t109, ptr %l53, !tbaa !27
  %t110 = load i64, ptr %l8, !tbaa !24
  %t111 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t111, ptr %l55, !tbaa !27
  %t112 = load i64, ptr %l8, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr ptr, ptr %t115, i64 %t112
  %t117 = load ptr, ptr %t116, !tbaa !39
  %t120 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr ptr, ptr %t121, i64 %t110
  store ptr %t117, ptr %t122, !tbaa !39
  br label %bb17
bb17:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l7, !tbaa !24
  br label %bb13
bb18:
  br label %bb19
bb19:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"std/json:reader", ptr %t127, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l61, !tbaa !27
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"std/json:reader", ptr %t131, i32 0, i32 3
  %t134 = load i64, ptr %t133, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr ptr, ptr %t139, i64 %t134
  store ptr %a1, ptr %t140, !tbaa !39
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l65, !tbaa !29
  %t142 = load ptr, ptr %l65, !tbaa !29
  %t143 = getelementptr %"std/json:reader", ptr %t142, i32 0, i32 3
  %t144 = load i64, ptr %t143, !tbaa !24
  %t146 = add i64 %t144, 1
  %t148 = load ptr, ptr %l65, !tbaa !29
  %t149 = getelementptr %"std/json:reader", ptr %t148, i32 0, i32 3
  store i64 %t146, ptr %t149, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fjson_2estd_2fjson_3areader_2epushName(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l57 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l69 = alloca ptr
  %t49 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/json:reader", ptr %t5, i32 0, i32 4
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t13 = icmp eq i64 %t4, %t10
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"std/json:reader", ptr %t15, i32 0, i32 4
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l2, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l18, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e4
  br i1 %t22, label %bb3, label %bb4
bb2:
  br label %bb23
bb3:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l18, !tbaa !24
  br label %bb4
bb4:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/json:reader", ptr %t26, i32 0, i32 5
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = mul i64 %t29, 2
  store i64 %t31, ptr %l22, !tbaa !24
  %t32 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t32, ptr %l23, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %t34, i64 0
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !37
  store { i64, ptr } %t36, ptr %l24, !tbaa !27
  %t37 = load i64, ptr %l22, !tbaa !24
  %t38 = icmp sge i64 %t37, 0
  br i1 %t38, label %bb5, label %bb6
bb5:
  %t40 = load i64, ptr %l22, !tbaa !24
  %t41 = icmp sle i64 %t40, 576460752303423487
  br i1 %t41, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_5eafb5e9a23aa169_cec655d358f6ab8d)
  unreachable
bb7:
  %t43 = load i64, ptr %l22, !tbaa !24
  %t44 = mul i64 %t43, 16
  %t45 = load i64, ptr %l18
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = call ptr @__olang_scope_alloc(ptr %t46, i64 %t44)
  %t48 = load { i64, ptr }, ptr %l24, !tbaa !27
  store i64 0, ptr %t49
  br label %fill.50
fill.50:
  %t53 = load i64, ptr %t49
  %t54 = icmp slt i64 %t53, %t43
  br i1 %t54, label %fillb.51, label %filld.52
fillb.51:
  %t55 = getelementptr { i64, ptr }, ptr %t47, i64 %t53
  store { i64, ptr } %t48, ptr %t55
  %t56 = add i64 %t53, 1
  store i64 %t56, ptr %t49
  br label %fill.50
filld.52:
  %t57 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t47, 1
  %t59 = load ptr, ptr %l17, !tbaa !29
  %t60 = getelementptr %"std/json:reader", ptr %t59, i32 0, i32 4
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l28, !tbaa !27
  %t63 = load ptr, ptr %l17, !tbaa !29
  %t64 = getelementptr %"std/json:reader", ptr %t63, i32 0, i32 4
  store { i64, ptr } %t58, ptr %t64, !tbaa !27
  %t65 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e4
  br i1 %t65, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_5eafb5e9a23aa169_cec655d358f6ab8d)
  unreachable
bb9:
  %t67 = load { i64, ptr }, ptr %l28
  %t68 = extractvalue { i64, ptr } %t67, 1
  call void @__olang_region_release(ptr %t68)
  store { i64, ptr } zeroinitializer, ptr %l28
  br label %bb10
bb10:
  store i64 0, ptr %l3, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"std/json:reader", ptr %t69, i32 0, i32 5
  %t72 = load i64, ptr %t71, !tbaa !24
  store i64 %t72, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = icmp sgt i64 %t74, %t75
  br i1 %t78, label %bb11, label %bb12
bb11:
  %t80 = load i64, ptr %l5, !tbaa !24
  %t82 = icmp sgt i64 %t80, 0
  br i1 %t82, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb16
bb13:
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l3, !tbaa !24
  %t88 = sub i64 %t84, %t85
  %t89 = load i64, ptr %l5, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t94 = sub i64 %t92, 1
  %t95 = load i64, ptr %l5, !tbaa !24
  %t98 = sdiv i64 %t94, %t95
  store i64 %t98, ptr %l38, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l38, !tbaa !24
  br label %bb15
bb15:
  %t100 = load i64, ptr %l38, !tbaa !24
  store i64 %t100, ptr %l35, !tbaa !24
  br label %bb16
bb16:
  %t101 = load i64, ptr %l35, !tbaa !24
  store i64 %t101, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l6, !tbaa !24
  %t106 = icmp slt i64 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t110 = load i64, ptr %l3, !tbaa !24
  %t111 = load i64, ptr %l7, !tbaa !24
  %t112 = load i64, ptr %l5, !tbaa !24
  %t115 = mul i64 %t111, %t112
  %t118 = add i64 %t110, %t115
  store i64 %t118, ptr %l8, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"std/json:reader", ptr %t120, i32 0, i32 4
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l57, !tbaa !27
  %t124 = load i64, ptr %l8, !tbaa !24
  %t125 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t125, ptr %l59, !tbaa !27
  %t126 = load i64, ptr %l8, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %t129, i64 %t126
  %t131 = load { i64, ptr }, ptr %t130, !tbaa !37
  %t134 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %t135, i64 %t124
  store { i64, ptr } %t131, ptr %t136, !tbaa !37
  br label %bb21
bb21:
  %t137 = load i64, ptr %l7, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l7, !tbaa !24
  br label %bb17
bb22:
  br label %bb23
bb23:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"std/json:reader", ptr %t141, i32 0, i32 4
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l65, !tbaa !27
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"std/json:reader", ptr %t145, i32 0, i32 5
  %t148 = load i64, ptr %t147, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr { i64, ptr }, ptr %t153, i64 %t148
  store { i64, ptr } %a1, ptr %t154, !tbaa !37
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l69, !tbaa !29
  %t156 = load ptr, ptr %l69, !tbaa !29
  %t157 = getelementptr %"std/json:reader", ptr %t156, i32 0, i32 5
  %t158 = load i64, ptr %t157, !tbaa !24
  %t160 = add i64 %t158, 1
  %t162 = load ptr, ptr %l69, !tbaa !29
  %t163 = getelementptr %"std/json:reader", ptr %t162, i32 0, i32 5
  store i64 %t160, ptr %t163, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i32 @std_2fjson_2estd_2fjson_3areader_2erun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i8
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca i1
  %l14 = alloca { i64, ptr }
  %l17 = alloca i1
  %l19 = alloca { i64, ptr }
  %l31 = alloca i64
  %l33 = alloca i64
  %l34 = alloca { i64, [2 x i64] }
  %l35 = alloca i64
  %l37 = alloca { i64, [2 x i64] }
  %l41 = alloca { i64, ptr }
  %l48 = alloca i32
  %l57 = alloca i1
  %l59 = alloca { i64, ptr }
  %l68 = alloca i32
  %l77 = alloca i1
  %l79 = alloca { i64, ptr }
  %l86 = alloca i32
  %l90 = alloca i32
  %l103 = alloca i64
  %l105 = alloca i64
  %l106 = alloca { i64, [2 x i64] }
  %l107 = alloca i64
  %l109 = alloca { i64, [2 x i64] }
  %l120 = alloca i64
  %l122 = alloca i64
  %l123 = alloca { i64, [2 x i64] }
  %l124 = alloca i64
  %l126 = alloca { i64, [2 x i64] }
  %l130 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l140 = alloca i1
  %l142 = alloca i32
  %l144 = alloca i8
  %l146 = alloca i1
  %l147 = alloca i8
  %l151 = alloca i64
  %l153 = alloca i64
  %l154 = alloca { i64, [2 x i64] }
  %l155 = alloca i64
  %l157 = alloca { i64, [2 x i64] }
  %rv = alloca i32
  %t71 = alloca { i64, [2 x i64] }, align 8
  %t274 = alloca { i64, [2 x i64] }, align 8
  %t316 = alloca { i64, [2 x i64] }, align 8
  %t399 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sge i64 %t6, 3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/json:reader", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l9, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i8, ptr %t15, i64 0
  %t17 = load i8, ptr %t16, !tbaa !32
  %t19 = icmp eq i8 %t17, -17
  store i1 %t19, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t21 = load i1, ptr %l7, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/json:reader", ptr %t22, i32 0, i32 0
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l14, !tbaa !27
  %t26 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr i8, ptr %t27, i64 1
  %t29 = load i8, ptr %t28, !tbaa !32
  %t31 = icmp eq i8 %t29, -69
  store i1 %t31, ptr %l12, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb6
bb6:
  %t33 = load i1, ptr %l12, !tbaa !21
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/json:reader", ptr %t34, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l19, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr i8, ptr %t39, i64 2
  %t41 = load i8, ptr %t40, !tbaa !32
  %t43 = icmp eq i8 %t41, -65
  store i1 %t43, ptr %l17, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t45 = load i1, ptr %l17, !tbaa !21
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"std/json:reader", ptr %t46, i32 0, i32 1
  store i64 3, ptr %t48, !tbaa !24
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t49 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t49)
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/json:reader", ptr %t51, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/json:reader", ptr %t55, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t63 = icmp eq i64 %t54, %t60
  br i1 %t63, label %bb15, label %bb16
bb15:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l31
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t68)
  store i64 %t70, ptr %l33
  br label %bb18
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 0
  store i64 1, ptr %t72
  %t73 = load i64, ptr %l31, !tbaa !24
  %t74 = insertvalue { i64, i64 } undef, i64 %t73, 0
  %t75 = load i64, ptr %l33, !tbaa !24
  %t76 = insertvalue { i64, i64 } %t74, i64 %t75, 1
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 1
  store { i64, i64 } %t76, ptr %t77
  %t78 = load { i64, [2 x i64] }, ptr %t71
  store { i64, [2 x i64] } %t78, ptr %l34
  %t79 = call ptr @__olang_errpay_push()
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l35, !tbaa !24
  %t81 = load i64, ptr %l35
  %t82 = inttoptr i64 %t81 to ptr
  %t84 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t82, ptr %l34)
  store { i64, [2 x i64] } %t84, ptr %l37
  br label %bb19
bb19:
  %t85 = load { i64, [2 x i64] }, ptr %l37
  %t86 = load i64, ptr %l35
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call ptr @__olang_scope_alloc_a(ptr %t87, i64 24, i64 8)
  store { i64, [2 x i64] } %t85, ptr %t88
  call void @__olang_errpay_set(ptr %t88)
  store i32 65537, ptr %rv
  br label %ret
bb20:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"std/json:reader", ptr %t91, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l41, !tbaa !27
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"std/json:reader", ptr %t95, i32 0, i32 1
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i8, ptr %t101, i64 %t98
  %t103 = load i8, ptr %t102, !tbaa !32
  store i8 %t103, ptr %l1, !tbaa !22
  %t105 = load i8, ptr %l1, !tbaa !22
  %t107 = icmp eq i8 %t105, 91
  br i1 %t107, label %bb21, label %bb22
bb21:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = call i32 @std_2fjson_2estd_2fjson_3areader_2eopen(ptr %v0, ptr %t109, i1 false)
  store i32 %t111, ptr %l48
  %t112 = icmp ne i32 %t111, 0
  br i1 %t112, label %bb24, label %ok.113, !prof !99
ok.113:
  br label %bb23
bb22:
  %t114 = load i8, ptr %l1, !tbaa !22
  %t116 = icmp eq i8 %t114, 123
  br i1 %t116, label %bb34, label %bb35
bb23:
  br label %bb25
bb24:
  %t118 = load i32, ptr %l48, !tbaa !23
  %t119 = lshr i32 %t118, 16
  %t120 = and i32 %t118, 65535
  %t121 = icmp eq i32 %t119, 1
  %t122 = select i1 %t121, i32 1, i32 0
  %t123 = icmp eq i32 %t118, 0
  %t124 = shl i32 %t122, 16
  %t125 = or i32 %t124, %t120
  %t126 = select i1 %t123, i32 0, i32 %t125
  store i32 %t126, ptr %rv
  br label %ret
bb25:
  %t128 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t128)
  br label %bb26
bb26:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"std/json:reader", ptr %t130, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"std/json:reader", ptr %t134, i32 0, i32 0
  %t137 = load { i64, ptr }, ptr %t136, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t142 = icmp slt i64 %t133, %t139
  br i1 %t142, label %bb27, label %bb28
bb27:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"std/json:reader", ptr %t144, i32 0, i32 0
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  store { i64, ptr } %t147, ptr %l59, !tbaa !27
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"std/json:reader", ptr %t148, i32 0, i32 1
  %t151 = load i64, ptr %t150, !tbaa !24
  %t153 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t154 = load ptr, ptr %t153, !tbaa !27
  %t155 = getelementptr i8, ptr %t154, i64 %t151
  %t156 = load i8, ptr %t155, !tbaa !32
  %t158 = icmp eq i8 %t156, 93
  store i1 %t158, ptr %l57, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l57, !tbaa !21
  br label %bb29
bb29:
  %t160 = load i1, ptr %l57, !tbaa !21
  br i1 %t160, label %bb30, label %bb31
bb30:
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eclose(ptr %v0, ptr %t161)
  br label %bb32
bb31:
  br label %bb96
bb32:
  br label %bb33
bb33:
  br label %bb54
bb34:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = call i32 @std_2fjson_2estd_2fjson_3areader_2eopen(ptr %v0, ptr %t163, i1 true)
  store i32 %t165, ptr %l68
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb37, label %ok.167, !prof !99
ok.167:
  br label %bb36
bb35:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i8, ptr %l1, !tbaa !22
  %t172 = call i32 @std_2fjson_2estd_2fjson_3areader_2escalar(ptr %v0, ptr %t168, i8 %t169)
  store i32 %t172, ptr %l90
  %t173 = icmp ne i32 %t172, 0
  br i1 %t173, label %bb51, label %ok.174, !prof !99
ok.174:
  br label %bb50
bb36:
  br label %bb38
bb37:
  %t175 = load i32, ptr %l68, !tbaa !23
  %t176 = lshr i32 %t175, 16
  %t177 = and i32 %t175, 65535
  %t178 = icmp eq i32 %t176, 1
  %t179 = select i1 %t178, i32 1, i32 0
  %t180 = icmp eq i32 %t175, 0
  %t181 = shl i32 %t179, 16
  %t182 = or i32 %t181, %t177
  %t183 = select i1 %t180, i32 0, i32 %t182
  store i32 %t183, ptr %rv
  br label %ret
bb38:
  %t185 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t185)
  br label %bb39
bb39:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"std/json:reader", ptr %t187, i32 0, i32 1
  %t190 = load i64, ptr %t189, !tbaa !24
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = getelementptr %"std/json:reader", ptr %t191, i32 0, i32 0
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t194, 0
  %t199 = icmp slt i64 %t190, %t196
  br i1 %t199, label %bb40, label %bb41
bb40:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"std/json:reader", ptr %t201, i32 0, i32 0
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l79, !tbaa !27
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"std/json:reader", ptr %t205, i32 0, i32 1
  %t208 = load i64, ptr %t207, !tbaa !24
  %t210 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = getelementptr i8, ptr %t211, i64 %t208
  %t213 = load i8, ptr %t212, !tbaa !32
  %t215 = icmp eq i8 %t213, 125
  store i1 %t215, ptr %l77, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb42
bb42:
  %t217 = load i1, ptr %l77, !tbaa !21
  br i1 %t217, label %bb43, label %bb44
bb43:
  %t218 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eclose(ptr %v0, ptr %t218)
  br label %bb45
bb44:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = call i32 @std_2fjson_2estd_2fjson_3areader_2ename(ptr %v0, ptr %t220)
  store i32 %t222, ptr %l86
  %t223 = icmp ne i32 %t222, 0
  br i1 %t223, label %bb47, label %ok.224, !prof !99
ok.224:
  br label %bb46
bb45:
  br label %bb49
bb46:
  br label %bb48
bb47:
  %t225 = load i32, ptr %l86, !tbaa !23
  %t226 = lshr i32 %t225, 16
  %t227 = and i32 %t225, 65535
  %t228 = icmp eq i32 %t226, 1
  %t229 = select i1 %t228, i32 1, i32 0
  %t230 = icmp eq i32 %t225, 0
  %t231 = shl i32 %t229, 16
  %t232 = or i32 %t231, %t227
  %t233 = select i1 %t230, i32 0, i32 %t232
  store i32 %t233, ptr %rv
  br label %ret
bb48:
  br label %bb96
bb49:
  br label %bb53
bb50:
  br label %bb52
bb51:
  %t235 = load i32, ptr %l90, !tbaa !23
  %t236 = lshr i32 %t235, 16
  %t237 = and i32 %t235, 65535
  %t238 = icmp eq i32 %t236, 1
  %t239 = select i1 %t238, i32 1, i32 0
  %t240 = icmp eq i32 %t235, 0
  %t241 = shl i32 %t239, 16
  %t242 = or i32 %t241, %t237
  %t243 = select i1 %t240, i32 0, i32 %t242
  store i32 %t243, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"std/json:reader", ptr %t245, i32 0, i32 8
  %t248 = load i64, ptr %t247, !tbaa !24
  %t250 = icmp eq i64 %t248, 0
  br i1 %t250, label %bb56, label %bb57
bb56:
  %t252 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t252)
  br label %bb58
bb57:
  br label %bb65
bb58:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"std/json:reader", ptr %t254, i32 0, i32 1
  %t257 = load i64, ptr %t256, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr %"std/json:reader", ptr %t258, i32 0, i32 0
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  %t263 = extractvalue { i64, ptr } %t261, 0
  %t266 = icmp slt i64 %t257, %t263
  br i1 %t266, label %bb59, label %bb60
bb59:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t268)
  store i64 %t270, ptr %l103
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t271)
  store i64 %t273, ptr %l105
  br label %bb62
bb62:
  store { i64, [2 x i64] } zeroinitializer, ptr %t274
  %t275 = getelementptr { i64, [2 x i64] }, ptr %t274, i32 0, i32 0
  store i64 5, ptr %t275
  %t276 = load i64, ptr %l103, !tbaa !24
  %t277 = insertvalue { i64, i64 } undef, i64 %t276, 0
  %t278 = load i64, ptr %l105, !tbaa !24
  %t279 = insertvalue { i64, i64 } %t277, i64 %t278, 1
  %t280 = getelementptr { i64, [2 x i64] }, ptr %t274, i32 0, i32 1
  store { i64, i64 } %t279, ptr %t280
  %t281 = load { i64, [2 x i64] }, ptr %t274
  store { i64, [2 x i64] } %t281, ptr %l106
  %t282 = call ptr @__olang_errpay_push()
  %t283 = ptrtoint ptr %t282 to i64
  store i64 %t283, ptr %l107, !tbaa !24
  %t284 = load i64, ptr %l107
  %t285 = inttoptr i64 %t284 to ptr
  %t287 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t285, ptr %l106)
  store { i64, [2 x i64] } %t287, ptr %l109
  br label %bb63
bb63:
  %t288 = load { i64, [2 x i64] }, ptr %l109
  %t289 = load i64, ptr %l107
  %t290 = inttoptr i64 %t289 to ptr
  %t291 = call ptr @__olang_scope_alloc_a(ptr %t290, i64 24, i64 8)
  store { i64, [2 x i64] } %t288, ptr %t291
  call void @__olang_errpay_set(ptr %t291)
  store i32 65541, ptr %rv
  br label %ret
bb64:
  store i32 0, ptr %rv
  br label %ret
bb65:
  %t294 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %t294)
  br label %bb66
bb66:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"std/json:reader", ptr %t296, i32 0, i32 1
  %t299 = load i64, ptr %t298, !tbaa !24
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"std/json:reader", ptr %t300, i32 0, i32 0
  %t303 = load { i64, ptr }, ptr %t302, !tbaa !27
  %t305 = extractvalue { i64, ptr } %t303, 0
  %t308 = icmp eq i64 %t299, %t305
  br i1 %t308, label %bb67, label %bb68
bb67:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t310)
  store i64 %t312, ptr %l120
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t315 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t313)
  store i64 %t315, ptr %l122
  br label %bb70
bb70:
  store { i64, [2 x i64] } zeroinitializer, ptr %t316
  %t317 = getelementptr { i64, [2 x i64] }, ptr %t316, i32 0, i32 0
  store i64 1, ptr %t317
  %t318 = load i64, ptr %l120, !tbaa !24
  %t319 = insertvalue { i64, i64 } undef, i64 %t318, 0
  %t320 = load i64, ptr %l122, !tbaa !24
  %t321 = insertvalue { i64, i64 } %t319, i64 %t320, 1
  %t322 = getelementptr { i64, [2 x i64] }, ptr %t316, i32 0, i32 1
  store { i64, i64 } %t321, ptr %t322
  %t323 = load { i64, [2 x i64] }, ptr %t316
  store { i64, [2 x i64] } %t323, ptr %l123
  %t324 = call ptr @__olang_errpay_push()
  %t325 = ptrtoint ptr %t324 to i64
  store i64 %t325, ptr %l124, !tbaa !24
  %t326 = load i64, ptr %l124
  %t327 = inttoptr i64 %t326 to ptr
  %t329 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t327, ptr %l123)
  store { i64, [2 x i64] } %t329, ptr %l126
  br label %bb71
bb71:
  %t330 = load { i64, [2 x i64] }, ptr %l126
  %t331 = load i64, ptr %l124
  %t332 = inttoptr i64 %t331 to ptr
  %t333 = call ptr @__olang_scope_alloc_a(ptr %t332, i64 24, i64 8)
  store { i64, [2 x i64] } %t330, ptr %t333
  call void @__olang_errpay_set(ptr %t333)
  store i32 65537, ptr %rv
  br label %ret
bb72:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"std/json:reader", ptr %t336, i32 0, i32 0
  %t339 = load { i64, ptr }, ptr %t338, !tbaa !27
  store { i64, ptr } %t339, ptr %l130, !tbaa !27
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"std/json:reader", ptr %t340, i32 0, i32 1
  %t343 = load i64, ptr %t342, !tbaa !24
  %t345 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t346 = load ptr, ptr %t345, !tbaa !27
  %t347 = getelementptr i8, ptr %t346, i64 %t343
  %t348 = load i8, ptr %t347, !tbaa !32
  store i8 %t348, ptr %l2, !tbaa !22
  %t350 = load i8, ptr %l2, !tbaa !22
  %t352 = icmp eq i8 %t350, 44
  br i1 %t352, label %bb73, label %bb74
bb73:
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l136, !tbaa !29
  %t355 = load ptr, ptr %l136, !tbaa !29
  %t356 = getelementptr %"std/json:reader", ptr %t355, i32 0, i32 1
  %t357 = load i64, ptr %t356, !tbaa !24
  %t359 = add i64 %t357, 1
  %t361 = load ptr, ptr %l136, !tbaa !29
  %t362 = getelementptr %"std/json:reader", ptr %t361, i32 0, i32 1
  store i64 %t359, ptr %t362, !tbaa !24
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = call i1 @std_2fjson_2estd_2fjson_3areader_2einObject(ptr %v0, ptr %t363)
  store i1 %t365, ptr %l140
  br label %bb75
bb74:
  br label %bb82
bb75:
  %t366 = load i1, ptr %l140, !tbaa !21
  br i1 %t366, label %bb76, label %bb77
bb76:
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = call i32 @std_2fjson_2estd_2fjson_3areader_2ename(ptr %v0, ptr %t367)
  store i32 %t369, ptr %l142
  %t370 = icmp ne i32 %t369, 0
  br i1 %t370, label %bb79, label %ok.371, !prof !99
ok.371:
  br label %bb78
bb77:
  br label %bb81
bb78:
  br label %bb80
bb79:
  %t372 = load i32, ptr %l142, !tbaa !23
  %t373 = lshr i32 %t372, 16
  %t374 = and i32 %t372, 65535
  %t375 = icmp eq i32 %t373, 1
  %t376 = select i1 %t375, i32 1, i32 0
  %t377 = icmp eq i32 %t372, 0
  %t378 = shl i32 %t376, 16
  %t379 = or i32 %t378, %t374
  %t380 = select i1 %t377, i32 0, i32 %t379
  store i32 %t380, ptr %rv
  br label %ret
bb80:
  br label %bb81
bb81:
  br label %bb95
bb82:
  %t382 = load i8, ptr %l2, !tbaa !22
  store i8 %t382, ptr %l144, !tbaa !22
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = call i1 @std_2fjson_2estd_2fjson_3areader_2einObject(ptr %v0, ptr %t383)
  store i1 %t385, ptr %l146
  br label %bb83
bb83:
  %t386 = load i1, ptr %l146, !tbaa !21
  br i1 %t386, label %bb84, label %bb85
bb84:
  store i8 125, ptr %l147, !tbaa !22
  br label %bb86
bb85:
  store i8 93, ptr %l147, !tbaa !22
  br label %bb86
bb86:
  %t387 = load i8, ptr %l144, !tbaa !22
  %t388 = load i8, ptr %l147, !tbaa !22
  %t389 = icmp eq i8 %t387, %t388
  br i1 %t389, label %bb87, label %bb88
bb87:
  %t391 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2eclose(ptr %v0, ptr %t391)
  br label %bb89
bb88:
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t395 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t393)
  store i64 %t395, ptr %l151
  br label %bb90
bb89:
  br label %bb93
bb90:
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t398 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t396)
  store i64 %t398, ptr %l153
  br label %bb91
bb91:
  store { i64, [2 x i64] } zeroinitializer, ptr %t399
  %t400 = getelementptr { i64, [2 x i64] }, ptr %t399, i32 0, i32 0
  store i64 0, ptr %t400
  %t401 = load i64, ptr %l151, !tbaa !24
  %t402 = insertvalue { i64, i64 } undef, i64 %t401, 0
  %t403 = load i64, ptr %l153, !tbaa !24
  %t404 = insertvalue { i64, i64 } %t402, i64 %t403, 1
  %t405 = getelementptr { i64, [2 x i64] }, ptr %t399, i32 0, i32 1
  store { i64, i64 } %t404, ptr %t405
  %t406 = load { i64, [2 x i64] }, ptr %t399
  store { i64, [2 x i64] } %t406, ptr %l154
  %t407 = call ptr @__olang_errpay_push()
  %t408 = ptrtoint ptr %t407 to i64
  store i64 %t408, ptr %l155, !tbaa !24
  %t409 = load i64, ptr %l155
  %t410 = inttoptr i64 %t409 to ptr
  %t412 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t410, ptr %l154)
  store { i64, [2 x i64] } %t412, ptr %l157
  br label %bb92
bb92:
  %t413 = load { i64, [2 x i64] }, ptr %l157
  %t414 = load i64, ptr %l155
  %t415 = inttoptr i64 %t414 to ptr
  %t416 = call ptr @__olang_scope_alloc_a(ptr %t415, i64 24, i64 8)
  store { i64, [2 x i64] } %t413, ptr %t416
  call void @__olang_errpay_set(ptr %t416)
  store i32 65536, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  br label %bb55
bb95:
  br label %bb96
bb96:
  br label %bb13
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @std_2fjson_2estd_2fjson_3areader_2escalar(ptr %v0, ptr %a0, i8 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l16 = alloca i1
  %l18 = alloca i1
  %l21 = alloca double
  %l23 = alloca double
  %l24 = alloca i32
  %l26 = alloca ptr
  %l30 = alloca ptr
  %l34 = alloca i32
  %l42 = alloca i32
  %l50 = alloca i32
  %l56 = alloca i64
  %l58 = alloca i64
  %l59 = alloca { i64, [2 x i64] }
  %l60 = alloca i64
  %l62 = alloca { i64, [2 x i64] }
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca i32
  %t28 = alloca { i64, [2 x i64] }, align 8
  %t101 = alloca { i64, [2 x i64] }, align 8
  %t130 = alloca { i64, [2 x i64] }, align 8
  %t158 = alloca { i64, [2 x i64] }, align 8
  %t168 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i8 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i8, ptr %l1, !tbaa !22
  %t3 = icmp eq i8 %t1, 34
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l6, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3areader_2estring(ptr %v0, ptr %v0, ptr %t6)
  %t9 = extractvalue { i32, { i64, ptr } } %t8, 1
  %t10 = extractvalue { i32, { i64, ptr } } %t8, 0
  store i32 %t10, ptr %l10
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb4, label %ok.12, !prof !99
ok.12:
  store { i64, ptr } %t9, ptr %l9
  br label %bb3
bb2:
  %t13 = load i8, ptr %l1, !tbaa !22
  %t15 = icmp eq i8 %t13, 45
  br i1 %t15, label %bb7, label %bb8
bb3:
  %t17 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t17, ptr %l7, !tbaa !27
  br label %bb5
bb4:
  %t18 = load i32, ptr %l10, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t18, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t20
  %t26 = select i1 %t23, i32 0, i32 %t25
  store i32 %t26, ptr %rv
  br label %ret
bb5:
  store { i64, [2 x i64] } zeroinitializer, ptr %t28
  %t29 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 0
  store i64 5, ptr %t29
  %t30 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t31 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t30, 0
  %t32 = getelementptr { i64, [2 x i64] }, ptr %t28, i32 0, i32 1
  store { { i64, ptr } } %t31, ptr %t32
  %t33 = load { i64, [2 x i64] }, ptr %t28
  %t35 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t33, ptr %t35
  %t36 = load ptr, ptr %l6, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t36, ptr %t35)
  br label %bb6
bb6:
  br label %bb43
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb10
bb8:
  %t38 = load i8, ptr %l1, !tbaa !22
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t38)
  store i1 %t40, ptr %l18
  br label %bb9
bb9:
  %t41 = load i1, ptr %l18, !tbaa !21
  store i1 %t41, ptr %l16, !tbaa !21
  br label %bb10
bb10:
  %t42 = load i1, ptr %l16, !tbaa !21
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"std/json:reader", ptr %t43, i32 0, i32 1
  %t46 = load i64, ptr %t45, !tbaa !24
  store i64 %t46, ptr %l2, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call { i32, double } @std_2fjson_2estd_2fjson_3areader_2enumber(ptr %v0, ptr %t48)
  %t51 = extractvalue { i32, double } %t50, 1
  %t52 = extractvalue { i32, double } %t50, 0
  store i32 %t52, ptr %l24
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb14, label %ok.54, !prof !99
ok.54:
  store double %t51, ptr %l23
  br label %bb13
bb12:
  %t55 = load i8, ptr %l1, !tbaa !22
  %t57 = icmp eq i8 %t55, 116
  br i1 %t57, label %bb18, label %bb19
bb13:
  %t59 = load double, ptr %l23, !tbaa !26
  store double %t59, ptr %l21, !tbaa !26
  br label %bb15
bb14:
  %t60 = load i32, ptr %l24, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  store i32 %t68, ptr %rv
  br label %ret
bb15:
  %t70 = load double, ptr %l21, !tbaa !26
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l26, !tbaa !29
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l2, !tbaa !24
  %t78 = call ptr @std_2fjson_2estd_2fjson_3areader_2eexact(ptr %v0, ptr %v0, ptr %t72, i64 %t73, double %t70)
  store ptr %t78, ptr %l30
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l26, !tbaa !29
  %t80 = load ptr, ptr %l30, !tbaa !29
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t79, ptr %t80)
  br label %bb17
bb17:
  br label %bb42
bb18:
  store %olang.scope zeroinitializer, ptr %s5
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = call i32 @std_2fjson_2estd_2fjson_3areader_2eword(ptr %v0, ptr %s5, ptr %t81, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t83, ptr %l34
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %bb21, label %ok.85, !prof !99
ok.85:
  br label %bb20
bb19:
  %t86 = load i8, ptr %l1, !tbaa !22
  %t88 = icmp eq i8 %t86, 102
  br i1 %t88, label %bb24, label %bb25
bb20:
  br label %bb22
bb21:
  %t90 = load i32, ptr %l34, !tbaa !23
  %t91 = lshr i32 %t90, 16
  %t92 = and i32 %t90, 65535
  %t93 = icmp eq i32 %t91, 1
  %t94 = select i1 %t93, i32 1, i32 0
  %t95 = icmp eq i32 %t90, 0
  %t96 = shl i32 %t94, 16
  %t97 = or i32 %t96, %t92
  %t98 = select i1 %t95, i32 0, i32 %t97
  call void @__olang_scope_close(ptr %s5)
  store i32 %t98, ptr %rv
  br label %ret
bb22:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [2 x i64] }, ptr %t101, i32 0, i32 0
  store i64 1, ptr %t102
  %t103 = insertvalue { i1 } undef, i1 true, 0
  %t104 = getelementptr { i64, [2 x i64] }, ptr %t101, i32 0, i32 1
  store { i1 } %t103, ptr %t104
  %t105 = load { i64, [2 x i64] }, ptr %t101
  %t107 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t105, ptr %t107
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t100, ptr %t107)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb41
bb24:
  store %olang.scope zeroinitializer, ptr %s7
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call i32 @std_2fjson_2estd_2fjson_3areader_2eword(ptr %v0, ptr %s7, ptr %t110, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i32 %t112, ptr %l42
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb27, label %ok.114, !prof !99
ok.114:
  br label %bb26
bb25:
  %t115 = load i8, ptr %l1, !tbaa !22
  %t117 = icmp eq i8 %t115, 110
  br i1 %t117, label %bb30, label %bb31
bb26:
  br label %bb28
bb27:
  %t119 = load i32, ptr %l42, !tbaa !23
  %t120 = lshr i32 %t119, 16
  %t121 = and i32 %t119, 65535
  %t122 = icmp eq i32 %t120, 1
  %t123 = select i1 %t122, i32 1, i32 0
  %t124 = icmp eq i32 %t119, 0
  %t125 = shl i32 %t123, 16
  %t126 = or i32 %t125, %t121
  %t127 = select i1 %t124, i32 0, i32 %t126
  call void @__olang_scope_close(ptr %s7)
  store i32 %t127, ptr %rv
  br label %ret
bb28:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t130
  %t131 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 0
  store i64 1, ptr %t131
  %t132 = insertvalue { i1 } undef, i1 false, 0
  %t133 = getelementptr { i64, [2 x i64] }, ptr %t130, i32 0, i32 1
  store { i1 } %t132, ptr %t133
  %t134 = load { i64, [2 x i64] }, ptr %t130
  %t136 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t134, ptr %t136
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t129, ptr %t136)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb40
bb30:
  store %olang.scope zeroinitializer, ptr %s9
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call i32 @std_2fjson_2estd_2fjson_3areader_2eword(ptr %v0, ptr %s9, ptr %t139, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t141, ptr %l50
  %t142 = icmp ne i32 %t141, 0
  br i1 %t142, label %bb33, label %ok.143, !prof !99
ok.143:
  br label %bb32
bb31:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t144)
  store i64 %t146, ptr %l56
  br label %bb36
bb32:
  br label %bb34
bb33:
  %t147 = load i32, ptr %l50, !tbaa !23
  %t148 = lshr i32 %t147, 16
  %t149 = and i32 %t147, 65535
  %t150 = icmp eq i32 %t148, 1
  %t151 = select i1 %t150, i32 1, i32 0
  %t152 = icmp eq i32 %t147, 0
  %t153 = shl i32 %t151, 16
  %t154 = or i32 %t153, %t149
  %t155 = select i1 %t152, i32 0, i32 %t154
  call void @__olang_scope_close(ptr %s9)
  store i32 %t155, ptr %rv
  br label %ret
bb34:
  %t157 = load ptr, ptr %l0, !tbaa !29
  store { i64, [2 x i64] } zeroinitializer, ptr %t158
  %t159 = getelementptr { i64, [2 x i64] }, ptr %t158, i32 0, i32 0
  store i64 0, ptr %t159
  %t160 = load { i64, [2 x i64] }, ptr %t158
  %t162 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 24, i64 8)
  store { i64, [2 x i64] } %t160, ptr %t162
  call void @std_2fjson_2estd_2fjson_3areader_2epush(ptr %v0, ptr %v0, ptr %t157, ptr %t162)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s9)
  br label %bb39
bb36:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t165)
  store i64 %t167, ptr %l58
  br label %bb37
bb37:
  store { i64, [2 x i64] } zeroinitializer, ptr %t168
  %t169 = getelementptr { i64, [2 x i64] }, ptr %t168, i32 0, i32 0
  store i64 0, ptr %t169
  %t170 = load i64, ptr %l56, !tbaa !24
  %t171 = insertvalue { i64, i64 } undef, i64 %t170, 0
  %t172 = load i64, ptr %l58, !tbaa !24
  %t173 = insertvalue { i64, i64 } %t171, i64 %t172, 1
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t168, i32 0, i32 1
  store { i64, i64 } %t173, ptr %t174
  %t175 = load { i64, [2 x i64] }, ptr %t168
  store { i64, [2 x i64] } %t175, ptr %l59
  %t176 = call ptr @__olang_errpay_push()
  %t177 = ptrtoint ptr %t176 to i64
  store i64 %t177, ptr %l60, !tbaa !24
  %t178 = load i64, ptr %l60
  %t179 = inttoptr i64 %t178 to ptr
  %t181 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t179, ptr %l59)
  store { i64, [2 x i64] } %t181, ptr %l62
  br label %bb38
bb38:
  %t182 = load { i64, [2 x i64] }, ptr %l62
  %t183 = load i64, ptr %l60
  %t184 = inttoptr i64 %t183 to ptr
  %t185 = call ptr @__olang_scope_alloc_a(ptr %t184, i64 24, i64 8)
  store { i64, [2 x i64] } %t182, ptr %t185
  call void @__olang_errpay_set(ptr %t185)
  store i32 65536, ptr %rv
  br label %ret
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fjson_2estd_2fjson_3areader_2eskipSpace(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l6 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/json:reader", ptr %t2, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"std/json:reader", ptr %t6, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call i64 @std_2fjson_2espaceEnd(ptr %v0, { i64, ptr } %t5, i64 %t9)
  store i64 %t12, ptr %l6
  br label %bb1
bb1:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"std/json:reader", ptr %t14, i32 0, i32 1
  store i64 %t13, ptr %t15, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3areader_2estring(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i64
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i8
  %l12 = alloca ptr
  %l16 = alloca i64
  %l23 = alloca i1
  %l25 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l57 = alloca i64
  %l59 = alloca i64
  %l60 = alloca { i64, [2 x i64] }
  %l61 = alloca i64
  %l63 = alloca { i64, [2 x i64] }
  %l67 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca i64
  %l77 = alloca ptr
  %l78 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i32
  %l88 = alloca i64
  %l90 = alloca i64
  %l91 = alloca { i64, [2 x i64] }
  %l92 = alloca i64
  %l94 = alloca { i64, [2 x i64] }
  %l101 = alloca ptr
  %l104 = alloca i64
  %l106 = alloca i64
  %l107 = alloca i32
  %l112 = alloca ptr
  %l118 = alloca i64
  %l129 = alloca { i64, ptr }
  %l135 = alloca i64
  %l136 = alloca i64
  %l140 = alloca i64
  %l141 = alloca i32
  %l148 = alloca ptr
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t136 = alloca { i64, [2 x i64] }, align 8
  %t225 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = add i64 %t4, 1
  store i64 %t6, ptr %l1, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l12, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"std/json:reader", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call i64 @std_2fjson_2eplainEnd(ptr %v0, { i64, ptr } %t12, i64 %t13)
  store i64 %t16, ptr %l16
  br label %bb1
bb1:
  %t17 = load i64, ptr %l16, !tbaa !24
  %t18 = load ptr, ptr %l12, !tbaa !29
  %t19 = getelementptr %"std/json:reader", ptr %t18, i32 0, i32 1
  store i64 %t17, ptr %t19, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/json:reader", ptr %t20, i32 0, i32 1
  %t23 = load i64, ptr %t22, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"std/json:reader", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t32 = icmp slt i64 %t23, %t29
  br i1 %t32, label %bb2, label %bb3
bb2:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"std/json:reader", ptr %t34, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l25, !tbaa !27
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"std/json:reader", ptr %t38, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i8, ptr %t44, i64 %t41
  %t46 = load i8, ptr %t45, !tbaa !32
  %t48 = icmp eq i8 %t46, 34
  store i1 %t48, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t50 = load i1, ptr %l23, !tbaa !21
  br i1 %t50, label %bb5, label %bb6
bb5:
  %t51 = load ptr, ptr %l0, !tbaa !29
  store ptr %t51, ptr %l30, !tbaa !29
  %t52 = load ptr, ptr %l30, !tbaa !29
  %t53 = getelementptr %"std/json:reader", ptr %t52, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = add i64 %t54, 1
  %t58 = load ptr, ptr %l30, !tbaa !29
  %t59 = getelementptr %"std/json:reader", ptr %t58, i32 0, i32 1
  store i64 %t56, ptr %t59, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"std/json:reader", ptr %t60, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  store { i64, ptr } %t63, ptr %l34, !tbaa !27
  %t64 = load i64, ptr %l1, !tbaa !24
  store i64 %t64, ptr %l35, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"std/json:reader", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = sub i64 %t68, 1
  store i64 %t70, ptr %l38, !tbaa !24
  %t71 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t71, 0
  store i64 %t72, ptr %l39, !tbaa !24
  %t73 = load i64, ptr %l35, !tbaa !24
  %t74 = icmp sge i64 %t73, 0
  br i1 %t74, label %bb7, label %bb8
bb6:
  br label %bb13
bb7:
  %t76 = load i64, ptr %l35, !tbaa !24
  %t77 = load i64, ptr %l38, !tbaa !24
  %t78 = icmp sle i64 %t76, %t77
  br i1 %t78, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3a08abdf75e4d0df_f65d8e83429a56b3)
  unreachable
bb9:
  %t80 = load i64, ptr %l38, !tbaa !24
  %t81 = load i64, ptr %l39, !tbaa !24
  %t82 = icmp sle i64 %t80, %t81
  br i1 %t82, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3a08abdf75e4d0df_f65d8e83429a56b3)
  unreachable
bb11:
  %t84 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = load i64, ptr %l35, !tbaa !24
  %t87 = load i64, ptr %l38, !tbaa !24
  %t88 = getelementptr i8, ptr %t85, i64 %t86
  %t89 = sub i64 %t87, %t86
  %t90 = insertvalue { i64, ptr } undef, i64 %t89, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t88, 1
  %t93 = extractvalue { i64, ptr } %t91, 1
  %t94 = extractvalue { i64, ptr } %t91, 0
  %t95 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t93, i64 %t94)
  %t96 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t97 = insertvalue { i64, ptr } %t96, ptr %t95, 1
  %t99 = extractvalue { i64, ptr } %t97, 0
  %t100 = extractvalue { i64, ptr } %t97, 1
  %t101 = mul i64 %t99, 1
  %t102 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t101)
  call void @llvm.memcpy.p0.p0.i64(ptr %t102, ptr %t100, i64 %t101, i1 false)
  %t103 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  %t106 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t104, 1
  store { i32, { i64, ptr } } %t106, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_3a08abdf75e4d0df_f65d8e83429a56b3)
  unreachable
bb13:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"std/json:reader", ptr %t107, i32 0, i32 1
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = load i64, ptr %l1, !tbaa !24
  %t114 = sub i64 %t110, %t111
  store i64 %t114, ptr %l2, !tbaa !24
  br label %bb14
bb14:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"std/json:reader", ptr %t116, i32 0, i32 1
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"std/json:reader", ptr %t120, i32 0, i32 0
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t123, 0
  %t128 = icmp eq i64 %t119, %t125
  br i1 %t128, label %bb15, label %bb16
bb15:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t130)
  store i64 %t132, ptr %l57
  br label %bb17
bb16:
  br label %bb20
bb17:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t133)
  store i64 %t135, ptr %l59
  br label %bb18
bb18:
  store { i64, [2 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [2 x i64] }, ptr %t136, i32 0, i32 0
  store i64 1, ptr %t137
  %t138 = load i64, ptr %l57, !tbaa !24
  %t139 = insertvalue { i64, i64 } undef, i64 %t138, 0
  %t140 = load i64, ptr %l59, !tbaa !24
  %t141 = insertvalue { i64, i64 } %t139, i64 %t140, 1
  %t142 = getelementptr { i64, [2 x i64] }, ptr %t136, i32 0, i32 1
  store { i64, i64 } %t141, ptr %t142
  %t143 = load { i64, [2 x i64] }, ptr %t136
  store { i64, [2 x i64] } %t143, ptr %l60
  %t144 = call ptr @__olang_errpay_push()
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l61, !tbaa !24
  %t146 = load i64, ptr %l61
  %t147 = inttoptr i64 %t146 to ptr
  %t149 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t147, ptr %l60)
  store { i64, [2 x i64] } %t149, ptr %l63
  br label %bb19
bb19:
  %t150 = load { i64, [2 x i64] }, ptr %l63
  %t151 = load i64, ptr %l61
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call ptr @__olang_scope_alloc_a(ptr %t152, i64 24, i64 8)
  store { i64, [2 x i64] } %t150, ptr %t153
  call void @__olang_errpay_set(ptr %t153)
  %t156 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65537, 0
  store { i32, { i64, ptr } } %t156, ptr %rv
  br label %ret
bb20:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"std/json:reader", ptr %t157, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !27
  store { i64, ptr } %t160, ptr %l67, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"std/json:reader", ptr %t161, i32 0, i32 1
  %t164 = load i64, ptr %t163, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr i8, ptr %t167, i64 %t164
  %t169 = load i8, ptr %t168, !tbaa !32
  store i8 %t169, ptr %l3, !tbaa !22
  %t171 = load i8, ptr %l3, !tbaa !22
  %t173 = icmp eq i8 %t171, 34
  br i1 %t173, label %bb21, label %bb22
bb21:
  br label %bb45
bb22:
  br label %bb23
bb23:
  %t175 = load i8, ptr %l3, !tbaa !22
  %t177 = icmp eq i8 %t175, 92
  br i1 %t177, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s6
  %t179 = load i64, ptr %l2, !tbaa !24
  store i64 %t179, ptr %l75, !tbaa !24
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l77, !tbaa !29
  %t181 = load i64, ptr %l1, !tbaa !24
  store i64 %t181, ptr %l78, !tbaa !24
  %t182 = icmp sge i64 0, 0
  br i1 %t182, label %bb26, label %bb27
bb25:
  %t184 = load i8, ptr %l3, !tbaa !22
  %t186 = icmp ult i8 %t184, 32
  br i1 %t186, label %bb31, label %bb32
bb26:
  %t188 = mul i64 0, 1
  %t189 = insertvalue { i64, ptr } undef, i64 0, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t191 = load ptr, ptr %l77, !tbaa !29
  %t192 = load i64, ptr %l78, !tbaa !24
  %t194 = call { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2eescape(ptr %v0, ptr %s6, ptr %t191, i64 %t192, { i64, ptr } %t190)
  %t195 = extractvalue { i32, i64 } %t194, 1
  %t196 = extractvalue { i32, i64 } %t194, 0
  store i32 %t196, ptr %l82
  %t197 = icmp ne i32 %t196, 0
  br i1 %t197, label %bb29, label %ok.198, !prof !99
ok.198:
  store i64 %t195, ptr %l81
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_c68c402cf703814a_d8009281770a12f6)
  unreachable
bb28:
  %t199 = load i64, ptr %l81, !tbaa !24
  store i64 %t199, ptr %l76, !tbaa !24
  br label %bb30
bb29:
  %t200 = load i32, ptr %l82, !tbaa !23
  %t201 = lshr i32 %t200, 16
  %t202 = and i32 %t200, 65535
  %t203 = icmp eq i32 %t201, 1
  %t204 = select i1 %t203, i32 1, i32 0
  %t205 = icmp eq i32 %t200, 0
  %t206 = shl i32 %t204, 16
  %t207 = or i32 %t206, %t202
  %t208 = select i1 %t205, i32 0, i32 %t207
  call void @__olang_scope_close(ptr %s6)
  %t210 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t208, 0
  store { i32, { i64, ptr } } %t210, ptr %rv
  br label %ret
bb30:
  %t211 = load i64, ptr %l75, !tbaa !24
  %t212 = load i64, ptr %l76, !tbaa !24
  %t213 = add i64 %t211, %t212
  store i64 %t213, ptr %l2, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb43
bb31:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t215)
  store i64 %t217, ptr %l88
  br label %bb33
bb32:
  %t218 = load i8, ptr %l3, !tbaa !22
  %t220 = icmp ult i8 %t218, -128
  br i1 %t220, label %bb36, label %bb37
bb33:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t222)
  store i64 %t224, ptr %l90
  br label %bb34
bb34:
  store { i64, [2 x i64] } zeroinitializer, ptr %t225
  %t226 = getelementptr { i64, [2 x i64] }, ptr %t225, i32 0, i32 0
  store i64 0, ptr %t226
  %t227 = load i64, ptr %l88, !tbaa !24
  %t228 = insertvalue { i64, i64 } undef, i64 %t227, 0
  %t229 = load i64, ptr %l90, !tbaa !24
  %t230 = insertvalue { i64, i64 } %t228, i64 %t229, 1
  %t231 = getelementptr { i64, [2 x i64] }, ptr %t225, i32 0, i32 1
  store { i64, i64 } %t230, ptr %t231
  %t232 = load { i64, [2 x i64] }, ptr %t225
  store { i64, [2 x i64] } %t232, ptr %l91
  %t233 = call ptr @__olang_errpay_push()
  %t234 = ptrtoint ptr %t233 to i64
  store i64 %t234, ptr %l92, !tbaa !24
  %t235 = load i64, ptr %l92
  %t236 = inttoptr i64 %t235 to ptr
  %t238 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t236, ptr %l91)
  store { i64, [2 x i64] } %t238, ptr %l94
  br label %bb35
bb35:
  %t239 = load { i64, [2 x i64] }, ptr %l94
  %t240 = load i64, ptr %l92
  %t241 = inttoptr i64 %t240 to ptr
  %t242 = call ptr @__olang_scope_alloc_a(ptr %t241, i64 24, i64 8)
  store { i64, [2 x i64] } %t239, ptr %t242
  call void @__olang_errpay_set(ptr %t242)
  %t245 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t245, ptr %rv
  br label %ret
bb36:
  %t246 = load i64, ptr %l2, !tbaa !24
  %t248 = add i64 %t246, 1
  store i64 %t248, ptr %l2, !tbaa !24
  %t250 = load ptr, ptr %l0, !tbaa !29
  store ptr %t250, ptr %l101, !tbaa !29
  %t251 = load ptr, ptr %l101, !tbaa !29
  %t252 = getelementptr %"std/json:reader", ptr %t251, i32 0, i32 1
  %t253 = load i64, ptr %t252, !tbaa !24
  %t255 = add i64 %t253, 1
  %t257 = load ptr, ptr %l101, !tbaa !29
  %t258 = getelementptr %"std/json:reader", ptr %t257, i32 0, i32 1
  store i64 %t255, ptr %t258, !tbaa !24
  br label %bb41
bb37:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = call { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2eutf8(ptr %v0, ptr %t259)
  %t262 = extractvalue { i32, i64 } %t261, 1
  %t263 = extractvalue { i32, i64 } %t261, 0
  store i32 %t263, ptr %l107
  %t264 = icmp ne i32 %t263, 0
  br i1 %t264, label %bb39, label %ok.265, !prof !99
ok.265:
  store i64 %t262, ptr %l106
  br label %bb38
bb38:
  %t266 = load i64, ptr %l106, !tbaa !24
  store i64 %t266, ptr %l104, !tbaa !24
  br label %bb40
bb39:
  %t267 = load i32, ptr %l107, !tbaa !23
  %t268 = lshr i32 %t267, 16
  %t269 = and i32 %t267, 65535
  %t270 = icmp eq i32 %t268, 1
  %t271 = select i1 %t270, i32 1, i32 0
  %t272 = icmp eq i32 %t267, 0
  %t273 = shl i32 %t271, 16
  %t274 = or i32 %t273, %t269
  %t275 = select i1 %t272, i32 0, i32 %t274
  %t277 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t275, 0
  store { i32, { i64, ptr } } %t277, ptr %rv
  br label %ret
bb40:
  %t278 = load i64, ptr %l104, !tbaa !24
  store i64 %t278, ptr %l4, !tbaa !24
  %t279 = load i64, ptr %l2, !tbaa !24
  %t280 = load i64, ptr %l4, !tbaa !24
  %t283 = add i64 %t279, %t280
  store i64 %t283, ptr %l2, !tbaa !24
  %t285 = load ptr, ptr %l0, !tbaa !29
  store ptr %t285, ptr %l112, !tbaa !29
  %t286 = load ptr, ptr %l112, !tbaa !29
  %t287 = getelementptr %"std/json:reader", ptr %t286, i32 0, i32 1
  %t288 = load i64, ptr %t287, !tbaa !24
  %t289 = load i64, ptr %l4, !tbaa !24
  %t292 = add i64 %t288, %t289
  %t294 = load ptr, ptr %l112, !tbaa !29
  %t295 = getelementptr %"std/json:reader", ptr %t294, i32 0, i32 1
  store i64 %t292, ptr %t295, !tbaa !24
  br label %bb41
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb14
bb45:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"std/json:reader", ptr %t296, i32 0, i32 1
  %t299 = load i64, ptr %t298, !tbaa !24
  store i64 %t299, ptr %l5, !tbaa !24
  %t301 = load i64, ptr %l2, !tbaa !24
  store i64 %t301, ptr %l118, !tbaa !24
  %t302 = load i64, ptr %l118, !tbaa !24
  %t303 = icmp sge i64 %t302, 0
  br i1 %t303, label %bb46, label %bb47
bb46:
  %t305 = load i64, ptr %l118, !tbaa !24
  %t306 = mul i64 %t305, 1
  %t307 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t306)
  %t308 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t309 = insertvalue { i64, ptr } %t308, ptr %t307, 1
  %t310 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t310, ptr %lp6
  %t312 = load ptr, ptr %lp6
  store { i64, ptr } %t309, ptr %t312, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load i64, ptr %l1, !tbaa !24
  %t317 = getelementptr %"std/json:reader", ptr %t313, i32 0, i32 1
  store i64 %t314, ptr %t317, !tbaa !24
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_f95a6a8592b17009_1182728235effc15)
  unreachable
bb48:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t320 = getelementptr %"std/json:reader", ptr %t318, i32 0, i32 1
  %t321 = load i64, ptr %t320, !tbaa !24
  %t322 = load i64, ptr %l5, !tbaa !24
  %t325 = icmp slt i64 %t321, %t322
  %t327 = xor i1 %t325, true
  br i1 %t327, label %bb49, label %bb50
bb49:
  br label %bb59
bb50:
  br label %bb51
bb51:
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t331 = getelementptr %"std/json:reader", ptr %t329, i32 0, i32 0
  %t332 = load { i64, ptr }, ptr %t331, !tbaa !27
  store { i64, ptr } %t332, ptr %l129, !tbaa !27
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"std/json:reader", ptr %t333, i32 0, i32 1
  %t336 = load i64, ptr %t335, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr i8, ptr %t339, i64 %t336
  %t341 = load i8, ptr %t340, !tbaa !32
  store i8 %t341, ptr %l8, !tbaa !22
  %t343 = load i8, ptr %l8, !tbaa !22
  %t345 = icmp eq i8 %t343, 92
  br i1 %t345, label %bb52, label %bb53
bb52:
  %t347 = load i64, ptr %l7, !tbaa !24
  store i64 %t347, ptr %l135, !tbaa !24
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i64, ptr %l7, !tbaa !24
  %t350 = load ptr, ptr %lp6
  %t351 = load { i64, ptr }, ptr %t350, !tbaa !27
  %t355 = call { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2eescape(ptr %v0, ptr %v1, ptr %t348, i64 %t349, { i64, ptr } %t351)
  %t356 = extractvalue { i32, i64 } %t355, 1
  %t357 = extractvalue { i32, i64 } %t355, 0
  store i32 %t357, ptr %l141
  %t358 = icmp ne i32 %t357, 0
  br i1 %t358, label %bb55, label %ok.359, !prof !99
ok.359:
  store i64 %t356, ptr %l140
  br label %bb54
bb53:
  %t360 = load i64, ptr %l7, !tbaa !24
  %t361 = load i8, ptr %l8, !tbaa !22
  %t363 = load ptr, ptr %lp6
  %t365 = getelementptr { i64, ptr }, ptr %t363, i32 0, i32 1
  %t366 = load ptr, ptr %t365, !tbaa !27
  %t367 = getelementptr i8, ptr %t366, i64 %t360
  store i8 %t361, ptr %t367, !tbaa !32
  %t368 = load i64, ptr %l7, !tbaa !24
  %t370 = add i64 %t368, 1
  store i64 %t370, ptr %l7, !tbaa !24
  %t372 = load ptr, ptr %l0, !tbaa !29
  store ptr %t372, ptr %l148, !tbaa !29
  %t373 = load ptr, ptr %l148, !tbaa !29
  %t374 = getelementptr %"std/json:reader", ptr %t373, i32 0, i32 1
  %t375 = load i64, ptr %t374, !tbaa !24
  %t377 = add i64 %t375, 1
  %t379 = load ptr, ptr %l148, !tbaa !29
  %t380 = getelementptr %"std/json:reader", ptr %t379, i32 0, i32 1
  store i64 %t377, ptr %t380, !tbaa !24
  br label %bb57
bb54:
  %t381 = load i64, ptr %l140, !tbaa !24
  store i64 %t381, ptr %l136, !tbaa !24
  br label %bb56
bb55:
  %t382 = load i32, ptr %l141, !tbaa !23
  %t383 = lshr i32 %t382, 16
  %t384 = and i32 %t382, 65535
  %t385 = icmp eq i32 %t383, 1
  %t386 = select i1 %t385, i32 1, i32 0
  %t387 = icmp eq i32 %t382, 0
  %t388 = shl i32 %t386, 16
  %t389 = or i32 %t388, %t384
  %t390 = select i1 %t387, i32 0, i32 %t389
  %t392 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t390, 0
  store { i32, { i64, ptr } } %t392, ptr %rv
  br label %ret
bb56:
  %t393 = load i64, ptr %l135, !tbaa !24
  %t394 = load i64, ptr %l136, !tbaa !24
  %t395 = add i64 %t393, %t394
  store i64 %t395, ptr %l7, !tbaa !24
  br label %bb57
bb57:
  br label %bb58
bb58:
  br label %bb48
bb59:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i64, ptr %l5, !tbaa !24
  %t400 = add i64 %t398, 1
  %t403 = getelementptr %"std/json:reader", ptr %t397, i32 0, i32 1
  store i64 %t400, ptr %t403, !tbaa !24
  %t404 = load ptr, ptr %lp6
  %t405 = load { i64, ptr }, ptr %t404, !tbaa !27
  %t409 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t405, 1
  store { i32, { i64, ptr } } %t409, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, i64 } @std_2fjson_2estd_2fjson_3areader_2eutf8(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i8
  %l2 = alloca i64
  %l3 = alloca i8
  %l4 = alloca i8
  %l5 = alloca i8
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i1
  %l24 = alloca i1
  %l33 = alloca i1
  %l41 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, [2 x i64] }
  %l45 = alloca i64
  %l47 = alloca { i64, [2 x i64] }
  %l59 = alloca i64
  %l61 = alloca i64
  %l62 = alloca { i64, [2 x i64] }
  %l63 = alloca i64
  %l65 = alloca { i64, [2 x i64] }
  %l69 = alloca { i64, ptr }
  %l77 = alloca i1
  %l82 = alloca i64
  %l84 = alloca i64
  %l85 = alloca { i64, [2 x i64] }
  %l86 = alloca i64
  %l88 = alloca { i64, [2 x i64] }
  %l95 = alloca i64
  %l98 = alloca i64
  %l117 = alloca { i64, ptr }
  %l126 = alloca i64
  %l128 = alloca i64
  %l129 = alloca { i64, [2 x i64] }
  %l130 = alloca i64
  %l132 = alloca { i64, [2 x i64] }
  %rv = alloca { i32, i64 }
  %t64 = alloca { i64, [2 x i64] }, align 8
  %t109 = alloca { i64, [2 x i64] }, align 8
  %t165 = alloca { i64, [2 x i64] }, align 8
  %t262 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:reader", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l13, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/json:reader", ptr %t5, i32 0, i32 1
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr i8, ptr %t11, i64 %t8
  %t13 = load i8, ptr %t12, !tbaa !32
  store i8 %t13, ptr %l1, !tbaa !22
  store i64 0, ptr %l2, !tbaa !24
  store i8 -128, ptr %l3, !tbaa !22
  store i8 -65, ptr %l4, !tbaa !22
  %t15 = load i8, ptr %l1, !tbaa !22
  %t17 = icmp uge i8 %t15, -62
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load i8, ptr %l1, !tbaa !22
  %t21 = icmp ule i8 %t19, -33
  store i1 %t21, ptr %l19, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t23 = load i1, ptr %l19, !tbaa !21
  br i1 %t23, label %bb4, label %bb5
bb4:
  store i64 2, ptr %l2, !tbaa !24
  br label %bb33
bb5:
  %t24 = load i8, ptr %l1, !tbaa !22
  %t26 = icmp uge i8 %t24, -32
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load i8, ptr %l1, !tbaa !22
  %t30 = icmp ule i8 %t28, -17
  store i1 %t30, ptr %l24, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l24, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  store i64 3, ptr %l2, !tbaa !24
  %t33 = load i8, ptr %l1, !tbaa !22
  %t35 = icmp eq i8 %t33, -32
  br i1 %t35, label %bb11, label %bb12
bb10:
  %t37 = load i8, ptr %l1, !tbaa !22
  %t39 = icmp uge i8 %t37, -16
  br i1 %t39, label %bb17, label %bb18
bb11:
  store i8 -96, ptr %l3, !tbaa !22
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t41 = load i8, ptr %l1, !tbaa !22
  %t43 = icmp eq i8 %t41, -19
  br i1 %t43, label %bb14, label %bb15
bb14:
  store i8 -97, ptr %l4, !tbaa !22
  br label %bb16
bb15:
  br label %bb16
bb16:
  br label %bb32
bb17:
  %t45 = load i8, ptr %l1, !tbaa !22
  %t47 = icmp ule i8 %t45, -12
  store i1 %t47, ptr %l33, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb19
bb19:
  %t49 = load i1, ptr %l33, !tbaa !21
  br i1 %t49, label %bb20, label %bb21
bb20:
  store i64 4, ptr %l2, !tbaa !24
  %t50 = load i8, ptr %l1, !tbaa !22
  %t52 = icmp eq i8 %t50, -16
  br i1 %t52, label %bb22, label %bb23
bb21:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t54)
  store i64 %t56, ptr %l41
  br label %bb28
bb22:
  store i8 -112, ptr %l3, !tbaa !22
  br label %bb24
bb23:
  br label %bb24
bb24:
  %t57 = load i8, ptr %l1, !tbaa !22
  %t59 = icmp eq i8 %t57, -12
  br i1 %t59, label %bb25, label %bb26
bb25:
  store i8 -113, ptr %l4, !tbaa !22
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb31
bb28:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l43
  br label %bb29
bb29:
  store { i64, [2 x i64] } zeroinitializer, ptr %t64
  %t65 = getelementptr { i64, [2 x i64] }, ptr %t64, i32 0, i32 0
  store i64 4, ptr %t65
  %t66 = load i64, ptr %l41, !tbaa !24
  %t67 = insertvalue { i64, i64 } undef, i64 %t66, 0
  %t68 = load i64, ptr %l43, !tbaa !24
  %t69 = insertvalue { i64, i64 } %t67, i64 %t68, 1
  %t70 = getelementptr { i64, [2 x i64] }, ptr %t64, i32 0, i32 1
  store { i64, i64 } %t69, ptr %t70
  %t71 = load { i64, [2 x i64] }, ptr %t64
  store { i64, [2 x i64] } %t71, ptr %l44
  %t72 = call ptr @__olang_errpay_push()
  %t73 = ptrtoint ptr %t72 to i64
  store i64 %t73, ptr %l45, !tbaa !24
  %t74 = load i64, ptr %l45
  %t75 = inttoptr i64 %t74 to ptr
  %t77 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t75, ptr %l44)
  store { i64, [2 x i64] } %t77, ptr %l47
  br label %bb30
bb30:
  %t78 = load { i64, [2 x i64] }, ptr %l47
  %t79 = load i64, ptr %l45
  %t80 = inttoptr i64 %t79 to ptr
  %t81 = call ptr @__olang_scope_alloc_a(ptr %t80, i64 24, i64 8)
  store { i64, [2 x i64] } %t78, ptr %t81
  call void @__olang_errpay_set(ptr %t81)
  %t84 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t84, ptr %rv
  br label %ret
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"std/json:reader", ptr %t85, i32 0, i32 1
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load i64, ptr %l2, !tbaa !24
  %t92 = add i64 %t88, %t89
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"std/json:reader", ptr %t93, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95, !tbaa !27
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t101 = icmp sgt i64 %t92, %t98
  br i1 %t101, label %bb34, label %bb35
bb34:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t103)
  store i64 %t105, ptr %l59
  br label %bb36
bb35:
  br label %bb39
bb36:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t106)
  store i64 %t108, ptr %l61
  br label %bb37
bb37:
  store { i64, [2 x i64] } zeroinitializer, ptr %t109
  %t110 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 0
  store i64 4, ptr %t110
  %t111 = load i64, ptr %l59, !tbaa !24
  %t112 = insertvalue { i64, i64 } undef, i64 %t111, 0
  %t113 = load i64, ptr %l61, !tbaa !24
  %t114 = insertvalue { i64, i64 } %t112, i64 %t113, 1
  %t115 = getelementptr { i64, [2 x i64] }, ptr %t109, i32 0, i32 1
  store { i64, i64 } %t114, ptr %t115
  %t116 = load { i64, [2 x i64] }, ptr %t109
  store { i64, [2 x i64] } %t116, ptr %l62
  %t117 = call ptr @__olang_errpay_push()
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l63, !tbaa !24
  %t119 = load i64, ptr %l63
  %t120 = inttoptr i64 %t119 to ptr
  %t122 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t120, ptr %l62)
  store { i64, [2 x i64] } %t122, ptr %l65
  br label %bb38
bb38:
  %t123 = load { i64, [2 x i64] }, ptr %l65
  %t124 = load i64, ptr %l63
  %t125 = inttoptr i64 %t124 to ptr
  %t126 = call ptr @__olang_scope_alloc_a(ptr %t125, i64 24, i64 8)
  store { i64, [2 x i64] } %t123, ptr %t126
  call void @__olang_errpay_set(ptr %t126)
  %t129 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t129, ptr %rv
  br label %ret
bb39:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"std/json:reader", ptr %t130, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l69, !tbaa !27
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"std/json:reader", ptr %t134, i32 0, i32 1
  %t137 = load i64, ptr %t136, !tbaa !24
  %t139 = add i64 %t137, 1
  %t141 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i8, ptr %t142, i64 %t139
  %t144 = load i8, ptr %t143, !tbaa !32
  store i8 %t144, ptr %l5, !tbaa !22
  %t146 = load i8, ptr %l5, !tbaa !22
  %t147 = load i8, ptr %l3, !tbaa !22
  %t150 = icmp ult i8 %t146, %t147
  br i1 %t150, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l77, !tbaa !21
  br label %bb42
bb41:
  %t152 = load i8, ptr %l5, !tbaa !22
  %t153 = load i8, ptr %l4, !tbaa !22
  %t156 = icmp ugt i8 %t152, %t153
  store i1 %t156, ptr %l77, !tbaa !21
  br label %bb42
bb42:
  %t158 = load i1, ptr %l77, !tbaa !21
  br i1 %t158, label %bb43, label %bb44
bb43:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l82
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t162)
  store i64 %t164, ptr %l84
  br label %bb46
bb46:
  store { i64, [2 x i64] } zeroinitializer, ptr %t165
  %t166 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 0
  store i64 4, ptr %t166
  %t167 = load i64, ptr %l82, !tbaa !24
  %t168 = insertvalue { i64, i64 } undef, i64 %t167, 0
  %t169 = load i64, ptr %l84, !tbaa !24
  %t170 = insertvalue { i64, i64 } %t168, i64 %t169, 1
  %t171 = getelementptr { i64, [2 x i64] }, ptr %t165, i32 0, i32 1
  store { i64, i64 } %t170, ptr %t171
  %t172 = load { i64, [2 x i64] }, ptr %t165
  store { i64, [2 x i64] } %t172, ptr %l85
  %t173 = call ptr @__olang_errpay_push()
  %t174 = ptrtoint ptr %t173 to i64
  store i64 %t174, ptr %l86, !tbaa !24
  %t175 = load i64, ptr %l86
  %t176 = inttoptr i64 %t175 to ptr
  %t178 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t176, ptr %l85)
  store { i64, [2 x i64] } %t178, ptr %l88
  br label %bb47
bb47:
  %t179 = load { i64, [2 x i64] }, ptr %l88
  %t180 = load i64, ptr %l86
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = call ptr @__olang_scope_alloc_a(ptr %t181, i64 24, i64 8)
  store { i64, [2 x i64] } %t179, ptr %t182
  call void @__olang_errpay_set(ptr %t182)
  %t185 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t185, ptr %rv
  br label %ret
bb48:
  store i64 2, ptr %l6, !tbaa !24
  %t186 = load i64, ptr %l2, !tbaa !24
  store i64 %t186, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t188 = load i64, ptr %l7, !tbaa !24
  %t189 = load i64, ptr %l6, !tbaa !24
  %t192 = icmp sgt i64 %t188, %t189
  br i1 %t192, label %bb49, label %bb50
bb49:
  %t194 = load i64, ptr %l8, !tbaa !24
  %t196 = icmp sgt i64 %t194, 0
  br i1 %t196, label %bb51, label %bb52
bb50:
  store i64 0, ptr %l95, !tbaa !24
  br label %bb54
bb51:
  %t198 = load i64, ptr %l7, !tbaa !24
  %t199 = load i64, ptr %l6, !tbaa !24
  %t202 = sub i64 %t198, %t199
  %t203 = load i64, ptr %l8, !tbaa !24
  %t206 = add i64 %t202, %t203
  %t208 = sub i64 %t206, 1
  %t209 = load i64, ptr %l8, !tbaa !24
  %t212 = sdiv i64 %t208, %t209
  store i64 %t212, ptr %l98, !tbaa !24
  br label %bb53
bb52:
  store i64 0, ptr %l98, !tbaa !24
  br label %bb53
bb53:
  %t214 = load i64, ptr %l98, !tbaa !24
  store i64 %t214, ptr %l95, !tbaa !24
  br label %bb54
bb54:
  %t215 = load i64, ptr %l95, !tbaa !24
  store i64 %t215, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb55
bb55:
  %t216 = load i64, ptr %l10, !tbaa !24
  %t217 = load i64, ptr %l9, !tbaa !24
  %t220 = icmp slt i64 %t216, %t217
  %t222 = xor i1 %t220, true
  br i1 %t222, label %bb56, label %bb57
bb56:
  br label %bb66
bb57:
  br label %bb58
bb58:
  %t224 = load i64, ptr %l6, !tbaa !24
  %t225 = load i64, ptr %l10, !tbaa !24
  %t226 = load i64, ptr %l8, !tbaa !24
  %t229 = mul i64 %t225, %t226
  %t232 = add i64 %t224, %t229
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = getelementptr %"std/json:reader", ptr %t234, i32 0, i32 0
  %t237 = load { i64, ptr }, ptr %t236, !tbaa !27
  store { i64, ptr } %t237, ptr %l117, !tbaa !27
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t240 = getelementptr %"std/json:reader", ptr %t238, i32 0, i32 1
  %t241 = load i64, ptr %t240, !tbaa !24
  %t245 = add i64 %t241, %t232
  %t247 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = getelementptr i8, ptr %t248, i64 %t245
  %t250 = load i8, ptr %t249, !tbaa !32
  %t252 = and i8 %t250, -64
  %t254 = icmp ne i8 %t252, -128
  br i1 %t254, label %bb59, label %bb60
bb59:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t256)
  store i64 %t258, ptr %l126
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t259)
  store i64 %t261, ptr %l128
  br label %bb62
bb62:
  store { i64, [2 x i64] } zeroinitializer, ptr %t262
  %t263 = getelementptr { i64, [2 x i64] }, ptr %t262, i32 0, i32 0
  store i64 4, ptr %t263
  %t264 = load i64, ptr %l126, !tbaa !24
  %t265 = insertvalue { i64, i64 } undef, i64 %t264, 0
  %t266 = load i64, ptr %l128, !tbaa !24
  %t267 = insertvalue { i64, i64 } %t265, i64 %t266, 1
  %t268 = getelementptr { i64, [2 x i64] }, ptr %t262, i32 0, i32 1
  store { i64, i64 } %t267, ptr %t268
  %t269 = load { i64, [2 x i64] }, ptr %t262
  store { i64, [2 x i64] } %t269, ptr %l129
  %t270 = call ptr @__olang_errpay_push()
  %t271 = ptrtoint ptr %t270 to i64
  store i64 %t271, ptr %l130, !tbaa !24
  %t272 = load i64, ptr %l130
  %t273 = inttoptr i64 %t272 to ptr
  %t275 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t273, ptr %l129)
  store { i64, [2 x i64] } %t275, ptr %l132
  br label %bb63
bb63:
  %t276 = load { i64, [2 x i64] }, ptr %l132
  %t277 = load i64, ptr %l130
  %t278 = inttoptr i64 %t277 to ptr
  %t279 = call ptr @__olang_scope_alloc_a(ptr %t278, i64 24, i64 8)
  store { i64, [2 x i64] } %t276, ptr %t279
  call void @__olang_errpay_set(ptr %t279)
  %t282 = insertvalue { i32, i64 } zeroinitializer, i32 65540, 0
  store { i32, i64 } %t282, ptr %rv
  br label %ret
bb64:
  br label %bb65
bb65:
  %t283 = load i64, ptr %l10, !tbaa !24
  %t285 = add i64 %t283, 1
  store i64 %t285, ptr %l10, !tbaa !24
  br label %bb55
bb66:
  %t287 = load i64, ptr %l2, !tbaa !24
  %t289 = insertvalue { i32, i64 } zeroinitializer, i64 %t287, 1
  store { i32, i64 } %t289, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i32 @std_2fjson_2estd_2fjson_3areader_2eword(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l41 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, [2 x i64] }
  %l45 = alloca i64
  %l47 = alloca { i64, [2 x i64] }
  %l51 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l60 = alloca i64
  %l62 = alloca i64
  %l63 = alloca { i64, [2 x i64] }
  %l64 = alloca i64
  %l66 = alloca { i64, [2 x i64] }
  %l69 = alloca ptr
  %rv = alloca i32
  %t71 = alloca { i64, [2 x i64] }, align 8
  %t121 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb24
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"std/json:reader", ptr %t51, i32 0, i32 1
  %t54 = load i64, ptr %t53, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"std/json:reader", ptr %t55, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t63 = icmp eq i64 %t54, %t60
  br i1 %t63, label %bb11, label %bb12
bb11:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t65)
  store i64 %t67, ptr %l41
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t68)
  store i64 %t70, ptr %l43
  br label %bb14
bb14:
  store { i64, [2 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 0
  store i64 1, ptr %t72
  %t73 = load i64, ptr %l41, !tbaa !24
  %t74 = insertvalue { i64, i64 } undef, i64 %t73, 0
  %t75 = load i64, ptr %l43, !tbaa !24
  %t76 = insertvalue { i64, i64 } %t74, i64 %t75, 1
  %t77 = getelementptr { i64, [2 x i64] }, ptr %t71, i32 0, i32 1
  store { i64, i64 } %t76, ptr %t77
  %t78 = load { i64, [2 x i64] }, ptr %t71
  store { i64, [2 x i64] } %t78, ptr %l44
  %t79 = call ptr @__olang_errpay_push()
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l45, !tbaa !24
  %t81 = load i64, ptr %l45
  %t82 = inttoptr i64 %t81 to ptr
  %t84 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t82, ptr %l44)
  store { i64, [2 x i64] } %t84, ptr %l47
  br label %bb15
bb15:
  %t85 = load { i64, [2 x i64] }, ptr %l47
  %t86 = load i64, ptr %l45
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call ptr @__olang_scope_alloc_a(ptr %t87, i64 24, i64 8)
  store { i64, [2 x i64] } %t85, ptr %t88
  call void @__olang_errpay_set(ptr %t88)
  store i32 65537, ptr %rv
  br label %ret
bb16:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"std/json:reader", ptr %t91, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l51, !tbaa !27
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"std/json:reader", ptr %t95, i32 0, i32 1
  %t98 = load i64, ptr %t97, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i8, ptr %t101, i64 %t98
  %t103 = load i8, ptr %t102, !tbaa !32
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t104, ptr %l55, !tbaa !27
  %t105 = load i64, ptr %l7, !tbaa !24
  %t107 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t108 = load ptr, ptr %t107, !tbaa !27
  %t109 = getelementptr i8, ptr %t108, i64 %t105
  %t110 = load i8, ptr %t109, !tbaa !32
  %t113 = icmp ne i8 %t103, %t110
  br i1 %t113, label %bb17, label %bb18
bb17:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = call i64 @std_2fjson_2estd_2fjson_3areader_2eline(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l60
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = call i64 @std_2fjson_2estd_2fjson_3areader_2ecol(ptr %v0, ptr %t118)
  store i64 %t120, ptr %l62
  br label %bb20
bb20:
  store { i64, [2 x i64] } zeroinitializer, ptr %t121
  %t122 = getelementptr { i64, [2 x i64] }, ptr %t121, i32 0, i32 0
  store i64 0, ptr %t122
  %t123 = load i64, ptr %l60, !tbaa !24
  %t124 = insertvalue { i64, i64 } undef, i64 %t123, 0
  %t125 = load i64, ptr %l62, !tbaa !24
  %t126 = insertvalue { i64, i64 } %t124, i64 %t125, 1
  %t127 = getelementptr { i64, [2 x i64] }, ptr %t121, i32 0, i32 1
  store { i64, i64 } %t126, ptr %t127
  %t128 = load { i64, [2 x i64] }, ptr %t121
  store { i64, [2 x i64] } %t128, ptr %l63
  %t129 = call ptr @__olang_errpay_push()
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l64, !tbaa !24
  %t131 = load i64, ptr %l64
  %t132 = inttoptr i64 %t131 to ptr
  %t134 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t132, ptr %l63)
  store { i64, [2 x i64] } %t134, ptr %l66
  br label %bb21
bb21:
  %t135 = load { i64, [2 x i64] }, ptr %l66
  %t136 = load i64, ptr %l64
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = call ptr @__olang_scope_alloc_a(ptr %t137, i64 24, i64 8)
  store { i64, [2 x i64] } %t135, ptr %t138
  call void @__olang_errpay_set(ptr %t138)
  store i32 65536, ptr %rv
  br label %ret
bb22:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l69, !tbaa !29
  %t142 = load ptr, ptr %l69, !tbaa !29
  %t143 = getelementptr %"std/json:reader", ptr %t142, i32 0, i32 1
  %t144 = load i64, ptr %t143, !tbaa !24
  %t146 = add i64 %t144, 1
  %t148 = load ptr, ptr %l69, !tbaa !29
  %t149 = getelementptr %"std/json:reader", ptr %t148, i32 0, i32 1
  store i64 %t146, ptr %t149, !tbaa !24
  br label %bb23
bb23:
  %t150 = load i64, ptr %l6, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l6, !tbaa !24
  br label %bb7
bb24:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @std_2fjson_2estd_2fjson_3awriter_2ecolon(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l7 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:writer", ptr %t1, i32 0, i32 2
  store ptr %t3, ptr %l2, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"std/json:writer", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d4, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb3
bb2:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t13, { i64, ptr } %t14)
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fjson_2estd_2fjson_3awriter_2enewline(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:writer", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/json:writer", ptr %t10, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t12, i8 10)
  br label %bb4
bb4:
  store i64 0, ptr %l2, !tbaa !24
  store i64 %a1, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp sgt i64 %t16, %t17
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t24 = icmp sgt i64 %t22, 0
  br i1 %t24, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb10
bb7:
  %t26 = load i64, ptr %l3, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t30 = sub i64 %t26, %t27
  %t31 = load i64, ptr %l4, !tbaa !24
  %t34 = add i64 %t30, %t31
  %t36 = sub i64 %t34, 1
  %t37 = load i64, ptr %l4, !tbaa !24
  %t40 = sdiv i64 %t36, %t37
  store i64 %t40, ptr %l21, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb9
bb9:
  %t42 = load i64, ptr %l21, !tbaa !24
  store i64 %t42, ptr %l18, !tbaa !24
  br label %bb10
bb10:
  %t43 = load i64, ptr %l18, !tbaa !24
  store i64 %t43, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = icmp slt i64 %t44, %t45
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t52 = load i64, ptr %l2, !tbaa !24
  %t53 = load i64, ptr %l6, !tbaa !24
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = mul i64 %t53, %t54
  %t60 = add i64 %t52, %t57
  store i64 %t60, ptr %l7, !tbaa !24
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"std/json:writer", ptr %t62, i32 0, i32 2
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"std/json:writer", ptr %t65, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t64, { i64, ptr } %t68)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l6, !tbaa !24
  br label %bb11
bb17:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fjson_2estd_2fjson_3awriter_2etext(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %l9 = alloca i8
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %l46 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l98 = alloca ptr
  %l99 = alloca { i64, ptr }
  %l100 = alloca i64
  %l103 = alloca i64
  %l104 = alloca i64
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/json:writer", ptr %t1, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t3, i8 34)
  br label %bb1
bb1:
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l3, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l5, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = sdiv i64 %t29, %t30
  store i64 %t33, ptr %l20, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l20, !tbaa !24
  store i64 %t35, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l17, !tbaa !24
  store i64 %t36, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l7, !tbaa !24
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb52
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l3, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l8, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t55, ptr %l38, !tbaa !27
  %t56 = load i64, ptr %l8, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  store i8 %t61, ptr %l9, !tbaa !22
  %t63 = load i8, ptr %l9, !tbaa !22
  %t65 = icmp uge i8 %t63, 32
  br i1 %t65, label %bb12, label %bb13
bb12:
  %t67 = load i8, ptr %l9, !tbaa !22
  %t69 = icmp ne i8 %t67, 34
  store i1 %t69, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t71 = load i1, ptr %l43, !tbaa !21
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t72 = load i8, ptr %l9, !tbaa !22
  %t74 = icmp ne i8 %t72, 92
  store i1 %t74, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l46, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  br label %bb51
bb19:
  br label %bb20
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"std/json:writer", ptr %t77, i32 0, i32 2
  store ptr %t79, ptr %l50, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t80, ptr %l51, !tbaa !27
  %t81 = load i64, ptr %l2, !tbaa !24
  store i64 %t81, ptr %l52, !tbaa !24
  %t82 = load i64, ptr %l8, !tbaa !24
  store i64 %t82, ptr %l53, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l54, !tbaa !24
  %t85 = load i64, ptr %l52, !tbaa !24
  %t86 = icmp sge i64 %t85, 0
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = load i64, ptr %l52, !tbaa !24
  %t89 = load i64, ptr %l53, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_b05733ff18c427e5_772a385d9f13c959)
  unreachable
bb23:
  %t92 = load i64, ptr %l53, !tbaa !24
  %t93 = load i64, ptr %l54, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_b05733ff18c427e5_772a385d9f13c959)
  unreachable
bb25:
  %t96 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l52, !tbaa !24
  %t99 = load i64, ptr %l53, !tbaa !24
  %t100 = getelementptr i8, ptr %t97, i64 %t98
  %t101 = sub i64 %t99, %t98
  %t102 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t100, 1
  %t104 = load ptr, ptr %l50, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t104, { i64, ptr } %t103)
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_b05733ff18c427e5_772a385d9f13c959)
  unreachable
bb27:
  %t106 = load i64, ptr %l8, !tbaa !24
  %t108 = add i64 %t106, 1
  store i64 %t108, ptr %l2, !tbaa !24
  %t110 = load i8, ptr %l9, !tbaa !22
  %t112 = icmp eq i8 %t110, 34
  br i1 %t112, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"std/json:writer", ptr %t114, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s4, ptr %t116, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d6, i32 0, i32 1) })
  br label %bb30
bb29:
  %t118 = load i8, ptr %l9, !tbaa !22
  %t120 = icmp eq i8 %t118, 92
  br i1 %t120, label %bb31, label %bb32
bb30:
  call void @__olang_scope_close(ptr %s4)
  br label %bb50
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"std/json:writer", ptr %t122, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t124, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) })
  br label %bb33
bb32:
  %t126 = load i8, ptr %l9, !tbaa !22
  %t128 = icmp eq i8 %t126, 10
  br i1 %t128, label %bb34, label %bb35
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb49
bb34:
  store %olang.scope zeroinitializer, ptr %s8
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"std/json:writer", ptr %t130, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t132, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d8, i32 0, i32 1) })
  br label %bb36
bb35:
  %t134 = load i8, ptr %l9, !tbaa !22
  %t136 = icmp eq i8 %t134, 9
  br i1 %t136, label %bb37, label %bb38
bb36:
  call void @__olang_scope_close(ptr %s8)
  br label %bb48
bb37:
  store %olang.scope zeroinitializer, ptr %s10
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"std/json:writer", ptr %t138, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s10, ptr %t140, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  br label %bb39
bb38:
  %t142 = load i8, ptr %l9, !tbaa !22
  %t144 = icmp eq i8 %t142, 13
  br i1 %t144, label %bb40, label %bb41
bb39:
  call void @__olang_scope_close(ptr %s10)
  br label %bb47
bb40:
  store %olang.scope zeroinitializer, ptr %s12
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"std/json:writer", ptr %t146, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s12, ptr %t148, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
  br label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s13
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"std/json:writer", ptr %t150, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s13, ptr %t152, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb43
bb42:
  call void @__olang_scope_close(ptr %s12)
  br label %bb46
bb43:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"std/json:writer", ptr %t154, i32 0, i32 2
  %t157 = load i8, ptr %l9, !tbaa !22
  %t159 = lshr i8 %t157, 4
  %t161 = zext i8 %t159 to i64
  %t163 = getelementptr { i64, ptr }, ptr @G_2estd_2fjson_2ehexDigits, i32 0, i32 1
  %t164 = load ptr, ptr %t163, !tbaa !27
  %t165 = getelementptr i8, ptr %t164, i64 %t161
  %t166 = load i8, ptr %t165, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t156, i8 %t166)
  br label %bb44
bb44:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"std/json:writer", ptr %t169, i32 0, i32 2
  %t172 = load i8, ptr %l9, !tbaa !22
  %t174 = and i8 %t172, 15
  %t176 = zext i8 %t174 to i64
  %t178 = getelementptr { i64, ptr }, ptr @G_2estd_2fjson_2ehexDigits, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i8, ptr %t179, i64 %t176
  %t181 = load i8, ptr %t180, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t171, i8 %t181)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s13)
  br label %bb46
bb46:
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t184 = load i64, ptr %l7, !tbaa !24
  %t186 = add i64 %t184, 1
  store i64 %t186, ptr %l7, !tbaa !24
  br label %bb8
bb52:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"std/json:writer", ptr %t188, i32 0, i32 2
  store ptr %t190, ptr %l98, !tbaa !29
  %t191 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t191, ptr %l99, !tbaa !27
  %t192 = load i64, ptr %l2, !tbaa !24
  store i64 %t192, ptr %l100, !tbaa !24
  %t193 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t193, 0
  store i64 %t196, ptr %l103, !tbaa !24
  %t197 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t198 = extractvalue { i64, ptr } %t197, 0
  store i64 %t198, ptr %l104, !tbaa !24
  %t199 = load i64, ptr %l100, !tbaa !24
  %t200 = icmp sge i64 %t199, 0
  br i1 %t200, label %bb53, label %bb54
bb53:
  %t202 = load i64, ptr %l100, !tbaa !24
  %t203 = load i64, ptr %l103, !tbaa !24
  %t204 = icmp sle i64 %t202, %t203
  br i1 %t204, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_619d2740d221a188_b21ca0b40d9629ac)
  unreachable
bb55:
  %t206 = load i64, ptr %l103, !tbaa !24
  %t207 = load i64, ptr %l104, !tbaa !24
  %t208 = icmp sle i64 %t206, %t207
  br i1 %t208, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_619d2740d221a188_b21ca0b40d9629ac)
  unreachable
bb57:
  %t210 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t211 = load ptr, ptr %t210, !tbaa !27
  %t212 = load i64, ptr %l100, !tbaa !24
  %t213 = load i64, ptr %l103, !tbaa !24
  %t214 = getelementptr i8, ptr %t211, i64 %t212
  %t215 = sub i64 %t213, %t212
  %t216 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t214, 1
  %t218 = load ptr, ptr %l98, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %t218, { i64, ptr } %t217)
  br label %bb59
bb58:
  call void @__olang_check_failed(ptr @olang_loc_619d2740d221a188_b21ca0b40d9629ac)
  unreachable
bb59:
  %t220 = load ptr, ptr %l0, !tbaa !29
  %t222 = getelementptr %"std/json:writer", ptr %t220, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t222, i8 34)
  br label %bb60
bb60:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fjson_2estd_2fjson_3awriter_2evalue(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca double
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca ptr
  %l23 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l35 = alloca ptr
  %l37 = alloca { i64, ptr }
  %l38 = alloca ptr
  %l39 = alloca i1
  %l47 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i1
  %l87 = alloca ptr
  %l88 = alloca i1
  %l105 = alloca i64
  %l108 = alloca i64
  %l134 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l146 = alloca i1
  %l152 = alloca i64
  %l159 = alloca i64
  %l163 = alloca i64
  %l166 = alloca i64
  %l193 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l202 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s23 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t2 = load ptr, ptr %l22, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l22, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l23, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l23, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/json:writer", ptr %t10, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s1, ptr %t12, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb127
bb7:
  %t14 = load ptr, ptr %l1, !tbaa !29
  store ptr %t14, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t15 = load ptr, ptr %l28, !tbaa !29
  %t16 = icmp ne ptr %t15, null
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t18 = load ptr, ptr %l28, !tbaa !29
  %t19 = load i64, ptr %t18, !range !{i64 0, i64 8}
  %t21 = icmp eq i64 %t19, 1
  store i1 %t21, ptr %l29, !tbaa !21
  br label %bb9
bb9:
  %t22 = load i1, ptr %l29, !tbaa !21
  br i1 %t22, label %bb10, label %bb11
bb10:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t23, i32 0, i32 1
  %t26 = getelementptr { i1 }, ptr %t25, i32 0, i32 0
  %t27 = load i1, ptr %t26
  store i1 %t27, ptr %l3, !tbaa !21
  br label %bb12
bb11:
  br label %bb17
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"std/json:writer", ptr %t29, i32 0, i32 2
  store ptr %t31, ptr %l35, !tbaa !29
  %t32 = load i1, ptr %l3, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb15
bb14:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l37, !tbaa !27
  br label %bb15
bb15:
  %t34 = load ptr, ptr %l35, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l37, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s2, ptr %t34, { i64, ptr } %t35)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb127
bb17:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t37 = load ptr, ptr %l38, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb18, label %bb19
bb18:
  %t40 = load ptr, ptr %l38, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 8}
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l39, !tbaa !21
  br label %bb19
bb19:
  %t44 = load i1, ptr %l39, !tbaa !21
  br i1 %t44, label %bb20, label %bb21
bb20:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [2 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { double }, ptr %t47, i32 0, i32 0
  %t49 = load double, ptr %t48
  store double %t49, ptr %l4, !tbaa !26
  br label %bb22
bb21:
  br label %bb31
bb22:
  %t51 = load double, ptr %l4, !tbaa !26
  %t52 = load double, ptr %l4, !tbaa !26
  %t55 = fcmp une double %t51, %t52
  br i1 %t55, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb25
bb24:
  %t57 = load double, ptr %l4, !tbaa !26
  %t58 = load double, ptr %l4, !tbaa !26
  %t61 = fsub double %t57, %t58
  %t63 = fcmp une double %t61, 0x0000000000000000
  store i1 %t63, ptr %l47, !tbaa !21
  br label %bb25
bb25:
  %t65 = load i1, ptr %l47, !tbaa !21
  br i1 %t65, label %bb26, label %bb27
bb26:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"std/json:writer", ptr %t66, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s4, ptr %t68, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) })
  br label %bb28
bb27:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"std/json:writer", ptr %t70, i32 0, i32 2
  %t73 = load double, ptr %l4, !tbaa !26
  call void @std_2fjson_2ewriteNumber(ptr %v0, ptr %t72, double %t73)
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb29:
  br label %bb30
bb30:
  br label %bb127
bb31:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t77 = load ptr, ptr %l57, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb32, label %bb33
bb32:
  %t80 = load ptr, ptr %l57, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 3
  store i1 %t83, ptr %l58, !tbaa !21
  br label %bb33
bb33:
  %t84 = load i1, ptr %l58, !tbaa !21
  br i1 %t84, label %bb34, label %bb35
bb34:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [2 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { i64 }, ptr %t87, i32 0, i32 0
  %t89 = load i64, ptr %t88
  store i64 %t89, ptr %l5, !tbaa !24
  br label %bb36
bb35:
  br label %bb38
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"std/json:writer", ptr %t91, i32 0, i32 2
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = call i64 @__olang_fmt_i64(ptr null, i64 %t94)
  %t97 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t96)
  %t98 = call i64 @__olang_fmt_i64(ptr %t97, i64 %t94)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t93, { i64, ptr } %t107)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb127
bb38:
  %t110 = load ptr, ptr %l1, !tbaa !29
  store ptr %t110, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t111 = load ptr, ptr %l68, !tbaa !29
  %t112 = icmp ne ptr %t111, null
  br i1 %t112, label %bb39, label %bb40
bb39:
  %t114 = load ptr, ptr %l68, !tbaa !29
  %t115 = load i64, ptr %t114, !range !{i64 0, i64 8}
  %t117 = icmp eq i64 %t115, 4
  store i1 %t117, ptr %l69, !tbaa !21
  br label %bb40
bb40:
  %t118 = load i1, ptr %l69, !tbaa !21
  br i1 %t118, label %bb41, label %bb42
bb41:
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr { i64, [2 x i64] }, ptr %t119, i32 0, i32 1
  %t122 = getelementptr { i64 }, ptr %t121, i32 0, i32 0
  %t123 = load i64, ptr %t122
  store i64 %t123, ptr %l6, !tbaa !65
  br label %bb43
bb42:
  br label %bb45
bb43:
  store %olang.scope zeroinitializer, ptr %s8
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"std/json:writer", ptr %t125, i32 0, i32 2
  %t128 = load i64, ptr %l6, !tbaa !65
  %t130 = call i64 @__olang_fmt_u64(ptr null, i64 %t128)
  %t131 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t130)
  %t132 = call i64 @__olang_fmt_u64(ptr %t131, i64 %t128)
  %t133 = insertvalue { i64, ptr } undef, i64 %t130, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  %t136 = extractvalue { i64, ptr } %t134, 0
  %t137 = extractvalue { i64, ptr } %t134, 1
  %t138 = mul i64 %t136, 1
  %t139 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t138)
  call void @llvm.memcpy.p0.p0.i64(ptr %t139, ptr %t137, i64 %t138, i1 false)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s8, ptr %t127, { i64, ptr } %t141)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s8)
  br label %bb127
bb45:
  %t144 = load ptr, ptr %l1, !tbaa !29
  store ptr %t144, ptr %l79, !tbaa !29
  store i1 false, ptr %l80, !tbaa !21
  %t145 = load ptr, ptr %l79, !tbaa !29
  %t146 = icmp ne ptr %t145, null
  br i1 %t146, label %bb46, label %bb47
bb46:
  %t148 = load ptr, ptr %l79, !tbaa !29
  %t149 = load i64, ptr %t148, !range !{i64 0, i64 8}
  %t151 = icmp eq i64 %t149, 5
  store i1 %t151, ptr %l80, !tbaa !21
  br label %bb47
bb47:
  %t152 = load i1, ptr %l80, !tbaa !21
  br i1 %t152, label %bb48, label %bb49
bb48:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr { i64, [2 x i64] }, ptr %t153, i32 0, i32 1
  %t156 = getelementptr { { i64, ptr } }, ptr %t155, i32 0, i32 0
  %t157 = load { i64, ptr }, ptr %t156
  store { i64, ptr } %t157, ptr %l7, !tbaa !27
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load { i64, ptr }, ptr %l7, !tbaa !27
  call void @std_2fjson_2estd_2fjson_3awriter_2etext(ptr %v0, ptr %v1, ptr %t159, { i64, ptr } %t160)
  br label %bb51
bb51:
  br label %bb127
bb52:
  %t163 = load ptr, ptr %l1, !tbaa !29
  store ptr %t163, ptr %l87, !tbaa !29
  store i1 false, ptr %l88, !tbaa !21
  %t164 = load ptr, ptr %l87, !tbaa !29
  %t165 = icmp ne ptr %t164, null
  br i1 %t165, label %bb53, label %bb54
bb53:
  %t167 = load ptr, ptr %l87, !tbaa !29
  %t168 = load i64, ptr %t167, !range !{i64 0, i64 8}
  %t170 = icmp eq i64 %t168, 6
  store i1 %t170, ptr %l88, !tbaa !21
  br label %bb54
bb54:
  %t171 = load i1, ptr %l88, !tbaa !21
  br i1 %t171, label %bb55, label %bb56
bb55:
  %t172 = load ptr, ptr %l1, !tbaa !29
  %t174 = getelementptr { i64, [2 x i64] }, ptr %t172, i32 0, i32 1
  %t175 = getelementptr { { i64, ptr } }, ptr %t174, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175
  store { i64, ptr } %t176, ptr %l8, !tbaa !27
  br label %bb57
bb56:
  br label %bb83
bb57:
  %t178 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t178, 0
  %t182 = icmp eq i64 %t180, 0
  br i1 %t182, label %bb58, label %bb59
bb58:
  store %olang.scope zeroinitializer, ptr %s12
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"std/json:writer", ptr %t184, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s12, ptr %t186, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb60
bb59:
  br label %bb61
bb60:
  call void @__olang_scope_close(ptr %s12)
  br label %ret
bb61:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"std/json:writer", ptr %t188, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t190, i8 91)
  br label %bb62
bb62:
  store i64 0, ptr %l9, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t196 = load i64, ptr %l10, !tbaa !24
  %t197 = load i64, ptr %l9, !tbaa !24
  %t200 = icmp sgt i64 %t196, %t197
  br i1 %t200, label %bb63, label %bb64
bb63:
  %t202 = load i64, ptr %l11, !tbaa !24
  %t204 = icmp sgt i64 %t202, 0
  br i1 %t204, label %bb65, label %bb66
bb64:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb68
bb65:
  %t206 = load i64, ptr %l10, !tbaa !24
  %t207 = load i64, ptr %l9, !tbaa !24
  %t210 = sub i64 %t206, %t207
  %t211 = load i64, ptr %l11, !tbaa !24
  %t214 = add i64 %t210, %t211
  %t216 = sub i64 %t214, 1
  %t217 = load i64, ptr %l11, !tbaa !24
  %t220 = sdiv i64 %t216, %t217
  store i64 %t220, ptr %l108, !tbaa !24
  br label %bb67
bb66:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb67
bb67:
  %t222 = load i64, ptr %l108, !tbaa !24
  store i64 %t222, ptr %l105, !tbaa !24
  br label %bb68
bb68:
  %t223 = load i64, ptr %l105, !tbaa !24
  store i64 %t223, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb69
bb69:
  %t224 = load i64, ptr %l13, !tbaa !24
  %t225 = load i64, ptr %l12, !tbaa !24
  %t228 = icmp slt i64 %t224, %t225
  %t230 = xor i1 %t228, true
  br i1 %t230, label %bb70, label %bb71
bb70:
  br label %bb80
bb71:
  br label %bb72
bb72:
  %t232 = load i64, ptr %l9, !tbaa !24
  %t233 = load i64, ptr %l13, !tbaa !24
  %t234 = load i64, ptr %l11, !tbaa !24
  %t237 = mul i64 %t233, %t234
  %t240 = add i64 %t232, %t237
  store i64 %t240, ptr %l14, !tbaa !24
  %t242 = load i64, ptr %l14, !tbaa !24
  %t244 = icmp sgt i64 %t242, 0
  br i1 %t244, label %bb73, label %bb74
bb73:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"std/json:writer", ptr %t246, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t248, i8 44)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i64, ptr %l2, !tbaa !24
  %t253 = add i64 %t251, 1
  call void @std_2fjson_2estd_2fjson_3awriter_2enewline(ptr %v0, ptr %t250, i64 %t253)
  br label %bb77
bb77:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t257 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t257, ptr %l134, !tbaa !27
  %t258 = load i64, ptr %l14, !tbaa !24
  %t260 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr ptr, ptr %t261, i64 %t258
  %t263 = load ptr, ptr %t262, !tbaa !39
  %t264 = load i64, ptr %l2, !tbaa !24
  %t266 = add i64 %t264, 1
  call void @std_2fjson_2estd_2fjson_3awriter_2evalue(ptr %v0, ptr %v1, ptr %t256, ptr %t263, i64 %t266)
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t270 = load i64, ptr %l13, !tbaa !24
  %t272 = add i64 %t270, 1
  store i64 %t272, ptr %l13, !tbaa !24
  br label %bb69
bb80:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i64, ptr %l2, !tbaa !24
  call void @std_2fjson_2estd_2fjson_3awriter_2enewline(ptr %v0, ptr %t274, i64 %t275)
  br label %bb81
bb81:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"std/json:writer", ptr %t278, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t280, i8 93)
  br label %bb82
bb82:
  br label %bb127
bb83:
  %t282 = load ptr, ptr %l1, !tbaa !29
  store ptr %t282, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t283 = load ptr, ptr %l145, !tbaa !29
  %t284 = icmp ne ptr %t283, null
  br i1 %t284, label %bb84, label %bb85
bb84:
  %t286 = load ptr, ptr %l145, !tbaa !29
  %t287 = load i64, ptr %t286, !range !{i64 0, i64 8}
  %t289 = icmp eq i64 %t287, 7
  store i1 %t289, ptr %l146, !tbaa !21
  br label %bb85
bb85:
  %t290 = load i1, ptr %l146, !tbaa !21
  br i1 %t290, label %bb86, label %bb87
bb86:
  %t291 = load ptr, ptr %l1, !tbaa !29
  %t293 = getelementptr { i64, [2 x i64] }, ptr %t291, i32 0, i32 1
  %t294 = getelementptr { ptr }, ptr %t293, i32 0, i32 0
  %t295 = load ptr, ptr %t294
  store ptr %t295, ptr %l15, !tbaa !29
  br label %bb88
bb87:
  br label %bb121
bb88:
  %t297 = load ptr, ptr %l15, !tbaa !29
  %t299 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v1, ptr %t297)
  store i64 %t299, ptr %l152
  br label %bb89
bb89:
  %t300 = load i64, ptr %l152, !tbaa !24
  %t301 = icmp eq i64 %t300, 0
  br i1 %t301, label %bb90, label %bb91
bb90:
  store %olang.scope zeroinitializer, ptr %s18
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = getelementptr %"std/json:writer", ptr %t303, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s18, ptr %t305, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d17, i32 0, i32 1) })
  br label %bb92
bb91:
  br label %bb93
bb92:
  call void @__olang_scope_close(ptr %s18)
  br label %ret
bb93:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t309 = getelementptr %"std/json:writer", ptr %t307, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t309, i8 123)
  br label %bb94
bb94:
  store i64 0, ptr %l16, !tbaa !24
  %t311 = load ptr, ptr %l15, !tbaa !29
  %t313 = call i64 @std_2fjson_2estd_2fjson_3aObject_2eLen(ptr %v1, ptr %t311)
  store i64 %t313, ptr %l159
  br label %bb95
bb95:
  %t314 = load i64, ptr %l159, !tbaa !24
  store i64 %t314, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t315 = load i64, ptr %l17, !tbaa !24
  %t316 = load i64, ptr %l16, !tbaa !24
  %t319 = icmp sgt i64 %t315, %t316
  br i1 %t319, label %bb96, label %bb97
bb96:
  %t321 = load i64, ptr %l18, !tbaa !24
  %t323 = icmp sgt i64 %t321, 0
  br i1 %t323, label %bb98, label %bb99
bb97:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb101
bb98:
  %t325 = load i64, ptr %l17, !tbaa !24
  %t326 = load i64, ptr %l16, !tbaa !24
  %t329 = sub i64 %t325, %t326
  %t330 = load i64, ptr %l18, !tbaa !24
  %t333 = add i64 %t329, %t330
  %t335 = sub i64 %t333, 1
  %t336 = load i64, ptr %l18, !tbaa !24
  %t339 = sdiv i64 %t335, %t336
  store i64 %t339, ptr %l166, !tbaa !24
  br label %bb100
bb99:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb100
bb100:
  %t341 = load i64, ptr %l166, !tbaa !24
  store i64 %t341, ptr %l163, !tbaa !24
  br label %bb101
bb101:
  %t342 = load i64, ptr %l163, !tbaa !24
  store i64 %t342, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb102
bb102:
  store %olang.scope zeroinitializer, ptr %s20
  %t343 = load i64, ptr %l20, !tbaa !24
  %t344 = load i64, ptr %l19, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  %t349 = xor i1 %t347, true
  br i1 %t349, label %bb103, label %bb104
bb103:
  call void @__olang_scope_close(ptr %s20)
  br label %bb118
bb104:
  br label %bb105
bb105:
  %t351 = load i64, ptr %l16, !tbaa !24
  %t352 = load i64, ptr %l20, !tbaa !24
  %t353 = load i64, ptr %l18, !tbaa !24
  %t356 = mul i64 %t352, %t353
  %t359 = add i64 %t351, %t356
  store i64 %t359, ptr %l21, !tbaa !24
  %t361 = load i64, ptr %l21, !tbaa !24
  %t363 = icmp sgt i64 %t361, 0
  br i1 %t363, label %bb106, label %bb107
bb106:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"std/json:writer", ptr %t365, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t367, i8 44)
  br label %bb108
bb107:
  br label %bb109
bb108:
  br label %bb109
bb109:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load i64, ptr %l2, !tbaa !24
  %t372 = add i64 %t370, 1
  call void @std_2fjson_2estd_2fjson_3awriter_2enewline(ptr %v0, ptr %t369, i64 %t372)
  br label %bb110
bb110:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load ptr, ptr %l15, !tbaa !29
  %t378 = getelementptr %"std/json:Object", ptr %t376, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  store { i64, ptr } %t379, ptr %l193, !tbaa !27
  %t380 = load i64, ptr %l21, !tbaa !24
  %t382 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t383 = load ptr, ptr %t382, !tbaa !27
  %t384 = getelementptr { i64, ptr }, ptr %t383, i64 %t380
  %t385 = load { i64, ptr }, ptr %t384, !tbaa !37
  call void @std_2fjson_2estd_2fjson_3awriter_2etext(ptr %v0, ptr %v1, ptr %t375, { i64, ptr } %t385)
  br label %bb111
bb111:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"std/json:writer", ptr %t388, i32 0, i32 2
  store ptr %t390, ptr %l197, !tbaa !29
  %t391 = load ptr, ptr %l0, !tbaa !29
  %t393 = getelementptr %"std/json:writer", ptr %t391, i32 0, i32 0
  %t394 = load { i64, ptr }, ptr %t393, !tbaa !27
  %t396 = extractvalue { i64, ptr } %t394, 0
  %t398 = icmp sgt i64 %t396, 0
  br i1 %t398, label %bb112, label %bb113
bb112:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l202, !tbaa !27
  br label %bb114
bb113:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l202, !tbaa !27
  br label %bb114
bb114:
  %t400 = load ptr, ptr %l197, !tbaa !29
  %t401 = load { i64, ptr }, ptr %l202, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s20, ptr %t400, { i64, ptr } %t401)
  br label %bb115
bb115:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load ptr, ptr %l15, !tbaa !29
  %t405 = getelementptr %"std/json:Object", ptr %t403, i32 0, i32 1
  %t406 = load { i64, ptr }, ptr %t405, !tbaa !27
  store { i64, ptr } %t406, ptr %l205, !tbaa !27
  %t407 = load i64, ptr %l21, !tbaa !24
  %t409 = getelementptr { i64, ptr }, ptr %l205, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr ptr, ptr %t410, i64 %t407
  %t412 = load ptr, ptr %t411, !tbaa !39
  %t413 = load i64, ptr %l2, !tbaa !24
  %t415 = add i64 %t413, 1
  call void @std_2fjson_2estd_2fjson_3awriter_2evalue(ptr %v0, ptr %v1, ptr %t402, ptr %t412, i64 %t415)
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s20)
  br label %bb117
bb117:
  %t419 = load i64, ptr %l20, !tbaa !24
  %t421 = add i64 %t419, 1
  store i64 %t421, ptr %l20, !tbaa !24
  br label %bb102
bb118:
  %t423 = load ptr, ptr %l0, !tbaa !29
  %t424 = load i64, ptr %l2, !tbaa !24
  call void @std_2fjson_2estd_2fjson_3awriter_2enewline(ptr %v0, ptr %t423, i64 %t424)
  br label %bb119
bb119:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t429 = getelementptr %"std/json:writer", ptr %t427, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t429, i8 125)
  br label %bb120
bb120:
  br label %bb127
bb121:
  br i1 true, label %bb122, label %bb123
bb122:
  br label %bb124
bb123:
  br label %bb126
bb124:
  store %olang.scope zeroinitializer, ptr %s23
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = getelementptr %"std/json:writer", ptr %t431, i32 0, i32 2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s23, ptr %t433, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d20, i32 0, i32 1) })
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s23)
  br label %bb127
bb126:
  call void @__olang_check_failed(ptr @olang_loc_a9bf92283d37587a_a12d0c4bd2035d0e)
  unreachable
bb127:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fjson_2ewriteNumber(ptr %v0, ptr %a0, double %a1) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.builder
  %s1room = alloca [64 x i8], align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l2, !tbaa !29
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s1
  store ptr %s1room, ptr %s1
  %t4 = call ptr @__olang_sb_room(ptr %s1, i64 48)
  %t5 = call i64 @__olang_fmt_float(ptr %t4, i64 48, double %a1, i32 0)
  call void @__olang_sb_add(ptr %s1, i64 %t5)
  %t6 = load ptr, ptr %s1
  %t7 = getelementptr %olang.builder, ptr %s1, i32 0, i32 1
  %t8 = load i64, ptr %t7
  %t9 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t6, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr %olang.builder, ptr %s1, i32 0, i32 3
  %t13 = load ptr, ptr %t12
  %t14 = icmp ne ptr %t13, null
  br i1 %t14, label %sbgrew.15, label %sbdone.16
sbgrew.15:
  call void @__olang_sb_done(ptr %s1)
  br label %sbdone.16
sbdone.16:
  %t17 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t17, 0
  %t19 = extractvalue { i64, ptr } %t17, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t24, { i64, ptr } %t23)
  br label %bb1
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"std/json:Key" } @std_2fjson_3aKey_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l3 = alloca i1
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, [2 x i64] }
  %l10 = alloca i64
  %l12 = alloca { i64, [2 x i64] }
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"std/json:Key" }
  %t21 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std__21(ptr %v0, { i64, ptr } %t1)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  store { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l5, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l7, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  store { i64, [2 x i64] } zeroinitializer, ptr %t21
  %t22 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 0
  store i64 0, ptr %t22
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t24 = insertvalue { { i64, ptr } } undef, { i64, ptr } %t23, 0
  %t25 = getelementptr { i64, [2 x i64] }, ptr %t21, i32 0, i32 1
  store { { i64, ptr } } %t24, ptr %t25
  %t26 = load { i64, [2 x i64] }, ptr %t21
  store { i64, [2 x i64] } %t26, ptr %l9
  %t27 = call ptr @__olang_errpay_push()
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l10, !tbaa !24
  %t29 = load i64, ptr %l10
  %t30 = inttoptr i64 %t29 to ptr
  %t32 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fargument_3aArgumentError_24payload(ptr %t30, ptr %l9)
  store { i64, [2 x i64] } %t32, ptr %l12
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t33 = load { i64, [2 x i64] }, ptr %l12
  %t34 = load i64, ptr %l10
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = call ptr @__olang_scope_alloc_a(ptr %t35, i64 24, i64 8)
  store { i64, [2 x i64] } %t33, ptr %t36
  call void @__olang_errpay_set(ptr %t36)
  call void @__olang_scope_close(ptr %s1)
  %t39 = insertvalue { i32, %"std/json:Key" } zeroinitializer, i32 65536, 0
  store { i32, %"std/json:Key" } %t39, ptr %rv
  br label %ret
bb5:
  %t40 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t43 = insertvalue %"std/json:Key" undef, { i64, ptr } %t40, 0
  %t45 = insertvalue { i32, %"std/json:Key" } zeroinitializer, %"std/json:Key" %t43, 1
  store { i32, %"std/json:Key" } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/json:Key" }, ptr %rv
  ret { i32, %"std/json:Key" } %rr
}

define dso_local { i32, %"std/json:Object" } @std_2fjson_3aObject_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i64
  %l13 = alloca { i64, [2 x i64] }
  %l18 = alloca i64
  %l21 = alloca { i64, ptr }
  %rv = alloca { i32, %"std/json:Object" }
  %t11 = alloca { i64, [2 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t9 = icmp ne i64 %t3, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  store { i64, [2 x i64] } zeroinitializer, ptr %t11
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t11, i32 0, i32 0
  store i64 9, ptr %t12
  %t13 = load { i64, [2 x i64] }, ptr %t11
  store { i64, [2 x i64] } %t13, ptr %l10
  %t14 = call ptr @__olang_errpay_push()
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l11, !tbaa !24
  %t16 = load i64, ptr %l11
  %t17 = inttoptr i64 %t16 to ptr
  %t19 = call { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %t17, ptr %l10)
  store { i64, [2 x i64] } %t19, ptr %l13
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t20 = load { i64, [2 x i64] }, ptr %l13
  %t21 = load i64, ptr %l11
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc_a(ptr %t22, i64 24, i64 8)
  store { i64, [2 x i64] } %t20, ptr %t23
  call void @__olang_errpay_set(ptr %t23)
  %t26 = insertvalue { i32, %"std/json:Object" } zeroinitializer, i32 65545, 0
  store { i32, %"std/json:Object" } %t26, ptr %rv
  br label %ret
bb4:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t29, ptr %l3, !tbaa !27
  %t31 = ptrtoint ptr %v2 to i64
  store i64 %t31, ptr %l18, !tbaa !24
  %t32 = load i1, ptr @olang_2esole_2estd_2fjson_3aObject_2e2
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = call ptr @__olang_region_make(ptr %v2)
  %t35 = ptrtoint ptr %t34 to i64
  store i64 %t35, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t37 = load i64, ptr %l18
  %t38 = inttoptr i64 %t37 to ptr
  %t40 = call { i64, ptr } @std_2fjson_2enameIndex(ptr %v0, ptr %t38, { i64, ptr } %t36)
  store { i64, ptr } %t40, ptr %l21
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t43 = insertvalue %"std/json:Object" undef, { i64, ptr } %t42, 0
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t45 = insertvalue %"std/json:Object" %t43, { i64, ptr } %t44, 1
  %t47 = insertvalue %"std/json:Object" %t45, { i64, ptr } %t41, 2
  %t49 = insertvalue { i32, %"std/json:Object" } zeroinitializer, %"std/json:Object" %t47, 1
  store { i32, %"std/json:Object" } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/json:Object" }, ptr %rv
  ret { i32, %"std/json:Object" } %rr
}

define dso_local %"std/json:Skip" @std_2fjson_3aSkip_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"std/json:Skip"
  br label %start
start:
  br label %bb0
bb0:
  store %"std/json:Skip" zeroinitializer, ptr %rv
  br label %ret
ret:
  %rr = load %"std/json:Skip", ptr %rv
  ret %"std/json:Skip" %rr
}

define dso_local %"std/json:reader" @std_2fjson_3areader_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l16 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i64
  %rv = alloca %"std/json:reader"
  %t3 = alloca { i64, [2 x i64] }, align 8
  %t15 = alloca i64
  %t39 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  store { i64, [2 x i64] } zeroinitializer, ptr %t3
  %t4 = getelementptr { i64, [2 x i64] }, ptr %t3, i32 0, i32 0
  store i64 0, ptr %t4
  %t5 = load { i64, [2 x i64] }, ptr %t3
  %t7 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store { i64, [2 x i64] } %t5, ptr %t7
  store ptr %t7, ptr %l12, !tbaa !29
  %t8 = icmp sge i64 64, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = icmp sle i64 64, 1152921504606846975
  br i1 %t10, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_a9d90acfb58a0efc_8cee310d77323458)
  unreachable
bb3:
  %t12 = mul i64 64, 8
  %t13 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t12)
  %t14 = load ptr, ptr %l12, !tbaa !29
  store i64 0, ptr %t15
  br label %fill.16
fill.16:
  %t19 = load i64, ptr %t15
  %t20 = icmp slt i64 %t19, 64
  br i1 %t20, label %fillb.17, label %filld.18
fillb.17:
  %t21 = getelementptr ptr, ptr %t13, i64 %t19
  store ptr %t14, ptr %t21
  %t22 = add i64 %t19, 1
  store i64 %t22, ptr %t15
  br label %fill.16
filld.18:
  %t23 = insertvalue { i64, ptr } undef, i64 64, 0
  %t24 = insertvalue { i64, ptr } %t23, ptr %t13, 1
  store { i64, ptr } %t24, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t26 = ptrtoint ptr %v1 to i64
  store i64 %t26, ptr %l16, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e4
  br i1 %t27, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a9d90acfb58a0efc_8cee310d77323458)
  unreachable
bb5:
  %t29 = call ptr @__olang_region_make(ptr %v1)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t31 = icmp sge i64 16, 0
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t33 = icmp sle i64 16, 576460752303423487
  br i1 %t33, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_b0f269ec47121b49_ffa527191fa405c5)
  unreachable
bb9:
  %t35 = mul i64 16, 16
  %t36 = load i64, ptr %l16
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = call ptr @__olang_scope_alloc(ptr %t37, i64 %t35)
  store i64 0, ptr %t39
  br label %fill.40
fill.40:
  %t43 = load i64, ptr %t39
  %t44 = icmp slt i64 %t43, 16
  br i1 %t44, label %fillb.41, label %filld.42
fillb.41:
  %t45 = getelementptr { i64, ptr }, ptr %t38, i64 %t43
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %t45
  %t46 = add i64 %t43, 1
  store i64 %t46, ptr %t39
  br label %fill.40
filld.42:
  %t47 = insertvalue { i64, ptr } undef, i64 16, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t38, 1
  store { i64, ptr } %t48, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t50 = ptrtoint ptr %v1 to i64
  store i64 %t50, ptr %l21, !tbaa !24
  %t51 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e6
  br i1 %t51, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_b0f269ec47121b49_ffa527191fa405c5)
  unreachable
bb11:
  %t53 = call ptr @__olang_region_make(ptr %v1)
  %t54 = ptrtoint ptr %t53 to i64
  store i64 %t54, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t55 = icmp sge i64 16, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = icmp sle i64 16, 1152921504606846975
  br i1 %t57, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_2b7d333750119e8a_5164bda0dfbd4ba6)
  unreachable
bb15:
  %t59 = mul i64 16, 8
  %t60 = load i64, ptr %l21
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call ptr @__olang_scope_alloc_zeroed(ptr %t61, i64 %t59)
  %t63 = insertvalue { i64, ptr } undef, i64 16, 0
  %t64 = insertvalue { i64, ptr } %t63, ptr %t62, 1
  store { i64, ptr } %t64, ptr %l7, !tbaa !27
  %t66 = ptrtoint ptr %v1 to i64
  store i64 %t66, ptr %l26, !tbaa !24
  %t67 = load i1, ptr @olang_2esole_2estd_2fjson_3areader_2e7
  br i1 %t67, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_2b7d333750119e8a_5164bda0dfbd4ba6)
  unreachable
bb17:
  %t69 = call ptr @__olang_region_make(ptr %v1)
  %t70 = ptrtoint ptr %t69 to i64
  store i64 %t70, ptr %l26, !tbaa !24
  br label %bb18
bb18:
  %t71 = icmp sge i64 16, 0
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = icmp sle i64 16, 1152921504606846975
  br i1 %t73, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_8e53cae89060ac5f_4eb6599badda6f3b)
  unreachable
bb21:
  %t75 = mul i64 16, 8
  %t76 = load i64, ptr %l26
  %t77 = inttoptr i64 %t76 to ptr
  %t78 = call ptr @__olang_scope_alloc_zeroed(ptr %t77, i64 %t75)
  %t79 = insertvalue { i64, ptr } undef, i64 16, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t78, 1
  %t82 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t83 = insertvalue %"std/json:reader" undef, { i64, ptr } %t82, 0
  %t84 = load i64, ptr %l2, !tbaa !24
  %t85 = insertvalue %"std/json:reader" %t83, i64 %t84, 1
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t87 = insertvalue %"std/json:reader" %t85, { i64, ptr } %t86, 2
  %t88 = load i64, ptr %l4, !tbaa !24
  %t89 = insertvalue %"std/json:reader" %t87, i64 %t88, 3
  %t90 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t91 = insertvalue %"std/json:reader" %t89, { i64, ptr } %t90, 4
  %t92 = load i64, ptr %l6, !tbaa !24
  %t93 = insertvalue %"std/json:reader" %t91, i64 %t92, 5
  %t94 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t95 = insertvalue %"std/json:reader" %t93, { i64, ptr } %t94, 6
  %t97 = insertvalue %"std/json:reader" %t95, { i64, ptr } %t80, 7
  %t99 = insertvalue %"std/json:reader" %t97, i64 0, 8
  store %"std/json:reader" %t99, ptr %rv
  br label %ret
bb22:
  call void @__olang_check_failed(ptr @olang_loc_8e53cae89060ac5f_4eb6599badda6f3b)
  unreachable
ret:
  %rr = load %"std/json:reader", ptr %rv
  ret %"std/json:reader" %rr
}

define dso_local %"std/json:writer" @std_2fjson_3awriter_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"std/json:writer"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i32 %a1, ptr %l3
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2estd_2fjson_3awriter_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l7
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t11)
  store %"std/prelude/text:StringBuilder" %t12, ptr %l9
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2estd_2fjson_3awriter_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l7
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/text:StringBuilder", ptr %l9, i32 0, i32 0
  %t18 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17, i32 0, i32 0
  %t19 = load { i64, ptr }, ptr %t18
  %t20 = extractvalue { i64, ptr } %t19, 1
  %t21 = call ptr @__olang_region_or(ptr %t20, ptr null)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/text:StringBuilder", ptr %l9
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t27 = insertvalue %"std/json:writer" undef, { i64, ptr } %t26, 0
  %t28 = load i32, ptr %l3, !range !{i32 0, i32 4}
  %t29 = insertvalue %"std/json:writer" %t27, i32 %t28, 1
  %t31 = insertvalue %"std/json:writer" %t29, %"std/prelude/text:StringBuilder" %t25, 2
  store %"std/json:writer" %t31, ptr %rv
  br label %ret
ret:
  %rr = load %"std/json:writer", ptr %rv
  ret %"std/json:writer" %rr
}

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
@__olang_empty_array = external constant [16 x i64]
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare void @__olang_errpay_pop()
declare ptr @__olang_errpay_push() cold
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fjson_3aError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 10}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  br label %bb1
bb3:
  br label %bb1
bb4:
  br label %bb1
bb5:
  br label %bb1
bb6:
  br label %bb1
bb7:
  br label %bb1
bb8:
  br label %bb1
bb9:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

declare void @__olang_errpay_set(ptr) cold
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2estd_2fjson_3areader_2e6 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2estd_2fjson_3areader_2e7 = weak hidden constant i1 false
@olang_2esole_2estd_2fjson_3areader_2e4 = weak hidden constant i1 false
@.d1 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d2 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d4 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d6 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\22" }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5C\5C" }>, align 8
@.d8 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cn" }>, align 8
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Ct" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\5Cr" }>, align 8
@.d11 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\5Cu00" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
declare i64 @__olang_fmt_u64(ptr, i64)
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d17 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"{}" }>, align 8
@.d18 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d20 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
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
declare i64 @__olang_fmt_float(ptr, i64, double, i32)
declare void @__olang_sb_add(ptr, i64)
declare void @__olang_sb_done(ptr)
define internal i1 @std__21(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } %a0, 0
  %t5 = icmp sgt i64 %t3, 0
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d22 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"Key: Name.Len() > 0" }>, align 8
define linkonce_odr { i64, [2 x i64] } @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fargument_3aArgumentError_24payload(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca { i64, [2 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, [2 x i64] }
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, [2 x i64] }, ptr %a0
  store { i64, [2 x i64] } %t2, ptr %l1
  %t3 = load i64, ptr %l1, !range !{i64 0, i64 1}
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 ]
bb1:
  %t5 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t5, ptr %rv
  br label %ret
bb2:
  %t6 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, ptr } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7
  store { i64, ptr } %t8, ptr %l3, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l5, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t24 = getelementptr { { i64, ptr } }, ptr %t23, i32 0, i32 0
  store { i64, ptr } %t22, ptr %t24
  br label %bb1
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

@olang_2esole_2estd_2fjson_3aObject_2e2 = weak hidden constant i1 false
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2estd_2fjson_3awriter_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
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
declare ptr @__olang_sb_grow(ptr, i64) noinline
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLower(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToLower(i8 %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare i8 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eToUpper(i8 %a0)
@olang_loc_bc241580f27121ab_ca64d2d20e518e77 = external constant [0 x i8]
@olang_loc_19fd7578c5cb7196_ea7f2a837a8496c2 = external constant [0 x i8]
declare i64 @std_2fjson_2enameHash_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fjson_2esameName_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6a96f216a7a18db5_c7851721732fae9 = external constant [0 x i8]
@olang_loc_2a2c934c6745fec4_9721022dc2e60418 = external constant [0 x i8]
@olang_loc_247b9c864b1325ff_f9e87c5eec2e2b33 = external constant [0 x i8]
@olang_loc_7a4bfc7c7b524c63_98397af697b8e9df = external constant [0 x i8]
@olang_loc_fa9f38c9682d865a_6f1f2fc1eaeb7f26 = external constant [0 x i8]
@olang_loc_c3fd3a937aadf066_df3562c3c4e6c4da = external constant [0 x i8]
@olang_loc_9bf067a17252b335_30d904505e687d39 = external constant [0 x i8]
@olang_loc_d2781e368edd9e2f_3a33f3735a4c4ba3 = external constant [0 x i8]
@olang_loc_a7b0a92300089828_a6e8a6d400231804 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_a07ba4d7ff0a56f9_d8356302010b83f5 = external constant [0 x i8]
@olang_loc_22f1698915dd4682_a0313dce564b9a3e = external constant [0 x i8]
declare { i32, i64 } @std_2fjson_2estd_2fjson_3aObject_2efind_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_e7435678738af803_3f3d624b6ec28d3f = external constant [0 x i8]
@olang_loc_cd6f075822d3ba64_2e9ce5061183e548 = external constant [0 x i8]
@olang_loc_a95109d49c9a5ab2_e7f3aa33cdaf23de = external constant [0 x i8]
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eHash(ptr %v0, { i64, ptr } %a0)
@olang_loc_664da5dbc2e51de6_83a7e6ee135f5f2a = external constant [0 x i8]
declare { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
@olang_loc_3d7deb9fd92cdf7_48602bd2c42c5c33 = external constant [0 x i8]
@olang_loc_4cf869d60c4ca172_ef56e6f5157a9496 = external constant [0 x i8]
@olang_loc_a4e4729341d0d567_917d86fd422044ab = external constant [0 x i8]
@olang_loc_78dc4052a96c39eb_b95510f79f72ba17 = external constant [0 x i8]
declare i64 @std_2fprelude_2fnumber_2eI64_2eMin_3cI64_3e(i64 %a0, i64 %a1)
@olang_loc_9ab7127216e6ddd3_9523f6c3485c577 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseUint(ptr %v0, { i64, ptr } %a0, i64 %a1)
@olang_loc_1d597537a8745baf_fba5a5429ece169b = external constant [0 x i8]
declare { i32, double } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseFloat(ptr %v0, { i64, ptr } %a0)
@olang_loc_85df472c87ddc01c_576e573e0ca51428 = external constant [0 x i8]
@olang_loc_99863128c17f1e9_63398a4432912015 = external constant [0 x i8]
@olang_loc_8fccbc1a4d1c0f20_785a6b4725d4309c = external constant [0 x i8]
@olang_loc_5eafb5e9a23aa169_cec655d358f6ab8d = external constant [0 x i8]
@olang_loc_3a08abdf75e4d0df_f65d8e83429a56b3 = external constant [0 x i8]
@olang_loc_c68c402cf703814a_d8009281770a12f6 = external constant [0 x i8]
@olang_loc_f95a6a8592b17009_1182728235effc15 = external constant [0 x i8]
@olang_loc_b05733ff18c427e5_772a385d9f13c959 = external constant [0 x i8]
@olang_loc_619d2740d221a188_b21ca0b40d9629ac = external constant [0 x i8]
@olang_loc_a9bf92283d37587a_a12d0c4bd2035d0e = external constant [0 x i8]
@olang_loc_a9d90acfb58a0efc_8cee310d77323458 = external constant [0 x i8]
@olang_loc_b0f269ec47121b49_ffa527191fa405c5 = external constant [0 x i8]
@olang_loc_2b7d333750119e8a_5164bda0dfbd4ba6 = external constant [0 x i8]
@olang_loc_8e53cae89060ac5f_4eb6599badda6f3b = external constant [0 x i8]

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
