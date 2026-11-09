source_filename = "bench_regex.main.quick.ll"
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
%"std/regex:Regex" = type { ptr }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"std/regex:Match" = type { { i64, ptr }, { i64, ptr }, i64, i64 }
%"std/regex:node" = type { i64, i64, i64, i64, i64, i1, i1, i1 }
define dso_local i32 @bench_2fregex_2emain() #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca [10 x { i64, ptr }]
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca i32
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/regex:Regex"
  %l7 = alloca %"std/regex:Regex"
  %l8 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i64
  %l16 = alloca i32
  %l17 = alloca i32
  %l21 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca i32
  %l29 = alloca { i64, ptr }
  %l31 = alloca [10 x { i64, ptr }]
  %l32 = alloca %"std/prelude/text:StringBuilder"
  %l34 = alloca i64
  %l47 = alloca ptr
  %l52 = alloca i8
  %l54 = alloca { i64, ptr }
  %l55 = alloca %"std/regex:Regex"
  %l56 = alloca %"std/regex:Regex"
  %l57 = alloca i32
  %l61 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l103 = alloca %"std/regex:Regex"
  %l104 = alloca %"std/regex:Regex"
  %l105 = alloca i32
  %l109 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l139 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l153 = alloca i64
  %l156 = alloca i64
  %l159 = alloca i32
  %l160 = alloca i32
  %l164 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s3 = alloca %olang.builder
  %s3room = alloca [64 x i8], align 8
  %s5 = alloca %olang.builder
  %s5room = alloca [64 x i8], align 8
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s7 = alloca %olang.builder
  %s7room = alloca [64 x i8], align 8
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %s9 = alloca %olang.builder
  %s9room = alloca [64 x i8], align 8
  %s10 = alloca %olang.builder
  %s10room = alloca [64 x i8], align 8
  %s11 = alloca %olang.builder
  %s11room = alloca [64 x i8], align 8
  %s12 = alloca %olang.builder
  %s12room = alloca [64 x i8], align 8
  %s13 = alloca %olang.builder
  %s13room = alloca [64 x i8], align 8
  %s14 = alloca %olang.builder
  %s14room = alloca [64 x i8], align 8
  %s15 = alloca %olang.builder
  %s15room = alloca [64 x i8], align 8
  %s16 = alloca %olang.builder
  %s16room = alloca [64 x i8], align 8
  %s17 = alloca %olang.builder
  %s17room = alloca [64 x i8], align 8
  %s18 = alloca %olang.builder
  %s18room = alloca [64 x i8], align 8
  %s19 = alloca %olang.builder
  %s19room = alloca [64 x i8], align 8
  %s20 = alloca %olang.builder
  %s20room = alloca [64 x i8], align 8
  %s21 = alloca %olang.builder
  %s21room = alloca [64 x i8], align 8
  %s22 = alloca %olang.builder
  %s22room = alloca [64 x i8], align 8
  %s24 = alloca %olang.builder
  %s24room = alloca [64 x i8], align 8
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i64, ptr } @std_2fos_2eArgs(ptr %s0)
  store { i64, ptr } %t1, ptr %l8
  br label %bb1
bb1:
  %t2 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t2, ptr %l0, !tbaa !27
  store i64 4, ptr %l1, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  %t7 = icmp sgt i64 %t5, 1
  br i1 %t7, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t9, ptr %l13, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %t11, i64 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !37
  store { i64, ptr } %t13, ptr %l14, !tbaa !27
  %t14 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 10)
  %t15 = extractvalue { i32, i64 } %t14, 1
  %t16 = extractvalue { i32, i64 } %t14, 0
  store i32 %t16, ptr %l16
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb5, label %ok.18, !prof !99
ok.18:
  store i64 %t15, ptr %l15
  br label %bb4
bb3:
  br label %bb13
bb4:
  %t19 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s0, { i64, ptr } %t19, i64 %t20)
  %t22 = extractvalue { i32, i64 } %t21, 1
  %t23 = extractvalue { i32, i64 } %t21, 0
  store i32 %t23, ptr %l24
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb9, label %ok.25, !prof !99
ok.25:
  store i64 %t22, ptr %l23
  br label %bb8
bb5:
  %t26 = load i32, ptr %l16, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 0, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  store i32 %t34, ptr %l17, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t35 = load i32, ptr %l17, !tbaa !23
  %t36 = icmp eq i32 %t35, 65537
  br i1 %t36, label %bb6, label %bb7
bb6:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t38 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t38, i64 %t39)
  %t40 = call ptr @__olang_errpay_top_get()
  %t41 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t41, i64 %t42)
  %t44 = getelementptr { i64, [1 x i64] }, ptr %t40, i32 0, i32 1
  %t45 = getelementptr { i64 }, ptr %t44, i32 0, i32 0
  %t46 = load i64, ptr %t45
  %t48 = call ptr @__olang_sb_room(ptr %s2, i64 24)
  %t49 = call i64 @__olang_fmt_i64(ptr %t48, i64 %t46)
  call void @__olang_sb_add(ptr %s2, i64 %t49)
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t51 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s2, ptr %t50, i64 %t51)
  %t52 = load ptr, ptr %s2
  %t53 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t54 = load i64, ptr %t53
  %t55 = load ptr, ptr @__olang_prog_scope
  %t56 = call ptr @__olang_scope_alloc(ptr %t55, i64 %t54)
  call void @olang_textcopy(ptr %t56, ptr %t52, i64 %t54)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l21, !tbaa !27
  %t59 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t60 = load ptr, ptr %t59
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %sbgrew.62, label %sbdone.63
sbgrew.62:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.63
sbdone.63:
  %t64 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t65 = load ptr, ptr @__olang_prog_scope
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t67 = extractvalue { i64, ptr } %t64, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %t65, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t73 = extractvalue { i64, ptr } %t71, 1
  %t74 = extractvalue { i64, ptr } %t71, 0
  %t75 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t73, 1
  call void @__olang_unhandled_text({ i64, ptr } %t76, i1 false)
  unreachable
bb7:
  %t77 = load i32, ptr %l17, !tbaa !23
  store i32 %t77, ptr %rv
  br label %ret
bb8:
  %t78 = load i64, ptr %l23, !tbaa !24
  store i64 %t78, ptr %l12, !tbaa !24
  br label %bb12
bb9:
  %t79 = load i32, ptr %l24, !tbaa !23
  %t80 = lshr i32 %t79, 16
  %t81 = and i32 %t79, 65535
  %t82 = icmp eq i32 %t80, 1
  %t83 = select i1 %t82, i32 2, i32 0
  %t84 = icmp eq i32 %t79, 0
  %t85 = shl i32 %t83, 16
  %t86 = or i32 %t85, %t81
  %t87 = select i1 %t84, i32 0, i32 %t86
  store i32 %t87, ptr %l25, !tbaa !23
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t88 = load i32, ptr %l25, !tbaa !23
  %t89 = icmp eq i32 %t88, 65537
  br i1 %t89, label %bb10, label %bb11
bb10:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s3
  store ptr %s3room, ptr %s3
  %t91 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t91, i64 %t92)
  %t93 = call ptr @__olang_errpay_top_get()
  %t94 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t95 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t94, i64 %t95)
  %t97 = getelementptr { i64, [1 x i64] }, ptr %t93, i32 0, i32 1
  %t98 = getelementptr { i64 }, ptr %t97, i32 0, i32 0
  %t99 = load i64, ptr %t98
  %t101 = call ptr @__olang_sb_room(ptr %s3, i64 24)
  %t102 = call i64 @__olang_fmt_i64(ptr %t101, i64 %t99)
  call void @__olang_sb_add(ptr %s3, i64 %t102)
  %t103 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s3, ptr %t103, i64 %t104)
  %t105 = load ptr, ptr %s3
  %t106 = getelementptr %olang.builder, ptr %s3, i32 0, i32 1
  %t107 = load i64, ptr %t106
  %t108 = load ptr, ptr @__olang_prog_scope
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t107)
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t107)
  %t110 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  store { i64, ptr } %t111, ptr %l29, !tbaa !27
  %t112 = getelementptr %olang.builder, ptr %s3, i32 0, i32 3
  %t113 = load ptr, ptr %t112
  %t114 = icmp ne ptr %t113, null
  br i1 %t114, label %sbgrew.115, label %sbdone.116
sbgrew.115:
  call void @__olang_sb_done(ptr %s3)
  br label %sbdone.116
sbdone.116:
  %t117 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t118 = load ptr, ptr @__olang_prog_scope
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t120 = extractvalue { i64, ptr } %t117, 1
  %t121 = mul i64 %t119, 1
  %t122 = call ptr @__olang_scope_alloc(ptr %t118, i64 %t121)
  call void @llvm.memcpy.p0.p0.i64(ptr %t122, ptr %t120, i64 %t121, i1 false)
  %t123 = insertvalue { i64, ptr } undef, i64 %t119, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t122, 1
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = extractvalue { i64, ptr } %t124, 0
  %t128 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  call void @__olang_unhandled_text({ i64, ptr } %t129, i1 false)
  unreachable
bb11:
  %t130 = load i32, ptr %l25, !tbaa !23
  store i32 %t130, ptr %rv
  br label %ret
bb12:
  %t131 = load i64, ptr %l12, !tbaa !24
  store i64 %t131, ptr %l1, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  %t132 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 0
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) }, ptr %t132, !tbaa !37
  %t133 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 1
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %t133, !tbaa !37
  %t134 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 2
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %t134, !tbaa !37
  %t135 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 3
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %t135, !tbaa !37
  %t136 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 4
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %t136, !tbaa !37
  %t137 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 5
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %t137, !tbaa !37
  %t138 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 6
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %t138, !tbaa !37
  %t139 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 7
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %t139, !tbaa !37
  %t140 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 8
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %t140, !tbaa !37
  %t141 = getelementptr [10 x { i64, ptr }], ptr %l31, i64 0, i64 9
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %t141, !tbaa !37
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l31, i64 160, i1 false)
  %t142 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t142, ptr %l32
  br label %bb14
bb14:
  %t143 = load %"std/prelude/text:StringBuilder", ptr %l32
  store %"std/prelude/text:StringBuilder" %t143, ptr %l3
  store i32 1, ptr %l4, !tbaa !64
  br label %bb15
bb15:
  %t145 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l3)
  store i64 %t145, ptr %l34
  br label %bb16
bb16:
  %t146 = load i64, ptr %l1, !tbaa !24
  %t148 = mul i64 %t146, 1048576
  %t149 = load i64, ptr %l34, !tbaa !24
  %t151 = icmp slt i64 %t149, %t148
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb17, label %bb18
bb17:
  br label %bb26
bb18:
  br label %bb19
bb19:
  %t155 = load i32, ptr %l4, !tbaa !64
  %t157 = mul i32 %t155, 1664525
  %t159 = add i32 %t157, 1013904223
  store i32 %t159, ptr %l4, !tbaa !64
  %t161 = load i32, ptr %l4, !tbaa !64
  %t163 = lshr i32 %t161, 16
  %t165 = urem i32 %t163, 10
  %t167 = zext i32 %t165 to i64
  %t168 = getelementptr [10 x { i64, ptr }], ptr %l2, i64 0, i64 %t167
  %t169 = load { i64, ptr }, ptr %t168, !tbaa !37
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t169)
  br label %bb20
bb20:
  store ptr %l3, ptr %l47, !tbaa !29
  %t172 = load i32, ptr %l4, !tbaa !64
  %t174 = lshr i32 %t172, 8
  %t176 = urem i32 %t174, 7
  %t178 = icmp ne i32 %t176, 0
  br i1 %t178, label %bb21, label %bb22
bb21:
  store i8 32, ptr %l52, !tbaa !22
  br label %bb23
bb22:
  store i8 10, ptr %l52, !tbaa !22
  br label %bb23
bb23:
  %t180 = load ptr, ptr %l47, !tbaa !29
  %t181 = load i8, ptr %l52, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t180, i8 %t181)
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb15
bb26:
  %t183 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l3)
  store { i64, ptr } %t183, ptr %l54
  br label %bb27
bb27:
  %t184 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t184, ptr %l5, !tbaa !27
  %t185 = call { i32, %"std/regex:Regex" } @std_2fregex_2eRegex_2eCompile(ptr %s0, ptr %s0, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d16, i32 0, i32 1) })
  %t186 = extractvalue { i32, %"std/regex:Regex" } %t185, 1
  %t187 = extractvalue { i32, %"std/regex:Regex" } %t185, 0
  store i32 %t187, ptr %l57
  %t188 = icmp ne i32 %t187, 0
  br i1 %t188, label %bb29, label %ok.189, !prof !99
ok.189:
  store %"std/regex:Regex" %t186, ptr %l56
  br label %bb28
bb28:
  %t190 = load %"std/regex:Regex", ptr %l56
  store %"std/regex:Regex" %t190, ptr %l55
  br label %bb48
bb29:
  %t191 = load i32, ptr %l57, !tbaa !23
  %t192 = icmp eq i32 %t191, 65536
  br i1 %t192, label %bb30, label %bb31
bb30:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s5
  store ptr %s5room, ptr %s5
  %t194 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t195 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t194, i64 %t195)
  %t196 = call ptr @__olang_errpay_top_get()
  %t197 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t198 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t197, i64 %t198)
  %t200 = getelementptr { i64, [1 x i64] }, ptr %t196, i32 0, i32 1
  %t201 = getelementptr { i64 }, ptr %t200, i32 0, i32 0
  %t202 = load i64, ptr %t201
  %t204 = call ptr @__olang_sb_room(ptr %s5, i64 24)
  %t205 = call i64 @__olang_fmt_i64(ptr %t204, i64 %t202)
  call void @__olang_sb_add(ptr %s5, i64 %t205)
  %t206 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t207 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s5, ptr %t206, i64 %t207)
  %t208 = load ptr, ptr %s5
  %t209 = getelementptr %olang.builder, ptr %s5, i32 0, i32 1
  %t210 = load i64, ptr %t209
  %t211 = load ptr, ptr @__olang_prog_scope
  %t212 = call ptr @__olang_scope_alloc(ptr %t211, i64 %t210)
  call void @olang_textcopy(ptr %t212, ptr %t208, i64 %t210)
  %t213 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t214 = insertvalue { i64, ptr } %t213, ptr %t212, 1
  store { i64, ptr } %t214, ptr %l61, !tbaa !27
  %t215 = getelementptr %olang.builder, ptr %s5, i32 0, i32 3
  %t216 = load ptr, ptr %t215
  %t217 = icmp ne ptr %t216, null
  br i1 %t217, label %sbgrew.218, label %sbdone.219
sbgrew.218:
  call void @__olang_sb_done(ptr %s5)
  br label %sbdone.219
sbdone.219:
  %t220 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t221 = load ptr, ptr @__olang_prog_scope
  %t222 = extractvalue { i64, ptr } %t220, 0
  %t223 = extractvalue { i64, ptr } %t220, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %t221, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  %t229 = extractvalue { i64, ptr } %t227, 1
  %t230 = extractvalue { i64, ptr } %t227, 0
  %t231 = insertvalue { i64, ptr } undef, i64 %t230, 0
  %t232 = insertvalue { i64, ptr } %t231, ptr %t229, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t232, i1 false)
  unreachable
bb31:
  %t233 = load i32, ptr %l57, !tbaa !23
  %t234 = icmp eq i32 %t233, 65537
  br i1 %t234, label %bb32, label %bb33
bb32:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t236 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t236, i64 %t237)
  %t238 = call ptr @__olang_errpay_top_get()
  %t239 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t240 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t239, i64 %t240)
  %t242 = getelementptr { i64, [1 x i64] }, ptr %t238, i32 0, i32 1
  %t243 = getelementptr { i64 }, ptr %t242, i32 0, i32 0
  %t244 = load i64, ptr %t243
  %t246 = call ptr @__olang_sb_room(ptr %s6, i64 24)
  %t247 = call i64 @__olang_fmt_i64(ptr %t246, i64 %t244)
  call void @__olang_sb_add(ptr %s6, i64 %t247)
  %t248 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t249 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s6, ptr %t248, i64 %t249)
  %t250 = load ptr, ptr %s6
  %t251 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t252 = load i64, ptr %t251
  %t253 = load ptr, ptr @__olang_prog_scope
  %t254 = call ptr @__olang_scope_alloc(ptr %t253, i64 %t252)
  call void @olang_textcopy(ptr %t254, ptr %t250, i64 %t252)
  %t255 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  store { i64, ptr } %t256, ptr %l66, !tbaa !27
  %t257 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t258 = load ptr, ptr %t257
  %t259 = icmp ne ptr %t258, null
  br i1 %t259, label %sbgrew.260, label %sbdone.261
sbgrew.260:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.261
sbdone.261:
  %t262 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t263 = load ptr, ptr @__olang_prog_scope
  %t264 = extractvalue { i64, ptr } %t262, 0
  %t265 = extractvalue { i64, ptr } %t262, 1
  %t266 = mul i64 %t264, 1
  %t267 = call ptr @__olang_scope_alloc(ptr %t263, i64 %t266)
  call void @llvm.memcpy.p0.p0.i64(ptr %t267, ptr %t265, i64 %t266, i1 false)
  %t268 = insertvalue { i64, ptr } undef, i64 %t264, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t267, 1
  %t271 = extractvalue { i64, ptr } %t269, 1
  %t272 = extractvalue { i64, ptr } %t269, 0
  %t273 = insertvalue { i64, ptr } undef, i64 %t272, 0
  %t274 = insertvalue { i64, ptr } %t273, ptr %t271, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t274, i1 false)
  unreachable
bb33:
  %t275 = load i32, ptr %l57, !tbaa !23
  %t276 = icmp eq i32 %t275, 65538
  br i1 %t276, label %bb34, label %bb35
bb34:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s7
  store ptr %s7room, ptr %s7
  %t278 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t279 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s7, ptr %t278, i64 %t279)
  %t280 = call ptr @__olang_errpay_top_get()
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t282 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s7, ptr %t281, i64 %t282)
  %t284 = getelementptr { i64, [1 x i64] }, ptr %t280, i32 0, i32 1
  %t285 = getelementptr { i64 }, ptr %t284, i32 0, i32 0
  %t286 = load i64, ptr %t285
  %t288 = call ptr @__olang_sb_room(ptr %s7, i64 24)
  %t289 = call i64 @__olang_fmt_i64(ptr %t288, i64 %t286)
  call void @__olang_sb_add(ptr %s7, i64 %t289)
  %t290 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t291 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s7, ptr %t290, i64 %t291)
  %t292 = load ptr, ptr %s7
  %t293 = getelementptr %olang.builder, ptr %s7, i32 0, i32 1
  %t294 = load i64, ptr %t293
  %t295 = load ptr, ptr @__olang_prog_scope
  %t296 = call ptr @__olang_scope_alloc(ptr %t295, i64 %t294)
  call void @olang_textcopy(ptr %t296, ptr %t292, i64 %t294)
  %t297 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t298 = insertvalue { i64, ptr } %t297, ptr %t296, 1
  store { i64, ptr } %t298, ptr %l71, !tbaa !27
  %t299 = getelementptr %olang.builder, ptr %s7, i32 0, i32 3
  %t300 = load ptr, ptr %t299
  %t301 = icmp ne ptr %t300, null
  br i1 %t301, label %sbgrew.302, label %sbdone.303
sbgrew.302:
  call void @__olang_sb_done(ptr %s7)
  br label %sbdone.303
sbdone.303:
  %t304 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t305 = load ptr, ptr @__olang_prog_scope
  %t306 = extractvalue { i64, ptr } %t304, 0
  %t307 = extractvalue { i64, ptr } %t304, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %t305, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = extractvalue { i64, ptr } %t311, 0
  %t315 = insertvalue { i64, ptr } undef, i64 %t314, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t313, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t316, i1 false)
  unreachable
bb35:
  %t317 = load i32, ptr %l57, !tbaa !23
  %t318 = icmp eq i32 %t317, 65539
  br i1 %t318, label %bb36, label %bb37
bb36:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  %t320 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t321 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t320, i64 %t321)
  %t322 = call ptr @__olang_errpay_top_get()
  %t323 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t324 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t323, i64 %t324)
  %t326 = getelementptr { i64, [1 x i64] }, ptr %t322, i32 0, i32 1
  %t327 = getelementptr { i64 }, ptr %t326, i32 0, i32 0
  %t328 = load i64, ptr %t327
  %t330 = call ptr @__olang_sb_room(ptr %s8, i64 24)
  %t331 = call i64 @__olang_fmt_i64(ptr %t330, i64 %t328)
  call void @__olang_sb_add(ptr %s8, i64 %t331)
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s8, ptr %t332, i64 %t333)
  %t334 = load ptr, ptr %s8
  %t335 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t336 = load i64, ptr %t335
  %t337 = load ptr, ptr @__olang_prog_scope
  %t338 = call ptr @__olang_scope_alloc(ptr %t337, i64 %t336)
  call void @olang_textcopy(ptr %t338, ptr %t334, i64 %t336)
  %t339 = insertvalue { i64, ptr } undef, i64 %t336, 0
  %t340 = insertvalue { i64, ptr } %t339, ptr %t338, 1
  store { i64, ptr } %t340, ptr %l76, !tbaa !27
  %t341 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t342 = load ptr, ptr %t341
  %t343 = icmp ne ptr %t342, null
  br i1 %t343, label %sbgrew.344, label %sbdone.345
sbgrew.344:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.345
sbdone.345:
  %t346 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t347 = load ptr, ptr @__olang_prog_scope
  %t348 = extractvalue { i64, ptr } %t346, 0
  %t349 = extractvalue { i64, ptr } %t346, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %t347, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t355 = extractvalue { i64, ptr } %t353, 1
  %t356 = extractvalue { i64, ptr } %t353, 0
  %t357 = insertvalue { i64, ptr } undef, i64 %t356, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t355, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t358, i1 false)
  unreachable
bb37:
  %t359 = load i32, ptr %l57, !tbaa !23
  %t360 = icmp eq i32 %t359, 65540
  br i1 %t360, label %bb38, label %bb39
bb38:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s9
  store ptr %s9room, ptr %s9
  %t362 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t363 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t362, i64 %t363)
  %t364 = call ptr @__olang_errpay_top_get()
  %t365 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t366 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t365, i64 %t366)
  %t368 = getelementptr { i64, [1 x i64] }, ptr %t364, i32 0, i32 1
  %t369 = getelementptr { i64 }, ptr %t368, i32 0, i32 0
  %t370 = load i64, ptr %t369
  %t372 = call ptr @__olang_sb_room(ptr %s9, i64 24)
  %t373 = call i64 @__olang_fmt_i64(ptr %t372, i64 %t370)
  call void @__olang_sb_add(ptr %s9, i64 %t373)
  %t374 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t375 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s9, ptr %t374, i64 %t375)
  %t376 = load ptr, ptr %s9
  %t377 = getelementptr %olang.builder, ptr %s9, i32 0, i32 1
  %t378 = load i64, ptr %t377
  %t379 = load ptr, ptr @__olang_prog_scope
  %t380 = call ptr @__olang_scope_alloc(ptr %t379, i64 %t378)
  call void @olang_textcopy(ptr %t380, ptr %t376, i64 %t378)
  %t381 = insertvalue { i64, ptr } undef, i64 %t378, 0
  %t382 = insertvalue { i64, ptr } %t381, ptr %t380, 1
  store { i64, ptr } %t382, ptr %l81, !tbaa !27
  %t383 = getelementptr %olang.builder, ptr %s9, i32 0, i32 3
  %t384 = load ptr, ptr %t383
  %t385 = icmp ne ptr %t384, null
  br i1 %t385, label %sbgrew.386, label %sbdone.387
sbgrew.386:
  call void @__olang_sb_done(ptr %s9)
  br label %sbdone.387
sbdone.387:
  %t388 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t389 = load ptr, ptr @__olang_prog_scope
  %t390 = extractvalue { i64, ptr } %t388, 0
  %t391 = extractvalue { i64, ptr } %t388, 1
  %t392 = mul i64 %t390, 1
  %t393 = call ptr @__olang_scope_alloc(ptr %t389, i64 %t392)
  call void @llvm.memcpy.p0.p0.i64(ptr %t393, ptr %t391, i64 %t392, i1 false)
  %t394 = insertvalue { i64, ptr } undef, i64 %t390, 0
  %t395 = insertvalue { i64, ptr } %t394, ptr %t393, 1
  %t397 = extractvalue { i64, ptr } %t395, 1
  %t398 = extractvalue { i64, ptr } %t395, 0
  %t399 = insertvalue { i64, ptr } undef, i64 %t398, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t397, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t400, i1 false)
  unreachable
bb39:
  %t401 = load i32, ptr %l57, !tbaa !23
  %t402 = icmp eq i32 %t401, 65541
  br i1 %t402, label %bb40, label %bb41
bb40:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s10
  store ptr %s10room, ptr %s10
  %t404 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t405 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t404, i64 %t405)
  %t406 = call ptr @__olang_errpay_top_get()
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t407, i64 %t408)
  %t410 = getelementptr { i64, [1 x i64] }, ptr %t406, i32 0, i32 1
  %t411 = getelementptr { i64 }, ptr %t410, i32 0, i32 0
  %t412 = load i64, ptr %t411
  %t414 = call ptr @__olang_sb_room(ptr %s10, i64 24)
  %t415 = call i64 @__olang_fmt_i64(ptr %t414, i64 %t412)
  call void @__olang_sb_add(ptr %s10, i64 %t415)
  %t416 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t417 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s10, ptr %t416, i64 %t417)
  %t418 = load ptr, ptr %s10
  %t419 = getelementptr %olang.builder, ptr %s10, i32 0, i32 1
  %t420 = load i64, ptr %t419
  %t421 = load ptr, ptr @__olang_prog_scope
  %t422 = call ptr @__olang_scope_alloc(ptr %t421, i64 %t420)
  call void @olang_textcopy(ptr %t422, ptr %t418, i64 %t420)
  %t423 = insertvalue { i64, ptr } undef, i64 %t420, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr %t422, 1
  store { i64, ptr } %t424, ptr %l86, !tbaa !27
  %t425 = getelementptr %olang.builder, ptr %s10, i32 0, i32 3
  %t426 = load ptr, ptr %t425
  %t427 = icmp ne ptr %t426, null
  br i1 %t427, label %sbgrew.428, label %sbdone.429
sbgrew.428:
  call void @__olang_sb_done(ptr %s10)
  br label %sbdone.429
sbdone.429:
  %t430 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t431 = load ptr, ptr @__olang_prog_scope
  %t432 = extractvalue { i64, ptr } %t430, 0
  %t433 = extractvalue { i64, ptr } %t430, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %t431, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  %t439 = extractvalue { i64, ptr } %t437, 1
  %t440 = extractvalue { i64, ptr } %t437, 0
  %t441 = insertvalue { i64, ptr } undef, i64 %t440, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t439, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t442, i1 false)
  unreachable
bb41:
  %t443 = load i32, ptr %l57, !tbaa !23
  %t444 = icmp eq i32 %t443, 65542
  br i1 %t444, label %bb42, label %bb43
bb42:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s11
  store ptr %s11room, ptr %s11
  %t446 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t447 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s11, ptr %t446, i64 %t447)
  %t448 = call ptr @__olang_errpay_top_get()
  %t449 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s11, ptr %t449, i64 %t450)
  %t452 = getelementptr { i64, [1 x i64] }, ptr %t448, i32 0, i32 1
  %t453 = getelementptr { i64 }, ptr %t452, i32 0, i32 0
  %t454 = load i64, ptr %t453
  %t456 = call ptr @__olang_sb_room(ptr %s11, i64 24)
  %t457 = call i64 @__olang_fmt_i64(ptr %t456, i64 %t454)
  call void @__olang_sb_add(ptr %s11, i64 %t457)
  %t458 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t459 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s11, ptr %t458, i64 %t459)
  %t460 = load ptr, ptr %s11
  %t461 = getelementptr %olang.builder, ptr %s11, i32 0, i32 1
  %t462 = load i64, ptr %t461
  %t463 = load ptr, ptr @__olang_prog_scope
  %t464 = call ptr @__olang_scope_alloc(ptr %t463, i64 %t462)
  call void @olang_textcopy(ptr %t464, ptr %t460, i64 %t462)
  %t465 = insertvalue { i64, ptr } undef, i64 %t462, 0
  %t466 = insertvalue { i64, ptr } %t465, ptr %t464, 1
  store { i64, ptr } %t466, ptr %l91, !tbaa !27
  %t467 = getelementptr %olang.builder, ptr %s11, i32 0, i32 3
  %t468 = load ptr, ptr %t467
  %t469 = icmp ne ptr %t468, null
  br i1 %t469, label %sbgrew.470, label %sbdone.471
sbgrew.470:
  call void @__olang_sb_done(ptr %s11)
  br label %sbdone.471
sbdone.471:
  %t472 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t473 = load ptr, ptr @__olang_prog_scope
  %t474 = extractvalue { i64, ptr } %t472, 0
  %t475 = extractvalue { i64, ptr } %t472, 1
  %t476 = mul i64 %t474, 1
  %t477 = call ptr @__olang_scope_alloc(ptr %t473, i64 %t476)
  call void @llvm.memcpy.p0.p0.i64(ptr %t477, ptr %t475, i64 %t476, i1 false)
  %t478 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t477, 1
  %t481 = extractvalue { i64, ptr } %t479, 1
  %t482 = extractvalue { i64, ptr } %t479, 0
  %t483 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t484 = insertvalue { i64, ptr } %t483, ptr %t481, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t484, i1 false)
  unreachable
bb43:
  %t485 = load i32, ptr %l57, !tbaa !23
  %t486 = icmp eq i32 %t485, 65543
  br i1 %t486, label %bb44, label %bb45
bb44:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s12
  store ptr %s12room, ptr %s12
  %t488 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t489 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s12, ptr %t488, i64 %t489)
  %t490 = call ptr @__olang_errpay_top_get()
  %t491 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t492 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s12, ptr %t491, i64 %t492)
  %t494 = getelementptr { i64, [1 x i64] }, ptr %t490, i32 0, i32 1
  %t495 = getelementptr { i64 }, ptr %t494, i32 0, i32 0
  %t496 = load i64, ptr %t495
  %t498 = call ptr @__olang_sb_room(ptr %s12, i64 24)
  %t499 = call i64 @__olang_fmt_i64(ptr %t498, i64 %t496)
  call void @__olang_sb_add(ptr %s12, i64 %t499)
  %t500 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t501 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s12, ptr %t500, i64 %t501)
  %t502 = load ptr, ptr %s12
  %t503 = getelementptr %olang.builder, ptr %s12, i32 0, i32 1
  %t504 = load i64, ptr %t503
  %t505 = load ptr, ptr @__olang_prog_scope
  %t506 = call ptr @__olang_scope_alloc(ptr %t505, i64 %t504)
  call void @olang_textcopy(ptr %t506, ptr %t502, i64 %t504)
  %t507 = insertvalue { i64, ptr } undef, i64 %t504, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  store { i64, ptr } %t508, ptr %l96, !tbaa !27
  %t509 = getelementptr %olang.builder, ptr %s12, i32 0, i32 3
  %t510 = load ptr, ptr %t509
  %t511 = icmp ne ptr %t510, null
  br i1 %t511, label %sbgrew.512, label %sbdone.513
sbgrew.512:
  call void @__olang_sb_done(ptr %s12)
  br label %sbdone.513
sbdone.513:
  %t514 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t515 = load ptr, ptr @__olang_prog_scope
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t517 = extractvalue { i64, ptr } %t514, 1
  %t518 = mul i64 %t516, 1
  %t519 = call ptr @__olang_scope_alloc(ptr %t515, i64 %t518)
  call void @llvm.memcpy.p0.p0.i64(ptr %t519, ptr %t517, i64 %t518, i1 false)
  %t520 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t521 = insertvalue { i64, ptr } %t520, ptr %t519, 1
  %t523 = extractvalue { i64, ptr } %t521, 1
  %t524 = extractvalue { i64, ptr } %t521, 0
  %t525 = insertvalue { i64, ptr } undef, i64 %t524, 0
  %t526 = insertvalue { i64, ptr } %t525, ptr %t523, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t526, i1 false)
  unreachable
bb45:
  %t527 = load i32, ptr %l57, !tbaa !23
  %t528 = icmp eq i32 %t527, 65544
  br i1 %t528, label %bb46, label %bb47
bb46:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s13
  store ptr %s13room, ptr %s13
  %t530 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t531 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s13, ptr %t530, i64 %t531)
  %t532 = call ptr @__olang_errpay_top_get()
  %t533 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t534 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s13, ptr %t533, i64 %t534)
  %t536 = getelementptr { i64, [1 x i64] }, ptr %t532, i32 0, i32 1
  %t537 = getelementptr { i64 }, ptr %t536, i32 0, i32 0
  %t538 = load i64, ptr %t537
  %t540 = call ptr @__olang_sb_room(ptr %s13, i64 24)
  %t541 = call i64 @__olang_fmt_i64(ptr %t540, i64 %t538)
  call void @__olang_sb_add(ptr %s13, i64 %t541)
  %t542 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t543 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s13, ptr %t542, i64 %t543)
  %t544 = load ptr, ptr %s13
  %t545 = getelementptr %olang.builder, ptr %s13, i32 0, i32 1
  %t546 = load i64, ptr %t545
  %t547 = load ptr, ptr @__olang_prog_scope
  %t548 = call ptr @__olang_scope_alloc(ptr %t547, i64 %t546)
  call void @olang_textcopy(ptr %t548, ptr %t544, i64 %t546)
  %t549 = insertvalue { i64, ptr } undef, i64 %t546, 0
  %t550 = insertvalue { i64, ptr } %t549, ptr %t548, 1
  store { i64, ptr } %t550, ptr %l101, !tbaa !27
  %t551 = getelementptr %olang.builder, ptr %s13, i32 0, i32 3
  %t552 = load ptr, ptr %t551
  %t553 = icmp ne ptr %t552, null
  br i1 %t553, label %sbgrew.554, label %sbdone.555
sbgrew.554:
  call void @__olang_sb_done(ptr %s13)
  br label %sbdone.555
sbdone.555:
  %t556 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t557 = load ptr, ptr @__olang_prog_scope
  %t558 = extractvalue { i64, ptr } %t556, 0
  %t559 = extractvalue { i64, ptr } %t556, 1
  %t560 = mul i64 %t558, 1
  %t561 = call ptr @__olang_scope_alloc(ptr %t557, i64 %t560)
  call void @llvm.memcpy.p0.p0.i64(ptr %t561, ptr %t559, i64 %t560, i1 false)
  %t562 = insertvalue { i64, ptr } undef, i64 %t558, 0
  %t563 = insertvalue { i64, ptr } %t562, ptr %t561, 1
  %t565 = extractvalue { i64, ptr } %t563, 1
  %t566 = extractvalue { i64, ptr } %t563, 0
  %t567 = insertvalue { i64, ptr } undef, i64 %t566, 0
  %t568 = insertvalue { i64, ptr } %t567, ptr %t565, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_75308306ced9f1b4_1c351974e94caeb0, { i64, ptr } %t568, i1 false)
  unreachable
bb47:
  call void @__olang_bang_failed_plain(ptr @olang_loc_68485776b1cc6dcc_665cbff08c0c11a0)
  unreachable
bb48:
  %t569 = load %"std/regex:Regex", ptr %l55
  store %"std/regex:Regex" %t569, ptr %l6
  %t570 = call { i32, %"std/regex:Regex" } @std_2fregex_2eRegex_2eCompile(ptr %s0, ptr %s0, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d28, i32 0, i32 1) })
  %t571 = extractvalue { i32, %"std/regex:Regex" } %t570, 1
  %t572 = extractvalue { i32, %"std/regex:Regex" } %t570, 0
  store i32 %t572, ptr %l105
  %t573 = icmp ne i32 %t572, 0
  br i1 %t573, label %bb50, label %ok.574, !prof !99
ok.574:
  store %"std/regex:Regex" %t571, ptr %l104
  br label %bb49
bb49:
  %t575 = load %"std/regex:Regex", ptr %l104
  store %"std/regex:Regex" %t575, ptr %l103
  br label %bb69
bb50:
  %t576 = load i32, ptr %l105, !tbaa !23
  %t577 = icmp eq i32 %t576, 65536
  br i1 %t577, label %bb51, label %bb52
bb51:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s14
  store ptr %s14room, ptr %s14
  %t579 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t580 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t579, i64 %t580)
  %t581 = call ptr @__olang_errpay_top_get()
  %t582 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t583 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t582, i64 %t583)
  %t585 = getelementptr { i64, [1 x i64] }, ptr %t581, i32 0, i32 1
  %t586 = getelementptr { i64 }, ptr %t585, i32 0, i32 0
  %t587 = load i64, ptr %t586
  %t589 = call ptr @__olang_sb_room(ptr %s14, i64 24)
  %t590 = call i64 @__olang_fmt_i64(ptr %t589, i64 %t587)
  call void @__olang_sb_add(ptr %s14, i64 %t590)
  %t591 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t592 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s14, ptr %t591, i64 %t592)
  %t593 = load ptr, ptr %s14
  %t594 = getelementptr %olang.builder, ptr %s14, i32 0, i32 1
  %t595 = load i64, ptr %t594
  %t596 = load ptr, ptr @__olang_prog_scope
  %t597 = call ptr @__olang_scope_alloc(ptr %t596, i64 %t595)
  call void @olang_textcopy(ptr %t597, ptr %t593, i64 %t595)
  %t598 = insertvalue { i64, ptr } undef, i64 %t595, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t597, 1
  store { i64, ptr } %t599, ptr %l109, !tbaa !27
  %t600 = getelementptr %olang.builder, ptr %s14, i32 0, i32 3
  %t601 = load ptr, ptr %t600
  %t602 = icmp ne ptr %t601, null
  br i1 %t602, label %sbgrew.603, label %sbdone.604
sbgrew.603:
  call void @__olang_sb_done(ptr %s14)
  br label %sbdone.604
sbdone.604:
  %t605 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t606 = load ptr, ptr @__olang_prog_scope
  %t607 = extractvalue { i64, ptr } %t605, 0
  %t608 = extractvalue { i64, ptr } %t605, 1
  %t609 = mul i64 %t607, 1
  %t610 = call ptr @__olang_scope_alloc(ptr %t606, i64 %t609)
  call void @llvm.memcpy.p0.p0.i64(ptr %t610, ptr %t608, i64 %t609, i1 false)
  %t611 = insertvalue { i64, ptr } undef, i64 %t607, 0
  %t612 = insertvalue { i64, ptr } %t611, ptr %t610, 1
  %t614 = extractvalue { i64, ptr } %t612, 1
  %t615 = extractvalue { i64, ptr } %t612, 0
  %t616 = insertvalue { i64, ptr } undef, i64 %t615, 0
  %t617 = insertvalue { i64, ptr } %t616, ptr %t614, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t617, i1 false)
  unreachable
bb52:
  %t618 = load i32, ptr %l105, !tbaa !23
  %t619 = icmp eq i32 %t618, 65537
  br i1 %t619, label %bb53, label %bb54
bb53:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s15
  store ptr %s15room, ptr %s15
  %t621 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t622 = extractvalue { i64, ptr } { i64 32, ptr getelementptr inbounds (<{ i64, [32 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s15, ptr %t621, i64 %t622)
  %t623 = call ptr @__olang_errpay_top_get()
  %t624 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t625 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s15, ptr %t624, i64 %t625)
  %t627 = getelementptr { i64, [1 x i64] }, ptr %t623, i32 0, i32 1
  %t628 = getelementptr { i64 }, ptr %t627, i32 0, i32 0
  %t629 = load i64, ptr %t628
  %t631 = call ptr @__olang_sb_room(ptr %s15, i64 24)
  %t632 = call i64 @__olang_fmt_i64(ptr %t631, i64 %t629)
  call void @__olang_sb_add(ptr %s15, i64 %t632)
  %t633 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t634 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s15, ptr %t633, i64 %t634)
  %t635 = load ptr, ptr %s15
  %t636 = getelementptr %olang.builder, ptr %s15, i32 0, i32 1
  %t637 = load i64, ptr %t636
  %t638 = load ptr, ptr @__olang_prog_scope
  %t639 = call ptr @__olang_scope_alloc(ptr %t638, i64 %t637)
  call void @olang_textcopy(ptr %t639, ptr %t635, i64 %t637)
  %t640 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t641 = insertvalue { i64, ptr } %t640, ptr %t639, 1
  store { i64, ptr } %t641, ptr %l114, !tbaa !27
  %t642 = getelementptr %olang.builder, ptr %s15, i32 0, i32 3
  %t643 = load ptr, ptr %t642
  %t644 = icmp ne ptr %t643, null
  br i1 %t644, label %sbgrew.645, label %sbdone.646
sbgrew.645:
  call void @__olang_sb_done(ptr %s15)
  br label %sbdone.646
sbdone.646:
  %t647 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t648 = load ptr, ptr @__olang_prog_scope
  %t649 = extractvalue { i64, ptr } %t647, 0
  %t650 = extractvalue { i64, ptr } %t647, 1
  %t651 = mul i64 %t649, 1
  %t652 = call ptr @__olang_scope_alloc(ptr %t648, i64 %t651)
  call void @llvm.memcpy.p0.p0.i64(ptr %t652, ptr %t650, i64 %t651, i1 false)
  %t653 = insertvalue { i64, ptr } undef, i64 %t649, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t652, 1
  %t656 = extractvalue { i64, ptr } %t654, 1
  %t657 = extractvalue { i64, ptr } %t654, 0
  %t658 = insertvalue { i64, ptr } undef, i64 %t657, 0
  %t659 = insertvalue { i64, ptr } %t658, ptr %t656, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t659, i1 false)
  unreachable
bb54:
  %t660 = load i32, ptr %l105, !tbaa !23
  %t661 = icmp eq i32 %t660, 65538
  br i1 %t661, label %bb55, label %bb56
bb55:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s16
  store ptr %s16room, ptr %s16
  %t663 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t664 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t663, i64 %t664)
  %t665 = call ptr @__olang_errpay_top_get()
  %t666 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t667 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t666, i64 %t667)
  %t669 = getelementptr { i64, [1 x i64] }, ptr %t665, i32 0, i32 1
  %t670 = getelementptr { i64 }, ptr %t669, i32 0, i32 0
  %t671 = load i64, ptr %t670
  %t673 = call ptr @__olang_sb_room(ptr %s16, i64 24)
  %t674 = call i64 @__olang_fmt_i64(ptr %t673, i64 %t671)
  call void @__olang_sb_add(ptr %s16, i64 %t674)
  %t675 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t676 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s16, ptr %t675, i64 %t676)
  %t677 = load ptr, ptr %s16
  %t678 = getelementptr %olang.builder, ptr %s16, i32 0, i32 1
  %t679 = load i64, ptr %t678
  %t680 = load ptr, ptr @__olang_prog_scope
  %t681 = call ptr @__olang_scope_alloc(ptr %t680, i64 %t679)
  call void @olang_textcopy(ptr %t681, ptr %t677, i64 %t679)
  %t682 = insertvalue { i64, ptr } undef, i64 %t679, 0
  %t683 = insertvalue { i64, ptr } %t682, ptr %t681, 1
  store { i64, ptr } %t683, ptr %l119, !tbaa !27
  %t684 = getelementptr %olang.builder, ptr %s16, i32 0, i32 3
  %t685 = load ptr, ptr %t684
  %t686 = icmp ne ptr %t685, null
  br i1 %t686, label %sbgrew.687, label %sbdone.688
sbgrew.687:
  call void @__olang_sb_done(ptr %s16)
  br label %sbdone.688
sbdone.688:
  %t689 = load { i64, ptr }, ptr %l119, !tbaa !27
  %t690 = load ptr, ptr @__olang_prog_scope
  %t691 = extractvalue { i64, ptr } %t689, 0
  %t692 = extractvalue { i64, ptr } %t689, 1
  %t693 = mul i64 %t691, 1
  %t694 = call ptr @__olang_scope_alloc(ptr %t690, i64 %t693)
  call void @llvm.memcpy.p0.p0.i64(ptr %t694, ptr %t692, i64 %t693, i1 false)
  %t695 = insertvalue { i64, ptr } undef, i64 %t691, 0
  %t696 = insertvalue { i64, ptr } %t695, ptr %t694, 1
  %t698 = extractvalue { i64, ptr } %t696, 1
  %t699 = extractvalue { i64, ptr } %t696, 0
  %t700 = insertvalue { i64, ptr } undef, i64 %t699, 0
  %t701 = insertvalue { i64, ptr } %t700, ptr %t698, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t701, i1 false)
  unreachable
bb56:
  %t702 = load i32, ptr %l105, !tbaa !23
  %t703 = icmp eq i32 %t702, 65539
  br i1 %t703, label %bb57, label %bb58
bb57:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s17
  store ptr %s17room, ptr %s17
  %t705 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t706 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s17, ptr %t705, i64 %t706)
  %t707 = call ptr @__olang_errpay_top_get()
  %t708 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t709 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s17, ptr %t708, i64 %t709)
  %t711 = getelementptr { i64, [1 x i64] }, ptr %t707, i32 0, i32 1
  %t712 = getelementptr { i64 }, ptr %t711, i32 0, i32 0
  %t713 = load i64, ptr %t712
  %t715 = call ptr @__olang_sb_room(ptr %s17, i64 24)
  %t716 = call i64 @__olang_fmt_i64(ptr %t715, i64 %t713)
  call void @__olang_sb_add(ptr %s17, i64 %t716)
  %t717 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t718 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s17, ptr %t717, i64 %t718)
  %t719 = load ptr, ptr %s17
  %t720 = getelementptr %olang.builder, ptr %s17, i32 0, i32 1
  %t721 = load i64, ptr %t720
  %t722 = load ptr, ptr @__olang_prog_scope
  %t723 = call ptr @__olang_scope_alloc(ptr %t722, i64 %t721)
  call void @olang_textcopy(ptr %t723, ptr %t719, i64 %t721)
  %t724 = insertvalue { i64, ptr } undef, i64 %t721, 0
  %t725 = insertvalue { i64, ptr } %t724, ptr %t723, 1
  store { i64, ptr } %t725, ptr %l124, !tbaa !27
  %t726 = getelementptr %olang.builder, ptr %s17, i32 0, i32 3
  %t727 = load ptr, ptr %t726
  %t728 = icmp ne ptr %t727, null
  br i1 %t728, label %sbgrew.729, label %sbdone.730
sbgrew.729:
  call void @__olang_sb_done(ptr %s17)
  br label %sbdone.730
sbdone.730:
  %t731 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t732 = load ptr, ptr @__olang_prog_scope
  %t733 = extractvalue { i64, ptr } %t731, 0
  %t734 = extractvalue { i64, ptr } %t731, 1
  %t735 = mul i64 %t733, 1
  %t736 = call ptr @__olang_scope_alloc(ptr %t732, i64 %t735)
  call void @llvm.memcpy.p0.p0.i64(ptr %t736, ptr %t734, i64 %t735, i1 false)
  %t737 = insertvalue { i64, ptr } undef, i64 %t733, 0
  %t738 = insertvalue { i64, ptr } %t737, ptr %t736, 1
  %t740 = extractvalue { i64, ptr } %t738, 1
  %t741 = extractvalue { i64, ptr } %t738, 0
  %t742 = insertvalue { i64, ptr } undef, i64 %t741, 0
  %t743 = insertvalue { i64, ptr } %t742, ptr %t740, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t743, i1 false)
  unreachable
bb58:
  %t744 = load i32, ptr %l105, !tbaa !23
  %t745 = icmp eq i32 %t744, 65540
  br i1 %t745, label %bb59, label %bb60
bb59:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s18
  store ptr %s18room, ptr %s18
  %t747 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t748 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t747, i64 %t748)
  %t749 = call ptr @__olang_errpay_top_get()
  %t750 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t751 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t750, i64 %t751)
  %t753 = getelementptr { i64, [1 x i64] }, ptr %t749, i32 0, i32 1
  %t754 = getelementptr { i64 }, ptr %t753, i32 0, i32 0
  %t755 = load i64, ptr %t754
  %t757 = call ptr @__olang_sb_room(ptr %s18, i64 24)
  %t758 = call i64 @__olang_fmt_i64(ptr %t757, i64 %t755)
  call void @__olang_sb_add(ptr %s18, i64 %t758)
  %t759 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t760 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s18, ptr %t759, i64 %t760)
  %t761 = load ptr, ptr %s18
  %t762 = getelementptr %olang.builder, ptr %s18, i32 0, i32 1
  %t763 = load i64, ptr %t762
  %t764 = load ptr, ptr @__olang_prog_scope
  %t765 = call ptr @__olang_scope_alloc(ptr %t764, i64 %t763)
  call void @olang_textcopy(ptr %t765, ptr %t761, i64 %t763)
  %t766 = insertvalue { i64, ptr } undef, i64 %t763, 0
  %t767 = insertvalue { i64, ptr } %t766, ptr %t765, 1
  store { i64, ptr } %t767, ptr %l129, !tbaa !27
  %t768 = getelementptr %olang.builder, ptr %s18, i32 0, i32 3
  %t769 = load ptr, ptr %t768
  %t770 = icmp ne ptr %t769, null
  br i1 %t770, label %sbgrew.771, label %sbdone.772
sbgrew.771:
  call void @__olang_sb_done(ptr %s18)
  br label %sbdone.772
sbdone.772:
  %t773 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t774 = load ptr, ptr @__olang_prog_scope
  %t775 = extractvalue { i64, ptr } %t773, 0
  %t776 = extractvalue { i64, ptr } %t773, 1
  %t777 = mul i64 %t775, 1
  %t778 = call ptr @__olang_scope_alloc(ptr %t774, i64 %t777)
  call void @llvm.memcpy.p0.p0.i64(ptr %t778, ptr %t776, i64 %t777, i1 false)
  %t779 = insertvalue { i64, ptr } undef, i64 %t775, 0
  %t780 = insertvalue { i64, ptr } %t779, ptr %t778, 1
  %t782 = extractvalue { i64, ptr } %t780, 1
  %t783 = extractvalue { i64, ptr } %t780, 0
  %t784 = insertvalue { i64, ptr } undef, i64 %t783, 0
  %t785 = insertvalue { i64, ptr } %t784, ptr %t782, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t785, i1 false)
  unreachable
bb60:
  %t786 = load i32, ptr %l105, !tbaa !23
  %t787 = icmp eq i32 %t786, 65541
  br i1 %t787, label %bb61, label %bb62
bb61:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s19
  store ptr %s19room, ptr %s19
  %t789 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t790 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s19, ptr %t789, i64 %t790)
  %t791 = call ptr @__olang_errpay_top_get()
  %t792 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t793 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s19, ptr %t792, i64 %t793)
  %t795 = getelementptr { i64, [1 x i64] }, ptr %t791, i32 0, i32 1
  %t796 = getelementptr { i64 }, ptr %t795, i32 0, i32 0
  %t797 = load i64, ptr %t796
  %t799 = call ptr @__olang_sb_room(ptr %s19, i64 24)
  %t800 = call i64 @__olang_fmt_i64(ptr %t799, i64 %t797)
  call void @__olang_sb_add(ptr %s19, i64 %t800)
  %t801 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t802 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s19, ptr %t801, i64 %t802)
  %t803 = load ptr, ptr %s19
  %t804 = getelementptr %olang.builder, ptr %s19, i32 0, i32 1
  %t805 = load i64, ptr %t804
  %t806 = load ptr, ptr @__olang_prog_scope
  %t807 = call ptr @__olang_scope_alloc(ptr %t806, i64 %t805)
  call void @olang_textcopy(ptr %t807, ptr %t803, i64 %t805)
  %t808 = insertvalue { i64, ptr } undef, i64 %t805, 0
  %t809 = insertvalue { i64, ptr } %t808, ptr %t807, 1
  store { i64, ptr } %t809, ptr %l134, !tbaa !27
  %t810 = getelementptr %olang.builder, ptr %s19, i32 0, i32 3
  %t811 = load ptr, ptr %t810
  %t812 = icmp ne ptr %t811, null
  br i1 %t812, label %sbgrew.813, label %sbdone.814
sbgrew.813:
  call void @__olang_sb_done(ptr %s19)
  br label %sbdone.814
sbdone.814:
  %t815 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t816 = load ptr, ptr @__olang_prog_scope
  %t817 = extractvalue { i64, ptr } %t815, 0
  %t818 = extractvalue { i64, ptr } %t815, 1
  %t819 = mul i64 %t817, 1
  %t820 = call ptr @__olang_scope_alloc(ptr %t816, i64 %t819)
  call void @llvm.memcpy.p0.p0.i64(ptr %t820, ptr %t818, i64 %t819, i1 false)
  %t821 = insertvalue { i64, ptr } undef, i64 %t817, 0
  %t822 = insertvalue { i64, ptr } %t821, ptr %t820, 1
  %t824 = extractvalue { i64, ptr } %t822, 1
  %t825 = extractvalue { i64, ptr } %t822, 0
  %t826 = insertvalue { i64, ptr } undef, i64 %t825, 0
  %t827 = insertvalue { i64, ptr } %t826, ptr %t824, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t827, i1 false)
  unreachable
bb62:
  %t828 = load i32, ptr %l105, !tbaa !23
  %t829 = icmp eq i32 %t828, 65542
  br i1 %t829, label %bb63, label %bb64
bb63:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s20
  store ptr %s20room, ptr %s20
  %t831 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t832 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s20, ptr %t831, i64 %t832)
  %t833 = call ptr @__olang_errpay_top_get()
  %t834 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t835 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s20, ptr %t834, i64 %t835)
  %t837 = getelementptr { i64, [1 x i64] }, ptr %t833, i32 0, i32 1
  %t838 = getelementptr { i64 }, ptr %t837, i32 0, i32 0
  %t839 = load i64, ptr %t838
  %t841 = call ptr @__olang_sb_room(ptr %s20, i64 24)
  %t842 = call i64 @__olang_fmt_i64(ptr %t841, i64 %t839)
  call void @__olang_sb_add(ptr %s20, i64 %t842)
  %t843 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t844 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s20, ptr %t843, i64 %t844)
  %t845 = load ptr, ptr %s20
  %t846 = getelementptr %olang.builder, ptr %s20, i32 0, i32 1
  %t847 = load i64, ptr %t846
  %t848 = load ptr, ptr @__olang_prog_scope
  %t849 = call ptr @__olang_scope_alloc(ptr %t848, i64 %t847)
  call void @olang_textcopy(ptr %t849, ptr %t845, i64 %t847)
  %t850 = insertvalue { i64, ptr } undef, i64 %t847, 0
  %t851 = insertvalue { i64, ptr } %t850, ptr %t849, 1
  store { i64, ptr } %t851, ptr %l139, !tbaa !27
  %t852 = getelementptr %olang.builder, ptr %s20, i32 0, i32 3
  %t853 = load ptr, ptr %t852
  %t854 = icmp ne ptr %t853, null
  br i1 %t854, label %sbgrew.855, label %sbdone.856
sbgrew.855:
  call void @__olang_sb_done(ptr %s20)
  br label %sbdone.856
sbdone.856:
  %t857 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t858 = load ptr, ptr @__olang_prog_scope
  %t859 = extractvalue { i64, ptr } %t857, 0
  %t860 = extractvalue { i64, ptr } %t857, 1
  %t861 = mul i64 %t859, 1
  %t862 = call ptr @__olang_scope_alloc(ptr %t858, i64 %t861)
  call void @llvm.memcpy.p0.p0.i64(ptr %t862, ptr %t860, i64 %t861, i1 false)
  %t863 = insertvalue { i64, ptr } undef, i64 %t859, 0
  %t864 = insertvalue { i64, ptr } %t863, ptr %t862, 1
  %t866 = extractvalue { i64, ptr } %t864, 1
  %t867 = extractvalue { i64, ptr } %t864, 0
  %t868 = insertvalue { i64, ptr } undef, i64 %t867, 0
  %t869 = insertvalue { i64, ptr } %t868, ptr %t866, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t869, i1 false)
  unreachable
bb64:
  %t870 = load i32, ptr %l105, !tbaa !23
  %t871 = icmp eq i32 %t870, 65543
  br i1 %t871, label %bb65, label %bb66
bb65:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s21
  store ptr %s21room, ptr %s21
  %t873 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t874 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t873, i64 %t874)
  %t875 = call ptr @__olang_errpay_top_get()
  %t876 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t877 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t876, i64 %t877)
  %t879 = getelementptr { i64, [1 x i64] }, ptr %t875, i32 0, i32 1
  %t880 = getelementptr { i64 }, ptr %t879, i32 0, i32 0
  %t881 = load i64, ptr %t880
  %t883 = call ptr @__olang_sb_room(ptr %s21, i64 24)
  %t884 = call i64 @__olang_fmt_i64(ptr %t883, i64 %t881)
  call void @__olang_sb_add(ptr %s21, i64 %t884)
  %t885 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t886 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s21, ptr %t885, i64 %t886)
  %t887 = load ptr, ptr %s21
  %t888 = getelementptr %olang.builder, ptr %s21, i32 0, i32 1
  %t889 = load i64, ptr %t888
  %t890 = load ptr, ptr @__olang_prog_scope
  %t891 = call ptr @__olang_scope_alloc(ptr %t890, i64 %t889)
  call void @olang_textcopy(ptr %t891, ptr %t887, i64 %t889)
  %t892 = insertvalue { i64, ptr } undef, i64 %t889, 0
  %t893 = insertvalue { i64, ptr } %t892, ptr %t891, 1
  store { i64, ptr } %t893, ptr %l144, !tbaa !27
  %t894 = getelementptr %olang.builder, ptr %s21, i32 0, i32 3
  %t895 = load ptr, ptr %t894
  %t896 = icmp ne ptr %t895, null
  br i1 %t896, label %sbgrew.897, label %sbdone.898
sbgrew.897:
  call void @__olang_sb_done(ptr %s21)
  br label %sbdone.898
sbdone.898:
  %t899 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t900 = load ptr, ptr @__olang_prog_scope
  %t901 = extractvalue { i64, ptr } %t899, 0
  %t902 = extractvalue { i64, ptr } %t899, 1
  %t903 = mul i64 %t901, 1
  %t904 = call ptr @__olang_scope_alloc(ptr %t900, i64 %t903)
  call void @llvm.memcpy.p0.p0.i64(ptr %t904, ptr %t902, i64 %t903, i1 false)
  %t905 = insertvalue { i64, ptr } undef, i64 %t901, 0
  %t906 = insertvalue { i64, ptr } %t905, ptr %t904, 1
  %t908 = extractvalue { i64, ptr } %t906, 1
  %t909 = extractvalue { i64, ptr } %t906, 0
  %t910 = insertvalue { i64, ptr } undef, i64 %t909, 0
  %t911 = insertvalue { i64, ptr } %t910, ptr %t908, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t911, i1 false)
  unreachable
bb66:
  %t912 = load i32, ptr %l105, !tbaa !23
  %t913 = icmp eq i32 %t912, 65544
  br i1 %t913, label %bb67, label %bb68
bb67:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s22
  store ptr %s22room, ptr %s22
  %t915 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t916 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s22, ptr %t915, i64 %t916)
  %t917 = call ptr @__olang_errpay_top_get()
  %t918 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t919 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s22, ptr %t918, i64 %t919)
  %t921 = getelementptr { i64, [1 x i64] }, ptr %t917, i32 0, i32 1
  %t922 = getelementptr { i64 }, ptr %t921, i32 0, i32 0
  %t923 = load i64, ptr %t922
  %t925 = call ptr @__olang_sb_room(ptr %s22, i64 24)
  %t926 = call i64 @__olang_fmt_i64(ptr %t925, i64 %t923)
  call void @__olang_sb_add(ptr %s22, i64 %t926)
  %t927 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t928 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s22, ptr %t927, i64 %t928)
  %t929 = load ptr, ptr %s22
  %t930 = getelementptr %olang.builder, ptr %s22, i32 0, i32 1
  %t931 = load i64, ptr %t930
  %t932 = load ptr, ptr @__olang_prog_scope
  %t933 = call ptr @__olang_scope_alloc(ptr %t932, i64 %t931)
  call void @olang_textcopy(ptr %t933, ptr %t929, i64 %t931)
  %t934 = insertvalue { i64, ptr } undef, i64 %t931, 0
  %t935 = insertvalue { i64, ptr } %t934, ptr %t933, 1
  store { i64, ptr } %t935, ptr %l149, !tbaa !27
  %t936 = getelementptr %olang.builder, ptr %s22, i32 0, i32 3
  %t937 = load ptr, ptr %t936
  %t938 = icmp ne ptr %t937, null
  br i1 %t938, label %sbgrew.939, label %sbdone.940
sbgrew.939:
  call void @__olang_sb_done(ptr %s22)
  br label %sbdone.940
sbdone.940:
  %t941 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t942 = load ptr, ptr @__olang_prog_scope
  %t943 = extractvalue { i64, ptr } %t941, 0
  %t944 = extractvalue { i64, ptr } %t941, 1
  %t945 = mul i64 %t943, 1
  %t946 = call ptr @__olang_scope_alloc(ptr %t942, i64 %t945)
  call void @llvm.memcpy.p0.p0.i64(ptr %t946, ptr %t944, i64 %t945, i1 false)
  %t947 = insertvalue { i64, ptr } undef, i64 %t943, 0
  %t948 = insertvalue { i64, ptr } %t947, ptr %t946, 1
  %t950 = extractvalue { i64, ptr } %t948, 1
  %t951 = extractvalue { i64, ptr } %t948, 0
  %t952 = insertvalue { i64, ptr } undef, i64 %t951, 0
  %t953 = insertvalue { i64, ptr } %t952, ptr %t950, 1
  call void @__olang_bang_failed_text(ptr @olang_loc_4fff3af50f8bb07e_f704116329feda3a, { i64, ptr } %t953, i1 false)
  unreachable
bb68:
  call void @__olang_bang_failed_plain(ptr @olang_loc_725a6ff4d205140a_b8d36b8b47f6cabe)
  unreachable
bb69:
  %t954 = load %"std/regex:Regex", ptr %l103
  store %"std/regex:Regex" %t954, ptr %l7
  %t955 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t958 = call i64 @std_2fregex_2estd_2fregex_3aRegex_2eCount(ptr %s0, ptr %s0, ptr %l6, { i64, ptr } %t955)
  store i64 %t958, ptr %l153
  br label %bb70
bb70:
  %t959 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t962 = call i64 @std_2fregex_2estd_2fregex_3aRegex_2eCount(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } %t959)
  store i64 %t962, ptr %l156
  br label %bb71
bb71:
  %t963 = load i64, ptr %l153, !tbaa !24
  %t964 = call i64 @__olang_fmt_i64(ptr null, i64 %t963)
  %t965 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t966 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t967 = add i64 %t964, %t966
  %t968 = load i64, ptr %l156, !tbaa !24
  %t969 = call i64 @__olang_fmt_i64(ptr null, i64 %t968)
  %t970 = add i64 %t967, %t969
  %t971 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t970)
  %t972 = call i64 @__olang_fmt_i64(ptr %t971, i64 %t963)
  %t973 = getelementptr i8, ptr %t971, i64 %t964
  call void @olang_textcopy(ptr %t973, ptr %t965, i64 %t966)
  %t974 = getelementptr i8, ptr %t973, i64 %t966
  %t975 = call i64 @__olang_fmt_i64(ptr %t974, i64 %t968)
  %t976 = insertvalue { i64, ptr } undef, i64 %t970, 0
  %t977 = insertvalue { i64, ptr } %t976, ptr %t971, 1
  %t979 = extractvalue { i64, ptr } %t977, 0
  %t980 = extractvalue { i64, ptr } %t977, 1
  %t981 = mul i64 %t979, 1
  %t982 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t981)
  call void @llvm.memcpy.p0.p0.i64(ptr %t982, ptr %t980, i64 %t981, i1 false)
  %t983 = insertvalue { i64, ptr } undef, i64 %t979, 0
  %t984 = insertvalue { i64, ptr } %t983, ptr %t982, 1
  %t986 = call i32 @std_2fio_2ePrintln(ptr %s0, { i64, ptr } %t984)
  store i32 %t986, ptr %l159
  %t987 = icmp ne i32 %t986, 0
  br i1 %t987, label %bb73, label %ok.988, !prof !99
ok.988:
  br label %bb72
bb72:
  br label %bb76
bb73:
  %t989 = load i32, ptr %l159, !tbaa !23
  %t990 = lshr i32 %t989, 16
  %t991 = and i32 %t989, 65535
  %t992 = icmp eq i32 %t990, 1
  %t993 = select i1 %t992, i32 1, i32 0
  %t994 = icmp eq i32 %t989, 0
  %t995 = shl i32 %t993, 16
  %t996 = or i32 %t995, %t991
  %t997 = select i1 %t994, i32 0, i32 %t996
  store i32 %t997, ptr %l160, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  %t998 = load i32, ptr %l160, !tbaa !23
  %t999 = icmp eq i32 %t998, 65537
  br i1 %t999, label %bb74, label %bb75
bb74:
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s24
  store ptr %s24room, ptr %s24
  %t1001 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t1002 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s24, ptr %t1001, i64 %t1002)
  %t1003 = call ptr @__olang_errpay_top_get()
  %t1004 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t1005 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s24, ptr %t1004, i64 %t1005)
  %t1007 = getelementptr { i64, [1 x i64] }, ptr %t1003, i32 0, i32 1
  %t1008 = getelementptr { i64 }, ptr %t1007, i32 0, i32 0
  %t1009 = load i64, ptr %t1008
  %t1011 = call ptr @__olang_sb_room(ptr %s24, i64 24)
  %t1012 = call i64 @__olang_fmt_i64(ptr %t1011, i64 %t1009)
  call void @__olang_sb_add(ptr %s24, i64 %t1012)
  %t1013 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t1014 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %s24, ptr %t1013, i64 %t1014)
  %t1015 = load ptr, ptr %s24
  %t1016 = getelementptr %olang.builder, ptr %s24, i32 0, i32 1
  %t1017 = load i64, ptr %t1016
  %t1018 = load ptr, ptr @__olang_prog_scope
  %t1019 = call ptr @__olang_scope_alloc(ptr %t1018, i64 %t1017)
  call void @olang_textcopy(ptr %t1019, ptr %t1015, i64 %t1017)
  %t1020 = insertvalue { i64, ptr } undef, i64 %t1017, 0
  %t1021 = insertvalue { i64, ptr } %t1020, ptr %t1019, 1
  store { i64, ptr } %t1021, ptr %l164, !tbaa !27
  %t1022 = getelementptr %olang.builder, ptr %s24, i32 0, i32 3
  %t1023 = load ptr, ptr %t1022
  %t1024 = icmp ne ptr %t1023, null
  br i1 %t1024, label %sbgrew.1025, label %sbdone.1026
sbgrew.1025:
  call void @__olang_sb_done(ptr %s24)
  br label %sbdone.1026
sbdone.1026:
  %t1027 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t1028 = load ptr, ptr @__olang_prog_scope
  %t1029 = extractvalue { i64, ptr } %t1027, 0
  %t1030 = extractvalue { i64, ptr } %t1027, 1
  %t1031 = mul i64 %t1029, 1
  %t1032 = call ptr @__olang_scope_alloc(ptr %t1028, i64 %t1031)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1032, ptr %t1030, i64 %t1031, i1 false)
  %t1033 = insertvalue { i64, ptr } undef, i64 %t1029, 0
  %t1034 = insertvalue { i64, ptr } %t1033, ptr %t1032, 1
  %t1036 = extractvalue { i64, ptr } %t1034, 1
  %t1037 = extractvalue { i64, ptr } %t1034, 0
  %t1038 = insertvalue { i64, ptr } undef, i64 %t1037, 0
  %t1039 = insertvalue { i64, ptr } %t1038, ptr %t1036, 1
  call void @__olang_unhandled_text({ i64, ptr } %t1039, i1 false)
  unreachable
bb75:
  %t1040 = load i32, ptr %l160, !tbaa !23
  store i32 %t1040, ptr %rv
  br label %ret
bb76:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define i32 @main(i32 %argc, ptr %argv) #0 {
entry:
  store i32 %argc, ptr @__olang_argc
  store ptr %argv, ptr @__olang_argv
  call void @__olang_thread_init()
  %c = call i32 @bench_2fregex_2emain()
  %bad = icmp ne i32 %c, 0
  br i1 %bad, label %err, label %ok
ok:
  ret i32 0
err:
  %s = load ptr, ptr @stderr
  %m0 = getelementptr i8, ptr @.c44, i64 0
  %q1 = icmp eq i32 %c, 65536
  %m1 = select i1 %q1, ptr @.c45, ptr %m0
  %q2 = icmp eq i32 %c, 65537
  %m2 = select i1 %q2, ptr @.c46, ptr %m1
  %q3 = icmp eq i32 %c, 131072
  %m3 = select i1 %q3, ptr @.c47, ptr %m2
  %q4 = icmp eq i32 %c, 131073
  %m4 = select i1 %q4, ptr @.c48, ptr %m3
  %q5 = icmp eq i32 %c, 131074
  %m5 = select i1 %q5, ptr @.c49, ptr %m4
  call i32 @fputs(ptr %m5, ptr %s)
  call void @__olang_debug_hint(ptr %s)
  ret i32 1
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
  %t167 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_50, 0
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

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i32
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t6 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eslotOf_3cI64_2c_20I64_3e(ptr %v0, ptr %t2, i64 %a1)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l7
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l6
  br label %bb1
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t12 = load i32, ptr %l7, !tbaa !23
  %t13 = lshr i32 %t12, 16
  %t14 = and i32 %t12, 65535
  %t15 = icmp eq i32 %t13, 1
  %t16 = select i1 %t15, i32 1, i32 0
  %t17 = icmp eq i32 %t12, 0
  %t18 = shl i32 %t16, 16
  %t19 = or i32 %t18, %t14
  %t20 = select i1 %t17, i32 0, i32 %t19
  %t22 = insertvalue { i32, i64 } zeroinitializer, i32 %t20, 0
  store { i32, i64 } %t22, ptr %rv
  br label %ret
bb3:
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t23, i32 0, i32 0
  %t25 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t27, i64 %t25
  %t29 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t28, i32 0, i32 1
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = insertvalue { i32, i64 } zeroinitializer, i64 %t30, 1
  store { i32, i64 } %t32, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l17 = alloca i64
  %t21 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp eq i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = call ptr @__olang_region_make(ptr %v0)
  %t12 = ptrtoint ptr %t11 to i64
  store i64 %t12, ptr %l10, !tbaa !24
  %t13 = icmp sge i64 8, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t15 = icmp sle i64 8, 1152921504606846975
  br i1 %t15, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_d9251fca295cc68a_3a16a871dbeec59e)
  unreachable
bb5:
  %t17 = mul i64 8, 8
  %t18 = load i64, ptr %l10
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc(ptr %t19, i64 %t17)
  store i64 0, ptr %t21
  br label %fill.22
fill.22:
  %t25 = load i64, ptr %t21
  %t26 = icmp slt i64 %t25, 8
  br i1 %t26, label %fillb.23, label %filld.24
fillb.23:
  %t27 = getelementptr i64, ptr %t20, i64 %t25
  store i64 -1, ptr %t27
  %t28 = add i64 %t25, 1
  store i64 %t28, ptr %t21
  br label %fill.22
filld.24:
  %t29 = insertvalue { i64, ptr } undef, i64 8, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t20, 1
  store { i64, ptr } %t30, ptr %l13, !tbaa !27
  %t31 = load i64, ptr %l10
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = load { i64, ptr }, ptr %l13
  %t34 = extractvalue { i64, ptr } %t33, 1
  %t35 = call ptr @__olang_region_or(ptr %t34, ptr null)
  %t36 = icmp ne ptr %t35, null
  %t37 = select i1 %t36, ptr %t35, ptr null
  %t38 = icmp eq ptr %t37, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t38)
  %t39 = load ptr, ptr %l9, !tbaa !29
  %t40 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t39, i32 0, i32 2
  %t41 = load { i64, ptr }, ptr %t40, !tbaa !27
  store { i64, ptr } %t41, ptr %l14, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t43 = load ptr, ptr %l9, !tbaa !29
  %t44 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t43, i32 0, i32 2
  store { i64, ptr } %t42, ptr %t44, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l14
  %t46 = extractvalue { i64, ptr } %t45, 1
  call void @__olang_region_release(ptr %t46)
  store { i64, ptr } zeroinitializer, ptr %l14
  br label %bb7
bb6:
  call void @__olang_check_failed(ptr @olang_loc_d9251fca295cc68a_3a16a871dbeec59e)
  unreachable
bb7:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t51 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ebucketOf_3cI64_2c_20I64_3e(ptr %v0, ptr %t47, i64 %t48)
  store i64 %t51, ptr %l17
  br label %bb8
bb8:
  %t52 = load i64, ptr %l17, !tbaa !24
  store i64 %t52, ptr %l3, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 2
  %t58 = getelementptr { i64, ptr }, ptr %t56, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i64, ptr %t59, i64 %t54
  %t61 = load i64, ptr %t60, !tbaa !34
  store i64 %t61, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = icmp sge i64 %t63, 0
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb10, label %bb11
bb10:
  br label %bb17
bb11:
  br label %bb12
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 0
  %t74 = getelementptr { i64, ptr }, ptr %t72, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t75, i64 %t70
  %t77 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t76, i32 0, i32 0
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr %l1, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb13, label %bb14
bb13:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i64, ptr %l4, !tbaa !24
  %t86 = load i64, ptr %l2, !tbaa !24
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t84, i32 0, i32 0
  %t91 = getelementptr { i64, ptr }, ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t92, i64 %t85
  %t94 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t93, i32 0, i32 1
  store i64 %t86, ptr %t94, !tbaa !24
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l4, !tbaa !24
  %t98 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t95, i32 0, i32 1
  %t100 = getelementptr { i64, ptr }, ptr %t98, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t96
  %t103 = load i64, ptr %t102, !tbaa !34
  store i64 %t103, ptr %l4, !tbaa !24
  br label %bb9
bb17:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l3, !tbaa !24
  %t107 = load i64, ptr %l1, !tbaa !24
  %t108 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eadd_3cI64_2c_20I64_3e(ptr %v0, ptr %t105, i64 %t106, i64 %t107, i64 %t108)
  br label %bb18
bb18:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eadd_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l9 = alloca ptr
  %l13 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i64
  %l30 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l39 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 5
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t8 = icmp sge i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l9, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t14 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t11, i32 0, i32 1
  %t16 = getelementptr { i64, ptr }, ptr %t14, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i64, ptr %t17, i64 %t12
  %t19 = load i64, ptr %t18, !tbaa !34
  %t21 = call i64 @std_2fprelude_2fmap_2efreeLink(i64 %t19)
  store i64 %t21, ptr %l13
  br label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t22, i32 0, i32 3
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  %t34 = icmp eq i64 %t25, %t31
  br i1 %t34, label %bb4, label %bb5
bb3:
  %t36 = load i64, ptr %l13, !tbaa !24
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t37, i32 0, i32 5
  store i64 %t36, ptr %t38, !tbaa !24
  br label %bb8
bb4:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eroom_3cI64_2c_20I64_3e(ptr %v0, ptr %t39)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 3
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l4, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l23, !tbaa !29
  %t47 = load ptr, ptr %l23, !tbaa !29
  %t48 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t47, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = load ptr, ptr %l23, !tbaa !29
  %t54 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t53, i32 0, i32 3
  store i64 %t51, ptr %t54, !tbaa !24
  br label %bb8
bb8:
  %t55 = load ptr, ptr %l0, !tbaa !29
  store ptr %t55, ptr %l26, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  store i64 %t56, ptr %l27, !tbaa !24
  %t61 = call %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20I64_3e_2ector(ptr %s0, i64 %a2, i64 %a3)
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t61, ptr %l30
  br label %bb9
bb9:
  %t62 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l30
  %t63 = load ptr, ptr %l26, !tbaa !29
  %t64 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t63, i32 0, i32 0
  %t65 = load i64, ptr %l27, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %t64, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t67, i64 %t65
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t62, ptr %t68
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t74 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t71, i32 0, i32 2
  %t76 = getelementptr { i64, ptr }, ptr %t74, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t72
  %t79 = load i64, ptr %t78, !tbaa !34
  %t82 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t69, i32 0, i32 1
  %t84 = getelementptr { i64, ptr }, ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !27
  %t86 = getelementptr i64, ptr %t85, i64 %t70
  store i64 %t79, ptr %t86, !tbaa !34
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l1, !tbaa !24
  %t89 = load i64, ptr %l4, !tbaa !24
  %t92 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t87, i32 0, i32 2
  %t94 = getelementptr { i64, ptr }, ptr %t92, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t88
  store i64 %t89, ptr %t96, !tbaa !34
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l39, !tbaa !29
  %t98 = load ptr, ptr %l39, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 4
  %t100 = load i64, ptr %t99, !tbaa !24
  %t102 = add i64 %t100, 1
  %t104 = load ptr, ptr %l39, !tbaa !29
  %t105 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 4
  store i64 %t102, ptr %t105, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 4
  %t109 = load i64, ptr %t108, !tbaa !24
  %t111 = mul i64 %t109, 4
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t112, i32 0, i32 2
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t119 = mul i64 %t117, 3
  %t122 = icmp sgt i64 %t111, %t119
  br i1 %t122, label %bb10, label %bb11
bb10:
  %t124 = load ptr, ptr %l0, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2erehash_3cI64_2c_20I64_3e(ptr %v0, ptr %t124)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ebucketOf_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @std_2fprelude_2fhash_2eI64_2eHash(i64 %a1)
  store i64 %t3, ptr %l3
  br label %bb1
bb1:
  %t6 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0, i32 0, i32 2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = sub i64 %t9, 1
  %t12 = load i64, ptr %l3, !tbaa !24
  %t14 = and i64 %t12, %t11
  store i64 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2elive_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0, i32 0, i32 1
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i64, ptr %t7, i64 %a1
  %t9 = load i64, ptr %t8, !tbaa !34
  %t11 = icmp sge i64 %t9, -1
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2erehash_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i64
  %l46 = alloca i1
  %l52 = alloca i64
  %t23 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  %t2 = call ptr @__olang_region_make(ptr %v0)
  %t3 = ptrtoint ptr %t2 to i64
  store i64 %t3, ptr %l9, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t4, i32 0, i32 2
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t11 = mul i64 %t9, 2
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = load i64, ptr %l13, !tbaa !24
  %t13 = icmp sge i64 %t12, 0
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i64, ptr %l13, !tbaa !24
  %t16 = icmp sle i64 %t15, 1152921504606846975
  br i1 %t16, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_2383bf0a6ff4126c_1bf19662b7f11830)
  unreachable
bb3:
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = mul i64 %t18, 8
  %t20 = load i64, ptr %l9
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call ptr @__olang_scope_alloc(ptr %t21, i64 %t19)
  store i64 0, ptr %t23
  br label %fill.24
fill.24:
  %t27 = load i64, ptr %t23
  %t28 = icmp slt i64 %t27, %t18
  br i1 %t28, label %fillb.25, label %filld.26
fillb.25:
  %t29 = getelementptr i64, ptr %t22, i64 %t27
  store i64 -1, ptr %t29
  %t30 = add i64 %t27, 1
  store i64 %t30, ptr %t23
  br label %fill.24
filld.26:
  %t31 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t22, 1
  store { i64, ptr } %t32, ptr %l16, !tbaa !27
  %t33 = load i64, ptr %l9
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = load { i64, ptr }, ptr %l16
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = icmp ne ptr %t37, null
  %t39 = select i1 %t38, ptr %t37, ptr null
  %t40 = icmp eq ptr %t39, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t40)
  %t41 = load ptr, ptr %l8, !tbaa !29
  %t42 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t41, i32 0, i32 2
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l17, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t45 = load ptr, ptr %l8, !tbaa !29
  %t46 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t45, i32 0, i32 2
  store { i64, ptr } %t44, ptr %t46, !tbaa !27
  %t47 = load { i64, ptr }, ptr %l17
  %t48 = extractvalue { i64, ptr } %t47, 1
  call void @__olang_region_release(ptr %t48)
  store { i64, ptr } zeroinitializer, ptr %l17
  store i64 0, ptr %l1, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t49, i32 0, i32 3
  %t52 = load i64, ptr %t51, !tbaa !24
  store i64 %t52, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t55 = load i64, ptr %l1, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_2383bf0a6ff4126c_1bf19662b7f11830)
  unreachable
bb5:
  %t60 = load i64, ptr %l3, !tbaa !24
  %t62 = icmp sgt i64 %t60, 0
  br i1 %t62, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb10
bb7:
  %t64 = load i64, ptr %l2, !tbaa !24
  %t65 = load i64, ptr %l1, !tbaa !24
  %t68 = sub i64 %t64, %t65
  %t69 = load i64, ptr %l3, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = sub i64 %t72, 1
  %t75 = load i64, ptr %l3, !tbaa !24
  %t78 = sdiv i64 %t74, %t75
  store i64 %t78, ptr %l26, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb9
bb9:
  %t80 = load i64, ptr %l26, !tbaa !24
  store i64 %t80, ptr %l23, !tbaa !24
  br label %bb10
bb10:
  %t81 = load i64, ptr %l23, !tbaa !24
  store i64 %t81, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  %t82 = load i64, ptr %l5, !tbaa !24
  %t83 = load i64, ptr %l4, !tbaa !24
  %t86 = icmp slt i64 %t82, %t83
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb12, label %bb13
bb12:
  br label %bb21
bb13:
  br label %bb14
bb14:
  %t90 = load i64, ptr %l1, !tbaa !24
  %t91 = load i64, ptr %l5, !tbaa !24
  %t92 = load i64, ptr %l3, !tbaa !24
  %t95 = mul i64 %t91, %t92
  %t98 = add i64 %t90, %t95
  store i64 %t98, ptr %l6, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2elive_3cI64_2c_20I64_3e(ptr %v0, ptr %t100, i64 %t101)
  store i1 %t104, ptr %l46
  br label %bb15
bb15:
  %t105 = load i1, ptr %l46, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  br label %bb18
bb18:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l6, !tbaa !24
  %t112 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t109, i32 0, i32 0
  %t114 = getelementptr { i64, ptr }, ptr %t112, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t115, i64 %t110
  %t117 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t116, i32 0, i32 0
  %t118 = load i64, ptr %t117, !tbaa !24
  %t121 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ebucketOf_3cI64_2c_20I64_3e(ptr %v0, ptr %t108, i64 %t118)
  store i64 %t121, ptr %l52
  br label %bb19
bb19:
  %t122 = load i64, ptr %l52, !tbaa !24
  store i64 %t122, ptr %l7, !tbaa !24
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l6, !tbaa !24
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i64, ptr %l7, !tbaa !24
  %t128 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t125, i32 0, i32 2
  %t130 = getelementptr { i64, ptr }, ptr %t128, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i64, ptr %t131, i64 %t126
  %t133 = load i64, ptr %t132, !tbaa !34
  %t136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t123, i32 0, i32 1
  %t138 = getelementptr { i64, ptr }, ptr %t136, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i64, ptr %t139, i64 %t124
  store i64 %t133, ptr %t140, !tbaa !34
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l7, !tbaa !24
  %t143 = load i64, ptr %l6, !tbaa !24
  %t146 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t141, i32 0, i32 2
  %t148 = getelementptr { i64, ptr }, ptr %t146, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t142
  store i64 %t143, ptr %t150, !tbaa !34
  br label %bb20
bb20:
  %t151 = load i64, ptr %l5, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l5, !tbaa !24
  br label %bb11
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eroom_3cI64_2c_20I64_3e(ptr %v0, ptr %a0) noinline cold #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca i64
  %l7 = alloca { i64, ptr }
  %l9 = alloca i64
  %l14 = alloca i64
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca i64
  %l31 = alloca i64
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l40 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l58 = alloca i64
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l67 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp slt i64 %t6, 4
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i64 8, ptr %l14, !tbaa !24
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t10, i32 0, i32 0
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t17 = mul i64 %t15, 2
  store i64 %t17, ptr %l14, !tbaa !24
  br label %bb3
bb3:
  %t19 = load i64, ptr %l14, !tbaa !24
  store i64 %t19, ptr %l1, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t20, i32 0, i32 0
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l21, !tbaa !29
  store { i64, ptr } %t23, ptr %l22, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t27, i32 0, i32 3
  %t30 = load i64, ptr %t29, !tbaa !24
  store i64 %t30, ptr %l24, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l25, !tbaa !24
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = icmp sle i64 0, %t35
  br i1 %t36, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_6958e5460cd6db86_580233942ca5b42)
  unreachable
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  %t39 = load i64, ptr %l25, !tbaa !24
  %t40 = icmp sle i64 %t38, %t39
  br i1 %t40, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6958e5460cd6db86_580233942ca5b42)
  unreachable
bb8:
  %t42 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = load i64, ptr %l24, !tbaa !24
  %t45 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t43, i64 0
  %t46 = sub i64 %t44, 0
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l3, !tbaa !27
  %t50 = load i64, ptr %l1, !tbaa !24
  %t52 = call ptr @__olang_region_make(ptr %v0)
  %t53 = ptrtoint ptr %t52 to i64
  store i64 %t53, ptr %l31, !tbaa !24
  %t56 = mul i64 %t50, 16
  %t57 = load i64, ptr %l31
  %t58 = inttoptr i64 %t57 to ptr
  %t59 = call ptr @__olang_scope_alloc(ptr %t58, i64 %t56)
  %t60 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t61 = insertvalue { i64, ptr } %t60, ptr %t59, 1
  store { i64, ptr } %t61, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_6958e5460cd6db86_580233942ca5b42)
  unreachable
bb10:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t68 = icmp slt i64 %t62, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t72, ptr %l40, !tbaa !27
  %t73 = load i64, ptr %l5, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t76, i64 %t73
  %t78 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t77
  %t80 = load i64, ptr %l34, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t82, i64 %t80
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t78, ptr %t83
  %t84 = load i64, ptr %l34, !tbaa !24
  %t85 = add i64 %t84, 1
  store i64 %t85, ptr %l34, !tbaa !24
  br label %bb14
bb14:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l5, !tbaa !24
  br label %bb10
bb15:
  %t90 = load i64, ptr %l31
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = load { i64, ptr }, ptr %l33
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr null
  %t97 = icmp eq ptr %t96, %t91
  call void @__olang_region_settle(ptr %t91, i1 %t97)
  %t98 = load ptr, ptr %l21, !tbaa !29
  %t99 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l45, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t102 = load ptr, ptr %l21, !tbaa !29
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 0
  store { i64, ptr } %t101, ptr %t103, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l45
  %t105 = extractvalue { i64, ptr } %t104, 1
  call void @__olang_region_release(ptr %t105)
  store { i64, ptr } zeroinitializer, ptr %l45
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t106, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l48, !tbaa !29
  store { i64, ptr } %t109, ptr %l49, !tbaa !27
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t113, i32 0, i32 3
  %t116 = load i64, ptr %t115, !tbaa !24
  store i64 %t116, ptr %l51, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  store i64 %t118, ptr %l52, !tbaa !24
  %t119 = icmp sge i64 0, 0
  br i1 %t119, label %bb16, label %bb17
bb16:
  %t121 = load i64, ptr %l51, !tbaa !24
  %t122 = icmp sle i64 0, %t121
  br i1 %t122, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_69b05c16d7fe8663_9b68229f54eb9d3f)
  unreachable
bb18:
  %t124 = load i64, ptr %l51, !tbaa !24
  %t125 = load i64, ptr %l52, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_69b05c16d7fe8663_9b68229f54eb9d3f)
  unreachable
bb20:
  %t128 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = load i64, ptr %l51, !tbaa !24
  %t131 = getelementptr i64, ptr %t129, i64 0
  %t132 = sub i64 %t130, 0
  %t133 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t131, 1
  store { i64, ptr } %t134, ptr %l7, !tbaa !27
  %t136 = load i64, ptr %l1, !tbaa !24
  %t138 = call ptr @__olang_region_make(ptr %v0)
  %t139 = ptrtoint ptr %t138 to i64
  store i64 %t139, ptr %l58, !tbaa !24
  %t142 = mul i64 %t136, 8
  %t143 = load i64, ptr %l58
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t142)
  %t146 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  store { i64, ptr } %t147, ptr %l60, !tbaa !27
  store i64 0, ptr %l61, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_69b05c16d7fe8663_9b68229f54eb9d3f)
  unreachable
bb22:
  %t148 = load i64, ptr %l9, !tbaa !24
  %t149 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t151 = extractvalue { i64, ptr } %t149, 0
  %t154 = icmp slt i64 %t148, %t151
  %t156 = xor i1 %t154, true
  br i1 %t156, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb25
bb25:
  %t158 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t158, ptr %l67, !tbaa !27
  %t159 = load i64, ptr %l9, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i64, ptr %t162, i64 %t159
  %t164 = load i64, ptr %t163, !tbaa !34
  %t166 = load i64, ptr %l61, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i64, ptr %t168, i64 %t166
  store i64 %t164, ptr %t169, !tbaa !34
  %t170 = load i64, ptr %l61, !tbaa !24
  %t171 = add i64 %t170, 1
  store i64 %t171, ptr %l61, !tbaa !24
  br label %bb26
bb26:
  %t172 = load i64, ptr %l9, !tbaa !24
  %t174 = add i64 %t172, 1
  store i64 %t174, ptr %l9, !tbaa !24
  br label %bb22
bb27:
  %t176 = load i64, ptr %l58
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = load { i64, ptr }, ptr %l60
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = icmp ne ptr %t180, null
  %t182 = select i1 %t181, ptr %t180, ptr null
  %t183 = icmp eq ptr %t182, %t177
  call void @__olang_region_settle(ptr %t177, i1 %t183)
  %t184 = load ptr, ptr %l48, !tbaa !29
  %t185 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t184, i32 0, i32 1
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !27
  store { i64, ptr } %t186, ptr %l72, !tbaa !27
  %t187 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t188 = load ptr, ptr %l48, !tbaa !29
  %t189 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t188, i32 0, i32 1
  store { i64, ptr } %t187, ptr %t189, !tbaa !27
  %t190 = load { i64, ptr }, ptr %l72
  %t191 = extractvalue { i64, ptr } %t190, 1
  call void @__olang_region_release(ptr %t191)
  store { i64, ptr } zeroinitializer, ptr %l72
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eslotOf_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l7 = alloca ptr
  %l10 = alloca i64
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp eq i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t9 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t9, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  store ptr %t10, ptr %l7, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ebucketOf_3cI64_2c_20I64_3e(ptr %v0, ptr %t11, i64 %t12)
  store i64 %t15, ptr %l10
  br label %bb4
bb4:
  %t16 = load ptr, ptr %l7, !tbaa !29
  %t17 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t16, i32 0, i32 2
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %t17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i64, ptr %t20, i64 %t18
  %t22 = load i64, ptr %t21, !tbaa !34
  store i64 %t22, ptr %l2, !tbaa !24
  br label %bb5
bb5:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = icmp sge i64 %t24, 0
  %t28 = xor i1 %t26, true
  br i1 %t28, label %bb6, label %bb7
bb6:
  br label %bb13
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t30, i32 0, i32 0
  %t35 = getelementptr { i64, ptr }, ptr %t33, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t36, i64 %t31
  %t38 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %t37, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = icmp eq i64 %t39, %t40
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = insertvalue { i32, i64 } zeroinitializer, i64 %t45, 1
  store { i32, i64 } %t47, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t48, i32 0, i32 1
  %t53 = getelementptr { i64, ptr }, ptr %t51, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t49
  %t56 = load i64, ptr %t55, !tbaa !34
  store i64 %t56, ptr %l2, !tbaa !24
  br label %bb5
bb13:
  %t59 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t59, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20I64_3e_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" undef, i64 %a0, 0
  %t8 = insertvalue %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t6, i64 %a1, 1
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %rv
  ret %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %rr
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" undef, { i64, ptr } zeroinitializer, 0
  %t4 = insertvalue %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, { i64, ptr } zeroinitializer, 1
  %t6 = insertvalue %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, { i64, ptr } zeroinitializer, 2
  %t8 = insertvalue %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t6, i64 0, 3
  %t10 = insertvalue %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t8, i64 0, 4
  %t12 = insertvalue %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, i64 -1, 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 0)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i64
  %l21 = alloca i64
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
  %t39 = getelementptr i64, ptr %t38, i64 %t33
  %t40 = load i64, ptr %t39, !tbaa !34
  store i64 %t40, ptr %l21, !tbaa !24
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

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eView_3cI64_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4f1bf8adfab04b2c_df5cf2b00a594790)
  unreachable
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4f1bf8adfab04b2c_df5cf2b00a594790)
  unreachable
bb5:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr i64, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_4f1bf8adfab04b2c_df5cf2b00a594790)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eroom_3cI64_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  %t87 = mul i64 %t83, 8
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_c71720b651c4be46_5c3ed0b2298ea3a)
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
  %t106 = getelementptr i64, ptr %t105, i64 %t102
  %t107 = load i64, ptr %t106, !tbaa !34
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i64, ptr %t111, i64 %t109
  store i64 %t107, ptr %t112, !tbaa !34
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

define dso_local i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eAt_3cU32_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr i32, ptr %t7, i64 %a1
  %t9 = load i32, ptr %t8, !tbaa !84
  store i32 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eLen_3cU32_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2ePushAll_3cU32_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eroom_3cU32_3e(ptr %v0, ptr %t62, i64 %t63)
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
  %t130 = getelementptr i32, ptr %t129, i64 %t126
  %t131 = load i32, ptr %t130, !tbaa !84
  %t134 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t116, i32 0, i32 0
  %t136 = getelementptr { i64, ptr }, ptr %t134, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i32, ptr %t137, i64 %t124
  store i32 %t131, ptr %t138, !tbaa !84
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

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eToArray_3cU32_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
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
  %l17 = alloca i32
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
  %t10 = icmp sle i64 0, 2305843009213693951
  br i1 %t10, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ffb7d3f81b8e1a73_5473cf8a2f6e905f)
  unreachable
bb5:
  %t12 = mul i64 0, 4
  %t13 = insertvalue { i64, ptr } undef, i64 0, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t14, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ffb7d3f81b8e1a73_5473cf8a2f6e905f)
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
  %t25 = getelementptr i32, ptr %t24, i64 0
  %t26 = load i32, ptr %t25, !tbaa !84
  store i32 %t26, ptr %l17, !tbaa !64
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = icmp sge i64 %t27, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l15, !tbaa !24
  %t31 = icmp sle i64 %t30, 2305843009213693951
  br i1 %t31, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_27fe2d70f0e84b3e_f19d37d8ef1f828a)
  unreachable
bb10:
  %t33 = load i64, ptr %l15, !tbaa !24
  %t34 = mul i64 %t33, 4
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = load i32, ptr %l17, !tbaa !64
  store i64 0, ptr %t37
  br label %fill.38
fill.38:
  %t41 = load i64, ptr %t37
  %t42 = icmp slt i64 %t41, %t33
  br i1 %t42, label %fillb.39, label %filld.40
fillb.39:
  %t43 = getelementptr i32, ptr %t35, i64 %t41
  store i32 %t36, ptr %t43
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
  call void @__olang_check_failed(ptr @olang_loc_27fe2d70f0e84b3e_f19d37d8ef1f828a)
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
  %t108 = getelementptr i32, ptr %t107, i64 %t102
  %t109 = load i32, ptr %t108, !tbaa !84
  %t112 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !27
  %t114 = getelementptr i32, ptr %t113, i64 %t100
  store i32 %t109, ptr %t114, !tbaa !84
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eTruncate_3cU32_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca i64
  %l21 = alloca i32
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
  %t39 = getelementptr i32, ptr %t38, i64 %t33
  %t40 = load i32, ptr %t39, !tbaa !84
  store i32 %t40, ptr %l21, !tbaa !64
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

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eView_3cU32_3e(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_54ca6f2b05c15220_66de2c5bae322814)
  unreachable
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_54ca6f2b05c15220_66de2c5bae322814)
  unreachable
bb5:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr i32, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_54ca6f2b05c15220_66de2c5bae322814)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU32_3e_2eroom_3cU32_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_24f891935f1b368a_96601a43780dc97e)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_24f891935f1b368a_96601a43780dc97e)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr i32, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 4
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_24f891935f1b368a_96601a43780dc97e)
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
  %t106 = getelementptr i32, ptr %t105, i64 %t102
  %t107 = load i32, ptr %t106, !tbaa !84
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i32, ptr %t111, i64 %t109
  store i32 %t107, ptr %t112, !tbaa !84
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

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %t7, i64 %a1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !37
  store { i64, ptr } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H563b551a62b57e684177c5454e33a204(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t6, i32 0, i32 0
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l4, !tbaa !24
  %t10 = icmp sge i64 0, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sle i64 0, %t12
  br i1 %t13, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_f8ccfd7eecf7db25_4255e8bc5856fa11)
  unreachable
bb3:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp sle i64 %t15, %t16
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_f8ccfd7eecf7db25_4255e8bc5856fa11)
  unreachable
bb5:
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = getelementptr { i64, ptr }, ptr %t20, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_f8ccfd7eecf7db25_4255e8bc5856fa11)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H61995da051b71d0288119da2cdc12cdc(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr { i64, ptr }, ptr %t35, i64 %t28
  store { i64, ptr } %a1, ptr %t36, !tbaa !37
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H61995da051b71d0288119da2cdc12cdc(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_37433dd2000b8b56_228f436ea5ceec3a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_37433dd2000b8b56_228f436ea5ceec3a)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr { i64, ptr }, ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = call ptr @__olang_region_make(ptr %v0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l43, !tbaa !24
  %t89 = mul i64 %t83, 16
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
  call void @__olang_check_failed(ptr @olang_loc_37433dd2000b8b56_228f436ea5ceec3a)
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
  %t110 = getelementptr { i64, ptr }, ptr %t109, i64 %t106
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !37
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %t115, i64 %t113
  store { i64, ptr } %t111, ptr %t116, !tbaa !37
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

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e
define dso_local %"std/regex:Match" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eAt_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"std/regex:Match"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"std/regex:Match", ptr %t7, i64 %a1
  %t9 = load %"std/regex:Match", ptr %t8
  store %"std/regex:Match" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:Match", ptr %rv
  ret %"std/regex:Match" %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eLen_3cstd_2fregex_3aMatch_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2ePush_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %v1, ptr %a0, %"std/regex:Match" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eroom_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"std/regex:Match", ptr %t35, i64 %t28
  store %"std/regex:Match" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2eroom_3cstd_2fregex_3aMatch_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_108dd28019b8f356_dd09d05fb61201aa)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_108dd28019b8f356_dd09d05fb61201aa)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"std/regex:Match", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 48
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_108dd28019b8f356_dd09d05fb61201aa)
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
  %t106 = getelementptr %"std/regex:Match", ptr %t105, i64 %t102
  %t107 = load %"std/regex:Match", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"std/regex:Match", ptr %t111, i64 %t109
  store %"std/regex:Match" %t107, ptr %t112
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

define dso_local %"std/regex:node" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eAt_3cstd_2fregex_3anode_3e(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"std/regex:node"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"std/regex:node", ptr %t7, i64 %a1
  %t9 = load %"std/regex:node", ptr %t8
  store %"std/regex:node" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/regex:node", ptr %rv
  ret %"std/regex:node" %rr
}

@std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eLen_3cstd_2fregex_3anode_3e = dso_local alias i64 (ptr, ptr), ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e
define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2ePush_3cstd_2fregex_3anode_3e(ptr %v0, ptr %a0, %"std/regex:node" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eroom_3cstd_2fregex_3anode_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"std/regex:node", ptr %t35, i64 %t28
  store %"std/regex:node" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2eroom_3cstd_2fregex_3anode_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_5b385bf7b7d9a6f8_f48f58671fd309fc)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_5b385bf7b7d9a6f8_f48f58671fd309fc)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"std/regex:node", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = call ptr @__olang_region_make(ptr %v0)
  %t86 = ptrtoint ptr %t85 to i64
  store i64 %t86, ptr %l43, !tbaa !24
  %t89 = mul i64 %t83, 48
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
  call void @__olang_check_failed(ptr @olang_loc_5b385bf7b7d9a6f8_f48f58671fd309fc)
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
  %t110 = getelementptr %"std/regex:node", ptr %t109, i64 %t106
  %t111 = load %"std/regex:node", ptr %t110
  %t113 = load i64, ptr %l46, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr %"std/regex:node", ptr %t115, i64 %t113
  store %"std/regex:node" %t111, ptr %t116
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

@std_2fprelude_2fvec_3aVec_3cU32_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cU64_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cstd_2fregex_3aMatch_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
@std_2fprelude_2fvec_3aVec_3cstd_2fregex_3anode_3e_2ector = dso_local alias %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" (ptr, i64), ptr @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector
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
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sing" }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"sang" }>, align 8
@.d8 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"running" }>, align 8
@.d9 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d10 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"code" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"7" }>, align 8
@.d12 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"42" }>, align 8
@.d13 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"thing" }>, align 8
@.d14 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"bring" }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"x" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d16 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"[a-z]+ing" }>, align 8
@.d17 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"regex.SyntaxError.UnclosedGroup" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
declare void @__olang_bang_failed_text(ptr, { i64, ptr }, i1) cold noreturn
@.d20 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"regex.SyntaxError.UnmatchedParen" }>, align 8
@.d21 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"regex.SyntaxError.UnclosedClass" }>, align 8
@.d22 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"regex.SyntaxError.BadEscape" }>, align 8
@.d23 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"regex.SyntaxError.BadRepeat" }>, align 8
@.d24 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"regex.SyntaxError.BadRange" }>, align 8
@.d25 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"regex.SyntaxError.BadName" }>, align 8
@.d26 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"regex.SyntaxError.BadFlag" }>, align 8
@.d27 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"regex.SyntaxError.TooBig" }>, align 8
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d28 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"error [0-9]+" }>, align 8
@.d29 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"regex.SyntaxError.UnclosedGroup" }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d32 = private constant <{ i64, [32 x i8] }> <{ i64 0, [32 x i8] c"regex.SyntaxError.UnmatchedParen" }>, align 8
@.d33 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"regex.SyntaxError.UnclosedClass" }>, align 8
@.d34 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"regex.SyntaxError.BadEscape" }>, align 8
@.d35 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"regex.SyntaxError.BadRepeat" }>, align 8
@.d36 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"regex.SyntaxError.BadRange" }>, align 8
@.d37 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"regex.SyntaxError.BadName" }>, align 8
@.d38 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"regex.SyntaxError.BadFlag" }>, align 8
@.d39 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"regex.SyntaxError.TooBig" }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d41 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"io.Error.Partial" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@__olang_argc = external global i32
@__olang_argv = external global ptr
declare void @__olang_thread_init()
@stderr = external global ptr
@.c44 = private unnamed_addr constant [17 x i8] c"unhandled error\0A\00"
@.c45 = private unnamed_addr constant [34 x i8] c"unhandled error: io.Error.Failed\0A\00"
@.c46 = private unnamed_addr constant [35 x i8] c"unhandled error: io.Error.Partial\0A\00"
@.c47 = private unnamed_addr constant [35 x i8] c"unhandled error: ParseError.Empty\0A\00"
@.c48 = private unnamed_addr constant [37 x i8] c"unhandled error: ParseError.Invalid\0A\00"
@.c49 = private unnamed_addr constant [38 x i8] c"unhandled error: ParseError.Overflow\0A\00"
declare i32 @fputs(ptr, ptr)
declare void @__olang_debug_hint(ptr)
declare void @__olang_check_failed(ptr) cold noreturn
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
define internal i1 @olang_lambda_50(ptr %env, i64 %a0, i64 %a1) #0 {
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

declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_release(ptr) noinline
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
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/regex:Regex" } @std_2fregex_2eRegex_2eCompile(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_75308306ced9f1b4_1c351974e94caeb0 = external constant [0 x i8]
@olang_loc_68485776b1cc6dcc_665cbff08c0c11a0 = external constant [0 x i8]
@olang_loc_4fff3af50f8bb07e_f704116329feda3a = external constant [0 x i8]
@olang_loc_725a6ff4d205140a_b8d36b8b47f6cabe = external constant [0 x i8]
declare i64 @std_2fregex_2estd_2fregex_3aRegex_2eCount(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2ePrintln(ptr %v0, { i64, ptr } %a0)
@G_2estd_2fprelude_2farray_2esortRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
@G_2estd_2fprelude_2farray_2esortBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\30\00\00\00\00\00\00" }>, align 8
@olang_loc_f5954356a94cfd1d_57c8a908dd11d469 = external constant [0 x i8]
@olang_loc_bd57bfee552aaf80_4db8901b79077054 = external constant [0 x i8]
@olang_loc_32b4dd57063daccc_20299270f57c1810 = external constant [0 x i8]
@olang_loc_d9251fca295cc68a_3a16a871dbeec59e = external constant [0 x i8]
declare i64 @std_2fprelude_2fmap_2efreeLink(i64 %a0)
declare i64 @std_2fprelude_2fhash_2eI64_2eHash(i64 %a0)
@olang_loc_2383bf0a6ff4126c_1bf19662b7f11830 = external constant [0 x i8]
@olang_loc_6958e5460cd6db86_580233942ca5b42 = external constant [0 x i8]
@olang_loc_69b05c16d7fe8663_9b68229f54eb9d3f = external constant [0 x i8]
@olang_loc_6124bee271ea27df_40001a175be242b = external constant [0 x i8]
@olang_loc_b4b3d3a21dffee1a_94412941cff469ee = external constant [0 x i8]
@olang_loc_4f1bf8adfab04b2c_df5cf2b00a594790 = external constant [0 x i8]
@olang_loc_c71720b651c4be46_5c3ed0b2298ea3a = external constant [0 x i8]
@olang_loc_ffb7d3f81b8e1a73_5473cf8a2f6e905f = external constant [0 x i8]
@olang_loc_27fe2d70f0e84b3e_f19d37d8ef1f828a = external constant [0 x i8]
@olang_loc_54ca6f2b05c15220_66de2c5bae322814 = external constant [0 x i8]
@olang_loc_24f891935f1b368a_96601a43780dc97e = external constant [0 x i8]
@olang_loc_4c80127648ba5d2e_65bcf202b125bf62 = external constant [0 x i8]
@olang_loc_98322877b323543a_c315b51d8b07b39e = external constant [0 x i8]
@olang_loc_f8ccfd7eecf7db25_4255e8bc5856fa11 = external constant [0 x i8]
@olang_loc_37433dd2000b8b56_228f436ea5ceec3a = external constant [0 x i8]
@olang_loc_108dd28019b8f356_dd09d05fb61201aa = external constant [0 x i8]
@olang_loc_5b385bf7b7d9a6f8_f48f58671fd309fc = external constant [0 x i8]

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
