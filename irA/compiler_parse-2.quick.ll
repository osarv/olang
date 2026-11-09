source_filename = "compiler_parse-2.quick.ll"
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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/parse:NameList" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eargs(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l21 = alloca ptr
  %l32 = alloca i64
  %l35 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i32
  %l44 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l52 = alloca i1
  %l53 = alloca i1
  %l55 = alloca i32
  %l59 = alloca %"compiler/token:Token"
  %l61 = alloca i32
  %l63 = alloca i32
  %l64 = alloca i32
  %l68 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca ptr
  %l80 = alloca ptr
  %l81 = alloca i32
  %l85 = alloca ptr
  %l94 = alloca ptr
  %l97 = alloca %"compiler/source:Span"
  %l102 = alloca ptr
  %l104 = alloca ptr
  %l105 = alloca i32
  %l109 = alloca ptr
  %l118 = alloca i1
  %l120 = alloca %"compiler/source:Span"
  %l122 = alloca ptr
  %l127 = alloca ptr
  %l128 = alloca i32
  %l132 = alloca ptr
  %l143 = alloca i1
  %l146 = alloca i1
  %l147 = alloca i32
  %l151 = alloca ptr
  %l163 = alloca ptr
  %l170 = alloca i1
  %l175 = alloca ptr
  %l177 = alloca { i64, ptr }
  %l179 = alloca i32
  %l184 = alloca i32
  %l188 = alloca { i64, ptr }
  %s23 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t90 = alloca { i64, [4 x i64] }, align 8
  %t208 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 108)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l16
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l15
  br label %bb1
bb1:
  %t9 = load i32, ptr %l15, !tbaa !23
  store i32 %t9, ptr %l12, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l16, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t18, 0
  store { i32, { i64, ptr } } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 11
  %t24 = load i1, ptr %t23, !tbaa !21
  store i1 %t24, ptr %l1, !tbaa !21
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 11
  store i1 false, ptr %t28, !tbaa !21
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l21, !tbaa !29
  %t30 = load ptr, ptr %l21, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 18
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = add i64 %t32, 1
  %t36 = load ptr, ptr %l21, !tbaa !29
  %t37 = getelementptr %"compiler/parse:Parser", ptr %t36, i32 0, i32 18
  store i64 %t34, ptr %t37, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/parse:Parser", ptr %t38, i32 0, i32 19
  %t41 = load i1, ptr %t40, !tbaa !21
  store i1 %t41, ptr %l2, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t43, i32 0, i32 20
  %t46 = load i1, ptr %t45, !tbaa !21
  store i1 %t46, ptr %l3, !tbaa !21
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t48, i32 0, i32 19
  store i1 false, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/parse:Parser", ptr %t51, i32 0, i32 20
  store i1 true, ptr %t53, !tbaa !21
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/parse:Parser", ptr %t54, i32 0, i32 31
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l32
  br label %bb4
bb4:
  %t59 = load i64, ptr %l32, !tbaa !24
  store i64 %t59, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t60, i32 109)
  store i1 %t63, ptr %l35
  br label %bb6
bb6:
  %t64 = load i1, ptr %l35, !tbaa !21
  %t65 = xor i1 %t64, true
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb7, label %bb8
bb7:
  br label %bb64
bb8:
  br label %bb9
bb9:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t72 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t69, i32 44)
  store i1 %t72, ptr %l40
  br label %bb10
bb10:
  %t73 = load i1, ptr %l40, !tbaa !21
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t74)
  store i32 %t76, ptr %l42
  br label %bb13
bb12:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t77, i32 1)
  store i1 %t80, ptr %l52
  br label %bb16
bb13:
  %t81 = load i32, ptr %l42, !tbaa !23
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/parse:Parser", ptr %t82, i32 0, i32 31
  store ptr %t84, ptr %l44, !tbaa !29
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t89 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t85, i32 %t81)
  store %"compiler/source:Span" %t89, ptr %l47
  br label %bb14
bb14:
  store { i64, [4 x i64] } zeroinitializer, ptr %t90
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 0
  store i64 25, ptr %t91
  %t92 = load %"compiler/source:Span", ptr %l47
  %t93 = insertvalue { %"compiler/source:Span" } undef, %"compiler/source:Span" %t92, 0
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t90, i32 0, i32 1
  store { %"compiler/source:Span" } %t93, ptr %t94
  %t95 = load { i64, [4 x i64] }, ptr %t90
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t95, ptr %t97
  %t98 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t98, ptr %t97)
  br label %bb15
bb15:
  br label %bb54
bb16:
  %t100 = load i1, ptr %l52, !tbaa !21
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t101, i64 1)
  store i32 %t103, ptr %l55
  br label %bb19
bb18:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb20
bb19:
  %t104 = load i32, ptr %l55, !range !{i32 0, i32 114}
  %t106 = trunc i64 78 to i32
  %t107 = icmp eq i32 %t104, %t106
  store i1 %t107, ptr %l53, !tbaa !21
  br label %bb20
bb20:
  %t109 = load i1, ptr %l53, !tbaa !21
  br i1 %t109, label %bb21, label %bb22
bb21:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t110)
  store %"compiler/token:Token" %t112, ptr %l59
  br label %bb23
bb22:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t113)
  %t116 = extractvalue { i32, ptr } %t115, 1
  %t117 = extractvalue { i32, ptr } %t115, 0
  store i32 %t117, ptr %l105
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb38, label %ok.119, !prof !99
ok.119:
  store ptr %t116, ptr %l104
  br label %bb37
bb23:
  %t120 = getelementptr %"compiler/token:Token", ptr %l59, i32 0, i32 2
  %t121 = load i32, ptr %t120, !tbaa !23
  store i32 %t121, ptr %l6, !tbaa !23
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t123)
  %t126 = extractvalue { i32, i32 } %t125, 1
  %t127 = extractvalue { i32, i32 } %t125, 0
  store i32 %t127, ptr %l64
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb25, label %ok.129, !prof !99
ok.129:
  store i32 %t126, ptr %l63
  br label %bb24
bb24:
  %t130 = load i32, ptr %l63, !tbaa !23
  store i32 %t130, ptr %l61, !tbaa !23
  br label %bb28
bb25:
  br label %bb26
bb26:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/parse:Parser", ptr %t131, i32 0, i32 31
  %t134 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t133, i64 %t134)
  br label %bb27
bb27:
  %t137 = load ptr, ptr %l0, !tbaa !29
  store ptr %t137, ptr %l68, !tbaa !29
  %t138 = load ptr, ptr %l68, !tbaa !29
  %t139 = getelementptr %"compiler/parse:Parser", ptr %t138, i32 0, i32 18
  %t140 = load i64, ptr %t139, !tbaa !24
  %t142 = sub i64 %t140, 1
  %t144 = load ptr, ptr %l68, !tbaa !29
  %t145 = getelementptr %"compiler/parse:Parser", ptr %t144, i32 0, i32 18
  store i64 %t142, ptr %t145, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i1, ptr %l2, !tbaa !21
  %t150 = getelementptr %"compiler/parse:Parser", ptr %t146, i32 0, i32 19
  store i1 %t147, ptr %t150, !tbaa !21
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load i1, ptr %l3, !tbaa !21
  %t155 = getelementptr %"compiler/parse:Parser", ptr %t151, i32 0, i32 20
  store i1 %t152, ptr %t155, !tbaa !21
  %t157 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t157, ptr %rv
  br label %ret
bb28:
  %t158 = load i32, ptr %l61, !tbaa !23
  store i32 %t158, ptr %l7, !tbaa !23
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t159)
  store i32 %t161, ptr %l77
  br label %bb29
bb29:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t162)
  %t165 = extractvalue { i32, ptr } %t164, 1
  %t166 = extractvalue { i32, ptr } %t164, 0
  store i32 %t166, ptr %l81
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb31, label %ok.168, !prof !99
ok.168:
  store ptr %t165, ptr %l80
  br label %bb30
bb30:
  %t169 = load ptr, ptr %l80, !tbaa !29
  store ptr %t169, ptr %l78, !tbaa !29
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/parse:Parser", ptr %t170, i32 0, i32 31
  %t173 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t172, i64 %t173)
  br label %bb33
bb33:
  %t176 = load ptr, ptr %l0, !tbaa !29
  store ptr %t176, ptr %l85, !tbaa !29
  %t177 = load ptr, ptr %l85, !tbaa !29
  %t178 = getelementptr %"compiler/parse:Parser", ptr %t177, i32 0, i32 18
  %t179 = load i64, ptr %t178, !tbaa !24
  %t181 = sub i64 %t179, 1
  %t183 = load ptr, ptr %l85, !tbaa !29
  %t184 = getelementptr %"compiler/parse:Parser", ptr %t183, i32 0, i32 18
  store i64 %t181, ptr %t184, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i1, ptr %l2, !tbaa !21
  %t189 = getelementptr %"compiler/parse:Parser", ptr %t185, i32 0, i32 19
  store i1 %t186, ptr %t189, !tbaa !21
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i1, ptr %l3, !tbaa !21
  %t194 = getelementptr %"compiler/parse:Parser", ptr %t190, i32 0, i32 20
  store i1 %t191, ptr %t194, !tbaa !21
  %t196 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t196, ptr %rv
  br label %ret
bb34:
  %t197 = load ptr, ptr %l78, !tbaa !29
  store ptr %t197, ptr %l8, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/parse:Parser", ptr %t198, i32 0, i32 31
  store ptr %t200, ptr %l94, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i32, ptr %l6, !tbaa !23
  %t205 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t201, i32 %t202)
  store %"compiler/source:Span" %t205, ptr %l97
  br label %bb35
bb35:
  %t206 = load i32, ptr %l7, !tbaa !23
  %t207 = load ptr, ptr %l8, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t208
  %t209 = getelementptr { i64, [4 x i64] }, ptr %t208, i32 0, i32 0
  store i64 26, ptr %t209
  %t210 = load %"compiler/source:Span", ptr %l97
  %t211 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t210, 0
  %t213 = insertvalue { %"compiler/source:Span", i32, ptr } %t211, i32 %t206, 1
  %t215 = insertvalue { %"compiler/source:Span", i32, ptr } %t213, ptr %t207, 2
  %t216 = getelementptr { i64, [4 x i64] }, ptr %t208, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t215, ptr %t216
  %t217 = load { i64, [4 x i64] }, ptr %t208
  %t219 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t217, ptr %t219
  %t220 = load ptr, ptr %l94, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t220, ptr %t219)
  br label %bb36
bb36:
  br label %bb53
bb37:
  %t222 = load ptr, ptr %l104, !tbaa !29
  store ptr %t222, ptr %l102, !tbaa !29
  br label %bb41
bb38:
  br label %bb39
bb39:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/parse:Parser", ptr %t223, i32 0, i32 31
  %t226 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t225, i64 %t226)
  br label %bb40
bb40:
  %t229 = load ptr, ptr %l0, !tbaa !29
  store ptr %t229, ptr %l109, !tbaa !29
  %t230 = load ptr, ptr %l109, !tbaa !29
  %t231 = getelementptr %"compiler/parse:Parser", ptr %t230, i32 0, i32 18
  %t232 = load i64, ptr %t231, !tbaa !24
  %t234 = sub i64 %t232, 1
  %t236 = load ptr, ptr %l109, !tbaa !29
  %t237 = getelementptr %"compiler/parse:Parser", ptr %t236, i32 0, i32 18
  store i64 %t234, ptr %t237, !tbaa !24
  %t238 = load ptr, ptr %l0, !tbaa !29
  %t239 = load i1, ptr %l2, !tbaa !21
  %t242 = getelementptr %"compiler/parse:Parser", ptr %t238, i32 0, i32 19
  store i1 %t239, ptr %t242, !tbaa !21
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t244 = load i1, ptr %l3, !tbaa !21
  %t247 = getelementptr %"compiler/parse:Parser", ptr %t243, i32 0, i32 20
  store i1 %t244, ptr %t247, !tbaa !21
  %t249 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t249, ptr %rv
  br label %ret
bb41:
  %t250 = load ptr, ptr %l102, !tbaa !29
  store ptr %t250, ptr %l9, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %t251)
  store i1 %t253, ptr %l118
  br label %bb42
bb42:
  %t254 = load i1, ptr %l118, !tbaa !21
  br i1 %t254, label %bb43, label %bb44
bb43:
  %t255 = load ptr, ptr %l9, !tbaa !29
  %t257 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t255)
  store %"compiler/source:Span" %t257, ptr %l120
  br label %bb45
bb44:
  br label %bb51
bb45:
  %t258 = getelementptr %"compiler/source:Span", ptr %l120, i32 0, i32 0
  %t259 = load i32, ptr %t258, !tbaa !23
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = load ptr, ptr %l9, !tbaa !29
  %t268 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t261, i32 %t259, ptr null, ptr %t263, i32 109)
  %t269 = extractvalue { i32, ptr } %t268, 1
  %t270 = extractvalue { i32, ptr } %t268, 0
  store i32 %t270, ptr %l128
  %t271 = icmp ne i32 %t270, 0
  br i1 %t271, label %bb47, label %ok.272, !prof !99
ok.272:
  store ptr %t269, ptr %l127
  br label %bb46
bb46:
  %t273 = load ptr, ptr %l127, !tbaa !29
  store ptr %t273, ptr %l122, !tbaa !29
  br label %bb50
bb47:
  br label %bb48
bb48:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/parse:Parser", ptr %t274, i32 0, i32 31
  %t277 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t276, i64 %t277)
  br label %bb49
bb49:
  %t280 = load ptr, ptr %l0, !tbaa !29
  store ptr %t280, ptr %l132, !tbaa !29
  %t281 = load ptr, ptr %l132, !tbaa !29
  %t282 = getelementptr %"compiler/parse:Parser", ptr %t281, i32 0, i32 18
  %t283 = load i64, ptr %t282, !tbaa !24
  %t285 = sub i64 %t283, 1
  %t287 = load ptr, ptr %l132, !tbaa !29
  %t288 = getelementptr %"compiler/parse:Parser", ptr %t287, i32 0, i32 18
  store i64 %t285, ptr %t288, !tbaa !24
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load i1, ptr %l2, !tbaa !21
  %t293 = getelementptr %"compiler/parse:Parser", ptr %t289, i32 0, i32 19
  store i1 %t290, ptr %t293, !tbaa !21
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i1, ptr %l3, !tbaa !21
  %t298 = getelementptr %"compiler/parse:Parser", ptr %t294, i32 0, i32 20
  store i1 %t295, ptr %t298, !tbaa !21
  %t300 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t300, ptr %rv
  br label %ret
bb50:
  %t301 = load ptr, ptr %l122, !tbaa !29
  store ptr %t301, ptr %l9, !tbaa !29
  br label %bb51
bb51:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/parse:Parser", ptr %t302, i32 0, i32 31
  %t305 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t304, ptr %t305)
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t311 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t308, i32 109)
  %t312 = extractvalue { i32, i1 } %t311, 1
  %t313 = extractvalue { i32, i1 } %t311, 0
  store i32 %t313, ptr %l147
  %t314 = icmp ne i32 %t313, 0
  br i1 %t314, label %bb56, label %ok.315, !prof !99
ok.315:
  store i1 %t312, ptr %l146
  br label %bb55
bb55:
  %t316 = load i1, ptr %l146, !tbaa !21
  store i1 %t316, ptr %l143, !tbaa !21
  br label %bb59
bb56:
  br label %bb57
bb57:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/parse:Parser", ptr %t317, i32 0, i32 31
  %t320 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t319, i64 %t320)
  br label %bb58
bb58:
  %t323 = load ptr, ptr %l0, !tbaa !29
  store ptr %t323, ptr %l151, !tbaa !29
  %t324 = load ptr, ptr %l151, !tbaa !29
  %t325 = getelementptr %"compiler/parse:Parser", ptr %t324, i32 0, i32 18
  %t326 = load i64, ptr %t325, !tbaa !24
  %t328 = sub i64 %t326, 1
  %t330 = load ptr, ptr %l151, !tbaa !29
  %t331 = getelementptr %"compiler/parse:Parser", ptr %t330, i32 0, i32 18
  store i64 %t328, ptr %t331, !tbaa !24
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i1, ptr %l2, !tbaa !21
  %t336 = getelementptr %"compiler/parse:Parser", ptr %t332, i32 0, i32 19
  store i1 %t333, ptr %t336, !tbaa !21
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load i1, ptr %l3, !tbaa !21
  %t341 = getelementptr %"compiler/parse:Parser", ptr %t337, i32 0, i32 20
  store i1 %t338, ptr %t341, !tbaa !21
  %t343 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t343, ptr %rv
  br label %ret
bb59:
  %t344 = load i1, ptr %l143, !tbaa !21
  %t347 = xor i1 %t344, true
  br i1 %t347, label %bb60, label %bb61
bb60:
  br label %bb64
bb61:
  br label %bb62
bb62:
  br label %bb63
bb63:
  br label %bb5
bb64:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t350 = load i1, ptr %l2, !tbaa !21
  %t353 = getelementptr %"compiler/parse:Parser", ptr %t349, i32 0, i32 19
  store i1 %t350, ptr %t353, !tbaa !21
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l163, !tbaa !29
  %t355 = load ptr, ptr %l163, !tbaa !29
  %t356 = getelementptr %"compiler/parse:Parser", ptr %t355, i32 0, i32 18
  %t357 = load i64, ptr %t356, !tbaa !24
  %t359 = sub i64 %t357, 1
  %t361 = load ptr, ptr %l163, !tbaa !29
  %t362 = getelementptr %"compiler/parse:Parser", ptr %t361, i32 0, i32 18
  store i64 %t359, ptr %t362, !tbaa !24
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load i1, ptr %l1, !tbaa !21
  %t367 = getelementptr %"compiler/parse:Parser", ptr %t363, i32 0, i32 11
  store i1 %t364, ptr %t367, !tbaa !21
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t371 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t368, i32 109)
  store i1 %t371, ptr %l170
  br label %bb65
bb65:
  %t372 = load i1, ptr %l170, !tbaa !21
  %t373 = xor i1 %t372, true
  br i1 %t373, label %bb66, label %bb67
bb66:
  store %olang.scope zeroinitializer, ptr %s23
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t377 = getelementptr %"compiler/parse:Parser", ptr %t375, i32 0, i32 31
  %t378 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t377, i64 %t378)
  br label %bb68
bb67:
  br label %bb73
bb68:
  %t381 = load ptr, ptr %l0, !tbaa !29
  store ptr %t381, ptr %l175, !tbaa !29
  %t383 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s23, i32 109)
  store { i64, ptr } %t383, ptr %l177
  br label %bb69
bb69:
  %t384 = load { i64, ptr }, ptr %l177, !tbaa !27
  %t385 = extractvalue { i64, ptr } %t384, 0
  %t386 = extractvalue { i64, ptr } %t384, 1
  %t387 = mul i64 %t385, 1
  %t388 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t387)
  call void @llvm.memcpy.p0.p0.i64(ptr %t388, ptr %t386, i64 %t387, i1 false)
  %t389 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr %t388, 1
  %t391 = load ptr, ptr %l175, !tbaa !29
  %t393 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s23, ptr %t391, { i64, ptr } %t390)
  store i32 %t393, ptr %l179
  %t394 = icmp ne i32 %t393, 0
  br i1 %t394, label %bb71, label %ok.395, !prof !99
ok.395:
  br label %bb70
bb70:
  br label %bb72
bb71:
  %t396 = load i32, ptr %l179, !tbaa !23
  %t397 = lshr i32 %t396, 16
  %t398 = and i32 %t396, 65535
  %t399 = icmp eq i32 %t397, 1
  %t400 = select i1 %t399, i32 1, i32 0
  %t401 = icmp eq i32 %t396, 0
  %t402 = shl i32 %t400, 16
  %t403 = or i32 %t402, %t398
  %t404 = select i1 %t401, i32 0, i32 %t403
  call void @__olang_scope_close(ptr %s23)
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load i1, ptr %l3, !tbaa !21
  %t409 = getelementptr %"compiler/parse:Parser", ptr %t405, i32 0, i32 20
  store i1 %t406, ptr %t409, !tbaa !21
  %t411 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t404, 0
  store { i32, { i64, ptr } } %t411, ptr %rv
  br label %ret
bb72:
  call void @__olang_scope_close(ptr %s23)
  br label %bb73
bb73:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t412)
  store i32 %t414, ptr %l184
  br label %bb74
bb74:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = getelementptr %"compiler/parse:Parser", ptr %t415, i32 0, i32 31
  %t418 = load i64, ptr %l4, !tbaa !24
  %t421 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t417, i64 %t418)
  store { i64, ptr } %t421, ptr %l188
  br label %bb75
bb75:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load i1, ptr %l3, !tbaa !21
  %t426 = getelementptr %"compiler/parse:Parser", ptr %t422, i32 0, i32 20
  store i1 %t423, ptr %t426, !tbaa !21
  %t427 = load { i64, ptr }, ptr %l188, !tbaa !27
  %t428 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t427, 1
  store { i32, { i64, ptr } } %t428, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i32
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l6
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l5, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  br label %bb3
bb2:
  %t9 = load i32, ptr %l6, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  %t19 = insertvalue { i32, ptr } zeroinitializer, i32 %t17, 0
  store { i32, ptr } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t27 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinaryFrom(ptr %v0, ptr %v1, ptr %v1, ptr %t21, ptr %t20, i64 %a1)
  %t28 = extractvalue { i32, ptr } %t27, 1
  %t29 = extractvalue { i32, ptr } %t27, 0
  store i32 %t29, ptr %l13
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb5, label %ok.31, !prof !99
ok.31:
  store ptr %t28, ptr %l12
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l12, !tbaa !29
  store ptr %t32, ptr %l8, !tbaa !29
  br label %bb6
bb5:
  %t33 = load i32, ptr %l13, !tbaa !23
  %t34 = lshr i32 %t33, 16
  %t35 = and i32 %t33, 65535
  %t36 = icmp eq i32 %t34, 1
  %t37 = select i1 %t36, i32 1, i32 0
  %t38 = icmp eq i32 %t33, 0
  %t39 = shl i32 %t37, 16
  %t40 = or i32 %t39, %t35
  %t41 = select i1 %t38, i32 0, i32 %t40
  %t43 = insertvalue { i32, ptr } zeroinitializer, i32 %t41, 0
  store { i32, ptr } %t43, ptr %rv
  br label %ret
bb6:
  %t44 = load ptr, ptr %l8, !tbaa !29
  %t45 = insertvalue { i32, ptr } zeroinitializer, ptr %t44, 1
  store { i32, ptr } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinaryFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca %"compiler/source:Span"
  %l21 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l28 = alloca %"compiler/source:Span"
  %l30 = alloca i32
  %l33 = alloca i64
  %l36 = alloca i1
  %l41 = alloca ptr
  %l47 = alloca i1
  %l51 = alloca i1
  %l53 = alloca i1
  %l55 = alloca ptr
  %l61 = alloca i1
  %l63 = alloca i32
  %l68 = alloca ptr
  %l73 = alloca i32
  %l77 = alloca i32
  %l78 = alloca ptr
  %l82 = alloca ptr
  %l83 = alloca i32
  %l85 = alloca ptr
  %l92 = alloca %"compiler/source:Span"
  %l98 = alloca i32
  %l100 = alloca ptr
  %l110 = alloca i1
  %l112 = alloca i1
  %l113 = alloca ptr
  %l115 = alloca ptr
  %l116 = alloca i32
  %l118 = alloca ptr
  %l125 = alloca %"compiler/source:Span"
  %l131 = alloca ptr
  %l135 = alloca ptr
  %l136 = alloca i32
  %l138 = alloca ptr
  %l145 = alloca %"compiler/source:Span"
  %l152 = alloca i32
  %l154 = alloca ptr
  %l160 = alloca ptr
  %l164 = alloca ptr
  %l165 = alloca i32
  %l167 = alloca ptr
  %l172 = alloca i1
  %l173 = alloca i1
  %l175 = alloca i32
  %l176 = alloca i1
  %l177 = alloca i1
  %l178 = alloca ptr
  %l180 = alloca i32
  %l181 = alloca i64
  %l183 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l189 = alloca i64
  %l192 = alloca ptr
  %l198 = alloca i32
  %l200 = alloca ptr
  %l207 = alloca i32
  %l208 = alloca i1
  %l209 = alloca i1
  %l210 = alloca ptr
  %l212 = alloca i32
  %l213 = alloca i64
  %l216 = alloca ptr
  %l218 = alloca i32
  %l220 = alloca i32
  %l222 = alloca ptr
  %l223 = alloca ptr
  %l227 = alloca ptr
  %l228 = alloca i32
  %l230 = alloca ptr
  %l235 = alloca i32
  %l237 = alloca ptr
  %l246 = alloca %"compiler/source:Span"
  %l248 = alloca { i64, ptr }
  %l252 = alloca { i64, ptr }
  %l253 = alloca %"compiler/ast:Chain"
  %l259 = alloca i1
  %l262 = alloca i1
  %l265 = alloca ptr
  %l267 = alloca i1
  %l269 = alloca ptr
  %l270 = alloca ptr
  %l272 = alloca %"compiler/source:Span"
  %l274 = alloca i1
  %l276 = alloca ptr
  %l278 = alloca %"compiler/source:Span"
  %l282 = alloca %"compiler/source:Span"
  %l289 = alloca i32
  %l291 = alloca ptr
  %s28 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t185 = alloca { i64, [4 x i64] }, align 8
  %t296 = alloca { i64, [4 x i64] }, align 8
  %t346 = alloca { i64, [4 x i64] }, align 8
  %t632 = alloca { i64, [4 x i64] }, align 8
  %t705 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t3)
  store %"compiler/source:Span" %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l4, !tbaa !23
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 46
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  store i1 %t16, ptr %l21, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l21, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/parse:Parser", ptr %t19, i32 0, i32 47
  store ptr %t21, ptr %l25, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l26, !tbaa !29
  %t23 = load ptr, ptr %l26, !tbaa !29
  %t24 = call ptr @__olang_scope_of(ptr %t23, ptr null)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t28 = load ptr, ptr %l26, !tbaa !29
  %t29 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %t27, ptr %t28)
  store %"compiler/source:Span" %t29, ptr %l28
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t30 = load ptr, ptr %l25, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t30, %"compiler/source:Span" %t31)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t32)
  store i32 %t34, ptr %l30
  br label %bb11
bb11:
  %t35 = load i32, ptr %l30, !range !{i32 0, i32 114}
  store i32 %t35, ptr %l6
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t40 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l33
  br label %bb12
bb12:
  %t41 = load i64, ptr %l33, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp eq i64 %t42, 0
  br i1 %t44, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb15
bb14:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %a2
  store i1 %t50, ptr %l36, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l36, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l41, !tbaa !29
  %t55 = load ptr, ptr %l41, !tbaa !29
  %t56 = getelementptr %"compiler/parse:Parser", ptr %t55, i32 0, i32 21
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t63 = load ptr, ptr %l41, !tbaa !29
  %t64 = getelementptr %"compiler/parse:Parser", ptr %t63, i32 0, i32 21
  store i64 %t61, ptr %t64, !tbaa !24
  %t66 = insertvalue { i32, ptr } zeroinitializer, ptr %t53, 1
  store { i32, ptr } %t66, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t67 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t69 = trunc i64 74 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/parse:Parser", ptr %t72, i32 0, i32 19
  %t75 = load i1, ptr %t74, !tbaa !21
  %t77 = xor i1 %t75, true
  store i1 %t77, ptr %l47, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t79 = load i1, ptr %l47, !tbaa !21
  br i1 %t79, label %bb22, label %bb23
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t80)
  store i1 %t82, ptr %l53
  br label %bb24
bb23:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb25
bb24:
  %t83 = load i1, ptr %l53, !tbaa !21
  store i1 %t83, ptr %l51, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l51, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l55, !tbaa !29
  %t87 = load ptr, ptr %l55, !tbaa !29
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t87, i32 0, i32 21
  %t89 = load i64, ptr %t88, !tbaa !24
  %t90 = load i64, ptr %l5, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t95 = load ptr, ptr %l55, !tbaa !29
  %t96 = getelementptr %"compiler/parse:Parser", ptr %t95, i32 0, i32 21
  store i64 %t93, ptr %t96, !tbaa !24
  %t98 = insertvalue { i32, ptr } zeroinitializer, ptr %t85, 1
  store { i32, ptr } %t98, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t99 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t101 = trunc i64 48 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb29, label %bb30
bb29:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t104, i64 1)
  store i32 %t106, ptr %l63
  br label %bb31
bb30:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb32
bb31:
  %t107 = load i32, ptr %l63, !range !{i32 0, i32 114}
  %t109 = trunc i64 27 to i32
  %t110 = icmp eq i32 %t107, %t109
  %t112 = xor i1 %t110, true
  store i1 %t112, ptr %l61, !tbaa !21
  br label %bb32
bb32:
  %t114 = load i1, ptr %l61, !tbaa !21
  br i1 %t114, label %bb33, label %bb34
bb33:
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l68, !tbaa !29
  %t117 = load ptr, ptr %l68, !tbaa !29
  %t118 = getelementptr %"compiler/parse:Parser", ptr %t117, i32 0, i32 21
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load i64, ptr %l5, !tbaa !24
  %t123 = sub i64 %t119, %t120
  %t125 = load ptr, ptr %l68, !tbaa !29
  %t126 = getelementptr %"compiler/parse:Parser", ptr %t125, i32 0, i32 21
  store i64 %t123, ptr %t126, !tbaa !24
  %t128 = insertvalue { i32, ptr } zeroinitializer, ptr %t115, 1
  store { i32, ptr } %t128, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t129)
  store i32 %t131, ptr %l73
  br label %bb36
bb36:
  %t132 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t134 = trunc i64 48 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb37, label %bb38
bb37:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t137)
  store i32 %t139, ptr %l77
  br label %bb39
bb38:
  br label %bb47
bb39:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l7, !tbaa !24
  %t143 = add i64 %t141, 1
  %t146 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v2, ptr %t140, i64 %t143)
  %t147 = extractvalue { i32, ptr } %t146, 1
  %t148 = extractvalue { i32, ptr } %t146, 0
  store i32 %t148, ptr %l83
  %t149 = icmp ne i32 %t148, 0
  br i1 %t149, label %bb41, label %ok.150, !prof !99
ok.150:
  store ptr %t147, ptr %l82
  br label %bb40
bb40:
  %t151 = load ptr, ptr %l82, !tbaa !29
  store ptr %t151, ptr %l78, !tbaa !29
  br label %bb42
bb41:
  %t152 = load i32, ptr %l83, !tbaa !23
  %t153 = lshr i32 %t152, 16
  %t154 = and i32 %t152, 65535
  %t155 = icmp eq i32 %t153, 1
  %t156 = select i1 %t155, i32 1, i32 0
  %t157 = icmp eq i32 %t152, 0
  %t158 = shl i32 %t156, 16
  %t159 = or i32 %t158, %t154
  %t160 = select i1 %t157, i32 0, i32 %t159
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l85, !tbaa !29
  %t162 = load ptr, ptr %l85, !tbaa !29
  %t163 = getelementptr %"compiler/parse:Parser", ptr %t162, i32 0, i32 21
  %t164 = load i64, ptr %t163, !tbaa !24
  %t165 = load i64, ptr %l5, !tbaa !24
  %t168 = sub i64 %t164, %t165
  %t170 = load ptr, ptr %l85, !tbaa !29
  %t171 = getelementptr %"compiler/parse:Parser", ptr %t170, i32 0, i32 21
  store i64 %t168, ptr %t171, !tbaa !24
  %t173 = insertvalue { i32, ptr } zeroinitializer, i32 %t160, 0
  store { i32, ptr } %t173, ptr %rv
  br label %ret
bb42:
  %t174 = load ptr, ptr %l78, !tbaa !29
  store ptr %t174, ptr %l8, !tbaa !29
  %t175 = load i32, ptr %l4, !tbaa !23
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/parse:Parser", ptr %t176, i32 0, i32 10
  %t179 = load i32, ptr %t178, !tbaa !23
  %t182 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t175, i32 %t179)
  store %"compiler/source:Span" %t182, ptr %l92
  br label %bb43
bb43:
  %t183 = load ptr, ptr %l3, !tbaa !29
  %t184 = load ptr, ptr %l8, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t185
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t185, i32 0, i32 0
  store i64 6, ptr %t186
  %t187 = load %"compiler/source:Span", ptr %l92
  %t188 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t187, 0
  %t190 = insertvalue { %"compiler/source:Span", ptr, ptr } %t188, ptr %t183, 1
  %t192 = insertvalue { %"compiler/source:Span", ptr, ptr } %t190, ptr %t184, 2
  %t193 = getelementptr { i64, [4 x i64] }, ptr %t185, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t192, ptr %t193
  %t194 = load { i64, [4 x i64] }, ptr %t185
  %t196 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t194, ptr %t196
  store ptr %t196, ptr %l3, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t198)
  store i32 %t200, ptr %l98
  %t201 = icmp ne i32 %t200, 0
  br i1 %t201, label %bb45, label %ok.202, !prof !99
ok.202:
  br label %bb44
bb44:
  br label %bb46
bb45:
  %t203 = load i32, ptr %l98, !tbaa !23
  %t204 = lshr i32 %t203, 16
  %t205 = and i32 %t203, 65535
  %t206 = icmp eq i32 %t204, 1
  %t207 = select i1 %t206, i32 1, i32 0
  %t208 = icmp eq i32 %t203, 0
  %t209 = shl i32 %t207, 16
  %t210 = or i32 %t209, %t205
  %t211 = select i1 %t208, i32 0, i32 %t210
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l100, !tbaa !29
  %t213 = load ptr, ptr %l100, !tbaa !29
  %t214 = getelementptr %"compiler/parse:Parser", ptr %t213, i32 0, i32 21
  %t215 = load i64, ptr %t214, !tbaa !24
  %t216 = load i64, ptr %l5, !tbaa !24
  %t219 = sub i64 %t215, %t216
  %t221 = load ptr, ptr %l100, !tbaa !29
  %t222 = getelementptr %"compiler/parse:Parser", ptr %t221, i32 0, i32 21
  store i64 %t219, ptr %t222, !tbaa !24
  %t224 = insertvalue { i32, ptr } zeroinitializer, i32 %t211, 0
  store { i32, ptr } %t224, ptr %rv
  br label %ret
bb46:
  %t225 = load i64, ptr %l5, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l5, !tbaa !24
  br label %bb144
bb47:
  %t229 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t231 = trunc i64 28 to i32
  %t232 = icmp eq i32 %t229, %t231
  br i1 %t232, label %bb48, label %bb49
bb48:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t237 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t234, i32 48)
  store i1 %t237, ptr %l110
  br label %bb50
bb49:
  br label %bb66
bb50:
  %t238 = load i1, ptr %l110, !tbaa !21
  store i1 %t238, ptr %l9, !tbaa !21
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsType(ptr %v0, ptr %t239)
  store i1 %t241, ptr %l112
  br label %bb51
bb51:
  %t242 = load i1, ptr %l112, !tbaa !21
  br i1 %t242, label %bb52, label %bb53
bb52:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v2, ptr %t243)
  %t246 = extractvalue { i32, ptr } %t245, 1
  %t247 = extractvalue { i32, ptr } %t245, 0
  store i32 %t247, ptr %l116
  %t248 = icmp ne i32 %t247, 0
  br i1 %t248, label %bb55, label %ok.249, !prof !99
ok.249:
  store ptr %t246, ptr %l115
  br label %bb54
bb53:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i64, ptr %l7, !tbaa !24
  %t253 = add i64 %t251, 1
  %t256 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v2, ptr %t250, i64 %t253)
  %t257 = extractvalue { i32, ptr } %t256, 1
  %t258 = extractvalue { i32, ptr } %t256, 0
  store i32 %t258, ptr %l136
  %t259 = icmp ne i32 %t258, 0
  br i1 %t259, label %bb59, label %ok.260, !prof !99
ok.260:
  store ptr %t257, ptr %l135
  br label %bb58
bb54:
  %t261 = load ptr, ptr %l115, !tbaa !29
  store ptr %t261, ptr %l113, !tbaa !29
  br label %bb56
bb55:
  %t262 = load i32, ptr %l116, !tbaa !23
  %t263 = lshr i32 %t262, 16
  %t264 = and i32 %t262, 65535
  %t265 = icmp eq i32 %t263, 1
  %t266 = select i1 %t265, i32 1, i32 0
  %t267 = icmp eq i32 %t262, 0
  %t268 = shl i32 %t266, 16
  %t269 = or i32 %t268, %t264
  %t270 = select i1 %t267, i32 0, i32 %t269
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l118, !tbaa !29
  %t272 = load ptr, ptr %l118, !tbaa !29
  %t273 = getelementptr %"compiler/parse:Parser", ptr %t272, i32 0, i32 21
  %t274 = load i64, ptr %t273, !tbaa !24
  %t275 = load i64, ptr %l5, !tbaa !24
  %t278 = sub i64 %t274, %t275
  %t280 = load ptr, ptr %l118, !tbaa !29
  %t281 = getelementptr %"compiler/parse:Parser", ptr %t280, i32 0, i32 21
  store i64 %t278, ptr %t281, !tbaa !24
  %t283 = insertvalue { i32, ptr } zeroinitializer, i32 %t270, 0
  store { i32, ptr } %t283, ptr %rv
  br label %ret
bb56:
  %t284 = load ptr, ptr %l113, !tbaa !29
  store ptr %t284, ptr %l10, !tbaa !29
  %t285 = load i32, ptr %l4, !tbaa !23
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr %"compiler/parse:Parser", ptr %t286, i32 0, i32 10
  %t289 = load i32, ptr %t288, !tbaa !23
  %t292 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t285, i32 %t289)
  store %"compiler/source:Span" %t292, ptr %l125
  br label %bb57
bb57:
  %t293 = load ptr, ptr %l3, !tbaa !29
  %t294 = load ptr, ptr %l10, !tbaa !29
  %t295 = load i1, ptr %l9, !tbaa !21
  store { i64, [4 x i64] } zeroinitializer, ptr %t296
  %t297 = getelementptr { i64, [4 x i64] }, ptr %t296, i32 0, i32 0
  store i64 9, ptr %t297
  %t298 = load %"compiler/source:Span", ptr %l125
  %t299 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } undef, %"compiler/source:Span" %t298, 0
  %t301 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t299, ptr %t293, 1
  %t303 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t301, ptr %t294, 2
  %t305 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t303, i1 %t295, 3
  %t306 = getelementptr { i64, [4 x i64] }, ptr %t296, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr, i1 } %t305, ptr %t306
  %t307 = load { i64, [4 x i64] }, ptr %t296
  %t309 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t307, ptr %t309
  store ptr %t309, ptr %l3, !tbaa !29
  br label %bb62
bb58:
  %t311 = load ptr, ptr %l135, !tbaa !29
  store ptr %t311, ptr %l131, !tbaa !29
  br label %bb60
bb59:
  %t312 = load i32, ptr %l136, !tbaa !23
  %t313 = lshr i32 %t312, 16
  %t314 = and i32 %t312, 65535
  %t315 = icmp eq i32 %t313, 1
  %t316 = select i1 %t315, i32 1, i32 0
  %t317 = icmp eq i32 %t312, 0
  %t318 = shl i32 %t316, 16
  %t319 = or i32 %t318, %t314
  %t320 = select i1 %t317, i32 0, i32 %t319
  %t321 = load ptr, ptr %l0, !tbaa !29
  store ptr %t321, ptr %l138, !tbaa !29
  %t322 = load ptr, ptr %l138, !tbaa !29
  %t323 = getelementptr %"compiler/parse:Parser", ptr %t322, i32 0, i32 21
  %t324 = load i64, ptr %t323, !tbaa !24
  %t325 = load i64, ptr %l5, !tbaa !24
  %t328 = sub i64 %t324, %t325
  %t330 = load ptr, ptr %l138, !tbaa !29
  %t331 = getelementptr %"compiler/parse:Parser", ptr %t330, i32 0, i32 21
  store i64 %t328, ptr %t331, !tbaa !24
  %t333 = insertvalue { i32, ptr } zeroinitializer, i32 %t320, 0
  store { i32, ptr } %t333, ptr %rv
  br label %ret
bb60:
  %t334 = load ptr, ptr %l131, !tbaa !29
  store ptr %t334, ptr %l11, !tbaa !29
  %t335 = load i32, ptr %l4, !tbaa !23
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/parse:Parser", ptr %t336, i32 0, i32 10
  %t339 = load i32, ptr %t338, !tbaa !23
  %t342 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t335, i32 %t339)
  store %"compiler/source:Span" %t342, ptr %l145
  br label %bb61
bb61:
  %t343 = load ptr, ptr %l3, !tbaa !29
  %t344 = load ptr, ptr %l11, !tbaa !29
  %t345 = load i1, ptr %l9, !tbaa !21
  store { i64, [4 x i64] } zeroinitializer, ptr %t346
  %t347 = getelementptr { i64, [4 x i64] }, ptr %t346, i32 0, i32 0
  store i64 10, ptr %t347
  %t348 = load %"compiler/source:Span", ptr %l145
  %t349 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } undef, %"compiler/source:Span" %t348, 0
  %t351 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t349, ptr %t343, 1
  %t353 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t351, ptr %t344, 2
  %t355 = insertvalue { %"compiler/source:Span", ptr, ptr, i1 } %t353, i1 %t345, 3
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t346, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr, i1 } %t355, ptr %t356
  %t357 = load { i64, [4 x i64] }, ptr %t346
  %t359 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t357, ptr %t359
  store ptr %t359, ptr %l3, !tbaa !29
  br label %bb62
bb62:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t361)
  store i32 %t363, ptr %l152
  %t364 = icmp ne i32 %t363, 0
  br i1 %t364, label %bb64, label %ok.365, !prof !99
ok.365:
  br label %bb63
bb63:
  br label %bb65
bb64:
  %t366 = load i32, ptr %l152, !tbaa !23
  %t367 = lshr i32 %t366, 16
  %t368 = and i32 %t366, 65535
  %t369 = icmp eq i32 %t367, 1
  %t370 = select i1 %t369, i32 1, i32 0
  %t371 = icmp eq i32 %t366, 0
  %t372 = shl i32 %t370, 16
  %t373 = or i32 %t372, %t368
  %t374 = select i1 %t371, i32 0, i32 %t373
  %t375 = load ptr, ptr %l0, !tbaa !29
  store ptr %t375, ptr %l154, !tbaa !29
  %t376 = load ptr, ptr %l154, !tbaa !29
  %t377 = getelementptr %"compiler/parse:Parser", ptr %t376, i32 0, i32 21
  %t378 = load i64, ptr %t377, !tbaa !24
  %t379 = load i64, ptr %l5, !tbaa !24
  %t382 = sub i64 %t378, %t379
  %t384 = load ptr, ptr %l154, !tbaa !29
  %t385 = getelementptr %"compiler/parse:Parser", ptr %t384, i32 0, i32 21
  store i64 %t382, ptr %t385, !tbaa !24
  %t387 = insertvalue { i32, ptr } zeroinitializer, i32 %t374, 0
  store { i32, ptr } %t387, ptr %rv
  br label %ret
bb65:
  %t388 = load i64, ptr %l5, !tbaa !24
  %t390 = add i64 %t388, 1
  store i64 %t390, ptr %l5, !tbaa !24
  br label %bb144
bb66:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load i64, ptr %l7, !tbaa !24
  %t395 = add i64 %t393, 1
  %t398 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v0, ptr %t392, i64 %t395)
  %t399 = extractvalue { i32, ptr } %t398, 1
  %t400 = extractvalue { i32, ptr } %t398, 0
  store i32 %t400, ptr %l165
  %t401 = icmp ne i32 %t400, 0
  br i1 %t401, label %bb68, label %ok.402, !prof !99
ok.402:
  store ptr %t399, ptr %l164
  br label %bb67
bb67:
  %t403 = load ptr, ptr %l164, !tbaa !29
  store ptr %t403, ptr %l160, !tbaa !29
  br label %bb69
bb68:
  %t404 = load i32, ptr %l165, !tbaa !23
  %t405 = lshr i32 %t404, 16
  %t406 = and i32 %t404, 65535
  %t407 = icmp eq i32 %t405, 1
  %t408 = select i1 %t407, i32 1, i32 0
  %t409 = icmp eq i32 %t404, 0
  %t410 = shl i32 %t408, 16
  %t411 = or i32 %t410, %t406
  %t412 = select i1 %t409, i32 0, i32 %t411
  %t413 = load ptr, ptr %l0, !tbaa !29
  store ptr %t413, ptr %l167, !tbaa !29
  %t414 = load ptr, ptr %l167, !tbaa !29
  %t415 = getelementptr %"compiler/parse:Parser", ptr %t414, i32 0, i32 21
  %t416 = load i64, ptr %t415, !tbaa !24
  %t417 = load i64, ptr %l5, !tbaa !24
  %t420 = sub i64 %t416, %t417
  %t422 = load ptr, ptr %l167, !tbaa !29
  %t423 = getelementptr %"compiler/parse:Parser", ptr %t422, i32 0, i32 21
  store i64 %t420, ptr %t423, !tbaa !24
  %t425 = insertvalue { i32, ptr } zeroinitializer, i32 %t412, 0
  store { i32, ptr } %t425, ptr %rv
  br label %ret
bb69:
  %t426 = load ptr, ptr %l160, !tbaa !29
  store ptr %t426, ptr %l12, !tbaa !29
  %t427 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t429 = call i1 @compiler_2fparse_2eisOrdering(i32 %t427)
  store i1 %t429, ptr %l172
  br label %bb70
bb70:
  %t430 = load i1, ptr %l172, !tbaa !21
  br i1 %t430, label %bb71, label %bb72
bb71:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t433 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t431)
  store i32 %t433, ptr %l175
  br label %bb73
bb72:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb75
bb73:
  %t434 = load i32, ptr %l175, !range !{i32 0, i32 114}
  %t435 = call i1 @compiler_2fparse_2eisOrdering(i32 %t434)
  store i1 %t435, ptr %l176
  br label %bb74
bb74:
  %t436 = load i1, ptr %l176, !tbaa !21
  store i1 %t436, ptr %l173, !tbaa !21
  br label %bb75
bb75:
  %t437 = load i1, ptr %l173, !tbaa !21
  br i1 %t437, label %bb76, label %bb77
bb76:
  %t438 = load ptr, ptr %l0, !tbaa !29
  store ptr %t438, ptr %l178, !tbaa !29
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t439)
  store i32 %t441, ptr %l180
  br label %bb78
bb77:
  store i1 false, ptr %l177, !tbaa !21
  br label %bb80
bb78:
  %t442 = load ptr, ptr %l178, !tbaa !29
  %t443 = load i32, ptr %l180, !range !{i32 0, i32 114}
  %t444 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %t442, i32 %t443)
  store i64 %t444, ptr %l181
  br label %bb79
bb79:
  %t445 = load i64, ptr %l181, !tbaa !24
  %t446 = icmp sgt i64 %t445, 0
  store i1 %t446, ptr %l177, !tbaa !21
  br label %bb80
bb80:
  %t448 = load i1, ptr %l177, !tbaa !21
  br i1 %t448, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s28
  %t449 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ector(ptr %s28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t449, ptr %l183
  br label %bb83
bb82:
  br label %bb118
bb83:
  %t450 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l183
  %t451 = call ptr @__olang_scope_alloc_a(ptr %s28, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t450, ptr %t451
  store ptr %t451, ptr %l13, !tbaa !29
  %t453 = load ptr, ptr %l13, !tbaa !29
  %t454 = load i32, ptr %l6, !range !{i32 0, i32 114}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %s28, ptr %t453, i32 %t454)
  br label %bb84
bb84:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/parse:Parser", ptr %t457, i32 0, i32 31
  %t461 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t459)
  store i64 %t461, ptr %l189
  br label %bb85
bb85:
  %t462 = load i64, ptr %l189, !tbaa !24
  store i64 %t462, ptr %l14, !tbaa !24
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/parse:Parser", ptr %t463, i32 0, i32 31
  %t466 = load ptr, ptr %l3, !tbaa !29
  store ptr %t466, ptr %l192, !tbaa !29
  %t467 = load ptr, ptr %l192, !tbaa !29
  %t468 = call ptr @__olang_scope_of(ptr %t467, ptr null)
  %t469 = ptrtoint ptr %t468 to i64
  %t471 = inttoptr i64 %t469 to ptr
  %t473 = load ptr, ptr %l192, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t471, ptr %t465, ptr %t473)
  br label %bb86
bb86:
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t476 = getelementptr %"compiler/parse:Parser", ptr %t474, i32 0, i32 31
  %t477 = load ptr, ptr %l12, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t476, ptr %t477)
  br label %bb87
bb87:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t482 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t480)
  store i32 %t482, ptr %l198
  %t483 = icmp ne i32 %t482, 0
  br i1 %t483, label %bb89, label %ok.484, !prof !99
ok.484:
  br label %bb88
bb88:
  br label %bb90
bb89:
  %t485 = load i32, ptr %l198, !tbaa !23
  %t486 = lshr i32 %t485, 16
  %t487 = and i32 %t485, 65535
  %t488 = icmp eq i32 %t486, 1
  %t489 = select i1 %t488, i32 1, i32 0
  %t490 = icmp eq i32 %t485, 0
  %t491 = shl i32 %t489, 16
  %t492 = or i32 %t491, %t487
  %t493 = select i1 %t490, i32 0, i32 %t492
  call void @__olang_scope_close(ptr %s28)
  %t494 = load ptr, ptr %l0, !tbaa !29
  store ptr %t494, ptr %l200, !tbaa !29
  %t495 = load ptr, ptr %l200, !tbaa !29
  %t496 = getelementptr %"compiler/parse:Parser", ptr %t495, i32 0, i32 21
  %t497 = load i64, ptr %t496, !tbaa !24
  %t498 = load i64, ptr %l5, !tbaa !24
  %t501 = sub i64 %t497, %t498
  %t503 = load ptr, ptr %l200, !tbaa !29
  %t504 = getelementptr %"compiler/parse:Parser", ptr %t503, i32 0, i32 21
  store i64 %t501, ptr %t504, !tbaa !24
  %t506 = insertvalue { i32, ptr } zeroinitializer, i32 %t493, 0
  store { i32, ptr } %t506, ptr %rv
  br label %ret
bb90:
  %t507 = load i64, ptr %l5, !tbaa !24
  %t509 = add i64 %t507, 1
  store i64 %t509, ptr %l5, !tbaa !24
  br label %bb91
bb91:
  %t511 = load ptr, ptr %l0, !tbaa !29
  %t513 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t511)
  store i32 %t513, ptr %l207
  br label %bb92
bb92:
  %t514 = load i32, ptr %l207, !range !{i32 0, i32 114}
  %t515 = call i1 @compiler_2fparse_2eisOrdering(i32 %t514)
  store i1 %t515, ptr %l208
  br label %bb93
bb93:
  %t516 = load i1, ptr %l208, !tbaa !21
  br i1 %t516, label %bb94, label %bb95
bb94:
  %t517 = load ptr, ptr %l0, !tbaa !29
  store ptr %t517, ptr %l210, !tbaa !29
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t520 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t518)
  store i32 %t520, ptr %l212
  br label %bb96
bb95:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb98
bb96:
  %t521 = load ptr, ptr %l210, !tbaa !29
  %t522 = load i32, ptr %l212, !range !{i32 0, i32 114}
  %t523 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %t521, i32 %t522)
  store i64 %t523, ptr %l213
  br label %bb97
bb97:
  %t524 = load i64, ptr %l213, !tbaa !24
  %t525 = icmp sgt i64 %t524, 0
  store i1 %t525, ptr %l209, !tbaa !21
  br label %bb98
bb98:
  %t527 = load i1, ptr %l209, !tbaa !21
  %t528 = xor i1 %t527, true
  br i1 %t528, label %bb99, label %bb100
bb99:
  br label %bb113
bb100:
  br label %bb101
bb101:
  %t530 = load ptr, ptr %l13, !tbaa !29
  store ptr %t530, ptr %l216, !tbaa !29
  %t531 = load ptr, ptr %l0, !tbaa !29
  %t533 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t531)
  store i32 %t533, ptr %l218
  br label %bb102
bb102:
  %t534 = load ptr, ptr %l216, !tbaa !29
  %t535 = load i32, ptr %l218, !range !{i32 0, i32 114}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %s28, ptr %t534, i32 %t535)
  br label %bb103
bb103:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t536)
  store i32 %t538, ptr %l220
  br label %bb104
bb104:
  %t539 = load ptr, ptr %l0, !tbaa !29
  %t541 = getelementptr %"compiler/parse:Parser", ptr %t539, i32 0, i32 31
  store ptr %t541, ptr %l222, !tbaa !29
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t543 = load i64, ptr %l7, !tbaa !24
  %t545 = add i64 %t543, 1
  %t548 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v0, ptr %t542, i64 %t545)
  %t549 = extractvalue { i32, ptr } %t548, 1
  %t550 = extractvalue { i32, ptr } %t548, 0
  store i32 %t550, ptr %l228
  %t551 = icmp ne i32 %t550, 0
  br i1 %t551, label %bb106, label %ok.552, !prof !99
ok.552:
  store ptr %t549, ptr %l227
  br label %bb105
bb105:
  %t553 = load ptr, ptr %l227, !tbaa !29
  store ptr %t553, ptr %l223, !tbaa !29
  br label %bb107
bb106:
  %t554 = load i32, ptr %l228, !tbaa !23
  %t555 = lshr i32 %t554, 16
  %t556 = and i32 %t554, 65535
  %t557 = icmp eq i32 %t555, 1
  %t558 = select i1 %t557, i32 1, i32 0
  %t559 = icmp eq i32 %t554, 0
  %t560 = shl i32 %t558, 16
  %t561 = or i32 %t560, %t556
  %t562 = select i1 %t559, i32 0, i32 %t561
  call void @__olang_scope_close(ptr %s28)
  %t563 = load ptr, ptr %l0, !tbaa !29
  store ptr %t563, ptr %l230, !tbaa !29
  %t564 = load ptr, ptr %l230, !tbaa !29
  %t565 = getelementptr %"compiler/parse:Parser", ptr %t564, i32 0, i32 21
  %t566 = load i64, ptr %t565, !tbaa !24
  %t567 = load i64, ptr %l5, !tbaa !24
  %t570 = sub i64 %t566, %t567
  %t572 = load ptr, ptr %l230, !tbaa !29
  %t573 = getelementptr %"compiler/parse:Parser", ptr %t572, i32 0, i32 21
  store i64 %t570, ptr %t573, !tbaa !24
  %t575 = insertvalue { i32, ptr } zeroinitializer, i32 %t562, 0
  store { i32, ptr } %t575, ptr %rv
  br label %ret
bb107:
  %t576 = load ptr, ptr %l222, !tbaa !29
  %t577 = load ptr, ptr %l223, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t576, ptr %t577)
  br label %bb108
bb108:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t578)
  store i32 %t580, ptr %l235
  %t581 = icmp ne i32 %t580, 0
  br i1 %t581, label %bb110, label %ok.582, !prof !99
ok.582:
  br label %bb109
bb109:
  br label %bb111
bb110:
  %t583 = load i32, ptr %l235, !tbaa !23
  %t584 = lshr i32 %t583, 16
  %t585 = and i32 %t583, 65535
  %t586 = icmp eq i32 %t584, 1
  %t587 = select i1 %t586, i32 1, i32 0
  %t588 = icmp eq i32 %t583, 0
  %t589 = shl i32 %t587, 16
  %t590 = or i32 %t589, %t585
  %t591 = select i1 %t588, i32 0, i32 %t590
  call void @__olang_scope_close(ptr %s28)
  %t592 = load ptr, ptr %l0, !tbaa !29
  store ptr %t592, ptr %l237, !tbaa !29
  %t593 = load ptr, ptr %l237, !tbaa !29
  %t594 = getelementptr %"compiler/parse:Parser", ptr %t593, i32 0, i32 21
  %t595 = load i64, ptr %t594, !tbaa !24
  %t596 = load i64, ptr %l5, !tbaa !24
  %t599 = sub i64 %t595, %t596
  %t601 = load ptr, ptr %l237, !tbaa !29
  %t602 = getelementptr %"compiler/parse:Parser", ptr %t601, i32 0, i32 21
  store i64 %t599, ptr %t602, !tbaa !24
  %t604 = insertvalue { i32, ptr } zeroinitializer, i32 %t591, 0
  store { i32, ptr } %t604, ptr %rv
  br label %ret
bb111:
  %t605 = load i64, ptr %l5, !tbaa !24
  %t607 = add i64 %t605, 1
  store i64 %t607, ptr %l5, !tbaa !24
  br label %bb112
bb112:
  br label %bb91
bb113:
  %t609 = load i32, ptr %l4, !tbaa !23
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr %"compiler/parse:Parser", ptr %t610, i32 0, i32 10
  %t613 = load i32, ptr %t612, !tbaa !23
  %t616 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t609, i32 %t613)
  store %"compiler/source:Span" %t616, ptr %l246
  br label %bb114
bb114:
  %t617 = load ptr, ptr %l13, !tbaa !29
  %t619 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eToArray_3ccompiler_2ftoken_3aTok_3e(ptr %s28, ptr %v2, ptr %t617)
  store { i64, ptr } %t619, ptr %l248
  br label %bb115
bb115:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/parse:Parser", ptr %t620, i32 0, i32 31
  %t623 = load i64, ptr %l14, !tbaa !24
  %t626 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t622, i64 %t623)
  store { i64, ptr } %t626, ptr %l252
  br label %bb116
bb116:
  %t627 = load { i64, ptr }, ptr %l248, !tbaa !27
  %t628 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t629 = call %"compiler/ast:Chain" @compiler_2fast_3aChain_2ector(ptr %v2, ptr %v0, ptr %v2, { i64, ptr } %t627, { i64, ptr } %t628)
  store %"compiler/ast:Chain" %t629, ptr %l253
  br label %bb117
bb117:
  %t630 = load %"compiler/ast:Chain", ptr %l253
  %t631 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/ast:Chain" %t630, ptr %t631
  store { i64, [4 x i64] } zeroinitializer, ptr %t632
  %t633 = getelementptr { i64, [4 x i64] }, ptr %t632, i32 0, i32 0
  store i64 7, ptr %t633
  %t634 = load %"compiler/source:Span", ptr %l246
  %t635 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t634, 0
  %t637 = insertvalue { %"compiler/source:Span", ptr } %t635, ptr %t631, 1
  %t638 = getelementptr { i64, [4 x i64] }, ptr %t632, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t637, ptr %t638
  %t639 = load { i64, [4 x i64] }, ptr %t632
  %t641 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t639, ptr %t641
  store ptr %t641, ptr %l3, !tbaa !29
  call void @__olang_scope_close(ptr %s28)
  br label %bb144
bb118:
  %t643 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t645 = trunc i64 101 to i32
  %t646 = icmp eq i32 %t643, %t645
  br i1 %t646, label %bb119, label %bb120
bb119:
  store i1 true, ptr %l259, !tbaa !21
  br label %bb121
bb120:
  %t648 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t650 = trunc i64 102 to i32
  %t651 = icmp eq i32 %t648, %t650
  store i1 %t651, ptr %l259, !tbaa !21
  br label %bb121
bb121:
  %t653 = load i1, ptr %l259, !tbaa !21
  br i1 %t653, label %bb122, label %bb123
bb122:
  store i1 true, ptr %l262, !tbaa !21
  br label %bb124
bb123:
  %t654 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t656 = trunc i64 103 to i32
  %t657 = icmp eq i32 %t654, %t656
  store i1 %t657, ptr %l262, !tbaa !21
  br label %bb124
bb124:
  %t659 = load i1, ptr %l262, !tbaa !21
  br i1 %t659, label %bb125, label %bb126
bb125:
  %t660 = load ptr, ptr %l3, !tbaa !29
  store ptr %t660, ptr %l265, !tbaa !29
  %t661 = load ptr, ptr %l265, !tbaa !29
  %t662 = call ptr @__olang_scope_of(ptr %t661, ptr null)
  %t663 = ptrtoint ptr %t662 to i64
  %t665 = inttoptr i64 %t663 to ptr
  %t666 = load ptr, ptr %l265, !tbaa !29
  %t667 = call i1 @compiler_2fparse_2ecomparison(ptr %t665, ptr %t666)
  store i1 %t667, ptr %l267
  br label %bb127
bb126:
  br label %bb139
bb127:
  %t668 = load i1, ptr %l267, !tbaa !21
  br i1 %t668, label %bb128, label %bb129
bb128:
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t671 = getelementptr %"compiler/parse:Parser", ptr %t669, i32 0, i32 44
  store ptr %t671, ptr %l269, !tbaa !29
  %t672 = load ptr, ptr %l3, !tbaa !29
  store ptr %t672, ptr %l270, !tbaa !29
  %t673 = load ptr, ptr %l270, !tbaa !29
  %t674 = call ptr @__olang_scope_of(ptr %t673, ptr null)
  %t675 = ptrtoint ptr %t674 to i64
  %t677 = inttoptr i64 %t675 to ptr
  %t678 = load ptr, ptr %l270, !tbaa !29
  %t679 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %t677, ptr %t678)
  store %"compiler/source:Span" %t679, ptr %l272
  br label %bb130
bb129:
  br label %bb132
bb130:
  %t680 = load ptr, ptr %l269, !tbaa !29
  %t681 = load %"compiler/source:Span", ptr %l272
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t680, %"compiler/source:Span" %t681)
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t682 = load ptr, ptr %l12, !tbaa !29
  %t684 = call i1 @compiler_2fparse_2ecomparison(ptr %v0, ptr %t682)
  store i1 %t684, ptr %l274
  br label %bb133
bb133:
  %t685 = load i1, ptr %l274, !tbaa !21
  br i1 %t685, label %bb134, label %bb135
bb134:
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/parse:Parser", ptr %t686, i32 0, i32 44
  store ptr %t688, ptr %l276, !tbaa !29
  %t689 = load ptr, ptr %l12, !tbaa !29
  %t691 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t689)
  store %"compiler/source:Span" %t691, ptr %l278
  br label %bb136
bb135:
  br label %bb138
bb136:
  %t692 = load ptr, ptr %l276, !tbaa !29
  %t693 = load %"compiler/source:Span", ptr %l278
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t692, %"compiler/source:Span" %t693)
  br label %bb137
bb137:
  br label %bb138
bb138:
  br label %bb139
bb139:
  %t694 = load i32, ptr %l4, !tbaa !23
  %t695 = load ptr, ptr %l0, !tbaa !29
  %t697 = getelementptr %"compiler/parse:Parser", ptr %t695, i32 0, i32 10
  %t698 = load i32, ptr %t697, !tbaa !23
  %t701 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t694, i32 %t698)
  store %"compiler/source:Span" %t701, ptr %l282
  br label %bb140
bb140:
  %t702 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t703 = load ptr, ptr %l3, !tbaa !29
  %t704 = load ptr, ptr %l12, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t705
  %t706 = getelementptr { i64, [4 x i64] }, ptr %t705, i32 0, i32 0
  store i64 5, ptr %t706
  %t707 = load %"compiler/source:Span", ptr %l282
  %t708 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t707, 0
  %t710 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t708, i32 %t702, 1
  %t712 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t710, ptr %t703, 2
  %t714 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t712, ptr %t704, 3
  %t715 = getelementptr { i64, [4 x i64] }, ptr %t705, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t714, ptr %t715
  %t716 = load { i64, [4 x i64] }, ptr %t705
  %t718 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t716, ptr %t718
  store ptr %t718, ptr %l3, !tbaa !29
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t722 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t720)
  store i32 %t722, ptr %l289
  %t723 = icmp ne i32 %t722, 0
  br i1 %t723, label %bb142, label %ok.724, !prof !99
ok.724:
  br label %bb141
bb141:
  br label %bb143
bb142:
  %t725 = load i32, ptr %l289, !tbaa !23
  %t726 = lshr i32 %t725, 16
  %t727 = and i32 %t725, 65535
  %t728 = icmp eq i32 %t726, 1
  %t729 = select i1 %t728, i32 1, i32 0
  %t730 = icmp eq i32 %t725, 0
  %t731 = shl i32 %t729, 16
  %t732 = or i32 %t731, %t727
  %t733 = select i1 %t730, i32 0, i32 %t732
  %t734 = load ptr, ptr %l0, !tbaa !29
  store ptr %t734, ptr %l291, !tbaa !29
  %t735 = load ptr, ptr %l291, !tbaa !29
  %t736 = getelementptr %"compiler/parse:Parser", ptr %t735, i32 0, i32 21
  %t737 = load i64, ptr %t736, !tbaa !24
  %t738 = load i64, ptr %l5, !tbaa !24
  %t741 = sub i64 %t737, %t738
  %t743 = load ptr, ptr %l291, !tbaa !29
  %t744 = getelementptr %"compiler/parse:Parser", ptr %t743, i32 0, i32 21
  store i64 %t741, ptr %t744, !tbaa !24
  %t746 = insertvalue { i32, ptr } zeroinitializer, i32 %t733, 0
  store { i32, ptr } %t746, ptr %rv
  br label %ret
bb143:
  %t747 = load i64, ptr %l5, !tbaa !24
  %t749 = add i64 %t747, 1
  store i64 %t749, ptr %l5, !tbaa !24
  br label %bb144
bb144:
  br label %bb2
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca i32
  %l11 = alloca i32
  %l14 = alloca i1
  %l19 = alloca i1
  %l22 = alloca i1
  %l27 = alloca i1
  %l30 = alloca i1
  %l33 = alloca i1
  %l40 = alloca i1
  %l43 = alloca i1
  %l46 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l53 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t7 = trunc i64 8 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/parse:Parser", ptr %t10, i32 0, i32 16
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t17)
  store i32 %t19, ptr %l11
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb8:
  %t20 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t22 = trunc i64 113 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb11
bb10:
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t27 = trunc i64 0 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l14, !tbaa !21
  br label %bb11
bb11:
  %t30 = load i1, ptr %l14, !tbaa !21
  br i1 %t30, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/parse:Parser", ptr %t31, i32 0, i32 14
  %t34 = load i1, ptr %t33, !tbaa !21
  br i1 %t34, label %bb15, label %bb16
bb15:
  %t36 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t38 = trunc i64 10 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb17, label %bb18
bb16:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb20
bb17:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb19
bb18:
  %t41 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t43 = trunc i64 12 to i32
  %t44 = icmp eq i32 %t41, %t43
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb19
bb19:
  %t46 = load i1, ptr %l22, !tbaa !21
  store i1 %t46, ptr %l19, !tbaa !21
  br label %bb20
bb20:
  %t47 = load i1, ptr %l19, !tbaa !21
  br i1 %t47, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t48, i32 0, i32 16
  %t51 = load i1, ptr %t50, !tbaa !21
  br i1 %t51, label %bb24, label %bb25
bb24:
  %t53 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t55 = trunc i64 109 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb32
bb26:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb28
bb27:
  %t58 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t60 = trunc i64 111 to i32
  %t61 = icmp eq i32 %t58, %t60
  store i1 %t61, ptr %l30, !tbaa !21
  br label %bb28
bb28:
  %t63 = load i1, ptr %l30, !tbaa !21
  br i1 %t63, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb31
bb30:
  %t64 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t66 = trunc i64 75 to i32
  %t67 = icmp eq i32 %t64, %t66
  store i1 %t67, ptr %l33, !tbaa !21
  br label %bb31
bb31:
  %t69 = load i1, ptr %l33, !tbaa !21
  store i1 %t69, ptr %l27, !tbaa !21
  br label %bb32
bb32:
  %t70 = load i1, ptr %l27, !tbaa !21
  br i1 %t70, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb34:
  br label %bb35
bb35:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/parse:Parser", ptr %t71, i32 0, i32 9
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 114}
  store i32 %t74, ptr %l2
  %t76 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t78 = trunc i64 101 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb38
bb37:
  %t81 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t83 = trunc i64 99 to i32
  %t84 = icmp eq i32 %t81, %t83
  store i1 %t84, ptr %l40, !tbaa !21
  br label %bb38
bb38:
  %t86 = load i1, ptr %l40, !tbaa !21
  br i1 %t86, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb41
bb40:
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t89 = trunc i64 113 to i32
  %t90 = icmp eq i32 %t87, %t89
  store i1 %t90, ptr %l43, !tbaa !21
  br label %bb41
bb41:
  %t92 = load i1, ptr %l43, !tbaa !21
  br i1 %t92, label %bb42, label %bb43
bb42:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t93)
  store i1 %t95, ptr %l48
  br label %bb44
bb43:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb45
bb44:
  %t96 = load i1, ptr %l48, !tbaa !21
  store i1 %t96, ptr %l46, !tbaa !21
  br label %bb45
bb45:
  %t97 = load i1, ptr %l46, !tbaa !21
  br i1 %t97, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb47:
  br label %bb48
bb48:
  %t98 = load ptr, ptr %l0, !tbaa !29
  store ptr %t98, ptr %l49, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s0, i32 8)
  store { i64, ptr } %t100, ptr %l51
  br label %bb49
bb49:
  %t101 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  %t103 = extractvalue { i64, ptr } %t101, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l49, !tbaa !29
  %t110 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s0, ptr %t108, { i64, ptr } %t107)
  store i32 %t110, ptr %l53
  %t111 = icmp ne i32 %t110, 0
  br i1 %t111, label %bb51, label %ok.112, !prof !99
ok.112:
  br label %bb50
bb50:
  br label %bb52
bb51:
  %t113 = load i32, ptr %l53, !tbaa !23
  %t114 = lshr i32 %t113, 16
  %t115 = and i32 %t113, 65535
  %t116 = icmp eq i32 %t114, 1
  %t117 = select i1 %t116, i32 1, i32 0
  %t118 = icmp eq i32 %t113, 0
  %t119 = shl i32 %t117, 16
  %t120 = or i32 %t119, %t115
  %t121 = select i1 %t118, i32 0, i32 %t120
  call void @__olang_scope_close(ptr %s0)
  store i32 %t121, ptr %rv
  br label %ret
bb52:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentryEnd(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l34 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l38 = alloca i32
  %l41 = alloca i32
  %s3 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t1, i32 75)
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t6)
  br label %bb4
bb3:
  br label %bb5
bb4:
  store i32 0, ptr %rv
  br label %ret
bb5:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 9
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 114}
  store i32 %t11, ptr %l1
  %t13 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t15 = trunc i64 113 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t18 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t20 = trunc i64 99 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t23 = load i1, ptr %l10, !tbaa !21
  br i1 %t23, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb11
bb10:
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t26 = trunc i64 101 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb11
bb11:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb12, label %bb13
bb12:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t30)
  store i1 %t32, ptr %l18
  br label %bb14
bb13:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb15
bb14:
  %t33 = load i1, ptr %l18, !tbaa !21
  store i1 %t33, ptr %l16, !tbaa !21
  br label %bb15
bb15:
  %t34 = load i1, ptr %l16, !tbaa !21
  br i1 %t34, label %bb16, label %bb17
bb16:
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t35)
  br label %bb18
bb17:
  br label %bb19
bb18:
  store i32 0, ptr %rv
  br label %ret
bb19:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t37, i32 8)
  store i1 %t40, ptr %l22
  br label %bb20
bb20:
  %t41 = load i1, ptr %l22, !tbaa !21
  %t42 = xor i1 %t41, true
  br i1 %t42, label %bb21, label %bb22
bb21:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t47 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t44, i32 113)
  store i1 %t47, ptr %l27
  br label %bb23
bb22:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb24
bb23:
  %t48 = load i1, ptr %l27, !tbaa !21
  %t49 = xor i1 %t48, true
  store i1 %t49, ptr %l24, !tbaa !21
  br label %bb24
bb24:
  %t51 = load i1, ptr %l24, !tbaa !21
  br i1 %t51, label %bb25, label %bb26
bb25:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t55 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t52, i32 0)
  store i1 %t55, ptr %l32
  br label %bb27
bb26:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb28
bb27:
  %t56 = load i1, ptr %l32, !tbaa !21
  %t57 = xor i1 %t56, true
  store i1 %t57, ptr %l29, !tbaa !21
  br label %bb28
bb28:
  %t59 = load i1, ptr %l29, !tbaa !21
  br i1 %t59, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l34, !tbaa !29
  %t62 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s3, i32 113)
  store { i64, ptr } %t62, ptr %l36
  br label %bb31
bb30:
  br label %bb35
bb31:
  %t63 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  %t65 = extractvalue { i64, ptr } %t63, 1
  %t66 = mul i64 %t64, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t66)
  call void @llvm.memcpy.p0.p0.i64(ptr %t67, ptr %t65, i64 %t66, i1 false)
  %t68 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t70 = load ptr, ptr %l34, !tbaa !29
  %t72 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s3, ptr %t70, { i64, ptr } %t69)
  store i32 %t72, ptr %l38
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb33, label %ok.74, !prof !99
ok.74:
  br label %bb32
bb32:
  br label %bb34
bb33:
  %t75 = load i32, ptr %l38, !tbaa !23
  %t76 = lshr i32 %t75, 16
  %t77 = and i32 %t75, 65535
  %t78 = icmp eq i32 %t76, 1
  %t79 = select i1 %t78, i32 1, i32 0
  %t80 = icmp eq i32 %t75, 0
  %t81 = shl i32 %t79, 16
  %t82 = or i32 %t81, %t77
  %t83 = select i1 %t80, i32 0, i32 %t82
  call void @__olang_scope_close(ptr %s3)
  store i32 %t83, ptr %rv
  br label %ret
bb34:
  call void @__olang_scope_close(ptr %s3)
  br label %bb35
bb35:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t85)
  store i32 %t87, ptr %l41
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb37, label %ok.89, !prof !99
ok.89:
  br label %bb36
bb36:
  br label %bb38
bb37:
  %t90 = load i32, ptr %l41, !tbaa !23
  %t91 = lshr i32 %t90, 16
  %t92 = and i32 %t90, 65535
  %t93 = icmp eq i32 %t91, 1
  %t94 = select i1 %t93, i32 1, i32 0
  %t95 = icmp eq i32 %t90, 0
  %t96 = shl i32 %t94, 16
  %t97 = or i32 %t96, %t92
  %t98 = select i1 %t95, i32 0, i32 %t97
  store i32 %t98, ptr %rv
  br label %ret
bb38:
  %t100 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t100)
  br label %bb39
bb39:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprStmt(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i32
  %l24 = alloca i1
  %l27 = alloca i64
  %l33 = alloca i1
  %l36 = alloca ptr
  %l37 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca i32
  %l45 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca i1
  %l52 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca i32
  %l58 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i32
  %l67 = alloca i1
  %l68 = alloca i1
  %l71 = alloca i1
  %l75 = alloca ptr
  %l77 = alloca i32
  %l78 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca i32
  %l85 = alloca %"compiler/source:Span"
  %l87 = alloca i32
  %l89 = alloca %"compiler/source:Span"
  %l93 = alloca %"compiler/ast:Multi"
  %l97 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca i32
  %l105 = alloca i1
  %l108 = alloca i1
  %l109 = alloca i1
  %l112 = alloca i1
  %l113 = alloca i1
  %l116 = alloca i1
  %l119 = alloca %"compiler/source:Span"
  %l121 = alloca i32
  %l123 = alloca %"compiler/source:Span"
  %l125 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l130 = alloca { i64, ptr }
  %l134 = alloca %"compiler/ast:VarDecl"
  %l138 = alloca ptr
  %l142 = alloca ptr
  %l143 = alloca i32
  %l146 = alloca i32
  %l148 = alloca i1
  %l150 = alloca i32
  %l151 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca i32
  %l158 = alloca %"compiler/source:Span"
  %l160 = alloca i32
  %l170 = alloca %"compiler/source:Span"
  %l172 = alloca i32
  %rv = alloca { i32, ptr }
  %t217 = alloca { i64, [4 x i64] }, align 8
  %t326 = alloca { i64, [4 x i64] }, align 8
  %t420 = alloca { i64, [4 x i64] }, align 8
  %t460 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l16
  br label %bb1
bb1:
  %t4 = load i32, ptr %l16, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t5)
  %t8 = extractvalue { i32, ptr } %t7, 1
  %t9 = extractvalue { i32, ptr } %t7, 0
  store i32 %t9, ptr %l20
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store ptr %t8, ptr %l19
  br label %bb2
bb2:
  %t12 = load ptr, ptr %l19, !tbaa !29
  store ptr %t12, ptr %l17, !tbaa !29
  br label %bb4
bb3:
  %t13 = load i32, ptr %l20, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, ptr } zeroinitializer, i32 %t21, 0
  store { i32, ptr } %t23, ptr %rv
  br label %ret
bb4:
  %t24 = load ptr, ptr %l17, !tbaa !29
  store ptr %t24, ptr %l2, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t25, i32 75)
  store i1 %t28, ptr %l24
  br label %bb5
bb5:
  %t29 = load i1, ptr %l24, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 31
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l27
  br label %bb8
bb7:
  br label %bb86
bb8:
  %t35 = load i64, ptr %l27, !tbaa !24
  store i64 %t35, ptr %l3, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/parse:Parser", ptr %t36, i32 0, i32 31
  %t39 = load ptr, ptr %l2, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t38, ptr %t39)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t42, i32 75)
  store i1 %t45, ptr %l33
  br label %bb11
bb11:
  %t46 = load i1, ptr %l33, !tbaa !21
  %t47 = xor i1 %t46, true
  br i1 %t47, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/parse:Parser", ptr %t49, i32 0, i32 31
  store ptr %t51, ptr %l36, !tbaa !29
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t52)
  %t55 = extractvalue { i32, ptr } %t54, 1
  %t56 = extractvalue { i32, ptr } %t54, 0
  store i32 %t56, ptr %l40
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb16, label %ok.58, !prof !99
ok.58:
  store ptr %t55, ptr %l39
  br label %bb15
bb15:
  %t59 = load ptr, ptr %l39, !tbaa !29
  store ptr %t59, ptr %l37, !tbaa !29
  br label %bb17
bb16:
  %t60 = load i32, ptr %l40, !tbaa !23
  %t61 = lshr i32 %t60, 16
  %t62 = and i32 %t60, 65535
  %t63 = icmp eq i32 %t61, 1
  %t64 = select i1 %t63, i32 1, i32 0
  %t65 = icmp eq i32 %t60, 0
  %t66 = shl i32 %t64, 16
  %t67 = or i32 %t66, %t62
  %t68 = select i1 %t65, i32 0, i32 %t67
  %t70 = insertvalue { i32, ptr } zeroinitializer, i32 %t68, 0
  store { i32, ptr } %t70, ptr %rv
  br label %ret
bb17:
  %t71 = load ptr, ptr %l36, !tbaa !29
  %t72 = load ptr, ptr %l37, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t71, ptr %t72)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb10
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 31
  %t76 = load i64, ptr %l3, !tbaa !24
  %t79 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t75, i64 %t76)
  store { i64, ptr } %t79, ptr %l45
  br label %bb21
bb21:
  %t80 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t80, ptr %l4, !tbaa !27
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t84 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t81, i32 80)
  store i1 %t84, ptr %l48
  br label %bb22
bb22:
  %t85 = load i1, ptr %l48, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t86, i32 0, i32 12
  %t89 = load i1, ptr %t88, !tbaa !21
  store i1 %t89, ptr %l49, !tbaa !21
  br label %bb25
bb24:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t91 = load i1, ptr %l49, !tbaa !21
  br i1 %t91, label %bb26, label %bb27
bb26:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t96 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamesOf(ptr %v0, ptr %v1, ptr %v1, ptr %t92, { i64, ptr } %t93)
  %t97 = extractvalue { i32, ptr } %t96, 1
  %t98 = extractvalue { i32, ptr } %t96, 0
  store i32 %t98, ptr %l56
  %t99 = icmp ne i32 %t98, 0
  br i1 %t99, label %bb29, label %ok.100, !prof !99
ok.100:
  store ptr %t97, ptr %l55
  br label %bb28
bb27:
  br label %bb34
bb28:
  %t101 = load ptr, ptr %l55, !tbaa !29
  store ptr %t101, ptr %l52, !tbaa !29
  br label %bb30
bb29:
  %t102 = load i32, ptr %l56, !tbaa !23
  %t103 = lshr i32 %t102, 16
  %t104 = and i32 %t102, 65535
  %t105 = icmp eq i32 %t103, 1
  %t106 = select i1 %t105, i32 1, i32 0
  %t107 = icmp eq i32 %t102, 0
  %t108 = shl i32 %t106, 16
  %t109 = or i32 %t108, %t104
  %t110 = select i1 %t107, i32 0, i32 %t109
  %t112 = insertvalue { i32, ptr } zeroinitializer, i32 %t110, 0
  store { i32, ptr } %t112, ptr %rv
  br label %ret
bb30:
  %t113 = load ptr, ptr %l52, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l1, !tbaa !23
  %t120 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v1, ptr %t114, i32 %t115, ptr %t113)
  %t121 = extractvalue { i32, ptr } %t120, 1
  %t122 = extractvalue { i32, ptr } %t120, 0
  store i32 %t122, ptr %l63
  %t123 = icmp ne i32 %t122, 0
  br i1 %t123, label %bb32, label %ok.124, !prof !99
ok.124:
  store ptr %t121, ptr %l62
  br label %bb31
bb31:
  %t125 = load ptr, ptr %l62, !tbaa !29
  store ptr %t125, ptr %l58, !tbaa !29
  br label %bb33
bb32:
  %t126 = load i32, ptr %l63, !tbaa !23
  %t127 = lshr i32 %t126, 16
  %t128 = and i32 %t126, 65535
  %t129 = icmp eq i32 %t127, 1
  %t130 = select i1 %t129, i32 1, i32 0
  %t131 = icmp eq i32 %t126, 0
  %t132 = shl i32 %t130, 16
  %t133 = or i32 %t132, %t128
  %t134 = select i1 %t131, i32 0, i32 %t133
  %t136 = insertvalue { i32, ptr } zeroinitializer, i32 %t134, 0
  store { i32, ptr } %t136, ptr %rv
  br label %ret
bb33:
  %t137 = load ptr, ptr %l58, !tbaa !29
  %t138 = insertvalue { i32, ptr } zeroinitializer, ptr %t137, 1
  store { i32, ptr } %t138, ptr %rv
  br label %ret
bb34:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t142 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t139, i32 80)
  store i1 %t142, ptr %l67
  br label %bb35
bb35:
  %t143 = load i1, ptr %l67, !tbaa !21
  br i1 %t143, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb39
bb37:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t147 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t144, i32 78)
  store i1 %t147, ptr %l71
  br label %bb38
bb38:
  %t148 = load i1, ptr %l71, !tbaa !21
  store i1 %t148, ptr %l68, !tbaa !21
  br label %bb39
bb39:
  %t149 = load i1, ptr %l68, !tbaa !21
  br i1 %t149, label %bb40, label %bb41
bb40:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/parse:Parser", ptr %t150, i32 0, i32 9
  %t153 = load i32, ptr %t152, !range !{i32 0, i32 114}
  %t155 = trunc i64 80 to i32
  %t156 = icmp eq i32 %t153, %t155
  store i1 %t156, ptr %l6, !tbaa !21
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l75, !tbaa !29
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t161 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t159)
  store i32 %t161, ptr %l77
  br label %bb42
bb41:
  br label %bb51
bb42:
  %t162 = load i32, ptr %l77, !tbaa !23
  %t163 = load ptr, ptr %l75, !tbaa !29
  %t164 = getelementptr %"compiler/parse:Parser", ptr %t163, i32 0, i32 25
  store i32 %t162, ptr %t164, !tbaa !23
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %t165)
  %t168 = extractvalue { i32, { i64, ptr } } %t167, 1
  %t169 = extractvalue { i32, { i64, ptr } } %t167, 0
  store i32 %t169, ptr %l81
  %t170 = icmp ne i32 %t169, 0
  br i1 %t170, label %bb44, label %ok.171, !prof !99
ok.171:
  store { i64, ptr } %t168, ptr %l80
  br label %bb43
bb43:
  %t172 = load { i64, ptr }, ptr %l80, !tbaa !27
  store { i64, ptr } %t172, ptr %l78, !tbaa !27
  br label %bb45
bb44:
  %t173 = load i32, ptr %l81, !tbaa !23
  %t174 = lshr i32 %t173, 16
  %t175 = and i32 %t173, 65535
  %t176 = icmp eq i32 %t174, 1
  %t177 = select i1 %t176, i32 1, i32 0
  %t178 = icmp eq i32 %t173, 0
  %t179 = shl i32 %t177, 16
  %t180 = or i32 %t179, %t175
  %t181 = select i1 %t178, i32 0, i32 %t180
  %t183 = insertvalue { i32, ptr } zeroinitializer, i32 %t181, 0
  store { i32, ptr } %t183, ptr %rv
  br label %ret
bb45:
  %t184 = load { i64, ptr }, ptr %l78, !tbaa !27
  store { i64, ptr } %t184, ptr %l7, !tbaa !27
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t186 = load i32, ptr %l1, !tbaa !23
  %t189 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t185, i32 %t186)
  store %"compiler/source:Span" %t189, ptr %l85
  br label %bb46
bb46:
  %t190 = load %"compiler/source:Span", ptr %l85
  store %"compiler/source:Span" %t190, ptr %l8
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t191)
  store i32 %t193, ptr %l87
  %t194 = icmp ne i32 %t193, 0
  br i1 %t194, label %bb48, label %ok.195, !prof !99
ok.195:
  br label %bb47
bb47:
  br label %bb49
bb48:
  %t196 = load i32, ptr %l87, !tbaa !23
  %t197 = lshr i32 %t196, 16
  %t198 = and i32 %t196, 65535
  %t199 = icmp eq i32 %t197, 1
  %t200 = select i1 %t199, i32 1, i32 0
  %t201 = icmp eq i32 %t196, 0
  %t202 = shl i32 %t200, 16
  %t203 = or i32 %t202, %t198
  %t204 = select i1 %t201, i32 0, i32 %t203
  %t206 = insertvalue { i32, ptr } zeroinitializer, i32 %t204, 0
  store { i32, ptr } %t206, ptr %rv
  br label %ret
bb49:
  %t207 = load %"compiler/source:Span", ptr %l8
  store %"compiler/source:Span" %t207, ptr %l89
  %t208 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t209 = load i1, ptr %l6, !tbaa !21
  %t210 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t214 = call %"compiler/ast:Multi" @compiler_2fast_3aMulti_2ector(ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t208, i1 %t209, { i64, ptr } %t210)
  store %"compiler/ast:Multi" %t214, ptr %l93
  br label %bb50
bb50:
  %t215 = load %"compiler/ast:Multi", ptr %l93
  %t216 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store %"compiler/ast:Multi" %t215, ptr %t216
  store { i64, [4 x i64] } zeroinitializer, ptr %t217
  %t218 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 0
  store i64 2, ptr %t218
  %t219 = load %"compiler/source:Span", ptr %l89
  %t220 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t219, 0
  %t222 = insertvalue { %"compiler/source:Span", ptr } %t220, ptr %t216, 1
  %t223 = getelementptr { i64, [4 x i64] }, ptr %t217, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t222, ptr %t223
  %t224 = load { i64, [4 x i64] }, ptr %t217
  %t226 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t224, ptr %t226
  %t228 = insertvalue { i32, ptr } zeroinitializer, ptr %t226, 1
  store { i32, ptr } %t228, ptr %rv
  br label %ret
bb51:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t233 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamesOf(ptr %v0, ptr %v1, ptr %v1, ptr %t229, { i64, ptr } %t230)
  %t234 = extractvalue { i32, ptr } %t233, 1
  %t235 = extractvalue { i32, ptr } %t233, 0
  store i32 %t235, ptr %l101
  %t236 = icmp ne i32 %t235, 0
  br i1 %t236, label %bb53, label %ok.237, !prof !99
ok.237:
  store ptr %t234, ptr %l100
  br label %bb52
bb52:
  %t238 = load ptr, ptr %l100, !tbaa !29
  store ptr %t238, ptr %l97, !tbaa !29
  br label %bb54
bb53:
  %t239 = load i32, ptr %l101, !tbaa !23
  %t240 = lshr i32 %t239, 16
  %t241 = and i32 %t239, 65535
  %t242 = icmp eq i32 %t240, 1
  %t243 = select i1 %t242, i32 1, i32 0
  %t244 = icmp eq i32 %t239, 0
  %t245 = shl i32 %t243, 16
  %t246 = or i32 %t245, %t241
  %t247 = select i1 %t244, i32 0, i32 %t246
  %t249 = insertvalue { i32, ptr } zeroinitializer, i32 %t247, 0
  store { i32, ptr } %t249, ptr %rv
  br label %ret
bb54:
  %t250 = load ptr, ptr %l97, !tbaa !29
  store ptr %t250, ptr %l9, !tbaa !29
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t253 = getelementptr %"compiler/parse:Parser", ptr %t251, i32 0, i32 12
  %t254 = load i1, ptr %t253, !tbaa !21
  br i1 %t254, label %bb55, label %bb56
bb55:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t259 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t256, i32 8)
  store i1 %t259, ptr %l108
  br label %bb57
bb56:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb66
bb57:
  %t260 = load i1, ptr %l108, !tbaa !21
  br i1 %t260, label %bb58, label %bb59
bb58:
  store i1 true, ptr %l109, !tbaa !21
  br label %bb61
bb59:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t264 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t261, i32 113)
  store i1 %t264, ptr %l112
  br label %bb60
bb60:
  %t265 = load i1, ptr %l112, !tbaa !21
  store i1 %t265, ptr %l109, !tbaa !21
  br label %bb61
bb61:
  %t266 = load i1, ptr %l109, !tbaa !21
  br i1 %t266, label %bb62, label %bb63
bb62:
  store i1 true, ptr %l113, !tbaa !21
  br label %bb65
bb63:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t270 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t267, i32 0)
  store i1 %t270, ptr %l116
  br label %bb64
bb64:
  %t271 = load i1, ptr %l116, !tbaa !21
  store i1 %t271, ptr %l113, !tbaa !21
  br label %bb65
bb65:
  %t272 = load i1, ptr %l113, !tbaa !21
  store i1 %t272, ptr %l105, !tbaa !21
  br label %bb66
bb66:
  %t273 = load i1, ptr %l105, !tbaa !21
  br i1 %t273, label %bb67, label %bb68
bb67:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i32, ptr %l1, !tbaa !23
  %t278 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t274, i32 %t275)
  store %"compiler/source:Span" %t278, ptr %l119
  br label %bb69
bb68:
  br label %bb82
bb69:
  %t279 = load %"compiler/source:Span", ptr %l119
  store %"compiler/source:Span" %t279, ptr %l10
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t280)
  store i32 %t282, ptr %l121
  %t283 = icmp ne i32 %t282, 0
  br i1 %t283, label %bb71, label %ok.284, !prof !99
ok.284:
  br label %bb70
bb70:
  br label %bb72
bb71:
  %t285 = load i32, ptr %l121, !tbaa !23
  %t286 = lshr i32 %t285, 16
  %t287 = and i32 %t285, 65535
  %t288 = icmp eq i32 %t286, 1
  %t289 = select i1 %t288, i32 1, i32 0
  %t290 = icmp eq i32 %t285, 0
  %t291 = shl i32 %t289, 16
  %t292 = or i32 %t291, %t287
  %t293 = select i1 %t290, i32 0, i32 %t292
  %t295 = insertvalue { i32, ptr } zeroinitializer, i32 %t293, 0
  store { i32, ptr } %t295, ptr %rv
  br label %ret
bb72:
  %t296 = load %"compiler/source:Span", ptr %l10
  store %"compiler/source:Span" %t296, ptr %l123
  %t297 = load ptr, ptr %l9, !tbaa !29
  %t299 = getelementptr %"compiler/parse:NameList", ptr %t297, i32 0, i32 0
  %t300 = load { i64, ptr }, ptr %t299, !tbaa !27
  store { i64, ptr } %t300, ptr %l125, !tbaa !27
  %t301 = load ptr, ptr %l9, !tbaa !29
  %t303 = getelementptr %"compiler/parse:NameList", ptr %t301, i32 0, i32 1
  %t304 = load { i64, ptr }, ptr %t303, !tbaa !27
  store { i64, ptr } %t304, ptr %l127, !tbaa !27
  %t305 = icmp sge i64 0, 0
  br i1 %t305, label %bb73, label %bb74
bb73:
  %t307 = icmp sle i64 0, 1152921504606846975
  br i1 %t307, label %bb75, label %bb76
bb74:
  call void @__olang_check_failed(ptr @olang_loc_2f9cebe9c997fb45_8e0297a0e5dae7e9)
  unreachable
bb75:
  %t309 = mul i64 0, 8
  %t310 = insertvalue { i64, ptr } undef, i64 0, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t311, ptr %l130, !tbaa !27
  %t312 = icmp sge i64 0, 0
  br i1 %t312, label %bb77, label %bb78
bb76:
  call void @__olang_check_failed(ptr @olang_loc_2f9cebe9c997fb45_8e0297a0e5dae7e9)
  unreachable
bb77:
  %t314 = icmp sle i64 0, 1152921504606846975
  br i1 %t314, label %bb79, label %bb80
bb78:
  call void @__olang_check_failed(ptr @olang_loc_bce5f5de212629d8_a497bbae1a0b61c)
  unreachable
bb79:
  %t316 = mul i64 0, 8
  %t317 = insertvalue { i64, ptr } undef, i64 0, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t319 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t321 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t323 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t319, { i64, ptr } %t320, ptr null, { i64, ptr } %t321, i1 false, i1 true, { i64, ptr } %t318, i1 false)
  store %"compiler/ast:VarDecl" %t323, ptr %l134
  br label %bb81
bb80:
  call void @__olang_check_failed(ptr @olang_loc_bce5f5de212629d8_a497bbae1a0b61c)
  unreachable
bb81:
  %t324 = load %"compiler/ast:VarDecl", ptr %l134
  %t325 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t324, ptr %t325
  store { i64, [4 x i64] } zeroinitializer, ptr %t326
  %t327 = getelementptr { i64, [4 x i64] }, ptr %t326, i32 0, i32 0
  store i64 1, ptr %t327
  %t328 = load %"compiler/source:Span", ptr %l123
  %t329 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t328, 0
  %t331 = insertvalue { %"compiler/source:Span", ptr } %t329, ptr %t325, 1
  %t332 = getelementptr { i64, [4 x i64] }, ptr %t326, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t331, ptr %t332
  %t333 = load { i64, [4 x i64] }, ptr %t326
  %t335 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t333, ptr %t335
  %t337 = insertvalue { i32, ptr } zeroinitializer, ptr %t335, 1
  store { i32, ptr } %t337, ptr %rv
  br label %ret
bb82:
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t339 = load i32, ptr %l1, !tbaa !23
  %t340 = load ptr, ptr %l9, !tbaa !29
  %t344 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v1, ptr %t338, i32 %t339, ptr %t340)
  %t345 = extractvalue { i32, ptr } %t344, 1
  %t346 = extractvalue { i32, ptr } %t344, 0
  store i32 %t346, ptr %l143
  %t347 = icmp ne i32 %t346, 0
  br i1 %t347, label %bb84, label %ok.348, !prof !99
ok.348:
  store ptr %t345, ptr %l142
  br label %bb83
bb83:
  %t349 = load ptr, ptr %l142, !tbaa !29
  store ptr %t349, ptr %l138, !tbaa !29
  br label %bb85
bb84:
  %t350 = load i32, ptr %l143, !tbaa !23
  %t351 = lshr i32 %t350, 16
  %t352 = and i32 %t350, 65535
  %t353 = icmp eq i32 %t351, 1
  %t354 = select i1 %t353, i32 1, i32 0
  %t355 = icmp eq i32 %t350, 0
  %t356 = shl i32 %t354, 16
  %t357 = or i32 %t356, %t352
  %t358 = select i1 %t355, i32 0, i32 %t357
  %t360 = insertvalue { i32, ptr } zeroinitializer, i32 %t358, 0
  store { i32, ptr } %t360, ptr %rv
  br label %ret
bb85:
  %t361 = load ptr, ptr %l138, !tbaa !29
  %t362 = insertvalue { i32, ptr } zeroinitializer, ptr %t361, 1
  store { i32, ptr } %t362, ptr %rv
  br label %ret
bb86:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t363)
  store i32 %t365, ptr %l146
  br label %bb87
bb87:
  %t366 = load i32, ptr %l146, !range !{i32 0, i32 114}
  store i32 %t366, ptr %l11
  %t367 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t369 = call i1 @compiler_2fparse_2eisAssignOp(i32 %t367)
  store i1 %t369, ptr %l148
  br label %bb88
bb88:
  %t370 = load i1, ptr %l148, !tbaa !21
  br i1 %t370, label %bb89, label %bb90
bb89:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t371)
  store i32 %t373, ptr %l150
  br label %bb91
bb90:
  br label %bb99
bb91:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t374)
  %t377 = extractvalue { i32, ptr } %t376, 1
  %t378 = extractvalue { i32, ptr } %t376, 0
  store i32 %t378, ptr %l154
  %t379 = icmp ne i32 %t378, 0
  br i1 %t379, label %bb93, label %ok.380, !prof !99
ok.380:
  store ptr %t377, ptr %l153
  br label %bb92
bb92:
  %t381 = load ptr, ptr %l153, !tbaa !29
  store ptr %t381, ptr %l151, !tbaa !29
  br label %bb94
bb93:
  %t382 = load i32, ptr %l154, !tbaa !23
  %t383 = lshr i32 %t382, 16
  %t384 = and i32 %t382, 65535
  %t385 = icmp eq i32 %t383, 1
  %t386 = select i1 %t385, i32 1, i32 0
  %t387 = icmp eq i32 %t382, 0
  %t388 = shl i32 %t386, 16
  %t389 = or i32 %t388, %t384
  %t390 = select i1 %t387, i32 0, i32 %t389
  %t392 = insertvalue { i32, ptr } zeroinitializer, i32 %t390, 0
  store { i32, ptr } %t392, ptr %rv
  br label %ret
bb94:
  %t393 = load ptr, ptr %l151, !tbaa !29
  store ptr %t393, ptr %l12, !tbaa !29
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t395 = load i32, ptr %l1, !tbaa !23
  %t398 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t394, i32 %t395)
  store %"compiler/source:Span" %t398, ptr %l158
  br label %bb95
bb95:
  %t399 = load %"compiler/source:Span", ptr %l158
  store %"compiler/source:Span" %t399, ptr %l13
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t400)
  store i32 %t402, ptr %l160
  %t403 = icmp ne i32 %t402, 0
  br i1 %t403, label %bb97, label %ok.404, !prof !99
ok.404:
  br label %bb96
bb96:
  br label %bb98
bb97:
  %t405 = load i32, ptr %l160, !tbaa !23
  %t406 = lshr i32 %t405, 16
  %t407 = and i32 %t405, 65535
  %t408 = icmp eq i32 %t406, 1
  %t409 = select i1 %t408, i32 1, i32 0
  %t410 = icmp eq i32 %t405, 0
  %t411 = shl i32 %t409, 16
  %t412 = or i32 %t411, %t407
  %t413 = select i1 %t410, i32 0, i32 %t412
  %t415 = insertvalue { i32, ptr } zeroinitializer, i32 %t413, 0
  store { i32, ptr } %t415, ptr %rv
  br label %ret
bb98:
  %t416 = load %"compiler/source:Span", ptr %l13
  %t417 = load i32, ptr %l11, !range !{i32 0, i32 114}
  %t418 = load ptr, ptr %l2, !tbaa !29
  %t419 = load ptr, ptr %l12, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t420
  %t421 = getelementptr { i64, [4 x i64] }, ptr %t420, i32 0, i32 0
  store i64 3, ptr %t421
  %t423 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t416, 0
  %t425 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t423, i32 %t417, 1
  %t427 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t425, ptr %t418, 2
  %t429 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t427, ptr %t419, 3
  %t430 = getelementptr { i64, [4 x i64] }, ptr %t420, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t429, ptr %t430
  %t431 = load { i64, [4 x i64] }, ptr %t420
  %t433 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t431, ptr %t433
  %t435 = insertvalue { i32, ptr } zeroinitializer, ptr %t433, 1
  store { i32, ptr } %t435, ptr %rv
  br label %ret
bb99:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i32, ptr %l1, !tbaa !23
  %t440 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t436, i32 %t437)
  store %"compiler/source:Span" %t440, ptr %l170
  br label %bb100
bb100:
  %t441 = load %"compiler/source:Span", ptr %l170
  store %"compiler/source:Span" %t441, ptr %l14
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t442)
  store i32 %t444, ptr %l172
  %t445 = icmp ne i32 %t444, 0
  br i1 %t445, label %bb102, label %ok.446, !prof !99
ok.446:
  br label %bb101
bb101:
  br label %bb103
bb102:
  %t447 = load i32, ptr %l172, !tbaa !23
  %t448 = lshr i32 %t447, 16
  %t449 = and i32 %t447, 65535
  %t450 = icmp eq i32 %t448, 1
  %t451 = select i1 %t450, i32 1, i32 0
  %t452 = icmp eq i32 %t447, 0
  %t453 = shl i32 %t451, 16
  %t454 = or i32 %t453, %t449
  %t455 = select i1 %t452, i32 0, i32 %t454
  %t457 = insertvalue { i32, ptr } zeroinitializer, i32 %t455, 0
  store { i32, ptr } %t457, ptr %rv
  br label %ret
bb103:
  %t458 = load %"compiler/source:Span", ptr %l14
  %t459 = load ptr, ptr %l2, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t460
  %t461 = getelementptr { i64, [4 x i64] }, ptr %t460, i32 0, i32 0
  store i64 0, ptr %t461
  %t463 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t458, 0
  %t465 = insertvalue { %"compiler/source:Span", ptr } %t463, ptr %t459, 1
  %t466 = getelementptr { i64, [4 x i64] }, ptr %t460, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t465, ptr %t466
  %t467 = load { i64, [4 x i64] }, ptr %t460
  %t469 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t467, ptr %t469
  %t471 = insertvalue { i32, ptr } zeroinitializer, ptr %t469, 1
  store { i32, ptr } %t471, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternBlock(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l15 = alloca i64
  %l19 = alloca i1
  %l24 = alloca i1
  %l25 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l29 = alloca i32
  %l32 = alloca i32
  %l35 = alloca i1
  %l36 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i32
  %l42 = alloca ptr
  %l45 = alloca %"compiler/source:Span"
  %l46 = alloca i32
  %l49 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l56 = alloca %"compiler/ast:TypeDecl"
  %l62 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca i32
  %l74 = alloca i32
  %l77 = alloca i32
  %l81 = alloca i32
  %l85 = alloca { i64, ptr }
  %l88 = alloca %"compiler/source:Span"
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t118 = alloca { i64, [6 x i64] }, align 8
  %t138 = alloca { i64, [8 x i64] }, align 8
  %t180 = alloca { i64, [8 x i64] }, align 8
  %t237 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 112)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l11
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t9 = load i32, ptr %l10, !tbaa !23
  store i32 %t9, ptr %l7, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l11, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, ptr } zeroinitializer, i32 %t18, 0
  store { i32, ptr } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 38
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l15
  br label %bb4
bb4:
  %t26 = load i64, ptr %l15, !tbaa !24
  store i64 %t26, ptr %l3, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t27)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t29, i32 113)
  store i1 %t32, ptr %l19
  br label %bb7
bb7:
  %t33 = load i1, ptr %l19, !tbaa !21
  %t34 = xor i1 %t33, true
  %t36 = xor i1 %t34, true
  br i1 %t36, label %bb8, label %bb9
bb8:
  br label %bb54
bb9:
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t38, i32 0)
  store i1 %t41, ptr %l24
  br label %bb11
bb11:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load ptr, ptr %l0, !tbaa !29
  store ptr %t43, ptr %l25, !tbaa !29
  %t45 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s2, i32 113)
  store { i64, ptr } %t45, ptr %l27
  br label %bb14
bb13:
  br label %bb18
bb14:
  %t46 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  %t48 = extractvalue { i64, ptr } %t46, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t53 = load ptr, ptr %l25, !tbaa !29
  %t55 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s2, ptr %t53, { i64, ptr } %t52)
  store i32 %t55, ptr %l29
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb16, label %ok.57, !prof !99
ok.57:
  br label %bb15
bb15:
  br label %bb17
bb16:
  %t58 = load i32, ptr %l29, !tbaa !23
  %t59 = lshr i32 %t58, 16
  %t60 = and i32 %t58, 65535
  %t61 = icmp eq i32 %t59, 1
  %t62 = select i1 %t61, i32 1, i32 0
  %t63 = icmp eq i32 %t58, 0
  %t64 = shl i32 %t62, 16
  %t65 = or i32 %t64, %t60
  %t66 = select i1 %t63, i32 0, i32 %t65
  call void @__olang_scope_close(ptr %s2)
  %t68 = insertvalue { i32, ptr } zeroinitializer, i32 %t66, 0
  store { i32, ptr } %t68, ptr %rv
  br label %ret
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t69)
  store i32 %t71, ptr %l32
  br label %bb19
bb19:
  %t72 = load i32, ptr %l32, !tbaa !23
  store i32 %t72, ptr %l4, !tbaa !23
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t76 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t73, i32 33)
  store i1 %t76, ptr %l35
  br label %bb20
bb20:
  %t77 = load i1, ptr %l35, !tbaa !21
  br i1 %t77, label %bb21, label %bb22
bb21:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t78)
  %t81 = extractvalue { i32, i32 } %t80, 1
  %t82 = extractvalue { i32, i32 } %t80, 0
  store i32 %t82, ptr %l39
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb24, label %ok.84, !prof !99
ok.84:
  store i32 %t81, ptr %l38
  br label %bb23
bb22:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t88 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t85, i32 37)
  store i1 %t88, ptr %l62
  br label %bb37
bb23:
  %t89 = load i32, ptr %l38, !tbaa !23
  store i32 %t89, ptr %l36, !tbaa !23
  br label %bb25
bb24:
  %t90 = load i32, ptr %l39, !tbaa !23
  %t91 = lshr i32 %t90, 16
  %t92 = and i32 %t90, 65535
  %t93 = icmp eq i32 %t91, 1
  %t94 = select i1 %t93, i32 1, i32 0
  %t95 = icmp eq i32 %t90, 0
  %t96 = shl i32 %t94, 16
  %t97 = or i32 %t96, %t92
  %t98 = select i1 %t95, i32 0, i32 %t97
  %t100 = insertvalue { i32, ptr } zeroinitializer, i32 %t98, 0
  store { i32, ptr } %t100, ptr %rv
  br label %ret
bb25:
  %t101 = load i32, ptr %l36, !tbaa !23
  store i32 %t101, ptr %l5, !tbaa !23
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/parse:Parser", ptr %t102, i32 0, i32 38
  store ptr %t104, ptr %l42, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i32, ptr %l4, !tbaa !23
  %t109 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t105, i32 %t106)
  store %"compiler/source:Span" %t109, ptr %l45
  br label %bb26
bb26:
  %t110 = load i32, ptr %l5, !tbaa !23
  store i32 %t110, ptr %l46, !tbaa !23
  %t111 = icmp sge i64 0, 0
  br i1 %t111, label %bb27, label %bb28
bb27:
  %t113 = icmp sle i64 0, 1152921504606846975
  br i1 %t113, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_3ab225d58e3cfe31_e99e7d1082de1bd)
  unreachable
bb29:
  %t115 = mul i64 0, 8
  %t116 = insertvalue { i64, ptr } undef, i64 0, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t117, ptr %l49, !tbaa !27
  store { i64, [6 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [6 x i64] }, ptr %t118, i32 0, i32 0
  store i64 4, ptr %t119
  %t120 = load { i64, [6 x i64] }, ptr %t118
  %t122 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 56, i64 8)
  store { i64, [6 x i64] } %t120, ptr %t122
  store ptr %t122, ptr %l51, !tbaa !29
  %t123 = icmp sge i64 0, 0
  br i1 %t123, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_3ab225d58e3cfe31_e99e7d1082de1bd)
  unreachable
bb31:
  %t125 = icmp sle i64 0, 1152921504606846975
  br i1 %t125, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_34506b7f0a96de24_ffbbf03839f4b990)
  unreachable
bb33:
  %t127 = mul i64 0, 8
  %t128 = insertvalue { i64, ptr } undef, i64 0, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t130 = load i32, ptr %l46, !tbaa !23
  %t131 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t132 = load ptr, ptr %l51, !tbaa !29
  %t135 = call %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, i32 %t130, { i64, ptr } %t131, i1 false, ptr %t132, { i64, ptr } %t129, i32 0, i1 false)
  store %"compiler/ast:TypeDecl" %t135, ptr %l56
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_34506b7f0a96de24_ffbbf03839f4b990)
  unreachable
bb35:
  %t136 = load %"compiler/ast:TypeDecl", ptr %l56
  %t137 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/ast:TypeDecl" %t136, ptr %t137
  store { i64, [8 x i64] } zeroinitializer, ptr %t138
  %t139 = getelementptr { i64, [8 x i64] }, ptr %t138, i32 0, i32 0
  store i64 2, ptr %t139
  %t140 = load %"compiler/source:Span", ptr %l45
  %t141 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t140, 0
  %t143 = insertvalue { %"compiler/source:Span", ptr } %t141, ptr %t137, 1
  %t144 = getelementptr { i64, [8 x i64] }, ptr %t138, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t143, ptr %t144
  %t145 = load { i64, [8 x i64] }, ptr %t138
  %t147 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store { i64, [8 x i64] } %t145, ptr %t147
  %t148 = load ptr, ptr %l42, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t148, ptr %t147)
  br label %bb36
bb36:
  br label %bb48
bb37:
  %t150 = load i1, ptr %l62, !tbaa !21
  br i1 %t150, label %bb38, label %bb39
bb38:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/parse:Parser", ptr %t151, i32 0, i32 38
  store ptr %t153, ptr %l64, !tbaa !29
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l4, !tbaa !23
  %t158 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternFn(ptr %v0, ptr %v0, ptr %t154, i32 %t155)
  %t159 = extractvalue { i32, ptr } %t158, 1
  %t160 = extractvalue { i32, ptr } %t158, 0
  store i32 %t160, ptr %l69
  %t161 = icmp ne i32 %t160, 0
  br i1 %t161, label %bb41, label %ok.162, !prof !99
ok.162:
  store ptr %t159, ptr %l68
  br label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s6
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s6, ptr %t163, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t165, ptr %l74
  %t166 = icmp ne i32 %t165, 0
  br i1 %t166, label %bb45, label %ok.167, !prof !99
ok.167:
  br label %bb44
bb40:
  %t168 = load ptr, ptr %l68, !tbaa !29
  store ptr %t168, ptr %l65, !tbaa !29
  br label %bb42
bb41:
  %t169 = load i32, ptr %l69, !tbaa !23
  %t170 = lshr i32 %t169, 16
  %t171 = and i32 %t169, 65535
  %t172 = icmp eq i32 %t170, 1
  %t173 = select i1 %t172, i32 1, i32 0
  %t174 = icmp eq i32 %t169, 0
  %t175 = shl i32 %t173, 16
  %t176 = or i32 %t175, %t171
  %t177 = select i1 %t174, i32 0, i32 %t176
  %t179 = insertvalue { i32, ptr } zeroinitializer, i32 %t177, 0
  store { i32, ptr } %t179, ptr %rv
  br label %ret
bb42:
  store { i64, [8 x i64] } zeroinitializer, ptr %t180
  %t181 = getelementptr { i64, [8 x i64] }, ptr %t180, i32 0, i32 0
  store i64 1, ptr %t181
  %t182 = load ptr, ptr %l65, !tbaa !29
  %t183 = insertvalue { ptr } undef, ptr %t182, 0
  %t184 = getelementptr { i64, [8 x i64] }, ptr %t180, i32 0, i32 1
  store { ptr } %t183, ptr %t184
  %t185 = load { i64, [8 x i64] }, ptr %t180
  %t187 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store { i64, [8 x i64] } %t185, ptr %t187
  %t188 = load ptr, ptr %l64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t188, ptr %t187)
  br label %bb43
bb43:
  br label %bb47
bb44:
  br label %bb46
bb45:
  %t190 = load i32, ptr %l74, !tbaa !23
  %t191 = lshr i32 %t190, 16
  %t192 = and i32 %t190, 65535
  %t193 = icmp eq i32 %t191, 1
  %t194 = select i1 %t193, i32 1, i32 0
  %t195 = icmp eq i32 %t190, 0
  %t196 = shl i32 %t194, 16
  %t197 = or i32 %t196, %t192
  %t198 = select i1 %t195, i32 0, i32 %t197
  call void @__olang_scope_close(ptr %s6)
  %t200 = insertvalue { i32, ptr } zeroinitializer, i32 %t198, 0
  store { i32, ptr } %t200, ptr %rv
  br label %ret
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t201)
  store i32 %t203, ptr %l77
  %t204 = icmp ne i32 %t203, 0
  br i1 %t204, label %bb50, label %ok.205, !prof !99
ok.205:
  br label %bb49
bb49:
  br label %bb51
bb50:
  %t206 = load i32, ptr %l77, !tbaa !23
  %t207 = lshr i32 %t206, 16
  %t208 = and i32 %t206, 65535
  %t209 = icmp eq i32 %t207, 1
  %t210 = select i1 %t209, i32 1, i32 0
  %t211 = icmp eq i32 %t206, 0
  %t212 = shl i32 %t210, 16
  %t213 = or i32 %t212, %t208
  %t214 = select i1 %t211, i32 0, i32 %t213
  %t216 = insertvalue { i32, ptr } zeroinitializer, i32 %t214, 0
  store { i32, ptr } %t216, ptr %rv
  br label %ret
bb51:
  %t217 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t217)
  br label %bb52
bb52:
  br label %bb53
bb53:
  br label %bb6
bb54:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t219)
  store i32 %t221, ptr %l81
  br label %bb55
bb55:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/parse:Parser", ptr %t222, i32 0, i32 38
  %t225 = load i64, ptr %l3, !tbaa !24
  %t228 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %t224, i64 %t225)
  store { i64, ptr } %t228, ptr %l85
  br label %bb56
bb56:
  %t229 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t229, ptr %l6, !tbaa !27
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t234 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t230, i32 %a1)
  store %"compiler/source:Span" %t234, ptr %l88
  br label %bb57
bb57:
  %t236 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, [8 x i64] } zeroinitializer, ptr %t237
  %t238 = getelementptr { i64, [8 x i64] }, ptr %t237, i32 0, i32 0
  store i64 10, ptr %t238
  %t239 = load %"compiler/source:Span", ptr %l88
  %t240 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t239, 0
  %t242 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } } %t240, %"compiler/source:Span" %a2, 1
  %t244 = insertvalue { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } } %t242, { i64, ptr } %t236, 2
  %t245 = getelementptr { i64, [8 x i64] }, ptr %t237, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } } %t244, ptr %t245
  %t246 = load { i64, [8 x i64] }, ptr %t237
  %t248 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store { i64, [8 x i64] } %t246, ptr %t248
  %t250 = insertvalue { i32, ptr } zeroinitializer, ptr %t248, 1
  store { i32, ptr } %t250, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehint(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l17 = alloca i32
  %l20 = alloca i64
  %l25 = alloca i32
  %l28 = alloca i64
  %l30 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i64
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/diagmsg:Msg"
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i64
  %l51 = alloca %"compiler/diagmsg:Msg"
  %l55 = alloca i1
  %l56 = alloca i1
  %l60 = alloca i1
  %l64 = alloca i64
  %l67 = alloca i1
  %l70 = alloca i1
  %l73 = alloca i1
  %l76 = alloca i1
  %l79 = alloca i1
  %l82 = alloca i1
  %l85 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i64
  %l98 = alloca { i64, ptr }
  %l100 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i1
  %l105 = alloca i1
  %l109 = alloca i1
  %l111 = alloca i1
  %l112 = alloca i1
  %l116 = alloca i64
  %l119 = alloca i1
  %l123 = alloca i32
  %l126 = alloca i1
  %l130 = alloca i32
  %l133 = alloca i1
  %l137 = alloca i32
  %l140 = alloca ptr
  %l141 = alloca i64
  %l144 = alloca { i64, ptr }
  %l146 = alloca %"compiler/diagmsg:Msg"
  %l150 = alloca i1
  %l154 = alloca i1
  %l157 = alloca i1
  %l159 = alloca i1
  %l160 = alloca ptr
  %l161 = alloca i64
  %l164 = alloca { i64, ptr }
  %l165 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l170 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca ptr
  %l175 = alloca i64
  %l176 = alloca %"compiler/diagmsg:Msg"
  %l180 = alloca i1
  %l183 = alloca i1
  %l187 = alloca i1
  %l190 = alloca i1
  %l191 = alloca i1
  %l192 = alloca ptr
  %l195 = alloca i64
  %l197 = alloca i1
  %l201 = alloca i1
  %l204 = alloca i1
  %l205 = alloca i1
  %l209 = alloca i1
  %l211 = alloca i1
  %l212 = alloca i1
  %l215 = alloca i1
  %l219 = alloca i1
  %l223 = alloca i1
  %l226 = alloca i1
  %l230 = alloca i1
  %l231 = alloca ptr
  %l232 = alloca i64
  %l235 = alloca i64
  %l236 = alloca i1
  %l240 = alloca i1
  %l244 = alloca i1
  %l247 = alloca i1
  %l250 = alloca i1
  %l254 = alloca ptr
  %l255 = alloca i64
  %l258 = alloca { i64, ptr }
  %l260 = alloca %"compiler/diagmsg:Msg"
  %l264 = alloca i1
  %l267 = alloca ptr
  %l268 = alloca i64
  %l269 = alloca %"compiler/diagmsg:Msg"
  %l273 = alloca i1
  %l274 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l278 = alloca i1
  %l279 = alloca i1
  %l282 = alloca i1
  %l285 = alloca i1
  %l288 = alloca i1
  %l294 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 7
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 114}
  %t6 = trunc i64 0 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/parse:Parser", ptr %t12, i32 0, i32 6
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t17, i64 %t18)
  store i32 %t21, ptr %l17
  br label %bb4
bb4:
  %t22 = load i32, ptr %l17, !range !{i32 0, i32 114}
  store i32 %t22, ptr %l3
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l20
  br label %bb5
bb5:
  %t28 = load i64, ptr %l20, !tbaa !24
  store i64 %t28, ptr %l4, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = sub i64 %t29, 1
  store i64 %t31, ptr %l5, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t33, i64 %t34)
  store i32 %t37, ptr %l25
  br label %bb6
bb6:
  %t38 = load i32, ptr %l25, !range !{i32 0, i32 114}
  store i32 %t38, ptr %l6
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l28
  br label %bb7
bb7:
  %t44 = load i64, ptr %l28, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  %t45 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t47 = call i1 @compiler_2fparse_2ekeywordNamesField(i32 %t45)
  store i1 %t47, ptr %l30
  br label %bb8
bb8:
  %t48 = load i1, ptr %l30, !tbaa !21
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t49, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t51, ptr %l33
  br label %bb11
bb10:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb12
bb11:
  %t52 = load i1, ptr %l33, !tbaa !21
  store i1 %t52, ptr %l31, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l31, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  %t54 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t56 = trunc i64 79 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l34, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb15
bb15:
  %t61 = load i1, ptr %l34, !tbaa !21
  br i1 %t61, label %bb16, label %bb17
bb16:
  store %olang.scope zeroinitializer, ptr %s2
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l38, !tbaa !29
  %t63 = load i64, ptr %l2, !tbaa !24
  store i64 %t63, ptr %l39, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l2, !tbaa !24
  %t68 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s2, ptr %t64, i64 %t65)
  store { i64, ptr } %t68, ptr %l42
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t69 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 0
  %t71 = extractvalue { i64, ptr } %t69, 1
  %t72 = mul i64 %t70, 1
  %t73 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t72)
  call void @llvm.memcpy.p0.p0.i64(ptr %t73, ptr %t71, i64 %t72, i1 false)
  %t74 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t75 = insertvalue { i64, ptr } %t74, ptr %t73, 1
  %t77 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordFieldRead(ptr %s2, ptr %s2, { i64, ptr } %t75)
  store %"compiler/diagmsg:Msg" %t77, ptr %l44
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l38, !tbaa !29
  %t79 = load i64, ptr %l39, !tbaa !24
  %t80 = load %"compiler/diagmsg:Msg", ptr %l44
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s2, ptr %t78, i64 %t79, %"compiler/diagmsg:Msg" %t80)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb21:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l2, !tbaa !24
  %t86 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseValueComma(ptr %v0, ptr %t82, i64 %t83)
  store i1 %t86, ptr %l48
  br label %bb22
bb22:
  %t87 = load i1, ptr %l48, !tbaa !21
  br i1 %t87, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l49, !tbaa !29
  %t89 = load i64, ptr %l2, !tbaa !24
  store i64 %t89, ptr %l50, !tbaa !24
  %t90 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueOne(ptr %s3)
  store %"compiler/diagmsg:Msg" %t90, ptr %l51
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = load i64, ptr %l50, !tbaa !24
  %t93 = load %"compiler/diagmsg:Msg", ptr %l51
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s3, ptr %t91, i64 %t92, %"compiler/diagmsg:Msg" %t93)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb27:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l5, !tbaa !24
  %t99 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %t95, i64 %t96)
  store i1 %t99, ptr %l55
  br label %bb28
bb28:
  %t100 = load i1, ptr %l55, !tbaa !21
  br i1 %t100, label %bb29, label %bb30
bb29:
  %t101 = load i64, ptr %l7, !tbaa !24
  %t102 = load i64, ptr %l4, !tbaa !24
  %t105 = icmp eq i64 %t101, %t102
  store i1 %t105, ptr %l56, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb31
bb31:
  %t107 = load i1, ptr %l56, !tbaa !21
  br i1 %t107, label %bb32, label %bb33
bb32:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = sub i64 %t109, 1
  %t114 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t108, i64 %t111)
  store i64 %t114, ptr %l64
  br label %bb34
bb33:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb35
bb34:
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = load i64, ptr %l64, !tbaa !24
  %t118 = icmp slt i64 %t116, %t115
  store i1 %t118, ptr %l60, !tbaa !21
  br label %bb35
bb35:
  %t120 = load i1, ptr %l60, !tbaa !21
  br i1 %t120, label %bb36, label %bb37
bb36:
  %t121 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t123 = trunc i64 39 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb62
bb38:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb40
bb39:
  %t126 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t128 = trunc i64 80 to i32
  %t129 = icmp eq i32 %t126, %t128
  store i1 %t129, ptr %l70, !tbaa !21
  br label %bb40
bb40:
  %t131 = load i1, ptr %l70, !tbaa !21
  br i1 %t131, label %bb41, label %bb42
bb41:
  store i1 true, ptr %l73, !tbaa !21
  br label %bb43
bb42:
  %t132 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t134 = trunc i64 78 to i32
  %t135 = icmp eq i32 %t132, %t134
  store i1 %t135, ptr %l73, !tbaa !21
  br label %bb43
bb43:
  %t137 = load i1, ptr %l73, !tbaa !21
  br i1 %t137, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb46
bb45:
  %t138 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t140 = trunc i64 75 to i32
  %t141 = icmp eq i32 %t138, %t140
  store i1 %t141, ptr %l76, !tbaa !21
  br label %bb46
bb46:
  %t143 = load i1, ptr %l76, !tbaa !21
  br i1 %t143, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l79, !tbaa !21
  br label %bb61
bb48:
  %t144 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t146 = trunc i64 1 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb49, label %bb50
bb49:
  %t149 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t151 = trunc i64 19 to i32
  %t152 = icmp eq i32 %t149, %t151
  br i1 %t152, label %bb51, label %bb52
bb50:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb60
bb51:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb53
bb52:
  %t154 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t156 = trunc i64 20 to i32
  %t157 = icmp eq i32 %t154, %t156
  store i1 %t157, ptr %l85, !tbaa !21
  br label %bb53
bb53:
  %t159 = load i1, ptr %l85, !tbaa !21
  br i1 %t159, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb56
bb55:
  %t160 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t162 = trunc i64 21 to i32
  %t163 = icmp eq i32 %t160, %t162
  store i1 %t163, ptr %l88, !tbaa !21
  br label %bb56
bb56:
  %t165 = load i1, ptr %l88, !tbaa !21
  br i1 %t165, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l91, !tbaa !21
  br label %bb59
bb58:
  %t166 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t168 = trunc i64 14 to i32
  %t169 = icmp eq i32 %t166, %t168
  store i1 %t169, ptr %l91, !tbaa !21
  br label %bb59
bb59:
  %t171 = load i1, ptr %l91, !tbaa !21
  store i1 %t171, ptr %l82, !tbaa !21
  br label %bb60
bb60:
  %t172 = load i1, ptr %l82, !tbaa !21
  store i1 %t172, ptr %l79, !tbaa !21
  br label %bb61
bb61:
  %t173 = load i1, ptr %l79, !tbaa !21
  store i1 %t173, ptr %l67, !tbaa !21
  br label %bb62
bb62:
  %t174 = load i1, ptr %l67, !tbaa !21
  br i1 %t174, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s4
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l94, !tbaa !29
  %t176 = load i64, ptr %l5, !tbaa !24
  store i64 %t176, ptr %l95, !tbaa !24
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t178 = load i64, ptr %l5, !tbaa !24
  %t181 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s4, ptr %t177, i64 %t178)
  store { i64, ptr } %t181, ptr %l98
  br label %bb65
bb64:
  br label %bb68
bb65:
  %t182 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t183 = extractvalue { i64, ptr } %t182, 0
  %t184 = extractvalue { i64, ptr } %t182, 1
  %t185 = mul i64 %t183, 1
  %t186 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t185)
  call void @llvm.memcpy.p0.p0.i64(ptr %t186, ptr %t184, i64 %t185, i1 false)
  %t187 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t186, 1
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %s4, ptr %s4, { i64, ptr } %t188)
  store %"compiler/diagmsg:Msg" %t190, ptr %l100
  br label %bb66
bb66:
  %t191 = load ptr, ptr %l94, !tbaa !29
  %t192 = load i64, ptr %l95, !tbaa !24
  %t193 = load %"compiler/diagmsg:Msg", ptr %l100
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s4, ptr %t191, i64 %t192, %"compiler/diagmsg:Msg" %t193)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb68:
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l2, !tbaa !24
  %t199 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %t195, i64 %t196)
  store i1 %t199, ptr %l104
  br label %bb69
bb69:
  %t200 = load i1, ptr %l104, !tbaa !21
  br i1 %t200, label %bb70, label %bb71
bb70:
  %t201 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t203 = trunc i64 39 to i32
  %t204 = icmp eq i32 %t201, %t203
  %t206 = xor i1 %t204, true
  store i1 %t206, ptr %l105, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb72
bb72:
  %t208 = load i1, ptr %l105, !tbaa !21
  br i1 %t208, label %bb73, label %bb74
bb73:
  %t209 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t211 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t209, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t211, ptr %l111
  br label %bb75
bb74:
  store i1 false, ptr %l109, !tbaa !21
  br label %bb92
bb75:
  %t212 = load i1, ptr %l111, !tbaa !21
  br i1 %t212, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l112, !tbaa !21
  br label %bb91
bb77:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i64, ptr %l2, !tbaa !24
  %t216 = add i64 %t214, 1
  %t219 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t213, i64 %t216)
  store i64 %t219, ptr %l116
  br label %bb78
bb78:
  %t220 = load i64, ptr %l4, !tbaa !24
  %t221 = load i64, ptr %l116, !tbaa !24
  %t223 = icmp eq i64 %t221, %t220
  br i1 %t223, label %bb79, label %bb80
bb79:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load i64, ptr %l2, !tbaa !24
  %t228 = add i64 %t226, 1
  %t231 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t225, i64 %t228)
  store i32 %t231, ptr %l123
  br label %bb81
bb80:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb90
bb81:
  %t232 = load i32, ptr %l123, !range !{i32 0, i32 114}
  %t234 = trunc i64 1 to i32
  %t235 = icmp eq i32 %t232, %t234
  br i1 %t235, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l126, !tbaa !21
  br label %bb85
bb83:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load i64, ptr %l2, !tbaa !24
  %t240 = add i64 %t238, 1
  %t243 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t237, i64 %t240)
  store i32 %t243, ptr %l130
  br label %bb84
bb84:
  %t244 = load i32, ptr %l130, !range !{i32 0, i32 114}
  %t246 = trunc i64 39 to i32
  %t247 = icmp eq i32 %t244, %t246
  store i1 %t247, ptr %l126, !tbaa !21
  br label %bb85
bb85:
  %t249 = load i1, ptr %l126, !tbaa !21
  br i1 %t249, label %bb86, label %bb87
bb86:
  store i1 true, ptr %l133, !tbaa !21
  br label %bb89
bb87:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i64, ptr %l2, !tbaa !24
  %t253 = add i64 %t251, 1
  %t256 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t250, i64 %t253)
  store i32 %t256, ptr %l137
  br label %bb88
bb88:
  %t257 = load i32, ptr %l137, !range !{i32 0, i32 114}
  %t259 = trunc i64 80 to i32
  %t260 = icmp eq i32 %t257, %t259
  store i1 %t260, ptr %l133, !tbaa !21
  br label %bb89
bb89:
  %t262 = load i1, ptr %l133, !tbaa !21
  store i1 %t262, ptr %l119, !tbaa !21
  br label %bb90
bb90:
  %t263 = load i1, ptr %l119, !tbaa !21
  store i1 %t263, ptr %l112, !tbaa !21
  br label %bb91
bb91:
  %t264 = load i1, ptr %l112, !tbaa !21
  store i1 %t264, ptr %l109, !tbaa !21
  br label %bb92
bb92:
  %t265 = load i1, ptr %l109, !tbaa !21
  br i1 %t265, label %bb93, label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s5
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l140, !tbaa !29
  %t267 = load i64, ptr %l2, !tbaa !24
  store i64 %t267, ptr %l141, !tbaa !24
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load i64, ptr %l2, !tbaa !24
  %t272 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s5, ptr %t268, i64 %t269)
  store { i64, ptr } %t272, ptr %l144
  br label %bb95
bb94:
  br label %bb98
bb95:
  %t273 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t273, 0
  %t275 = extractvalue { i64, ptr } %t273, 1
  %t276 = mul i64 %t274, 1
  %t277 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t276)
  call void @llvm.memcpy.p0.p0.i64(ptr %t277, ptr %t275, i64 %t276, i1 false)
  %t278 = insertvalue { i64, ptr } undef, i64 %t274, 0
  %t279 = insertvalue { i64, ptr } %t278, ptr %t277, 1
  %t281 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %s5, ptr %s5, { i64, ptr } %t279)
  store %"compiler/diagmsg:Msg" %t281, ptr %l146
  br label %bb96
bb96:
  %t282 = load ptr, ptr %l140, !tbaa !29
  %t283 = load i64, ptr %l141, !tbaa !24
  %t284 = load %"compiler/diagmsg:Msg", ptr %l146
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s5, ptr %t282, i64 %t283, %"compiler/diagmsg:Msg" %t284)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb98:
  %t286 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t288 = trunc i64 8 to i32
  %t289 = icmp eq i32 %t286, %t288
  br i1 %t289, label %bb99, label %bb100
bb99:
  store i1 true, ptr %l150, !tbaa !21
  br label %bb101
bb100:
  %t291 = load i64, ptr %l7, !tbaa !24
  %t292 = load i64, ptr %l4, !tbaa !24
  %t295 = icmp slt i64 %t291, %t292
  store i1 %t295, ptr %l150, !tbaa !21
  br label %bb101
bb101:
  %t297 = load i1, ptr %l150, !tbaa !21
  br i1 %t297, label %bb102, label %bb103
bb102:
  %t298 = load i64, ptr %l4, !tbaa !24
  %t300 = icmp sgt i64 %t298, 0
  store i1 %t300, ptr %l154, !tbaa !21
  br label %bb104
bb103:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb104
bb104:
  %t302 = load i1, ptr %l154, !tbaa !21
  br i1 %t302, label %bb105, label %bb106
bb105:
  %t303 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t305 = call i1 @compiler_2fparse_2eisJoiningOp(i32 %t303)
  store i1 %t305, ptr %l159
  br label %bb107
bb106:
  store i1 false, ptr %l157, !tbaa !21
  br label %bb108
bb107:
  %t306 = load i1, ptr %l159, !tbaa !21
  store i1 %t306, ptr %l157, !tbaa !21
  br label %bb108
bb108:
  %t307 = load i1, ptr %l157, !tbaa !21
  br i1 %t307, label %bb109, label %bb110
bb109:
  store %olang.scope zeroinitializer, ptr %s6
  %t308 = load ptr, ptr %l0, !tbaa !29
  store ptr %t308, ptr %l160, !tbaa !29
  %t309 = load i64, ptr %l2, !tbaa !24
  store i64 %t309, ptr %l161, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load i64, ptr %l2, !tbaa !24
  %t314 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s6, ptr %t310, i64 %t311)
  store { i64, ptr } %t314, ptr %l164
  br label %bb111
bb110:
  br label %bb115
bb111:
  %t315 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t316 = extractvalue { i64, ptr } %t315, 0
  %t317 = extractvalue { i64, ptr } %t315, 1
  %t318 = mul i64 %t316, 1
  %t319 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t318)
  call void @llvm.memcpy.p0.p0.i64(ptr %t319, ptr %t317, i64 %t318, i1 false)
  %t320 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t321 = insertvalue { i64, ptr } %t320, ptr %t319, 1
  store { i64, ptr } %t321, ptr %l165, !tbaa !27
  %t322 = load ptr, ptr %l0, !tbaa !29
  %t323 = load i64, ptr %l2, !tbaa !24
  %t326 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s6, ptr %t322, i64 %t323)
  store { i64, ptr } %t326, ptr %l168
  br label %bb112
bb112:
  %t327 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t327, 0
  %t329 = extractvalue { i64, ptr } %t327, 1
  %t330 = mul i64 %t328, 1
  %t331 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t330)
  call void @llvm.memcpy.p0.p0.i64(ptr %t331, ptr %t329, i64 %t330, i1 false)
  %t332 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t331, 1
  %t334 = load { i64, ptr }, ptr %l165, !tbaa !27
  %t336 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineStartsWithOperator(ptr %s6, ptr %s6, ptr %s6, { i64, ptr } %t334, { i64, ptr } %t333)
  store %"compiler/diagmsg:Msg" %t336, ptr %l170
  br label %bb113
bb113:
  %t337 = load ptr, ptr %l160, !tbaa !29
  %t338 = load i64, ptr %l161, !tbaa !24
  %t339 = load %"compiler/diagmsg:Msg", ptr %l170
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s6, ptr %t337, i64 %t338, %"compiler/diagmsg:Msg" %t339)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb115:
  %t341 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t343 = trunc i64 42 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb116, label %bb117
bb116:
  store %olang.scope zeroinitializer, ptr %s7
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l174, !tbaa !29
  %t347 = load i64, ptr %l2, !tbaa !24
  store i64 %t347, ptr %l175, !tbaa !24
  %t348 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructInBody(ptr %s7)
  store %"compiler/diagmsg:Msg" %t348, ptr %l176
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t349 = load ptr, ptr %l174, !tbaa !29
  %t350 = load i64, ptr %l175, !tbaa !24
  %t351 = load %"compiler/diagmsg:Msg", ptr %l176
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s7, ptr %t349, i64 %t350, %"compiler/diagmsg:Msg" %t351)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb120:
  %t353 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t355 = trunc i64 5 to i32
  %t356 = icmp eq i32 %t353, %t355
  br i1 %t356, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb123
bb122:
  %t358 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t360 = trunc i64 105 to i32
  %t361 = icmp eq i32 %t358, %t360
  store i1 %t361, ptr %l180, !tbaa !21
  br label %bb123
bb123:
  %t363 = load i1, ptr %l180, !tbaa !21
  br i1 %t363, label %bb124, label %bb125
bb124:
  %t364 = load i64, ptr %l7, !tbaa !24
  %t365 = load i64, ptr %l4, !tbaa !24
  %t368 = icmp eq i64 %t364, %t365
  store i1 %t368, ptr %l183, !tbaa !21
  br label %bb126
bb125:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb126
bb126:
  %t370 = load i1, ptr %l183, !tbaa !21
  br i1 %t370, label %bb127, label %bb128
bb127:
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load i64, ptr %l5, !tbaa !24
  %t375 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisOperandEnd(ptr %v0, ptr %t371, i64 %t372)
  store i1 %t375, ptr %l190
  br label %bb129
bb128:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb130
bb129:
  %t376 = load i1, ptr %l190, !tbaa !21
  store i1 %t376, ptr %l187, !tbaa !21
  br label %bb130
bb130:
  %t377 = load i1, ptr %l187, !tbaa !21
  br i1 %t377, label %bb131, label %bb132
bb131:
  %t378 = load ptr, ptr %l0, !tbaa !29
  store ptr %t378, ptr %l192, !tbaa !29
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load i64, ptr %l5, !tbaa !24
  %t383 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoperandStartBefore(ptr %v0, ptr %t379, i64 %t380)
  store i64 %t383, ptr %l195
  br label %bb133
bb132:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb135
bb133:
  %t384 = load i64, ptr %l5, !tbaa !24
  %t385 = load ptr, ptr %l192, !tbaa !29
  %t386 = load i64, ptr %l195, !tbaa !24
  %t388 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinPieceHint(ptr %v0, ptr %t385, i64 %t386, i64 %t384)
  store i1 %t388, ptr %l197
  br label %bb134
bb134:
  %t389 = load i1, ptr %l197, !tbaa !21
  store i1 %t389, ptr %l191, !tbaa !21
  br label %bb135
bb135:
  %t390 = load i1, ptr %l191, !tbaa !21
  br i1 %t390, label %bb136, label %bb137
bb136:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb137:
  br label %bb138
bb138:
  %t392 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t394 = trunc i64 5 to i32
  %t395 = icmp eq i32 %t392, %t394
  br i1 %t395, label %bb139, label %bb140
bb139:
  store i1 true, ptr %l201, !tbaa !21
  br label %bb142
bb140:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t398 = load i64, ptr %l5, !tbaa !24
  %t401 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendsRendering(ptr %v0, ptr %t397, i64 %t398)
  store i1 %t401, ptr %l204
  br label %bb141
bb141:
  %t402 = load i1, ptr %l204, !tbaa !21
  store i1 %t402, ptr %l201, !tbaa !21
  br label %bb142
bb142:
  %t403 = load i1, ptr %l201, !tbaa !21
  br i1 %t403, label %bb143, label %bb144
bb143:
  %t404 = load i64, ptr %l7, !tbaa !24
  %t405 = load i64, ptr %l4, !tbaa !24
  %t408 = icmp eq i64 %t404, %t405
  store i1 %t408, ptr %l205, !tbaa !21
  br label %bb145
bb144:
  store i1 false, ptr %l205, !tbaa !21
  br label %bb145
bb145:
  %t410 = load i1, ptr %l205, !tbaa !21
  br i1 %t410, label %bb146, label %bb147
bb146:
  %t411 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t413 = call i1 @compiler_2fparse_2eisOperandEndTok(i32 %t411)
  store i1 %t413, ptr %l211
  br label %bb148
bb147:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb152
bb148:
  %t414 = load i1, ptr %l211, !tbaa !21
  br i1 %t414, label %bb149, label %bb150
bb149:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb151
bb150:
  %t415 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t417 = trunc i64 108 to i32
  %t418 = icmp eq i32 %t415, %t417
  store i1 %t418, ptr %l212, !tbaa !21
  br label %bb151
bb151:
  %t420 = load i1, ptr %l212, !tbaa !21
  store i1 %t420, ptr %l209, !tbaa !21
  br label %bb152
bb152:
  %t421 = load i1, ptr %l209, !tbaa !21
  br i1 %t421, label %bb153, label %bb154
bb153:
  %t422 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t424 = trunc i64 109 to i32
  %t425 = icmp eq i32 %t422, %t424
  %t427 = xor i1 %t425, true
  store i1 %t427, ptr %l215, !tbaa !21
  br label %bb155
bb154:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb155
bb155:
  %t429 = load i1, ptr %l215, !tbaa !21
  br i1 %t429, label %bb156, label %bb157
bb156:
  %t430 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t432 = trunc i64 111 to i32
  %t433 = icmp eq i32 %t430, %t432
  %t435 = xor i1 %t433, true
  store i1 %t435, ptr %l219, !tbaa !21
  br label %bb158
bb157:
  store i1 false, ptr %l219, !tbaa !21
  br label %bb158
bb158:
  %t437 = load i1, ptr %l219, !tbaa !21
  br i1 %t437, label %bb159, label %bb160
bb159:
  %t438 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t440 = trunc i64 5 to i32
  %t441 = icmp eq i32 %t438, %t440
  br i1 %t441, label %bb161, label %bb162
bb160:
  store i1 false, ptr %l223, !tbaa !21
  br label %bb164
bb161:
  %t443 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t445 = trunc i64 108 to i32
  %t446 = icmp eq i32 %t443, %t445
  store i1 %t446, ptr %l226, !tbaa !21
  br label %bb163
bb162:
  store i1 false, ptr %l226, !tbaa !21
  br label %bb163
bb163:
  %t448 = load i1, ptr %l226, !tbaa !21
  %t449 = xor i1 %t448, true
  store i1 %t449, ptr %l223, !tbaa !21
  br label %bb164
bb164:
  %t451 = load i1, ptr %l223, !tbaa !21
  br i1 %t451, label %bb165, label %bb166
bb165:
  %t452 = load ptr, ptr %l0, !tbaa !29
  store ptr %t452, ptr %l231, !tbaa !29
  %t453 = load i64, ptr %l2, !tbaa !24
  store i64 %t453, ptr %l232, !tbaa !24
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load i64, ptr %l2, !tbaa !24
  %t458 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoperandEndAfter(ptr %v0, ptr %t454, i64 %t455)
  store i64 %t458, ptr %l235
  br label %bb167
bb166:
  store i1 false, ptr %l230, !tbaa !21
  br label %bb169
bb167:
  %t459 = load ptr, ptr %l231, !tbaa !29
  %t460 = load i64, ptr %l232, !tbaa !24
  %t461 = load i64, ptr %l235, !tbaa !24
  %t462 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinPieceHint(ptr %v0, ptr %t459, i64 %t460, i64 %t461)
  store i1 %t462, ptr %l236
  br label %bb168
bb168:
  %t463 = load i1, ptr %l236, !tbaa !21
  store i1 %t463, ptr %l230, !tbaa !21
  br label %bb169
bb169:
  %t464 = load i1, ptr %l230, !tbaa !21
  br i1 %t464, label %bb170, label %bb171
bb170:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb171:
  br label %bb172
bb172:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load i64, ptr %l2, !tbaa !24
  %t470 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etextPieceCalled(ptr %v0, ptr %t466, i64 %t467)
  store i1 %t470, ptr %l240
  br label %bb173
bb173:
  %t471 = load i1, ptr %l240, !tbaa !21
  br i1 %t471, label %bb174, label %bb175
bb174:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb175:
  br label %bb176
bb176:
  %t473 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t475 = trunc i64 109 to i32
  %t476 = icmp eq i32 %t473, %t475
  br i1 %t476, label %bb177, label %bb178
bb177:
  store i1 true, ptr %l244, !tbaa !21
  br label %bb179
bb178:
  %t478 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t480 = trunc i64 111 to i32
  %t481 = icmp eq i32 %t478, %t480
  store i1 %t481, ptr %l244, !tbaa !21
  br label %bb179
bb179:
  %t483 = load i1, ptr %l244, !tbaa !21
  br i1 %t483, label %bb180, label %bb181
bb180:
  %t484 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t486 = trunc i64 75 to i32
  %t487 = icmp eq i32 %t484, %t486
  store i1 %t487, ptr %l247, !tbaa !21
  br label %bb182
bb181:
  store i1 false, ptr %l247, !tbaa !21
  br label %bb182
bb182:
  %t489 = load i1, ptr %l247, !tbaa !21
  br i1 %t489, label %bb183, label %bb184
bb183:
  %t490 = load i64, ptr %l7, !tbaa !24
  %t491 = load i64, ptr %l4, !tbaa !24
  %t494 = icmp eq i64 %t490, %t491
  store i1 %t494, ptr %l250, !tbaa !21
  br label %bb185
bb184:
  store i1 false, ptr %l250, !tbaa !21
  br label %bb185
bb185:
  %t496 = load i1, ptr %l250, !tbaa !21
  br i1 %t496, label %bb186, label %bb187
bb186:
  store %olang.scope zeroinitializer, ptr %s11
  %t497 = load ptr, ptr %l0, !tbaa !29
  store ptr %t497, ptr %l254, !tbaa !29
  %t498 = load i64, ptr %l5, !tbaa !24
  store i64 %t498, ptr %l255, !tbaa !24
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load i64, ptr %l2, !tbaa !24
  %t503 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s11, ptr %t499, i64 %t500)
  store { i64, ptr } %t503, ptr %l258
  br label %bb188
bb187:
  br label %bb191
bb188:
  %t504 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t505 = extractvalue { i64, ptr } %t504, 0
  %t506 = extractvalue { i64, ptr } %t504, 1
  %t507 = mul i64 %t505, 1
  %t508 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t507)
  call void @llvm.memcpy.p0.p0.i64(ptr %t508, ptr %t506, i64 %t507, i1 false)
  %t509 = insertvalue { i64, ptr } undef, i64 %t505, 0
  %t510 = insertvalue { i64, ptr } %t509, ptr %t508, 1
  %t512 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %s11, ptr %s11, { i64, ptr } %t510)
  store %"compiler/diagmsg:Msg" %t512, ptr %l260
  br label %bb189
bb189:
  %t513 = load ptr, ptr %l254, !tbaa !29
  %t514 = load i64, ptr %l255, !tbaa !24
  %t515 = load %"compiler/diagmsg:Msg", ptr %l260
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s11, ptr %t513, i64 %t514, %"compiler/diagmsg:Msg" %t515)
  br label %bb190
bb190:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb191:
  %t517 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t519 = trunc i64 38 to i32
  %t520 = icmp eq i32 %t517, %t519
  br i1 %t520, label %bb192, label %bb193
bb192:
  %t522 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t524 = trunc i64 77 to i32
  %t525 = icmp eq i32 %t522, %t524
  store i1 %t525, ptr %l264, !tbaa !21
  br label %bb194
bb193:
  store i1 false, ptr %l264, !tbaa !21
  br label %bb194
bb194:
  %t527 = load i1, ptr %l264, !tbaa !21
  br i1 %t527, label %bb195, label %bb196
bb195:
  store %olang.scope zeroinitializer, ptr %s12
  %t528 = load ptr, ptr %l0, !tbaa !29
  store ptr %t528, ptr %l267, !tbaa !29
  %t529 = load i64, ptr %l2, !tbaa !24
  store i64 %t529, ptr %l268, !tbaa !24
  %t530 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAfterQuestion(ptr %s12)
  store %"compiler/diagmsg:Msg" %t530, ptr %l269
  br label %bb197
bb196:
  br label %bb199
bb197:
  %t531 = load ptr, ptr %l267, !tbaa !29
  %t532 = load i64, ptr %l268, !tbaa !24
  %t533 = load %"compiler/diagmsg:Msg", ptr %l269
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s12, ptr %t531, i64 %t532, %"compiler/diagmsg:Msg" %t533)
  br label %bb198
bb198:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb199:
  %t535 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t537 = trunc i64 108 to i32
  %t538 = icmp eq i32 %t535, %t537
  br i1 %t538, label %bb200, label %bb201
bb200:
  %t540 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t540, ptr %l274, !tbaa !27
  %t542 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s0, i32 8)
  store { i64, ptr } %t542, ptr %l276
  br label %bb202
bb201:
  store i1 false, ptr %l273, !tbaa !21
  br label %bb204
bb202:
  %t543 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t544 = extractvalue { i64, ptr } %t543, 0
  %t545 = extractvalue { i64, ptr } %t543, 1
  %t546 = mul i64 %t544, 1
  %t547 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t546)
  call void @llvm.memcpy.p0.p0.i64(ptr %t547, ptr %t545, i64 %t546, i1 false)
  %t548 = insertvalue { i64, ptr } undef, i64 %t544, 0
  %t549 = insertvalue { i64, ptr } %t548, ptr %t547, 1
  %t550 = load { i64, ptr }, ptr %l274, !tbaa !27
  %t552 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t550, { i64, ptr } %t549)
  store i1 %t552, ptr %l278
  br label %bb203
bb203:
  %t553 = load i1, ptr %l278, !tbaa !21
  store i1 %t553, ptr %l273, !tbaa !21
  br label %bb204
bb204:
  %t554 = load i1, ptr %l273, !tbaa !21
  br i1 %t554, label %bb205, label %bb206
bb205:
  %t555 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t557 = trunc i64 99 to i32
  %t558 = icmp eq i32 %t555, %t557
  br i1 %t558, label %bb207, label %bb208
bb206:
  store i1 false, ptr %l279, !tbaa !21
  br label %bb213
bb207:
  store i1 true, ptr %l282, !tbaa !21
  br label %bb209
bb208:
  %t560 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t562 = trunc i64 107 to i32
  %t563 = icmp eq i32 %t560, %t562
  store i1 %t563, ptr %l282, !tbaa !21
  br label %bb209
bb209:
  %t565 = load i1, ptr %l282, !tbaa !21
  br i1 %t565, label %bb210, label %bb211
bb210:
  store i1 true, ptr %l285, !tbaa !21
  br label %bb212
bb211:
  %t566 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t568 = trunc i64 1 to i32
  %t569 = icmp eq i32 %t566, %t568
  store i1 %t569, ptr %l285, !tbaa !21
  br label %bb212
bb212:
  %t571 = load i1, ptr %l285, !tbaa !21
  store i1 %t571, ptr %l279, !tbaa !21
  br label %bb213
bb213:
  %t572 = load i1, ptr %l279, !tbaa !21
  br i1 %t572, label %bb214, label %bb215
bb214:
  %t573 = load i64, ptr %l7, !tbaa !24
  %t574 = load i64, ptr %l4, !tbaa !24
  %t577 = icmp eq i64 %t573, %t574
  store i1 %t577, ptr %l288, !tbaa !21
  br label %bb216
bb215:
  store i1 false, ptr %l288, !tbaa !21
  br label %bb216
bb216:
  %t579 = load i1, ptr %l288, !tbaa !21
  br i1 %t579, label %bb217, label %bb218
bb217:
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t581 = load i64, ptr %l2, !tbaa !24
  %t584 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalueAfterEq(ptr %v0, ptr %t580, i64 %t581)
  store i1 %t584, ptr %l294
  br label %bb219
bb218:
  br label %bb220
bb219:
  call void @__olang_scope_close(ptr %s0)
  %t585 = load i1, ptr %l294, !tbaa !21
  store i1 %t585, ptr %rv
  br label %ret
bb220:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eifStmt(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l13 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca i1
  %l28 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca i32
  %l35 = alloca ptr
  %l37 = alloca ptr
  %l38 = alloca i32
  %l41 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/ast:If"
  %l50 = alloca %"compiler/source:Span"
  %l53 = alloca i1
  %l55 = alloca i32
  %l56 = alloca %"compiler/source:Span"
  %l62 = alloca %"compiler/ast:If"
  %rv = alloca { i32, ptr }
  %t123 = alloca { i64, [4 x i64] }, align 8
  %t160 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 9)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l11
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t9 = load i32, ptr %l10, !tbaa !23
  store i32 %t9, ptr %l7, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l11, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, ptr } zeroinitializer, i32 %t18, 0
  store { i32, ptr } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load i32, ptr %l7, !tbaa !23
  store i32 %t21, ptr %l1, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t22)
  %t25 = extractvalue { i32, ptr } %t24, 1
  %t26 = extractvalue { i32, ptr } %t24, 0
  store i32 %t26, ptr %l16
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb5, label %ok.28, !prof !99
ok.28:
  store ptr %t25, ptr %l15
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l15, !tbaa !29
  store ptr %t29, ptr %l13, !tbaa !29
  br label %bb6
bb5:
  %t30 = load i32, ptr %l16, !tbaa !23
  %t31 = lshr i32 %t30, 16
  %t32 = and i32 %t30, 65535
  %t33 = icmp eq i32 %t31, 1
  %t34 = select i1 %t33, i32 1, i32 0
  %t35 = icmp eq i32 %t30, 0
  %t36 = shl i32 %t34, 16
  %t37 = or i32 %t36, %t32
  %t38 = select i1 %t35, i32 0, i32 %t37
  %t40 = insertvalue { i32, ptr } zeroinitializer, i32 %t38, 0
  store { i32, ptr } %t40, ptr %rv
  br label %ret
bb6:
  %t41 = load ptr, ptr %l13, !tbaa !29
  store ptr %t41, ptr %l2, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebranch(ptr %v0, ptr %v1, ptr %t42)
  %t45 = extractvalue { i32, ptr } %t44, 1
  %t46 = extractvalue { i32, ptr } %t44, 0
  store i32 %t46, ptr %l21
  %t47 = icmp ne i32 %t46, 0
  br i1 %t47, label %bb8, label %ok.48, !prof !99
ok.48:
  store ptr %t45, ptr %l20
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l20, !tbaa !29
  store ptr %t49, ptr %l18, !tbaa !29
  br label %bb9
bb8:
  %t50 = load i32, ptr %l21, !tbaa !23
  %t51 = lshr i32 %t50, 16
  %t52 = and i32 %t50, 65535
  %t53 = icmp eq i32 %t51, 1
  %t54 = select i1 %t53, i32 1, i32 0
  %t55 = icmp eq i32 %t50, 0
  %t56 = shl i32 %t54, 16
  %t57 = or i32 %t56, %t52
  %t58 = select i1 %t55, i32 0, i32 %t57
  %t60 = insertvalue { i32, ptr } zeroinitializer, i32 %t58, 0
  store { i32, ptr } %t60, ptr %rv
  br label %ret
bb9:
  %t61 = load ptr, ptr %l18, !tbaa !29
  store ptr %t61, ptr %l3, !tbaa !29
  store ptr null, ptr %l4, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t65 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t62, i32 10)
  store i1 %t65, ptr %l25
  br label %bb10
bb10:
  %t66 = load i1, ptr %l25, !tbaa !21
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t67, i32 9)
  store i1 %t70, ptr %l28
  br label %bb13
bb12:
  br label %bb24
bb13:
  %t71 = load i1, ptr %l28, !tbaa !21
  br i1 %t71, label %bb14, label %bb15
bb14:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eifStmt(ptr %v0, ptr %v1, ptr %t72)
  %t75 = extractvalue { i32, ptr } %t74, 1
  %t76 = extractvalue { i32, ptr } %t74, 0
  store i32 %t76, ptr %l32
  %t77 = icmp ne i32 %t76, 0
  br i1 %t77, label %bb17, label %ok.78, !prof !99
ok.78:
  store ptr %t75, ptr %l31
  br label %bb16
bb15:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebranch(ptr %v0, ptr %v1, ptr %t79)
  %t82 = extractvalue { i32, ptr } %t81, 1
  %t83 = extractvalue { i32, ptr } %t81, 0
  store i32 %t83, ptr %l38
  %t84 = icmp ne i32 %t83, 0
  br i1 %t84, label %bb20, label %ok.85, !prof !99
ok.85:
  store ptr %t82, ptr %l37
  br label %bb19
bb16:
  %t86 = load ptr, ptr %l31, !tbaa !29
  store ptr %t86, ptr %l29, !tbaa !29
  br label %bb18
bb17:
  %t87 = load i32, ptr %l32, !tbaa !23
  %t88 = lshr i32 %t87, 16
  %t89 = and i32 %t87, 65535
  %t90 = icmp eq i32 %t88, 1
  %t91 = select i1 %t90, i32 1, i32 0
  %t92 = icmp eq i32 %t87, 0
  %t93 = shl i32 %t91, 16
  %t94 = or i32 %t93, %t89
  %t95 = select i1 %t92, i32 0, i32 %t94
  %t97 = insertvalue { i32, ptr } zeroinitializer, i32 %t95, 0
  store { i32, ptr } %t97, ptr %rv
  br label %ret
bb18:
  %t98 = load ptr, ptr %l29, !tbaa !29
  store ptr %t98, ptr %l4, !tbaa !29
  br label %bb23
bb19:
  %t100 = load ptr, ptr %l37, !tbaa !29
  store ptr %t100, ptr %l35, !tbaa !29
  br label %bb21
bb20:
  %t101 = load i32, ptr %l38, !tbaa !23
  %t102 = lshr i32 %t101, 16
  %t103 = and i32 %t101, 65535
  %t104 = icmp eq i32 %t102, 1
  %t105 = select i1 %t104, i32 1, i32 0
  %t106 = icmp eq i32 %t101, 0
  %t107 = shl i32 %t105, 16
  %t108 = or i32 %t107, %t103
  %t109 = select i1 %t106, i32 0, i32 %t108
  %t111 = insertvalue { i32, ptr } zeroinitializer, i32 %t109, 0
  store { i32, ptr } %t111, ptr %rv
  br label %ret
bb21:
  %t112 = load ptr, ptr %l35, !tbaa !29
  store ptr %t112, ptr %l5, !tbaa !29
  %t113 = load ptr, ptr %l5, !tbaa !29
  %t115 = getelementptr %"compiler/ast:Branch", ptr %t113, i32 0, i32 0
  %t116 = load %"compiler/source:Span", ptr %t115
  store %"compiler/source:Span" %t116, ptr %l41
  %t117 = load ptr, ptr %l5, !tbaa !29
  %t120 = call %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr null, ptr %t117, ptr null)
  store %"compiler/ast:If" %t120, ptr %l44
  br label %bb22
bb22:
  %t121 = load %"compiler/ast:If", ptr %l44
  %t122 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:If" %t121, ptr %t122
  store { i64, [4 x i64] } zeroinitializer, ptr %t123
  %t124 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 0
  store i64 5, ptr %t124
  %t125 = load %"compiler/source:Span", ptr %l41
  %t126 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t125, 0
  %t128 = insertvalue { %"compiler/source:Span", ptr } %t126, ptr %t122, 1
  %t129 = getelementptr { i64, [4 x i64] }, ptr %t123, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t128, ptr %t129
  %t130 = load { i64, [4 x i64] }, ptr %t123
  %t132 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t130, ptr %t132
  store ptr %t132, ptr %l4, !tbaa !29
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i32, ptr %l1, !tbaa !23
  %t138 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t134, i32 %t135)
  store %"compiler/source:Span" %t138, ptr %l50
  br label %bb25
bb25:
  %t139 = load %"compiler/source:Span", ptr %l50
  store %"compiler/source:Span" %t139, ptr %l6
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t143 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t140, i32 8)
  store i1 %t143, ptr %l53
  br label %bb26
bb26:
  %t144 = load i1, ptr %l53, !tbaa !21
  br i1 %t144, label %bb27, label %bb28
bb27:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t145)
  store i32 %t147, ptr %l55
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t148 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t148, ptr %l56
  %t149 = load ptr, ptr %l2, !tbaa !29
  %t151 = load ptr, ptr %l3, !tbaa !29
  %t153 = load ptr, ptr %l4, !tbaa !29
  %t157 = call %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t149, ptr %t151, ptr %t153)
  store %"compiler/ast:If" %t157, ptr %l62
  br label %bb31
bb31:
  %t158 = load %"compiler/ast:If", ptr %l62
  %t159 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:If" %t158, ptr %t159
  store { i64, [4 x i64] } zeroinitializer, ptr %t160
  %t161 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 0
  store i64 5, ptr %t161
  %t162 = load %"compiler/source:Span", ptr %l56
  %t163 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t162, 0
  %t165 = insertvalue { %"compiler/source:Span", ptr } %t163, ptr %t159, 1
  %t166 = getelementptr { i64, [4 x i64] }, ptr %t160, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t165, ptr %t166
  %t167 = load { i64, [4 x i64] }, ptr %t160
  %t169 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t167, ptr %t169
  %t171 = insertvalue { i32, ptr } zeroinitializer, ptr %t169, 1
  store { i32, ptr } %t171, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitemPattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l19 = alloca ptr
  %l24 = alloca ptr
  %rv = alloca ptr
  %t35 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 26
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [4 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 1
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l3, !tbaa !23
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr { i64, [4 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t24, i32 0, i32 2
  %t26 = load ptr, ptr %t25
  store ptr %t26, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t28, ptr %l15
  %t29 = load i32, ptr %l3, !tbaa !23
  store i32 %t29, ptr %l16, !tbaa !23
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t34 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %t30, ptr %t31, i1 false)
  store ptr %t34, ptr %l19
  br label %bb6
bb6:
  store { i64, [4 x i64] } zeroinitializer, ptr %t35
  %t36 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 0
  store i64 8, ptr %t36
  %t37 = load %"compiler/source:Span", ptr %l15
  %t38 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t37, 0
  %t39 = load i32, ptr %l16, !tbaa !23
  %t40 = insertvalue { %"compiler/source:Span", i32, ptr } %t38, i32 %t39, 1
  %t41 = load ptr, ptr %l19, !tbaa !29
  %t42 = insertvalue { %"compiler/source:Span", i32, ptr } %t40, ptr %t41, 2
  %t43 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t42, ptr %t43
  %t44 = load { i64, [4 x i64] }, ptr %t35
  %t46 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t44, ptr %t46
  store ptr %t46, ptr %rv
  br label %ret
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t52 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %t48, ptr %t49, i1 false)
  store ptr %t52, ptr %l24
  br label %bb11
bb11:
  %t53 = load ptr, ptr %l24, !tbaa !29
  store ptr %t53, ptr %rv
  br label %ret
bb12:
  call void @__olang_check_failed(ptr @olang_loc_5d444e9b92bac566_79a754ee236bef22)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinPieceHint(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca %"compiler/token:Token"
  %l4 = alloca %"compiler/token:Token"
  %l7 = alloca i1
  %l10 = alloca i1
  %l13 = alloca i64
  %l16 = alloca i64
  %l21 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l32 = alloca i1
  %l37 = alloca i1
  %l40 = alloca i1
  %l44 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i64
  %l49 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l54 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l68 = alloca i1
  %l73 = alloca ptr
  %l74 = alloca i64
  %l77 = alloca { i64, ptr }
  %l79 = alloca i64
  %l81 = alloca i64
  %l82 = alloca i64
  %l87 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca ptr
  %l92 = alloca i64
  %l95 = alloca { i64, ptr }
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca ptr
  %l98 = alloca i64
  %l99 = alloca %"compiler/diagmsg:Msg"
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca i1
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
  br label %bb3
bb2:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  store i1 %t7, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb8
bb5:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t10, i64 %t11)
  store i64 %t14, ptr %l13
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t15, i64 %t16)
  store i64 %t19, ptr %l16
  br label %bb7
bb7:
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = load i64, ptr %l16, !tbaa !24
  %t22 = icmp ne i64 %t20, %t21
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb8
bb8:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb9, label %bb10
bb9:
  store i1 false, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !29
  %t31 = getelementptr %"compiler/scan:Tokens", ptr %t29, i32 0, i32 0
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l21, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr %"compiler/token:Token", ptr %t36, i64 %t33
  %t38 = load %"compiler/token:Token", ptr %t37
  store %"compiler/token:Token" %t38, ptr %l3
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/scan:Tokens", ptr %t43, i32 0, i32 0
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l26, !tbaa !27
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"compiler/token:Token", ptr %t50, i64 %t47
  %t52 = load %"compiler/token:Token", ptr %t51
  store %"compiler/token:Token" %t52, ptr %l4
  %t54 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t55 = load i32, ptr %t54, !tbaa !23
  %t56 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t57 = load i32, ptr %t56, !tbaa !23
  %t60 = icmp sgt i32 %t55, %t57
  br i1 %t60, label %bb12, label %bb13
bb12:
  %t62 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t63 = load i32, ptr %t62, !tbaa !23
  %t64 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t65 = load i32, ptr %t64, !tbaa !23
  %t68 = sub i32 %t63, %t65
  %t70 = icmp sle i32 %t68, 60
  store i1 %t70, ptr %l32, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb14
bb14:
  %t72 = load i1, ptr %l32, !tbaa !21
  br i1 %t72, label %bb15, label %bb16
bb15:
  %t73 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 0
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 114}
  %t76 = trunc i64 4 to i32
  %t77 = icmp eq i32 %t74, %t76
  store i1 %t77, ptr %l37, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb17
bb17:
  %t79 = load i1, ptr %l37, !tbaa !21
  br i1 %t79, label %bb18, label %bb19
bb18:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = load i64, ptr %l2, !tbaa !24
  %t86 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epadsChar(ptr %v0, ptr %t80, i64 %t81, i64 %t82)
  store i1 %t86, ptr %l44
  br label %bb20
bb19:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb21
bb20:
  %t87 = load i1, ptr %l44, !tbaa !21
  store i1 %t87, ptr %l40, !tbaa !21
  br label %bb21
bb21:
  %t88 = load i1, ptr %l40, !tbaa !21
  br i1 %t88, label %bb22, label %bb23
bb22:
  store %olang.scope zeroinitializer, ptr %s2
  %t89 = load ptr, ptr %l0, !tbaa !29
  store ptr %t89, ptr %l45, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  store i64 %t90, ptr %l46, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load %"compiler/token:Token", ptr %l3
  %t95 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %s2, ptr %t91, %"compiler/token:Token" %t92)
  store { i64, ptr } %t95, ptr %l49
  br label %bb24
bb23:
  %t96 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t97 = load i32, ptr %t96, !tbaa !23
  %t98 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t99 = load i32, ptr %t98, !tbaa !23
  %t102 = icmp sgt i32 %t97, %t99
  br i1 %t102, label %bb33, label %bb34
bb24:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/parse:Parser", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = getelementptr %"compiler/source:Source", ptr %t107, i32 0, i32 1
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l52, !tbaa !27
  %t111 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 3
  %t112 = load i32, ptr %t111, !tbaa !23
  %t114 = sext i32 %t112 to i64
  store i64 %t114, ptr %l54, !tbaa !24
  %t115 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t116 = load i32, ptr %t115, !tbaa !23
  %t118 = sext i32 %t116 to i64
  store i64 %t118, ptr %l56, !tbaa !24
  %t119 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l57, !tbaa !24
  %t121 = load i64, ptr %l54, !tbaa !24
  %t122 = icmp sge i64 %t121, 0
  br i1 %t122, label %bb25, label %bb26
bb25:
  %t124 = load i64, ptr %l54, !tbaa !24
  %t125 = load i64, ptr %l56, !tbaa !24
  %t126 = icmp sle i64 %t124, %t125
  br i1 %t126, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_cbae392aecd52e99_b08c2106788b334d)
  unreachable
bb27:
  %t128 = load i64, ptr %l56, !tbaa !24
  %t129 = load i64, ptr %l57, !tbaa !24
  %t130 = icmp sle i64 %t128, %t129
  br i1 %t130, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_cbae392aecd52e99_b08c2106788b334d)
  unreachable
bb29:
  %t132 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l54, !tbaa !24
  %t135 = load i64, ptr %l56, !tbaa !24
  %t136 = getelementptr i8, ptr %t133, i64 %t134
  %t137 = sub i64 %t135, %t134
  %t138 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t136, 1
  %t140 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t142 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = add i64 %t141, %t144
  %t146 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t148 = add i64 %t145, %t147
  %t150 = extractvalue { i64, ptr } %t139, 1
  %t151 = extractvalue { i64, ptr } %t139, 0
  %t152 = add i64 %t148, %t151
  %t153 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t152)
  call void @olang_textcopy(ptr %t153, ptr %t140, i64 %t141)
  %t154 = getelementptr i8, ptr %t153, i64 %t141
  call void @olang_textcopy(ptr %t154, ptr %t143, i64 %t144)
  %t155 = getelementptr i8, ptr %t154, i64 %t144
  call void @olang_textcopy(ptr %t155, ptr %t146, i64 %t147)
  %t156 = getelementptr i8, ptr %t155, i64 %t147
  call void @olang_textcopy(ptr %t156, ptr %t150, i64 %t151)
  %t157 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t158 = insertvalue { i64, ptr } %t157, ptr %t153, 1
  %t160 = extractvalue { i64, ptr } %t158, 0
  %t161 = extractvalue { i64, ptr } %t158, 1
  %t162 = mul i64 %t160, 1
  %t163 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t162)
  call void @llvm.memcpy.p0.p0.i64(ptr %t163, ptr %t161, i64 %t162, i1 false)
  %t164 = insertvalue { i64, ptr } undef, i64 %t160, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t163, 1
  %t167 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPiece(ptr %s2, ptr %s2, { i64, ptr } %t165)
  store %"compiler/diagmsg:Msg" %t167, ptr %l64
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_cbae392aecd52e99_b08c2106788b334d)
  unreachable
bb31:
  %t168 = load ptr, ptr %l45, !tbaa !29
  %t169 = load i64, ptr %l46, !tbaa !24
  %t170 = load %"compiler/diagmsg:Msg", ptr %l64
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s2, ptr %t168, i64 %t169, %"compiler/diagmsg:Msg" %t170)
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s2)
  br label %bb55
bb33:
  %t171 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t172 = load i32, ptr %t171, !tbaa !23
  %t173 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t174 = load i32, ptr %t173, !tbaa !23
  %t177 = sub i32 %t172, %t174
  %t179 = icmp sle i32 %t177, 60
  store i1 %t179, ptr %l68, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb35
bb35:
  %t181 = load i1, ptr %l68, !tbaa !21
  br i1 %t181, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s5
  %t182 = load ptr, ptr %l0, !tbaa !29
  store ptr %t182, ptr %l73, !tbaa !29
  %t183 = load i64, ptr %l1, !tbaa !24
  store i64 %t183, ptr %l74, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t186 = getelementptr %"compiler/parse:Parser", ptr %t184, i32 0, i32 0
  %t187 = load ptr, ptr %t186, !tbaa !29
  %t189 = getelementptr %"compiler/source:Source", ptr %t187, i32 0, i32 1
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l77, !tbaa !27
  %t191 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t192 = load i32, ptr %t191, !tbaa !23
  %t194 = sext i32 %t192 to i64
  store i64 %t194, ptr %l79, !tbaa !24
  %t195 = getelementptr %"compiler/token:Token", ptr %l4, i32 0, i32 3
  %t196 = load i32, ptr %t195, !tbaa !23
  %t198 = sext i32 %t196 to i64
  store i64 %t198, ptr %l81, !tbaa !24
  %t199 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 0
  store i64 %t200, ptr %l82, !tbaa !24
  %t201 = load i64, ptr %l79, !tbaa !24
  %t202 = icmp sge i64 %t201, 0
  br i1 %t202, label %bb38, label %bb39
bb37:
  %t204 = load i64, ptr %l1, !tbaa !24
  %t205 = load i64, ptr %l2, !tbaa !24
  %t208 = icmp eq i64 %t204, %t205
  br i1 %t208, label %bb46, label %bb47
bb38:
  %t210 = load i64, ptr %l79, !tbaa !24
  %t211 = load i64, ptr %l81, !tbaa !24
  %t212 = icmp sle i64 %t210, %t211
  br i1 %t212, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_f546cbef4e8d8fec_998315c9d411d170)
  unreachable
bb40:
  %t214 = load i64, ptr %l81, !tbaa !24
  %t215 = load i64, ptr %l82, !tbaa !24
  %t216 = icmp sle i64 %t214, %t215
  br i1 %t216, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_f546cbef4e8d8fec_998315c9d411d170)
  unreachable
bb42:
  %t218 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = load i64, ptr %l79, !tbaa !24
  %t221 = load i64, ptr %l81, !tbaa !24
  %t222 = getelementptr i8, ptr %t219, i64 %t220
  %t223 = sub i64 %t221, %t220
  %t224 = insertvalue { i64, ptr } undef, i64 %t223, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t222, 1
  %t227 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPiece(ptr %v0, ptr %s5, { i64, ptr } %t225)
  store %"compiler/diagmsg:Msg" %t227, ptr %l87
  br label %bb44
bb43:
  call void @__olang_check_failed(ptr @olang_loc_f546cbef4e8d8fec_998315c9d411d170)
  unreachable
bb44:
  %t228 = load ptr, ptr %l73, !tbaa !29
  %t229 = load i64, ptr %l74, !tbaa !24
  %t230 = load %"compiler/diagmsg:Msg", ptr %l87
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s5, ptr %t228, i64 %t229, %"compiler/diagmsg:Msg" %t230)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s5)
  br label %bb54
bb46:
  store %olang.scope zeroinitializer, ptr %s7
  %t231 = load ptr, ptr %l0, !tbaa !29
  store ptr %t231, ptr %l91, !tbaa !29
  %t232 = load i64, ptr %l1, !tbaa !24
  store i64 %t232, ptr %l92, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load %"compiler/token:Token", ptr %l3
  %t237 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t233, %"compiler/token:Token" %t234)
  store { i64, ptr } %t237, ptr %l95
  br label %bb48
bb47:
  store %olang.scope zeroinitializer, ptr %s8
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l97, !tbaa !29
  %t239 = load i64, ptr %l1, !tbaa !24
  store i64 %t239, ptr %l98, !tbaa !24
  %t240 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPiece(ptr %s8, ptr %s8, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t240, ptr %l99
  br label %bb51
bb48:
  %t241 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t242 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPiece(ptr %v0, ptr %s7, { i64, ptr } %t241)
  store %"compiler/diagmsg:Msg" %t242, ptr %l96
  br label %bb49
bb49:
  %t243 = load ptr, ptr %l91, !tbaa !29
  %t244 = load i64, ptr %l92, !tbaa !24
  %t245 = load %"compiler/diagmsg:Msg", ptr %l96
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s7, ptr %t243, i64 %t244, %"compiler/diagmsg:Msg" %t245)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s7)
  br label %bb53
bb51:
  %t246 = load ptr, ptr %l97, !tbaa !29
  %t247 = load i64, ptr %l98, !tbaa !24
  %t248 = load %"compiler/diagmsg:Msg", ptr %l99
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %s8, ptr %t246, i64 %t247, %"compiler/diagmsg:Msg" %t248)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s8)
  br label %bb53
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordField(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/token:Token"
  %l2 = alloca i32
  %l4 = alloca %"compiler/token:Token"
  %l7 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i1
  %l21 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i1
  %l33 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %a0, i64 1)
  store %"compiler/token:Token" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"compiler/token:Token", ptr %l4
  store %"compiler/token:Token" %t4, ptr %l1
  %t5 = load %"compiler/token:Token", ptr %l1
  %t6 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t9 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t5, i8 %t6)
  store i1 %t9, ptr %l7
  br label %bb2
bb2:
  %t10 = load i1, ptr %l7, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t12 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 114}
  store i32 %t13, ptr %l2
  %t15 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t17 = trunc i64 8 to i32
  %t18 = icmp eq i32 %t15, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t24 = trunc i64 78 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t32 = trunc i64 76 to i32
  %t33 = icmp eq i32 %t30, %t32
  %t35 = xor i1 %t33, true
  store i1 %t35, ptr %l17, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb11
bb11:
  %t37 = load i1, ptr %l17, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t40 = trunc i64 108 to i32
  %t41 = icmp eq i32 %t38, %t40
  %t43 = xor i1 %t41, true
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb14
bb14:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t46 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t48 = trunc i64 75 to i32
  %t49 = icmp eq i32 %t46, %t48
  %t51 = xor i1 %t49, true
  store i1 %t51, ptr %l25, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb17
bb17:
  %t53 = load i1, ptr %l25, !tbaa !21
  br i1 %t53, label %bb18, label %bb19
bb18:
  %t54 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t56 = trunc i64 0 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l29, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l29, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t64 = trunc i64 113 to i32
  %t65 = icmp eq i32 %t62, %t64
  %t67 = xor i1 %t65, true
  store i1 %t67, ptr %l33, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l33, !tbaa !21
  br label %bb23
bb23:
  %t69 = load i1, ptr %l33, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t2, i32 0, i32 21
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t9 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 21
  store i64 %t6, ptr %t9, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local { i32, %"compiler/source:Span" } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elinkClause(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca ptr
  %l8 = alloca %"compiler/token:Token"
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i32
  %l17 = alloca %"compiler/source:Span"
  %l19 = alloca i32
  %l21 = alloca %"compiler/token:Token"
  %l23 = alloca i32
  %l26 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/source:Span" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 1)
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t7)
  store %"compiler/token:Token" %t9, ptr %l8
  br label %bb4
bb3:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb7
bb4:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load %"compiler/token:Token", ptr %l8
  %t12 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t10, %"compiler/token:Token" %t11)
  store { i64, ptr } %t12, ptr %l9
  br label %bb5
bb5:
  %t13 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t14 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t14, ptr %l10
  br label %bb6
bb6:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l5, !tbaa !21
  br label %bb7
bb7:
  %t16 = load i1, ptr %l5, !tbaa !21
  br i1 %t16, label %bb8, label %bb9
bb8:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t17, i64 1)
  store i32 %t19, ptr %l13
  br label %bb10
bb9:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb11
bb10:
  %t20 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t22 = trunc i64 5 to i32
  %t23 = icmp eq i32 %t20, %t22
  store i1 %t23, ptr %l11, !tbaa !21
  br label %bb11
bb11:
  %t25 = load i1, ptr %l11, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s1
  %t28 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s1, i32 0, i32 0)
  store %"compiler/source:Span" %t28, ptr %l17
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t29 = load %"compiler/source:Span", ptr %l17
  %t30 = insertvalue { i32, %"compiler/source:Span" } zeroinitializer, %"compiler/source:Span" %t29, 1
  store { i32, %"compiler/source:Span" } %t30, ptr %rv
  br label %ret
bb15:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t31)
  store i32 %t33, ptr %l19
  br label %bb16
bb16:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t34)
  store %"compiler/token:Token" %t36, ptr %l21
  br label %bb17
bb17:
  %t37 = load %"compiler/token:Token", ptr %l21
  store %"compiler/token:Token" %t37, ptr %l1
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l23
  br label %bb18
bb18:
  %t41 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t42 = load i32, ptr %t41, !tbaa !23
  %t43 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 3
  %t44 = load i32, ptr %t43, !tbaa !23
  %t47 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t42, i32 %t44)
  store %"compiler/source:Span" %t47, ptr %l26
  br label %bb19
bb19:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load %"compiler/source:Span", ptr %l26
  %t49 = insertvalue { i32, %"compiler/source:Span" } zeroinitializer, %"compiler/source:Span" %t48, 1
  store { i32, %"compiler/source:Span" } %t49, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/source:Span" }, ptr %rv
  ret { i32, %"compiler/source:Span" } %rr
}

define dso_local %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l20 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %rv = alloca %"compiler/token:Token"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  store i64 %a1, ptr %l4, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t3, i32 0, i32 7
  %t6 = load i32, ptr %t5, !range !{i32 0, i32 114}
  %t8 = trunc i64 0 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb1, label %bb2
bb1:
  store i64 1, ptr %l9, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l9, !tbaa !24
  %t15 = add i64 %t13, %t14
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %t16, i64 %t15)
  store i64 %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = load i64, ptr %l11, !tbaa !24
  store i64 %t19, ptr %l2, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/scan:Tokens", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t32 = icmp sge i64 %t20, %t29
  br i1 %t32, label %bb5, label %bb6
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/parse:Parser", ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !29
  %t39 = getelementptr %"compiler/scan:Tokens", ptr %t37, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l20, !tbaa !27
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t46 = getelementptr %"compiler/scan:Tokens", ptr %t44, i32 0, i32 0
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = sub i64 %t49, 1
  %t53 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr %"compiler/token:Token", ptr %t54, i64 %t51
  %t56 = load %"compiler/token:Token", ptr %t55
  store %"compiler/token:Token" %t56, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/parse:Parser", ptr %t58, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/scan:Tokens", ptr %t61, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l29, !tbaa !27
  %t65 = load i64, ptr %l2, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr %"compiler/token:Token", ptr %t68, i64 %t65
  %t70 = load %"compiler/token:Token", ptr %t69
  store %"compiler/token:Token" %t70, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/token:Token", ptr %rv
  ret %"compiler/token:Token" %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i1
  %l17 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i32
  %l28 = alloca i32
  %l31 = alloca %"compiler/source:Span"
  %rv = alloca ptr
  %t51 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a2, ptr %l3, !tbaa !29
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t3, i32 0, i32 7
  %t6 = load i32, ptr %t5, !range !{i32 0, i32 114}
  %t8 = trunc i64 0 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t11, i32 101)
  store i1 %t14, ptr %l12
  br label %bb4
bb3:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb13
bb4:
  %t15 = load i1, ptr %l12, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eampOperator(ptr %v0, ptr %t16)
  store i1 %t18, ptr %l15
  br label %bb7
bb6:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t19 = load i1, ptr %l15, !tbaa !21
  %t20 = xor i1 %t19, true
  store i1 %t20, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t22 = load i1, ptr %l13, !tbaa !21
  br i1 %t22, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb12
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %t23)
  store i1 %t25, ptr %l19
  br label %bb11
bb11:
  %t26 = load i1, ptr %l19, !tbaa !21
  store i1 %t26, ptr %l17, !tbaa !21
  br label %bb12
bb12:
  %t27 = load i1, ptr %l17, !tbaa !21
  store i1 %t27, ptr %l9, !tbaa !21
  br label %bb13
bb13:
  %t28 = load i1, ptr %l9, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb14, label %bb15
bb14:
  br label %bb25
bb15:
  br label %bb16
bb16:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t31, i32 77)
  store i1 %t34, ptr %l23
  br label %bb17
bb17:
  %t35 = load i1, ptr %l23, !tbaa !21
  store i1 %t35, ptr %l4, !tbaa !21
  %t36 = load i1, ptr %l4, !tbaa !21
  br i1 %t36, label %bb18, label %bb19
bb18:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t38)
  store i32 %t40, ptr %l26
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t41)
  store i32 %t43, ptr %l28
  br label %bb22
bb22:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t48 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t44, i32 %a1)
  store %"compiler/source:Span" %t48, ptr %l31
  br label %bb23
bb23:
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t50 = load i1, ptr %l4, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t51
  %t52 = getelementptr { i64, [5 x i64] }, ptr %t51, i32 0, i32 0
  store i64 3, ptr %t52
  %t53 = load %"compiler/source:Span", ptr %l31
  %t54 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } undef, %"compiler/source:Span" %t53, 0
  %t56 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t54, ptr %t49, 1
  %t58 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t56, i1 %t50, 2
  %t59 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t58, i1 false, 3
  %t60 = getelementptr { i64, [5 x i64] }, ptr %t51, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1, i1 } %t59, ptr %t60
  %t61 = load { i64, [5 x i64] }, ptr %t51
  %t63 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t61, ptr %t63
  store ptr %t63, ptr %l3, !tbaa !29
  br label %bb24
bb24:
  br label %bb1
bb25:
  %t65 = load ptr, ptr %l3, !tbaa !29
  store ptr %t65, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenAngle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 97)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l5
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t9 = load i32, ptr %l4, !tbaa !23
  store i32 %t9, ptr %l1, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l5, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  store i32 %t18, ptr %rv
  br label %ret
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/parse:Parser", ptr %t20, i32 0, i32 41
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 6
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = sub i64 %t26, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t22, i64 %t28)
  br label %bb4
bb4:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l6 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 8)
  store i1 %t4, ptr %l3
  br label %bb2
bb2:
  %t5 = load i1, ptr %l3, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t8)
  store i32 %t10, ptr %l6
  br label %bb6
bb6:
  br label %bb7
bb7:
  br label %bb1
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsType(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l5 = alloca i32
  %l8 = alloca i1
  %l18 = alloca i32
  %l21 = alloca i1
  %l25 = alloca i32
  %l33 = alloca i32
  %l38 = alloca %"compiler/token:Token"
  %l40 = alloca i1
  %l46 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i32, ptr %l5, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t7 = trunc i64 39 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t12 = trunc i64 37 to i32
  %t13 = icmp eq i32 %t10, %t12
  store i1 %t13, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t15 = load i1, ptr %l8, !tbaa !21
  br i1 %t15, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t19 = trunc i64 1 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i64 1, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t25, i64 %t26)
  store i32 %t29, ptr %l18
  br label %bb12
bb12:
  %t30 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t32 = trunc i64 76 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb13, label %bb14
bb13:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = add i64 %t36, 1
  %t41 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t35, i64 %t38)
  store i32 %t41, ptr %l25
  br label %bb15
bb14:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb16
bb15:
  %t42 = load i32, ptr %l25, !range !{i32 0, i32 114}
  %t44 = trunc i64 1 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb16
bb16:
  %t47 = load i1, ptr %l21, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb21
bb18:
  br label %bb19
bb19:
  %t50 = load i64, ptr %l2, !tbaa !24
  %t52 = add i64 %t50, 2
  store i64 %t52, ptr %l2, !tbaa !24
  br label %bb20
bb20:
  br label %bb11
bb21:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l2, !tbaa !24
  %t58 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t54, i64 %t55)
  store i32 %t58, ptr %l33
  br label %bb22
bb22:
  %t59 = load i32, ptr %l33, !range !{i32 0, i32 114}
  store i32 %t59, ptr %l3
  %t60 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t62 = trunc i64 101 to i32
  %t63 = icmp eq i32 %t60, %t62
  br i1 %t63, label %bb23, label %bb24
bb23:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l2, !tbaa !24
  %t69 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t65, i64 %t66)
  store %"compiler/token:Token" %t69, ptr %l38
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t70 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t71 = load %"compiler/token:Token", ptr %l38
  %t73 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t71, i8 %t70)
  store i1 %t73, ptr %l40
  br label %bb26
bb26:
  %t74 = load i1, ptr %l40, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %rv
  br label %ret
bb27:
  %t77 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t79 = trunc i64 97 to i32
  %t80 = icmp eq i32 %t77, %t79
  br i1 %t80, label %bb28, label %bb29
bb28:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l2, !tbaa !24
  %t86 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisTypePath(ptr %v0, ptr %t82, i64 %t83)
  store i1 %t86, ptr %l46
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t87 = load i1, ptr %l46, !tbaa !21
  store i1 %t87, ptr %rv
  br label %ret
bb31:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmtRoom(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 21
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load i64, ptr @G_2ecompiler_2fparse_2eMaxNesting, !tbaa !24
  %t8 = icmp sge i64 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 6
  %t14 = load i64, ptr %t13, !tbaa !24
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2etooDeepAt(ptr %v0, ptr %t10, i64 %t14)
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

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncStmt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 6
  store i64 %a1, ptr %t10, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncFrom(ptr %v0, ptr %t11)
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/parse:Parser", ptr %t13, i32 0, i32 6
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  br i1 %t20, label %bb2, label %bb3
bb2:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 6
  store i64 %t23, ptr %t26, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncFrom(ptr %v0, ptr %t27)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l7 = alloca i64
  %rv = alloca %"compiler/token:Token"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scan:Tokens", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l3, !tbaa !27
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 6
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t8, i64 %t12)
  store i64 %t15, ptr %l7
  br label %bb1
bb1:
  %t16 = load i64, ptr %l7, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr %"compiler/token:Token", ptr %t18, i64 %t16
  %t20 = load %"compiler/token:Token", ptr %t19
  store %"compiler/token:Token" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/token:Token", ptr %rv
  ret %"compiler/token:Token" %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etopBranch(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l14 = alloca i64
  %l17 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i1
  %l25 = alloca i1
  %l29 = alloca i32
  %l32 = alloca i32
  %l33 = alloca i32
  %l37 = alloca %"compiler/source:Span"
  %l41 = alloca { i64, ptr }
  %l45 = alloca %"compiler/ast:TopBranch"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 112)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l10
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l9
  br label %bb1
bb1:
  %t9 = load i32, ptr %l9, !tbaa !23
  store i32 %t9, ptr %l6, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l10, !tbaa !23
  %t11 = lshr i32 %t10, 16
  %t12 = and i32 %t10, 65535
  %t13 = icmp eq i32 %t11, 1
  %t14 = select i1 %t13, i32 1, i32 0
  %t15 = icmp eq i32 %t10, 0
  %t16 = shl i32 %t14, 16
  %t17 = or i32 %t16, %t12
  %t18 = select i1 %t15, i32 0, i32 %t17
  %t20 = insertvalue { i32, ptr } zeroinitializer, i32 %t18, 0
  store { i32, ptr } %t20, ptr %rv
  br label %ret
bb3:
  %t21 = load i32, ptr %l6, !tbaa !23
  store i32 %t21, ptr %l1, !tbaa !23
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 4
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %t25)
  store i64 %t27, ptr %l14
  br label %bb4
bb4:
  %t28 = load i64, ptr %l14, !tbaa !24
  store i64 %t28, ptr %l2, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 38
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l17
  br label %bb5
bb5:
  %t34 = load i64, ptr %l17, !tbaa !24
  store i64 %t34, ptr %l3, !tbaa !24
  br label %bb6
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t35)
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t40 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t37, i32 113)
  store i1 %t40, ptr %l21
  br label %bb8
bb8:
  %t41 = load i1, ptr %l21, !tbaa !21
  br i1 %t41, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb10:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t42, i32 0)
  store i1 %t45, ptr %l25
  br label %bb11
bb11:
  %t46 = load i1, ptr %l25, !tbaa !21
  store i1 %t46, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l22, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t48 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitem(ptr %v0, ptr %t48)
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb6
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/parse:Parser", ptr %t50, i32 0, i32 4
  %t53 = load ptr, ptr %t52, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t53)
  br label %bb19
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t58 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t55, i32 113)
  %t59 = extractvalue { i32, i32 } %t58, 1
  %t60 = extractvalue { i32, i32 } %t58, 0
  store i32 %t60, ptr %l33
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb21, label %ok.62, !prof !99
ok.62:
  store i32 %t59, ptr %l32
  br label %bb20
bb20:
  %t63 = load i32, ptr %l32, !tbaa !23
  store i32 %t63, ptr %l29, !tbaa !23
  br label %bb22
bb21:
  %t64 = load i32, ptr %l33, !tbaa !23
  %t65 = lshr i32 %t64, 16
  %t66 = and i32 %t64, 65535
  %t67 = icmp eq i32 %t65, 1
  %t68 = select i1 %t67, i32 1, i32 0
  %t69 = icmp eq i32 %t64, 0
  %t70 = shl i32 %t68, 16
  %t71 = or i32 %t70, %t66
  %t72 = select i1 %t69, i32 0, i32 %t71
  %t74 = insertvalue { i32, ptr } zeroinitializer, i32 %t72, 0
  store { i32, ptr } %t74, ptr %rv
  br label %ret
bb22:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i32, ptr %l1, !tbaa !23
  %t79 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t75, i32 %t76)
  store %"compiler/source:Span" %t79, ptr %l37
  br label %bb23
bb23:
  %t80 = load %"compiler/source:Span", ptr %l37
  store %"compiler/source:Span" %t80, ptr %l4
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/parse:Parser", ptr %t81, i32 0, i32 38
  %t84 = load i64, ptr %l3, !tbaa !24
  %t87 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %t83, i64 %t84)
  store { i64, ptr } %t87, ptr %l41
  br label %bb24
bb24:
  %t88 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t89 = load %"compiler/source:Span", ptr %l4
  %t91 = load i64, ptr %l2, !tbaa !24
  %t95 = call %"compiler/ast:TopBranch" @compiler_2fast_3aTopBranch_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t89, { i64, ptr } %t88, i64 %t91)
  store %"compiler/ast:TopBranch" %t95, ptr %l45
  br label %bb25
bb25:
  %t96 = load %"compiler/ast:TopBranch", ptr %l45
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"compiler/ast:TopBranch" %t96, ptr %t97
  %t99 = insertvalue { i32, ptr } zeroinitializer, ptr %t97, 1
  store { i32, ptr } %t99, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etryStmt(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %lp5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca ptr
  %lp11 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %lp15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca %"compiler/source:Span"
  %l23 = alloca i32
  %l37 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca i32
  %l47 = alloca %"compiler/source:Span"
  %l55 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l60 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca i32
  %l68 = alloca %"compiler/source:Span"
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca i32
  %l80 = alloca %"compiler/source:Span"
  %l82 = alloca i32
  %l93 = alloca ptr
  %l95 = alloca ptr
  %l96 = alloca i32
  %l101 = alloca i32
  %l103 = alloca i1
  %l105 = alloca i32
  %l106 = alloca ptr
  %l108 = alloca ptr
  %l109 = alloca i32
  %l114 = alloca %"compiler/source:Span"
  %l118 = alloca %"compiler/source:Span"
  %l123 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i32
  %l132 = alloca %"compiler/source:Span"
  %l134 = alloca i32
  %l145 = alloca ptr
  %l146 = alloca i1
  %l153 = alloca i1
  %l157 = alloca %"compiler/source:Span"
  %l160 = alloca { i64, ptr }
  %l162 = alloca { i64, ptr }
  %l163 = alloca i32
  %l169 = alloca %"compiler/source:Span"
  %l171 = alloca i32
  %l182 = alloca ptr
  %l185 = alloca ptr
  %l186 = alloca i32
  %l190 = alloca ptr
  %l193 = alloca ptr
  %l194 = alloca i32
  %l200 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l203 = alloca i32
  %l210 = alloca i1
  %l220 = alloca %"compiler/source:Span"
  %l227 = alloca %"compiler/source:Span"
  %l229 = alloca i32
  %rv = alloca { i32, ptr }
  %t67 = alloca { i64, [4 x i64] }, align 8
  %t124 = alloca { i64, [4 x i64] }, align 8
  %t190 = alloca { i64, [4 x i64] }, align 8
  %t285 = alloca { i64, [4 x i64] }, align 8
  %t355 = alloca { i64, [4 x i64] }, align 8
  %t404 = alloca { i64, [4 x i64] }, align 8
  %t470 = alloca { i64, [4 x i64] }, align 8
  %t602 = alloca { i64, [4 x i64] }, align 8
  %t644 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l23
  br label %bb1
bb1:
  %t4 = load i32, ptr %l23, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 21
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = add i64 %t8, 2
  %t11 = load i64, ptr @G_2ecompiler_2fparse_2eMaxNesting, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/parse:Parser", ptr %t17, i32 0, i32 6
  %t20 = load i64, ptr %t19, !tbaa !24
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2etooDeepAt(ptr %v0, ptr %t16, i64 %t20)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb5
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 23
  %t26 = load i64, ptr %t25, !tbaa !24
  store i64 %t26, ptr %l2, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/parse:Parser", ptr %t28, i32 0, i32 23
  store i64 -1, ptr %t30, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t31, i32 14)
  store i1 %t34, ptr %l37
  br label %bb6
bb6:
  %t35 = load i1, ptr %l37, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinRest(ptr %v0, ptr %v1, ptr %t36, i1 true)
  %t39 = extractvalue { i32, ptr } %t38, 1
  %t40 = extractvalue { i32, ptr } %t38, 0
  store i32 %t40, ptr %l41
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb10, label %ok.42, !prof !99
ok.42:
  store ptr %t39, ptr %l40
  br label %bb9
bb8:
  br label %bb13
bb9:
  %t43 = load ptr, ptr %l40, !tbaa !29
  store ptr %t43, ptr %l38, !tbaa !29
  br label %bb11
bb10:
  %t44 = load i32, ptr %l41, !tbaa !23
  %t45 = lshr i32 %t44, 16
  %t46 = and i32 %t44, 65535
  %t47 = icmp eq i32 %t45, 1
  %t48 = select i1 %t47, i32 1, i32 0
  %t49 = icmp eq i32 %t44, 0
  %t50 = shl i32 %t48, 16
  %t51 = or i32 %t50, %t46
  %t52 = select i1 %t49, i32 0, i32 %t51
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i64, ptr %l2, !tbaa !24
  %t57 = getelementptr %"compiler/parse:Parser", ptr %t53, i32 0, i32 23
  store i64 %t54, ptr %t57, !tbaa !24
  %t59 = insertvalue { i32, ptr } zeroinitializer, i32 %t52, 0
  store { i32, ptr } %t59, ptr %rv
  br label %ret
bb11:
  %t60 = load ptr, ptr %l38, !tbaa !29
  store ptr %t60, ptr %l3, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l1, !tbaa !23
  %t65 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t61, i32 %t62)
  store %"compiler/source:Span" %t65, ptr %l47
  br label %bb12
bb12:
  %t66 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 0
  store i64 18, ptr %t68
  %t69 = load %"compiler/source:Span", ptr %l47
  %t70 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t69, 0
  %t72 = insertvalue { %"compiler/source:Span", ptr } %t70, ptr %t66, 1
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t67, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t72, ptr %t73
  %t74 = load { i64, [4 x i64] }, ptr %t67
  %t76 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t74, ptr %t76
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i64, ptr %l2, !tbaa !24
  %t81 = getelementptr %"compiler/parse:Parser", ptr %t77, i32 0, i32 23
  store i64 %t78, ptr %t81, !tbaa !24
  %t83 = insertvalue { i32, ptr } zeroinitializer, ptr %t76, 1
  store { i32, ptr } %t83, ptr %rv
  br label %ret
bb13:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t87 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t84, i32 92)
  store i1 %t87, ptr %l55
  br label %bb14
bb14:
  %t88 = load i1, ptr %l55, !tbaa !21
  br i1 %t88, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb18
bb16:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t92 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t89, i32 93)
  store i1 %t92, ptr %l59
  br label %bb17
bb17:
  %t93 = load i1, ptr %l59, !tbaa !21
  store i1 %t93, ptr %l56, !tbaa !21
  br label %bb18
bb18:
  %t94 = load i1, ptr %l56, !tbaa !21
  br i1 %t94, label %bb19, label %bb20
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t95)
  %t98 = extractvalue { i32, ptr } %t97, 1
  %t99 = extractvalue { i32, ptr } %t97, 0
  store i32 %t99, ptr %l63
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb22, label %ok.101, !prof !99
ok.101:
  store ptr %t98, ptr %l62
  br label %bb21
bb20:
  br label %bb32
bb21:
  %t102 = load ptr, ptr %l62, !tbaa !29
  store ptr %t102, ptr %l60, !tbaa !29
  br label %bb23
bb22:
  %t103 = load i32, ptr %l63, !tbaa !23
  %t104 = lshr i32 %t103, 16
  %t105 = and i32 %t103, 65535
  %t106 = icmp eq i32 %t104, 1
  %t107 = select i1 %t106, i32 1, i32 0
  %t108 = icmp eq i32 %t103, 0
  %t109 = shl i32 %t107, 16
  %t110 = or i32 %t109, %t105
  %t111 = select i1 %t108, i32 0, i32 %t110
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l2, !tbaa !24
  %t116 = getelementptr %"compiler/parse:Parser", ptr %t112, i32 0, i32 23
  store i64 %t113, ptr %t116, !tbaa !24
  %t118 = insertvalue { i32, ptr } zeroinitializer, i32 %t111, 0
  store { i32, ptr } %t118, ptr %rv
  br label %ret
bb23:
  %t119 = load ptr, ptr %l60, !tbaa !29
  store ptr %t119, ptr %l4, !tbaa !29
  %t120 = load ptr, ptr %l4, !tbaa !29
  %t122 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t120)
  store %"compiler/source:Span" %t122, ptr %l68
  br label %bb24
bb24:
  %t123 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t124
  %t125 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 0
  store i64 0, ptr %t125
  %t126 = load %"compiler/source:Span", ptr %l68
  %t127 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t126, 0
  %t129 = insertvalue { %"compiler/source:Span", ptr } %t127, ptr %t123, 1
  %t130 = getelementptr { i64, [4 x i64] }, ptr %t124, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t129, ptr %t130
  %t131 = load { i64, [4 x i64] }, ptr %t124
  %t132 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t132, ptr %lp5
  %t134 = load ptr, ptr %lp5
  store { i64, [4 x i64] } %t131, ptr %t134
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t135, i1 false)
  %t138 = extractvalue { i32, { i64, ptr } } %t137, 1
  %t139 = extractvalue { i32, { i64, ptr } } %t137, 0
  store i32 %t139, ptr %l74
  %t140 = icmp ne i32 %t139, 0
  br i1 %t140, label %bb26, label %ok.141, !prof !99
ok.141:
  store { i64, ptr } %t138, ptr %l73
  br label %bb25
bb25:
  %t142 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t142, ptr %l71, !tbaa !27
  br label %bb27
bb26:
  %t143 = load i32, ptr %l74, !tbaa !23
  %t144 = lshr i32 %t143, 16
  %t145 = and i32 %t143, 65535
  %t146 = icmp eq i32 %t144, 1
  %t147 = select i1 %t146, i32 1, i32 0
  %t148 = icmp eq i32 %t143, 0
  %t149 = shl i32 %t147, 16
  %t150 = or i32 %t149, %t145
  %t151 = select i1 %t148, i32 0, i32 %t150
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i64, ptr %l2, !tbaa !24
  %t156 = getelementptr %"compiler/parse:Parser", ptr %t152, i32 0, i32 23
  store i64 %t153, ptr %t156, !tbaa !24
  %t158 = insertvalue { i32, ptr } zeroinitializer, i32 %t151, 0
  store { i32, ptr } %t158, ptr %rv
  br label %ret
bb27:
  %t159 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t159, ptr %l6, !tbaa !27
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i32, ptr %l1, !tbaa !23
  %t164 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t160, i32 %t161)
  store %"compiler/source:Span" %t164, ptr %l80
  br label %bb28
bb28:
  %t165 = load %"compiler/source:Span", ptr %l80
  store %"compiler/source:Span" %t165, ptr %l7
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t166)
  store i32 %t168, ptr %l82
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb30, label %ok.170, !prof !99
ok.170:
  br label %bb29
bb29:
  br label %bb31
bb30:
  %t171 = load i32, ptr %l82, !tbaa !23
  %t172 = lshr i32 %t171, 16
  %t173 = and i32 %t171, 65535
  %t174 = icmp eq i32 %t172, 1
  %t175 = select i1 %t174, i32 1, i32 0
  %t176 = icmp eq i32 %t171, 0
  %t177 = shl i32 %t175, 16
  %t178 = or i32 %t177, %t173
  %t179 = select i1 %t176, i32 0, i32 %t178
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l2, !tbaa !24
  %t184 = getelementptr %"compiler/parse:Parser", ptr %t180, i32 0, i32 23
  store i64 %t181, ptr %t184, !tbaa !24
  %t186 = insertvalue { i32, ptr } zeroinitializer, i32 %t179, 0
  store { i32, ptr } %t186, ptr %rv
  br label %ret
bb31:
  %t187 = load %"compiler/source:Span", ptr %l7
  %t188 = load ptr, ptr %lp5
  %t189 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t190
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t190, i32 0, i32 0
  store i64 4, ptr %t191
  %t193 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t187, 0
  %t195 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t193, ptr %t188, 1
  %t197 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t195, { i64, ptr } %t189, 2
  %t198 = getelementptr { i64, [4 x i64] }, ptr %t190, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t197, ptr %t198
  %t199 = load { i64, [4 x i64] }, ptr %t190
  %t201 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t199, ptr %t201
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load i64, ptr %l2, !tbaa !24
  %t206 = getelementptr %"compiler/parse:Parser", ptr %t202, i32 0, i32 23
  store i64 %t203, ptr %t206, !tbaa !24
  %t208 = insertvalue { i32, ptr } zeroinitializer, ptr %t201, 1
  store { i32, ptr } %t208, ptr %rv
  br label %ret
bb32:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %t209)
  %t212 = extractvalue { i32, ptr } %t211, 1
  %t213 = extractvalue { i32, ptr } %t211, 0
  store i32 %t213, ptr %l96
  %t214 = icmp ne i32 %t213, 0
  br i1 %t214, label %bb34, label %ok.215, !prof !99
ok.215:
  store ptr %t212, ptr %l95
  br label %bb33
bb33:
  %t216 = load ptr, ptr %l95, !tbaa !29
  store ptr %t216, ptr %l93, !tbaa !29
  br label %bb35
bb34:
  %t217 = load i32, ptr %l96, !tbaa !23
  %t218 = lshr i32 %t217, 16
  %t219 = and i32 %t217, 65535
  %t220 = icmp eq i32 %t218, 1
  %t221 = select i1 %t220, i32 1, i32 0
  %t222 = icmp eq i32 %t217, 0
  %t223 = shl i32 %t221, 16
  %t224 = or i32 %t223, %t219
  %t225 = select i1 %t222, i32 0, i32 %t224
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t227 = load i64, ptr %l2, !tbaa !24
  %t230 = getelementptr %"compiler/parse:Parser", ptr %t226, i32 0, i32 23
  store i64 %t227, ptr %t230, !tbaa !24
  %t232 = insertvalue { i32, ptr } zeroinitializer, i32 %t225, 0
  store { i32, ptr } %t232, ptr %rv
  br label %ret
bb35:
  %t233 = load ptr, ptr %l93, !tbaa !29
  store ptr %t233, ptr %l8, !tbaa !29
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t236 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t234)
  store i32 %t236, ptr %l101
  br label %bb36
bb36:
  %t237 = load i32, ptr %l101, !range !{i32 0, i32 114}
  store i32 %t237, ptr %l9
  %t238 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t240 = call i1 @compiler_2fparse_2eisAssignOp(i32 %t238)
  store i1 %t240, ptr %l103
  br label %bb37
bb37:
  %t241 = load i1, ptr %l103, !tbaa !21
  br i1 %t241, label %bb38, label %bb39
bb38:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t242)
  store i32 %t244, ptr %l105
  br label %bb40
bb39:
  br label %bb53
bb40:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t245)
  %t248 = extractvalue { i32, ptr } %t247, 1
  %t249 = extractvalue { i32, ptr } %t247, 0
  store i32 %t249, ptr %l109
  %t250 = icmp ne i32 %t249, 0
  br i1 %t250, label %bb42, label %ok.251, !prof !99
ok.251:
  store ptr %t248, ptr %l108
  br label %bb41
bb41:
  %t252 = load ptr, ptr %l108, !tbaa !29
  store ptr %t252, ptr %l106, !tbaa !29
  br label %bb43
bb42:
  %t253 = load i32, ptr %l109, !tbaa !23
  %t254 = lshr i32 %t253, 16
  %t255 = and i32 %t253, 65535
  %t256 = icmp eq i32 %t254, 1
  %t257 = select i1 %t256, i32 1, i32 0
  %t258 = icmp eq i32 %t253, 0
  %t259 = shl i32 %t257, 16
  %t260 = or i32 %t259, %t255
  %t261 = select i1 %t258, i32 0, i32 %t260
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t263 = load i64, ptr %l2, !tbaa !24
  %t266 = getelementptr %"compiler/parse:Parser", ptr %t262, i32 0, i32 23
  store i64 %t263, ptr %t266, !tbaa !24
  %t268 = insertvalue { i32, ptr } zeroinitializer, i32 %t261, 0
  store { i32, ptr } %t268, ptr %rv
  br label %ret
bb43:
  %t269 = load ptr, ptr %l106, !tbaa !29
  store ptr %t269, ptr %l10, !tbaa !29
  %t270 = load ptr, ptr %l8, !tbaa !29
  %t272 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t270)
  store %"compiler/source:Span" %t272, ptr %l114
  br label %bb44
bb44:
  %t273 = getelementptr %"compiler/source:Span", ptr %l114, i32 0, i32 0
  %t274 = load i32, ptr %t273, !tbaa !23
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/parse:Parser", ptr %t275, i32 0, i32 10
  %t278 = load i32, ptr %t277, !tbaa !23
  %t281 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 %t274, i32 %t278)
  store %"compiler/source:Span" %t281, ptr %l118
  br label %bb45
bb45:
  %t282 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t283 = load ptr, ptr %l8, !tbaa !29
  %t284 = load ptr, ptr %l10, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [4 x i64] }, ptr %t285, i32 0, i32 0
  store i64 3, ptr %t286
  %t287 = load %"compiler/source:Span", ptr %l118
  %t288 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t287, 0
  %t290 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t288, i32 %t282, 1
  %t292 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t290, ptr %t283, 2
  %t294 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t292, ptr %t284, 3
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t285, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t294, ptr %t295
  %t296 = load { i64, [4 x i64] }, ptr %t285
  %t297 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t297, ptr %lp11
  %t299 = load ptr, ptr %lp11
  store { i64, [4 x i64] } %t296, ptr %t299
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t300, i1 false)
  %t303 = extractvalue { i32, { i64, ptr } } %t302, 1
  %t304 = extractvalue { i32, { i64, ptr } } %t302, 0
  store i32 %t304, ptr %l126
  %t305 = icmp ne i32 %t304, 0
  br i1 %t305, label %bb47, label %ok.306, !prof !99
ok.306:
  store { i64, ptr } %t303, ptr %l125
  br label %bb46
bb46:
  %t307 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t307, ptr %l123, !tbaa !27
  br label %bb48
bb47:
  %t308 = load i32, ptr %l126, !tbaa !23
  %t309 = lshr i32 %t308, 16
  %t310 = and i32 %t308, 65535
  %t311 = icmp eq i32 %t309, 1
  %t312 = select i1 %t311, i32 1, i32 0
  %t313 = icmp eq i32 %t308, 0
  %t314 = shl i32 %t312, 16
  %t315 = or i32 %t314, %t310
  %t316 = select i1 %t313, i32 0, i32 %t315
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i64, ptr %l2, !tbaa !24
  %t321 = getelementptr %"compiler/parse:Parser", ptr %t317, i32 0, i32 23
  store i64 %t318, ptr %t321, !tbaa !24
  %t323 = insertvalue { i32, ptr } zeroinitializer, i32 %t316, 0
  store { i32, ptr } %t323, ptr %rv
  br label %ret
bb48:
  %t324 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t324, ptr %l12, !tbaa !27
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load i32, ptr %l1, !tbaa !23
  %t329 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t325, i32 %t326)
  store %"compiler/source:Span" %t329, ptr %l132
  br label %bb49
bb49:
  %t330 = load %"compiler/source:Span", ptr %l132
  store %"compiler/source:Span" %t330, ptr %l13
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t331)
  store i32 %t333, ptr %l134
  %t334 = icmp ne i32 %t333, 0
  br i1 %t334, label %bb51, label %ok.335, !prof !99
ok.335:
  br label %bb50
bb50:
  br label %bb52
bb51:
  %t336 = load i32, ptr %l134, !tbaa !23
  %t337 = lshr i32 %t336, 16
  %t338 = and i32 %t336, 65535
  %t339 = icmp eq i32 %t337, 1
  %t340 = select i1 %t339, i32 1, i32 0
  %t341 = icmp eq i32 %t336, 0
  %t342 = shl i32 %t340, 16
  %t343 = or i32 %t342, %t338
  %t344 = select i1 %t341, i32 0, i32 %t343
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load i64, ptr %l2, !tbaa !24
  %t349 = getelementptr %"compiler/parse:Parser", ptr %t345, i32 0, i32 23
  store i64 %t346, ptr %t349, !tbaa !24
  %t351 = insertvalue { i32, ptr } zeroinitializer, i32 %t344, 0
  store { i32, ptr } %t351, ptr %rv
  br label %ret
bb52:
  %t352 = load %"compiler/source:Span", ptr %l13
  %t353 = load ptr, ptr %lp11
  %t354 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t355
  %t356 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 0
  store i64 4, ptr %t356
  %t358 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t352, 0
  %t360 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t358, ptr %t353, 1
  %t362 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t360, { i64, ptr } %t354, 2
  %t363 = getelementptr { i64, [4 x i64] }, ptr %t355, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t362, ptr %t363
  %t364 = load { i64, [4 x i64] }, ptr %t355
  %t366 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t364, ptr %t366
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load i64, ptr %l2, !tbaa !24
  %t371 = getelementptr %"compiler/parse:Parser", ptr %t367, i32 0, i32 23
  store i64 %t368, ptr %t371, !tbaa !24
  %t373 = insertvalue { i32, ptr } zeroinitializer, ptr %t366, 1
  store { i32, ptr } %t373, ptr %rv
  br label %ret
bb53:
  %t374 = load ptr, ptr %l8, !tbaa !29
  store ptr %t374, ptr %l145, !tbaa !29
  store i1 false, ptr %l146, !tbaa !21
  %t375 = load ptr, ptr %l145, !tbaa !29
  %t376 = icmp ne ptr %t375, null
  br i1 %t376, label %bb54, label %bb55
bb54:
  %t378 = load ptr, ptr %l145, !tbaa !29
  %t379 = load i64, ptr %t378, !range !{i64 0, i64 30}
  %t381 = icmp eq i64 %t379, 4
  store i1 %t381, ptr %l146, !tbaa !21
  br label %bb55
bb55:
  %t382 = load i1, ptr %l146, !tbaa !21
  br i1 %t382, label %bb56, label %bb57
bb56:
  %t383 = load ptr, ptr %l8, !tbaa !29
  %t385 = getelementptr { i64, [4 x i64] }, ptr %t383, i32 0, i32 1
  %t386 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t385, i32 0, i32 1
  %t387 = load i32, ptr %t386, !range !{i32 0, i32 114}
  store i32 %t387, ptr %l14
  br label %bb58
bb57:
  br label %bb73
bb58:
  %t389 = load i32, ptr %l14, !range !{i32 0, i32 114}
  %t391 = trunc i64 92 to i32
  %t392 = icmp eq i32 %t389, %t391
  br i1 %t392, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb61
bb60:
  %t394 = load i32, ptr %l14, !range !{i32 0, i32 114}
  %t396 = trunc i64 93 to i32
  %t397 = icmp eq i32 %t394, %t396
  store i1 %t397, ptr %l153, !tbaa !21
  br label %bb61
bb61:
  %t399 = load i1, ptr %l153, !tbaa !21
  br i1 %t399, label %bb62, label %bb63
bb62:
  %t400 = load ptr, ptr %l8, !tbaa !29
  %t402 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t400)
  store %"compiler/source:Span" %t402, ptr %l157
  br label %bb64
bb63:
  br label %bb72
bb64:
  %t403 = load ptr, ptr %l8, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t404
  %t405 = getelementptr { i64, [4 x i64] }, ptr %t404, i32 0, i32 0
  store i64 0, ptr %t405
  %t406 = load %"compiler/source:Span", ptr %l157
  %t407 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t406, 0
  %t409 = insertvalue { %"compiler/source:Span", ptr } %t407, ptr %t403, 1
  %t410 = getelementptr { i64, [4 x i64] }, ptr %t404, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t409, ptr %t410
  %t411 = load { i64, [4 x i64] }, ptr %t404
  %t412 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t412, ptr %lp15
  %t414 = load ptr, ptr %lp15
  store { i64, [4 x i64] } %t411, ptr %t414
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t415, i1 false)
  %t418 = extractvalue { i32, { i64, ptr } } %t417, 1
  %t419 = extractvalue { i32, { i64, ptr } } %t417, 0
  store i32 %t419, ptr %l163
  %t420 = icmp ne i32 %t419, 0
  br i1 %t420, label %bb66, label %ok.421, !prof !99
ok.421:
  store { i64, ptr } %t418, ptr %l162
  br label %bb65
bb65:
  %t422 = load { i64, ptr }, ptr %l162, !tbaa !27
  store { i64, ptr } %t422, ptr %l160, !tbaa !27
  br label %bb67
bb66:
  %t423 = load i32, ptr %l163, !tbaa !23
  %t424 = lshr i32 %t423, 16
  %t425 = and i32 %t423, 65535
  %t426 = icmp eq i32 %t424, 1
  %t427 = select i1 %t426, i32 1, i32 0
  %t428 = icmp eq i32 %t423, 0
  %t429 = shl i32 %t427, 16
  %t430 = or i32 %t429, %t425
  %t431 = select i1 %t428, i32 0, i32 %t430
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t433 = load i64, ptr %l2, !tbaa !24
  %t436 = getelementptr %"compiler/parse:Parser", ptr %t432, i32 0, i32 23
  store i64 %t433, ptr %t436, !tbaa !24
  %t438 = insertvalue { i32, ptr } zeroinitializer, i32 %t431, 0
  store { i32, ptr } %t438, ptr %rv
  br label %ret
bb67:
  %t439 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t439, ptr %l16, !tbaa !27
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load i32, ptr %l1, !tbaa !23
  %t444 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t440, i32 %t441)
  store %"compiler/source:Span" %t444, ptr %l169
  br label %bb68
bb68:
  %t445 = load %"compiler/source:Span", ptr %l169
  store %"compiler/source:Span" %t445, ptr %l17
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t448 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t446)
  store i32 %t448, ptr %l171
  %t449 = icmp ne i32 %t448, 0
  br i1 %t449, label %bb70, label %ok.450, !prof !99
ok.450:
  br label %bb69
bb69:
  br label %bb71
bb70:
  %t451 = load i32, ptr %l171, !tbaa !23
  %t452 = lshr i32 %t451, 16
  %t453 = and i32 %t451, 65535
  %t454 = icmp eq i32 %t452, 1
  %t455 = select i1 %t454, i32 1, i32 0
  %t456 = icmp eq i32 %t451, 0
  %t457 = shl i32 %t455, 16
  %t458 = or i32 %t457, %t453
  %t459 = select i1 %t456, i32 0, i32 %t458
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load i64, ptr %l2, !tbaa !24
  %t464 = getelementptr %"compiler/parse:Parser", ptr %t460, i32 0, i32 23
  store i64 %t461, ptr %t464, !tbaa !24
  %t466 = insertvalue { i32, ptr } zeroinitializer, i32 %t459, 0
  store { i32, ptr } %t466, ptr %rv
  br label %ret
bb71:
  %t467 = load %"compiler/source:Span", ptr %l17
  %t468 = load ptr, ptr %lp15
  %t469 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t470
  %t471 = getelementptr { i64, [4 x i64] }, ptr %t470, i32 0, i32 0
  store i64 4, ptr %t471
  %t473 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t467, 0
  %t475 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t473, ptr %t468, 1
  %t477 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t475, { i64, ptr } %t469, 2
  %t478 = getelementptr { i64, [4 x i64] }, ptr %t470, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t477, ptr %t478
  %t479 = load { i64, [4 x i64] }, ptr %t470
  %t481 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t479, ptr %t481
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load i64, ptr %l2, !tbaa !24
  %t486 = getelementptr %"compiler/parse:Parser", ptr %t482, i32 0, i32 23
  store i64 %t483, ptr %t486, !tbaa !24
  %t488 = insertvalue { i32, ptr } zeroinitializer, ptr %t481, 1
  store { i32, ptr } %t488, ptr %rv
  br label %ret
bb72:
  br label %bb78
bb73:
  br i1 true, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb78
bb77:
  call void @__olang_check_failed(ptr @olang_loc_e98eee410cc159b2_377f58609bf35bd6)
  unreachable
bb78:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load ptr, ptr %l8, !tbaa !29
  %t493 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinaryFrom(ptr %v0, ptr %v1, ptr %v1, ptr %t489, ptr %t490, i64 1)
  %t494 = extractvalue { i32, ptr } %t493, 1
  %t495 = extractvalue { i32, ptr } %t493, 0
  store i32 %t495, ptr %l186
  %t496 = icmp ne i32 %t495, 0
  br i1 %t496, label %bb80, label %ok.497, !prof !99
ok.497:
  store ptr %t494, ptr %l185
  br label %bb79
bb79:
  %t498 = load ptr, ptr %l185, !tbaa !29
  store ptr %t498, ptr %l182, !tbaa !29
  br label %bb81
bb80:
  %t499 = load i32, ptr %l186, !tbaa !23
  %t500 = lshr i32 %t499, 16
  %t501 = and i32 %t499, 65535
  %t502 = icmp eq i32 %t500, 1
  %t503 = select i1 %t502, i32 1, i32 0
  %t504 = icmp eq i32 %t499, 0
  %t505 = shl i32 %t503, 16
  %t506 = or i32 %t505, %t501
  %t507 = select i1 %t504, i32 0, i32 %t506
  %t508 = load ptr, ptr %l0, !tbaa !29
  %t509 = load i64, ptr %l2, !tbaa !24
  %t512 = getelementptr %"compiler/parse:Parser", ptr %t508, i32 0, i32 23
  store i64 %t509, ptr %t512, !tbaa !24
  %t514 = insertvalue { i32, ptr } zeroinitializer, i32 %t507, 0
  store { i32, ptr } %t514, ptr %rv
  br label %ret
bb81:
  %t515 = load ptr, ptr %l182, !tbaa !29
  store ptr %t515, ptr %l8, !tbaa !29
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t517 = load ptr, ptr %l8, !tbaa !29
  %t520 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econdFrom(ptr %v0, ptr %v1, ptr %v1, ptr %t516, ptr %t517)
  %t521 = extractvalue { i32, ptr } %t520, 1
  %t522 = extractvalue { i32, ptr } %t520, 0
  store i32 %t522, ptr %l194
  %t523 = icmp ne i32 %t522, 0
  br i1 %t523, label %bb83, label %ok.524, !prof !99
ok.524:
  store ptr %t521, ptr %l193
  br label %bb82
bb82:
  %t525 = load ptr, ptr %l193, !tbaa !29
  store ptr %t525, ptr %l190, !tbaa !29
  br label %bb84
bb83:
  %t526 = load i32, ptr %l194, !tbaa !23
  %t527 = lshr i32 %t526, 16
  %t528 = and i32 %t526, 65535
  %t529 = icmp eq i32 %t527, 1
  %t530 = select i1 %t529, i32 1, i32 0
  %t531 = icmp eq i32 %t526, 0
  %t532 = shl i32 %t530, 16
  %t533 = or i32 %t532, %t528
  %t534 = select i1 %t531, i32 0, i32 %t533
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t536 = load i64, ptr %l2, !tbaa !24
  %t539 = getelementptr %"compiler/parse:Parser", ptr %t535, i32 0, i32 23
  store i64 %t536, ptr %t539, !tbaa !24
  %t541 = insertvalue { i32, ptr } zeroinitializer, i32 %t534, 0
  store { i32, ptr } %t541, ptr %rv
  br label %ret
bb84:
  %t542 = load ptr, ptr %l190, !tbaa !29
  store ptr %t542, ptr %l8, !tbaa !29
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/parse:Parser", ptr %t543, i32 0, i32 23
  %t546 = load i64, ptr %t545, !tbaa !24
  store i64 %t546, ptr %l18, !tbaa !24
  %t548 = load ptr, ptr %l0, !tbaa !29
  %t550 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t548, i1 false)
  %t551 = extractvalue { i32, { i64, ptr } } %t550, 1
  %t552 = extractvalue { i32, { i64, ptr } } %t550, 0
  store i32 %t552, ptr %l203
  %t553 = icmp ne i32 %t552, 0
  br i1 %t553, label %bb86, label %ok.554, !prof !99
ok.554:
  store { i64, ptr } %t551, ptr %l202
  br label %bb85
bb85:
  %t555 = load { i64, ptr }, ptr %l202, !tbaa !27
  store { i64, ptr } %t555, ptr %l200, !tbaa !27
  br label %bb87
bb86:
  %t556 = load i32, ptr %l203, !tbaa !23
  %t557 = lshr i32 %t556, 16
  %t558 = and i32 %t556, 65535
  %t559 = icmp eq i32 %t557, 1
  %t560 = select i1 %t559, i32 1, i32 0
  %t561 = icmp eq i32 %t556, 0
  %t562 = shl i32 %t560, 16
  %t563 = or i32 %t562, %t558
  %t564 = select i1 %t561, i32 0, i32 %t563
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t566 = load i64, ptr %l2, !tbaa !24
  %t569 = getelementptr %"compiler/parse:Parser", ptr %t565, i32 0, i32 23
  store i64 %t566, ptr %t569, !tbaa !24
  %t571 = insertvalue { i32, ptr } zeroinitializer, i32 %t564, 0
  store { i32, ptr } %t571, ptr %rv
  br label %ret
bb87:
  %t572 = load { i64, ptr }, ptr %l200, !tbaa !27
  store { i64, ptr } %t572, ptr %l19, !tbaa !27
  %t573 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t575 = extractvalue { i64, ptr } %t573, 0
  %t577 = icmp eq i64 %t575, 0
  br i1 %t577, label %bb88, label %bb89
bb88:
  %t579 = load i64, ptr %l18, !tbaa !24
  %t581 = icmp sge i64 %t579, 0
  store i1 %t581, ptr %l210, !tbaa !21
  br label %bb90
bb89:
  store i1 false, ptr %l210, !tbaa !21
  br label %bb90
bb90:
  %t583 = load i1, ptr %l210, !tbaa !21
  br i1 %t583, label %bb91, label %bb92
bb91:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load i64, ptr %l18, !tbaa !24
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2etooDeepAt(ptr %v0, ptr %t584, i64 %t585)
  br label %bb93
bb92:
  br label %bb94
bb93:
  %t588 = load ptr, ptr %l0, !tbaa !29
  %t589 = load i64, ptr %l2, !tbaa !24
  %t592 = getelementptr %"compiler/parse:Parser", ptr %t588, i32 0, i32 23
  store i64 %t589, ptr %t592, !tbaa !24
  %t594 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t594, ptr %rv
  br label %ret
bb94:
  %t595 = load ptr, ptr %l0, !tbaa !29
  %t596 = load i32, ptr %l1, !tbaa !23
  %t599 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t595, i32 %t596)
  store %"compiler/source:Span" %t599, ptr %l220
  br label %bb95
bb95:
  %t600 = load ptr, ptr %l8, !tbaa !29
  %t601 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t602
  %t603 = getelementptr { i64, [4 x i64] }, ptr %t602, i32 0, i32 0
  store i64 21, ptr %t603
  %t604 = load %"compiler/source:Span", ptr %l220
  %t605 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t604, 0
  %t607 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t605, ptr %t600, 1
  %t609 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t607, { i64, ptr } %t601, 2
  %t610 = getelementptr { i64, [4 x i64] }, ptr %t602, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t609, ptr %t610
  %t611 = load { i64, [4 x i64] }, ptr %t602
  %t613 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t611, ptr %t613
  store ptr %t613, ptr %l20, !tbaa !29
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t616 = load i32, ptr %l1, !tbaa !23
  %t619 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t615, i32 %t616)
  store %"compiler/source:Span" %t619, ptr %l227
  br label %bb96
bb96:
  %t620 = load %"compiler/source:Span", ptr %l227
  store %"compiler/source:Span" %t620, ptr %l21
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t621)
  store i32 %t623, ptr %l229
  %t624 = icmp ne i32 %t623, 0
  br i1 %t624, label %bb98, label %ok.625, !prof !99
ok.625:
  br label %bb97
bb97:
  br label %bb99
bb98:
  %t626 = load i32, ptr %l229, !tbaa !23
  %t627 = lshr i32 %t626, 16
  %t628 = and i32 %t626, 65535
  %t629 = icmp eq i32 %t627, 1
  %t630 = select i1 %t629, i32 1, i32 0
  %t631 = icmp eq i32 %t626, 0
  %t632 = shl i32 %t630, 16
  %t633 = or i32 %t632, %t628
  %t634 = select i1 %t631, i32 0, i32 %t633
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load i64, ptr %l2, !tbaa !24
  %t639 = getelementptr %"compiler/parse:Parser", ptr %t635, i32 0, i32 23
  store i64 %t636, ptr %t639, !tbaa !24
  %t641 = insertvalue { i32, ptr } zeroinitializer, i32 %t634, 0
  store { i32, ptr } %t641, ptr %rv
  br label %ret
bb99:
  %t642 = load %"compiler/source:Span", ptr %l21
  %t643 = load ptr, ptr %l20, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t644
  %t645 = getelementptr { i64, [4 x i64] }, ptr %t644, i32 0, i32 0
  store i64 0, ptr %t645
  %t647 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t642, 0
  %t649 = insertvalue { %"compiler/source:Span", ptr } %t647, ptr %t643, 1
  %t650 = getelementptr { i64, [4 x i64] }, ptr %t644, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t649, ptr %t650
  %t651 = load { i64, [4 x i64] }, ptr %t644
  %t653 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t651, ptr %t653
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t655 = load i64, ptr %l2, !tbaa !24
  %t658 = getelementptr %"compiler/parse:Parser", ptr %t654, i32 0, i32 23
  store i64 %t655, ptr %t658, !tbaa !24
  %t660 = insertvalue { i32, ptr } zeroinitializer, ptr %t653, 1
  store { i32, ptr } %t660, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i64
  %l6 = alloca i32
  %l19 = alloca i64
  %l22 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i32
  %l33 = alloca ptr
  %l34 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i32
  %l43 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  %l48 = alloca i32
  %l58 = alloca i32
  %l65 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eopenAngle(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l6
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t6 = load i32, ptr %l6, !tbaa !23
  %t7 = lshr i32 %t6, 16
  %t8 = and i32 %t6, 65535
  %t9 = icmp eq i32 %t7, 1
  %t10 = select i1 %t9, i32 1, i32 0
  %t11 = icmp eq i32 %t6, 0
  %t12 = shl i32 %t10, 16
  %t13 = or i32 %t12, %t8
  %t14 = select i1 %t11, i32 0, i32 %t13
  %t16 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t14, 0
  store { i32, { i64, ptr } } %t16, ptr %rv
  br label %ret
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/parse:Parser", ptr %t17, i32 0, i32 11
  %t20 = load i1, ptr %t19, !tbaa !21
  store i1 %t20, ptr %l1, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 11
  store i1 true, ptr %t24, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 19
  %t28 = load i1, ptr %t27, !tbaa !21
  store i1 %t28, ptr %l2, !tbaa !21
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 20
  %t33 = load i1, ptr %t32, !tbaa !21
  store i1 %t33, ptr %l3, !tbaa !21
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/parse:Parser", ptr %t35, i32 0, i32 19
  store i1 false, ptr %t37, !tbaa !21
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/parse:Parser", ptr %t38, i32 0, i32 20
  store i1 true, ptr %t40, !tbaa !21
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 33
  %t45 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %t43)
  store i64 %t45, ptr %l19
  br label %bb4
bb4:
  %t46 = load i64, ptr %l19, !tbaa !24
  store i64 %t46, ptr %l4, !tbaa !24
  br label %bb5
bb5:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t50 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t47, i32 77)
  store i1 %t50, ptr %l22
  br label %bb6
bb6:
  %t51 = load i1, ptr %l22, !tbaa !21
  br i1 %t51, label %bb7, label %bb8
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/parse:Parser", ptr %t52, i32 0, i32 33
  store ptr %t54, ptr %l24, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrsArg(ptr %v0, ptr %v0, ptr %t55)
  %t58 = extractvalue { i32, ptr } %t57, 1
  %t59 = extractvalue { i32, ptr } %t57, 0
  store i32 %t59, ptr %l28
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb10, label %ok.61, !prof !99
ok.61:
  store ptr %t58, ptr %l27
  br label %bb9
bb8:
  br label %bb13
bb9:
  %t62 = load ptr, ptr %l27, !tbaa !29
  store ptr %t62, ptr %l25, !tbaa !29
  br label %bb11
bb10:
  %t63 = load i32, ptr %l28, !tbaa !23
  %t64 = lshr i32 %t63, 16
  %t65 = and i32 %t63, 65535
  %t66 = icmp eq i32 %t64, 1
  %t67 = select i1 %t66, i32 1, i32 0
  %t68 = icmp eq i32 %t63, 0
  %t69 = shl i32 %t67, 16
  %t70 = or i32 %t69, %t65
  %t71 = select i1 %t68, i32 0, i32 %t70
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i1, ptr %l3, !tbaa !21
  %t76 = getelementptr %"compiler/parse:Parser", ptr %t72, i32 0, i32 20
  store i1 %t73, ptr %t76, !tbaa !21
  %t78 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t71, 0
  store { i32, { i64, ptr } } %t78, ptr %rv
  br label %ret
bb11:
  %t79 = load ptr, ptr %l24, !tbaa !29
  %t80 = load ptr, ptr %l25, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v0, ptr %t79, ptr %t80)
  br label %bb12
bb12:
  br label %bb29
bb13:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/parse:Parser", ptr %t81, i32 0, i32 33
  store ptr %t83, ptr %l33, !tbaa !29
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArg(ptr %v0, ptr %v0, ptr %t84)
  %t87 = extractvalue { i32, ptr } %t86, 1
  %t88 = extractvalue { i32, ptr } %t86, 0
  store i32 %t88, ptr %l37
  %t89 = icmp ne i32 %t88, 0
  br i1 %t89, label %bb15, label %ok.90, !prof !99
ok.90:
  store ptr %t87, ptr %l36
  br label %bb14
bb14:
  %t91 = load ptr, ptr %l36, !tbaa !29
  store ptr %t91, ptr %l34, !tbaa !29
  br label %bb16
bb15:
  %t92 = load i32, ptr %l37, !tbaa !23
  %t93 = lshr i32 %t92, 16
  %t94 = and i32 %t92, 65535
  %t95 = icmp eq i32 %t93, 1
  %t96 = select i1 %t95, i32 1, i32 0
  %t97 = icmp eq i32 %t92, 0
  %t98 = shl i32 %t96, 16
  %t99 = or i32 %t98, %t94
  %t100 = select i1 %t97, i32 0, i32 %t99
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load i1, ptr %l3, !tbaa !21
  %t105 = getelementptr %"compiler/parse:Parser", ptr %t101, i32 0, i32 20
  store i1 %t102, ptr %t105, !tbaa !21
  %t107 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t100, 0
  store { i32, { i64, ptr } } %t107, ptr %rv
  br label %ret
bb16:
  %t108 = load ptr, ptr %l33, !tbaa !29
  %t109 = load ptr, ptr %l34, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v0, ptr %t108, ptr %t109)
  br label %bb17
bb17:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t113 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t110, i32 77)
  store i1 %t113, ptr %l43
  br label %bb18
bb18:
  %t114 = load i1, ptr %l43, !tbaa !21
  br i1 %t114, label %bb19, label %bb20
bb19:
  br label %bb28
bb20:
  br label %bb21
bb21:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t118 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t115, i32 99)
  %t119 = extractvalue { i32, i1 } %t118, 1
  %t120 = extractvalue { i32, i1 } %t118, 0
  store i32 %t120, ptr %l48
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb23, label %ok.122, !prof !99
ok.122:
  store i1 %t119, ptr %l47
  br label %bb22
bb22:
  %t123 = load i1, ptr %l47, !tbaa !21
  store i1 %t123, ptr %l44, !tbaa !21
  br label %bb24
bb23:
  %t124 = load i32, ptr %l48, !tbaa !23
  %t125 = lshr i32 %t124, 16
  %t126 = and i32 %t124, 65535
  %t127 = icmp eq i32 %t125, 1
  %t128 = select i1 %t127, i32 1, i32 0
  %t129 = icmp eq i32 %t124, 0
  %t130 = shl i32 %t128, 16
  %t131 = or i32 %t130, %t126
  %t132 = select i1 %t129, i32 0, i32 %t131
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i1, ptr %l3, !tbaa !21
  %t137 = getelementptr %"compiler/parse:Parser", ptr %t133, i32 0, i32 20
  store i1 %t134, ptr %t137, !tbaa !21
  %t139 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t132, 0
  store { i32, { i64, ptr } } %t139, ptr %rv
  br label %ret
bb24:
  %t140 = load i1, ptr %l44, !tbaa !21
  %t141 = xor i1 %t140, true
  br i1 %t141, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb5
bb29:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i1, ptr %l2, !tbaa !21
  %t147 = getelementptr %"compiler/parse:Parser", ptr %t143, i32 0, i32 19
  store i1 %t144, ptr %t147, !tbaa !21
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i1, ptr %l1, !tbaa !21
  %t152 = getelementptr %"compiler/parse:Parser", ptr %t148, i32 0, i32 11
  store i1 %t149, ptr %t152, !tbaa !21
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecloseAngle(ptr %v0, ptr %t153)
  store i32 %t155, ptr %l58
  %t156 = icmp ne i32 %t155, 0
  br i1 %t156, label %bb31, label %ok.157, !prof !99
ok.157:
  br label %bb30
bb30:
  br label %bb32
bb31:
  %t158 = load i32, ptr %l58, !tbaa !23
  %t159 = lshr i32 %t158, 16
  %t160 = and i32 %t158, 65535
  %t161 = icmp eq i32 %t159, 1
  %t162 = select i1 %t161, i32 1, i32 0
  %t163 = icmp eq i32 %t158, 0
  %t164 = shl i32 %t162, 16
  %t165 = or i32 %t164, %t160
  %t166 = select i1 %t163, i32 0, i32 %t165
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i1, ptr %l3, !tbaa !21
  %t171 = getelementptr %"compiler/parse:Parser", ptr %t167, i32 0, i32 20
  store i1 %t168, ptr %t171, !tbaa !21
  %t173 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t166, 0
  store { i32, { i64, ptr } } %t173, ptr %rv
  br label %ret
bb32:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/parse:Parser", ptr %t174, i32 0, i32 33
  %t177 = load i64, ptr %l4, !tbaa !24
  %t180 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %t176, i64 %t177)
  store { i64, ptr } %t180, ptr %l65
  br label %bb33
bb33:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i1, ptr %l3, !tbaa !21
  %t185 = getelementptr %"compiler/parse:Parser", ptr %t181, i32 0, i32 20
  store i1 %t182, ptr %t185, !tbaa !21
  %t186 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t187 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t186, 1
  store { i32, { i64, ptr } } %t187, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l4 = alloca i64
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsShape(ptr %v0, ptr %a0, i64 %a1)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = icmp eq i64 %t6, 2
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBase(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca i32
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca ptr
  %lp7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l17 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l38 = alloca i32
  %l41 = alloca i32
  %l42 = alloca ptr
  %l44 = alloca ptr
  %l45 = alloca i32
  %l49 = alloca %"compiler/source:Span"
  %l55 = alloca %"compiler/source:Span"
  %l65 = alloca ptr
  %l66 = alloca i32
  %l68 = alloca i32
  %l71 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %l85 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca ptr
  %l95 = alloca ptr
  %l96 = alloca i32
  %l100 = alloca %"compiler/source:Span"
  %l109 = alloca i32
  %l110 = alloca ptr
  %l112 = alloca ptr
  %l113 = alloca i32
  %l117 = alloca %"compiler/source:Span"
  %l125 = alloca i64
  %l127 = alloca ptr
  %l128 = alloca i32
  %l130 = alloca i32
  %l131 = alloca i32
  %l135 = alloca i1
  %l138 = alloca i32
  %l140 = alloca ptr
  %l141 = alloca i32
  %l143 = alloca i32
  %l144 = alloca i32
  %l149 = alloca { i64, ptr }
  %l155 = alloca i1
  %l156 = alloca { i64, ptr }
  %l158 = alloca { i64, ptr }
  %l159 = alloca i32
  %l163 = alloca %"compiler/source:Span"
  %l171 = alloca ptr
  %l175 = alloca i64
  %l177 = alloca i32
  %l184 = alloca ptr
  %l186 = alloca ptr
  %l187 = alloca i32
  %l199 = alloca i1
  %l201 = alloca i1
  %l203 = alloca i1
  %l205 = alloca ptr
  %l206 = alloca i32
  %l208 = alloca i32
  %l209 = alloca %"compiler/diagmsg:Msg"
  %l211 = alloca i32
  %l214 = alloca i32
  %l215 = alloca i32
  %l219 = alloca i1
  %l221 = alloca ptr
  %l222 = alloca i32
  %l224 = alloca i32
  %l225 = alloca %"compiler/diagmsg:Msg"
  %l231 = alloca i32
  %l234 = alloca i32
  %s5 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t76 = alloca { i64, [5 x i64] }, align 8
  %t96 = alloca { i64, [5 x i64] }, align 8
  %t232 = alloca { i64, [5 x i64] }, align 8
  %t278 = alloca { i64, [5 x i64] }, align 8
  %t407 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i32, ptr %l17, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 13
  %t8 = load i1, ptr %t7, !tbaa !21
  store i1 %t8, ptr %l2, !tbaa !21
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/parse:Parser", ptr %t10, i32 0, i32 13
  store i1 false, ptr %t12, !tbaa !21
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t13)
  store i32 %t15, ptr %l22
  br label %bb2
bb2:
  %t16 = load i32, ptr %l22, !range !{i32 0, i32 114}
  store i32 %t16, ptr %l3
  %t17 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t19 = trunc i64 37 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb41
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t22)
  store i32 %t24, ptr %l26
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t25, i32 101)
  store i1 %t28, ptr %l29
  br label %bb7
bb7:
  %t29 = load i1, ptr %l29, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb11
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %t30)
  store i1 %t32, ptr %l32
  br label %bb10
bb10:
  %t33 = load i1, ptr %l32, !tbaa !21
  store i1 %t33, ptr %l30, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l30, !tbaa !21
  store i1 %t34, ptr %l4, !tbaa !21
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t35, i32 77)
  store i1 %t38, ptr %l35
  br label %bb12
bb12:
  %t39 = load i1, ptr %l35, !tbaa !21
  store i1 %t39, ptr %l5, !tbaa !21
  %t40 = load i1, ptr %l5, !tbaa !21
  br i1 %t40, label %bb13, label %bb14
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t42)
  store i32 %t44, ptr %l38
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t45 = load i1, ptr %l4, !tbaa !21
  br i1 %t45, label %bb17, label %bb18
bb17:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t47)
  store i32 %t49, ptr %l41
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %t50, i1 false, i1 true, i1 false)
  %t53 = extractvalue { i32, ptr } %t52, 1
  %t54 = extractvalue { i32, ptr } %t52, 0
  store i32 %t54, ptr %l45
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb22, label %ok.56, !prof !99
ok.56:
  store ptr %t53, ptr %l44
  br label %bb21
bb21:
  %t57 = load ptr, ptr %l44, !tbaa !29
  store ptr %t57, ptr %l42, !tbaa !29
  br label %bb23
bb22:
  %t58 = load i32, ptr %l45, !tbaa !23
  %t59 = lshr i32 %t58, 16
  %t60 = and i32 %t58, 65535
  %t61 = icmp eq i32 %t59, 1
  %t62 = select i1 %t61, i32 1, i32 0
  %t63 = icmp eq i32 %t58, 0
  %t64 = shl i32 %t62, 16
  %t65 = or i32 %t64, %t60
  %t66 = select i1 %t63, i32 0, i32 %t65
  %t68 = insertvalue { i32, ptr } zeroinitializer, i32 %t66, 0
  store { i32, ptr } %t68, ptr %rv
  br label %ret
bb23:
  %t69 = load ptr, ptr %l42, !tbaa !29
  store ptr %t69, ptr %l6, !tbaa !29
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load i32, ptr %l1, !tbaa !23
  %t74 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t70, i32 %t71)
  store %"compiler/source:Span" %t74, ptr %l49
  br label %bb24
bb24:
  %t75 = load ptr, ptr %l6, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t76
  %t77 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 0
  store i64 1, ptr %t77
  %t78 = load %"compiler/source:Span", ptr %l49
  %t79 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t78, 0
  %t81 = insertvalue { %"compiler/source:Span", ptr } %t79, ptr %t75, 1
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t81, ptr %t82
  %t83 = load { i64, [5 x i64] }, ptr %t76
  %t84 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store ptr %t84, ptr %lp7
  %t86 = load ptr, ptr %lp7
  store { i64, [5 x i64] } %t83, ptr %t86
  %t87 = load i1, ptr %l4, !tbaa !21
  br i1 %t87, label %bb25, label %bb26
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l1, !tbaa !23
  %t93 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t89, i32 %t90)
  store %"compiler/source:Span" %t93, ptr %l55
  br label %bb27
bb26:
  br label %bb28
bb27:
  %t94 = load ptr, ptr %lp7
  %t95 = load i1, ptr %l5, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t96
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t96, i32 0, i32 0
  store i64 3, ptr %t97
  %t98 = load %"compiler/source:Span", ptr %l55
  %t99 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } undef, %"compiler/source:Span" %t98, 0
  %t101 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t99, ptr %t94, 1
  %t103 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t101, i1 %t95, 2
  %t104 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t103, i1 false, 3
  %t105 = getelementptr { i64, [5 x i64] }, ptr %t96, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1, i1 } %t104, ptr %t105
  %t106 = load { i64, [5 x i64] }, ptr %t96
  %t108 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t106, ptr %t108
  %t110 = insertvalue { i32, ptr } zeroinitializer, ptr %t108, 1
  store { i32, ptr } %t110, ptr %rv
  br label %ret
bb28:
  %t111 = load i1, ptr %l2, !tbaa !21
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb29, label %bb30
bb29:
  store %olang.scope zeroinitializer, ptr %s5
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/parse:Parser", ptr %t115, i32 0, i32 48
  %t118 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t117, i32 %t118)
  br label %bb31
bb30:
  br label %bb40
bb31:
  %t121 = load ptr, ptr %l0, !tbaa !29
  store ptr %t121, ptr %l65, !tbaa !29
  %t122 = load i32, ptr %l1, !tbaa !23
  store i32 %t122, ptr %l66, !tbaa !23
  %t123 = load i32, ptr %l1, !tbaa !23
  %t125 = add i32 %t123, 2
  store i32 %t125, ptr %l68, !tbaa !23
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/parse:Parser", ptr %t126, i32 0, i32 0
  %t129 = load ptr, ptr %t128, !tbaa !29
  %t131 = getelementptr %"compiler/source:Source", ptr %t129, i32 0, i32 1
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l71, !tbaa !27
  %t133 = load i32, ptr %l1, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t137 = add i64 %t135, 2
  store i64 %t137, ptr %l74, !tbaa !24
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/parse:Parser", ptr %t138, i32 0, i32 10
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  store i64 %t143, ptr %l77, !tbaa !24
  %t144 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t144, 0
  store i64 %t145, ptr %l78, !tbaa !24
  %t146 = load i64, ptr %l74, !tbaa !24
  %t147 = icmp sge i64 %t146, 0
  br i1 %t147, label %bb32, label %bb33
bb32:
  %t149 = load i64, ptr %l74, !tbaa !24
  %t150 = load i64, ptr %l77, !tbaa !24
  %t151 = icmp sle i64 %t149, %t150
  br i1 %t151, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_8764526ae5415d75_f5a9948c86d2d3b9)
  unreachable
bb34:
  %t153 = load i64, ptr %l77, !tbaa !24
  %t154 = load i64, ptr %l78, !tbaa !24
  %t155 = icmp sle i64 %t153, %t154
  br i1 %t155, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_8764526ae5415d75_f5a9948c86d2d3b9)
  unreachable
bb36:
  %t157 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = load i64, ptr %l74, !tbaa !24
  %t160 = load i64, ptr %l77, !tbaa !24
  %t161 = getelementptr i8, ptr %t158, i64 %t159
  %t162 = sub i64 %t160, %t159
  %t163 = insertvalue { i64, ptr } undef, i64 %t162, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t161, 1
  %t166 = extractvalue { i64, ptr } %t164, 1
  %t167 = extractvalue { i64, ptr } %t164, 0
  %t168 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t167)
  call void @olang_textcopy(ptr %t168, ptr %t166, i64 %t167)
  %t169 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t170 = insertvalue { i64, ptr } %t169, ptr %t168, 1
  %t172 = extractvalue { i64, ptr } %t170, 0
  %t173 = extractvalue { i64, ptr } %t170, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  %t179 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBare(ptr %s5, ptr %s5, { i64, ptr } %t177)
  store %"compiler/diagmsg:Msg" %t179, ptr %l85
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_8764526ae5415d75_f5a9948c86d2d3b9)
  unreachable
bb38:
  %t180 = load ptr, ptr %l65, !tbaa !29
  %t181 = load i32, ptr %l66, !tbaa !23
  %t182 = load i32, ptr %l68, !tbaa !23
  %t183 = load %"compiler/diagmsg:Msg", ptr %l85
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s5, ptr %t180, i32 %t181, i32 %t182, %"compiler/diagmsg:Msg" %t183)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s5)
  br label %bb40
bb40:
  %t184 = load ptr, ptr %lp7
  %t186 = insertvalue { i32, ptr } zeroinitializer, ptr %t184, 1
  store { i32, ptr } %t186, ptr %rv
  br label %ret
bb41:
  %t187 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t189 = trunc i64 35 to i32
  %t190 = icmp eq i32 %t187, %t189
  br i1 %t190, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  %t192 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t194 = trunc i64 34 to i32
  %t195 = icmp eq i32 %t192, %t194
  br i1 %t195, label %bb44, label %bb45
bb44:
  br label %bb48
bb45:
  %t197 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t199 = trunc i64 36 to i32
  %t200 = icmp eq i32 %t197, %t199
  br i1 %t200, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb56
bb48:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBody(ptr %v0, ptr %v1, ptr %t202)
  %t205 = extractvalue { i32, ptr } %t204, 1
  %t206 = extractvalue { i32, ptr } %t204, 0
  store i32 %t206, ptr %l96
  %t207 = icmp ne i32 %t206, 0
  br i1 %t207, label %bb50, label %ok.208, !prof !99
ok.208:
  store ptr %t205, ptr %l95
  br label %bb49
bb49:
  %t209 = load ptr, ptr %l95, !tbaa !29
  store ptr %t209, ptr %l93, !tbaa !29
  br label %bb51
bb50:
  %t210 = load i32, ptr %l96, !tbaa !23
  %t211 = lshr i32 %t210, 16
  %t212 = and i32 %t210, 65535
  %t213 = icmp eq i32 %t211, 1
  %t214 = select i1 %t213, i32 1, i32 0
  %t215 = icmp eq i32 %t210, 0
  %t216 = shl i32 %t214, 16
  %t217 = or i32 %t216, %t212
  %t218 = select i1 %t215, i32 0, i32 %t217
  %t220 = insertvalue { i32, ptr } zeroinitializer, i32 %t218, 0
  store { i32, ptr } %t220, ptr %rv
  br label %ret
bb51:
  %t221 = load ptr, ptr %l93, !tbaa !29
  store ptr %t221, ptr %l8, !tbaa !29
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t223 = load i32, ptr %l1, !tbaa !23
  %t226 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t222, i32 %t223)
  store %"compiler/source:Span" %t226, ptr %l100
  br label %bb52
bb52:
  %t227 = load ptr, ptr %l8, !tbaa !29
  %t229 = icmp eq ptr %t227, null
  br i1 %t229, label %bb53, label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_ead0ed9b34ee6f0_4abfb82b89e87654)
  unreachable
bb54:
  br label %bb55
bb55:
  %t231 = load ptr, ptr %l8, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t232
  %t233 = getelementptr { i64, [5 x i64] }, ptr %t232, i32 0, i32 0
  store i64 2, ptr %t233
  %t234 = load %"compiler/source:Span", ptr %l100
  %t235 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t234, 0
  %t237 = insertvalue { %"compiler/source:Span", ptr } %t235, ptr %t231, 1
  %t238 = getelementptr { i64, [5 x i64] }, ptr %t232, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t237, ptr %t238
  %t239 = load { i64, [5 x i64] }, ptr %t232
  %t241 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t239, ptr %t241
  %t243 = insertvalue { i32, ptr } zeroinitializer, ptr %t241, 1
  store { i32, ptr } %t243, ptr %rv
  br label %ret
bb56:
  %t244 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t246 = trunc i64 52 to i32
  %t247 = icmp eq i32 %t244, %t246
  br i1 %t247, label %bb57, label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb65
bb59:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t249)
  store i32 %t251, ptr %l109
  br label %bb60
bb60:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBase(ptr %v0, ptr %v1, ptr %t252)
  %t255 = extractvalue { i32, ptr } %t254, 1
  %t256 = extractvalue { i32, ptr } %t254, 0
  store i32 %t256, ptr %l113
  %t257 = icmp ne i32 %t256, 0
  br i1 %t257, label %bb62, label %ok.258, !prof !99
ok.258:
  store ptr %t255, ptr %l112
  br label %bb61
bb61:
  %t259 = load ptr, ptr %l112, !tbaa !29
  store ptr %t259, ptr %l110, !tbaa !29
  br label %bb63
bb62:
  %t260 = load i32, ptr %l113, !tbaa !23
  %t261 = lshr i32 %t260, 16
  %t262 = and i32 %t260, 65535
  %t263 = icmp eq i32 %t261, 1
  %t264 = select i1 %t263, i32 1, i32 0
  %t265 = icmp eq i32 %t260, 0
  %t266 = shl i32 %t264, 16
  %t267 = or i32 %t266, %t262
  %t268 = select i1 %t265, i32 0, i32 %t267
  %t270 = insertvalue { i32, ptr } zeroinitializer, i32 %t268, 0
  store { i32, ptr } %t270, ptr %rv
  br label %ret
bb63:
  %t271 = load ptr, ptr %l110, !tbaa !29
  store ptr %t271, ptr %l9, !tbaa !29
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t273 = load i32, ptr %l1, !tbaa !23
  %t276 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t272, i32 %t273)
  store %"compiler/source:Span" %t276, ptr %l117
  br label %bb64
bb64:
  %t277 = load ptr, ptr %l9, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t278
  %t279 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 0
  store i64 5, ptr %t279
  %t280 = load %"compiler/source:Span", ptr %l117
  %t281 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t280, 0
  %t283 = insertvalue { %"compiler/source:Span", ptr } %t281, ptr %t277, 1
  %t284 = getelementptr { i64, [5 x i64] }, ptr %t278, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t283, ptr %t284
  %t285 = load { i64, [5 x i64] }, ptr %t278
  %t287 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t285, ptr %t287
  %t289 = insertvalue { i32, ptr } zeroinitializer, ptr %t287, 1
  store { i32, ptr } %t289, ptr %rv
  br label %ret
bb65:
  %t290 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t292 = trunc i64 1 to i32
  %t293 = icmp eq i32 %t290, %t292
  br i1 %t293, label %bb66, label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb99
bb68:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/parse:Parser", ptr %t295, i32 0, i32 36
  %t299 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t297)
  store i64 %t299, ptr %l125
  br label %bb69
bb69:
  %t300 = load i64, ptr %l125, !tbaa !24
  store i64 %t300, ptr %l10, !tbaa !24
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/parse:Parser", ptr %t301, i32 0, i32 36
  store ptr %t303, ptr %l127, !tbaa !29
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t306 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t304)
  %t307 = extractvalue { i32, i32 } %t306, 1
  %t308 = extractvalue { i32, i32 } %t306, 0
  store i32 %t308, ptr %l131
  %t309 = icmp ne i32 %t308, 0
  br i1 %t309, label %bb71, label %ok.310, !prof !99
ok.310:
  store i32 %t307, ptr %l130
  br label %bb70
bb70:
  %t311 = load i32, ptr %l130, !tbaa !23
  store i32 %t311, ptr %l128, !tbaa !23
  br label %bb72
bb71:
  %t312 = load i32, ptr %l131, !tbaa !23
  %t313 = lshr i32 %t312, 16
  %t314 = and i32 %t312, 65535
  %t315 = icmp eq i32 %t313, 1
  %t316 = select i1 %t315, i32 1, i32 0
  %t317 = icmp eq i32 %t312, 0
  %t318 = shl i32 %t316, 16
  %t319 = or i32 %t318, %t314
  %t320 = select i1 %t317, i32 0, i32 %t319
  %t322 = insertvalue { i32, ptr } zeroinitializer, i32 %t320, 0
  store { i32, ptr } %t322, ptr %rv
  br label %ret
bb72:
  %t323 = load ptr, ptr %l127, !tbaa !29
  %t324 = load i32, ptr %l128, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t323, i32 %t324)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t328 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t325, i32 76)
  store i1 %t328, ptr %l135
  br label %bb75
bb75:
  %t329 = load i1, ptr %l135, !tbaa !21
  %t330 = xor i1 %t329, true
  br i1 %t330, label %bb76, label %bb77
bb76:
  br label %bb85
bb77:
  br label %bb78
bb78:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t332)
  store i32 %t334, ptr %l138
  br label %bb79
bb79:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = getelementptr %"compiler/parse:Parser", ptr %t335, i32 0, i32 36
  store ptr %t337, ptr %l140, !tbaa !29
  %t338 = load ptr, ptr %l0, !tbaa !29
  %t340 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t338)
  %t341 = extractvalue { i32, i32 } %t340, 1
  %t342 = extractvalue { i32, i32 } %t340, 0
  store i32 %t342, ptr %l144
  %t343 = icmp ne i32 %t342, 0
  br i1 %t343, label %bb81, label %ok.344, !prof !99
ok.344:
  store i32 %t341, ptr %l143
  br label %bb80
bb80:
  %t345 = load i32, ptr %l143, !tbaa !23
  store i32 %t345, ptr %l141, !tbaa !23
  br label %bb82
bb81:
  %t346 = load i32, ptr %l144, !tbaa !23
  %t347 = lshr i32 %t346, 16
  %t348 = and i32 %t346, 65535
  %t349 = icmp eq i32 %t347, 1
  %t350 = select i1 %t349, i32 1, i32 0
  %t351 = icmp eq i32 %t346, 0
  %t352 = shl i32 %t350, 16
  %t353 = or i32 %t352, %t348
  %t354 = select i1 %t351, i32 0, i32 %t353
  %t356 = insertvalue { i32, ptr } zeroinitializer, i32 %t354, 0
  store { i32, ptr } %t356, ptr %rv
  br label %ret
bb82:
  %t357 = load ptr, ptr %l140, !tbaa !29
  %t358 = load i32, ptr %l141, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t357, i32 %t358)
  br label %bb83
bb83:
  br label %bb84
bb84:
  br label %bb74
bb85:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/parse:Parser", ptr %t359, i32 0, i32 36
  %t362 = load i64, ptr %l10, !tbaa !24
  %t365 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v1, ptr %t361, i64 %t362)
  store { i64, ptr } %t365, ptr %l149
  br label %bb86
bb86:
  %t366 = load { i64, ptr }, ptr %l149, !tbaa !27
  store { i64, ptr } %t366, ptr %l11, !tbaa !27
  %t367 = icmp sge i64 0, 0
  br i1 %t367, label %bb87, label %bb88
bb87:
  %t369 = icmp sle i64 0, 1152921504606846975
  br i1 %t369, label %bb89, label %bb90
bb88:
  call void @__olang_check_failed(ptr @olang_loc_ae62324d96d86fcb_b2eaa0dd969a6637)
  unreachable
bb89:
  %t371 = mul i64 0, 8
  %t372 = insertvalue { i64, ptr } undef, i64 0, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t373, ptr %l12, !tbaa !27
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t378 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t375, i32 97)
  store i1 %t378, ptr %l155
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_ae62324d96d86fcb_b2eaa0dd969a6637)
  unreachable
bb91:
  %t379 = load i1, ptr %l155, !tbaa !21
  br i1 %t379, label %bb92, label %bb93
bb92:
  %t380 = load ptr, ptr %l0, !tbaa !29
  %t382 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %t380)
  %t383 = extractvalue { i32, { i64, ptr } } %t382, 1
  %t384 = extractvalue { i32, { i64, ptr } } %t382, 0
  store i32 %t384, ptr %l159
  %t385 = icmp ne i32 %t384, 0
  br i1 %t385, label %bb95, label %ok.386, !prof !99
ok.386:
  store { i64, ptr } %t383, ptr %l158
  br label %bb94
bb93:
  br label %bb97
bb94:
  %t387 = load { i64, ptr }, ptr %l158, !tbaa !27
  store { i64, ptr } %t387, ptr %l156, !tbaa !27
  br label %bb96
bb95:
  %t388 = load i32, ptr %l159, !tbaa !23
  %t389 = lshr i32 %t388, 16
  %t390 = and i32 %t388, 65535
  %t391 = icmp eq i32 %t389, 1
  %t392 = select i1 %t391, i32 1, i32 0
  %t393 = icmp eq i32 %t388, 0
  %t394 = shl i32 %t392, 16
  %t395 = or i32 %t394, %t390
  %t396 = select i1 %t393, i32 0, i32 %t395
  %t398 = insertvalue { i32, ptr } zeroinitializer, i32 %t396, 0
  store { i32, ptr } %t398, ptr %rv
  br label %ret
bb96:
  %t399 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t399, ptr %l12, !tbaa !27
  br label %bb97
bb97:
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t401 = load i32, ptr %l1, !tbaa !23
  %t404 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t400, i32 %t401)
  store %"compiler/source:Span" %t404, ptr %l163
  br label %bb98
bb98:
  %t405 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t406 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t407
  %t408 = getelementptr { i64, [5 x i64] }, ptr %t407, i32 0, i32 0
  store i64 0, ptr %t408
  %t409 = load %"compiler/source:Span", ptr %l163
  %t410 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t409, 0
  %t412 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t410, { i64, ptr } %t405, 1
  %t414 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t412, { i64, ptr } %t406, 2
  %t415 = getelementptr { i64, [5 x i64] }, ptr %t407, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t414, ptr %t415
  %t416 = load { i64, [5 x i64] }, ptr %t407
  %t418 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t416, ptr %t418
  %t420 = insertvalue { i32, ptr } zeroinitializer, ptr %t418, 1
  store { i32, ptr } %t420, ptr %rv
  br label %ret
bb99:
  %t421 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t423 = trunc i64 108 to i32
  %t424 = icmp eq i32 %t421, %t423
  br i1 %t424, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb129
bb102:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/parse:Parser", ptr %t426, i32 0, i32 43
  store ptr %t428, ptr %l171, !tbaa !29
  %t429 = load ptr, ptr %l0, !tbaa !29
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t432 = getelementptr %"compiler/parse:Parser", ptr %t430, i32 0, i32 6
  %t433 = load i64, ptr %t432, !tbaa !24
  %t436 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t429, i64 %t433)
  store i64 %t436, ptr %l175
  br label %bb103
bb103:
  %t437 = load ptr, ptr %l171, !tbaa !29
  %t438 = load i64, ptr %l175, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t437, i64 %t438)
  br label %bb104
bb104:
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t439)
  store i32 %t441, ptr %l177
  br label %bb105
bb105:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/parse:Parser", ptr %t442, i32 0, i32 20
  %t445 = load i1, ptr %t444, !tbaa !21
  store i1 %t445, ptr %l13, !tbaa !21
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/parse:Parser", ptr %t447, i32 0, i32 19
  %t450 = load i1, ptr %t449, !tbaa !21
  store i1 %t450, ptr %l14, !tbaa !21
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t454 = getelementptr %"compiler/parse:Parser", ptr %t452, i32 0, i32 20
  store i1 false, ptr %t454, !tbaa !21
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t457 = getelementptr %"compiler/parse:Parser", ptr %t455, i32 0, i32 19
  store i1 false, ptr %t457, !tbaa !21
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t460 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t458)
  %t461 = extractvalue { i32, ptr } %t460, 1
  %t462 = extractvalue { i32, ptr } %t460, 0
  store i32 %t462, ptr %l187
  %t463 = icmp ne i32 %t462, 0
  br i1 %t463, label %bb107, label %ok.464, !prof !99
ok.464:
  store ptr %t461, ptr %l186
  br label %bb106
bb106:
  %t465 = load ptr, ptr %l186, !tbaa !29
  store ptr %t465, ptr %l184, !tbaa !29
  br label %bb109
bb107:
  br label %bb108
bb108:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load i1, ptr %l13, !tbaa !21
  %t470 = getelementptr %"compiler/parse:Parser", ptr %t466, i32 0, i32 20
  store i1 %t467, ptr %t470, !tbaa !21
  %t471 = load ptr, ptr %l0, !tbaa !29
  %t472 = load i1, ptr %l14, !tbaa !21
  %t475 = getelementptr %"compiler/parse:Parser", ptr %t471, i32 0, i32 19
  store i1 %t472, ptr %t475, !tbaa !21
  %t477 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t477, ptr %rv
  br label %ret
bb109:
  %t478 = load ptr, ptr %l184, !tbaa !29
  store ptr %t478, ptr %l15, !tbaa !29
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i1, ptr %l13, !tbaa !21
  %t483 = getelementptr %"compiler/parse:Parser", ptr %t479, i32 0, i32 20
  store i1 %t480, ptr %t483, !tbaa !21
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i1, ptr %l14, !tbaa !21
  %t488 = getelementptr %"compiler/parse:Parser", ptr %t484, i32 0, i32 19
  store i1 %t485, ptr %t488, !tbaa !21
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t492 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t489, i32 109)
  store i1 %t492, ptr %l199
  br label %bb110
bb110:
  %t493 = load i1, ptr %l199, !tbaa !21
  %t494 = xor i1 %t493, true
  br i1 %t494, label %bb111, label %bb112
bb111:
  %t496 = load ptr, ptr %l15, !tbaa !29
  %t498 = call i1 @compiler_2fparse_2eisFuncType(ptr %v1, ptr %t496)
  store i1 %t498, ptr %l203
  br label %bb113
bb112:
  store i1 false, ptr %l201, !tbaa !21
  br label %bb114
bb113:
  %t499 = load i1, ptr %l203, !tbaa !21
  %t500 = xor i1 %t499, true
  store i1 %t500, ptr %l201, !tbaa !21
  br label %bb114
bb114:
  %t502 = load i1, ptr %l201, !tbaa !21
  br i1 %t502, label %bb115, label %bb116
bb115:
  store %olang.scope zeroinitializer, ptr %s14
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l205, !tbaa !29
  %t504 = load i32, ptr %l1, !tbaa !23
  store i32 %t504, ptr %l206, !tbaa !23
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/parse:Parser", ptr %t505, i32 0, i32 10
  %t508 = load i32, ptr %t507, !tbaa !23
  store i32 %t508, ptr %l208, !tbaa !23
  %t509 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %s14)
  store %"compiler/diagmsg:Msg" %t509, ptr %l209
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t510 = load ptr, ptr %l205, !tbaa !29
  %t511 = load i32, ptr %l206, !tbaa !23
  %t512 = load i32, ptr %l208, !tbaa !23
  %t513 = load %"compiler/diagmsg:Msg", ptr %l209
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s14, ptr %t510, i32 %t511, i32 %t512, %"compiler/diagmsg:Msg" %t513)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s14)
  %t515 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t515, ptr %rv
  br label %ret
bb119:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t519 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t516, i32 109)
  %t520 = extractvalue { i32, i32 } %t519, 1
  %t521 = extractvalue { i32, i32 } %t519, 0
  store i32 %t521, ptr %l215
  %t522 = icmp ne i32 %t521, 0
  br i1 %t522, label %bb121, label %ok.523, !prof !99
ok.523:
  store i32 %t520, ptr %l214
  br label %bb120
bb120:
  %t524 = load i32, ptr %l214, !tbaa !23
  store i32 %t524, ptr %l211, !tbaa !23
  br label %bb122
bb121:
  %t525 = load i32, ptr %l215, !tbaa !23
  %t526 = lshr i32 %t525, 16
  %t527 = and i32 %t525, 65535
  %t528 = icmp eq i32 %t526, 1
  %t529 = select i1 %t528, i32 1, i32 0
  %t530 = icmp eq i32 %t525, 0
  %t531 = shl i32 %t529, 16
  %t532 = or i32 %t531, %t527
  %t533 = select i1 %t530, i32 0, i32 %t532
  %t535 = insertvalue { i32, ptr } zeroinitializer, i32 %t533, 0
  store { i32, ptr } %t535, ptr %rv
  br label %ret
bb122:
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t537 = load ptr, ptr %l15, !tbaa !29
  %t540 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2egrouped(ptr %v0, ptr %v1, ptr %t536, ptr %t537)
  store i1 %t540, ptr %l219
  br label %bb123
bb123:
  %t541 = load i1, ptr %l219, !tbaa !21
  %t542 = xor i1 %t541, true
  br i1 %t542, label %bb124, label %bb125
bb124:
  store %olang.scope zeroinitializer, ptr %s15
  %t544 = load ptr, ptr %l0, !tbaa !29
  store ptr %t544, ptr %l221, !tbaa !29
  %t545 = load i32, ptr %l1, !tbaa !23
  store i32 %t545, ptr %l222, !tbaa !23
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t548 = getelementptr %"compiler/parse:Parser", ptr %t546, i32 0, i32 10
  %t549 = load i32, ptr %t548, !tbaa !23
  store i32 %t549, ptr %l224, !tbaa !23
  %t550 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %s15)
  store %"compiler/diagmsg:Msg" %t550, ptr %l225
  br label %bb126
bb125:
  br label %bb128
bb126:
  %t551 = load ptr, ptr %l221, !tbaa !29
  %t552 = load i32, ptr %l222, !tbaa !23
  %t553 = load i32, ptr %l224, !tbaa !23
  %t554 = load %"compiler/diagmsg:Msg", ptr %l225
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %s15, ptr %t551, i32 %t552, i32 %t553, %"compiler/diagmsg:Msg" %t554)
  br label %bb127
bb127:
  call void @__olang_scope_close(ptr %s15)
  %t556 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t556, ptr %rv
  br label %ret
bb128:
  %t557 = load ptr, ptr %l15, !tbaa !29
  %t559 = insertvalue { i32, ptr } zeroinitializer, ptr %t557, 1
  store { i32, ptr } %t559, ptr %rv
  br label %ret
bb129:
  %t560 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t562 = trunc i64 97 to i32
  %t563 = icmp eq i32 %t560, %t562
  br i1 %t563, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb136
bb132:
  store %olang.scope zeroinitializer, ptr %s16
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s16, ptr %t565, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i32 %t567, ptr %l231
  %t568 = icmp ne i32 %t567, 0
  br i1 %t568, label %bb134, label %ok.569, !prof !99
ok.569:
  br label %bb133
bb133:
  br label %bb135
bb134:
  %t570 = load i32, ptr %l231, !tbaa !23
  %t571 = lshr i32 %t570, 16
  %t572 = and i32 %t570, 65535
  %t573 = icmp eq i32 %t571, 1
  %t574 = select i1 %t573, i32 1, i32 0
  %t575 = icmp eq i32 %t570, 0
  %t576 = shl i32 %t574, 16
  %t577 = or i32 %t576, %t572
  %t578 = select i1 %t575, i32 0, i32 %t577
  call void @__olang_scope_close(ptr %s16)
  %t580 = insertvalue { i32, ptr } zeroinitializer, i32 %t578, 0
  store { i32, ptr } %t580, ptr %rv
  br label %ret
bb135:
  call void @__olang_scope_close(ptr %s16)
  br label %bb144
bb136:
  br i1 true, label %bb137, label %bb138
bb137:
  br label %bb139
bb138:
  br label %bb143
bb139:
  store %olang.scope zeroinitializer, ptr %s17
  %t581 = load ptr, ptr %l0, !tbaa !29
  %t583 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s17, ptr %t581, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i32 %t583, ptr %l234
  %t584 = icmp ne i32 %t583, 0
  br i1 %t584, label %bb141, label %ok.585, !prof !99
ok.585:
  br label %bb140
bb140:
  br label %bb142
bb141:
  %t586 = load i32, ptr %l234, !tbaa !23
  %t587 = lshr i32 %t586, 16
  %t588 = and i32 %t586, 65535
  %t589 = icmp eq i32 %t587, 1
  %t590 = select i1 %t589, i32 1, i32 0
  %t591 = icmp eq i32 %t586, 0
  %t592 = shl i32 %t590, 16
  %t593 = or i32 %t592, %t588
  %t594 = select i1 %t591, i32 0, i32 %t593
  call void @__olang_scope_close(ptr %s17)
  %t596 = insertvalue { i32, ptr } zeroinitializer, i32 %t594, 0
  store { i32, ptr } %t596, ptr %rv
  br label %ret
bb142:
  call void @__olang_scope_close(ptr %s17)
  br label %bb144
bb143:
  call void @__olang_check_failed(ptr @olang_loc_c7048dff8864462d_6ca6baed1a8cf791)
  unreachable
bb144:
  call void @__olang_check_failed(ptr @olang_loc_6811a11f54350b9a_640e4e5711fedc76)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca i64
  %l11 = alloca i32
  %l13 = alloca i1
  %l14 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca i32
  %l20 = alloca i32
  %l24 = alloca i32
  %l26 = alloca i32
  %l28 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %l36 = alloca %"compiler/source:Span"
  %l40 = alloca ptr
  %l45 = alloca i32
  %l46 = alloca ptr
  %l48 = alloca ptr
  %l49 = alloca i32
  %l53 = alloca %"compiler/source:Span"
  %l67 = alloca i32
  %l69 = alloca i32
  %l70 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca i32
  %l77 = alloca %"compiler/source:Span"
  %l88 = alloca i1
  %l90 = alloca i32
  %l94 = alloca i1
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l101 = alloca i32
  %l103 = alloca ptr
  %l105 = alloca ptr
  %l106 = alloca i32
  %l110 = alloca i1
  %l112 = alloca i1
  %l115 = alloca i1
  %l120 = alloca i64
  %l126 = alloca i1
  %l127 = alloca i1
  %l130 = alloca i1
  %l133 = alloca ptr
  %l134 = alloca ptr
  %l136 = alloca ptr
  %l137 = alloca i32
  %l141 = alloca %"compiler/source:Span"
  %l145 = alloca { i64, ptr }
  %l148 = alloca ptr
  %l150 = alloca ptr
  %l151 = alloca i32
  %rv = alloca { i32, ptr }
  %t86 = alloca { i64, [4 x i64] }, align 8
  %t136 = alloca { i64, [4 x i64] }, align 8
  %t204 = alloca { i64, [4 x i64] }, align 8
  %t372 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i32, ptr %l11, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %t5)
  store i1 %t7, ptr %l13
  br label %bb2
bb2:
  %t8 = load i1, ptr %l13, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2espread(ptr %v0, ptr %v1, ptr %t9)
  %t12 = extractvalue { i32, ptr } %t11, 1
  %t13 = extractvalue { i32, ptr } %t11, 0
  store i32 %t13, ptr %l17
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb6, label %ok.15, !prof !99
ok.15:
  store ptr %t12, ptr %l16
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l16, !tbaa !29
  store ptr %t16, ptr %l14, !tbaa !29
  br label %bb7
bb6:
  %t17 = load i32, ptr %l17, !tbaa !23
  %t18 = lshr i32 %t17, 16
  %t19 = and i32 %t17, 65535
  %t20 = icmp eq i32 %t18, 1
  %t21 = select i1 %t20, i32 1, i32 0
  %t22 = icmp eq i32 %t17, 0
  %t23 = shl i32 %t21, 16
  %t24 = or i32 %t23, %t19
  %t25 = select i1 %t22, i32 0, i32 %t24
  %t27 = insertvalue { i32, ptr } zeroinitializer, i32 %t25, 0
  store { i32, ptr } %t27, ptr %rv
  br label %ret
bb7:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = insertvalue { i32, ptr } zeroinitializer, ptr %t28, 1
  store { i32, ptr } %t29, ptr %rv
  br label %ret
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t30)
  store i32 %t32, ptr %l20
  br label %bb9
bb9:
  %t33 = load i32, ptr %l20, !range !{i32 0, i32 114}
  store i32 %t33, ptr %l2
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t36 = trunc i64 48 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t39)
  store i32 %t41, ptr %l24
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t42)
  store i32 %t44, ptr %l26
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb15, label %ok.46, !prof !99
ok.46:
  br label %bb14
bb14:
  br label %bb16
bb15:
  %t47 = load i32, ptr %l26, !tbaa !23
  %t48 = lshr i32 %t47, 16
  %t49 = and i32 %t47, 65535
  %t50 = icmp eq i32 %t48, 1
  %t51 = select i1 %t50, i32 1, i32 0
  %t52 = icmp eq i32 %t47, 0
  %t53 = shl i32 %t51, 16
  %t54 = or i32 %t53, %t49
  %t55 = select i1 %t52, i32 0, i32 %t54
  %t57 = insertvalue { i32, ptr } zeroinitializer, i32 %t55, 0
  store { i32, ptr } %t57, ptr %rv
  br label %ret
bb16:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v1, ptr %t58, i64 4)
  %t61 = extractvalue { i32, ptr } %t60, 1
  %t62 = extractvalue { i32, ptr } %t60, 0
  store i32 %t62, ptr %l31
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb18, label %ok.64, !prof !99
ok.64:
  store ptr %t61, ptr %l30
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l30, !tbaa !29
  store ptr %t65, ptr %l28, !tbaa !29
  br label %bb20
bb18:
  %t66 = load i32, ptr %l31, !tbaa !23
  %t67 = lshr i32 %t66, 16
  %t68 = and i32 %t66, 65535
  %t69 = icmp eq i32 %t67, 1
  %t70 = select i1 %t69, i32 1, i32 0
  %t71 = icmp eq i32 %t66, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t68
  %t74 = select i1 %t71, i32 0, i32 %t73
  store i32 %t74, ptr %l32, !tbaa !23
  %t75 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t75)
  br label %bb19
bb19:
  %t77 = load i32, ptr %l32, !tbaa !23
  %t78 = insertvalue { i32, ptr } zeroinitializer, i32 %t77, 0
  store { i32, ptr } %t78, ptr %rv
  br label %ret
bb20:
  %t79 = load ptr, ptr %l28, !tbaa !29
  store ptr %t79, ptr %l3, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t80, i32 %t81)
  store %"compiler/source:Span" %t84, ptr %l36
  br label %bb21
bb21:
  %t85 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t86
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 0
  store i64 3, ptr %t87
  %t88 = load %"compiler/source:Span", ptr %l36
  %t89 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t88, 0
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr } %t89, i32 48, 1
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } %t91, ptr %t85, 2
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t93, ptr %t94
  %t95 = load { i64, [4 x i64] }, ptr %t86
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t95, ptr %t97
  store ptr %t97, ptr %l40, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t98)
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l40, !tbaa !29
  %t101 = insertvalue { i32, ptr } zeroinitializer, ptr %t100, 1
  store { i32, ptr } %t101, ptr %rv
  br label %ret
bb23:
  %t102 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t104 = trunc i64 18 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t107)
  store i32 %t109, ptr %l45
  br label %bb27
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t110)
  %t113 = extractvalue { i32, ptr } %t112, 1
  %t114 = extractvalue { i32, ptr } %t112, 0
  store i32 %t114, ptr %l49
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb29, label %ok.116, !prof !99
ok.116:
  store ptr %t113, ptr %l48
  br label %bb28
bb28:
  %t117 = load ptr, ptr %l48, !tbaa !29
  store ptr %t117, ptr %l46, !tbaa !29
  br label %bb30
bb29:
  %t118 = load i32, ptr %l49, !tbaa !23
  %t119 = lshr i32 %t118, 16
  %t120 = and i32 %t118, 65535
  %t121 = icmp eq i32 %t119, 1
  %t122 = select i1 %t121, i32 1, i32 0
  %t123 = icmp eq i32 %t118, 0
  %t124 = shl i32 %t122, 16
  %t125 = or i32 %t124, %t120
  %t126 = select i1 %t123, i32 0, i32 %t125
  %t128 = insertvalue { i32, ptr } zeroinitializer, i32 %t126, 0
  store { i32, ptr } %t128, ptr %rv
  br label %ret
bb30:
  %t129 = load ptr, ptr %l46, !tbaa !29
  store ptr %t129, ptr %l4, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l1, !tbaa !23
  %t134 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t130, i32 %t131)
  store %"compiler/source:Span" %t134, ptr %l53
  br label %bb31
bb31:
  %t135 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 0
  store i64 3, ptr %t137
  %t138 = load %"compiler/source:Span", ptr %l53
  %t139 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t138, 0
  %t141 = insertvalue { %"compiler/source:Span", i32, ptr } %t139, i32 18, 1
  %t143 = insertvalue { %"compiler/source:Span", i32, ptr } %t141, ptr %t135, 2
  %t144 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t143, ptr %t144
  %t145 = load { i64, [4 x i64] }, ptr %t136
  %t147 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t145, ptr %t147
  %t149 = insertvalue { i32, ptr } zeroinitializer, ptr %t147, 1
  store { i32, ptr } %t149, ptr %rv
  br label %ret
bb32:
  %t150 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t152 = trunc i64 69 to i32
  %t153 = icmp eq i32 %t150, %t152
  br i1 %t153, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  %t155 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t157 = trunc i64 104 to i32
  %t158 = icmp eq i32 %t155, %t157
  br i1 %t158, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  %t160 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t162 = trunc i64 92 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t165 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t167 = trunc i64 93 to i32
  %t168 = icmp eq i32 %t165, %t167
  br i1 %t168, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb48
bb41:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t170)
  store i32 %t172, ptr %l67
  br label %bb42
bb42:
  %t173 = load i32, ptr %l67, !range !{i32 0, i32 114}
  store i32 %t173, ptr %l5
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t174)
  store i32 %t176, ptr %l69
  br label %bb43
bb43:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t177)
  %t180 = extractvalue { i32, ptr } %t179, 1
  %t181 = extractvalue { i32, ptr } %t179, 0
  store i32 %t181, ptr %l73
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb45, label %ok.183, !prof !99
ok.183:
  store ptr %t180, ptr %l72
  br label %bb44
bb44:
  %t184 = load ptr, ptr %l72, !tbaa !29
  store ptr %t184, ptr %l70, !tbaa !29
  br label %bb46
bb45:
  %t185 = load i32, ptr %l73, !tbaa !23
  %t186 = lshr i32 %t185, 16
  %t187 = and i32 %t185, 65535
  %t188 = icmp eq i32 %t186, 1
  %t189 = select i1 %t188, i32 1, i32 0
  %t190 = icmp eq i32 %t185, 0
  %t191 = shl i32 %t189, 16
  %t192 = or i32 %t191, %t187
  %t193 = select i1 %t190, i32 0, i32 %t192
  %t195 = insertvalue { i32, ptr } zeroinitializer, i32 %t193, 0
  store { i32, ptr } %t195, ptr %rv
  br label %ret
bb46:
  %t196 = load ptr, ptr %l70, !tbaa !29
  store ptr %t196, ptr %l6, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l1, !tbaa !23
  %t201 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t197, i32 %t198)
  store %"compiler/source:Span" %t201, ptr %l77
  br label %bb47
bb47:
  %t202 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t203 = load ptr, ptr %l6, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t204, i32 0, i32 0
  store i64 3, ptr %t205
  %t206 = load %"compiler/source:Span", ptr %l77
  %t207 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t206, 0
  %t209 = insertvalue { %"compiler/source:Span", i32, ptr } %t207, i32 %t202, 1
  %t211 = insertvalue { %"compiler/source:Span", i32, ptr } %t209, ptr %t203, 2
  %t212 = getelementptr { i64, [4 x i64] }, ptr %t204, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t211, ptr %t212
  %t213 = load { i64, [4 x i64] }, ptr %t204
  %t215 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t213, ptr %t215
  %t217 = insertvalue { i32, ptr } zeroinitializer, ptr %t215, 1
  store { i32, ptr } %t217, ptr %rv
  br label %ret
bb48:
  %t218 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t220 = trunc i64 5 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  %t223 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t225 = trunc i64 105 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb98
bb53:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t231 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t228, i32 5)
  store i1 %t231, ptr %l88
  br label %bb54
bb54:
  %t232 = load i1, ptr %l88, !tbaa !21
  br i1 %t232, label %bb55, label %bb56
bb55:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t233, i64 1)
  store i32 %t235, ptr %l90
  br label %bb57
bb56:
  br label %bb67
bb57:
  %t236 = load i32, ptr %l90, !range !{i32 0, i32 114}
  store i32 %t236, ptr %l7
  %t237 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t239 = trunc i64 5 to i32
  %t240 = icmp eq i32 %t237, %t239
  %t242 = xor i1 %t240, true
  br i1 %t242, label %bb58, label %bb59
bb58:
  %t244 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t246 = trunc i64 105 to i32
  %t247 = icmp eq i32 %t244, %t246
  %t249 = xor i1 %t247, true
  store i1 %t249, ptr %l94, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb60
bb60:
  %t251 = load i1, ptr %l94, !tbaa !21
  br i1 %t251, label %bb61, label %bb62
bb61:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t254 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %t252)
  %t255 = extractvalue { i32, ptr } %t254, 1
  %t256 = extractvalue { i32, ptr } %t254, 0
  store i32 %t256, ptr %l101
  %t257 = icmp ne i32 %t256, 0
  br i1 %t257, label %bb64, label %ok.258, !prof !99
ok.258:
  store ptr %t255, ptr %l100
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t259 = load ptr, ptr %l100, !tbaa !29
  store ptr %t259, ptr %l98, !tbaa !29
  br label %bb65
bb64:
  %t260 = load i32, ptr %l101, !tbaa !23
  %t261 = lshr i32 %t260, 16
  %t262 = and i32 %t260, 65535
  %t263 = icmp eq i32 %t261, 1
  %t264 = select i1 %t263, i32 1, i32 0
  %t265 = icmp eq i32 %t260, 0
  %t266 = shl i32 %t264, 16
  %t267 = or i32 %t266, %t262
  %t268 = select i1 %t265, i32 0, i32 %t267
  %t270 = insertvalue { i32, ptr } zeroinitializer, i32 %t268, 0
  store { i32, ptr } %t270, ptr %rv
  br label %ret
bb65:
  %t271 = load ptr, ptr %l98, !tbaa !29
  %t272 = insertvalue { i32, ptr } zeroinitializer, ptr %t271, 1
  store { i32, ptr } %t272, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epiece(ptr %v0, ptr %v1, ptr %t273)
  %t276 = extractvalue { i32, ptr } %t275, 1
  %t277 = extractvalue { i32, ptr } %t275, 0
  store i32 %t277, ptr %l106
  %t278 = icmp ne i32 %t277, 0
  br i1 %t278, label %bb69, label %ok.279, !prof !99
ok.279:
  store ptr %t276, ptr %l105
  br label %bb68
bb68:
  %t280 = load ptr, ptr %l105, !tbaa !29
  store ptr %t280, ptr %l103, !tbaa !29
  br label %bb70
bb69:
  %t281 = load i32, ptr %l106, !tbaa !23
  %t282 = lshr i32 %t281, 16
  %t283 = and i32 %t281, 65535
  %t284 = icmp eq i32 %t282, 1
  %t285 = select i1 %t284, i32 1, i32 0
  %t286 = icmp eq i32 %t281, 0
  %t287 = shl i32 %t285, 16
  %t288 = or i32 %t287, %t283
  %t289 = select i1 %t286, i32 0, i32 %t288
  %t291 = insertvalue { i32, ptr } zeroinitializer, i32 %t289, 0
  store { i32, ptr } %t291, ptr %rv
  br label %ret
bb70:
  %t292 = load ptr, ptr %l103, !tbaa !29
  store ptr %t292, ptr %l8, !tbaa !29
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t296 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t293, i32 5)
  store i1 %t296, ptr %l110
  br label %bb71
bb71:
  %t297 = load i1, ptr %l110, !tbaa !21
  %t298 = xor i1 %t297, true
  br i1 %t298, label %bb72, label %bb73
bb72:
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t303 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t300, i32 105)
  store i1 %t303, ptr %l115
  br label %bb74
bb73:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb75
bb74:
  %t304 = load i1, ptr %l115, !tbaa !21
  %t305 = xor i1 %t304, true
  store i1 %t305, ptr %l112, !tbaa !21
  br label %bb75
bb75:
  %t307 = load i1, ptr %l112, !tbaa !21
  br i1 %t307, label %bb76, label %bb77
bb76:
  %t308 = load ptr, ptr %l8, !tbaa !29
  %t310 = insertvalue { i32, ptr } zeroinitializer, ptr %t308, 1
  store { i32, ptr } %t310, ptr %rv
  br label %ret
bb77:
  br label %bb78
bb78:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/parse:Parser", ptr %t311, i32 0, i32 31
  %t315 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t313)
  store i64 %t315, ptr %l120
  br label %bb79
bb79:
  %t316 = load i64, ptr %l120, !tbaa !24
  store i64 %t316, ptr %l9, !tbaa !24
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = getelementptr %"compiler/parse:Parser", ptr %t317, i32 0, i32 31
  %t320 = load ptr, ptr %l8, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t319, ptr %t320)
  br label %bb80
bb80:
  br label %bb81
bb81:
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t326 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t323, i32 5)
  store i1 %t326, ptr %l126
  br label %bb82
bb82:
  %t327 = load i1, ptr %l126, !tbaa !21
  br i1 %t327, label %bb83, label %bb84
bb83:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb86
bb84:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t331 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t328, i32 105)
  store i1 %t331, ptr %l130
  br label %bb85
bb85:
  %t332 = load i1, ptr %l130, !tbaa !21
  store i1 %t332, ptr %l127, !tbaa !21
  br label %bb86
bb86:
  %t333 = load i1, ptr %l127, !tbaa !21
  %t334 = xor i1 %t333, true
  br i1 %t334, label %bb87, label %bb88
bb87:
  br label %bb95
bb88:
  br label %bb89
bb89:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t338 = getelementptr %"compiler/parse:Parser", ptr %t336, i32 0, i32 31
  store ptr %t338, ptr %l133, !tbaa !29
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epiece(ptr %v0, ptr %v0, ptr %t339)
  %t342 = extractvalue { i32, ptr } %t341, 1
  %t343 = extractvalue { i32, ptr } %t341, 0
  store i32 %t343, ptr %l137
  %t344 = icmp ne i32 %t343, 0
  br i1 %t344, label %bb91, label %ok.345, !prof !99
ok.345:
  store ptr %t342, ptr %l136
  br label %bb90
bb90:
  %t346 = load ptr, ptr %l136, !tbaa !29
  store ptr %t346, ptr %l134, !tbaa !29
  br label %bb92
bb91:
  %t347 = load i32, ptr %l137, !tbaa !23
  %t348 = lshr i32 %t347, 16
  %t349 = and i32 %t347, 65535
  %t350 = icmp eq i32 %t348, 1
  %t351 = select i1 %t350, i32 1, i32 0
  %t352 = icmp eq i32 %t347, 0
  %t353 = shl i32 %t351, 16
  %t354 = or i32 %t353, %t349
  %t355 = select i1 %t352, i32 0, i32 %t354
  %t357 = insertvalue { i32, ptr } zeroinitializer, i32 %t355, 0
  store { i32, ptr } %t357, ptr %rv
  br label %ret
bb92:
  %t358 = load ptr, ptr %l133, !tbaa !29
  %t359 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t358, ptr %t359)
  br label %bb93
bb93:
  br label %bb94
bb94:
  br label %bb81
bb95:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load i32, ptr %l1, !tbaa !23
  %t364 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t360, i32 %t361)
  store %"compiler/source:Span" %t364, ptr %l141
  br label %bb96
bb96:
  %t365 = load ptr, ptr %l0, !tbaa !29
  %t367 = getelementptr %"compiler/parse:Parser", ptr %t365, i32 0, i32 31
  %t368 = load i64, ptr %l9, !tbaa !24
  %t371 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t367, i64 %t368)
  store { i64, ptr } %t371, ptr %l145
  br label %bb97
bb97:
  store { i64, [4 x i64] } zeroinitializer, ptr %t372
  %t373 = getelementptr { i64, [4 x i64] }, ptr %t372, i32 0, i32 0
  store i64 20, ptr %t373
  %t374 = load %"compiler/source:Span", ptr %l141
  %t375 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t374, 0
  %t376 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t377 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t375, { i64, ptr } %t376, 1
  %t378 = getelementptr { i64, [4 x i64] }, ptr %t372, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t377, ptr %t378
  %t379 = load { i64, [4 x i64] }, ptr %t372
  %t381 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t379, ptr %t381
  %t383 = insertvalue { i32, ptr } zeroinitializer, ptr %t381, 1
  store { i32, ptr } %t383, ptr %rv
  br label %ret
bb98:
  br i1 true, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb105
bb101:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epower(ptr %v0, ptr %v1, ptr %t384)
  %t387 = extractvalue { i32, ptr } %t386, 1
  %t388 = extractvalue { i32, ptr } %t386, 0
  store i32 %t388, ptr %l151
  %t389 = icmp ne i32 %t388, 0
  br i1 %t389, label %bb103, label %ok.390, !prof !99
ok.390:
  store ptr %t387, ptr %l150
  br label %bb102
bb102:
  %t391 = load ptr, ptr %l150, !tbaa !29
  store ptr %t391, ptr %l148, !tbaa !29
  br label %bb104
bb103:
  %t392 = load i32, ptr %l151, !tbaa !23
  %t393 = lshr i32 %t392, 16
  %t394 = and i32 %t392, 65535
  %t395 = icmp eq i32 %t393, 1
  %t396 = select i1 %t395, i32 1, i32 0
  %t397 = icmp eq i32 %t392, 0
  %t398 = shl i32 %t396, 16
  %t399 = or i32 %t398, %t394
  %t400 = select i1 %t397, i32 0, i32 %t399
  %t402 = insertvalue { i32, ptr } zeroinitializer, i32 %t400, 0
  store { i32, ptr } %t402, ptr %rv
  br label %ret
bb104:
  %t403 = load ptr, ptr %l148, !tbaa !29
  %t404 = insertvalue { i32, ptr } zeroinitializer, ptr %t403, 1
  store { i32, ptr } %t404, ptr %rv
  br label %ret
bb105:
  call void @__olang_check_failed(ptr @olang_loc_5787450c8afeca22_493a6afca2796a86)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2eisAssignOp(i32 %a0) #0 {
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
  %t3 = trunc i64 78 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb11
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 81 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t13 = trunc i64 82 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t18 = trunc i64 83 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t23 = trunc i64 85 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb37
bb12:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t28 = trunc i64 84 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb37
bb16:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t33 = trunc i64 86 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 87 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb19, label %bb20
bb19:
  br label %bb27
bb20:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 88 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb21, label %bb22
bb21:
  br label %bb27
bb22:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t48 = trunc i64 89 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t53 = trunc i64 90 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb37
bb28:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t58 = trunc i64 91 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb37
bb32:
  br i1 true, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_6ff476a4e2a6097a_2b56ab96df058916)
  unreachable
bb37:
  %t61 = load i1, ptr %l1, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisFuncType(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
  store i1 %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load i1, ptr %l2, !tbaa !21
  store i1 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2eisPatPath(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l11 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 13
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = call i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %t16)
  store i1 %t18, ptr %l11
  br label %bb6
bb6:
  %t19 = load i1, ptr %l11, !tbaa !21
  store i1 %t19, ptr %l3, !tbaa !21
  br label %bb20
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t21 = load ptr, ptr %l12, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l12, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 14
  store i1 %t27, ptr %l13, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l13, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t31, i32 0, i32 1
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l2, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = call i1 @compiler_2fparse_2eisPatPath(ptr %v0, ptr %t35)
  store i1 %t37, ptr %l19
  br label %bb13
bb13:
  %t38 = load i1, ptr %l19, !tbaa !21
  store i1 %t38, ptr %l3, !tbaa !21
  br label %bb20
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %t39)
  store i1 %t41, ptr %l21
  br label %bb18
bb18:
  %t42 = load i1, ptr %l21, !tbaa !21
  store i1 %t42, ptr %l3, !tbaa !21
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_df55213c12c66f02_faf3a3bc6284f73e)
  unreachable
bb20:
  %t43 = load i1, ptr %l3, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fparse_2elineBodyRefused(ptr %v0, i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca { i64, ptr }
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
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb35
bb4:
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t10 = trunc i64 25 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t13 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t15 = trunc i64 26 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t18, ptr %l1, !tbaa !27
  br label %bb35
bb10:
  %t20 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t22 = trunc i64 31 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t25, ptr %l1, !tbaa !27
  br label %bb35
bb14:
  %t27 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t29 = trunc i64 112 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  br label %bb35
bb18:
  %t34 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t36 = trunc i64 14 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t39, ptr %l1, !tbaa !27
  br label %bb35
bb22:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t43 = trunc i64 16 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  br label %bb35
bb26:
  %t48 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t50 = trunc i64 17 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t53, ptr %l1, !tbaa !27
  br label %bb35
bb30:
  br i1 true, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb34
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t55 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t55, ptr %l1, !tbaa !27
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_944ad1edd3a79eba_8cd1e5aa7bbd35a6)
  unreachable
bb35:
  %t57 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t57, 0
  store i64 %t58, ptr %l34, !tbaa !24
  %t59 = load i64, ptr %l34, !tbaa !24
  %t60 = mul i64 %t59, 1
  %t61 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t60)
  %t62 = insertvalue { i64, ptr } undef, i64 %t59, 0
  %t63 = insertvalue { i64, ptr } %t62, ptr %t61, 1
  store { i64, ptr } %t63, ptr %l35, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l1, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = load i64, ptr %l34, !tbaa !24
  %t69 = mul i64 %t68, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t65, ptr %t67, i64 %t69, i1 false)
  %t70 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t70, ptr %l1, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t71, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca { i64, ptr }
  %l30 = alloca ptr
  %l31 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i1
  %l66 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l72 = alloca ptr
  %l73 = alloca i1
  %l83 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l93 = alloca ptr
  %l94 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %l116 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l126 = alloca ptr
  %l127 = alloca i1
  %l137 = alloca { i64, ptr }
  %l141 = alloca ptr
  %l142 = alloca i1
  %l152 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l158 = alloca i64
  %l159 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t2 = load ptr, ptr %l20, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l20, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l21, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l21, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l3, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v1, ptr %s1, ptr %t16, i32 %t17)
  store { i64, ptr } %t20, ptr %l28
  br label %bb6
bb6:
  %t21 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t22, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb77
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l30, !tbaa !29
  store i1 false, ptr %l31, !tbaa !21
  %t29 = load ptr, ptr %l30, !tbaa !29
  %t30 = icmp ne ptr %t29, null
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l30, !tbaa !29
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 30}
  %t35 = icmp eq i64 %t33, 1
  store i1 %t35, ptr %l31, !tbaa !21
  br label %bb9
bb9:
  %t36 = load i1, ptr %l31, !tbaa !21
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32 }, ptr %t39, i32 0, i32 0
  %t41 = load %"compiler/source:Span", ptr %t40
  store %"compiler/source:Span" %t41, ptr %l4
  br label %bb12
bb11:
  br label %bb19
bb12:
  %t43 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t43, ptr %l36, !tbaa !27
  %t44 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t47 = sext i32 %t45 to i64
  store i64 %t47, ptr %l38, !tbaa !24
  %t48 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 1
  %t49 = load i32, ptr %t48, !tbaa !23
  %t51 = sext i32 %t49 to i64
  store i64 %t51, ptr %l40, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  store i64 %t53, ptr %l41, !tbaa !24
  %t54 = load i64, ptr %l38, !tbaa !24
  %t55 = icmp sge i64 %t54, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load i64, ptr %l38, !tbaa !24
  %t58 = load i64, ptr %l40, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  br i1 %t59, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_95becaa34f722781_c104ec8a8e14f09d)
  unreachable
bb15:
  %t61 = load i64, ptr %l40, !tbaa !24
  %t62 = load i64, ptr %l41, !tbaa !24
  %t63 = icmp sle i64 %t61, %t62
  br i1 %t63, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_95becaa34f722781_c104ec8a8e14f09d)
  unreachable
bb17:
  %t65 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = load i64, ptr %l40, !tbaa !24
  %t69 = getelementptr i8, ptr %t66, i64 %t67
  %t70 = sub i64 %t68, %t67
  %t71 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t74 = extractvalue { i64, ptr } %t72, 1
  %t75 = extractvalue { i64, ptr } %t72, 0
  %t76 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t74, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l19, !tbaa !27
  br label %bb77
bb18:
  call void @__olang_check_failed(ptr @olang_loc_95becaa34f722781_c104ec8a8e14f09d)
  unreachable
bb19:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t81 = load ptr, ptr %l47, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t84 = load ptr, ptr %l47, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 30}
  %t87 = icmp eq i64 %t85, 2
  store i1 %t87, ptr %l48, !tbaa !21
  br label %bb21
bb21:
  %t88 = load i1, ptr %l48, !tbaa !21
  br i1 %t88, label %bb22, label %bb23
bb22:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", ptr }, ptr %t91, i32 0, i32 1
  %t93 = load ptr, ptr %t92
  store ptr %t93, ptr %l5, !tbaa !29
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t95 = load ptr, ptr %l5, !tbaa !29
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t101 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t95, ptr %t96, { i64, ptr } %t97)
  store { i64, ptr } %t101, ptr %l56
  br label %bb25
bb25:
  %t102 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t102, ptr %l19, !tbaa !27
  br label %bb77
bb26:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t104 = load ptr, ptr %l57, !tbaa !29
  %t105 = icmp ne ptr %t104, null
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l57, !tbaa !29
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 30}
  %t110 = icmp eq i64 %t108, 3
  store i1 %t110, ptr %l58, !tbaa !21
  br label %bb28
bb28:
  %t111 = load i1, ptr %l58, !tbaa !21
  br i1 %t111, label %bb29, label %bb30
bb29:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr { i64, [4 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t114, i32 0, i32 1
  %t116 = load i32, ptr %t115, !range !{i32 0, i32 114}
  store i32 %t116, ptr %l6
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l7, !tbaa !29
  br label %bb31
bb30:
  br label %bb34
bb31:
  store %olang.scope zeroinitializer, ptr %s6
  %t124 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t126 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s6, i32 %t124)
  store { i64, ptr } %t126, ptr %l66
  br label %bb32
bb32:
  %t127 = load ptr, ptr %l7, !tbaa !29
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t129 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t133 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s6, ptr %t127, ptr %t128, { i64, ptr } %t129)
  store { i64, ptr } %t133, ptr %l70
  br label %bb33
bb33:
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t136 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = add i64 %t142, %t145
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t150 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t149)
  call void @olang_textcopy(ptr %t150, ptr %t134, i64 %t135)
  %t151 = getelementptr i8, ptr %t150, i64 %t135
  call void @olang_textcopy(ptr %t151, ptr %t137, i64 %t138)
  %t152 = getelementptr i8, ptr %t151, i64 %t138
  call void @olang_textcopy(ptr %t152, ptr %t140, i64 %t141)
  %t153 = getelementptr i8, ptr %t152, i64 %t141
  call void @olang_textcopy(ptr %t153, ptr %t144, i64 %t145)
  %t154 = getelementptr i8, ptr %t153, i64 %t145
  call void @olang_textcopy(ptr %t154, ptr %t147, i64 %t148)
  %t155 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t156 = insertvalue { i64, ptr } %t155, ptr %t150, 1
  store { i64, ptr } %t156, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb77
bb34:
  %t158 = load ptr, ptr %l0, !tbaa !29
  store ptr %t158, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t159 = load ptr, ptr %l72, !tbaa !29
  %t160 = icmp ne ptr %t159, null
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load ptr, ptr %l72, !tbaa !29
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 30}
  %t165 = icmp eq i64 %t163, 5
  store i1 %t165, ptr %l73, !tbaa !21
  br label %bb36
bb36:
  %t166 = load i1, ptr %l73, !tbaa !21
  br i1 %t166, label %bb37, label %bb38
bb37:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr { i64, [4 x i64] }, ptr %t167, i32 0, i32 1
  %t170 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t169, i32 0, i32 1
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 114}
  store i32 %t171, ptr %l8
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr { i64, [4 x i64] }, ptr %t173, i32 0, i32 1
  %t176 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t175, i32 0, i32 2
  %t177 = load ptr, ptr %t176
  store ptr %t177, ptr %l9, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t181, i32 0, i32 3
  %t183 = load ptr, ptr %t182
  store ptr %t183, ptr %l10, !tbaa !29
  br label %bb39
bb38:
  br label %bb43
bb39:
  store %olang.scope zeroinitializer, ptr %s8
  %t185 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t187 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s8, i32 %t185)
  store { i64, ptr } %t187, ptr %l83
  br label %bb40
bb40:
  %t188 = load ptr, ptr %l9, !tbaa !29
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t194 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s8, ptr %t188, ptr %t189, { i64, ptr } %t190)
  store { i64, ptr } %t194, ptr %l87
  br label %bb41
bb41:
  %t195 = load ptr, ptr %l10, !tbaa !29
  %t196 = load ptr, ptr %l1, !tbaa !29
  %t197 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t201 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s8, ptr %t195, ptr %t196, { i64, ptr } %t197)
  store { i64, ptr } %t201, ptr %l91
  br label %bb42
bb42:
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t204 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 1
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t207 = add i64 %t203, %t206
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t210 = add i64 %t207, %t209
  %t211 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t214 = add i64 %t210, %t213
  %t215 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t217 = add i64 %t214, %t216
  %t218 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = add i64 %t217, %t220
  %t222 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t224 = add i64 %t221, %t223
  %t225 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t224)
  call void @olang_textcopy(ptr %t225, ptr %t202, i64 %t203)
  %t226 = getelementptr i8, ptr %t225, i64 %t203
  call void @olang_textcopy(ptr %t226, ptr %t205, i64 %t206)
  %t227 = getelementptr i8, ptr %t226, i64 %t206
  call void @olang_textcopy(ptr %t227, ptr %t208, i64 %t209)
  %t228 = getelementptr i8, ptr %t227, i64 %t209
  call void @olang_textcopy(ptr %t228, ptr %t212, i64 %t213)
  %t229 = getelementptr i8, ptr %t228, i64 %t213
  call void @olang_textcopy(ptr %t229, ptr %t215, i64 %t216)
  %t230 = getelementptr i8, ptr %t229, i64 %t216
  call void @olang_textcopy(ptr %t230, ptr %t219, i64 %t220)
  %t231 = getelementptr i8, ptr %t230, i64 %t220
  call void @olang_textcopy(ptr %t231, ptr %t222, i64 %t223)
  %t232 = insertvalue { i64, ptr } undef, i64 %t224, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %t225, 1
  store { i64, ptr } %t233, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s8)
  br label %bb77
bb43:
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l93, !tbaa !29
  store i1 false, ptr %l94, !tbaa !21
  %t236 = load ptr, ptr %l93, !tbaa !29
  %t237 = icmp ne ptr %t236, null
  br i1 %t237, label %bb44, label %bb45
bb44:
  %t239 = load ptr, ptr %l93, !tbaa !29
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 30}
  %t242 = icmp eq i64 %t240, 7
  store i1 %t242, ptr %l94, !tbaa !21
  br label %bb45
bb45:
  %t243 = load i1, ptr %l94, !tbaa !21
  br i1 %t243, label %bb46, label %bb47
bb46:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr { i64, [4 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", ptr }, ptr %t246, i32 0, i32 1
  %t248 = load ptr, ptr %t247
  store ptr %t248, ptr %l11, !tbaa !29
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t250 = load ptr, ptr %l11, !tbaa !29
  %t252 = getelementptr %"compiler/ast:Chain", ptr %t250, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  %t255 = extractvalue { i64, ptr } %t253, 0
  %t256 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t259 = call i64 @__olang_fmt_i64(ptr null, i64 %t255)
  %t260 = add i64 %t257, %t259
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t263 = add i64 %t260, %t262
  %t264 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t263)
  call void @olang_textcopy(ptr %t264, ptr %t256, i64 %t257)
  %t265 = getelementptr i8, ptr %t264, i64 %t257
  %t266 = call i64 @__olang_fmt_i64(ptr %t265, i64 %t255)
  %t267 = getelementptr i8, ptr %t265, i64 %t259
  call void @olang_textcopy(ptr %t267, ptr %t261, i64 %t262)
  %t268 = insertvalue { i64, ptr } undef, i64 %t263, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t264, 1
  store { i64, ptr } %t269, ptr %l19, !tbaa !27
  br label %bb77
bb49:
  %t271 = load ptr, ptr %l0, !tbaa !29
  store ptr %t271, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t272 = load ptr, ptr %l103, !tbaa !29
  %t273 = icmp ne ptr %t272, null
  br i1 %t273, label %bb50, label %bb51
bb50:
  %t275 = load ptr, ptr %l103, !tbaa !29
  %t276 = load i64, ptr %t275, !range !{i64 0, i64 30}
  %t278 = icmp eq i64 %t276, 8
  store i1 %t278, ptr %l104, !tbaa !21
  br label %bb51
bb51:
  %t279 = load i1, ptr %l104, !tbaa !21
  br i1 %t279, label %bb52, label %bb53
bb52:
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t282 = getelementptr { i64, [4 x i64] }, ptr %t280, i32 0, i32 1
  %t283 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t282, i32 0, i32 1
  %t284 = load ptr, ptr %t283
  store ptr %t284, ptr %l12, !tbaa !29
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t288 = getelementptr { i64, [4 x i64] }, ptr %t286, i32 0, i32 1
  %t289 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t288, i32 0, i32 2
  %t290 = load ptr, ptr %t289
  store ptr %t290, ptr %l13, !tbaa !29
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr { i64, [4 x i64] }, ptr %t292, i32 0, i32 1
  %t295 = getelementptr { %"compiler/source:Span", ptr, ptr, ptr }, ptr %t294, i32 0, i32 3
  %t296 = load ptr, ptr %t295
  store ptr %t296, ptr %l14, !tbaa !29
  br label %bb54
bb53:
  br label %bb58
bb54:
  store %olang.scope zeroinitializer, ptr %s12
  %t298 = load ptr, ptr %l13, !tbaa !29
  %t299 = load ptr, ptr %l1, !tbaa !29
  %t300 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t304 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s12, ptr %t298, ptr %t299, { i64, ptr } %t300)
  store { i64, ptr } %t304, ptr %l116
  br label %bb55
bb55:
  %t305 = load ptr, ptr %l12, !tbaa !29
  %t306 = load ptr, ptr %l1, !tbaa !29
  %t307 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t311 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s12, ptr %t305, ptr %t306, { i64, ptr } %t307)
  store { i64, ptr } %t311, ptr %l120
  br label %bb56
bb56:
  %t312 = load ptr, ptr %l14, !tbaa !29
  %t313 = load ptr, ptr %l1, !tbaa !29
  %t314 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t318 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s12, ptr %t312, ptr %t313, { i64, ptr } %t314)
  store { i64, ptr } %t318, ptr %l124
  br label %bb57
bb57:
  %t319 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t321 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t321, 1
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t324 = add i64 %t320, %t323
  %t325 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t327 = add i64 %t324, %t326
  %t328 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = extractvalue { i64, ptr } %t328, 0
  %t331 = add i64 %t327, %t330
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t335 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t341 = add i64 %t338, %t340
  %t342 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t341)
  call void @olang_textcopy(ptr %t342, ptr %t319, i64 %t320)
  %t343 = getelementptr i8, ptr %t342, i64 %t320
  call void @olang_textcopy(ptr %t343, ptr %t322, i64 %t323)
  %t344 = getelementptr i8, ptr %t343, i64 %t323
  call void @olang_textcopy(ptr %t344, ptr %t325, i64 %t326)
  %t345 = getelementptr i8, ptr %t344, i64 %t326
  call void @olang_textcopy(ptr %t345, ptr %t329, i64 %t330)
  %t346 = getelementptr i8, ptr %t345, i64 %t330
  call void @olang_textcopy(ptr %t346, ptr %t332, i64 %t333)
  %t347 = getelementptr i8, ptr %t346, i64 %t333
  call void @olang_textcopy(ptr %t347, ptr %t336, i64 %t337)
  %t348 = getelementptr i8, ptr %t347, i64 %t337
  call void @olang_textcopy(ptr %t348, ptr %t339, i64 %t340)
  %t349 = insertvalue { i64, ptr } undef, i64 %t341, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t342, 1
  store { i64, ptr } %t350, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s12)
  br label %bb77
bb58:
  %t352 = load ptr, ptr %l0, !tbaa !29
  store ptr %t352, ptr %l126, !tbaa !29
  store i1 false, ptr %l127, !tbaa !21
  %t353 = load ptr, ptr %l126, !tbaa !29
  %t354 = icmp ne ptr %t353, null
  br i1 %t354, label %bb59, label %bb60
bb59:
  %t356 = load ptr, ptr %l126, !tbaa !29
  %t357 = load i64, ptr %t356, !range !{i64 0, i64 30}
  %t359 = icmp eq i64 %t357, 12
  store i1 %t359, ptr %l127, !tbaa !21
  br label %bb60
bb60:
  %t360 = load i1, ptr %l127, !tbaa !21
  br i1 %t360, label %bb61, label %bb62
bb61:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr { i64, [4 x i64] }, ptr %t361, i32 0, i32 1
  %t364 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t363, i32 0, i32 1
  %t365 = load ptr, ptr %t364
  store ptr %t365, ptr %l15, !tbaa !29
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t369 = getelementptr { i64, [4 x i64] }, ptr %t367, i32 0, i32 1
  %t370 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t369, i32 0, i32 2
  %t371 = load { i64, ptr }, ptr %t370
  store { i64, ptr } %t371, ptr %l16, !tbaa !27
  br label %bb63
bb62:
  br label %bb65
bb63:
  store %olang.scope zeroinitializer, ptr %s14
  %t373 = load ptr, ptr %l15, !tbaa !29
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t375 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t379 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s14, ptr %t373, ptr %t374, { i64, ptr } %t375)
  store { i64, ptr } %t379, ptr %l137
  br label %bb64
bb64:
  %t380 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t382 = extractvalue { i64, ptr } %t380, 0
  %t383 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t385 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = extractvalue { i64, ptr } %t385, 0
  %t388 = add i64 %t384, %t387
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t393 = call i64 @__olang_fmt_i64(ptr null, i64 %t382)
  %t394 = add i64 %t391, %t393
  %t395 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t397 = add i64 %t394, %t396
  %t398 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t397)
  call void @olang_textcopy(ptr %t398, ptr %t383, i64 %t384)
  %t399 = getelementptr i8, ptr %t398, i64 %t384
  call void @olang_textcopy(ptr %t399, ptr %t386, i64 %t387)
  %t400 = getelementptr i8, ptr %t399, i64 %t387
  call void @olang_textcopy(ptr %t400, ptr %t389, i64 %t390)
  %t401 = getelementptr i8, ptr %t400, i64 %t390
  %t402 = call i64 @__olang_fmt_i64(ptr %t401, i64 %t382)
  %t403 = getelementptr i8, ptr %t401, i64 %t393
  call void @olang_textcopy(ptr %t403, ptr %t395, i64 %t396)
  %t404 = insertvalue { i64, ptr } undef, i64 %t397, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t398, 1
  store { i64, ptr } %t405, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s14)
  br label %bb77
bb65:
  %t407 = load ptr, ptr %l0, !tbaa !29
  store ptr %t407, ptr %l141, !tbaa !29
  store i1 false, ptr %l142, !tbaa !21
  %t408 = load ptr, ptr %l141, !tbaa !29
  %t409 = icmp ne ptr %t408, null
  br i1 %t409, label %bb66, label %bb67
bb66:
  %t411 = load ptr, ptr %l141, !tbaa !29
  %t412 = load i64, ptr %t411, !range !{i64 0, i64 30}
  %t414 = icmp eq i64 %t412, 13
  store i1 %t414, ptr %l142, !tbaa !21
  br label %bb67
bb67:
  %t415 = load i1, ptr %l142, !tbaa !21
  br i1 %t415, label %bb68, label %bb69
bb68:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t418 = getelementptr { i64, [4 x i64] }, ptr %t416, i32 0, i32 1
  %t419 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t418, i32 0, i32 1
  %t420 = load ptr, ptr %t419
  store ptr %t420, ptr %l17, !tbaa !29
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t424 = getelementptr { i64, [4 x i64] }, ptr %t422, i32 0, i32 1
  %t425 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t424, i32 0, i32 2
  %t426 = load { i64, ptr }, ptr %t425
  store { i64, ptr } %t426, ptr %l18, !tbaa !27
  br label %bb70
bb69:
  br label %bb72
bb70:
  store %olang.scope zeroinitializer, ptr %s16
  %t428 = load ptr, ptr %l17, !tbaa !29
  %t429 = load ptr, ptr %l1, !tbaa !29
  %t430 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t434 = call { i64, ptr } @compiler_2fparse_2eshapeExpr(ptr %v0, ptr %v1, ptr %v2, ptr %s16, ptr %t428, ptr %t429, { i64, ptr } %t430)
  store { i64, ptr } %t434, ptr %l152
  br label %bb71
bb71:
  %t435 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t437 = extractvalue { i64, ptr } %t435, 0
  %t438 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t440 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t440, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = add i64 %t439, %t442
  %t444 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t446 = add i64 %t443, %t445
  %t448 = call i64 @__olang_fmt_i64(ptr null, i64 %t437)
  %t449 = add i64 %t446, %t448
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t452 = add i64 %t449, %t451
  %t453 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t452)
  call void @olang_textcopy(ptr %t453, ptr %t438, i64 %t439)
  %t454 = getelementptr i8, ptr %t453, i64 %t439
  call void @olang_textcopy(ptr %t454, ptr %t441, i64 %t442)
  %t455 = getelementptr i8, ptr %t454, i64 %t442
  call void @olang_textcopy(ptr %t455, ptr %t444, i64 %t445)
  %t456 = getelementptr i8, ptr %t455, i64 %t445
  %t457 = call i64 @__olang_fmt_i64(ptr %t456, i64 %t437)
  %t458 = getelementptr i8, ptr %t456, i64 %t448
  call void @olang_textcopy(ptr %t458, ptr %t450, i64 %t451)
  %t459 = insertvalue { i64, ptr } undef, i64 %t452, 0
  %t460 = insertvalue { i64, ptr } %t459, ptr %t453, 1
  store { i64, ptr } %t460, ptr %l19, !tbaa !27
  call void @__olang_scope_close(ptr %s16)
  br label %bb77
bb72:
  br i1 true, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb76
bb75:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l156, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t462, ptr %l19, !tbaa !27
  br label %bb77
bb76:
  call void @__olang_check_failed(ptr @olang_loc_a6e4b06ca3f2f7b3_b26c102023f13b6f)
  unreachable
bb77:
  %t464 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t465 = extractvalue { i64, ptr } %t464, 0
  store i64 %t465, ptr %l158, !tbaa !24
  %t466 = load i64, ptr %l158, !tbaa !24
  %t467 = mul i64 %t466, 1
  %t468 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t467)
  %t469 = insertvalue { i64, ptr } undef, i64 %t466, 0
  %t470 = insertvalue { i64, ptr } %t469, ptr %t468, 1
  store { i64, ptr } %t470, ptr %l159, !tbaa !27
  %t471 = getelementptr { i64, ptr }, ptr %l159, i32 0, i32 1
  %t472 = load ptr, ptr %t471, !tbaa !27
  %t473 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = load i64, ptr %l158, !tbaa !24
  %t476 = mul i64 %t475, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t472, ptr %t474, i64 %t476, i1 false)
  %t477 = load { i64, ptr }, ptr %l159, !tbaa !27
  store { i64, ptr } %t477, ptr %l19, !tbaa !27
  %t478 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t478, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2fparse_2eweakened(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca i1
  %l38 = alloca ptr
  %l42 = alloca ptr
  %rv = alloca ptr
  %t32 = alloca { i64, [5 x i64] }, align 8
  %t92 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t18, i32 0, i32 1
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l2, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr { i64, [5 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t24, i32 0, i32 2
  %t26 = load i1, ptr %t25
  store i1 %t26, ptr %l3, !tbaa !21
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t28 = load i1, ptr %l3, !tbaa !21
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load %"compiler/source:Span", ptr %l1
  %t31 = load ptr, ptr %l2, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t32
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 0
  store i64 3, ptr %t33
  %t35 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } undef, %"compiler/source:Span" %t30, 0
  %t37 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t35, ptr %t31, 1
  %t38 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t37, i1 true, 2
  %t39 = insertvalue { %"compiler/source:Span", ptr, i1, i1 } %t38, i1 true, 3
  %t40 = getelementptr { i64, [5 x i64] }, ptr %t32, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1, i1 } %t39, ptr %t40
  %t41 = load { i64, [5 x i64] }, ptr %t32
  %t43 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t41, ptr %t43
  store ptr %t43, ptr %l19, !tbaa !29
  br label %bb8
bb7:
  store ptr null, ptr %l19, !tbaa !29
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l19, !tbaa !29
  store ptr %t45, ptr %rv
  br label %ret
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load ptr, ptr %l24, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 8}
  %t53 = icmp eq i64 %t51, 4
  store i1 %t53, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t54 = load i1, ptr %l25, !tbaa !21
  br i1 %t54, label %bb12, label %bb13
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l4
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr { i64, [5 x i64] }, ptr %t61, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t63, i32 0, i32 1
  %t65 = load ptr, ptr %t64
  store ptr %t65, ptr %l5, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr { i64, [5 x i64] }, ptr %t67, i32 0, i32 1
  %t70 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t69, i32 0, i32 2
  %t71 = load i1, ptr %t70
  store i1 %t71, ptr %l6, !tbaa !21
  br label %bb14
bb13:
  br label %bb22
bb14:
  %t73 = load ptr, ptr %l5, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb15, label %bb16
bb15:
  store ptr null, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t80 = call ptr @compiler_2fparse_2eweakened(ptr %v0, ptr %v1, ptr %t78)
  store ptr %t80, ptr %l38
  br label %bb18
bb18:
  %t81 = load ptr, ptr %l38, !tbaa !29
  store ptr %t81, ptr %l7, !tbaa !29
  %t82 = load ptr, ptr %l7, !tbaa !29
  %t84 = icmp eq ptr %t82, null
  %t86 = xor i1 %t84, true
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t88 = load %"compiler/source:Span", ptr %l4
  %t89 = load ptr, ptr %l7, !tbaa !29
  %t91 = load i1, ptr %l6, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t92
  %t93 = getelementptr { i64, [5 x i64] }, ptr %t92, i32 0, i32 0
  store i64 4, ptr %t93
  %t95 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t88, 0
  %t97 = insertvalue { %"compiler/source:Span", ptr, i1 } %t95, ptr %t89, 1
  %t99 = insertvalue { %"compiler/source:Span", ptr, i1 } %t97, i1 %t91, 2
  %t100 = getelementptr { i64, [5 x i64] }, ptr %t92, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t99, ptr %t100
  %t101 = load { i64, [5 x i64] }, ptr %t92
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t101, ptr %t103
  store ptr %t103, ptr %l42, !tbaa !29
  br label %bb21
bb20:
  store ptr null, ptr %l42, !tbaa !29
  br label %bb21
bb21:
  %t105 = load ptr, ptr %l42, !tbaa !29
  store ptr %t105, ptr %rv
  br label %ret
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store ptr null, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_e0fd5cf4c2bfd9fe_e3c6f8b51d6fcd32)
  unreachable
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
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
declare ptr @__olang_scope_of(ptr, ptr) noinline
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
@.d0 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"'fn' or 'type' - an extern block declares C's functions and types" }>, align 8
@.d1 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"an expression" }>, align 8
@.d2 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"($" }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d5 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(...)" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
@.d8 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a type" }>, align 8
@.d9 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"an if" }>, align 8
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a loop" }>, align 8
@.d11 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a match" }>, align 8
@.d12 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a block (a block takes no ':')" }>, align 8
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a join" }>, align 8
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a defer" }>, align 8
@.d15 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"an errdefer" }>, align 8
@.d16 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d18 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d20 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d23 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"(chain " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d25 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"(if " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(call " }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d31 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"(generic " }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d34 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"expr" }>, align 8
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
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, ptr %a2, ptr %a3, i32 %a4)
declare { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %v0, i32 %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %a0)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %a0, i32 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2eisOrdering(i32 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eToArray_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Chain" @compiler_2fast_3aChain_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fparse_2ecomparison(ptr %v0, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Multi" @compiler_2fast_3aMulti_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i1 %a1, { i64, ptr } %a2)
@olang_loc_2f9cebe9c997fb45_8e0297a0e5dae7e9 = external constant [0 x i8]
@olang_loc_bce5f5de212629d8_a497bbae1a0b61c = external constant [0 x i8]
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0)
@olang_loc_3ab225d58e3cfe31_e99e7d1082de1bd = external constant [0 x i8]
@olang_loc_34506b7f0a96de24_ffbbf03839f4b990 = external constant [0 x i8]
declare %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, i1 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternFn(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ekeywordNamesField(i32 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordFieldRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/diagmsg:Msg" %a2)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseValueComma(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueOne(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fparse_2eisJoiningOp(i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineStartsWithOperator(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructInBody(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisOperandEnd(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoperandStartBefore(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendsRendering(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2eisOperandEndTok(i32 %a0)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoperandEndAfter(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etextPieceCalled(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAfterQuestion(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalueAfterEq(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebranch(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_5d444e9b92bac566_79a754ee236bef22 = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epadsChar(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/token:Token" %a1)
@olang_loc_cbae392aecd52e99_b08c2106788b334d = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eJoinPiece(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_f546cbef4e8d8fec_998315c9d411d170 = external constant [0 x i8]
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eampOperator(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftoken_2eSpace = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisTypePath(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fparse_2eMaxNesting = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\20\4E\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2etooDeepAt(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncFrom(ptr %v0, ptr %a0)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitem(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare %"compiler/ast:TopBranch" @compiler_2fast_3aTopBranch_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1, i64 %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinRest(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e98eee410cc159b2_377f58609bf35bd6 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econdFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrsArg(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArg(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecloseAngle(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsShape(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2, i1 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_8764526ae5415d75_f5a9948c86d2d3b9 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBare(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/diagmsg:Msg" %a3)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBody(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_ead0ed9b34ee6f0_4abfb82b89e87654 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_ae62324d96d86fcb_b2eaa0dd969a6637 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2egrouped(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c7048dff8864462d_6ca6baed1a8cf791 = external constant [0 x i8]
@olang_loc_6811a11f54350b9a_640e4e5711fedc76 = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2espread(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epiece(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epower(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_5787450c8afeca22_493a6afca2796a86 = external constant [0 x i8]
@olang_loc_6ff476a4e2a6097a_2b56ab96df058916 = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %a0)
@olang_loc_df55213c12c66f02_faf3a3bc6284f73e = external constant [0 x i8]
@olang_loc_944ad1edd3a79eba_8cd1e5aa7bbd35a6 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_95becaa34f722781_c104ec8a8e14f09d = external constant [0 x i8]
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
@olang_loc_a6e4b06ca3f2f7b3_b26c102023f13b6f = external constant [0 x i8]
@olang_loc_e0fd5cf4c2bfd9fe_e3c6f8b51d6fcd32 = external constant [0 x i8]

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
