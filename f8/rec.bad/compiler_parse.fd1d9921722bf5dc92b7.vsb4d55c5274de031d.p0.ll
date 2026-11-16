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
%"compiler/source:Span" = type { i32, i32 }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/ast:Chain" = type { { i64, ptr }, { i64, ptr } }
%"compiler/parse:stackMarks" = type { i64, i64, i64, i64, i64, i64, i64 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/parse:NameList" = type { { i64, ptr }, { i64, ptr } }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, i1, i1, { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/ast:TopBranch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
@G_2ecompiler_2fparse_2eMaxNesting = constant <{ [8 x i8] }> <{ [8 x i8] c"\20\4E\00\00\00\00\00\00" }>, align 8
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
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 107)
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
  %t63 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t60, i32 108)
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
  %t72 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t69, i32 43)
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
  store i64 23, ptr %t91
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
  %t104 = load i32, ptr %l55, !range !{i32 0, i32 113}
  %t106 = trunc i64 77 to i32
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
  store i64 24, ptr %t209
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
  %t268 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t261, i32 %t259, ptr null, ptr %t263, i32 108)
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
  %t311 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t308, i32 108)
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
  %t371 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t368, i32 108)
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
  %t383 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s23, i32 108)
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

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrRefused(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"compiler/source:Span"
  %l6 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca %"compiler/diagmsg:Msg"
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
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr ptr, ptr %t9, i64 0
  %t11 = load ptr, ptr %t10, !tbaa !39
  %t13 = getelementptr %"compiler/ast:Attr", ptr %t11, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  store ptr %a0, ptr %l9, !tbaa !29
  %t17 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t18 = load i32, ptr %t17, !tbaa !23
  store i32 %t18, ptr %l10, !tbaa !23
  %t19 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t20 = load i32, ptr %t19, !tbaa !23
  store i32 %t20, ptr %l11, !tbaa !23
  %t21 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPlace(ptr %v0)
  store %"compiler/diagmsg:Msg" %t21, ptr %l12
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l9, !tbaa !29
  %t23 = load i32, ptr %l10, !tbaa !23
  %t24 = load i32, ptr %l11, !tbaa !23
  %t25 = load %"compiler/diagmsg:Msg", ptr %l12
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t22, i32 %t23, i32 %t24, %"compiler/diagmsg:Msg" %t25)
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebareLit(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i1
  %l9 = alloca ptr
  %l11 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l21 = alloca ptr
  %l32 = alloca i64
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i32
  %l42 = alloca i32
  %l44 = alloca ptr
  %l47 = alloca %"compiler/source:Span"
  %l52 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i1
  %l61 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l65 = alloca i32
  %l67 = alloca ptr
  %l76 = alloca ptr
  %l78 = alloca ptr
  %l79 = alloca i32
  %l81 = alloca ptr
  %l91 = alloca i1
  %l92 = alloca ptr
  %l97 = alloca ptr
  %l98 = alloca i32
  %l100 = alloca ptr
  %l109 = alloca ptr
  %l120 = alloca i1
  %l122 = alloca ptr
  %l125 = alloca ptr
  %l126 = alloca i32
  %l128 = alloca ptr
  %l138 = alloca i1
  %l140 = alloca i1
  %l141 = alloca ptr
  %l146 = alloca ptr
  %l147 = alloca i32
  %l149 = alloca ptr
  %l158 = alloca ptr
  %l170 = alloca i1
  %l173 = alloca i1
  %l174 = alloca i32
  %l176 = alloca ptr
  %l186 = alloca ptr
  %l188 = alloca ptr
  %l189 = alloca i32
  %l191 = alloca ptr
  %l201 = alloca ptr
  %l204 = alloca ptr
  %l205 = alloca i32
  %l207 = alloca ptr
  %l221 = alloca i1
  %l226 = alloca ptr
  %l228 = alloca { i64, ptr }
  %l230 = alloca i32
  %l232 = alloca ptr
  %l242 = alloca i32
  %l245 = alloca %"compiler/source:Span"
  %l249 = alloca { i64, ptr }
  %l252 = alloca ptr
  %s4 = alloca %olang.scope
  %s30 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t94 = alloca { i64, [4 x i64] }, align 8
  %t655 = alloca { i64, [4 x i64] }, align 8
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
  %t8 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t5, i32 109)
  %t9 = extractvalue { i32, i32 } %t8, 1
  %t10 = extractvalue { i32, i32 } %t8, 0
  store i32 %t10, ptr %l16
  %t11 = icmp ne i32 %t10, 0
  br i1 %t11, label %bb3, label %ok.12, !prof !99
ok.12:
  store i32 %t9, ptr %l15
  br label %bb2
bb2:
  %t13 = load i32, ptr %l15, !tbaa !23
  store i32 %t13, ptr %l12, !tbaa !23
  br label %bb4
bb3:
  %t14 = load i32, ptr %l16, !tbaa !23
  %t15 = lshr i32 %t14, 16
  %t16 = and i32 %t14, 65535
  %t17 = icmp eq i32 %t15, 1
  %t18 = select i1 %t17, i32 1, i32 0
  %t19 = icmp eq i32 %t14, 0
  %t20 = shl i32 %t18, 16
  %t21 = or i32 %t20, %t16
  %t22 = select i1 %t19, i32 0, i32 %t21
  %t24 = insertvalue { i32, ptr } zeroinitializer, i32 %t22, 0
  store { i32, ptr } %t24, ptr %rv
  br label %ret
bb4:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 11
  %t28 = load i1, ptr %t27, !tbaa !21
  store i1 %t28, ptr %l2, !tbaa !21
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/parse:Parser", ptr %t30, i32 0, i32 11
  store i1 false, ptr %t32, !tbaa !21
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l21, !tbaa !29
  %t34 = load ptr, ptr %l21, !tbaa !29
  %t35 = getelementptr %"compiler/parse:Parser", ptr %t34, i32 0, i32 18
  %t36 = load i64, ptr %t35, !tbaa !24
  %t38 = add i64 %t36, 1
  %t40 = load ptr, ptr %l21, !tbaa !29
  %t41 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 18
  store i64 %t38, ptr %t41, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/parse:Parser", ptr %t42, i32 0, i32 19
  %t45 = load i1, ptr %t44, !tbaa !21
  store i1 %t45, ptr %l3, !tbaa !21
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/parse:Parser", ptr %t47, i32 0, i32 20
  %t50 = load i1, ptr %t49, !tbaa !21
  store i1 %t50, ptr %l4, !tbaa !21
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/parse:Parser", ptr %t52, i32 0, i32 19
  store i1 false, ptr %t54, !tbaa !21
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/parse:Parser", ptr %t55, i32 0, i32 20
  store i1 true, ptr %t57, !tbaa !21
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/parse:Parser", ptr %t58, i32 0, i32 31
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l32
  br label %bb5
bb5:
  %t63 = load i64, ptr %l32, !tbaa !24
  store i64 %t63, ptr %l5, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t64, i32 78)
  store i1 %t67, ptr %l35
  br label %bb6
bb6:
  %t68 = load i1, ptr %l35, !tbaa !21
  br i1 %t68, label %bb7, label %bb8
bb7:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t69, i64 1)
  store i32 %t71, ptr %l38
  br label %bb9
bb8:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb10
bb9:
  %t72 = load i32, ptr %l38, !range !{i32 0, i32 113}
  %t74 = trunc i64 110 to i32
  %t75 = icmp eq i32 %t72, %t74
  store i1 %t75, ptr %l36, !tbaa !21
  br label %bb10
bb10:
  %t77 = load i1, ptr %l36, !tbaa !21
  br i1 %t77, label %bb11, label %bb12
bb11:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t78)
  store i32 %t80, ptr %l42
  br label %bb13
bb12:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t84 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t81, i32 110)
  store i1 %t84, ptr %l52
  br label %bb16
bb13:
  %t85 = load i32, ptr %l42, !tbaa !23
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t86, i32 0, i32 31
  store ptr %t88, ptr %l44, !tbaa !29
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t93 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t89, i32 %t85)
  store %"compiler/source:Span" %t93, ptr %l47
  br label %bb14
bb14:
  store { i64, [4 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 0
  store i64 15, ptr %t95
  %t96 = load %"compiler/source:Span", ptr %l47
  %t97 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t96, 0
  %t98 = insertvalue { %"compiler/source:Span", ptr, ptr } %t97, ptr null, 1
  %t99 = insertvalue { %"compiler/source:Span", ptr, ptr } %t98, ptr null, 2
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t99, ptr %t100
  %t101 = load { i64, [4 x i64] }, ptr %t94
  %t103 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t101, ptr %t103
  %t104 = load ptr, ptr %l44, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t104, ptr %t103)
  br label %bb15
bb15:
  br label %bb79
bb16:
  %t106 = load i1, ptr %l52, !tbaa !21
  %t107 = xor i1 %t106, true
  br i1 %t107, label %bb17, label %bb18
bb17:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t112 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t109, i32 108)
  store i1 %t112, ptr %l56
  br label %bb19
bb18:
  br label %bb78
bb19:
  %t113 = load i1, ptr %l56, !tbaa !21
  br i1 %t113, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb23
bb21:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t117 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t114, i32 112)
  store i1 %t117, ptr %l60
  br label %bb22
bb22:
  %t118 = load i1, ptr %l60, !tbaa !21
  store i1 %t118, ptr %l57, !tbaa !21
  br label %bb23
bb23:
  %t119 = load i1, ptr %l57, !tbaa !21
  br i1 %t119, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l61, !tbaa !29
  %t122 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s4, i32 110)
  store { i64, ptr } %t122, ptr %l63
  br label %bb26
bb25:
  br label %bb30
bb26:
  %t123 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  %t125 = extractvalue { i64, ptr } %t123, 1
  %t126 = mul i64 %t124, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t126)
  call void @llvm.memcpy.p0.p0.i64(ptr %t127, ptr %t125, i64 %t126, i1 false)
  %t128 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  %t130 = load ptr, ptr %l61, !tbaa !29
  %t132 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s4, ptr %t130, { i64, ptr } %t129)
  store i32 %t132, ptr %l65
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb28, label %ok.134, !prof !99
ok.134:
  br label %bb27
bb27:
  br label %bb29
bb28:
  %t135 = load i32, ptr %l65, !tbaa !23
  %t136 = lshr i32 %t135, 16
  %t137 = and i32 %t135, 65535
  %t138 = icmp eq i32 %t136, 1
  %t139 = select i1 %t138, i32 1, i32 0
  %t140 = icmp eq i32 %t135, 0
  %t141 = shl i32 %t139, 16
  %t142 = or i32 %t141, %t137
  %t143 = select i1 %t140, i32 0, i32 %t142
  call void @__olang_scope_close(ptr %s4)
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l67, !tbaa !29
  %t145 = load ptr, ptr %l67, !tbaa !29
  %t146 = getelementptr %"compiler/parse:Parser", ptr %t145, i32 0, i32 18
  %t147 = load i64, ptr %t146, !tbaa !24
  %t149 = sub i64 %t147, 1
  %t151 = load ptr, ptr %l67, !tbaa !29
  %t152 = getelementptr %"compiler/parse:Parser", ptr %t151, i32 0, i32 18
  store i64 %t149, ptr %t152, !tbaa !24
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t154 = load i1, ptr %l2, !tbaa !21
  %t157 = getelementptr %"compiler/parse:Parser", ptr %t153, i32 0, i32 11
  store i1 %t154, ptr %t157, !tbaa !21
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i1, ptr %l3, !tbaa !21
  %t162 = getelementptr %"compiler/parse:Parser", ptr %t158, i32 0, i32 19
  store i1 %t159, ptr %t162, !tbaa !21
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i1, ptr %l4, !tbaa !21
  %t167 = getelementptr %"compiler/parse:Parser", ptr %t163, i32 0, i32 20
  store i1 %t164, ptr %t167, !tbaa !21
  %t169 = insertvalue { i32, ptr } zeroinitializer, i32 %t143, 0
  store { i32, ptr } %t169, ptr %rv
  br label %ret
bb29:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb30:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v1, ptr %t170)
  %t173 = extractvalue { i32, ptr } %t172, 1
  %t174 = extractvalue { i32, ptr } %t172, 0
  store i32 %t174, ptr %l79
  %t175 = icmp ne i32 %t174, 0
  br i1 %t175, label %bb32, label %ok.176, !prof !99
ok.176:
  store ptr %t173, ptr %l78
  br label %bb31
bb31:
  %t177 = load ptr, ptr %l78, !tbaa !29
  store ptr %t177, ptr %l76, !tbaa !29
  br label %bb33
bb32:
  %t178 = load i32, ptr %l79, !tbaa !23
  %t179 = lshr i32 %t178, 16
  %t180 = and i32 %t178, 65535
  %t181 = icmp eq i32 %t179, 1
  %t182 = select i1 %t181, i32 1, i32 0
  %t183 = icmp eq i32 %t178, 0
  %t184 = shl i32 %t182, 16
  %t185 = or i32 %t184, %t180
  %t186 = select i1 %t183, i32 0, i32 %t185
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l81, !tbaa !29
  %t188 = load ptr, ptr %l81, !tbaa !29
  %t189 = getelementptr %"compiler/parse:Parser", ptr %t188, i32 0, i32 18
  %t190 = load i64, ptr %t189, !tbaa !24
  %t192 = sub i64 %t190, 1
  %t194 = load ptr, ptr %l81, !tbaa !29
  %t195 = getelementptr %"compiler/parse:Parser", ptr %t194, i32 0, i32 18
  store i64 %t192, ptr %t195, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t197 = load i1, ptr %l2, !tbaa !21
  %t200 = getelementptr %"compiler/parse:Parser", ptr %t196, i32 0, i32 11
  store i1 %t197, ptr %t200, !tbaa !21
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i1, ptr %l3, !tbaa !21
  %t205 = getelementptr %"compiler/parse:Parser", ptr %t201, i32 0, i32 19
  store i1 %t202, ptr %t205, !tbaa !21
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i1, ptr %l4, !tbaa !21
  %t210 = getelementptr %"compiler/parse:Parser", ptr %t206, i32 0, i32 20
  store i1 %t207, ptr %t210, !tbaa !21
  %t212 = insertvalue { i32, ptr } zeroinitializer, i32 %t186, 0
  store { i32, ptr } %t212, ptr %rv
  br label %ret
bb33:
  %t213 = load ptr, ptr %l76, !tbaa !29
  store ptr %t213, ptr %l7, !tbaa !29
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %t214)
  store i1 %t216, ptr %l91
  br label %bb34
bb34:
  %t217 = load i1, ptr %l91, !tbaa !21
  br i1 %t217, label %bb35, label %bb36
bb35:
  %t218 = load ptr, ptr %l0, !tbaa !29
  %t219 = load i32, ptr %l1, !tbaa !23
  %t220 = load ptr, ptr %l7, !tbaa !29
  %t225 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t218, i32 %t219, ptr null, ptr %t220, i32 110)
  %t226 = extractvalue { i32, ptr } %t225, 1
  %t227 = extractvalue { i32, ptr } %t225, 0
  store i32 %t227, ptr %l98
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb38, label %ok.229, !prof !99
ok.229:
  store ptr %t226, ptr %l97
  br label %bb37
bb36:
  br label %bb40
bb37:
  %t230 = load ptr, ptr %l97, !tbaa !29
  store ptr %t230, ptr %l92, !tbaa !29
  br label %bb39
bb38:
  %t231 = load i32, ptr %l98, !tbaa !23
  %t232 = lshr i32 %t231, 16
  %t233 = and i32 %t231, 65535
  %t234 = icmp eq i32 %t232, 1
  %t235 = select i1 %t234, i32 1, i32 0
  %t236 = icmp eq i32 %t231, 0
  %t237 = shl i32 %t235, 16
  %t238 = or i32 %t237, %t233
  %t239 = select i1 %t236, i32 0, i32 %t238
  %t240 = load ptr, ptr %l0, !tbaa !29
  store ptr %t240, ptr %l100, !tbaa !29
  %t241 = load ptr, ptr %l100, !tbaa !29
  %t242 = getelementptr %"compiler/parse:Parser", ptr %t241, i32 0, i32 18
  %t243 = load i64, ptr %t242, !tbaa !24
  %t245 = sub i64 %t243, 1
  %t247 = load ptr, ptr %l100, !tbaa !29
  %t248 = getelementptr %"compiler/parse:Parser", ptr %t247, i32 0, i32 18
  store i64 %t245, ptr %t248, !tbaa !24
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i1, ptr %l2, !tbaa !21
  %t253 = getelementptr %"compiler/parse:Parser", ptr %t249, i32 0, i32 11
  store i1 %t250, ptr %t253, !tbaa !21
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i1, ptr %l3, !tbaa !21
  %t258 = getelementptr %"compiler/parse:Parser", ptr %t254, i32 0, i32 19
  store i1 %t255, ptr %t258, !tbaa !21
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i1, ptr %l4, !tbaa !21
  %t263 = getelementptr %"compiler/parse:Parser", ptr %t259, i32 0, i32 20
  store i1 %t260, ptr %t263, !tbaa !21
  %t265 = insertvalue { i32, ptr } zeroinitializer, i32 %t239, 0
  store { i32, ptr } %t265, ptr %rv
  br label %ret
bb39:
  %t266 = load ptr, ptr %l0, !tbaa !29
  store ptr %t266, ptr %l109, !tbaa !29
  %t267 = load ptr, ptr %l109, !tbaa !29
  %t268 = getelementptr %"compiler/parse:Parser", ptr %t267, i32 0, i32 18
  %t269 = load i64, ptr %t268, !tbaa !24
  %t271 = sub i64 %t269, 1
  %t273 = load ptr, ptr %l109, !tbaa !29
  %t274 = getelementptr %"compiler/parse:Parser", ptr %t273, i32 0, i32 18
  store i64 %t271, ptr %t274, !tbaa !24
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t276 = load i1, ptr %l2, !tbaa !21
  %t279 = getelementptr %"compiler/parse:Parser", ptr %t275, i32 0, i32 11
  store i1 %t276, ptr %t279, !tbaa !21
  %t280 = load ptr, ptr %l0, !tbaa !29
  %t281 = load i1, ptr %l3, !tbaa !21
  %t284 = getelementptr %"compiler/parse:Parser", ptr %t280, i32 0, i32 19
  store i1 %t281, ptr %t284, !tbaa !21
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load i1, ptr %l4, !tbaa !21
  %t289 = getelementptr %"compiler/parse:Parser", ptr %t285, i32 0, i32 20
  store i1 %t286, ptr %t289, !tbaa !21
  %t290 = load ptr, ptr %l92, !tbaa !29
  %t291 = insertvalue { i32, ptr } zeroinitializer, ptr %t290, 1
  store { i32, ptr } %t291, ptr %rv
  br label %ret
bb40:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t295 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t292, i32 78)
  store i1 %t295, ptr %l120
  br label %bb41
bb41:
  %t296 = load i1, ptr %l120, !tbaa !21
  store i1 %t296, ptr %l8, !tbaa !21
  %t297 = load i1, ptr %l8, !tbaa !21
  br i1 %t297, label %bb42, label %bb43
bb42:
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load ptr, ptr %l7, !tbaa !29
  %t303 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v1, ptr %v1, ptr %t299, ptr %t300)
  %t304 = extractvalue { i32, ptr } %t303, 1
  %t305 = extractvalue { i32, ptr } %t303, 0
  store i32 %t305, ptr %l126
  %t306 = icmp ne i32 %t305, 0
  br i1 %t306, label %bb45, label %ok.307, !prof !99
ok.307:
  store ptr %t304, ptr %l125
  br label %bb44
bb43:
  br label %bb47
bb44:
  %t308 = load ptr, ptr %l125, !tbaa !29
  store ptr %t308, ptr %l122, !tbaa !29
  br label %bb46
bb45:
  %t309 = load i32, ptr %l126, !tbaa !23
  %t310 = lshr i32 %t309, 16
  %t311 = and i32 %t309, 65535
  %t312 = icmp eq i32 %t310, 1
  %t313 = select i1 %t312, i32 1, i32 0
  %t314 = icmp eq i32 %t309, 0
  %t315 = shl i32 %t313, 16
  %t316 = or i32 %t315, %t311
  %t317 = select i1 %t314, i32 0, i32 %t316
  %t318 = load ptr, ptr %l0, !tbaa !29
  store ptr %t318, ptr %l128, !tbaa !29
  %t319 = load ptr, ptr %l128, !tbaa !29
  %t320 = getelementptr %"compiler/parse:Parser", ptr %t319, i32 0, i32 18
  %t321 = load i64, ptr %t320, !tbaa !24
  %t323 = sub i64 %t321, 1
  %t325 = load ptr, ptr %l128, !tbaa !29
  %t326 = getelementptr %"compiler/parse:Parser", ptr %t325, i32 0, i32 18
  store i64 %t323, ptr %t326, !tbaa !24
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load i1, ptr %l2, !tbaa !21
  %t331 = getelementptr %"compiler/parse:Parser", ptr %t327, i32 0, i32 11
  store i1 %t328, ptr %t331, !tbaa !21
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i1, ptr %l3, !tbaa !21
  %t336 = getelementptr %"compiler/parse:Parser", ptr %t332, i32 0, i32 19
  store i1 %t333, ptr %t336, !tbaa !21
  %t337 = load ptr, ptr %l0, !tbaa !29
  %t338 = load i1, ptr %l4, !tbaa !21
  %t341 = getelementptr %"compiler/parse:Parser", ptr %t337, i32 0, i32 20
  store i1 %t338, ptr %t341, !tbaa !21
  %t343 = insertvalue { i32, ptr } zeroinitializer, i32 %t317, 0
  store { i32, ptr } %t343, ptr %rv
  br label %ret
bb46:
  %t344 = load ptr, ptr %l122, !tbaa !29
  store ptr %t344, ptr %l7, !tbaa !29
  br label %bb47
bb47:
  %t345 = load i1, ptr %l8, !tbaa !21
  br i1 %t345, label %bb48, label %bb49
bb48:
  %t347 = load ptr, ptr %l0, !tbaa !29
  %t349 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %t347)
  store i1 %t349, ptr %l140
  br label %bb50
bb49:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb51
bb50:
  %t350 = load i1, ptr %l140, !tbaa !21
  store i1 %t350, ptr %l138, !tbaa !21
  br label %bb51
bb51:
  %t351 = load i1, ptr %l138, !tbaa !21
  br i1 %t351, label %bb52, label %bb53
bb52:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load i32, ptr %l1, !tbaa !23
  %t354 = load ptr, ptr %l7, !tbaa !29
  %t359 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v1, ptr %v1, ptr %v1, ptr %t352, i32 %t353, ptr null, ptr %t354, i32 110)
  %t360 = extractvalue { i32, ptr } %t359, 1
  %t361 = extractvalue { i32, ptr } %t359, 0
  store i32 %t361, ptr %l147
  %t362 = icmp ne i32 %t361, 0
  br i1 %t362, label %bb55, label %ok.363, !prof !99
ok.363:
  store ptr %t360, ptr %l146
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t364 = load ptr, ptr %l146, !tbaa !29
  store ptr %t364, ptr %l141, !tbaa !29
  br label %bb56
bb55:
  %t365 = load i32, ptr %l147, !tbaa !23
  %t366 = lshr i32 %t365, 16
  %t367 = and i32 %t365, 65535
  %t368 = icmp eq i32 %t366, 1
  %t369 = select i1 %t368, i32 1, i32 0
  %t370 = icmp eq i32 %t365, 0
  %t371 = shl i32 %t369, 16
  %t372 = or i32 %t371, %t367
  %t373 = select i1 %t370, i32 0, i32 %t372
  %t374 = load ptr, ptr %l0, !tbaa !29
  store ptr %t374, ptr %l149, !tbaa !29
  %t375 = load ptr, ptr %l149, !tbaa !29
  %t376 = getelementptr %"compiler/parse:Parser", ptr %t375, i32 0, i32 18
  %t377 = load i64, ptr %t376, !tbaa !24
  %t379 = sub i64 %t377, 1
  %t381 = load ptr, ptr %l149, !tbaa !29
  %t382 = getelementptr %"compiler/parse:Parser", ptr %t381, i32 0, i32 18
  store i64 %t379, ptr %t382, !tbaa !24
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load i1, ptr %l2, !tbaa !21
  %t387 = getelementptr %"compiler/parse:Parser", ptr %t383, i32 0, i32 11
  store i1 %t384, ptr %t387, !tbaa !21
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i1, ptr %l3, !tbaa !21
  %t392 = getelementptr %"compiler/parse:Parser", ptr %t388, i32 0, i32 19
  store i1 %t389, ptr %t392, !tbaa !21
  %t393 = load ptr, ptr %l0, !tbaa !29
  %t394 = load i1, ptr %l4, !tbaa !21
  %t397 = getelementptr %"compiler/parse:Parser", ptr %t393, i32 0, i32 20
  store i1 %t394, ptr %t397, !tbaa !21
  %t399 = insertvalue { i32, ptr } zeroinitializer, i32 %t373, 0
  store { i32, ptr } %t399, ptr %rv
  br label %ret
bb56:
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l158, !tbaa !29
  %t401 = load ptr, ptr %l158, !tbaa !29
  %t402 = getelementptr %"compiler/parse:Parser", ptr %t401, i32 0, i32 18
  %t403 = load i64, ptr %t402, !tbaa !24
  %t405 = sub i64 %t403, 1
  %t407 = load ptr, ptr %l158, !tbaa !29
  %t408 = getelementptr %"compiler/parse:Parser", ptr %t407, i32 0, i32 18
  store i64 %t405, ptr %t408, !tbaa !24
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load i1, ptr %l2, !tbaa !21
  %t413 = getelementptr %"compiler/parse:Parser", ptr %t409, i32 0, i32 11
  store i1 %t410, ptr %t413, !tbaa !21
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load i1, ptr %l3, !tbaa !21
  %t418 = getelementptr %"compiler/parse:Parser", ptr %t414, i32 0, i32 19
  store i1 %t415, ptr %t418, !tbaa !21
  %t419 = load ptr, ptr %l0, !tbaa !29
  %t420 = load i1, ptr %l4, !tbaa !21
  %t423 = getelementptr %"compiler/parse:Parser", ptr %t419, i32 0, i32 20
  store i1 %t420, ptr %t423, !tbaa !21
  %t424 = load ptr, ptr %l141, !tbaa !29
  %t425 = insertvalue { i32, ptr } zeroinitializer, ptr %t424, 1
  store { i32, ptr } %t425, ptr %rv
  br label %ret
bb57:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/parse:Parser", ptr %t426, i32 0, i32 31
  %t429 = load ptr, ptr %l7, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t428, ptr %t429)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t435 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t432, i32 110)
  %t436 = extractvalue { i32, i1 } %t435, 1
  %t437 = extractvalue { i32, i1 } %t435, 0
  store i32 %t437, ptr %l174
  %t438 = icmp ne i32 %t437, 0
  br i1 %t438, label %bb61, label %ok.439, !prof !99
ok.439:
  store i1 %t436, ptr %l173
  br label %bb60
bb60:
  %t440 = load i1, ptr %l173, !tbaa !21
  store i1 %t440, ptr %l170, !tbaa !21
  br label %bb62
bb61:
  %t441 = load i32, ptr %l174, !tbaa !23
  %t442 = lshr i32 %t441, 16
  %t443 = and i32 %t441, 65535
  %t444 = icmp eq i32 %t442, 1
  %t445 = select i1 %t444, i32 1, i32 0
  %t446 = icmp eq i32 %t441, 0
  %t447 = shl i32 %t445, 16
  %t448 = or i32 %t447, %t443
  %t449 = select i1 %t446, i32 0, i32 %t448
  %t450 = load ptr, ptr %l0, !tbaa !29
  store ptr %t450, ptr %l176, !tbaa !29
  %t451 = load ptr, ptr %l176, !tbaa !29
  %t452 = getelementptr %"compiler/parse:Parser", ptr %t451, i32 0, i32 18
  %t453 = load i64, ptr %t452, !tbaa !24
  %t455 = sub i64 %t453, 1
  %t457 = load ptr, ptr %l176, !tbaa !29
  %t458 = getelementptr %"compiler/parse:Parser", ptr %t457, i32 0, i32 18
  store i64 %t455, ptr %t458, !tbaa !24
  %t459 = load ptr, ptr %l0, !tbaa !29
  %t460 = load i1, ptr %l2, !tbaa !21
  %t463 = getelementptr %"compiler/parse:Parser", ptr %t459, i32 0, i32 11
  store i1 %t460, ptr %t463, !tbaa !21
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load i1, ptr %l3, !tbaa !21
  %t468 = getelementptr %"compiler/parse:Parser", ptr %t464, i32 0, i32 19
  store i1 %t465, ptr %t468, !tbaa !21
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load i1, ptr %l4, !tbaa !21
  %t473 = getelementptr %"compiler/parse:Parser", ptr %t469, i32 0, i32 20
  store i1 %t470, ptr %t473, !tbaa !21
  %t475 = insertvalue { i32, ptr } zeroinitializer, i32 %t449, 0
  store { i32, ptr } %t475, ptr %rv
  br label %ret
bb62:
  %t476 = load i1, ptr %l170, !tbaa !21
  %t477 = xor i1 %t476, true
  br i1 %t477, label %bb63, label %bb64
bb63:
  br label %bb77
bb64:
  br label %bb65
bb65:
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t481 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v0, ptr %t479)
  %t482 = extractvalue { i32, ptr } %t481, 1
  %t483 = extractvalue { i32, ptr } %t481, 0
  store i32 %t483, ptr %l189
  %t484 = icmp ne i32 %t483, 0
  br i1 %t484, label %bb67, label %ok.485, !prof !99
ok.485:
  store ptr %t482, ptr %l188
  br label %bb66
bb66:
  %t486 = load ptr, ptr %l188, !tbaa !29
  store ptr %t486, ptr %l186, !tbaa !29
  br label %bb68
bb67:
  %t487 = load i32, ptr %l189, !tbaa !23
  %t488 = lshr i32 %t487, 16
  %t489 = and i32 %t487, 65535
  %t490 = icmp eq i32 %t488, 1
  %t491 = select i1 %t490, i32 1, i32 0
  %t492 = icmp eq i32 %t487, 0
  %t493 = shl i32 %t491, 16
  %t494 = or i32 %t493, %t489
  %t495 = select i1 %t492, i32 0, i32 %t494
  %t496 = load ptr, ptr %l0, !tbaa !29
  store ptr %t496, ptr %l191, !tbaa !29
  %t497 = load ptr, ptr %l191, !tbaa !29
  %t498 = getelementptr %"compiler/parse:Parser", ptr %t497, i32 0, i32 18
  %t499 = load i64, ptr %t498, !tbaa !24
  %t501 = sub i64 %t499, 1
  %t503 = load ptr, ptr %l191, !tbaa !29
  %t504 = getelementptr %"compiler/parse:Parser", ptr %t503, i32 0, i32 18
  store i64 %t501, ptr %t504, !tbaa !24
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t506 = load i1, ptr %l2, !tbaa !21
  %t509 = getelementptr %"compiler/parse:Parser", ptr %t505, i32 0, i32 11
  store i1 %t506, ptr %t509, !tbaa !21
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load i1, ptr %l3, !tbaa !21
  %t514 = getelementptr %"compiler/parse:Parser", ptr %t510, i32 0, i32 19
  store i1 %t511, ptr %t514, !tbaa !21
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t516 = load i1, ptr %l4, !tbaa !21
  %t519 = getelementptr %"compiler/parse:Parser", ptr %t515, i32 0, i32 20
  store i1 %t516, ptr %t519, !tbaa !21
  %t521 = insertvalue { i32, ptr } zeroinitializer, i32 %t495, 0
  store { i32, ptr } %t521, ptr %rv
  br label %ret
bb68:
  %t522 = load ptr, ptr %l186, !tbaa !29
  store ptr %t522, ptr %l9, !tbaa !29
  %t523 = load i1, ptr %l8, !tbaa !21
  br i1 %t523, label %bb69, label %bb70
bb69:
  %t525 = load ptr, ptr %l0, !tbaa !29
  %t526 = load ptr, ptr %l9, !tbaa !29
  %t529 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v0, ptr %v0, ptr %t525, ptr %t526)
  %t530 = extractvalue { i32, ptr } %t529, 1
  %t531 = extractvalue { i32, ptr } %t529, 0
  store i32 %t531, ptr %l205
  %t532 = icmp ne i32 %t531, 0
  br i1 %t532, label %bb72, label %ok.533, !prof !99
ok.533:
  store ptr %t530, ptr %l204
  br label %bb71
bb70:
  br label %bb74
bb71:
  %t534 = load ptr, ptr %l204, !tbaa !29
  store ptr %t534, ptr %l201, !tbaa !29
  br label %bb73
bb72:
  %t535 = load i32, ptr %l205, !tbaa !23
  %t536 = lshr i32 %t535, 16
  %t537 = and i32 %t535, 65535
  %t538 = icmp eq i32 %t536, 1
  %t539 = select i1 %t538, i32 1, i32 0
  %t540 = icmp eq i32 %t535, 0
  %t541 = shl i32 %t539, 16
  %t542 = or i32 %t541, %t537
  %t543 = select i1 %t540, i32 0, i32 %t542
  %t544 = load ptr, ptr %l0, !tbaa !29
  store ptr %t544, ptr %l207, !tbaa !29
  %t545 = load ptr, ptr %l207, !tbaa !29
  %t546 = getelementptr %"compiler/parse:Parser", ptr %t545, i32 0, i32 18
  %t547 = load i64, ptr %t546, !tbaa !24
  %t549 = sub i64 %t547, 1
  %t551 = load ptr, ptr %l207, !tbaa !29
  %t552 = getelementptr %"compiler/parse:Parser", ptr %t551, i32 0, i32 18
  store i64 %t549, ptr %t552, !tbaa !24
  %t553 = load ptr, ptr %l0, !tbaa !29
  %t554 = load i1, ptr %l2, !tbaa !21
  %t557 = getelementptr %"compiler/parse:Parser", ptr %t553, i32 0, i32 11
  store i1 %t554, ptr %t557, !tbaa !21
  %t558 = load ptr, ptr %l0, !tbaa !29
  %t559 = load i1, ptr %l3, !tbaa !21
  %t562 = getelementptr %"compiler/parse:Parser", ptr %t558, i32 0, i32 19
  store i1 %t559, ptr %t562, !tbaa !21
  %t563 = load ptr, ptr %l0, !tbaa !29
  %t564 = load i1, ptr %l4, !tbaa !21
  %t567 = getelementptr %"compiler/parse:Parser", ptr %t563, i32 0, i32 20
  store i1 %t564, ptr %t567, !tbaa !21
  %t569 = insertvalue { i32, ptr } zeroinitializer, i32 %t543, 0
  store { i32, ptr } %t569, ptr %rv
  br label %ret
bb73:
  %t570 = load ptr, ptr %l201, !tbaa !29
  store ptr %t570, ptr %l9, !tbaa !29
  br label %bb74
bb74:
  %t571 = load ptr, ptr %l0, !tbaa !29
  %t573 = getelementptr %"compiler/parse:Parser", ptr %t571, i32 0, i32 31
  %t574 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t573, ptr %t574)
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb59
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t577 = load ptr, ptr %l0, !tbaa !29
  %t580 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t577, i32 110)
  store i1 %t580, ptr %l221
  br label %bb80
bb80:
  %t581 = load i1, ptr %l221, !tbaa !21
  %t582 = xor i1 %t581, true
  br i1 %t582, label %bb81, label %bb82
bb81:
  store %olang.scope zeroinitializer, ptr %s30
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t586 = getelementptr %"compiler/parse:Parser", ptr %t584, i32 0, i32 31
  %t587 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t586, i64 %t587)
  br label %bb83
bb82:
  br label %bb88
bb83:
  %t590 = load ptr, ptr %l0, !tbaa !29
  store ptr %t590, ptr %l226, !tbaa !29
  %t592 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s30, i32 110)
  store { i64, ptr } %t592, ptr %l228
  br label %bb84
bb84:
  %t593 = load { i64, ptr }, ptr %l228, !tbaa !27
  %t594 = extractvalue { i64, ptr } %t593, 0
  %t595 = extractvalue { i64, ptr } %t593, 1
  %t596 = mul i64 %t594, 1
  %t597 = call ptr @__olang_scope_alloc(ptr %s30, i64 %t596)
  call void @llvm.memcpy.p0.p0.i64(ptr %t597, ptr %t595, i64 %t596, i1 false)
  %t598 = insertvalue { i64, ptr } undef, i64 %t594, 0
  %t599 = insertvalue { i64, ptr } %t598, ptr %t597, 1
  %t600 = load ptr, ptr %l226, !tbaa !29
  %t602 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s30, ptr %t600, { i64, ptr } %t599)
  store i32 %t602, ptr %l230
  %t603 = icmp ne i32 %t602, 0
  br i1 %t603, label %bb86, label %ok.604, !prof !99
ok.604:
  br label %bb85
bb85:
  br label %bb87
bb86:
  %t605 = load i32, ptr %l230, !tbaa !23
  %t606 = lshr i32 %t605, 16
  %t607 = and i32 %t605, 65535
  %t608 = icmp eq i32 %t606, 1
  %t609 = select i1 %t608, i32 1, i32 0
  %t610 = icmp eq i32 %t605, 0
  %t611 = shl i32 %t609, 16
  %t612 = or i32 %t611, %t607
  %t613 = select i1 %t610, i32 0, i32 %t612
  call void @__olang_scope_close(ptr %s30)
  %t614 = load ptr, ptr %l0, !tbaa !29
  store ptr %t614, ptr %l232, !tbaa !29
  %t615 = load ptr, ptr %l232, !tbaa !29
  %t616 = getelementptr %"compiler/parse:Parser", ptr %t615, i32 0, i32 18
  %t617 = load i64, ptr %t616, !tbaa !24
  %t619 = sub i64 %t617, 1
  %t621 = load ptr, ptr %l232, !tbaa !29
  %t622 = getelementptr %"compiler/parse:Parser", ptr %t621, i32 0, i32 18
  store i64 %t619, ptr %t622, !tbaa !24
  %t623 = load ptr, ptr %l0, !tbaa !29
  %t624 = load i1, ptr %l2, !tbaa !21
  %t627 = getelementptr %"compiler/parse:Parser", ptr %t623, i32 0, i32 11
  store i1 %t624, ptr %t627, !tbaa !21
  %t628 = load ptr, ptr %l0, !tbaa !29
  %t629 = load i1, ptr %l3, !tbaa !21
  %t632 = getelementptr %"compiler/parse:Parser", ptr %t628, i32 0, i32 19
  store i1 %t629, ptr %t632, !tbaa !21
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i1, ptr %l4, !tbaa !21
  %t637 = getelementptr %"compiler/parse:Parser", ptr %t633, i32 0, i32 20
  store i1 %t634, ptr %t637, !tbaa !21
  %t639 = insertvalue { i32, ptr } zeroinitializer, i32 %t613, 0
  store { i32, ptr } %t639, ptr %rv
  br label %ret
bb87:
  call void @__olang_scope_close(ptr %s30)
  br label %bb88
bb88:
  %t640 = load ptr, ptr %l0, !tbaa !29
  %t642 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t640)
  store i32 %t642, ptr %l242
  br label %bb89
bb89:
  %t643 = load ptr, ptr %l0, !tbaa !29
  %t644 = load i32, ptr %l1, !tbaa !23
  %t647 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t643, i32 %t644)
  store %"compiler/source:Span" %t647, ptr %l245
  br label %bb90
bb90:
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t650 = getelementptr %"compiler/parse:Parser", ptr %t648, i32 0, i32 31
  %t651 = load i64, ptr %l5, !tbaa !24
  %t654 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t650, i64 %t651)
  store { i64, ptr } %t654, ptr %l249
  br label %bb91
bb91:
  store { i64, [4 x i64] } zeroinitializer, ptr %t655
  %t656 = getelementptr { i64, [4 x i64] }, ptr %t655, i32 0, i32 0
  store i64 17, ptr %t656
  %t657 = load %"compiler/source:Span", ptr %l245
  %t658 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t657, 0
  %t659 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t660 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t658, { i64, ptr } %t659, 1
  %t661 = getelementptr { i64, [4 x i64] }, ptr %t655, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t660, ptr %t661
  %t662 = load { i64, [4 x i64] }, ptr %t655
  %t664 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t662, ptr %t664
  %t665 = load ptr, ptr %l0, !tbaa !29
  store ptr %t665, ptr %l252, !tbaa !29
  %t666 = load ptr, ptr %l252, !tbaa !29
  %t667 = getelementptr %"compiler/parse:Parser", ptr %t666, i32 0, i32 18
  %t668 = load i64, ptr %t667, !tbaa !24
  %t670 = sub i64 %t668, 1
  %t672 = load ptr, ptr %l252, !tbaa !29
  %t673 = getelementptr %"compiler/parse:Parser", ptr %t672, i32 0, i32 18
  store i64 %t670, ptr %t673, !tbaa !24
  %t674 = load ptr, ptr %l0, !tbaa !29
  %t675 = load i1, ptr %l2, !tbaa !21
  %t678 = getelementptr %"compiler/parse:Parser", ptr %t674, i32 0, i32 11
  store i1 %t675, ptr %t678, !tbaa !21
  %t679 = load ptr, ptr %l0, !tbaa !29
  %t680 = load i1, ptr %l3, !tbaa !21
  %t683 = getelementptr %"compiler/parse:Parser", ptr %t679, i32 0, i32 19
  store i1 %t680, ptr %t683, !tbaa !21
  %t684 = load ptr, ptr %l0, !tbaa !29
  %t685 = load i1, ptr %l4, !tbaa !21
  %t688 = getelementptr %"compiler/parse:Parser", ptr %t684, i32 0, i32 20
  store i1 %t685, ptr %t688, !tbaa !21
  %t690 = insertvalue { i32, ptr } zeroinitializer, ptr %t664, 1
  store { i32, ptr } %t690, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
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
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca %"compiler/source:Span"
  %l18 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l30 = alloca i64
  %l33 = alloca i1
  %l38 = alloca ptr
  %l44 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l52 = alloca ptr
  %l58 = alloca i1
  %l60 = alloca i32
  %l65 = alloca ptr
  %l70 = alloca i32
  %l74 = alloca i32
  %l75 = alloca ptr
  %l79 = alloca ptr
  %l80 = alloca i32
  %l82 = alloca ptr
  %l89 = alloca %"compiler/source:Span"
  %l95 = alloca i32
  %l97 = alloca ptr
  %l103 = alloca ptr
  %l107 = alloca ptr
  %l108 = alloca i32
  %l110 = alloca ptr
  %l115 = alloca i1
  %l116 = alloca i1
  %l118 = alloca i32
  %l119 = alloca i1
  %l120 = alloca i1
  %l121 = alloca ptr
  %l123 = alloca i32
  %l124 = alloca i64
  %l126 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca i64
  %l135 = alloca ptr
  %l141 = alloca i32
  %l143 = alloca ptr
  %l150 = alloca i32
  %l151 = alloca i1
  %l152 = alloca i1
  %l153 = alloca ptr
  %l155 = alloca i32
  %l156 = alloca i64
  %l159 = alloca ptr
  %l161 = alloca i32
  %l163 = alloca i32
  %l165 = alloca ptr
  %l166 = alloca ptr
  %l170 = alloca ptr
  %l171 = alloca i32
  %l173 = alloca ptr
  %l178 = alloca i32
  %l180 = alloca ptr
  %l189 = alloca %"compiler/source:Span"
  %l191 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l196 = alloca %"compiler/ast:Chain"
  %l202 = alloca i1
  %l205 = alloca i1
  %l208 = alloca ptr
  %l210 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca ptr
  %l215 = alloca %"compiler/source:Span"
  %l217 = alloca i1
  %l219 = alloca ptr
  %l221 = alloca %"compiler/source:Span"
  %l225 = alloca %"compiler/source:Span"
  %l232 = alloca i32
  %l234 = alloca ptr
  %s19 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t185 = alloca { i64, [4 x i64] }, align 8
  %t469 = alloca { i64, [4 x i64] }, align 8
  %t542 = alloca { i64, [4 x i64] }, align 8
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
  store %"compiler/source:Span" %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/source:Span", ptr %l14, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l4, !tbaa !23
  store i64 0, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 51
  %t12 = load i1, ptr %t11, !tbaa !21
  br i1 %t12, label %bb3, label %bb4
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  store i1 %t16, ptr %l18, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l18, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/parse:Parser", ptr %t19, i32 0, i32 52
  store ptr %t21, ptr %l22, !tbaa !29
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l23, !tbaa !29
  %t23 = load ptr, ptr %l23, !tbaa !29
  %t24 = call ptr @__olang_scope_of(ptr %t23, ptr null)
  %t25 = ptrtoint ptr %t24 to i64
  %t27 = inttoptr i64 %t25 to ptr
  %t28 = load ptr, ptr %l23, !tbaa !29
  %t29 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %t27, ptr %t28)
  store %"compiler/source:Span" %t29, ptr %l25
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t30 = load ptr, ptr %l22, !tbaa !29
  %t31 = load %"compiler/source:Span", ptr %l25
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t30, %"compiler/source:Span" %t31)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t32)
  store i32 %t34, ptr %l27
  br label %bb11
bb11:
  %t35 = load i32, ptr %l27, !range !{i32 0, i32 113}
  store i32 %t35, ptr %l6
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t40 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %t36, i32 %t37)
  store i64 %t40, ptr %l30
  br label %bb12
bb12:
  %t41 = load i64, ptr %l30, !tbaa !24
  store i64 %t41, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = icmp eq i64 %t42, 0
  br i1 %t44, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb15
bb14:
  %t46 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %a2
  store i1 %t50, ptr %l33, !tbaa !21
  br label %bb15
bb15:
  %t52 = load i1, ptr %l33, !tbaa !21
  br i1 %t52, label %bb16, label %bb17
bb16:
  %t53 = load ptr, ptr %l3, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l38, !tbaa !29
  %t55 = load ptr, ptr %l38, !tbaa !29
  %t56 = getelementptr %"compiler/parse:Parser", ptr %t55, i32 0, i32 21
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr %l5, !tbaa !24
  %t61 = sub i64 %t57, %t58
  %t63 = load ptr, ptr %l38, !tbaa !29
  %t64 = getelementptr %"compiler/parse:Parser", ptr %t63, i32 0, i32 21
  store i64 %t61, ptr %t64, !tbaa !24
  %t66 = insertvalue { i32, ptr } zeroinitializer, ptr %t53, 1
  store { i32, ptr } %t66, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t67 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t69 = trunc i64 73 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb19, label %bb20
bb19:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/parse:Parser", ptr %t72, i32 0, i32 19
  %t75 = load i1, ptr %t74, !tbaa !21
  %t77 = xor i1 %t75, true
  store i1 %t77, ptr %l44, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb21
bb21:
  %t79 = load i1, ptr %l44, !tbaa !21
  br i1 %t79, label %bb22, label %bb23
bb22:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t80)
  store i1 %t82, ptr %l50
  br label %bb24
bb23:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb25
bb24:
  %t83 = load i1, ptr %l50, !tbaa !21
  store i1 %t83, ptr %l48, !tbaa !21
  br label %bb25
bb25:
  %t84 = load i1, ptr %l48, !tbaa !21
  br i1 %t84, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l52, !tbaa !29
  %t87 = load ptr, ptr %l52, !tbaa !29
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t87, i32 0, i32 21
  %t89 = load i64, ptr %t88, !tbaa !24
  %t90 = load i64, ptr %l5, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t95 = load ptr, ptr %l52, !tbaa !29
  %t96 = getelementptr %"compiler/parse:Parser", ptr %t95, i32 0, i32 21
  store i64 %t93, ptr %t96, !tbaa !24
  %t98 = insertvalue { i32, ptr } zeroinitializer, ptr %t85, 1
  store { i32, ptr } %t98, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  %t99 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t101 = trunc i64 47 to i32
  %t102 = icmp eq i32 %t99, %t101
  br i1 %t102, label %bb29, label %bb30
bb29:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t104, i64 1)
  store i32 %t106, ptr %l60
  br label %bb31
bb30:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb32
bb31:
  %t107 = load i32, ptr %l60, !range !{i32 0, i32 113}
  %t109 = trunc i64 27 to i32
  %t110 = icmp eq i32 %t107, %t109
  %t112 = xor i1 %t110, true
  store i1 %t112, ptr %l58, !tbaa !21
  br label %bb32
bb32:
  %t114 = load i1, ptr %l58, !tbaa !21
  br i1 %t114, label %bb33, label %bb34
bb33:
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t116 = load ptr, ptr %l0, !tbaa !29
  store ptr %t116, ptr %l65, !tbaa !29
  %t117 = load ptr, ptr %l65, !tbaa !29
  %t118 = getelementptr %"compiler/parse:Parser", ptr %t117, i32 0, i32 21
  %t119 = load i64, ptr %t118, !tbaa !24
  %t120 = load i64, ptr %l5, !tbaa !24
  %t123 = sub i64 %t119, %t120
  %t125 = load ptr, ptr %l65, !tbaa !29
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
  store i32 %t131, ptr %l70
  br label %bb36
bb36:
  %t132 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t134 = trunc i64 47 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb37, label %bb38
bb37:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t137)
  store i32 %t139, ptr %l74
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
  store i32 %t148, ptr %l80
  %t149 = icmp ne i32 %t148, 0
  br i1 %t149, label %bb41, label %ok.150, !prof !99
ok.150:
  store ptr %t147, ptr %l79
  br label %bb40
bb40:
  %t151 = load ptr, ptr %l79, !tbaa !29
  store ptr %t151, ptr %l75, !tbaa !29
  br label %bb42
bb41:
  %t152 = load i32, ptr %l80, !tbaa !23
  %t153 = lshr i32 %t152, 16
  %t154 = and i32 %t152, 65535
  %t155 = icmp eq i32 %t153, 1
  %t156 = select i1 %t155, i32 1, i32 0
  %t157 = icmp eq i32 %t152, 0
  %t158 = shl i32 %t156, 16
  %t159 = or i32 %t158, %t154
  %t160 = select i1 %t157, i32 0, i32 %t159
  %t161 = load ptr, ptr %l0, !tbaa !29
  store ptr %t161, ptr %l82, !tbaa !29
  %t162 = load ptr, ptr %l82, !tbaa !29
  %t163 = getelementptr %"compiler/parse:Parser", ptr %t162, i32 0, i32 21
  %t164 = load i64, ptr %t163, !tbaa !24
  %t165 = load i64, ptr %l5, !tbaa !24
  %t168 = sub i64 %t164, %t165
  %t170 = load ptr, ptr %l82, !tbaa !29
  %t171 = getelementptr %"compiler/parse:Parser", ptr %t170, i32 0, i32 21
  store i64 %t168, ptr %t171, !tbaa !24
  %t173 = insertvalue { i32, ptr } zeroinitializer, i32 %t160, 0
  store { i32, ptr } %t173, ptr %rv
  br label %ret
bb42:
  %t174 = load ptr, ptr %l75, !tbaa !29
  store ptr %t174, ptr %l8, !tbaa !29
  %t175 = load i32, ptr %l4, !tbaa !23
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/parse:Parser", ptr %t176, i32 0, i32 10
  %t179 = load i32, ptr %t178, !tbaa !23
  %t182 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t175, i32 %t179)
  store %"compiler/source:Span" %t182, ptr %l89
  br label %bb43
bb43:
  %t183 = load ptr, ptr %l3, !tbaa !29
  %t184 = load ptr, ptr %l8, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t185
  %t186 = getelementptr { i64, [4 x i64] }, ptr %t185, i32 0, i32 0
  store i64 6, ptr %t186
  %t187 = load %"compiler/source:Span", ptr %l89
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
  store i32 %t200, ptr %l95
  %t201 = icmp ne i32 %t200, 0
  br i1 %t201, label %bb45, label %ok.202, !prof !99
ok.202:
  br label %bb44
bb44:
  br label %bb46
bb45:
  %t203 = load i32, ptr %l95, !tbaa !23
  %t204 = lshr i32 %t203, 16
  %t205 = and i32 %t203, 65535
  %t206 = icmp eq i32 %t204, 1
  %t207 = select i1 %t206, i32 1, i32 0
  %t208 = icmp eq i32 %t203, 0
  %t209 = shl i32 %t207, 16
  %t210 = or i32 %t209, %t205
  %t211 = select i1 %t208, i32 0, i32 %t210
  %t212 = load ptr, ptr %l0, !tbaa !29
  store ptr %t212, ptr %l97, !tbaa !29
  %t213 = load ptr, ptr %l97, !tbaa !29
  %t214 = getelementptr %"compiler/parse:Parser", ptr %t213, i32 0, i32 21
  %t215 = load i64, ptr %t214, !tbaa !24
  %t216 = load i64, ptr %l5, !tbaa !24
  %t219 = sub i64 %t215, %t216
  %t221 = load ptr, ptr %l97, !tbaa !29
  %t222 = getelementptr %"compiler/parse:Parser", ptr %t221, i32 0, i32 21
  store i64 %t219, ptr %t222, !tbaa !24
  %t224 = insertvalue { i32, ptr } zeroinitializer, i32 %t211, 0
  store { i32, ptr } %t224, ptr %rv
  br label %ret
bb46:
  %t225 = load i64, ptr %l5, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l5, !tbaa !24
  br label %bb125
bb47:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = load i64, ptr %l7, !tbaa !24
  %t232 = add i64 %t230, 1
  %t235 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v0, ptr %t229, i64 %t232)
  %t236 = extractvalue { i32, ptr } %t235, 1
  %t237 = extractvalue { i32, ptr } %t235, 0
  store i32 %t237, ptr %l108
  %t238 = icmp ne i32 %t237, 0
  br i1 %t238, label %bb49, label %ok.239, !prof !99
ok.239:
  store ptr %t236, ptr %l107
  br label %bb48
bb48:
  %t240 = load ptr, ptr %l107, !tbaa !29
  store ptr %t240, ptr %l103, !tbaa !29
  br label %bb50
bb49:
  %t241 = load i32, ptr %l108, !tbaa !23
  %t242 = lshr i32 %t241, 16
  %t243 = and i32 %t241, 65535
  %t244 = icmp eq i32 %t242, 1
  %t245 = select i1 %t244, i32 1, i32 0
  %t246 = icmp eq i32 %t241, 0
  %t247 = shl i32 %t245, 16
  %t248 = or i32 %t247, %t243
  %t249 = select i1 %t246, i32 0, i32 %t248
  %t250 = load ptr, ptr %l0, !tbaa !29
  store ptr %t250, ptr %l110, !tbaa !29
  %t251 = load ptr, ptr %l110, !tbaa !29
  %t252 = getelementptr %"compiler/parse:Parser", ptr %t251, i32 0, i32 21
  %t253 = load i64, ptr %t252, !tbaa !24
  %t254 = load i64, ptr %l5, !tbaa !24
  %t257 = sub i64 %t253, %t254
  %t259 = load ptr, ptr %l110, !tbaa !29
  %t260 = getelementptr %"compiler/parse:Parser", ptr %t259, i32 0, i32 21
  store i64 %t257, ptr %t260, !tbaa !24
  %t262 = insertvalue { i32, ptr } zeroinitializer, i32 %t249, 0
  store { i32, ptr } %t262, ptr %rv
  br label %ret
bb50:
  %t263 = load ptr, ptr %l103, !tbaa !29
  store ptr %t263, ptr %l9, !tbaa !29
  %t264 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t266 = call i1 @compiler_2fparse_2eisOrdering(i32 %t264)
  store i1 %t266, ptr %l115
  br label %bb51
bb51:
  %t267 = load i1, ptr %l115, !tbaa !21
  br i1 %t267, label %bb52, label %bb53
bb52:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t270 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t268)
  store i32 %t270, ptr %l118
  br label %bb54
bb53:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb56
bb54:
  %t271 = load i32, ptr %l118, !range !{i32 0, i32 113}
  %t272 = call i1 @compiler_2fparse_2eisOrdering(i32 %t271)
  store i1 %t272, ptr %l119
  br label %bb55
bb55:
  %t273 = load i1, ptr %l119, !tbaa !21
  store i1 %t273, ptr %l116, !tbaa !21
  br label %bb56
bb56:
  %t274 = load i1, ptr %l116, !tbaa !21
  br i1 %t274, label %bb57, label %bb58
bb57:
  %t275 = load ptr, ptr %l0, !tbaa !29
  store ptr %t275, ptr %l121, !tbaa !29
  %t276 = load ptr, ptr %l0, !tbaa !29
  %t278 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t276)
  store i32 %t278, ptr %l123
  br label %bb59
bb58:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb61
bb59:
  %t279 = load ptr, ptr %l121, !tbaa !29
  %t280 = load i32, ptr %l123, !range !{i32 0, i32 113}
  %t281 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %t279, i32 %t280)
  store i64 %t281, ptr %l124
  br label %bb60
bb60:
  %t282 = load i64, ptr %l124, !tbaa !24
  %t283 = icmp sgt i64 %t282, 0
  store i1 %t283, ptr %l120, !tbaa !21
  br label %bb61
bb61:
  %t285 = load i1, ptr %l120, !tbaa !21
  br i1 %t285, label %bb62, label %bb63
bb62:
  store %olang.scope zeroinitializer, ptr %s19
  %t286 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ector(ptr %s19, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %l126
  br label %bb64
bb63:
  br label %bb99
bb64:
  %t287 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l126
  %t288 = call ptr @__olang_scope_alloc_a(ptr %s19, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t287, ptr %t288
  store ptr %t288, ptr %l10, !tbaa !29
  %t290 = load ptr, ptr %l10, !tbaa !29
  %t291 = load i32, ptr %l6, !range !{i32 0, i32 113}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %s19, ptr %t290, i32 %t291)
  br label %bb65
bb65:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/parse:Parser", ptr %t294, i32 0, i32 31
  %t298 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t296)
  store i64 %t298, ptr %l132
  br label %bb66
bb66:
  %t299 = load i64, ptr %l132, !tbaa !24
  store i64 %t299, ptr %l11, !tbaa !24
  %t300 = load ptr, ptr %l0, !tbaa !29
  %t302 = getelementptr %"compiler/parse:Parser", ptr %t300, i32 0, i32 31
  %t303 = load ptr, ptr %l3, !tbaa !29
  store ptr %t303, ptr %l135, !tbaa !29
  %t304 = load ptr, ptr %l135, !tbaa !29
  %t305 = call ptr @__olang_scope_of(ptr %t304, ptr null)
  %t306 = ptrtoint ptr %t305 to i64
  %t308 = inttoptr i64 %t306 to ptr
  %t310 = load ptr, ptr %l135, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t308, ptr %t302, ptr %t310)
  br label %bb67
bb67:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/parse:Parser", ptr %t311, i32 0, i32 31
  %t314 = load ptr, ptr %l9, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t313, ptr %t314)
  br label %bb68
bb68:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t319 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t317)
  store i32 %t319, ptr %l141
  %t320 = icmp ne i32 %t319, 0
  br i1 %t320, label %bb70, label %ok.321, !prof !99
ok.321:
  br label %bb69
bb69:
  br label %bb71
bb70:
  %t322 = load i32, ptr %l141, !tbaa !23
  %t323 = lshr i32 %t322, 16
  %t324 = and i32 %t322, 65535
  %t325 = icmp eq i32 %t323, 1
  %t326 = select i1 %t325, i32 1, i32 0
  %t327 = icmp eq i32 %t322, 0
  %t328 = shl i32 %t326, 16
  %t329 = or i32 %t328, %t324
  %t330 = select i1 %t327, i32 0, i32 %t329
  call void @__olang_scope_close(ptr %s19)
  %t331 = load ptr, ptr %l0, !tbaa !29
  store ptr %t331, ptr %l143, !tbaa !29
  %t332 = load ptr, ptr %l143, !tbaa !29
  %t333 = getelementptr %"compiler/parse:Parser", ptr %t332, i32 0, i32 21
  %t334 = load i64, ptr %t333, !tbaa !24
  %t335 = load i64, ptr %l5, !tbaa !24
  %t338 = sub i64 %t334, %t335
  %t340 = load ptr, ptr %l143, !tbaa !29
  %t341 = getelementptr %"compiler/parse:Parser", ptr %t340, i32 0, i32 21
  store i64 %t338, ptr %t341, !tbaa !24
  %t343 = insertvalue { i32, ptr } zeroinitializer, i32 %t330, 0
  store { i32, ptr } %t343, ptr %rv
  br label %ret
bb71:
  %t344 = load i64, ptr %l5, !tbaa !24
  %t346 = add i64 %t344, 1
  store i64 %t346, ptr %l5, !tbaa !24
  br label %bb72
bb72:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t348)
  store i32 %t350, ptr %l150
  br label %bb73
bb73:
  %t351 = load i32, ptr %l150, !range !{i32 0, i32 113}
  %t352 = call i1 @compiler_2fparse_2eisOrdering(i32 %t351)
  store i1 %t352, ptr %l151
  br label %bb74
bb74:
  %t353 = load i1, ptr %l151, !tbaa !21
  br i1 %t353, label %bb75, label %bb76
bb75:
  %t354 = load ptr, ptr %l0, !tbaa !29
  store ptr %t354, ptr %l153, !tbaa !29
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t357 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t355)
  store i32 %t357, ptr %l155
  br label %bb77
bb76:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb79
bb77:
  %t358 = load ptr, ptr %l153, !tbaa !29
  %t359 = load i32, ptr %l155, !range !{i32 0, i32 113}
  %t360 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %t358, i32 %t359)
  store i64 %t360, ptr %l156
  br label %bb78
bb78:
  %t361 = load i64, ptr %l156, !tbaa !24
  %t362 = icmp sgt i64 %t361, 0
  store i1 %t362, ptr %l152, !tbaa !21
  br label %bb79
bb79:
  %t364 = load i1, ptr %l152, !tbaa !21
  %t365 = xor i1 %t364, true
  br i1 %t365, label %bb80, label %bb81
bb80:
  br label %bb94
bb81:
  br label %bb82
bb82:
  %t367 = load ptr, ptr %l10, !tbaa !29
  store ptr %t367, ptr %l159, !tbaa !29
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t370 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t368)
  store i32 %t370, ptr %l161
  br label %bb83
bb83:
  %t371 = load ptr, ptr %l159, !tbaa !29
  %t372 = load i32, ptr %l161, !range !{i32 0, i32 113}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %s19, ptr %t371, i32 %t372)
  br label %bb84
bb84:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t375 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t373)
  store i32 %t375, ptr %l163
  br label %bb85
bb85:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t378 = getelementptr %"compiler/parse:Parser", ptr %t376, i32 0, i32 31
  store ptr %t378, ptr %l165, !tbaa !29
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load i64, ptr %l7, !tbaa !24
  %t382 = add i64 %t380, 1
  %t385 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v0, ptr %t379, i64 %t382)
  %t386 = extractvalue { i32, ptr } %t385, 1
  %t387 = extractvalue { i32, ptr } %t385, 0
  store i32 %t387, ptr %l171
  %t388 = icmp ne i32 %t387, 0
  br i1 %t388, label %bb87, label %ok.389, !prof !99
ok.389:
  store ptr %t386, ptr %l170
  br label %bb86
bb86:
  %t390 = load ptr, ptr %l170, !tbaa !29
  store ptr %t390, ptr %l166, !tbaa !29
  br label %bb88
bb87:
  %t391 = load i32, ptr %l171, !tbaa !23
  %t392 = lshr i32 %t391, 16
  %t393 = and i32 %t391, 65535
  %t394 = icmp eq i32 %t392, 1
  %t395 = select i1 %t394, i32 1, i32 0
  %t396 = icmp eq i32 %t391, 0
  %t397 = shl i32 %t395, 16
  %t398 = or i32 %t397, %t393
  %t399 = select i1 %t396, i32 0, i32 %t398
  call void @__olang_scope_close(ptr %s19)
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l173, !tbaa !29
  %t401 = load ptr, ptr %l173, !tbaa !29
  %t402 = getelementptr %"compiler/parse:Parser", ptr %t401, i32 0, i32 21
  %t403 = load i64, ptr %t402, !tbaa !24
  %t404 = load i64, ptr %l5, !tbaa !24
  %t407 = sub i64 %t403, %t404
  %t409 = load ptr, ptr %l173, !tbaa !29
  %t410 = getelementptr %"compiler/parse:Parser", ptr %t409, i32 0, i32 21
  store i64 %t407, ptr %t410, !tbaa !24
  %t412 = insertvalue { i32, ptr } zeroinitializer, i32 %t399, 0
  store { i32, ptr } %t412, ptr %rv
  br label %ret
bb88:
  %t413 = load ptr, ptr %l165, !tbaa !29
  %t414 = load ptr, ptr %l166, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t413, ptr %t414)
  br label %bb89
bb89:
  %t415 = load ptr, ptr %l0, !tbaa !29
  %t417 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t415)
  store i32 %t417, ptr %l178
  %t418 = icmp ne i32 %t417, 0
  br i1 %t418, label %bb91, label %ok.419, !prof !99
ok.419:
  br label %bb90
bb90:
  br label %bb92
bb91:
  %t420 = load i32, ptr %l178, !tbaa !23
  %t421 = lshr i32 %t420, 16
  %t422 = and i32 %t420, 65535
  %t423 = icmp eq i32 %t421, 1
  %t424 = select i1 %t423, i32 1, i32 0
  %t425 = icmp eq i32 %t420, 0
  %t426 = shl i32 %t424, 16
  %t427 = or i32 %t426, %t422
  %t428 = select i1 %t425, i32 0, i32 %t427
  call void @__olang_scope_close(ptr %s19)
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l180, !tbaa !29
  %t430 = load ptr, ptr %l180, !tbaa !29
  %t431 = getelementptr %"compiler/parse:Parser", ptr %t430, i32 0, i32 21
  %t432 = load i64, ptr %t431, !tbaa !24
  %t433 = load i64, ptr %l5, !tbaa !24
  %t436 = sub i64 %t432, %t433
  %t438 = load ptr, ptr %l180, !tbaa !29
  %t439 = getelementptr %"compiler/parse:Parser", ptr %t438, i32 0, i32 21
  store i64 %t436, ptr %t439, !tbaa !24
  %t441 = insertvalue { i32, ptr } zeroinitializer, i32 %t428, 0
  store { i32, ptr } %t441, ptr %rv
  br label %ret
bb92:
  %t442 = load i64, ptr %l5, !tbaa !24
  %t444 = add i64 %t442, 1
  store i64 %t444, ptr %l5, !tbaa !24
  br label %bb93
bb93:
  br label %bb72
bb94:
  %t446 = load i32, ptr %l4, !tbaa !23
  %t447 = load ptr, ptr %l0, !tbaa !29
  %t449 = getelementptr %"compiler/parse:Parser", ptr %t447, i32 0, i32 10
  %t450 = load i32, ptr %t449, !tbaa !23
  %t453 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t446, i32 %t450)
  store %"compiler/source:Span" %t453, ptr %l189
  br label %bb95
bb95:
  %t454 = load ptr, ptr %l10, !tbaa !29
  %t456 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eToArray_3ccompiler_2ftoken_3aTok_3e(ptr %s19, ptr %v2, ptr %t454)
  store { i64, ptr } %t456, ptr %l191
  br label %bb96
bb96:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/parse:Parser", ptr %t457, i32 0, i32 31
  %t460 = load i64, ptr %l11, !tbaa !24
  %t463 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t459, i64 %t460)
  store { i64, ptr } %t463, ptr %l195
  br label %bb97
bb97:
  %t464 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t465 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t466 = call %"compiler/ast:Chain" @compiler_2fast_3aChain_2ector(ptr %v2, ptr %v0, ptr %v2, { i64, ptr } %t464, { i64, ptr } %t465)
  store %"compiler/ast:Chain" %t466, ptr %l196
  br label %bb98
bb98:
  %t467 = load %"compiler/ast:Chain", ptr %l196
  %t468 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/ast:Chain" %t467, ptr %t468
  store { i64, [4 x i64] } zeroinitializer, ptr %t469
  %t470 = getelementptr { i64, [4 x i64] }, ptr %t469, i32 0, i32 0
  store i64 7, ptr %t470
  %t471 = load %"compiler/source:Span", ptr %l189
  %t472 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t471, 0
  %t474 = insertvalue { %"compiler/source:Span", ptr } %t472, ptr %t468, 1
  %t475 = getelementptr { i64, [4 x i64] }, ptr %t469, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t474, ptr %t475
  %t476 = load { i64, [4 x i64] }, ptr %t469
  %t478 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t476, ptr %t478
  store ptr %t478, ptr %l3, !tbaa !29
  call void @__olang_scope_close(ptr %s19)
  br label %bb125
bb99:
  %t480 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t482 = trunc i64 100 to i32
  %t483 = icmp eq i32 %t480, %t482
  br i1 %t483, label %bb100, label %bb101
bb100:
  store i1 true, ptr %l202, !tbaa !21
  br label %bb102
bb101:
  %t485 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t487 = trunc i64 101 to i32
  %t488 = icmp eq i32 %t485, %t487
  store i1 %t488, ptr %l202, !tbaa !21
  br label %bb102
bb102:
  %t490 = load i1, ptr %l202, !tbaa !21
  br i1 %t490, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l205, !tbaa !21
  br label %bb105
bb104:
  %t491 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t493 = trunc i64 102 to i32
  %t494 = icmp eq i32 %t491, %t493
  store i1 %t494, ptr %l205, !tbaa !21
  br label %bb105
bb105:
  %t496 = load i1, ptr %l205, !tbaa !21
  br i1 %t496, label %bb106, label %bb107
bb106:
  %t497 = load ptr, ptr %l3, !tbaa !29
  store ptr %t497, ptr %l208, !tbaa !29
  %t498 = load ptr, ptr %l208, !tbaa !29
  %t499 = call ptr @__olang_scope_of(ptr %t498, ptr null)
  %t500 = ptrtoint ptr %t499 to i64
  %t502 = inttoptr i64 %t500 to ptr
  %t503 = load ptr, ptr %l208, !tbaa !29
  %t504 = call i1 @compiler_2fparse_2ecomparison(ptr %t502, ptr %t503)
  store i1 %t504, ptr %l210
  br label %bb108
bb107:
  br label %bb120
bb108:
  %t505 = load i1, ptr %l210, !tbaa !21
  br i1 %t505, label %bb109, label %bb110
bb109:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t508 = getelementptr %"compiler/parse:Parser", ptr %t506, i32 0, i32 45
  store ptr %t508, ptr %l212, !tbaa !29
  %t509 = load ptr, ptr %l3, !tbaa !29
  store ptr %t509, ptr %l213, !tbaa !29
  %t510 = load ptr, ptr %l213, !tbaa !29
  %t511 = call ptr @__olang_scope_of(ptr %t510, ptr null)
  %t512 = ptrtoint ptr %t511 to i64
  %t514 = inttoptr i64 %t512 to ptr
  %t515 = load ptr, ptr %l213, !tbaa !29
  %t516 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %t514, ptr %t515)
  store %"compiler/source:Span" %t516, ptr %l215
  br label %bb111
bb110:
  br label %bb113
bb111:
  %t517 = load ptr, ptr %l212, !tbaa !29
  %t518 = load %"compiler/source:Span", ptr %l215
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t517, %"compiler/source:Span" %t518)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t519 = load ptr, ptr %l9, !tbaa !29
  %t521 = call i1 @compiler_2fparse_2ecomparison(ptr %v0, ptr %t519)
  store i1 %t521, ptr %l217
  br label %bb114
bb114:
  %t522 = load i1, ptr %l217, !tbaa !21
  br i1 %t522, label %bb115, label %bb116
bb115:
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/parse:Parser", ptr %t523, i32 0, i32 45
  store ptr %t525, ptr %l219, !tbaa !29
  %t526 = load ptr, ptr %l9, !tbaa !29
  %t528 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t526)
  store %"compiler/source:Span" %t528, ptr %l221
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t529 = load ptr, ptr %l219, !tbaa !29
  %t530 = load %"compiler/source:Span", ptr %l221
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t529, %"compiler/source:Span" %t530)
  br label %bb118
bb118:
  br label %bb119
bb119:
  br label %bb120
bb120:
  %t531 = load i32, ptr %l4, !tbaa !23
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t534 = getelementptr %"compiler/parse:Parser", ptr %t532, i32 0, i32 10
  %t535 = load i32, ptr %t534, !tbaa !23
  %t538 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t531, i32 %t535)
  store %"compiler/source:Span" %t538, ptr %l225
  br label %bb121
bb121:
  %t539 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t540 = load ptr, ptr %l3, !tbaa !29
  %t541 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t542
  %t543 = getelementptr { i64, [4 x i64] }, ptr %t542, i32 0, i32 0
  store i64 5, ptr %t543
  %t544 = load %"compiler/source:Span", ptr %l225
  %t545 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t544, 0
  %t547 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t545, i32 %t539, 1
  %t549 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t547, ptr %t540, 2
  %t551 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t549, ptr %t541, 3
  %t552 = getelementptr { i64, [4 x i64] }, ptr %t542, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t551, ptr %t552
  %t553 = load { i64, [4 x i64] }, ptr %t542
  %t555 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t553, ptr %t555
  store ptr %t555, ptr %l3, !tbaa !29
  %t557 = load ptr, ptr %l0, !tbaa !29
  %t559 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t557)
  store i32 %t559, ptr %l232
  %t560 = icmp ne i32 %t559, 0
  br i1 %t560, label %bb123, label %ok.561, !prof !99
ok.561:
  br label %bb122
bb122:
  br label %bb124
bb123:
  %t562 = load i32, ptr %l232, !tbaa !23
  %t563 = lshr i32 %t562, 16
  %t564 = and i32 %t562, 65535
  %t565 = icmp eq i32 %t563, 1
  %t566 = select i1 %t565, i32 1, i32 0
  %t567 = icmp eq i32 %t562, 0
  %t568 = shl i32 %t566, 16
  %t569 = or i32 %t568, %t564
  %t570 = select i1 %t567, i32 0, i32 %t569
  %t571 = load ptr, ptr %l0, !tbaa !29
  store ptr %t571, ptr %l234, !tbaa !29
  %t572 = load ptr, ptr %l234, !tbaa !29
  %t573 = getelementptr %"compiler/parse:Parser", ptr %t572, i32 0, i32 21
  %t574 = load i64, ptr %t573, !tbaa !24
  %t575 = load i64, ptr %l5, !tbaa !24
  %t578 = sub i64 %t574, %t575
  %t580 = load ptr, ptr %l234, !tbaa !29
  %t581 = getelementptr %"compiler/parse:Parser", ptr %t580, i32 0, i32 21
  store i64 %t578, ptr %t581, !tbaa !24
  %t583 = insertvalue { i32, ptr } zeroinitializer, i32 %t570, 0
  store { i32, ptr } %t583, ptr %rv
  br label %ret
bb124:
  %t584 = load i64, ptr %l5, !tbaa !24
  %t586 = add i64 %t584, 1
  store i64 %t586, ptr %l5, !tbaa !24
  br label %bb125
bb125:
  br label %bb2
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca i1
  %l8 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i32
  %l13 = alloca %"compiler/token:Token"
  %l15 = alloca %"compiler/parse:stackMarks"
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca ptr
  %l21 = alloca i1
  %l23 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l27 = alloca i32
  %l30 = alloca i32
  %l33 = alloca %"compiler/token:Token"
  %l35 = alloca i32
  %l64 = alloca i64
  %l68 = alloca i1
  %l69 = alloca i1
  %l72 = alloca i1
  %l74 = alloca i1
  %l78 = alloca i1
  %l85 = alloca i32
  %l87 = alloca %"compiler/token:Token"
  %l96 = alloca ptr
  %l97 = alloca { i64, [3 x i64] }
  %l99 = alloca i64
  %l101 = alloca { i64, ptr }
  %l103 = alloca %"compiler/diagmsg:Msg"
  %l104 = alloca i64
  %l109 = alloca i32
  %l126 = alloca %"compiler/parse:stackMarks"
  %l134 = alloca i1
  %l135 = alloca { i64, ptr }
  %l137 = alloca { i64, ptr }
  %l138 = alloca i32
  %l151 = alloca ptr
  %l153 = alloca ptr
  %l154 = alloca i32
  %l157 = alloca i1
  %l163 = alloca i32
  %l190 = alloca ptr
  %l196 = alloca i1
  %l201 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l205 = alloca i32
  %l206 = alloca i32
  %l223 = alloca i32
  %l227 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s38 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t189 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 111)
  store i1 %t4, ptr %l21
  br label %bb1
bb1:
  %t5 = load i1, ptr %l21, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t8 = load ptr, ptr %l0, !tbaa !29
  store ptr %t8, ptr %l23, !tbaa !29
  %t10 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s1, i32 111)
  store { i64, ptr } %t10, ptr %l25
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t11 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  %t13 = extractvalue { i64, ptr } %t11, 1
  %t14 = mul i64 %t12, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t14)
  call void @llvm.memcpy.p0.p0.i64(ptr %t15, ptr %t13, i64 %t14, i1 false)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t18 = load ptr, ptr %l23, !tbaa !29
  %t20 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t18, { i64, ptr } %t17)
  store i32 %t20, ptr %l27
  %t21 = icmp ne i32 %t20, 0
  br i1 %t21, label %bb6, label %ok.22, !prof !99
ok.22:
  br label %bb5
bb5:
  br label %bb7
bb6:
  %t23 = load i32, ptr %l27, !tbaa !23
  %t24 = lshr i32 %t23, 16
  %t25 = and i32 %t23, 65535
  %t26 = icmp eq i32 %t24, 1
  %t27 = select i1 %t26, i32 1, i32 0
  %t28 = icmp eq i32 %t23, 0
  %t29 = shl i32 %t27, 16
  %t30 = or i32 %t29, %t25
  %t31 = select i1 %t28, i32 0, i32 %t30
  call void @__olang_scope_close(ptr %s1)
  %t33 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t31, 0
  store { i32, { i64, ptr } } %t33, ptr %rv
  br label %ret
bb7:
  call void @__olang_scope_close(ptr %s1)
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t34)
  store i32 %t36, ptr %l30
  %t37 = icmp ne i32 %t36, 0
  br i1 %t37, label %bb10, label %ok.38, !prof !99
ok.38:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t39 = load i32, ptr %l30, !tbaa !23
  %t40 = lshr i32 %t39, 16
  %t41 = and i32 %t39, 65535
  %t42 = icmp eq i32 %t40, 1
  %t43 = select i1 %t42, i32 1, i32 0
  %t44 = icmp eq i32 %t39, 0
  %t45 = shl i32 %t43, 16
  %t46 = or i32 %t45, %t41
  %t47 = select i1 %t44, i32 0, i32 %t46
  %t49 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t47, 0
  store { i32, { i64, ptr } } %t49, ptr %rv
  br label %ret
bb11:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t50)
  store %"compiler/token:Token" %t52, ptr %l33
  br label %bb12
bb12:
  %t53 = load %"compiler/token:Token", ptr %l33
  store %"compiler/token:Token" %t53, ptr %l1
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t54)
  store i32 %t56, ptr %l35
  br label %bb13
bb13:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/parse:Parser", ptr %t57, i32 0, i32 12
  %t60 = load i1, ptr %t59, !tbaa !21
  store i1 %t60, ptr %l2, !tbaa !21
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/parse:Parser", ptr %t63, i32 0, i32 17
  %t66 = load i1, ptr %t65, !tbaa !21
  %t69 = getelementptr %"compiler/parse:Parser", ptr %t62, i32 0, i32 12
  store i1 %t66, ptr %t69, !tbaa !21
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/parse:Parser", ptr %t70, i32 0, i32 17
  store i1 false, ptr %t72, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 18
  %t76 = load i64, ptr %t75, !tbaa !24
  store i64 %t76, ptr %l3, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/parse:Parser", ptr %t78, i32 0, i32 18
  store i64 0, ptr %t80, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/parse:Parser", ptr %t81, i32 0, i32 19
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l4, !tbaa !21
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/parse:Parser", ptr %t86, i32 0, i32 19
  store i1 false, ptr %t88, !tbaa !21
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/parse:Parser", ptr %t89, i32 0, i32 20
  %t92 = load i1, ptr %t91, !tbaa !21
  store i1 %t92, ptr %l5, !tbaa !21
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/parse:Parser", ptr %t94, i32 0, i32 20
  store i1 false, ptr %t96, !tbaa !21
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/parse:Parser", ptr %t97, i32 0, i32 14
  %t100 = load i1, ptr %t99, !tbaa !21
  store i1 %t100, ptr %l6, !tbaa !21
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/parse:Parser", ptr %t102, i32 0, i32 14
  store i1 false, ptr %t104, !tbaa !21
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/parse:Parser", ptr %t105, i32 0, i32 16
  %t108 = load i1, ptr %t107, !tbaa !21
  store i1 %t108, ptr %l7, !tbaa !21
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/parse:Parser", ptr %t110, i32 0, i32 15
  %t113 = load i1, ptr %t112, !tbaa !21
  store i1 %t113, ptr %l8, !tbaa !21
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/parse:Parser", ptr %t115, i32 0, i32 16
  store i1 false, ptr %t119, !tbaa !21
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/parse:Parser", ptr %t120, i32 0, i32 15
  store i1 false, ptr %t124, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/parse:Parser", ptr %t125, i32 0, i32 32
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t127)
  store i64 %t129, ptr %l64
  br label %bb14
bb14:
  %t130 = load i64, ptr %l64, !tbaa !24
  store i64 %t130, ptr %l11, !tbaa !24
  br label %bb15
bb15:
  %t131 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t131)
  br label %bb16
bb16:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t136 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t133, i32 112)
  store i1 %t136, ptr %l68
  br label %bb17
bb17:
  %t137 = load i1, ptr %l68, !tbaa !21
  br i1 %t137, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l69, !tbaa !21
  br label %bb21
bb19:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t141 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t138, i32 0)
  store i1 %t141, ptr %l72
  br label %bb20
bb20:
  %t142 = load i1, ptr %l72, !tbaa !21
  store i1 %t142, ptr %l69, !tbaa !21
  br label %bb21
bb21:
  %t143 = load i1, ptr %l69, !tbaa !21
  br i1 %t143, label %bb22, label %bb23
bb22:
  br label %bb85
bb23:
  br label %bb24
bb24:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclHere(ptr %v0, ptr %t144)
  store i1 %t146, ptr %l74
  br label %bb25
bb25:
  %t147 = load i1, ptr %l74, !tbaa !21
  br i1 %t147, label %bb26, label %bb27
bb26:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/parse:Parser", ptr %t148, i32 0, i32 22
  %t151 = load i1, ptr %t150, !tbaa !21
  %t153 = xor i1 %t151, true
  br i1 %t153, label %bb28, label %bb29
bb27:
  br label %bb41
bb28:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/parse:Parser", ptr %t155, i32 0, i32 24
  %t158 = load i1, ptr %t157, !tbaa !21
  %t160 = xor i1 %t158, true
  store i1 %t160, ptr %l78, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb30
bb30:
  %t162 = load i1, ptr %l78, !tbaa !21
  br i1 %t162, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s5
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/parse:Parser", ptr %t163, i32 0, i32 0
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t168 = load i32, ptr %t167, !tbaa !23
  %t171 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t166, i32 %t168)
  store i32 %t171, ptr %l85
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t172 = load i32, ptr %l85, !tbaa !23
  store i32 %t172, ptr %l12, !tbaa !23
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t173)
  store %"compiler/token:Token" %t175, ptr %l87
  br label %bb34
bb34:
  %t176 = load %"compiler/token:Token", ptr %l87
  store %"compiler/token:Token" %t176, ptr %l13
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/parse:Parser", ptr %t177, i32 0, i32 5
  %t180 = load i64, ptr %t179, !tbaa !24
  %t181 = getelementptr %"compiler/token:Token", ptr %l13, i32 0, i32 2
  %t182 = load i32, ptr %t181, !tbaa !23
  %t184 = sext i32 %t182 to i64
  %t185 = getelementptr %"compiler/token:Token", ptr %l13, i32 0, i32 3
  %t186 = load i32, ptr %t185, !tbaa !23
  %t188 = sext i32 %t186 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t189
  %t190 = getelementptr { i64, [3 x i64] }, ptr %t189, i32 0, i32 0
  store i64 3, ptr %t190
  %t192 = insertvalue { i64, i64, i64 } undef, i64 %t180, 0
  %t194 = insertvalue { i64, i64, i64 } %t192, i64 %t184, 1
  %t196 = insertvalue { i64, i64, i64 } %t194, i64 %t188, 2
  %t197 = getelementptr { i64, [3 x i64] }, ptr %t189, i32 0, i32 1
  store { i64, i64, i64 } %t196, ptr %t197
  %t198 = load { i64, [3 x i64] }, ptr %t189
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/parse:Parser", ptr %t200, i32 0, i32 4
  %t203 = load ptr, ptr %t202, !tbaa !29
  store ptr %t203, ptr %l96, !tbaa !29
  store { i64, [3 x i64] } %t198, ptr %l97
  %t205 = load i32, ptr %l12, !tbaa !23
  %t207 = sext i32 %t205 to i64
  store i64 %t207, ptr %l99, !tbaa !24
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %s5, ptr %t208)
  store { i64, ptr } %t210, ptr %l101
  br label %bb35
bb35:
  %t211 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t218 = load i64, ptr %l99, !tbaa !24
  %t220 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBlockNotClosed(ptr %s5, ptr %v0, i64 %t218, { i64, ptr } %t217)
  store %"compiler/diagmsg:Msg" %t220, ptr %l103
  br label %bb36
bb36:
  %t221 = load ptr, ptr %l96, !tbaa !29
  %t222 = load { i64, [3 x i64] }, ptr %l97
  %t223 = load %"compiler/diagmsg:Msg", ptr %l103
  %t224 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v0, ptr %t221, { i64, [3 x i64] } %t222, %"compiler/diagmsg:Msg" %t223)
  store i64 %t224, ptr %l104
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb38:
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = getelementptr %"compiler/parse:Parser", ptr %t225, i32 0, i32 32
  %t228 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eTruncate_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t227, i64 %t228)
  br label %bb39
bb39:
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/parse:Parser", ptr %t231, i32 0, i32 24
  store i1 true, ptr %t233, !tbaa !21
  store i32 65536, ptr %l109, !tbaa !23
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i1, ptr %l7, !tbaa !21
  %t238 = getelementptr %"compiler/parse:Parser", ptr %t234, i32 0, i32 16
  store i1 %t235, ptr %t238, !tbaa !21
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i1, ptr %l8, !tbaa !21
  %t243 = getelementptr %"compiler/parse:Parser", ptr %t239, i32 0, i32 15
  store i1 %t240, ptr %t243, !tbaa !21
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i1, ptr %l6, !tbaa !21
  %t248 = getelementptr %"compiler/parse:Parser", ptr %t244, i32 0, i32 14
  store i1 %t245, ptr %t248, !tbaa !21
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load i1, ptr %l5, !tbaa !21
  %t253 = getelementptr %"compiler/parse:Parser", ptr %t249, i32 0, i32 20
  store i1 %t250, ptr %t253, !tbaa !21
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load i1, ptr %l4, !tbaa !21
  %t258 = getelementptr %"compiler/parse:Parser", ptr %t254, i32 0, i32 19
  store i1 %t255, ptr %t258, !tbaa !21
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i64, ptr %l3, !tbaa !24
  %t263 = getelementptr %"compiler/parse:Parser", ptr %t259, i32 0, i32 18
  store i64 %t260, ptr %t263, !tbaa !24
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t265 = load i1, ptr %l2, !tbaa !21
  %t268 = getelementptr %"compiler/parse:Parser", ptr %t264, i32 0, i32 12
  store i1 %t265, ptr %t268, !tbaa !21
  %t269 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t269)
  br label %bb40
bb40:
  %t271 = load i32, ptr %l109, !tbaa !23
  %t272 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t271, 0
  store { i32, { i64, ptr } } %t272, ptr %rv
  br label %ret
bb41:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = call %"compiler/parse:stackMarks" @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarks(ptr %v0, ptr %t273)
  store %"compiler/parse:stackMarks" %t275, ptr %l126
  br label %bb42
bb42:
  %t276 = load %"compiler/parse:stackMarks", ptr %l126
  store %"compiler/parse:stackMarks" %t276, ptr %l15
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/parse:Parser", ptr %t277, i32 0, i32 6
  %t280 = load i64, ptr %t279, !tbaa !24
  store i64 %t280, ptr %l16, !tbaa !24
  %t282 = icmp sge i64 0, 0
  br i1 %t282, label %bb43, label %bb44
bb43:
  %t284 = icmp sle i64 0, 1152921504606846975
  br i1 %t284, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_3a8ad8017031eccf_6f47b3cce535c81b)
  unreachable
bb45:
  %t286 = mul i64 0, 8
  %t287 = insertvalue { i64, ptr } undef, i64 0, 0
  %t288 = insertvalue { i64, ptr } %t287, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t288, ptr %l17, !tbaa !27
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t293 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t290, i32 73)
  store i1 %t293, ptr %l134
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_3a8ad8017031eccf_6f47b3cce535c81b)
  unreachable
bb47:
  %t294 = load i1, ptr %l134, !tbaa !21
  br i1 %t294, label %bb48, label %bb49
bb48:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v0, ptr %t295)
  %t298 = extractvalue { i32, { i64, ptr } } %t297, 1
  %t299 = extractvalue { i32, { i64, ptr } } %t297, 0
  store i32 %t299, ptr %l138
  %t300 = icmp ne i32 %t299, 0
  br i1 %t300, label %bb51, label %ok.301, !prof !99
ok.301:
  store { i64, ptr } %t298, ptr %l137
  br label %bb50
bb49:
  br label %bb64
bb50:
  %t302 = load { i64, ptr }, ptr %l137, !tbaa !27
  store { i64, ptr } %t302, ptr %l135, !tbaa !27
  br label %bb55
bb51:
  br label %bb52
bb52:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load %"compiler/parse:stackMarks", ptr %l15
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2erelease(ptr %v0, ptr %t303, %"compiler/parse:stackMarks" %t304)
  br label %bb53
bb53:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i64, ptr %l16, !tbaa !24
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncStmt(ptr %v0, ptr %t307, i64 %t308)
  br label %bb54
bb54:
  br label %bb84
bb55:
  %t311 = load { i64, ptr }, ptr %l135, !tbaa !27
  store { i64, ptr } %t311, ptr %l17, !tbaa !27
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t314 = getelementptr %"compiler/parse:Parser", ptr %t312, i32 0, i32 12
  %t315 = load i1, ptr %t314, !tbaa !21
  %t317 = xor i1 %t315, true
  br i1 %t317, label %bb56, label %bb57
bb56:
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load { i64, ptr }, ptr %l17, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrRefused(ptr %v0, ptr %v0, ptr %t319, { i64, ptr } %t320)
  br label %bb58
bb57:
  br label %bb63
bb58:
  %t323 = icmp sge i64 0, 0
  br i1 %t323, label %bb59, label %bb60
bb59:
  %t325 = icmp sle i64 0, 1152921504606846975
  br i1 %t325, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_9090e2f728d8157a_2317b9fcceb6fe86)
  unreachable
bb61:
  %t327 = mul i64 0, 8
  %t328 = insertvalue { i64, ptr } undef, i64 0, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t329, ptr %l17, !tbaa !27
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_9090e2f728d8157a_2317b9fcceb6fe86)
  unreachable
bb63:
  br label %bb64
bb64:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmt(ptr %v0, ptr %v0, ptr %t331)
  %t334 = extractvalue { i32, ptr } %t333, 1
  %t335 = extractvalue { i32, ptr } %t333, 0
  store i32 %t335, ptr %l154
  %t336 = icmp ne i32 %t335, 0
  br i1 %t336, label %bb66, label %ok.337, !prof !99
ok.337:
  store ptr %t334, ptr %l153
  br label %bb65
bb65:
  %t338 = load ptr, ptr %l153, !tbaa !29
  store ptr %t338, ptr %l151, !tbaa !29
  br label %bb78
bb66:
  br label %bb67
bb67:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t341 = getelementptr %"compiler/parse:Parser", ptr %t339, i32 0, i32 22
  %t342 = load i1, ptr %t341, !tbaa !21
  br i1 %t342, label %bb68, label %bb69
bb68:
  store i1 true, ptr %l157, !tbaa !21
  br label %bb70
bb69:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t346 = getelementptr %"compiler/parse:Parser", ptr %t344, i32 0, i32 24
  %t347 = load i1, ptr %t346, !tbaa !21
  store i1 %t347, ptr %l157, !tbaa !21
  br label %bb70
bb70:
  %t349 = load i1, ptr %l157, !tbaa !21
  br i1 %t349, label %bb71, label %bb72
bb71:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t352 = getelementptr %"compiler/parse:Parser", ptr %t350, i32 0, i32 32
  %t353 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eTruncate_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t352, i64 %t353)
  br label %bb73
bb72:
  br label %bb75
bb73:
  store i32 65536, ptr %l163, !tbaa !23
  %t356 = load ptr, ptr %l0, !tbaa !29
  %t357 = load i1, ptr %l7, !tbaa !21
  %t360 = getelementptr %"compiler/parse:Parser", ptr %t356, i32 0, i32 16
  store i1 %t357, ptr %t360, !tbaa !21
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load i1, ptr %l8, !tbaa !21
  %t365 = getelementptr %"compiler/parse:Parser", ptr %t361, i32 0, i32 15
  store i1 %t362, ptr %t365, !tbaa !21
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t367 = load i1, ptr %l6, !tbaa !21
  %t370 = getelementptr %"compiler/parse:Parser", ptr %t366, i32 0, i32 14
  store i1 %t367, ptr %t370, !tbaa !21
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t372 = load i1, ptr %l5, !tbaa !21
  %t375 = getelementptr %"compiler/parse:Parser", ptr %t371, i32 0, i32 20
  store i1 %t372, ptr %t375, !tbaa !21
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load i1, ptr %l4, !tbaa !21
  %t380 = getelementptr %"compiler/parse:Parser", ptr %t376, i32 0, i32 19
  store i1 %t377, ptr %t380, !tbaa !21
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i64, ptr %l3, !tbaa !24
  %t385 = getelementptr %"compiler/parse:Parser", ptr %t381, i32 0, i32 18
  store i64 %t382, ptr %t385, !tbaa !24
  %t386 = load ptr, ptr %l0, !tbaa !29
  %t387 = load i1, ptr %l2, !tbaa !21
  %t390 = getelementptr %"compiler/parse:Parser", ptr %t386, i32 0, i32 12
  store i1 %t387, ptr %t390, !tbaa !21
  %t391 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t391)
  br label %bb74
bb74:
  %t393 = load i32, ptr %l163, !tbaa !23
  %t394 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t393, 0
  store { i32, { i64, ptr } } %t394, ptr %rv
  br label %ret
bb75:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load %"compiler/parse:stackMarks", ptr %l15
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2erelease(ptr %v0, ptr %t395, %"compiler/parse:stackMarks" %t396)
  br label %bb76
bb76:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/parse:Parser", ptr %t399, i32 0, i32 19
  store i1 false, ptr %t401, !tbaa !21
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load i64, ptr %l16, !tbaa !24
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncStmt(ptr %v0, ptr %t402, i64 %t403)
  br label %bb77
bb77:
  br label %bb84
bb78:
  %t406 = load ptr, ptr %l151, !tbaa !29
  store ptr %t406, ptr %l18, !tbaa !29
  %t407 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t409 = extractvalue { i64, ptr } %t407, 0
  %t411 = icmp sgt i64 %t409, 0
  br i1 %t411, label %bb79, label %bb80
bb79:
  %t413 = load ptr, ptr %l0, !tbaa !29
  %t414 = load ptr, ptr %l18, !tbaa !29
  %t415 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t419 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2efieldAttrs(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t413, ptr %t414, { i64, ptr } %t415)
  store ptr %t419, ptr %l190
  br label %bb81
bb80:
  br label %bb82
bb81:
  %t420 = load ptr, ptr %l190, !tbaa !29
  store ptr %t420, ptr %l18, !tbaa !29
  br label %bb82
bb82:
  %t421 = load ptr, ptr %l0, !tbaa !29
  %t423 = getelementptr %"compiler/parse:Parser", ptr %t421, i32 0, i32 32
  %t424 = load ptr, ptr %l18, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t423, ptr %t424)
  br label %bb83
bb83:
  br label %bb84
bb84:
  br label %bb15
bb85:
  %t427 = load ptr, ptr %l0, !tbaa !29
  %t430 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t427, i32 112)
  store i1 %t430, ptr %l196
  br label %bb86
bb86:
  %t431 = load i1, ptr %l196, !tbaa !21
  %t432 = xor i1 %t431, true
  br i1 %t432, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s38
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t436 = getelementptr %"compiler/parse:Parser", ptr %t434, i32 0, i32 32
  %t437 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eTruncate_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t436, i64 %t437)
  br label %bb89
bb88:
  br label %bb95
bb89:
  %t440 = load ptr, ptr %l0, !tbaa !29
  store ptr %t440, ptr %l201, !tbaa !29
  %t442 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s38, i32 112)
  store { i64, ptr } %t442, ptr %l203
  br label %bb90
bb90:
  %t443 = load { i64, ptr }, ptr %l203, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t443, 0
  %t445 = extractvalue { i64, ptr } %t443, 1
  %t446 = mul i64 %t444, 1
  %t447 = call ptr @__olang_scope_alloc(ptr %s38, i64 %t446)
  call void @llvm.memcpy.p0.p0.i64(ptr %t447, ptr %t445, i64 %t446, i1 false)
  %t448 = insertvalue { i64, ptr } undef, i64 %t444, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %t447, 1
  %t450 = load ptr, ptr %l201, !tbaa !29
  %t452 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s38, ptr %t450, { i64, ptr } %t449)
  store i32 %t452, ptr %l205
  %t453 = icmp ne i32 %t452, 0
  br i1 %t453, label %bb92, label %ok.454, !prof !99
ok.454:
  br label %bb91
bb91:
  br label %bb94
bb92:
  %t455 = load i32, ptr %l205, !tbaa !23
  %t456 = lshr i32 %t455, 16
  %t457 = and i32 %t455, 65535
  %t458 = icmp eq i32 %t456, 1
  %t459 = select i1 %t458, i32 1, i32 0
  %t460 = icmp eq i32 %t455, 0
  %t461 = shl i32 %t459, 16
  %t462 = or i32 %t461, %t457
  %t463 = select i1 %t460, i32 0, i32 %t462
  store i32 %t463, ptr %l206, !tbaa !23
  call void @__olang_scope_close(ptr %s38)
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t465 = load i1, ptr %l7, !tbaa !21
  %t468 = getelementptr %"compiler/parse:Parser", ptr %t464, i32 0, i32 16
  store i1 %t465, ptr %t468, !tbaa !21
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load i1, ptr %l8, !tbaa !21
  %t473 = getelementptr %"compiler/parse:Parser", ptr %t469, i32 0, i32 15
  store i1 %t470, ptr %t473, !tbaa !21
  %t474 = load ptr, ptr %l0, !tbaa !29
  %t475 = load i1, ptr %l6, !tbaa !21
  %t478 = getelementptr %"compiler/parse:Parser", ptr %t474, i32 0, i32 14
  store i1 %t475, ptr %t478, !tbaa !21
  %t479 = load ptr, ptr %l0, !tbaa !29
  %t480 = load i1, ptr %l5, !tbaa !21
  %t483 = getelementptr %"compiler/parse:Parser", ptr %t479, i32 0, i32 20
  store i1 %t480, ptr %t483, !tbaa !21
  %t484 = load ptr, ptr %l0, !tbaa !29
  %t485 = load i1, ptr %l4, !tbaa !21
  %t488 = getelementptr %"compiler/parse:Parser", ptr %t484, i32 0, i32 19
  store i1 %t485, ptr %t488, !tbaa !21
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l3, !tbaa !24
  %t493 = getelementptr %"compiler/parse:Parser", ptr %t489, i32 0, i32 18
  store i64 %t490, ptr %t493, !tbaa !24
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load i1, ptr %l2, !tbaa !21
  %t498 = getelementptr %"compiler/parse:Parser", ptr %t494, i32 0, i32 12
  store i1 %t495, ptr %t498, !tbaa !21
  %t499 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t499)
  br label %bb93
bb93:
  %t501 = load i32, ptr %l206, !tbaa !23
  %t502 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t501, 0
  store { i32, { i64, ptr } } %t502, ptr %rv
  br label %ret
bb94:
  call void @__olang_scope_close(ptr %s38)
  br label %bb95
bb95:
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t505 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t503)
  store i32 %t505, ptr %l223
  br label %bb96
bb96:
  %t506 = load ptr, ptr %l0, !tbaa !29
  %t508 = getelementptr %"compiler/parse:Parser", ptr %t506, i32 0, i32 32
  %t509 = load i64, ptr %l11, !tbaa !24
  %t512 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %t508, i64 %t509)
  store { i64, ptr } %t512, ptr %l227
  br label %bb97
bb97:
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i1, ptr %l7, !tbaa !21
  %t517 = getelementptr %"compiler/parse:Parser", ptr %t513, i32 0, i32 16
  store i1 %t514, ptr %t517, !tbaa !21
  %t518 = load ptr, ptr %l0, !tbaa !29
  %t519 = load i1, ptr %l8, !tbaa !21
  %t522 = getelementptr %"compiler/parse:Parser", ptr %t518, i32 0, i32 15
  store i1 %t519, ptr %t522, !tbaa !21
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t524 = load i1, ptr %l6, !tbaa !21
  %t527 = getelementptr %"compiler/parse:Parser", ptr %t523, i32 0, i32 14
  store i1 %t524, ptr %t527, !tbaa !21
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t529 = load i1, ptr %l5, !tbaa !21
  %t532 = getelementptr %"compiler/parse:Parser", ptr %t528, i32 0, i32 20
  store i1 %t529, ptr %t532, !tbaa !21
  %t533 = load ptr, ptr %l0, !tbaa !29
  %t534 = load i1, ptr %l4, !tbaa !21
  %t537 = getelementptr %"compiler/parse:Parser", ptr %t533, i32 0, i32 19
  store i1 %t534, ptr %t537, !tbaa !21
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load i64, ptr %l3, !tbaa !24
  %t542 = getelementptr %"compiler/parse:Parser", ptr %t538, i32 0, i32 18
  store i64 %t539, ptr %t542, !tbaa !24
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load i1, ptr %l2, !tbaa !21
  %t547 = getelementptr %"compiler/parse:Parser", ptr %t543, i32 0, i32 12
  store i1 %t544, ptr %t547, !tbaa !21
  %t548 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t548)
  br label %bb98
bb98:
  %t550 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t551 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t550, 1
  store { i32, { i64, ptr } } %t551, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseTypeRef(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca [0 x ptr]
  %l10 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l12 = alloca i1
  %l23 = alloca { i64, ptr }
  %l25 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l33 = alloca %"compiler/source:Span"
  %l37 = alloca { i64, ptr }
  %rv = alloca ptr
  %t94 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  store [0 x ptr] zeroinitializer, ptr %l9
  %t7 = mul i64 0, 8
  %t8 = insertvalue { i64, ptr } undef, i64 0, 0
  %t9 = insertvalue { i64, ptr } %t8, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t9, ptr %l10, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = mul i64 0, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t11, ptr %l9, i64 %t12, i1 false)
  %t13 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t13, ptr %lp3
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t15 = load ptr, ptr %lp3
  store { i64, ptr } %t14, ptr %t15, !tbaa !27
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t17 = load ptr, ptr %l11, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb2, label %bb3
bb2:
  %t20 = load ptr, ptr %l11, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 28}
  %t23 = icmp eq i64 %t21, 11
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t24 = load i1, ptr %l12, !tbaa !21
  br i1 %t24, label %bb4, label %bb5
bb4:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t33, i32 0, i32 2
  %t35 = load { i64, ptr }, ptr %t34
  store { i64, ptr } %t35, ptr %l5, !tbaa !27
  br label %bb6
bb5:
  br label %bb11
bb6:
  %t37 = load ptr, ptr %l4, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/parse:Parser", ptr %t38, i32 0, i32 36
  call void @compiler_2fparse_2epathIds(ptr %v1, ptr %v0, ptr %t37, ptr %t40)
  br label %bb7
bb7:
  %t43 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t43, ptr %l23, !tbaa !27
  %t45 = load ptr, ptr %lp3
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  %t48 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 0
  store i64 %t49, ptr %l25, !tbaa !24
  %t51 = load i64, ptr %l25, !tbaa !24
  %t52 = icmp eq i64 %t47, %t51
  br i1 %t52, label %bb8, label %bb9
bb8:
  %t54 = load ptr, ptr %lp3
  %t55 = getelementptr { i64, ptr }, ptr %t54, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = load i64, ptr %l25, !tbaa !24
  %t60 = mul i64 %t59, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t56, ptr %t58, i64 %t60, i1 false)
  br label %bb10
bb9:
  %t61 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l27, !tbaa !24
  %t63 = load i64, ptr %l27, !tbaa !24
  %t64 = mul i64 %t63, 8
  %t65 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l28, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l27, !tbaa !24
  %t73 = mul i64 %t72, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t75 = load ptr, ptr %lp3
  store { i64, ptr } %t74, ptr %t75, !tbaa !27
  br label %bb10
bb10:
  br label %bb17
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/parse:Parser", ptr %t77, i32 0, i32 36
  call void @compiler_2fparse_2epathIds(ptr %v1, ptr %v0, ptr %t76, ptr %t79)
  br label %bb15
bb15:
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_34fec3df9092f56c_7b6dc988b92a4ce8)
  unreachable
bb17:
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t82)
  store %"compiler/source:Span" %t84, ptr %l33
  br label %bb18
bb18:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/parse:Parser", ptr %t85, i32 0, i32 36
  %t88 = load i64, ptr %l2, !tbaa !24
  %t91 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v2, ptr %t87, i64 %t88)
  store { i64, ptr } %t91, ptr %l37
  br label %bb19
bb19:
  %t92 = load ptr, ptr %lp3
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t94, i32 0, i32 0
  store i64 0, ptr %t95
  %t96 = load %"compiler/source:Span", ptr %l33
  %t97 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t96, 0
  %t98 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t99 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t97, { i64, ptr } %t98, 1
  %t101 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t99, { i64, ptr } %t93, 2
  %t102 = getelementptr { i64, [5 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t101, ptr %t102
  %t103 = load { i64, [5 x i64] }, ptr %t94
  %t105 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t103, ptr %t105
  store ptr %t105, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecloseAngle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l4 = alloca i32
  %l6 = alloca i1
  %l8 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l12 = alloca i32
  %l15 = alloca i32
  %l23 = alloca ptr
  %l26 = alloca i32
  %l30 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i32, ptr %l4, !range !{i32 0, i32 113}
  store i32 %t4, ptr %l1
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclosesAngle(ptr %v0, ptr %t5)
  store i1 %t7, ptr %l6
  br label %bb2
bb2:
  %t8 = load i1, ptr %l6, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s1, i32 98)
  store { i64, ptr } %t13, ptr %l10
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t14 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t14, 0
  %t16 = extractvalue { i64, ptr } %t14, 1
  %t17 = mul i64 %t15, 1
  %t18 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t17)
  call void @llvm.memcpy.p0.p0.i64(ptr %t18, ptr %t16, i64 %t17, i1 false)
  %t19 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t18, 1
  %t21 = load ptr, ptr %l8, !tbaa !29
  %t23 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t21, { i64, ptr } %t20)
  store i32 %t23, ptr %l12
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb7, label %ok.25, !prof !99
ok.25:
  br label %bb6
bb6:
  br label %bb8
bb7:
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = lshr i32 %t26, 16
  %t28 = and i32 %t26, 65535
  %t29 = icmp eq i32 %t27, 1
  %t30 = select i1 %t29, i32 1, i32 0
  %t31 = icmp eq i32 %t26, 0
  %t32 = shl i32 %t30, 16
  %t33 = or i32 %t32, %t28
  %t34 = select i1 %t31, i32 0, i32 %t33
  call void @__olang_scope_close(ptr %s1)
  store i32 %t34, ptr %rv
  br label %ret
bb8:
  call void @__olang_scope_close(ptr %s1)
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t36)
  store i32 %t38, ptr %l15
  br label %bb10
bb10:
  %t39 = load i32, ptr %l15, !tbaa !23
  store i32 %t39, ptr %l2, !tbaa !23
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 42
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t43, i32 0, i32 6
  %t46 = load i64, ptr %t45, !tbaa !24
  %t48 = sub i64 %t46, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t42, i64 %t48)
  br label %bb11
bb11:
  %t51 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t53 = trunc i64 98 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb12, label %bb13
bb12:
  store i32 0, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l23, !tbaa !29
  %t57 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t59 = trunc i64 106 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb15, label %bb16
bb15:
  store i32 98, ptr %l26
  br label %bb20
bb16:
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t65 = trunc i64 99 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb17, label %bb18
bb17:
  store i32 77, ptr %l30
  br label %bb19
bb18:
  store i32 99, ptr %l30
  br label %bb19
bb19:
  %t70 = load i32, ptr %l30, !range !{i32 0, i32 113}
  store i32 %t70, ptr %l26
  br label %bb20
bb20:
  %t71 = load i32, ptr %l26, !range !{i32 0, i32 113}
  %t72 = load ptr, ptr %l23, !tbaa !29
  %t73 = getelementptr %"compiler/parse:Parser", ptr %t72, i32 0, i32 7
  store i32 %t71, ptr %t73
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i32, ptr %l2, !tbaa !23
  %t77 = add i32 %t75, 1
  %t80 = getelementptr %"compiler/parse:Parser", ptr %t74, i32 0, i32 8
  store i32 %t77, ptr %t80, !tbaa !23
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/parse:Parser", ptr %t81, i32 0, i32 9
  store i32 98, ptr %t84
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l2, !tbaa !23
  %t88 = add i32 %t86, 1
  %t91 = getelementptr %"compiler/parse:Parser", ptr %t85, i32 0, i32 10
  store i32 %t88, ptr %t91, !tbaa !23
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i32
  %rv = alloca { i32, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %a0)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l4
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l3
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l3, !tbaa !29
  store ptr %t8, ptr %l1, !tbaa !29
  br label %bb3
bb2:
  %t9 = load i32, ptr %l4, !tbaa !23
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
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = insertvalue { i32, ptr } zeroinitializer, ptr %t20, 1
  store { i32, ptr } %t21, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i1
  %l5 = alloca i1
  %l7 = alloca i32
  %l11 = alloca i1
  %l13 = alloca i32
  %l19 = alloca %"compiler/token:Token"
  %l21 = alloca i1
  %l23 = alloca i1
  %l25 = alloca %"compiler/token:Token"
  %l27 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 75)
  store i1 %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load i1, ptr %l3, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb5
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t8, i64 1)
  store i32 %t10, ptr %l7
  br label %bb4
bb4:
  %t11 = load i32, ptr %l7, !range !{i32 0, i32 113}
  %t13 = trunc i64 75 to i32
  %t14 = icmp eq i32 %t11, %t13
  %t16 = xor i1 %t14, true
  store i1 %t16, ptr %l5, !tbaa !21
  br label %bb5
bb5:
  %t18 = load i1, ptr %l5, !tbaa !21
  br i1 %t18, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb9
bb7:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t19, i64 2)
  store i32 %t21, ptr %l13
  br label %bb8
bb8:
  %t22 = load i32, ptr %l13, !range !{i32 0, i32 113}
  %t24 = trunc i64 75 to i32
  %t25 = icmp eq i32 %t22, %t24
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l11, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 false, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t31, i64 1)
  store %"compiler/token:Token" %t33, ptr %l19
  br label %bb13
bb13:
  %t34 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t35 = load %"compiler/token:Token", ptr %l19
  %t37 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t35, i8 %t34)
  store i1 %t37, ptr %l21
  br label %bb14
bb14:
  %t38 = load i1, ptr %l21, !tbaa !21
  %t39 = xor i1 %t38, true
  br i1 %t39, label %bb15, label %bb16
bb15:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t41, i64 2)
  store %"compiler/token:Token" %t43, ptr %l25
  br label %bb17
bb16:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb19
bb17:
  %t44 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t45 = load %"compiler/token:Token", ptr %l25
  %t47 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t45, i8 %t44)
  store i1 %t47, ptr %l27
  br label %bb18
bb18:
  %t48 = load i1, ptr %l27, !tbaa !21
  %t49 = xor i1 %t48, true
  store i1 %t49, ptr %l23, !tbaa !21
  br label %bb19
bb19:
  %t51 = load i1, ptr %l23, !tbaa !21
  store i1 %t51, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t4 = load i32, ptr %l4, !range !{i32 0, i32 113}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 113}
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
  %t20 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t22 = trunc i64 112 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb11
bb10:
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 113}
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
  %t36 = load i32, ptr %l1, !range !{i32 0, i32 113}
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
  %t41 = load i32, ptr %l1, !range !{i32 0, i32 113}
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
  %t53 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t55 = trunc i64 108 to i32
  %t56 = icmp eq i32 %t53, %t55
  br i1 %t56, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb32
bb26:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb28
bb27:
  %t58 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t60 = trunc i64 110 to i32
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
  %t64 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t66 = trunc i64 74 to i32
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
  %t74 = load i32, ptr %t73, !range !{i32 0, i32 113}
  store i32 %t74, ptr %l2
  %t76 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t78 = trunc i64 100 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb38
bb37:
  %t81 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t83 = trunc i64 98 to i32
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
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t89 = trunc i64 112 to i32
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
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t1, i32 74)
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
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 113}
  store i32 %t11, ptr %l1
  %t13 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t15 = trunc i64 112 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb8
bb7:
  %t18 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t20 = trunc i64 98 to i32
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
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t26 = trunc i64 100 to i32
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
  %t47 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t44, i32 112)
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
  %t62 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s3, i32 112)
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

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorWords(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i1
  %l16 = alloca i32
  %l20 = alloca i1
  %l24 = alloca i32
  %l25 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l35 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca ptr
  %l44 = alloca %"compiler/source:Span"
  %l45 = alloca i32
  %l46 = alloca { i64, ptr }
  %l50 = alloca %"compiler/ast:CaseDecl"
  %l53 = alloca i32
  %l56 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 111)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l9
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l9, !tbaa !23
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
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t20)
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t25 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t22, i32 112)
  store i1 %t25, ptr %l14
  br label %bb5
bb5:
  %t26 = load i1, ptr %l14, !tbaa !21
  br i1 %t26, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t27, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i32 %t29, ptr %l16
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb9, label %ok.31, !prof !99
ok.31:
  br label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb10
bb9:
  %t32 = load i32, ptr %l16, !tbaa !23
  %t33 = lshr i32 %t32, 16
  %t34 = and i32 %t32, 65535
  %t35 = icmp eq i32 %t33, 1
  %t36 = select i1 %t35, i32 1, i32 0
  %t37 = icmp eq i32 %t32, 0
  %t38 = shl i32 %t36, 16
  %t39 = or i32 %t38, %t34
  %t40 = select i1 %t37, i32 0, i32 %t39
  call void @__olang_scope_close(ptr %s1)
  store i32 %t40, ptr %rv
  br label %ret
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t42, i32 112)
  store i1 %t45, ptr %l20
  br label %bb13
bb13:
  %t46 = load i1, ptr %l20, !tbaa !21
  %t47 = xor i1 %t46, true
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb14, label %bb15
bb14:
  br label %bb43
bb15:
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t51)
  store i32 %t53, ptr %l24
  br label %bb17
bb17:
  %t54 = load i32, ptr %l24, !tbaa !23
  store i32 %t54, ptr %l2, !tbaa !23
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t55)
  %t58 = extractvalue { i32, i32 } %t57, 1
  %t59 = extractvalue { i32, i32 } %t57, 0
  store i32 %t59, ptr %l28
  %t60 = icmp ne i32 %t59, 0
  br i1 %t60, label %bb19, label %ok.61, !prof !99
ok.61:
  store i32 %t58, ptr %l27
  br label %bb18
bb18:
  %t62 = load i32, ptr %l27, !tbaa !23
  store i32 %t62, ptr %l25, !tbaa !23
  br label %bb20
bb19:
  %t63 = load i32, ptr %l28, !tbaa !23
  %t64 = lshr i32 %t63, 16
  %t65 = and i32 %t63, 65535
  %t66 = icmp eq i32 %t64, 1
  %t67 = select i1 %t66, i32 1, i32 0
  %t68 = icmp eq i32 %t63, 0
  %t69 = shl i32 %t67, 16
  %t70 = or i32 %t69, %t65
  %t71 = select i1 %t68, i32 0, i32 %t70
  store i32 %t71, ptr %rv
  br label %ret
bb20:
  %t73 = load i32, ptr %l25, !tbaa !23
  store i32 %t73, ptr %l3, !tbaa !23
  %t74 = icmp sge i64 0, 0
  br i1 %t74, label %bb21, label %bb22
bb21:
  %t76 = icmp sle i64 0, 1152921504606846975
  br i1 %t76, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_e134f20c62dd29bf_7d644e0c862b15db)
  unreachable
bb23:
  %t78 = mul i64 0, 8
  %t79 = insertvalue { i64, ptr } undef, i64 0, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t80, ptr %l4, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t85 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t82, i32 107)
  store i1 %t85, ptr %l35
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_e134f20c62dd29bf_7d644e0c862b15db)
  unreachable
bb25:
  %t86 = load i1, ptr %l35, !tbaa !21
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %t87, i1 false)
  %t90 = extractvalue { i32, { i64, ptr } } %t89, 1
  %t91 = extractvalue { i32, { i64, ptr } } %t89, 0
  store i32 %t91, ptr %l39
  %t92 = icmp ne i32 %t91, 0
  br i1 %t92, label %bb29, label %ok.93, !prof !99
ok.93:
  store { i64, ptr } %t90, ptr %l38
  br label %bb28
bb27:
  br label %bb31
bb28:
  %t94 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t94, ptr %l36, !tbaa !27
  br label %bb30
bb29:
  %t95 = load i32, ptr %l39, !tbaa !23
  %t96 = lshr i32 %t95, 16
  %t97 = and i32 %t95, 65535
  %t98 = icmp eq i32 %t96, 1
  %t99 = select i1 %t98, i32 1, i32 0
  %t100 = icmp eq i32 %t95, 0
  %t101 = shl i32 %t99, 16
  %t102 = or i32 %t101, %t97
  %t103 = select i1 %t100, i32 0, i32 %t102
  store i32 %t103, ptr %rv
  br label %ret
bb30:
  %t105 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t105, ptr %l4, !tbaa !27
  br label %bb31
bb31:
  store ptr %a1, ptr %l41, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load i32, ptr %l2, !tbaa !23
  %t111 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t107, i32 %t108)
  store %"compiler/source:Span" %t111, ptr %l44
  br label %bb32
bb32:
  %t112 = load i32, ptr %l3, !tbaa !23
  store i32 %t112, ptr %l45, !tbaa !23
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t113, ptr %l46, !tbaa !27
  %t114 = icmp sge i64 0, 0
  br i1 %t114, label %bb33, label %bb34
bb33:
  %t116 = icmp sle i64 0, 1152921504606846975
  br i1 %t116, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_2b194c707e7a9eea_6d7c024a04ee9246)
  unreachable
bb35:
  %t118 = mul i64 0, 8
  %t119 = insertvalue { i64, ptr } undef, i64 0, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t121 = load %"compiler/source:Span", ptr %l44
  %t122 = load i32, ptr %l45, !tbaa !23
  %t123 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t125 = call %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t121, i32 %t122, { i64, ptr } %t123, i1 false, ptr null, { i64, ptr } %t120)
  store %"compiler/ast:CaseDecl" %t125, ptr %l50
  br label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_2b194c707e7a9eea_6d7c024a04ee9246)
  unreachable
bb37:
  %t126 = load %"compiler/ast:CaseDecl", ptr %l50
  %t127 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/ast:CaseDecl" %t126, ptr %t127
  %t128 = load ptr, ptr %l41, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ePush_H43bc1cace347592514b4248ffd44c907(ptr %v1, ptr %v1, ptr %t128, ptr %t127)
  br label %bb38
bb38:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentryEnd(ptr %v0, ptr %t130)
  store i32 %t132, ptr %l53
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb40, label %ok.134, !prof !99
ok.134:
  br label %bb39
bb39:
  br label %bb41
bb40:
  %t135 = load i32, ptr %l53, !tbaa !23
  %t136 = lshr i32 %t135, 16
  %t137 = and i32 %t135, 65535
  %t138 = icmp eq i32 %t136, 1
  %t139 = select i1 %t138, i32 1, i32 0
  %t140 = icmp eq i32 %t135, 0
  %t141 = shl i32 %t139, 16
  %t142 = or i32 %t141, %t137
  %t143 = select i1 %t140, i32 0, i32 %t142
  store i32 %t143, ptr %rv
  br label %ret
bb41:
  br label %bb42
bb42:
  br label %bb12
bb43:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t145)
  store i32 %t147, ptr %l56
  br label %bb44
bb44:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v1, ptr %t1, i64 1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l4, !tbaa !29
  store ptr %t8, ptr %l2, !tbaa !29
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
  %t19 = insertvalue { i32, ptr } zeroinitializer, i32 %t17, 0
  store { i32, ptr } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t25 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econdFrom(ptr %v0, ptr %v1, ptr %v1, ptr %t21, ptr %t20)
  %t26 = extractvalue { i32, ptr } %t25, 1
  %t27 = extractvalue { i32, ptr } %t25, 0
  store i32 %t27, ptr %l11
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb5, label %ok.29, !prof !99
ok.29:
  store ptr %t26, ptr %l10
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l10, !tbaa !29
  store ptr %t30, ptr %l7, !tbaa !29
  br label %bb6
bb5:
  %t31 = load i32, ptr %l11, !tbaa !23
  %t32 = lshr i32 %t31, 16
  %t33 = and i32 %t31, 65535
  %t34 = icmp eq i32 %t32, 1
  %t35 = select i1 %t34, i32 1, i32 0
  %t36 = icmp eq i32 %t31, 0
  %t37 = shl i32 %t35, 16
  %t38 = or i32 %t37, %t33
  %t39 = select i1 %t36, i32 0, i32 %t38
  %t41 = insertvalue { i32, ptr } zeroinitializer, i32 %t39, 0
  store { i32, ptr } %t41, ptr %rv
  br label %ret
bb6:
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t43 = insertvalue { i32, ptr } zeroinitializer, ptr %t42, 1
  store { i32, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprAsType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l44 = alloca i32
  %l49 = alloca { i64, ptr }
  %l51 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i64
  %l81 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l93 = alloca %"compiler/source:Span"
  %l94 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t191 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 36
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l17
  br label %bb1
bb1:
  %t6 = load i64, ptr %l17, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l1, !tbaa !29
  store ptr %t7, ptr %l3, !tbaa !29
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l3, !tbaa !29
  store ptr %t9, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t10 = load ptr, ptr %l19, !tbaa !29
  %t11 = icmp ne ptr %t10, null
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l19, !tbaa !29
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 28}
  %t16 = icmp eq i64 %t14, 0
  store i1 %t16, ptr %l20, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l20, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr { i64, [4 x i64] }, ptr %t18, i32 0, i32 1
  %t21 = getelementptr { %"compiler/source:Span", i32 }, ptr %t20, i32 0, i32 1
  %t22 = load i32, ptr %t21
  store i32 %t22, ptr %l4, !tbaa !23
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 36
  %t27 = load i32, ptr %l4, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t26, i32 %t27)
  br label %bb8
bb8:
  br label %bb27
bb9:
  %t30 = load ptr, ptr %l3, !tbaa !29
  store ptr %t30, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t31 = load ptr, ptr %l28, !tbaa !29
  %t32 = icmp ne ptr %t31, null
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load ptr, ptr %l28, !tbaa !29
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 28}
  %t37 = icmp eq i64 %t35, 12
  store i1 %t37, ptr %l29, !tbaa !21
  br label %bb11
bb11:
  %t38 = load i1, ptr %l29, !tbaa !21
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = getelementptr { i64, [4 x i64] }, ptr %t39, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t41, i32 0, i32 1
  %t43 = load ptr, ptr %t42
  store ptr %t43, ptr %l5, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t47, i32 0, i32 2
  %t49 = load i32, ptr %t48
  store i32 %t49, ptr %l6, !tbaa !23
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/parse:Parser", ptr %t51, i32 0, i32 36
  %t54 = load i32, ptr %l6, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t53, i32 %t54)
  br label %bb15
bb15:
  %t57 = load ptr, ptr %l5, !tbaa !29
  store ptr %t57, ptr %l3, !tbaa !29
  br label %bb25
bb16:
  br i1 true, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb24
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/parse:Parser", ptr %t59, i32 0, i32 36
  %t62 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t61, i64 %t62)
  br label %bb20
bb20:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s4, ptr %t65, { i64, ptr } { i64 60, ptr getelementptr inbounds (<{ i64, [60 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i32 %t67, ptr %l44
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb22, label %ok.69, !prof !99
ok.69:
  br label %bb21
bb21:
  br label %bb23
bb22:
  %t70 = load i32, ptr %l44, !tbaa !23
  %t71 = lshr i32 %t70, 16
  %t72 = and i32 %t70, 65535
  %t73 = icmp eq i32 %t71, 1
  %t74 = select i1 %t73, i32 1, i32 0
  %t75 = icmp eq i32 %t70, 0
  %t76 = shl i32 %t74, 16
  %t77 = or i32 %t76, %t72
  %t78 = select i1 %t75, i32 0, i32 %t77
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t80 = insertvalue { i32, ptr } zeroinitializer, i32 %t78, 0
  store { i32, ptr } %t80, ptr %rv
  br label %ret
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_7f479cc541fc1ad4_6e65e2fdc3321828)
  unreachable
bb25:
  br label %bb26
bb26:
  br label %bb2
bb27:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/parse:Parser", ptr %t81, i32 0, i32 36
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %s0, ptr %t83, i64 %t84)
  store { i64, ptr } %t87, ptr %l49
  br label %bb28
bb28:
  %t88 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t88, ptr %l7, !tbaa !27
  %t89 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 0
  store i64 %t91, ptr %l51, !tbaa !24
  %t92 = load i64, ptr %l51, !tbaa !24
  %t93 = icmp sge i64 %t92, 0
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t95 = load i64, ptr %l51, !tbaa !24
  %t96 = icmp sle i64 %t95, 2305843009213693951
  br i1 %t96, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_85a40113c80e7e3e_834c2ee7dcdf6d7a)
  unreachable
bb31:
  %t98 = load i64, ptr %l51, !tbaa !24
  %t99 = mul i64 %t98, 4
  %t100 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t99)
  %t101 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t104, 0
  store i64 %t106, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t108 = load i64, ptr %l10, !tbaa !24
  %t109 = load i64, ptr %l9, !tbaa !24
  %t112 = icmp sgt i64 %t108, %t109
  br i1 %t112, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_85a40113c80e7e3e_834c2ee7dcdf6d7a)
  unreachable
bb33:
  %t114 = load i64, ptr %l11, !tbaa !24
  %t116 = icmp sgt i64 %t114, 0
  br i1 %t116, label %bb35, label %bb36
bb34:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb38
bb35:
  %t118 = load i64, ptr %l10, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = sub i64 %t118, %t119
  %t123 = load i64, ptr %l11, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t128 = sub i64 %t126, 1
  %t129 = load i64, ptr %l11, !tbaa !24
  %t132 = sdiv i64 %t128, %t129
  store i64 %t132, ptr %l63, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb37
bb37:
  %t134 = load i64, ptr %l63, !tbaa !24
  store i64 %t134, ptr %l60, !tbaa !24
  br label %bb38
bb38:
  %t135 = load i64, ptr %l60, !tbaa !24
  store i64 %t135, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb39
bb39:
  %t136 = load i64, ptr %l13, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = icmp slt i64 %t136, %t137
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  %t144 = load i64, ptr %l9, !tbaa !24
  %t145 = load i64, ptr %l13, !tbaa !24
  %t146 = load i64, ptr %l11, !tbaa !24
  %t149 = mul i64 %t145, %t146
  %t152 = add i64 %t144, %t149
  store i64 %t152, ptr %l14, !tbaa !24
  %t154 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t154, ptr %l81, !tbaa !27
  %t155 = load i64, ptr %l14, !tbaa !24
  %t156 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t156, ptr %l83, !tbaa !27
  %t157 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t161 = sub i64 %t159, 1
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = sub i64 %t161, %t162
  %t167 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr i32, ptr %t168, i64 %t165
  %t170 = load i32, ptr %t169, !tbaa !33
  %t173 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t174 = load ptr, ptr %t173, !tbaa !27
  %t175 = getelementptr i32, ptr %t174, i64 %t155
  store i32 %t170, ptr %t175, !tbaa !33
  br label %bb43
bb43:
  %t176 = load i64, ptr %l13, !tbaa !24
  %t178 = add i64 %t176, 1
  store i64 %t178, ptr %l13, !tbaa !24
  br label %bb39
bb44:
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t180)
  store %"compiler/source:Span" %t182, ptr %l93
  br label %bb45
bb45:
  %t183 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t183, ptr %l94, !tbaa !27
  %t184 = icmp sge i64 0, 0
  br i1 %t184, label %bb46, label %bb47
bb46:
  %t186 = icmp sle i64 0, 1152921504606846975
  br i1 %t186, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_6c22b543e414e27d_3e5c1ca73c24bcf9)
  unreachable
bb48:
  %t188 = mul i64 0, 8
  %t189 = insertvalue { i64, ptr } undef, i64 0, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, [5 x i64] } zeroinitializer, ptr %t191
  %t192 = getelementptr { i64, [5 x i64] }, ptr %t191, i32 0, i32 0
  store i64 0, ptr %t192
  %t193 = load %"compiler/source:Span", ptr %l93
  %t194 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t193, 0
  %t195 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t196 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t194, { i64, ptr } %t195, 1
  %t198 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t196, { i64, ptr } %t190, 2
  %t199 = getelementptr { i64, [5 x i64] }, ptr %t191, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t198, ptr %t199
  %t200 = load { i64, [5 x i64] }, ptr %t191
  %t202 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t200, ptr %t202
  call void @__olang_scope_close(ptr %s0)
  %t204 = insertvalue { i32, ptr } zeroinitializer, ptr %t202, 1
  store { i32, ptr } %t204, ptr %rv
  br label %ret
bb49:
  call void @__olang_check_failed(ptr @olang_loc_6c22b543e414e27d_3e5c1ca73c24bcf9)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprList(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l19 = alloca i1
  %l24 = alloca { i64, ptr }
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 31
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v0, ptr %t7)
  %t10 = extractvalue { i32, ptr } %t9, 1
  %t11 = extractvalue { i32, ptr } %t9, 0
  store i32 %t11, ptr %l9
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb4, label %ok.13, !prof !99
ok.13:
  store ptr %t10, ptr %l8
  br label %bb3
bb3:
  %t14 = load ptr, ptr %l8, !tbaa !29
  store ptr %t14, ptr %l6, !tbaa !29
  br label %bb7
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/parse:Parser", ptr %t15, i32 0, i32 31
  %t18 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t17, i64 %t18)
  br label %bb6
bb6:
  %t22 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t22, ptr %rv
  br label %ret
bb7:
  %t23 = load ptr, ptr %l6, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 31
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t26, ptr %t23)
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t30, i32 74)
  store i1 %t33, ptr %l19
  br label %bb9
bb9:
  %t34 = load i1, ptr %l19, !tbaa !21
  %t35 = xor i1 %t34, true
  br i1 %t35, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb2
bb14:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/parse:Parser", ptr %t37, i32 0, i32 31
  %t40 = load i64, ptr %l1, !tbaa !24
  %t43 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t39, i64 %t40)
  store { i64, ptr } %t43, ptr %l24
  br label %bb15
bb15:
  %t44 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t45 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t44, 1
  store { i32, { i64, ptr } } %t45, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t25, i32 74)
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
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t42, i32 74)
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
  %t84 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t81, i32 79)
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
  %t142 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t139, i32 79)
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
  %t147 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t144, i32 77)
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
  %t153 = load i32, ptr %t152, !range !{i32 0, i32 113}
  %t155 = trunc i64 79 to i32
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
  %t264 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t261, i32 112)
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
  call void @__olang_check_failed(ptr @olang_loc_2f9cebe9c997fb45_8e0297a0e5dae7e9)
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
  call void @__olang_check_failed(ptr @olang_loc_2f9cebe9c997fb45_8e0297a0e5dae7e9)
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
  %t366 = load i32, ptr %l146, !range !{i32 0, i32 113}
  store i32 %t366, ptr %l11
  %t367 = load i32, ptr %l11, !range !{i32 0, i32 113}
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
  %t417 = load i32, ptr %l11, !range !{i32 0, i32 113}
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
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 111)
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
  %t32 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t29, i32 112)
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
  %t45 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s2, i32 112)
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
  %t76 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t73, i32 32)
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
  %t88 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t85, i32 36)
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
  call void @__olang_check_failed(ptr @olang_loc_3ab225d58e3cfe31_e99e7d1082de1bd)
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
  call void @__olang_check_failed(ptr @olang_loc_3ab225d58e3cfe31_e99e7d1082de1bd)
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
  %t165 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s6, ptr %t163, { i64, ptr } { i64 65, ptr getelementptr inbounds (<{ i64, [65 x i8] }>, ptr @.d2, i32 0, i32 1) })
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforStmt(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca i32
  %l16 = alloca %"compiler/token:Token"
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l21 = alloca ptr
  %lp23 = alloca ptr
  %l24 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca { i64, ptr }
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"compiler/source:Span"
  %l31 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i32
  %l43 = alloca i1
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca i32
  %l51 = alloca %"compiler/source:Span"
  %l54 = alloca i1
  %l56 = alloca i32
  %l63 = alloca i1
  %l65 = alloca i32
  %l68 = alloca i1
  %l71 = alloca i32
  %l73 = alloca i32
  %l74 = alloca i32
  %l78 = alloca i1
  %l80 = alloca i32
  %l82 = alloca i32
  %l83 = alloca i32
  %l85 = alloca i32
  %l88 = alloca i32
  %l89 = alloca i32
  %l93 = alloca i1
  %l94 = alloca ptr
  %l96 = alloca ptr
  %l97 = alloca i32
  %l101 = alloca i64
  %l104 = alloca i1
  %l108 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l111 = alloca i32
  %l123 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i32
  %l130 = alloca %"compiler/source:Span"
  %l133 = alloca i1
  %l135 = alloca i32
  %l136 = alloca %"compiler/source:Span"
  %l144 = alloca %"compiler/ast:ForIn"
  %l150 = alloca i1
  %l153 = alloca i1
  %l157 = alloca i32
  %l159 = alloca %"compiler/token:Token"
  %l160 = alloca i32
  %l162 = alloca i32
  %l163 = alloca i32
  %l165 = alloca ptr
  %l166 = alloca i32
  %l169 = alloca %"compiler/source:Span"
  %l170 = alloca ptr
  %l173 = alloca i1
  %l174 = alloca ptr
  %l176 = alloca ptr
  %l177 = alloca i32
  %l180 = alloca { i64, ptr }
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l188 = alloca %"compiler/ast:VarDecl"
  %l190 = alloca ptr
  %l192 = alloca ptr
  %l193 = alloca i32
  %l195 = alloca i32
  %l198 = alloca i32
  %l199 = alloca i32
  %l201 = alloca ptr
  %l203 = alloca ptr
  %l204 = alloca i32
  %l207 = alloca { i64, ptr }
  %l209 = alloca { i64, ptr }
  %l211 = alloca ptr
  %l213 = alloca { i64, ptr }
  %l217 = alloca %"compiler/ast:VarDecl"
  %l221 = alloca %"compiler/source:Span"
  %l226 = alloca i32
  %l229 = alloca i32
  %l230 = alloca i32
  %l232 = alloca ptr
  %l234 = alloca ptr
  %l235 = alloca i32
  %l237 = alloca i32
  %l240 = alloca i32
  %l241 = alloca i32
  %l243 = alloca ptr
  %l245 = alloca ptr
  %l246 = alloca i32
  %l248 = alloca { i64, ptr }
  %l250 = alloca { i64, ptr }
  %l251 = alloca i32
  %l255 = alloca %"compiler/source:Span"
  %l258 = alloca i1
  %l260 = alloca i32
  %l261 = alloca %"compiler/source:Span"
  %l267 = alloca %"compiler/ast:For3"
  %l273 = alloca i32
  %l275 = alloca ptr
  %l277 = alloca ptr
  %l278 = alloca i32
  %l280 = alloca { i64, ptr }
  %l282 = alloca { i64, ptr }
  %l283 = alloca i32
  %l287 = alloca %"compiler/source:Span"
  %l290 = alloca i1
  %l292 = alloca i32
  %s11 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t71 = alloca { i64, [4 x i64] }, align 8
  %t298 = alloca { i64, [4 x i64] }, align 8
  %t531 = alloca { i64, [4 x i64] }, align 8
  %t669 = alloca { i64, [4 x i64] }, align 8
  %t756 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 25)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l35
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l34
  br label %bb1
bb1:
  %t9 = load i32, ptr %l34, !tbaa !23
  store i32 %t9, ptr %l31, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l35, !tbaa !23
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
  %t21 = load i32, ptr %l31, !tbaa !23
  store i32 %t21, ptr %l2, !tbaa !23
  %t22 = load i32, ptr %l1, !tbaa !23
  %t24 = icmp sge i32 %t22, 0
  store i1 %t24, ptr %l3, !tbaa !21
  %t26 = load i1, ptr %l3, !tbaa !21
  br i1 %t26, label %bb4, label %bb5
bb4:
  %t28 = load i32, ptr %l1, !tbaa !23
  store i32 %t28, ptr %l2, !tbaa !23
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t30, i32 111)
  store i1 %t33, ptr %l43
  br label %bb7
bb7:
  %t34 = load i1, ptr %l43, !tbaa !21
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t35)
  %t38 = extractvalue { i32, { i64, ptr } } %t37, 1
  %t39 = extractvalue { i32, { i64, ptr } } %t37, 0
  store i32 %t39, ptr %l47
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb11, label %ok.41, !prof !99
ok.41:
  store { i64, ptr } %t38, ptr %l46
  br label %bb10
bb9:
  br label %bb19
bb10:
  %t42 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t42, ptr %l44, !tbaa !27
  br label %bb12
bb11:
  %t43 = load i32, ptr %l47, !tbaa !23
  %t44 = lshr i32 %t43, 16
  %t45 = and i32 %t43, 65535
  %t46 = icmp eq i32 %t44, 1
  %t47 = select i1 %t46, i32 1, i32 0
  %t48 = icmp eq i32 %t43, 0
  %t49 = shl i32 %t47, 16
  %t50 = or i32 %t49, %t45
  %t51 = select i1 %t48, i32 0, i32 %t50
  %t53 = insertvalue { i32, ptr } zeroinitializer, i32 %t51, 0
  store { i32, ptr } %t53, ptr %rv
  br label %ret
bb12:
  %t54 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t54, ptr %l4, !tbaa !27
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l2, !tbaa !23
  %t59 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t55, i32 %t56)
  store %"compiler/source:Span" %t59, ptr %l51
  br label %bb13
bb13:
  %t60 = load %"compiler/source:Span", ptr %l51
  store %"compiler/source:Span" %t60, ptr %l5
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t64 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t61, i32 8)
  store i1 %t64, ptr %l54
  br label %bb14
bb14:
  %t65 = load i1, ptr %l54, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t66)
  store i32 %t68, ptr %l56
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb18
bb18:
  %t69 = load %"compiler/source:Span", ptr %l5
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 0
  store i64 6, ptr %t72
  %t74 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t69, 0
  %t76 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t74, { i64, ptr } %t70, 1
  %t77 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t76, ptr %t77
  %t78 = load { i64, [4 x i64] }, ptr %t71
  %t80 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t78, ptr %t80
  %t82 = insertvalue { i32, ptr } zeroinitializer, ptr %t80, 1
  store { i32, ptr } %t82, ptr %rv
  br label %ret
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t86 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t83, i32 1)
  store i1 %t86, ptr %l63
  br label %bb20
bb20:
  %t87 = load i1, ptr %l63, !tbaa !21
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t88, i64 1)
  store i32 %t90, ptr %l65
  br label %bb23
bb22:
  br label %bb144
bb23:
  %t91 = load i32, ptr %l65, !range !{i32 0, i32 113}
  store i32 %t91, ptr %l6
  %t92 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t94 = trunc i64 27 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb26
bb25:
  %t97 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t99 = trunc i64 74 to i32
  %t100 = icmp eq i32 %t97, %t99
  store i1 %t100, ptr %l68, !tbaa !21
  br label %bb26
bb26:
  %t102 = load i1, ptr %l68, !tbaa !21
  br i1 %t102, label %bb27, label %bb28
bb27:
  store i32 0, ptr %l7, !tbaa !23
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t103)
  %t106 = extractvalue { i32, i32 } %t105, 1
  %t107 = extractvalue { i32, i32 } %t105, 0
  store i32 %t107, ptr %l74
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb30, label %ok.109, !prof !99
ok.109:
  store i32 %t106, ptr %l73
  br label %bb29
bb28:
  br label %bb75
bb29:
  %t110 = load i32, ptr %l73, !tbaa !23
  store i32 %t110, ptr %l71, !tbaa !23
  br label %bb31
bb30:
  %t111 = load i32, ptr %l74, !tbaa !23
  %t112 = lshr i32 %t111, 16
  %t113 = and i32 %t111, 65535
  %t114 = icmp eq i32 %t112, 1
  %t115 = select i1 %t114, i32 1, i32 0
  %t116 = icmp eq i32 %t111, 0
  %t117 = shl i32 %t115, 16
  %t118 = or i32 %t117, %t113
  %t119 = select i1 %t116, i32 0, i32 %t118
  %t121 = insertvalue { i32, ptr } zeroinitializer, i32 %t119, 0
  store { i32, ptr } %t121, ptr %rv
  br label %ret
bb31:
  %t122 = load i32, ptr %l71, !tbaa !23
  store i32 %t122, ptr %l8, !tbaa !23
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t126 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t123, i32 74)
  store i1 %t126, ptr %l78
  br label %bb32
bb32:
  %t127 = load i1, ptr %l78, !tbaa !21
  br i1 %t127, label %bb33, label %bb34
bb33:
  %t128 = load i32, ptr %l8, !tbaa !23
  store i32 %t128, ptr %l7, !tbaa !23
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t130)
  %t133 = extractvalue { i32, i32 } %t132, 1
  %t134 = extractvalue { i32, i32 } %t132, 0
  store i32 %t134, ptr %l83
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb36, label %ok.136, !prof !99
ok.136:
  store i32 %t133, ptr %l82
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t137 = load i32, ptr %l82, !tbaa !23
  store i32 %t137, ptr %l80, !tbaa !23
  br label %bb37
bb36:
  %t138 = load i32, ptr %l83, !tbaa !23
  %t139 = lshr i32 %t138, 16
  %t140 = and i32 %t138, 65535
  %t141 = icmp eq i32 %t139, 1
  %t142 = select i1 %t141, i32 1, i32 0
  %t143 = icmp eq i32 %t138, 0
  %t144 = shl i32 %t142, 16
  %t145 = or i32 %t144, %t140
  %t146 = select i1 %t143, i32 0, i32 %t145
  %t148 = insertvalue { i32, ptr } zeroinitializer, i32 %t146, 0
  store { i32, ptr } %t148, ptr %rv
  br label %ret
bb37:
  %t149 = load i32, ptr %l80, !tbaa !23
  store i32 %t149, ptr %l8, !tbaa !23
  br label %bb38
bb38:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t153 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t150, i32 27)
  %t154 = extractvalue { i32, i32 } %t153, 1
  %t155 = extractvalue { i32, i32 } %t153, 0
  store i32 %t155, ptr %l89
  %t156 = icmp ne i32 %t155, 0
  br i1 %t156, label %bb40, label %ok.157, !prof !99
ok.157:
  store i32 %t154, ptr %l88
  br label %bb39
bb39:
  %t158 = load i32, ptr %l88, !tbaa !23
  store i32 %t158, ptr %l85, !tbaa !23
  br label %bb41
bb40:
  %t159 = load i32, ptr %l89, !tbaa !23
  %t160 = lshr i32 %t159, 16
  %t161 = and i32 %t159, 65535
  %t162 = icmp eq i32 %t160, 1
  %t163 = select i1 %t162, i32 1, i32 0
  %t164 = icmp eq i32 %t159, 0
  %t165 = shl i32 %t163, 16
  %t166 = or i32 %t165, %t161
  %t167 = select i1 %t164, i32 0, i32 %t166
  %t169 = insertvalue { i32, ptr } zeroinitializer, i32 %t167, 0
  store { i32, ptr } %t169, ptr %rv
  br label %ret
bb41:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t173 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t170, i32 11)
  store i1 %t173, ptr %l93
  br label %bb42
bb42:
  %t174 = load i1, ptr %l93, !tbaa !21
  store i1 %t174, ptr %l9, !tbaa !21
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforSource(ptr %v0, ptr %v1, ptr %t175)
  %t178 = extractvalue { i32, ptr } %t177, 1
  %t179 = extractvalue { i32, ptr } %t177, 0
  store i32 %t179, ptr %l97
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb44, label %ok.181, !prof !99
ok.181:
  store ptr %t178, ptr %l96
  br label %bb43
bb43:
  %t182 = load ptr, ptr %l96, !tbaa !29
  store ptr %t182, ptr %l94, !tbaa !29
  br label %bb45
bb44:
  %t183 = load i32, ptr %l97, !tbaa !23
  %t184 = lshr i32 %t183, 16
  %t185 = and i32 %t183, 65535
  %t186 = icmp eq i32 %t184, 1
  %t187 = select i1 %t186, i32 1, i32 0
  %t188 = icmp eq i32 %t183, 0
  %t189 = shl i32 %t187, 16
  %t190 = or i32 %t189, %t185
  %t191 = select i1 %t188, i32 0, i32 %t190
  %t193 = insertvalue { i32, ptr } zeroinitializer, i32 %t191, 0
  store { i32, ptr } %t193, ptr %rv
  br label %ret
bb45:
  %t194 = load ptr, ptr %l94, !tbaa !29
  store ptr %t194, ptr %l10, !tbaa !29
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t197 = getelementptr %"compiler/parse:Parser", ptr %t195, i32 0, i32 30
  %t199 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t197)
  store i64 %t199, ptr %l101
  br label %bb46
bb46:
  %t200 = load i64, ptr %l101, !tbaa !24
  store i64 %t200, ptr %l11, !tbaa !24
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load ptr, ptr %l10, !tbaa !29
  %t205 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereflListPath(ptr %v0, ptr %v1, ptr %t201, ptr %t202)
  store i1 %t205, ptr %l104
  br label %bb47
bb47:
  %t206 = load i1, ptr %l104, !tbaa !21
  br i1 %t206, label %bb48, label %bb49
bb48:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/parse:Parser", ptr %t207, i32 0, i32 30
  %t210 = load i32, ptr %l8, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t209, i32 %t210)
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t215 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebody(ptr %v0, ptr %v1, ptr %t213)
  %t216 = extractvalue { i32, { i64, ptr } } %t215, 1
  %t217 = extractvalue { i32, { i64, ptr } } %t215, 0
  store i32 %t217, ptr %l111
  %t218 = icmp ne i32 %t217, 0
  br i1 %t218, label %bb53, label %ok.219, !prof !99
ok.219:
  store { i64, ptr } %t216, ptr %l110
  br label %bb52
bb52:
  %t220 = load { i64, ptr }, ptr %l110, !tbaa !27
  store { i64, ptr } %t220, ptr %l108, !tbaa !27
  br label %bb56
bb53:
  br label %bb54
bb54:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/parse:Parser", ptr %t221, i32 0, i32 30
  %t224 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t223, i64 %t224)
  br label %bb55
bb55:
  %t228 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t228, ptr %rv
  br label %ret
bb56:
  %t229 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t229, ptr %l12, !tbaa !27
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/parse:Parser", ptr %t230, i32 0, i32 30
  %t233 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t232, i64 %t233)
  br label %bb57
bb57:
  %t236 = icmp sge i64 0, 0
  br i1 %t236, label %bb58, label %bb59
bb58:
  %t238 = icmp sle i64 0, 1152921504606846975
  br i1 %t238, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_a242a306f172fb83_ec0e5b3ff97fbb87)
  unreachable
bb60:
  %t240 = mul i64 0, 8
  %t241 = insertvalue { i64, ptr } undef, i64 0, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t242, ptr %l13, !tbaa !27
  %t244 = load i1, ptr %l9, !tbaa !21
  br i1 %t244, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_a242a306f172fb83_ec0e5b3ff97fbb87)
  unreachable
bb62:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %t246, i1 false)
  %t249 = extractvalue { i32, { i64, ptr } } %t248, 1
  %t250 = extractvalue { i32, { i64, ptr } } %t248, 0
  store i32 %t250, ptr %l126
  %t251 = icmp ne i32 %t250, 0
  br i1 %t251, label %bb65, label %ok.252, !prof !99
ok.252:
  store { i64, ptr } %t249, ptr %l125
  br label %bb64
bb63:
  br label %bb67
bb64:
  %t253 = load { i64, ptr }, ptr %l125, !tbaa !27
  store { i64, ptr } %t253, ptr %l123, !tbaa !27
  br label %bb66
bb65:
  %t254 = load i32, ptr %l126, !tbaa !23
  %t255 = lshr i32 %t254, 16
  %t256 = and i32 %t254, 65535
  %t257 = icmp eq i32 %t255, 1
  %t258 = select i1 %t257, i32 1, i32 0
  %t259 = icmp eq i32 %t254, 0
  %t260 = shl i32 %t258, 16
  %t261 = or i32 %t260, %t256
  %t262 = select i1 %t259, i32 0, i32 %t261
  %t264 = insertvalue { i32, ptr } zeroinitializer, i32 %t262, 0
  store { i32, ptr } %t264, ptr %rv
  br label %ret
bb66:
  %t265 = load { i64, ptr }, ptr %l123, !tbaa !27
  store { i64, ptr } %t265, ptr %l13, !tbaa !27
  br label %bb67
bb67:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load i32, ptr %l2, !tbaa !23
  %t270 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t266, i32 %t267)
  store %"compiler/source:Span" %t270, ptr %l130
  br label %bb68
bb68:
  %t271 = load %"compiler/source:Span", ptr %l130
  store %"compiler/source:Span" %t271, ptr %l14
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t275 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t272, i32 8)
  store i1 %t275, ptr %l133
  br label %bb69
bb69:
  %t276 = load i1, ptr %l133, !tbaa !21
  br i1 %t276, label %bb70, label %bb71
bb70:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t277)
  store i32 %t279, ptr %l135
  br label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb73
bb73:
  %t280 = load %"compiler/source:Span", ptr %l14
  store %"compiler/source:Span" %t280, ptr %l136
  %t281 = load i32, ptr %l7, !tbaa !23
  %t282 = load i32, ptr %l8, !tbaa !23
  %t283 = load ptr, ptr %l10, !tbaa !29
  %t284 = load i1, ptr %l9, !tbaa !21
  %t285 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t286 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t287 = load i1, ptr %l3, !tbaa !21
  %t295 = call %"compiler/ast:ForIn" @compiler_2fast_3aForIn_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, i32 %t281, i32 %t282, ptr %t283, i1 %t284, { i64, ptr } %t285, { i64, ptr } %t286, i1 %t287)
  store %"compiler/ast:ForIn" %t295, ptr %l144
  br label %bb74
bb74:
  %t296 = load %"compiler/ast:ForIn", ptr %l144
  %t297 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store %"compiler/ast:ForIn" %t296, ptr %t297
  store { i64, [4 x i64] } zeroinitializer, ptr %t298
  %t299 = getelementptr { i64, [4 x i64] }, ptr %t298, i32 0, i32 0
  store i64 9, ptr %t299
  %t300 = load %"compiler/source:Span", ptr %l136
  %t301 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t300, 0
  %t303 = insertvalue { %"compiler/source:Span", ptr } %t301, ptr %t297, 1
  %t304 = getelementptr { i64, [4 x i64] }, ptr %t298, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t303, ptr %t304
  %t305 = load { i64, [4 x i64] }, ptr %t298
  %t307 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t305, ptr %t307
  %t309 = insertvalue { i32, ptr } zeroinitializer, ptr %t307, 1
  store { i32, ptr } %t309, ptr %rv
  br label %ret
bb75:
  %t310 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t312 = trunc i64 79 to i32
  %t313 = icmp eq i32 %t310, %t312
  br i1 %t313, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l150, !tbaa !21
  br label %bb78
bb77:
  %t315 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t317 = trunc i64 1 to i32
  %t318 = icmp eq i32 %t315, %t317
  store i1 %t318, ptr %l150, !tbaa !21
  br label %bb78
bb78:
  %t320 = load i1, ptr %l150, !tbaa !21
  br i1 %t320, label %bb79, label %bb80
bb79:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb81
bb80:
  %t321 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t323 = trunc i64 38 to i32
  %t324 = icmp eq i32 %t321, %t323
  store i1 %t324, ptr %l153, !tbaa !21
  br label %bb81
bb81:
  %t326 = load i1, ptr %l153, !tbaa !21
  br i1 %t326, label %bb82, label %bb83
bb82:
  store %olang.scope zeroinitializer, ptr %s11
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t327)
  store i32 %t329, ptr %l157
  br label %bb84
bb83:
  br label %bb143
bb84:
  %t330 = load i32, ptr %l157, !tbaa !23
  store i32 %t330, ptr %l15, !tbaa !23
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t331)
  store %"compiler/token:Token" %t333, ptr %l159
  br label %bb85
bb85:
  %t334 = load %"compiler/token:Token", ptr %l159
  store %"compiler/token:Token" %t334, ptr %l16
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t337 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t335)
  %t338 = extractvalue { i32, i32 } %t337, 1
  %t339 = extractvalue { i32, i32 } %t337, 0
  store i32 %t339, ptr %l163
  %t340 = icmp ne i32 %t339, 0
  br i1 %t340, label %bb87, label %ok.341, !prof !99
ok.341:
  store i32 %t338, ptr %l162
  br label %bb86
bb86:
  %t342 = load i32, ptr %l162, !tbaa !23
  store i32 %t342, ptr %l160, !tbaa !23
  br label %bb88
bb87:
  %t343 = load i32, ptr %l163, !tbaa !23
  %t344 = lshr i32 %t343, 16
  %t345 = and i32 %t343, 65535
  %t346 = icmp eq i32 %t344, 1
  %t347 = select i1 %t346, i32 1, i32 0
  %t348 = icmp eq i32 %t343, 0
  %t349 = shl i32 %t347, 16
  %t350 = or i32 %t349, %t345
  %t351 = select i1 %t348, i32 0, i32 %t350
  call void @__olang_scope_close(ptr %s11)
  %t353 = insertvalue { i32, ptr } zeroinitializer, i32 %t351, 0
  store { i32, ptr } %t353, ptr %rv
  br label %ret
bb88:
  %t354 = load i32, ptr %l160, !tbaa !23
  %t355 = load ptr, ptr %l0, !tbaa !29
  store ptr %t355, ptr %l165, !tbaa !29
  store i32 %t354, ptr %l166, !tbaa !23
  %t357 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 2
  %t358 = load i32, ptr %t357, !tbaa !23
  %t359 = getelementptr %"compiler/token:Token", ptr %l16, i32 0, i32 3
  %t360 = load i32, ptr %t359, !tbaa !23
  %t363 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s11, i32 %t358, i32 %t360)
  store %"compiler/source:Span" %t363, ptr %l169
  br label %bb89
bb89:
  %t364 = load ptr, ptr %l165, !tbaa !29
  %t365 = load i32, ptr %l166, !tbaa !23
  %t366 = load %"compiler/source:Span", ptr %l169
  %t367 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %t364, i32 %t365, %"compiler/source:Span" %t366)
  store ptr %t367, ptr %l170
  br label %bb90
bb90:
  %t368 = load ptr, ptr %l170, !tbaa !29
  store ptr %t368, ptr %l18, !tbaa !29
  store ptr null, ptr %l19, !tbaa !29
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t372 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t369, i32 79)
  store i1 %t372, ptr %l173
  br label %bb91
bb91:
  %t373 = load i1, ptr %l173, !tbaa !21
  br i1 %t373, label %bb92, label %bb93
bb92:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t374)
  %t377 = extractvalue { i32, ptr } %t376, 1
  %t378 = extractvalue { i32, ptr } %t376, 0
  store i32 %t378, ptr %l177
  %t379 = icmp ne i32 %t378, 0
  br i1 %t379, label %bb95, label %ok.380, !prof !99
ok.380:
  store ptr %t377, ptr %l176
  br label %bb94
bb93:
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t383 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t381)
  %t384 = extractvalue { i32, ptr } %t383, 1
  %t385 = extractvalue { i32, ptr } %t383, 0
  store i32 %t385, ptr %l193
  %t386 = icmp ne i32 %t385, 0
  br i1 %t386, label %bb103, label %ok.387, !prof !99
ok.387:
  store ptr %t384, ptr %l192
  br label %bb102
bb94:
  %t388 = load ptr, ptr %l176, !tbaa !29
  store ptr %t388, ptr %l174, !tbaa !29
  br label %bb96
bb95:
  %t389 = load i32, ptr %l177, !tbaa !23
  %t390 = lshr i32 %t389, 16
  %t391 = and i32 %t389, 65535
  %t392 = icmp eq i32 %t390, 1
  %t393 = select i1 %t392, i32 1, i32 0
  %t394 = icmp eq i32 %t389, 0
  %t395 = shl i32 %t393, 16
  %t396 = or i32 %t395, %t391
  %t397 = select i1 %t394, i32 0, i32 %t396
  call void @__olang_scope_close(ptr %s11)
  %t399 = insertvalue { i32, ptr } zeroinitializer, i32 %t397, 0
  store { i32, ptr } %t399, ptr %rv
  br label %ret
bb96:
  %t400 = load ptr, ptr %l174, !tbaa !29
  %t401 = load ptr, ptr %l18, !tbaa !29
  %t403 = getelementptr %"compiler/parse:NameList", ptr %t401, i32 0, i32 0
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l180, !tbaa !27
  %t405 = load ptr, ptr %l18, !tbaa !29
  %t407 = getelementptr %"compiler/parse:NameList", ptr %t405, i32 0, i32 1
  %t408 = load { i64, ptr }, ptr %t407, !tbaa !27
  store { i64, ptr } %t408, ptr %l182, !tbaa !27
  %t410 = mul i64 1, 8
  %t411 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t410)
  %t412 = insertvalue { i64, ptr } undef, i64 1, 0
  %t413 = insertvalue { i64, ptr } %t412, ptr %t411, 1
  store { i64, ptr } %t413, ptr %l184, !tbaa !27
  %t415 = getelementptr { i64, ptr }, ptr %l184, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr ptr, ptr %t416, i64 0
  store ptr %t400, ptr %t417, !tbaa !39
  %t418 = icmp sge i64 0, 0
  br i1 %t418, label %bb97, label %bb98
bb97:
  %t420 = icmp sle i64 0, 1152921504606846975
  br i1 %t420, label %bb99, label %bb100
bb98:
  call void @__olang_check_failed(ptr @olang_loc_f716ec0be1acdc8e_190b3cb13895b492)
  unreachable
bb99:
  %t422 = mul i64 0, 8
  %t423 = insertvalue { i64, ptr } undef, i64 0, 0
  %t424 = insertvalue { i64, ptr } %t423, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t425 = load { i64, ptr }, ptr %l180, !tbaa !27
  %t426 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t427 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t429 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t425, { i64, ptr } %t426, ptr null, { i64, ptr } %t427, i1 true, i1 false, { i64, ptr } %t424, i1 false)
  store %"compiler/ast:VarDecl" %t429, ptr %l188
  br label %bb101
bb100:
  call void @__olang_check_failed(ptr @olang_loc_f716ec0be1acdc8e_190b3cb13895b492)
  unreachable
bb101:
  %t430 = load %"compiler/ast:VarDecl", ptr %l188
  %t431 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t430, ptr %t431
  store ptr %t431, ptr %l19, !tbaa !29
  br label %bb116
bb102:
  %t433 = load ptr, ptr %l192, !tbaa !29
  store ptr %t433, ptr %l190, !tbaa !29
  br label %bb104
bb103:
  %t434 = load i32, ptr %l193, !tbaa !23
  %t435 = lshr i32 %t434, 16
  %t436 = and i32 %t434, 65535
  %t437 = icmp eq i32 %t435, 1
  %t438 = select i1 %t437, i32 1, i32 0
  %t439 = icmp eq i32 %t434, 0
  %t440 = shl i32 %t438, 16
  %t441 = or i32 %t440, %t436
  %t442 = select i1 %t439, i32 0, i32 %t441
  call void @__olang_scope_close(ptr %s11)
  %t444 = insertvalue { i32, ptr } zeroinitializer, i32 %t442, 0
  store { i32, ptr } %t444, ptr %rv
  br label %ret
bb104:
  %t445 = load ptr, ptr %l190, !tbaa !29
  store ptr %t445, ptr %l21, !tbaa !29
  %t446 = load ptr, ptr %l0, !tbaa !29
  %t449 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t446, i32 77)
  %t450 = extractvalue { i32, i32 } %t449, 1
  %t451 = extractvalue { i32, i32 } %t449, 0
  store i32 %t451, ptr %l199
  %t452 = icmp ne i32 %t451, 0
  br i1 %t452, label %bb106, label %ok.453, !prof !99
ok.453:
  store i32 %t450, ptr %l198
  br label %bb105
bb105:
  %t454 = load i32, ptr %l198, !tbaa !23
  store i32 %t454, ptr %l195, !tbaa !23
  br label %bb107
bb106:
  %t455 = load i32, ptr %l199, !tbaa !23
  %t456 = lshr i32 %t455, 16
  %t457 = and i32 %t455, 65535
  %t458 = icmp eq i32 %t456, 1
  %t459 = select i1 %t458, i32 1, i32 0
  %t460 = icmp eq i32 %t455, 0
  %t461 = shl i32 %t459, 16
  %t462 = or i32 %t461, %t457
  %t463 = select i1 %t460, i32 0, i32 %t462
  call void @__olang_scope_close(ptr %s11)
  %t465 = insertvalue { i32, ptr } zeroinitializer, i32 %t463, 0
  store { i32, ptr } %t465, ptr %rv
  br label %ret
bb107:
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t468 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t466)
  %t469 = extractvalue { i32, ptr } %t468, 1
  %t470 = extractvalue { i32, ptr } %t468, 0
  store i32 %t470, ptr %l204
  %t471 = icmp ne i32 %t470, 0
  br i1 %t471, label %bb109, label %ok.472, !prof !99
ok.472:
  store ptr %t469, ptr %l203
  br label %bb108
bb108:
  %t473 = load ptr, ptr %l203, !tbaa !29
  store ptr %t473, ptr %l201, !tbaa !29
  br label %bb110
bb109:
  %t474 = load i32, ptr %l204, !tbaa !23
  %t475 = lshr i32 %t474, 16
  %t476 = and i32 %t474, 65535
  %t477 = icmp eq i32 %t475, 1
  %t478 = select i1 %t477, i32 1, i32 0
  %t479 = icmp eq i32 %t474, 0
  %t480 = shl i32 %t478, 16
  %t481 = or i32 %t480, %t476
  %t482 = select i1 %t479, i32 0, i32 %t481
  call void @__olang_scope_close(ptr %s11)
  %t484 = insertvalue { i32, ptr } zeroinitializer, i32 %t482, 0
  store { i32, ptr } %t484, ptr %rv
  br label %ret
bb110:
  %t485 = load ptr, ptr %l201, !tbaa !29
  %t486 = load ptr, ptr %l18, !tbaa !29
  %t488 = getelementptr %"compiler/parse:NameList", ptr %t486, i32 0, i32 0
  %t489 = load { i64, ptr }, ptr %t488, !tbaa !27
  store { i64, ptr } %t489, ptr %l207, !tbaa !27
  %t490 = load ptr, ptr %l18, !tbaa !29
  %t492 = getelementptr %"compiler/parse:NameList", ptr %t490, i32 0, i32 1
  %t493 = load { i64, ptr }, ptr %t492, !tbaa !27
  store { i64, ptr } %t493, ptr %l209, !tbaa !27
  %t494 = load ptr, ptr %l21, !tbaa !29
  store ptr %t494, ptr %l211, !tbaa !29
  %t497 = mul i64 1, 8
  %t498 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t497)
  %t499 = insertvalue { i64, ptr } undef, i64 1, 0
  %t500 = insertvalue { i64, ptr } %t499, ptr %t498, 1
  store { i64, ptr } %t500, ptr %l213, !tbaa !27
  %t502 = getelementptr { i64, ptr }, ptr %l213, i32 0, i32 1
  %t503 = load ptr, ptr %t502, !tbaa !27
  %t504 = getelementptr ptr, ptr %t503, i64 0
  store ptr %t485, ptr %t504, !tbaa !39
  %t505 = icmp sge i64 0, 0
  br i1 %t505, label %bb111, label %bb112
bb111:
  %t507 = icmp sle i64 0, 1152921504606846975
  br i1 %t507, label %bb113, label %bb114
bb112:
  call void @__olang_check_failed(ptr @olang_loc_cb74f4f97f245c8d_4142c043b1c11131)
  unreachable
bb113:
  %t509 = mul i64 0, 8
  %t510 = insertvalue { i64, ptr } undef, i64 0, 0
  %t511 = insertvalue { i64, ptr } %t510, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t512 = load { i64, ptr }, ptr %l207, !tbaa !27
  %t513 = load { i64, ptr }, ptr %l209, !tbaa !27
  %t514 = load ptr, ptr %l211, !tbaa !29
  %t515 = load { i64, ptr }, ptr %l213, !tbaa !27
  %t517 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t512, { i64, ptr } %t513, ptr %t514, { i64, ptr } %t515, i1 false, i1 false, { i64, ptr } %t511, i1 false)
  store %"compiler/ast:VarDecl" %t517, ptr %l217
  br label %bb115
bb114:
  call void @__olang_check_failed(ptr @olang_loc_cb74f4f97f245c8d_4142c043b1c11131)
  unreachable
bb115:
  %t518 = load %"compiler/ast:VarDecl", ptr %l217
  %t519 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 88, i64 8)
  store %"compiler/ast:VarDecl" %t518, ptr %t519
  store ptr %t519, ptr %l19, !tbaa !29
  br label %bb116
bb116:
  %t521 = load ptr, ptr %l0, !tbaa !29
  %t522 = load i32, ptr %l15, !tbaa !23
  %t525 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t521, i32 %t522)
  store %"compiler/source:Span" %t525, ptr %l221
  br label %bb117
bb117:
  %t526 = load ptr, ptr %l19, !tbaa !29
  %t528 = icmp eq ptr %t526, null
  br i1 %t528, label %bb118, label %bb119
bb118:
  call void @__olang_check_failed(ptr @olang_loc_1dc7182ae9b7028_5b1b6c7caeebe964)
  unreachable
bb119:
  br label %bb120
bb120:
  %t530 = load ptr, ptr %l19, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t531
  %t532 = getelementptr { i64, [4 x i64] }, ptr %t531, i32 0, i32 0
  store i64 1, ptr %t532
  %t533 = load %"compiler/source:Span", ptr %l221
  %t534 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t533, 0
  %t536 = insertvalue { %"compiler/source:Span", ptr } %t534, ptr %t530, 1
  %t537 = getelementptr { i64, [4 x i64] }, ptr %t531, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t536, ptr %t537
  %t538 = load { i64, [4 x i64] }, ptr %t531
  %t539 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store ptr %t539, ptr %lp23
  %t541 = load ptr, ptr %lp23
  store { i64, [4 x i64] } %t538, ptr %t541
  %t542 = load ptr, ptr %l0, !tbaa !29
  %t545 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t542, i32 74)
  %t546 = extractvalue { i32, i32 } %t545, 1
  %t547 = extractvalue { i32, i32 } %t545, 0
  store i32 %t547, ptr %l230
  %t548 = icmp ne i32 %t547, 0
  br i1 %t548, label %bb122, label %ok.549, !prof !99
ok.549:
  store i32 %t546, ptr %l229
  br label %bb121
bb121:
  %t550 = load i32, ptr %l229, !tbaa !23
  store i32 %t550, ptr %l226, !tbaa !23
  br label %bb123
bb122:
  %t551 = load i32, ptr %l230, !tbaa !23
  %t552 = lshr i32 %t551, 16
  %t553 = and i32 %t551, 65535
  %t554 = icmp eq i32 %t552, 1
  %t555 = select i1 %t554, i32 1, i32 0
  %t556 = icmp eq i32 %t551, 0
  %t557 = shl i32 %t555, 16
  %t558 = or i32 %t557, %t553
  %t559 = select i1 %t556, i32 0, i32 %t558
  call void @__olang_scope_close(ptr %s11)
  %t561 = insertvalue { i32, ptr } zeroinitializer, i32 %t559, 0
  store { i32, ptr } %t561, ptr %rv
  br label %ret
bb123:
  %t562 = load ptr, ptr %l0, !tbaa !29
  %t564 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t562)
  %t565 = extractvalue { i32, ptr } %t564, 1
  %t566 = extractvalue { i32, ptr } %t564, 0
  store i32 %t566, ptr %l235
  %t567 = icmp ne i32 %t566, 0
  br i1 %t567, label %bb125, label %ok.568, !prof !99
ok.568:
  store ptr %t565, ptr %l234
  br label %bb124
bb124:
  %t569 = load ptr, ptr %l234, !tbaa !29
  store ptr %t569, ptr %l232, !tbaa !29
  br label %bb126
bb125:
  %t570 = load i32, ptr %l235, !tbaa !23
  %t571 = lshr i32 %t570, 16
  %t572 = and i32 %t570, 65535
  %t573 = icmp eq i32 %t571, 1
  %t574 = select i1 %t573, i32 1, i32 0
  %t575 = icmp eq i32 %t570, 0
  %t576 = shl i32 %t574, 16
  %t577 = or i32 %t576, %t572
  %t578 = select i1 %t575, i32 0, i32 %t577
  call void @__olang_scope_close(ptr %s11)
  %t580 = insertvalue { i32, ptr } zeroinitializer, i32 %t578, 0
  store { i32, ptr } %t580, ptr %rv
  br label %ret
bb126:
  %t581 = load ptr, ptr %l232, !tbaa !29
  store ptr %t581, ptr %l24, !tbaa !29
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t585 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t582, i32 74)
  %t586 = extractvalue { i32, i32 } %t585, 1
  %t587 = extractvalue { i32, i32 } %t585, 0
  store i32 %t587, ptr %l241
  %t588 = icmp ne i32 %t587, 0
  br i1 %t588, label %bb128, label %ok.589, !prof !99
ok.589:
  store i32 %t586, ptr %l240
  br label %bb127
bb127:
  %t590 = load i32, ptr %l240, !tbaa !23
  store i32 %t590, ptr %l237, !tbaa !23
  br label %bb129
bb128:
  %t591 = load i32, ptr %l241, !tbaa !23
  %t592 = lshr i32 %t591, 16
  %t593 = and i32 %t591, 65535
  %t594 = icmp eq i32 %t592, 1
  %t595 = select i1 %t594, i32 1, i32 0
  %t596 = icmp eq i32 %t591, 0
  %t597 = shl i32 %t595, 16
  %t598 = or i32 %t597, %t593
  %t599 = select i1 %t596, i32 0, i32 %t598
  call void @__olang_scope_close(ptr %s11)
  %t601 = insertvalue { i32, ptr } zeroinitializer, i32 %t599, 0
  store { i32, ptr } %t601, ptr %rv
  br label %ret
bb129:
  %t602 = load ptr, ptr %l0, !tbaa !29
  %t604 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esimpleStmt(ptr %v0, ptr %v1, ptr %t602)
  %t605 = extractvalue { i32, ptr } %t604, 1
  %t606 = extractvalue { i32, ptr } %t604, 0
  store i32 %t606, ptr %l246
  %t607 = icmp ne i32 %t606, 0
  br i1 %t607, label %bb131, label %ok.608, !prof !99
ok.608:
  store ptr %t605, ptr %l245
  br label %bb130
bb130:
  %t609 = load ptr, ptr %l245, !tbaa !29
  store ptr %t609, ptr %l243, !tbaa !29
  br label %bb132
bb131:
  %t610 = load i32, ptr %l246, !tbaa !23
  %t611 = lshr i32 %t610, 16
  %t612 = and i32 %t610, 65535
  %t613 = icmp eq i32 %t611, 1
  %t614 = select i1 %t613, i32 1, i32 0
  %t615 = icmp eq i32 %t610, 0
  %t616 = shl i32 %t614, 16
  %t617 = or i32 %t616, %t612
  %t618 = select i1 %t615, i32 0, i32 %t617
  call void @__olang_scope_close(ptr %s11)
  %t620 = insertvalue { i32, ptr } zeroinitializer, i32 %t618, 0
  store { i32, ptr } %t620, ptr %rv
  br label %ret
bb132:
  %t621 = load ptr, ptr %l243, !tbaa !29
  store ptr %t621, ptr %l25, !tbaa !29
  %t622 = load ptr, ptr %l0, !tbaa !29
  %t624 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebody(ptr %v0, ptr %v1, ptr %t622)
  %t625 = extractvalue { i32, { i64, ptr } } %t624, 1
  %t626 = extractvalue { i32, { i64, ptr } } %t624, 0
  store i32 %t626, ptr %l251
  %t627 = icmp ne i32 %t626, 0
  br i1 %t627, label %bb134, label %ok.628, !prof !99
ok.628:
  store { i64, ptr } %t625, ptr %l250
  br label %bb133
bb133:
  %t629 = load { i64, ptr }, ptr %l250, !tbaa !27
  store { i64, ptr } %t629, ptr %l248, !tbaa !27
  br label %bb135
bb134:
  %t630 = load i32, ptr %l251, !tbaa !23
  %t631 = lshr i32 %t630, 16
  %t632 = and i32 %t630, 65535
  %t633 = icmp eq i32 %t631, 1
  %t634 = select i1 %t633, i32 1, i32 0
  %t635 = icmp eq i32 %t630, 0
  %t636 = shl i32 %t634, 16
  %t637 = or i32 %t636, %t632
  %t638 = select i1 %t635, i32 0, i32 %t637
  call void @__olang_scope_close(ptr %s11)
  %t640 = insertvalue { i32, ptr } zeroinitializer, i32 %t638, 0
  store { i32, ptr } %t640, ptr %rv
  br label %ret
bb135:
  %t641 = load { i64, ptr }, ptr %l248, !tbaa !27
  store { i64, ptr } %t641, ptr %l26, !tbaa !27
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t643 = load i32, ptr %l2, !tbaa !23
  %t646 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t642, i32 %t643)
  store %"compiler/source:Span" %t646, ptr %l255
  br label %bb136
bb136:
  %t647 = load %"compiler/source:Span", ptr %l255
  store %"compiler/source:Span" %t647, ptr %l27
  %t648 = load ptr, ptr %l0, !tbaa !29
  %t651 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t648, i32 8)
  store i1 %t651, ptr %l258
  br label %bb137
bb137:
  %t652 = load i1, ptr %l258, !tbaa !21
  br i1 %t652, label %bb138, label %bb139
bb138:
  %t653 = load ptr, ptr %l0, !tbaa !29
  %t655 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t653)
  store i32 %t655, ptr %l260
  br label %bb140
bb139:
  br label %bb141
bb140:
  br label %bb141
bb141:
  %t656 = load %"compiler/source:Span", ptr %l27
  store %"compiler/source:Span" %t656, ptr %l261
  %t657 = load ptr, ptr %lp23
  %t658 = load ptr, ptr %l24, !tbaa !29
  %t660 = load ptr, ptr %l25, !tbaa !29
  %t661 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t666 = call %"compiler/ast:For3" @compiler_2fast_3aFor3_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %t657, ptr %t658, ptr %t660, { i64, ptr } %t661)
  store %"compiler/ast:For3" %t666, ptr %l267
  br label %bb142
bb142:
  %t667 = load %"compiler/ast:For3", ptr %l267
  %t668 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store %"compiler/ast:For3" %t667, ptr %t668
  store { i64, [4 x i64] } zeroinitializer, ptr %t669
  %t670 = getelementptr { i64, [4 x i64] }, ptr %t669, i32 0, i32 0
  store i64 8, ptr %t670
  %t671 = load %"compiler/source:Span", ptr %l261
  %t672 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t671, 0
  %t674 = insertvalue { %"compiler/source:Span", ptr } %t672, ptr %t668, 1
  %t675 = getelementptr { i64, [4 x i64] }, ptr %t669, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t674, ptr %t675
  %t676 = load { i64, [4 x i64] }, ptr %t669
  %t678 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t676, ptr %t678
  call void @__olang_scope_close(ptr %s11)
  %t680 = insertvalue { i32, ptr } zeroinitializer, ptr %t678, 1
  store { i32, ptr } %t680, ptr %rv
  br label %ret
bb143:
  br label %bb144
bb144:
  %t681 = load i1, ptr %l3, !tbaa !21
  br i1 %t681, label %bb145, label %bb146
bb145:
  store %olang.scope zeroinitializer, ptr %s15
  %t683 = load ptr, ptr %l0, !tbaa !29
  %t685 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s15, ptr %t683, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i32 %t685, ptr %l273
  %t686 = icmp ne i32 %t685, 0
  br i1 %t686, label %bb148, label %ok.687, !prof !99
ok.687:
  br label %bb147
bb146:
  br label %bb150
bb147:
  br label %bb149
bb148:
  %t688 = load i32, ptr %l273, !tbaa !23
  %t689 = lshr i32 %t688, 16
  %t690 = and i32 %t688, 65535
  %t691 = icmp eq i32 %t689, 1
  %t692 = select i1 %t691, i32 1, i32 0
  %t693 = icmp eq i32 %t688, 0
  %t694 = shl i32 %t692, 16
  %t695 = or i32 %t694, %t690
  %t696 = select i1 %t693, i32 0, i32 %t695
  call void @__olang_scope_close(ptr %s15)
  %t698 = insertvalue { i32, ptr } zeroinitializer, i32 %t696, 0
  store { i32, ptr } %t698, ptr %rv
  br label %ret
bb149:
  call void @__olang_scope_close(ptr %s15)
  br label %bb150
bb150:
  %t699 = load ptr, ptr %l0, !tbaa !29
  %t701 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t699)
  %t702 = extractvalue { i32, ptr } %t701, 1
  %t703 = extractvalue { i32, ptr } %t701, 0
  store i32 %t703, ptr %l278
  %t704 = icmp ne i32 %t703, 0
  br i1 %t704, label %bb152, label %ok.705, !prof !99
ok.705:
  store ptr %t702, ptr %l277
  br label %bb151
bb151:
  %t706 = load ptr, ptr %l277, !tbaa !29
  store ptr %t706, ptr %l275, !tbaa !29
  br label %bb153
bb152:
  %t707 = load i32, ptr %l278, !tbaa !23
  %t708 = lshr i32 %t707, 16
  %t709 = and i32 %t707, 65535
  %t710 = icmp eq i32 %t708, 1
  %t711 = select i1 %t710, i32 1, i32 0
  %t712 = icmp eq i32 %t707, 0
  %t713 = shl i32 %t711, 16
  %t714 = or i32 %t713, %t709
  %t715 = select i1 %t712, i32 0, i32 %t714
  %t717 = insertvalue { i32, ptr } zeroinitializer, i32 %t715, 0
  store { i32, ptr } %t717, ptr %rv
  br label %ret
bb153:
  %t718 = load ptr, ptr %l275, !tbaa !29
  store ptr %t718, ptr %l28, !tbaa !29
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebody(ptr %v0, ptr %v1, ptr %t719)
  %t722 = extractvalue { i32, { i64, ptr } } %t721, 1
  %t723 = extractvalue { i32, { i64, ptr } } %t721, 0
  store i32 %t723, ptr %l283
  %t724 = icmp ne i32 %t723, 0
  br i1 %t724, label %bb155, label %ok.725, !prof !99
ok.725:
  store { i64, ptr } %t722, ptr %l282
  br label %bb154
bb154:
  %t726 = load { i64, ptr }, ptr %l282, !tbaa !27
  store { i64, ptr } %t726, ptr %l280, !tbaa !27
  br label %bb156
bb155:
  %t727 = load i32, ptr %l283, !tbaa !23
  %t728 = lshr i32 %t727, 16
  %t729 = and i32 %t727, 65535
  %t730 = icmp eq i32 %t728, 1
  %t731 = select i1 %t730, i32 1, i32 0
  %t732 = icmp eq i32 %t727, 0
  %t733 = shl i32 %t731, 16
  %t734 = or i32 %t733, %t729
  %t735 = select i1 %t732, i32 0, i32 %t734
  %t737 = insertvalue { i32, ptr } zeroinitializer, i32 %t735, 0
  store { i32, ptr } %t737, ptr %rv
  br label %ret
bb156:
  %t738 = load { i64, ptr }, ptr %l280, !tbaa !27
  store { i64, ptr } %t738, ptr %l29, !tbaa !27
  %t739 = load ptr, ptr %l0, !tbaa !29
  %t740 = load i32, ptr %l2, !tbaa !23
  %t743 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t739, i32 %t740)
  store %"compiler/source:Span" %t743, ptr %l287
  br label %bb157
bb157:
  %t744 = load %"compiler/source:Span", ptr %l287
  store %"compiler/source:Span" %t744, ptr %l30
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t748 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t745, i32 8)
  store i1 %t748, ptr %l290
  br label %bb158
bb158:
  %t749 = load i1, ptr %l290, !tbaa !21
  br i1 %t749, label %bb159, label %bb160
bb159:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t750)
  store i32 %t752, ptr %l292
  br label %bb161
bb160:
  br label %bb162
bb161:
  br label %bb162
bb162:
  %t753 = load %"compiler/source:Span", ptr %l30
  %t754 = load ptr, ptr %l28, !tbaa !29
  %t755 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t756
  %t757 = getelementptr { i64, [4 x i64] }, ptr %t756, i32 0, i32 0
  store i64 7, ptr %t757
  %t759 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t753, 0
  %t761 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t759, ptr %t754, 1
  %t763 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t761, { i64, ptr } %t755, 2
  %t764 = getelementptr { i64, [4 x i64] }, ptr %t756, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t763, ptr %t764
  %t765 = load { i64, [4 x i64] }, ptr %t756
  %t767 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t765, ptr %t767
  %t769 = insertvalue { i32, ptr } zeroinitializer, ptr %t767, 1
  store { i32, ptr } %t769, ptr %rv
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
  %l186 = alloca i1
  %l190 = alloca ptr
  %l191 = alloca i64
  %l194 = alloca { i64, ptr }
  %l196 = alloca %"compiler/diagmsg:Msg"
  %l200 = alloca i1
  %l203 = alloca ptr
  %l204 = alloca i64
  %l205 = alloca %"compiler/diagmsg:Msg"
  %l209 = alloca i1
  %l210 = alloca { i64, ptr }
  %l212 = alloca { i64, ptr }
  %l214 = alloca i1
  %l215 = alloca i1
  %l218 = alloca i1
  %l221 = alloca i1
  %l224 = alloca i1
  %l230 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
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
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 113}
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
  %t22 = load i32, ptr %l17, !range !{i32 0, i32 113}
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
  %t38 = load i32, ptr %l25, !range !{i32 0, i32 113}
  store i32 %t38, ptr %l6
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t39, i64 %t40)
  store i64 %t43, ptr %l28
  br label %bb7
bb7:
  %t44 = load i64, ptr %l28, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  %t45 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t47 = call i1 @compiler_2fparse_2ekeywordNamesField(i32 %t45)
  store i1 %t47, ptr %l30
  br label %bb8
bb8:
  %t48 = load i1, ptr %l30, !tbaa !21
  br i1 %t48, label %bb9, label %bb10
bb9:
  %t49 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t49, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d4, i32 0, i32 1) })
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
  %t54 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t56 = trunc i64 78 to i32
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
  %t77 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordFieldRead(ptr %s2, ptr %v0, { i64, ptr } %t75)
  store %"compiler/diagmsg:Msg" %t77, ptr %l44
  br label %bb19
bb19:
  %t78 = load ptr, ptr %l38, !tbaa !29
  %t79 = load i64, ptr %l39, !tbaa !24
  %t80 = load %"compiler/diagmsg:Msg", ptr %l44
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t78, i64 %t79, %"compiler/diagmsg:Msg" %t80)
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
  %t88 = load ptr, ptr %l0, !tbaa !29
  store ptr %t88, ptr %l49, !tbaa !29
  %t89 = load i64, ptr %l2, !tbaa !24
  store i64 %t89, ptr %l50, !tbaa !24
  %t90 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueOne(ptr %v0)
  store %"compiler/diagmsg:Msg" %t90, ptr %l51
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t91 = load ptr, ptr %l49, !tbaa !29
  %t92 = load i64, ptr %l50, !tbaa !24
  %t93 = load %"compiler/diagmsg:Msg", ptr %l51
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t91, i64 %t92, %"compiler/diagmsg:Msg" %t93)
  br label %bb26
bb26:
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
  %t121 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t123 = trunc i64 38 to i32
  %t124 = icmp eq i32 %t121, %t123
  br i1 %t124, label %bb38, label %bb39
bb37:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb62
bb38:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb40
bb39:
  %t126 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t128 = trunc i64 79 to i32
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
  %t132 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t134 = trunc i64 77 to i32
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
  %t138 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t140 = trunc i64 74 to i32
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
  %t144 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t146 = trunc i64 1 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb49, label %bb50
bb49:
  %t149 = load i32, ptr %l6, !range !{i32 0, i32 113}
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
  %t154 = load i32, ptr %l6, !range !{i32 0, i32 113}
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
  %t160 = load i32, ptr %l6, !range !{i32 0, i32 113}
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
  %t166 = load i32, ptr %l6, !range !{i32 0, i32 113}
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
  %t190 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %s4, ptr %v0, { i64, ptr } %t188)
  store %"compiler/diagmsg:Msg" %t190, ptr %l100
  br label %bb66
bb66:
  %t191 = load ptr, ptr %l94, !tbaa !29
  %t192 = load i64, ptr %l95, !tbaa !24
  %t193 = load %"compiler/diagmsg:Msg", ptr %l100
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t191, i64 %t192, %"compiler/diagmsg:Msg" %t193)
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
  %t201 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t203 = trunc i64 38 to i32
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
  %t211 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t209, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d5, i32 0, i32 1) })
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
  %t232 = load i32, ptr %l123, !range !{i32 0, i32 113}
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
  %t244 = load i32, ptr %l130, !range !{i32 0, i32 113}
  %t246 = trunc i64 38 to i32
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
  %t257 = load i32, ptr %l137, !range !{i32 0, i32 113}
  %t259 = trunc i64 79 to i32
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
  %t281 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %s5, ptr %v0, { i64, ptr } %t279)
  store %"compiler/diagmsg:Msg" %t281, ptr %l146
  br label %bb96
bb96:
  %t282 = load ptr, ptr %l140, !tbaa !29
  %t283 = load i64, ptr %l141, !tbaa !24
  %t284 = load %"compiler/diagmsg:Msg", ptr %l146
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t282, i64 %t283, %"compiler/diagmsg:Msg" %t284)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb98:
  %t286 = load i32, ptr %l6, !range !{i32 0, i32 113}
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
  %t303 = load i32, ptr %l3, !range !{i32 0, i32 113}
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
  %t336 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineStartsWithOperator(ptr %s6, ptr %s6, ptr %v0, { i64, ptr } %t334, { i64, ptr } %t333)
  store %"compiler/diagmsg:Msg" %t336, ptr %l170
  br label %bb113
bb113:
  %t337 = load ptr, ptr %l160, !tbaa !29
  %t338 = load i64, ptr %l161, !tbaa !24
  %t339 = load %"compiler/diagmsg:Msg", ptr %l170
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t337, i64 %t338, %"compiler/diagmsg:Msg" %t339)
  br label %bb114
bb114:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb115:
  %t341 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t343 = trunc i64 41 to i32
  %t344 = icmp eq i32 %t341, %t343
  br i1 %t344, label %bb116, label %bb117
bb116:
  %t346 = load ptr, ptr %l0, !tbaa !29
  store ptr %t346, ptr %l174, !tbaa !29
  %t347 = load i64, ptr %l2, !tbaa !24
  store i64 %t347, ptr %l175, !tbaa !24
  %t348 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructInBody(ptr %v0)
  store %"compiler/diagmsg:Msg" %t348, ptr %l176
  br label %bb118
bb117:
  br label %bb120
bb118:
  %t349 = load ptr, ptr %l174, !tbaa !29
  %t350 = load i64, ptr %l175, !tbaa !24
  %t351 = load %"compiler/diagmsg:Msg", ptr %l176
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t349, i64 %t350, %"compiler/diagmsg:Msg" %t351)
  br label %bb119
bb119:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb120:
  %t353 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t355 = trunc i64 108 to i32
  %t356 = icmp eq i32 %t353, %t355
  br i1 %t356, label %bb121, label %bb122
bb121:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb123
bb122:
  %t358 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t360 = trunc i64 110 to i32
  %t361 = icmp eq i32 %t358, %t360
  store i1 %t361, ptr %l180, !tbaa !21
  br label %bb123
bb123:
  %t363 = load i1, ptr %l180, !tbaa !21
  br i1 %t363, label %bb124, label %bb125
bb124:
  %t364 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t366 = trunc i64 74 to i32
  %t367 = icmp eq i32 %t364, %t366
  store i1 %t367, ptr %l183, !tbaa !21
  br label %bb126
bb125:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb126
bb126:
  %t369 = load i1, ptr %l183, !tbaa !21
  br i1 %t369, label %bb127, label %bb128
bb127:
  %t370 = load i64, ptr %l7, !tbaa !24
  %t371 = load i64, ptr %l4, !tbaa !24
  %t374 = icmp eq i64 %t370, %t371
  store i1 %t374, ptr %l186, !tbaa !21
  br label %bb129
bb128:
  store i1 false, ptr %l186, !tbaa !21
  br label %bb129
bb129:
  %t376 = load i1, ptr %l186, !tbaa !21
  br i1 %t376, label %bb130, label %bb131
bb130:
  store %olang.scope zeroinitializer, ptr %s8
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l190, !tbaa !29
  %t378 = load i64, ptr %l5, !tbaa !24
  store i64 %t378, ptr %l191, !tbaa !24
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load i64, ptr %l2, !tbaa !24
  %t383 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %s8, ptr %t379, i64 %t380)
  store { i64, ptr } %t383, ptr %l194
  br label %bb132
bb131:
  br label %bb135
bb132:
  %t384 = load { i64, ptr }, ptr %l194, !tbaa !27
  %t385 = extractvalue { i64, ptr } %t384, 0
  %t386 = extractvalue { i64, ptr } %t384, 1
  %t387 = mul i64 %t385, 1
  %t388 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t387)
  call void @llvm.memcpy.p0.p0.i64(ptr %t388, ptr %t386, i64 %t387, i1 false)
  %t389 = insertvalue { i64, ptr } undef, i64 %t385, 0
  %t390 = insertvalue { i64, ptr } %t389, ptr %t388, 1
  %t392 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %s8, ptr %v0, { i64, ptr } %t390)
  store %"compiler/diagmsg:Msg" %t392, ptr %l196
  br label %bb133
bb133:
  %t393 = load ptr, ptr %l190, !tbaa !29
  %t394 = load i64, ptr %l191, !tbaa !24
  %t395 = load %"compiler/diagmsg:Msg", ptr %l196
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t393, i64 %t394, %"compiler/diagmsg:Msg" %t395)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb135:
  %t397 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t399 = trunc i64 37 to i32
  %t400 = icmp eq i32 %t397, %t399
  br i1 %t400, label %bb136, label %bb137
bb136:
  %t402 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t404 = trunc i64 76 to i32
  %t405 = icmp eq i32 %t402, %t404
  store i1 %t405, ptr %l200, !tbaa !21
  br label %bb138
bb137:
  store i1 false, ptr %l200, !tbaa !21
  br label %bb138
bb138:
  %t407 = load i1, ptr %l200, !tbaa !21
  br i1 %t407, label %bb139, label %bb140
bb139:
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l203, !tbaa !29
  %t409 = load i64, ptr %l2, !tbaa !24
  store i64 %t409, ptr %l204, !tbaa !24
  %t410 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAfterQuestion(ptr %v0)
  store %"compiler/diagmsg:Msg" %t410, ptr %l205
  br label %bb141
bb140:
  br label %bb143
bb141:
  %t411 = load ptr, ptr %l203, !tbaa !29
  %t412 = load i64, ptr %l204, !tbaa !24
  %t413 = load %"compiler/diagmsg:Msg", ptr %l205
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t411, i64 %t412, %"compiler/diagmsg:Msg" %t413)
  br label %bb142
bb142:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb143:
  %t415 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t417 = trunc i64 107 to i32
  %t418 = icmp eq i32 %t415, %t417
  br i1 %t418, label %bb144, label %bb145
bb144:
  %t420 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t420, ptr %l210, !tbaa !27
  %t422 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s0, i32 8)
  store { i64, ptr } %t422, ptr %l212
  br label %bb146
bb145:
  store i1 false, ptr %l209, !tbaa !21
  br label %bb148
bb146:
  %t423 = load { i64, ptr }, ptr %l212, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t423, 0
  %t425 = extractvalue { i64, ptr } %t423, 1
  %t426 = mul i64 %t424, 1
  %t427 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t426)
  call void @llvm.memcpy.p0.p0.i64(ptr %t427, ptr %t425, i64 %t426, i1 false)
  %t428 = insertvalue { i64, ptr } undef, i64 %t424, 0
  %t429 = insertvalue { i64, ptr } %t428, ptr %t427, 1
  %t430 = load { i64, ptr }, ptr %l210, !tbaa !27
  %t432 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t430, { i64, ptr } %t429)
  store i1 %t432, ptr %l214
  br label %bb147
bb147:
  %t433 = load i1, ptr %l214, !tbaa !21
  store i1 %t433, ptr %l209, !tbaa !21
  br label %bb148
bb148:
  %t434 = load i1, ptr %l209, !tbaa !21
  br i1 %t434, label %bb149, label %bb150
bb149:
  %t435 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t437 = trunc i64 98 to i32
  %t438 = icmp eq i32 %t435, %t437
  br i1 %t438, label %bb151, label %bb152
bb150:
  store i1 false, ptr %l215, !tbaa !21
  br label %bb157
bb151:
  store i1 true, ptr %l218, !tbaa !21
  br label %bb153
bb152:
  %t440 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t442 = trunc i64 106 to i32
  %t443 = icmp eq i32 %t440, %t442
  store i1 %t443, ptr %l218, !tbaa !21
  br label %bb153
bb153:
  %t445 = load i1, ptr %l218, !tbaa !21
  br i1 %t445, label %bb154, label %bb155
bb154:
  store i1 true, ptr %l221, !tbaa !21
  br label %bb156
bb155:
  %t446 = load i32, ptr %l6, !range !{i32 0, i32 113}
  %t448 = trunc i64 1 to i32
  %t449 = icmp eq i32 %t446, %t448
  store i1 %t449, ptr %l221, !tbaa !21
  br label %bb156
bb156:
  %t451 = load i1, ptr %l221, !tbaa !21
  store i1 %t451, ptr %l215, !tbaa !21
  br label %bb157
bb157:
  %t452 = load i1, ptr %l215, !tbaa !21
  br i1 %t452, label %bb158, label %bb159
bb158:
  %t453 = load i64, ptr %l7, !tbaa !24
  %t454 = load i64, ptr %l4, !tbaa !24
  %t457 = icmp eq i64 %t453, %t454
  store i1 %t457, ptr %l224, !tbaa !21
  br label %bb160
bb159:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb160
bb160:
  %t459 = load i1, ptr %l224, !tbaa !21
  br i1 %t459, label %bb161, label %bb162
bb161:
  %t460 = load ptr, ptr %l0, !tbaa !29
  %t461 = load i64, ptr %l2, !tbaa !24
  %t464 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalueAfterEq(ptr %v0, ptr %t460, i64 %t461)
  store i1 %t464, ptr %l230
  br label %bb163
bb162:
  br label %bb164
bb163:
  call void @__olang_scope_close(ptr %s0)
  %t465 = load i1, ptr %l230, !tbaa !21
  store i1 %t465, ptr %rv
  br label %ret
bb164:
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

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eitem(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l14 = alloca i64
  %l16 = alloca ptr
  %l18 = alloca i32
  %l33 = alloca ptr
  %l35 = alloca ptr
  %l36 = alloca i32
  %l44 = alloca i64
  %l46 = alloca i64
  %l51 = alloca ptr
  %l67 = alloca i32
  %l75 = alloca i32
  %l77 = alloca ptr
  %l83 = alloca i64
  %l85 = alloca i64
  %l90 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 27
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l14
  br label %bb1
bb1:
  %t11 = load i64, ptr %l14, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/parse:Parser", ptr %t12, i32 0, i32 26
  store ptr %t14, ptr %l16, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t15)
  store i32 %t17, ptr %l18
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l16, !tbaa !29
  %t19 = load i32, ptr %l18, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %t18, i32 %t19)
  br label %bb3
bb3:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/parse:Parser", ptr %t20, i32 0, i32 27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t22, i1 true)
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t26, i64 0)
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/parse:Parser", ptr %t28, i32 0, i32 12
  store i1 false, ptr %t30, !tbaa !21
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/parse:Parser", ptr %t31, i32 0, i32 18
  store i64 0, ptr %t33, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/parse:Parser", ptr %t34, i32 0, i32 19
  store i1 false, ptr %t36, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/parse:Parser", ptr %t37, i32 0, i32 21
  store i64 0, ptr %t39, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 22
  store i1 false, ptr %t42, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t43, i32 0, i32 24
  store i1 false, ptr %t45, !tbaa !21
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/parse:Parser", ptr %t46, i32 0, i32 39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t48, i64 0)
  br label %bb6
bb6:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/parse:Parser", ptr %t50, i32 0, i32 57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t52, i64 0)
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edecl(ptr %v0, ptr %v0, ptr %t54)
  %t57 = extractvalue { i32, ptr } %t56, 1
  %t58 = extractvalue { i32, ptr } %t56, 0
  store i32 %t58, ptr %l36
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb9, label %ok.60, !prof !99
ok.60:
  store ptr %t57, ptr %l35
  br label %bb8
bb8:
  %t61 = load ptr, ptr %l35, !tbaa !29
  store ptr %t61, ptr %l33, !tbaa !29
  br label %bb35
bb9:
  br label %bb10
bb10:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/parse:Parser", ptr %t62, i32 0, i32 27
  %t65 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t64, i64 %t65, i1 false)
  br label %bb11
bb11:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/parse:Parser", ptr %t68, i32 0, i32 57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t70, i64 0)
  br label %bb12
bb12:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/parse:Parser", ptr %t72, i32 0, i32 39
  store ptr %t74, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  %t76 = load i64, ptr %l4, !tbaa !24
  store i64 %t76, ptr %l44, !tbaa !24
  %t77 = load ptr, ptr %l3, !tbaa !29
  %t79 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t77)
  store i64 %t79, ptr %l46
  br label %bb14
bb14:
  %t80 = load i64, ptr %l44, !tbaa !24
  %t81 = load i64, ptr %l46, !tbaa !24
  %t82 = icmp slt i64 %t80, %t81
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb15, label %bb16
bb15:
  br label %bb21
bb16:
  br label %bb17
bb17:
  %t86 = load ptr, ptr %l3, !tbaa !29
  %t87 = load i64, ptr %l4, !tbaa !24
  %t90 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eAt_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t86, i64 %t87)
  store ptr %t90, ptr %l51
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l51, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/parse:Parser", ptr %t92, i32 0, i32 38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t94, ptr %t91)
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = add i64 %t98, 1
  store i64 %t100, ptr %l4, !tbaa !24
  br label %bb13
bb21:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/parse:Parser", ptr %t102, i32 0, i32 39
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t104, i64 0)
  br label %bb22
bb22:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/parse:Parser", ptr %t106, i32 0, i32 24
  %t109 = load i1, ptr %t108, !tbaa !21
  br i1 %t109, label %bb23, label %bb24
bb23:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/parse:Parser", ptr %t111, i32 0, i32 24
  store i1 false, ptr %t113, !tbaa !21
  br label %ret
bb24:
  br label %bb25
bb25:
  %t114 = load i64, ptr %l1, !tbaa !24
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/parse:Parser", ptr %t115, i32 0, i32 6
  %t118 = load i64, ptr %t117, !tbaa !24
  %t121 = icmp eq i64 %t114, %t118
  br i1 %t121, label %bb26, label %bb27
bb26:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t123)
  store i32 %t125, ptr %l67
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb29
bb29:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncItem(ptr %v0, ptr %t126, i64 %t127)
  br label %bb30
bb30:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/parse:Parser", ptr %t130, i32 0, i32 6
  %t133 = load i64, ptr %t132, !tbaa !24
  %t134 = load i64, ptr %l1, !tbaa !24
  %t137 = icmp eq i64 %t133, %t134
  br i1 %t137, label %bb31, label %bb32
bb31:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t139)
  store i32 %t141, ptr %l75
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %ret
bb35:
  %t142 = load ptr, ptr %l33, !tbaa !29
  store ptr %t142, ptr %l6, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/parse:Parser", ptr %t143, i32 0, i32 38
  store ptr %t145, ptr %l77, !tbaa !29
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = icmp eq ptr %t146, null
  br i1 %t148, label %bb36, label %bb37
bb36:
  call void @__olang_check_failed(ptr @olang_loc_3f74969944d00b69_b8e7e882b42021d)
  unreachable
bb37:
  br label %bb38
bb38:
  %t150 = load ptr, ptr %l6, !tbaa !29
  %t151 = load ptr, ptr %l77, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t151, ptr %t150)
  br label %bb39
bb39:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/parse:Parser", ptr %t153, i32 0, i32 57
  store ptr %t155, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb40
bb40:
  %t157 = load i64, ptr %l8, !tbaa !24
  store i64 %t157, ptr %l83, !tbaa !24
  %t158 = load ptr, ptr %l7, !tbaa !29
  %t160 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t158)
  store i64 %t160, ptr %l85
  br label %bb41
bb41:
  %t161 = load i64, ptr %l83, !tbaa !24
  %t162 = load i64, ptr %l85, !tbaa !24
  %t163 = icmp slt i64 %t161, %t162
  %t165 = xor i1 %t163, true
  br i1 %t165, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t167 = load ptr, ptr %l7, !tbaa !29
  %t168 = load i64, ptr %l8, !tbaa !24
  %t171 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eAt_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t167, i64 %t168)
  store ptr %t171, ptr %l90
  br label %bb45
bb45:
  %t172 = load ptr, ptr %l90, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/parse:Parser", ptr %t173, i32 0, i32 38
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t175, ptr %t172)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t179 = load i64, ptr %l8, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l8, !tbaa !24
  br label %bb40
bb48:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t185 = getelementptr %"compiler/parse:Parser", ptr %t183, i32 0, i32 57
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t185, i64 0)
  br label %bb49
bb49:
  br label %ret
ret:
  ret void
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 24
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
  %t13 = load i32, ptr %t12, !range !{i32 0, i32 113}
  store i32 %t13, ptr %l2
  %t15 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t17 = trunc i64 8 to i32
  %t18 = icmp eq i32 %t15, %t17
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t24 = trunc i64 77 to i32
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
  %t30 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t32 = trunc i64 75 to i32
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
  %t38 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t40 = trunc i64 107 to i32
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
  %t46 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t48 = trunc i64 74 to i32
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
  %t54 = load i32, ptr %l2, !range !{i32 0, i32 113}
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
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t64 = trunc i64 112 to i32
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

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordFieldHere(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l7 = alloca i32
  %l9 = alloca i1
  %l11 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i32
  %l20 = alloca i1
  %l31 = alloca i64
  %l41 = alloca i1
  %l44 = alloca i64
  %l50 = alloca i32
  %l53 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l62 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l7
  br label %bb1
bb1:
  %t4 = load i32, ptr %l7, !range !{i32 0, i32 113}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t7 = call i1 @compiler_2fparse_2ekeywordNamesField(i32 %t5)
  store i1 %t7, ptr %l9
  br label %bb2
bb2:
  %t8 = load i1, ptr %l9, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb6
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordField(ptr %v0, ptr %t11)
  store i1 %t13, ptr %l13
  br label %bb5
bb5:
  %t14 = load i1, ptr %l13, !tbaa !21
  %t15 = xor i1 %t14, true
  store i1 %t15, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l11, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t19, i64 1)
  store i32 %t21, ptr %l17
  br label %bb10
bb10:
  %t22 = load i32, ptr %l17, !range !{i32 0, i32 113}
  store i32 %t22, ptr %l2
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t25 = trunc i64 5 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  %t28 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t30 = trunc i64 36 to i32
  %t31 = icmp eq i32 %t28, %t30
  store i1 %t31, ptr %l20, !tbaa !21
  br label %bb13
bb13:
  %t33 = load i1, ptr %l20, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  store i1 false, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t37 = trunc i64 32 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb17, label %bb18
bb17:
  store i1 true, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/parse:Parser", ptr %t44, i32 0, i32 6
  %t47 = load i64, ptr %t46, !tbaa !24
  %t50 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t43, i64 %t47)
  store i64 %t50, ptr %l31
  br label %bb20
bb20:
  %t51 = load i64, ptr %l31, !tbaa !24
  store i64 %t51, ptr %l3, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/parse:Parser", ptr %t52, i32 0, i32 6
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l4, !tbaa !24
  br label %bb21
bb21:
  %t59 = load i64, ptr %l4, !tbaa !24
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/parse:Parser", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = getelementptr %"compiler/scan:Tokens", ptr %t63, i32 0, i32 0
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t71 = icmp slt i64 %t59, %t68
  br i1 %t71, label %bb22, label %bb23
bb22:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  %t77 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t73, i64 %t74)
  store i64 %t77, ptr %l44
  br label %bb24
bb23:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb25
bb24:
  %t78 = load i64, ptr %l3, !tbaa !24
  %t79 = load i64, ptr %l44, !tbaa !24
  %t81 = icmp eq i64 %t79, %t78
  store i1 %t81, ptr %l41, !tbaa !21
  br label %bb25
bb25:
  %t83 = load i1, ptr %l41, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb26, label %bb27
bb26:
  br label %bb46
bb27:
  br label %bb28
bb28:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i64, ptr %l4, !tbaa !24
  %t90 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t86, i64 %t87)
  store i32 %t90, ptr %l50
  br label %bb29
bb29:
  %t91 = load i32, ptr %l50, !range !{i32 0, i32 113}
  store i32 %t91, ptr %l5
  %t92 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t94 = trunc i64 33 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb32
bb31:
  %t97 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t99 = trunc i64 34 to i32
  %t100 = icmp eq i32 %t97, %t99
  store i1 %t100, ptr %l53, !tbaa !21
  br label %bb32
bb32:
  %t102 = load i1, ptr %l53, !tbaa !21
  br i1 %t102, label %bb33, label %bb34
bb33:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb35
bb34:
  %t103 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t105 = trunc i64 35 to i32
  %t106 = icmp eq i32 %t103, %t105
  store i1 %t106, ptr %l56, !tbaa !21
  br label %bb35
bb35:
  %t108 = load i1, ptr %l56, !tbaa !21
  br i1 %t108, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l59, !tbaa !21
  br label %bb38
bb37:
  %t109 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t111 = trunc i64 22 to i32
  %t112 = icmp eq i32 %t109, %t111
  store i1 %t112, ptr %l59, !tbaa !21
  br label %bb38
bb38:
  %t114 = load i1, ptr %l59, !tbaa !21
  br i1 %t114, label %bb39, label %bb40
bb39:
  store i1 true, ptr %l62, !tbaa !21
  br label %bb41
bb40:
  %t115 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t117 = trunc i64 111 to i32
  %t118 = icmp eq i32 %t115, %t117
  store i1 %t118, ptr %l62, !tbaa !21
  br label %bb41
bb41:
  %t120 = load i1, ptr %l62, !tbaa !21
  br i1 %t120, label %bb42, label %bb43
bb42:
  store i1 false, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t122 = load i64, ptr %l4, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l4, !tbaa !24
  br label %bb45
bb45:
  br label %bb21
bb46:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l14 = alloca { i64, ptr }
  %rv = alloca i32
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
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/scan:Tokens", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp sge i64 %t5, %t14
  store i1 %t17, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l4, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i32 0, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = getelementptr %"compiler/scan:Tokens", ptr %t24, i32 0, i32 0
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l14, !tbaa !27
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/token:Token", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i32 0, i32 0
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 113}
  store i32 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elambdaBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i1
  %l8 = alloca i1
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %rv = alloca { i32, { i64, ptr } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 78)
  store i1 %t4, ptr %l8
  br label %bb1
bb1:
  %t5 = load i1, ptr %l8, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eblock(ptr %v0, ptr %v1, ptr %t8)
  %t11 = extractvalue { i32, { i64, ptr } } %t10, 1
  %t12 = extractvalue { i32, { i64, ptr } } %t10, 0
  store i32 %t12, ptr %l13
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store { i64, ptr } %t11, ptr %l12
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t15 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  br label %bb6
bb5:
  %t16 = load i32, ptr %l13, !tbaa !23
  %t17 = lshr i32 %t16, 16
  %t18 = and i32 %t16, 65535
  %t19 = icmp eq i32 %t17, 1
  %t20 = select i1 %t19, i32 1, i32 0
  %t21 = icmp eq i32 %t16, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t18
  %t24 = select i1 %t21, i32 0, i32 %t23
  %t26 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t24, 0
  store { i32, { i64, ptr } } %t26, ptr %rv
  br label %ret
bb6:
  %t27 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t28 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t27, 1
  store { i32, { i64, ptr } } %t28, ptr %rv
  br label %ret
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 16
  %t32 = load i1, ptr %t31, !tbaa !21
  store i1 %t32, ptr %l2, !tbaa !21
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/parse:Parser", ptr %t34, i32 0, i32 15
  %t37 = load i1, ptr %t36, !tbaa !21
  store i1 %t37, ptr %l3, !tbaa !21
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t41, i32 0, i32 16
  store i1 true, ptr %t45, !tbaa !21
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t46, i32 0, i32 15
  store i1 %a1, ptr %t50, !tbaa !21
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %t51)
  %t54 = extractvalue { i32, { i64, ptr } } %t53, 1
  %t55 = extractvalue { i32, { i64, ptr } } %t53, 0
  store i32 %t55, ptr %l27
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb9, label %ok.57, !prof !99
ok.57:
  store { i64, ptr } %t54, ptr %l26
  br label %bb8
bb8:
  %t58 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t58, ptr %l24, !tbaa !27
  br label %bb10
bb9:
  %t59 = load i32, ptr %l27, !tbaa !23
  %t60 = lshr i32 %t59, 16
  %t61 = and i32 %t59, 65535
  %t62 = icmp eq i32 %t60, 1
  %t63 = select i1 %t62, i32 1, i32 0
  %t64 = icmp eq i32 %t59, 0
  %t65 = shl i32 %t63, 16
  %t66 = or i32 %t65, %t61
  %t67 = select i1 %t64, i32 0, i32 %t66
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i1, ptr %l2, !tbaa !21
  %t72 = getelementptr %"compiler/parse:Parser", ptr %t68, i32 0, i32 16
  store i1 %t69, ptr %t72, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i1, ptr %l3, !tbaa !21
  %t77 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 15
  store i1 %t74, ptr %t77, !tbaa !21
  %t79 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t67, 0
  store { i32, { i64, ptr } } %t79, ptr %rv
  br label %ret
bb10:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i1, ptr %l2, !tbaa !21
  %t84 = getelementptr %"compiler/parse:Parser", ptr %t80, i32 0, i32 16
  store i1 %t81, ptr %t84, !tbaa !21
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i1, ptr %l3, !tbaa !21
  %t89 = getelementptr %"compiler/parse:Parser", ptr %t85, i32 0, i32 15
  store i1 %t86, ptr %t89, !tbaa !21
  %t90 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t91 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t90, 1
  store { i32, { i64, ptr } } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
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

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l16 = alloca { i64, ptr }
  %l19 = alloca i32
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
  store i1 true, ptr %l4, !tbaa !21
  br label %bb3
bb2:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t11 = getelementptr %"compiler/scan:Tokens", ptr %t9, i32 0, i32 0
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  %t17 = icmp sge i64 %t5, %t14
  store i1 %t17, ptr %l4, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l4, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  store i64 -1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/parse:Parser", ptr %t25, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/scan:Tokens", ptr %t28, i32 0, i32 0
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l16, !tbaa !27
  %t32 = load i64, ptr %l1, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr %"compiler/token:Token", ptr %t35, i64 %t32
  %t37 = getelementptr %"compiler/token:Token", ptr %t36, i32 0, i32 2
  %t38 = load i32, ptr %t37, !tbaa !23
  %t41 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %t24, i32 %t38)
  store i32 %t41, ptr %l19
  br label %bb7
bb7:
  %t42 = load i32, ptr %l19, !tbaa !23
  %t43 = sext i32 %t42 to i64
  store i64 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineStartsCase(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %l22 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t1, i64 %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  store i64 %t7, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = sub i64 %t14, 1
  %t19 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t13, i64 %t16)
  store i64 %t19, ptr %l14
  br label %bb5
bb4:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t21 = load i64, ptr %l14, !tbaa !24
  %t23 = icmp eq i64 %t21, %t20
  store i1 %t23, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l10, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = sub i64 %t28, 1
  store i64 %t30, ptr %l3, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t32, i64 %t33)
  store i32 %t36, ptr %l22
  br label %bb12
bb12:
  %t37 = load i32, ptr %l22, !range !{i32 0, i32 113}
  %t39 = trunc i64 31 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t20 = load i32, ptr %l13, !range !{i32 0, i32 113}
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eliteralAfterType(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l11 = alloca i1
  %l13 = alloca i1
  %l15 = alloca i32
  %l21 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i32
  %l37 = alloca i1
  %l40 = alloca i1
  %l42 = alloca i32
  %l47 = alloca ptr
  %l48 = alloca i1
  %l59 = alloca i64
  %l63 = alloca %"compiler/source:Span"
  %l67 = alloca { i64, ptr }
  %l74 = alloca ptr
  %l75 = alloca ptr
  %l79 = alloca ptr
  %l80 = alloca i32
  %rv = alloca { i32, ptr }
  %t120 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l11
  br label %bb1
bb1:
  %t4 = load i1, ptr %l11, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb5
bb3:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t7, i64 2)
  store i32 %t9, ptr %l15
  br label %bb4
bb4:
  %t10 = load i32, ptr %l15, !range !{i32 0, i32 113}
  %t12 = trunc i64 109 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t18, i32 100)
  store i1 %t21, ptr %l21
  br label %bb8
bb7:
  br label %bb31
bb8:
  %t22 = load i1, ptr %l21, !tbaa !21
  %t23 = xor i1 %t22, true
  br i1 %t23, label %bb9, label %bb10
bb9:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t25, i32 109)
  store i1 %t28, ptr %l26
  br label %bb11
bb10:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t29 = load i1, ptr %l26, !tbaa !21
  %t30 = xor i1 %t29, true
  store i1 %t30, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t32 = load i1, ptr %l23, !tbaa !21
  br i1 %t32, label %bb13, label %bb14
bb13:
  %t33 = load ptr, ptr %l2, !tbaa !29
  %t35 = insertvalue { i32, ptr } zeroinitializer, ptr %t33, 1
  store { i32, ptr } %t35, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t36, i32 100)
  store i1 %t39, ptr %l31
  br label %bb16
bb16:
  %t40 = load i1, ptr %l31, !tbaa !21
  br i1 %t40, label %bb17, label %bb18
bb17:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t41, i64 1)
  store i32 %t43, ptr %l33
  br label %bb19
bb18:
  br label %bb30
bb19:
  %t44 = load i32, ptr %l33, !range !{i32 0, i32 113}
  store i32 %t44, ptr %l3
  %t45 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t47 = trunc i64 109 to i32
  %t48 = icmp eq i32 %t45, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb20, label %bb21
bb20:
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t54 = trunc i64 1 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb22, label %bb23
bb21:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb26
bb22:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t57, i64 2)
  store i32 %t59, ptr %l42
  br label %bb24
bb23:
  store i1 false, ptr %l40, !tbaa !21
  br label %bb25
bb24:
  %t60 = load i32, ptr %l42, !range !{i32 0, i32 113}
  %t62 = trunc i64 109 to i32
  %t63 = icmp eq i32 %t60, %t62
  store i1 %t63, ptr %l40, !tbaa !21
  br label %bb25
bb25:
  %t65 = load i1, ptr %l40, !tbaa !21
  %t66 = xor i1 %t65, true
  store i1 %t66, ptr %l37, !tbaa !21
  br label %bb26
bb26:
  %t68 = load i1, ptr %l37, !tbaa !21
  br i1 %t68, label %bb27, label %bb28
bb27:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t71 = insertvalue { i32, ptr } zeroinitializer, ptr %t69, 1
  store { i32, ptr } %t71, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t72 = load ptr, ptr %l2, !tbaa !29
  store ptr %t72, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t73 = load ptr, ptr %l47, !tbaa !29
  %t74 = icmp ne ptr %t73, null
  br i1 %t74, label %bb32, label %bb33
bb32:
  %t76 = load ptr, ptr %l47, !tbaa !29
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 28}
  %t79 = icmp eq i64 %t77, 11
  store i1 %t79, ptr %l48, !tbaa !21
  br label %bb33
bb33:
  %t80 = load i1, ptr %l48, !tbaa !21
  br i1 %t80, label %bb34, label %bb35
bb34:
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t83 = getelementptr { i64, [4 x i64] }, ptr %t81, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t83, i32 0, i32 0
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l4
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t89, i32 0, i32 1
  %t91 = load ptr, ptr %t90
  store ptr %t91, ptr %l5, !tbaa !29
  %t93 = load ptr, ptr %l2, !tbaa !29
  %t95 = getelementptr { i64, [4 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t95, i32 0, i32 2
  %t97 = load { i64, ptr }, ptr %t96
  store { i64, ptr } %t97, ptr %l6, !tbaa !27
  br label %bb36
bb35:
  br label %bb44
bb36:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/parse:Parser", ptr %t99, i32 0, i32 36
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t101)
  store i64 %t103, ptr %l59
  br label %bb37
bb37:
  %t104 = load i64, ptr %l59, !tbaa !24
  store i64 %t104, ptr %l7, !tbaa !24
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/parse:Parser", ptr %t106, i32 0, i32 36
  call void @compiler_2fparse_2epathIds(ptr %v1, ptr %v0, ptr %t105, ptr %t108)
  br label %bb38
bb38:
  %t111 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t111, ptr %l63
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/parse:Parser", ptr %t112, i32 0, i32 36
  %t115 = load i64, ptr %l7, !tbaa !24
  %t118 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v2, ptr %t114, i64 %t115)
  store { i64, ptr } %t118, ptr %l67
  br label %bb39
bb39:
  %t119 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, [5 x i64] } zeroinitializer, ptr %t120
  %t121 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 0
  store i64 0, ptr %t121
  %t122 = load %"compiler/source:Span", ptr %l63
  %t123 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t122, 0
  %t124 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t125 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t123, { i64, ptr } %t124, 1
  %t127 = insertvalue { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t125, { i64, ptr } %t119, 2
  %t128 = getelementptr { i64, [5 x i64] }, ptr %t120, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr }, { i64, ptr } } %t127, ptr %t128
  %t129 = load { i64, [5 x i64] }, ptr %t120
  %t131 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store { i64, [5 x i64] } %t129, ptr %t131
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i32, ptr %l1, !tbaa !23
  %t139 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v2, ptr %v2, ptr %t133, i32 %t134, ptr %t131)
  store ptr %t139, ptr %l74
  br label %bb40
bb40:
  %t140 = load ptr, ptr %l74, !tbaa !29
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i32, ptr %l1, !tbaa !23
  %t147 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v2, ptr %v2, ptr %t141, i32 %t142, ptr %t140)
  %t148 = extractvalue { i32, ptr } %t147, 1
  %t149 = extractvalue { i32, ptr } %t147, 0
  store i32 %t149, ptr %l80
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb42, label %ok.151, !prof !99
ok.151:
  store ptr %t148, ptr %l79
  br label %bb41
bb41:
  %t152 = load ptr, ptr %l79, !tbaa !29
  store ptr %t152, ptr %l75, !tbaa !29
  br label %bb43
bb42:
  %t153 = load i32, ptr %l80, !tbaa !23
  %t154 = lshr i32 %t153, 16
  %t155 = and i32 %t153, 65535
  %t156 = icmp eq i32 %t154, 1
  %t157 = select i1 %t156, i32 1, i32 0
  %t158 = icmp eq i32 %t153, 0
  %t159 = shl i32 %t157, 16
  %t160 = or i32 %t159, %t155
  %t161 = select i1 %t158, i32 0, i32 %t160
  %t163 = insertvalue { i32, ptr } zeroinitializer, i32 %t161, 0
  store { i32, ptr } %t163, ptr %rv
  br label %ret
bb43:
  %t164 = load ptr, ptr %l75, !tbaa !29
  %t165 = insertvalue { i32, ptr } zeroinitializer, ptr %t164, 1
  store { i32, ptr } %t165, ptr %rv
  br label %ret
bb44:
  br i1 true, label %bb45, label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb48
bb47:
  %t166 = load ptr, ptr %l2, !tbaa !29
  %t168 = insertvalue { i32, ptr } zeroinitializer, ptr %t166, 1
  store { i32, ptr } %t168, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_824bfdca782f89b4_8a051d8e1bdc5e78)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l15 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %t1, i64 %a1)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/scan:Tokens", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  %t19 = icmp sge i64 %t7, %t16
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i32 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/scan:Tokens", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l15, !tbaa !27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr %"compiler/token:Token", ptr %t32, i64 %t29
  %t34 = getelementptr %"compiler/token:Token", ptr %t33, i32 0, i32 0
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 113}
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t6 = load i32, ptr %t5, !range !{i32 0, i32 113}
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
  %t6 = load i32, ptr %t5, !range !{i32 0, i32 113}
  %t8 = trunc i64 0 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t14 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t11, i32 100)
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
  %t34 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t31, i32 76)
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ematchBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i1
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca i1
  %l11 = alloca ptr
  %l12 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca i1
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca { { i64, ptr }, ptr }
  %l36 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l38 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i32
  %l46 = alloca i1
  %l47 = alloca i1
  %l49 = alloca i32
  %l53 = alloca ptr
  %l54 = alloca ptr
  %l56 = alloca %"compiler/token:Token"
  %l57 = alloca { i64, ptr }
  %l58 = alloca i32
  %l61 = alloca i64
  %l63 = alloca i64
  %l68 = alloca i32
  %l76 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l82 = alloca i32
  %l88 = alloca ptr
  %l92 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l96 = alloca i32
  %l99 = alloca i64
  %l101 = alloca i64
  %l106 = alloca i32
  %l114 = alloca i64
  %l116 = alloca i64
  %l121 = alloca i32
  %l131 = alloca i1
  %l134 = alloca { i64, ptr }
  %l138 = alloca i1
  %l141 = alloca { i64, ptr }
  %l150 = alloca { i64, ptr }
  %l154 = alloca { i64, ptr }
  %l156 = alloca i1
  %l158 = alloca i1
  %l160 = alloca i1
  %l162 = alloca i1
  %l164 = alloca i1
  %l166 = alloca i1
  %l168 = alloca i1
  %l175 = alloca i1
  %l178 = alloca i1
  %l181 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l187 = alloca ptr
  %l188 = alloca i32
  %l190 = alloca i32
  %l193 = alloca i32
  %l194 = alloca i32
  %l202 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l207 = alloca i1
  %l208 = alloca i1
  %l211 = alloca i1
  %l213 = alloca i32
  %l214 = alloca i32
  %l217 = alloca i32
  %l218 = alloca i32
  %l222 = alloca i64
  %l225 = alloca i64
  %l228 = alloca ptr
  %l229 = alloca ptr
  %l231 = alloca ptr
  %l232 = alloca i32
  %l234 = alloca ptr
  %l236 = alloca ptr
  %l237 = alloca i32
  %l240 = alloca i1
  %l241 = alloca i1
  %l244 = alloca i1
  %l245 = alloca i1
  %l247 = alloca %"compiler/token:Token"
  %l249 = alloca i1
  %l252 = alloca i32
  %l253 = alloca i32
  %l255 = alloca i32
  %l256 = alloca i32
  %l260 = alloca ptr
  %l262 = alloca ptr
  %l264 = alloca %"compiler/source:Span"
  %l268 = alloca %"compiler/source:Span"
  %l269 = alloca ptr
  %l270 = alloca i32
  %l273 = alloca %"compiler/source:Span"
  %l277 = alloca ptr
  %l280 = alloca ptr
  %l283 = alloca i1
  %l286 = alloca i1
  %l289 = alloca i32
  %l292 = alloca i1
  %l295 = alloca i1
  %l298 = alloca i1
  %l301 = alloca i1
  %l304 = alloca i1
  %l308 = alloca i32
  %l312 = alloca { i64, ptr }
  %l316 = alloca { i64, ptr }
  %l319 = alloca i1
  %l320 = alloca ptr
  %l322 = alloca ptr
  %l323 = alloca i32
  %l326 = alloca { { i64, ptr }, ptr }
  %l329 = alloca { { i64, ptr }, ptr }
  %l330 = alloca i32
  %l334 = alloca ptr
  %l337 = alloca %"compiler/source:Span"
  %l343 = alloca %"compiler/ast:Case"
  %l347 = alloca i1
  %l349 = alloca i32
  %l350 = alloca i32
  %l353 = alloca i32
  %l354 = alloca i32
  %l362 = alloca %"compiler/source:Span"
  %l363 = alloca ptr
  %l364 = alloca i1
  %l366 = alloca { i64, ptr }
  %l367 = alloca %"compiler/ast:Match"
  %s15 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t557 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 30)
  %t5 = extractvalue { i32, i32 } %t4, 1
  %t6 = extractvalue { i32, i32 } %t4, 0
  store i32 %t6, ptr %l42
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store i32 %t5, ptr %l41
  br label %bb1
bb1:
  %t9 = load i32, ptr %l41, !tbaa !23
  store i32 %t9, ptr %l38, !tbaa !23
  br label %bb3
bb2:
  %t10 = load i32, ptr %l42, !tbaa !23
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
  %t21 = load i32, ptr %l38, !tbaa !23
  store i32 %t21, ptr %l2, !tbaa !23
  store i1 false, ptr %l3, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t25 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t22, i32 1)
  store i1 %t25, ptr %l46
  br label %bb4
bb4:
  %t26 = load i1, ptr %l46, !tbaa !21
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t27, i64 1)
  store i32 %t29, ptr %l49
  br label %bb7
bb6:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb8
bb7:
  %t30 = load i32, ptr %l49, !range !{i32 0, i32 113}
  %t32 = trunc i64 111 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %l47, !tbaa !21
  br label %bb8
bb8:
  %t35 = load i1, ptr %l47, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/parse:Parser", ptr %t36, i32 0, i32 2
  %t39 = load ptr, ptr %t38, !tbaa !29
  store ptr %t39, ptr %l53, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l54, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t41)
  store %"compiler/token:Token" %t43, ptr %l56
  br label %bb11
bb10:
  br label %bb25
bb11:
  %t44 = load ptr, ptr %l54, !tbaa !29
  %t45 = load %"compiler/token:Token", ptr %l56
  %t46 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t44, %"compiler/token:Token" %t45)
  store { i64, ptr } %t46, ptr %l57
  br label %bb12
bb12:
  %t47 = load ptr, ptr %l53, !tbaa !29
  %t48 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t49 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t47, { i64, ptr } %t48)
  store i32 %t49, ptr %l58
  br label %bb13
bb13:
  %t50 = load i32, ptr %l58, !tbaa !23
  store i32 %t50, ptr %l4, !tbaa !23
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/parse:Parser", ptr %t51, i32 0, i32 29
  store ptr %t53, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb14
bb14:
  %t55 = load i64, ptr %l6, !tbaa !24
  store i64 %t55, ptr %l61, !tbaa !24
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l63
  br label %bb15
bb15:
  %t59 = load i64, ptr %l61, !tbaa !24
  %t60 = load i64, ptr %l63, !tbaa !24
  %t61 = icmp slt i64 %t59, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t65 = load ptr, ptr %l5, !tbaa !29
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t65, i64 %t66)
  store i32 %t69, ptr %l68
  br label %bb19
bb19:
  %t70 = load i32, ptr %l68, !tbaa !23
  %t72 = load i32, ptr %l4, !tbaa !23
  %t75 = icmp eq i32 %t70, %t72
  br i1 %t75, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb14
bb24:
  br label %bb25
bb25:
  %t81 = load i1, ptr %l3, !tbaa !21
  %t83 = xor i1 %t81, true
  br i1 %t83, label %bb26, label %bb27
bb26:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t88 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t85, i32 1)
  store i1 %t88, ptr %l79
  br label %bb28
bb27:
  store i1 false, ptr %l76, !tbaa !21
  br label %bb29
bb28:
  %t89 = load i1, ptr %l79, !tbaa !21
  store i1 %t89, ptr %l76, !tbaa !21
  br label %bb29
bb29:
  %t90 = load i1, ptr %l76, !tbaa !21
  br i1 %t90, label %bb30, label %bb31
bb30:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t91, i64 1)
  store i32 %t93, ptr %l82
  br label %bb32
bb31:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb33
bb32:
  %t94 = load i32, ptr %l82, !range !{i32 0, i32 113}
  %t96 = trunc i64 75 to i32
  %t97 = icmp eq i32 %t94, %t96
  store i1 %t97, ptr %l80, !tbaa !21
  br label %bb33
bb33:
  %t99 = load i1, ptr %l80, !tbaa !21
  br i1 %t99, label %bb34, label %bb35
bb34:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/parse:Parser", ptr %t100, i32 0, i32 6
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l8, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/parse:Parser", ptr %t105, i32 0, i32 2
  %t108 = load ptr, ptr %t107, !tbaa !29
  store ptr %t108, ptr %l88, !tbaa !29
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/parse:Parser", ptr %t110, i32 0, i32 1
  %t113 = load ptr, ptr %t112, !tbaa !29
  %t115 = getelementptr %"compiler/scan:Tokens", ptr %t113, i32 0, i32 0
  %t116 = load { i64, ptr }, ptr %t115, !tbaa !27
  store { i64, ptr } %t116, ptr %l92, !tbaa !27
  %t117 = load i64, ptr %l8, !tbaa !24
  %t119 = getelementptr { i64, ptr }, ptr %l92, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr %"compiler/token:Token", ptr %t120, i64 %t117
  %t122 = load %"compiler/token:Token", ptr %t121
  %t125 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t109, %"compiler/token:Token" %t122)
  store { i64, ptr } %t125, ptr %l95
  br label %bb36
bb35:
  br label %bb98
bb36:
  %t126 = load ptr, ptr %l88, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t128 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t126, { i64, ptr } %t127)
  store i32 %t128, ptr %l96
  br label %bb37
bb37:
  %t129 = load i32, ptr %l96, !tbaa !23
  store i32 %t129, ptr %l9, !tbaa !23
  store i1 false, ptr %l10, !tbaa !21
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/parse:Parser", ptr %t130, i32 0, i32 29
  store ptr %t132, ptr %l11, !tbaa !29
  store i64 0, ptr %l12, !tbaa !24
  br label %bb38
bb38:
  %t134 = load i64, ptr %l12, !tbaa !24
  store i64 %t134, ptr %l99, !tbaa !24
  %t135 = load ptr, ptr %l11, !tbaa !29
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t135)
  store i64 %t137, ptr %l101
  br label %bb39
bb39:
  %t138 = load i64, ptr %l99, !tbaa !24
  %t139 = load i64, ptr %l101, !tbaa !24
  %t140 = icmp slt i64 %t138, %t139
  %t142 = xor i1 %t140, true
  br i1 %t142, label %bb40, label %bb41
bb40:
  br label %bb48
bb41:
  br label %bb42
bb42:
  %t144 = load ptr, ptr %l11, !tbaa !29
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t144, i64 %t145)
  store i32 %t148, ptr %l106
  br label %bb43
bb43:
  %t149 = load i32, ptr %l106, !tbaa !23
  %t151 = load i32, ptr %l9, !tbaa !23
  %t154 = icmp eq i32 %t149, %t151
  br i1 %t154, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t156 = load i64, ptr %l12, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l12, !tbaa !24
  br label %bb38
bb48:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/parse:Parser", ptr %t160, i32 0, i32 30
  store ptr %t162, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb49
bb49:
  %t164 = load i64, ptr %l15, !tbaa !24
  store i64 %t164, ptr %l114, !tbaa !24
  %t165 = load ptr, ptr %l14, !tbaa !29
  %t167 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t165)
  store i64 %t167, ptr %l116
  br label %bb50
bb50:
  %t168 = load i64, ptr %l114, !tbaa !24
  %t169 = load i64, ptr %l116, !tbaa !24
  %t170 = icmp slt i64 %t168, %t169
  %t172 = xor i1 %t170, true
  br i1 %t172, label %bb51, label %bb52
bb51:
  br label %bb59
bb52:
  br label %bb53
bb53:
  %t174 = load ptr, ptr %l14, !tbaa !29
  %t175 = load i64, ptr %l15, !tbaa !24
  %t178 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t174, i64 %t175)
  store i32 %t178, ptr %l121
  br label %bb54
bb54:
  %t179 = load i32, ptr %l121, !tbaa !23
  %t181 = load i32, ptr %l9, !tbaa !23
  %t184 = icmp eq i32 %t179, %t181
  br i1 %t184, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb57
bb56:
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t186 = load i64, ptr %l15, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l15, !tbaa !24
  br label %bb49
bb59:
  %t190 = load i64, ptr %l8, !tbaa !24
  %t192 = add i64 %t190, 1
  store i64 %t192, ptr %l8, !tbaa !24
  %t194 = load i1, ptr %l10, !tbaa !21
  store i1 %t194, ptr %l17, !tbaa !21
  store i64 0, ptr %l18, !tbaa !24
  br label %bb60
bb60:
  store %olang.scope zeroinitializer, ptr %s15
  %t196 = load i1, ptr %l17, !tbaa !21
  br i1 %t196, label %bb61, label %bb62
bb61:
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/parse:Parser", ptr %t198, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t203 = getelementptr %"compiler/scan:Tokens", ptr %t201, i32 0, i32 0
  %t204 = load { i64, ptr }, ptr %t203, !tbaa !27
  store { i64, ptr } %t204, ptr %l134, !tbaa !27
  %t205 = load i64, ptr %l8, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr %"compiler/token:Token", ptr %t208, i64 %t205
  %t210 = getelementptr %"compiler/token:Token", ptr %t209, i32 0, i32 0
  %t211 = load i32, ptr %t210, !range !{i32 0, i32 113}
  %t213 = trunc i64 75 to i32
  %t214 = icmp eq i32 %t211, %t213
  store i1 %t214, ptr %l131, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb63
bb63:
  %t216 = load i1, ptr %l131, !tbaa !21
  br i1 %t216, label %bb64, label %bb65
bb64:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/parse:Parser", ptr %t217, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !29
  %t222 = getelementptr %"compiler/scan:Tokens", ptr %t220, i32 0, i32 0
  %t223 = load { i64, ptr }, ptr %t222, !tbaa !27
  store { i64, ptr } %t223, ptr %l141, !tbaa !27
  %t224 = load i64, ptr %l8, !tbaa !24
  %t226 = add i64 %t224, 1
  %t228 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr %"compiler/token:Token", ptr %t229, i64 %t226
  %t231 = getelementptr %"compiler/token:Token", ptr %t230, i32 0, i32 0
  %t232 = load i32, ptr %t231, !range !{i32 0, i32 113}
  %t234 = trunc i64 1 to i32
  %t235 = icmp eq i32 %t232, %t234
  store i1 %t235, ptr %l138, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l138, !tbaa !21
  br label %bb66
bb66:
  %t237 = load i1, ptr %l138, !tbaa !21
  %t238 = xor i1 %t237, true
  br i1 %t238, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s15)
  br label %bb88
bb68:
  br label %bb69
bb69:
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr %"compiler/parse:Parser", ptr %t241, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !29
  %t246 = getelementptr %"compiler/scan:Tokens", ptr %t244, i32 0, i32 0
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l150, !tbaa !27
  %t248 = load i64, ptr %l8, !tbaa !24
  %t250 = add i64 %t248, 1
  %t252 = getelementptr { i64, ptr }, ptr %l150, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = getelementptr %"compiler/token:Token", ptr %t253, i64 %t250
  %t255 = load %"compiler/token:Token", ptr %t254
  %t258 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t240, %"compiler/token:Token" %t255)
  store { i64, ptr } %t258, ptr %l154
  br label %bb70
bb70:
  %t259 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t259, ptr %l19, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t260, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t262, ptr %l156
  br label %bb71
bb71:
  %t263 = load i1, ptr %l156, !tbaa !21
  %t264 = xor i1 %t263, true
  br i1 %t264, label %bb72, label %bb73
bb72:
  %t266 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t268 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t266, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t268, ptr %l160
  br label %bb74
bb73:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb75
bb74:
  %t269 = load i1, ptr %l160, !tbaa !21
  %t270 = xor i1 %t269, true
  store i1 %t270, ptr %l158, !tbaa !21
  br label %bb75
bb75:
  %t272 = load i1, ptr %l158, !tbaa !21
  br i1 %t272, label %bb76, label %bb77
bb76:
  %t273 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t273, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t275, ptr %l164
  br label %bb78
bb77:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb79
bb78:
  %t276 = load i1, ptr %l164, !tbaa !21
  %t277 = xor i1 %t276, true
  store i1 %t277, ptr %l162, !tbaa !21
  br label %bb79
bb79:
  %t279 = load i1, ptr %l162, !tbaa !21
  br i1 %t279, label %bb80, label %bb81
bb80:
  %t280 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t280, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t282, ptr %l168
  br label %bb82
bb81:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb83
bb82:
  %t283 = load i1, ptr %l168, !tbaa !21
  %t284 = xor i1 %t283, true
  store i1 %t284, ptr %l166, !tbaa !21
  br label %bb83
bb83:
  %t286 = load i1, ptr %l166, !tbaa !21
  br i1 %t286, label %bb84, label %bb85
bb84:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb86
bb85:
  br label %bb86
bb86:
  %t287 = load i64, ptr %l8, !tbaa !24
  %t289 = add i64 %t287, 2
  store i64 %t289, ptr %l8, !tbaa !24
  %t291 = load i64, ptr %l18, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l18, !tbaa !24
  call void @__olang_scope_close(ptr %s15)
  br label %bb87
bb87:
  br label %bb60
bb88:
  %t295 = load i1, ptr %l17, !tbaa !21
  br i1 %t295, label %bb89, label %bb90
bb89:
  %t297 = load i64, ptr %l18, !tbaa !24
  %t299 = icmp sgt i64 %t297, 0
  store i1 %t299, ptr %l175, !tbaa !21
  br label %bb91
bb90:
  store i1 false, ptr %l175, !tbaa !21
  br label %bb91
bb91:
  %t301 = load i1, ptr %l175, !tbaa !21
  br i1 %t301, label %bb92, label %bb93
bb92:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/parse:Parser", ptr %t302, i32 0, i32 1
  %t305 = load ptr, ptr %t304, !tbaa !29
  %t307 = getelementptr %"compiler/scan:Tokens", ptr %t305, i32 0, i32 0
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l181, !tbaa !27
  %t309 = load i64, ptr %l8, !tbaa !24
  %t311 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr %"compiler/token:Token", ptr %t312, i64 %t309
  %t314 = getelementptr %"compiler/token:Token", ptr %t313, i32 0, i32 0
  %t315 = load i32, ptr %t314, !range !{i32 0, i32 113}
  %t317 = trunc i64 111 to i32
  %t318 = icmp eq i32 %t315, %t317
  store i1 %t318, ptr %l178, !tbaa !21
  br label %bb94
bb93:
  store i1 false, ptr %l178, !tbaa !21
  br label %bb94
bb94:
  %t320 = load i1, ptr %l178, !tbaa !21
  br i1 %t320, label %bb95, label %bb96
bb95:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb97
bb96:
  br label %bb97
bb97:
  br label %bb98
bb98:
  %t321 = load ptr, ptr %l0, !tbaa !29
  %t323 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t321)
  %t324 = extractvalue { i32, ptr } %t323, 1
  %t325 = extractvalue { i32, ptr } %t323, 0
  store i32 %t325, ptr %l188
  %t326 = icmp ne i32 %t325, 0
  br i1 %t326, label %bb100, label %ok.327, !prof !99
ok.327:
  store ptr %t324, ptr %l187
  br label %bb99
bb99:
  %t328 = load ptr, ptr %l187, !tbaa !29
  store ptr %t328, ptr %l185, !tbaa !29
  br label %bb101
bb100:
  %t329 = load i32, ptr %l188, !tbaa !23
  %t330 = lshr i32 %t329, 16
  %t331 = and i32 %t329, 65535
  %t332 = icmp eq i32 %t330, 1
  %t333 = select i1 %t332, i32 1, i32 0
  %t334 = icmp eq i32 %t329, 0
  %t335 = shl i32 %t333, 16
  %t336 = or i32 %t335, %t331
  %t337 = select i1 %t334, i32 0, i32 %t336
  %t339 = insertvalue { i32, ptr } zeroinitializer, i32 %t337, 0
  store { i32, ptr } %t339, ptr %rv
  br label %ret
bb101:
  %t340 = load ptr, ptr %l185, !tbaa !29
  store ptr %t340, ptr %l20, !tbaa !29
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t344 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t341, i32 111)
  %t345 = extractvalue { i32, i32 } %t344, 1
  %t346 = extractvalue { i32, i32 } %t344, 0
  store i32 %t346, ptr %l194
  %t347 = icmp ne i32 %t346, 0
  br i1 %t347, label %bb103, label %ok.348, !prof !99
ok.348:
  store i32 %t345, ptr %l193
  br label %bb102
bb102:
  %t349 = load i32, ptr %l193, !tbaa !23
  store i32 %t349, ptr %l190, !tbaa !23
  br label %bb104
bb103:
  %t350 = load i32, ptr %l194, !tbaa !23
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
bb104:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t363 = getelementptr %"compiler/parse:Parser", ptr %t361, i32 0, i32 18
  %t364 = load i64, ptr %t363, !tbaa !24
  store i64 %t364, ptr %l21, !tbaa !24
  %t366 = load ptr, ptr %l0, !tbaa !29
  %t368 = getelementptr %"compiler/parse:Parser", ptr %t366, i32 0, i32 18
  store i64 0, ptr %t368, !tbaa !24
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t371 = getelementptr %"compiler/parse:Parser", ptr %t369, i32 0, i32 19
  %t372 = load i1, ptr %t371, !tbaa !21
  store i1 %t372, ptr %l22, !tbaa !21
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t376 = getelementptr %"compiler/parse:Parser", ptr %t374, i32 0, i32 19
  store i1 false, ptr %t376, !tbaa !21
  %t377 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t377, ptr %l202
  br label %bb105
bb105:
  %t378 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l202
  %t379 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t378, ptr %t379
  store ptr %t379, ptr %l23, !tbaa !29
  br label %bb106
bb106:
  %t381 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %t381)
  br label %bb107
bb107:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t386 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t383, i32 112)
  store i1 %t386, ptr %l207
  br label %bb108
bb108:
  %t387 = load i1, ptr %l207, !tbaa !21
  br i1 %t387, label %bb109, label %bb110
bb109:
  store i1 true, ptr %l208, !tbaa !21
  br label %bb112
bb110:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t391 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t388, i32 0)
  store i1 %t391, ptr %l211
  br label %bb111
bb111:
  %t392 = load i1, ptr %l211, !tbaa !21
  store i1 %t392, ptr %l208, !tbaa !21
  br label %bb112
bb112:
  %t393 = load i1, ptr %l208, !tbaa !21
  br i1 %t393, label %bb113, label %bb114
bb113:
  br label %bb208
bb114:
  br label %bb115
bb115:
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t394)
  store i32 %t396, ptr %l213
  br label %bb116
bb116:
  %t397 = load i32, ptr %l213, !tbaa !23
  store i32 %t397, ptr %l24, !tbaa !23
  %t398 = load ptr, ptr %l0, !tbaa !29
  %t401 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t398, i32 31)
  %t402 = extractvalue { i32, i32 } %t401, 1
  %t403 = extractvalue { i32, i32 } %t401, 0
  store i32 %t403, ptr %l218
  %t404 = icmp ne i32 %t403, 0
  br i1 %t404, label %bb118, label %ok.405, !prof !99
ok.405:
  store i32 %t402, ptr %l217
  br label %bb117
bb117:
  %t406 = load i32, ptr %l217, !tbaa !23
  store i32 %t406, ptr %l214, !tbaa !23
  br label %bb119
bb118:
  %t407 = load i32, ptr %l218, !tbaa !23
  %t408 = lshr i32 %t407, 16
  %t409 = and i32 %t407, 65535
  %t410 = icmp eq i32 %t408, 1
  %t411 = select i1 %t410, i32 1, i32 0
  %t412 = icmp eq i32 %t407, 0
  %t413 = shl i32 %t411, 16
  %t414 = or i32 %t413, %t409
  %t415 = select i1 %t412, i32 0, i32 %t414
  %t417 = insertvalue { i32, ptr } zeroinitializer, i32 %t415, 0
  store { i32, ptr } %t417, ptr %rv
  br label %ret
bb119:
  %t418 = load ptr, ptr %l0, !tbaa !29
  %t420 = getelementptr %"compiler/parse:Parser", ptr %t418, i32 0, i32 35
  %t422 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %t420)
  store i64 %t422, ptr %l222
  br label %bb120
bb120:
  %t423 = load i64, ptr %l222, !tbaa !24
  store i64 %t423, ptr %l25, !tbaa !24
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t426 = getelementptr %"compiler/parse:Parser", ptr %t424, i32 0, i32 33
  %t428 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %t426)
  store i64 %t428, ptr %l225
  br label %bb121
bb121:
  %t429 = load i64, ptr %l225, !tbaa !24
  store i64 %t429, ptr %l26, !tbaa !24
  br label %bb122
bb122:
  %t430 = load i1, ptr %l3, !tbaa !21
  br i1 %t430, label %bb123, label %bb124
bb123:
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/parse:Parser", ptr %t432, i32 0, i32 33
  store ptr %t434, ptr %l228, !tbaa !29
  %t435 = load ptr, ptr %l0, !tbaa !29
  %t437 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseType(ptr %v0, ptr %v0, ptr %t435)
  %t438 = extractvalue { i32, ptr } %t437, 1
  %t439 = extractvalue { i32, ptr } %t437, 0
  store i32 %t439, ptr %l232
  %t440 = icmp ne i32 %t439, 0
  br i1 %t440, label %bb126, label %ok.441, !prof !99
ok.441:
  store ptr %t438, ptr %l231
  br label %bb125
bb124:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v0, ptr %t442, i64 1)
  %t445 = extractvalue { i32, ptr } %t444, 1
  %t446 = extractvalue { i32, ptr } %t444, 0
  store i32 %t446, ptr %l237
  %t447 = icmp ne i32 %t446, 0
  br i1 %t447, label %bb130, label %ok.448, !prof !99
ok.448:
  store ptr %t445, ptr %l236
  br label %bb129
bb125:
  %t449 = load ptr, ptr %l231, !tbaa !29
  store ptr %t449, ptr %l229, !tbaa !29
  br label %bb127
bb126:
  %t450 = load i32, ptr %l232, !tbaa !23
  %t451 = lshr i32 %t450, 16
  %t452 = and i32 %t450, 65535
  %t453 = icmp eq i32 %t451, 1
  %t454 = select i1 %t453, i32 1, i32 0
  %t455 = icmp eq i32 %t450, 0
  %t456 = shl i32 %t454, 16
  %t457 = or i32 %t456, %t452
  %t458 = select i1 %t455, i32 0, i32 %t457
  %t460 = insertvalue { i32, ptr } zeroinitializer, i32 %t458, 0
  store { i32, ptr } %t460, ptr %rv
  br label %ret
bb127:
  %t461 = load ptr, ptr %l228, !tbaa !29
  %t462 = load ptr, ptr %l229, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v0, ptr %t461, ptr %t462)
  br label %bb128
bb128:
  br label %bb156
bb129:
  %t463 = load ptr, ptr %l236, !tbaa !29
  store ptr %t463, ptr %l234, !tbaa !29
  br label %bb131
bb130:
  %t464 = load i32, ptr %l237, !tbaa !23
  %t465 = lshr i32 %t464, 16
  %t466 = and i32 %t464, 65535
  %t467 = icmp eq i32 %t465, 1
  %t468 = select i1 %t467, i32 1, i32 0
  %t469 = icmp eq i32 %t464, 0
  %t470 = shl i32 %t468, 16
  %t471 = or i32 %t470, %t466
  %t472 = select i1 %t469, i32 0, i32 %t471
  %t474 = insertvalue { i32, ptr } zeroinitializer, i32 %t472, 0
  store { i32, ptr } %t474, ptr %rv
  br label %ret
bb131:
  %t475 = load ptr, ptr %l234, !tbaa !29
  store ptr %t475, ptr %l27, !tbaa !29
  %t476 = load ptr, ptr %l27, !tbaa !29
  %t478 = call i1 @compiler_2fparse_2eisTypeCasePath(ptr %v0, ptr %t476)
  store i1 %t478, ptr %l240
  br label %bb132
bb132:
  %t479 = load i1, ptr %l240, !tbaa !21
  br i1 %t479, label %bb133, label %bb134
bb133:
  %t480 = load ptr, ptr %l0, !tbaa !29
  %t483 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t480, i32 1)
  store i1 %t483, ptr %l244
  br label %bb135
bb134:
  store i1 false, ptr %l241, !tbaa !21
  br label %bb136
bb135:
  %t484 = load i1, ptr %l244, !tbaa !21
  store i1 %t484, ptr %l241, !tbaa !21
  br label %bb136
bb136:
  %t485 = load i1, ptr %l241, !tbaa !21
  br i1 %t485, label %bb137, label %bb138
bb137:
  %t486 = load ptr, ptr %l0, !tbaa !29
  %t488 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t486)
  store %"compiler/token:Token" %t488, ptr %l247
  br label %bb139
bb138:
  store i1 false, ptr %l245, !tbaa !21
  br label %bb141
bb139:
  %t489 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t490 = load %"compiler/token:Token", ptr %l247
  %t492 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t490, i8 %t489)
  store i1 %t492, ptr %l249
  br label %bb140
bb140:
  %t493 = load i1, ptr %l249, !tbaa !21
  %t494 = xor i1 %t493, true
  store i1 %t494, ptr %l245, !tbaa !21
  br label %bb141
bb141:
  %t496 = load i1, ptr %l245, !tbaa !21
  br i1 %t496, label %bb142, label %bb143
bb142:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t497)
  store i32 %t499, ptr %l252
  br label %bb144
bb143:
  %t500 = load ptr, ptr %l0, !tbaa !29
  %t502 = getelementptr %"compiler/parse:Parser", ptr %t500, i32 0, i32 35
  store ptr %t502, ptr %l277, !tbaa !29
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load ptr, ptr %l27, !tbaa !29
  %t507 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v0, ptr %v0, ptr %t503, ptr %t504, i1 true)
  store ptr %t507, ptr %l280
  br label %bb153
bb144:
  %t508 = load i32, ptr %l252, !tbaa !23
  store i32 %t508, ptr %l28, !tbaa !23
  %t509 = load ptr, ptr %l0, !tbaa !29
  %t511 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t509)
  %t512 = extractvalue { i32, i32 } %t511, 1
  %t513 = extractvalue { i32, i32 } %t511, 0
  store i32 %t513, ptr %l256
  %t514 = icmp ne i32 %t513, 0
  br i1 %t514, label %bb146, label %ok.515, !prof !99
ok.515:
  store i32 %t512, ptr %l255
  br label %bb145
bb145:
  %t516 = load i32, ptr %l255, !tbaa !23
  store i32 %t516, ptr %l253, !tbaa !23
  br label %bb147
bb146:
  %t517 = load i32, ptr %l256, !tbaa !23
  %t518 = lshr i32 %t517, 16
  %t519 = and i32 %t517, 65535
  %t520 = icmp eq i32 %t518, 1
  %t521 = select i1 %t520, i32 1, i32 0
  %t522 = icmp eq i32 %t517, 0
  %t523 = shl i32 %t521, 16
  %t524 = or i32 %t523, %t519
  %t525 = select i1 %t522, i32 0, i32 %t524
  %t527 = insertvalue { i32, ptr } zeroinitializer, i32 %t525, 0
  store { i32, ptr } %t527, ptr %rv
  br label %ret
bb147:
  %t528 = load i32, ptr %l253, !tbaa !23
  store i32 %t528, ptr %l29, !tbaa !23
  %t529 = load ptr, ptr %l0, !tbaa !29
  %t530 = load ptr, ptr %l27, !tbaa !29
  %t533 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseTypeRef(ptr %v0, ptr %v0, ptr %v0, ptr %t529, ptr %t530)
  store ptr %t533, ptr %l260
  br label %bb148
bb148:
  %t534 = load ptr, ptr %l260, !tbaa !29
  store ptr %t534, ptr %l30, !tbaa !29
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/parse:Parser", ptr %t535, i32 0, i32 35
  store ptr %t537, ptr %l262, !tbaa !29
  %t538 = load ptr, ptr %l27, !tbaa !29
  %t540 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %t538)
  store %"compiler/source:Span" %t540, ptr %l264
  br label %bb149
bb149:
  %t541 = getelementptr %"compiler/source:Span", ptr %l264, i32 0, i32 0
  %t542 = load i32, ptr %t541, !tbaa !23
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t545 = getelementptr %"compiler/parse:Parser", ptr %t543, i32 0, i32 10
  %t546 = load i32, ptr %t545, !tbaa !23
  %t549 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %t542, i32 %t546)
  store %"compiler/source:Span" %t549, ptr %l268
  br label %bb150
bb150:
  %t550 = load ptr, ptr %l30, !tbaa !29
  store ptr %t550, ptr %l269, !tbaa !29
  %t551 = load i32, ptr %l29, !tbaa !23
  store i32 %t551, ptr %l270, !tbaa !23
  %t552 = load ptr, ptr %l0, !tbaa !29
  %t553 = load i32, ptr %l28, !tbaa !23
  %t556 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t552, i32 %t553)
  store %"compiler/source:Span" %t556, ptr %l273
  br label %bb151
bb151:
  store { i64, [4 x i64] } zeroinitializer, ptr %t557
  %t558 = getelementptr { i64, [4 x i64] }, ptr %t557, i32 0, i32 0
  store i64 5, ptr %t558
  %t559 = load %"compiler/source:Span", ptr %l268
  %t560 = insertvalue { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" } undef, %"compiler/source:Span" %t559, 0
  %t561 = load ptr, ptr %l269, !tbaa !29
  %t562 = insertvalue { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" } %t560, ptr %t561, 1
  %t563 = load i32, ptr %l270, !tbaa !23
  %t564 = insertvalue { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" } %t562, i32 %t563, 2
  %t565 = load %"compiler/source:Span", ptr %l273
  %t566 = insertvalue { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" } %t564, %"compiler/source:Span" %t565, 3
  %t567 = getelementptr { i64, [4 x i64] }, ptr %t557, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" } %t566, ptr %t567
  %t568 = load { i64, [4 x i64] }, ptr %t557
  %t570 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t568, ptr %t570
  %t571 = load ptr, ptr %l262, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v0, ptr %t571, ptr %t570)
  br label %bb152
bb152:
  br label %bb155
bb153:
  %t573 = load ptr, ptr %l277, !tbaa !29
  %t574 = load ptr, ptr %l280, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v0, ptr %t573, ptr %t574)
  br label %bb154
bb154:
  br label %bb155
bb155:
  br label %bb156
bb156:
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t578 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t575, i32 74)
  store i1 %t578, ptr %l283
  br label %bb157
bb157:
  %t579 = load i1, ptr %l283, !tbaa !21
  br i1 %t579, label %bb158, label %bb159
bb158:
  br label %bb185
bb159:
  br label %bb160
bb160:
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t583 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t580, i32 8)
  store i1 %t583, ptr %l286
  br label %bb161
bb161:
  %t584 = load i1, ptr %l286, !tbaa !21
  %t585 = xor i1 %t584, true
  br i1 %t585, label %bb162, label %bb163
bb162:
  br label %bb186
bb163:
  br label %bb164
bb164:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t589 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t587, i64 1)
  store i32 %t589, ptr %l289
  br label %bb165
bb165:
  %t590 = load i32, ptr %l289, !range !{i32 0, i32 113}
  store i32 %t590, ptr %l31
  %t591 = load i32, ptr %l31, !range !{i32 0, i32 113}
  %t593 = trunc i64 111 to i32
  %t594 = icmp eq i32 %t591, %t593
  br i1 %t594, label %bb166, label %bb167
bb166:
  store i1 true, ptr %l292, !tbaa !21
  br label %bb168
bb167:
  %t596 = load i32, ptr %l31, !range !{i32 0, i32 113}
  %t598 = trunc i64 78 to i32
  %t599 = icmp eq i32 %t596, %t598
  store i1 %t599, ptr %l292, !tbaa !21
  br label %bb168
bb168:
  %t601 = load i1, ptr %l292, !tbaa !21
  br i1 %t601, label %bb169, label %bb170
bb169:
  store i1 true, ptr %l295, !tbaa !21
  br label %bb171
bb170:
  %t602 = load i32, ptr %l31, !range !{i32 0, i32 113}
  %t604 = trunc i64 9 to i32
  %t605 = icmp eq i32 %t602, %t604
  store i1 %t605, ptr %l295, !tbaa !21
  br label %bb171
bb171:
  %t607 = load i1, ptr %l295, !tbaa !21
  br i1 %t607, label %bb172, label %bb173
bb172:
  store i1 true, ptr %l298, !tbaa !21
  br label %bb174
bb173:
  %t608 = load i32, ptr %l31, !range !{i32 0, i32 113}
  %t610 = trunc i64 112 to i32
  %t611 = icmp eq i32 %t608, %t610
  store i1 %t611, ptr %l298, !tbaa !21
  br label %bb174
bb174:
  %t613 = load i1, ptr %l298, !tbaa !21
  br i1 %t613, label %bb175, label %bb176
bb175:
  store i1 true, ptr %l301, !tbaa !21
  br label %bb177
bb176:
  %t614 = load i32, ptr %l31, !range !{i32 0, i32 113}
  %t616 = trunc i64 31 to i32
  %t617 = icmp eq i32 %t614, %t616
  store i1 %t617, ptr %l301, !tbaa !21
  br label %bb177
bb177:
  %t619 = load i1, ptr %l301, !tbaa !21
  br i1 %t619, label %bb178, label %bb179
bb178:
  store i1 true, ptr %l304, !tbaa !21
  br label %bb180
bb179:
  %t620 = load i32, ptr %l31, !range !{i32 0, i32 113}
  %t622 = trunc i64 0 to i32
  %t623 = icmp eq i32 %t620, %t622
  store i1 %t623, ptr %l304, !tbaa !21
  br label %bb180
bb180:
  %t625 = load i1, ptr %l304, !tbaa !21
  br i1 %t625, label %bb181, label %bb182
bb181:
  br label %bb186
bb182:
  br label %bb183
bb183:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t628 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t626)
  store i32 %t628, ptr %l308
  br label %bb184
bb184:
  br label %bb185
bb185:
  br label %bb122
bb186:
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr %"compiler/parse:Parser", ptr %t629, i32 0, i32 35
  %t632 = load i64, ptr %l25, !tbaa !24
  %t635 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %t631, i64 %t632)
  store { i64, ptr } %t635, ptr %l312
  br label %bb187
bb187:
  %t636 = load { i64, ptr }, ptr %l312, !tbaa !27
  store { i64, ptr } %t636, ptr %l32, !tbaa !27
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t639 = getelementptr %"compiler/parse:Parser", ptr %t637, i32 0, i32 33
  %t640 = load i64, ptr %l26, !tbaa !24
  %t643 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %t639, i64 %t640)
  store { i64, ptr } %t643, ptr %l316
  br label %bb188
bb188:
  %t644 = load { i64, ptr }, ptr %l316, !tbaa !27
  store { i64, ptr } %t644, ptr %l33, !tbaa !27
  store ptr null, ptr %l34, !tbaa !29
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t648 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t645, i32 9)
  store i1 %t648, ptr %l319
  br label %bb189
bb189:
  %t649 = load i1, ptr %l319, !tbaa !21
  br i1 %t649, label %bb190, label %bb191
bb190:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t652 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t650)
  %t653 = extractvalue { i32, ptr } %t652, 1
  %t654 = extractvalue { i32, ptr } %t652, 0
  store i32 %t654, ptr %l323
  %t655 = icmp ne i32 %t654, 0
  br i1 %t655, label %bb193, label %ok.656, !prof !99
ok.656:
  store ptr %t653, ptr %l322
  br label %bb192
bb191:
  br label %bb195
bb192:
  %t657 = load ptr, ptr %l322, !tbaa !29
  store ptr %t657, ptr %l320, !tbaa !29
  br label %bb194
bb193:
  %t658 = load i32, ptr %l323, !tbaa !23
  %t659 = lshr i32 %t658, 16
  %t660 = and i32 %t658, 65535
  %t661 = icmp eq i32 %t659, 1
  %t662 = select i1 %t661, i32 1, i32 0
  %t663 = icmp eq i32 %t658, 0
  %t664 = shl i32 %t662, 16
  %t665 = or i32 %t664, %t660
  %t666 = select i1 %t663, i32 0, i32 %t665
  %t668 = insertvalue { i32, ptr } zeroinitializer, i32 %t666, 0
  store { i32, ptr } %t668, ptr %rv
  br label %ret
bb194:
  %t669 = load ptr, ptr %l320, !tbaa !29
  store ptr %t669, ptr %l34, !tbaa !29
  br label %bb195
bb195:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t675 = call { i32, { { i64, ptr }, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseBody(ptr %v0, ptr %v1, ptr %t671, i1 %a1)
  %t676 = extractvalue { i32, { { i64, ptr }, ptr } } %t675, 1
  %t677 = extractvalue { i32, { { i64, ptr }, ptr } } %t675, 0
  store i32 %t677, ptr %l330
  %t678 = icmp ne i32 %t677, 0
  br i1 %t678, label %bb197, label %ok.679, !prof !99
ok.679:
  store { { i64, ptr }, ptr } %t676, ptr %l329
  br label %bb196
bb196:
  %t680 = load { { i64, ptr }, ptr }, ptr %l329
  store { { i64, ptr }, ptr } %t680, ptr %l326
  br label %bb198
bb197:
  %t681 = load i32, ptr %l330, !tbaa !23
  %t682 = lshr i32 %t681, 16
  %t683 = and i32 %t681, 65535
  %t684 = icmp eq i32 %t682, 1
  %t685 = select i1 %t684, i32 1, i32 0
  %t686 = icmp eq i32 %t681, 0
  %t687 = shl i32 %t685, 16
  %t688 = or i32 %t687, %t683
  %t689 = select i1 %t686, i32 0, i32 %t688
  %t691 = insertvalue { i32, ptr } zeroinitializer, i32 %t689, 0
  store { i32, ptr } %t691, ptr %rv
  br label %ret
bb198:
  %t692 = load { { i64, ptr }, ptr }, ptr %l326
  store { { i64, ptr }, ptr } %t692, ptr %l35
  %t693 = getelementptr { { i64, ptr }, ptr }, ptr %l35, i32 0, i32 0
  %t694 = load { i64, ptr }, ptr %t693, !tbaa !27
  store { i64, ptr } %t694, ptr %l36, !tbaa !27
  %t696 = getelementptr { { i64, ptr }, ptr }, ptr %l35, i32 0, i32 1
  %t697 = load ptr, ptr %t696, !tbaa !29
  store ptr %t697, ptr %l37, !tbaa !29
  %t699 = load ptr, ptr %l23, !tbaa !29
  store ptr %t699, ptr %l334, !tbaa !29
  %t700 = load ptr, ptr %l0, !tbaa !29
  %t701 = load i32, ptr %l24, !tbaa !23
  %t704 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t700, i32 %t701)
  store %"compiler/source:Span" %t704, ptr %l337
  br label %bb199
bb199:
  %t705 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t706 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t707 = load ptr, ptr %l34, !tbaa !29
  %t708 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t709 = load ptr, ptr %l37, !tbaa !29
  %t710 = load %"compiler/source:Span", ptr %l337
  %t716 = call %"compiler/ast:Case" @compiler_2fast_3aCase_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t710, { i64, ptr } %t705, { i64, ptr } %t706, ptr %t707, { i64, ptr } %t708, ptr %t709)
  store %"compiler/ast:Case" %t716, ptr %l343
  br label %bb200
bb200:
  %t717 = load %"compiler/ast:Case", ptr %l343
  %t718 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 72, i64 8)
  store %"compiler/ast:Case" %t717, ptr %t718
  %t719 = load ptr, ptr %l334, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2ePush_3ccompiler_2fast_3aCase_26_3e(ptr %v1, ptr %v1, ptr %t719, ptr %t718)
  br label %bb201
bb201:
  %t721 = load ptr, ptr %l0, !tbaa !29
  %t724 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t721, i32 8)
  store i1 %t724, ptr %l347
  br label %bb202
bb202:
  %t725 = load i1, ptr %l347, !tbaa !21
  br i1 %t725, label %bb203, label %bb204
bb203:
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t728 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t726)
  store i32 %t728, ptr %l349
  br label %bb205
bb204:
  br label %bb206
bb205:
  br label %bb206
bb206:
  br label %bb207
bb207:
  br label %bb106
bb208:
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t732 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t729, i32 112)
  %t733 = extractvalue { i32, i32 } %t732, 1
  %t734 = extractvalue { i32, i32 } %t732, 0
  store i32 %t734, ptr %l354
  %t735 = icmp ne i32 %t734, 0
  br i1 %t735, label %bb210, label %ok.736, !prof !99
ok.736:
  store i32 %t733, ptr %l353
  br label %bb209
bb209:
  %t737 = load i32, ptr %l353, !tbaa !23
  store i32 %t737, ptr %l350, !tbaa !23
  br label %bb211
bb210:
  %t738 = load i32, ptr %l354, !tbaa !23
  %t739 = lshr i32 %t738, 16
  %t740 = and i32 %t738, 65535
  %t741 = icmp eq i32 %t739, 1
  %t742 = select i1 %t741, i32 1, i32 0
  %t743 = icmp eq i32 %t738, 0
  %t744 = shl i32 %t742, 16
  %t745 = or i32 %t744, %t740
  %t746 = select i1 %t743, i32 0, i32 %t745
  %t748 = insertvalue { i32, ptr } zeroinitializer, i32 %t746, 0
  store { i32, ptr } %t748, ptr %rv
  br label %ret
bb211:
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t750 = load i64, ptr %l21, !tbaa !24
  %t753 = getelementptr %"compiler/parse:Parser", ptr %t749, i32 0, i32 18
  store i64 %t750, ptr %t753, !tbaa !24
  %t754 = load ptr, ptr %l0, !tbaa !29
  %t755 = load i1, ptr %l22, !tbaa !21
  %t758 = getelementptr %"compiler/parse:Parser", ptr %t754, i32 0, i32 19
  store i1 %t755, ptr %t758, !tbaa !21
  %t759 = load ptr, ptr %l0, !tbaa !29
  %t760 = load i32, ptr %l2, !tbaa !23
  %t763 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t759, i32 %t760)
  store %"compiler/source:Span" %t763, ptr %l362
  br label %bb212
bb212:
  %t764 = load ptr, ptr %l20, !tbaa !29
  store ptr %t764, ptr %l363, !tbaa !29
  %t765 = load i1, ptr %l3, !tbaa !21
  store i1 %t765, ptr %l364, !tbaa !21
  %t766 = load ptr, ptr %l23, !tbaa !29
  %t768 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2eToArray_3ccompiler_2fast_3aCase_26_3e(ptr %v1, ptr %v1, ptr %t766)
  store { i64, ptr } %t768, ptr %l366
  br label %bb213
bb213:
  %t769 = load %"compiler/source:Span", ptr %l362
  %t770 = load ptr, ptr %l363, !tbaa !29
  %t771 = load i1, ptr %l364, !tbaa !21
  %t772 = load { i64, ptr }, ptr %l366, !tbaa !27
  %t773 = call %"compiler/ast:Match" @compiler_2fast_3aMatch_2ector(ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t769, ptr %t770, i1 %t771, { i64, ptr } %t772)
  store %"compiler/ast:Match" %t773, ptr %l367
  br label %bb214
bb214:
  %t774 = load %"compiler/ast:Match", ptr %l367
  %t775 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store %"compiler/ast:Match" %t774, ptr %t775
  %t777 = insertvalue { i32, ptr } zeroinitializer, ptr %t775, 1
  store { i32, ptr } %t777, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ememberNext(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l2 = alloca i32
  %l4 = alloca %"compiler/token:Token"
  %l18 = alloca i32
  %l24 = alloca i1
  %l29 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t1, i64 1)
  store %"compiler/token:Token" %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load %"compiler/token:Token", ptr %l4
  store %"compiler/token:Token" %t4, ptr %l1
  %t5 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 0
  %t6 = load i32, ptr %t5, !range !{i32 0, i32 113}
  %t8 = trunc i64 1 to i32
  %t9 = icmp eq i32 %t6, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/parse:Parser", ptr %t14, i32 0, i32 0
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = getelementptr %"compiler/source:Source", ptr %t17, i32 0, i32 1
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  %t21 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t22 = load i32, ptr %t21, !tbaa !23
  %t24 = sext i32 %t22 to i64
  %t25 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 3
  %t26 = load i32, ptr %t25, !tbaa !23
  %t27 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t28 = load i32, ptr %t27, !tbaa !23
  %t31 = sub i32 %t26, %t28
  %t33 = sext i32 %t31 to i64
  %t37 = call i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %t20, i64 %t24, i64 %t33)
  store i32 %t37, ptr %l18
  br label %bb5
bb5:
  %t38 = load i32, ptr %l18, !range !{i32 0, i32 113}
  store i32 %t38, ptr %l2
  %t39 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t41 = trunc i64 1 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t45 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t47 = trunc i64 6 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb11
bb10:
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t52 = trunc i64 7 to i32
  %t53 = icmp eq i32 %t50, %t52
  store i1 %t53, ptr %l24, !tbaa !21
  br label %bb11
bb11:
  %t55 = load i1, ptr %l24, !tbaa !21
  br i1 %t55, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t57 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t59 = call i1 @compiler_2fparse_2ekeywordNamesField(i32 %t57)
  store i1 %t59, ptr %l29
  br label %bb15
bb15:
  %t60 = load i1, ptr %l29, !tbaa !21
  br i1 %t60, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb19
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t61, i64 2)
  store i32 %t63, ptr %l32
  br label %bb18
bb18:
  %t64 = load i32, ptr %l32, !range !{i32 0, i32 113}
  %t66 = trunc i64 107 to i32
  %t67 = icmp eq i32 %t64, %t66
  store i1 %t67, ptr %l30, !tbaa !21
  br label %bb19
bb19:
  %t69 = load i1, ptr %l30, !tbaa !21
  store i1 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2emessageHere(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i32
  %l7 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %t1)
  store i1 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i1, ptr %l3, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 false, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t6)
  store i32 %t8, ptr %l6
  br label %bb5
bb5:
  %t9 = load i32, ptr %l6, !range !{i32 0, i32 113}
  store i32 %t9, ptr %l1
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t12 = trunc i64 5 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t17 = trunc i64 104 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  %t20 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t22 = trunc i64 1 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t27 = trunc i64 107 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  %t30 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t32 = trunc i64 2 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb32
bb17:
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t37 = trunc i64 3 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t42 = trunc i64 4 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t47 = trunc i64 6 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  %t50 = load i32, ptr %l1, !range !{i32 0, i32 113}
  %t52 = trunc i64 7 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_2c371f21e588b068_13da37aea4ea5bc)
  unreachable
bb32:
  %t55 = load i1, ptr %l7, !tbaa !21
  store i1 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/token:Token"
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca %"compiler/token:Token"
  %l13 = alloca i32
  %l15 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca i32
  %s1 = alloca %olang.scope
  %rv = alloca { i32, i32 }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t6 = trunc i64 1 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t11, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i32 %t13, ptr %l8
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb5, label %ok.15, !prof !99
ok.15:
  br label %bb4
bb3:
  br label %bb7
bb4:
  br label %bb6
bb5:
  %t16 = load i32, ptr %l8, !tbaa !23
  %t17 = lshr i32 %t16, 16
  %t18 = and i32 %t16, 65535
  %t19 = icmp eq i32 %t17, 1
  %t20 = select i1 %t19, i32 1, i32 0
  %t21 = icmp eq i32 %t16, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t18
  %t24 = select i1 %t21, i32 0, i32 %t23
  call void @__olang_scope_close(ptr %s1)
  %t26 = insertvalue { i32, i32 } zeroinitializer, i32 %t24, 0
  store { i32, i32 } %t26, ptr %rv
  br label %ret
bb6:
  call void @__olang_scope_close(ptr %s1)
  br label %bb7
bb7:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t27)
  store %"compiler/token:Token" %t29, ptr %l11
  br label %bb8
bb8:
  %t30 = load %"compiler/token:Token", ptr %l11
  store %"compiler/token:Token" %t30, ptr %l1
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t31)
  store i32 %t33, ptr %l13
  br label %bb9
bb9:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/parse:Parser", ptr %t34, i32 0, i32 2
  %t37 = load ptr, ptr %t36, !tbaa !29
  store ptr %t37, ptr %l15, !tbaa !29
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load %"compiler/token:Token", ptr %l1
  %t42 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t38, %"compiler/token:Token" %t39)
  store { i64, ptr } %t42, ptr %l18
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l15, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t45 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t43, { i64, ptr } %t44)
  store i32 %t45, ptr %l19
  br label %bb11
bb11:
  %t46 = load i32, ptr %l19, !tbaa !23
  %t47 = insertvalue { i32, i32 } zeroinitializer, i32 %t46, 1
  store { i32, i32 } %t47, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i32 }, ptr %rv
  ret { i32, i32 } %rr
}

define dso_local { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamed(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l5 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekindAt(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 113}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t9 = trunc i64 8 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load { i64, ptr }, ptr @G_2ecompiler_2fmsgs_2eEndOfLine, !tbaa !27
  store { i64, ptr } %t12, ptr %l8, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t13, 0
  store i64 %t14, ptr %l9, !tbaa !24
  %t15 = load i64, ptr %l9, !tbaa !24
  %t16 = mul i64 %t15, 1
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  %t18 = insertvalue { i64, ptr } undef, i64 %t15, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t17, 1
  store { i64, ptr } %t19, ptr %l10, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = load i64, ptr %l9, !tbaa !24
  %t25 = mul i64 %t24, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t21, ptr %t23, i64 %t25, i1 false)
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t26, ptr %l8, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t27, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t28 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t30 = trunc i64 0 to i32
  %t31 = icmp eq i32 %t28, %t30
  br i1 %t31, label %bb5, label %bb6
bb5:
  %t33 = load { i64, ptr }, ptr @G_2ecompiler_2fmsgs_2eEndOfFile, !tbaa !27
  store { i64, ptr } %t33, ptr %l13, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l14, !tbaa !24
  %t36 = load i64, ptr %l14, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l15, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l14, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t47, ptr %l13, !tbaa !27
  %t48 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/parse:Parser", ptr %t50, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = getelementptr %"compiler/scan:Tokens", ptr %t53, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l19, !tbaa !27
  %t57 = load i64, ptr %l1, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/token:Token", ptr %t60, i64 %t57
  %t62 = load %"compiler/token:Token", ptr %t61
  %t65 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t49, %"compiler/token:Token" %t62)
  store { i64, ptr } %t65, ptr %l22
  br label %bb8
bb8:
  %t66 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t67 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %t66)
  store { i64, ptr } %t67, ptr %l23
  br label %bb9
bb9:
  %t68 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t68, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2enamesOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i32
  %l12 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/source:Span"
  %l20 = alloca %"compiler/source:Span"
  %l32 = alloca { i64, ptr }
  %l35 = alloca ptr
  %l36 = alloca i1
  %l43 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l53 = alloca i32
  %l59 = alloca %"compiler/parse:NameList"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t34 = alloca i64
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  store i64 %t3, ptr %l12, !tbaa !24
  %t4 = load i64, ptr %l12, !tbaa !24
  %t5 = icmp sge i64 %t4, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load i64, ptr %l12, !tbaa !24
  %t8 = icmp sle i64 %t7, 2305843009213693951
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_97d42995c5706fd7_20b731538cf045b)
  unreachable
bb3:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = mul i64 %t10, 4
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l2, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = extractvalue { i64, ptr } %t16, 0
  store i64 %t18, ptr %l17, !tbaa !24
  store %"compiler/source:Span" zeroinitializer, ptr %l18
  %t19 = load i64, ptr %l17, !tbaa !24
  %t20 = icmp sgt i64 %t19, 0
  br i1 %t20, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_97d42995c5706fd7_20b731538cf045b)
  unreachable
bb5:
  %t22 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 0, i32 0)
  store %"compiler/source:Span" %t22, ptr %l20
  br label %bb7
bb6:
  %t23 = load i64, ptr %l17, !tbaa !24
  %t24 = icmp sge i64 %t23, 0
  br i1 %t24, label %bb8, label %bb9
bb7:
  %t26 = load %"compiler/source:Span", ptr %l20
  store %"compiler/source:Span" %t26, ptr %l18
  br label %bb6
bb8:
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = icmp sle i64 %t27, 1152921504606846975
  br i1 %t28, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_787ae3c3318fe322_f2232752b79280c6)
  unreachable
bb10:
  %t30 = load i64, ptr %l17, !tbaa !24
  %t31 = mul i64 %t30, 8
  %t32 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t31)
  %t33 = load %"compiler/source:Span", ptr %l18
  store i64 0, ptr %t34
  br label %fill.35
fill.35:
  %t38 = load i64, ptr %t34
  %t39 = icmp slt i64 %t38, %t30
  br i1 %t39, label %fillb.36, label %filld.37
fillb.36:
  %t40 = getelementptr %"compiler/source:Span", ptr %t32, i64 %t38
  store %"compiler/source:Span" %t33, ptr %t40
  %t41 = add i64 %t38, 1
  store i64 %t41, ptr %t34
  br label %fill.35
filld.37:
  %t42 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t32, 1
  store { i64, ptr } %t43, ptr %l3, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t45, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l6, !tbaa !24
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_787ae3c3318fe322_f2232752b79280c6)
  unreachable
bb12:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  br label %bb32
bb14:
  br label %bb15
bb15:
  %t59 = load i64, ptr %l5, !tbaa !24
  store i64 %t59, ptr %l7, !tbaa !24
  %t61 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t61, ptr %l32, !tbaa !27
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr ptr, ptr %t65, i64 %t62
  %t67 = load ptr, ptr %t66, !tbaa !39
  store ptr %t67, ptr %l8, !tbaa !29
  %t69 = load ptr, ptr %l8, !tbaa !29
  store ptr %t69, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t70 = load ptr, ptr %l35, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb16, label %bb17
bb16:
  %t73 = load ptr, ptr %l35, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 28}
  %t76 = icmp eq i64 %t74, 0
  store i1 %t76, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t77 = load i1, ptr %l36, !tbaa !21
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t78 = load ptr, ptr %l8, !tbaa !29
  %t80 = getelementptr { i64, [4 x i64] }, ptr %t78, i32 0, i32 1
  %t81 = getelementptr { %"compiler/source:Span", i32 }, ptr %t80, i32 0, i32 0
  %t82 = load %"compiler/source:Span", ptr %t81
  store %"compiler/source:Span" %t82, ptr %l9
  %t84 = load ptr, ptr %l8, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32 }, ptr %t86, i32 0, i32 1
  %t88 = load i32, ptr %t87
  store i32 %t88, ptr %l10, !tbaa !23
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t90 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t90, ptr %l43, !tbaa !27
  %t91 = load i64, ptr %l7, !tbaa !24
  %t92 = load i32, ptr %l10, !tbaa !23
  %t95 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !27
  %t97 = getelementptr i32, ptr %t96, i64 %t91
  store i32 %t92, ptr %t97, !tbaa !33
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t98, ptr %l46, !tbaa !27
  %t99 = load i64, ptr %l7, !tbaa !24
  %t100 = load %"compiler/source:Span", ptr %l9
  %t103 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr %"compiler/source:Span", ptr %t104, i64 %t99
  store %"compiler/source:Span" %t100, ptr %t105
  br label %bb30
bb21:
  br i1 true, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb29
bb24:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %a0, ptr %l49, !tbaa !29
  %t108 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s4, i32 77)
  store { i64, ptr } %t108, ptr %l51
  br label %bb25
bb25:
  %t109 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t110 = extractvalue { i64, ptr } %t109, 0
  %t111 = extractvalue { i64, ptr } %t109, 1
  %t112 = mul i64 %t110, 1
  %t113 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t112)
  call void @llvm.memcpy.p0.p0.i64(ptr %t113, ptr %t111, i64 %t112, i1 false)
  %t114 = insertvalue { i64, ptr } undef, i64 %t110, 0
  %t115 = insertvalue { i64, ptr } %t114, ptr %t113, 1
  %t116 = load ptr, ptr %l49, !tbaa !29
  %t118 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s4, ptr %t116, { i64, ptr } %t115)
  store i32 %t118, ptr %l53
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb27, label %ok.120, !prof !99
ok.120:
  br label %bb26
bb26:
  br label %bb28
bb27:
  %t121 = load i32, ptr %l53, !tbaa !23
  %t122 = lshr i32 %t121, 16
  %t123 = and i32 %t121, 65535
  %t124 = icmp eq i32 %t122, 1
  %t125 = select i1 %t124, i32 1, i32 0
  %t126 = icmp eq i32 %t121, 0
  %t127 = shl i32 %t125, 16
  %t128 = or i32 %t127, %t123
  %t129 = select i1 %t126, i32 0, i32 %t128
  call void @__olang_scope_close(ptr %s4)
  %t131 = insertvalue { i32, ptr } zeroinitializer, i32 %t129, 0
  store { i32, ptr } %t131, ptr %rv
  br label %ret
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_afe07cd3f11f5e9a_d335478c7d935166)
  unreachable
bb30:
  br label %bb31
bb31:
  %t132 = load i64, ptr %l5, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l5, !tbaa !24
  br label %bb12
bb32:
  %t136 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t137 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t140 = call %"compiler/parse:NameList" @compiler_2fparse_3aNameList_2ector(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t136, { i64, ptr } %t137)
  store %"compiler/parse:NameList" %t140, ptr %l59
  br label %bb33
bb33:
  %t141 = load %"compiler/parse:NameList", ptr %l59
  %t142 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"compiler/parse:NameList" %t141, ptr %t142
  %t144 = insertvalue { i32, ptr } zeroinitializer, ptr %t142, 1
  store { i32, ptr } %t144, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eoldPiece(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca i1
  %l6 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i32
  %l12 = alloca i32
  %l14 = alloca i32
  %l18 = alloca i32
  %l21 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t59 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 5)
  store i1 %t4, ptr %l4
  br label %bb1
bb1:
  %t5 = load i1, ptr %l4, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2erendering(ptr %v0, ptr %v1, ptr %t8)
  %t11 = extractvalue { i32, ptr } %t10, 1
  %t12 = extractvalue { i32, ptr } %t10, 0
  store i32 %t12, ptr %l9
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store ptr %t11, ptr %l8
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t15 = load ptr, ptr %l8, !tbaa !29
  store ptr %t15, ptr %l6, !tbaa !29
  br label %bb6
bb5:
  %t16 = load i32, ptr %l9, !tbaa !23
  %t17 = lshr i32 %t16, 16
  %t18 = and i32 %t16, 65535
  %t19 = icmp eq i32 %t17, 1
  %t20 = select i1 %t19, i32 1, i32 0
  %t21 = icmp eq i32 %t16, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t18
  %t24 = select i1 %t21, i32 0, i32 %t23
  %t26 = insertvalue { i32, ptr } zeroinitializer, i32 %t24, 0
  store { i32, ptr } %t26, ptr %rv
  br label %ret
bb6:
  %t27 = load ptr, ptr %l6, !tbaa !29
  %t28 = insertvalue { i32, ptr } zeroinitializer, ptr %t27, 1
  store { i32, ptr } %t28, ptr %rv
  br label %ret
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t29)
  store i32 %t31, ptr %l12
  br label %bb8
bb8:
  %t32 = load i32, ptr %l12, !tbaa !23
  store i32 %t32, ptr %l1, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t33)
  store i32 %t35, ptr %l14
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb10, label %ok.37, !prof !99
ok.37:
  br label %bb9
bb9:
  br label %bb11
bb10:
  %t38 = load i32, ptr %l14, !tbaa !23
  %t39 = lshr i32 %t38, 16
  %t40 = and i32 %t38, 65535
  %t41 = icmp eq i32 %t39, 1
  %t42 = select i1 %t41, i32 1, i32 0
  %t43 = icmp eq i32 %t38, 0
  %t44 = shl i32 %t42, 16
  %t45 = or i32 %t44, %t40
  %t46 = select i1 %t43, i32 0, i32 %t45
  %t48 = insertvalue { i32, ptr } zeroinitializer, i32 %t46, 0
  store { i32, ptr } %t48, ptr %rv
  br label %ret
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t49)
  br label %bb12
bb12:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t51)
  store i32 %t53, ptr %l18
  br label %bb13
bb13:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l1, !tbaa !23
  %t58 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t54, i32 %t55)
  store %"compiler/source:Span" %t58, ptr %l21
  br label %bb14
bb14:
  store { i64, [4 x i64] } zeroinitializer, ptr %t59
  %t60 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 0
  store i64 1, ptr %t60
  %t61 = load %"compiler/source:Span", ptr %l21
  %t62 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t61, 0
  %t64 = insertvalue { %"compiler/source:Span", i32 } %t62, i32 5, 1
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t64, ptr %t65
  %t66 = load { i64, [4 x i64] }, ptr %t59
  %t68 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t66, ptr %t68
  %t70 = insertvalue { i32, ptr } zeroinitializer, ptr %t68, 1
  store { i32, ptr } %t70, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
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
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 96)
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparam(ptr %v0, ptr %v1, ptr %a0, i1 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca i1
  %l30 = alloca i32
  %l31 = alloca i32
  %l33 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i1
  %l39 = alloca i32
  %l43 = alloca i64
  %l46 = alloca i64
  %l65 = alloca i32
  %l68 = alloca ptr
  %l70 = alloca ptr
  %l71 = alloca i32
  %l75 = alloca %"compiler/source:Span"
  %l80 = alloca i1
  %l83 = alloca i1
  %l84 = alloca i1
  %l87 = alloca i1
  %l88 = alloca i1
  %l91 = alloca i1
  %l93 = alloca ptr
  %l95 = alloca ptr
  %l96 = alloca i32
  %l101 = alloca i1
  %l102 = alloca ptr
  %l104 = alloca ptr
  %l105 = alloca i32
  %l112 = alloca %"compiler/source:Span"
  %l117 = alloca %"compiler/ast:Param"
  %rv = alloca { i32, ptr }
  %t154 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrsHere(ptr %v0, ptr %v1, ptr %t1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l18
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l17
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t8, ptr %l15, !tbaa !27
  br label %bb3
bb2:
  %t9 = load i32, ptr %l18, !tbaa !23
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
  %t20 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t20, ptr %l2, !tbaa !27
  %t21 = load i1, ptr %l1, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 56
  %t26 = load i1, ptr %t25, !tbaa !21
  store i1 %t26, ptr %l21, !tbaa !21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l21, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrRefused(ptr %v0, ptr %v1, ptr %t29, { i64, ptr } %t30)
  br label %bb9
bb8:
  br label %bb14
bb9:
  %t33 = icmp sge i64 0, 0
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = icmp sle i64 0, 1152921504606846975
  br i1 %t35, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_f0055d05bbcc9e33_2e682d4d4b5dbed7)
  unreachable
bb12:
  %t37 = mul i64 0, 8
  %t38 = insertvalue { i64, ptr } undef, i64 0, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t39, ptr %l2, !tbaa !27
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_f0055d05bbcc9e33_2e682d4d4b5dbed7)
  unreachable
bb14:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t41)
  store i32 %t43, ptr %l30
  br label %bb15
bb15:
  %t44 = load i32, ptr %l30, !tbaa !23
  store i32 %t44, ptr %l3, !tbaa !23
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t45)
  %t48 = extractvalue { i32, i32 } %t47, 1
  %t49 = extractvalue { i32, i32 } %t47, 0
  store i32 %t49, ptr %l34
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb17, label %ok.51, !prof !99
ok.51:
  store i32 %t48, ptr %l33
  br label %bb16
bb16:
  %t52 = load i32, ptr %l33, !tbaa !23
  store i32 %t52, ptr %l31, !tbaa !23
  br label %bb18
bb17:
  %t53 = load i32, ptr %l34, !tbaa !23
  %t54 = lshr i32 %t53, 16
  %t55 = and i32 %t53, 65535
  %t56 = icmp eq i32 %t54, 1
  %t57 = select i1 %t56, i32 1, i32 0
  %t58 = icmp eq i32 %t53, 0
  %t59 = shl i32 %t57, 16
  %t60 = or i32 %t59, %t55
  %t61 = select i1 %t58, i32 0, i32 %t60
  %t63 = insertvalue { i32, ptr } zeroinitializer, i32 %t61, 0
  store { i32, ptr } %t63, ptr %rv
  br label %ret
bb18:
  %t64 = load i32, ptr %l31, !tbaa !23
  store i32 %t64, ptr %l4, !tbaa !23
  store ptr null, ptr %l5, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %t65)
  store i1 %t67, ptr %l37
  br label %bb19
bb19:
  %t68 = load i1, ptr %l37, !tbaa !21
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t69)
  store i32 %t71, ptr %l39
  br label %bb22
bb21:
  %t72 = load i1, ptr %l1, !tbaa !21
  br i1 %t72, label %bb40, label %bb41
bb22:
  %t74 = load i32, ptr %l39, !tbaa !23
  store i32 %t74, ptr %l6, !tbaa !23
  store i64 0, ptr %l7, !tbaa !24
  store i64 3, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l8, !tbaa !24
  %t76 = load i64, ptr %l7, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb23, label %bb24
bb23:
  %t81 = load i64, ptr %l9, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb28
bb25:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t95 = sub i64 %t93, 1
  %t96 = load i64, ptr %l9, !tbaa !24
  %t99 = sdiv i64 %t95, %t96
  store i64 %t99, ptr %l46, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb27
bb27:
  %t101 = load i64, ptr %l46, !tbaa !24
  store i64 %t101, ptr %l43, !tbaa !24
  br label %bb28
bb28:
  %t102 = load i64, ptr %l43, !tbaa !24
  store i64 %t102, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb29
bb29:
  %t103 = load i64, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t111 = load i64, ptr %l7, !tbaa !24
  %t112 = load i64, ptr %l11, !tbaa !24
  %t113 = load i64, ptr %l9, !tbaa !24
  %t116 = mul i64 %t112, %t113
  %t119 = add i64 %t111, %t116
  store i64 %t119, ptr %l12, !tbaa !24
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t121)
  store i32 %t123, ptr %l65
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = add i64 %t124, 1
  store i64 %t126, ptr %l11, !tbaa !24
  br label %bb29
bb35:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t128)
  %t131 = extractvalue { i32, ptr } %t130, 1
  %t132 = extractvalue { i32, ptr } %t130, 0
  store i32 %t132, ptr %l71
  %t133 = icmp ne i32 %t132, 0
  br i1 %t133, label %bb37, label %ok.134, !prof !99
ok.134:
  store ptr %t131, ptr %l70
  br label %bb36
bb36:
  %t135 = load ptr, ptr %l70, !tbaa !29
  store ptr %t135, ptr %l68, !tbaa !29
  br label %bb38
bb37:
  %t136 = load i32, ptr %l71, !tbaa !23
  %t137 = lshr i32 %t136, 16
  %t138 = and i32 %t136, 65535
  %t139 = icmp eq i32 %t137, 1
  %t140 = select i1 %t139, i32 1, i32 0
  %t141 = icmp eq i32 %t136, 0
  %t142 = shl i32 %t140, 16
  %t143 = or i32 %t142, %t138
  %t144 = select i1 %t141, i32 0, i32 %t143
  %t146 = insertvalue { i32, ptr } zeroinitializer, i32 %t144, 0
  store { i32, ptr } %t146, ptr %rv
  br label %ret
bb38:
  %t147 = load ptr, ptr %l68, !tbaa !29
  store ptr %t147, ptr %l13, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i32, ptr %l6, !tbaa !23
  %t152 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t148, i32 %t149)
  store %"compiler/source:Span" %t152, ptr %l75
  br label %bb39
bb39:
  %t153 = load ptr, ptr %l13, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t154
  %t155 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 0
  store i64 7, ptr %t155
  %t156 = load %"compiler/source:Span", ptr %l75
  %t157 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t156, 0
  %t159 = insertvalue { %"compiler/source:Span", ptr } %t157, ptr %t153, 1
  %t160 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t159, ptr %t160
  %t161 = load { i64, [5 x i64] }, ptr %t154
  %t163 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t161, ptr %t163
  store ptr %t163, ptr %l5, !tbaa !29
  br label %bb58
bb40:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t168 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t165, i32 74)
  store i1 %t168, ptr %l83
  br label %bb42
bb41:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb51
bb42:
  %t169 = load i1, ptr %l83, !tbaa !21
  br i1 %t169, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb46
bb44:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t173 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t170, i32 108)
  store i1 %t173, ptr %l87
  br label %bb45
bb45:
  %t174 = load i1, ptr %l87, !tbaa !21
  store i1 %t174, ptr %l84, !tbaa !21
  br label %bb46
bb46:
  %t175 = load i1, ptr %l84, !tbaa !21
  br i1 %t175, label %bb47, label %bb48
bb47:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb50
bb48:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t179 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t176, i32 8)
  store i1 %t179, ptr %l91
  br label %bb49
bb49:
  %t180 = load i1, ptr %l91, !tbaa !21
  store i1 %t180, ptr %l88, !tbaa !21
  br label %bb50
bb50:
  %t181 = load i1, ptr %l88, !tbaa !21
  store i1 %t181, ptr %l80, !tbaa !21
  br label %bb51
bb51:
  %t182 = load i1, ptr %l80, !tbaa !21
  %t183 = xor i1 %t182, true
  br i1 %t183, label %bb52, label %bb53
bb52:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %t185)
  %t188 = extractvalue { i32, ptr } %t187, 1
  %t189 = extractvalue { i32, ptr } %t187, 0
  store i32 %t189, ptr %l96
  %t190 = icmp ne i32 %t189, 0
  br i1 %t190, label %bb55, label %ok.191, !prof !99
ok.191:
  store ptr %t188, ptr %l95
  br label %bb54
bb53:
  br label %bb57
bb54:
  %t192 = load ptr, ptr %l95, !tbaa !29
  store ptr %t192, ptr %l93, !tbaa !29
  br label %bb56
bb55:
  %t193 = load i32, ptr %l96, !tbaa !23
  %t194 = lshr i32 %t193, 16
  %t195 = and i32 %t193, 65535
  %t196 = icmp eq i32 %t194, 1
  %t197 = select i1 %t196, i32 1, i32 0
  %t198 = icmp eq i32 %t193, 0
  %t199 = shl i32 %t197, 16
  %t200 = or i32 %t199, %t195
  %t201 = select i1 %t198, i32 0, i32 %t200
  %t203 = insertvalue { i32, ptr } zeroinitializer, i32 %t201, 0
  store { i32, ptr } %t203, ptr %rv
  br label %ret
bb56:
  %t204 = load ptr, ptr %l93, !tbaa !29
  store ptr %t204, ptr %l5, !tbaa !29
  br label %bb57
bb57:
  br label %bb58
bb58:
  store ptr null, ptr %l14, !tbaa !29
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t209 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t206, i32 77)
  store i1 %t209, ptr %l101
  br label %bb59
bb59:
  %t210 = load i1, ptr %l101, !tbaa !21
  br i1 %t210, label %bb60, label %bb61
bb60:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t211)
  %t214 = extractvalue { i32, ptr } %t213, 1
  %t215 = extractvalue { i32, ptr } %t213, 0
  store i32 %t215, ptr %l105
  %t216 = icmp ne i32 %t215, 0
  br i1 %t216, label %bb63, label %ok.217, !prof !99
ok.217:
  store ptr %t214, ptr %l104
  br label %bb62
bb61:
  br label %bb65
bb62:
  %t218 = load ptr, ptr %l104, !tbaa !29
  store ptr %t218, ptr %l102, !tbaa !29
  br label %bb64
bb63:
  %t219 = load i32, ptr %l105, !tbaa !23
  %t220 = lshr i32 %t219, 16
  %t221 = and i32 %t219, 65535
  %t222 = icmp eq i32 %t220, 1
  %t223 = select i1 %t222, i32 1, i32 0
  %t224 = icmp eq i32 %t219, 0
  %t225 = shl i32 %t223, 16
  %t226 = or i32 %t225, %t221
  %t227 = select i1 %t224, i32 0, i32 %t226
  %t229 = insertvalue { i32, ptr } zeroinitializer, i32 %t227, 0
  store { i32, ptr } %t229, ptr %rv
  br label %ret
bb64:
  %t230 = load ptr, ptr %l102, !tbaa !29
  store ptr %t230, ptr %l14, !tbaa !29
  br label %bb65
bb65:
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %t232, { i64, ptr } %t233)
  br label %bb66
bb66:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i32, ptr %l3, !tbaa !23
  %t240 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t236, i32 %t237)
  store %"compiler/source:Span" %t240, ptr %l112
  br label %bb67
bb67:
  %t241 = load i32, ptr %l4, !tbaa !23
  %t242 = load ptr, ptr %l5, !tbaa !29
  %t243 = load ptr, ptr %l14, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t245 = load %"compiler/source:Span", ptr %l112
  %t250 = call %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, %"compiler/source:Span" %t245, i32 %t241, ptr %t242, ptr %t243, { i64, ptr } %t244)
  store %"compiler/ast:Param" %t250, ptr %l117
  br label %bb68
bb68:
  %t251 = load %"compiler/ast:Param", ptr %l117
  %t252 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store %"compiler/ast:Param" %t251, ptr %t252
  %t254 = insertvalue { i32, ptr } zeroinitializer, ptr %t252, 1
  store { i32, ptr } %t254, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epath(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca i32
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l18 = alloca i1
  %l21 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l32 = alloca { i64, ptr }
  %l35 = alloca %"compiler/source:Span"
  %l37 = alloca %"compiler/ast:Path"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i32, ptr %l5, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 36
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i64, ptr %l8, !tbaa !24
  store i64 %t10, ptr %l2, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 36
  store ptr %t13, ptr %l10, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ename(ptr %v0, ptr %t14)
  %t17 = extractvalue { i32, i32 } %t16, 1
  %t18 = extractvalue { i32, i32 } %t16, 0
  store i32 %t18, ptr %l14
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb4, label %ok.20, !prof !99
ok.20:
  store i32 %t17, ptr %l13
  br label %bb3
bb3:
  %t21 = load i32, ptr %l13, !tbaa !23
  store i32 %t21, ptr %l11, !tbaa !23
  br label %bb5
bb4:
  %t22 = load i32, ptr %l14, !tbaa !23
  %t23 = lshr i32 %t22, 16
  %t24 = and i32 %t22, 65535
  %t25 = icmp eq i32 %t23, 1
  %t26 = select i1 %t25, i32 1, i32 0
  %t27 = icmp eq i32 %t22, 0
  %t28 = shl i32 %t26, 16
  %t29 = or i32 %t28, %t24
  %t30 = select i1 %t27, i32 0, i32 %t29
  %t32 = insertvalue { i32, ptr } zeroinitializer, i32 %t30, 0
  store { i32, ptr } %t32, ptr %rv
  br label %ret
bb5:
  %t33 = load ptr, ptr %l10, !tbaa !29
  %t34 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t33, i32 %t34)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t38 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t35, i32 75)
  store i1 %t38, ptr %l18
  br label %bb8
bb8:
  %t39 = load i1, ptr %l18, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb9, label %bb10
bb9:
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t42)
  store i32 %t44, ptr %l21
  br label %bb12
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/parse:Parser", ptr %t45, i32 0, i32 36
  store ptr %t47, ptr %l23, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %t48)
  %t51 = extractvalue { i32, i32 } %t50, 1
  %t52 = extractvalue { i32, i32 } %t50, 0
  store i32 %t52, ptr %l27
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb14, label %ok.54, !prof !99
ok.54:
  store i32 %t51, ptr %l26
  br label %bb13
bb13:
  %t55 = load i32, ptr %l26, !tbaa !23
  store i32 %t55, ptr %l24, !tbaa !23
  br label %bb15
bb14:
  %t56 = load i32, ptr %l27, !tbaa !23
  %t57 = lshr i32 %t56, 16
  %t58 = and i32 %t56, 65535
  %t59 = icmp eq i32 %t57, 1
  %t60 = select i1 %t59, i32 1, i32 0
  %t61 = icmp eq i32 %t56, 0
  %t62 = shl i32 %t60, 16
  %t63 = or i32 %t62, %t58
  %t64 = select i1 %t61, i32 0, i32 %t63
  %t66 = insertvalue { i32, ptr } zeroinitializer, i32 %t64, 0
  store { i32, ptr } %t66, ptr %rv
  br label %ret
bb15:
  %t67 = load ptr, ptr %l23, !tbaa !29
  %t68 = load i32, ptr %l24, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t67, i32 %t68)
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb7
bb18:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/parse:Parser", ptr %t69, i32 0, i32 36
  %t72 = load i64, ptr %l2, !tbaa !24
  %t75 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v1, ptr %t71, i64 %t72)
  store { i64, ptr } %t75, ptr %l32
  br label %bb19
bb19:
  %t76 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t76, ptr %l3, !tbaa !27
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l1, !tbaa !23
  %t81 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t77, i32 %t78)
  store %"compiler/source:Span" %t81, ptr %l35
  br label %bb20
bb20:
  %t82 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t83 = load %"compiler/source:Span", ptr %l35
  %t85 = call %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v1, ptr %v1, %"compiler/source:Span" %t83, { i64, ptr } %t82)
  store %"compiler/ast:Path" %t85, ptr %l37
  br label %bb21
bb21:
  %t86 = load %"compiler/ast:Path", ptr %l37
  %t87 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 24, i64 8)
  store %"compiler/ast:Path" %t86, ptr %t87
  %t89 = insertvalue { i32, ptr } zeroinitializer, ptr %t87, 1
  store { i32, ptr } %t89, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l13 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 7
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 113}
  %t6 = trunc i64 0 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 7
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 113}
  store i32 %t14, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/parse:Parser", ptr %t16, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t21 = getelementptr %"compiler/scan:Tokens", ptr %t19, i32 0, i32 0
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l9, !tbaa !27
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 6
  %t27 = load i64, ptr %t26, !tbaa !24
  %t30 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %t23, i64 %t27)
  store i64 %t30, ptr %l13
  br label %bb4
bb4:
  %t31 = load i64, ptr %l13, !tbaa !24
  %t32 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr %"compiler/token:Token", ptr %t33, i64 %t31
  %t35 = getelementptr %"compiler/token:Token", ptr %t34, i32 0, i32 0
  %t36 = load i32, ptr %t35, !range !{i32 0, i32 113}
  store i32 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l5 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca i32
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = lshr i32 %t6, 16
  %t8 = and i32 %t6, 65535
  %t9 = icmp eq i32 %t7, 1
  %t10 = select i1 %t9, i32 1, i32 0
  %t11 = icmp eq i32 %t6, 0
  %t12 = shl i32 %t10, 16
  %t13 = or i32 %t12, %t8
  %t14 = select i1 %t11, i32 0, i32 %t13
  %t16 = insertvalue { i32, ptr } zeroinitializer, i32 %t14, 0
  store { i32, ptr } %t16, ptr %rv
  br label %ret
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprimary(ptr %v0, ptr %v1, ptr %t17)
  %t20 = extractvalue { i32, ptr } %t19, 1
  %t21 = extractvalue { i32, ptr } %t19, 0
  store i32 %t21, ptr %l8
  %t22 = icmp ne i32 %t21, 0
  br i1 %t22, label %bb5, label %ok.23, !prof !99
ok.23:
  store ptr %t20, ptr %l7
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l7, !tbaa !29
  store ptr %t24, ptr %l5, !tbaa !29
  br label %bb7
bb5:
  %t25 = load i32, ptr %l8, !tbaa !23
  %t26 = lshr i32 %t25, 16
  %t27 = and i32 %t25, 65535
  %t28 = icmp eq i32 %t26, 1
  %t29 = select i1 %t28, i32 1, i32 0
  %t30 = icmp eq i32 %t25, 0
  %t31 = shl i32 %t29, 16
  %t32 = or i32 %t31, %t27
  %t33 = select i1 %t30, i32 0, i32 %t32
  store i32 %t33, ptr %l9, !tbaa !23
  %t34 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t34)
  br label %bb6
bb6:
  %t36 = load i32, ptr %l9, !tbaa !23
  %t37 = insertvalue { i32, ptr } zeroinitializer, i32 %t36, 0
  store { i32, ptr } %t37, ptr %rv
  br label %ret
bb7:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t43 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfixFrom(ptr %v0, ptr %v1, ptr %v1, ptr %t39, ptr %t38)
  %t44 = extractvalue { i32, ptr } %t43, 1
  %t45 = extractvalue { i32, ptr } %t43, 0
  store i32 %t45, ptr %l15
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb9, label %ok.47, !prof !99
ok.47:
  store ptr %t44, ptr %l14
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l14, !tbaa !29
  store ptr %t48, ptr %l11, !tbaa !29
  br label %bb11
bb9:
  %t49 = load i32, ptr %l15, !tbaa !23
  %t50 = lshr i32 %t49, 16
  %t51 = and i32 %t49, 65535
  %t52 = icmp eq i32 %t50, 1
  %t53 = select i1 %t52, i32 1, i32 0
  %t54 = icmp eq i32 %t49, 0
  %t55 = shl i32 %t53, 16
  %t56 = or i32 %t55, %t51
  %t57 = select i1 %t54, i32 0, i32 %t56
  store i32 %t57, ptr %l16, !tbaa !23
  %t58 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t58)
  br label %bb10
bb10:
  %t60 = load i32, ptr %l16, !tbaa !23
  %t61 = insertvalue { i32, ptr } zeroinitializer, i32 %t60, 0
  store { i32, ptr } %t61, ptr %rv
  br label %ret
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t62)
  br label %bb12
bb12:
  %t64 = load ptr, ptr %l11, !tbaa !29
  %t65 = insertvalue { i32, ptr } zeroinitializer, ptr %t64, 1
  store { i32, ptr } %t65, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfixFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l11 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l21 = alloca ptr
  %l23 = alloca ptr
  %l25 = alloca ptr
  %l26 = alloca i32
  %l31 = alloca i1
  %l35 = alloca i32
  %l36 = alloca i32
  %l38 = alloca i32
  %l39 = alloca i32
  %l43 = alloca %"compiler/source:Span"
  %l50 = alloca i1
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l58 = alloca i32
  %l62 = alloca %"compiler/source:Span"
  %l67 = alloca ptr
  %l71 = alloca ptr
  %l72 = alloca i32
  %l76 = alloca i1
  %l77 = alloca i1
  %l79 = alloca i1
  %l80 = alloca i1
  %l83 = alloca ptr
  %l85 = alloca ptr
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca { i64, ptr }
  %l89 = alloca i1
  %l90 = alloca { i64, ptr }
  %l92 = alloca { i64, ptr }
  %l93 = alloca i32
  %l97 = alloca %"compiler/source:Span"
  %l103 = alloca i1
  %l104 = alloca i1
  %l106 = alloca i1
  %l108 = alloca i1
  %l109 = alloca ptr
  %l111 = alloca i32
  %l113 = alloca %"compiler/token:Token"
  %l114 = alloca i32
  %l118 = alloca { i64, ptr }
  %l119 = alloca %"compiler/diagmsg:Msg"
  %l120 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l123 = alloca i32
  %l127 = alloca %"compiler/source:Span"
  %l134 = alloca { i64, ptr }
  %l136 = alloca { i64, ptr }
  %l137 = alloca i32
  %l141 = alloca %"compiler/source:Span"
  %l153 = alloca i32
  %l155 = alloca i32
  %l158 = alloca %"compiler/source:Span"
  %l166 = alloca i32
  %l167 = alloca ptr
  %l169 = alloca ptr
  %l170 = alloca i32
  %l174 = alloca %"compiler/source:Span"
  %l186 = alloca ptr
  %l188 = alloca i1
  %l190 = alloca i1
  %l192 = alloca i32
  %l197 = alloca ptr
  %l199 = alloca ptr
  %l201 = alloca ptr
  %l202 = alloca i32
  %l204 = alloca ptr
  %l205 = alloca ptr
  %l206 = alloca i32
  %l210 = alloca ptr
  %l211 = alloca ptr
  %l212 = alloca i32
  %rv = alloca { i32, ptr }
  %t89 = alloca { i64, [4 x i64] }, align 8
  %t145 = alloca { i64, [4 x i64] }, align 8
  %t239 = alloca { i64, [4 x i64] }, align 8
  %t312 = alloca { i64, [4 x i64] }, align 8
  %t357 = alloca { i64, [4 x i64] }, align 8
  %t399 = alloca { i64, [4 x i64] }, align 8
  %t447 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t5 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t3)
  store %"compiler/source:Span" %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = getelementptr %"compiler/source:Span", ptr %l15, i32 0, i32 0
  %t7 = load i32, ptr %t6, !tbaa !23
  store i32 %t7, ptr %l3, !tbaa !23
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t9)
  store i32 %t11, ptr %l18
  br label %bb3
bb3:
  %t12 = load i32, ptr %l18, !range !{i32 0, i32 113}
  store i32 %t12, ptr %l4
  %t13 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t15 = trunc i64 109 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb10
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  store ptr %t19, ptr %l23, !tbaa !29
  %t20 = load ptr, ptr %l23, !tbaa !29
  %t21 = call ptr @__olang_scope_of(ptr %t20, ptr null)
  %t22 = ptrtoint ptr %t21 to i64
  %t24 = inttoptr i64 %t22 to ptr
  %t26 = load ptr, ptr %l23, !tbaa !29
  %t27 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eindex(ptr %v0, ptr %t24, ptr %v2, ptr %t18, ptr %t26)
  %t28 = extractvalue { i32, ptr } %t27, 1
  %t29 = extractvalue { i32, ptr } %t27, 0
  store i32 %t29, ptr %l26
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb8, label %ok.31, !prof !99
ok.31:
  store ptr %t28, ptr %l25
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l25, !tbaa !29
  store ptr %t32, ptr %l21, !tbaa !29
  br label %bb9
bb8:
  %t33 = load i32, ptr %l26, !tbaa !23
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
bb9:
  %t44 = load ptr, ptr %l21, !tbaa !29
  store ptr %t44, ptr %l2, !tbaa !29
  br label %bb132
bb10:
  %t45 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t47 = trunc i64 75 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb77
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ememberNext(ptr %v0, ptr %t50)
  store i1 %t52, ptr %l31
  br label %bb14
bb14:
  %t53 = load i1, ptr %l31, !tbaa !21
  %t54 = xor i1 %t53, true
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = insertvalue { i32, ptr } zeroinitializer, ptr %t56, 1
  store { i32, ptr } %t58, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t59)
  store i32 %t61, ptr %l35
  br label %bb18
bb18:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %t62)
  %t65 = extractvalue { i32, i32 } %t64, 1
  %t66 = extractvalue { i32, i32 } %t64, 0
  store i32 %t66, ptr %l39
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb20, label %ok.68, !prof !99
ok.68:
  store i32 %t65, ptr %l38
  br label %bb19
bb19:
  %t69 = load i32, ptr %l38, !tbaa !23
  store i32 %t69, ptr %l36, !tbaa !23
  br label %bb21
bb20:
  %t70 = load i32, ptr %l39, !tbaa !23
  %t71 = lshr i32 %t70, 16
  %t72 = and i32 %t70, 65535
  %t73 = icmp eq i32 %t71, 1
  %t74 = select i1 %t73, i32 1, i32 0
  %t75 = icmp eq i32 %t70, 0
  %t76 = shl i32 %t74, 16
  %t77 = or i32 %t76, %t72
  %t78 = select i1 %t75, i32 0, i32 %t77
  %t80 = insertvalue { i32, ptr } zeroinitializer, i32 %t78, 0
  store { i32, ptr } %t80, ptr %rv
  br label %ret
bb21:
  %t81 = load i32, ptr %l36, !tbaa !23
  store i32 %t81, ptr %l5, !tbaa !23
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l3, !tbaa !23
  %t86 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t82, i32 %t83)
  store %"compiler/source:Span" %t86, ptr %l43
  br label %bb22
bb22:
  %t87 = load ptr, ptr %l2, !tbaa !29
  %t88 = load i32, ptr %l5, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t89
  %t90 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 0
  store i64 12, ptr %t90
  %t91 = load %"compiler/source:Span", ptr %l43
  %t92 = insertvalue { %"compiler/source:Span", ptr, i32 } undef, %"compiler/source:Span" %t91, 0
  %t94 = insertvalue { %"compiler/source:Span", ptr, i32 } %t92, ptr %t87, 1
  %t96 = insertvalue { %"compiler/source:Span", ptr, i32 } %t94, i32 %t88, 2
  %t97 = getelementptr { i64, [4 x i64] }, ptr %t89, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i32 } %t96, ptr %t97
  %t98 = load { i64, [4 x i64] }, ptr %t89
  %t100 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t98, ptr %t100
  store ptr %t100, ptr %l2, !tbaa !29
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t105 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t102, i32 96)
  store i1 %t105, ptr %l50
  br label %bb23
bb23:
  %t106 = load i1, ptr %l50, !tbaa !21
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load ptr, ptr %l2, !tbaa !29
  %t111 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisQualifiedType(ptr %v0, ptr %v2, ptr %t107, ptr %t108)
  store i1 %t111, ptr %l54
  br label %bb26
bb25:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb27
bb26:
  %t112 = load i1, ptr %l54, !tbaa !21
  store i1 %t112, ptr %l51, !tbaa !21
  br label %bb27
bb27:
  %t113 = load i1, ptr %l51, !tbaa !21
  br i1 %t113, label %bb28, label %bb29
bb28:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v2, ptr %t114)
  %t117 = extractvalue { i32, { i64, ptr } } %t116, 1
  %t118 = extractvalue { i32, { i64, ptr } } %t116, 0
  store i32 %t118, ptr %l58
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb31, label %ok.120, !prof !99
ok.120:
  store { i64, ptr } %t117, ptr %l57
  br label %bb30
bb29:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t124 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t121, i32 96)
  store i1 %t124, ptr %l76
  br label %bb37
bb30:
  %t125 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t125, ptr %l55, !tbaa !27
  br label %bb32
bb31:
  %t126 = load i32, ptr %l58, !tbaa !23
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
bb32:
  %t137 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t137, ptr %l6, !tbaa !27
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i32, ptr %l3, !tbaa !23
  %t142 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t138, i32 %t139)
  store %"compiler/source:Span" %t142, ptr %l62
  br label %bb33
bb33:
  %t143 = load ptr, ptr %l2, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t145
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t145, i32 0, i32 0
  store i64 11, ptr %t146
  %t147 = load %"compiler/source:Span", ptr %l62
  %t148 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t147, 0
  %t150 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t148, ptr %t143, 1
  %t152 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t150, { i64, ptr } %t144, 2
  %t153 = getelementptr { i64, [4 x i64] }, ptr %t145, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t152, ptr %t153
  %t154 = load { i64, [4 x i64] }, ptr %t145
  %t156 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t154, ptr %t156
  store ptr %t156, ptr %l2, !tbaa !29
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load i32, ptr %l3, !tbaa !23
  %t160 = load ptr, ptr %l2, !tbaa !29
  %t164 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eliteralAfterType(ptr %v0, ptr %v2, ptr %v2, ptr %t158, i32 %t159, ptr %t160)
  %t165 = extractvalue { i32, ptr } %t164, 1
  %t166 = extractvalue { i32, ptr } %t164, 0
  store i32 %t166, ptr %l72
  %t167 = icmp ne i32 %t166, 0
  br i1 %t167, label %bb35, label %ok.168, !prof !99
ok.168:
  store ptr %t165, ptr %l71
  br label %bb34
bb34:
  %t169 = load ptr, ptr %l71, !tbaa !29
  store ptr %t169, ptr %l67, !tbaa !29
  br label %bb36
bb35:
  %t170 = load i32, ptr %l72, !tbaa !23
  %t171 = lshr i32 %t170, 16
  %t172 = and i32 %t170, 65535
  %t173 = icmp eq i32 %t171, 1
  %t174 = select i1 %t173, i32 1, i32 0
  %t175 = icmp eq i32 %t170, 0
  %t176 = shl i32 %t174, 16
  %t177 = or i32 %t176, %t172
  %t178 = select i1 %t175, i32 0, i32 %t177
  %t180 = insertvalue { i32, ptr } zeroinitializer, i32 %t178, 0
  store { i32, ptr } %t180, ptr %rv
  br label %ret
bb36:
  %t181 = load ptr, ptr %l67, !tbaa !29
  store ptr %t181, ptr %l2, !tbaa !29
  br label %bb76
bb37:
  %t182 = load i1, ptr %l76, !tbaa !21
  br i1 %t182, label %bb38, label %bb39
bb38:
  %t183 = load ptr, ptr %l2, !tbaa !29
  %t185 = call i1 @compiler_2fparse_2eisPath(ptr %v2, ptr %t183)
  store i1 %t185, ptr %l79
  br label %bb40
bb39:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb41
bb40:
  %t186 = load i1, ptr %l79, !tbaa !21
  store i1 %t186, ptr %l77, !tbaa !21
  br label %bb41
bb41:
  %t187 = load i1, ptr %l77, !tbaa !21
  br i1 %t187, label %bb42, label %bb43
bb42:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/parse:Parser", ptr %t188, i32 0, i32 3
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/parse:Oracle", ptr %t191, i32 0, i32 3
  store ptr %t193, ptr %l83, !tbaa !29
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/parse:Parser", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  store ptr %t197, ptr %l85, !tbaa !29
  %t198 = load ptr, ptr %l2, !tbaa !29
  %t200 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v2, ptr %t198)
  store %"compiler/source:Span" %t200, ptr %l87
  br label %bb44
bb43:
  store i1 false, ptr %l80, !tbaa !21
  br label %bb47
bb44:
  %t201 = load ptr, ptr %l85, !tbaa !29
  %t202 = load %"compiler/source:Span", ptr %l87
  %t203 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v0, ptr %t201, %"compiler/source:Span" %t202)
  store { i64, ptr } %t203, ptr %l88
  br label %bb45
bb45:
  %t204 = load ptr, ptr %l83, !tbaa !29
  %t205 = load { i64, ptr }, ptr %l88, !tbaa !27
  %t206 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v0, ptr %t204, { i64, ptr } %t205)
  store i1 %t206, ptr %l89
  br label %bb46
bb46:
  %t207 = load i1, ptr %l89, !tbaa !21
  store i1 %t207, ptr %l80, !tbaa !21
  br label %bb47
bb47:
  %t208 = load i1, ptr %l80, !tbaa !21
  br i1 %t208, label %bb48, label %bb49
bb48:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v2, ptr %t209)
  %t212 = extractvalue { i32, { i64, ptr } } %t211, 1
  %t213 = extractvalue { i32, { i64, ptr } } %t211, 0
  store i32 %t213, ptr %l93
  %t214 = icmp ne i32 %t213, 0
  br i1 %t214, label %bb51, label %ok.215, !prof !99
ok.215:
  store { i64, ptr } %t212, ptr %l92
  br label %bb50
bb49:
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %t216, i64 0)
  store i1 %t218, ptr %l103
  br label %bb54
bb50:
  %t219 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t219, ptr %l90, !tbaa !27
  br label %bb52
bb51:
  %t220 = load i32, ptr %l93, !tbaa !23
  %t221 = lshr i32 %t220, 16
  %t222 = and i32 %t220, 65535
  %t223 = icmp eq i32 %t221, 1
  %t224 = select i1 %t223, i32 1, i32 0
  %t225 = icmp eq i32 %t220, 0
  %t226 = shl i32 %t224, 16
  %t227 = or i32 %t226, %t222
  %t228 = select i1 %t225, i32 0, i32 %t227
  %t230 = insertvalue { i32, ptr } zeroinitializer, i32 %t228, 0
  store { i32, ptr } %t230, ptr %rv
  br label %ret
bb52:
  %t231 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t231, ptr %l7, !tbaa !27
  %t232 = load ptr, ptr %l0, !tbaa !29
  %t233 = load i32, ptr %l3, !tbaa !23
  %t236 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t232, i32 %t233)
  store %"compiler/source:Span" %t236, ptr %l97
  br label %bb53
bb53:
  %t237 = load ptr, ptr %l2, !tbaa !29
  %t238 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t239
  %t240 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 0
  store i64 11, ptr %t240
  %t241 = load %"compiler/source:Span", ptr %l97
  %t242 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t241, 0
  %t244 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t242, ptr %t237, 1
  %t246 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t244, { i64, ptr } %t238, 2
  %t247 = getelementptr { i64, [4 x i64] }, ptr %t239, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t246, ptr %t247
  %t248 = load { i64, [4 x i64] }, ptr %t239
  %t250 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t248, ptr %t250
  store ptr %t250, ptr %l2, !tbaa !29
  br label %bb75
bb54:
  %t252 = load i1, ptr %l103, !tbaa !21
  br i1 %t252, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l104, !tbaa !21
  br label %bb58
bb56:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2espacedTypeArgs(ptr %v0, ptr %t253, i64 0)
  store i1 %t255, ptr %l106
  br label %bb57
bb57:
  %t256 = load i1, ptr %l106, !tbaa !21
  store i1 %t256, ptr %l104, !tbaa !21
  br label %bb58
bb58:
  %t257 = load i1, ptr %l104, !tbaa !21
  br i1 %t257, label %bb59, label %bb60
bb59:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2espacedTypeArgs(ptr %v0, ptr %t258, i64 0)
  store i1 %t260, ptr %l108
  br label %bb61
bb60:
  br label %bb74
bb61:
  %t261 = load i1, ptr %l108, !tbaa !21
  br i1 %t261, label %bb62, label %bb63
bb62:
  %t262 = load ptr, ptr %l0, !tbaa !29
  store ptr %t262, ptr %l109, !tbaa !29
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t263)
  store i32 %t265, ptr %l111
  br label %bb64
bb63:
  br label %bb69
bb64:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t266, i64 0)
  store %"compiler/token:Token" %t268, ptr %l113
  br label %bb65
bb65:
  %t269 = getelementptr %"compiler/token:Token", ptr %l113, i32 0, i32 3
  %t270 = load i32, ptr %t269, !tbaa !23
  store i32 %t270, ptr %l114, !tbaa !23
  %t271 = load ptr, ptr %l0, !tbaa !29
  %t273 = getelementptr %"compiler/parse:Parser", ptr %t271, i32 0, i32 2
  %t274 = load ptr, ptr %t273, !tbaa !29
  %t275 = load i32, ptr %l5, !tbaa !23
  %t278 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t274, i32 %t275)
  store { i64, ptr } %t278, ptr %l118
  br label %bb66
bb66:
  %t279 = load { i64, ptr }, ptr %l118, !tbaa !27
  %t280 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsSpaced(ptr %v0, ptr %v0, { i64, ptr } %t279)
  store %"compiler/diagmsg:Msg" %t280, ptr %l119
  br label %bb67
bb67:
  %t281 = load ptr, ptr %l109, !tbaa !29
  %t282 = load i32, ptr %l111, !tbaa !23
  %t283 = load i32, ptr %l114, !tbaa !23
  %t284 = load %"compiler/diagmsg:Msg", ptr %l119
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t281, i32 %t282, i32 %t283, %"compiler/diagmsg:Msg" %t284)
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t287 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v2, ptr %t285)
  %t288 = extractvalue { i32, { i64, ptr } } %t287, 1
  %t289 = extractvalue { i32, { i64, ptr } } %t287, 0
  store i32 %t289, ptr %l123
  %t290 = icmp ne i32 %t289, 0
  br i1 %t290, label %bb71, label %ok.291, !prof !99
ok.291:
  store { i64, ptr } %t288, ptr %l122
  br label %bb70
bb70:
  %t292 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t292, ptr %l120, !tbaa !27
  br label %bb72
bb71:
  %t293 = load i32, ptr %l123, !tbaa !23
  %t294 = lshr i32 %t293, 16
  %t295 = and i32 %t293, 65535
  %t296 = icmp eq i32 %t294, 1
  %t297 = select i1 %t296, i32 1, i32 0
  %t298 = icmp eq i32 %t293, 0
  %t299 = shl i32 %t297, 16
  %t300 = or i32 %t299, %t295
  %t301 = select i1 %t298, i32 0, i32 %t300
  %t303 = insertvalue { i32, ptr } zeroinitializer, i32 %t301, 0
  store { i32, ptr } %t303, ptr %rv
  br label %ret
bb72:
  %t304 = load { i64, ptr }, ptr %l120, !tbaa !27
  store { i64, ptr } %t304, ptr %l8, !tbaa !27
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load i32, ptr %l3, !tbaa !23
  %t309 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t305, i32 %t306)
  store %"compiler/source:Span" %t309, ptr %l127
  br label %bb73
bb73:
  %t310 = load ptr, ptr %l2, !tbaa !29
  %t311 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t312
  %t313 = getelementptr { i64, [4 x i64] }, ptr %t312, i32 0, i32 0
  store i64 11, ptr %t313
  %t314 = load %"compiler/source:Span", ptr %l127
  %t315 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t314, 0
  %t317 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t315, ptr %t310, 1
  %t319 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t317, { i64, ptr } %t311, 2
  %t320 = getelementptr { i64, [4 x i64] }, ptr %t312, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t319, ptr %t320
  %t321 = load { i64, [4 x i64] }, ptr %t312
  %t323 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t321, ptr %t323
  store ptr %t323, ptr %l2, !tbaa !29
  br label %bb74
bb74:
  br label %bb75
bb75:
  br label %bb76
bb76:
  br label %bb132
bb77:
  %t325 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t327 = trunc i64 107 to i32
  %t328 = icmp eq i32 %t325, %t327
  br i1 %t328, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb85
bb80:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eargs(ptr %v0, ptr %v2, ptr %t330)
  %t333 = extractvalue { i32, { i64, ptr } } %t332, 1
  %t334 = extractvalue { i32, { i64, ptr } } %t332, 0
  store i32 %t334, ptr %l137
  %t335 = icmp ne i32 %t334, 0
  br i1 %t335, label %bb82, label %ok.336, !prof !99
ok.336:
  store { i64, ptr } %t333, ptr %l136
  br label %bb81
bb81:
  %t337 = load { i64, ptr }, ptr %l136, !tbaa !27
  store { i64, ptr } %t337, ptr %l134, !tbaa !27
  br label %bb83
bb82:
  %t338 = load i32, ptr %l137, !tbaa !23
  %t339 = lshr i32 %t338, 16
  %t340 = and i32 %t338, 65535
  %t341 = icmp eq i32 %t339, 1
  %t342 = select i1 %t341, i32 1, i32 0
  %t343 = icmp eq i32 %t338, 0
  %t344 = shl i32 %t342, 16
  %t345 = or i32 %t344, %t340
  %t346 = select i1 %t343, i32 0, i32 %t345
  %t348 = insertvalue { i32, ptr } zeroinitializer, i32 %t346, 0
  store { i32, ptr } %t348, ptr %rv
  br label %ret
bb83:
  %t349 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t349, ptr %l9, !tbaa !27
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load i32, ptr %l3, !tbaa !23
  %t354 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t350, i32 %t351)
  store %"compiler/source:Span" %t354, ptr %l141
  br label %bb84
bb84:
  %t355 = load ptr, ptr %l2, !tbaa !29
  %t356 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, [4 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 0
  store i64 10, ptr %t358
  %t359 = load %"compiler/source:Span", ptr %l141
  %t360 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } undef, %"compiler/source:Span" %t359, 0
  %t362 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t360, ptr %t355, 1
  %t364 = insertvalue { %"compiler/source:Span", ptr, { i64, ptr } } %t362, { i64, ptr } %t356, 2
  %t365 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 1
  store { %"compiler/source:Span", ptr, { i64, ptr } } %t364, ptr %t365
  %t366 = load { i64, [4 x i64] }, ptr %t357
  %t368 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t366, ptr %t368
  store ptr %t368, ptr %l2, !tbaa !29
  br label %bb132
bb85:
  %t370 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t372 = trunc i64 91 to i32
  %t373 = icmp eq i32 %t370, %t372
  br i1 %t373, label %bb86, label %bb87
bb86:
  br label %bb92
bb87:
  %t375 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t377 = trunc i64 92 to i32
  %t378 = icmp eq i32 %t375, %t377
  br i1 %t378, label %bb88, label %bb89
bb88:
  br label %bb92
bb89:
  %t380 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t382 = trunc i64 95 to i32
  %t383 = icmp eq i32 %t380, %t382
  br i1 %t383, label %bb90, label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb96
bb92:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t385)
  store i32 %t387, ptr %l153
  br label %bb93
bb93:
  %t388 = load i32, ptr %l153, !range !{i32 0, i32 113}
  store i32 %t388, ptr %l10
  %t389 = load ptr, ptr %l0, !tbaa !29
  %t391 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t389)
  store i32 %t391, ptr %l155
  br label %bb94
bb94:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load i32, ptr %l3, !tbaa !23
  %t396 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t392, i32 %t393)
  store %"compiler/source:Span" %t396, ptr %l158
  br label %bb95
bb95:
  %t397 = load i32, ptr %l10, !range !{i32 0, i32 113}
  %t398 = load ptr, ptr %l2, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t399
  %t400 = getelementptr { i64, [4 x i64] }, ptr %t399, i32 0, i32 0
  store i64 4, ptr %t400
  %t401 = load %"compiler/source:Span", ptr %l158
  %t402 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t401, 0
  %t404 = insertvalue { %"compiler/source:Span", i32, ptr } %t402, i32 %t397, 1
  %t406 = insertvalue { %"compiler/source:Span", i32, ptr } %t404, ptr %t398, 2
  %t407 = getelementptr { i64, [4 x i64] }, ptr %t399, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t406, ptr %t407
  %t408 = load { i64, [4 x i64] }, ptr %t399
  %t410 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t408, ptr %t410
  store ptr %t410, ptr %l2, !tbaa !29
  br label %bb132
bb96:
  %t412 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t414 = trunc i64 28 to i32
  %t415 = icmp eq i32 %t412, %t414
  br i1 %t415, label %bb97, label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb105
bb99:
  %t417 = load ptr, ptr %l0, !tbaa !29
  %t419 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t417)
  store i32 %t419, ptr %l166
  br label %bb100
bb100:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v2, ptr %t420)
  %t423 = extractvalue { i32, ptr } %t422, 1
  %t424 = extractvalue { i32, ptr } %t422, 0
  store i32 %t424, ptr %l170
  %t425 = icmp ne i32 %t424, 0
  br i1 %t425, label %bb102, label %ok.426, !prof !99
ok.426:
  store ptr %t423, ptr %l169
  br label %bb101
bb101:
  %t427 = load ptr, ptr %l169, !tbaa !29
  store ptr %t427, ptr %l167, !tbaa !29
  br label %bb103
bb102:
  %t428 = load i32, ptr %l170, !tbaa !23
  %t429 = lshr i32 %t428, 16
  %t430 = and i32 %t428, 65535
  %t431 = icmp eq i32 %t429, 1
  %t432 = select i1 %t431, i32 1, i32 0
  %t433 = icmp eq i32 %t428, 0
  %t434 = shl i32 %t432, 16
  %t435 = or i32 %t434, %t430
  %t436 = select i1 %t433, i32 0, i32 %t435
  %t438 = insertvalue { i32, ptr } zeroinitializer, i32 %t436, 0
  store { i32, ptr } %t438, ptr %rv
  br label %ret
bb103:
  %t439 = load ptr, ptr %l167, !tbaa !29
  store ptr %t439, ptr %l11, !tbaa !29
  %t440 = load ptr, ptr %l0, !tbaa !29
  %t441 = load i32, ptr %l3, !tbaa !23
  %t444 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t440, i32 %t441)
  store %"compiler/source:Span" %t444, ptr %l174
  br label %bb104
bb104:
  %t445 = load ptr, ptr %l2, !tbaa !29
  %t446 = load ptr, ptr %l11, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t447
  %t448 = getelementptr { i64, [4 x i64] }, ptr %t447, i32 0, i32 0
  store i64 9, ptr %t448
  %t449 = load %"compiler/source:Span", ptr %l174
  %t450 = insertvalue { %"compiler/source:Span", ptr, ptr } undef, %"compiler/source:Span" %t449, 0
  %t452 = insertvalue { %"compiler/source:Span", ptr, ptr } %t450, ptr %t445, 1
  %t454 = insertvalue { %"compiler/source:Span", ptr, ptr } %t452, ptr %t446, 2
  %t455 = getelementptr { i64, [4 x i64] }, ptr %t447, i32 0, i32 1
  store { %"compiler/source:Span", ptr, ptr } %t454, ptr %t455
  %t456 = load { i64, [4 x i64] }, ptr %t447
  %t458 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t456, ptr %t458
  store ptr %t458, ptr %l2, !tbaa !29
  br label %bb132
bb105:
  %t460 = load i32, ptr %l4, !range !{i32 0, i32 113}
  %t462 = trunc i64 100 to i32
  %t463 = icmp eq i32 %t460, %t462
  br i1 %t463, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb127
bb108:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/parse:Parser", ptr %t465, i32 0, i32 7
  %t468 = load i32, ptr %t467, !range !{i32 0, i32 113}
  %t470 = trunc i64 0 to i32
  %t471 = icmp eq i32 %t468, %t470
  %t473 = xor i1 %t471, true
  br i1 %t473, label %bb109, label %bb110
bb109:
  %t475 = load ptr, ptr %l2, !tbaa !29
  %t477 = insertvalue { i32, ptr } zeroinitializer, ptr %t475, 1
  store { i32, ptr } %t477, ptr %rv
  br label %ret
bb110:
  br label %bb111
bb111:
  %t478 = load ptr, ptr %l2, !tbaa !29
  store ptr %t478, ptr %l186, !tbaa !29
  %t479 = load ptr, ptr %l186, !tbaa !29
  %t480 = call ptr @__olang_scope_of(ptr %t479, ptr null)
  %t481 = ptrtoint ptr %t480 to i64
  %t483 = inttoptr i64 %t481 to ptr
  %t484 = load ptr, ptr %l186, !tbaa !29
  %t485 = call i1 @compiler_2fparse_2eisPath(ptr %t483, ptr %t484)
  store i1 %t485, ptr %l188
  br label %bb112
bb112:
  %t486 = load i1, ptr %l188, !tbaa !21
  %t487 = xor i1 %t486, true
  br i1 %t487, label %bb113, label %bb114
bb113:
  store i1 true, ptr %l190, !tbaa !21
  br label %bb116
bb114:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elook(ptr %v0, ptr %t489, i64 1)
  store i32 %t491, ptr %l192
  br label %bb115
bb115:
  %t492 = load i32, ptr %l192, !range !{i32 0, i32 113}
  %t494 = trunc i64 109 to i32
  %t495 = icmp eq i32 %t492, %t494
  %t497 = xor i1 %t495, true
  store i1 %t497, ptr %l190, !tbaa !21
  br label %bb116
bb116:
  %t499 = load i1, ptr %l190, !tbaa !21
  br i1 %t499, label %bb117, label %bb118
bb117:
  %t500 = load ptr, ptr %l2, !tbaa !29
  %t502 = insertvalue { i32, ptr } zeroinitializer, ptr %t500, 1
  store { i32, ptr } %t502, ptr %rv
  br label %ret
bb118:
  br label %bb119
bb119:
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load ptr, ptr %l2, !tbaa !29
  store ptr %t504, ptr %l199, !tbaa !29
  %t505 = load ptr, ptr %l199, !tbaa !29
  %t506 = call ptr @__olang_scope_of(ptr %t505, ptr null)
  %t507 = ptrtoint ptr %t506 to i64
  %t509 = inttoptr i64 %t507 to ptr
  %t511 = load ptr, ptr %l199, !tbaa !29
  %t512 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexprAsType(ptr %v0, ptr %t509, ptr %v2, ptr %t503, ptr %t511)
  %t513 = extractvalue { i32, ptr } %t512, 1
  %t514 = extractvalue { i32, ptr } %t512, 0
  store i32 %t514, ptr %l202
  %t515 = icmp ne i32 %t514, 0
  br i1 %t515, label %bb121, label %ok.516, !prof !99
ok.516:
  store ptr %t513, ptr %l201
  br label %bb120
bb120:
  %t517 = load ptr, ptr %l201, !tbaa !29
  store ptr %t517, ptr %l197, !tbaa !29
  br label %bb122
bb121:
  %t518 = load i32, ptr %l202, !tbaa !23
  %t519 = lshr i32 %t518, 16
  %t520 = and i32 %t518, 65535
  %t521 = icmp eq i32 %t519, 1
  %t522 = select i1 %t521, i32 1, i32 0
  %t523 = icmp eq i32 %t518, 0
  %t524 = shl i32 %t522, 16
  %t525 = or i32 %t524, %t520
  %t526 = select i1 %t523, i32 0, i32 %t525
  %t528 = insertvalue { i32, ptr } zeroinitializer, i32 %t526, 0
  store { i32, ptr } %t528, ptr %rv
  br label %ret
bb122:
  %t529 = load ptr, ptr %l197, !tbaa !29
  %t530 = load ptr, ptr %l0, !tbaa !29
  store ptr %t530, ptr %l205, !tbaa !29
  %t531 = load i32, ptr %l3, !tbaa !23
  store i32 %t531, ptr %l206, !tbaa !23
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t533 = load i32, ptr %l3, !tbaa !23
  %t538 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v2, ptr %v2, ptr %t532, i32 %t533, ptr %t529)
  store ptr %t538, ptr %l210
  br label %bb123
bb123:
  %t539 = load ptr, ptr %l205, !tbaa !29
  %t540 = load i32, ptr %l206, !tbaa !23
  %t541 = load ptr, ptr %l210, !tbaa !29
  %t542 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v2, ptr %v2, ptr %t539, i32 %t540, ptr %t541)
  %t543 = extractvalue { i32, ptr } %t542, 1
  %t544 = extractvalue { i32, ptr } %t542, 0
  store i32 %t544, ptr %l212
  %t545 = icmp ne i32 %t544, 0
  br i1 %t545, label %bb125, label %ok.546, !prof !99
ok.546:
  store ptr %t543, ptr %l211
  br label %bb124
bb124:
  %t547 = load ptr, ptr %l211, !tbaa !29
  store ptr %t547, ptr %l204, !tbaa !29
  br label %bb126
bb125:
  %t548 = load i32, ptr %l212, !tbaa !23
  %t549 = lshr i32 %t548, 16
  %t550 = and i32 %t548, 65535
  %t551 = icmp eq i32 %t549, 1
  %t552 = select i1 %t551, i32 1, i32 0
  %t553 = icmp eq i32 %t548, 0
  %t554 = shl i32 %t552, 16
  %t555 = or i32 %t554, %t550
  %t556 = select i1 %t553, i32 0, i32 %t555
  %t558 = insertvalue { i32, ptr } zeroinitializer, i32 %t556, 0
  store { i32, ptr } %t558, ptr %rv
  br label %ret
bb126:
  %t559 = load ptr, ptr %l204, !tbaa !29
  store ptr %t559, ptr %l2, !tbaa !29
  br label %bb132
bb127:
  br i1 true, label %bb128, label %bb129
bb128:
  br label %bb130
bb129:
  br label %bb131
bb130:
  %t560 = load ptr, ptr %l2, !tbaa !29
  %t562 = insertvalue { i32, ptr } zeroinitializer, ptr %t560, 1
  store { i32, ptr } %t562, ptr %rv
  br label %ret
bb131:
  call void @__olang_check_failed(ptr @olang_loc_148080230b4c6cc_b965c2d4ca1d1020)
  unreachable
bb132:
  br label %bb133
bb133:
  br label %bb2
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epower(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l11 = alloca i1
  %l15 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/source:Span"
  %l28 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t88 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %t1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l7
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l6
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l6, !tbaa !29
  store ptr %t8, ptr %l4, !tbaa !29
  br label %bb3
bb2:
  %t9 = load i32, ptr %l7, !tbaa !23
  %t10 = lshr i32 %t9, 16
  %t11 = and i32 %t9, 65535
  %t12 = icmp eq i32 %t10, 1
  %t13 = select i1 %t12, i32 1, i32 0
  %t14 = icmp eq i32 %t9, 0
  %t15 = shl i32 %t13, 16
  %t16 = or i32 %t15, %t11
  %t17 = select i1 %t14, i32 0, i32 %t16
  call void @__olang_scope_close(ptr %s0)
  %t19 = insertvalue { i32, ptr } zeroinitializer, i32 %t17, 0
  store { i32, ptr } %t19, ptr %rv
  br label %ret
bb3:
  %t20 = load ptr, ptr %l4, !tbaa !29
  store ptr %t20, ptr %l1, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t24 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t21, i32 70)
  store i1 %t24, ptr %l11
  br label %bb4
bb4:
  %t25 = load i1, ptr %l11, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l1, !tbaa !29
  call void @__olang_scope_close(ptr %s0)
  %t30 = insertvalue { i32, ptr } zeroinitializer, ptr %t28, 1
  store { i32, ptr } %t30, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t31)
  store i32 %t33, ptr %l15
  br label %bb8
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t34)
  %t37 = extractvalue { i32, ptr } %t36, 1
  %t38 = extractvalue { i32, ptr } %t36, 0
  store i32 %t38, ptr %l19
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb10, label %ok.40, !prof !99
ok.40:
  store ptr %t37, ptr %l18
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l18, !tbaa !29
  store ptr %t41, ptr %l16, !tbaa !29
  br label %bb11
bb10:
  %t42 = load i32, ptr %l19, !tbaa !23
  %t43 = lshr i32 %t42, 16
  %t44 = and i32 %t42, 65535
  %t45 = icmp eq i32 %t43, 1
  %t46 = select i1 %t45, i32 1, i32 0
  %t47 = icmp eq i32 %t42, 0
  %t48 = shl i32 %t46, 16
  %t49 = or i32 %t48, %t44
  %t50 = select i1 %t47, i32 0, i32 %t49
  call void @__olang_scope_close(ptr %s0)
  %t52 = insertvalue { i32, ptr } zeroinitializer, i32 %t50, 0
  store { i32, ptr } %t52, ptr %rv
  br label %ret
bb11:
  %t53 = load ptr, ptr %l16, !tbaa !29
  store ptr %t53, ptr %l2, !tbaa !29
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t54)
  store %"compiler/source:Span" %t56, ptr %l22
  br label %bb12
bb12:
  %t57 = getelementptr %"compiler/source:Span", ptr %l22, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/parse:Parser", ptr %t59, i32 0, i32 10
  %t62 = load i32, ptr %t61, !tbaa !23
  %t65 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 %t58, i32 %t62)
  store %"compiler/source:Span" %t65, ptr %l26
  br label %bb13
bb13:
  %t66 = load %"compiler/source:Span", ptr %l26
  store %"compiler/source:Span" %t66, ptr %l3
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t67)
  store i32 %t69, ptr %l28
  %t70 = icmp ne i32 %t69, 0
  br i1 %t70, label %bb15, label %ok.71, !prof !99
ok.71:
  br label %bb14
bb14:
  br label %bb16
bb15:
  %t72 = load i32, ptr %l28, !tbaa !23
  %t73 = lshr i32 %t72, 16
  %t74 = and i32 %t72, 65535
  %t75 = icmp eq i32 %t73, 1
  %t76 = select i1 %t75, i32 1, i32 0
  %t77 = icmp eq i32 %t72, 0
  %t78 = shl i32 %t76, 16
  %t79 = or i32 %t78, %t74
  %t80 = select i1 %t77, i32 0, i32 %t79
  call void @__olang_scope_close(ptr %s0)
  %t82 = insertvalue { i32, ptr } zeroinitializer, i32 %t80, 0
  store { i32, ptr } %t82, ptr %rv
  br label %ret
bb16:
  %t83 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t83)
  br label %bb17
bb17:
  %t85 = load %"compiler/source:Span", ptr %l3
  %t86 = load ptr, ptr %l1, !tbaa !29
  %t87 = load ptr, ptr %l2, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t88
  %t89 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 0
  store i64 5, ptr %t89
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } undef, %"compiler/source:Span" %t85, 0
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t91, i32 70, 1
  %t95 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t93, ptr %t86, 2
  %t97 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t95, ptr %t87, 3
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t88, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr, ptr } %t97, ptr %t98
  %t99 = load { i64, [4 x i64] }, ptr %t88
  %t101 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t99, ptr %t101
  call void @__olang_scope_close(ptr %s0)
  %t103 = insertvalue { i32, ptr } zeroinitializer, ptr %t101, 1
  store { i32, ptr } %t103, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l30 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l56 = alloca { i64, ptr }
  %l63 = alloca ptr
  %l64 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t2 = load ptr, ptr %l13, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l13, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load { i64, ptr }, ptr %t13
  store { i64, ptr } %t14, ptr %l3, !tbaa !27
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", { i64, ptr }, { i64, ptr } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, ptr }, ptr %t19
  store { i64, ptr } %t20, ptr %l4, !tbaa !27
  br label %bb5
bb4:
  br label %bb32
bb5:
  %t22 = load i1, ptr %l2, !tbaa !21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t26 = extractvalue { i64, ptr } %t24, 0
  %t28 = icmp eq i64 %t26, 1
  store i1 %t28, ptr %l22, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t30 = load i1, ptr %l22, !tbaa !21
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t31 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t31, 0
  %t35 = icmp eq i64 %t33, 0
  store i1 %t35, ptr %l26, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb11
bb11:
  %t37 = load i1, ptr %l26, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t38, ptr %l30, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i32, ptr %t40, i64 0
  %t42 = load i32, ptr %t41, !tbaa !33
  store i32 %t42, ptr %l5, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/parse:Parser", ptr %t44, i32 0, i32 2
  %t47 = load ptr, ptr %t46, !tbaa !29
  %t48 = load i32, ptr %l5, !tbaa !23
  %t51 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v0, ptr %t47, i32 %t48)
  store { i64, ptr } %t51, ptr %l35
  br label %bb14
bb13:
  br label %bb24
bb14:
  %t52 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t52, ptr %l6, !tbaa !27
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/parse:Parser", ptr %t53, i32 0, i32 3
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t58 = getelementptr %"compiler/parse:Oracle", ptr %t56, i32 0, i32 0
  %t59 = load i32, ptr %l5, !tbaa !23
  %t62 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t58, i32 %t59)
  store i1 %t62, ptr %l40
  br label %bb15
bb15:
  %t63 = load i1, ptr %l40, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t68 = call i1 @compiler_2fparse_2ebuiltinType(ptr %v0, { i64, ptr } %t66)
  store i1 %t68, ptr %l44
  br label %bb18
bb17:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb19
bb18:
  %t69 = load i1, ptr %l44, !tbaa !21
  %t70 = xor i1 %t69, true
  store i1 %t70, ptr %l42, !tbaa !21
  br label %bb19
bb19:
  %t72 = load i1, ptr %l42, !tbaa !21
  br i1 %t72, label %bb20, label %bb21
bb20:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 29
  %t76 = load i32, ptr %l5, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t75, i32 %t76)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  br label %ret
bb24:
  %t79 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t79, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  store i64 %t83, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t86 = load i64, ptr %l9, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb26, label %bb27
bb26:
  br label %bb31
bb27:
  br label %bb28
bb28:
  %t93 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t93, ptr %l56, !tbaa !27
  %t94 = load i64, ptr %l8, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr ptr, ptr %t97, i64 %t94
  %t99 = load ptr, ptr %t98, !tbaa !39
  %t101 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %t101, ptr %t99, i1 true)
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t105 = load i64, ptr %l8, !tbaa !24
  %t107 = add i64 %t105, 1
  store i64 %t107, ptr %l8, !tbaa !24
  br label %bb25
bb31:
  br label %bb54
bb32:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t110 = load ptr, ptr %l63, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb33, label %bb34
bb33:
  %t113 = load ptr, ptr %l63, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 8}
  %t116 = icmp eq i64 %t114, 3
  store i1 %t116, ptr %l64, !tbaa !21
  br label %bb34
bb34:
  %t117 = load i1, ptr %l64, !tbaa !21
  br i1 %t117, label %bb35, label %bb36
bb35:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [5 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, i1, i1 }, ptr %t120, i32 0, i32 1
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l11, !tbaa !29
  br label %bb37
bb36:
  br label %bb39
bb37:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l11, !tbaa !29
  %t126 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %t124, ptr %t125, i1 %t126)
  br label %bb38
bb38:
  br label %bb54
bb39:
  %t130 = load ptr, ptr %l1, !tbaa !29
  store ptr %t130, ptr %l72, !tbaa !29
  store i1 false, ptr %l73, !tbaa !21
  %t131 = load ptr, ptr %l72, !tbaa !29
  %t132 = icmp ne ptr %t131, null
  br i1 %t132, label %bb40, label %bb41
bb40:
  %t134 = load ptr, ptr %l72, !tbaa !29
  %t135 = load i64, ptr %t134, !range !{i64 0, i64 8}
  %t137 = icmp eq i64 %t135, 4
  store i1 %t137, ptr %l73, !tbaa !21
  br label %bb41
bb41:
  %t138 = load i1, ptr %l73, !tbaa !21
  br i1 %t138, label %bb42, label %bb43
bb42:
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr { i64, [5 x i64] }, ptr %t139, i32 0, i32 1
  %t142 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t141, i32 0, i32 1
  %t143 = load ptr, ptr %t142
  store ptr %t143, ptr %l12, !tbaa !29
  br label %bb44
bb43:
  br label %bb49
bb44:
  %t145 = load ptr, ptr %l12, !tbaa !29
  %t147 = icmp eq ptr %t145, null
  %t149 = xor i1 %t147, true
  br i1 %t149, label %bb45, label %bb46
bb45:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t152 = load ptr, ptr %l12, !tbaa !29
  %t153 = load i1, ptr %l2, !tbaa !21
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereceiverVars(ptr %v0, ptr %v1, ptr %t151, ptr %t152, i1 %t153)
  br label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb48
bb48:
  br label %bb54
bb49:
  br i1 true, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_b7d265f950b1c844_fc5ee8d7b150faf8)
  unreachable
bb54:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2erelease(ptr %v0, ptr %a0, %"compiler/parse:stackMarks" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/parse:stackMarks"
  store ptr %a0, ptr %l0
  store %"compiler/parse:stackMarks" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 31
  %t4 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 0
  %t5 = load i64, ptr %t4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t3, i64 %t5)
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/parse:Parser", ptr %t8, i32 0, i32 32
  %t11 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eTruncate_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %t10, i64 %t12)
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/parse:Parser", ptr %t15, i32 0, i32 33
  %t18 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 2
  %t19 = load i64, ptr %t18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eTrunc_H8c52d56c2ff2ec1f038dbe3d42a0a9e1(ptr %v0, ptr %t17, i64 %t19)
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 34
  %t25 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 3
  %t26 = load i64, ptr %t25, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eTruncate_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %t24, i64 %t26)
  br label %bb4
bb4:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 35
  %t32 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 4
  %t33 = load i64, ptr %t32, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eTrunc_H311fd53ced078d1b110127cfa5549832(ptr %v0, ptr %t31, i64 %t33)
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/parse:Parser", ptr %t36, i32 0, i32 36
  %t39 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 5
  %t40 = load i64, ptr %t39, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t38, i64 %t40)
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/parse:Parser", ptr %t43, i32 0, i32 37
  %t46 = getelementptr %"compiler/parse:stackMarks", ptr %l1, i32 0, i32 6
  %t47 = load i64, ptr %t46, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eTruncate_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t45, i64 %t47)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/diagmsg:Msg" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca %"compiler/token:Token"
  %l6 = alloca { i64, ptr }
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
  store { i64, ptr } %t7, ptr %l6, !tbaa !27
  %t10 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/token:Token", ptr %t11, i64 %a1
  %t13 = load %"compiler/token:Token", ptr %t12
  store %"compiler/token:Token" %t13, ptr %l3
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 2
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = getelementptr %"compiler/token:Token", ptr %l3, i32 0, i32 3
  %t19 = load i32, ptr %t18, !tbaa !23
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v1, ptr %t15, i32 %t17, i32 %t19, %"compiler/diagmsg:Msg" %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2, i1 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca i1
  %l9 = alloca { i64, ptr }
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i1
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l19 = alloca i1
  %l22 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l38 = alloca i32
  %l52 = alloca i1
  %l55 = alloca i1
  %l57 = alloca i1
  %l60 = alloca i64
  %l64 = alloca ptr
  %l66 = alloca ptr
  %l67 = alloca i32
  %l78 = alloca i1
  %l81 = alloca i1
  %l88 = alloca { i64, ptr }
  %l90 = alloca i1
  %l94 = alloca i1
  %l97 = alloca i1
  %l99 = alloca i32
  %l100 = alloca ptr
  %l103 = alloca ptr
  %l104 = alloca i32
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca i32
  %l114 = alloca i1
  %l116 = alloca i1
  %l119 = alloca i1
  %l122 = alloca { i64, ptr }
  %l124 = alloca ptr
  %l126 = alloca i32
  %l128 = alloca i32
  %l131 = alloca { i64, ptr }
  %l132 = alloca %"compiler/diagmsg:Msg"
  %l143 = alloca %"compiler/ast:Sig"
  %s7 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i1, ptr %l2, !tbaa !21
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t3, i32 0, i32 20
  %t6 = load i1, ptr %t5, !tbaa !21
  store i1 %t6, ptr %l19, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb3
bb3:
  %t8 = load i1, ptr %l19, !tbaa !21
  store i1 %t8, ptr %l5, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t9, i32 107)
  %t13 = extractvalue { i32, i32 } %t12, 1
  %t14 = extractvalue { i32, i32 } %t12, 0
  store i32 %t14, ptr %l26
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  store i32 %t13, ptr %l25
  br label %bb4
bb4:
  %t17 = load i32, ptr %l25, !tbaa !23
  store i32 %t17, ptr %l22, !tbaa !23
  br label %bb6
bb5:
  %t18 = load i32, ptr %l26, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t18, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t20
  %t26 = select i1 %t23, i32 0, i32 %t25
  %t28 = insertvalue { i32, ptr } zeroinitializer, i32 %t26, 0
  store { i32, ptr } %t28, ptr %rv
  br label %ret
bb6:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 58
  store i1 false, ptr %t31, !tbaa !21
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/parse:Parser", ptr %t32, i32 0, i32 56
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l6, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i1, ptr %l2, !tbaa !21
  %t41 = getelementptr %"compiler/parse:Parser", ptr %t37, i32 0, i32 56
  store i1 %t38, ptr %t41, !tbaa !21
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/parse:Parser", ptr %t42, i32 0, i32 59
  store i1 true, ptr %t44, !tbaa !21
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i1, ptr %l1, !tbaa !21
  %t49 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %t45, i1 %t46)
  %t50 = extractvalue { i32, { i64, ptr } } %t49, 1
  %t51 = extractvalue { i32, { i64, ptr } } %t49, 0
  store i32 %t51, ptr %l38
  %t52 = icmp ne i32 %t51, 0
  br i1 %t52, label %bb8, label %ok.53, !prof !99
ok.53:
  store { i64, ptr } %t50, ptr %l37
  br label %bb7
bb7:
  %t54 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t54, ptr %l34, !tbaa !27
  br label %bb10
bb8:
  br label %bb9
bb9:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i1, ptr %l6, !tbaa !21
  %t59 = getelementptr %"compiler/parse:Parser", ptr %t55, i32 0, i32 56
  store i1 %t56, ptr %t59, !tbaa !21
  %t61 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t61, ptr %rv
  br label %ret
bb10:
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t62, ptr %l7, !tbaa !27
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i1, ptr %l6, !tbaa !21
  %t67 = getelementptr %"compiler/parse:Parser", ptr %t63, i32 0, i32 56
  store i1 %t64, ptr %t67, !tbaa !21
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/parse:Parser", ptr %t68, i32 0, i32 58
  %t71 = load i1, ptr %t70, !tbaa !21
  store i1 %t71, ptr %l8, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 58
  store i1 false, ptr %t75, !tbaa !21
  %t76 = icmp sge i64 0, 0
  br i1 %t76, label %bb11, label %bb12
bb11:
  %t78 = icmp sle i64 0, 1152921504606846975
  br i1 %t78, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_682b81c4be20c47_acb581c54a6720db)
  unreachable
bb13:
  %t80 = mul i64 0, 8
  %t81 = insertvalue { i64, ptr } undef, i64 0, 0
  %t82 = insertvalue { i64, ptr } %t81, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t82, ptr %l9, !tbaa !27
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t87 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t84, i32 23)
  store i1 %t87, ptr %l52
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_682b81c4be20c47_acb581c54a6720db)
  unreachable
bb15:
  %t88 = load i1, ptr %l52, !tbaa !21
  store i1 %t88, ptr %l10, !tbaa !21
  %t89 = load i1, ptr %l10, !tbaa !21
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb16, label %bb17
bb16:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsResult(ptr %v0, ptr %t93)
  store i1 %t95, ptr %l57
  br label %bb18
bb17:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb19
bb18:
  %t96 = load i1, ptr %l57, !tbaa !21
  store i1 %t96, ptr %l55, !tbaa !21
  br label %bb19
bb19:
  %t97 = load i1, ptr %l55, !tbaa !21
  br i1 %t97, label %bb20, label %bb21
bb20:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/parse:Parser", ptr %t98, i32 0, i32 33
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l60
  br label %bb22
bb21:
  br label %bb40
bb22:
  %t103 = load i64, ptr %l60, !tbaa !24
  store i64 %t103, ptr %l11, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/parse:Parser", ptr %t104, i32 0, i32 20
  %t107 = load i1, ptr %t106, !tbaa !21
  store i1 %t107, ptr %l12, !tbaa !21
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/parse:Parser", ptr %t109, i32 0, i32 20
  store i1 true, ptr %t111, !tbaa !21
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v0, ptr %t112)
  %t115 = extractvalue { i32, ptr } %t114, 1
  %t116 = extractvalue { i32, ptr } %t114, 0
  store i32 %t116, ptr %l67
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb25, label %ok.118, !prof !99
ok.118:
  store ptr %t115, ptr %l66
  br label %bb24
bb24:
  %t119 = load ptr, ptr %l66, !tbaa !29
  store ptr %t119, ptr %l64, !tbaa !29
  br label %bb28
bb25:
  br label %bb26
bb26:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i1, ptr %l12, !tbaa !21
  %t124 = getelementptr %"compiler/parse:Parser", ptr %t120, i32 0, i32 20
  store i1 %t121, ptr %t124, !tbaa !21
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/parse:Parser", ptr %t125, i32 0, i32 33
  %t128 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eTrunc_H8c52d56c2ff2ec1f038dbe3d42a0a9e1(ptr %v0, ptr %t127, i64 %t128)
  br label %bb27
bb27:
  %t132 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t132, ptr %rv
  br label %ret
bb28:
  %t133 = load ptr, ptr %l64, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/parse:Parser", ptr %t134, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v0, ptr %t136, ptr %t133)
  br label %bb29
bb29:
  %t140 = load i1, ptr %l5, !tbaa !21
  br i1 %t140, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb33
bb31:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t145 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t142, i32 74)
  store i1 %t145, ptr %l81
  br label %bb32
bb32:
  %t146 = load i1, ptr %l81, !tbaa !21
  %t147 = xor i1 %t146, true
  store i1 %t147, ptr %l78, !tbaa !21
  br label %bb33
bb33:
  %t149 = load i1, ptr %l78, !tbaa !21
  br i1 %t149, label %bb34, label %bb35
bb34:
  br label %bb38
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb23
bb38:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i1, ptr %l12, !tbaa !21
  %t154 = getelementptr %"compiler/parse:Parser", ptr %t150, i32 0, i32 20
  store i1 %t151, ptr %t154, !tbaa !21
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/parse:Parser", ptr %t155, i32 0, i32 33
  %t158 = load i64, ptr %l11, !tbaa !24
  %t161 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %t157, i64 %t158)
  store { i64, ptr } %t161, ptr %l88
  br label %bb39
bb39:
  %t162 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t162, ptr %l9, !tbaa !27
  br label %bb40
bb40:
  store i1 false, ptr %l14, !tbaa !21
  br i1 %a3, label %bb41, label %bb42
bb41:
  %t165 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t165, 0
  %t169 = icmp sgt i64 %t167, 0
  store i1 %t169, ptr %l90, !tbaa !21
  br label %bb43
bb42:
  store i1 false, ptr %l90, !tbaa !21
  br label %bb43
bb43:
  %t171 = load i1, ptr %l90, !tbaa !21
  br i1 %t171, label %bb44, label %bb45
bb44:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t175 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t172, i32 55)
  store i1 %t175, ptr %l97
  br label %bb46
bb45:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb47
bb46:
  %t176 = load i1, ptr %l97, !tbaa !21
  store i1 %t176, ptr %l94, !tbaa !21
  br label %bb47
bb47:
  %t177 = load i1, ptr %l94, !tbaa !21
  br i1 %t177, label %bb48, label %bb49
bb48:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t178)
  store i32 %t180, ptr %l99
  br label %bb50
bb49:
  br label %bb51
bb50:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb51
bb51:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load i1, ptr %l5, !tbaa !21
  %t185 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %t181, i1 %t182)
  %t186 = extractvalue { i32, ptr } %t185, 1
  %t187 = extractvalue { i32, ptr } %t185, 0
  store i32 %t187, ptr %l104
  %t188 = icmp ne i32 %t187, 0
  br i1 %t188, label %bb53, label %ok.189, !prof !99
ok.189:
  store ptr %t186, ptr %l103
  br label %bb52
bb52:
  %t190 = load ptr, ptr %l103, !tbaa !29
  store ptr %t190, ptr %l100, !tbaa !29
  br label %bb54
bb53:
  %t191 = load i32, ptr %l104, !tbaa !23
  %t192 = lshr i32 %t191, 16
  %t193 = and i32 %t191, 65535
  %t194 = icmp eq i32 %t192, 1
  %t195 = select i1 %t194, i32 1, i32 0
  %t196 = icmp eq i32 %t191, 0
  %t197 = shl i32 %t195, 16
  %t198 = or i32 %t197, %t193
  %t199 = select i1 %t196, i32 0, i32 %t198
  %t201 = insertvalue { i32, ptr } zeroinitializer, i32 %t199, 0
  store { i32, ptr } %t201, ptr %rv
  br label %ret
bb54:
  %t202 = load ptr, ptr %l100, !tbaa !29
  store ptr %t202, ptr %l15, !tbaa !29
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epromises(ptr %v0, ptr %v1, ptr %t203)
  %t206 = extractvalue { i32, { i64, ptr } } %t205, 1
  %t207 = extractvalue { i32, { i64, ptr } } %t205, 0
  store i32 %t207, ptr %l109
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb56, label %ok.209, !prof !99
ok.209:
  store { i64, ptr } %t206, ptr %l108
  br label %bb55
bb55:
  %t210 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t210, ptr %l106, !tbaa !27
  br label %bb57
bb56:
  %t211 = load i32, ptr %l109, !tbaa !23
  %t212 = lshr i32 %t211, 16
  %t213 = and i32 %t211, 65535
  %t214 = icmp eq i32 %t212, 1
  %t215 = select i1 %t214, i32 1, i32 0
  %t216 = icmp eq i32 %t211, 0
  %t217 = shl i32 %t215, 16
  %t218 = or i32 %t217, %t213
  %t219 = select i1 %t216, i32 0, i32 %t218
  %t221 = insertvalue { i32, ptr } zeroinitializer, i32 %t219, 0
  store { i32, ptr } %t221, ptr %rv
  br label %ret
bb57:
  %t222 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t222, ptr %l16, !tbaa !27
  %t223 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t223, 0
  %t227 = icmp sgt i64 %t225, 0
  br i1 %t227, label %bb58, label %bb59
bb58:
  %t229 = load i1, ptr %l1, !tbaa !21
  br i1 %t229, label %bb60, label %bb61
bb59:
  store i1 false, ptr %l114, !tbaa !21
  br label %bb63
bb60:
  store i1 true, ptr %l116, !tbaa !21
  br label %bb62
bb61:
  %t231 = load i1, ptr %l2, !tbaa !21
  %t233 = xor i1 %t231, true
  store i1 %t233, ptr %l116, !tbaa !21
  br label %bb62
bb62:
  %t235 = load i1, ptr %l116, !tbaa !21
  store i1 %t235, ptr %l114, !tbaa !21
  br label %bb63
bb63:
  %t236 = load i1, ptr %l114, !tbaa !21
  br i1 %t236, label %bb64, label %bb65
bb64:
  %t239 = xor i1 %a4, true
  store i1 %t239, ptr %l119, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l119, !tbaa !21
  br label %bb66
bb66:
  %t241 = load i1, ptr %l119, !tbaa !21
  br i1 %t241, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s7
  %t242 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t242, ptr %l122, !tbaa !27
  %t243 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr ptr, ptr %t244, i64 0
  %t246 = load ptr, ptr %t245, !tbaa !39
  store ptr %t246, ptr %l17, !tbaa !29
  %t248 = load ptr, ptr %l0, !tbaa !29
  store ptr %t248, ptr %l124, !tbaa !29
  %t249 = load ptr, ptr %l17, !tbaa !29
  %t251 = getelementptr %"compiler/ast:Promise", ptr %t249, i32 0, i32 0
  %t252 = getelementptr %"compiler/source:Span", ptr %t251, i32 0, i32 0
  %t253 = load i32, ptr %t252, !tbaa !23
  store i32 %t253, ptr %l126, !tbaa !23
  %t254 = load ptr, ptr %l17, !tbaa !29
  %t256 = getelementptr %"compiler/ast:Promise", ptr %t254, i32 0, i32 0
  %t257 = getelementptr %"compiler/source:Span", ptr %t256, i32 0, i32 1
  %t258 = load i32, ptr %t257, !tbaa !23
  store i32 %t258, ptr %l128, !tbaa !23
  %t259 = load ptr, ptr %l17, !tbaa !29
  %t261 = getelementptr %"compiler/ast:Promise", ptr %t259, i32 0, i32 1
  %t262 = load i32, ptr %t261, !range !{i32 0, i32 113}
  %t264 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %s7, i32 %t262)
  store { i64, ptr } %t264, ptr %l131
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t265 = load { i64, ptr }, ptr %l131, !tbaa !27
  %t266 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseMisplaced(ptr %s7, ptr %v0, { i64, ptr } %t265)
  store %"compiler/diagmsg:Msg" %t266, ptr %l132
  br label %bb70
bb70:
  %t267 = load ptr, ptr %l124, !tbaa !29
  %t268 = load i32, ptr %l126, !tbaa !23
  %t269 = load i32, ptr %l128, !tbaa !23
  %t270 = load %"compiler/diagmsg:Msg", ptr %l132
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t267, i32 %t268, i32 %t269, %"compiler/diagmsg:Msg" %t270)
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s7)
  br label %bb72
bb72:
  %t271 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t272 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t273 = load ptr, ptr %l15, !tbaa !29
  %t275 = getelementptr %"compiler/ast:Sig", ptr %t273, i32 0, i32 2
  %t276 = load i1, ptr %t275, !tbaa !21
  %t277 = load ptr, ptr %l15, !tbaa !29
  %t279 = getelementptr %"compiler/ast:Sig", ptr %t277, i32 0, i32 3
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  %t281 = load i1, ptr %l10, !tbaa !21
  %t282 = load i1, ptr %l14, !tbaa !21
  %t283 = load i1, ptr %l8, !tbaa !21
  %t284 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t293 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t271, { i64, ptr } %t272, i1 %t276, { i64, ptr } %t280, i1 %t281, i1 %t282, i1 %t283, { i64, ptr } %t284)
  store %"compiler/ast:Sig" %t293, ptr %l143
  br label %bb73
bb73:
  %t294 = load %"compiler/ast:Sig", ptr %l143
  %t295 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 80, i64 8)
  store %"compiler/ast:Sig" %t294, ptr %t295
  %t297 = insertvalue { i32, ptr } zeroinitializer, ptr %t295, 1
  store { i32, ptr } %t297, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
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

define dso_local i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipFrom(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l13 = alloca i1
  %l16 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t3, i32 0, i32 19
  %t6 = load i1, ptr %t5, !tbaa !21
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  %t19 = sub i64 %t17, 1
  %t22 = icmp slt i64 %t8, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/parse:Parser", ptr %t24, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/scan:Tokens", ptr %t27, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !27
  store { i64, ptr } %t30, ptr %l16, !tbaa !27
  %t31 = load i64, ptr %l2, !tbaa !24
  %t33 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr %"compiler/token:Token", ptr %t34, i64 %t31
  %t36 = getelementptr %"compiler/token:Token", ptr %t35, i32 0, i32 0
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 113}
  %t39 = trunc i64 8 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t42 = load i1, ptr %l13, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb3
bb11:
  br label %bb12
bb12:
  %t49 = load i64, ptr %l2, !tbaa !24
  store i64 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2espacedTypeArgs(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %t7 = icmp eq i64 %t6, 1
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2espread(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca ptr
  %l11 = alloca i32
  %l15 = alloca i64
  %l18 = alloca i64
  %l37 = alloca i32
  %l41 = alloca i32
  %l44 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l55 = alloca %"compiler/source:Span"
  %l58 = alloca %"compiler/source:Span"
  %l61 = alloca i32
  %l66 = alloca ptr
  %l68 = alloca ptr
  %l69 = alloca i32
  %l73 = alloca %"compiler/source:Span"
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t101 = alloca { i64, [4 x i64] }, align 8
  %t111 = alloca { i64, [4 x i64] }, align 8
  %t149 = alloca { i64, [4 x i64] }, align 8
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
  store i64 0, ptr %l2, !tbaa !24
  store i64 3, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t5 = load i64, ptr %l3, !tbaa !24
  %t6 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l4, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l15, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t51)
  store i32 %t53, ptr %l37
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t54 = load i64, ptr %l6, !tbaa !24
  %t56 = add i64 %t54, 1
  store i64 %t56, ptr %l6, !tbaa !24
  br label %bb8
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t58)
  store i32 %t60, ptr %l41
  br label %bb15
bb15:
  %t61 = load i32, ptr %l41, !range !{i32 0, i32 113}
  store i32 %t61, ptr %l8
  %t62 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t64 = trunc i64 74 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  %t67 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t69 = trunc i64 110 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t72 = load i1, ptr %l44, !tbaa !21
  br i1 %t72, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb21
bb20:
  %t73 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t75 = trunc i64 108 to i32
  %t76 = icmp eq i32 %t73, %t75
  store i1 %t76, ptr %l47, !tbaa !21
  br label %bb21
bb21:
  %t78 = load i1, ptr %l47, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb24
bb23:
  %t79 = load i32, ptr %l8, !range !{i32 0, i32 113}
  %t81 = trunc i64 8 to i32
  %t82 = icmp eq i32 %t79, %t81
  store i1 %t82, ptr %l50, !tbaa !21
  br label %bb24
bb24:
  %t84 = load i1, ptr %l50, !tbaa !21
  br i1 %t84, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l1, !tbaa !23
  %t89 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t85, i32 %t86)
  store %"compiler/source:Span" %t89, ptr %l55
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l1, !tbaa !23
  %t94 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t90, i32 %t91)
  store %"compiler/source:Span" %t94, ptr %l58
  br label %bb28
bb28:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/parse:Parser", ptr %t95, i32 0, i32 2
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s4, ptr %t98, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i32 %t100, ptr %l61
  br label %bb29
bb29:
  store { i64, [4 x i64] } zeroinitializer, ptr %t101
  %t102 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 0
  store i64 0, ptr %t102
  %t103 = load %"compiler/source:Span", ptr %l58
  %t104 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t103, 0
  %t105 = load i32, ptr %l61, !tbaa !23
  %t106 = insertvalue { %"compiler/source:Span", i32 } %t104, i32 %t105, 1
  %t107 = getelementptr { i64, [4 x i64] }, ptr %t101, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t106, ptr %t107
  %t108 = load { i64, [4 x i64] }, ptr %t101
  %t110 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t108, ptr %t110
  store { i64, [4 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 0
  store i64 26, ptr %t112
  %t113 = load %"compiler/source:Span", ptr %l55
  %t114 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t113, 0
  %t116 = insertvalue { %"compiler/source:Span", ptr } %t114, ptr %t110, 1
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t116, ptr %t117
  %t118 = load { i64, [4 x i64] }, ptr %t111
  %t120 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t118, ptr %t120
  call void @__olang_scope_close(ptr %s4)
  %t122 = insertvalue { i32, ptr } zeroinitializer, ptr %t120, 1
  store { i32, ptr } %t122, ptr %rv
  br label %ret
bb30:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t123)
  %t126 = extractvalue { i32, ptr } %t125, 1
  %t127 = extractvalue { i32, ptr } %t125, 0
  store i32 %t127, ptr %l69
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb32, label %ok.129, !prof !99
ok.129:
  store ptr %t126, ptr %l68
  br label %bb31
bb31:
  %t130 = load ptr, ptr %l68, !tbaa !29
  store ptr %t130, ptr %l66, !tbaa !29
  br label %bb33
bb32:
  %t131 = load i32, ptr %l69, !tbaa !23
  %t132 = lshr i32 %t131, 16
  %t133 = and i32 %t131, 65535
  %t134 = icmp eq i32 %t132, 1
  %t135 = select i1 %t134, i32 1, i32 0
  %t136 = icmp eq i32 %t131, 0
  %t137 = shl i32 %t135, 16
  %t138 = or i32 %t137, %t133
  %t139 = select i1 %t136, i32 0, i32 %t138
  %t141 = insertvalue { i32, ptr } zeroinitializer, i32 %t139, 0
  store { i32, ptr } %t141, ptr %rv
  br label %ret
bb33:
  %t142 = load ptr, ptr %l66, !tbaa !29
  store ptr %t142, ptr %l9, !tbaa !29
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i32, ptr %l1, !tbaa !23
  %t147 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t143, i32 %t144)
  store %"compiler/source:Span" %t147, ptr %l73
  br label %bb34
bb34:
  %t148 = load ptr, ptr %l9, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 0
  store i64 26, ptr %t150
  %t151 = load %"compiler/source:Span", ptr %l73
  %t152 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t151, 0
  %t154 = insertvalue { %"compiler/source:Span", ptr } %t152, ptr %t148, 1
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t154, ptr %t155
  %t156 = load { i64, [4 x i64] }, ptr %t149
  %t158 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t156, ptr %t158
  %t160 = insertvalue { i32, ptr } zeroinitializer, ptr %t158, 1
  store { i32, ptr } %t160, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esubItem(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l3 = alloca i32
  %l6 = alloca i1
  %l7 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i32
  %l16 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i32
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l3
  br label %bb1
bb1:
  %t4 = load i32, ptr %l3, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 78)
  store i1 %t8, ptr %l6
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i32, ptr %l1, !tbaa !23
  %t14 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaxisItem(ptr %v0, ptr %v1, ptr %v1, ptr %t10, i32 %t11, ptr null)
  %t15 = extractvalue { i32, ptr } %t14, 1
  %t16 = extractvalue { i32, ptr } %t14, 0
  store i32 %t16, ptr %l11
  %t17 = icmp ne i32 %t16, 0
  br i1 %t17, label %bb6, label %ok.18, !prof !99
ok.18:
  store ptr %t15, ptr %l10
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t19 = load ptr, ptr %l10, !tbaa !29
  store ptr %t19, ptr %l7, !tbaa !29
  br label %bb7
bb6:
  %t20 = load i32, ptr %l11, !tbaa !23
  %t21 = lshr i32 %t20, 16
  %t22 = and i32 %t20, 65535
  %t23 = icmp eq i32 %t21, 1
  %t24 = select i1 %t23, i32 1, i32 0
  %t25 = icmp eq i32 %t20, 0
  %t26 = shl i32 %t24, 16
  %t27 = or i32 %t26, %t22
  %t28 = select i1 %t25, i32 0, i32 %t27
  %t30 = insertvalue { i32, ptr } zeroinitializer, i32 %t28, 0
  store { i32, ptr } %t30, ptr %rv
  br label %ret
bb7:
  %t31 = load ptr, ptr %l7, !tbaa !29
  %t32 = insertvalue { i32, ptr } zeroinitializer, ptr %t31, 1
  store { i32, ptr } %t32, ptr %rv
  br label %ret
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l14, !tbaa !29
  %t34 = load i32, ptr %l1, !tbaa !23
  store i32 %t34, ptr %l15, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v1, ptr %t35)
  %t38 = extractvalue { i32, ptr } %t37, 1
  %t39 = extractvalue { i32, ptr } %t37, 0
  store i32 %t39, ptr %l19
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb10, label %ok.41, !prof !99
ok.41:
  store ptr %t38, ptr %l18
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l18, !tbaa !29
  store ptr %t42, ptr %l16, !tbaa !29
  br label %bb11
bb10:
  %t43 = load i32, ptr %l19, !tbaa !23
  %t44 = lshr i32 %t43, 16
  %t45 = and i32 %t43, 65535
  %t46 = icmp eq i32 %t44, 1
  %t47 = select i1 %t46, i32 1, i32 0
  %t48 = icmp eq i32 %t43, 0
  %t49 = shl i32 %t47, 16
  %t50 = or i32 %t49, %t45
  %t51 = select i1 %t48, i32 0, i32 %t50
  %t53 = insertvalue { i32, ptr } zeroinitializer, i32 %t51, 0
  store { i32, ptr } %t53, ptr %rv
  br label %ret
bb11:
  %t54 = load ptr, ptr %l16, !tbaa !29
  %t55 = load ptr, ptr %l14, !tbaa !29
  %t56 = load i32, ptr %l15, !tbaa !23
  %t58 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaxisItem(ptr %v0, ptr %v1, ptr %v1, ptr %t55, i32 %t56, ptr %t54)
  %t59 = extractvalue { i32, ptr } %t58, 1
  %t60 = extractvalue { i32, ptr } %t58, 0
  store i32 %t60, ptr %l23
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb13, label %ok.62, !prof !99
ok.62:
  store ptr %t59, ptr %l22
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l22, !tbaa !29
  store ptr %t63, ptr %l13, !tbaa !29
  br label %bb14
bb13:
  %t64 = load i32, ptr %l23, !tbaa !23
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
bb14:
  %t75 = load ptr, ptr %l13, !tbaa !29
  %t76 = insertvalue { i32, ptr } zeroinitializer, ptr %t75, 1
  store { i32, ptr } %t76, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncFrom(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l8 = alloca i32
  %l18 = alloca i32
  %l25 = alloca i32
  %l30 = alloca i1
  %l37 = alloca i1
  %l46 = alloca i1
  %l50 = alloca i32
  %l52 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 7
  store i32 0, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 11
  store i1 false, ptr %t7, !tbaa !21
  store i64 0, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t8)
  store i32 %t10, ptr %l8
  br label %bb2
bb2:
  %t11 = load i32, ptr %l8, !range !{i32 0, i32 113}
  store i32 %t11, ptr %l2
  %t12 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t14 = trunc i64 0 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t19 = trunc i64 111 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/parse:Parser", ptr %t22, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/parse:Parser", ptr %t26, i32 0, i32 6
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = trunc i64 %t29 to i32
  %t34 = call i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %t25, i32 %t31)
  store i32 %t34, ptr %l18
  br label %bb8
bb7:
  br label %bb13
bb8:
  %t35 = load i32, ptr %l18, !tbaa !23
  store i32 %t35, ptr %l3, !tbaa !23
  %t36 = load i32, ptr %l3, !tbaa !23
  %t38 = icmp slt i32 %t36, 0
  br i1 %t38, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l3, !tbaa !23
  %t43 = sext i32 %t41 to i64
  %t46 = getelementptr %"compiler/parse:Parser", ptr %t40, i32 0, i32 6
  store i64 %t43, ptr %t46, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t47)
  store i32 %t49, ptr %l25
  br label %bb12
bb12:
  br label %bb40
bb13:
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t52 = trunc i64 112 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t57 = trunc i64 107 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  %t60 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t62 = trunc i64 109 to i32
  %t63 = icmp eq i32 %t60, %t62
  store i1 %t63, ptr %l30, !tbaa !21
  br label %bb18
bb18:
  %t65 = load i1, ptr %l30, !tbaa !21
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t66 = load i64, ptr %l1, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l1, !tbaa !24
  br label %bb37
bb20:
  %t70 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t72 = trunc i64 108 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb23
bb22:
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t77 = trunc i64 110 to i32
  %t78 = icmp eq i32 %t75, %t77
  store i1 %t78, ptr %l37, !tbaa !21
  br label %bb23
bb23:
  %t80 = load i1, ptr %l37, !tbaa !21
  br i1 %t80, label %bb24, label %bb25
bb24:
  %t81 = load i64, ptr %l1, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb26, label %bb27
bb25:
  %t85 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t87 = trunc i64 8 to i32
  %t88 = icmp eq i32 %t85, %t87
  br i1 %t88, label %bb29, label %bb30
bb26:
  %t90 = load i64, ptr %l1, !tbaa !24
  %t92 = sub i64 %t90, 1
  store i64 %t92, ptr %l1, !tbaa !24
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb36
bb29:
  %t94 = load i64, ptr %l1, !tbaa !24
  %t96 = icmp eq i64 %t94, 0
  store i1 %t96, ptr %l46, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb31
bb31:
  %t98 = load i1, ptr %l46, !tbaa !21
  br i1 %t98, label %bb32, label %bb33
bb32:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t99)
  store i32 %t101, ptr %l50
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %ret
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t102)
  store i32 %t104, ptr %l52
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb1
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

define dso_local { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v1, ptr %a0, %"compiler/token:Token" %a1) #0 {
entry:
  %l1 = alloca %"compiler/token:Token"
  %l4 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %rv = alloca { i64, ptr }
  store %"compiler/token:Token" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/parse:Parser", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/source:Source", ptr %t4, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l4, !tbaa !27
  %t8 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 2
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  store i64 %t11, ptr %l6, !tbaa !24
  %t12 = getelementptr %"compiler/token:Token", ptr %l1, i32 0, i32 3
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = sext i32 %t13 to i64
  store i64 %t15, ptr %l8, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l9, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = icmp sge i64 %t18, 0
  br i1 %t19, label %bb1, label %bb2
bb1:
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = icmp sle i64 %t21, %t22
  br i1 %t23, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_b08fe5a62583e117_e5b5edd841fa1acb)
  unreachable
bb3:
  %t25 = load i64, ptr %l8, !tbaa !24
  %t26 = load i64, ptr %l9, !tbaa !24
  %t27 = icmp sle i64 %t25, %t26
  br i1 %t27, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_b08fe5a62583e117_e5b5edd841fa1acb)
  unreachable
bb5:
  %t29 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t33 = getelementptr i8, ptr %t30, i64 %t31
  %t34 = sub i64 %t32, %t31
  %t35 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  store { i64, ptr } %t36, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_b08fe5a62583e117_e5b5edd841fa1acb)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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

define dso_local void @compiler_2fparse_2ecompiler_2fparse_3aParser_2etooDeepAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/token:Token"
  %l8 = alloca { i64, ptr }
  %l12 = alloca ptr
  %l19 = alloca { i64, [3 x i64] }
  %l21 = alloca %"compiler/diagmsg:Msg"
  %l22 = alloca i64
  %t39 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/parse:Parser", ptr %t6, i32 0, i32 22
  store i1 true, ptr %t8, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/parse:Parser", ptr %t9, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/scan:Tokens", ptr %t12, i32 0, i32 0
  %t15 = load { i64, ptr }, ptr %t14, !tbaa !27
  store { i64, ptr } %t15, ptr %l8, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr %"compiler/token:Token", ptr %t19, i64 %a1
  %t21 = load %"compiler/token:Token", ptr %t20
  store %"compiler/token:Token" %t21, ptr %l2
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 4
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l12, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/parse:Parser", ptr %t27, i32 0, i32 5
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 2
  %t32 = load i32, ptr %t31, !tbaa !23
  %t34 = sext i32 %t32 to i64
  %t35 = getelementptr %"compiler/token:Token", ptr %l2, i32 0, i32 3
  %t36 = load i32, ptr %t35, !tbaa !23
  %t38 = sext i32 %t36 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t39
  %t40 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 0
  store i64 3, ptr %t40
  %t42 = insertvalue { i64, i64, i64 } undef, i64 %t30, 0
  %t44 = insertvalue { i64, i64, i64 } %t42, i64 %t34, 1
  %t46 = insertvalue { i64, i64, i64 } %t44, i64 %t38, 2
  %t47 = getelementptr { i64, [3 x i64] }, ptr %t39, i32 0, i32 1
  store { i64, i64, i64 } %t46, ptr %t47
  %t48 = load { i64, [3 x i64] }, ptr %t39
  store { i64, [3 x i64] } %t48, ptr %l19
  %t49 = load i64, ptr @G_2ecompiler_2fparse_2eMaxNesting, !tbaa !24
  %t51 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNesting(ptr %v0, i64 %t49)
  store %"compiler/diagmsg:Msg" %t51, ptr %l21
  br label %bb4
bb4:
  %t52 = load ptr, ptr %l12, !tbaa !29
  %t53 = load { i64, [3 x i64] }, ptr %l19
  %t54 = load %"compiler/diagmsg:Msg", ptr %l21
  %t55 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v0, ptr %t52, { i64, [3 x i64] } %t53, %"compiler/diagmsg:Msg" %t54)
  store i64 %t55, ptr %l22
  br label %bb5
bb5:
  br label %ret
ret:
  ret void
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
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 111)
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
  %t40 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t37, i32 112)
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
  %t58 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t55, i32 112)
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
  %t87 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t84, i32 91)
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
  %t92 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t89, i32 92)
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
  %t237 = load i32, ptr %l101, !range !{i32 0, i32 113}
  store i32 %t237, ptr %l9
  %t238 = load i32, ptr %l9, !range !{i32 0, i32 113}
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
  %t282 = load i32, ptr %l9, !range !{i32 0, i32 113}
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
  %t379 = load i64, ptr %t378, !range !{i64 0, i64 28}
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
  %t387 = load i32, ptr %t386, !range !{i32 0, i32 113}
  store i32 %t387, ptr %l14
  br label %bb58
bb57:
  br label %bb73
bb58:
  %t389 = load i32, ptr %l14, !range !{i32 0, i32 113}
  %t391 = trunc i64 91 to i32
  %t392 = icmp eq i32 %t389, %t391
  br i1 %t392, label %bb59, label %bb60
bb59:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb61
bb60:
  %t394 = load i32, ptr %l14, !range !{i32 0, i32 113}
  %t396 = trunc i64 92 to i32
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
  store i64 19, ptr %t603
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
  %t50 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t47, i32 76)
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
  %t113 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t110, i32 76)
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
  %t118 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t115, i32 98)
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
  %t16 = load i32, ptr %l22, !range !{i32 0, i32 113}
  store i32 %t16, ptr %l3
  %t17 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t19 = trunc i64 36 to i32
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
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t25, i32 100)
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
  %t38 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t35, i32 76)
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
  %t52 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %t50, i1 false, i1 true, i1 false, i1 false)
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
  %t117 = getelementptr %"compiler/parse:Parser", ptr %t115, i32 0, i32 53
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
  %t179 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBare(ptr %s5, ptr %v0, { i64, ptr } %t177)
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
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t180, i32 %t181, i32 %t182, %"compiler/diagmsg:Msg" %t183)
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
  %t187 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t189 = trunc i64 34 to i32
  %t190 = icmp eq i32 %t187, %t189
  br i1 %t190, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  %t192 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t194 = trunc i64 33 to i32
  %t195 = icmp eq i32 %t192, %t194
  br i1 %t195, label %bb44, label %bb45
bb44:
  br label %bb48
bb45:
  %t197 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t199 = trunc i64 35 to i32
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
  %t244 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t246 = trunc i64 51 to i32
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
  %t290 = load i32, ptr %l3, !range !{i32 0, i32 113}
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
  %t328 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t325, i32 75)
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
  %t378 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t375, i32 96)
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
  %t421 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t423 = trunc i64 107 to i32
  %t424 = icmp eq i32 %t421, %t423
  br i1 %t424, label %bb100, label %bb101
bb100:
  br label %bb102
bb101:
  br label %bb129
bb102:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/parse:Parser", ptr %t426, i32 0, i32 44
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
  %t492 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t489, i32 108)
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
  %t503 = load ptr, ptr %l0, !tbaa !29
  store ptr %t503, ptr %l205, !tbaa !29
  %t504 = load i32, ptr %l1, !tbaa !23
  store i32 %t504, ptr %l206, !tbaa !23
  %t505 = load ptr, ptr %l0, !tbaa !29
  %t507 = getelementptr %"compiler/parse:Parser", ptr %t505, i32 0, i32 10
  %t508 = load i32, ptr %t507, !tbaa !23
  store i32 %t508, ptr %l208, !tbaa !23
  %t509 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %v0)
  store %"compiler/diagmsg:Msg" %t509, ptr %l209
  br label %bb117
bb116:
  br label %bb119
bb117:
  %t510 = load ptr, ptr %l205, !tbaa !29
  %t511 = load i32, ptr %l206, !tbaa !23
  %t512 = load i32, ptr %l208, !tbaa !23
  %t513 = load %"compiler/diagmsg:Msg", ptr %l209
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t510, i32 %t511, i32 %t512, %"compiler/diagmsg:Msg" %t513)
  br label %bb118
bb118:
  %t515 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t515, ptr %rv
  br label %ret
bb119:
  %t516 = load ptr, ptr %l0, !tbaa !29
  %t519 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t516, i32 108)
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
  %t544 = load ptr, ptr %l0, !tbaa !29
  store ptr %t544, ptr %l221, !tbaa !29
  %t545 = load i32, ptr %l1, !tbaa !23
  store i32 %t545, ptr %l222, !tbaa !23
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t548 = getelementptr %"compiler/parse:Parser", ptr %t546, i32 0, i32 10
  %t549 = load i32, ptr %t548, !tbaa !23
  store i32 %t549, ptr %l224, !tbaa !23
  %t550 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %v0)
  store %"compiler/diagmsg:Msg" %t550, ptr %l225
  br label %bb126
bb125:
  br label %bb128
bb126:
  %t551 = load ptr, ptr %l221, !tbaa !29
  %t552 = load i32, ptr %l222, !tbaa !23
  %t553 = load i32, ptr %l224, !tbaa !23
  %t554 = load %"compiler/diagmsg:Msg", ptr %l225
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t551, i32 %t552, i32 %t553, %"compiler/diagmsg:Msg" %t554)
  br label %bb127
bb127:
  %t556 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t556, ptr %rv
  br label %ret
bb128:
  %t557 = load ptr, ptr %l15, !tbaa !29
  %t559 = insertvalue { i32, ptr } zeroinitializer, ptr %t557, 1
  store { i32, ptr } %t559, ptr %rv
  br label %ret
bb129:
  %t560 = load i32, ptr %l3, !range !{i32 0, i32 113}
  %t562 = trunc i64 96 to i32
  %t563 = icmp eq i32 %t560, %t562
  br i1 %t563, label %bb130, label %bb131
bb130:
  br label %bb132
bb131:
  br label %bb136
bb132:
  store %olang.scope zeroinitializer, ptr %s16
  %t565 = load ptr, ptr %l0, !tbaa !29
  %t567 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s16, ptr %t565, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d13, i32 0, i32 1) })
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
  %t583 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s17, ptr %t581, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) })
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i1
  %l3 = alloca ptr
  %l5 = alloca i32
  %l8 = alloca i1
  %l9 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i32
  %l16 = alloca i1
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i32
  %l25 = alloca ptr
  %l29 = alloca %"compiler/source:Span"
  %rv = alloca { i32, ptr }
  %t74 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l5
  br label %bb1
bb1:
  %t4 = load i32, ptr %l5, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 66)
  store i1 %t8, ptr %l8
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eweakType(ptr %v0, ptr %v1, ptr %t10)
  %t13 = extractvalue { i32, ptr } %t12, 1
  %t14 = extractvalue { i32, ptr } %t12, 0
  store i32 %t14, ptr %l12
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb6, label %ok.16, !prof !99
ok.16:
  store ptr %t13, ptr %l11
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t17 = load ptr, ptr %l11, !tbaa !29
  store ptr %t17, ptr %l9, !tbaa !29
  br label %bb7
bb6:
  %t18 = load i32, ptr %l12, !tbaa !23
  %t19 = lshr i32 %t18, 16
  %t20 = and i32 %t18, 65535
  %t21 = icmp eq i32 %t19, 1
  %t22 = select i1 %t21, i32 1, i32 0
  %t23 = icmp eq i32 %t18, 0
  %t24 = shl i32 %t22, 16
  %t25 = or i32 %t24, %t20
  %t26 = select i1 %t23, i32 0, i32 %t25
  %t28 = insertvalue { i32, ptr } zeroinitializer, i32 %t26, 0
  store { i32, ptr } %t28, ptr %rv
  br label %ret
bb7:
  %t29 = load ptr, ptr %l9, !tbaa !29
  %t30 = insertvalue { i32, ptr } zeroinitializer, ptr %t29, 1
  store { i32, ptr } %t30, ptr %rv
  br label %ret
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t34 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t31, i32 38)
  store i1 %t34, ptr %l16
  br label %bb9
bb9:
  %t35 = load i1, ptr %l16, !tbaa !21
  store i1 %t35, ptr %l2, !tbaa !21
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBase(ptr %v0, ptr %v1, ptr %t36)
  %t39 = extractvalue { i32, ptr } %t38, 1
  %t40 = extractvalue { i32, ptr } %t38, 0
  store i32 %t40, ptr %l20
  %t41 = icmp ne i32 %t40, 0
  br i1 %t41, label %bb11, label %ok.42, !prof !99
ok.42:
  store ptr %t39, ptr %l19
  br label %bb10
bb10:
  %t43 = load ptr, ptr %l19, !tbaa !29
  store ptr %t43, ptr %l17, !tbaa !29
  br label %bb12
bb11:
  %t44 = load i32, ptr %l20, !tbaa !23
  %t45 = lshr i32 %t44, 16
  %t46 = and i32 %t44, 65535
  %t47 = icmp eq i32 %t45, 1
  %t48 = select i1 %t47, i32 1, i32 0
  %t49 = icmp eq i32 %t44, 0
  %t50 = shl i32 %t48, 16
  %t51 = or i32 %t50, %t46
  %t52 = select i1 %t49, i32 0, i32 %t51
  %t54 = insertvalue { i32, ptr } zeroinitializer, i32 %t52, 0
  store { i32, ptr } %t54, ptr %rv
  br label %ret
bb12:
  %t55 = load ptr, ptr %l17, !tbaa !29
  store ptr %t55, ptr %l3, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l1, !tbaa !23
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t62 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v1, ptr %v1, ptr %t56, i32 %t57, ptr %t58)
  store ptr %t62, ptr %l25
  br label %bb13
bb13:
  %t63 = load ptr, ptr %l25, !tbaa !29
  store ptr %t63, ptr %l3, !tbaa !29
  %t64 = load i1, ptr %l2, !tbaa !21
  br i1 %t64, label %bb14, label %bb15
bb14:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i32, ptr %l1, !tbaa !23
  %t70 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t66, i32 %t67)
  store %"compiler/source:Span" %t70, ptr %l29
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = load i1, ptr %l2, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t74
  %t75 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 0
  store i64 4, ptr %t75
  %t76 = load %"compiler/source:Span", ptr %l29
  %t77 = insertvalue { %"compiler/source:Span", ptr, i1 } undef, %"compiler/source:Span" %t76, 0
  %t79 = insertvalue { %"compiler/source:Span", ptr, i1 } %t77, ptr %t71, 1
  %t81 = insertvalue { %"compiler/source:Span", ptr, i1 } %t79, i1 %t73, 2
  %t82 = getelementptr { i64, [5 x i64] }, ptr %t74, i32 0, i32 1
  store { %"compiler/source:Span", ptr, i1 } %t81, ptr %t82
  %t83 = load { i64, [5 x i64] }, ptr %t74
  %t85 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 48, i64 8)
  store { i64, [5 x i64] } %t83, ptr %t85
  %t87 = insertvalue { i32, ptr } zeroinitializer, ptr %t85, 1
  store { i32, ptr } %t87, ptr %rv
  br label %ret
bb17:
  %t88 = load ptr, ptr %l3, !tbaa !29
  %t90 = insertvalue { i32, ptr } zeroinitializer, ptr %t88, 1
  store { i32, ptr } %t90, ptr %rv
  br label %ret
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
  %l8 = alloca i32
  %l10 = alloca i1
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l17 = alloca i32
  %l21 = alloca i32
  %l23 = alloca i32
  %l25 = alloca ptr
  %l27 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i32
  %l33 = alloca %"compiler/source:Span"
  %l37 = alloca ptr
  %l42 = alloca i32
  %l43 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i32
  %l50 = alloca %"compiler/source:Span"
  %l64 = alloca i32
  %l66 = alloca i32
  %l67 = alloca ptr
  %l69 = alloca ptr
  %l70 = alloca i32
  %l74 = alloca %"compiler/source:Span"
  %l85 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca i32
  %l93 = alloca i1
  %l94 = alloca ptr
  %l96 = alloca ptr
  %l97 = alloca i32
  %l99 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca i32
  %l104 = alloca ptr
  %l106 = alloca ptr
  %l107 = alloca i32
  %rv = alloca { i32, ptr }
  %t86 = alloca { i64, [4 x i64] }, align 8
  %t136 = alloca { i64, [4 x i64] }, align 8
  %t204 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %t1)
  store i32 %t3, ptr %l8
  br label %bb1
bb1:
  %t4 = load i32, ptr %l8, !tbaa !23
  store i32 %t4, ptr %l1, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eellipsis(ptr %v0, ptr %t5)
  store i1 %t7, ptr %l10
  br label %bb2
bb2:
  %t8 = load i1, ptr %l10, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2espread(ptr %v0, ptr %v1, ptr %t9)
  %t12 = extractvalue { i32, ptr } %t11, 1
  %t13 = extractvalue { i32, ptr } %t11, 0
  store i32 %t13, ptr %l14
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb6, label %ok.15, !prof !99
ok.15:
  store ptr %t12, ptr %l13
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t16 = load ptr, ptr %l13, !tbaa !29
  store ptr %t16, ptr %l11, !tbaa !29
  br label %bb7
bb6:
  %t17 = load i32, ptr %l14, !tbaa !23
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
  %t28 = load ptr, ptr %l11, !tbaa !29
  %t29 = insertvalue { i32, ptr } zeroinitializer, ptr %t28, 1
  store { i32, ptr } %t29, ptr %rv
  br label %ret
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t30)
  store i32 %t32, ptr %l17
  br label %bb9
bb9:
  %t33 = load i32, ptr %l17, !range !{i32 0, i32 113}
  store i32 %t33, ptr %l2
  %t34 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t36 = trunc i64 47 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb23
bb12:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t39)
  store i32 %t41, ptr %l21
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %t42)
  store i32 %t44, ptr %l23
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb15, label %ok.46, !prof !99
ok.46:
  br label %bb14
bb14:
  br label %bb16
bb15:
  %t47 = load i32, ptr %l23, !tbaa !23
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
  store i32 %t62, ptr %l28
  %t63 = icmp ne i32 %t62, 0
  br i1 %t63, label %bb18, label %ok.64, !prof !99
ok.64:
  store ptr %t61, ptr %l27
  br label %bb17
bb17:
  %t65 = load ptr, ptr %l27, !tbaa !29
  store ptr %t65, ptr %l25, !tbaa !29
  br label %bb20
bb18:
  %t66 = load i32, ptr %l28, !tbaa !23
  %t67 = lshr i32 %t66, 16
  %t68 = and i32 %t66, 65535
  %t69 = icmp eq i32 %t67, 1
  %t70 = select i1 %t69, i32 1, i32 0
  %t71 = icmp eq i32 %t66, 0
  %t72 = shl i32 %t70, 16
  %t73 = or i32 %t72, %t68
  %t74 = select i1 %t71, i32 0, i32 %t73
  store i32 %t74, ptr %l29, !tbaa !23
  %t75 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t75)
  br label %bb19
bb19:
  %t77 = load i32, ptr %l29, !tbaa !23
  %t78 = insertvalue { i32, ptr } zeroinitializer, i32 %t77, 0
  store { i32, ptr } %t78, ptr %rv
  br label %ret
bb20:
  %t79 = load ptr, ptr %l25, !tbaa !29
  store ptr %t79, ptr %l3, !tbaa !29
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l1, !tbaa !23
  %t84 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t80, i32 %t81)
  store %"compiler/source:Span" %t84, ptr %l33
  br label %bb21
bb21:
  %t85 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t86
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 0
  store i64 3, ptr %t87
  %t88 = load %"compiler/source:Span", ptr %l33
  %t89 = insertvalue { %"compiler/source:Span", i32, ptr } undef, %"compiler/source:Span" %t88, 0
  %t91 = insertvalue { %"compiler/source:Span", i32, ptr } %t89, i32 47, 1
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr } %t91, ptr %t85, 2
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t86, i32 0, i32 1
  store { %"compiler/source:Span", i32, ptr } %t93, ptr %t94
  %t95 = load { i64, [4 x i64] }, ptr %t86
  %t97 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 40, i64 8)
  store { i64, [4 x i64] } %t95, ptr %t97
  store ptr %t97, ptr %l37, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %t98)
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l37, !tbaa !29
  %t101 = insertvalue { i32, ptr } zeroinitializer, ptr %t100, 1
  store { i32, ptr } %t101, ptr %rv
  br label %ret
bb23:
  %t102 = load i32, ptr %l2, !range !{i32 0, i32 113}
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
  store i32 %t109, ptr %l42
  br label %bb27
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t110)
  %t113 = extractvalue { i32, ptr } %t112, 1
  %t114 = extractvalue { i32, ptr } %t112, 0
  store i32 %t114, ptr %l46
  %t115 = icmp ne i32 %t114, 0
  br i1 %t115, label %bb29, label %ok.116, !prof !99
ok.116:
  store ptr %t113, ptr %l45
  br label %bb28
bb28:
  %t117 = load ptr, ptr %l45, !tbaa !29
  store ptr %t117, ptr %l43, !tbaa !29
  br label %bb30
bb29:
  %t118 = load i32, ptr %l46, !tbaa !23
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
  %t129 = load ptr, ptr %l43, !tbaa !29
  store ptr %t129, ptr %l4, !tbaa !29
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i32, ptr %l1, !tbaa !23
  %t134 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t130, i32 %t131)
  store %"compiler/source:Span" %t134, ptr %l50
  br label %bb31
bb31:
  %t135 = load ptr, ptr %l4, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t136
  %t137 = getelementptr { i64, [4 x i64] }, ptr %t136, i32 0, i32 0
  store i64 3, ptr %t137
  %t138 = load %"compiler/source:Span", ptr %l50
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
  %t150 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t152 = trunc i64 68 to i32
  %t153 = icmp eq i32 %t150, %t152
  br i1 %t153, label %bb33, label %bb34
bb33:
  br label %bb41
bb34:
  %t155 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t157 = trunc i64 103 to i32
  %t158 = icmp eq i32 %t155, %t157
  br i1 %t158, label %bb35, label %bb36
bb35:
  br label %bb41
bb36:
  %t160 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t162 = trunc i64 91 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  %t165 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t167 = trunc i64 92 to i32
  %t168 = icmp eq i32 %t165, %t167
  br i1 %t168, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb48
bb41:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2epeek(ptr %v0, ptr %t170)
  store i32 %t172, ptr %l64
  br label %bb42
bb42:
  %t173 = load i32, ptr %l64, !range !{i32 0, i32 113}
  store i32 %t173, ptr %l5
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t174)
  store i32 %t176, ptr %l66
  br label %bb43
bb43:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %t177)
  %t180 = extractvalue { i32, ptr } %t179, 1
  %t181 = extractvalue { i32, ptr } %t179, 0
  store i32 %t181, ptr %l70
  %t182 = icmp ne i32 %t181, 0
  br i1 %t182, label %bb45, label %ok.183, !prof !99
ok.183:
  store ptr %t180, ptr %l69
  br label %bb44
bb44:
  %t184 = load ptr, ptr %l69, !tbaa !29
  store ptr %t184, ptr %l67, !tbaa !29
  br label %bb46
bb45:
  %t185 = load i32, ptr %l70, !tbaa !23
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
  %t196 = load ptr, ptr %l67, !tbaa !29
  store ptr %t196, ptr %l6, !tbaa !29
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i32, ptr %l1, !tbaa !23
  %t201 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t197, i32 %t198)
  store %"compiler/source:Span" %t201, ptr %l74
  br label %bb47
bb47:
  %t202 = load i32, ptr %l5, !range !{i32 0, i32 113}
  %t203 = load ptr, ptr %l6, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t204
  %t205 = getelementptr { i64, [4 x i64] }, ptr %t204, i32 0, i32 0
  store i64 3, ptr %t205
  %t206 = load %"compiler/source:Span", ptr %l74
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
  %t218 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t220 = trunc i64 5 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  %t223 = load i32, ptr %l2, !range !{i32 0, i32 113}
  %t225 = trunc i64 104 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb70
bb53:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/parse:Parser", ptr %t228, i32 0, i32 47
  %t231 = load i1, ptr %t230, !tbaa !21
  br i1 %t231, label %bb54, label %bb55
bb54:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i32, ptr %l1, !tbaa !23
  %t237 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadjacent(ptr %v0, ptr %v1, ptr %t233, i32 %t234)
  %t238 = extractvalue { i32, ptr } %t237, 1
  %t239 = extractvalue { i32, ptr } %t237, 0
  store i32 %t239, ptr %l89
  %t240 = icmp ne i32 %t239, 0
  br i1 %t240, label %bb57, label %ok.241, !prof !99
ok.241:
  store ptr %t238, ptr %l88
  br label %bb56
bb55:
  br label %bb59
bb56:
  %t242 = load ptr, ptr %l88, !tbaa !29
  store ptr %t242, ptr %l85, !tbaa !29
  br label %bb58
bb57:
  %t243 = load i32, ptr %l89, !tbaa !23
  %t244 = lshr i32 %t243, 16
  %t245 = and i32 %t243, 65535
  %t246 = icmp eq i32 %t244, 1
  %t247 = select i1 %t246, i32 1, i32 0
  %t248 = icmp eq i32 %t243, 0
  %t249 = shl i32 %t247, 16
  %t250 = or i32 %t249, %t245
  %t251 = select i1 %t248, i32 0, i32 %t250
  %t253 = insertvalue { i32, ptr } zeroinitializer, i32 %t251, 0
  store { i32, ptr } %t253, ptr %rv
  br label %ret
bb58:
  %t254 = load ptr, ptr %l85, !tbaa !29
  %t255 = insertvalue { i32, ptr } zeroinitializer, ptr %t254, 1
  store { i32, ptr } %t255, ptr %rv
  br label %ret
bb59:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t259 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t256, i32 5)
  store i1 %t259, ptr %l93
  br label %bb60
bb60:
  %t260 = load i1, ptr %l93, !tbaa !21
  br i1 %t260, label %bb61, label %bb62
bb61:
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t263 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epostfix(ptr %v0, ptr %v1, ptr %t261)
  %t264 = extractvalue { i32, ptr } %t263, 1
  %t265 = extractvalue { i32, ptr } %t263, 0
  store i32 %t265, ptr %l97
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb64, label %ok.267, !prof !99
ok.267:
  store ptr %t264, ptr %l96
  br label %bb63
bb62:
  br label %bb66
bb63:
  %t268 = load ptr, ptr %l96, !tbaa !29
  store ptr %t268, ptr %l94, !tbaa !29
  br label %bb65
bb64:
  %t269 = load i32, ptr %l97, !tbaa !23
  %t270 = lshr i32 %t269, 16
  %t271 = and i32 %t269, 65535
  %t272 = icmp eq i32 %t270, 1
  %t273 = select i1 %t272, i32 1, i32 0
  %t274 = icmp eq i32 %t269, 0
  %t275 = shl i32 %t273, 16
  %t276 = or i32 %t275, %t271
  %t277 = select i1 %t274, i32 0, i32 %t276
  %t279 = insertvalue { i32, ptr } zeroinitializer, i32 %t277, 0
  store { i32, ptr } %t279, ptr %rv
  br label %ret
bb65:
  %t280 = load ptr, ptr %l94, !tbaa !29
  %t281 = insertvalue { i32, ptr } zeroinitializer, ptr %t280, 1
  store { i32, ptr } %t281, ptr %rv
  br label %ret
bb66:
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2erendering(ptr %v0, ptr %v1, ptr %t282)
  %t285 = extractvalue { i32, ptr } %t284, 1
  %t286 = extractvalue { i32, ptr } %t284, 0
  store i32 %t286, ptr %l102
  %t287 = icmp ne i32 %t286, 0
  br i1 %t287, label %bb68, label %ok.288, !prof !99
ok.288:
  store ptr %t285, ptr %l101
  br label %bb67
bb67:
  %t289 = load ptr, ptr %l101, !tbaa !29
  store ptr %t289, ptr %l99, !tbaa !29
  br label %bb69
bb68:
  %t290 = load i32, ptr %l102, !tbaa !23
  %t291 = lshr i32 %t290, 16
  %t292 = and i32 %t290, 65535
  %t293 = icmp eq i32 %t291, 1
  %t294 = select i1 %t293, i32 1, i32 0
  %t295 = icmp eq i32 %t290, 0
  %t296 = shl i32 %t294, 16
  %t297 = or i32 %t296, %t292
  %t298 = select i1 %t295, i32 0, i32 %t297
  %t300 = insertvalue { i32, ptr } zeroinitializer, i32 %t298, 0
  store { i32, ptr } %t300, ptr %rv
  br label %ret
bb69:
  %t301 = load ptr, ptr %l99, !tbaa !29
  %t302 = insertvalue { i32, ptr } zeroinitializer, ptr %t301, 1
  store { i32, ptr } %t302, ptr %rv
  br label %ret
bb70:
  br i1 true, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb77
bb73:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t305 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epower(ptr %v0, ptr %v1, ptr %t303)
  %t306 = extractvalue { i32, ptr } %t305, 1
  %t307 = extractvalue { i32, ptr } %t305, 0
  store i32 %t307, ptr %l107
  %t308 = icmp ne i32 %t307, 0
  br i1 %t308, label %bb75, label %ok.309, !prof !99
ok.309:
  store ptr %t306, ptr %l106
  br label %bb74
bb74:
  %t310 = load ptr, ptr %l106, !tbaa !29
  store ptr %t310, ptr %l104, !tbaa !29
  br label %bb76
bb75:
  %t311 = load i32, ptr %l107, !tbaa !23
  %t312 = lshr i32 %t311, 16
  %t313 = and i32 %t311, 65535
  %t314 = icmp eq i32 %t312, 1
  %t315 = select i1 %t314, i32 1, i32 0
  %t316 = icmp eq i32 %t311, 0
  %t317 = shl i32 %t315, 16
  %t318 = or i32 %t317, %t313
  %t319 = select i1 %t316, i32 0, i32 %t318
  %t321 = insertvalue { i32, ptr } zeroinitializer, i32 %t319, 0
  store { i32, ptr } %t321, ptr %rv
  br label %ret
bb76:
  %t322 = load ptr, ptr %l104, !tbaa !29
  %t323 = insertvalue { i32, ptr } zeroinitializer, ptr %t322, 1
  store { i32, ptr } %t323, ptr %rv
  br label %ret
bb77:
  call void @__olang_check_failed(ptr @olang_loc_5787450c8afeca22_493a6afca2796a86)
  unreachable
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2evalueAfterEq(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
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
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i32
  %l43 = alloca i1
  %l46 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l70 = alloca i1
  %l78 = alloca i1
  %l79 = alloca { i64, ptr }
  %l83 = alloca i1
  %l84 = alloca { i64, ptr }
  %l95 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l101 = alloca { i64, ptr }
  %l112 = alloca i1
  %l113 = alloca { i64, ptr }
  %l117 = alloca i1
  %l118 = alloca { i64, ptr }
  %l125 = alloca { i64, ptr }
  %l126 = alloca i64
  %l129 = alloca i64
  %l130 = alloca i64
  %l135 = alloca i1
  %l141 = alloca i1
  %l142 = alloca { i64, ptr }
  %l154 = alloca i1
  %l155 = alloca { i64, ptr }
  %l166 = alloca i1
  %l176 = alloca i64
  %l179 = alloca i64
  %l197 = alloca { i64, ptr }
  %l201 = alloca i1
  %l202 = alloca { i64, ptr }
  %l206 = alloca i1
  %l207 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l225 = alloca { i64, ptr }
  %l239 = alloca { i64, ptr }
  %l240 = alloca i64
  %l241 = alloca i64
  %l242 = alloca i64
  %l246 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l248 = alloca i64
  %l250 = alloca i64
  %l251 = alloca i64
  %l257 = alloca ptr
  %l258 = alloca i64
  %l259 = alloca { i64, ptr }
  %l260 = alloca i64
  %l261 = alloca i64
  %l262 = alloca i64
  %l266 = alloca { i64, ptr }
  %l267 = alloca { i64, ptr }
  %l268 = alloca { i64, ptr }
  %l269 = alloca i64
  %l270 = alloca i64
  %l271 = alloca i64
  %l277 = alloca %"compiler/diagmsg:Msg"
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/parse:Parser", ptr %t1, i32 0, i32 1
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/scan:Tokens", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l24, !tbaa !27
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/token:Token", ptr %t11, i64 %t8
  %t13 = getelementptr %"compiler/token:Token", ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  store i64 %t16, ptr %l2, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/parse:Parser", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  store ptr %t21, ptr %l29, !tbaa !29
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineAt(ptr %v0, ptr %t22, i64 %t23)
  store i64 %t26, ptr %l32
  br label %bb1
bb1:
  %t27 = load i64, ptr %l32, !tbaa !24
  %t28 = trunc i64 %t27 to i32
  %t29 = load ptr, ptr %l29, !tbaa !29
  %t31 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLineStart(ptr %v0, ptr %t29, i32 %t28)
  store i32 %t31, ptr %l34
  br label %bb2
bb2:
  %t32 = load i32, ptr %l34, !tbaa !23
  %t33 = sext i32 %t32 to i64
  store i64 %t33, ptr %l3, !tbaa !24
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t37 = load i64, ptr %l4, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/parse:Parser", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = getelementptr %"compiler/source:Source", ptr %t41, i32 0, i32 1
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t49 = icmp slt i64 %t37, %t46
  br i1 %t49, label %bb4, label %bb5
bb4:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/parse:Parser", ptr %t51, i32 0, i32 0
  %t54 = load ptr, ptr %t53, !tbaa !29
  %t56 = getelementptr %"compiler/source:Source", ptr %t54, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l46, !tbaa !27
  %t58 = load i64, ptr %l4, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr i8, ptr %t61, i64 %t58
  %t63 = load i8, ptr %t62, !tbaa !32
  %t65 = icmp ne i8 %t63, 10
  store i1 %t65, ptr %l43, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb6
bb6:
  %t67 = load i1, ptr %l43, !tbaa !21
  %t68 = xor i1 %t67, true
  br i1 %t68, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = add i64 %t70, 1
  store i64 %t72, ptr %l4, !tbaa !24
  br label %bb10
bb10:
  br label %bb3
bb11:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/parse:Parser", ptr %t74, i32 0, i32 0
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t79 = getelementptr %"compiler/source:Source", ptr %t77, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79, !tbaa !27
  store { i64, ptr } %t80, ptr %l55, !tbaa !27
  %t81 = load i64, ptr %l3, !tbaa !24
  store i64 %t81, ptr %l56, !tbaa !24
  %t82 = load i64, ptr %l4, !tbaa !24
  store i64 %t82, ptr %l57, !tbaa !24
  %t83 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l58, !tbaa !24
  %t85 = load i64, ptr %l56, !tbaa !24
  %t86 = icmp sge i64 %t85, 0
  br i1 %t86, label %bb12, label %bb13
bb12:
  %t88 = load i64, ptr %l56, !tbaa !24
  %t89 = load i64, ptr %l57, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_4582cd3e20803687_2be8b05c8d066113)
  unreachable
bb14:
  %t92 = load i64, ptr %l57, !tbaa !24
  %t93 = load i64, ptr %l58, !tbaa !24
  %t94 = icmp sle i64 %t92, %t93
  br i1 %t94, label %bb16, label %bb17
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4582cd3e20803687_2be8b05c8d066113)
  unreachable
bb16:
  %t96 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = load i64, ptr %l56, !tbaa !24
  %t99 = load i64, ptr %l57, !tbaa !24
  %t100 = getelementptr i8, ptr %t97, i64 %t98
  %t101 = sub i64 %t99, %t98
  %t102 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t100, 1
  store { i64, ptr } %t103, ptr %l5, !tbaa !27
  %t105 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t107 = extractvalue { i64, ptr } %t105, 0
  store i64 %t107, ptr %l6, !tbaa !24
  %t109 = load i64, ptr %l2, !tbaa !24
  %t110 = load i64, ptr %l3, !tbaa !24
  %t113 = sub i64 %t109, %t110
  store i64 %t113, ptr %l7, !tbaa !24
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = icmp sle i64 %t115, 0
  br i1 %t117, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_4582cd3e20803687_2be8b05c8d066113)
  unreachable
bb18:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb20
bb19:
  %t119 = load i64, ptr %l7, !tbaa !24
  %t120 = load i64, ptr %l6, !tbaa !24
  %t123 = icmp sge i64 %t119, %t120
  store i1 %t123, ptr %l70, !tbaa !21
  br label %bb20
bb20:
  %t125 = load i1, ptr %l70, !tbaa !21
  br i1 %t125, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb24
bb24:
  %t127 = load i64, ptr %l8, !tbaa !24
  %t128 = load i64, ptr %l7, !tbaa !24
  %t131 = icmp slt i64 %t127, %t128
  br i1 %t131, label %bb25, label %bb26
bb25:
  %t133 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t133, ptr %l79, !tbaa !27
  %t134 = load i64, ptr %l8, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr i8, ptr %t137, i64 %t134
  %t139 = load i8, ptr %t138, !tbaa !32
  %t141 = icmp eq i8 %t139, 32
  br i1 %t141, label %bb27, label %bb28
bb26:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb30
bb27:
  store i1 true, ptr %l83, !tbaa !21
  br label %bb29
bb28:
  %t143 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t143, ptr %l84, !tbaa !27
  %t144 = load i64, ptr %l8, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr i8, ptr %t147, i64 %t144
  %t149 = load i8, ptr %t148, !tbaa !32
  %t151 = icmp eq i8 %t149, 9
  store i1 %t151, ptr %l83, !tbaa !21
  br label %bb29
bb29:
  %t153 = load i1, ptr %l83, !tbaa !21
  store i1 %t153, ptr %l78, !tbaa !21
  br label %bb30
bb30:
  %t154 = load i1, ptr %l78, !tbaa !21
  %t155 = xor i1 %t154, true
  br i1 %t155, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  br label %bb33
bb33:
  %t157 = load i64, ptr %l8, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l8, !tbaa !24
  br label %bb34
bb34:
  br label %bb24
bb35:
  %t161 = load i64, ptr %l8, !tbaa !24
  store i64 %t161, ptr %l9, !tbaa !24
  br label %bb36
bb36:
  %t163 = load i64, ptr %l8, !tbaa !24
  %t164 = load i64, ptr %l7, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  br i1 %t167, label %bb37, label %bb38
bb37:
  %t169 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t169, ptr %l96, !tbaa !27
  %t170 = load i64, ptr %l8, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i8, ptr %t173, i64 %t170
  %t175 = load i8, ptr %t174, !tbaa !32
  %t177 = icmp ne i8 %t175, 32
  store i1 %t177, ptr %l95, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb39
bb39:
  %t179 = load i1, ptr %l95, !tbaa !21
  br i1 %t179, label %bb40, label %bb41
bb40:
  %t180 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t180, ptr %l101, !tbaa !27
  %t181 = load i64, ptr %l8, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr i8, ptr %t184, i64 %t181
  %t186 = load i8, ptr %t185, !tbaa !32
  %t188 = icmp ne i8 %t186, 9
  store i1 %t188, ptr %l100, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb42
bb42:
  %t190 = load i1, ptr %l100, !tbaa !21
  %t191 = xor i1 %t190, true
  br i1 %t191, label %bb43, label %bb44
bb43:
  br label %bb47
bb44:
  br label %bb45
bb45:
  %t193 = load i64, ptr %l8, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l8, !tbaa !24
  br label %bb46
bb46:
  br label %bb36
bb47:
  %t197 = load i64, ptr %l8, !tbaa !24
  store i64 %t197, ptr %l10, !tbaa !24
  br label %bb48
bb48:
  %t199 = load i64, ptr %l8, !tbaa !24
  %t200 = load i64, ptr %l7, !tbaa !24
  %t203 = icmp slt i64 %t199, %t200
  br i1 %t203, label %bb49, label %bb50
bb49:
  %t205 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t205, ptr %l113, !tbaa !27
  %t206 = load i64, ptr %l8, !tbaa !24
  %t208 = getelementptr { i64, ptr }, ptr %l113, i32 0, i32 1
  %t209 = load ptr, ptr %t208, !tbaa !27
  %t210 = getelementptr i8, ptr %t209, i64 %t206
  %t211 = load i8, ptr %t210, !tbaa !32
  %t213 = icmp eq i8 %t211, 32
  br i1 %t213, label %bb51, label %bb52
bb50:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb54
bb51:
  store i1 true, ptr %l117, !tbaa !21
  br label %bb53
bb52:
  %t215 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t215, ptr %l118, !tbaa !27
  %t216 = load i64, ptr %l8, !tbaa !24
  %t218 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr i8, ptr %t219, i64 %t216
  %t221 = load i8, ptr %t220, !tbaa !32
  %t223 = icmp eq i8 %t221, 9
  store i1 %t223, ptr %l117, !tbaa !21
  br label %bb53
bb53:
  %t225 = load i1, ptr %l117, !tbaa !21
  store i1 %t225, ptr %l112, !tbaa !21
  br label %bb54
bb54:
  %t226 = load i1, ptr %l112, !tbaa !21
  %t227 = xor i1 %t226, true
  br i1 %t227, label %bb55, label %bb56
bb55:
  br label %bb59
bb56:
  br label %bb57
bb57:
  %t229 = load i64, ptr %l8, !tbaa !24
  %t231 = add i64 %t229, 1
  store i64 %t231, ptr %l8, !tbaa !24
  br label %bb58
bb58:
  br label %bb48
bb59:
  %t233 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t233, ptr %l125, !tbaa !27
  %t234 = load i64, ptr %l8, !tbaa !24
  store i64 %t234, ptr %l126, !tbaa !24
  %t235 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t235, 0
  store i64 %t238, ptr %l129, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 0
  store i64 %t240, ptr %l130, !tbaa !24
  %t241 = load i64, ptr %l126, !tbaa !24
  %t242 = icmp sge i64 %t241, 0
  br i1 %t242, label %bb60, label %bb61
bb60:
  %t244 = load i64, ptr %l126, !tbaa !24
  %t245 = load i64, ptr %l129, !tbaa !24
  %t246 = icmp sle i64 %t244, %t245
  br i1 %t246, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_84149e0bf5f8d0aa_2bd7ba413482fcb6)
  unreachable
bb62:
  %t248 = load i64, ptr %l129, !tbaa !24
  %t249 = load i64, ptr %l130, !tbaa !24
  %t250 = icmp sle i64 %t248, %t249
  br i1 %t250, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_84149e0bf5f8d0aa_2bd7ba413482fcb6)
  unreachable
bb64:
  %t252 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t253 = load ptr, ptr %t252, !tbaa !27
  %t254 = load i64, ptr %l126, !tbaa !24
  %t255 = load i64, ptr %l129, !tbaa !24
  %t256 = getelementptr i8, ptr %t253, i64 %t254
  %t257 = sub i64 %t255, %t254
  %t258 = insertvalue { i64, ptr } undef, i64 %t257, 0
  %t259 = insertvalue { i64, ptr } %t258, ptr %t256, 1
  %t261 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t259, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t261, ptr %l135
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_84149e0bf5f8d0aa_2bd7ba413482fcb6)
  unreachable
bb66:
  %t262 = load i1, ptr %l135, !tbaa !21
  br i1 %t262, label %bb67, label %bb68
bb67:
  %t263 = load i64, ptr %l8, !tbaa !24
  %t265 = add i64 %t263, 4
  store i64 %t265, ptr %l8, !tbaa !24
  br label %bb69
bb68:
  br label %bb78
bb69:
  %t267 = load i64, ptr %l8, !tbaa !24
  %t268 = load i64, ptr %l7, !tbaa !24
  %t271 = icmp slt i64 %t267, %t268
  br i1 %t271, label %bb70, label %bb71
bb70:
  %t273 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t273, ptr %l142, !tbaa !27
  %t274 = load i64, ptr %l8, !tbaa !24
  %t276 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr i8, ptr %t277, i64 %t274
  %t279 = load i8, ptr %t278, !tbaa !32
  %t281 = icmp eq i8 %t279, 32
  store i1 %t281, ptr %l141, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb72
bb72:
  %t283 = load i1, ptr %l141, !tbaa !21
  %t284 = xor i1 %t283, true
  br i1 %t284, label %bb73, label %bb74
bb73:
  br label %bb77
bb74:
  br label %bb75
bb75:
  %t286 = load i64, ptr %l8, !tbaa !24
  %t288 = add i64 %t286, 1
  store i64 %t288, ptr %l8, !tbaa !24
  br label %bb76
bb76:
  br label %bb69
bb77:
  br label %bb78
bb78:
  %t290 = load i64, ptr %l8, !tbaa !24
  store i64 %t290, ptr %l11, !tbaa !24
  %t292 = load i64, ptr %l7, !tbaa !24
  store i64 %t292, ptr %l12, !tbaa !24
  br label %bb79
bb79:
  %t294 = load i64, ptr %l12, !tbaa !24
  %t295 = load i64, ptr %l11, !tbaa !24
  %t298 = icmp sgt i64 %t294, %t295
  br i1 %t298, label %bb80, label %bb81
bb80:
  %t300 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t300, ptr %l155, !tbaa !27
  %t301 = load i64, ptr %l12, !tbaa !24
  %t303 = sub i64 %t301, 1
  %t305 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr i8, ptr %t306, i64 %t303
  %t308 = load i8, ptr %t307, !tbaa !32
  %t310 = icmp eq i8 %t308, 32
  store i1 %t310, ptr %l154, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb82
bb82:
  %t312 = load i1, ptr %l154, !tbaa !21
  %t313 = xor i1 %t312, true
  br i1 %t313, label %bb83, label %bb84
bb83:
  br label %bb87
bb84:
  br label %bb85
bb85:
  %t315 = load i64, ptr %l12, !tbaa !24
  %t317 = sub i64 %t315, 1
  store i64 %t317, ptr %l12, !tbaa !24
  br label %bb86
bb86:
  br label %bb79
bb87:
  %t319 = load i64, ptr %l10, !tbaa !24
  %t320 = load i64, ptr %l9, !tbaa !24
  %t323 = icmp eq i64 %t319, %t320
  br i1 %t323, label %bb88, label %bb89
bb88:
  store i1 true, ptr %l166, !tbaa !21
  br label %bb90
bb89:
  %t325 = load i64, ptr %l12, !tbaa !24
  %t326 = load i64, ptr %l11, !tbaa !24
  %t329 = icmp eq i64 %t325, %t326
  store i1 %t329, ptr %l166, !tbaa !21
  br label %bb90
bb90:
  %t331 = load i1, ptr %l166, !tbaa !21
  br i1 %t331, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb92:
  br label %bb93
bb93:
  %t333 = load i64, ptr %l9, !tbaa !24
  store i64 %t333, ptr %l13, !tbaa !24
  %t335 = load i64, ptr %l7, !tbaa !24
  store i64 %t335, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t337 = load i64, ptr %l14, !tbaa !24
  %t338 = load i64, ptr %l13, !tbaa !24
  %t341 = icmp sgt i64 %t337, %t338
  br i1 %t341, label %bb94, label %bb95
bb94:
  %t343 = load i64, ptr %l15, !tbaa !24
  %t345 = icmp sgt i64 %t343, 0
  br i1 %t345, label %bb96, label %bb97
bb95:
  store i64 0, ptr %l176, !tbaa !24
  br label %bb99
bb96:
  %t347 = load i64, ptr %l14, !tbaa !24
  %t348 = load i64, ptr %l13, !tbaa !24
  %t351 = sub i64 %t347, %t348
  %t352 = load i64, ptr %l15, !tbaa !24
  %t355 = add i64 %t351, %t352
  %t357 = sub i64 %t355, 1
  %t358 = load i64, ptr %l15, !tbaa !24
  %t361 = sdiv i64 %t357, %t358
  store i64 %t361, ptr %l179, !tbaa !24
  br label %bb98
bb97:
  store i64 0, ptr %l179, !tbaa !24
  br label %bb98
bb98:
  %t363 = load i64, ptr %l179, !tbaa !24
  store i64 %t363, ptr %l176, !tbaa !24
  br label %bb99
bb99:
  %t364 = load i64, ptr %l176, !tbaa !24
  store i64 %t364, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb100
bb100:
  %t365 = load i64, ptr %l17, !tbaa !24
  %t366 = load i64, ptr %l16, !tbaa !24
  %t369 = icmp slt i64 %t365, %t366
  %t371 = xor i1 %t369, true
  br i1 %t371, label %bb101, label %bb102
bb101:
  br label %bb114
bb102:
  br label %bb103
bb103:
  %t373 = load i64, ptr %l13, !tbaa !24
  %t374 = load i64, ptr %l17, !tbaa !24
  %t375 = load i64, ptr %l15, !tbaa !24
  %t378 = mul i64 %t374, %t375
  %t381 = add i64 %t373, %t378
  store i64 %t381, ptr %l18, !tbaa !24
  %t383 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t383, ptr %l197, !tbaa !27
  %t384 = load i64, ptr %l18, !tbaa !24
  %t386 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t387 = load ptr, ptr %t386, !tbaa !27
  %t388 = getelementptr i8, ptr %t387, i64 %t384
  %t389 = load i8, ptr %t388, !tbaa !32
  %t391 = icmp eq i8 %t389, 61
  br i1 %t391, label %bb104, label %bb105
bb104:
  store i1 true, ptr %l201, !tbaa !21
  br label %bb106
bb105:
  %t393 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t393, ptr %l202, !tbaa !27
  %t394 = load i64, ptr %l18, !tbaa !24
  %t396 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t397 = load ptr, ptr %t396, !tbaa !27
  %t398 = getelementptr i8, ptr %t397, i64 %t394
  %t399 = load i8, ptr %t398, !tbaa !32
  %t401 = icmp eq i8 %t399, 58
  store i1 %t401, ptr %l201, !tbaa !21
  br label %bb106
bb106:
  %t403 = load i1, ptr %l201, !tbaa !21
  br i1 %t403, label %bb107, label %bb108
bb107:
  store i1 true, ptr %l206, !tbaa !21
  br label %bb109
bb108:
  %t404 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t404, ptr %l207, !tbaa !27
  %t405 = load i64, ptr %l18, !tbaa !24
  %t407 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t408 = load ptr, ptr %t407, !tbaa !27
  %t409 = getelementptr i8, ptr %t408, i64 %t405
  %t410 = load i8, ptr %t409, !tbaa !32
  %t412 = icmp eq i8 %t410, 40
  store i1 %t412, ptr %l206, !tbaa !21
  br label %bb109
bb109:
  %t414 = load i1, ptr %l206, !tbaa !21
  br i1 %t414, label %bb110, label %bb111
bb110:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb111:
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t416 = load i64, ptr %l17, !tbaa !24
  %t418 = add i64 %t416, 1
  store i64 %t418, ptr %l17, !tbaa !24
  br label %bb100
bb114:
  store i64 0, ptr %l19, !tbaa !24
  %t420 = load i64, ptr %l7, !tbaa !24
  store i64 %t420, ptr %l20, !tbaa !24
  br label %bb115
bb115:
  %t422 = load i64, ptr %l20, !tbaa !24
  %t423 = load i64, ptr %l6, !tbaa !24
  %t426 = icmp slt i64 %t422, %t423
  %t428 = xor i1 %t426, true
  br i1 %t428, label %bb116, label %bb117
bb116:
  br label %bb129
bb117:
  br label %bb118
bb118:
  %t430 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t430, ptr %l219, !tbaa !27
  %t431 = load i64, ptr %l20, !tbaa !24
  %t433 = getelementptr { i64, ptr }, ptr %l219, i32 0, i32 1
  %t434 = load ptr, ptr %t433, !tbaa !27
  %t435 = getelementptr i8, ptr %t434, i64 %t431
  %t436 = load i8, ptr %t435, !tbaa !32
  %t438 = icmp eq i8 %t436, 40
  br i1 %t438, label %bb119, label %bb120
bb119:
  %t440 = load i64, ptr %l19, !tbaa !24
  %t442 = add i64 %t440, 1
  store i64 %t442, ptr %l19, !tbaa !24
  br label %bb127
bb120:
  %t444 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t444, ptr %l225, !tbaa !27
  %t445 = load i64, ptr %l20, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l225, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr i8, ptr %t448, i64 %t445
  %t450 = load i8, ptr %t449, !tbaa !32
  %t452 = icmp eq i8 %t450, 41
  br i1 %t452, label %bb121, label %bb122
bb121:
  %t454 = load i64, ptr %l19, !tbaa !24
  %t456 = sub i64 %t454, 1
  store i64 %t456, ptr %l19, !tbaa !24
  %t458 = load i64, ptr %l19, !tbaa !24
  %t460 = icmp eq i64 %t458, 0
  br i1 %t460, label %bb123, label %bb124
bb122:
  br label %bb126
bb123:
  br label %bb129
bb124:
  br label %bb125
bb125:
  br label %bb126
bb126:
  br label %bb127
bb127:
  %t462 = load i64, ptr %l20, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l20, !tbaa !24
  br label %bb128
bb128:
  br label %bb115
bb129:
  %t466 = load i64, ptr %l20, !tbaa !24
  %t467 = load i64, ptr %l6, !tbaa !24
  %t470 = icmp sge i64 %t466, %t467
  br i1 %t470, label %bb130, label %bb131
bb130:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb131:
  br label %bb132
bb132:
  %t473 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t473, ptr %l239, !tbaa !27
  %t474 = load i64, ptr %l11, !tbaa !24
  store i64 %t474, ptr %l240, !tbaa !24
  %t475 = load i64, ptr %l12, !tbaa !24
  store i64 %t475, ptr %l241, !tbaa !24
  %t476 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t477 = extractvalue { i64, ptr } %t476, 0
  store i64 %t477, ptr %l242, !tbaa !24
  %t478 = load i64, ptr %l240, !tbaa !24
  %t479 = icmp sge i64 %t478, 0
  br i1 %t479, label %bb133, label %bb134
bb133:
  %t481 = load i64, ptr %l240, !tbaa !24
  %t482 = load i64, ptr %l241, !tbaa !24
  %t483 = icmp sle i64 %t481, %t482
  br i1 %t483, label %bb135, label %bb136
bb134:
  call void @__olang_check_failed(ptr @olang_loc_8e37d10a9f86ee49_f510a1627c721295)
  unreachable
bb135:
  %t485 = load i64, ptr %l241, !tbaa !24
  %t486 = load i64, ptr %l242, !tbaa !24
  %t487 = icmp sle i64 %t485, %t486
  br i1 %t487, label %bb137, label %bb138
bb136:
  call void @__olang_check_failed(ptr @olang_loc_8e37d10a9f86ee49_f510a1627c721295)
  unreachable
bb137:
  %t489 = getelementptr { i64, ptr }, ptr %l239, i32 0, i32 1
  %t490 = load ptr, ptr %t489, !tbaa !27
  %t491 = load i64, ptr %l240, !tbaa !24
  %t492 = load i64, ptr %l241, !tbaa !24
  %t493 = getelementptr i8, ptr %t490, i64 %t491
  %t494 = sub i64 %t492, %t491
  %t495 = insertvalue { i64, ptr } undef, i64 %t494, 0
  %t496 = insertvalue { i64, ptr } %t495, ptr %t493, 1
  store { i64, ptr } %t496, ptr %l246, !tbaa !27
  %t497 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t497, ptr %l247, !tbaa !27
  %t498 = load i64, ptr %l7, !tbaa !24
  store i64 %t498, ptr %l248, !tbaa !24
  %t499 = load i64, ptr %l20, !tbaa !24
  %t501 = add i64 %t499, 1
  store i64 %t501, ptr %l250, !tbaa !24
  %t502 = load { i64, ptr }, ptr %l247, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t502, 0
  store i64 %t503, ptr %l251, !tbaa !24
  %t504 = load i64, ptr %l248, !tbaa !24
  %t505 = icmp sge i64 %t504, 0
  br i1 %t505, label %bb139, label %bb140
bb138:
  call void @__olang_check_failed(ptr @olang_loc_8e37d10a9f86ee49_f510a1627c721295)
  unreachable
bb139:
  %t507 = load i64, ptr %l248, !tbaa !24
  %t508 = load i64, ptr %l250, !tbaa !24
  %t509 = icmp sle i64 %t507, %t508
  br i1 %t509, label %bb141, label %bb142
bb140:
  call void @__olang_check_failed(ptr @olang_loc_8e37d10a9f86ee49_f510a1627c721295)
  unreachable
bb141:
  %t511 = load i64, ptr %l250, !tbaa !24
  %t512 = load i64, ptr %l251, !tbaa !24
  %t513 = icmp sle i64 %t511, %t512
  br i1 %t513, label %bb143, label %bb144
bb142:
  call void @__olang_check_failed(ptr @olang_loc_8e37d10a9f86ee49_f510a1627c721295)
  unreachable
bb143:
  %t515 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t516 = load ptr, ptr %t515, !tbaa !27
  %t517 = load i64, ptr %l248, !tbaa !24
  %t518 = load i64, ptr %l250, !tbaa !24
  %t519 = getelementptr i8, ptr %t516, i64 %t517
  %t520 = sub i64 %t518, %t517
  %t521 = insertvalue { i64, ptr } undef, i64 %t520, 0
  %t522 = insertvalue { i64, ptr } %t521, ptr %t519, 1
  %t523 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t524 = extractvalue { i64, ptr } %t523, 1
  %t525 = extractvalue { i64, ptr } %t523, 0
  %t527 = extractvalue { i64, ptr } %t522, 1
  %t528 = extractvalue { i64, ptr } %t522, 0
  %t529 = add i64 %t525, %t528
  %t530 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t529)
  call void @olang_textcopy(ptr %t530, ptr %t524, i64 %t525)
  %t531 = getelementptr i8, ptr %t530, i64 %t525
  call void @olang_textcopy(ptr %t531, ptr %t527, i64 %t528)
  %t532 = insertvalue { i64, ptr } undef, i64 %t529, 0
  %t533 = insertvalue { i64, ptr } %t532, ptr %t530, 1
  store { i64, ptr } %t533, ptr %l21, !tbaa !27
  %t535 = load ptr, ptr %l0, !tbaa !29
  store ptr %t535, ptr %l257, !tbaa !29
  %t536 = load i64, ptr %l1, !tbaa !24
  store i64 %t536, ptr %l258, !tbaa !24
  %t537 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t537, ptr %l259, !tbaa !27
  %t538 = load i64, ptr %l9, !tbaa !24
  store i64 %t538, ptr %l260, !tbaa !24
  %t539 = load i64, ptr %l12, !tbaa !24
  store i64 %t539, ptr %l261, !tbaa !24
  %t540 = load { i64, ptr }, ptr %l259, !tbaa !27
  %t541 = extractvalue { i64, ptr } %t540, 0
  store i64 %t541, ptr %l262, !tbaa !24
  %t542 = load i64, ptr %l260, !tbaa !24
  %t543 = icmp sge i64 %t542, 0
  br i1 %t543, label %bb145, label %bb146
bb144:
  call void @__olang_check_failed(ptr @olang_loc_8e37d10a9f86ee49_f510a1627c721295)
  unreachable
bb145:
  %t545 = load i64, ptr %l260, !tbaa !24
  %t546 = load i64, ptr %l261, !tbaa !24
  %t547 = icmp sle i64 %t545, %t546
  br i1 %t547, label %bb147, label %bb148
bb146:
  call void @__olang_check_failed(ptr @olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8)
  unreachable
bb147:
  %t549 = load i64, ptr %l261, !tbaa !24
  %t550 = load i64, ptr %l262, !tbaa !24
  %t551 = icmp sle i64 %t549, %t550
  br i1 %t551, label %bb149, label %bb150
bb148:
  call void @__olang_check_failed(ptr @olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8)
  unreachable
bb149:
  %t553 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t554 = load ptr, ptr %t553, !tbaa !27
  %t555 = load i64, ptr %l260, !tbaa !24
  %t556 = load i64, ptr %l261, !tbaa !24
  %t557 = getelementptr i8, ptr %t554, i64 %t555
  %t558 = sub i64 %t556, %t555
  %t559 = insertvalue { i64, ptr } undef, i64 %t558, 0
  %t560 = insertvalue { i64, ptr } %t559, ptr %t557, 1
  store { i64, ptr } %t560, ptr %l266, !tbaa !27
  %t561 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t561, ptr %l267, !tbaa !27
  %t562 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t562, ptr %l268, !tbaa !27
  %t563 = load i64, ptr %l9, !tbaa !24
  store i64 %t563, ptr %l269, !tbaa !24
  %t564 = load i64, ptr %l10, !tbaa !24
  store i64 %t564, ptr %l270, !tbaa !24
  %t565 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t566 = extractvalue { i64, ptr } %t565, 0
  store i64 %t566, ptr %l271, !tbaa !24
  %t567 = load i64, ptr %l269, !tbaa !24
  %t568 = icmp sge i64 %t567, 0
  br i1 %t568, label %bb151, label %bb152
bb150:
  call void @__olang_check_failed(ptr @olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8)
  unreachable
bb151:
  %t570 = load i64, ptr %l269, !tbaa !24
  %t571 = load i64, ptr %l270, !tbaa !24
  %t572 = icmp sle i64 %t570, %t571
  br i1 %t572, label %bb153, label %bb154
bb152:
  call void @__olang_check_failed(ptr @olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8)
  unreachable
bb153:
  %t574 = load i64, ptr %l270, !tbaa !24
  %t575 = load i64, ptr %l271, !tbaa !24
  %t576 = icmp sle i64 %t574, %t575
  br i1 %t576, label %bb155, label %bb156
bb154:
  call void @__olang_check_failed(ptr @olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8)
  unreachable
bb155:
  %t578 = getelementptr { i64, ptr }, ptr %l268, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = load i64, ptr %l269, !tbaa !24
  %t581 = load i64, ptr %l270, !tbaa !24
  %t582 = getelementptr i8, ptr %t579, i64 %t580
  %t583 = sub i64 %t581, %t580
  %t584 = insertvalue { i64, ptr } undef, i64 %t583, 0
  %t585 = insertvalue { i64, ptr } %t584, ptr %t582, 1
  %t586 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t587 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t588 = load { i64, ptr }, ptr %l267, !tbaa !27
  %t591 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueAfterEq(ptr %v0, ptr %s0, ptr %v0, ptr %s0, ptr %v0, { i64, ptr } %t587, { i64, ptr } %t588, { i64, ptr } %t585, { i64, ptr } %t586)
  store %"compiler/diagmsg:Msg" %t591, ptr %l277
  br label %bb157
bb156:
  call void @__olang_check_failed(ptr @olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8)
  unreachable
bb157:
  %t592 = load ptr, ptr %l257, !tbaa !29
  %t593 = load i64, ptr %l258, !tbaa !24
  %t594 = load %"compiler/diagmsg:Msg", ptr %l277
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereportAt(ptr %v0, ptr %v0, ptr %t592, i64 %t593, %"compiler/diagmsg:Msg" %t594)
  br label %bb158
bb158:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2evarDecl(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/source:Span"
  %lp13 = alloca ptr
  %l14 = alloca %"compiler/source:Span"
  %l15 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i32
  %l25 = alloca %"compiler/source:Span"
  %l28 = alloca i1
  %l31 = alloca i1
  %l37 = alloca i1
  %l47 = alloca i64
  %l50 = alloca i64
  %l69 = alloca { i64, ptr }
  %l72 = alloca i64
  %l75 = alloca { i64, ptr }
  %l77 = alloca i32
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca %"compiler/source:Span"
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l93 = alloca %"compiler/ast:VarDecl"
  %l103 = alloca { i64, ptr }
  %l108 = alloca i32
  %l111 = alloca %"compiler/source:Span"
  %l115 = alloca { i64, ptr }
  %l120 = alloca ptr
  %l124 = alloca i32
  %l130 = alloca i32
  %rv = alloca { i32, ptr }
  %t151 = alloca i64
  %t176 = alloca i64
  %t213 = alloca { i64, [4 x i64] }, align 8
  %t272 = alloca { i64, [4 x i64] }, align 8
  %t289 = alloca { i64, [4 x i64] }, align 8
  %t319 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/parse:Parser", ptr %t3, i32 0, i32 12
  %t6 = load i1, ptr %t5, !tbaa !21
  %t10 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclRest(ptr %v0, ptr %v1, ptr %v2, ptr %t1, ptr %t2, i1 %t6)
  %t11 = extractvalue { i32, ptr } %t10, 1
  %t12 = extractvalue { i32, ptr } %t10, 0
  store i32 %t12, ptr %l21
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  store ptr %t11, ptr %l20
  br label %bb1
bb1:
  %t15 = load ptr, ptr %l20, !tbaa !29
  store ptr %t15, ptr %l15, !tbaa !29
  br label %bb3
bb2:
  %t16 = load i32, ptr %l21, !tbaa !23
  %t17 = lshr i32 %t16, 16
  %t18 = and i32 %t16, 65535
  %t19 = icmp eq i32 %t17, 1
  %t20 = select i1 %t19, i32 1, i32 0
  %t21 = icmp eq i32 %t16, 0
  %t22 = shl i32 %t20, 16
  %t23 = or i32 %t22, %t18
  %t24 = select i1 %t21, i32 0, i32 %t23
  %t26 = insertvalue { i32, ptr } zeroinitializer, i32 %t24, 0
  store { i32, ptr } %t26, ptr %rv
  br label %ret
bb3:
  %t27 = load ptr, ptr %l15, !tbaa !29
  store ptr %t27, ptr %l3, !tbaa !29
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t32 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t28, i32 %a1)
  store %"compiler/source:Span" %t32, ptr %l25
  br label %bb4
bb4:
  %t33 = load %"compiler/source:Span", ptr %l25
  store %"compiler/source:Span" %t33, ptr %l4
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/parse:Parser", ptr %t34, i32 0, i32 12
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb5, label %bb6
bb5:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t39, i32 74)
  store i1 %t42, ptr %l31
  br label %bb7
bb6:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb8
bb7:
  %t43 = load i1, ptr %l31, !tbaa !21
  store i1 %t43, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t44 = load i1, ptr %l28, !tbaa !21
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t45 = load ptr, ptr %l2, !tbaa !29
  %t47 = getelementptr %"compiler/parse:NameList", ptr %t45, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t50 = extractvalue { i64, ptr } %t48, 0
  store i64 %t50, ptr %l5, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp sgt i64 %t52, 1
  br i1 %t54, label %bb11, label %bb12
bb10:
  br label %bb55
bb11:
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t58 = getelementptr %"compiler/ast:VarDecl", ptr %t56, i32 0, i32 3
  %t59 = load { i64, ptr }, ptr %t58, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t59, 0
  %t63 = icmp eq i64 %t61, 0
  store i1 %t63, ptr %l37, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t65 = load i1, ptr %l37, !tbaa !21
  br i1 %t65, label %bb14, label %bb15
bb14:
  store i64 0, ptr %l6, !tbaa !24
  %t66 = load i64, ptr %l5, !tbaa !24
  %t68 = sub i64 %t66, 1
  store i64 %t68, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l6, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb16, label %bb17
bb15:
  br label %bb53
bb16:
  %t76 = load i64, ptr %l8, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l47, !tbaa !24
  br label %bb21
bb18:
  %t80 = load i64, ptr %l7, !tbaa !24
  %t81 = load i64, ptr %l6, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l8, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l50, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l50, !tbaa !24
  br label %bb20
bb20:
  %t96 = load i64, ptr %l50, !tbaa !24
  store i64 %t96, ptr %l47, !tbaa !24
  br label %bb21
bb21:
  %t97 = load i64, ptr %l47, !tbaa !24
  store i64 %t97, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb22
bb22:
  %t98 = load i64, ptr %l10, !tbaa !24
  %t99 = load i64, ptr %l9, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb23, label %bb24
bb23:
  br label %bb49
bb24:
  br label %bb25
bb25:
  %t106 = load i64, ptr %l6, !tbaa !24
  %t107 = load i64, ptr %l10, !tbaa !24
  %t108 = load i64, ptr %l8, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l11, !tbaa !24
  %t116 = load ptr, ptr %l2, !tbaa !29
  %t118 = getelementptr %"compiler/parse:NameList", ptr %t116, i32 0, i32 1
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  store { i64, ptr } %t119, ptr %l69, !tbaa !27
  %t120 = load i64, ptr %l11, !tbaa !24
  %t122 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t123 = load ptr, ptr %t122, !tbaa !27
  %t124 = getelementptr %"compiler/source:Span", ptr %t123, i64 %t120
  %t125 = load %"compiler/source:Span", ptr %t124
  store %"compiler/source:Span" %t125, ptr %l12
  %t127 = ptrtoint ptr %v0 to i64
  store i64 %t127, ptr %l72, !tbaa !24
  %t128 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e0
  br i1 %t128, label %bb26, label %bb27
bb26:
  %t130 = call ptr @__olang_region_make(ptr %v0)
  %t131 = ptrtoint ptr %t130 to i64
  store i64 %t131, ptr %l72, !tbaa !24
  br label %bb27
bb27:
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t134 = getelementptr %"compiler/parse:NameList", ptr %t132, i32 0, i32 0
  %t135 = load { i64, ptr }, ptr %t134, !tbaa !27
  store { i64, ptr } %t135, ptr %l75, !tbaa !27
  %t136 = load i64, ptr %l11, !tbaa !24
  %t138 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr i32, ptr %t139, i64 %t136
  %t141 = load i32, ptr %t140, !tbaa !33
  store i32 %t141, ptr %l77, !tbaa !23
  %t142 = icmp sge i64 1, 0
  br i1 %t142, label %bb28, label %bb29
bb28:
  %t144 = icmp sle i64 1, 2305843009213693951
  br i1 %t144, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53)
  unreachable
bb30:
  %t146 = mul i64 1, 4
  %t147 = load i64, ptr %l72
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = call ptr @__olang_scope_alloc(ptr %t148, i64 %t146)
  %t150 = load i32, ptr %l77, !tbaa !23
  store i64 0, ptr %t151
  br label %fill.152
fill.152:
  %t155 = load i64, ptr %t151
  %t156 = icmp slt i64 %t155, 1
  br i1 %t156, label %fillb.153, label %filld.154
fillb.153:
  %t157 = getelementptr i32, ptr %t149, i64 %t155
  store i32 %t150, ptr %t157
  %t158 = add i64 %t155, 1
  store i64 %t158, ptr %t151
  br label %fill.152
filld.154:
  %t159 = insertvalue { i64, ptr } undef, i64 1, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t149, 1
  store { i64, ptr } %t160, ptr %l80, !tbaa !27
  %t161 = ptrtoint ptr %v0 to i64
  store i64 %t161, ptr %l81, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fast_3aVarDecl_2e1
  br i1 %t162, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53)
  unreachable
bb32:
  %t164 = call ptr @__olang_region_make(ptr %v0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l81, !tbaa !24
  br label %bb33
bb33:
  %t166 = load %"compiler/source:Span", ptr %l12
  store %"compiler/source:Span" %t166, ptr %l83
  %t167 = icmp sge i64 1, 0
  br i1 %t167, label %bb34, label %bb35
bb34:
  %t169 = icmp sle i64 1, 1152921504606846975
  br i1 %t169, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53)
  unreachable
bb36:
  %t171 = mul i64 1, 8
  %t172 = load i64, ptr %l81
  %t173 = inttoptr i64 %t172 to ptr
  %t174 = call ptr @__olang_scope_alloc(ptr %t173, i64 %t171)
  %t175 = load %"compiler/source:Span", ptr %l83
  store i64 0, ptr %t176
  br label %fill.177
fill.177:
  %t180 = load i64, ptr %t176
  %t181 = icmp slt i64 %t180, 1
  br i1 %t181, label %fillb.178, label %filld.179
fillb.178:
  %t182 = getelementptr %"compiler/source:Span", ptr %t174, i64 %t180
  store %"compiler/source:Span" %t175, ptr %t182
  %t183 = add i64 %t180, 1
  store i64 %t183, ptr %t176
  br label %fill.177
filld.179:
  %t184 = insertvalue { i64, ptr } undef, i64 1, 0
  %t185 = insertvalue { i64, ptr } %t184, ptr %t174, 1
  store { i64, ptr } %t185, ptr %l86, !tbaa !27
  %t186 = icmp sge i64 0, 0
  br i1 %t186, label %bb38, label %bb39
bb37:
  call void @__olang_check_failed(ptr @olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53)
  unreachable
bb38:
  %t188 = icmp sle i64 0, 1152921504606846975
  br i1 %t188, label %bb40, label %bb41
bb39:
  call void @__olang_check_failed(ptr @olang_loc_d00b0c1989dce2f2_291a9b7532a6cf1e)
  unreachable
bb40:
  %t190 = mul i64 0, 8
  %t191 = insertvalue { i64, ptr } undef, i64 0, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t192, ptr %l89, !tbaa !27
  %t193 = icmp sge i64 0, 0
  br i1 %t193, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_d00b0c1989dce2f2_291a9b7532a6cf1e)
  unreachable
bb42:
  %t195 = icmp sle i64 0, 1152921504606846975
  br i1 %t195, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53)
  unreachable
bb44:
  %t197 = mul i64 0, 8
  %t198 = insertvalue { i64, ptr } undef, i64 0, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t200 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t201 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t202 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t204 = call %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t200, { i64, ptr } %t201, ptr null, { i64, ptr } %t202, i1 false, i1 true, { i64, ptr } %t199, i1 false)
  store %"compiler/ast:VarDecl" %t204, ptr %l93
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53)
  unreachable
bb46:
  %t205 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 88, i64 8)
  store ptr %t205, ptr %lp13
  %t206 = load %"compiler/ast:VarDecl", ptr %l93
  %t207 = load ptr, ptr %lp13
  store %"compiler/ast:VarDecl" %t206, ptr %t207
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/parse:Parser", ptr %t208, i32 0, i32 32
  %t211 = load %"compiler/source:Span", ptr %l12
  %t212 = load ptr, ptr %lp13
  store { i64, [4 x i64] } zeroinitializer, ptr %t213
  %t214 = getelementptr { i64, [4 x i64] }, ptr %t213, i32 0, i32 0
  store i64 1, ptr %t214
  %t216 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t211, 0
  %t218 = insertvalue { %"compiler/source:Span", ptr } %t216, ptr %t212, 1
  %t219 = getelementptr { i64, [4 x i64] }, ptr %t213, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t218, ptr %t219
  %t220 = load { i64, [4 x i64] }, ptr %t213
  %t222 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 40, i64 8)
  store { i64, [4 x i64] } %t220, ptr %t222
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v0, ptr %t210, ptr %t222)
  br label %bb47
bb47:
  br label %bb48
bb48:
  %t225 = load i64, ptr %l10, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l10, !tbaa !24
  br label %bb22
bb49:
  %t229 = load ptr, ptr %l2, !tbaa !29
  %t231 = getelementptr %"compiler/parse:NameList", ptr %t229, i32 0, i32 1
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !27
  store { i64, ptr } %t232, ptr %l103, !tbaa !27
  %t233 = load i64, ptr %l5, !tbaa !24
  %t235 = sub i64 %t233, 1
  %t237 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t238 = load ptr, ptr %t237, !tbaa !27
  %t239 = getelementptr %"compiler/source:Span", ptr %t238, i64 %t235
  %t240 = load %"compiler/source:Span", ptr %t239
  store %"compiler/source:Span" %t240, ptr %l14
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t242)
  store i32 %t244, ptr %l108
  br label %bb50
bb50:
  %t245 = getelementptr %"compiler/source:Span", ptr %l14, i32 0, i32 0
  %t246 = load i32, ptr %t245, !tbaa !23
  %t247 = getelementptr %"compiler/source:Span", ptr %l4, i32 0, i32 1
  %t248 = load i32, ptr %t247, !tbaa !23
  %t251 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v2, i32 %t246, i32 %t248)
  store %"compiler/source:Span" %t251, ptr %l111
  br label %bb51
bb51:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load ptr, ptr %l3, !tbaa !29
  %t254 = load ptr, ptr %l2, !tbaa !29
  %t256 = getelementptr %"compiler/parse:NameList", ptr %t254, i32 0, i32 0
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l115, !tbaa !27
  %t258 = load i64, ptr %l5, !tbaa !24
  %t260 = sub i64 %t258, 1
  %t262 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = getelementptr i32, ptr %t263, i64 %t260
  %t265 = load i32, ptr %t264, !tbaa !33
  %t266 = load %"compiler/source:Span", ptr %l14
  %t271 = call ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2elastField(ptr %v0, ptr %v2, ptr %v2, ptr %t252, ptr %t253, i32 %t265, %"compiler/source:Span" %t266)
  store ptr %t271, ptr %l120
  br label %bb52
bb52:
  store { i64, [4 x i64] } zeroinitializer, ptr %t272
  %t273 = getelementptr { i64, [4 x i64] }, ptr %t272, i32 0, i32 0
  store i64 1, ptr %t273
  %t274 = load %"compiler/source:Span", ptr %l111
  %t275 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t274, 0
  %t276 = load ptr, ptr %l120, !tbaa !29
  %t277 = insertvalue { %"compiler/source:Span", ptr } %t275, ptr %t276, 1
  %t278 = getelementptr { i64, [4 x i64] }, ptr %t272, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t277, ptr %t278
  %t279 = load { i64, [4 x i64] }, ptr %t272
  %t281 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t279, ptr %t281
  %t283 = insertvalue { i32, ptr } zeroinitializer, ptr %t281, 1
  store { i32, ptr } %t283, ptr %rv
  br label %ret
bb53:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t286 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t284)
  store i32 %t286, ptr %l124
  br label %bb54
bb54:
  %t287 = load %"compiler/source:Span", ptr %l4
  %t288 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t289
  %t290 = getelementptr { i64, [4 x i64] }, ptr %t289, i32 0, i32 0
  store i64 1, ptr %t290
  %t292 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t287, 0
  %t294 = insertvalue { %"compiler/source:Span", ptr } %t292, ptr %t288, 1
  %t295 = getelementptr { i64, [4 x i64] }, ptr %t289, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t294, ptr %t295
  %t296 = load { i64, [4 x i64] }, ptr %t289
  %t298 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t296, ptr %t298
  %t300 = insertvalue { i32, ptr } zeroinitializer, ptr %t298, 1
  store { i32, ptr } %t300, ptr %rv
  br label %ret
bb55:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %t301)
  store i32 %t303, ptr %l130
  %t304 = icmp ne i32 %t303, 0
  br i1 %t304, label %bb57, label %ok.305, !prof !99
ok.305:
  br label %bb56
bb56:
  br label %bb58
bb57:
  %t306 = load i32, ptr %l130, !tbaa !23
  %t307 = lshr i32 %t306, 16
  %t308 = and i32 %t306, 65535
  %t309 = icmp eq i32 %t307, 1
  %t310 = select i1 %t309, i32 1, i32 0
  %t311 = icmp eq i32 %t306, 0
  %t312 = shl i32 %t310, 16
  %t313 = or i32 %t312, %t308
  %t314 = select i1 %t311, i32 0, i32 %t313
  %t316 = insertvalue { i32, ptr } zeroinitializer, i32 %t314, 0
  store { i32, ptr } %t316, ptr %rv
  br label %ret
bb58:
  %t317 = load %"compiler/source:Span", ptr %l4
  %t318 = load ptr, ptr %l3, !tbaa !29
  store { i64, [4 x i64] } zeroinitializer, ptr %t319
  %t320 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 0
  store i64 1, ptr %t320
  %t322 = insertvalue { %"compiler/source:Span", ptr } undef, %"compiler/source:Span" %t317, 0
  %t324 = insertvalue { %"compiler/source:Span", ptr } %t322, ptr %t318, 1
  %t325 = getelementptr { i64, [4 x i64] }, ptr %t319, i32 0, i32 1
  store { %"compiler/source:Span", ptr } %t324, ptr %t325
  %t326 = load { i64, [4 x i64] }, ptr %t319
  %t328 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 40, i64 8)
  store { i64, [4 x i64] } %t326, ptr %t328
  %t330 = insertvalue { i32, ptr } zeroinitializer, ptr %t328, 1
  store { i32, ptr } %t330, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
}

define dso_local i32 @compiler_2fparse_2edeclWord(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i32
  %rv = alloca i32
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 53 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i32 1, ptr %l1
  br label %bb13
bb4:
  %t7 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t9 = trunc i64 52 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i32 2, ptr %l1
  br label %bb13
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i32 0, ptr %l1
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_af06113cf8aef81c_32854973a8f51e0)
  unreachable
bb13:
  %t14 = load i32, ptr %l1, !range !{i32 0, i32 3}
  store i32 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fparse_2edeclWordBody(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 33 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t8 = trunc i64 34 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t14 = trunc i64 22 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t20 = trunc i64 35 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb12
bb11:
  %t24 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t26 = trunc i64 37 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l12, !tbaa !21
  br label %bb12
bb12:
  %t29 = load i1, ptr %l12, !tbaa !21
  br i1 %t29, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb15
bb14:
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t32 = trunc i64 1 to i32
  %t33 = icmp eq i32 %t30, %t32
  store i1 %t33, ptr %l15, !tbaa !21
  br label %bb15
bb15:
  %t35 = load i1, ptr %l15, !tbaa !21
  br i1 %t35, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb18
bb17:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t38 = trunc i64 36 to i32
  %t39 = icmp eq i32 %t36, %t38
  store i1 %t39, ptr %l18, !tbaa !21
  br label %bb18
bb18:
  %t41 = load i1, ptr %l18, !tbaa !21
  br i1 %t41, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb21
bb20:
  %t42 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t44 = trunc i64 52 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb21
bb21:
  %t47 = load i1, ptr %l21, !tbaa !21
  br i1 %t47, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb24
bb23:
  %t48 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t50 = trunc i64 53 to i32
  %t51 = icmp eq i32 %t48, %t50
  store i1 %t51, ptr %l24, !tbaa !21
  br label %bb24
bb24:
  %t53 = load i1, ptr %l24, !tbaa !21
  br i1 %t53, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb27
bb26:
  %t54 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t56 = trunc i64 54 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb27
bb27:
  %t59 = load i1, ptr %l27, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 77 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb11
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t8 = trunc i64 80 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t13 = trunc i64 81 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t18 = trunc i64 82 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t23 = trunc i64 84 to i32
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
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t28 = trunc i64 83 to i32
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
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t33 = trunc i64 85 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t38 = trunc i64 86 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb19, label %bb20
bb19:
  br label %bb27
bb20:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t43 = trunc i64 87 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb21, label %bb22
bb21:
  br label %bb27
bb22:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t48 = trunc i64 88 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t53 = trunc i64 89 to i32
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
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t58 = trunc i64 90 to i32
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

define dso_local i1 @compiler_2fparse_2eisOrdering(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 96 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t8 = trunc i64 97 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t14 = trunc i64 98 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t20 = trunc i64 99 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  store i1 %t23, ptr %rv
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
  %t8 = icmp eq i64 %t6, 11
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
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 28}
  %t27 = icmp eq i64 %t25, 12
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

define dso_local i1 @compiler_2fparse_2eleavingWord(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 13 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t8 = trunc i64 19 to i32
  %t9 = icmp eq i32 %t6, %t8
  store i1 %t9, ptr %l3, !tbaa !21
  br label %bb3
bb3:
  %t11 = load i1, ptr %l3, !tbaa !21
  br i1 %t11, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb6
bb5:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t14 = trunc i64 20 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb9
bb8:
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t20 = trunc i64 37 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l9, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l9, !tbaa !21
  store i1 %t23, ptr %rv
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t3 = trunc i64 9 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb35
bb4:
  %t8 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t10 = trunc i64 25 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t13 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t15 = trunc i64 26 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t18, ptr %l1, !tbaa !27
  br label %bb35
bb10:
  %t20 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t22 = trunc i64 30 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t25, ptr %l1, !tbaa !27
  br label %bb35
bb14:
  %t27 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t29 = trunc i64 111 to i32
  %t30 = icmp eq i32 %t27, %t29
  br i1 %t30, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t32, ptr %l1, !tbaa !27
  br label %bb35
bb18:
  %t34 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t36 = trunc i64 14 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t39, ptr %l1, !tbaa !27
  br label %bb35
bb22:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t43 = trunc i64 16 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t46 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t46, ptr %l1, !tbaa !27
  br label %bb35
bb26:
  %t48 = load i32, ptr %l0, !range !{i32 0, i32 113}
  %t50 = trunc i64 17 to i32
  %t51 = icmp eq i32 %t48, %t50
  br i1 %t51, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l30, !tbaa !27
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l32, !tbaa !27
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 28}
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
  %t33 = load i64, ptr %t32, !range !{i64 0, i64 28}
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
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 28}
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
  %t108 = load i64, ptr %t107, !range !{i64 0, i64 28}
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
  %t116 = load i32, ptr %t115, !range !{i32 0, i32 113}
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
  %t124 = load i32, ptr %l6, !range !{i32 0, i32 113}
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
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t136 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = extractvalue { i64, ptr } %t136, 0
  %t139 = add i64 %t135, %t138
  %t140 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t141 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t142 = add i64 %t139, %t141
  %t143 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t144 = extractvalue { i64, ptr } %t143, 1
  %t145 = extractvalue { i64, ptr } %t143, 0
  %t146 = add i64 %t142, %t145
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
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
  %t163 = load i64, ptr %t162, !range !{i64 0, i64 28}
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
  %t171 = load i32, ptr %t170, !range !{i32 0, i32 113}
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
  %t185 = load i32, ptr %l8, !range !{i32 0, i32 113}
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
  %t202 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t203 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t204 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 1
  %t206 = extractvalue { i64, ptr } %t204, 0
  %t207 = add i64 %t203, %t206
  %t208 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t209 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t210 = add i64 %t207, %t209
  %t211 = load { i64, ptr }, ptr %l87, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = extractvalue { i64, ptr } %t211, 0
  %t214 = add i64 %t210, %t213
  %t215 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t216 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t217 = add i64 %t214, %t216
  %t218 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t219 = extractvalue { i64, ptr } %t218, 1
  %t220 = extractvalue { i64, ptr } %t218, 0
  %t221 = add i64 %t217, %t220
  %t222 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t223 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
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
  %t240 = load i64, ptr %t239, !range !{i64 0, i64 28}
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
  %t256 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t257 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t259 = call i64 @__olang_fmt_i64(ptr null, i64 %t255)
  %t260 = add i64 %t257, %t259
  %t261 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t262 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
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
  %t276 = load i64, ptr %t275, !range !{i64 0, i64 28}
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
  %t319 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t320 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t321 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t322 = extractvalue { i64, ptr } %t321, 1
  %t323 = extractvalue { i64, ptr } %t321, 0
  %t324 = add i64 %t320, %t323
  %t325 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t326 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t327 = add i64 %t324, %t326
  %t328 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = extractvalue { i64, ptr } %t328, 0
  %t331 = add i64 %t327, %t330
  %t332 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t333 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t334 = add i64 %t331, %t333
  %t335 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = extractvalue { i64, ptr } %t335, 0
  %t338 = add i64 %t334, %t337
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t340 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
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
  %t357 = load i64, ptr %t356, !range !{i64 0, i64 28}
  %t359 = icmp eq i64 %t357, 10
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
  %t383 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t384 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t385 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t386 = extractvalue { i64, ptr } %t385, 1
  %t387 = extractvalue { i64, ptr } %t385, 0
  %t388 = add i64 %t384, %t387
  %t389 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t390 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t391 = add i64 %t388, %t390
  %t393 = call i64 @__olang_fmt_i64(ptr null, i64 %t382)
  %t394 = add i64 %t391, %t393
  %t395 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
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
  %t412 = load i64, ptr %t411, !range !{i64 0, i64 28}
  %t414 = icmp eq i64 %t412, 11
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
  %t438 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t439 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t440 = load { i64, ptr }, ptr %l152, !tbaa !27
  %t441 = extractvalue { i64, ptr } %t440, 1
  %t442 = extractvalue { i64, ptr } %t440, 0
  %t443 = add i64 %t439, %t442
  %t444 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t445 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t446 = add i64 %t443, %t445
  %t448 = call i64 @__olang_fmt_i64(ptr null, i64 %t437)
  %t449 = add i64 %t446, %t448
  %t450 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t451 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
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
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l156, !tbaa !27
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

define dso_local { i64, ptr } @compiler_2fparse_2eshapeOf(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l3 = alloca %"compiler/source:Source"
  %l4 = alloca %"compiler/source:Names"
  %l5 = alloca %"compiler/parse:Oracle"
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/diag:Diagnostics"
  %l11 = alloca i64
  %l12 = alloca %"compiler/scan:Tokens"
  %l13 = alloca %"compiler/parse:Parser"
  %l14 = alloca { i64, ptr }
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca i64
  %l22 = alloca %"compiler/diag:Said"
  %l24 = alloca %"compiler/source:Source"
  %l25 = alloca %"compiler/source:Names"
  %l26 = alloca %"compiler/parse:Oracle"
  %l28 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l46 = alloca %"compiler/diag:Diagnostics"
  %l50 = alloca i64
  %l52 = alloca %"compiler/scan:Tokens"
  %l59 = alloca %"compiler/parse:Parser"
  %l61 = alloca { i64, ptr }
  %l64 = alloca %"std/prelude/text:StringBuilder"
  %l72 = alloca { i64, ptr }
  %l76 = alloca i64
  %l79 = alloca ptr
  %l83 = alloca { i64, ptr }
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i64
  %l92 = alloca i64
  %l97 = alloca %"compiler/diag:Said"
  %l105 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t7 = alloca %"compiler/parse:Oracle", align 8
  %t46 = alloca %"compiler/diag:Diagnostics", align 8
  %t62 = alloca %"compiler/parse:Parser", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %s0, ptr %v0, ptr %s0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d42, i32 0, i32 1) }, { i64, ptr } %a0)
  store %"compiler/source:Source" %t3, ptr %l24
  br label %bb1
bb1:
  %t4 = load %"compiler/source:Source", ptr %l24
  store %"compiler/source:Source" %t4, ptr %l3
  %t5 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %s0)
  store %"compiler/source:Names" %t5, ptr %l25
  br label %bb2
bb2:
  %t6 = load %"compiler/source:Names", ptr %l25
  store %"compiler/source:Names" %t6, ptr %l4
  call void @compiler_2fparse_3aOracle_2ector(ptr %t7, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t7, i64 288, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l26, i64 288, i1 false)
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s1, ptr %s1, { i64, ptr } %a1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store { i64, ptr } %t10, ptr %l28
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t11, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t12 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t14 = extractvalue { i64, ptr } %t12, 0
  store i64 %t14, ptr %l8, !tbaa !24
  br label %bb5
bb5:
  %t16 = load i64, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l8, !tbaa !24
  %t20 = icmp slt i64 %t16, %t17
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb6, label %bb7
bb6:
  br label %bb14
bb7:
  br label %bb8
bb8:
  %t24 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t24, ptr %l35, !tbaa !27
  %t25 = load i64, ptr %l7, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %t28, i64 %t25
  %t30 = load { i64, ptr }, ptr %t29, !tbaa !37
  store { i64, ptr } %t30, ptr %l9, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  %t36 = icmp sgt i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load { i64, ptr }, ptr %l9, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %s0, ptr %s0, ptr %s3, ptr %s1, ptr %l5, ptr %l4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d44, i32 0, i32 1) }, { i64, ptr } %t38)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t42 = load i64, ptr %l7, !tbaa !24
  %t44 = add i64 %t42, 1
  store i64 %t44, ptr %l7, !tbaa !24
  br label %bb5
bb14:
  call void @__olang_scope_close(ptr %s1)
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t46, ptr %s0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t46, i64 704, i1 false)
  br label %bb15
bb15:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l46, i64 704, i1 false)
  %t47 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t49 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t54 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %s0, ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t48, { i64, ptr } %t50, i1 false)
  store i64 %t54, ptr %l50
  br label %bb16
bb16:
  %t55 = load i64, ptr %l50, !tbaa !24
  store i64 %t55, ptr %l11, !tbaa !24
  %t56 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %s0, ptr %s0, { i64, ptr } %t57)
  store %"compiler/scan:Tokens" %t59, ptr %l52
  br label %bb17
bb17:
  %t60 = load %"compiler/scan:Tokens", ptr %l52
  store %"compiler/scan:Tokens" %t60, ptr %l12
  %t61 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fparse_3aParser_2ector(ptr %t62, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l3, ptr %l12, ptr %l4, ptr %l5, ptr %l10, i64 %t61)
  call void @llvm.memmove.p0.p0.i64(ptr %l59, ptr %t62, i64 1048, i1 false)
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l59, i64 1048, i1 false)
  %t70 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %s0, ptr %s0, ptr %l13)
  store { i64, ptr } %t70, ptr %l61
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l61, !tbaa !27
  store { i64, ptr } %t71, ptr %l14, !tbaa !27
  br i1 %a2, label %bb20, label %bb21
bb20:
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChooseAll(ptr %s0, ptr %l10)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t75 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t75, ptr %l64
  br label %bb24
bb24:
  %t76 = load %"std/prelude/text:StringBuilder", ptr %l64
  store %"std/prelude/text:StringBuilder" %t76, ptr %l15
  %t77 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t77, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l18, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s7
  %t83 = load i64, ptr %l17, !tbaa !24
  %t84 = load i64, ptr %l18, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s7)
  br label %bb37
bb27:
  br label %bb28
bb28:
  %t91 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t91, ptr %l72, !tbaa !27
  %t92 = load i64, ptr %l17, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l19, !tbaa !29
  %t100 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l15)
  store i64 %t100, ptr %l76
  br label %bb29
bb29:
  %t101 = load i64, ptr %l76, !tbaa !24
  %t102 = icmp sgt i64 %t101, 0
  br i1 %t102, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d45, i32 0, i32 1) })
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s8)
  br label %bb33
bb33:
  store ptr %l15, ptr %l79, !tbaa !29
  %t105 = load ptr, ptr %l19, !tbaa !29
  %t106 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 1
  %t107 = load { i64, ptr }, ptr %t106, !tbaa !27
  %t111 = call { i64, ptr } @compiler_2fparse_2eshapeDecl(ptr %s0, ptr %s0, ptr %s0, ptr %s7, ptr %t105, ptr %l4, { i64, ptr } %t107)
  store { i64, ptr } %t111, ptr %l83
  br label %bb34
bb34:
  %t112 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  %t114 = extractvalue { i64, ptr } %t112, 1
  %t115 = mul i64 %t113, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t115)
  call void @llvm.memcpy.p0.p0.i64(ptr %t116, ptr %t114, i64 %t115, i1 false)
  %t117 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  %t119 = load ptr, ptr %l79, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %t119, { i64, ptr } %t118)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb36:
  %t121 = load i64, ptr %l17, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l17, !tbaa !24
  br label %bb25
bb37:
  store %olang.scope zeroinitializer, ptr %s10
  %t126 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %s0, ptr %s10, ptr %l10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l88
  br label %bb38
bb38:
  %t127 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  %t128 = call ptr @__olang_scope_alloc_a(ptr %s10, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %t128
  store ptr %t128, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s11
  %t130 = load i64, ptr %l21, !tbaa !24
  store i64 %t130, ptr %l90, !tbaa !24
  %t131 = load ptr, ptr %l20, !tbaa !29
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %s10, ptr %t131)
  store i64 %t133, ptr %l92
  br label %bb40
bb40:
  %t134 = load i64, ptr %l90, !tbaa !24
  %t135 = load i64, ptr %l92, !tbaa !24
  %t136 = icmp slt i64 %t134, %t135
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s11)
  br label %bb47
bb42:
  br label %bb43
bb43:
  %t140 = load ptr, ptr %l20, !tbaa !29
  %t141 = load i64, ptr %l21, !tbaa !24
  %t144 = call %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %s10, ptr %s10, ptr %t140, i64 %t141)
  store %"compiler/diag:Said" %t144, ptr %l97
  br label %bb44
bb44:
  %t145 = load %"compiler/diag:Said", ptr %l97
  store %"compiler/diag:Said" %t145, ptr %l22
  %t146 = getelementptr %"compiler/diag:Said", ptr %l22, i32 0, i32 0
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t148 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t151 = extractvalue { i64, ptr } %t147, 1
  %t152 = extractvalue { i64, ptr } %t147, 0
  %t153 = add i64 %t149, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t148, i64 %t149)
  %t155 = getelementptr i8, ptr %t154, i64 %t149
  call void @olang_textcopy(ptr %t155, ptr %t151, i64 %t152)
  %t156 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t154, 1
  %t159 = extractvalue { i64, ptr } %t157, 0
  %t160 = extractvalue { i64, ptr } %t157, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %l15, { i64, ptr } %t164)
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s11)
  br label %bb46
bb46:
  %t167 = load i64, ptr %l21, !tbaa !24
  %t169 = add i64 %t167, 1
  store i64 %t169, ptr %l21, !tbaa !24
  br label %bb39
bb47:
  call void @__olang_scope_close(ptr %s10)
  %t172 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l15)
  store { i64, ptr } %t172, ptr %l105
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t173 = load { i64, ptr }, ptr %l105, !tbaa !27
  store { i64, ptr } %t173, ptr %rv
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

define dso_local %"compiler/parse:NameList" @compiler_2fparse_3aNameList_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/parse:NameList"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/parse:NameList" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/parse:NameList" %t6, { i64, ptr } %a1, 1
  store %"compiler/parse:NameList" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/parse:NameList", ptr %rv
  ret %"compiler/parse:NameList" %rr
}

define dso_local void @compiler_2fparse_3aParser_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l20 = alloca i1
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i64
  %l25 = alloca i1
  %l26 = alloca i1
  %l27 = alloca i64
  %l28 = alloca i1
  %l29 = alloca i64
  %l30 = alloca i1
  %l31 = alloca i32
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca { i64, ptr }
  %l47 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i1
  %l53 = alloca i1
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca i1
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i1
  %l62 = alloca i1
  %l75 = alloca i64
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l87 = alloca i64
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l104 = alloca i64
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l109 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca i64
  %l115 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l117 = alloca i64
  %l119 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca i64
  %l123 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l125 = alloca i64
  %l127 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l129 = alloca i64
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l133 = alloca i64
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l137 = alloca i64
  %l139 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca i64
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l153 = alloca i64
  %l155 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l158 = alloca %"compiler/parse:Parser"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l6, !tbaa !29
  store ptr %a1, ptr %l7, !tbaa !29
  store ptr %a2, ptr %l8, !tbaa !29
  store ptr %a3, ptr %l9, !tbaa !29
  store ptr %a4, ptr %l10, !tbaa !29
  store i64 %a5, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  store i32 0, ptr %l13
  store i32 0, ptr %l14, !tbaa !23
  store i32 0, ptr %l15
  store i32 0, ptr %l16, !tbaa !23
  store i1 false, ptr %l17, !tbaa !21
  store i1 false, ptr %l18, !tbaa !21
  store i1 false, ptr %l19, !tbaa !21
  store i1 false, ptr %l20, !tbaa !21
  store i1 false, ptr %l21, !tbaa !21
  store i1 false, ptr %l22, !tbaa !21
  store i1 false, ptr %l23, !tbaa !21
  store i64 0, ptr %l24, !tbaa !24
  store i1 false, ptr %l25, !tbaa !21
  store i1 false, ptr %l26, !tbaa !21
  store i64 0, ptr %l27, !tbaa !24
  store i1 false, ptr %l28, !tbaa !21
  store i64 -1, ptr %l29, !tbaa !24
  store i1 false, ptr %l30, !tbaa !21
  store i32 -1, ptr %l31, !tbaa !23
  %t15 = ptrtoint ptr %v5 to i64
  store i64 %t15, ptr %l75, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e26
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = call ptr @__olang_region_make(ptr %v5)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l75, !tbaa !24
  br label %bb2
bb2:
  %t20 = load i64, ptr %l75
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t21, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l77
  br label %bb3
bb3:
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e26
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load i64, ptr %l75
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = call ptr @__olang_region_home(ptr %t30)
  %t32 = icmp ne ptr %t31, null
  %t33 = select i1 %t32, ptr %t31, ptr null
  %t34 = icmp eq ptr %t33, %t26
  call void @__olang_region_settle(ptr %t26, i1 %t34)
  br label %bb5
bb5:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l32
  %t36 = ptrtoint ptr %v5 to i64
  store i64 %t36, ptr %l79, !tbaa !24
  %t37 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e27
  br i1 %t37, label %bb6, label %bb7
bb6:
  %t39 = call ptr @__olang_region_make(ptr %v5)
  %t40 = ptrtoint ptr %t39 to i64
  store i64 %t40, ptr %l79, !tbaa !24
  br label %bb7
bb7:
  %t41 = load i64, ptr %l79
  %t42 = inttoptr i64 %t41 to ptr
  %t43 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t42, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l81
  br label %bb8
bb8:
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e27
  br i1 %t44, label %bb9, label %bb10
bb9:
  %t46 = load i64, ptr %l79
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81, i32 0, i32 0
  %t49 = load { i64, ptr }, ptr %t48
  %t50 = extractvalue { i64, ptr } %t49, 1
  %t51 = call ptr @__olang_region_or(ptr %t50, ptr null)
  %t52 = call ptr @__olang_region_home(ptr %t51)
  %t53 = icmp ne ptr %t52, null
  %t54 = select i1 %t53, ptr %t52, ptr null
  %t55 = icmp eq ptr %t54, %t47
  call void @__olang_region_settle(ptr %t47, i1 %t55)
  br label %bb10
bb10:
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %l33
  %t57 = ptrtoint ptr %v5 to i64
  store i64 %t57, ptr %l83, !tbaa !24
  %t58 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e28
  br i1 %t58, label %bb11, label %bb12
bb11:
  %t60 = call ptr @__olang_region_make(ptr %v5)
  %t61 = ptrtoint ptr %t60 to i64
  store i64 %t61, ptr %l83, !tbaa !24
  br label %bb12
bb12:
  %t62 = load i64, ptr %l83
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e(ptr %t63)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t64, ptr %l85
  br label %bb13
bb13:
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e28
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t67 = load i64, ptr %l83
  %t68 = inttoptr i64 %t67 to ptr
  %t69 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85, i32 0, i32 2
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = call ptr @__olang_region_home(ptr %t72)
  %t74 = icmp ne ptr %t73, null
  %t75 = select i1 %t74, ptr %t73, ptr null
  %t76 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85, i32 0, i32 1
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = call ptr @__olang_region_home(ptr %t79)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr %t75
  %t83 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85, i32 0, i32 0
  %t84 = load { i64, ptr }, ptr %t83
  %t85 = extractvalue { i64, ptr } %t84, 1
  %t86 = call ptr @__olang_region_or(ptr %t85, ptr null)
  %t87 = call ptr @__olang_region_home(ptr %t86)
  %t88 = icmp ne ptr %t87, null
  %t89 = select i1 %t88, ptr %t87, ptr %t82
  %t90 = icmp eq ptr %t89, %t68
  call void @__olang_region_settle(ptr %t68, i1 %t90)
  br label %bb15
bb15:
  %t91 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l85
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t91, ptr %l34
  %t92 = ptrtoint ptr %v5 to i64
  store i64 %t92, ptr %l87, !tbaa !24
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e29
  br i1 %t93, label %bb16, label %bb17
bb16:
  %t95 = call ptr @__olang_region_make(ptr %v5)
  %t96 = ptrtoint ptr %t95 to i64
  store i64 %t96, ptr %l87, !tbaa !24
  br label %bb17
bb17:
  %t97 = load i64, ptr %l87
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t98, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t99, ptr %l89
  br label %bb18
bb18:
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e29
  br i1 %t100, label %bb19, label %bb20
bb19:
  %t102 = load i64, ptr %l87
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89, i32 0, i32 0
  %t105 = load { i64, ptr }, ptr %t104
  %t106 = extractvalue { i64, ptr } %t105, 1
  %t107 = call ptr @__olang_region_or(ptr %t106, ptr null)
  %t108 = call ptr @__olang_region_home(ptr %t107)
  %t109 = icmp ne ptr %t108, null
  %t110 = select i1 %t109, ptr %t108, ptr null
  %t111 = icmp eq ptr %t110, %t103
  call void @__olang_region_settle(ptr %t103, i1 %t111)
  br label %bb20
bb20:
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %l35
  %t113 = ptrtoint ptr %v5 to i64
  store i64 %t113, ptr %l91, !tbaa !24
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e30
  br i1 %t114, label %bb21, label %bb22
bb21:
  %t116 = call ptr @__olang_region_make(ptr %v5)
  %t117 = ptrtoint ptr %t116 to i64
  store i64 %t117, ptr %l91, !tbaa !24
  br label %bb22
bb22:
  %t118 = load i64, ptr %l91
  %t119 = inttoptr i64 %t118 to ptr
  %t120 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t119, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l93
  br label %bb23
bb23:
  %t121 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e30
  br i1 %t121, label %bb24, label %bb25
bb24:
  %t123 = load i64, ptr %l91
  %t124 = inttoptr i64 %t123 to ptr
  %t125 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93, i32 0, i32 0
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = call ptr @__olang_region_home(ptr %t128)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr null
  %t132 = icmp eq ptr %t131, %t124
  call void @__olang_region_settle(ptr %t124, i1 %t132)
  br label %bb25
bb25:
  %t133 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l36
  %t134 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l95
  br label %bb26
bb26:
  %t135 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l95
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %l37
  %t136 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l96
  br label %bb27
bb27:
  %t137 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t137, ptr %l38
  %t138 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t138, ptr %l97
  br label %bb28
bb28:
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l39
  %t140 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l98
  br label %bb29
bb29:
  %t141 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l40
  %t142 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %l99
  br label %bb30
bb30:
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l99
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %l41
  %t144 = ptrtoint ptr %v5 to i64
  store i64 %t144, ptr %l100, !tbaa !24
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e36
  br i1 %t145, label %bb31, label %bb32
bb31:
  %t147 = call ptr @__olang_region_make(ptr %v5)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l100, !tbaa !24
  br label %bb32
bb32:
  %t149 = load i64, ptr %l100
  %t150 = inttoptr i64 %t149 to ptr
  %t151 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t150, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t151, ptr %l102
  br label %bb33
bb33:
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e36
  br i1 %t152, label %bb34, label %bb35
bb34:
  %t154 = load i64, ptr %l100
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102, i32 0, i32 0
  %t157 = load { i64, ptr }, ptr %t156
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = call ptr @__olang_region_or(ptr %t158, ptr null)
  %t160 = call ptr @__olang_region_home(ptr %t159)
  %t161 = icmp ne ptr %t160, null
  %t162 = select i1 %t161, ptr %t160, ptr null
  %t163 = icmp eq ptr %t162, %t155
  call void @__olang_region_settle(ptr %t155, i1 %t163)
  br label %bb35
bb35:
  %t164 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l42
  %t165 = ptrtoint ptr %v5 to i64
  store i64 %t165, ptr %l104, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e37
  br i1 %t166, label %bb36, label %bb37
bb36:
  %t168 = call ptr @__olang_region_make(ptr %v5)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l104, !tbaa !24
  br label %bb37
bb37:
  %t170 = load i64, ptr %l104
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t171, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %l106
  br label %bb38
bb38:
  %t173 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e37
  br i1 %t173, label %bb39, label %bb40
bb39:
  %t175 = load i64, ptr %l104
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106, i32 0, i32 0
  %t178 = load { i64, ptr }, ptr %t177
  %t179 = extractvalue { i64, ptr } %t178, 1
  %t180 = call ptr @__olang_region_or(ptr %t179, ptr null)
  %t181 = call ptr @__olang_region_home(ptr %t180)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr null
  %t184 = icmp eq ptr %t183, %t176
  call void @__olang_region_settle(ptr %t176, i1 %t184)
  br label %bb40
bb40:
  %t185 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %l43
  %t186 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t186, ptr %l108
  br label %bb41
bb41:
  %t187 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l108
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t187, ptr %l44
  %t188 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t188, ptr %l109
  br label %bb42
bb42:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %l45
  %t190 = icmp sge i64 0, 0
  br i1 %t190, label %bb43, label %bb44
bb43:
  %t192 = icmp sle i64 0, 1152921504606846975
  br i1 %t192, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_936bfbc19493319b_da93a9696e3b504f)
  unreachable
bb45:
  %t194 = mul i64 0, 8
  %t195 = insertvalue { i64, ptr } undef, i64 0, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t196, ptr %l46, !tbaa !27
  %t198 = ptrtoint ptr %v5 to i64
  store i64 %t198, ptr %l113, !tbaa !24
  %t199 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e41
  br i1 %t199, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_936bfbc19493319b_da93a9696e3b504f)
  unreachable
bb47:
  %t201 = call ptr @__olang_region_make(ptr %v5)
  %t202 = ptrtoint ptr %t201 to i64
  store i64 %t202, ptr %l113, !tbaa !24
  br label %bb48
bb48:
  %t203 = load i64, ptr %l113
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t204, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l115
  br label %bb49
bb49:
  %t206 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e41
  br i1 %t206, label %bb50, label %bb51
bb50:
  %t208 = load i64, ptr %l113
  %t209 = inttoptr i64 %t208 to ptr
  %t210 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115, i32 0, i32 0
  %t211 = load { i64, ptr }, ptr %t210
  %t212 = extractvalue { i64, ptr } %t211, 1
  %t213 = call ptr @__olang_region_or(ptr %t212, ptr null)
  %t214 = call ptr @__olang_region_home(ptr %t213)
  %t215 = icmp ne ptr %t214, null
  %t216 = select i1 %t215, ptr %t214, ptr null
  %t217 = icmp eq ptr %t216, %t209
  call void @__olang_region_settle(ptr %t209, i1 %t217)
  br label %bb51
bb51:
  %t218 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l115
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t218, ptr %l47
  %t219 = ptrtoint ptr %v5 to i64
  store i64 %t219, ptr %l117, !tbaa !24
  %t220 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e42
  br i1 %t220, label %bb52, label %bb53
bb52:
  %t222 = call ptr @__olang_region_make(ptr %v5)
  %t223 = ptrtoint ptr %t222 to i64
  store i64 %t223, ptr %l117, !tbaa !24
  br label %bb53
bb53:
  %t224 = load i64, ptr %l117
  %t225 = inttoptr i64 %t224 to ptr
  %t226 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t225, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t226, ptr %l119
  br label %bb54
bb54:
  %t227 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e42
  br i1 %t227, label %bb55, label %bb56
bb55:
  %t229 = load i64, ptr %l117
  %t230 = inttoptr i64 %t229 to ptr
  %t231 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119, i32 0, i32 0
  %t232 = load { i64, ptr }, ptr %t231
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = call ptr @__olang_region_or(ptr %t233, ptr null)
  %t235 = call ptr @__olang_region_home(ptr %t234)
  %t236 = icmp ne ptr %t235, null
  %t237 = select i1 %t236, ptr %t235, ptr null
  %t238 = icmp eq ptr %t237, %t230
  call void @__olang_region_settle(ptr %t230, i1 %t238)
  br label %bb56
bb56:
  %t239 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l119
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t239, ptr %l48
  %t240 = ptrtoint ptr %v5 to i64
  store i64 %t240, ptr %l121, !tbaa !24
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e43
  br i1 %t241, label %bb57, label %bb58
bb57:
  %t243 = call ptr @__olang_region_make(ptr %v5)
  %t244 = ptrtoint ptr %t243 to i64
  store i64 %t244, ptr %l121, !tbaa !24
  br label %bb58
bb58:
  %t245 = load i64, ptr %l121
  %t246 = inttoptr i64 %t245 to ptr
  %t247 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t246, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t247, ptr %l123
  br label %bb59
bb59:
  %t248 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e43
  br i1 %t248, label %bb60, label %bb61
bb60:
  %t250 = load i64, ptr %l121
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123, i32 0, i32 0
  %t253 = load { i64, ptr }, ptr %t252
  %t254 = extractvalue { i64, ptr } %t253, 1
  %t255 = call ptr @__olang_region_or(ptr %t254, ptr null)
  %t256 = call ptr @__olang_region_home(ptr %t255)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr null
  %t259 = icmp eq ptr %t258, %t251
  call void @__olang_region_settle(ptr %t251, i1 %t259)
  br label %bb61
bb61:
  %t260 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l123
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t260, ptr %l49
  %t261 = ptrtoint ptr %v5 to i64
  store i64 %t261, ptr %l125, !tbaa !24
  %t262 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e44
  br i1 %t262, label %bb62, label %bb63
bb62:
  %t264 = call ptr @__olang_region_make(ptr %v5)
  %t265 = ptrtoint ptr %t264 to i64
  store i64 %t265, ptr %l125, !tbaa !24
  br label %bb63
bb63:
  %t266 = load i64, ptr %l125
  %t267 = inttoptr i64 %t266 to ptr
  %t268 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t267, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l127
  br label %bb64
bb64:
  %t269 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e44
  br i1 %t269, label %bb65, label %bb66
bb65:
  %t271 = load i64, ptr %l125
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127, i32 0, i32 0
  %t274 = load { i64, ptr }, ptr %t273
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = call ptr @__olang_region_or(ptr %t275, ptr null)
  %t277 = call ptr @__olang_region_home(ptr %t276)
  %t278 = icmp ne ptr %t277, null
  %t279 = select i1 %t278, ptr %t277, ptr null
  %t280 = icmp eq ptr %t279, %t272
  call void @__olang_region_settle(ptr %t272, i1 %t280)
  br label %bb66
bb66:
  %t281 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l127
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l50
  %t282 = ptrtoint ptr %v5 to i64
  store i64 %t282, ptr %l129, !tbaa !24
  %t283 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e45
  br i1 %t283, label %bb67, label %bb68
bb67:
  %t285 = call ptr @__olang_region_make(ptr %v5)
  %t286 = ptrtoint ptr %t285 to i64
  store i64 %t286, ptr %l129, !tbaa !24
  br label %bb68
bb68:
  %t287 = load i64, ptr %l129
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t288, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %l131
  br label %bb69
bb69:
  %t290 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e45
  br i1 %t290, label %bb70, label %bb71
bb70:
  %t292 = load i64, ptr %l129
  %t293 = inttoptr i64 %t292 to ptr
  %t294 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131, i32 0, i32 0
  %t295 = load { i64, ptr }, ptr %t294
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = call ptr @__olang_region_or(ptr %t296, ptr null)
  %t298 = call ptr @__olang_region_home(ptr %t297)
  %t299 = icmp ne ptr %t298, null
  %t300 = select i1 %t299, ptr %t298, ptr null
  %t301 = icmp eq ptr %t300, %t293
  call void @__olang_region_settle(ptr %t293, i1 %t301)
  br label %bb71
bb71:
  %t302 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l51
  store i1 false, ptr %l52, !tbaa !21
  store i1 false, ptr %l53, !tbaa !21
  %t303 = ptrtoint ptr %v5 to i64
  store i64 %t303, ptr %l133, !tbaa !24
  %t304 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e48
  br i1 %t304, label %bb72, label %bb73
bb72:
  %t306 = call ptr @__olang_region_make(ptr %v5)
  %t307 = ptrtoint ptr %t306 to i64
  store i64 %t307, ptr %l133, !tbaa !24
  br label %bb73
bb73:
  %t308 = load i64, ptr %l133
  %t309 = inttoptr i64 %t308 to ptr
  %t310 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t309, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t310, ptr %l135
  br label %bb74
bb74:
  %t311 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e48
  br i1 %t311, label %bb75, label %bb76
bb75:
  %t313 = load i64, ptr %l133
  %t314 = inttoptr i64 %t313 to ptr
  %t315 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135, i32 0, i32 0
  %t316 = load { i64, ptr }, ptr %t315
  %t317 = extractvalue { i64, ptr } %t316, 1
  %t318 = call ptr @__olang_region_or(ptr %t317, ptr null)
  %t319 = call ptr @__olang_region_home(ptr %t318)
  %t320 = icmp ne ptr %t319, null
  %t321 = select i1 %t320, ptr %t319, ptr null
  %t322 = icmp eq ptr %t321, %t314
  call void @__olang_region_settle(ptr %t314, i1 %t322)
  br label %bb76
bb76:
  %t323 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l54
  %t324 = ptrtoint ptr %v5 to i64
  store i64 %t324, ptr %l137, !tbaa !24
  %t325 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e49
  br i1 %t325, label %bb77, label %bb78
bb77:
  %t327 = call ptr @__olang_region_make(ptr %v5)
  %t328 = ptrtoint ptr %t327 to i64
  store i64 %t328, ptr %l137, !tbaa !24
  br label %bb78
bb78:
  %t329 = load i64, ptr %l137
  %t330 = inttoptr i64 %t329 to ptr
  %t331 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t330, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t331, ptr %l139
  br label %bb79
bb79:
  %t332 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e49
  br i1 %t332, label %bb80, label %bb81
bb80:
  %t334 = load i64, ptr %l137
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139, i32 0, i32 0
  %t337 = load { i64, ptr }, ptr %t336
  %t338 = extractvalue { i64, ptr } %t337, 1
  %t339 = call ptr @__olang_region_or(ptr %t338, ptr null)
  %t340 = call ptr @__olang_region_home(ptr %t339)
  %t341 = icmp ne ptr %t340, null
  %t342 = select i1 %t341, ptr %t340, ptr null
  %t343 = icmp eq ptr %t342, %t335
  call void @__olang_region_settle(ptr %t335, i1 %t343)
  br label %bb81
bb81:
  %t344 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l139
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t344, ptr %l55
  %t345 = ptrtoint ptr %v5 to i64
  store i64 %t345, ptr %l141, !tbaa !24
  %t346 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e50
  br i1 %t346, label %bb82, label %bb83
bb82:
  %t348 = call ptr @__olang_region_make(ptr %v5)
  %t349 = ptrtoint ptr %t348 to i64
  store i64 %t349, ptr %l141, !tbaa !24
  br label %bb83
bb83:
  %t350 = load i64, ptr %l141
  %t351 = inttoptr i64 %t350 to ptr
  %t352 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t351, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %l143
  br label %bb84
bb84:
  %t353 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e50
  br i1 %t353, label %bb85, label %bb86
bb85:
  %t355 = load i64, ptr %l141
  %t356 = inttoptr i64 %t355 to ptr
  %t357 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143, i32 0, i32 0
  %t358 = load { i64, ptr }, ptr %t357
  %t359 = extractvalue { i64, ptr } %t358, 1
  %t360 = call ptr @__olang_region_or(ptr %t359, ptr null)
  %t361 = call ptr @__olang_region_home(ptr %t360)
  %t362 = icmp ne ptr %t361, null
  %t363 = select i1 %t362, ptr %t361, ptr null
  %t364 = icmp eq ptr %t363, %t356
  call void @__olang_region_settle(ptr %t356, i1 %t364)
  br label %bb86
bb86:
  %t365 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t365, ptr %l56
  store i1 false, ptr %l57, !tbaa !21
  %t366 = ptrtoint ptr %v5 to i64
  store i64 %t366, ptr %l145, !tbaa !24
  %t367 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e52
  br i1 %t367, label %bb87, label %bb88
bb87:
  %t369 = call ptr @__olang_region_make(ptr %v5)
  %t370 = ptrtoint ptr %t369 to i64
  store i64 %t370, ptr %l145, !tbaa !24
  br label %bb88
bb88:
  %t371 = load i64, ptr %l145
  %t372 = inttoptr i64 %t371 to ptr
  %t373 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t372, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t373, ptr %l147
  br label %bb89
bb89:
  %t374 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e52
  br i1 %t374, label %bb90, label %bb91
bb90:
  %t376 = load i64, ptr %l145
  %t377 = inttoptr i64 %t376 to ptr
  %t378 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147, i32 0, i32 0
  %t379 = load { i64, ptr }, ptr %t378
  %t380 = extractvalue { i64, ptr } %t379, 1
  %t381 = call ptr @__olang_region_or(ptr %t380, ptr null)
  %t382 = call ptr @__olang_region_home(ptr %t381)
  %t383 = icmp ne ptr %t382, null
  %t384 = select i1 %t383, ptr %t382, ptr null
  %t385 = icmp eq ptr %t384, %t377
  call void @__olang_region_settle(ptr %t377, i1 %t385)
  br label %bb91
bb91:
  %t386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, ptr %l58
  %t387 = ptrtoint ptr %v5 to i64
  store i64 %t387, ptr %l149, !tbaa !24
  %t388 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e53
  br i1 %t388, label %bb92, label %bb93
bb92:
  %t390 = call ptr @__olang_region_make(ptr %v5)
  %t391 = ptrtoint ptr %t390 to i64
  store i64 %t391, ptr %l149, !tbaa !24
  br label %bb93
bb93:
  %t392 = load i64, ptr %l149
  %t393 = inttoptr i64 %t392 to ptr
  %t394 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t393, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t394, ptr %l151
  br label %bb94
bb94:
  %t395 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e53
  br i1 %t395, label %bb95, label %bb96
bb95:
  %t397 = load i64, ptr %l149
  %t398 = inttoptr i64 %t397 to ptr
  %t399 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151, i32 0, i32 0
  %t400 = load { i64, ptr }, ptr %t399
  %t401 = extractvalue { i64, ptr } %t400, 1
  %t402 = call ptr @__olang_region_or(ptr %t401, ptr null)
  %t403 = call ptr @__olang_region_home(ptr %t402)
  %t404 = icmp ne ptr %t403, null
  %t405 = select i1 %t404, ptr %t403, ptr null
  %t406 = icmp eq ptr %t405, %t398
  call void @__olang_region_settle(ptr %t398, i1 %t406)
  br label %bb96
bb96:
  %t407 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l151
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t407, ptr %l59
  %t408 = ptrtoint ptr %v5 to i64
  store i64 %t408, ptr %l153, !tbaa !24
  %t409 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e54
  br i1 %t409, label %bb97, label %bb98
bb97:
  %t411 = call ptr @__olang_region_make(ptr %v5)
  %t412 = ptrtoint ptr %t411 to i64
  store i64 %t412, ptr %l153, !tbaa !24
  br label %bb98
bb98:
  %t413 = load i64, ptr %l153
  %t414 = inttoptr i64 %t413 to ptr
  %t415 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t414, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t415, ptr %l155
  br label %bb99
bb99:
  %t416 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e54
  br i1 %t416, label %bb100, label %bb101
bb100:
  %t418 = load i64, ptr %l153
  %t419 = inttoptr i64 %t418 to ptr
  %t420 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155, i32 0, i32 0
  %t421 = load { i64, ptr }, ptr %t420
  %t422 = extractvalue { i64, ptr } %t421, 1
  %t423 = call ptr @__olang_region_or(ptr %t422, ptr null)
  %t424 = call ptr @__olang_region_home(ptr %t423)
  %t425 = icmp ne ptr %t424, null
  %t426 = select i1 %t425, ptr %t424, ptr null
  %t427 = icmp eq ptr %t426, %t419
  call void @__olang_region_settle(ptr %t419, i1 %t427)
  br label %bb101
bb101:
  %t428 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l155
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t428, ptr %l60
  store i1 false, ptr %l61, !tbaa !21
  store i1 false, ptr %l62, !tbaa !21
  %t429 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t429, ptr %l157
  br label %bb102
bb102:
  %t430 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l157
  %t431 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 0
  %t432 = load ptr, ptr %l6, !tbaa !29
  store ptr %t432, ptr %t431, !tbaa !29
  %t433 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 1
  %t434 = load ptr, ptr %l7, !tbaa !29
  store ptr %t434, ptr %t433, !tbaa !29
  %t435 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 2
  %t436 = load ptr, ptr %l8, !tbaa !29
  store ptr %t436, ptr %t435, !tbaa !29
  %t437 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 3
  %t438 = load ptr, ptr %l9, !tbaa !29
  store ptr %t438, ptr %t437, !tbaa !29
  %t439 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 4
  %t440 = load ptr, ptr %l10, !tbaa !29
  store ptr %t440, ptr %t439, !tbaa !29
  %t441 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 5
  %t442 = load i64, ptr %l11, !tbaa !24
  store i64 %t442, ptr %t441, !tbaa !24
  %t443 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 6
  %t444 = load i64, ptr %l12, !tbaa !24
  store i64 %t444, ptr %t443, !tbaa !24
  %t445 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 7
  %t446 = load i32, ptr %l13, !range !{i32 0, i32 113}
  store i32 %t446, ptr %t445
  %t447 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 8
  %t448 = load i32, ptr %l14, !tbaa !23
  store i32 %t448, ptr %t447, !tbaa !23
  %t449 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 9
  %t450 = load i32, ptr %l15, !range !{i32 0, i32 113}
  store i32 %t450, ptr %t449
  %t451 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 10
  %t452 = load i32, ptr %l16, !tbaa !23
  store i32 %t452, ptr %t451, !tbaa !23
  %t453 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 11
  %t454 = load i1, ptr %l17, !tbaa !21
  store i1 %t454, ptr %t453, !tbaa !21
  %t455 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 12
  %t456 = load i1, ptr %l18, !tbaa !21
  store i1 %t456, ptr %t455, !tbaa !21
  %t457 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 13
  %t458 = load i1, ptr %l19, !tbaa !21
  store i1 %t458, ptr %t457, !tbaa !21
  %t459 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 14
  %t460 = load i1, ptr %l20, !tbaa !21
  store i1 %t460, ptr %t459, !tbaa !21
  %t461 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 15
  %t462 = load i1, ptr %l21, !tbaa !21
  store i1 %t462, ptr %t461, !tbaa !21
  %t463 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 16
  %t464 = load i1, ptr %l22, !tbaa !21
  store i1 %t464, ptr %t463, !tbaa !21
  %t465 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 17
  %t466 = load i1, ptr %l23, !tbaa !21
  store i1 %t466, ptr %t465, !tbaa !21
  %t467 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 18
  %t468 = load i64, ptr %l24, !tbaa !24
  store i64 %t468, ptr %t467, !tbaa !24
  %t469 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 19
  %t470 = load i1, ptr %l25, !tbaa !21
  store i1 %t470, ptr %t469, !tbaa !21
  %t471 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 20
  %t472 = load i1, ptr %l26, !tbaa !21
  store i1 %t472, ptr %t471, !tbaa !21
  %t473 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 21
  %t474 = load i64, ptr %l27, !tbaa !24
  store i64 %t474, ptr %t473, !tbaa !24
  %t475 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 22
  %t476 = load i1, ptr %l28, !tbaa !21
  store i1 %t476, ptr %t475, !tbaa !21
  %t477 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 23
  %t478 = load i64, ptr %l29, !tbaa !24
  store i64 %t478, ptr %t477, !tbaa !24
  %t479 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 24
  %t480 = load i1, ptr %l30, !tbaa !21
  store i1 %t480, ptr %t479, !tbaa !21
  %t481 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 25
  %t482 = load i32, ptr %l31, !tbaa !23
  store i32 %t482, ptr %t481, !tbaa !23
  %t483 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 26
  %t484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t484, ptr %t483
  %t485 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 27
  %t486 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t486, ptr %t485
  %t487 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 28
  %t488 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t488, ptr %t487
  %t489 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 29
  %t490 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t490, ptr %t489
  %t491 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 30
  %t492 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t492, ptr %t491
  %t493 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 31
  %t494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, ptr %t493
  %t495 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 32
  %t496 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t496, ptr %t495
  %t497 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 33
  %t498 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t498, ptr %t497
  %t499 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 34
  %t500 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t500, ptr %t499
  %t501 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 35
  %t502 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t502, ptr %t501
  %t503 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 36
  %t504 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t504, ptr %t503
  %t505 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 37
  %t506 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t506, ptr %t505
  %t507 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 38
  %t508 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t508, ptr %t507
  %t509 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 39
  %t510 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t510, ptr %t509
  %t511 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 40
  %t512 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t512, ptr %t511, !tbaa !27
  %t513 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 41
  %t514 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t514, ptr %t513
  %t515 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 42
  %t516 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t516, ptr %t515
  %t517 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 43
  %t518 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t518, ptr %t517
  %t519 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 44
  %t520 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t520, ptr %t519
  %t521 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 45
  %t522 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t522, ptr %t521
  %t523 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 46
  %t524 = load i1, ptr %l52, !tbaa !21
  store i1 %t524, ptr %t523, !tbaa !21
  %t525 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 47
  %t526 = load i1, ptr %l53, !tbaa !21
  store i1 %t526, ptr %t525, !tbaa !21
  %t527 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 48
  %t528 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t528, ptr %t527
  %t529 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 49
  %t530 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t530, ptr %t529
  %t531 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 50
  %t532 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t532, ptr %t531
  %t533 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 51
  %t534 = load i1, ptr %l57, !tbaa !21
  store i1 %t534, ptr %t533, !tbaa !21
  %t535 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 52
  %t536 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t536, ptr %t535
  %t537 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 53
  %t538 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t538, ptr %t537
  %t539 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 54
  %t540 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t540, ptr %t539
  %t541 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 55
  %t542 = load i1, ptr %l61, !tbaa !21
  store i1 %t542, ptr %t541, !tbaa !21
  %t543 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 56
  %t544 = load i1, ptr %l62, !tbaa !21
  store i1 %t544, ptr %t543, !tbaa !21
  %t545 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t430, ptr %t545
  %t547 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 58
  store i1 false, ptr %t547, !tbaa !21
  %t549 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 59
  store i1 false, ptr %t549, !tbaa !21
  %t551 = getelementptr %"compiler/parse:Parser", ptr %l158, i32 0, i32 60
  store i1 false, ptr %t551, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l158, i64 1048, i1 false)
  br label %ret
ret:
  ret void
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"an error word" }>, align 8
@.d1 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"the type a literal makes before the [, as in Array<I32>[...]" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d2 = private constant <{ i64, [65 x i8] }> <{ i64 0, [65 x i8] c"'fn' or 'type' - an extern block declares C's functions and types" }>, align 8
@.d3 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"'for NAME in' after 'comptime'" }>, align 8
@.d4 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"an expression" }>, align 8
@.d5 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
@.d6 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@.d7 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Base" }>, align 8
@.d9 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Element" }>, align 8
@.d10 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Target" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
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
@.d13 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a type" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e1 = weak hidden constant i1 false
@.d16 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"an if" }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a loop" }>, align 8
@.d18 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a match" }>, align 8
@.d19 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"a block (a block takes no ':')" }>, align 8
@.d20 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a join" }>, align 8
@.d21 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"a defer" }>, align 8
@.d22 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"an errdefer" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d28 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d30 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"(chain " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"(if " }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d35 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(call " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d38 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"(generic " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d41 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"expr" }>, align 8
@.d42 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"t.olang" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d44 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d45 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d46 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" !" }>, align 8
@olang_2esole_2ecompiler_2fparse_3aParser_2e26 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2fparse_3aParser_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e28 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ector(ptr %v0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@olang_2esole_2ecompiler_2fparse_3aParser_2e29 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e36 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e37 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e41 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e42 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e43 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e44 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e49 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e50 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e52 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e53 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e54 = weak hidden constant i1 false
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
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehends(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecomprehension(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, ptr %a2, ptr %a3, i32 %a4)
declare { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %v0, i32 %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPlace(ptr %v0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/diagmsg:Msg" %a3)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentry(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprec(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eToArray_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Chain" @compiler_2fast_3aChain_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fparse_2ecomparison(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclHere(ptr %v0, ptr %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBlockNotClosed(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eTruncate_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/parse:stackMarks" @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarks(ptr %v0, ptr %a0)
@olang_loc_3a8ad8017031eccf_6f47b3cce535c81b = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_9090e2f728d8157a_2317b9fcceb6fe86 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmt(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2efieldAttrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2epathIds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_34fec3df9092f56c_7b6dc988b92a4ce8 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclosesAngle(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftoken_2eSpace = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e134f20c62dd29bf_7d644e0c862b15db = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_2b194c707e7a9eea_6d7c024a04ee9246 = external constant [0 x i8]
declare %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ePush_H43bc1cace347592514b4248ffd44c907(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econdFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7f479cc541fc1ad4_6e65e2fdc3321828 = external constant [0 x i8]
@olang_loc_85a40113c80e7e3e_834c2ee7dcdf6d7a = external constant [0 x i8]
@olang_loc_6c22b543e414e27d_3e5c1ca73c24bcf9 = external constant [0 x i8]
declare %"compiler/ast:Multi" @compiler_2fast_3aMulti_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i1 %a1, { i64, ptr } %a2)
@olang_loc_2f9cebe9c997fb45_8e0297a0e5dae7e9 = external constant [0 x i8]
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0)
@olang_loc_3ab225d58e3cfe31_e99e7d1082de1bd = external constant [0 x i8]
declare %"compiler/ast:TypeDecl" @compiler_2fast_3aTypeDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, { i64, ptr } %a1, i1 %a2, ptr %a3, { i64, ptr } %a4, i32 %a5, i1 %a6)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexternFn(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforSource(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereflListPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebody(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a242a306f172fb83_ec0e5b3ff97fbb87 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/ast:ForIn" @compiler_2fast_3aForIn_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, i32 %a1, ptr %a2, i1 %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@olang_loc_f716ec0be1acdc8e_190b3cb13895b492 = external constant [0 x i8]
@olang_loc_cb74f4f97f245c8d_4142c043b1c11131 = external constant [0 x i8]
@olang_loc_1dc7182ae9b7028_5b1b6c7caeebe964 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esimpleStmt(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:For3" @compiler_2fast_3aFor3_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i1 @compiler_2fparse_2ekeywordNamesField(i32 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordFieldRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseValueComma(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eMatchValueOne(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisKw(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eKeywordAsName(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @compiler_2fparse_2eisJoiningOp(i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLineStartsWithOperator(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDestructInBody(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTrailingComma(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eErrorAfterQuestion(ptr %v0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebranch(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:If" @compiler_2fast_3aIf_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edecl(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eAt_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncItem(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3f74969944d00b69_b8e7e882b42021d = external constant [0 x i8]
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_5d444e9b92bac566_79a754ee236bef22 = external constant [0 x i8]
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_824bfdca782f89b4_8a051d8e1bdc5e78 = external constant [0 x i8]
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eampOperator(ptr %v0, ptr %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseType(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fparse_2eisTypeCasePath(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { { i64, ptr }, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/ast:Case" @compiler_2fast_3aCase_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, %"compiler/source:Span" %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, { i64, ptr } %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2ePush_3ccompiler_2fast_3aCase_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2eToArray_3ccompiler_2fast_3aCase_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Match" @compiler_2fast_3aMatch_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2)
@olang_loc_2c371f21e588b068_13da37aea4ea5bc = external constant [0 x i8]
@G_2ecompiler_2fmsgs_2eEndOfLine = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2fmsgs_2eEndOfFile = external constant <{ [8 x i8], ptr }>
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_97d42995c5706fd7_20b731538cf045b = external constant [0 x i8]
@olang_loc_787ae3c3318fe322_f2232752b79280c6 = external constant [0 x i8]
@olang_loc_afe07cd3f11f5e9a_d335478c7d935166 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2erendering(ptr %v0, ptr %v1, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrsHere(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_f0055d05bbcc9e33_2e682d4d4b5dbed7 = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %a0)
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprimary(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisQualifiedType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsSpaced(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_148080230b4c6cc_b965c2d4ca1d1020 = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fparse_2ebuiltinType(ptr %v0, { i64, ptr } %a0)
@olang_loc_b7d265f950b1c844_fc5ee8d7b150faf8 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eTrunc_H8c52d56c2ff2ec1f038dbe3d42a0a9e1(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eTruncate_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eTrunc_H311fd53ced078d1b110127cfa5549832(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eTruncate_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_682b81c4be20c47_acb581c54a6720db = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsResult(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epromises(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseMisplaced(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, i1 %a6, { i64, ptr } %a7)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsShape(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaxisItem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b08fe5a62583e117_e5b5edd841fa1acb = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNesting(ptr %v0, i64 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eHold(ptr %v0, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare %"compiler/ast:TopBranch" @compiler_2fast_3aTopBranch_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1, i64 %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ejoinRest(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_e98eee410cc159b2_377f58609bf35bd6 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrsArg(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArg(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_8764526ae5415d75_f5a9948c86d2d3b9 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eFuncTypeBare(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBody(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_ead0ed9b34ee6f0_4abfb82b89e87654 = external constant [0 x i8]
@olang_loc_ae62324d96d86fcb_b2eaa0dd969a6637 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNeedlessGroup(ptr %v0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2egrouped(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_c7048dff8864462d_6ca6baed1a8cf791 = external constant [0 x i8]
@olang_loc_6811a11f54350b9a_640e4e5711fedc76 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eweakType(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadjacent(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_5787450c8afeca22_493a6afca2796a86 = external constant [0 x i8]
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLineStart(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_4582cd3e20803687_2be8b05c8d066113 = external constant [0 x i8]
@olang_loc_84149e0bf5f8d0aa_2bd7ba413482fcb6 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8e37d10a9f86ee49_f510a1627c721295 = external constant [0 x i8]
@olang_loc_f8a87ee7efbd8dc_1d33de4ca651bcb8 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eValueAfterEq(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclRest(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_27f714d6bf6116e7_8d792a4c0b0d9f53 = external constant [0 x i8]
@olang_loc_d00b0c1989dce2f2_291a9b7532a6cf1e = external constant [0 x i8]
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2elastField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
@olang_loc_af06113cf8aef81c_32854973a8f51e0 = external constant [0 x i8]
@olang_loc_6ff476a4e2a6097a_2b56ab96df058916 = external constant [0 x i8]
declare i1 @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eIsFunc(ptr %v0, ptr %a0)
@olang_loc_df55213c12c66f02_faf3a3bc6284f73e = external constant [0 x i8]
@olang_loc_944ad1edd3a79eba_8cd1e5aa7bbd35a6 = external constant [0 x i8]
@olang_loc_95becaa34f722781_c104ec8a8e14f09d = external constant [0 x i8]
@olang_loc_a6e4b06ca3f2f7b3_b26c102023f13b6f = external constant [0 x i8]
declare %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fparse_3aOracle_2ector(ptr %out, ptr %v0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eChooseAll(ptr %v0, ptr %a0)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fparse_2eshapeDecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_e0fd5cf4c2bfd9fe_e3c6f8b51d6fcd32 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_936bfbc19493319b_da93a9696e3b504f = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e_2ector(ptr %v0)

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
