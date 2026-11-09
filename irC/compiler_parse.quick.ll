source_filename = "compiler_parse.quick.ll"
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
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Attr" = type { %"compiler/source:Span", ptr, i32 }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
%"compiler/parse:stackMarks" = type { i64, i64, i64, i64, i64, i64, i64 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/parse:NameList" = type { { i64, ptr }, { i64, ptr } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Case" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, ptr }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:Promise" = type { %"compiler/source:Span", i32, { i64, ptr } }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
@G_2ecompiler_2fparse_2eMaxNesting = constant <{ [8 x i8] }> <{ [8 x i8] c"\20\4E\00\00\00\00\00\00" }>, align 8
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
  %s38 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t189 = alloca { i64, [3 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 112)
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
  %t10 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s1, i32 112)
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
  %t136 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t133, i32 113)
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
  %t210 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %v0, ptr %t208)
  store { i64, ptr } %t210, ptr %l101
  br label %bb35
bb35:
  %t211 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t218 = load i64, ptr %l99, !tbaa !24
  %t220 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBlockNotClosed(ptr %v0, ptr %v0, i64 %t218, { i64, ptr } %t217)
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
  %t293 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t290, i32 74)
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
  %t430 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t427, i32 113)
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
  %t442 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s38, i32 113)
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
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 30}
  %t23 = icmp eq i64 %t21, 13
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
  %t4 = load i32, ptr %l4, !range !{i32 0, i32 114}
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
  %t13 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s1, i32 99)
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
  %t51 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t53 = trunc i64 99 to i32
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
  %t57 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t59 = trunc i64 107 to i32
  %t60 = icmp eq i32 %t57, %t59
  br i1 %t60, label %bb15, label %bb16
bb15:
  store i32 99, ptr %l26
  br label %bb20
bb16:
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t65 = trunc i64 100 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb17, label %bb18
bb17:
  store i32 78, ptr %l30
  br label %bb19
bb18:
  store i32 100, ptr %l30
  br label %bb19
bb19:
  %t70 = load i32, ptr %l30, !range !{i32 0, i32 114}
  store i32 %t70, ptr %l26
  br label %bb20
bb20:
  %t71 = load i32, ptr %l26, !range !{i32 0, i32 114}
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
  store i32 99, ptr %t84
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
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i1
  %l7 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i32
  %l13 = alloca i32
  %l16 = alloca i64
  %l19 = alloca i1
  %l23 = alloca ptr
  %l24 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i32
  %l29 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i32
  %l38 = alloca i1
  %l43 = alloca ptr
  %l45 = alloca { i64, ptr }
  %l47 = alloca i32
  %l50 = alloca i32
  %l53 = alloca %"compiler/source:Span"
  %l57 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %rv = alloca { i32, ptr }
  %t149 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 110)
  store i1 %t4, ptr %l5
  br label %bb1
bb1:
  %t5 = load i1, ptr %l5, !tbaa !21
  %t6 = xor i1 %t5, true
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eexpr(ptr %v0, ptr %v1, ptr %t8)
  %t11 = extractvalue { i32, ptr } %t10, 1
  %t12 = extractvalue { i32, ptr } %t10, 0
  store i32 %t12, ptr %l10
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb5, label %ok.14, !prof !99
ok.14:
  store ptr %t11, ptr %l9
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t15 = load ptr, ptr %l9, !tbaa !29
  store ptr %t15, ptr %l7, !tbaa !29
  br label %bb6
bb5:
  %t16 = load i32, ptr %l10, !tbaa !23
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
  %t27 = load ptr, ptr %l7, !tbaa !29
  %t28 = insertvalue { i32, ptr } zeroinitializer, ptr %t27, 1
  store { i32, ptr } %t28, ptr %rv
  br label %ret
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t29)
  store i32 %t31, ptr %l13
  br label %bb8
bb8:
  %t32 = load i32, ptr %l13, !tbaa !23
  store i32 %t32, ptr %l1, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/parse:Parser", ptr %t33, i32 0, i32 31
  %t37 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l16
  br label %bb9
bb9:
  %t38 = load i64, ptr %l16, !tbaa !24
  store i64 %t38, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t42 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t39, i32 111)
  store i1 %t42, ptr %l19
  br label %bb11
bb11:
  %t43 = load i1, ptr %l19, !tbaa !21
  %t44 = xor i1 %t43, true
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb12, label %bb13
bb12:
  br label %bb26
bb13:
  br label %bb14
bb14:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/parse:Parser", ptr %t48, i32 0, i32 31
  store ptr %t50, ptr %l23, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eelem(ptr %v0, ptr %v0, ptr %t51)
  %t54 = extractvalue { i32, ptr } %t53, 1
  %t55 = extractvalue { i32, ptr } %t53, 0
  store i32 %t55, ptr %l27
  %t56 = icmp ne i32 %t55, 0
  br i1 %t56, label %bb16, label %ok.57, !prof !99
ok.57:
  store ptr %t54, ptr %l26
  br label %bb15
bb15:
  %t58 = load ptr, ptr %l26, !tbaa !29
  store ptr %t58, ptr %l24, !tbaa !29
  br label %bb17
bb16:
  %t59 = load i32, ptr %l27, !tbaa !23
  %t60 = lshr i32 %t59, 16
  %t61 = and i32 %t59, 65535
  %t62 = icmp eq i32 %t60, 1
  %t63 = select i1 %t62, i32 1, i32 0
  %t64 = icmp eq i32 %t59, 0
  %t65 = shl i32 %t63, 16
  %t66 = or i32 %t65, %t61
  %t67 = select i1 %t64, i32 0, i32 %t66
  %t69 = insertvalue { i32, ptr } zeroinitializer, i32 %t67, 0
  store { i32, ptr } %t69, ptr %rv
  br label %ret
bb17:
  %t70 = load ptr, ptr %l23, !tbaa !29
  %t71 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v0, ptr %t70, ptr %t71)
  br label %bb18
bb18:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t75 = call { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %t72, i32 111)
  %t76 = extractvalue { i32, i1 } %t75, 1
  %t77 = extractvalue { i32, i1 } %t75, 0
  store i32 %t77, ptr %l33
  %t78 = icmp ne i32 %t77, 0
  br i1 %t78, label %bb20, label %ok.79, !prof !99
ok.79:
  store i1 %t76, ptr %l32
  br label %bb19
bb19:
  %t80 = load i1, ptr %l32, !tbaa !21
  store i1 %t80, ptr %l29, !tbaa !21
  br label %bb21
bb20:
  %t81 = load i32, ptr %l33, !tbaa !23
  %t82 = lshr i32 %t81, 16
  %t83 = and i32 %t81, 65535
  %t84 = icmp eq i32 %t82, 1
  %t85 = select i1 %t84, i32 1, i32 0
  %t86 = icmp eq i32 %t81, 0
  %t87 = shl i32 %t85, 16
  %t88 = or i32 %t87, %t83
  %t89 = select i1 %t86, i32 0, i32 %t88
  %t91 = insertvalue { i32, ptr } zeroinitializer, i32 %t89, 0
  store { i32, ptr } %t91, ptr %rv
  br label %ret
bb21:
  %t92 = load i1, ptr %l29, !tbaa !21
  %t93 = xor i1 %t92, true
  br i1 %t93, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  br label %bb25
bb25:
  br label %bb10
bb26:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t98 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t95, i32 111)
  store i1 %t98, ptr %l38
  br label %bb27
bb27:
  %t99 = load i1, ptr %l38, !tbaa !21
  %t100 = xor i1 %t99, true
  br i1 %t100, label %bb28, label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/parse:Parser", ptr %t102, i32 0, i32 31
  %t105 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %t104, i64 %t105)
  br label %bb30
bb29:
  br label %bb35
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l43, !tbaa !29
  %t110 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s4, i32 111)
  store { i64, ptr } %t110, ptr %l45
  br label %bb31
bb31:
  %t111 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t118 = load ptr, ptr %l43, !tbaa !29
  %t120 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s4, ptr %t118, { i64, ptr } %t117)
  store i32 %t120, ptr %l47
  %t121 = icmp ne i32 %t120, 0
  br i1 %t121, label %bb33, label %ok.122, !prof !99
ok.122:
  br label %bb32
bb32:
  br label %bb34
bb33:
  %t123 = load i32, ptr %l47, !tbaa !23
  %t124 = lshr i32 %t123, 16
  %t125 = and i32 %t123, 65535
  %t126 = icmp eq i32 %t124, 1
  %t127 = select i1 %t126, i32 1, i32 0
  %t128 = icmp eq i32 %t123, 0
  %t129 = shl i32 %t127, 16
  %t130 = or i32 %t129, %t125
  %t131 = select i1 %t128, i32 0, i32 %t130
  call void @__olang_scope_close(ptr %s4)
  %t133 = insertvalue { i32, ptr } zeroinitializer, i32 %t131, 0
  store { i32, ptr } %t133, ptr %rv
  br label %ret
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb35:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t134)
  store i32 %t136, ptr %l50
  br label %bb36
bb36:
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i32, ptr %l1, !tbaa !23
  %t141 = call %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %t137, i32 %t138)
  store %"compiler/source:Span" %t141, ptr %l53
  br label %bb37
bb37:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/parse:Parser", ptr %t142, i32 0, i32 31
  %t145 = load i64, ptr %l2, !tbaa !24
  %t148 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t144, i64 %t145)
  store { i64, ptr } %t148, ptr %l57
  br label %bb38
bb38:
  store { i64, [4 x i64] } zeroinitializer, ptr %t149
  %t150 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 0
  store i64 18, ptr %t150
  %t151 = load %"compiler/source:Span", ptr %l53
  %t152 = insertvalue { %"compiler/source:Span", { i64, ptr } } undef, %"compiler/source:Span" %t151, 0
  %t153 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t154 = insertvalue { %"compiler/source:Span", { i64, ptr } } %t152, { i64, ptr } %t153, 1
  %t155 = getelementptr { i64, [4 x i64] }, ptr %t149, i32 0, i32 1
  store { %"compiler/source:Span", { i64, ptr } } %t154, ptr %t155
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
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 76)
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
  %t11 = load i32, ptr %l7, !range !{i32 0, i32 114}
  %t13 = trunc i64 76 to i32
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
  %t22 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t24 = trunc i64 76 to i32
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
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 112)
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
  %t25 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t22, i32 113)
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
  %t45 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t42, i32 113)
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
  %t85 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t82, i32 108)
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
  %t14 = load i64, ptr %t13, !range !{i64 0, i64 30}
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
  %t35 = load i64, ptr %t34, !range !{i64 0, i64 30}
  %t37 = icmp eq i64 %t35, 14
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
  %t33 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t30, i32 75)
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
  %t33 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t30, i32 112)
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
  %t91 = load i32, ptr %l65, !range !{i32 0, i32 114}
  store i32 %t91, ptr %l6
  %t92 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t94 = trunc i64 27 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l68, !tbaa !21
  br label %bb26
bb25:
  %t97 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t99 = trunc i64 75 to i32
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
  %t126 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t123, i32 75)
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
  %t310 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t312 = trunc i64 80 to i32
  %t313 = icmp eq i32 %t310, %t312
  br i1 %t313, label %bb76, label %bb77
bb76:
  store i1 true, ptr %l150, !tbaa !21
  br label %bb78
bb77:
  %t315 = load i32, ptr %l6, !range !{i32 0, i32 114}
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
  %t321 = load i32, ptr %l6, !range !{i32 0, i32 114}
  %t323 = trunc i64 39 to i32
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
  %t372 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t369, i32 80)
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
  %t449 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t446, i32 78)
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
  call void @__olang_check_failed(ptr @olang_loc_f716ec0be1acdc8e_190b3cb13895b492)
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
  call void @__olang_check_failed(ptr @olang_loc_f716ec0be1acdc8e_190b3cb13895b492)
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
  call void @__olang_check_failed(ptr @olang_loc_de9eff954e569147_2ba8982dfff1933)
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
  %t545 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t542, i32 75)
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
  %t585 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t582, i32 75)
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
  %t685 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s15, ptr %t683, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d2, i32 0, i32 1) })
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

define dso_local i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisTypePath(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l17 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l22 = alloca %"compiler/token:Token"
  %l23 = alloca { i64, ptr }
  %l24 = alloca i32
  %l25 = alloca i1
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l31 = alloca i64
  %l34 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca ptr
  %l56 = alloca %"compiler/token:Token"
  %l57 = alloca { i64, ptr }
  %l61 = alloca ptr
  %l62 = alloca i64
  %l66 = alloca ptr
  %l68 = alloca { i64, ptr }
  %l70 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/parse:Parser", ptr %t5, i32 0, i32 3
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l12, !tbaa !29
  %t9 = ptrtoint ptr %v0 to i64
  store i64 %t9, ptr %l13, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e3
  br i1 %t10, label %bb3, label %bb4
bb2:
  br label %bb9
bb3:
  %t12 = load ptr, ptr %l12, !tbaa !29
  %t13 = call ptr @__olang_region_or(ptr %t12, ptr %v0)
  %t14 = ptrtoint ptr %t13 to i64
  store i64 %t14, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/parse:Parser", ptr %t15, i32 0, i32 3
  %t18 = load ptr, ptr %t17, !tbaa !29
  %t20 = getelementptr %"compiler/parse:Oracle", ptr %t18, i32 0, i32 0
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/parse:Parser", ptr %t21, i32 0, i32 2
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l19, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l20, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %t26)
  store %"compiler/token:Token" %t28, ptr %l22
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l20, !tbaa !29
  %t30 = load %"compiler/token:Token", ptr %l22
  %t31 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t29, %"compiler/token:Token" %t30)
  store { i64, ptr } %t31, ptr %l23
  br label %bb6
bb6:
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t34 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t32, { i64, ptr } %t33)
  store i32 %t34, ptr %l24
  br label %bb7
bb7:
  %t35 = load i64, ptr %l13
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = load ptr, ptr %l17, !tbaa !29
  %t38 = load i32, ptr %l24, !tbaa !23
  %t39 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %t36, ptr %t37, i32 %t38)
  store i1 %t39, ptr %l25
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t40 = load i1, ptr %l25, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
bb9:
  %t41 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t41, ptr %l26
  br label %bb10
bb10:
  %t42 = load %"std/prelude/text:StringBuilder", ptr %l26
  store %"std/prelude/text:StringBuilder" %t42, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t43 = load i64, ptr %l1, !tbaa !24
  store i64 %t43, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t49 = icmp sgt i64 %t45, %t46
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb16
bb13:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l3, !tbaa !24
  %t59 = sub i64 %t55, %t56
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = add i64 %t59, %t60
  %t65 = sub i64 %t63, 1
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = sdiv i64 %t65, %t66
  store i64 %t69, ptr %l34, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb15
bb15:
  %t71 = load i64, ptr %l34, !tbaa !24
  store i64 %t71, ptr %l31, !tbaa !24
  br label %bb16
bb16:
  %t72 = load i64, ptr %l31, !tbaa !24
  store i64 %t72, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = icmp slt i64 %t73, %t74
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb18, label %bb19
bb18:
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t81 = load i64, ptr %l3, !tbaa !24
  %t82 = load i64, ptr %l7, !tbaa !24
  %t83 = load i64, ptr %l5, !tbaa !24
  %t86 = mul i64 %t82, %t83
  %t89 = add i64 %t81, %t86
  store ptr %l2, ptr %l52, !tbaa !29
  %t91 = load ptr, ptr %l0, !tbaa !29
  store ptr %t91, ptr %l53, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t96 = call %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %t92, i64 %t89)
  store %"compiler/token:Token" %t96, ptr %l56
  br label %bb21
bb21:
  %t97 = load ptr, ptr %l53, !tbaa !29
  %t98 = load %"compiler/token:Token", ptr %l56
  %t99 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etext(ptr %v0, ptr %v0, ptr %t97, %"compiler/token:Token" %t98)
  store { i64, ptr } %t99, ptr %l57
  br label %bb22
bb22:
  %t100 = load ptr, ptr %l52, !tbaa !29
  %t101 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t100, { i64, ptr } %t101)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = add i64 %t102, 1
  store i64 %t104, ptr %l7, !tbaa !24
  br label %bb17
bb25:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/parse:Parser", ptr %t106, i32 0, i32 3
  %t109 = load ptr, ptr %t108, !tbaa !29
  store ptr %t109, ptr %l61, !tbaa !29
  %t110 = ptrtoint ptr %v0 to i64
  store i64 %t110, ptr %l62, !tbaa !24
  %t111 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e3
  br i1 %t111, label %bb26, label %bb27
bb26:
  %t113 = load ptr, ptr %l61, !tbaa !29
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr %v0)
  %t115 = ptrtoint ptr %t114 to i64
  store i64 %t115, ptr %l62, !tbaa !24
  br label %bb27
bb27:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/parse:Parser", ptr %t116, i32 0, i32 3
  %t119 = load ptr, ptr %t118, !tbaa !29
  %t121 = getelementptr %"compiler/parse:Oracle", ptr %t119, i32 0, i32 1
  store ptr %t121, ptr %l66, !tbaa !29
  %t123 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l2)
  store { i64, ptr } %t123, ptr %l68
  br label %bb28
bb28:
  %t124 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t125 = extractvalue { i64, ptr } %t124, 0
  %t126 = extractvalue { i64, ptr } %t124, 1
  %t127 = mul i64 %t125, 1
  %t128 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t127)
  call void @llvm.memcpy.p0.p0.i64(ptr %t128, ptr %t126, i64 %t127, i1 false)
  %t129 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t130 = insertvalue { i64, ptr } %t129, ptr %t128, 1
  %t131 = load i64, ptr %l62
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = load ptr, ptr %l66, !tbaa !29
  %t135 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %t132, ptr %s0, ptr %t133, { i64, ptr } %t130)
  store i1 %t135, ptr %l70
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t136 = load i1, ptr %l70, !tbaa !21
  store i1 %t136, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t52 = getelementptr %"compiler/parse:Parser", ptr %t50, i32 0, i32 52
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
  %t70 = getelementptr %"compiler/parse:Parser", ptr %t68, i32 0, i32 52
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
  %t155 = getelementptr %"compiler/parse:Parser", ptr %t153, i32 0, i32 52
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
  %t185 = getelementptr %"compiler/parse:Parser", ptr %t183, i32 0, i32 52
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %t185, i64 0)
  br label %bb49
bb49:
  br label %ret
ret:
  ret void
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
  %t4 = load i32, ptr %l7, !range !{i32 0, i32 114}
  store i32 %t4, ptr %l1
  %t5 = load i32, ptr %l1, !range !{i32 0, i32 114}
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
  %t22 = load i32, ptr %l17, !range !{i32 0, i32 114}
  store i32 %t22, ptr %l2
  %t23 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t25 = trunc i64 5 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb13
bb12:
  %t28 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t30 = trunc i64 37 to i32
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
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t37 = trunc i64 33 to i32
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
  %t91 = load i32, ptr %l50, !range !{i32 0, i32 114}
  store i32 %t91, ptr %l5
  %t92 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t94 = trunc i64 34 to i32
  %t95 = icmp eq i32 %t92, %t94
  br i1 %t95, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb32
bb31:
  %t97 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t99 = trunc i64 35 to i32
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
  %t103 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t105 = trunc i64 36 to i32
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
  %t109 = load i32, ptr %l5, !range !{i32 0, i32 114}
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
  %t115 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t117 = trunc i64 112 to i32
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
  %t34 = load i32, ptr %t33, !range !{i32 0, i32 114}
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
  %t4 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t1, i32 79)
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
  %t37 = load i32, ptr %l22, !range !{i32 0, i32 114}
  %t39 = trunc i64 32 to i32
  %t40 = icmp eq i32 %t37, %t39
  store i1 %t40, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t10 = load i32, ptr %l15, !range !{i32 0, i32 114}
  %t12 = trunc i64 110 to i32
  %t13 = icmp eq i32 %t10, %t12
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l13, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t18, i32 101)
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
  %t28 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t25, i32 110)
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
  %t39 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t36, i32 101)
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
  %t44 = load i32, ptr %l33, !range !{i32 0, i32 114}
  store i32 %t44, ptr %l3
  %t45 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t47 = trunc i64 110 to i32
  %t48 = icmp eq i32 %t45, %t47
  %t50 = xor i1 %t48, true
  br i1 %t50, label %bb20, label %bb21
bb20:
  %t52 = load i32, ptr %l3, !range !{i32 0, i32 114}
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
  %t60 = load i32, ptr %l42, !range !{i32 0, i32 114}
  %t62 = trunc i64 110 to i32
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
  %t77 = load i64, ptr %t76, !range !{i64 0, i64 30}
  %t79 = icmp eq i64 %t77, 13
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
  %t35 = load i32, ptr %t34, !range !{i32 0, i32 114}
  store i32 %t35, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t4 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t1, i32 31)
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
  %t30 = load i32, ptr %l49, !range !{i32 0, i32 114}
  %t32 = trunc i64 112 to i32
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
  %t94 = load i32, ptr %l82, !range !{i32 0, i32 114}
  %t96 = trunc i64 76 to i32
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
  %t211 = load i32, ptr %t210, !range !{i32 0, i32 114}
  %t213 = trunc i64 76 to i32
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
  %t232 = load i32, ptr %t231, !range !{i32 0, i32 114}
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
  %t262 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t260, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t262, ptr %l156
  br label %bb71
bb71:
  %t263 = load i1, ptr %l156, !tbaa !21
  %t264 = xor i1 %t263, true
  br i1 %t264, label %bb72, label %bb73
bb72:
  %t266 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t268 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t266, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
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
  %t275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t273, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d5, i32 0, i32 1) })
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
  %t282 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s15, { i64, ptr } %t280, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) })
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
  %t315 = load i32, ptr %t314, !range !{i32 0, i32 114}
  %t317 = trunc i64 112 to i32
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
  %t344 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t341, i32 112)
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
  %t386 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t383, i32 113)
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
  %t401 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t398, i32 32)
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
  %t578 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t575, i32 75)
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
  %t590 = load i32, ptr %l289, !range !{i32 0, i32 114}
  store i32 %t590, ptr %l31
  %t591 = load i32, ptr %l31, !range !{i32 0, i32 114}
  %t593 = trunc i64 112 to i32
  %t594 = icmp eq i32 %t591, %t593
  br i1 %t594, label %bb166, label %bb167
bb166:
  store i1 true, ptr %l292, !tbaa !21
  br label %bb168
bb167:
  %t596 = load i32, ptr %l31, !range !{i32 0, i32 114}
  %t598 = trunc i64 79 to i32
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
  %t602 = load i32, ptr %l31, !range !{i32 0, i32 114}
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
  %t608 = load i32, ptr %l31, !range !{i32 0, i32 114}
  %t610 = trunc i64 113 to i32
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
  %t614 = load i32, ptr %l31, !range !{i32 0, i32 114}
  %t616 = trunc i64 32 to i32
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
  %t620 = load i32, ptr %l31, !range !{i32 0, i32 114}
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
  %t732 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t729, i32 113)
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
  %t6 = load i32, ptr %t5, !range !{i32 0, i32 114}
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
  %t38 = load i32, ptr %l18, !range !{i32 0, i32 114}
  store i32 %t38, ptr %l2
  %t39 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t41 = trunc i64 1 to i32
  %t42 = icmp eq i32 %t39, %t41
  br i1 %t42, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t45 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t47 = trunc i64 6 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb11
bb10:
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t57 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t64 = load i32, ptr %l32, !range !{i32 0, i32 114}
  %t66 = trunc i64 108 to i32
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
  %t9 = load i32, ptr %l6, !range !{i32 0, i32 114}
  store i32 %t9, ptr %l1
  %t10 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t12 = trunc i64 5 to i32
  %t13 = icmp eq i32 %t10, %t12
  br i1 %t13, label %bb6, label %bb7
bb6:
  br label %bb16
bb7:
  %t15 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t17 = trunc i64 105 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb8, label %bb9
bb8:
  br label %bb16
bb9:
  %t20 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t22 = trunc i64 1 to i32
  %t23 = icmp eq i32 %t20, %t22
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  %t25 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t27 = trunc i64 108 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb12, label %bb13
bb12:
  br label %bb16
bb13:
  %t30 = load i32, ptr %l1, !range !{i32 0, i32 114}
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
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t37 = trunc i64 3 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb18, label %bb19
bb18:
  br label %bb26
bb19:
  %t40 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t42 = trunc i64 4 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t47 = trunc i64 6 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  %t50 = load i32, ptr %l1, !range !{i32 0, i32 114}
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
  %t4 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t6 = trunc i64 1 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %s1, ptr %t11, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) })
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
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t28 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 30}
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
  %t108 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %s4, i32 78)
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
  %t25 = getelementptr %"compiler/parse:Parser", ptr %t23, i32 0, i32 51
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
  %t168 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t165, i32 75)
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
  %t173 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t170, i32 109)
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
  %t209 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t206, i32 78)
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
  %t38 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t35, i32 76)
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
  %t4 = load i32, ptr %t3, !range !{i32 0, i32 114}
  %t6 = trunc i64 0 to i32
  %t7 = icmp eq i32 %t4, %t6
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/parse:Parser", ptr %t11, i32 0, i32 7
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
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
  %t36 = load i32, ptr %t35, !range !{i32 0, i32 114}
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
  %t12 = load i32, ptr %l18, !range !{i32 0, i32 114}
  store i32 %t12, ptr %l4
  %t13 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t15 = trunc i64 110 to i32
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
  %t45 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t47 = trunc i64 76 to i32
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
  store i64 14, ptr %t90
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
  %t105 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t102, i32 97)
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
  %t124 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t121, i32 97)
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
  store i64 13, ptr %t146
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
  store i64 13, ptr %t240
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
  store i64 13, ptr %t313
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
  %t325 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t327 = trunc i64 108 to i32
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
  store i64 12, ptr %t358
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
  %t370 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t372 = trunc i64 92 to i32
  %t373 = icmp eq i32 %t370, %t372
  br i1 %t373, label %bb86, label %bb87
bb86:
  br label %bb92
bb87:
  %t375 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t377 = trunc i64 93 to i32
  %t378 = icmp eq i32 %t375, %t377
  br i1 %t378, label %bb88, label %bb89
bb88:
  br label %bb92
bb89:
  %t380 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t382 = trunc i64 96 to i32
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
  %t388 = load i32, ptr %l153, !range !{i32 0, i32 114}
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
  %t397 = load i32, ptr %l10, !range !{i32 0, i32 114}
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
  %t412 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t414 = trunc i64 29 to i32
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
  store i64 11, ptr %t448
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
  %t460 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t462 = trunc i64 101 to i32
  %t463 = icmp eq i32 %t460, %t462
  br i1 %t463, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb127
bb108:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t467 = getelementptr %"compiler/parse:Parser", ptr %t465, i32 0, i32 7
  %t468 = load i32, ptr %t467, !range !{i32 0, i32 114}
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
  %t492 = load i32, ptr %l192, !range !{i32 0, i32 114}
  %t494 = trunc i64 110 to i32
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
  %t24 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t21, i32 71)
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
  %t93 = insertvalue { %"compiler/source:Span", i32, ptr, ptr } %t91, i32 71, 1
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

define dso_local { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esig(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i1 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i1
  %l3 = alloca i1
  %l4 = alloca i1
  %l5 = alloca i1
  %l6 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca ptr
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
  %l48 = alloca ptr
  %l50 = alloca ptr
  %l51 = alloca i32
  %l58 = alloca i1
  %l61 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i64
  %l70 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca i32
  %l84 = alloca i1
  %l87 = alloca i1
  %l94 = alloca { i64, ptr }
  %l96 = alloca i1
  %l100 = alloca i1
  %l103 = alloca i1
  %l105 = alloca i32
  %l106 = alloca ptr
  %l109 = alloca ptr
  %l110 = alloca i32
  %l112 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l115 = alloca i32
  %l120 = alloca i1
  %l122 = alloca i1
  %l125 = alloca { i64, ptr }
  %l127 = alloca ptr
  %l129 = alloca i32
  %l131 = alloca i32
  %l134 = alloca { i64, ptr }
  %l135 = alloca %"compiler/diagmsg:Msg"
  %l147 = alloca %"compiler/ast:Sig"
  %rv = alloca { i32, ptr }
  store ptr %a0, ptr %l0
  store i1 %a1, ptr %l1
  store i1 %a2, ptr %l2
  store i1 %a3, ptr %l3
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
  store i1 %t8, ptr %l4, !tbaa !21
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t12 = call { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %t9, i32 108)
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
  %t31 = getelementptr %"compiler/parse:Parser", ptr %t29, i32 0, i32 53
  store i1 false, ptr %t31, !tbaa !21
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/parse:Parser", ptr %t32, i32 0, i32 51
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l5, !tbaa !21
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i1, ptr %l2, !tbaa !21
  %t41 = getelementptr %"compiler/parse:Parser", ptr %t37, i32 0, i32 51
  store i1 %t38, ptr %t41, !tbaa !21
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/parse:Parser", ptr %t42, i32 0, i32 54
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
  %t56 = load i1, ptr %l5, !tbaa !21
  %t59 = getelementptr %"compiler/parse:Parser", ptr %t55, i32 0, i32 51
  store i1 %t56, ptr %t59, !tbaa !21
  %t61 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t61, ptr %rv
  br label %ret
bb10:
  %t62 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t62, ptr %l6, !tbaa !27
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i1, ptr %l5, !tbaa !21
  %t67 = getelementptr %"compiler/parse:Parser", ptr %t63, i32 0, i32 51
  store i1 %t64, ptr %t67, !tbaa !21
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/parse:Parser", ptr %t68, i32 0, i32 53
  %t71 = load i1, ptr %t70, !tbaa !21
  store i1 %t71, ptr %l7, !tbaa !21
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/parse:Parser", ptr %t73, i32 0, i32 53
  store i1 false, ptr %t75, !tbaa !21
  store ptr null, ptr %l8, !tbaa !29
  %t76 = load i1, ptr %l3, !tbaa !21
  br i1 %t76, label %bb11, label %bb12
bb11:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtractHere(ptr %v0, ptr %v1, ptr %t78)
  %t81 = extractvalue { i32, ptr } %t80, 1
  %t82 = extractvalue { i32, ptr } %t80, 0
  store i32 %t82, ptr %l51
  %t83 = icmp ne i32 %t82, 0
  br i1 %t83, label %bb14, label %ok.84, !prof !99
ok.84:
  store ptr %t81, ptr %l50
  br label %bb13
bb12:
  br label %bb16
bb13:
  %t85 = load ptr, ptr %l50, !tbaa !29
  store ptr %t85, ptr %l48, !tbaa !29
  br label %bb15
bb14:
  %t86 = load i32, ptr %l51, !tbaa !23
  %t87 = lshr i32 %t86, 16
  %t88 = and i32 %t86, 65535
  %t89 = icmp eq i32 %t87, 1
  %t90 = select i1 %t89, i32 1, i32 0
  %t91 = icmp eq i32 %t86, 0
  %t92 = shl i32 %t90, 16
  %t93 = or i32 %t92, %t88
  %t94 = select i1 %t91, i32 0, i32 %t93
  %t96 = insertvalue { i32, ptr } zeroinitializer, i32 %t94, 0
  store { i32, ptr } %t96, ptr %rv
  br label %ret
bb15:
  %t97 = load ptr, ptr %l48, !tbaa !29
  store ptr %t97, ptr %l8, !tbaa !29
  br label %bb16
bb16:
  %t98 = icmp sge i64 0, 0
  br i1 %t98, label %bb17, label %bb18
bb17:
  %t100 = icmp sle i64 0, 1152921504606846975
  br i1 %t100, label %bb19, label %bb20
bb18:
  call void @__olang_check_failed(ptr @olang_loc_682b81c4be20c47_acb581c54a6720db)
  unreachable
bb19:
  %t102 = mul i64 0, 8
  %t103 = insertvalue { i64, ptr } undef, i64 0, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t104, ptr %l9, !tbaa !27
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t109 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t106, i32 23)
  store i1 %t109, ptr %l58
  br label %bb21
bb20:
  call void @__olang_check_failed(ptr @olang_loc_682b81c4be20c47_acb581c54a6720db)
  unreachable
bb21:
  %t110 = load i1, ptr %l58, !tbaa !21
  store i1 %t110, ptr %l10, !tbaa !21
  %t111 = load i1, ptr %l10, !tbaa !21
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb22, label %bb23
bb22:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsResult(ptr %v0, ptr %t115)
  store i1 %t117, ptr %l63
  br label %bb24
bb23:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb25
bb24:
  %t118 = load i1, ptr %l63, !tbaa !21
  store i1 %t118, ptr %l61, !tbaa !21
  br label %bb25
bb25:
  %t119 = load i1, ptr %l61, !tbaa !21
  br i1 %t119, label %bb26, label %bb27
bb26:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/parse:Parser", ptr %t120, i32 0, i32 33
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l66
  br label %bb28
bb27:
  br label %bb46
bb28:
  %t125 = load i64, ptr %l66, !tbaa !24
  store i64 %t125, ptr %l11, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/parse:Parser", ptr %t126, i32 0, i32 20
  %t129 = load i1, ptr %t128, !tbaa !21
  store i1 %t129, ptr %l12, !tbaa !21
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/parse:Parser", ptr %t131, i32 0, i32 20
  store i1 true, ptr %t133, !tbaa !21
  br label %bb29
bb29:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeExpr(ptr %v0, ptr %v0, ptr %t134)
  %t137 = extractvalue { i32, ptr } %t136, 1
  %t138 = extractvalue { i32, ptr } %t136, 0
  store i32 %t138, ptr %l73
  %t139 = icmp ne i32 %t138, 0
  br i1 %t139, label %bb31, label %ok.140, !prof !99
ok.140:
  store ptr %t137, ptr %l72
  br label %bb30
bb30:
  %t141 = load ptr, ptr %l72, !tbaa !29
  store ptr %t141, ptr %l70, !tbaa !29
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i1, ptr %l12, !tbaa !21
  %t146 = getelementptr %"compiler/parse:Parser", ptr %t142, i32 0, i32 20
  store i1 %t143, ptr %t146, !tbaa !21
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/parse:Parser", ptr %t147, i32 0, i32 33
  %t150 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eTrunc_H8c52d56c2ff2ec1f038dbe3d42a0a9e1(ptr %v0, ptr %t149, i64 %t150)
  br label %bb33
bb33:
  %t154 = insertvalue { i32, ptr } zeroinitializer, i32 65536, 0
  store { i32, ptr } %t154, ptr %rv
  br label %ret
bb34:
  %t155 = load ptr, ptr %l70, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/parse:Parser", ptr %t156, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v0, ptr %t158, ptr %t155)
  br label %bb35
bb35:
  %t162 = load i1, ptr %l4, !tbaa !21
  br i1 %t162, label %bb36, label %bb37
bb36:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb39
bb37:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t167 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t164, i32 75)
  store i1 %t167, ptr %l87
  br label %bb38
bb38:
  %t168 = load i1, ptr %l87, !tbaa !21
  %t169 = xor i1 %t168, true
  store i1 %t169, ptr %l84, !tbaa !21
  br label %bb39
bb39:
  %t171 = load i1, ptr %l84, !tbaa !21
  br i1 %t171, label %bb40, label %bb41
bb40:
  br label %bb44
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  br label %bb29
bb44:
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load i1, ptr %l12, !tbaa !21
  %t176 = getelementptr %"compiler/parse:Parser", ptr %t172, i32 0, i32 20
  store i1 %t173, ptr %t176, !tbaa !21
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/parse:Parser", ptr %t177, i32 0, i32 33
  %t180 = load i64, ptr %l11, !tbaa !24
  %t183 = call { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %t179, i64 %t180)
  store { i64, ptr } %t183, ptr %l94
  br label %bb45
bb45:
  %t184 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t184, ptr %l9, !tbaa !27
  br label %bb46
bb46:
  store i1 false, ptr %l14, !tbaa !21
  %t185 = load i1, ptr %l3, !tbaa !21
  br i1 %t185, label %bb47, label %bb48
bb47:
  %t187 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t191 = icmp sgt i64 %t189, 0
  store i1 %t191, ptr %l96, !tbaa !21
  br label %bb49
bb48:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb49
bb49:
  %t193 = load i1, ptr %l96, !tbaa !21
  br i1 %t193, label %bb50, label %bb51
bb50:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t197 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t194, i32 56)
  store i1 %t197, ptr %l103
  br label %bb52
bb51:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb53
bb52:
  %t198 = load i1, ptr %l103, !tbaa !21
  store i1 %t198, ptr %l100, !tbaa !21
  br label %bb53
bb53:
  %t199 = load i1, ptr %l100, !tbaa !21
  br i1 %t199, label %bb54, label %bb55
bb54:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = call i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %t200)
  store i32 %t202, ptr %l105
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb57
bb57:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i1, ptr %l4, !tbaa !21
  %t207 = call { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %t203, i1 %t204)
  %t208 = extractvalue { i32, ptr } %t207, 1
  %t209 = extractvalue { i32, ptr } %t207, 0
  store i32 %t209, ptr %l110
  %t210 = icmp ne i32 %t209, 0
  br i1 %t210, label %bb59, label %ok.211, !prof !99
ok.211:
  store ptr %t208, ptr %l109
  br label %bb58
bb58:
  %t212 = load ptr, ptr %l109, !tbaa !29
  store ptr %t212, ptr %l106, !tbaa !29
  br label %bb60
bb59:
  %t213 = load i32, ptr %l110, !tbaa !23
  %t214 = lshr i32 %t213, 16
  %t215 = and i32 %t213, 65535
  %t216 = icmp eq i32 %t214, 1
  %t217 = select i1 %t216, i32 1, i32 0
  %t218 = icmp eq i32 %t213, 0
  %t219 = shl i32 %t217, 16
  %t220 = or i32 %t219, %t215
  %t221 = select i1 %t218, i32 0, i32 %t220
  %t223 = insertvalue { i32, ptr } zeroinitializer, i32 %t221, 0
  store { i32, ptr } %t223, ptr %rv
  br label %ret
bb60:
  %t224 = load ptr, ptr %l106, !tbaa !29
  store ptr %t224, ptr %l15, !tbaa !29
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t227 = call { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epromises(ptr %v0, ptr %v1, ptr %t225)
  %t228 = extractvalue { i32, { i64, ptr } } %t227, 1
  %t229 = extractvalue { i32, { i64, ptr } } %t227, 0
  store i32 %t229, ptr %l115
  %t230 = icmp ne i32 %t229, 0
  br i1 %t230, label %bb62, label %ok.231, !prof !99
ok.231:
  store { i64, ptr } %t228, ptr %l114
  br label %bb61
bb61:
  %t232 = load { i64, ptr }, ptr %l114, !tbaa !27
  store { i64, ptr } %t232, ptr %l112, !tbaa !27
  br label %bb63
bb62:
  %t233 = load i32, ptr %l115, !tbaa !23
  %t234 = lshr i32 %t233, 16
  %t235 = and i32 %t233, 65535
  %t236 = icmp eq i32 %t234, 1
  %t237 = select i1 %t236, i32 1, i32 0
  %t238 = icmp eq i32 %t233, 0
  %t239 = shl i32 %t237, 16
  %t240 = or i32 %t239, %t235
  %t241 = select i1 %t238, i32 0, i32 %t240
  %t243 = insertvalue { i32, ptr } zeroinitializer, i32 %t241, 0
  store { i32, ptr } %t243, ptr %rv
  br label %ret
bb63:
  %t244 = load { i64, ptr }, ptr %l112, !tbaa !27
  store { i64, ptr } %t244, ptr %l16, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t247 = extractvalue { i64, ptr } %t245, 0
  %t249 = icmp sgt i64 %t247, 0
  br i1 %t249, label %bb64, label %bb65
bb64:
  %t251 = load i1, ptr %l1, !tbaa !21
  br i1 %t251, label %bb66, label %bb67
bb65:
  store i1 false, ptr %l120, !tbaa !21
  br label %bb69
bb66:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb68
bb67:
  %t253 = load i1, ptr %l2, !tbaa !21
  %t255 = xor i1 %t253, true
  store i1 %t255, ptr %l122, !tbaa !21
  br label %bb68
bb68:
  %t257 = load i1, ptr %l122, !tbaa !21
  store i1 %t257, ptr %l120, !tbaa !21
  br label %bb69
bb69:
  %t258 = load i1, ptr %l120, !tbaa !21
  br i1 %t258, label %bb70, label %bb71
bb70:
  %t259 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t259, ptr %l125, !tbaa !27
  %t260 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t261 = load ptr, ptr %t260, !tbaa !27
  %t262 = getelementptr ptr, ptr %t261, i64 0
  %t263 = load ptr, ptr %t262, !tbaa !39
  store ptr %t263, ptr %l17, !tbaa !29
  %t265 = load ptr, ptr %l0, !tbaa !29
  store ptr %t265, ptr %l127, !tbaa !29
  %t266 = load ptr, ptr %l17, !tbaa !29
  %t268 = getelementptr %"compiler/ast:Promise", ptr %t266, i32 0, i32 0
  %t269 = getelementptr %"compiler/source:Span", ptr %t268, i32 0, i32 0
  %t270 = load i32, ptr %t269, !tbaa !23
  store i32 %t270, ptr %l129, !tbaa !23
  %t271 = load ptr, ptr %l17, !tbaa !29
  %t273 = getelementptr %"compiler/ast:Promise", ptr %t271, i32 0, i32 0
  %t274 = getelementptr %"compiler/source:Span", ptr %t273, i32 0, i32 1
  %t275 = load i32, ptr %t274, !tbaa !23
  store i32 %t275, ptr %l131, !tbaa !23
  %t276 = load ptr, ptr %l17, !tbaa !29
  %t278 = getelementptr %"compiler/ast:Promise", ptr %t276, i32 0, i32 1
  %t279 = load i32, ptr %t278, !range !{i32 0, i32 114}
  %t281 = call { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %t279)
  store { i64, ptr } %t281, ptr %l134
  br label %bb72
bb71:
  br label %bb75
bb72:
  %t282 = load { i64, ptr }, ptr %l134, !tbaa !27
  %t283 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseMisplaced(ptr %v0, ptr %v0, { i64, ptr } %t282)
  store %"compiler/diagmsg:Msg" %t283, ptr %l135
  br label %bb73
bb73:
  %t284 = load ptr, ptr %l127, !tbaa !29
  %t285 = load i32, ptr %l129, !tbaa !23
  %t286 = load i32, ptr %l131, !tbaa !23
  %t287 = load %"compiler/diagmsg:Msg", ptr %l135
  call void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v0, ptr %t284, i32 %t285, i32 %t286, %"compiler/diagmsg:Msg" %t287)
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t288 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t289 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t290 = load ptr, ptr %l15, !tbaa !29
  %t292 = getelementptr %"compiler/ast:Sig", ptr %t290, i32 0, i32 2
  %t293 = load i1, ptr %t292, !tbaa !21
  %t294 = load ptr, ptr %l15, !tbaa !29
  %t296 = getelementptr %"compiler/ast:Sig", ptr %t294, i32 0, i32 3
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  %t298 = load i1, ptr %l10, !tbaa !21
  %t299 = load ptr, ptr %l8, !tbaa !29
  %t300 = load i1, ptr %l14, !tbaa !21
  %t301 = load i1, ptr %l7, !tbaa !21
  %t302 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t312 = call %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, ptr %v1, { i64, ptr } %t288, { i64, ptr } %t289, i1 %t293, { i64, ptr } %t297, i1 %t298, ptr %t299, i1 %t300, i1 %t301, { i64, ptr } %t302)
  store %"compiler/ast:Sig" %t312, ptr %l147
  br label %bb76
bb76:
  %t313 = load %"compiler/ast:Sig", ptr %l147
  %t314 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 96, i64 8)
  store %"compiler/ast:Sig" %t313, ptr %t314
  %t316 = insertvalue { i32, ptr } zeroinitializer, ptr %t314, 1
  store { i32, ptr } %t316, ptr %rv
  br label %ret
ret:
  %rr = load { i32, ptr }, ptr %rv
  ret { i32, ptr } %rr
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
  %t37 = load i32, ptr %t36, !range !{i32 0, i32 114}
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
  %t61 = load i32, ptr %l41, !range !{i32 0, i32 114}
  store i32 %t61, ptr %l8
  %t62 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t64 = trunc i64 75 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb18
bb17:
  %t67 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t69 = trunc i64 111 to i32
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
  %t73 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t75 = trunc i64 109 to i32
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
  %t79 = load i32, ptr %l8, !range !{i32 0, i32 114}
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
  %t100 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %s4, ptr %t98, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) })
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
  store i64 28, ptr %t112
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
  store i64 28, ptr %t150
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
  %t11 = load i32, ptr %l8, !range !{i32 0, i32 114}
  store i32 %t11, ptr %l2
  %t12 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t14 = trunc i64 0 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %ret
bb4:
  br label %bb5
bb5:
  %t17 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t19 = trunc i64 112 to i32
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
  %t50 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t52 = trunc i64 113 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb14, label %bb15
bb14:
  br label %ret
bb15:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t57 = trunc i64 108 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l30, !tbaa !21
  br label %bb18
bb17:
  %t60 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t62 = trunc i64 110 to i32
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
  %t70 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t72 = trunc i64 109 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb23
bb22:
  %t75 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t77 = trunc i64 111 to i32
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
  %t85 = load i32, ptr %l2, !range !{i32 0, i32 114}
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
  %t8 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t5, i32 67)
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
  %t34 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %t31, i32 39)
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
  %t261 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t259, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) })
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
  %t42 = call i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %t39, i32 75)
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
  call void @__olang_check_failed(ptr @olang_loc_3fc06d3a68dac511_cf4e4a3339a21d5d)
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
  call void @__olang_check_failed(ptr @olang_loc_3fc06d3a68dac511_cf4e4a3339a21d5d)
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 54 to i32
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
  %t7 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t9 = trunc i64 53 to i32
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 34 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 35 to i32
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
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
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t20 = trunc i64 36 to i32
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
  %t24 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t26 = trunc i64 38 to i32
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
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 114}
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
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 37 to i32
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
  %t42 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t44 = trunc i64 53 to i32
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
  %t48 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t50 = trunc i64 54 to i32
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
  %t54 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t56 = trunc i64 55 to i32
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

define dso_local i1 @compiler_2fparse_2eisOperandEndTok(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %l9 = alloca i1
  %l12 = alloca i1
  %l15 = alloca i1
  %l18 = alloca i1
  %l21 = alloca i1
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
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 109 to i32
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t14 = trunc i64 111 to i32
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
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t20 = trunc i64 2 to i32
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
  %t24 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t26 = trunc i64 3 to i32
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
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t32 = trunc i64 4 to i32
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
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t38 = trunc i64 6 to i32
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
  %t42 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t44 = trunc i64 7 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l21, !tbaa !21
  br label %bb21
bb21:
  %t47 = load i1, ptr %l21, !tbaa !21
  store i1 %t47, ptr %rv
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 97 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 98 to i32
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t14 = trunc i64 99 to i32
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
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t20 = trunc i64 100 to i32
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 13 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
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
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 114}
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
  %t18 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t20 = trunc i64 38 to i32
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
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca %"compiler/diag:Said"
  %l36 = alloca %"compiler/source:Source"
  %l37 = alloca %"compiler/source:Names"
  %l38 = alloca %"compiler/parse:Oracle"
  %l40 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l58 = alloca %"compiler/diag:Diagnostics"
  %l62 = alloca i64
  %l64 = alloca %"compiler/scan:Tokens"
  %l71 = alloca %"compiler/parse:Parser"
  %l73 = alloca { i64, ptr }
  %l76 = alloca %"std/prelude/text:StringBuilder"
  %l84 = alloca { i64, ptr }
  %l88 = alloca i64
  %l91 = alloca ptr
  %l92 = alloca i1
  %l97 = alloca ptr
  %l101 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l119 = alloca ptr
  %l123 = alloca { i64, ptr }
  %l128 = alloca ptr
  %l129 = alloca i1
  %l134 = alloca ptr
  %l138 = alloca { i64, ptr }
  %l143 = alloca ptr
  %l144 = alloca i1
  %l156 = alloca { i64, ptr }
  %l159 = alloca ptr
  %l164 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l177 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca i64
  %l181 = alloca i64
  %l186 = alloca %"compiler/diag:Said"
  %l194 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t7 = alloca %"compiler/parse:Oracle", align 8
  %t46 = alloca %"compiler/diag:Diagnostics", align 8
  %t62 = alloca %"compiler/parse:Parser", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %s0, ptr %v0, ptr %s0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } %a0)
  store %"compiler/source:Source" %t3, ptr %l36
  br label %bb1
bb1:
  %t4 = load %"compiler/source:Source", ptr %l36
  store %"compiler/source:Source" %t4, ptr %l3
  %t5 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %s0)
  store %"compiler/source:Names" %t5, ptr %l37
  br label %bb2
bb2:
  %t6 = load %"compiler/source:Names", ptr %l37
  store %"compiler/source:Names" %t6, ptr %l4
  call void @compiler_2fparse_3aOracle_2ector(ptr %t7, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t7, i64 288, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l38, i64 288, i1 false)
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v1, ptr %s1, ptr %s1, { i64, ptr } %a1, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store { i64, ptr } %t10, ptr %l40
  br label %bb4
bb4:
  %t11 = load { i64, ptr }, ptr %l40, !tbaa !27
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
  store { i64, ptr } %t24, ptr %l47, !tbaa !27
  %t25 = load i64, ptr %l7, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
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
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %s0, ptr %s0, ptr %s3, ptr %s1, ptr %l5, ptr %l4, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, { i64, ptr } %t38)
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
  call void @llvm.memmove.p0.p0.i64(ptr %l58, ptr %t46, i64 544, i1 false)
  br label %bb15
bb15:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l58, i64 544, i1 false)
  %t47 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  %t49 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 1
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  %t54 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %s0, ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t48, { i64, ptr } %t50, i1 false)
  store i64 %t54, ptr %l62
  br label %bb16
bb16:
  %t55 = load i64, ptr %l62, !tbaa !24
  store i64 %t55, ptr %l11, !tbaa !24
  %t56 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  %t59 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %s0, ptr %s0, { i64, ptr } %t57)
  store %"compiler/scan:Tokens" %t59, ptr %l64
  br label %bb17
bb17:
  %t60 = load %"compiler/scan:Tokens", ptr %l64
  store %"compiler/scan:Tokens" %t60, ptr %l12
  %t61 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2fparse_3aParser_2ector(ptr %t62, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l3, ptr %l12, ptr %l4, ptr %l5, ptr %l10, i64 %t61)
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t62, i64 912, i1 false)
  br label %bb18
bb18:
  call void @llvm.memmove.p0.p0.i64(ptr %l13, ptr %l71, i64 912, i1 false)
  %t70 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %s0, ptr %s0, ptr %l13)
  store { i64, ptr } %t70, ptr %l73
  br label %bb19
bb19:
  %t71 = load { i64, ptr }, ptr %l73, !tbaa !27
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
  store %"std/prelude/text:StringBuilder" %t75, ptr %l76
  br label %bb24
bb24:
  %t76 = load %"std/prelude/text:StringBuilder", ptr %l76
  store %"std/prelude/text:StringBuilder" %t76, ptr %l15
  %t77 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t77, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t79, 0
  store i64 %t81, ptr %l18, !tbaa !24
  br label %bb25
bb25:
  %t83 = load i64, ptr %l17, !tbaa !24
  %t84 = load i64, ptr %l18, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb26, label %bb27
bb26:
  br label %bb91
bb27:
  br label %bb28
bb28:
  %t91 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t91, ptr %l84, !tbaa !27
  %t92 = load i64, ptr %l17, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr ptr, ptr %t95, i64 %t92
  %t97 = load ptr, ptr %t96, !tbaa !39
  store ptr %t97, ptr %l19, !tbaa !29
  %t100 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l15)
  store i64 %t100, ptr %l88
  br label %bb29
bb29:
  %t101 = load i64, ptr %l88, !tbaa !24
  %t102 = icmp sgt i64 %t101, 0
  br i1 %t102, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s8, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d13, i32 0, i32 1) })
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_scope_close(ptr %s8)
  br label %bb33
bb33:
  %t105 = load ptr, ptr %l19, !tbaa !29
  store ptr %t105, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t106 = load ptr, ptr %l91, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb34, label %bb35
bb34:
  %t109 = load ptr, ptr %l91, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 11}
  %t112 = icmp eq i64 %t110, 0
  store i1 %t112, ptr %l92, !tbaa !21
  br label %bb35
bb35:
  %t113 = load i1, ptr %l92, !tbaa !21
  br i1 %t113, label %bb36, label %bb37
bb36:
  %t114 = load ptr, ptr %l19, !tbaa !29
  %t116 = getelementptr { i64, [8 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { ptr }, ptr %t116, i32 0, i32 0
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l20, !tbaa !29
  br label %bb38
bb37:
  br label %bb53
bb38:
  store %olang.scope zeroinitializer, ptr %s9
  store ptr %l15, ptr %l97, !tbaa !29
  %t120 = load ptr, ptr %l20, !tbaa !29
  %t122 = getelementptr %"compiler/ast:Func", ptr %t120, i32 0, i32 2
  %t123 = load i32, ptr %t122, !tbaa !23
  %t126 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %s0, ptr %s9, ptr %l4, i32 %t123)
  store { i64, ptr } %t126, ptr %l101
  br label %bb39
bb39:
  %t127 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t128 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t129 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t129, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = add i64 %t128, %t131
  %t133 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t134 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t135 = add i64 %t132, %t134
  %t136 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t127, i64 %t128)
  %t137 = getelementptr i8, ptr %t136, i64 %t128
  call void @olang_textcopy(ptr %t137, ptr %t130, i64 %t131)
  %t138 = getelementptr i8, ptr %t137, i64 %t131
  call void @olang_textcopy(ptr %t138, ptr %t133, i64 %t134)
  %t139 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t136, 1
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t143 = extractvalue { i64, ptr } %t140, 1
  %t144 = mul i64 %t142, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t144)
  call void @llvm.memcpy.p0.p0.i64(ptr %t145, ptr %t143, i64 %t144, i1 false)
  %t146 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  %t148 = load ptr, ptr %l97, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s9, ptr %t148, { i64, ptr } %t147)
  br label %bb40
bb40:
  %t150 = load ptr, ptr %l20, !tbaa !29
  %t152 = getelementptr %"compiler/ast:Func", ptr %t150, i32 0, i32 6
  %t153 = load i1, ptr %t152, !tbaa !21
  %t155 = xor i1 %t153, true
  br i1 %t155, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s11
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %l15, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb43
bb42:
  %t158 = load ptr, ptr %l20, !tbaa !29
  %t160 = getelementptr %"compiler/ast:Func", ptr %t158, i32 0, i32 4
  %t161 = load { i64, ptr }, ptr %t160, !tbaa !27
  store { i64, ptr } %t161, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  store i64 %t165, ptr %l23, !tbaa !24
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s11)
  br label %bb52
bb44:
  store %olang.scope zeroinitializer, ptr %s14
  %t167 = load i64, ptr %l22, !tbaa !24
  %t168 = load i64, ptr %l23, !tbaa !24
  %t171 = icmp slt i64 %t167, %t168
  %t173 = xor i1 %t171, true
  br i1 %t173, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s14)
  br label %bb51
bb46:
  br label %bb47
bb47:
  %t175 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t175, ptr %l116, !tbaa !27
  %t176 = load i64, ptr %l22, !tbaa !24
  %t178 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr ptr, ptr %t179, i64 %t176
  %t181 = load ptr, ptr %t180, !tbaa !39
  store ptr %l15, ptr %l119, !tbaa !29
  %t184 = getelementptr %"compiler/source:Source", ptr %l3, i32 0, i32 1
  %t185 = load { i64, ptr }, ptr %t184, !tbaa !27
  %t189 = call { i64, ptr } @compiler_2fparse_2eshapeStmt(ptr %s0, ptr %s0, ptr %s0, ptr %s14, ptr %t181, ptr %l4, { i64, ptr } %t185)
  store { i64, ptr } %t189, ptr %l123
  br label %bb48
bb48:
  %t190 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t192 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = add i64 %t191, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t190, i64 %t191)
  %t197 = getelementptr i8, ptr %t196, i64 %t191
  call void @olang_textcopy(ptr %t197, ptr %t193, i64 %t194)
  %t198 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t196, 1
  %t201 = extractvalue { i64, ptr } %t199, 0
  %t202 = extractvalue { i64, ptr } %t199, 1
  %t203 = mul i64 %t201, 1
  %t204 = call ptr @__olang_scope_alloc(ptr %s14, i64 %t203)
  call void @llvm.memcpy.p0.p0.i64(ptr %t204, ptr %t202, i64 %t203, i1 false)
  %t205 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  %t207 = load ptr, ptr %l119, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s14, ptr %t207, { i64, ptr } %t206)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s14)
  br label %bb50
bb50:
  %t209 = load i64, ptr %l22, !tbaa !24
  %t211 = add i64 %t209, 1
  store i64 %t211, ptr %l22, !tbaa !24
  br label %bb44
bb51:
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s9)
  br label %bb89
bb53:
  %t213 = load ptr, ptr %l19, !tbaa !29
  store ptr %t213, ptr %l128, !tbaa !29
  store i1 false, ptr %l129, !tbaa !21
  %t214 = load ptr, ptr %l128, !tbaa !29
  %t215 = icmp ne ptr %t214, null
  br i1 %t215, label %bb54, label %bb55
bb54:
  %t217 = load ptr, ptr %l128, !tbaa !29
  %t218 = load i64, ptr %t217, !range !{i64 0, i64 11}
  %t220 = icmp eq i64 %t218, 2
  store i1 %t220, ptr %l129, !tbaa !21
  br label %bb55
bb55:
  %t221 = load i1, ptr %l129, !tbaa !21
  br i1 %t221, label %bb56, label %bb57
bb56:
  %t222 = load ptr, ptr %l19, !tbaa !29
  %t224 = getelementptr { i64, [8 x i64] }, ptr %t222, i32 0, i32 1
  %t225 = getelementptr { %"compiler/source:Span", ptr }, ptr %t224, i32 0, i32 1
  %t226 = load ptr, ptr %t225
  store ptr %t226, ptr %l25, !tbaa !29
  br label %bb58
bb57:
  br label %bb83
bb58:
  store %olang.scope zeroinitializer, ptr %s17
  store ptr %l15, ptr %l134, !tbaa !29
  %t228 = load ptr, ptr %l25, !tbaa !29
  %t230 = getelementptr %"compiler/ast:TypeDecl", ptr %t228, i32 0, i32 0
  %t231 = load i32, ptr %t230, !tbaa !23
  %t234 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %s0, ptr %s17, ptr %l4, i32 %t231)
  store { i64, ptr } %t234, ptr %l138
  br label %bb59
bb59:
  %t235 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t236 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t237 = load { i64, ptr }, ptr %l138, !tbaa !27
  %t238 = extractvalue { i64, ptr } %t237, 1
  %t239 = extractvalue { i64, ptr } %t237, 0
  %t240 = add i64 %t236, %t239
  %t241 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t240)
  call void @olang_textcopy(ptr %t241, ptr %t235, i64 %t236)
  %t242 = getelementptr i8, ptr %t241, i64 %t236
  call void @olang_textcopy(ptr %t242, ptr %t238, i64 %t239)
  %t243 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t241, 1
  %t246 = extractvalue { i64, ptr } %t244, 0
  %t247 = extractvalue { i64, ptr } %t244, 1
  %t248 = mul i64 %t246, 1
  %t249 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t248)
  call void @llvm.memcpy.p0.p0.i64(ptr %t249, ptr %t247, i64 %t248, i1 false)
  %t250 = insertvalue { i64, ptr } undef, i64 %t246, 0
  %t251 = insertvalue { i64, ptr } %t250, ptr %t249, 1
  %t252 = load ptr, ptr %l134, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s17, ptr %t252, { i64, ptr } %t251)
  br label %bb60
bb60:
  %t254 = load ptr, ptr %l25, !tbaa !29
  %t256 = getelementptr %"compiler/ast:TypeDecl", ptr %t254, i32 0, i32 3
  %t257 = load ptr, ptr %t256, !tbaa !29
  store ptr %t257, ptr %l26, !tbaa !29
  %t259 = load ptr, ptr %l26, !tbaa !29
  store ptr %t259, ptr %l143, !tbaa !29
  store i1 false, ptr %l144, !tbaa !21
  %t260 = load ptr, ptr %l143, !tbaa !29
  %t261 = icmp ne ptr %t260, null
  br i1 %t261, label %bb61, label %bb62
bb61:
  %t263 = load ptr, ptr %l143, !tbaa !29
  %t264 = load i64, ptr %t263, !range !{i64 0, i64 5}
  %t266 = icmp eq i64 %t264, 2
  store i1 %t266, ptr %l144, !tbaa !21
  br label %bb62
bb62:
  %t267 = load i1, ptr %l144, !tbaa !21
  br i1 %t267, label %bb63, label %bb64
bb63:
  %t268 = load ptr, ptr %l26, !tbaa !29
  %t270 = getelementptr { i64, [6 x i64] }, ptr %t268, i32 0, i32 1
  %t271 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t270, i32 0, i32 0
  %t272 = load { i64, ptr }, ptr %t271
  store { i64, ptr } %t272, ptr %l27, !tbaa !27
  br label %bb65
bb64:
  br label %bb77
bb65:
  %t274 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t274, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t276 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t278 = extractvalue { i64, ptr } %t276, 0
  store i64 %t278, ptr %l30, !tbaa !24
  br label %bb66
bb66:
  store %olang.scope zeroinitializer, ptr %s21
  %t280 = load i64, ptr %l29, !tbaa !24
  %t281 = load i64, ptr %l30, !tbaa !24
  %t284 = icmp slt i64 %t280, %t281
  %t286 = xor i1 %t284, true
  br i1 %t286, label %bb67, label %bb68
bb67:
  call void @__olang_scope_close(ptr %s21)
  br label %bb76
bb68:
  br label %bb69
bb69:
  %t288 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t288, ptr %l156, !tbaa !27
  %t289 = load i64, ptr %l29, !tbaa !24
  %t291 = getelementptr { i64, ptr }, ptr %l156, i32 0, i32 1
  %t292 = load ptr, ptr %t291, !tbaa !27
  %t293 = getelementptr ptr, ptr %t292, i64 %t289
  %t294 = load ptr, ptr %t293, !tbaa !39
  store ptr %t294, ptr %l31, !tbaa !29
  store ptr %l15, ptr %l159, !tbaa !29
  %t296 = load ptr, ptr %l31, !tbaa !29
  %t298 = getelementptr %"compiler/ast:Func", ptr %t296, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !29
  %t301 = icmp eq ptr %t299, null
  %t303 = xor i1 %t301, true
  br i1 %t303, label %bb70, label %bb71
bb70:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l164, !tbaa !27
  br label %bb72
bb71:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l164, !tbaa !27
  br label %bb72
bb72:
  %t305 = load ptr, ptr %l31, !tbaa !29
  %t307 = getelementptr %"compiler/ast:Func", ptr %t305, i32 0, i32 2
  %t308 = load i32, ptr %t307, !tbaa !23
  %t311 = call { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %s0, ptr %s21, ptr %l4, i32 %t308)
  store { i64, ptr } %t311, ptr %l168
  br label %bb73
bb73:
  %t312 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t313 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t314 = load { i64, ptr }, ptr %l164, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t314, 1
  %t316 = extractvalue { i64, ptr } %t314, 0
  %t317 = add i64 %t313, %t316
  %t318 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t319 = extractvalue { i64, ptr } %t318, 1
  %t320 = extractvalue { i64, ptr } %t318, 0
  %t321 = add i64 %t317, %t320
  %t322 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t321)
  call void @olang_textcopy(ptr %t322, ptr %t312, i64 %t313)
  %t323 = getelementptr i8, ptr %t322, i64 %t313
  call void @olang_textcopy(ptr %t323, ptr %t315, i64 %t316)
  %t324 = getelementptr i8, ptr %t323, i64 %t316
  call void @olang_textcopy(ptr %t324, ptr %t319, i64 %t320)
  %t325 = insertvalue { i64, ptr } undef, i64 %t321, 0
  %t326 = insertvalue { i64, ptr } %t325, ptr %t322, 1
  %t328 = extractvalue { i64, ptr } %t326, 0
  %t329 = extractvalue { i64, ptr } %t326, 1
  %t330 = mul i64 %t328, 1
  %t331 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t330)
  call void @llvm.memcpy.p0.p0.i64(ptr %t331, ptr %t329, i64 %t330, i1 false)
  %t332 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t333 = insertvalue { i64, ptr } %t332, ptr %t331, 1
  %t334 = load ptr, ptr %l159, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s21, ptr %t334, { i64, ptr } %t333)
  br label %bb74
bb74:
  call void @__olang_scope_close(ptr %s21)
  br label %bb75
bb75:
  %t336 = load i64, ptr %l29, !tbaa !24
  %t338 = add i64 %t336, 1
  store i64 %t338, ptr %l29, !tbaa !24
  br label %bb66
bb76:
  br label %bb82
bb77:
  br i1 true, label %bb78, label %bb79
bb78:
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_check_failed(ptr @olang_loc_eccdd3ba5e570728_ba1962c6d7fecaac)
  unreachable
bb82:
  call void @__olang_scope_close(ptr %s17)
  br label %bb89
bb83:
  br i1 true, label %bb84, label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb88
bb86:
  store %olang.scope zeroinitializer, ptr %s25
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s25, ptr %l15, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb87
bb87:
  call void @__olang_scope_close(ptr %s25)
  br label %bb89
bb88:
  call void @__olang_check_failed(ptr @olang_loc_e598cf6f5d58c5f9_c6e191fe7fda4d5d)
  unreachable
bb89:
  br label %bb90
bb90:
  %t341 = load i64, ptr %l17, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l17, !tbaa !24
  br label %bb25
bb91:
  store %olang.scope zeroinitializer, ptr %s27
  %t346 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %s0, ptr %s27, ptr %l10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t346, ptr %l177
  br label %bb92
bb92:
  %t347 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177
  %t348 = call ptr @__olang_scope_alloc_a(ptr %s27, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t347, ptr %t348
  store ptr %t348, ptr %l32, !tbaa !29
  store i64 0, ptr %l33, !tbaa !24
  br label %bb93
bb93:
  store %olang.scope zeroinitializer, ptr %s28
  %t350 = load i64, ptr %l33, !tbaa !24
  store i64 %t350, ptr %l179, !tbaa !24
  %t351 = load ptr, ptr %l32, !tbaa !29
  %t353 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %s27, ptr %t351)
  store i64 %t353, ptr %l181
  br label %bb94
bb94:
  %t354 = load i64, ptr %l179, !tbaa !24
  %t355 = load i64, ptr %l181, !tbaa !24
  %t356 = icmp slt i64 %t354, %t355
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb95, label %bb96
bb95:
  call void @__olang_scope_close(ptr %s28)
  br label %bb101
bb96:
  br label %bb97
bb97:
  %t360 = load ptr, ptr %l32, !tbaa !29
  %t361 = load i64, ptr %l33, !tbaa !24
  %t364 = call %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %s27, ptr %s27, ptr %t360, i64 %t361)
  store %"compiler/diag:Said" %t364, ptr %l186
  br label %bb98
bb98:
  %t365 = load %"compiler/diag:Said", ptr %l186
  store %"compiler/diag:Said" %t365, ptr %l34
  %t366 = getelementptr %"compiler/diag:Said", ptr %l34, i32 0, i32 0
  %t367 = load { i64, ptr }, ptr %t366, !tbaa !27
  %t368 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t369 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t371 = extractvalue { i64, ptr } %t367, 1
  %t372 = extractvalue { i64, ptr } %t367, 0
  %t373 = add i64 %t369, %t372
  %t374 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t373)
  call void @olang_textcopy(ptr %t374, ptr %t368, i64 %t369)
  %t375 = getelementptr i8, ptr %t374, i64 %t369
  call void @olang_textcopy(ptr %t375, ptr %t371, i64 %t372)
  %t376 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t377 = insertvalue { i64, ptr } %t376, ptr %t374, 1
  %t379 = extractvalue { i64, ptr } %t377, 0
  %t380 = extractvalue { i64, ptr } %t377, 1
  %t381 = mul i64 %t379, 1
  %t382 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t381)
  call void @llvm.memcpy.p0.p0.i64(ptr %t382, ptr %t380, i64 %t381, i1 false)
  %t383 = insertvalue { i64, ptr } undef, i64 %t379, 0
  %t384 = insertvalue { i64, ptr } %t383, ptr %t382, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s28, ptr %l15, { i64, ptr } %t384)
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s28)
  br label %bb100
bb100:
  %t387 = load i64, ptr %l33, !tbaa !24
  %t389 = add i64 %t387, 1
  store i64 %t389, ptr %l33, !tbaa !24
  br label %bb93
bb101:
  call void @__olang_scope_close(ptr %s27)
  %t392 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l15)
  store { i64, ptr } %t392, ptr %l194
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s0)
  %t393 = load { i64, ptr }, ptr %l194, !tbaa !27
  store { i64, ptr } %t393, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
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
  %l51 = alloca i1
  %l52 = alloca i1
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i1
  %l57 = alloca i1
  %l69 = alloca i64
  %l71 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l73 = alloca i64
  %l75 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l77 = alloca i64
  %l79 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l81 = alloca i64
  %l83 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca i64
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca i64
  %l100 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l102 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca i64
  %l109 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l111 = alloca i64
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca i64
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca i64
  %l121 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l123 = alloca i64
  %l125 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l127 = alloca i64
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l131 = alloca i64
  %l133 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca %"compiler/parse:Parser"
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
  store i64 %t15, ptr %l69, !tbaa !24
  %t16 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e26
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = call ptr @__olang_region_make(ptr %v5)
  %t19 = ptrtoint ptr %t18 to i64
  store i64 %t19, ptr %l69, !tbaa !24
  br label %bb2
bb2:
  %t20 = load i64, ptr %l69
  %t21 = inttoptr i64 %t20 to ptr
  %t22 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t21, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l71
  br label %bb3
bb3:
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e26
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load i64, ptr %l69
  %t26 = inttoptr i64 %t25 to ptr
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr null
  %t33 = icmp eq ptr %t32, %t26
  call void @__olang_region_settle(ptr %t26, i1 %t33)
  br label %bb5
bb5:
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l71
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l32
  %t35 = ptrtoint ptr %v5 to i64
  store i64 %t35, ptr %l73, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e27
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = call ptr @__olang_region_make(ptr %v5)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l73, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l73
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t41, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l75
  br label %bb8
bb8:
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e27
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load i64, ptr %l73
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75, i32 0, i32 0
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  %t53 = icmp eq ptr %t52, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t53)
  br label %bb10
bb10:
  %t54 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l75
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t54, ptr %l33
  %t55 = ptrtoint ptr %v5 to i64
  store i64 %t55, ptr %l77, !tbaa !24
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e28
  br i1 %t56, label %bb11, label %bb12
bb11:
  %t58 = call ptr @__olang_region_make(ptr %v5)
  %t59 = ptrtoint ptr %t58 to i64
  store i64 %t59, ptr %l77, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l77
  %t61 = inttoptr i64 %t60 to ptr
  %t62 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI32_2c_20I64_3e(ptr %t61)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t62, ptr %l79
  br label %bb13
bb13:
  %t63 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e28
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load i64, ptr %l77
  %t66 = inttoptr i64 %t65 to ptr
  %t67 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79, i32 0, i32 2
  %t68 = load { i64, ptr }, ptr %t67
  %t69 = extractvalue { i64, ptr } %t68, 1
  %t70 = call ptr @__olang_region_or(ptr %t69, ptr null)
  %t71 = icmp ne ptr %t70, null
  %t72 = select i1 %t71, ptr %t70, ptr null
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr %t72
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr %t78
  %t85 = icmp eq ptr %t84, %t66
  call void @__olang_region_settle(ptr %t66, i1 %t85)
  br label %bb15
bb15:
  %t86 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l79
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t86, ptr %l34
  %t87 = ptrtoint ptr %v5 to i64
  store i64 %t87, ptr %l81, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e29
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = call ptr @__olang_region_make(ptr %v5)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l81, !tbaa !24
  br label %bb17
bb17:
  %t92 = load i64, ptr %l81
  %t93 = inttoptr i64 %t92 to ptr
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t93, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l83
  br label %bb18
bb18:
  %t95 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e29
  br i1 %t95, label %bb19, label %bb20
bb19:
  %t97 = load i64, ptr %l81
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83, i32 0, i32 0
  %t100 = load { i64, ptr }, ptr %t99
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = call ptr @__olang_region_or(ptr %t101, ptr null)
  %t103 = icmp ne ptr %t102, null
  %t104 = select i1 %t103, ptr %t102, ptr null
  %t105 = icmp eq ptr %t104, %t98
  call void @__olang_region_settle(ptr %t98, i1 %t105)
  br label %bb20
bb20:
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l83
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l35
  %t107 = ptrtoint ptr %v5 to i64
  store i64 %t107, ptr %l85, !tbaa !24
  %t108 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e30
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t110 = call ptr @__olang_region_make(ptr %v5)
  %t111 = ptrtoint ptr %t110 to i64
  store i64 %t111, ptr %l85, !tbaa !24
  br label %bb22
bb22:
  %t112 = load i64, ptr %l85
  %t113 = inttoptr i64 %t112 to ptr
  %t114 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t113, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l87
  br label %bb23
bb23:
  %t115 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e30
  br i1 %t115, label %bb24, label %bb25
bb24:
  %t117 = load i64, ptr %l85
  %t118 = inttoptr i64 %t117 to ptr
  %t119 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87, i32 0, i32 0
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = icmp eq ptr %t124, %t118
  call void @__olang_region_settle(ptr %t118, i1 %t125)
  br label %bb25
bb25:
  %t126 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t126, ptr %l36
  %t127 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t127, ptr %l89
  br label %bb26
bb26:
  %t128 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l37
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l90
  br label %bb27
bb27:
  %t130 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t130, ptr %l38
  %t131 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l91
  br label %bb28
bb28:
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %l39
  %t133 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l92
  br label %bb29
bb29:
  %t134 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l92
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t134, ptr %l40
  %t135 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %l93
  br label %bb30
bb30:
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l41
  %t137 = ptrtoint ptr %v5 to i64
  store i64 %t137, ptr %l94, !tbaa !24
  %t138 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e36
  br i1 %t138, label %bb31, label %bb32
bb31:
  %t140 = call ptr @__olang_region_make(ptr %v5)
  %t141 = ptrtoint ptr %t140 to i64
  store i64 %t141, ptr %l94, !tbaa !24
  br label %bb32
bb32:
  %t142 = load i64, ptr %l94
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t143, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l96
  br label %bb33
bb33:
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e36
  br i1 %t145, label %bb34, label %bb35
bb34:
  %t147 = load i64, ptr %l94
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96, i32 0, i32 0
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  %t155 = icmp eq ptr %t154, %t148
  call void @__olang_region_settle(ptr %t148, i1 %t155)
  br label %bb35
bb35:
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l42
  %t157 = ptrtoint ptr %v5 to i64
  store i64 %t157, ptr %l98, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e37
  br i1 %t158, label %bb36, label %bb37
bb36:
  %t160 = call ptr @__olang_region_make(ptr %v5)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l98, !tbaa !24
  br label %bb37
bb37:
  %t162 = load i64, ptr %l98
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t163, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t164, ptr %l100
  br label %bb38
bb38:
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e37
  br i1 %t165, label %bb39, label %bb40
bb39:
  %t167 = load i64, ptr %l98
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100, i32 0, i32 0
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr null
  %t175 = icmp eq ptr %t174, %t168
  call void @__olang_region_settle(ptr %t168, i1 %t175)
  br label %bb40
bb40:
  %t176 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l100
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %l43
  %t177 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %l102
  br label %bb41
bb41:
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l102
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %l44
  %t179 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t179, ptr %l103
  br label %bb42
bb42:
  %t180 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l103
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l45
  %t181 = icmp sge i64 0, 0
  br i1 %t181, label %bb43, label %bb44
bb43:
  %t183 = icmp sle i64 0, 1152921504606846975
  br i1 %t183, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_936bfbc19493319b_da93a9696e3b504f)
  unreachable
bb45:
  %t185 = mul i64 0, 8
  %t186 = insertvalue { i64, ptr } undef, i64 0, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t187, ptr %l46, !tbaa !27
  %t189 = ptrtoint ptr %v5 to i64
  store i64 %t189, ptr %l107, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e41
  br i1 %t190, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_936bfbc19493319b_da93a9696e3b504f)
  unreachable
bb47:
  %t192 = call ptr @__olang_region_make(ptr %v5)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l107, !tbaa !24
  br label %bb48
bb48:
  %t194 = load i64, ptr %l107
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t195, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l109
  br label %bb49
bb49:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e41
  br i1 %t197, label %bb50, label %bb51
bb50:
  %t199 = load i64, ptr %l107
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = icmp eq ptr %t206, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t207)
  br label %bb51
bb51:
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l47
  %t209 = ptrtoint ptr %v5 to i64
  store i64 %t209, ptr %l111, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e42
  br i1 %t210, label %bb52, label %bb53
bb52:
  %t212 = call ptr @__olang_region_make(ptr %v5)
  %t213 = ptrtoint ptr %t212 to i64
  store i64 %t213, ptr %l111, !tbaa !24
  br label %bb53
bb53:
  %t214 = load i64, ptr %l111
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t215, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l113
  br label %bb54
bb54:
  %t217 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e42
  br i1 %t217, label %bb55, label %bb56
bb55:
  %t219 = load i64, ptr %l111
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr null
  %t227 = icmp eq ptr %t226, %t220
  call void @__olang_region_settle(ptr %t220, i1 %t227)
  br label %bb56
bb56:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l48
  %t229 = ptrtoint ptr %v5 to i64
  store i64 %t229, ptr %l115, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e43
  br i1 %t230, label %bb57, label %bb58
bb57:
  %t232 = call ptr @__olang_region_make(ptr %v5)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l115, !tbaa !24
  br label %bb58
bb58:
  %t234 = load i64, ptr %l115
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t235, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t236, ptr %l117
  br label %bb59
bb59:
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e43
  br i1 %t237, label %bb60, label %bb61
bb60:
  %t239 = load i64, ptr %l115
  %t240 = inttoptr i64 %t239 to ptr
  %t241 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117, i32 0, i32 0
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = icmp ne ptr %t244, null
  %t246 = select i1 %t245, ptr %t244, ptr null
  %t247 = icmp eq ptr %t246, %t240
  call void @__olang_region_settle(ptr %t240, i1 %t247)
  br label %bb61
bb61:
  %t248 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t248, ptr %l49
  %t249 = ptrtoint ptr %v5 to i64
  store i64 %t249, ptr %l119, !tbaa !24
  %t250 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e44
  br i1 %t250, label %bb62, label %bb63
bb62:
  %t252 = call ptr @__olang_region_make(ptr %v5)
  %t253 = ptrtoint ptr %t252 to i64
  store i64 %t253, ptr %l119, !tbaa !24
  br label %bb63
bb63:
  %t254 = load i64, ptr %l119
  %t255 = inttoptr i64 %t254 to ptr
  %t256 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t255, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t256, ptr %l121
  br label %bb64
bb64:
  %t257 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e44
  br i1 %t257, label %bb65, label %bb66
bb65:
  %t259 = load i64, ptr %l119
  %t260 = inttoptr i64 %t259 to ptr
  %t261 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l121, i32 0, i32 0
  %t262 = load { i64, ptr }, ptr %t261
  %t263 = extractvalue { i64, ptr } %t262, 1
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr null)
  %t265 = icmp ne ptr %t264, null
  %t266 = select i1 %t265, ptr %t264, ptr null
  %t267 = icmp eq ptr %t266, %t260
  call void @__olang_region_settle(ptr %t260, i1 %t267)
  br label %bb66
bb66:
  %t268 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l121
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l50
  store i1 false, ptr %l51, !tbaa !21
  store i1 false, ptr %l52, !tbaa !21
  %t269 = ptrtoint ptr %v5 to i64
  store i64 %t269, ptr %l123, !tbaa !24
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e47
  br i1 %t270, label %bb67, label %bb68
bb67:
  %t272 = call ptr @__olang_region_make(ptr %v5)
  %t273 = ptrtoint ptr %t272 to i64
  store i64 %t273, ptr %l123, !tbaa !24
  br label %bb68
bb68:
  %t274 = load i64, ptr %l123
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t275, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t276, ptr %l125
  br label %bb69
bb69:
  %t277 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e47
  br i1 %t277, label %bb70, label %bb71
bb70:
  %t279 = load i64, ptr %l123
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l125, i32 0, i32 0
  %t282 = load { i64, ptr }, ptr %t281
  %t283 = extractvalue { i64, ptr } %t282, 1
  %t284 = call ptr @__olang_region_or(ptr %t283, ptr null)
  %t285 = icmp ne ptr %t284, null
  %t286 = select i1 %t285, ptr %t284, ptr null
  %t287 = icmp eq ptr %t286, %t280
  call void @__olang_region_settle(ptr %t280, i1 %t287)
  br label %bb71
bb71:
  %t288 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l125
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t288, ptr %l53
  %t289 = ptrtoint ptr %v5 to i64
  store i64 %t289, ptr %l127, !tbaa !24
  %t290 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e48
  br i1 %t290, label %bb72, label %bb73
bb72:
  %t292 = call ptr @__olang_region_make(ptr %v5)
  %t293 = ptrtoint ptr %t292 to i64
  store i64 %t293, ptr %l127, !tbaa !24
  br label %bb73
bb73:
  %t294 = load i64, ptr %l127
  %t295 = inttoptr i64 %t294 to ptr
  %t296 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI32_3e_2ector(ptr %t295, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t296, ptr %l129
  br label %bb74
bb74:
  %t297 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e48
  br i1 %t297, label %bb75, label %bb76
bb75:
  %t299 = load i64, ptr %l127
  %t300 = inttoptr i64 %t299 to ptr
  %t301 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129, i32 0, i32 0
  %t302 = load { i64, ptr }, ptr %t301
  %t303 = extractvalue { i64, ptr } %t302, 1
  %t304 = call ptr @__olang_region_or(ptr %t303, ptr null)
  %t305 = icmp ne ptr %t304, null
  %t306 = select i1 %t305, ptr %t304, ptr null
  %t307 = icmp eq ptr %t306, %t300
  call void @__olang_region_settle(ptr %t300, i1 %t307)
  br label %bb76
bb76:
  %t308 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t308, ptr %l54
  %t309 = ptrtoint ptr %v5 to i64
  store i64 %t309, ptr %l131, !tbaa !24
  %t310 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e49
  br i1 %t310, label %bb77, label %bb78
bb77:
  %t312 = call ptr @__olang_region_make(ptr %v5)
  %t313 = ptrtoint ptr %t312 to i64
  store i64 %t313, ptr %l131, !tbaa !24
  br label %bb78
bb78:
  %t314 = load i64, ptr %l131
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t315, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t316, ptr %l133
  br label %bb79
bb79:
  %t317 = load i1, ptr @olang_2esole_2ecompiler_2fparse_3aParser_2e49
  br i1 %t317, label %bb80, label %bb81
bb80:
  %t319 = load i64, ptr %l131
  %t320 = inttoptr i64 %t319 to ptr
  %t321 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133, i32 0, i32 0
  %t322 = load { i64, ptr }, ptr %t321
  %t323 = extractvalue { i64, ptr } %t322, 1
  %t324 = call ptr @__olang_region_or(ptr %t323, ptr null)
  %t325 = icmp ne ptr %t324, null
  %t326 = select i1 %t325, ptr %t324, ptr null
  %t327 = icmp eq ptr %t326, %t320
  call void @__olang_region_settle(ptr %t320, i1 %t327)
  br label %bb81
bb81:
  %t328 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l133
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %l55
  store i1 false, ptr %l56, !tbaa !21
  store i1 false, ptr %l57, !tbaa !21
  %t329 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v5, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t329, ptr %l135
  br label %bb82
bb82:
  %t330 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  %t331 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 0
  %t332 = load ptr, ptr %l6, !tbaa !29
  store ptr %t332, ptr %t331, !tbaa !29
  %t333 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 1
  %t334 = load ptr, ptr %l7, !tbaa !29
  store ptr %t334, ptr %t333, !tbaa !29
  %t335 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 2
  %t336 = load ptr, ptr %l8, !tbaa !29
  store ptr %t336, ptr %t335, !tbaa !29
  %t337 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 3
  %t338 = load ptr, ptr %l9, !tbaa !29
  store ptr %t338, ptr %t337, !tbaa !29
  %t339 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 4
  %t340 = load ptr, ptr %l10, !tbaa !29
  store ptr %t340, ptr %t339, !tbaa !29
  %t341 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 5
  %t342 = load i64, ptr %l11, !tbaa !24
  store i64 %t342, ptr %t341, !tbaa !24
  %t343 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 6
  %t344 = load i64, ptr %l12, !tbaa !24
  store i64 %t344, ptr %t343, !tbaa !24
  %t345 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 7
  %t346 = load i32, ptr %l13, !range !{i32 0, i32 114}
  store i32 %t346, ptr %t345
  %t347 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 8
  %t348 = load i32, ptr %l14, !tbaa !23
  store i32 %t348, ptr %t347, !tbaa !23
  %t349 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 9
  %t350 = load i32, ptr %l15, !range !{i32 0, i32 114}
  store i32 %t350, ptr %t349
  %t351 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 10
  %t352 = load i32, ptr %l16, !tbaa !23
  store i32 %t352, ptr %t351, !tbaa !23
  %t353 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 11
  %t354 = load i1, ptr %l17, !tbaa !21
  store i1 %t354, ptr %t353, !tbaa !21
  %t355 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 12
  %t356 = load i1, ptr %l18, !tbaa !21
  store i1 %t356, ptr %t355, !tbaa !21
  %t357 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 13
  %t358 = load i1, ptr %l19, !tbaa !21
  store i1 %t358, ptr %t357, !tbaa !21
  %t359 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 14
  %t360 = load i1, ptr %l20, !tbaa !21
  store i1 %t360, ptr %t359, !tbaa !21
  %t361 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 15
  %t362 = load i1, ptr %l21, !tbaa !21
  store i1 %t362, ptr %t361, !tbaa !21
  %t363 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 16
  %t364 = load i1, ptr %l22, !tbaa !21
  store i1 %t364, ptr %t363, !tbaa !21
  %t365 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 17
  %t366 = load i1, ptr %l23, !tbaa !21
  store i1 %t366, ptr %t365, !tbaa !21
  %t367 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 18
  %t368 = load i64, ptr %l24, !tbaa !24
  store i64 %t368, ptr %t367, !tbaa !24
  %t369 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 19
  %t370 = load i1, ptr %l25, !tbaa !21
  store i1 %t370, ptr %t369, !tbaa !21
  %t371 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 20
  %t372 = load i1, ptr %l26, !tbaa !21
  store i1 %t372, ptr %t371, !tbaa !21
  %t373 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 21
  %t374 = load i64, ptr %l27, !tbaa !24
  store i64 %t374, ptr %t373, !tbaa !24
  %t375 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 22
  %t376 = load i1, ptr %l28, !tbaa !21
  store i1 %t376, ptr %t375, !tbaa !21
  %t377 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 23
  %t378 = load i64, ptr %l29, !tbaa !24
  store i64 %t378, ptr %t377, !tbaa !24
  %t379 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 24
  %t380 = load i1, ptr %l30, !tbaa !21
  store i1 %t380, ptr %t379, !tbaa !21
  %t381 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 25
  %t382 = load i32, ptr %l31, !tbaa !23
  store i32 %t382, ptr %t381, !tbaa !23
  %t383 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 26
  %t384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t384, ptr %t383
  %t385 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 27
  %t386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, ptr %t385
  %t387 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 28
  %t388 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t388, ptr %t387
  %t389 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 29
  %t390 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t390, ptr %t389
  %t391 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 30
  %t392 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t392, ptr %t391
  %t393 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 31
  %t394 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t394, ptr %t393
  %t395 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 32
  %t396 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %t395
  %t397 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 33
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l39
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %t397
  %t399 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 34
  %t400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t400, ptr %t399
  %t401 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 35
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %t401
  %t403 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 36
  %t404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t404, ptr %t403
  %t405 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 37
  %t406 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t406, ptr %t405
  %t407 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 38
  %t408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %t407
  %t409 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 39
  %t410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l45
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t410, ptr %t409
  %t411 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 40
  %t412 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t412, ptr %t411, !tbaa !27
  %t413 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 41
  %t414 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l47
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t414, ptr %t413
  %t415 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 42
  %t416 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t416, ptr %t415
  %t417 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 43
  %t418 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t418, ptr %t417
  %t419 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 44
  %t420 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t420, ptr %t419
  %t421 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 45
  %t422 = load i1, ptr %l51, !tbaa !21
  store i1 %t422, ptr %t421, !tbaa !21
  %t423 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 46
  %t424 = load i1, ptr %l52, !tbaa !21
  store i1 %t424, ptr %t423, !tbaa !21
  %t425 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 47
  %t426 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t426, ptr %t425
  %t427 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 48
  %t428 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t428, ptr %t427
  %t429 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 49
  %t430 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t430, ptr %t429
  %t431 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 50
  %t432 = load i1, ptr %l56, !tbaa !21
  store i1 %t432, ptr %t431, !tbaa !21
  %t433 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 51
  %t434 = load i1, ptr %l57, !tbaa !21
  store i1 %t434, ptr %t433, !tbaa !21
  %t435 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t330, ptr %t435
  %t437 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 53
  store i1 false, ptr %t437, !tbaa !21
  %t439 = getelementptr %"compiler/parse:Parser", ptr %l136, i32 0, i32 54
  store i1 false, ptr %t439, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l136, i64 912, i1 false)
  br label %ret
ret:
  ret void
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
declare void @__olang_check_failed(ptr) cold noreturn
@__olang_empty_array = external constant [16 x i64]
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@.d0 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"an error word" }>, align 8
@.d1 = private constant <{ i64, [60 x i8] }> <{ i64 0, [60 x i8] c"the type a literal makes before the [, as in Array<I32>[...]" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d2 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"'for NAME in' after 'comptime'" }>, align 8
@olang_2esole_2ecompiler_2fparse_3aParser_2e3 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d3 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Type" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Base" }>, align 8
@.d5 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"Element" }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"Target" }>, align 8
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"a name" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
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
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@olang_2esole_2ecompiler_2fast_3aVarDecl_2e1 = weak hidden constant i1 false
@.d10 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"t.olang" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"; " }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d16 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" -" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d19 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"mut " }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"decl" }>, align 8
@.d23 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" !" }>, align 8
@olang_2esole_2ecompiler_2fparse_3aParser_2e26 = weak hidden constant i1 false
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
@olang_2esole_2ecompiler_2fparse_3aParser_2e47 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fparse_3aParser_2e49 = weak hidden constant i1 false
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
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAttrPlace(ptr %v0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereport(ptr %v0, ptr %v1, ptr %a0, i32 %a1, i32 %a2, %"compiler/diagmsg:Msg" %a3)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2esees(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eDescribe(ptr %v0, i32 %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2efail(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eenter(ptr %v0, ptr %a0)
declare %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2etk(ptr %v0, ptr %a0)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eadvance(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eLen_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eskipEnds(ptr %v0, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclHere(ptr %v0, ptr %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aSource_2eLine(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2efound(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBlockNotClosed(ptr %v0, ptr %v1, i64 %a0, { i64, ptr } %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrorUnheld(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2eTruncate_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2eleave(ptr %v0, ptr %a0)
declare %"compiler/parse:stackMarks" @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarks(ptr %v0, ptr %a0)
@olang_loc_3a8ad8017031eccf_6f47b3cce535c81b = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrs(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncStmt(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9090e2f728d8157a_2317b9fcceb6fe86 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2estmt(ptr %v0, ptr %v1, ptr %a0)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2efieldAttrs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aStmt_26_3e_2ePush_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aStmt_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare void @compiler_2fparse_2epathIds(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_34fec3df9092f56c_7b6dc988b92a4ce8 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclosesAngle(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eLen_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2ePush_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i1 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esep(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aExpr_26_3e_2eTruncate_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/source:Span" @compiler_2fparse_2ecompiler_2fparse_3aParser_2efrom(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/token:Token" @compiler_2fparse_2ecompiler_2fparse_3aParser_2elookTok(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftoken_2eSpace = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ewant(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ehere(ptr %v0, ptr %a0)
@olang_loc_e134f20c62dd29bf_7d644e0c862b15db = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eaccept(ptr %v0, ptr %a0, i32 %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eparams(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
@olang_loc_2b194c707e7a9eea_6d7c024a04ee9246 = external constant [0 x i8]
declare %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, { i64, ptr } %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCaseDecl_26_3e_2ePush_H43bc1cace347592514b4248ffd44c907(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eentryEnd(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebinary(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econdFrom(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_7f479cc541fc1ad4_6e65e2fdc3321828 = external constant [0 x i8]
@olang_loc_85a40113c80e7e3e_834c2ee7dcdf6d7a = external constant [0 x i8]
@olang_loc_6c22b543e414e27d_3e5c1ca73c24bcf9 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eforSource(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ereflListPath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebody(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_a242a306f172fb83_ec0e5b3ff97fbb87 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eclauses(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/ast:ForIn" @compiler_2fast_3aForIn_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i32 %a0, i32 %a1, ptr %a2, i1 %a3, { i64, ptr } %a4, { i64, ptr } %a5, i1 %a6)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2eone(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
@olang_loc_f716ec0be1acdc8e_190b3cb13895b492 = external constant [0 x i8]
declare %"compiler/ast:VarDecl" @compiler_2fast_3aVarDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, i1 %a5, { i64, ptr } %a6, i1 %a7)
@olang_loc_de9eff954e569147_2ba8982dfff1933 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2esimpleStmt(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:For3" @compiler_2fast_3aFor3_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2ePush_3cI32_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eTruncate_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2edecl(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eLen_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eAt_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2esyncItem(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_3f74969944d00b69_b8e7e882b42021d = external constant [0 x i8]
declare i1 @compiler_2fparse_2ekeywordNamesField(i32 %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ekeywordField(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2elineBody(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2enullMark(ptr %v0, ptr %a0)
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2emarkers(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2earrayLit(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2)
@olang_loc_824bfdca782f89b4_8a051d8e1bdc5e78 = external constant [0 x i8]
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eafter(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eLen_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eLen_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseType(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2ePush_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2fparse_2eisTypeCasePath(ptr %v0, ptr %a0)
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2ePush_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aPattern_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fparse_2egather_3ccompiler_2fast_3aTypeRef_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { { i64, ptr }, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2ecaseBody(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/ast:Case" @compiler_2fast_3aCase_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, %"compiler/source:Span" %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, { i64, ptr } %a4, ptr %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2ePush_3ccompiler_2fast_3aCase_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aCase_26_3e_2eToArray_3ccompiler_2fast_3aCase_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare %"compiler/ast:Match" @compiler_2fast_3aMatch_2ector(ptr %v0, ptr %v1, ptr %v2, %"compiler/source:Span" %a0, ptr %a1, i1 %a2, { i64, ptr } %a3)
declare i32 @compiler_2ftoken_2eTok_2eKeyword(ptr %v0, { i64, ptr } %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2ebreakBefore(ptr %v0, ptr %a0)
@olang_loc_2c371f21e588b068_13da37aea4ea5bc = external constant [0 x i8]
@G_2ecompiler_2fmsgs_2eEndOfLine = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2fmsgs_2eEndOfFile = external constant <{ [8 x i8], ptr }>
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_97d42995c5706fd7_20b731538cf045b = external constant [0 x i8]
@olang_loc_787ae3c3318fe322_f2232752b79280c6 = external constant [0 x i8]
@olang_loc_afe07cd3f11f5e9a_d335478c7d935166 = external constant [0 x i8]
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eattrsHere(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_f0055d05bbcc9e33_2e682d4d4b5dbed7 = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aParser_2edeclareAttrs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/ast:Param" @compiler_2fast_3aParam_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, ptr %a2, ptr %a3, { i64, ptr } %a4)
declare { i32, i32 } @compiler_2fparse_2ecompiler_2fparse_3aParser_2emethodName(ptr %v0, ptr %a0)
declare %"compiler/ast:Path" @compiler_2fast_3aPath_2ector(ptr %v0, ptr %v1, %"compiler/source:Span" %a0, { i64, ptr } %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eprimary(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eindex(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eisQualifiedType(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgs(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2eisPath(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aSource_2eTextOf(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1)
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsCall(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fsource_2ecompiler_2fsource_3aNames_2eText(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeArgsSpaced(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eargs(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_148080230b4c6cc_b965c2d4ca1d1020 = external constant [0 x i8]
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eunary(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2fparse_2ebuiltinType(ptr %v0, { i64, ptr } %a0)
@olang_loc_b7d265f950b1c844_fc5ee8d7b150faf8 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aTypeRef_26_3e_2eTrunc_H8c52d56c2ff2ec1f038dbe3d42a0a9e1(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aParam_26_3e_2eTruncate_3ccompiler_2fast_3aParam_26_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aPattern_26_3e_2eTrunc_H311fd53ced078d1b110127cfa5549832(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eTruncate_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2econtractHere(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_682b81c4be20c47_acb581c54a6720db = external constant [0 x i8]
declare i1 @compiler_2fparse_2ecompiler_2fparse_3aParser_2estartsResult(ptr %v0, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eerrorSet(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i32, { i64, ptr } } @compiler_2fparse_2ecompiler_2fparse_3aParser_2epromises(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2ftoken_2ecompiler_2ftoken_3aTok_2eText(ptr %v0, i32 %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePromiseMisplaced(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/ast:Sig" @compiler_2fast_3aSig_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3, i1 %a4, ptr %a5, i1 %a6, i1 %a7, { i64, ptr } %a8)
declare i64 @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeArgsShape(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2fscan_2ecompiler_2fscan_3aTokens_2eMatch(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_b08fe5a62583e117_e5b5edd841fa1acb = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNesting(ptr %v0, i64 %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eweakType(ptr %v0, ptr %v1, ptr %a0)
declare { i32, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2etypeBase(ptr %v0, ptr %v1, ptr %a0)
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
@olang_loc_3fc06d3a68dac511_cf4e4a3339a21d5d = external constant [0 x i8]
declare ptr @compiler_2fparse_2ecompiler_2fparse_3aParser_2elastField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2fparse_2ecompiler_2fparse_3aParser_2eendStmt(ptr %v0, ptr %a0)
@olang_loc_af06113cf8aef81c_32854973a8f51e0 = external constant [0 x i8]
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
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fparse_2eshapeStmt(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2)
@olang_loc_eccdd3ba5e570728_ba1962c6d7fecaac = external constant [0 x i8]
@olang_loc_e598cf6f5d58c5f9_c6e191fe7fda4d5d = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
