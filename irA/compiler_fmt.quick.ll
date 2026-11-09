source_filename = "compiler_fmt.quick.ll"
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
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/parse:Oracle" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/scan:Tokens" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/scan:Diag" = type { i32, i32, i32, i8 }
%"compiler/parse:Parser" = type { ptr, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, i1, i1, i1, i1, i1, i1, i1, i64, i1, i1, i64, i1, i64, i1, i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"std/io:Writer" = type { i32, { i64, ptr }, i64, { i32, { i64, [1 x i64] } } }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/fmt:formatter" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/text:StringBuilder", i1, i64, i64, { i64, ptr }, i64, i1, i64, i64, i64, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/fmt:loader" = type { { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/token:Token" = type { i32, i8, i32, i32 }
define dso_local { i32, { i64, ptr } } @compiler_2ffmt_2eFileLayout(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca %"compiler/source:Source"
  %l6 = alloca %"compiler/source:Names"
  %l7 = alloca %"compiler/diag:Diagnostics"
  %l8 = alloca %"compiler/parse:Oracle"
  %l9 = alloca i64
  %l10 = alloca %"compiler/scan:Tokens"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/scan:Diag"
  %l15 = alloca %"compiler/parse:Parser"
  %l16 = alloca { i64, ptr }
  %l18 = alloca i64
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l30 = alloca %"compiler/source:Source"
  %l31 = alloca %"compiler/source:Names"
  %l33 = alloca %"compiler/diag:Diagnostics"
  %l38 = alloca %"compiler/parse:Oracle"
  %l42 = alloca i64
  %l44 = alloca %"compiler/scan:Tokens"
  %l52 = alloca { i64, ptr }
  %l55 = alloca ptr
  %l61 = alloca { i64, [3 x i64] }
  %l62 = alloca i32
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l68 = alloca { i64, ptr }
  %l70 = alloca %"compiler/diagmsg:Msg"
  %l71 = alloca i64
  %l80 = alloca %"compiler/parse:Parser"
  %l82 = alloca { i64, ptr }
  %l86 = alloca i1
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l90 = alloca i64
  %l92 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t60 = alloca %"compiler/diag:Diagnostics", align 8
  %t66 = alloca %"compiler/parse:Oracle", align 8
  %t117 = alloca { i64, [3 x i64] }, align 8
  %t162 = alloca %"compiler/parse:Parser", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l18, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aSource_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l18, !tbaa !24
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/source:Source", ptr %t6, i32 0, i32 0
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 1
  %t12 = extractvalue { i64, ptr } %t9, 0
  %t13 = load i64, ptr %l18
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = call ptr @__olang_scope_alloc(ptr %t14, i64 %t12)
  call void @olang_textcopy(ptr %t15, ptr %t11, i64 %t12)
  %t16 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  %t19 = load i64, ptr %l18
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = extractvalue { i64, ptr } %t17, 0
  %t22 = extractvalue { i64, ptr } %t17, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %t20, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  store { i64, ptr } %t26, ptr %l23, !tbaa !27
  %t27 = ptrtoint ptr %s0 to i64
  store i64 %t27, ptr %l24, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2fsource_3aSource_2e1
  br i1 %t28, label %bb3, label %bb4
bb3:
  %t30 = call ptr @__olang_region_make(ptr %s0)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l24, !tbaa !24
  br label %bb4
bb4:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/source:Source", ptr %t32, i32 0, i32 1
  %t35 = load { i64, ptr }, ptr %t34, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 1
  %t38 = extractvalue { i64, ptr } %t35, 0
  %t39 = load i64, ptr %l24
  %t40 = inttoptr i64 %t39 to ptr
  %t41 = call ptr @__olang_scope_alloc(ptr %t40, i64 %t38)
  call void @olang_textcopy(ptr %t41, ptr %t37, i64 %t38)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t45 = load i64, ptr %l24
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = extractvalue { i64, ptr } %t43, 0
  %t48 = extractvalue { i64, ptr } %t43, 1
  %t49 = mul i64 %t47, 1
  %t50 = call ptr @__olang_scope_alloc(ptr %t46, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  %t53 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t55 = call %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t53, { i64, ptr } %t52)
  store %"compiler/source:Source" %t55, ptr %l30
  br label %bb5
bb5:
  %t56 = load %"compiler/source:Source", ptr %l30
  store %"compiler/source:Source" %t56, ptr %l5
  %t57 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %s0)
  store %"compiler/source:Names" %t57, ptr %l31
  br label %bb6
bb6:
  %t58 = load %"compiler/source:Names", ptr %l31
  store %"compiler/source:Names" %t58, ptr %l6
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t60, ptr %s0, i1 %a3)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t60, i64 544, i1 false)
  br label %bb7
bb7:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l33, i64 544, i1 false)
  %t62 = getelementptr %"compiler/source:Source", ptr %l5, i32 0, i32 0
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  call void @compiler_2ffmt_2eOracleFor(ptr %t66, ptr %s0, ptr %v1, ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %t63, { i64, ptr } %a1, { i64, ptr } %a2, ptr %l6)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t66, i64 288, i1 false)
  br label %bb8
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l38, i64 288, i1 false)
  %t71 = getelementptr %"compiler/source:Source", ptr %l5, i32 0, i32 0
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  %t73 = getelementptr %"compiler/source:Source", ptr %l5, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  %t78 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %s0, ptr %s0, ptr %s0, ptr %l7, { i64, ptr } %t72, { i64, ptr } %t74, i1 false)
  store i64 %t78, ptr %l42
  br label %bb9
bb9:
  %t79 = load i64, ptr %l42, !tbaa !24
  store i64 %t79, ptr %l9, !tbaa !24
  %t80 = getelementptr %"compiler/source:Source", ptr %l5, i32 0, i32 1
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  %t83 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %s0, ptr %s0, { i64, ptr } %t81)
  store %"compiler/scan:Tokens" %t83, ptr %l44
  br label %bb10
bb10:
  %t84 = load %"compiler/scan:Tokens", ptr %l44
  store %"compiler/scan:Tokens" %t84, ptr %l10
  %t85 = getelementptr %"compiler/scan:Tokens", ptr %l10, i32 0, i32 3
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t88 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t90 = extractvalue { i64, ptr } %t88, 0
  store i64 %t90, ptr %l13, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s4
  %t92 = load i64, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l13, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s4)
  br label %bb22
bb13:
  br label %bb14
bb14:
  %t100 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t100, ptr %l52, !tbaa !27
  %t101 = load i64, ptr %l12, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr %"compiler/scan:Diag", ptr %t104, i64 %t101
  %t106 = load %"compiler/scan:Diag", ptr %t105
  store %"compiler/scan:Diag" %t106, ptr %l14
  store ptr %l7, ptr %l55, !tbaa !29
  %t108 = load i64, ptr %l9, !tbaa !24
  %t109 = getelementptr %"compiler/scan:Diag", ptr %l14, i32 0, i32 1
  %t110 = load i32, ptr %t109, !tbaa !23
  %t112 = sext i32 %t110 to i64
  %t113 = getelementptr %"compiler/scan:Diag", ptr %l14, i32 0, i32 2
  %t114 = load i32, ptr %t113, !tbaa !23
  %t116 = sext i32 %t114 to i64
  store { i64, [3 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [3 x i64] }, ptr %t117, i32 0, i32 0
  store i64 3, ptr %t118
  %t120 = insertvalue { i64, i64, i64 } undef, i64 %t108, 0
  %t122 = insertvalue { i64, i64, i64 } %t120, i64 %t112, 1
  %t124 = insertvalue { i64, i64, i64 } %t122, i64 %t116, 2
  %t125 = getelementptr { i64, [3 x i64] }, ptr %t117, i32 0, i32 1
  store { i64, i64, i64 } %t124, ptr %t125
  %t126 = load { i64, [3 x i64] }, ptr %t117
  store { i64, [3 x i64] } %t126, ptr %l61
  store i32 57, ptr %l62
  %t127 = load %"compiler/scan:Diag", ptr %l14
  %t129 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %s4, %"compiler/scan:Diag" %t127)
  store { i64, ptr } %t129, ptr %l64
  br label %bb15
bb15:
  %t130 = ptrtoint ptr %s4 to i64
  store i64 %t130, ptr %l65, !tbaa !24
  %t131 = load i1, ptr @olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2
  br i1 %t131, label %bb16, label %bb17
bb16:
  %t133 = call ptr @__olang_region_make(ptr %s4)
  %t134 = ptrtoint ptr %t133 to i64
  store i64 %t134, ptr %l65, !tbaa !24
  br label %bb17
bb17:
  %t135 = load %"compiler/scan:Diag", ptr %l14
  %t136 = load i64, ptr %l65
  %t137 = inttoptr i64 %t136 to ptr
  %t139 = call { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %t137, %"compiler/scan:Diag" %t135)
  store { i64, ptr } %t139, ptr %l68
  br label %bb18
bb18:
  %t140 = load { i64, ptr }, ptr %l68, !tbaa !27
  %t141 = load i64, ptr %l65
  %t142 = inttoptr i64 %t141 to ptr
  %t143 = extractvalue { i64, ptr } %t140, 0
  %t144 = extractvalue { i64, ptr } %t140, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %t142, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  %t149 = load i32, ptr %l62, !range !{i32 0, i32 884}
  %t150 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t152 = call %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %s4, ptr %s4, ptr %s4, i32 %t149, { i64, ptr } %t150, { i64, ptr } %t148)
  store %"compiler/diagmsg:Msg" %t152, ptr %l70
  br label %bb19
bb19:
  %t153 = load ptr, ptr %l55, !tbaa !29
  %t154 = load { i64, [3 x i64] }, ptr %l61
  %t155 = load %"compiler/diagmsg:Msg", ptr %l70
  %t156 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %s0, ptr %s4, ptr %t153, { i64, [3 x i64] } %t154, %"compiler/diagmsg:Msg" %t155)
  store i64 %t156, ptr %l71
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  %t157 = load i64, ptr %l12, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l12, !tbaa !24
  br label %bb11
bb22:
  %t161 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fparse_3aParser_2ector(ptr %t162, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l5, ptr %l10, ptr %l6, ptr %l8, ptr %l7, i64 %t161)
  call void @llvm.memmove.p0.p0.i64(ptr %l80, ptr %t162, i64 912, i1 false)
  br label %bb23
bb23:
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l80, i64 912, i1 false)
  %t170 = call { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %s0, ptr %s0, ptr %l15)
  store { i64, ptr } %t170, ptr %l82
  br label %bb24
bb24:
  %t171 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t171, ptr %l16, !tbaa !27
  %t172 = getelementptr %"compiler/scan:Tokens", ptr %l10, i32 0, i32 3
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t177 = icmp sgt i64 %t175, 0
  br i1 %t177, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb29
bb26:
  %t180 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %s0, ptr %s0, ptr %l7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t180, ptr %l88
  br label %bb27
bb27:
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %s0, ptr %l88)
  store i64 %t182, ptr %l90
  br label %bb28
bb28:
  %t183 = load i64, ptr %l90, !tbaa !24
  %t184 = icmp sgt i64 %t183, 0
  store i1 %t184, ptr %l86, !tbaa !21
  br label %bb29
bb29:
  %t186 = load i1, ptr %l86, !tbaa !21
  br i1 %t186, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  store ptr %a4, ptr %l92, !tbaa !29
  %t189 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %s0, ptr %s6, ptr %l7)
  store { i64, ptr } %t189, ptr %l94
  br label %bb32
bb31:
  br label %bb34
bb32:
  %t190 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t190, 0
  %t192 = extractvalue { i64, ptr } %t190, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t197 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v3, ptr %s6, ptr %t197, { i64, ptr } %t196)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t200 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t200, ptr %rv
  br label %ret
bb34:
  %t201 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t202 = getelementptr %"compiler/source:Source", ptr %l5, i32 0, i32 1
  %t203 = load { i64, ptr }, ptr %t202, !tbaa !27
  %t208 = call { i64, ptr } @compiler_2funparse_2eHeldBranches(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t201, ptr %l6, { i64, ptr } %t203, ptr %l7)
  store { i64, ptr } %t208, ptr %l101
  br label %bb35
bb35:
  %t209 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t210 = getelementptr %"compiler/source:Source", ptr %l5, i32 0, i32 1
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  %t212 = getelementptr %"compiler/parse:Parser", ptr %l15, i32 0, i32 41
  %t213 = getelementptr %"compiler/parse:Parser", ptr %l15, i32 0, i32 42
  %t215 = getelementptr %"compiler/parse:Parser", ptr %l15, i32 0, i32 43
  %t222 = call { i64, ptr } @compiler_2ffmt_2eFormat(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %v4, { i64, ptr } %t211, ptr %l10, ptr %t212, ptr %t213, { i64, ptr } %t209, ptr %t215)
  store { i64, ptr } %t222, ptr %l108
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s0)
  %t223 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t224 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t223, 1
  store { i32, { i64, ptr } } %t224, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local i32 @compiler_2ffmt_2eFiles(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca %"std/io:Writer"
  %l4 = alloca %"std/io:Writer"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"compiler/source:Source"
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"std/io:Writer"
  %l15 = alloca %"std/io:Writer"
  %l17 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l28 = alloca %"compiler/source:Source"
  %l30 = alloca %"compiler/source:Source"
  %l31 = alloca i32
  %l33 = alloca i1
  %l41 = alloca %"std/prelude/text:StringBuilder"
  %l42 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i1
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l50 = alloca ptr
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l59 = alloca i1
  %l63 = alloca i32
  %l65 = alloca i1
  %l74 = alloca i1
  %l79 = alloca i1
  %l89 = alloca i32
  %l91 = alloca i1
  %l96 = alloca i32
  %l98 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca i32
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 1, i64 65536)
  store %"std/io:Writer" %t1, ptr %l14
  br label %bb1
bb1:
  %t2 = load %"std/io:Writer", ptr %l14
  store %"std/io:Writer" %t2, ptr %l3
  %t3 = call %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %s0, i32 2, i64 65536)
  store %"std/io:Writer" %t3, ptr %l15
  br label %bb2
bb2:
  %t4 = load %"std/io:Writer", ptr %l15
  store %"std/io:Writer" %t4, ptr %l4
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2ffmt_2ePreludeTypes(ptr %v2, ptr %s0, { i64, ptr } %t5)
  store { i64, ptr } %t7, ptr %l17
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  store i32 0, ptr %l6, !tbaa !23
  store { i64, ptr } %a1, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l9, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t15 = load i64, ptr %l8, !tbaa !24
  %t16 = load i64, ptr %l9, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb49
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t23, ptr %l25, !tbaa !27
  %t24 = load i64, ptr %l8, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %t27, i64 %t24
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !37
  store { i64, ptr } %t29, ptr %l10, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t33 = call { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v1, ptr %s2, { i64, ptr } %t31)
  %t34 = extractvalue { i32, %"compiler/source:Source" } %t33, 1
  %t35 = extractvalue { i32, %"compiler/source:Source" } %t33, 0
  store i32 %t35, ptr %l31
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb9, label %ok.37, !prof !99
ok.37:
  store %"compiler/source:Source" %t34, ptr %l30
  br label %bb8
bb8:
  %t38 = load %"compiler/source:Source", ptr %l30
  store %"compiler/source:Source" %t38, ptr %l28
  br label %bb14
bb9:
  %t39 = load i32, ptr %l31, !tbaa !23
  %t40 = ashr i32 %t39, 16
  %t42 = icmp eq i32 %t40, 1
  store i1 %t42, ptr %l33, !tbaa !21
  %t43 = load i32, ptr %l31, !tbaa !23
  %t44 = ashr i32 %t43, 16
  %t46 = icmp eq i32 %t44, 1
  br i1 %t46, label %bb10, label %bb11
bb10:
  call void @__olang_errpay_pop()
  br label %bb11
bb11:
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t48 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t49 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t52 = extractvalue { i64, ptr } %t48, 1
  %t53 = extractvalue { i64, ptr } %t48, 0
  %t54 = add i64 %t50, %t53
  %t55 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t57 = add i64 %t54, %t56
  %t58 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t57)
  call void @olang_textcopy(ptr %t58, ptr %t49, i64 %t50)
  %t59 = getelementptr i8, ptr %t58, i64 %t50
  call void @olang_textcopy(ptr %t59, ptr %t52, i64 %t53)
  %t60 = getelementptr i8, ptr %t59, i64 %t53
  call void @olang_textcopy(ptr %t60, ptr %t55, i64 %t56)
  %t61 = insertvalue { i64, ptr } undef, i64 %t57, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t58, 1
  %t65 = extractvalue { i64, ptr } %t62, 0
  %t66 = extractvalue { i64, ptr } %t62, 1
  %t67 = mul i64 %t65, 1
  %t68 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t67)
  call void @llvm.memcpy.p0.p0.i64(ptr %t68, ptr %t66, i64 %t67, i1 false)
  %t69 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t70 = insertvalue { i64, ptr } %t69, ptr %t68, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s3, ptr %l4, { i64, ptr } %t70)
  br label %bb13
bb13:
  store i32 1, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb14:
  %t73 = load %"compiler/source:Source", ptr %l28
  store %"compiler/source:Source" %t73, ptr %l11
  %t74 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s2)
  store %"std/prelude/text:StringBuilder" %t74, ptr %l41
  br label %bb15
bb15:
  %t75 = load %"std/prelude/text:StringBuilder", ptr %l41
  store %"std/prelude/text:StringBuilder" %t75, ptr %l12
  store ptr %l11, ptr %l43, !tbaa !29
  %t76 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t76, ptr %l44, !tbaa !27
  %t77 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t77, ptr %l45, !tbaa !27
  %t78 = call i1 @compiler_2fdiag_2eColorWanted()
  store i1 %t78, ptr %l46
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t82 = load i1, ptr %l46, !tbaa !21
  %t84 = call { i32, { i64, ptr } } @compiler_2ffmt_2eFileLayout(ptr %s2, ptr %v2, ptr %s0, ptr %s2, ptr %s2, ptr %t79, { i64, ptr } %t80, { i64, ptr } %t81, i1 %t82, ptr %l12)
  %t85 = extractvalue { i32, { i64, ptr } } %t84, 1
  %t86 = extractvalue { i32, { i64, ptr } } %t84, 0
  store i32 %t86, ptr %l49
  %t87 = icmp ne i32 %t86, 0
  br i1 %t87, label %bb18, label %ok.88, !prof !99
ok.88:
  store { i64, ptr } %t85, ptr %l48
  br label %bb17
bb17:
  %t89 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t89, ptr %l42, !tbaa !27
  br label %bb22
bb18:
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s5
  store ptr %l4, ptr %l50, !tbaa !29
  %t91 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s2, ptr %s5, ptr %l12)
  store { i64, ptr } %t91, ptr %l52
  br label %bb20
bb20:
  %t92 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = extractvalue { i64, ptr } %t92, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load ptr, ptr %l50, !tbaa !29
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s5, ptr %t100, { i64, ptr } %t99)
  br label %bb21
bb21:
  store i32 1, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb22:
  %t102 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t102, ptr %l13, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s2, { i64, ptr } %t103, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t105, ptr %l56
  br label %bb23
bb23:
  %t106 = load i1, ptr %l56, !tbaa !21
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t107 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t108 = getelementptr %"compiler/source:Source", ptr %l11, i32 0, i32 1
  %t109 = load { i64, ptr }, ptr %t108, !tbaa !27
  %t112 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t107, { i64, ptr } %t109)
  store i1 %t112, ptr %l59
  br label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s10
  %t113 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t115 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s10, { i64, ptr } %t113, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t115, ptr %l74
  br label %bb37
bb26:
  %t116 = load i1, ptr %l59, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb27, label %bb28
bb27:
  %t119 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t123 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s2, { i64, ptr } %t119, { i64, ptr } %t120)
  store i32 %t123, ptr %l63
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb30, label %ok.125, !prof !99
ok.125:
  br label %bb29
bb28:
  br label %bb36
bb29:
  br label %bb35
bb30:
  %t126 = load i32, ptr %l63, !tbaa !23
  %t127 = ashr i32 %t126, 16
  %t129 = icmp eq i32 %t127, 1
  store i1 %t129, ptr %l65, !tbaa !21
  %t130 = load i32, ptr %l63, !tbaa !23
  %t131 = ashr i32 %t130, 16
  %t133 = icmp eq i32 %t131, 1
  br i1 %t133, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s8
  %t135 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t136 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t139 = extractvalue { i64, ptr } %t135, 1
  %t140 = extractvalue { i64, ptr } %t135, 0
  %t141 = add i64 %t137, %t140
  %t142 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t144 = add i64 %t141, %t143
  %t145 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t144)
  call void @olang_textcopy(ptr %t145, ptr %t136, i64 %t137)
  %t146 = getelementptr i8, ptr %t145, i64 %t137
  call void @olang_textcopy(ptr %t146, ptr %t139, i64 %t140)
  %t147 = getelementptr i8, ptr %t146, i64 %t140
  call void @olang_textcopy(ptr %t147, ptr %t142, i64 %t143)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t145, 1
  %t152 = extractvalue { i64, ptr } %t149, 0
  %t153 = extractvalue { i64, ptr } %t149, 1
  %t154 = mul i64 %t152, 1
  %t155 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t154)
  call void @llvm.memcpy.p0.p0.i64(ptr %t155, ptr %t153, i64 %t154, i1 false)
  %t156 = insertvalue { i64, ptr } undef, i64 %t152, 0
  %t157 = insertvalue { i64, ptr } %t156, ptr %t155, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s8, ptr %l4, { i64, ptr } %t157)
  br label %bb34
bb34:
  store i32 1, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s8)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb47
bb37:
  %t160 = load i1, ptr %l74, !tbaa !21
  br i1 %t160, label %bb38, label %bb39
bb38:
  %t161 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s2, ptr %l3, { i64, ptr } %t161)
  br label %bb40
bb39:
  %t164 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t165 = getelementptr %"compiler/source:Source", ptr %l11, i32 0, i32 1
  %t166 = load { i64, ptr }, ptr %t165, !tbaa !27
  %t169 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t164, { i64, ptr } %t166)
  store i1 %t169, ptr %l79
  br label %bb41
bb40:
  br label %bb46
bb41:
  %t170 = load i1, ptr %l79, !tbaa !21
  %t171 = xor i1 %t170, true
  br i1 %t171, label %bb42, label %bb43
bb42:
  store %olang.scope zeroinitializer, ptr %s13
  %t173 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 1
  %t176 = extractvalue { i64, ptr } %t173, 0
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t179)
  call void @olang_textcopy(ptr %t180, ptr %t175, i64 %t176)
  %t181 = getelementptr i8, ptr %t180, i64 %t176
  call void @olang_textcopy(ptr %t181, ptr %t177, i64 %t178)
  %t182 = insertvalue { i64, ptr } undef, i64 %t179, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t186 = extractvalue { i64, ptr } %t183, 0
  %t187 = extractvalue { i64, ptr } %t183, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  call void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %s0, ptr %s13, ptr %l3, { i64, ptr } %t191)
  br label %bb44
bb43:
  br label %bb45
bb44:
  store i32 1, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s13)
  br label %bb45
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s10)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s2)
  br label %bb48
bb48:
  %t194 = load i64, ptr %l8, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l8, !tbaa !24
  br label %bb4
bb49:
  %t199 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l3)
  store i32 %t199, ptr %l89
  %t200 = icmp ne i32 %t199, 0
  br i1 %t200, label %bb51, label %ok.201, !prof !99
ok.201:
  br label %bb50
bb50:
  br label %bb55
bb51:
  %t202 = load i32, ptr %l89, !tbaa !23
  %t203 = ashr i32 %t202, 16
  %t205 = icmp eq i32 %t203, 1
  store i1 %t205, ptr %l91, !tbaa !21
  %t206 = load i32, ptr %l89, !tbaa !23
  %t207 = ashr i32 %t206, 16
  %t209 = icmp eq i32 %t207, 1
  br i1 %t209, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb55:
  %t213 = call i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %s0, ptr %l4)
  store i32 %t213, ptr %l96
  %t214 = icmp ne i32 %t213, 0
  br i1 %t214, label %bb57, label %ok.215, !prof !99
ok.215:
  br label %bb56
bb56:
  br label %bb61
bb57:
  %t216 = load i32, ptr %l96, !tbaa !23
  %t217 = ashr i32 %t216, 16
  %t219 = icmp eq i32 %t217, 1
  store i1 %t219, ptr %l98, !tbaa !21
  %t220 = load i32, ptr %l96, !tbaa !23
  %t221 = ashr i32 %t220, 16
  %t223 = icmp eq i32 %t221, 1
  br i1 %t223, label %bb58, label %bb59
bb58:
  call void @__olang_errpay_pop()
  br label %bb59
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb61:
  %t226 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t226, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2ffmt_2eFormat(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %v6, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, { i64, ptr } %a4, ptr %a5) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l6 = alloca %"compiler/fmt:formatter"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca %"compiler/source:Span"
  %l23 = alloca %"compiler/fmt:formatter"
  %l25 = alloca i64
  %l27 = alloca i64
  %l32 = alloca i64
  %l33 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l42 = alloca i64
  %l44 = alloca i64
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l55 = alloca i64
  %l57 = alloca i64
  %l62 = alloca i64
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l81 = alloca ptr
  %l85 = alloca i64
  %l86 = alloca ptr
  %l91 = alloca i64
  %l96 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t6 = alloca %"compiler/fmt:formatter", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t4 = getelementptr %"compiler/scan:Tokens", ptr %a1, i32 0, i32 0
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  call void @compiler_2ffmt_3aformatter_2ector(ptr %t6, ptr %v0, ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } %t5)
  call void @llvm.memmove.p0.p0.i64(ptr %l23, ptr %t6, i64 704, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l23, i64 704, i1 false)
  store ptr %a2, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l8, !tbaa !24
  store i64 %t11, ptr %l25, !tbaa !24
  %t12 = load ptr, ptr %l7, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t12)
  store i64 %t14, ptr %l27
  br label %bb3
bb3:
  %t15 = load i64, ptr %l25, !tbaa !24
  %t16 = load i64, ptr %l27, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l7, !tbaa !29
  %t22 = load i64, ptr %l8, !tbaa !24
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t21, i64 %t22)
  store i64 %t25, ptr %l32
  br label %bb7
bb7:
  %t26 = load i64, ptr %l32, !tbaa !24
  store i64 %t26, ptr %l9, !tbaa !24
  %t27 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 2
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l33, !tbaa !27
  %t29 = load i64, ptr %l9, !tbaa !24
  %t30 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 2
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l35, !tbaa !27
  %t32 = load i64, ptr %l9, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i64, ptr %t35, i64 %t32
  %t37 = load i64, ptr %t36, !tbaa !34
  %t39 = add i64 %t37, 1
  %t42 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i64, ptr %t43, i64 %t29
  store i64 %t39, ptr %t44, !tbaa !34
  br label %bb8
bb8:
  %t45 = load i64, ptr %l8, !tbaa !24
  %t47 = add i64 %t45, 1
  store i64 %t47, ptr %l8, !tbaa !24
  br label %bb2
bb9:
  store ptr %a5, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb10
bb10:
  %t51 = load i64, ptr %l11, !tbaa !24
  store i64 %t51, ptr %l42, !tbaa !24
  %t52 = load ptr, ptr %l10, !tbaa !29
  %t54 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v5, ptr %t52)
  store i64 %t54, ptr %l44
  br label %bb11
bb11:
  %t55 = load i64, ptr %l42, !tbaa !24
  %t56 = load i64, ptr %l44, !tbaa !24
  %t57 = icmp slt i64 %t55, %t56
  %t59 = xor i1 %t57, true
  br i1 %t59, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t61 = load ptr, ptr %l10, !tbaa !29
  %t62 = load i64, ptr %l11, !tbaa !24
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v5, ptr %t61, i64 %t62)
  store i64 %t65, ptr %l49
  br label %bb15
bb15:
  %t66 = load i64, ptr %l49, !tbaa !24
  %t67 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 3
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l50, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i1, ptr %t72, i64 %t66
  store i1 true, ptr %t73, !tbaa !31
  br label %bb16
bb16:
  %t74 = load i64, ptr %l11, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l11, !tbaa !24
  br label %bb10
bb17:
  store ptr %a3, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb18
bb18:
  %t80 = load i64, ptr %l14, !tbaa !24
  store i64 %t80, ptr %l55, !tbaa !24
  %t81 = load ptr, ptr %l13, !tbaa !29
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v3, ptr %t81)
  store i64 %t83, ptr %l57
  br label %bb19
bb19:
  %t84 = load i64, ptr %l55, !tbaa !24
  %t85 = load i64, ptr %l57, !tbaa !24
  %t86 = icmp slt i64 %t84, %t85
  %t88 = xor i1 %t86, true
  br i1 %t88, label %bb20, label %bb21
bb20:
  br label %bb25
bb21:
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l13, !tbaa !29
  %t91 = load i64, ptr %l14, !tbaa !24
  %t94 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v3, ptr %t90, i64 %t91)
  store i64 %t94, ptr %l62
  br label %bb23
bb23:
  %t95 = load i64, ptr %l62, !tbaa !24
  store i64 %t95, ptr %l15, !tbaa !24
  %t96 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 4
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l63, !tbaa !27
  %t98 = load i64, ptr %l15, !tbaa !24
  %t99 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 4
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l65, !tbaa !27
  %t101 = load i64, ptr %l15, !tbaa !24
  %t103 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = getelementptr i64, ptr %t104, i64 %t101
  %t106 = load i64, ptr %t105, !tbaa !34
  %t108 = add i64 %t106, 1
  %t111 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr i64, ptr %t112, i64 %t98
  store i64 %t108, ptr %t113, !tbaa !34
  br label %bb24
bb24:
  %t114 = load i64, ptr %l14, !tbaa !24
  %t116 = add i64 %t114, 1
  store i64 %t116, ptr %l14, !tbaa !24
  br label %bb18
bb25:
  store { i64, ptr } %a4, ptr %l16, !tbaa !27
  store i64 0, ptr %l17, !tbaa !24
  %t120 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  store i64 %t122, ptr %l18, !tbaa !24
  br label %bb26
bb26:
  %t124 = load i64, ptr %l17, !tbaa !24
  %t125 = load i64, ptr %l18, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t132 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t132, ptr %l78, !tbaa !27
  %t133 = load i64, ptr %l17, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr %"compiler/source:Span", ptr %t136, i64 %t133
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l19
  %t140 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 32
  store ptr %t140, ptr %l81, !tbaa !29
  %t141 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t142 = getelementptr %"compiler/source:Span", ptr %l19, i32 0, i32 0
  %t143 = load i32, ptr %t142, !tbaa !23
  %t145 = sext i32 %t143 to i64
  %t148 = call i64 @compiler_2ffmt_2elineStartOf(ptr %v0, { i64, ptr } %t141, i64 %t145)
  store i64 %t148, ptr %l85
  br label %bb30
bb30:
  %t149 = load ptr, ptr %l81, !tbaa !29
  %t150 = load i64, ptr %l85, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t149, i64 %t150)
  br label %bb31
bb31:
  %t151 = getelementptr %"compiler/fmt:formatter", ptr %l6, i32 0, i32 33
  store ptr %t151, ptr %l86, !tbaa !29
  %t152 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t153 = getelementptr %"compiler/source:Span", ptr %l19, i32 0, i32 1
  %t154 = load i32, ptr %t153, !tbaa !23
  %t156 = sext i32 %t154 to i64
  %t158 = sub i64 %t156, 1
  %t161 = call i64 @compiler_2ffmt_2elineEndOf(ptr %v0, { i64, ptr } %t152, i64 %t158)
  store i64 %t161, ptr %l91
  br label %bb32
bb32:
  %t162 = load ptr, ptr %l86, !tbaa !29
  %t163 = load i64, ptr %l91, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t162, i64 %t163)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t164 = load i64, ptr %l17, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l17, !tbaa !24
  br label %bb26
bb35:
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2erun(ptr %s0, ptr %l6)
  br label %bb36
bb36:
  %t170 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ewrite(ptr %s0, ptr %v6, ptr %l6)
  store { i64, ptr } %t170, ptr %l96
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s0)
  %t171 = load { i64, ptr }, ptr %l96, !tbaa !27
  store { i64, ptr } %t171, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffmt_2eOracleFor(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l4 = alloca %"compiler/fmt:loader"
  %l5 = alloca i64
  %lp6 = alloca ptr
  %l8 = alloca %"compiler/fmt:loader"
  %l11 = alloca i64
  %l12 = alloca %"compiler/parse:Oracle"
  %l20 = alloca %"compiler/parse:Oracle"
  %s0 = alloca %olang.scope
  %t2 = alloca %"compiler/fmt:loader", align 8
  %t9 = alloca %"compiler/parse:Oracle", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2ffmt_3aloader_2ector(ptr %t2, ptr %v1, ptr %s0, { i64, ptr } %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t2, i64 176, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l8, i64 176, i1 false)
  %t7 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eload(ptr %s0, ptr %v0, ptr %l4, { i64, ptr } %a0)
  store i64 %t7, ptr %l11
  br label %bb2
bb2:
  %t8 = load i64, ptr %l11, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  call void @compiler_2fparse_3aOracle_2ector(ptr %t9, ptr %v4)
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %t9, i64 288, i1 false)
  br label %bb3
bb3:
  %t10 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 288, i64 8)
  store ptr %t10, ptr %lp6
  %t11 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %t11, ptr %l12, i64 288, i1 false)
  %t12 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp sge i64 %t12, 0
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load ptr, ptr %lp6
  %t18 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eoracle(ptr %s0, ptr %v4, ptr %v3, ptr %v2, ptr %l4, ptr %t16, ptr %a3, i64 %t18, { i64, ptr } %a2)
  br label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %lp6
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t25, i64 288, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 288, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ffmt_2ePreludeTypes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"compiler/fmt:loader"
  %l3 = alloca %"compiler/fmt:loader"
  %l5 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t2 = alloca %"compiler/fmt:loader", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2ffmt_3aloader_2ector(ptr %t2, ptr %v0, ptr %s0, { i64, ptr } %a0)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t2, i64 176, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %l3, i64 176, i1 false)
  %t5 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eprelude(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t5, ptr %l5
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t6 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l7 = alloca i1
  %l8 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/token:Token", ptr %t8, i64 %a1
  %t10 = load %"compiler/token:Token", ptr %t9
  %t11 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t14 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t10, i8 %t11)
  store i1 %t14, ptr %l7
  br label %bb1
bb1:
  %t15 = load i1, ptr %l7, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l8, !tbaa !27
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l8, !tbaa !27
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t16, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebefore(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l16 = alloca i64
  %l19 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/fmt:formatter", ptr %t6, i32 0, i32 7
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = sub i64 %t9, 1
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t8, i64 %t11)
  store i64 %t14, ptr %l10
  br label %bb4
bb4:
  %t15 = load i64, ptr %l10, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/fmt:formatter", ptr %t16, i32 0, i32 1
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l12, !tbaa !27
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/fmt:formatter", ptr %t20, i32 0, i32 7
  %t23 = load i64, ptr %l1, !tbaa !24
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t22, i64 %t23)
  store i64 %t26, ptr %l16
  br label %bb5
bb5:
  %t27 = load i64, ptr %l16, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr %"compiler/token:Token", ptr %t29, i64 %t27
  %t31 = load %"compiler/token:Token", ptr %t30
  %t32 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t35 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t31, i8 %t32)
  store i1 %t35, ptr %l19
  br label %bb6
bb6:
  %t36 = load i1, ptr %l19, !tbaa !21
  br i1 %t36, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t38 = load i64, ptr %l2, !tbaa !24
  store i64 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebegin(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca i32
  %l7 = alloca i1
  %l10 = alloca i64
  %l18 = alloca i32
  %l21 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i1
  %l29 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l57 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 30
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/fmt:formatter", ptr %t8, i32 0, i32 12
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l10
  br label %bb3
bb2:
  store i1 false, ptr %l7, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp sgt i64 %t13, 0
  store i1 %t14, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l7, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l2, !tbaa !21
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/fmt:formatter", ptr %t17, i32 0, i32 31
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  br i1 %t22, label %bb7, label %bb8
bb6:
  br label %bb33
bb7:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/fmt:formatter", ptr %t25, i32 0, i32 31
  %t28 = load i64, ptr %t27, !tbaa !24
  %t31 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t24, i64 %t28)
  store i32 %t31, ptr %l18
  br label %bb9
bb8:
  br label %bb22
bb9:
  %t32 = load i32, ptr %l18, !range !{i32 0, i32 114}
  store i32 %t32, ptr %l3
  %t33 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t35 = trunc i64 112 to i32
  %t36 = icmp eq i32 %t33, %t35
  br i1 %t36, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb12
bb11:
  %t38 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t40 = trunc i64 108 to i32
  %t41 = icmp eq i32 %t38, %t40
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb12
bb12:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb15
bb14:
  %t44 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t46 = trunc i64 110 to i32
  %t47 = icmp eq i32 %t44, %t46
  store i1 %t47, ptr %l24, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l24, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb18
bb17:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/fmt:formatter", ptr %t50, i32 0, i32 2
  %t53 = load { i64, ptr }, ptr %t52, !tbaa !27
  store { i64, ptr } %t53, ptr %l29, !tbaa !27
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/fmt:formatter", ptr %t54, i32 0, i32 31
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr i64, ptr %t60, i64 %t57
  %t62 = load i64, ptr %t61, !tbaa !34
  %t64 = icmp sgt i64 %t62, 0
  store i1 %t64, ptr %l27, !tbaa !21
  br label %bb18
bb18:
  %t66 = load i1, ptr %l27, !tbaa !21
  br i1 %t66, label %bb19, label %bb20
bb19:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t67 = load i1, ptr %l2, !tbaa !21
  br i1 %t67, label %bb23, label %bb24
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/fmt:formatter", ptr %t69, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t71, i64 1)
  br label %bb25
bb24:
  br label %bb32
bb25:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/fmt:formatter", ptr %t73, i32 0, i32 13
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t75, i64 0)
  br label %bb26
bb26:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/fmt:formatter", ptr %t77, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t79, i64 0)
  br label %bb27
bb27:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/fmt:formatter", ptr %t81, i32 0, i32 15
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t83, i64 0)
  br label %bb28
bb28:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/fmt:formatter", ptr %t85, i32 0, i32 16
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t87, i64 -1)
  br label %bb29
bb29:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/fmt:formatter", ptr %t89, i32 0, i32 17
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t91, i64 -1)
  br label %bb30
bb30:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/fmt:formatter", ptr %t93, i32 0, i32 18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t95, i1 false)
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/fmt:formatter", ptr %t97, i32 0, i32 30
  store i64 0, ptr %t99, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/fmt:formatter", ptr %t100, i32 0, i32 20
  store i1 true, ptr %t102, !tbaa !21
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/fmt:formatter", ptr %t103, i32 0, i32 34
  store i1 false, ptr %t105, !tbaa !21
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/fmt:formatter", ptr %t106, i32 0, i32 21
  store i64 %a1, ptr %t110, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  store ptr %t111, ptr %l54, !tbaa !29
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/fmt:formatter", ptr %t112, i32 0, i32 19
  %t116 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %t114)
  store i64 %t116, ptr %l57
  br label %bb34
bb34:
  %t117 = load i64, ptr %l57, !tbaa !24
  %t118 = load ptr, ptr %l54, !tbaa !29
  %t119 = getelementptr %"compiler/fmt:formatter", ptr %t118, i32 0, i32 24
  store i64 %t117, ptr %t119, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/fmt:formatter", ptr %t120, i32 0, i32 25
  store i1 false, ptr %t122, !tbaa !21
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/fmt:formatter", ptr %t123, i32 0, i32 28
  store i64 0, ptr %t125, !tbaa !24
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/fmt:formatter", ptr %t126, i32 0, i32 29
  store i64 -1, ptr %t128, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/fmt:formatter", ptr %t129, i32 0, i32 26
  store i64 -1, ptr %t131, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/fmt:formatter", ptr %t132, i32 0, i32 27
  store i64 -1, ptr %t134, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2echild(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/fmt:formatter", ptr %t12, i32 0, i32 10
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = sub i64 %t15, 1
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t14, i64 %t17)
  store i64 %t20, ptr %l12
  br label %bb5
bb5:
  %t21 = load i64, ptr %l12, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eclosing(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t7 = call i1 @compiler_2ffmt_2eisCloser(i32 %t6)
  store i1 %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load i1, ptr %l5, !tbaa !21
  br i1 %t8, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb5
bb4:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/fmt:formatter", ptr %t9, i32 0, i32 4
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l8, !tbaa !27
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i64, ptr %t16, i64 %t13
  %t18 = load i64, ptr %t17, !tbaa !34
  %t20 = icmp sgt i64 %t18, 0
  store i1 %t20, ptr %l6, !tbaa !21
  br label %bb5
bb5:
  %t22 = load i1, ptr %l6, !tbaa !21
  store i1 %t22, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ecomment(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l16 = alloca i1
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l25 = alloca { i64, ptr }
  %l36 = alloca ptr
  %l39 = alloca i64
  %l47 = alloca ptr
  %l50 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l83 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l94 = alloca i64
  %l95 = alloca i64
  %l96 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t3 = xor i1 %a3, true
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb20
bb3:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/fmt:formatter", ptr %t11, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13, !tbaa !27
  store { i64, ptr } %t14, ptr %l18, !tbaa !27
  %t15 = load i64, ptr %l2, !tbaa !24
  %t17 = sub i64 %t15, 1
  %t19 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  %t24 = icmp eq i8 %t22, 32
  br i1 %t24, label %bb6, label %bb7
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb9
bb6:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb8
bb7:
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/fmt:formatter", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l25, !tbaa !27
  %t30 = load i64, ptr %l2, !tbaa !24
  %t32 = sub i64 %t30, 1
  %t34 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr i8, ptr %t35, i64 %t32
  %t37 = load i8, ptr %t36, !tbaa !32
  %t39 = icmp eq i8 %t37, 9
  store i1 %t39, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t41 = load i1, ptr %l23, !tbaa !21
  store i1 %t41, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t42 = load i1, ptr %l16, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t45 = load i64, ptr %l2, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l2, !tbaa !24
  br label %bb13
bb13:
  br label %bb3
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/fmt:formatter", ptr %t49, i32 0, i32 20
  %t52 = load i1, ptr %t51, !tbaa !21
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l36, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i64, ptr %l4, !tbaa !24
  %t61 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2elevelAt(ptr %v0, ptr %t57, i64 %t58)
  store i64 %t61, ptr %l39
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t62 = load ptr, ptr %l36, !tbaa !29
  %t63 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebegin(ptr %v0, ptr %t62, i64 %t63)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l1, !tbaa !24
  %t68 = getelementptr %"compiler/fmt:formatter", ptr %t64, i32 0, i32 26
  store i64 %t65, ptr %t68, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l2, !tbaa !24
  %t73 = getelementptr %"compiler/fmt:formatter", ptr %t69, i32 0, i32 27
  store i64 %t70, ptr %t73, !tbaa !24
  br label %ret
bb20:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/fmt:formatter", ptr %t74, i32 0, i32 20
  %t77 = load i1, ptr %t76, !tbaa !21
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l47, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l4, !tbaa !24
  %t86 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2elevelAt(ptr %v0, ptr %t82, i64 %t83)
  store i64 %t86, ptr %l50
  br label %bb23
bb22:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/fmt:formatter", ptr %t87, i32 0, i32 28
  %t90 = load i64, ptr %t89, !tbaa !24
  %t92 = icmp ne i64 %t90, 0
  br i1 %t92, label %bb25, label %bb26
bb23:
  %t94 = load ptr, ptr %l47, !tbaa !29
  %t95 = load i64, ptr %l50, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebegin(ptr %v0, ptr %t94, i64 %t95)
  br label %bb24
bb24:
  br label %bb29
bb25:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/fmt:formatter", ptr %t96, i32 0, i32 19
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t98, i8 32)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t100 = load i64, ptr %l1, !tbaa !24
  store i64 %t100, ptr %l5, !tbaa !24
  %t102 = load i64, ptr %l2, !tbaa !24
  store i64 %t102, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l6, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = icmp sgt i64 %t104, %t105
  br i1 %t108, label %bb30, label %bb31
bb30:
  %t110 = load i64, ptr %l7, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb32, label %bb33
bb31:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb35
bb32:
  %t114 = load i64, ptr %l6, !tbaa !24
  %t115 = load i64, ptr %l5, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l7, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l7, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l64, !tbaa !24
  br label %bb34
bb33:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb34
bb34:
  %t130 = load i64, ptr %l64, !tbaa !24
  store i64 %t130, ptr %l61, !tbaa !24
  br label %bb35
bb35:
  %t131 = load i64, ptr %l61, !tbaa !24
  store i64 %t131, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb36
bb36:
  %t132 = load i64, ptr %l9, !tbaa !24
  %t133 = load i64, ptr %l8, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb37, label %bb38
bb37:
  br label %bb44
bb38:
  br label %bb39
bb39:
  %t140 = load i64, ptr %l5, !tbaa !24
  %t141 = load i64, ptr %l9, !tbaa !24
  %t142 = load i64, ptr %l7, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/fmt:formatter", ptr %t150, i32 0, i32 0
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l83, !tbaa !27
  %t156 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i8, ptr %t157, i64 %t148
  %t159 = load i8, ptr %t158, !tbaa !32
  %t161 = icmp eq i8 %t159, 10
  br i1 %t161, label %bb40, label %bb41
bb40:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/fmt:formatter", ptr %t163, i32 0, i32 25
  store i1 true, ptr %t165, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t166 = load i64, ptr %l9, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l9, !tbaa !24
  br label %bb36
bb44:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/fmt:formatter", ptr %t170, i32 0, i32 19
  store ptr %t172, ptr %l91, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/fmt:formatter", ptr %t173, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  store { i64, ptr } %t176, ptr %l93, !tbaa !27
  %t177 = load i64, ptr %l1, !tbaa !24
  store i64 %t177, ptr %l94, !tbaa !24
  %t178 = load i64, ptr %l2, !tbaa !24
  store i64 %t178, ptr %l95, !tbaa !24
  %t179 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t180 = extractvalue { i64, ptr } %t179, 0
  store i64 %t180, ptr %l96, !tbaa !24
  %t181 = load i64, ptr %l94, !tbaa !24
  %t182 = icmp sge i64 %t181, 0
  br i1 %t182, label %bb45, label %bb46
bb45:
  %t184 = load i64, ptr %l94, !tbaa !24
  %t185 = load i64, ptr %l95, !tbaa !24
  %t186 = icmp sle i64 %t184, %t185
  br i1 %t186, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_efe0301a0eee46c_f87ee963c45aa130)
  unreachable
bb47:
  %t188 = load i64, ptr %l95, !tbaa !24
  %t189 = load i64, ptr %l96, !tbaa !24
  %t190 = icmp sle i64 %t188, %t189
  br i1 %t190, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_efe0301a0eee46c_f87ee963c45aa130)
  unreachable
bb49:
  %t192 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = load i64, ptr %l94, !tbaa !24
  %t195 = load i64, ptr %l95, !tbaa !24
  %t196 = getelementptr i8, ptr %t193, i64 %t194
  %t197 = sub i64 %t195, %t194
  %t198 = insertvalue { i64, ptr } undef, i64 %t197, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t196, 1
  %t200 = load ptr, ptr %l91, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t200, { i64, ptr } %t199)
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_efe0301a0eee46c_f87ee963c45aa130)
  unreachable
bb51:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t204 = getelementptr %"compiler/fmt:formatter", ptr %t202, i32 0, i32 28
  store i64 2, ptr %t204, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2econt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i1
  %l11 = alloca i1
  %l17 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l34 = alloca { i64, ptr }
  %l38 = alloca i1
  %l40 = alloca { i64, ptr }
  %l47 = alloca i1
  %l49 = alloca { i64, ptr }
  %l53 = alloca i1
  %l60 = alloca i64
  %l63 = alloca i1
  %l68 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/fmt:formatter", ptr %t5, i32 0, i32 8
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t7, i64 %t8)
  store i1 %t11, ptr %l11
  br label %bb3
bb3:
  %t12 = load i1, ptr %l11, !tbaa !21
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/fmt:formatter", ptr %t15, i32 0, i32 7
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = sub i64 %t18, 1
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t17, i64 %t20)
  store i64 %t23, ptr %l17
  br label %bb8
bb8:
  %t24 = load i64, ptr %l17, !tbaa !24
  store i64 %t24, ptr %l2, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l2, !tbaa !24
  %t29 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t25, i64 %t26)
  store i32 %t29, ptr %l20
  br label %bb9
bb9:
  %t30 = load i32, ptr %l20, !range !{i32 0, i32 114}
  store i32 %t30, ptr %l3
  %t31 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t33 = trunc i64 112 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t36 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t38 = trunc i64 108 to i32
  %t39 = icmp eq i32 %t36, %t38
  store i1 %t39, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t41 = load i1, ptr %l23, !tbaa !21
  br i1 %t41, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb15
bb14:
  %t42 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t44 = trunc i64 110 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t47 = load i1, ptr %l26, !tbaa !21
  br i1 %t47, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb18
bb17:
  %t48 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t50 = trunc i64 113 to i32
  %t51 = icmp eq i32 %t48, %t50
  store i1 %t51, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb19, label %bb20
bb19:
  store i64 0, ptr %rv
  br label %ret
bb20:
  br label %bb21
bb21:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/fmt:formatter", ptr %t55, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  store { i64, ptr } %t58, ptr %l34, !tbaa !27
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t59
  %t64 = load i64, ptr %t63, !tbaa !34
  %t66 = icmp sgt i64 %t64, 0
  br i1 %t66, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb24
bb23:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/fmt:formatter", ptr %t68, i32 0, i32 4
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l40, !tbaa !27
  %t72 = load i64, ptr %l2, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr i64, ptr %t75, i64 %t72
  %t77 = load i64, ptr %t76, !tbaa !34
  %t79 = icmp sgt i64 %t77, 0
  store i1 %t79, ptr %l38, !tbaa !21
  br label %bb24
bb24:
  %t81 = load i1, ptr %l38, !tbaa !21
  br i1 %t81, label %bb25, label %bb26
bb25:
  store i64 0, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t83 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t85 = trunc i64 101 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb28, label %bb29
bb28:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/fmt:formatter", ptr %t88, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l49, !tbaa !27
  %t92 = load i64, ptr %l2, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr %"compiler/token:Token", ptr %t95, i64 %t92
  %t97 = load %"compiler/token:Token", ptr %t96
  %t98 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t101 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t97, i8 %t98)
  store i1 %t101, ptr %l53
  br label %bb30
bb29:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb31
bb30:
  %t102 = load i1, ptr %l53, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l47, !tbaa !21
  br label %bb31
bb31:
  %t105 = load i1, ptr %l47, !tbaa !21
  br i1 %t105, label %bb32, label %bb33
bb32:
  store i64 0, ptr %rv
  br label %ret
bb33:
  br label %bb34
bb34:
  %t107 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t109 = trunc i64 75 to i32
  %t110 = icmp eq i32 %t107, %t109
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/fmt:formatter", ptr %t112, i32 0, i32 9
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t114)
  store i64 %t116, ptr %l60
  br label %bb37
bb36:
  br label %bb45
bb37:
  %t117 = load i64, ptr %l60, !tbaa !24
  store i64 %t117, ptr %l4, !tbaa !24
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = icmp sgt i64 %t118, 0
  br i1 %t120, label %bb38, label %bb39
bb38:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/fmt:formatter", ptr %t122, i32 0, i32 9
  %t125 = load i64, ptr %l4, !tbaa !24
  %t127 = sub i64 %t125, 1
  %t130 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t124, i64 %t127)
  store i64 %t130, ptr %l68
  br label %bb40
bb39:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb41
bb40:
  %t131 = load i64, ptr %l68, !tbaa !24
  %t132 = icmp eq i64 %t131, 1
  store i1 %t132, ptr %l63, !tbaa !21
  br label %bb41
bb41:
  %t134 = load i1, ptr %l63, !tbaa !21
  br i1 %t134, label %bb42, label %bb43
bb42:
  store i64 0, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  store i64 1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2edropBlank(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l12 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 12
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i64, ptr %l4, !tbaa !24
  store i64 %t6, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp eq i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/fmt:formatter", ptr %t11, i32 0, i32 12
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = sub i64 %t14, 1
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t16)
  store i64 %t19, ptr %l12
  br label %bb4
bb4:
  %t20 = load i64, ptr %l12, !tbaa !24
  %t21 = icmp ne i64 %t20, 1
  store i1 %t21, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t23 = load i1, ptr %l7, !tbaa !21
  br i1 %t23, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/fmt:formatter", ptr %t24, i32 0, i32 12
  %t27 = load i64, ptr %l1, !tbaa !24
  %t29 = sub i64 %t27, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t26, i64 %t29)
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/fmt:formatter", ptr %t32, i32 0, i32 13
  %t35 = load i64, ptr %l1, !tbaa !24
  %t37 = sub i64 %t35, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t34, i64 %t37)
  br label %bb10
bb10:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/fmt:formatter", ptr %t40, i32 0, i32 14
  %t43 = load i64, ptr %l1, !tbaa !24
  %t45 = sub i64 %t43, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t42, i64 %t45)
  br label %bb11
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/fmt:formatter", ptr %t48, i32 0, i32 15
  %t51 = load i64, ptr %l1, !tbaa !24
  %t53 = sub i64 %t51, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t50, i64 %t53)
  br label %bb12
bb12:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/fmt:formatter", ptr %t56, i32 0, i32 16
  %t59 = load i64, ptr %l1, !tbaa !24
  %t61 = sub i64 %t59, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t58, i64 %t61)
  br label %bb13
bb13:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/fmt:formatter", ptr %t64, i32 0, i32 17
  %t67 = load i64, ptr %l1, !tbaa !24
  %t69 = sub i64 %t67, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t66, i64 %t69)
  br label %bb14
bb14:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/fmt:formatter", ptr %t72, i32 0, i32 18
  %t75 = load i64, ptr %l1, !tbaa !24
  %t77 = sub i64 %t75, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eTruncate_3cBool_3e(ptr %v0, ptr %t74, i64 %t77)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eellipsisAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l8 = alloca i1
  %l11 = alloca i1
  %l15 = alloca i32
  %l22 = alloca i32
  %l26 = alloca i1
  %l30 = alloca i32
  %l36 = alloca { i64, ptr }
  %l41 = alloca i1
  %l43 = alloca i1
  %l45 = alloca { i64, ptr }
  %l50 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = add i64 %t1, 2
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/fmt:formatter", ptr %t4, i32 0, i32 1
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  %t12 = icmp sge i64 %t3, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb7
bb2:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i64, ptr %l1, !tbaa !24
  %t21 = sub i64 %t19, 1
  %t24 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t18, i64 %t21)
  store i32 %t24, ptr %l15
  br label %bb5
bb4:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb6
bb5:
  %t25 = load i32, ptr %l15, !range !{i32 0, i32 114}
  %t27 = trunc i64 76 to i32
  %t28 = icmp eq i32 %t25, %t27
  store i1 %t28, ptr %l11, !tbaa !21
  br label %bb6
bb6:
  %t30 = load i1, ptr %l11, !tbaa !21
  store i1 %t30, ptr %l8, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l8, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = add i64 %t34, 1
  %t39 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t33, i64 %t36)
  store i32 %t39, ptr %l22
  br label %bb11
bb11:
  %t40 = load i32, ptr %l22, !range !{i32 0, i32 114}
  %t42 = trunc i64 76 to i32
  %t43 = icmp eq i32 %t40, %t42
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb15
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t50 = add i64 %t48, 2
  %t53 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t47, i64 %t50)
  store i32 %t53, ptr %l30
  br label %bb14
bb14:
  %t54 = load i32, ptr %l30, !range !{i32 0, i32 114}
  %t56 = trunc i64 76 to i32
  %t57 = icmp eq i32 %t54, %t56
  %t59 = xor i1 %t57, true
  store i1 %t59, ptr %l26, !tbaa !21
  br label %bb15
bb15:
  %t61 = load i1, ptr %l26, !tbaa !21
  br i1 %t61, label %bb16, label %bb17
bb16:
  store i1 false, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/fmt:formatter", ptr %t63, i32 0, i32 1
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l36, !tbaa !27
  %t67 = load i64, ptr %l1, !tbaa !24
  %t69 = add i64 %t67, 1
  %t71 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr %"compiler/token:Token", ptr %t72, i64 %t69
  %t74 = load %"compiler/token:Token", ptr %t73
  %t75 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t78 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t74, i8 %t75)
  store i1 %t78, ptr %l41
  br label %bb19
bb19:
  %t79 = load i1, ptr %l41, !tbaa !21
  %t80 = xor i1 %t79, true
  br i1 %t80, label %bb20, label %bb21
bb20:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/fmt:formatter", ptr %t82, i32 0, i32 1
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  store { i64, ptr } %t85, ptr %l45, !tbaa !27
  %t86 = load i64, ptr %l1, !tbaa !24
  %t88 = add i64 %t86, 2
  %t90 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr %"compiler/token:Token", ptr %t91, i64 %t88
  %t93 = load %"compiler/token:Token", ptr %t92
  %t94 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t97 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t93, i8 %t94)
  store i1 %t97, ptr %l50
  br label %bb22
bb21:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb23
bb22:
  %t98 = load i1, ptr %l50, !tbaa !21
  %t99 = xor i1 %t98, true
  store i1 %t99, ptr %l43, !tbaa !21
  br label %bb23
bb23:
  %t101 = load i1, ptr %l43, !tbaa !21
  store i1 %t101, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2efinish(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l15 = alloca i64
  %l23 = alloca ptr
  %l26 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 16
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/fmt:formatter", ptr %t4, i32 0, i32 26
  %t7 = load i64, ptr %t6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t3, i64 %t7)
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/fmt:formatter", ptr %t10, i32 0, i32 17
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/fmt:formatter", ptr %t13, i32 0, i32 27
  %t16 = load i64, ptr %t15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t12, i64 %t16)
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/fmt:formatter", ptr %t19, i32 0, i32 12
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t21, i64 0)
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/fmt:formatter", ptr %t23, i32 0, i32 13
  store ptr %t25, ptr %l12, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/fmt:formatter", ptr %t26, i32 0, i32 34
  %t29 = load i1, ptr %t28, !tbaa !21
  br i1 %t29, label %bb4, label %bb5
bb4:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb5:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/fmt:formatter", ptr %t31, i32 0, i32 21
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t36 = load ptr, ptr %l12, !tbaa !29
  %t37 = load i64, ptr %l15, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t36, i64 %t37)
  br label %bb7
bb7:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/fmt:formatter", ptr %t38, i32 0, i32 14
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/fmt:formatter", ptr %t41, i32 0, i32 24
  %t44 = load i64, ptr %t43, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t40, i64 %t44)
  br label %bb8
bb8:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/fmt:formatter", ptr %t47, i32 0, i32 15
  store ptr %t49, ptr %l23, !tbaa !29
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/fmt:formatter", ptr %t50, i32 0, i32 19
  %t54 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %t52)
  store i64 %t54, ptr %l26
  br label %bb9
bb9:
  %t55 = load ptr, ptr %l23, !tbaa !29
  %t56 = load i64, ptr %l26, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  br label %bb10
bb10:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/fmt:formatter", ptr %t57, i32 0, i32 18
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/fmt:formatter", ptr %t60, i32 0, i32 25
  %t63 = load i1, ptr %t62, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t59, i1 %t63)
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/fmt:formatter", ptr %t66, i32 0, i32 29
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = icmp sge i64 %t69, 0
  br i1 %t71, label %bb12, label %bb13
bb12:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/fmt:formatter", ptr %t74, i32 0, i32 29
  %t77 = load i64, ptr %t76, !tbaa !24
  %t80 = getelementptr %"compiler/fmt:formatter", ptr %t73, i32 0, i32 31
  store i64 %t77, ptr %t80, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/fmt:formatter", ptr %t81, i32 0, i32 20
  store i1 false, ptr %t83, !tbaa !21
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/fmt:formatter", ptr %t84, i32 0, i32 30
  store i64 0, ptr %t86, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2egap(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i8
  %l7 = alloca i64
  %l8 = alloca i1
  %l16 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l36 = alloca i1
  %l37 = alloca { i64, ptr }
  %l48 = alloca i1
  %l49 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l67 = alloca i64
  %l74 = alloca i1
  %l75 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l4, !tbaa !27
  store i64 %a1, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp slt i64 %t8, %t9
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %bb47
bb3:
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t16, ptr %l16, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  store i8 %t22, ptr %l6, !tbaa !22
  %t24 = load i8, ptr %l6, !tbaa !22
  %t26 = icmp eq i8 %t24, 10
  br i1 %t26, label %bb5, label %bb6
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/fmt:formatter", ptr %t28, i32 0, i32 20
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb6:
  %t33 = load i8, ptr %l6, !tbaa !22
  %t35 = icmp eq i8 %t33, 35
  br i1 %t35, label %bb11, label %bb12
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2efinish(ptr %v0, ptr %t37)
  br label %bb9
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l24, !tbaa !29
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = getelementptr %"compiler/fmt:formatter", ptr %t40, i32 0, i32 30
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = add i64 %t42, 1
  %t46 = load ptr, ptr %l24, !tbaa !29
  %t47 = getelementptr %"compiler/fmt:formatter", ptr %t46, i32 0, i32 30
  store i64 %t44, ptr %t47, !tbaa !24
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = add i64 %t48, 1
  store i64 %t50, ptr %l5, !tbaa !24
  br label %bb45
bb11:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = add i64 %t52, 1
  store i64 %t54, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l7, !tbaa !24
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = icmp slt i64 %t56, %t57
  br i1 %t60, label %bb13, label %bb14
bb12:
  %t62 = load i64, ptr %l5, !tbaa !24
  %t64 = add i64 %t62, 1
  store i64 %t64, ptr %l5, !tbaa !24
  br label %bb44
bb13:
  %t66 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t66, ptr %l37, !tbaa !27
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i8, ptr %t70, i64 %t67
  %t72 = load i8, ptr %t71, !tbaa !32
  %t74 = icmp eq i8 %t72, 35
  store i1 %t74, ptr %l36, !tbaa !21
  br label %bb15
bb14:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb15
bb15:
  %t76 = load i1, ptr %l36, !tbaa !21
  store i1 %t76, ptr %l8, !tbaa !21
  %t77 = load i1, ptr %l8, !tbaa !21
  br i1 %t77, label %bb16, label %bb17
bb16:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l7, !tbaa !24
  br label %bb18
bb17:
  br label %bb33
bb18:
  %t83 = load i64, ptr %l7, !tbaa !24
  %t85 = add i64 %t83, 1
  %t86 = load i64, ptr %l2, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  br i1 %t89, label %bb19, label %bb20
bb19:
  %t91 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t91, ptr %l49, !tbaa !27
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i8, ptr %t95, i64 %t92
  %t97 = load i8, ptr %t96, !tbaa !32
  %t99 = icmp eq i8 %t97, 35
  br i1 %t99, label %bb21, label %bb22
bb20:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb24
bb21:
  %t101 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t101, ptr %l54, !tbaa !27
  %t102 = load i64, ptr %l7, !tbaa !24
  %t104 = add i64 %t102, 1
  %t106 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr i8, ptr %t107, i64 %t104
  %t109 = load i8, ptr %t108, !tbaa !32
  %t111 = icmp eq i8 %t109, 35
  store i1 %t111, ptr %l53, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t113 = load i1, ptr %l53, !tbaa !21
  %t114 = xor i1 %t113, true
  store i1 %t114, ptr %l48, !tbaa !21
  br label %bb24
bb24:
  %t116 = load i1, ptr %l48, !tbaa !21
  %t117 = xor i1 %t116, true
  br i1 %t117, label %bb25, label %bb26
bb25:
  br label %bb29
bb26:
  br label %bb27
bb27:
  %t119 = load i64, ptr %l7, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l7, !tbaa !24
  br label %bb28
bb28:
  br label %bb18
bb29:
  %t123 = load i64, ptr %l7, !tbaa !24
  %t125 = add i64 %t123, 1
  %t126 = load i64, ptr %l2, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  br i1 %t129, label %bb30, label %bb31
bb30:
  %t131 = load i64, ptr %l7, !tbaa !24
  %t133 = add i64 %t131, 2
  store i64 %t133, ptr %l67, !tbaa !24
  br label %bb32
bb31:
  %t135 = load i64, ptr %l2, !tbaa !24
  store i64 %t135, ptr %l67, !tbaa !24
  br label %bb32
bb32:
  %t137 = load i64, ptr %l67, !tbaa !24
  store i64 %t137, ptr %l7, !tbaa !24
  br label %bb42
bb33:
  %t138 = load i64, ptr %l7, !tbaa !24
  %t139 = load i64, ptr %l2, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  br i1 %t142, label %bb34, label %bb35
bb34:
  %t144 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t144, ptr %l75, !tbaa !27
  %t145 = load i64, ptr %l7, !tbaa !24
  %t147 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr i8, ptr %t148, i64 %t145
  %t150 = load i8, ptr %t149, !tbaa !32
  %t152 = icmp ne i8 %t150, 10
  store i1 %t152, ptr %l74, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l74, !tbaa !21
  br label %bb36
bb36:
  %t154 = load i1, ptr %l74, !tbaa !21
  %t155 = xor i1 %t154, true
  br i1 %t155, label %bb37, label %bb38
bb37:
  br label %bb41
bb38:
  br label %bb39
bb39:
  %t157 = load i64, ptr %l7, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l7, !tbaa !24
  br label %bb40
bb40:
  br label %bb33
bb41:
  br label %bb42
bb42:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load i64, ptr %l5, !tbaa !24
  %t163 = load i64, ptr %l7, !tbaa !24
  %t164 = load i1, ptr %l8, !tbaa !21
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ecomment(ptr %v0, ptr %t161, i64 %t162, i64 %t163, i1 %t164, i64 %a3)
  br label %bb43
bb43:
  %t171 = load i64, ptr %l7, !tbaa !24
  store i64 %t171, ptr %l5, !tbaa !24
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb46
bb46:
  br label %bb1
bb47:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eheldAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i1
  %l42 = alloca i64
  %l46 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 32
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i64, ptr %l10, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l4, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l17, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l17, !tbaa !24
  store i64 %t33, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l7, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/fmt:formatter", ptr %t53, i32 0, i32 32
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l38
  br label %bb12
bb12:
  %t60 = load i64, ptr %l1, !tbaa !24
  %t61 = load i64, ptr %l38, !tbaa !24
  %t63 = icmp sle i64 %t61, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load i64, ptr %l1, !tbaa !24
  store i64 %t65, ptr %l42, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/fmt:formatter", ptr %t66, i32 0, i32 33
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t68, i64 %t69)
  store i64 %t72, ptr %l46
  br label %bb15
bb14:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb16
bb15:
  %t73 = load i64, ptr %l42, !tbaa !24
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = icmp sle i64 %t73, %t74
  store i1 %t75, ptr %l41, !tbaa !21
  br label %bb16
bb16:
  %t77 = load i1, ptr %l41, !tbaa !21
  br i1 %t77, label %bb17, label %bb18
bb17:
  %t78 = load i64, ptr %l7, !tbaa !24
  store i64 %t78, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb8
bb21:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekeyword(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i8
  %l6 = alloca i32
  %l9 = alloca i1
  %l12 = alloca i1
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l25 = alloca i1
  %l28 = alloca i1
  %l31 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l2
  %t7 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t9 = trunc i64 1 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t14 = trunc i64 6 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l9, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb7
bb6:
  %t18 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t20 = trunc i64 7 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l12, !tbaa !21
  br label %bb7
bb7:
  %t23 = load i1, ptr %l12, !tbaa !21
  br i1 %t23, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/fmt:formatter", ptr %t25, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l17, !tbaa !27
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/fmt:formatter", ptr %t29, i32 0, i32 1
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  store { i64, ptr } %t32, ptr %l19, !tbaa !27
  %t33 = load i64, ptr %l1, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr %"compiler/token:Token", ptr %t36, i64 %t33
  %t38 = getelementptr %"compiler/token:Token", ptr %t37, i32 0, i32 2
  %t39 = load i32, ptr %t38, !tbaa !23
  %t41 = sext i32 %t39 to i64
  %t42 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t43 = load ptr, ptr %t42, !tbaa !27
  %t44 = getelementptr i8, ptr %t43, i64 %t41
  %t45 = load i8, ptr %t44, !tbaa !32
  store i8 %t45, ptr %l3, !tbaa !22
  %t47 = load i8, ptr %l3, !tbaa !22
  %t49 = icmp uge i8 %t47, 97
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load i8, ptr %l3, !tbaa !22
  %t53 = icmp ule i8 %t51, 122
  store i1 %t53, ptr %l25, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb13
bb13:
  %t55 = load i1, ptr %l25, !tbaa !21
  br i1 %t55, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb19
bb15:
  %t56 = load i8, ptr %l3, !tbaa !22
  %t58 = icmp uge i8 %t56, 65
  br i1 %t58, label %bb16, label %bb17
bb16:
  %t60 = load i8, ptr %l3, !tbaa !22
  %t62 = icmp ule i8 %t60, 90
  store i1 %t62, ptr %l31, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb18
bb18:
  %t64 = load i1, ptr %l31, !tbaa !21
  store i1 %t64, ptr %l28, !tbaa !21
  br label %bb19
bb19:
  %t65 = load i1, ptr %l28, !tbaa !21
  store i1 %t65, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/token:Token", ptr %t8, i64 %a1
  %t10 = getelementptr %"compiler/token:Token", ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 114}
  store i32 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2elevel(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i1
  %l18 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i64
  %l30 = alloca i64
  %l35 = alloca i1
  %l38 = alloca i1
  %l43 = alloca i64
  %l45 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i1
  %l55 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i64, ptr %l10, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/fmt:formatter", ptr %t9, i32 0, i32 9
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l13
  br label %bb2
bb2:
  %t14 = load i64, ptr %l13, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i64, ptr %l2, !tbaa !24
  %t19 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eclosing(ptr %v0, ptr %t15, i64 %t16)
  store i1 %t19, ptr %l16
  br label %bb3
bb3:
  %t20 = load i1, ptr %l16, !tbaa !21
  store i1 %t20, ptr %l4, !tbaa !21
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  %t21 = load i1, ptr %l4, !tbaa !21
  br i1 %t21, label %bb4, label %bb5
bb4:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  store i1 %t25, ptr %l18, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb6
bb6:
  %t27 = load i1, ptr %l18, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/fmt:formatter", ptr %t28, i32 0, i32 11
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = sub i64 %t31, 1
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t30, i64 %t33)
  store i64 %t36, ptr %l25
  br label %bb9
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2econt(ptr %v0, ptr %t37, i64 %t38)
  store i64 %t41, ptr %l28
  br label %bb10
bb9:
  %t42 = load i64, ptr %l25, !tbaa !24
  store i64 %t42, ptr %l6, !tbaa !24
  br label %bb12
bb10:
  %t43 = load i64, ptr %l28, !tbaa !24
  store i64 %t43, ptr %l5, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2echild(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l30
  br label %bb11
bb11:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l30, !tbaa !24
  %t50 = add i64 %t48, %t47
  store i64 %t50, ptr %l6, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t54 = icmp eq i64 %t52, 0
  br i1 %t54, label %bb13, label %bb14
bb13:
  %t56 = load i64, ptr %l3, !tbaa !24
  %t58 = icmp eq i64 %t56, 0
  br i1 %t58, label %bb15, label %bb16
bb14:
  store i1 false, ptr %l35, !tbaa !21
  br label %bb29
bb15:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb18
bb16:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/fmt:formatter", ptr %t60, i32 0, i32 9
  %t63 = load i64, ptr %l3, !tbaa !24
  %t65 = sub i64 %t63, 1
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t62, i64 %t65)
  store i64 %t68, ptr %l43
  br label %bb17
bb17:
  %t69 = load i64, ptr %l43, !tbaa !24
  %t70 = icmp eq i64 %t69, 0
  store i1 %t70, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t72 = load i1, ptr %l38, !tbaa !21
  br i1 %t72, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb28
bb20:
  %t73 = load i1, ptr %l4, !tbaa !21
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t75 = load i64, ptr %l3, !tbaa !24
  %t77 = icmp sgt i64 %t75, 1
  store i1 %t77, ptr %l47, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l47, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/fmt:formatter", ptr %t80, i32 0, i32 9
  %t83 = load i64, ptr %l3, !tbaa !24
  %t85 = sub i64 %t83, 2
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t82, i64 %t85)
  store i64 %t88, ptr %l55
  br label %bb26
bb25:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb27
bb26:
  %t89 = load i64, ptr %l55, !tbaa !24
  %t90 = icmp eq i64 %t89, 0
  store i1 %t90, ptr %l50, !tbaa !21
  br label %bb27
bb27:
  %t92 = load i1, ptr %l50, !tbaa !21
  store i1 %t92, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t93 = load i1, ptr %l45, !tbaa !21
  store i1 %t93, ptr %l35, !tbaa !21
  br label %bb29
bb29:
  %t94 = load i1, ptr %l35, !tbaa !21
  br i1 %t94, label %bb30, label %bb31
bb30:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l6, !tbaa !24
  %t99 = getelementptr %"compiler/fmt:formatter", ptr %t95, i32 0, i32 22
  store i64 %t96, ptr %t99, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = getelementptr %"compiler/fmt:formatter", ptr %t100, i32 0, i32 21
  store i64 %t101, ptr %t104, !tbaa !24
  %t105 = load i64, ptr %l6, !tbaa !24
  store i64 %t105, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2elevelAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2echild(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i64, ptr %l4, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  store i64 %t9, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load i64, ptr %l1, !tbaa !24
  %t16 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2econt(ptr %v0, ptr %t12, i64 %t13)
  store i64 %t16, ptr %l11
  br label %bb5
bb5:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = load i64, ptr %l11, !tbaa !24
  %t19 = add i64 %t17, %t18
  store i64 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2emarkEntries(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i32
  %l62 = alloca i1
  %l63 = alloca ptr
  %l68 = alloca i64
  %l69 = alloca i32
  %l72 = alloca i1
  %l74 = alloca { i64, ptr }
  %l78 = alloca i1
  %l80 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca i64
  %l89 = alloca i64
  %l92 = alloca i64
  %l113 = alloca i64
  %l116 = alloca i32
  %l119 = alloca i1
  %l122 = alloca i1
  %l129 = alloca i1
  %l132 = alloca i1
  %l135 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i1
  %l150 = alloca i1
  %l155 = alloca i1
  %l163 = alloca i1
  %l166 = alloca i64
  %l168 = alloca i64
  %l173 = alloca i64
  %l175 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l25
  br label %bb1
bb1:
  %t6 = load i64, ptr %l25, !tbaa !24
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
  store i64 0, ptr %l29, !tbaa !24
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
  store i64 %t31, ptr %l32, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l32, !tbaa !24
  store i64 %t33, ptr %l29, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l29, !tbaa !24
  store i64 %t34, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb100
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t45 = load i64, ptr %l3, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l6, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/fmt:formatter", ptr %t53, i32 0, i32 7
  %t56 = load i64, ptr %l6, !tbaa !24
  %t59 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l53
  br label %bb12
bb12:
  %t60 = load i64, ptr %l53, !tbaa !24
  store i64 %t60, ptr %l7, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l7, !tbaa !24
  %t65 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t61, i64 %t62)
  store i32 %t65, ptr %l56
  br label %bb13
bb13:
  %t66 = load i32, ptr %l56, !range !{i32 0, i32 114}
  %t68 = trunc i64 110 to i32
  %t69 = icmp eq i32 %t66, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb99
bb15:
  br label %bb16
bb16:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = icmp sgt i64 %t73, 0
  br i1 %t75, label %bb17, label %bb18
bb17:
  %t77 = load ptr, ptr %l0, !tbaa !29
  store ptr %t77, ptr %l63, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/fmt:formatter", ptr %t78, i32 0, i32 7
  %t81 = load i64, ptr %l6, !tbaa !24
  %t83 = sub i64 %t81, 1
  %t86 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t80, i64 %t83)
  store i64 %t86, ptr %l68
  br label %bb19
bb18:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb21
bb19:
  %t87 = load ptr, ptr %l63, !tbaa !29
  %t88 = load i64, ptr %l68, !tbaa !24
  %t89 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t87, i64 %t88)
  store i32 %t89, ptr %l69
  br label %bb20
bb20:
  %t90 = load i32, ptr %l69, !range !{i32 0, i32 114}
  %t92 = trunc i64 99 to i32
  %t93 = icmp eq i32 %t90, %t92
  store i1 %t93, ptr %l62, !tbaa !21
  br label %bb21
bb21:
  %t95 = load i1, ptr %l62, !tbaa !21
  br i1 %t95, label %bb22, label %bb23
bb22:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/fmt:formatter", ptr %t96, i32 0, i32 1
  %t99 = load { i64, ptr }, ptr %t98, !tbaa !27
  store { i64, ptr } %t99, ptr %l74, !tbaa !27
  %t100 = load i64, ptr %l7, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr %"compiler/token:Token", ptr %t103, i64 %t100
  %t105 = load %"compiler/token:Token", ptr %t104
  %t106 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t109 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t105, i8 %t106)
  store i1 %t109, ptr %l78
  br label %bb24
bb23:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb25
bb24:
  %t110 = load i1, ptr %l78, !tbaa !21
  %t111 = xor i1 %t110, true
  store i1 %t111, ptr %l72, !tbaa !21
  br label %bb25
bb25:
  %t113 = load i1, ptr %l72, !tbaa !21
  store i1 %t113, ptr %l8, !tbaa !21
  %t114 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t114, ptr %l80
  br label %bb26
bb26:
  %t115 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l80
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t115, ptr %l9
  store i1 false, ptr %l10, !tbaa !21
  store i64 0, ptr %l11, !tbaa !24
  %t116 = load i64, ptr %l6, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l12, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/fmt:formatter", ptr %t120, i32 0, i32 7
  %t124 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t122)
  store i64 %t124, ptr %l85
  br label %bb27
bb27:
  %t125 = load i64, ptr %l85, !tbaa !24
  store i64 %t125, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l12, !tbaa !24
  %t130 = icmp sgt i64 %t126, %t127
  br i1 %t130, label %bb28, label %bb29
bb28:
  %t132 = load i64, ptr %l14, !tbaa !24
  %t134 = icmp sgt i64 %t132, 0
  br i1 %t134, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb33
bb30:
  %t136 = load i64, ptr %l13, !tbaa !24
  %t137 = load i64, ptr %l12, !tbaa !24
  %t140 = sub i64 %t136, %t137
  %t141 = load i64, ptr %l14, !tbaa !24
  %t144 = add i64 %t140, %t141
  %t146 = sub i64 %t144, 1
  %t147 = load i64, ptr %l14, !tbaa !24
  %t150 = sdiv i64 %t146, %t147
  store i64 %t150, ptr %l92, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb32
bb32:
  %t152 = load i64, ptr %l92, !tbaa !24
  store i64 %t152, ptr %l89, !tbaa !24
  br label %bb33
bb33:
  %t153 = load i64, ptr %l89, !tbaa !24
  store i64 %t153, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb34
bb34:
  %t154 = load i64, ptr %l16, !tbaa !24
  %t155 = load i64, ptr %l15, !tbaa !24
  %t158 = icmp slt i64 %t154, %t155
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb35, label %bb36
bb35:
  br label %bb84
bb36:
  br label %bb37
bb37:
  %t162 = load i64, ptr %l12, !tbaa !24
  %t163 = load i64, ptr %l16, !tbaa !24
  %t164 = load i64, ptr %l14, !tbaa !24
  %t167 = mul i64 %t163, %t164
  %t170 = add i64 %t162, %t167
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t174 = getelementptr %"compiler/fmt:formatter", ptr %t172, i32 0, i32 7
  %t178 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t174, i64 %t170)
  store i64 %t178, ptr %l113
  br label %bb38
bb38:
  %t179 = load i64, ptr %l113, !tbaa !24
  store i64 %t179, ptr %l18, !tbaa !24
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l18, !tbaa !24
  %t184 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t180, i64 %t181)
  store i32 %t184, ptr %l116
  br label %bb39
bb39:
  %t185 = load i32, ptr %l116, !range !{i32 0, i32 114}
  store i32 %t185, ptr %l19
  %t186 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t188 = trunc i64 108 to i32
  %t189 = icmp eq i32 %t186, %t188
  br i1 %t189, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l119, !tbaa !21
  br label %bb42
bb41:
  %t191 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t193 = trunc i64 110 to i32
  %t194 = icmp eq i32 %t191, %t193
  store i1 %t194, ptr %l119, !tbaa !21
  br label %bb42
bb42:
  %t196 = load i1, ptr %l119, !tbaa !21
  br i1 %t196, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l122, !tbaa !21
  br label %bb45
bb44:
  %t197 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t199 = trunc i64 112 to i32
  %t200 = icmp eq i32 %t197, %t199
  store i1 %t200, ptr %l122, !tbaa !21
  br label %bb45
bb45:
  %t202 = load i1, ptr %l122, !tbaa !21
  br i1 %t202, label %bb46, label %bb47
bb46:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l11, !tbaa !24
  br label %bb48
bb47:
  br label %bb48
bb48:
  %t207 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t209 = trunc i64 109 to i32
  %t210 = icmp eq i32 %t207, %t209
  br i1 %t210, label %bb49, label %bb50
bb49:
  store i1 true, ptr %l129, !tbaa !21
  br label %bb51
bb50:
  %t212 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t214 = trunc i64 111 to i32
  %t215 = icmp eq i32 %t212, %t214
  store i1 %t215, ptr %l129, !tbaa !21
  br label %bb51
bb51:
  %t217 = load i1, ptr %l129, !tbaa !21
  br i1 %t217, label %bb52, label %bb53
bb52:
  store i1 true, ptr %l132, !tbaa !21
  br label %bb54
bb53:
  %t218 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t220 = trunc i64 113 to i32
  %t221 = icmp eq i32 %t218, %t220
  store i1 %t221, ptr %l132, !tbaa !21
  br label %bb54
bb54:
  %t223 = load i1, ptr %l132, !tbaa !21
  br i1 %t223, label %bb55, label %bb56
bb55:
  %t224 = load i64, ptr %l11, !tbaa !24
  %t226 = icmp eq i64 %t224, 0
  store i1 %t226, ptr %l135, !tbaa !21
  br label %bb57
bb56:
  store i1 false, ptr %l135, !tbaa !21
  br label %bb57
bb57:
  %t228 = load i1, ptr %l135, !tbaa !21
  br i1 %t228, label %bb58, label %bb59
bb58:
  br label %bb84
bb59:
  br label %bb60
bb60:
  %t229 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t231 = trunc i64 109 to i32
  %t232 = icmp eq i32 %t229, %t231
  br i1 %t232, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb63
bb62:
  %t234 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t236 = trunc i64 111 to i32
  %t237 = icmp eq i32 %t234, %t236
  store i1 %t237, ptr %l140, !tbaa !21
  br label %bb63
bb63:
  %t239 = load i1, ptr %l140, !tbaa !21
  br i1 %t239, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l143, !tbaa !21
  br label %bb66
bb65:
  %t240 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t242 = trunc i64 113 to i32
  %t243 = icmp eq i32 %t240, %t242
  store i1 %t243, ptr %l143, !tbaa !21
  br label %bb66
bb66:
  %t245 = load i1, ptr %l143, !tbaa !21
  br i1 %t245, label %bb67, label %bb68
bb67:
  %t246 = load i64, ptr %l11, !tbaa !24
  %t248 = sub i64 %t246, 1
  store i64 %t248, ptr %l11, !tbaa !24
  br label %bb69
bb68:
  br label %bb69
bb69:
  %t250 = load i64, ptr %l11, !tbaa !24
  %t252 = icmp eq i64 %t250, 0
  br i1 %t252, label %bb70, label %bb71
bb70:
  %t254 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t256 = trunc i64 75 to i32
  %t257 = icmp eq i32 %t254, %t256
  store i1 %t257, ptr %l150, !tbaa !21
  br label %bb72
bb71:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb72
bb72:
  %t259 = load i1, ptr %l150, !tbaa !21
  br i1 %t259, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb75
bb74:
  br label %bb75
bb75:
  %t260 = load i64, ptr %l11, !tbaa !24
  %t262 = icmp eq i64 %t260, 0
  br i1 %t262, label %bb76, label %bb77
bb76:
  %t264 = load i32, ptr %l19, !range !{i32 0, i32 114}
  %t266 = trunc i64 79 to i32
  %t267 = icmp eq i32 %t264, %t266
  store i1 %t267, ptr %l155, !tbaa !21
  br label %bb78
bb77:
  store i1 false, ptr %l155, !tbaa !21
  br label %bb78
bb78:
  %t269 = load i1, ptr %l155, !tbaa !21
  br i1 %t269, label %bb79, label %bb80
bb79:
  %t270 = load i64, ptr %l18, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s2, ptr %l9, i64 %t270)
  br label %bb81
bb80:
  br label %bb82
bb81:
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t273 = load i64, ptr %l16, !tbaa !24
  %t275 = add i64 %t273, 1
  store i64 %t275, ptr %l16, !tbaa !24
  br label %bb34
bb84:
  %t277 = load i1, ptr %l8, !tbaa !21
  br i1 %t277, label %bb85, label %bb86
bb85:
  store i1 true, ptr %l163, !tbaa !21
  br label %bb87
bb86:
  %t279 = load i1, ptr %l10, !tbaa !21
  store i1 %t279, ptr %l163, !tbaa !21
  br label %bb87
bb87:
  %t281 = load i1, ptr %l163, !tbaa !21
  br i1 %t281, label %bb88, label %bb89
bb88:
  store ptr %l9, ptr %l20, !tbaa !29
  store i64 0, ptr %l21, !tbaa !24
  br label %bb90
bb89:
  br label %bb98
bb90:
  %t283 = load i64, ptr %l21, !tbaa !24
  store i64 %t283, ptr %l166, !tbaa !24
  %t284 = load ptr, ptr %l20, !tbaa !29
  %t286 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s2, ptr %t284)
  store i64 %t286, ptr %l168
  br label %bb91
bb91:
  %t287 = load i64, ptr %l166, !tbaa !24
  %t288 = load i64, ptr %l168, !tbaa !24
  %t289 = icmp slt i64 %t287, %t288
  %t291 = xor i1 %t289, true
  br i1 %t291, label %bb92, label %bb93
bb92:
  br label %bb97
bb93:
  br label %bb94
bb94:
  %t293 = load ptr, ptr %l20, !tbaa !29
  %t294 = load i64, ptr %l21, !tbaa !24
  %t297 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s2, ptr %t293, i64 %t294)
  store i64 %t297, ptr %l173
  br label %bb95
bb95:
  %t298 = load i64, ptr %l173, !tbaa !24
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t301 = getelementptr %"compiler/fmt:formatter", ptr %t299, i32 0, i32 6
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l175, !tbaa !27
  %t305 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t306 = load ptr, ptr %t305, !tbaa !27
  %t307 = getelementptr i1, ptr %t306, i64 %t298
  store i1 true, ptr %t307, !tbaa !31
  br label %bb96
bb96:
  %t308 = load i64, ptr %l21, !tbaa !24
  %t310 = add i64 %t308, 1
  store i64 %t310, ptr %l21, !tbaa !24
  br label %bb90
bb97:
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s2)
  br label %bb99
bb99:
  %t312 = load i64, ptr %l5, !tbaa !24
  %t314 = add i64 %t312, 1
  store i64 %t314, ptr %l5, !tbaa !24
  br label %bb8
bb100:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eoperandEnd(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l5 = alloca i32
  %l7 = alloca { i64, ptr }
  %l12 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i32, ptr %l5, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l2
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/fmt:formatter", ptr %t7, i32 0, i32 4
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l7, !tbaa !27
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr i64, ptr %t14, i64 %t11
  %t16 = load i64, ptr %t15, !tbaa !34
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t23 = trunc i64 1 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb5, label %bb6
bb5:
  br label %bb15
bb6:
  %t26 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t28 = trunc i64 2 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb7, label %bb8
bb7:
  br label %bb15
bb8:
  %t31 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t33 = trunc i64 3 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  %t36 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t38 = trunc i64 4 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t43 = trunc i64 5 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb41
bb16:
  %t46 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t48 = trunc i64 6 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb17, label %bb18
bb17:
  br label %bb27
bb18:
  %t51 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t53 = trunc i64 7 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb19, label %bb20
bb19:
  br label %bb27
bb20:
  %t56 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t58 = trunc i64 109 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb21, label %bb22
bb21:
  br label %bb27
bb22:
  %t61 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t63 = trunc i64 111 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  %t66 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t68 = trunc i64 113 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb41
bb28:
  %t71 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t73 = trunc i64 92 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb29, label %bb30
bb29:
  br label %bb35
bb30:
  %t76 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t78 = trunc i64 93 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb31, label %bb32
bb31:
  br label %bb35
bb32:
  %t81 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t83 = trunc i64 96 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb33, label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb41
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb41
bb40:
  call void @__olang_check_failed(ptr @olang_loc_ea99cb1d1495554a_226506bfa77f0e7e)
  unreachable
bb41:
  %t86 = load i1, ptr %l12, !tbaa !21
  store i1 %t86, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eparams(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l10 = alloca i1
  %l13 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i1
  %l34 = alloca i1
  %l37 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i32
  %l55 = alloca i1
  %l58 = alloca i32
  %l64 = alloca i1
  %l67 = alloca i32
  %l71 = alloca { i64, ptr }
  %l77 = alloca i1
  %l80 = alloca i32
  %l88 = alloca i1
  %l91 = alloca i32
  %l97 = alloca i1
  %l100 = alloca i32
  %l103 = alloca i1
  %l105 = alloca { i64, ptr }
  %l109 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sub i64 %a1, 1
  store i64 %t3, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp sge i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t9, i64 %t10)
  store i32 %t13, ptr %l13
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t14 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t16 = trunc i64 8 to i32
  %t17 = icmp eq i32 %t14, %t16
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l10, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t26 = load i64, ptr %l2, !tbaa !24
  %t28 = icmp slt i64 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  store i64 0, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t31, i64 %t32)
  store i32 %t35, ptr %l24
  br label %bb14
bb14:
  %t36 = load i32, ptr %l24, !range !{i32 0, i32 114}
  store i32 %t36, ptr %l3
  %t37 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t39 = trunc i64 37 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb17
bb16:
  %t42 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t44 = trunc i64 34 to i32
  %t45 = icmp eq i32 %t42, %t44
  store i1 %t45, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t47 = load i1, ptr %l27, !tbaa !21
  br i1 %t47, label %bb18, label %bb19
bb18:
  store i64 1, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t49 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t51 = trunc i64 1 to i32
  %t52 = icmp eq i32 %t49, %t51
  %t54 = xor i1 %t52, true
  br i1 %t54, label %bb21, label %bb22
bb21:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekeyword(ptr %v0, ptr %t56, i64 %t57)
  store i1 %t60, ptr %l37
  br label %bb23
bb22:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb24
bb23:
  %t61 = load i1, ptr %l37, !tbaa !21
  %t62 = xor i1 %t61, true
  store i1 %t62, ptr %l34, !tbaa !21
  br label %bb24
bb24:
  %t64 = load i1, ptr %l34, !tbaa !21
  br i1 %t64, label %bb25, label %bb26
bb25:
  store i64 0, ptr %rv
  br label %ret
bb26:
  br label %bb27
bb27:
  %t66 = load i64, ptr %l2, !tbaa !24
  %t68 = sub i64 %t66, 1
  store i64 %t68, ptr %l4, !tbaa !24
  br label %bb28
bb28:
  %t70 = load i64, ptr %l4, !tbaa !24
  %t72 = icmp sge i64 %t70, 0
  br i1 %t72, label %bb29, label %bb30
bb29:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i64, ptr %l4, !tbaa !24
  %t78 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t74, i64 %t75)
  store i32 %t78, ptr %l47
  br label %bb31
bb30:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb32
bb31:
  %t79 = load i32, ptr %l47, !range !{i32 0, i32 114}
  %t81 = trunc i64 8 to i32
  %t82 = icmp eq i32 %t79, %t81
  store i1 %t82, ptr %l44, !tbaa !21
  br label %bb32
bb32:
  %t84 = load i1, ptr %l44, !tbaa !21
  %t85 = xor i1 %t84, true
  br i1 %t85, label %bb33, label %bb34
bb33:
  br label %bb37
bb34:
  br label %bb35
bb35:
  %t87 = load i64, ptr %l4, !tbaa !24
  %t89 = sub i64 %t87, 1
  store i64 %t89, ptr %l4, !tbaa !24
  br label %bb36
bb36:
  br label %bb28
bb37:
  %t91 = load i64, ptr %l4, !tbaa !24
  %t93 = icmp sge i64 %t91, 0
  br i1 %t93, label %bb38, label %bb39
bb38:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t96 = load i64, ptr %l4, !tbaa !24
  %t99 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t95, i64 %t96)
  store i32 %t99, ptr %l58
  br label %bb40
bb39:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb41
bb40:
  %t100 = load i32, ptr %l58, !range !{i32 0, i32 114}
  %t102 = trunc i64 37 to i32
  %t103 = icmp eq i32 %t100, %t102
  store i1 %t103, ptr %l55, !tbaa !21
  br label %bb41
bb41:
  %t105 = load i1, ptr %l55, !tbaa !21
  br i1 %t105, label %bb42, label %bb43
bb42:
  store i64 1, ptr %rv
  br label %ret
bb43:
  br label %bb44
bb44:
  %t107 = load i64, ptr %l4, !tbaa !24
  %t109 = icmp sge i64 %t107, 0
  br i1 %t109, label %bb45, label %bb46
bb45:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i64, ptr %l4, !tbaa !24
  %t115 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t111, i64 %t112)
  store i32 %t115, ptr %l67
  br label %bb47
bb46:
  store i1 false, ptr %l64, !tbaa !21
  br label %bb48
bb47:
  %t116 = load i32, ptr %l67, !range !{i32 0, i32 114}
  %t118 = trunc i64 109 to i32
  %t119 = icmp eq i32 %t116, %t118
  store i1 %t119, ptr %l64, !tbaa !21
  br label %bb48
bb48:
  %t121 = load i1, ptr %l64, !tbaa !21
  br i1 %t121, label %bb49, label %bb50
bb49:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/fmt:formatter", ptr %t122, i32 0, i32 23
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l71, !tbaa !27
  %t126 = load i64, ptr %l4, !tbaa !24
  %t128 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i64, ptr %t129, i64 %t126
  %t131 = load i64, ptr %t130, !tbaa !34
  %t133 = sub i64 %t131, 1
  store i64 %t133, ptr %l5, !tbaa !24
  br label %bb51
bb50:
  br label %bb68
bb51:
  %t135 = load i64, ptr %l5, !tbaa !24
  %t137 = icmp sge i64 %t135, 0
  br i1 %t137, label %bb52, label %bb53
bb52:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load i64, ptr %l5, !tbaa !24
  %t143 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t139, i64 %t140)
  store i32 %t143, ptr %l80
  br label %bb54
bb53:
  store i1 false, ptr %l77, !tbaa !21
  br label %bb55
bb54:
  %t144 = load i32, ptr %l80, !range !{i32 0, i32 114}
  %t146 = trunc i64 8 to i32
  %t147 = icmp eq i32 %t144, %t146
  store i1 %t147, ptr %l77, !tbaa !21
  br label %bb55
bb55:
  %t149 = load i1, ptr %l77, !tbaa !21
  %t150 = xor i1 %t149, true
  br i1 %t150, label %bb56, label %bb57
bb56:
  br label %bb60
bb57:
  br label %bb58
bb58:
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = sub i64 %t152, 1
  store i64 %t154, ptr %l5, !tbaa !24
  br label %bb59
bb59:
  br label %bb51
bb60:
  %t156 = load i64, ptr %l5, !tbaa !24
  %t158 = icmp sge i64 %t156, 0
  br i1 %t158, label %bb61, label %bb62
bb61:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l5, !tbaa !24
  %t164 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t160, i64 %t161)
  store i32 %t164, ptr %l91
  br label %bb63
bb62:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb64
bb63:
  %t165 = load i32, ptr %l91, !range !{i32 0, i32 114}
  %t167 = trunc i64 37 to i32
  %t168 = icmp eq i32 %t165, %t167
  store i1 %t168, ptr %l88, !tbaa !21
  br label %bb64
bb64:
  %t170 = load i1, ptr %l88, !tbaa !21
  br i1 %t170, label %bb65, label %bb66
bb65:
  store i64 1, ptr %rv
  br label %ret
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  %t172 = load i64, ptr %l4, !tbaa !24
  %t174 = icmp slt i64 %t172, 0
  br i1 %t174, label %bb69, label %bb70
bb69:
  store i1 true, ptr %l97, !tbaa !21
  br label %bb72
bb70:
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l4, !tbaa !24
  %t180 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t176, i64 %t177)
  store i32 %t180, ptr %l100
  br label %bb71
bb71:
  %t181 = load i32, ptr %l100, !range !{i32 0, i32 114}
  %t183 = trunc i64 112 to i32
  %t184 = icmp eq i32 %t181, %t183
  store i1 %t184, ptr %l97, !tbaa !21
  br label %bb72
bb72:
  %t186 = load i1, ptr %l97, !tbaa !21
  br i1 %t186, label %bb73, label %bb74
bb73:
  store i1 true, ptr %l103, !tbaa !21
  br label %bb76
bb74:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/fmt:formatter", ptr %t187, i32 0, i32 1
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l105, !tbaa !27
  %t191 = load i64, ptr %l2, !tbaa !24
  %t193 = getelementptr { i64, ptr }, ptr %l105, i32 0, i32 1
  %t194 = load ptr, ptr %t193, !tbaa !27
  %t195 = getelementptr %"compiler/token:Token", ptr %t194, i64 %t191
  %t196 = load %"compiler/token:Token", ptr %t195
  %t197 = load i8, ptr @G_2ecompiler_2ftoken_2eLineBreak, !tbaa !22
  %t200 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t196, i8 %t197)
  store i1 %t200, ptr %l109
  br label %bb75
bb75:
  %t201 = load i1, ptr %l109, !tbaa !21
  store i1 %t201, ptr %l103, !tbaa !21
  br label %bb76
bb76:
  %t202 = load i1, ptr %l103, !tbaa !21
  br i1 %t202, label %bb77, label %bb78
bb77:
  store i64 2, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eprefix(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca i64
  %l7 = alloca i32
  %l10 = alloca i1
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %l27 = alloca i1
  %l34 = alloca i64
  %l37 = alloca i1
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i32, ptr %l7, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l3
  %t7 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t9 = trunc i64 104 to i32
  %t10 = icmp eq i32 %t7, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t12 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t14 = trunc i64 105 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l10, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i1 true, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t19 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t21 = trunc i64 74 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/fmt:formatter", ptr %t24, i32 0, i32 3
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l17, !tbaa !27
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i1, ptr %t31, i64 %t28
  %t33 = load i1, ptr %t32, !tbaa !31
  store i1 %t33, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t35 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t37 = trunc i64 69 to i32
  %t38 = icmp eq i32 %t35, %t37
  %t40 = xor i1 %t38, true
  br i1 %t40, label %bb11, label %bb12
bb11:
  %t42 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t44 = trunc i64 92 to i32
  %t45 = icmp eq i32 %t42, %t44
  %t47 = xor i1 %t45, true
  store i1 %t47, ptr %l23, !tbaa !21
  br label %bb13
bb12:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l23, !tbaa !21
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t50 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t52 = trunc i64 93 to i32
  %t53 = icmp eq i32 %t50, %t52
  %t55 = xor i1 %t53, true
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb16
bb15:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb16
bb16:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb17, label %bb18
bb17:
  store i1 false, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t63 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebefore(ptr %v0, ptr %t59, i64 %a2)
  store i64 %t63, ptr %l34
  br label %bb20
bb20:
  %t64 = load i64, ptr %l34, !tbaa !24
  store i64 %t64, ptr %l4, !tbaa !24
  %t65 = load i64, ptr %l4, !tbaa !24
  %t67 = icmp slt i64 %t65, 0
  br i1 %t67, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l37, !tbaa !21
  br label %bb24
bb22:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l4, !tbaa !24
  %t73 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eoperandEnd(ptr %v0, ptr %t69, i64 %t70)
  store i1 %t73, ptr %l40
  br label %bb23
bb23:
  %t74 = load i1, ptr %l40, !tbaa !21
  %t75 = xor i1 %t74, true
  store i1 %t75, ptr %l37, !tbaa !21
  br label %bb24
bb24:
  %t77 = load i1, ptr %l37, !tbaa !21
  store i1 %t77, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2epush(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t3, i64 %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/fmt:formatter", ptr %t7, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t9, i64 %a2)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/fmt:formatter", ptr %t13, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t15, i64 %a3)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ereceiver(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l12 = alloca i64
  %l15 = alloca i64
  %l18 = alloca ptr
  %l22 = alloca i64
  %l23 = alloca i32
  %l37 = alloca i64
  %l40 = alloca i64
  %l47 = alloca i64
  %l50 = alloca i32
  %l53 = alloca i1
  %l56 = alloca i1
  %l61 = alloca ptr
  %l65 = alloca i64
  %l66 = alloca i32
  %l69 = alloca i64
  %l72 = alloca i64
  %l75 = alloca ptr
  %l79 = alloca i64
  %l80 = alloca i32
  %l97 = alloca i64
  %l100 = alloca i64
  %l103 = alloca ptr
  %l107 = alloca i64
  %l108 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t3 = add i64 %a2, 1
  store i64 %t3, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l4, !tbaa !24
  store i64 %t5, ptr %l12, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/fmt:formatter", ptr %t6, i32 0, i32 7
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l15
  br label %bb2
bb2:
  %t11 = load i64, ptr %l12, !tbaa !24
  %t12 = load i64, ptr %l15, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  br label %bb18
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l18, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/fmt:formatter", ptr %t18, i32 0, i32 7
  %t21 = load i64, ptr %l4, !tbaa !24
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t20, i64 %t21)
  store i64 %t24, ptr %l22
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l18, !tbaa !29
  %t26 = load i64, ptr %l22, !tbaa !24
  %t27 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t25, i64 %t26)
  store i32 %t27, ptr %l23
  br label %bb7
bb7:
  %t28 = load i32, ptr %l23, !range !{i32 0, i32 114}
  store i32 %t28, ptr %l5
  %t29 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t31 = trunc i64 108 to i32
  %t32 = icmp eq i32 %t29, %t31
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb10
bb9:
  br label %bb10
bb10:
  %t38 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t40 = trunc i64 109 to i32
  %t41 = icmp eq i32 %t38, %t40
  br i1 %t41, label %bb11, label %bb12
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = sub i64 %t43, 1
  store i64 %t45, ptr %l3, !tbaa !24
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = icmp eq i64 %t47, 0
  br i1 %t49, label %bb13, label %bb14
bb12:
  br label %bb16
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t51 = load i64, ptr %l4, !tbaa !24
  %t53 = add i64 %t51, 1
  store i64 %t53, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  br label %bb1
bb18:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t57 = add i64 %t55, 2
  store i64 %t57, ptr %l37, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/fmt:formatter", ptr %t58, i32 0, i32 7
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t60)
  store i64 %t62, ptr %l40
  br label %bb19
bb19:
  %t63 = load i64, ptr %l37, !tbaa !24
  %t64 = load i64, ptr %l40, !tbaa !24
  %t65 = icmp sge i64 %t63, %t64
  br i1 %t65, label %bb20, label %bb21
bb20:
  store i1 false, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/fmt:formatter", ptr %t68, i32 0, i32 7
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t70, i64 %t73)
  store i64 %t76, ptr %l47
  br label %bb23
bb23:
  %t77 = load i64, ptr %l47, !tbaa !24
  store i64 %t77, ptr %l6, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l6, !tbaa !24
  %t82 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t78, i64 %t79)
  store i32 %t82, ptr %l50
  br label %bb24
bb24:
  %t83 = load i32, ptr %l50, !range !{i32 0, i32 114}
  %t85 = trunc i64 1 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb28
bb26:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l6, !tbaa !24
  %t92 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekeyword(ptr %v0, ptr %t88, i64 %t89)
  store i1 %t92, ptr %l56
  br label %bb27
bb27:
  %t93 = load i1, ptr %l56, !tbaa !21
  store i1 %t93, ptr %l53, !tbaa !21
  br label %bb28
bb28:
  %t94 = load i1, ptr %l53, !tbaa !21
  %t95 = xor i1 %t94, true
  br i1 %t95, label %bb29, label %bb30
bb29:
  store i1 false, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = add i64 %t98, 2
  store i64 %t100, ptr %l7, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l61, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/fmt:formatter", ptr %t103, i32 0, i32 7
  %t106 = load i64, ptr %l7, !tbaa !24
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t105, i64 %t106)
  store i64 %t109, ptr %l65
  br label %bb32
bb32:
  %t110 = load ptr, ptr %l61, !tbaa !29
  %t111 = load i64, ptr %l65, !tbaa !24
  %t112 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t110, i64 %t111)
  store i32 %t112, ptr %l66
  br label %bb33
bb33:
  %t113 = load i32, ptr %l66, !range !{i32 0, i32 114}
  %t115 = trunc i64 97 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb34, label %bb35
bb34:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb36
bb35:
  br label %bb61
bb36:
  %t118 = load i64, ptr %l7, !tbaa !24
  store i64 %t118, ptr %l69, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/fmt:formatter", ptr %t119, i32 0, i32 7
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t121)
  store i64 %t123, ptr %l72
  br label %bb37
bb37:
  %t124 = load i64, ptr %l69, !tbaa !24
  %t125 = load i64, ptr %l72, !tbaa !24
  %t126 = icmp slt i64 %t124, %t125
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb38, label %bb39
bb38:
  br label %bb56
bb39:
  br label %bb40
bb40:
  %t130 = load ptr, ptr %l0, !tbaa !29
  store ptr %t130, ptr %l75, !tbaa !29
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/fmt:formatter", ptr %t131, i32 0, i32 7
  %t134 = load i64, ptr %l7, !tbaa !24
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l79
  br label %bb41
bb41:
  %t138 = load ptr, ptr %l75, !tbaa !29
  %t139 = load i64, ptr %l79, !tbaa !24
  %t140 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t138, i64 %t139)
  store i32 %t140, ptr %l80
  br label %bb42
bb42:
  %t141 = load i32, ptr %l80, !range !{i32 0, i32 114}
  store i32 %t141, ptr %l9
  %t142 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t144 = trunc i64 97 to i32
  %t145 = icmp eq i32 %t142, %t144
  br i1 %t145, label %bb43, label %bb44
bb43:
  %t147 = load i64, ptr %l8, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l8, !tbaa !24
  br label %bb45
bb44:
  br label %bb45
bb45:
  %t151 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t153 = trunc i64 99 to i32
  %t154 = icmp eq i32 %t151, %t153
  br i1 %t154, label %bb46, label %bb47
bb46:
  %t156 = load i64, ptr %l8, !tbaa !24
  %t158 = sub i64 %t156, 1
  store i64 %t158, ptr %l8, !tbaa !24
  br label %bb48
bb47:
  br label %bb48
bb48:
  %t160 = load i32, ptr %l9, !range !{i32 0, i32 114}
  %t162 = trunc i64 107 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb49, label %bb50
bb49:
  %t165 = load i64, ptr %l8, !tbaa !24
  %t167 = sub i64 %t165, 2
  store i64 %t167, ptr %l8, !tbaa !24
  br label %bb51
bb50:
  br label %bb51
bb51:
  %t169 = load i64, ptr %l7, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l7, !tbaa !24
  %t173 = load i64, ptr %l8, !tbaa !24
  %t175 = icmp sle i64 %t173, 0
  br i1 %t175, label %bb52, label %bb53
bb52:
  br label %bb56
bb53:
  br label %bb54
bb54:
  br label %bb55
bb55:
  br label %bb36
bb56:
  %t177 = load i64, ptr %l7, !tbaa !24
  store i64 %t177, ptr %l97, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/fmt:formatter", ptr %t178, i32 0, i32 7
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t180)
  store i64 %t182, ptr %l100
  br label %bb57
bb57:
  %t183 = load i64, ptr %l97, !tbaa !24
  %t184 = load i64, ptr %l100, !tbaa !24
  %t185 = icmp sge i64 %t183, %t184
  br i1 %t185, label %bb58, label %bb59
bb58:
  store i1 false, ptr %rv
  br label %ret
bb59:
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l103, !tbaa !29
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/fmt:formatter", ptr %t189, i32 0, i32 7
  %t192 = load i64, ptr %l7, !tbaa !24
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t191, i64 %t192)
  store i64 %t195, ptr %l107
  br label %bb62
bb62:
  %t196 = load ptr, ptr %l103, !tbaa !29
  %t197 = load i64, ptr %l107, !tbaa !24
  %t198 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t196, i64 %t197)
  store i32 %t198, ptr %l108
  br label %bb63
bb63:
  %t199 = load i32, ptr %l108, !range !{i32 0, i32 114}
  %t201 = trunc i64 108 to i32
  %t202 = icmp eq i32 %t199, %t201
  store i1 %t202, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2erun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
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
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i1
  %l40 = alloca i64
  %l43 = alloca i64
  %l62 = alloca { i64, ptr }
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l81 = alloca i64
  %l83 = alloca i64
  %l88 = alloca i64
  %l91 = alloca i32
  %l98 = alloca i1
  %l100 = alloca i64
  %l103 = alloca { i64, ptr }
  %l104 = alloca i64
  %l105 = alloca i64
  %l107 = alloca i64
  %l108 = alloca i32
  %l111 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l114 = alloca i64
  %l116 = alloca i64
  %l121 = alloca i64
  %l124 = alloca i32
  %l127 = alloca i1
  %l130 = alloca i1
  %l137 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i1
  %l145 = alloca i64
  %l147 = alloca i32
  %l149 = alloca i32
  %l150 = alloca i32
  %l157 = alloca { i64, ptr }
  %l158 = alloca i64
  %l160 = alloca i64
  %l162 = alloca i1
  %l163 = alloca i32
  %l165 = alloca i32
  %l166 = alloca i32
  %l174 = alloca i64
  %l177 = alloca i64
  %l183 = alloca i64
  %l186 = alloca { i64, ptr }
  %l190 = alloca i64
  %l196 = alloca i64
  %l200 = alloca i64
  %l203 = alloca i64
  %l207 = alloca i64
  %l210 = alloca i64
  %l231 = alloca i64
  %l234 = alloca i1
  %l238 = alloca i64
  %l244 = alloca i64
  %l258 = alloca i1
  %l269 = alloca i64
  %l273 = alloca ptr
  %l275 = alloca { i64, ptr }
  %l276 = alloca i64
  %l277 = alloca i64
  %l278 = alloca i64
  %l283 = alloca i64
  %l286 = alloca i64
  %l288 = alloca i1
  %l290 = alloca { i64, ptr }
  %l294 = alloca i64
  %l303 = alloca i64
  %l304 = alloca ptr
  %l308 = alloca i64
  %l309 = alloca ptr
  %l313 = alloca i64
  %l324 = alloca i64
  %l332 = alloca { i64, ptr }
  %l340 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i1 false, ptr %l1, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = icmp sgt i64 %t8, %t9
  br i1 %t12, label %bb1, label %bb2
bb1:
  %t14 = load i64, ptr %l4, !tbaa !24
  %t16 = icmp sgt i64 %t14, 0
  br i1 %t16, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb6
bb3:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = sub i64 %t18, %t19
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = add i64 %t22, %t23
  %t28 = sub i64 %t26, 1
  %t29 = load i64, ptr %l4, !tbaa !24
  %t32 = sdiv i64 %t28, %t29
  store i64 %t32, ptr %l43, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb5
bb5:
  %t34 = load i64, ptr %l43, !tbaa !24
  store i64 %t34, ptr %l40, !tbaa !24
  br label %bb6
bb6:
  %t35 = load i64, ptr %l40, !tbaa !24
  store i64 %t35, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l6, !tbaa !24
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb8, label %bb9
bb8:
  br label %bb20
bb9:
  br label %bb10
bb10:
  %t44 = load i64, ptr %l2, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 %t45, %t46
  %t52 = add i64 %t44, %t49
  store i64 %t52, ptr %l7, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/fmt:formatter", ptr %t54, i32 0, i32 1
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l62, !tbaa !27
  %t58 = load i64, ptr %l7, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr %"compiler/token:Token", ptr %t61, i64 %t58
  %t63 = getelementptr %"compiler/token:Token", ptr %t62, i32 0, i32 0
  %t64 = load i32, ptr %t63, !range !{i32 0, i32 114}
  store i32 %t64, ptr %l8
  %t66 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t68 = trunc i64 8 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb18
bb12:
  %t71 = load i32, ptr %l8, !range !{i32 0, i32 114}
  %t73 = trunc i64 0 to i32
  %t74 = icmp eq i32 %t71, %t73
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb13, label %bb14
bb13:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/fmt:formatter", ptr %t78, i32 0, i32 7
  %t81 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t80, i64 %t81)
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/fmt:formatter", ptr %t84, i32 0, i32 8
  %t87 = load i1, ptr %l1, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t86, i1 %t87)
  br label %bb16
bb16:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb17
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t90 = load i64, ptr %l6, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l6, !tbaa !24
  br label %bb7
bb20:
  %t94 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t94, ptr %l78
  br label %bb21
bb21:
  %t95 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l9
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/fmt:formatter", ptr %t96, i32 0, i32 7
  store ptr %t98, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb22
bb22:
  %t100 = load i64, ptr %l11, !tbaa !24
  store i64 %t100, ptr %l81, !tbaa !24
  %t101 = load ptr, ptr %l10, !tbaa !29
  %t103 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t101)
  store i64 %t103, ptr %l83
  br label %bb23
bb23:
  %t104 = load i64, ptr %l81, !tbaa !24
  %t105 = load i64, ptr %l83, !tbaa !24
  %t106 = icmp slt i64 %t104, %t105
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb24, label %bb25
bb24:
  br label %bb45
bb25:
  br label %bb26
bb26:
  %t110 = load ptr, ptr %l10, !tbaa !29
  %t111 = load i64, ptr %l11, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l88
  br label %bb27
bb27:
  %t115 = load i64, ptr %l88, !tbaa !24
  store i64 %t115, ptr %l12, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l12, !tbaa !24
  %t120 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t116, i64 %t117)
  store i32 %t120, ptr %l91
  br label %bb28
bb28:
  %t121 = load i32, ptr %l91, !range !{i32 0, i32 114}
  store i32 %t121, ptr %l13
  %t122 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t124 = trunc i64 108 to i32
  %t125 = icmp eq i32 %t122, %t124
  br i1 %t125, label %bb29, label %bb30
bb29:
  %t127 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l9, i64 %t127)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t130 = load i32, ptr %l13, !range !{i32 0, i32 114}
  %t132 = trunc i64 109 to i32
  %t133 = icmp eq i32 %t130, %t132
  br i1 %t133, label %bb33, label %bb34
bb33:
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l9)
  store i64 %t136, ptr %l100
  br label %bb35
bb34:
  store i1 false, ptr %l98, !tbaa !21
  br label %bb36
bb35:
  %t137 = load i64, ptr %l100, !tbaa !24
  %t138 = icmp sgt i64 %t137, 0
  store i1 %t138, ptr %l98, !tbaa !21
  br label %bb36
bb36:
  %t140 = load i1, ptr %l98, !tbaa !21
  br i1 %t140, label %bb37, label %bb38
bb37:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/fmt:formatter", ptr %t141, i32 0, i32 23
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l103, !tbaa !27
  %t145 = load i64, ptr %l12, !tbaa !24
  store i64 %t145, ptr %l104, !tbaa !24
  %t147 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %s0, ptr %l9)
  %t148 = extractvalue { i32, i64 } %t147, 1
  %t149 = extractvalue { i32, i64 } %t147, 0
  store i32 %t149, ptr %l108
  %t150 = icmp ne i32 %t149, 0
  br i1 %t150, label %bb40, label %ok.151, !prof !99
ok.151:
  store i64 %t148, ptr %l107
  br label %bb39
bb38:
  br label %bb43
bb39:
  %t152 = load i64, ptr %l107, !tbaa !24
  store i64 %t152, ptr %l105, !tbaa !24
  br label %bb42
bb40:
  br label %bb41
bb41:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb42
bb42:
  %t153 = load i64, ptr %l105, !tbaa !24
  %t154 = load i64, ptr %l104, !tbaa !24
  %t155 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !27
  %t157 = getelementptr i64, ptr %t156, i64 %t154
  store i64 %t153, ptr %t157, !tbaa !34
  br label %bb43
bb43:
  br label %bb44
bb44:
  %t158 = load i64, ptr %l11, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l11, !tbaa !24
  br label %bb22
bb45:
  %t162 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %l111
  br label %bb46
bb46:
  %t163 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l111
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t163, ptr %l14
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/fmt:formatter", ptr %t164, i32 0, i32 7
  store ptr %t166, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb47
bb47:
  %t168 = load i64, ptr %l16, !tbaa !24
  store i64 %t168, ptr %l114, !tbaa !24
  %t169 = load ptr, ptr %l15, !tbaa !29
  %t171 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t169)
  store i64 %t171, ptr %l116
  br label %bb48
bb48:
  %t172 = load i64, ptr %l114, !tbaa !24
  %t173 = load i64, ptr %l116, !tbaa !24
  %t174 = icmp slt i64 %t172, %t173
  %t176 = xor i1 %t174, true
  br i1 %t176, label %bb49, label %bb50
bb49:
  br label %bb98
bb50:
  br label %bb51
bb51:
  %t178 = load ptr, ptr %l15, !tbaa !29
  %t179 = load i64, ptr %l16, !tbaa !24
  %t182 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t178, i64 %t179)
  store i64 %t182, ptr %l121
  br label %bb52
bb52:
  %t183 = load i64, ptr %l121, !tbaa !24
  store i64 %t183, ptr %l17, !tbaa !24
  %t184 = load ptr, ptr %l0, !tbaa !29
  %t185 = load i64, ptr %l17, !tbaa !24
  %t188 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t184, i64 %t185)
  store i32 %t188, ptr %l124
  br label %bb53
bb53:
  %t189 = load i32, ptr %l124, !range !{i32 0, i32 114}
  store i32 %t189, ptr %l18
  %t190 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t192 = trunc i64 108 to i32
  %t193 = icmp eq i32 %t190, %t192
  br i1 %t193, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l127, !tbaa !21
  br label %bb56
bb55:
  %t195 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t197 = trunc i64 110 to i32
  %t198 = icmp eq i32 %t195, %t197
  store i1 %t198, ptr %l127, !tbaa !21
  br label %bb56
bb56:
  %t200 = load i1, ptr %l127, !tbaa !21
  br i1 %t200, label %bb57, label %bb58
bb57:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb59
bb58:
  %t201 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t203 = trunc i64 112 to i32
  %t204 = icmp eq i32 %t201, %t203
  store i1 %t204, ptr %l130, !tbaa !21
  br label %bb59
bb59:
  %t206 = load i1, ptr %l130, !tbaa !21
  br i1 %t206, label %bb60, label %bb61
bb60:
  %t207 = load i32, ptr %l18, !range !{i32 0, i32 114}
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %s0, ptr %l14, i32 %t207)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t210 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t212 = trunc i64 109 to i32
  %t213 = icmp eq i32 %t210, %t212
  br i1 %t213, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb66
bb65:
  %t215 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t217 = trunc i64 111 to i32
  %t218 = icmp eq i32 %t215, %t217
  store i1 %t218, ptr %l137, !tbaa !21
  br label %bb66
bb66:
  %t220 = load i1, ptr %l137, !tbaa !21
  br i1 %t220, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l140, !tbaa !21
  br label %bb69
bb68:
  %t221 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t223 = trunc i64 113 to i32
  %t224 = icmp eq i32 %t221, %t223
  store i1 %t224, ptr %l140, !tbaa !21
  br label %bb69
bb69:
  %t226 = load i1, ptr %l140, !tbaa !21
  br i1 %t226, label %bb70, label %bb71
bb70:
  %t228 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eLen_3ccompiler_2ftoken_3aTok_3e(ptr %s0, ptr %l14)
  store i64 %t228, ptr %l145
  br label %bb72
bb71:
  store i1 false, ptr %l143, !tbaa !21
  br label %bb73
bb72:
  %t229 = load i64, ptr %l145, !tbaa !24
  %t230 = icmp sgt i64 %t229, 0
  store i1 %t230, ptr %l143, !tbaa !21
  br label %bb73
bb73:
  %t232 = load i1, ptr %l143, !tbaa !21
  br i1 %t232, label %bb74, label %bb75
bb74:
  %t234 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePop_3ccompiler_2ftoken_3aTok_3e(ptr %s0, ptr %l14)
  %t235 = extractvalue { i32, i32 } %t234, 1
  %t236 = extractvalue { i32, i32 } %t234, 0
  store i32 %t236, ptr %l150
  %t237 = icmp ne i32 %t236, 0
  br i1 %t237, label %bb77, label %ok.238, !prof !99
ok.238:
  store i32 %t235, ptr %l149
  br label %bb76
bb75:
  br label %bb85
bb76:
  %t239 = load i32, ptr %l149, !range !{i32 0, i32 114}
  store i32 %t239, ptr %l147
  br label %bb84
bb77:
  %t240 = load i32, ptr %l150, !tbaa !23
  %t241 = icmp eq i32 %t240, 65536
  br i1 %t241, label %bb78, label %bb79
bb78:
  call void @__olang_bang_failed_plain(ptr @olang_loc_35c4bcbe8a179434_4b4275954f9faef0)
  unreachable
bb79:
  %t243 = load i32, ptr %l150, !tbaa !23
  %t244 = icmp eq i32 %t243, 65537
  br i1 %t244, label %bb80, label %bb81
bb80:
  call void @__olang_bang_failed_plain(ptr @olang_loc_60c6fb5a9e323c49_a95dbf77cbddce25)
  unreachable
bb81:
  %t246 = load i32, ptr %l150, !tbaa !23
  %t247 = icmp eq i32 %t246, 65538
  br i1 %t247, label %bb82, label %bb83
bb82:
  call void @__olang_bang_failed_plain(ptr @olang_loc_951b69446ffbaf49_31d81fa88f191745)
  unreachable
bb83:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e1e0026cb6156c8f_cc49873f28a42c4b)
  unreachable
bb84:
  br label %bb85
bb85:
  %t249 = load i32, ptr %l18, !range !{i32 0, i32 114}
  %t251 = trunc i64 79 to i32
  %t252 = icmp eq i32 %t249, %t251
  br i1 %t252, label %bb86, label %bb87
bb86:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/fmt:formatter", ptr %t254, i32 0, i32 5
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l157, !tbaa !27
  %t258 = load i64, ptr %l17, !tbaa !24
  store i64 %t258, ptr %l158, !tbaa !24
  %t260 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eLen_3ccompiler_2ftoken_3aTok_3e(ptr %s0, ptr %l14)
  store i64 %t260, ptr %l160
  br label %bb88
bb87:
  br label %bb96
bb88:
  %t261 = load i64, ptr %l160, !tbaa !24
  %t262 = icmp eq i64 %t261, 0
  br i1 %t262, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l162, !tbaa !21
  br label %bb95
bb90:
  %t265 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eLast_3ccompiler_2ftoken_3aTok_3e(ptr %s0, ptr %l14)
  %t266 = extractvalue { i32, i32 } %t265, 1
  %t267 = extractvalue { i32, i32 } %t265, 0
  store i32 %t267, ptr %l166
  %t268 = icmp ne i32 %t267, 0
  br i1 %t268, label %bb92, label %ok.269, !prof !99
ok.269:
  store i32 %t266, ptr %l165
  br label %bb91
bb91:
  %t270 = load i32, ptr %l165, !range !{i32 0, i32 114}
  store i32 %t270, ptr %l163
  br label %bb94
bb92:
  br label %bb93
bb93:
  store i32 112, ptr %l163
  br label %bb94
bb94:
  %t272 = load i32, ptr %l163, !range !{i32 0, i32 114}
  %t274 = trunc i64 110 to i32
  %t275 = icmp eq i32 %t272, %t274
  %t277 = xor i1 %t275, true
  store i1 %t277, ptr %l162, !tbaa !21
  br label %bb95
bb95:
  %t279 = load i1, ptr %l162, !tbaa !21
  %t280 = load i64, ptr %l158, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr i1, ptr %t282, i64 %t280
  store i1 %t279, ptr %t283, !tbaa !31
  br label %bb96
bb96:
  br label %bb97
bb97:
  %t284 = load i64, ptr %l16, !tbaa !24
  %t286 = add i64 %t284, 1
  store i64 %t286, ptr %l16, !tbaa !24
  br label %bb47
bb98:
  %t288 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2emarkEntries(ptr %v0, ptr %t288)
  br label %bb99
bb99:
  store i64 0, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb100
bb100:
  %t290 = load i64, ptr %l20, !tbaa !24
  store i64 %t290, ptr %l174, !tbaa !24
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/fmt:formatter", ptr %t291, i32 0, i32 7
  %t295 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t293)
  store i64 %t295, ptr %l177
  br label %bb101
bb101:
  %t296 = load i64, ptr %l174, !tbaa !24
  %t297 = load i64, ptr %l177, !tbaa !24
  %t298 = icmp slt i64 %t296, %t297
  %t300 = xor i1 %t298, true
  br i1 %t300, label %bb102, label %bb103
bb102:
  br label %bb182
bb103:
  br label %bb104
bb104:
  %t302 = load ptr, ptr %l0, !tbaa !29
  %t304 = getelementptr %"compiler/fmt:formatter", ptr %t302, i32 0, i32 7
  %t305 = load i64, ptr %l20, !tbaa !24
  %t308 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t304, i64 %t305)
  store i64 %t308, ptr %l183
  br label %bb105
bb105:
  %t309 = load i64, ptr %l183, !tbaa !24
  store i64 %t309, ptr %l21, !tbaa !24
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/fmt:formatter", ptr %t311, i32 0, i32 1
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  store { i64, ptr } %t314, ptr %l186, !tbaa !27
  %t315 = load i64, ptr %l21, !tbaa !24
  %t317 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr %"compiler/token:Token", ptr %t318, i64 %t315
  %t320 = getelementptr %"compiler/token:Token", ptr %t319, i32 0, i32 2
  %t321 = load i32, ptr %t320, !tbaa !23
  %t323 = sext i32 %t321 to i64
  %t326 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eheldAt(ptr %v0, ptr %t310, i64 %t323)
  store i64 %t326, ptr %l190
  br label %bb106
bb106:
  %t327 = load i64, ptr %l190, !tbaa !24
  store i64 %t327, ptr %l22, !tbaa !24
  %t328 = load i64, ptr %l22, !tbaa !24
  %t330 = icmp sge i64 %t328, 0
  br i1 %t330, label %bb107, label %bb108
bb107:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/fmt:formatter", ptr %t332, i32 0, i32 32
  %t335 = load i64, ptr %l22, !tbaa !24
  %t338 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t334, i64 %t335)
  store i64 %t338, ptr %l196
  br label %bb109
bb108:
  br label %bb178
bb109:
  %t339 = load i64, ptr %l196, !tbaa !24
  store i64 %t339, ptr %l23, !tbaa !24
  %t340 = load ptr, ptr %l0, !tbaa !29
  %t342 = getelementptr %"compiler/fmt:formatter", ptr %t340, i32 0, i32 33
  %t343 = load i64, ptr %l22, !tbaa !24
  %t346 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t342, i64 %t343)
  store i64 %t346, ptr %l200
  br label %bb110
bb110:
  %t347 = load i64, ptr %l200, !tbaa !24
  store i64 %t347, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t350 = getelementptr %"compiler/fmt:formatter", ptr %t348, i32 0, i32 32
  %t352 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t350)
  store i64 %t352, ptr %l203
  br label %bb111
bb111:
  %t353 = load i64, ptr %l203, !tbaa !24
  store i64 %t353, ptr %l26, !tbaa !24
  store i64 1, ptr %l27, !tbaa !24
  %t354 = load i64, ptr %l26, !tbaa !24
  %t355 = load i64, ptr %l25, !tbaa !24
  %t358 = icmp sgt i64 %t354, %t355
  br i1 %t358, label %bb112, label %bb113
bb112:
  %t360 = load i64, ptr %l27, !tbaa !24
  %t362 = icmp sgt i64 %t360, 0
  br i1 %t362, label %bb114, label %bb115
bb113:
  store i64 0, ptr %l207, !tbaa !24
  br label %bb117
bb114:
  %t364 = load i64, ptr %l26, !tbaa !24
  %t365 = load i64, ptr %l25, !tbaa !24
  %t368 = sub i64 %t364, %t365
  %t369 = load i64, ptr %l27, !tbaa !24
  %t372 = add i64 %t368, %t369
  %t374 = sub i64 %t372, 1
  %t375 = load i64, ptr %l27, !tbaa !24
  %t378 = sdiv i64 %t374, %t375
  store i64 %t378, ptr %l210, !tbaa !24
  br label %bb116
bb115:
  store i64 0, ptr %l210, !tbaa !24
  br label %bb116
bb116:
  %t380 = load i64, ptr %l210, !tbaa !24
  store i64 %t380, ptr %l207, !tbaa !24
  br label %bb117
bb117:
  %t381 = load i64, ptr %l207, !tbaa !24
  store i64 %t381, ptr %l28, !tbaa !24
  store i64 0, ptr %l29, !tbaa !24
  br label %bb118
bb118:
  %t382 = load i64, ptr %l29, !tbaa !24
  %t383 = load i64, ptr %l28, !tbaa !24
  %t386 = icmp slt i64 %t382, %t383
  %t388 = xor i1 %t386, true
  br i1 %t388, label %bb119, label %bb120
bb119:
  br label %bb132
bb120:
  br label %bb121
bb121:
  %t390 = load i64, ptr %l25, !tbaa !24
  %t391 = load i64, ptr %l29, !tbaa !24
  %t392 = load i64, ptr %l27, !tbaa !24
  %t395 = mul i64 %t391, %t392
  %t398 = add i64 %t390, %t395
  store i64 %t398, ptr %l30, !tbaa !24
  %t400 = load ptr, ptr %l0, !tbaa !29
  %t402 = getelementptr %"compiler/fmt:formatter", ptr %t400, i32 0, i32 32
  %t403 = load i64, ptr %l30, !tbaa !24
  %t406 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t402, i64 %t403)
  store i64 %t406, ptr %l231
  br label %bb122
bb122:
  %t407 = load i64, ptr %l24, !tbaa !24
  %t408 = load i64, ptr %l231, !tbaa !24
  %t410 = icmp sle i64 %t408, %t407
  br i1 %t410, label %bb123, label %bb124
bb123:
  %t412 = load ptr, ptr %l0, !tbaa !29
  %t414 = getelementptr %"compiler/fmt:formatter", ptr %t412, i32 0, i32 33
  %t415 = load i64, ptr %l30, !tbaa !24
  %t418 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t414, i64 %t415)
  store i64 %t418, ptr %l238
  br label %bb125
bb124:
  store i1 false, ptr %l234, !tbaa !21
  br label %bb126
bb125:
  %t419 = load i64, ptr %l24, !tbaa !24
  %t420 = load i64, ptr %l238, !tbaa !24
  %t422 = icmp sgt i64 %t420, %t419
  store i1 %t422, ptr %l234, !tbaa !21
  br label %bb126
bb126:
  %t424 = load i1, ptr %l234, !tbaa !21
  br i1 %t424, label %bb127, label %bb128
bb127:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/fmt:formatter", ptr %t425, i32 0, i32 33
  %t428 = load i64, ptr %l30, !tbaa !24
  %t431 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t427, i64 %t428)
  store i64 %t431, ptr %l244
  br label %bb129
bb128:
  br label %bb130
bb129:
  %t432 = load i64, ptr %l244, !tbaa !24
  store i64 %t432, ptr %l24, !tbaa !24
  br label %bb130
bb130:
  br label %bb131
bb131:
  %t433 = load i64, ptr %l29, !tbaa !24
  %t435 = add i64 %t433, 1
  store i64 %t435, ptr %l29, !tbaa !24
  br label %bb118
bb132:
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i64, ptr %l19, !tbaa !24
  %t439 = load i64, ptr %l23, !tbaa !24
  %t440 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2egap(ptr %v0, ptr %t437, i64 %t438, i64 %t439, i64 %t440)
  br label %bb133
bb133:
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/fmt:formatter", ptr %t445, i32 0, i32 20
  %t448 = load i1, ptr %t447, !tbaa !21
  br i1 %t448, label %bb134, label %bb135
bb134:
  %t450 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2efinish(ptr %v0, ptr %t450)
  br label %bb136
bb135:
  br label %bb137
bb136:
  br label %bb137
bb137:
  %t452 = load i64, ptr %l23, !tbaa !24
  store i64 %t452, ptr %l31, !tbaa !24
  br label %bb138
bb138:
  %t454 = load i64, ptr %l31, !tbaa !24
  %t455 = load i64, ptr %l24, !tbaa !24
  %t458 = icmp sle i64 %t454, %t455
  br i1 %t458, label %bb139, label %bb140
bb139:
  %t460 = load i64, ptr %l31, !tbaa !24
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t463 = getelementptr %"compiler/fmt:formatter", ptr %t461, i32 0, i32 0
  %t464 = load { i64, ptr }, ptr %t463, !tbaa !27
  %t466 = extractvalue { i64, ptr } %t464, 0
  %t468 = add i64 %t466, 1
  %t471 = icmp slt i64 %t460, %t468
  store i1 %t471, ptr %l258, !tbaa !21
  br label %bb141
bb140:
  store i1 false, ptr %l258, !tbaa !21
  br label %bb141
bb141:
  %t473 = load i1, ptr %l258, !tbaa !21
  %t474 = xor i1 %t473, true
  br i1 %t474, label %bb142, label %bb143
bb142:
  br label %bb174
bb143:
  br label %bb144
bb144:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/fmt:formatter", ptr %t476, i32 0, i32 0
  %t479 = load { i64, ptr }, ptr %t478, !tbaa !27
  %t480 = load i64, ptr %l31, !tbaa !24
  %t483 = call i64 @compiler_2ffmt_2elineEndOf(ptr %v0, { i64, ptr } %t479, i64 %t480)
  store i64 %t483, ptr %l269
  br label %bb145
bb145:
  %t484 = load i64, ptr %l269, !tbaa !24
  store i64 %t484, ptr %l32, !tbaa !24
  %t485 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebegin(ptr %v0, ptr %t485, i64 0)
  br label %bb146
bb146:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t489 = getelementptr %"compiler/fmt:formatter", ptr %t487, i32 0, i32 34
  store i1 true, ptr %t489, !tbaa !21
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t492 = getelementptr %"compiler/fmt:formatter", ptr %t490, i32 0, i32 19
  store ptr %t492, ptr %l273, !tbaa !29
  %t493 = load ptr, ptr %l0, !tbaa !29
  %t495 = getelementptr %"compiler/fmt:formatter", ptr %t493, i32 0, i32 0
  %t496 = load { i64, ptr }, ptr %t495, !tbaa !27
  store { i64, ptr } %t496, ptr %l275, !tbaa !27
  %t497 = load i64, ptr %l31, !tbaa !24
  store i64 %t497, ptr %l276, !tbaa !24
  %t498 = load i64, ptr %l32, !tbaa !24
  store i64 %t498, ptr %l277, !tbaa !24
  %t499 = load { i64, ptr }, ptr %l275, !tbaa !27
  %t500 = extractvalue { i64, ptr } %t499, 0
  store i64 %t500, ptr %l278, !tbaa !24
  %t501 = load i64, ptr %l276, !tbaa !24
  %t502 = icmp sge i64 %t501, 0
  br i1 %t502, label %bb147, label %bb148
bb147:
  %t504 = load i64, ptr %l276, !tbaa !24
  %t505 = load i64, ptr %l277, !tbaa !24
  %t506 = icmp sle i64 %t504, %t505
  br i1 %t506, label %bb149, label %bb150
bb148:
  call void @__olang_check_failed(ptr @olang_loc_aa98af033dba4568_940e94a7ebea1854)
  unreachable
bb149:
  %t508 = load i64, ptr %l277, !tbaa !24
  %t509 = load i64, ptr %l278, !tbaa !24
  %t510 = icmp sle i64 %t508, %t509
  br i1 %t510, label %bb151, label %bb152
bb150:
  call void @__olang_check_failed(ptr @olang_loc_aa98af033dba4568_940e94a7ebea1854)
  unreachable
bb151:
  %t512 = getelementptr { i64, ptr }, ptr %l275, i32 0, i32 1
  %t513 = load ptr, ptr %t512, !tbaa !27
  %t514 = load i64, ptr %l276, !tbaa !24
  %t515 = load i64, ptr %l277, !tbaa !24
  %t516 = getelementptr i8, ptr %t513, i64 %t514
  %t517 = sub i64 %t515, %t514
  %t518 = insertvalue { i64, ptr } undef, i64 %t517, 0
  %t519 = insertvalue { i64, ptr } %t518, ptr %t516, 1
  %t520 = load ptr, ptr %l273, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t520, { i64, ptr } %t519)
  br label %bb153
bb152:
  call void @__olang_check_failed(ptr @olang_loc_aa98af033dba4568_940e94a7ebea1854)
  unreachable
bb153:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb154
bb154:
  %t522 = load i64, ptr %l20, !tbaa !24
  store i64 %t522, ptr %l283, !tbaa !24
  %t523 = load ptr, ptr %l0, !tbaa !29
  %t525 = getelementptr %"compiler/fmt:formatter", ptr %t523, i32 0, i32 7
  %t527 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t525)
  store i64 %t527, ptr %l286
  br label %bb155
bb155:
  %t528 = load i64, ptr %l283, !tbaa !24
  %t529 = load i64, ptr %l286, !tbaa !24
  %t530 = icmp slt i64 %t528, %t529
  br i1 %t530, label %bb156, label %bb157
bb156:
  %t532 = load ptr, ptr %l0, !tbaa !29
  %t534 = getelementptr %"compiler/fmt:formatter", ptr %t532, i32 0, i32 1
  %t535 = load { i64, ptr }, ptr %t534, !tbaa !27
  store { i64, ptr } %t535, ptr %l290, !tbaa !27
  %t536 = load ptr, ptr %l0, !tbaa !29
  %t538 = getelementptr %"compiler/fmt:formatter", ptr %t536, i32 0, i32 7
  %t539 = load i64, ptr %l20, !tbaa !24
  %t542 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t538, i64 %t539)
  store i64 %t542, ptr %l294
  br label %bb158
bb157:
  store i1 false, ptr %l288, !tbaa !21
  br label %bb159
bb158:
  %t543 = load i64, ptr %l294, !tbaa !24
  %t544 = getelementptr { i64, ptr }, ptr %l290, i32 0, i32 1
  %t545 = load ptr, ptr %t544, !tbaa !27
  %t546 = getelementptr %"compiler/token:Token", ptr %t545, i64 %t543
  %t547 = getelementptr %"compiler/token:Token", ptr %t546, i32 0, i32 2
  %t548 = load i32, ptr %t547, !tbaa !23
  %t550 = sext i32 %t548 to i64
  %t551 = load i64, ptr %l32, !tbaa !24
  %t554 = icmp slt i64 %t550, %t551
  store i1 %t554, ptr %l288, !tbaa !21
  br label %bb159
bb159:
  %t556 = load i1, ptr %l288, !tbaa !21
  %t557 = xor i1 %t556, true
  br i1 %t557, label %bb160, label %bb161
bb160:
  br label %bb171
bb161:
  br label %bb162
bb162:
  %t559 = load i1, ptr %l33, !tbaa !21
  br i1 %t559, label %bb163, label %bb164
bb163:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t562 = load i64, ptr %l20, !tbaa !24
  %t565 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2elevel(ptr %v0, ptr %t561, i64 %t562)
  store i64 %t565, ptr %l303
  br label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb166
bb166:
  store i1 false, ptr %l33, !tbaa !21
  %t566 = load ptr, ptr %l0, !tbaa !29
  store ptr %t566, ptr %l304, !tbaa !29
  %t567 = load ptr, ptr %l0, !tbaa !29
  %t569 = getelementptr %"compiler/fmt:formatter", ptr %t567, i32 0, i32 7
  %t570 = load i64, ptr %l20, !tbaa !24
  %t573 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t569, i64 %t570)
  store i64 %t573, ptr %l308
  br label %bb167
bb167:
  %t574 = load i64, ptr %l308, !tbaa !24
  %t575 = load ptr, ptr %l304, !tbaa !29
  %t576 = getelementptr %"compiler/fmt:formatter", ptr %t575, i32 0, i32 29
  store i64 %t574, ptr %t576, !tbaa !24
  %t577 = load ptr, ptr %l0, !tbaa !29
  store ptr %t577, ptr %l309, !tbaa !29
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/fmt:formatter", ptr %t578, i32 0, i32 7
  %t581 = load i64, ptr %l20, !tbaa !24
  %t584 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t580, i64 %t581)
  store i64 %t584, ptr %l313
  br label %bb168
bb168:
  %t585 = load ptr, ptr %l309, !tbaa !29
  %t586 = load i64, ptr %l313, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etrack(ptr %v0, ptr %t585, i64 %t586)
  br label %bb169
bb169:
  %t587 = load i64, ptr %l20, !tbaa !24
  %t589 = add i64 %t587, 1
  store i64 %t589, ptr %l20, !tbaa !24
  br label %bb170
bb170:
  br label %bb154
bb171:
  %t591 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2efinish(ptr %v0, ptr %t591)
  br label %bb172
bb172:
  %t593 = load i64, ptr %l32, !tbaa !24
  %t595 = add i64 %t593, 1
  store i64 %t595, ptr %l31, !tbaa !24
  br label %bb173
bb173:
  br label %bb138
bb174:
  %t597 = load i64, ptr %l31, !tbaa !24
  %t598 = load ptr, ptr %l0, !tbaa !29
  %t600 = getelementptr %"compiler/fmt:formatter", ptr %t598, i32 0, i32 0
  %t601 = load { i64, ptr }, ptr %t600, !tbaa !27
  %t603 = extractvalue { i64, ptr } %t601, 0
  %t606 = icmp sle i64 %t597, %t603
  br i1 %t606, label %bb175, label %bb176
bb175:
  %t608 = load i64, ptr %l31, !tbaa !24
  store i64 %t608, ptr %l324, !tbaa !24
  br label %bb177
bb176:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t612 = getelementptr %"compiler/fmt:formatter", ptr %t610, i32 0, i32 0
  %t613 = load { i64, ptr }, ptr %t612, !tbaa !27
  %t615 = extractvalue { i64, ptr } %t613, 0
  store i64 %t615, ptr %l324, !tbaa !24
  br label %bb177
bb177:
  %t617 = load i64, ptr %l324, !tbaa !24
  store i64 %t617, ptr %l19, !tbaa !24
  br label %bb181
bb178:
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t619 = load i64, ptr %l19, !tbaa !24
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/fmt:formatter", ptr %t620, i32 0, i32 1
  %t623 = load { i64, ptr }, ptr %t622, !tbaa !27
  store { i64, ptr } %t623, ptr %l332, !tbaa !27
  %t624 = load i64, ptr %l21, !tbaa !24
  %t626 = getelementptr { i64, ptr }, ptr %l332, i32 0, i32 1
  %t627 = load ptr, ptr %t626, !tbaa !27
  %t628 = getelementptr %"compiler/token:Token", ptr %t627, i64 %t624
  %t629 = getelementptr %"compiler/token:Token", ptr %t628, i32 0, i32 2
  %t630 = load i32, ptr %t629, !tbaa !23
  %t632 = sext i32 %t630 to i64
  %t633 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2egap(ptr %v0, ptr %t618, i64 %t619, i64 %t632, i64 %t633)
  br label %bb179
bb179:
  %t638 = load ptr, ptr %l0, !tbaa !29
  %t639 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etoken(ptr %v0, ptr %t638, i64 %t639)
  br label %bb180
bb180:
  %t642 = load ptr, ptr %l0, !tbaa !29
  %t644 = getelementptr %"compiler/fmt:formatter", ptr %t642, i32 0, i32 1
  %t645 = load { i64, ptr }, ptr %t644, !tbaa !27
  store { i64, ptr } %t645, ptr %l340, !tbaa !27
  %t646 = load i64, ptr %l21, !tbaa !24
  %t648 = getelementptr { i64, ptr }, ptr %l340, i32 0, i32 1
  %t649 = load ptr, ptr %t648, !tbaa !27
  %t650 = getelementptr %"compiler/token:Token", ptr %t649, i64 %t646
  %t651 = getelementptr %"compiler/token:Token", ptr %t650, i32 0, i32 3
  %t652 = load i32, ptr %t651, !tbaa !23
  %t654 = sext i32 %t652 to i64
  store i64 %t654, ptr %l19, !tbaa !24
  %t656 = load i64, ptr %l20, !tbaa !24
  %t658 = add i64 %t656, 1
  store i64 %t658, ptr %l20, !tbaa !24
  br label %bb181
bb181:
  br label %bb100
bb182:
  %t660 = load ptr, ptr %l0, !tbaa !29
  %t661 = load i64, ptr %l19, !tbaa !24
  %t662 = load ptr, ptr %l0, !tbaa !29
  %t664 = getelementptr %"compiler/fmt:formatter", ptr %t662, i32 0, i32 0
  %t665 = load { i64, ptr }, ptr %t664, !tbaa !27
  %t667 = extractvalue { i64, ptr } %t665, 0
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2egap(ptr %v0, ptr %t660, i64 %t661, i64 %t667, i64 -1)
  br label %bb183
bb183:
  %t671 = load ptr, ptr %l0, !tbaa !29
  %t673 = getelementptr %"compiler/fmt:formatter", ptr %t671, i32 0, i32 20
  %t674 = load i1, ptr %t673, !tbaa !21
  br i1 %t674, label %bb184, label %bb185
bb184:
  %t676 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2efinish(ptr %v0, ptr %t676)
  br label %bb186
bb185:
  br label %bb187
bb186:
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2espace(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i32
  %l14 = alloca i32
  %l17 = alloca { i64, ptr }
  %l20 = alloca i1
  %l23 = alloca { i64, ptr }
  %l26 = alloca i1
  %l29 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l44 = alloca i1
  %l47 = alloca { i64, ptr }
  %l50 = alloca i1
  %l52 = alloca { i64, ptr }
  %l56 = alloca i1
  %l60 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l68 = alloca i1
  %l70 = alloca i64
  %l73 = alloca i64
  %l75 = alloca i1
  %l76 = alloca ptr
  %l81 = alloca i64
  %l82 = alloca i32
  %l85 = alloca { i64, ptr }
  %l88 = alloca i1
  %l91 = alloca i1
  %l94 = alloca i1
  %l96 = alloca { i64, ptr }
  %l100 = alloca i1
  %l102 = alloca i1
  %l110 = alloca i64
  %l113 = alloca i32
  %l116 = alloca i1
  %l118 = alloca { i64, ptr }
  %l122 = alloca i1
  %l126 = alloca { i64, ptr }
  %l129 = alloca i1
  %l132 = alloca i1
  %l133 = alloca { i64, ptr }
  %l136 = alloca i1
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  %l145 = alloca i1
  %l147 = alloca { i64, ptr }
  %l150 = alloca i1
  %l152 = alloca { i64, ptr }
  %l155 = alloca i1
  %l157 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l163 = alloca i1
  %l166 = alloca { i64, ptr }
  %l171 = alloca i1
  %l174 = alloca i1
  %l177 = alloca i1
  %l180 = alloca i1
  %l183 = alloca i1
  %l186 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l190 = alloca i1
  %l193 = alloca i1
  %l196 = alloca i1
  %l197 = alloca { i64, ptr }
  %l201 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l211 = alloca i1
  %l212 = alloca { i64, ptr }
  %l215 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l223 = alloca i1
  %l224 = alloca i1
  %l227 = alloca i1
  %l228 = alloca ptr
  %l233 = alloca i64
  %l234 = alloca i32
  %l238 = alloca { i64, ptr }
  %l243 = alloca i64
  %l247 = alloca i1
  %l251 = alloca i32
  %l254 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l262 = alloca i64
  %l265 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l273 = alloca i1
  %l274 = alloca i1
  %l278 = alloca i1
  %l282 = alloca { i64, ptr }
  %l283 = alloca { i64, ptr }
  %l287 = alloca { i64, ptr }
  %l290 = alloca { i64, ptr }
  %l295 = alloca { i64, ptr }
  %l298 = alloca i1
  %l299 = alloca i1
  %l303 = alloca i1
  %l307 = alloca i1
  %l311 = alloca i1
  %l315 = alloca { i64, ptr }
  %l316 = alloca { i64, ptr }
  %l318 = alloca { i64, ptr }
  %l322 = alloca { i64, ptr }
  %l323 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i32, ptr %l11, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l4
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l2, !tbaa !24
  %t11 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t7, i64 %t8)
  store i32 %t11, ptr %l14
  br label %bb2
bb2:
  %t12 = load i32, ptr %l14, !range !{i32 0, i32 114}
  store i32 %t12, ptr %l5
  %t13 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t15 = trunc i64 75 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l17, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t19 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t21 = trunc i64 109 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb8
bb7:
  %t24 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t26 = trunc i64 111 to i32
  %t27 = icmp eq i32 %t24, %t26
  store i1 %t27, ptr %l20, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l20, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t30, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t31 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t33 = trunc i64 108 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb14
bb13:
  %t36 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t38 = trunc i64 110 to i32
  %t39 = icmp eq i32 %t36, %t38
  store i1 %t39, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t41 = load i1, ptr %l26, !tbaa !21
  br i1 %t41, label %bb15, label %bb16
bb15:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l29, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t42, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/fmt:formatter", ptr %t43, i32 0, i32 4
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l31, !tbaa !27
  %t47 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr i64, ptr %t50, i64 %t47
  %t52 = load i64, ptr %t51, !tbaa !34
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l35, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/fmt:formatter", ptr %t57, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l37, !tbaa !27
  %t61 = load i64, ptr %l1, !tbaa !24
  %t63 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t64 = load ptr, ptr %t63, !tbaa !27
  %t65 = getelementptr i64, ptr %t64, i64 %t61
  %t66 = load i64, ptr %t65, !tbaa !34
  %t68 = icmp sgt i64 %t66, 0
  br i1 %t68, label %bb21, label %bb22
bb21:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t70, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  %t71 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t73 = trunc i64 101 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb24, label %bb25
bb24:
  %t76 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t78 = trunc i64 112 to i32
  %t79 = icmp eq i32 %t76, %t78
  store i1 %t79, ptr %l44, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb26
bb26:
  %t81 = load i1, ptr %l44, !tbaa !21
  br i1 %t81, label %bb27, label %bb28
bb27:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t82, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t83 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t85 = trunc i64 101 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb30, label %bb31
bb30:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/fmt:formatter", ptr %t88, i32 0, i32 1
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l52, !tbaa !27
  %t92 = load i64, ptr %l1, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr %"compiler/token:Token", ptr %t95, i64 %t92
  %t97 = load %"compiler/token:Token", ptr %t96
  %t98 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t101 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t97, i8 %t98)
  store i1 %t101, ptr %l56
  br label %bb32
bb31:
  store i1 false, ptr %l50, !tbaa !21
  br label %bb33
bb32:
  %t102 = load i1, ptr %l56, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l50, !tbaa !21
  br label %bb33
bb33:
  %t105 = load i1, ptr %l50, !tbaa !21
  br i1 %t105, label %bb34, label %bb35
bb34:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l2, !tbaa !24
  %t110 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %t106, i64 %t107)
  store { i64, ptr } %t110, ptr %l60
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t111 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
bb37:
  %t112 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t114 = trunc i64 101 to i32
  %t115 = icmp eq i32 %t112, %t114
  br i1 %t115, label %bb38, label %bb39
bb38:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t118 = load i64, ptr %l2, !tbaa !24
  %t121 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %t117, i64 %t118)
  store { i64, ptr } %t121, ptr %l65
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t122 = load { i64, ptr }, ptr %l65, !tbaa !27
  store { i64, ptr } %t122, ptr %rv
  br label %ret
bb41:
  %t123 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t125 = trunc i64 77 to i32
  %t126 = icmp eq i32 %t123, %t125
  br i1 %t126, label %bb42, label %bb43
bb42:
  %t128 = load i64, ptr %l3, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l70, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/fmt:formatter", ptr %t131, i32 0, i32 7
  %t135 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t133)
  store i64 %t135, ptr %l73
  br label %bb44
bb43:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb45
bb44:
  %t136 = load i64, ptr %l70, !tbaa !24
  %t137 = load i64, ptr %l73, !tbaa !24
  %t138 = icmp slt i64 %t136, %t137
  store i1 %t138, ptr %l68, !tbaa !21
  br label %bb45
bb45:
  %t140 = load i1, ptr %l68, !tbaa !21
  br i1 %t140, label %bb46, label %bb47
bb46:
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l76, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/fmt:formatter", ptr %t142, i32 0, i32 7
  %t145 = load i64, ptr %l3, !tbaa !24
  %t147 = add i64 %t145, 1
  %t150 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t144, i64 %t147)
  store i64 %t150, ptr %l81
  br label %bb48
bb47:
  store i1 false, ptr %l75, !tbaa !21
  br label %bb50
bb48:
  %t151 = load ptr, ptr %l76, !tbaa !29
  %t152 = load i64, ptr %l81, !tbaa !24
  %t153 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t151, i64 %t152)
  store i32 %t153, ptr %l82
  br label %bb49
bb49:
  %t154 = load i32, ptr %l82, !range !{i32 0, i32 114}
  %t156 = trunc i64 101 to i32
  %t157 = icmp eq i32 %t154, %t156
  store i1 %t157, ptr %l75, !tbaa !21
  br label %bb50
bb50:
  %t159 = load i1, ptr %l75, !tbaa !21
  br i1 %t159, label %bb51, label %bb52
bb51:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l85, !tbaa !27
  %t160 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t160, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t161 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t163 = trunc i64 1 to i32
  %t164 = icmp eq i32 %t161, %t163
  br i1 %t164, label %bb54, label %bb55
bb54:
  store i1 true, ptr %l88, !tbaa !21
  br label %bb56
bb55:
  %t166 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t168 = trunc i64 13 to i32
  %t169 = icmp eq i32 %t166, %t168
  store i1 %t169, ptr %l88, !tbaa !21
  br label %bb56
bb56:
  %t171 = load i1, ptr %l88, !tbaa !21
  br i1 %t171, label %bb57, label %bb58
bb57:
  %t172 = load i64, ptr %l3, !tbaa !24
  %t174 = icmp sge i64 %t172, 2
  store i1 %t174, ptr %l91, !tbaa !21
  br label %bb59
bb58:
  store i1 false, ptr %l91, !tbaa !21
  br label %bb59
bb59:
  %t176 = load i1, ptr %l91, !tbaa !21
  br i1 %t176, label %bb60, label %bb61
bb60:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr %"compiler/fmt:formatter", ptr %t177, i32 0, i32 1
  %t180 = load { i64, ptr }, ptr %t179, !tbaa !27
  store { i64, ptr } %t180, ptr %l96, !tbaa !27
  %t181 = load i64, ptr %l1, !tbaa !24
  %t183 = getelementptr { i64, ptr }, ptr %l96, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr %"compiler/token:Token", ptr %t184, i64 %t181
  %t186 = load %"compiler/token:Token", ptr %t185
  %t187 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t190 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t186, i8 %t187)
  store i1 %t190, ptr %l100
  br label %bb62
bb61:
  store i1 false, ptr %l94, !tbaa !21
  br label %bb63
bb62:
  %t191 = load i1, ptr %l100, !tbaa !21
  %t192 = xor i1 %t191, true
  store i1 %t192, ptr %l94, !tbaa !21
  br label %bb63
bb63:
  %t194 = load i1, ptr %l94, !tbaa !21
  br i1 %t194, label %bb64, label %bb65
bb64:
  %t195 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t197 = trunc i64 112 to i32
  %t198 = icmp eq i32 %t195, %t197
  %t200 = xor i1 %t198, true
  store i1 %t200, ptr %l102, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb66
bb66:
  %t202 = load i1, ptr %l102, !tbaa !21
  br i1 %t202, label %bb67, label %bb68
bb67:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t205 = getelementptr %"compiler/fmt:formatter", ptr %t203, i32 0, i32 7
  %t206 = load i64, ptr %l3, !tbaa !24
  %t208 = sub i64 %t206, 2
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t205, i64 %t208)
  store i64 %t211, ptr %l110
  br label %bb69
bb68:
  br label %bb79
bb69:
  %t212 = load i64, ptr %l110, !tbaa !24
  store i64 %t212, ptr %l6, !tbaa !24
  %t213 = load ptr, ptr %l0, !tbaa !29
  %t214 = load i64, ptr %l6, !tbaa !24
  %t217 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t213, i64 %t214)
  store i32 %t217, ptr %l113
  br label %bb70
bb70:
  %t218 = load i32, ptr %l113, !range !{i32 0, i32 114}
  %t220 = trunc i64 101 to i32
  %t221 = icmp eq i32 %t218, %t220
  br i1 %t221, label %bb71, label %bb72
bb71:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/fmt:formatter", ptr %t223, i32 0, i32 1
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l118, !tbaa !27
  %t227 = load i64, ptr %l6, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l118, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr %"compiler/token:Token", ptr %t230, i64 %t227
  %t232 = load %"compiler/token:Token", ptr %t231
  %t233 = load i8, ptr @G_2ecompiler_2ftoken_2eSpace, !tbaa !22
  %t236 = call i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %t232, i8 %t233)
  store i1 %t236, ptr %l122
  br label %bb73
bb72:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb74
bb73:
  %t237 = load i1, ptr %l122, !tbaa !21
  %t238 = xor i1 %t237, true
  store i1 %t238, ptr %l116, !tbaa !21
  br label %bb74
bb74:
  %t240 = load i1, ptr %l116, !tbaa !21
  br i1 %t240, label %bb75, label %bb76
bb75:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load i64, ptr %l2, !tbaa !24
  %t245 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %t241, i64 %t242)
  store { i64, ptr } %t245, ptr %l126
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t246 = load { i64, ptr }, ptr %l126, !tbaa !27
  store { i64, ptr } %t246, ptr %rv
  br label %ret
bb78:
  br label %bb79
bb79:
  %t247 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t249 = trunc i64 76 to i32
  %t250 = icmp eq i32 %t247, %t249
  br i1 %t250, label %bb80, label %bb81
bb80:
  %t252 = load ptr, ptr %l0, !tbaa !29
  %t253 = load i64, ptr %l2, !tbaa !24
  %t256 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eellipsisAt(ptr %v0, ptr %t252, i64 %t253)
  store i1 %t256, ptr %l132
  br label %bb82
bb81:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb83
bb82:
  %t257 = load i1, ptr %l132, !tbaa !21
  store i1 %t257, ptr %l129, !tbaa !21
  br label %bb83
bb83:
  %t258 = load i1, ptr %l129, !tbaa !21
  br i1 %t258, label %bb84, label %bb85
bb84:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l133, !tbaa !27
  %t259 = load { i64, ptr }, ptr %l133, !tbaa !27
  store { i64, ptr } %t259, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t260 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t262 = trunc i64 76 to i32
  %t263 = icmp eq i32 %t260, %t262
  br i1 %t263, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb89
bb88:
  %t265 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t267 = trunc i64 76 to i32
  %t268 = icmp eq i32 %t265, %t267
  store i1 %t268, ptr %l136, !tbaa !21
  br label %bb89
bb89:
  %t270 = load i1, ptr %l136, !tbaa !21
  br i1 %t270, label %bb90, label %bb91
bb90:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l139, !tbaa !27
  %t271 = load { i64, ptr }, ptr %l139, !tbaa !27
  store { i64, ptr } %t271, ptr %rv
  br label %ret
bb91:
  br label %bb92
bb92:
  %t272 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t274 = trunc i64 96 to i32
  %t275 = icmp eq i32 %t272, %t274
  br i1 %t275, label %bb93, label %bb94
bb93:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l142, !tbaa !27
  %t277 = load { i64, ptr }, ptr %l142, !tbaa !27
  store { i64, ptr } %t277, ptr %rv
  br label %ret
bb94:
  br label %bb95
bb95:
  %t278 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t280 = trunc i64 79 to i32
  %t281 = icmp eq i32 %t278, %t280
  br i1 %t281, label %bb96, label %bb97
bb96:
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/fmt:formatter", ptr %t283, i32 0, i32 5
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l147, !tbaa !27
  %t287 = load i64, ptr %l1, !tbaa !24
  %t289 = getelementptr { i64, ptr }, ptr %l147, i32 0, i32 1
  %t290 = load ptr, ptr %t289, !tbaa !27
  %t291 = getelementptr i1, ptr %t290, i64 %t287
  %t292 = load i1, ptr %t291, !tbaa !31
  br i1 %t292, label %bb98, label %bb99
bb97:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb104
bb98:
  store i1 true, ptr %l150, !tbaa !21
  br label %bb100
bb99:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/fmt:formatter", ptr %t294, i32 0, i32 3
  %t297 = load { i64, ptr }, ptr %t296, !tbaa !27
  store { i64, ptr } %t297, ptr %l152, !tbaa !27
  %t298 = load i64, ptr %l1, !tbaa !24
  %t300 = getelementptr { i64, ptr }, ptr %l152, i32 0, i32 1
  %t301 = load ptr, ptr %t300, !tbaa !27
  %t302 = getelementptr i1, ptr %t301, i64 %t298
  %t303 = load i1, ptr %t302, !tbaa !31
  store i1 %t303, ptr %l150, !tbaa !21
  br label %bb100
bb100:
  %t305 = load i1, ptr %l150, !tbaa !21
  br i1 %t305, label %bb101, label %bb102
bb101:
  store i1 true, ptr %l155, !tbaa !21
  br label %bb103
bb102:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/fmt:formatter", ptr %t306, i32 0, i32 6
  %t309 = load { i64, ptr }, ptr %t308, !tbaa !27
  store { i64, ptr } %t309, ptr %l157, !tbaa !27
  %t310 = load i64, ptr %l1, !tbaa !24
  %t312 = getelementptr { i64, ptr }, ptr %l157, i32 0, i32 1
  %t313 = load ptr, ptr %t312, !tbaa !27
  %t314 = getelementptr i1, ptr %t313, i64 %t310
  %t315 = load i1, ptr %t314, !tbaa !31
  store i1 %t315, ptr %l155, !tbaa !21
  br label %bb103
bb103:
  %t317 = load i1, ptr %l155, !tbaa !21
  store i1 %t317, ptr %l145, !tbaa !21
  br label %bb104
bb104:
  %t318 = load i1, ptr %l145, !tbaa !21
  br i1 %t318, label %bb105, label %bb106
bb105:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l160, !tbaa !27
  %t319 = load { i64, ptr }, ptr %l160, !tbaa !27
  store { i64, ptr } %t319, ptr %rv
  br label %ret
bb106:
  br label %bb107
bb107:
  %t320 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t322 = trunc i64 79 to i32
  %t323 = icmp eq i32 %t320, %t322
  br i1 %t323, label %bb108, label %bb109
bb108:
  store i1 true, ptr %l163, !tbaa !21
  br label %bb110
bb109:
  %t325 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t327 = trunc i64 79 to i32
  %t328 = icmp eq i32 %t325, %t327
  store i1 %t328, ptr %l163, !tbaa !21
  br label %bb110
bb110:
  %t330 = load i1, ptr %l163, !tbaa !21
  br i1 %t330, label %bb111, label %bb112
bb111:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, ptr %l166, !tbaa !27
  %t331 = load { i64, ptr }, ptr %l166, !tbaa !27
  store { i64, ptr } %t331, ptr %rv
  br label %ret
bb112:
  br label %bb113
bb113:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t333 = load i64, ptr %l1, !tbaa !24
  %t334 = load i64, ptr %l3, !tbaa !24
  %t336 = sub i64 %t334, 1
  %t340 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eprefix(ptr %v0, ptr %t332, i64 %t333, i64 %t336)
  store i1 %t340, ptr %l171
  br label %bb114
bb114:
  %t341 = load i1, ptr %l171, !tbaa !21
  br i1 %t341, label %bb115, label %bb116
bb115:
  %t342 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t344 = trunc i64 69 to i32
  %t345 = icmp eq i32 %t342, %t344
  br i1 %t345, label %bb117, label %bb118
bb116:
  br label %bb132
bb117:
  %t347 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t349 = trunc i64 69 to i32
  %t350 = icmp eq i32 %t347, %t349
  br i1 %t350, label %bb119, label %bb120
bb118:
  store i1 false, ptr %l174, !tbaa !21
  br label %bb122
bb119:
  store i1 true, ptr %l177, !tbaa !21
  br label %bb121
bb120:
  %t352 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t354 = trunc i64 93 to i32
  %t355 = icmp eq i32 %t352, %t354
  store i1 %t355, ptr %l177, !tbaa !21
  br label %bb121
bb121:
  %t357 = load i1, ptr %l177, !tbaa !21
  store i1 %t357, ptr %l174, !tbaa !21
  br label %bb122
bb122:
  %t358 = load i1, ptr %l174, !tbaa !21
  br i1 %t358, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l180, !tbaa !21
  br label %bb128
bb124:
  %t359 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t361 = trunc i64 93 to i32
  %t362 = icmp eq i32 %t359, %t361
  br i1 %t362, label %bb125, label %bb126
bb125:
  %t364 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t366 = trunc i64 69 to i32
  %t367 = icmp eq i32 %t364, %t366
  store i1 %t367, ptr %l183, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l183, !tbaa !21
  br label %bb127
bb127:
  %t369 = load i1, ptr %l183, !tbaa !21
  store i1 %t369, ptr %l180, !tbaa !21
  br label %bb128
bb128:
  %t370 = load i1, ptr %l180, !tbaa !21
  br i1 %t370, label %bb129, label %bb130
bb129:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, ptr %l186, !tbaa !27
  %t371 = load { i64, ptr }, ptr %l186, !tbaa !27
  store { i64, ptr } %t371, ptr %rv
  br label %ret
bb130:
  br label %bb131
bb131:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, ptr %l187, !tbaa !27
  %t372 = load { i64, ptr }, ptr %l187, !tbaa !27
  store { i64, ptr } %t372, ptr %rv
  br label %ret
bb132:
  %t373 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t375 = trunc i64 92 to i32
  %t376 = icmp eq i32 %t373, %t375
  br i1 %t376, label %bb133, label %bb134
bb133:
  store i1 true, ptr %l190, !tbaa !21
  br label %bb135
bb134:
  %t378 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t380 = trunc i64 93 to i32
  %t381 = icmp eq i32 %t378, %t380
  store i1 %t381, ptr %l190, !tbaa !21
  br label %bb135
bb135:
  %t383 = load i1, ptr %l190, !tbaa !21
  br i1 %t383, label %bb136, label %bb137
bb136:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load i64, ptr %l1, !tbaa !24
  %t388 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eoperandEnd(ptr %v0, ptr %t384, i64 %t385)
  store i1 %t388, ptr %l196
  br label %bb138
bb137:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb139
bb138:
  %t389 = load i1, ptr %l196, !tbaa !21
  store i1 %t389, ptr %l193, !tbaa !21
  br label %bb139
bb139:
  %t390 = load i1, ptr %l193, !tbaa !21
  br i1 %t390, label %bb140, label %bb141
bb140:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) }, ptr %l197, !tbaa !27
  %t391 = load { i64, ptr }, ptr %l197, !tbaa !27
  store { i64, ptr } %t391, ptr %rv
  br label %ret
bb141:
  br label %bb142
bb142:
  %t392 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t394 = trunc i64 108 to i32
  %t395 = icmp eq i32 %t392, %t394
  br i1 %t395, label %bb143, label %bb144
bb143:
  %t397 = load ptr, ptr %l0, !tbaa !29
  %t399 = getelementptr %"compiler/fmt:formatter", ptr %t397, i32 0, i32 3
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  store { i64, ptr } %t400, ptr %l201, !tbaa !27
  %t401 = load i64, ptr %l2, !tbaa !24
  %t403 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t404 = load ptr, ptr %t403, !tbaa !27
  %t405 = getelementptr i1, ptr %t404, i64 %t401
  %t406 = load i1, ptr %t405, !tbaa !31
  br i1 %t406, label %bb145, label %bb146
bb144:
  br label %bb203
bb145:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l204, !tbaa !27
  %t408 = load { i64, ptr }, ptr %l204, !tbaa !27
  store { i64, ptr } %t408, ptr %rv
  br label %ret
bb146:
  br label %bb147
bb147:
  %t409 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t411 = trunc i64 37 to i32
  %t412 = icmp eq i32 %t409, %t411
  br i1 %t412, label %bb148, label %bb149
bb148:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load i64, ptr %l1, !tbaa !24
  %t416 = load i64, ptr %l3, !tbaa !24
  %t418 = sub i64 %t416, 1
  %t422 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ereceiver(ptr %v0, ptr %t414, i64 %t415, i64 %t418)
  store i1 %t422, ptr %l211
  br label %bb150
bb149:
  br label %bb154
bb150:
  %t423 = load i1, ptr %l211, !tbaa !21
  br i1 %t423, label %bb151, label %bb152
bb151:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, ptr %l212, !tbaa !27
  br label %bb153
bb152:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l212, !tbaa !27
  br label %bb153
bb153:
  %t424 = load { i64, ptr }, ptr %l212, !tbaa !27
  store { i64, ptr } %t424, ptr %rv
  br label %ret
bb154:
  %t425 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t427 = trunc i64 34 to i32
  %t428 = icmp eq i32 %t425, %t427
  br i1 %t428, label %bb155, label %bb156
bb155:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l215, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l215, !tbaa !27
  store { i64, ptr } %t430, ptr %rv
  br label %ret
bb156:
  br label %bb157
bb157:
  %t431 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t433 = trunc i64 113 to i32
  %t434 = icmp eq i32 %t431, %t433
  br i1 %t434, label %bb158, label %bb159
bb158:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t437 = load i64, ptr %l2, !tbaa !24
  %t440 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %t436, i64 %t437)
  store { i64, ptr } %t440, ptr %l220
  br label %bb160
bb159:
  br label %bb161
bb160:
  %t441 = load { i64, ptr }, ptr %l220, !tbaa !27
  store { i64, ptr } %t441, ptr %rv
  br label %ret
bb161:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load i64, ptr %l1, !tbaa !24
  %t446 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekeyword(ptr %v0, ptr %t442, i64 %t443)
  store i1 %t446, ptr %l223
  br label %bb162
bb162:
  %t447 = load i1, ptr %l223, !tbaa !21
  br i1 %t447, label %bb163, label %bb164
bb163:
  %t448 = load i64, ptr %l3, !tbaa !24
  %t450 = icmp sge i64 %t448, 2
  store i1 %t450, ptr %l224, !tbaa !21
  br label %bb165
bb164:
  store i1 false, ptr %l224, !tbaa !21
  br label %bb165
bb165:
  %t452 = load i1, ptr %l224, !tbaa !21
  br i1 %t452, label %bb166, label %bb167
bb166:
  %t453 = load ptr, ptr %l0, !tbaa !29
  store ptr %t453, ptr %l228, !tbaa !29
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr %"compiler/fmt:formatter", ptr %t454, i32 0, i32 7
  %t457 = load i64, ptr %l3, !tbaa !24
  %t459 = sub i64 %t457, 2
  %t462 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t456, i64 %t459)
  store i64 %t462, ptr %l233
  br label %bb168
bb167:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb170
bb168:
  %t463 = load ptr, ptr %l228, !tbaa !29
  %t464 = load i64, ptr %l233, !tbaa !24
  %t465 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t463, i64 %t464)
  store i32 %t465, ptr %l234
  br label %bb169
bb169:
  %t466 = load i32, ptr %l234, !range !{i32 0, i32 114}
  %t468 = trunc i64 109 to i32
  %t469 = icmp eq i32 %t466, %t468
  store i1 %t469, ptr %l227, !tbaa !21
  br label %bb170
bb170:
  %t471 = load i1, ptr %l227, !tbaa !21
  br i1 %t471, label %bb171, label %bb172
bb171:
  %t472 = load ptr, ptr %l0, !tbaa !29
  %t474 = getelementptr %"compiler/fmt:formatter", ptr %t472, i32 0, i32 23
  %t475 = load { i64, ptr }, ptr %t474, !tbaa !27
  store { i64, ptr } %t475, ptr %l238, !tbaa !27
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t478 = getelementptr %"compiler/fmt:formatter", ptr %t476, i32 0, i32 7
  %t479 = load i64, ptr %l3, !tbaa !24
  %t481 = sub i64 %t479, 2
  %t484 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t478, i64 %t481)
  store i64 %t484, ptr %l243
  br label %bb173
bb172:
  br label %bb181
bb173:
  %t485 = load i64, ptr %l243, !tbaa !24
  %t486 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !27
  %t488 = getelementptr i64, ptr %t487, i64 %t485
  %t489 = load i64, ptr %t488, !tbaa !34
  store i64 %t489, ptr %l7, !tbaa !24
  %t491 = load i64, ptr %l7, !tbaa !24
  %t493 = icmp sgt i64 %t491, 0
  br i1 %t493, label %bb174, label %bb175
bb174:
  %t495 = load ptr, ptr %l0, !tbaa !29
  %t496 = load i64, ptr %l7, !tbaa !24
  %t498 = sub i64 %t496, 1
  %t501 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t495, i64 %t498)
  store i32 %t501, ptr %l251
  br label %bb176
bb175:
  store i1 false, ptr %l247, !tbaa !21
  br label %bb177
bb176:
  %t502 = load i32, ptr %l251, !range !{i32 0, i32 114}
  %t504 = trunc i64 37 to i32
  %t505 = icmp eq i32 %t502, %t504
  store i1 %t505, ptr %l247, !tbaa !21
  br label %bb177
bb177:
  %t507 = load i1, ptr %l247, !tbaa !21
  br i1 %t507, label %bb178, label %bb179
bb178:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d28, i32 0, i32 1) }, ptr %l254, !tbaa !27
  %t508 = load { i64, ptr }, ptr %l254, !tbaa !27
  store { i64, ptr } %t508, ptr %rv
  br label %ret
bb179:
  br label %bb180
bb180:
  br label %bb181
bb181:
  %t509 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t511 = trunc i64 109 to i32
  %t512 = icmp eq i32 %t509, %t511
  br i1 %t512, label %bb182, label %bb183
bb182:
  %t514 = load ptr, ptr %l0, !tbaa !29
  %t515 = load ptr, ptr %l0, !tbaa !29
  %t517 = getelementptr %"compiler/fmt:formatter", ptr %t515, i32 0, i32 23
  %t518 = load { i64, ptr }, ptr %t517, !tbaa !27
  store { i64, ptr } %t518, ptr %l259, !tbaa !27
  %t519 = load i64, ptr %l1, !tbaa !24
  %t521 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t522 = load ptr, ptr %t521, !tbaa !27
  %t523 = getelementptr i64, ptr %t522, i64 %t519
  %t524 = load i64, ptr %t523, !tbaa !34
  %t527 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eparams(ptr %v0, ptr %t514, i64 %t524)
  store i64 %t527, ptr %l262
  br label %bb184
bb183:
  br label %bb192
bb184:
  %t528 = load i64, ptr %l262, !tbaa !24
  store i64 %t528, ptr %l8, !tbaa !24
  %t529 = load i64, ptr %l8, !tbaa !24
  %t531 = icmp eq i64 %t529, 1
  br i1 %t531, label %bb185, label %bb186
bb185:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l265, !tbaa !27
  %t533 = load { i64, ptr }, ptr %l265, !tbaa !27
  store { i64, ptr } %t533, ptr %rv
  br label %ret
bb186:
  br label %bb187
bb187:
  %t534 = load i64, ptr %l8, !tbaa !24
  %t536 = icmp eq i64 %t534, 2
  br i1 %t536, label %bb188, label %bb189
bb188:
  %t538 = load ptr, ptr %l0, !tbaa !29
  %t539 = load i64, ptr %l2, !tbaa !24
  %t542 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %t538, i64 %t539)
  store { i64, ptr } %t542, ptr %l270
  br label %bb190
bb189:
  br label %bb191
bb190:
  %t543 = load { i64, ptr }, ptr %l270, !tbaa !27
  store { i64, ptr } %t543, ptr %rv
  br label %ret
bb191:
  br label %bb192
bb192:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t545 = load i64, ptr %l1, !tbaa !24
  %t548 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eoperandEnd(ptr %v0, ptr %t544, i64 %t545)
  store i1 %t548, ptr %l273
  br label %bb193
bb193:
  %t549 = load i1, ptr %l273, !tbaa !21
  br i1 %t549, label %bb194, label %bb195
bb194:
  %t550 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t552 = trunc i64 92 to i32
  %t553 = icmp eq i32 %t550, %t552
  %t555 = xor i1 %t553, true
  store i1 %t555, ptr %l274, !tbaa !21
  br label %bb196
bb195:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb196
bb196:
  %t557 = load i1, ptr %l274, !tbaa !21
  br i1 %t557, label %bb197, label %bb198
bb197:
  %t558 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t560 = trunc i64 93 to i32
  %t561 = icmp eq i32 %t558, %t560
  %t563 = xor i1 %t561, true
  store i1 %t563, ptr %l278, !tbaa !21
  br label %bb199
bb198:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb199
bb199:
  %t565 = load i1, ptr %l278, !tbaa !21
  br i1 %t565, label %bb200, label %bb201
bb200:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l282, !tbaa !27
  %t566 = load { i64, ptr }, ptr %l282, !tbaa !27
  store { i64, ptr } %t566, ptr %rv
  br label %ret
bb201:
  br label %bb202
bb202:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, ptr %l283, !tbaa !27
  %t567 = load { i64, ptr }, ptr %l283, !tbaa !27
  store { i64, ptr } %t567, ptr %rv
  br label %ret
bb203:
  %t568 = load i32, ptr %l5, !range !{i32 0, i32 114}
  %t570 = trunc i64 110 to i32
  %t571 = icmp eq i32 %t568, %t570
  br i1 %t571, label %bb204, label %bb205
bb204:
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/fmt:formatter", ptr %t573, i32 0, i32 3
  %t576 = load { i64, ptr }, ptr %t575, !tbaa !27
  store { i64, ptr } %t576, ptr %l287, !tbaa !27
  %t577 = load i64, ptr %l2, !tbaa !24
  %t579 = getelementptr { i64, ptr }, ptr %l287, i32 0, i32 1
  %t580 = load ptr, ptr %t579, !tbaa !27
  %t581 = getelementptr i1, ptr %t580, i64 %t577
  %t582 = load i1, ptr %t581, !tbaa !31
  br i1 %t582, label %bb206, label %bb207
bb205:
  br label %bb229
bb206:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, ptr %l290, !tbaa !27
  %t584 = load { i64, ptr }, ptr %l290, !tbaa !27
  store { i64, ptr } %t584, ptr %rv
  br label %ret
bb207:
  br label %bb208
bb208:
  %t585 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t587 = trunc i64 113 to i32
  %t588 = icmp eq i32 %t585, %t587
  br i1 %t588, label %bb209, label %bb210
bb209:
  %t590 = load ptr, ptr %l0, !tbaa !29
  %t591 = load i64, ptr %l2, !tbaa !24
  %t594 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2easWritten(ptr %v0, ptr %v1, ptr %t590, i64 %t591)
  store { i64, ptr } %t594, ptr %l295
  br label %bb211
bb210:
  br label %bb212
bb211:
  %t595 = load { i64, ptr }, ptr %l295, !tbaa !27
  store { i64, ptr } %t595, ptr %rv
  br label %ret
bb212:
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t597 = load i64, ptr %l1, !tbaa !24
  %t600 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eoperandEnd(ptr %v0, ptr %t596, i64 %t597)
  store i1 %t600, ptr %l298
  br label %bb213
bb213:
  %t601 = load i1, ptr %l298, !tbaa !21
  br i1 %t601, label %bb214, label %bb215
bb214:
  %t602 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t604 = trunc i64 92 to i32
  %t605 = icmp eq i32 %t602, %t604
  %t607 = xor i1 %t605, true
  store i1 %t607, ptr %l299, !tbaa !21
  br label %bb216
bb215:
  store i1 false, ptr %l299, !tbaa !21
  br label %bb216
bb216:
  %t609 = load i1, ptr %l299, !tbaa !21
  br i1 %t609, label %bb217, label %bb218
bb217:
  %t610 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t612 = trunc i64 93 to i32
  %t613 = icmp eq i32 %t610, %t612
  %t615 = xor i1 %t613, true
  store i1 %t615, ptr %l303, !tbaa !21
  br label %bb219
bb218:
  store i1 false, ptr %l303, !tbaa !21
  br label %bb219
bb219:
  %t617 = load i1, ptr %l303, !tbaa !21
  br i1 %t617, label %bb220, label %bb221
bb220:
  %t618 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t620 = trunc i64 2 to i32
  %t621 = icmp eq i32 %t618, %t620
  %t623 = xor i1 %t621, true
  store i1 %t623, ptr %l307, !tbaa !21
  br label %bb222
bb221:
  store i1 false, ptr %l307, !tbaa !21
  br label %bb222
bb222:
  %t625 = load i1, ptr %l307, !tbaa !21
  br i1 %t625, label %bb223, label %bb224
bb223:
  %t626 = load i32, ptr %l4, !range !{i32 0, i32 114}
  %t628 = trunc i64 3 to i32
  %t629 = icmp eq i32 %t626, %t628
  %t631 = xor i1 %t629, true
  store i1 %t631, ptr %l311, !tbaa !21
  br label %bb225
bb224:
  store i1 false, ptr %l311, !tbaa !21
  br label %bb225
bb225:
  %t633 = load i1, ptr %l311, !tbaa !21
  br i1 %t633, label %bb226, label %bb227
bb226:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l315, !tbaa !27
  %t634 = load { i64, ptr }, ptr %l315, !tbaa !27
  store { i64, ptr } %t634, ptr %rv
  br label %ret
bb227:
  br label %bb228
bb228:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l316, !tbaa !27
  %t635 = load { i64, ptr }, ptr %l316, !tbaa !27
  store { i64, ptr } %t635, ptr %rv
  br label %ret
bb229:
  %t636 = load ptr, ptr %l0, !tbaa !29
  %t638 = getelementptr %"compiler/fmt:formatter", ptr %t636, i32 0, i32 2
  %t639 = load { i64, ptr }, ptr %t638, !tbaa !27
  store { i64, ptr } %t639, ptr %l318, !tbaa !27
  %t640 = load i64, ptr %l2, !tbaa !24
  %t642 = getelementptr { i64, ptr }, ptr %l318, i32 0, i32 1
  %t643 = load ptr, ptr %t642, !tbaa !27
  %t644 = getelementptr i64, ptr %t643, i64 %t640
  %t645 = load i64, ptr %t644, !tbaa !34
  %t647 = icmp sgt i64 %t645, 0
  br i1 %t647, label %bb230, label %bb231
bb230:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l322, !tbaa !27
  %t649 = load { i64, ptr }, ptr %l322, !tbaa !27
  store { i64, ptr } %t649, ptr %rv
  br label %ret
bb231:
  br label %bb232
bb232:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, ptr %l323, !tbaa !27
  %t650 = load { i64, ptr }, ptr %l323, !tbaa !27
  store { i64, ptr } %t650, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etokText(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l8 = alloca i64
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/fmt:formatter", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l5, !tbaa !27
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/token:Token", ptr %t12, i64 %t9
  %t14 = getelementptr %"compiler/token:Token", ptr %t13, i32 0, i32 2
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = sext i32 %t15 to i64
  store i64 %t17, ptr %l8, !tbaa !24
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/fmt:formatter", ptr %t18, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = load i64, ptr %l1, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr %"compiler/token:Token", ptr %t25, i64 %t22
  %t27 = getelementptr %"compiler/token:Token", ptr %t26, i32 0, i32 3
  %t28 = load i32, ptr %t27, !tbaa !23
  %t30 = sext i32 %t28 to i64
  store i64 %t30, ptr %l13, !tbaa !24
  %t31 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l14, !tbaa !24
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = icmp sge i64 %t33, 0
  br i1 %t34, label %bb1, label %bb2
bb1:
  %t36 = load i64, ptr %l8, !tbaa !24
  %t37 = load i64, ptr %l13, !tbaa !24
  %t38 = icmp sle i64 %t36, %t37
  br i1 %t38, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_bcfa8bcb194c4d3c_b6a77a733196e698)
  unreachable
bb3:
  %t40 = load i64, ptr %l13, !tbaa !24
  %t41 = load i64, ptr %l14, !tbaa !24
  %t42 = icmp sle i64 %t40, %t41
  br i1 %t42, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_bcfa8bcb194c4d3c_b6a77a733196e698)
  unreachable
bb5:
  %t44 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l13, !tbaa !24
  %t48 = getelementptr i8, ptr %t45, i64 %t46
  %t49 = sub i64 %t47, %t46
  %t50 = insertvalue { i64, ptr } undef, i64 %t49, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t48, 1
  store { i64, ptr } %t51, ptr %rv
  br label %ret
bb6:
  call void @__olang_check_failed(ptr @olang_loc_bcfa8bcb194c4d3c_b6a77a733196e698)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etoken(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, ptr }
  %l8 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i1
  %l30 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l45 = alloca i1
  %l47 = alloca { i64, ptr }
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l58 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l67 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca i64
  %l75 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 7
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i64, ptr %l8, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/fmt:formatter", ptr %t9, i32 0, i32 20
  %t12 = load i1, ptr %t11, !tbaa !21
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i64, ptr %l1, !tbaa !24
  %t20 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2elevel(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l14
  br label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/fmt:formatter", ptr %t21, i32 0, i32 28
  %t24 = load i64, ptr %t23, !tbaa !24
  %t26 = icmp eq i64 %t24, 2
  br i1 %t26, label %bb11, label %bb12
bb4:
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ebegin(ptr %v0, ptr %t29, i64 %t28)
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = call i1 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2eclosing(ptr %v0, ptr %t33, i64 %t34)
  store i1 %t37, ptr %l19
  br label %bb6
bb6:
  %t38 = load i1, ptr %l19, !tbaa !21
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2edropBlank(ptr %v0, ptr %t39)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb20
bb11:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/fmt:formatter", ptr %t41, i32 0, i32 19
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %t43, i8 32)
  br label %bb13
bb12:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/fmt:formatter", ptr %t45, i32 0, i32 28
  %t48 = load i64, ptr %t47, !tbaa !24
  %t50 = icmp eq i64 %t48, 1
  br i1 %t50, label %bb14, label %bb15
bb13:
  br label %bb19
bb14:
  store %olang.scope zeroinitializer, ptr %s6
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/fmt:formatter", ptr %t52, i32 0, i32 19
  store ptr %t54, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/fmt:formatter", ptr %t56, i32 0, i32 29
  %t59 = load i64, ptr %t58, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  %t61 = load i64, ptr %l1, !tbaa !24
  %t66 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2espace(ptr %v0, ptr %s6, ptr %t55, i64 %t59, i64 %t60, i64 %t61)
  store { i64, ptr } %t66, ptr %l36
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t67 = load ptr, ptr %l30, !tbaa !29
  %t68 = load { i64, ptr }, ptr %l36, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s6, ptr %t67, { i64, ptr } %t68)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s6)
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l2, !tbaa !24
  %t73 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etokText(ptr %v0, ptr %v0, ptr %t69, i64 %t70)
  store { i64, ptr } %t73, ptr %l39
  br label %bb21
bb21:
  %t74 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t74, ptr %l4, !tbaa !27
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/fmt:formatter", ptr %t75, i32 0, i32 4
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l41, !tbaa !27
  %t79 = load i64, ptr %l2, !tbaa !24
  %t81 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t82 = load ptr, ptr %t81, !tbaa !27
  %t83 = getelementptr i64, ptr %t82, i64 %t79
  %t84 = load i64, ptr %t83, !tbaa !34
  %t86 = icmp sgt i64 %t84, 0
  br i1 %t86, label %bb22, label %bb23
bb22:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/fmt:formatter", ptr %t88, i32 0, i32 4
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l47, !tbaa !27
  %t92 = load i64, ptr %l2, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr i64, ptr %t95, i64 %t92
  %t97 = load i64, ptr %t96, !tbaa !34
  %t98 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t98, 0
  %t103 = icmp slt i64 %t97, %t100
  store i1 %t103, ptr %l45, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb24
bb24:
  %t105 = load i1, ptr %l45, !tbaa !21
  br i1 %t105, label %bb25, label %bb26
bb25:
  %t106 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t106, ptr %l54, !tbaa !27
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/fmt:formatter", ptr %t107, i32 0, i32 4
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l56, !tbaa !27
  %t111 = load i64, ptr %l2, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  %t116 = load i64, ptr %t115, !tbaa !34
  store i64 %t116, ptr %l58, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t117, 0
  store i64 %t120, ptr %l61, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l62, !tbaa !24
  %t123 = load i64, ptr %l58, !tbaa !24
  %t124 = icmp sge i64 %t123, 0
  br i1 %t124, label %bb27, label %bb28
bb26:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb34
bb27:
  %t126 = load i64, ptr %l58, !tbaa !24
  %t127 = load i64, ptr %l61, !tbaa !24
  %t128 = icmp sle i64 %t126, %t127
  br i1 %t128, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_c72ec7e8dfc94dc_53a73ed146206d80)
  unreachable
bb29:
  %t130 = load i64, ptr %l61, !tbaa !24
  %t131 = load i64, ptr %l62, !tbaa !24
  %t132 = icmp sle i64 %t130, %t131
  br i1 %t132, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_c72ec7e8dfc94dc_53a73ed146206d80)
  unreachable
bb31:
  %t134 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l58, !tbaa !24
  %t137 = load i64, ptr %l61, !tbaa !24
  %t138 = getelementptr i8, ptr %t135, i64 %t136
  %t139 = sub i64 %t137, %t136
  %t140 = insertvalue { i64, ptr } undef, i64 %t139, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t138, 1
  %t143 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t141, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t143, ptr %l67
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_c72ec7e8dfc94dc_53a73ed146206d80)
  unreachable
bb33:
  %t144 = load i1, ptr %l67, !tbaa !21
  store i1 %t144, ptr %l53, !tbaa !21
  br label %bb34
bb34:
  %t145 = load i1, ptr %l53, !tbaa !21
  br i1 %t145, label %bb35, label %bb36
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/fmt:formatter", ptr %t146, i32 0, i32 19
  store ptr %t148, ptr %l69, !tbaa !29
  %t149 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t149, ptr %l70, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/fmt:formatter", ptr %t150, i32 0, i32 4
  %t153 = load { i64, ptr }, ptr %t152, !tbaa !27
  store { i64, ptr } %t153, ptr %l72, !tbaa !27
  %t154 = load i64, ptr %l2, !tbaa !24
  %t156 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t157 = load ptr, ptr %t156, !tbaa !27
  %t158 = getelementptr i64, ptr %t157, i64 %t154
  %t159 = load i64, ptr %t158, !tbaa !34
  store i64 %t159, ptr %l74, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 0
  store i64 %t161, ptr %l75, !tbaa !24
  %t162 = icmp sge i64 0, 0
  br i1 %t162, label %bb37, label %bb38
bb36:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/fmt:formatter", ptr %t164, i32 0, i32 19
  %t167 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t166, { i64, ptr } %t167)
  br label %bb45
bb37:
  %t170 = load i64, ptr %l74, !tbaa !24
  %t171 = icmp sle i64 0, %t170
  br i1 %t171, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_8b20359aae87aa49_981ed0beb1f6b3dd)
  unreachable
bb39:
  %t173 = load i64, ptr %l74, !tbaa !24
  %t174 = load i64, ptr %l75, !tbaa !24
  %t175 = icmp sle i64 %t173, %t174
  br i1 %t175, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_8b20359aae87aa49_981ed0beb1f6b3dd)
  unreachable
bb41:
  %t177 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = load i64, ptr %l74, !tbaa !24
  %t180 = getelementptr i8, ptr %t178, i64 0
  %t181 = sub i64 %t179, 0
  %t182 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t184 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v0, ptr %t184, { i64, ptr } %t183)
  br label %bb43
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8b20359aae87aa49_981ed0beb1f6b3dd)
  unreachable
bb43:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/fmt:formatter", ptr %t186, i32 0, i32 19
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s7, ptr %t188, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) })
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s7)
  br label %bb46
bb45:
  br label %bb46
bb46:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/fmt:formatter", ptr %t190, i32 0, i32 28
  store i64 1, ptr %t192, !tbaa !24
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load i64, ptr %l2, !tbaa !24
  %t197 = getelementptr %"compiler/fmt:formatter", ptr %t193, i32 0, i32 29
  store i64 %t194, ptr %t197, !tbaa !24
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etrack(ptr %v0, ptr %t198, i64 %t199)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2etrack(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
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
  %l20 = alloca i32
  %l22 = alloca { i64, ptr }
  %l26 = alloca i1
  %l31 = alloca i64
  %l34 = alloca i64
  %l54 = alloca i64
  %l75 = alloca i64
  %l78 = alloca i1
  %l83 = alloca i64
  %l99 = alloca i1
  %l109 = alloca { i64, ptr }
  %l115 = alloca i64
  %l118 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call i32 @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ekind(ptr %v0, ptr %t1, i64 %t2)
  store i32 %t5, ptr %l20
  br label %bb1
bb1:
  %t6 = load i32, ptr %l20, !range !{i32 0, i32 114}
  store i32 %t6, ptr %l2
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/fmt:formatter", ptr %t7, i32 0, i32 4
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l22, !tbaa !27
  %t11 = load i64, ptr %l1, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr i64, ptr %t14, i64 %t11
  %t16 = load i64, ptr %t15, !tbaa !34
  store i64 %t16, ptr %l3, !tbaa !24
  %t18 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t20 = call i1 @compiler_2ffmt_2eisCloser(i32 %t18)
  store i1 %t20, ptr %l26
  br label %bb2
bb2:
  %t21 = load i1, ptr %l26, !tbaa !21
  br i1 %t21, label %bb3, label %bb4
bb3:
  store i64 1, ptr %l3, !tbaa !24
  br label %bb5
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  store i64 %t22, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sgt i64 %t24, %t25
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb11
bb8:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = sub i64 %t42, 1
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sdiv i64 %t44, %t45
  store i64 %t48, ptr %l34, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb10
bb10:
  %t50 = load i64, ptr %l34, !tbaa !24
  store i64 %t50, ptr %l31, !tbaa !24
  br label %bb11
bb11:
  %t51 = load i64, ptr %l31, !tbaa !24
  store i64 %t51, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb13, label %bb14
bb13:
  br label %bb24
bb14:
  br label %bb15
bb15:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = mul i64 %t61, %t62
  %t68 = add i64 %t60, %t65
  store i64 %t68, ptr %l9, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/fmt:formatter", ptr %t70, i32 0, i32 9
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l54
  br label %bb16
bb16:
  %t75 = load i64, ptr %l54, !tbaa !24
  store i64 %t75, ptr %l10, !tbaa !24
  %t76 = load i64, ptr %l10, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb17, label %bb18
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/fmt:formatter", ptr %t80, i32 0, i32 9
  %t83 = load i64, ptr %l10, !tbaa !24
  %t85 = sub i64 %t83, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t82, i64 %t85)
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/fmt:formatter", ptr %t88, i32 0, i32 10
  %t91 = load i64, ptr %l10, !tbaa !24
  %t93 = sub i64 %t91, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t90, i64 %t93)
  br label %bb20
bb20:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/fmt:formatter", ptr %t96, i32 0, i32 11
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = sub i64 %t99, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t98, i64 %t101)
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t106 = add i64 %t104, 1
  store i64 %t106, ptr %l8, !tbaa !24
  br label %bb12
bb24:
  %t108 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t110 = trunc i64 112 to i32
  %t111 = icmp eq i32 %t108, %t110
  br i1 %t111, label %bb25, label %bb26
bb25:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/fmt:formatter", ptr %t113, i32 0, i32 9
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t115)
  store i64 %t117, ptr %l75
  br label %bb27
bb26:
  %t118 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t120 = trunc i64 108 to i32
  %t121 = icmp eq i32 %t118, %t120
  br i1 %t121, label %bb37, label %bb38
bb27:
  %t123 = load i64, ptr %l75, !tbaa !24
  store i64 %t123, ptr %l11, !tbaa !24
  %t124 = load i64, ptr %l11, !tbaa !24
  %t126 = icmp eq i64 %t124, 0
  br i1 %t126, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb31
bb29:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/fmt:formatter", ptr %t128, i32 0, i32 9
  %t131 = load i64, ptr %l11, !tbaa !24
  %t133 = sub i64 %t131, 1
  %t136 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t130, i64 %t133)
  store i64 %t136, ptr %l83
  br label %bb30
bb30:
  %t137 = load i64, ptr %l83, !tbaa !24
  %t138 = icmp eq i64 %t137, 0
  store i1 %t138, ptr %l78, !tbaa !21
  br label %bb31
bb31:
  %t140 = load i1, ptr %l78, !tbaa !21
  br i1 %t140, label %bb32, label %bb33
bb32:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/fmt:formatter", ptr %t142, i32 0, i32 22
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = add i64 %t145, 1
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/fmt:formatter", ptr %t148, i32 0, i32 22
  %t151 = load i64, ptr %t150, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2epush(ptr %v0, ptr %t141, i64 0, i64 %t147, i64 %t151)
  br label %bb34
bb33:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/fmt:formatter", ptr %t156, i32 0, i32 21
  %t159 = load i64, ptr %t158, !tbaa !24
  %t161 = add i64 %t159, 1
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/fmt:formatter", ptr %t162, i32 0, i32 21
  %t165 = load i64, ptr %t164, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2epush(ptr %v0, ptr %t155, i64 0, i64 %t161, i64 %t165)
  br label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb36
bb36:
  br label %bb57
bb37:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb39
bb38:
  %t169 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t171 = trunc i64 110 to i32
  %t172 = icmp eq i32 %t169, %t171
  store i1 %t172, ptr %l99, !tbaa !21
  br label %bb39
bb39:
  %t174 = load i1, ptr %l99, !tbaa !21
  br i1 %t174, label %bb40, label %bb41
bb40:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t178 = getelementptr %"compiler/fmt:formatter", ptr %t176, i32 0, i32 21
  %t179 = load i64, ptr %t178, !tbaa !24
  %t181 = add i64 %t179, 1
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/fmt:formatter", ptr %t182, i32 0, i32 21
  %t185 = load i64, ptr %t184, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2epush(ptr %v0, ptr %t175, i64 1, i64 %t181, i64 %t185)
  br label %bb42
bb41:
  store i64 0, ptr %l12, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/fmt:formatter", ptr %t189, i32 0, i32 2
  %t192 = load { i64, ptr }, ptr %t191, !tbaa !27
  store { i64, ptr } %t192, ptr %l109, !tbaa !27
  %t193 = load i64, ptr %l1, !tbaa !24
  %t195 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t196 = load ptr, ptr %t195, !tbaa !27
  %t197 = getelementptr i64, ptr %t196, i64 %t193
  %t198 = load i64, ptr %t197, !tbaa !34
  store i64 %t198, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t200 = load i64, ptr %l13, !tbaa !24
  %t201 = load i64, ptr %l12, !tbaa !24
  %t204 = icmp sgt i64 %t200, %t201
  br i1 %t204, label %bb43, label %bb44
bb42:
  br label %bb56
bb43:
  %t206 = load i64, ptr %l14, !tbaa !24
  %t208 = icmp sgt i64 %t206, 0
  br i1 %t208, label %bb45, label %bb46
bb44:
  store i64 0, ptr %l115, !tbaa !24
  br label %bb48
bb45:
  %t210 = load i64, ptr %l13, !tbaa !24
  %t211 = load i64, ptr %l12, !tbaa !24
  %t214 = sub i64 %t210, %t211
  %t215 = load i64, ptr %l14, !tbaa !24
  %t218 = add i64 %t214, %t215
  %t220 = sub i64 %t218, 1
  %t221 = load i64, ptr %l14, !tbaa !24
  %t224 = sdiv i64 %t220, %t221
  store i64 %t224, ptr %l118, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l118, !tbaa !24
  br label %bb47
bb47:
  %t226 = load i64, ptr %l118, !tbaa !24
  store i64 %t226, ptr %l115, !tbaa !24
  br label %bb48
bb48:
  %t227 = load i64, ptr %l115, !tbaa !24
  store i64 %t227, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb49
bb49:
  %t228 = load i64, ptr %l16, !tbaa !24
  %t229 = load i64, ptr %l15, !tbaa !24
  %t232 = icmp slt i64 %t228, %t229
  %t234 = xor i1 %t232, true
  br i1 %t234, label %bb50, label %bb51
bb50:
  br label %bb55
bb51:
  br label %bb52
bb52:
  %t236 = load i64, ptr %l12, !tbaa !24
  %t237 = load i64, ptr %l16, !tbaa !24
  %t238 = load i64, ptr %l14, !tbaa !24
  %t241 = mul i64 %t237, %t238
  %t244 = add i64 %t236, %t241
  store i64 %t244, ptr %l17, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l0, !tbaa !29
  %t249 = getelementptr %"compiler/fmt:formatter", ptr %t247, i32 0, i32 21
  %t250 = load i64, ptr %t249, !tbaa !24
  %t252 = add i64 %t250, 1
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/fmt:formatter", ptr %t253, i32 0, i32 21
  %t256 = load i64, ptr %t255, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2epush(ptr %v0, ptr %t246, i64 1, i64 %t252, i64 %t256)
  br label %bb53
bb53:
  br label %bb54
bb54:
  %t260 = load i64, ptr %l16, !tbaa !24
  %t262 = add i64 %t260, 1
  store i64 %t262, ptr %l16, !tbaa !24
  br label %bb49
bb55:
  br label %bb56
bb56:
  br label %bb57
bb57:
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ewrite(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
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
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l20 = alloca i64
  %l23 = alloca i1
  %l28 = alloca i64
  %l41 = alloca i1
  %l45 = alloca i64
  %l47 = alloca i1
  %l51 = alloca i64
  %l53 = alloca i1
  %l57 = alloca i64
  %l61 = alloca i64
  %l63 = alloca i1
  %l67 = alloca i1
  %l73 = alloca i64
  %l74 = alloca i64
  %l78 = alloca i64
  %l79 = alloca i64
  %l83 = alloca i64
  %l101 = alloca i64
  %l104 = alloca i64
  %l131 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 19
  %t5 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %s0, ptr %t3)
  store { i64, ptr } %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  %t7 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t7, ptr %l17
  br label %bb2
bb2:
  %t8 = load %"std/prelude/text:StringBuilder", ptr %l17
  store %"std/prelude/text:StringBuilder" %t8, ptr %l2
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/fmt:formatter", ptr %t9, i32 0, i32 12
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l20
  br label %bb3
bb3:
  %t14 = load i64, ptr %l20, !tbaa !24
  store i64 %t14, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/fmt:formatter", ptr %t19, i32 0, i32 12
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = sub i64 %t22, 1
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t21, i64 %t24)
  store i64 %t27, ptr %l28
  br label %bb7
bb6:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb8
bb7:
  %t28 = load i64, ptr %l28, !tbaa !24
  %t29 = icmp eq i64 %t28, 1
  store i1 %t29, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l23, !tbaa !21
  %t32 = xor i1 %t31, true
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t34, 1
  store i64 %t36, ptr %l3, !tbaa !24
  br label %bb12
bb12:
  br label %bb4
bb13:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb14
bb14:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb15, label %bb16
bb15:
  br label %bb64
bb16:
  br label %bb17
bb17:
  %t46 = load i64, ptr %l4, !tbaa !24
  store i64 %t46, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb18
bb18:
  %t48 = load i64, ptr %l5, !tbaa !24
  %t49 = load i64, ptr %l3, !tbaa !24
  %t52 = icmp slt i64 %t48, %t49
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/fmt:formatter", ptr %t54, i32 0, i32 12
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t56, i64 %t57)
  store i64 %t60, ptr %l45
  br label %bb21
bb20:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb22
bb21:
  %t61 = load i64, ptr %l45, !tbaa !24
  %t62 = icmp eq i64 %t61, 0
  store i1 %t62, ptr %l41, !tbaa !21
  br label %bb22
bb22:
  %t64 = load i1, ptr %l41, !tbaa !21
  br i1 %t64, label %bb23, label %bb24
bb23:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/fmt:formatter", ptr %t65, i32 0, i32 16
  %t68 = load i64, ptr %l5, !tbaa !24
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t67, i64 %t68)
  store i64 %t71, ptr %l51
  br label %bb25
bb24:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb26
bb25:
  %t72 = load i64, ptr %l51, !tbaa !24
  %t73 = icmp sge i64 %t72, 0
  store i1 %t73, ptr %l47, !tbaa !21
  br label %bb26
bb26:
  %t75 = load i1, ptr %l47, !tbaa !21
  br i1 %t75, label %bb27, label %bb28
bb27:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/fmt:formatter", ptr %t76, i32 0, i32 15
  %t79 = load i64, ptr %l5, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t82, ptr %l57
  br label %bb29
bb28:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb31
bb29:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/fmt:formatter", ptr %t83, i32 0, i32 14
  %t86 = load i64, ptr %l5, !tbaa !24
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t85, i64 %t86)
  store i64 %t89, ptr %l61
  br label %bb30
bb30:
  %t90 = load i64, ptr %l57, !tbaa !24
  %t91 = load i64, ptr %l61, !tbaa !24
  %t92 = icmp sgt i64 %t90, %t91
  store i1 %t92, ptr %l53, !tbaa !21
  br label %bb31
bb31:
  %t94 = load i1, ptr %l53, !tbaa !21
  br i1 %t94, label %bb32, label %bb33
bb32:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/fmt:formatter", ptr %t95, i32 0, i32 18
  %t98 = load i64, ptr %l5, !tbaa !24
  %t101 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t97, i64 %t98)
  store i1 %t101, ptr %l67
  br label %bb34
bb33:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb35
bb34:
  %t102 = load i1, ptr %l67, !tbaa !21
  %t103 = xor i1 %t102, true
  store i1 %t103, ptr %l63, !tbaa !21
  br label %bb35
bb35:
  %t105 = load i1, ptr %l63, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb36, label %bb37
bb36:
  br label %bb46
bb37:
  br label %bb38
bb38:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/fmt:formatter", ptr %t108, i32 0, i32 13
  %t111 = load i64, ptr %l5, !tbaa !24
  %t114 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t110, i64 %t111)
  store i64 %t114, ptr %l73
  br label %bb39
bb39:
  %t115 = load i64, ptr %l73, !tbaa !24
  %t116 = mul i64 %t115, 4
  store i64 %t116, ptr %l74, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/fmt:formatter", ptr %t117, i32 0, i32 15
  %t120 = load i64, ptr %l5, !tbaa !24
  %t123 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t119, i64 %t120)
  store i64 %t123, ptr %l78
  br label %bb40
bb40:
  %t124 = load i64, ptr %l74, !tbaa !24
  %t125 = load i64, ptr %l78, !tbaa !24
  %t126 = add i64 %t124, %t125
  store i64 %t126, ptr %l79, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/fmt:formatter", ptr %t127, i32 0, i32 14
  %t130 = load i64, ptr %l5, !tbaa !24
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t129, i64 %t130)
  store i64 %t133, ptr %l83
  br label %bb41
bb41:
  %t134 = load i64, ptr %l79, !tbaa !24
  %t135 = load i64, ptr %l83, !tbaa !24
  %t136 = sub i64 %t134, %t135
  store i64 %t136, ptr %l7, !tbaa !24
  %t138 = load i64, ptr %l7, !tbaa !24
  %t139 = load i64, ptr %l6, !tbaa !24
  %t142 = icmp sgt i64 %t138, %t139
  br i1 %t142, label %bb42, label %bb43
bb42:
  %t144 = load i64, ptr %l7, !tbaa !24
  store i64 %t144, ptr %l6, !tbaa !24
  br label %bb44
bb43:
  br label %bb44
bb44:
  %t146 = load i64, ptr %l5, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l5, !tbaa !24
  br label %bb45
bb45:
  br label %bb18
bb46:
  %t150 = load i64, ptr %l5, !tbaa !24
  %t151 = load i64, ptr %l4, !tbaa !24
  %t154 = icmp eq i64 %t150, %t151
  br i1 %t154, label %bb47, label %bb48
bb47:
  %t156 = load i64, ptr %l4, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l5, !tbaa !24
  br label %bb49
bb48:
  br label %bb49
bb49:
  %t160 = load i64, ptr %l4, !tbaa !24
  store i64 %t160, ptr %l8, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  store i64 %t162, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t164 = load i64, ptr %l9, !tbaa !24
  %t165 = load i64, ptr %l8, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb50, label %bb51
bb50:
  %t170 = load i64, ptr %l10, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb52, label %bb53
bb51:
  store i64 0, ptr %l101, !tbaa !24
  br label %bb55
bb52:
  %t174 = load i64, ptr %l9, !tbaa !24
  %t175 = load i64, ptr %l8, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l10, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l10, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l104, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l104, !tbaa !24
  br label %bb54
bb54:
  %t190 = load i64, ptr %l104, !tbaa !24
  store i64 %t190, ptr %l101, !tbaa !24
  br label %bb55
bb55:
  %t191 = load i64, ptr %l101, !tbaa !24
  store i64 %t191, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb56
bb56:
  %t192 = load i64, ptr %l12, !tbaa !24
  %t193 = load i64, ptr %l11, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb57, label %bb58
bb57:
  br label %bb62
bb58:
  br label %bb59
bb59:
  %t200 = load i64, ptr %l8, !tbaa !24
  %t201 = load i64, ptr %l12, !tbaa !24
  %t202 = load i64, ptr %l10, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t211 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t213 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ewriteLine(ptr %v0, ptr %s0, ptr %s0, ptr %t210, ptr %l2, { i64, ptr } %t211, i64 %t208, i64 %t213)
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t219 = load i64, ptr %l12, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l12, !tbaa !24
  br label %bb56
bb62:
  %t223 = load i64, ptr %l5, !tbaa !24
  store i64 %t223, ptr %l4, !tbaa !24
  br label %bb63
bb63:
  br label %bb14
bb64:
  %t226 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t226, ptr %l131
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s0)
  %t227 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t227, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aformatter_2ewriteLine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
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
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l23 = alloca i64
  %l26 = alloca { i64, ptr }
  %l30 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l43 = alloca i1
  %l47 = alloca i64
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l85 = alloca i64
  %l93 = alloca i64
  %l100 = alloca i64
  %l109 = alloca i64
  %l112 = alloca i64
  %l133 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l139 = alloca i64
  %l143 = alloca i64
  %l144 = alloca i64
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/fmt:formatter", ptr %t1, i32 0, i32 12
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i64 %t7, ptr %l23
  br label %bb1
bb1:
  %t8 = load i64, ptr %l23, !tbaa !24
  %t9 = icmp ne i64 %t8, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t11, i8 10)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  store { i64, ptr } %a2, ptr %l26, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/fmt:formatter", ptr %t14, i32 0, i32 14
  %t17 = load i64, ptr %l3, !tbaa !24
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t16, i64 %t17)
  store i64 %t20, ptr %l30
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/fmt:formatter", ptr %t21, i32 0, i32 15
  %t24 = load i64, ptr %l3, !tbaa !24
  %t27 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t24)
  store i64 %t27, ptr %l34
  br label %bb7
bb7:
  %t28 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l35, !tbaa !24
  %t30 = load i64, ptr %l30, !tbaa !24
  %t31 = icmp sge i64 %t30, 0
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = load i64, ptr %l30, !tbaa !24
  %t34 = load i64, ptr %l34, !tbaa !24
  %t35 = icmp sle i64 %t33, %t34
  br i1 %t35, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_1f023a932aff5454_c8fa03de0f87b198)
  unreachable
bb10:
  %t37 = load i64, ptr %l34, !tbaa !24
  %t38 = load i64, ptr %l35, !tbaa !24
  %t39 = icmp sle i64 %t37, %t38
  br i1 %t39, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_1f023a932aff5454_c8fa03de0f87b198)
  unreachable
bb12:
  %t41 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = load i64, ptr %l30, !tbaa !24
  %t44 = load i64, ptr %l34, !tbaa !24
  %t45 = getelementptr i8, ptr %t42, i64 %t43
  %t46 = sub i64 %t44, %t43
  %t47 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t45, 1
  store { i64, ptr } %t48, ptr %l5, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  %t54 = icmp sgt i64 %t52, 0
  br i1 %t54, label %bb14, label %bb15
bb13:
  call void @__olang_check_failed(ptr @olang_loc_1f023a932aff5454_c8fa03de0f87b198)
  unreachable
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb17
bb15:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/fmt:formatter", ptr %t56, i32 0, i32 16
  %t59 = load i64, ptr %l3, !tbaa !24
  %t62 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t58, i64 %t59)
  store i64 %t62, ptr %l47
  br label %bb16
bb16:
  %t63 = load i64, ptr %l47, !tbaa !24
  %t64 = icmp sge i64 %t63, 0
  store i1 %t64, ptr %l43, !tbaa !21
  br label %bb17
bb17:
  %t66 = load i1, ptr %l43, !tbaa !21
  br i1 %t66, label %bb18, label %bb19
bb18:
  store i64 0, ptr %l6, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/fmt:formatter", ptr %t67, i32 0, i32 13
  %t70 = load i64, ptr %l3, !tbaa !24
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t69, i64 %t70)
  store i64 %t73, ptr %l52
  br label %bb20
bb19:
  br label %bb34
bb20:
  %t74 = load i64, ptr %l52, !tbaa !24
  store i64 %t74, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = icmp sgt i64 %t75, %t76
  br i1 %t79, label %bb21, label %bb22
bb21:
  %t81 = load i64, ptr %l8, !tbaa !24
  %t83 = icmp sgt i64 %t81, 0
  br i1 %t83, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb26
bb23:
  %t85 = load i64, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l6, !tbaa !24
  %t89 = sub i64 %t85, %t86
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = add i64 %t89, %t90
  %t95 = sub i64 %t93, 1
  %t96 = load i64, ptr %l8, !tbaa !24
  %t99 = sdiv i64 %t95, %t96
  store i64 %t99, ptr %l59, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t101 = load i64, ptr %l59, !tbaa !24
  store i64 %t101, ptr %l56, !tbaa !24
  br label %bb26
bb26:
  %t102 = load i64, ptr %l56, !tbaa !24
  store i64 %t102, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t103 = load i64, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = icmp slt i64 %t103, %t104
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %bb33
bb29:
  br label %bb30
bb30:
  %t111 = load i64, ptr %l6, !tbaa !24
  %t112 = load i64, ptr %l10, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t116 = mul i64 %t112, %t113
  %t119 = add i64 %t111, %t116
  store i64 %t119, ptr %l11, !tbaa !24
  %t121 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s4, ptr %t121, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d39, i32 0, i32 1) })
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s4)
  br label %bb32
bb32:
  %t123 = load i64, ptr %l10, !tbaa !24
  %t125 = add i64 %t123, 1
  store i64 %t125, ptr %l10, !tbaa !24
  br label %bb27
bb33:
  br label %bb34
bb34:
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t128 = load { i64, ptr }, ptr %l5, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v2, ptr %t127, { i64, ptr } %t128)
  br label %bb35
bb35:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/fmt:formatter", ptr %t131, i32 0, i32 16
  %t134 = load i64, ptr %l3, !tbaa !24
  %t137 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t133, i64 %t134)
  store i64 %t137, ptr %l85
  br label %bb36
bb36:
  %t138 = load i64, ptr %l85, !tbaa !24
  %t139 = icmp sge i64 %t138, 0
  br i1 %t139, label %bb37, label %bb38
bb37:
  %t141 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t145 = icmp sgt i64 %t143, 0
  br i1 %t145, label %bb39, label %bb40
bb38:
  br label %bb68
bb39:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/fmt:formatter", ptr %t147, i32 0, i32 13
  %t150 = load i64, ptr %l3, !tbaa !24
  %t153 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t149, i64 %t150)
  store i64 %t153, ptr %l93
  br label %bb41
bb40:
  br label %bb58
bb41:
  %t154 = load i64, ptr %l93, !tbaa !24
  %t155 = mul i64 %t154, 4
  %t156 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t158 = extractvalue { i64, ptr } %t156, 0
  %t161 = add i64 %t155, %t158
  store i64 %t161, ptr %l12, !tbaa !24
  %t163 = load i64, ptr %l4, !tbaa !24
  %t165 = icmp sgt i64 %t163, 0
  br i1 %t165, label %bb42, label %bb43
bb42:
  %t167 = load i64, ptr %l4, !tbaa !24
  %t168 = load i64, ptr %l12, !tbaa !24
  %t171 = sub i64 %t167, %t168
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l100, !tbaa !24
  br label %bb44
bb43:
  store i64 1, ptr %l100, !tbaa !24
  br label %bb44
bb44:
  %t175 = load i64, ptr %l100, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  store i64 %t175, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t178 = load i64, ptr %l15, !tbaa !24
  %t179 = load i64, ptr %l14, !tbaa !24
  %t182 = icmp sgt i64 %t178, %t179
  br i1 %t182, label %bb45, label %bb46
bb45:
  %t184 = load i64, ptr %l16, !tbaa !24
  %t186 = icmp sgt i64 %t184, 0
  br i1 %t186, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb50
bb47:
  %t188 = load i64, ptr %l15, !tbaa !24
  %t189 = load i64, ptr %l14, !tbaa !24
  %t192 = sub i64 %t188, %t189
  %t193 = load i64, ptr %l16, !tbaa !24
  %t196 = add i64 %t192, %t193
  %t198 = sub i64 %t196, 1
  %t199 = load i64, ptr %l16, !tbaa !24
  %t202 = sdiv i64 %t198, %t199
  store i64 %t202, ptr %l112, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l112, !tbaa !24
  br label %bb49
bb49:
  %t204 = load i64, ptr %l112, !tbaa !24
  store i64 %t204, ptr %l109, !tbaa !24
  br label %bb50
bb50:
  %t205 = load i64, ptr %l109, !tbaa !24
  store i64 %t205, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb51
bb51:
  %t206 = load i64, ptr %l18, !tbaa !24
  %t207 = load i64, ptr %l17, !tbaa !24
  %t210 = icmp slt i64 %t206, %t207
  %t212 = xor i1 %t210, true
  br i1 %t212, label %bb52, label %bb53
bb52:
  br label %bb57
bb53:
  br label %bb54
bb54:
  %t214 = load i64, ptr %l14, !tbaa !24
  %t215 = load i64, ptr %l18, !tbaa !24
  %t216 = load i64, ptr %l16, !tbaa !24
  %t219 = mul i64 %t215, %t216
  %t222 = add i64 %t214, %t219
  store i64 %t222, ptr %l19, !tbaa !24
  %t224 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t224, i8 32)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t226 = load i64, ptr %l18, !tbaa !24
  %t228 = add i64 %t226, 1
  store i64 %t228, ptr %l18, !tbaa !24
  br label %bb51
bb57:
  br label %bb58
bb58:
  %t230 = load ptr, ptr %l1, !tbaa !29
  store ptr %t230, ptr %l133, !tbaa !29
  %t231 = load ptr, ptr %l0, !tbaa !29
  %t233 = getelementptr %"compiler/fmt:formatter", ptr %t231, i32 0, i32 0
  %t234 = load { i64, ptr }, ptr %t233, !tbaa !27
  store { i64, ptr } %t234, ptr %l135, !tbaa !27
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/fmt:formatter", ptr %t235, i32 0, i32 16
  %t238 = load i64, ptr %l3, !tbaa !24
  %t241 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t237, i64 %t238)
  store i64 %t241, ptr %l139
  br label %bb59
bb59:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/fmt:formatter", ptr %t242, i32 0, i32 17
  %t245 = load i64, ptr %l3, !tbaa !24
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t244, i64 %t245)
  store i64 %t248, ptr %l143
  br label %bb60
bb60:
  %t249 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t250 = extractvalue { i64, ptr } %t249, 0
  store i64 %t250, ptr %l144, !tbaa !24
  %t251 = load i64, ptr %l139, !tbaa !24
  %t252 = icmp sge i64 %t251, 0
  br i1 %t252, label %bb61, label %bb62
bb61:
  %t254 = load i64, ptr %l139, !tbaa !24
  %t255 = load i64, ptr %l143, !tbaa !24
  %t256 = icmp sle i64 %t254, %t255
  br i1 %t256, label %bb63, label %bb64
bb62:
  call void @__olang_check_failed(ptr @olang_loc_259a09fa35ee14c1_c921ceba7167c8f5)
  unreachable
bb63:
  %t258 = load i64, ptr %l143, !tbaa !24
  %t259 = load i64, ptr %l144, !tbaa !24
  %t260 = icmp sle i64 %t258, %t259
  br i1 %t260, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_259a09fa35ee14c1_c921ceba7167c8f5)
  unreachable
bb65:
  %t262 = getelementptr { i64, ptr }, ptr %l135, i32 0, i32 1
  %t263 = load ptr, ptr %t262, !tbaa !27
  %t264 = load i64, ptr %l139, !tbaa !24
  %t265 = load i64, ptr %l143, !tbaa !24
  %t266 = getelementptr i8, ptr %t263, i64 %t264
  %t267 = sub i64 %t265, %t264
  %t268 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t269 = insertvalue { i64, ptr } %t268, ptr %t266, 1
  %t270 = load ptr, ptr %l133, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %v0, ptr %t270, { i64, ptr } %t269)
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_259a09fa35ee14c1_c921ceba7167c8f5)
  unreachable
bb67:
  br label %bb68
bb68:
  %t272 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t272, i8 10)
  br label %bb69
bb69:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eaddNames(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l35 = alloca i1
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s1
  %t3 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v4, ptr %s1, ptr %s1, { i64, ptr } %a4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store { i64, ptr } %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l7, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t9 = load i64, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l7, !tbaa !24
  %t13 = icmp slt i64 %t9, %t10
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb4:
  br label %bb5
bb5:
  %t17 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t17, ptr %l17, !tbaa !27
  %t18 = load i64, ptr %l6, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr { i64, ptr }, ptr %t21, i64 %t18
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !37
  store { i64, ptr } %t23, ptr %l8, !tbaa !27
  %t25 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s1, ptr %s2, { i64, ptr } %t25, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t27, ptr %l21
  br label %bb6
bb6:
  %t28 = load i1, ptr %l21, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l1, !tbaa !29
  store ptr %t29, ptr %l22, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  store ptr %t30, ptr %l23, !tbaa !29
  %t31 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t31, ptr %l24, !tbaa !27
  %t32 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t32, ptr %l25, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t33, 0
  store i64 %t36, ptr %l28, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  store i64 %t38, ptr %l29, !tbaa !24
  %t39 = icmp sge i64 3, 0
  br i1 %t39, label %bb9, label %bb10
bb8:
  store %olang.scope zeroinitializer, ptr %s4
  %t41 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t43 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s4, { i64, ptr } %t41, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store i1 %t43, ptr %l35
  br label %bb16
bb9:
  %t44 = load i64, ptr %l28, !tbaa !24
  %t45 = icmp sle i64 3, %t44
  br i1 %t45, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_659f294064b5ce35_34590247fabf25a1)
  unreachable
bb11:
  %t47 = load i64, ptr %l28, !tbaa !24
  %t48 = load i64, ptr %l29, !tbaa !24
  %t49 = icmp sle i64 %t47, %t48
  br i1 %t49, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_659f294064b5ce35_34590247fabf25a1)
  unreachable
bb13:
  %t51 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l28, !tbaa !24
  %t54 = getelementptr i8, ptr %t52, i64 3
  %t55 = sub i64 %t53, 3
  %t56 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t54, 1
  %t58 = load ptr, ptr %l22, !tbaa !29
  %t59 = load ptr, ptr %l23, !tbaa !29
  %t60 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v1, ptr %v2, ptr %v3, ptr %s1, ptr %t58, ptr %t59, { i64, ptr } %t60, { i64, ptr } %t57)
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_659f294064b5ce35_34590247fabf25a1)
  unreachable
bb15:
  br label %bb21
bb16:
  %t62 = load i1, ptr %l35, !tbaa !21
  %t63 = xor i1 %t62, true
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l1, !tbaa !29
  %t66 = load ptr, ptr %l2, !tbaa !29
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v2, ptr %v3, ptr %s1, ptr %t65, ptr %t66, { i64, ptr } %t67, { i64, ptr } %t68)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l6, !tbaa !24
  br label %bb2
bb23:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2echains(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca { i64, ptr }
  %l17 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i1
  %l52 = alloca i64
  %l54 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca ptr
  %l63 = alloca { i64, ptr }
  %l65 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca ptr
  %l77 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l5, !tbaa !24
  %t3 = icmp sge i64 %t1, 4
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l6, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/fmt:loader", ptr %t5, i32 0, i32 3
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l17
  br label %bb4
bb4:
  %t10 = load i64, ptr %l17, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t11 = load i64, ptr %l7, !tbaa !24
  %t12 = load i64, ptr %l6, !tbaa !24
  %t15 = icmp sgt i64 %t11, %t12
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t19 = icmp sgt i64 %t17, 0
  br i1 %t19, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t21 = load i64, ptr %l7, !tbaa !24
  %t22 = load i64, ptr %l6, !tbaa !24
  %t25 = sub i64 %t21, %t22
  %t26 = load i64, ptr %l8, !tbaa !24
  %t29 = add i64 %t25, %t26
  %t31 = sub i64 %t29, 1
  %t32 = load i64, ptr %l8, !tbaa !24
  %t35 = sdiv i64 %t31, %t32
  store i64 %t35, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t37 = load i64, ptr %l24, !tbaa !24
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t39 = load i64, ptr %l10, !tbaa !24
  %t40 = load i64, ptr %l9, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb13:
  br label %bb14
bb14:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l8, !tbaa !24
  %t52 = mul i64 %t48, %t49
  %t55 = add i64 %t47, %t52
  store i64 %t55, ptr %l11, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/fmt:loader", ptr %t57, i32 0, i32 3
  %t60 = load i64, ptr %l11, !tbaa !24
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t59, i64 %t60)
  store i64 %t63, ptr %l45
  br label %bb15
bb15:
  %t65 = load i64, ptr %l45, !tbaa !24
  %t67 = icmp ne i64 %t65, %a3
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb19
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/fmt:loader", ptr %t69, i32 0, i32 5
  %t72 = load i64, ptr %l11, !tbaa !24
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t71, i64 %t72)
  store i64 %t75, ptr %l52
  br label %bb18
bb18:
  %t76 = load i64, ptr %l52, !tbaa !24
  %t77 = icmp slt i64 %t76, 0
  store i1 %t77, ptr %l48, !tbaa !21
  br label %bb19
bb19:
  %t79 = load i1, ptr %l48, !tbaa !21
  br i1 %t79, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb21:
  br label %bb22
bb22:
  store { i64, ptr } %a4, ptr %l54, !tbaa !27
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/fmt:loader", ptr %t81, i32 0, i32 4
  %t84 = load i64, ptr %l11, !tbaa !24
  %t87 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %s3, ptr %t83, i64 %t84)
  store { i64, ptr } %t87, ptr %l58
  br label %bb23
bb23:
  %t88 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t91, 1
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t94 = add i64 %t90, %t93
  %t95 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t94)
  call void @olang_textcopy(ptr %t95, ptr %t89, i64 %t90)
  %t96 = getelementptr i8, ptr %t95, i64 %t90
  call void @olang_textcopy(ptr %t96, ptr %t92, i64 %t93)
  %t97 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr %t95, 1
  store { i64, ptr } %t98, ptr %l12, !tbaa !27
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l60, !tbaa !29
  %t101 = load ptr, ptr %l1, !tbaa !29
  store ptr %t101, ptr %l61, !tbaa !29
  %t102 = load ptr, ptr %l2, !tbaa !29
  store ptr %t102, ptr %l62, !tbaa !29
  %t103 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t103, ptr %l63, !tbaa !27
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/fmt:loader", ptr %t104, i32 0, i32 2
  store ptr %t106, ptr %l65, !tbaa !29
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/fmt:loader", ptr %t107, i32 0, i32 5
  %t110 = load i64, ptr %l11, !tbaa !24
  %t113 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t109, i64 %t110)
  store i64 %t113, ptr %l69
  br label %bb24
bb24:
  %t114 = load ptr, ptr %l65, !tbaa !29
  %t115 = load i64, ptr %l69, !tbaa !24
  %t116 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t114, i64 %t115)
  store { i64, ptr } %t116, ptr %l70
  br label %bb25
bb25:
  %t117 = load ptr, ptr %l60, !tbaa !29
  %t118 = load ptr, ptr %l61, !tbaa !29
  %t119 = load ptr, ptr %l62, !tbaa !29
  %t120 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l70, !tbaa !27
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eaddNames(ptr %v0, ptr %v1, ptr %v2, ptr %s3, ptr %v0, ptr %t117, ptr %t118, ptr %t119, { i64, ptr } %t120, { i64, ptr } %t121)
  br label %bb26
bb26:
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l71, !tbaa !29
  %t123 = load ptr, ptr %l1, !tbaa !29
  store ptr %t123, ptr %l72, !tbaa !29
  %t124 = load ptr, ptr %l2, !tbaa !29
  store ptr %t124, ptr %l73, !tbaa !29
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/fmt:loader", ptr %t125, i32 0, i32 5
  %t128 = load i64, ptr %l11, !tbaa !24
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t127, i64 %t128)
  store i64 %t131, ptr %l77
  br label %bb27
bb27:
  %t132 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t132, 1
  %t135 = extractvalue { i64, ptr } %t132, 0
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t137 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t138 = add i64 %t135, %t137
  %t139 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t134, i64 %t135)
  %t140 = getelementptr i8, ptr %t139, i64 %t135
  call void @olang_textcopy(ptr %t140, ptr %t136, i64 %t137)
  %t141 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t139, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = mul i64 %t144, 1
  %t147 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t146)
  call void @llvm.memcpy.p0.p0.i64(ptr %t147, ptr %t145, i64 %t146, i1 false)
  %t148 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t147, 1
  %t150 = load i64, ptr %l5, !tbaa !24
  %t152 = add i64 %t150, 1
  %t153 = load ptr, ptr %l71, !tbaa !29
  %t154 = load ptr, ptr %l72, !tbaa !29
  %t155 = load ptr, ptr %l73, !tbaa !29
  %t156 = load i64, ptr %l77, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2echains(ptr %v0, ptr %v1, ptr %v2, ptr %s3, ptr %t153, ptr %t154, ptr %t155, i64 %t156, { i64, ptr } %t149, i64 %t152)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  br label %bb29
bb29:
  %t159 = load i64, ptr %l10, !tbaa !24
  %t161 = add i64 %t159, 1
  store i64 %t161, ptr %l10, !tbaa !24
  br label %bb11
bb30:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eload(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/source:Source"
  %l10 = alloca %"compiler/scan:Tokens"
  %l11 = alloca i64
  %l12 = alloca %"std/prelude/text:StringBuilder"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca i32
  %l41 = alloca i1
  %l47 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i64
  %l75 = alloca { i64, ptr }
  %l77 = alloca i1
  %l81 = alloca %"compiler/source:Source"
  %l83 = alloca %"compiler/source:Source"
  %l84 = alloca i32
  %l86 = alloca i1
  %l91 = alloca %"compiler/scan:Tokens"
  %l94 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca i64
  %l102 = alloca %"std/prelude/text:StringBuilder"
  %l104 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l113 = alloca i64
  %l116 = alloca i64
  %l134 = alloca { i64, ptr }
  %l141 = alloca i1
  %l142 = alloca { i64, ptr }
  %l149 = alloca i1
  %l151 = alloca i1
  %l154 = alloca i1
  %l156 = alloca i1
  %l161 = alloca i1
  %l162 = alloca { i64, ptr }
  %l167 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l169 = alloca { i64, ptr }
  %l173 = alloca i64
  %l174 = alloca { i64, ptr }
  %l178 = alloca i64
  %l179 = alloca i64
  %l187 = alloca i1
  %l189 = alloca i1
  %l194 = alloca i1
  %l195 = alloca { i64, ptr }
  %l200 = alloca ptr
  %l201 = alloca { i64, ptr }
  %l202 = alloca { i64, ptr }
  %l206 = alloca i64
  %l207 = alloca { i64, ptr }
  %l211 = alloca i64
  %l212 = alloca i64
  %l227 = alloca i1
  %l228 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l236 = alloca i64
  %l237 = alloca { i64, ptr }
  %l240 = alloca i64
  %l241 = alloca i64
  %l253 = alloca i1
  %l254 = alloca { i64, ptr }
  %l258 = alloca { i64, ptr }
  %l259 = alloca { i64, ptr }
  %l262 = alloca i64
  %l263 = alloca { i64, ptr }
  %l266 = alloca i64
  %l267 = alloca i64
  %l272 = alloca { i64, ptr }
  %l273 = alloca { i64, ptr }
  %l275 = alloca i1
  %l277 = alloca { i64, ptr }
  %l280 = alloca ptr
  %l281 = alloca i64
  %l286 = alloca ptr
  %l287 = alloca i64
  %l295 = alloca ptr
  %l296 = alloca i64
  %l299 = alloca { i64, ptr }
  %l302 = alloca i64
  %l306 = alloca i64
  %l309 = alloca i64
  %l327 = alloca ptr
  %l328 = alloca { i64, ptr }
  %l331 = alloca { i64, ptr }
  %l332 = alloca { i64, ptr }
  %l334 = alloca i1
  %l338 = alloca i64
  %l343 = alloca ptr
  %l344 = alloca i64
  %l348 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, { i64, ptr } } %t3, 1
  %t5 = extractvalue { i32, { i64, ptr } } %t3, 0
  store i32 %t5, ptr %l39
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store { i64, ptr } %t4, ptr %l38
  br label %bb1
bb1:
  %t8 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t8, ptr %l36, !tbaa !27
  br label %bb6
bb2:
  %t9 = load i32, ptr %l39, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l41, !tbaa !21
  %t13 = load i32, ptr %l39, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb6:
  %t19 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t19, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/fmt:loader", ptr %t20, i32 0, i32 1
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l47
  br label %bb7
bb7:
  %t25 = load i64, ptr %l47, !tbaa !24
  store i64 %t25, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l4, !tbaa !24
  %t27 = load i64, ptr %l3, !tbaa !24
  %t30 = icmp sgt i64 %t26, %t27
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb10, label %bb11
bb9:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb13
bb10:
  %t36 = load i64, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = sub i64 %t36, %t37
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = add i64 %t40, %t41
  %t46 = sub i64 %t44, 1
  %t47 = load i64, ptr %l5, !tbaa !24
  %t50 = sdiv i64 %t46, %t47
  store i64 %t50, ptr %l54, !tbaa !24
  br label %bb12
bb11:
  store i64 0, ptr %l54, !tbaa !24
  br label %bb12
bb12:
  %t52 = load i64, ptr %l54, !tbaa !24
  store i64 %t52, ptr %l51, !tbaa !24
  br label %bb13
bb13:
  %t53 = load i64, ptr %l51, !tbaa !24
  store i64 %t53, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb14
bb14:
  %t54 = load i64, ptr %l7, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb15, label %bb16
bb15:
  br label %bb24
bb16:
  br label %bb17
bb17:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t63 = load i64, ptr %l7, !tbaa !24
  %t64 = load i64, ptr %l5, !tbaa !24
  %t67 = mul i64 %t63, %t64
  %t70 = add i64 %t62, %t67
  store i64 %t70, ptr %l8, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/fmt:loader", ptr %t72, i32 0, i32 1
  %t75 = load i64, ptr %l8, !tbaa !24
  %t78 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t74, i64 %t75)
  store { i64, ptr } %t78, ptr %l75
  br label %bb18
bb18:
  %t79 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t80 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t82 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t80, { i64, ptr } %t79)
  store i1 %t82, ptr %l77
  br label %bb19
bb19:
  %t83 = load i1, ptr %l77, !tbaa !21
  br i1 %t83, label %bb20, label %bb21
bb20:
  %t84 = load i64, ptr %l8, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t84, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t86 = load i64, ptr %l7, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l7, !tbaa !24
  br label %bb14
bb24:
  %t90 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t92 = call { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %s0, ptr %s0, { i64, ptr } %t90)
  %t93 = extractvalue { i32, %"compiler/source:Source" } %t92, 1
  %t94 = extractvalue { i32, %"compiler/source:Source" } %t92, 0
  store i32 %t94, ptr %l84
  %t95 = icmp ne i32 %t94, 0
  br i1 %t95, label %bb26, label %ok.96, !prof !99
ok.96:
  store %"compiler/source:Source" %t93, ptr %l83
  br label %bb25
bb25:
  %t97 = load %"compiler/source:Source", ptr %l83
  store %"compiler/source:Source" %t97, ptr %l81
  br label %bb30
bb26:
  %t98 = load i32, ptr %l84, !tbaa !23
  %t99 = ashr i32 %t98, 16
  %t101 = icmp eq i32 %t99, 1
  store i1 %t101, ptr %l86, !tbaa !21
  %t102 = load i32, ptr %l84, !tbaa !23
  %t103 = ashr i32 %t102, 16
  %t105 = icmp eq i32 %t103, 1
  br i1 %t105, label %bb27, label %bb28
bb27:
  call void @__olang_errpay_pop()
  br label %bb28
bb28:
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb30:
  %t108 = load %"compiler/source:Source", ptr %l81
  store %"compiler/source:Source" %t108, ptr %l9
  %t109 = getelementptr %"compiler/source:Source", ptr %l9, i32 0, i32 1
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  %t112 = call %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %s0, ptr %s0, { i64, ptr } %t110)
  store %"compiler/scan:Tokens" %t112, ptr %l91
  br label %bb31
bb31:
  %t113 = load %"compiler/scan:Tokens", ptr %l91
  store %"compiler/scan:Tokens" %t113, ptr %l10
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/fmt:loader", ptr %t114, i32 0, i32 1
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t116)
  store i64 %t118, ptr %l94
  br label %bb32
bb32:
  %t119 = load i64, ptr %l94, !tbaa !24
  store i64 %t119, ptr %l11, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/fmt:loader", ptr %t120, i32 0, i32 1
  store ptr %t122, ptr %l96, !tbaa !29
  %t123 = ptrtoint ptr %v0 to i64
  store i64 %t123, ptr %l97, !tbaa !24
  %t124 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t124, label %bb33, label %bb34
bb33:
  %t126 = call ptr @__olang_region_make(ptr %v0)
  %t127 = ptrtoint ptr %t126 to i64
  store i64 %t127, ptr %l97, !tbaa !24
  br label %bb34
bb34:
  %t128 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = extractvalue { i64, ptr } %t128, 0
  %t132 = load i64, ptr %l97
  %t133 = inttoptr i64 %t132 to ptr
  %t134 = call ptr @__olang_scope_alloc(ptr %t133, i64 %t131)
  call void @olang_textcopy(ptr %t134, ptr %t130, i64 %t131)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  %t138 = load i64, ptr %l97
  %t139 = inttoptr i64 %t138 to ptr
  %t140 = extractvalue { i64, ptr } %t136, 0
  %t141 = extractvalue { i64, ptr } %t136, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %t139, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l96, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t146, { i64, ptr } %t145)
  br label %bb35
bb35:
  %t148 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t148, ptr %l102
  br label %bb36
bb36:
  %t149 = load %"std/prelude/text:StringBuilder", ptr %l102
  store %"std/prelude/text:StringBuilder" %t149, ptr %l12
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l12, i8 32)
  br label %bb37
bb37:
  %t151 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t151, ptr %l104
  br label %bb38
bb38:
  %t152 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l104
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t152, ptr %l13
  %t153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l105
  br label %bb39
bb39:
  %t154 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l14
  %t155 = getelementptr %"compiler/scan:Tokens", ptr %l10, i32 0, i32 0
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l15, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t160 = extractvalue { i64, ptr } %t158, 0
  store i64 %t160, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t162 = load i64, ptr %l16, !tbaa !24
  store i64 %t162, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t164 = load i64, ptr %l18, !tbaa !24
  %t165 = load i64, ptr %l17, !tbaa !24
  %t168 = icmp sgt i64 %t164, %t165
  br i1 %t168, label %bb40, label %bb41
bb40:
  %t170 = load i64, ptr %l19, !tbaa !24
  %t172 = icmp sgt i64 %t170, 0
  br i1 %t172, label %bb42, label %bb43
bb41:
  store i64 0, ptr %l113, !tbaa !24
  br label %bb45
bb42:
  %t174 = load i64, ptr %l18, !tbaa !24
  %t175 = load i64, ptr %l17, !tbaa !24
  %t178 = sub i64 %t174, %t175
  %t179 = load i64, ptr %l19, !tbaa !24
  %t182 = add i64 %t178, %t179
  %t184 = sub i64 %t182, 1
  %t185 = load i64, ptr %l19, !tbaa !24
  %t188 = sdiv i64 %t184, %t185
  store i64 %t188, ptr %l116, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l116, !tbaa !24
  br label %bb44
bb44:
  %t190 = load i64, ptr %l116, !tbaa !24
  store i64 %t190, ptr %l113, !tbaa !24
  br label %bb45
bb45:
  %t191 = load i64, ptr %l113, !tbaa !24
  store i64 %t191, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb46
bb46:
  %t192 = load i64, ptr %l21, !tbaa !24
  %t193 = load i64, ptr %l20, !tbaa !24
  %t196 = icmp slt i64 %t192, %t193
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb47, label %bb48
bb47:
  br label %bb139
bb48:
  br label %bb49
bb49:
  %t200 = load i64, ptr %l17, !tbaa !24
  %t201 = load i64, ptr %l21, !tbaa !24
  %t202 = load i64, ptr %l19, !tbaa !24
  %t205 = mul i64 %t201, %t202
  %t208 = add i64 %t200, %t205
  store i64 %t208, ptr %l22, !tbaa !24
  %t210 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t210, ptr %l134, !tbaa !27
  %t211 = load i64, ptr %l22, !tbaa !24
  %t213 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr %"compiler/token:Token", ptr %t214, i64 %t211
  %t216 = getelementptr %"compiler/token:Token", ptr %t215, i32 0, i32 0
  %t217 = load i32, ptr %t216, !range !{i32 0, i32 114}
  store i32 %t217, ptr %l23
  %t219 = load i64, ptr %l22, !tbaa !24
  %t221 = add i64 %t219, 1
  %t222 = load i64, ptr %l16, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  br i1 %t225, label %bb50, label %bb51
bb50:
  %t227 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t227, ptr %l142, !tbaa !27
  %t228 = load i64, ptr %l22, !tbaa !24
  %t230 = add i64 %t228, 1
  %t232 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t233 = load ptr, ptr %t232, !tbaa !27
  %t234 = getelementptr %"compiler/token:Token", ptr %t233, i64 %t230
  %t235 = getelementptr %"compiler/token:Token", ptr %t234, i32 0, i32 0
  %t236 = load i32, ptr %t235, !range !{i32 0, i32 114}
  %t238 = trunc i64 1 to i32
  %t239 = icmp eq i32 %t236, %t238
  store i1 %t239, ptr %l141, !tbaa !21
  br label %bb52
bb51:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb52
bb52:
  %t241 = load i1, ptr %l141, !tbaa !21
  store i1 %t241, ptr %l24, !tbaa !21
  %t242 = load i32, ptr %l23, !range !{i32 0, i32 114}
  %t244 = trunc i64 33 to i32
  %t245 = icmp eq i32 %t242, %t244
  br i1 %t245, label %bb53, label %bb54
bb53:
  %t247 = load i1, ptr %l24, !tbaa !21
  store i1 %t247, ptr %l149, !tbaa !21
  br label %bb55
bb54:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb55
bb55:
  %t249 = load i1, ptr %l149, !tbaa !21
  br i1 %t249, label %bb56, label %bb57
bb56:
  store i1 true, ptr %l151, !tbaa !21
  br label %bb67
bb57:
  %t250 = load i32, ptr %l23, !range !{i32 0, i32 114}
  %t252 = trunc i64 38 to i32
  %t253 = icmp eq i32 %t250, %t252
  br i1 %t253, label %bb58, label %bb59
bb58:
  %t255 = load i1, ptr %l24, !tbaa !21
  store i1 %t255, ptr %l154, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb60
bb60:
  %t257 = load i1, ptr %l154, !tbaa !21
  br i1 %t257, label %bb61, label %bb62
bb61:
  %t258 = load i64, ptr %l22, !tbaa !24
  %t260 = add i64 %t258, 2
  %t261 = load i64, ptr %l16, !tbaa !24
  %t264 = icmp slt i64 %t260, %t261
  store i1 %t264, ptr %l156, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb63
bb63:
  %t266 = load i1, ptr %l156, !tbaa !21
  br i1 %t266, label %bb64, label %bb65
bb64:
  %t267 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t267, ptr %l162, !tbaa !27
  %t268 = load i64, ptr %l22, !tbaa !24
  %t270 = add i64 %t268, 2
  %t272 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t273 = load ptr, ptr %t272, !tbaa !27
  %t274 = getelementptr %"compiler/token:Token", ptr %t273, i64 %t270
  %t275 = getelementptr %"compiler/token:Token", ptr %t274, i32 0, i32 0
  %t276 = load i32, ptr %t275, !range !{i32 0, i32 114}
  %t278 = trunc i64 112 to i32
  %t279 = icmp eq i32 %t276, %t278
  store i1 %t279, ptr %l161, !tbaa !21
  br label %bb66
bb65:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb66
bb66:
  %t281 = load i1, ptr %l161, !tbaa !21
  store i1 %t281, ptr %l151, !tbaa !21
  br label %bb67
bb67:
  %t282 = load i1, ptr %l151, !tbaa !21
  br i1 %t282, label %bb68, label %bb69
bb68:
  store ptr %l12, ptr %l167, !tbaa !29
  %t283 = getelementptr %"compiler/source:Source", ptr %l9, i32 0, i32 1
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  store { i64, ptr } %t284, ptr %l168, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t285, ptr %l169, !tbaa !27
  %t286 = load i64, ptr %l22, !tbaa !24
  %t288 = add i64 %t286, 1
  %t290 = getelementptr { i64, ptr }, ptr %l169, i32 0, i32 1
  %t291 = load ptr, ptr %t290, !tbaa !27
  %t292 = getelementptr %"compiler/token:Token", ptr %t291, i64 %t288
  %t293 = getelementptr %"compiler/token:Token", ptr %t292, i32 0, i32 2
  %t294 = load i32, ptr %t293, !tbaa !23
  %t296 = sext i32 %t294 to i64
  store i64 %t296, ptr %l173, !tbaa !24
  %t297 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t297, ptr %l174, !tbaa !27
  %t298 = load i64, ptr %l22, !tbaa !24
  %t300 = add i64 %t298, 1
  %t302 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr %"compiler/token:Token", ptr %t303, i64 %t300
  %t305 = getelementptr %"compiler/token:Token", ptr %t304, i32 0, i32 3
  %t306 = load i32, ptr %t305, !tbaa !23
  %t308 = sext i32 %t306 to i64
  store i64 %t308, ptr %l178, !tbaa !24
  %t309 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t310 = extractvalue { i64, ptr } %t309, 0
  store i64 %t310, ptr %l179, !tbaa !24
  %t311 = load i64, ptr %l173, !tbaa !24
  %t312 = icmp sge i64 %t311, 0
  br i1 %t312, label %bb70, label %bb71
bb69:
  br label %bb78
bb70:
  %t314 = load i64, ptr %l173, !tbaa !24
  %t315 = load i64, ptr %l178, !tbaa !24
  %t316 = icmp sle i64 %t314, %t315
  br i1 %t316, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_b45f67b0c13c7f92_d3bc8c6077d2e8ee)
  unreachable
bb72:
  %t318 = load i64, ptr %l178, !tbaa !24
  %t319 = load i64, ptr %l179, !tbaa !24
  %t320 = icmp sle i64 %t318, %t319
  br i1 %t320, label %bb74, label %bb75
bb73:
  call void @__olang_check_failed(ptr @olang_loc_b45f67b0c13c7f92_d3bc8c6077d2e8ee)
  unreachable
bb74:
  %t322 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = load i64, ptr %l173, !tbaa !24
  %t325 = load i64, ptr %l178, !tbaa !24
  %t326 = getelementptr i8, ptr %t323, i64 %t324
  %t327 = sub i64 %t325, %t324
  %t328 = insertvalue { i64, ptr } undef, i64 %t327, 0
  %t329 = insertvalue { i64, ptr } %t328, ptr %t326, 1
  %t330 = load ptr, ptr %l167, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t330, { i64, ptr } %t329)
  br label %bb76
bb75:
  call void @__olang_check_failed(ptr @olang_loc_b45f67b0c13c7f92_d3bc8c6077d2e8ee)
  unreachable
bb76:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l12, i8 32)
  br label %bb77
bb77:
  br label %bb78
bb78:
  %t333 = load i32, ptr %l23, !range !{i32 0, i32 114}
  %t335 = trunc i64 37 to i32
  %t336 = icmp eq i32 %t333, %t335
  br i1 %t336, label %bb79, label %bb80
bb79:
  %t338 = load i1, ptr %l24, !tbaa !21
  store i1 %t338, ptr %l187, !tbaa !21
  br label %bb81
bb80:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb81
bb81:
  %t340 = load i1, ptr %l187, !tbaa !21
  br i1 %t340, label %bb82, label %bb83
bb82:
  %t341 = load i64, ptr %l22, !tbaa !24
  %t343 = add i64 %t341, 2
  %t344 = load i64, ptr %l16, !tbaa !24
  %t347 = icmp slt i64 %t343, %t344
  store i1 %t347, ptr %l189, !tbaa !21
  br label %bb84
bb83:
  store i1 false, ptr %l189, !tbaa !21
  br label %bb84
bb84:
  %t349 = load i1, ptr %l189, !tbaa !21
  br i1 %t349, label %bb85, label %bb86
bb85:
  %t350 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t350, ptr %l195, !tbaa !27
  %t351 = load i64, ptr %l22, !tbaa !24
  %t353 = add i64 %t351, 2
  %t355 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr %"compiler/token:Token", ptr %t356, i64 %t353
  %t358 = getelementptr %"compiler/token:Token", ptr %t357, i32 0, i32 0
  %t359 = load i32, ptr %t358, !range !{i32 0, i32 114}
  %t361 = trunc i64 97 to i32
  %t362 = icmp eq i32 %t359, %t361
  store i1 %t362, ptr %l194, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb87
bb87:
  %t364 = load i1, ptr %l194, !tbaa !21
  br i1 %t364, label %bb88, label %bb89
bb88:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l12, ptr %l200, !tbaa !29
  %t365 = getelementptr %"compiler/source:Source", ptr %l9, i32 0, i32 1
  %t366 = load { i64, ptr }, ptr %t365, !tbaa !27
  store { i64, ptr } %t366, ptr %l201, !tbaa !27
  %t367 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t367, ptr %l202, !tbaa !27
  %t368 = load i64, ptr %l22, !tbaa !24
  %t370 = add i64 %t368, 1
  %t372 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t373 = load ptr, ptr %t372, !tbaa !27
  %t374 = getelementptr %"compiler/token:Token", ptr %t373, i64 %t370
  %t375 = getelementptr %"compiler/token:Token", ptr %t374, i32 0, i32 2
  %t376 = load i32, ptr %t375, !tbaa !23
  %t378 = sext i32 %t376 to i64
  store i64 %t378, ptr %l206, !tbaa !24
  %t379 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t379, ptr %l207, !tbaa !27
  %t380 = load i64, ptr %l22, !tbaa !24
  %t382 = add i64 %t380, 1
  %t384 = getelementptr { i64, ptr }, ptr %l207, i32 0, i32 1
  %t385 = load ptr, ptr %t384, !tbaa !27
  %t386 = getelementptr %"compiler/token:Token", ptr %t385, i64 %t382
  %t387 = getelementptr %"compiler/token:Token", ptr %t386, i32 0, i32 3
  %t388 = load i32, ptr %t387, !tbaa !23
  %t390 = sext i32 %t388 to i64
  store i64 %t390, ptr %l211, !tbaa !24
  %t391 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t392 = extractvalue { i64, ptr } %t391, 0
  store i64 %t392, ptr %l212, !tbaa !24
  %t393 = load i64, ptr %l206, !tbaa !24
  %t394 = icmp sge i64 %t393, 0
  br i1 %t394, label %bb90, label %bb91
bb89:
  br label %bb98
bb90:
  %t396 = load i64, ptr %l206, !tbaa !24
  %t397 = load i64, ptr %l211, !tbaa !24
  %t398 = icmp sle i64 %t396, %t397
  br i1 %t398, label %bb92, label %bb93
bb91:
  call void @__olang_check_failed(ptr @olang_loc_bf801ccf4339d98f_a7f4482671f796eb)
  unreachable
bb92:
  %t400 = load i64, ptr %l211, !tbaa !24
  %t401 = load i64, ptr %l212, !tbaa !24
  %t402 = icmp sle i64 %t400, %t401
  br i1 %t402, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_bf801ccf4339d98f_a7f4482671f796eb)
  unreachable
bb94:
  %t404 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = load i64, ptr %l206, !tbaa !24
  %t407 = load i64, ptr %l211, !tbaa !24
  %t408 = getelementptr i8, ptr %t405, i64 %t406
  %t409 = sub i64 %t407, %t406
  %t410 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t411 = insertvalue { i64, ptr } %t410, ptr %t408, 1
  %t412 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t413 = extractvalue { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t415 = extractvalue { i64, ptr } %t411, 1
  %t416 = extractvalue { i64, ptr } %t411, 0
  %t417 = add i64 %t413, %t416
  %t418 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t417)
  call void @olang_textcopy(ptr %t418, ptr %t412, i64 %t413)
  %t419 = getelementptr i8, ptr %t418, i64 %t413
  call void @olang_textcopy(ptr %t419, ptr %t415, i64 %t416)
  %t420 = insertvalue { i64, ptr } undef, i64 %t417, 0
  %t421 = insertvalue { i64, ptr } %t420, ptr %t418, 1
  %t423 = extractvalue { i64, ptr } %t421, 0
  %t424 = extractvalue { i64, ptr } %t421, 1
  %t425 = mul i64 %t423, 1
  %t426 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t425)
  call void @llvm.memcpy.p0.p0.i64(ptr %t426, ptr %t424, i64 %t425, i1 false)
  %t427 = insertvalue { i64, ptr } undef, i64 %t423, 0
  %t428 = insertvalue { i64, ptr } %t427, ptr %t426, 1
  %t429 = load ptr, ptr %l200, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s11, ptr %t429, { i64, ptr } %t428)
  br label %bb96
bb95:
  call void @__olang_check_failed(ptr @olang_loc_bf801ccf4339d98f_a7f4482671f796eb)
  unreachable
bb96:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l12, i8 32)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s11)
  br label %bb98
bb98:
  %t432 = load i32, ptr %l23, !range !{i32 0, i32 114}
  %t434 = trunc i64 40 to i32
  %t435 = icmp eq i32 %t432, %t434
  br i1 %t435, label %bb99, label %bb100
bb99:
  store %olang.scope zeroinitializer, ptr %s13
  %t437 = load i64, ptr %l22, !tbaa !24
  %t439 = add i64 %t437, 1
  store i64 %t439, ptr %l25, !tbaa !24
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t441 = load i64, ptr %l25, !tbaa !24
  %t442 = load i64, ptr %l16, !tbaa !24
  %t445 = icmp slt i64 %t441, %t442
  br i1 %t445, label %bb101, label %bb102
bb100:
  br label %bb137
bb101:
  %t447 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t447, ptr %l228, !tbaa !27
  %t448 = load i64, ptr %l25, !tbaa !24
  %t450 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t451 = load ptr, ptr %t450, !tbaa !27
  %t452 = getelementptr %"compiler/token:Token", ptr %t451, i64 %t448
  %t453 = getelementptr %"compiler/token:Token", ptr %t452, i32 0, i32 0
  %t454 = load i32, ptr %t453, !range !{i32 0, i32 114}
  %t456 = trunc i64 1 to i32
  %t457 = icmp eq i32 %t454, %t456
  store i1 %t457, ptr %l227, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l227, !tbaa !21
  br label %bb103
bb103:
  %t459 = load i1, ptr %l227, !tbaa !21
  br i1 %t459, label %bb104, label %bb105
bb104:
  %t460 = getelementptr %"compiler/source:Source", ptr %l9, i32 0, i32 1
  %t461 = load { i64, ptr }, ptr %t460, !tbaa !27
  store { i64, ptr } %t461, ptr %l232, !tbaa !27
  %t462 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t462, ptr %l233, !tbaa !27
  %t463 = load i64, ptr %l25, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr %"compiler/token:Token", ptr %t466, i64 %t463
  %t468 = getelementptr %"compiler/token:Token", ptr %t467, i32 0, i32 2
  %t469 = load i32, ptr %t468, !tbaa !23
  %t471 = sext i32 %t469 to i64
  store i64 %t471, ptr %l236, !tbaa !24
  %t472 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t472, ptr %l237, !tbaa !27
  %t473 = load i64, ptr %l25, !tbaa !24
  %t475 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t476 = load ptr, ptr %t475, !tbaa !27
  %t477 = getelementptr %"compiler/token:Token", ptr %t476, i64 %t473
  %t478 = getelementptr %"compiler/token:Token", ptr %t477, i32 0, i32 3
  %t479 = load i32, ptr %t478, !tbaa !23
  %t481 = sext i32 %t479 to i64
  store i64 %t481, ptr %l240, !tbaa !24
  %t482 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t483 = extractvalue { i64, ptr } %t482, 0
  store i64 %t483, ptr %l241, !tbaa !24
  %t484 = load i64, ptr %l236, !tbaa !24
  %t485 = icmp sge i64 %t484, 0
  br i1 %t485, label %bb106, label %bb107
bb105:
  br label %bb112
bb106:
  %t487 = load i64, ptr %l236, !tbaa !24
  %t488 = load i64, ptr %l240, !tbaa !24
  %t489 = icmp sle i64 %t487, %t488
  br i1 %t489, label %bb108, label %bb109
bb107:
  call void @__olang_check_failed(ptr @olang_loc_31ba00d857a48a4_d72415852a995970)
  unreachable
bb108:
  %t491 = load i64, ptr %l240, !tbaa !24
  %t492 = load i64, ptr %l241, !tbaa !24
  %t493 = icmp sle i64 %t491, %t492
  br i1 %t493, label %bb110, label %bb111
bb109:
  call void @__olang_check_failed(ptr @olang_loc_31ba00d857a48a4_d72415852a995970)
  unreachable
bb110:
  %t495 = getelementptr { i64, ptr }, ptr %l232, i32 0, i32 1
  %t496 = load ptr, ptr %t495, !tbaa !27
  %t497 = load i64, ptr %l236, !tbaa !24
  %t498 = load i64, ptr %l240, !tbaa !24
  %t499 = getelementptr i8, ptr %t496, i64 %t497
  %t500 = sub i64 %t498, %t497
  %t501 = insertvalue { i64, ptr } undef, i64 %t500, 0
  %t502 = insertvalue { i64, ptr } %t501, ptr %t499, 1
  %t504 = extractvalue { i64, ptr } %t502, 1
  %t505 = extractvalue { i64, ptr } %t502, 0
  %t506 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t505)
  call void @olang_textcopy(ptr %t506, ptr %t504, i64 %t505)
  %t507 = insertvalue { i64, ptr } undef, i64 %t505, 0
  %t508 = insertvalue { i64, ptr } %t507, ptr %t506, 1
  %t510 = extractvalue { i64, ptr } %t508, 0
  %t511 = extractvalue { i64, ptr } %t508, 1
  %t512 = mul i64 %t510, 1
  %t513 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t512)
  call void @llvm.memcpy.p0.p0.i64(ptr %t513, ptr %t511, i64 %t512, i1 false)
  %t514 = insertvalue { i64, ptr } undef, i64 %t510, 0
  %t515 = insertvalue { i64, ptr } %t514, ptr %t513, 1
  store { i64, ptr } %t515, ptr %l26, !tbaa !27
  %t517 = load i64, ptr %l25, !tbaa !24
  %t519 = add i64 %t517, 1
  store i64 %t519, ptr %l25, !tbaa !24
  br label %bb112
bb111:
  call void @__olang_check_failed(ptr @olang_loc_31ba00d857a48a4_d72415852a995970)
  unreachable
bb112:
  %t521 = load i64, ptr %l25, !tbaa !24
  %t522 = load i64, ptr %l16, !tbaa !24
  %t525 = icmp slt i64 %t521, %t522
  br i1 %t525, label %bb113, label %bb114
bb113:
  %t527 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t527, ptr %l254, !tbaa !27
  %t528 = load i64, ptr %l25, !tbaa !24
  %t530 = getelementptr { i64, ptr }, ptr %l254, i32 0, i32 1
  %t531 = load ptr, ptr %t530, !tbaa !27
  %t532 = getelementptr %"compiler/token:Token", ptr %t531, i64 %t528
  %t533 = getelementptr %"compiler/token:Token", ptr %t532, i32 0, i32 0
  %t534 = load i32, ptr %t533, !range !{i32 0, i32 114}
  %t536 = trunc i64 5 to i32
  %t537 = icmp eq i32 %t534, %t536
  store i1 %t537, ptr %l253, !tbaa !21
  br label %bb115
bb114:
  store i1 false, ptr %l253, !tbaa !21
  br label %bb115
bb115:
  %t539 = load i1, ptr %l253, !tbaa !21
  br i1 %t539, label %bb116, label %bb117
bb116:
  store %olang.scope zeroinitializer, ptr %s16
  %t540 = getelementptr %"compiler/source:Source", ptr %l9, i32 0, i32 1
  %t541 = load { i64, ptr }, ptr %t540, !tbaa !27
  store { i64, ptr } %t541, ptr %l258, !tbaa !27
  %t542 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t542, ptr %l259, !tbaa !27
  %t543 = load i64, ptr %l25, !tbaa !24
  %t545 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr %"compiler/token:Token", ptr %t546, i64 %t543
  %t548 = getelementptr %"compiler/token:Token", ptr %t547, i32 0, i32 2
  %t549 = load i32, ptr %t548, !tbaa !23
  %t551 = sext i32 %t549 to i64
  store i64 %t551, ptr %l262, !tbaa !24
  %t552 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t552, ptr %l263, !tbaa !27
  %t553 = load i64, ptr %l25, !tbaa !24
  %t555 = getelementptr { i64, ptr }, ptr %l263, i32 0, i32 1
  %t556 = load ptr, ptr %t555, !tbaa !27
  %t557 = getelementptr %"compiler/token:Token", ptr %t556, i64 %t553
  %t558 = getelementptr %"compiler/token:Token", ptr %t557, i32 0, i32 3
  %t559 = load i32, ptr %t558, !tbaa !23
  %t561 = sext i32 %t559 to i64
  store i64 %t561, ptr %l266, !tbaa !24
  %t562 = load { i64, ptr }, ptr %l258, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t562, 0
  store i64 %t563, ptr %l267, !tbaa !24
  %t564 = load i64, ptr %l262, !tbaa !24
  %t565 = icmp sge i64 %t564, 0
  br i1 %t565, label %bb118, label %bb119
bb117:
  br label %bb136
bb118:
  %t567 = load i64, ptr %l262, !tbaa !24
  %t568 = load i64, ptr %l266, !tbaa !24
  %t569 = icmp sle i64 %t567, %t568
  br i1 %t569, label %bb120, label %bb121
bb119:
  call void @__olang_check_failed(ptr @olang_loc_f328ac53cd348991_ee2d20c1cf12bb4d)
  unreachable
bb120:
  %t571 = load i64, ptr %l266, !tbaa !24
  %t572 = load i64, ptr %l267, !tbaa !24
  %t573 = icmp sle i64 %t571, %t572
  br i1 %t573, label %bb122, label %bb123
bb121:
  call void @__olang_check_failed(ptr @olang_loc_f328ac53cd348991_ee2d20c1cf12bb4d)
  unreachable
bb122:
  %t575 = getelementptr { i64, ptr }, ptr %l258, i32 0, i32 1
  %t576 = load ptr, ptr %t575, !tbaa !27
  %t577 = load i64, ptr %l262, !tbaa !24
  %t578 = load i64, ptr %l266, !tbaa !24
  %t579 = getelementptr i8, ptr %t576, i64 %t577
  %t580 = sub i64 %t578, %t577
  %t581 = insertvalue { i64, ptr } undef, i64 %t580, 0
  %t582 = insertvalue { i64, ptr } %t581, ptr %t579, 1
  %t584 = call { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %s0, ptr %s16, { i64, ptr } %t582)
  store { i64, ptr } %t584, ptr %l272
  br label %bb124
bb123:
  call void @__olang_check_failed(ptr @olang_loc_f328ac53cd348991_ee2d20c1cf12bb4d)
  unreachable
bb124:
  %t585 = load { i64, ptr }, ptr %l272, !tbaa !27
  store { i64, ptr } %t585, ptr %l27, !tbaa !27
  %t586 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t586, ptr %l273, !tbaa !27
  %t587 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t588 = extractvalue { i64, ptr } %t587, 1
  %t589 = call ptr @__olang_scope_of(ptr %t588, ptr null)
  %t590 = ptrtoint ptr %t589 to i64
  %t592 = inttoptr i64 %t590 to ptr
  %t593 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t594 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %t592, ptr %s16, { i64, ptr } %t593, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d46, i32 0, i32 1) })
  store i1 %t594, ptr %l275
  br label %bb125
bb125:
  %t595 = load i1, ptr %l275, !tbaa !21
  br i1 %t595, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s17
  %t596 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t598 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %s16, ptr %s17, { i64, ptr } %t596)
  store { i64, ptr } %t598, ptr %l277
  br label %bb128
bb127:
  br label %bb129
bb128:
  %t599 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t600 = extractvalue { i64, ptr } %t599, 1
  %t601 = extractvalue { i64, ptr } %t599, 0
  %t602 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t601)
  call void @olang_textcopy(ptr %t602, ptr %t600, i64 %t601)
  %t603 = insertvalue { i64, ptr } undef, i64 %t601, 0
  %t604 = insertvalue { i64, ptr } %t603, ptr %t602, 1
  %t606 = extractvalue { i64, ptr } %t604, 0
  %t607 = extractvalue { i64, ptr } %t604, 1
  %t608 = mul i64 %t606, 1
  %t609 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t608)
  call void @llvm.memcpy.p0.p0.i64(ptr %t609, ptr %t607, i64 %t608, i1 false)
  %t610 = insertvalue { i64, ptr } undef, i64 %t606, 0
  %t611 = insertvalue { i64, ptr } %t610, ptr %t609, 1
  store { i64, ptr } %t611, ptr %l26, !tbaa !27
  call void @__olang_scope_close(ptr %s17)
  br label %bb129
bb129:
  store ptr %l13, ptr %l280, !tbaa !29
  %t613 = ptrtoint ptr %s0 to i64
  store i64 %t613, ptr %l281, !tbaa !24
  %t614 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t614, label %bb130, label %bb131
bb130:
  %t616 = call ptr @__olang_region_make(ptr %s0)
  %t617 = ptrtoint ptr %t616 to i64
  store i64 %t617, ptr %l281, !tbaa !24
  br label %bb131
bb131:
  %t618 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t620 = extractvalue { i64, ptr } %t618, 1
  %t621 = extractvalue { i64, ptr } %t618, 0
  %t622 = load i64, ptr %l281
  %t623 = inttoptr i64 %t622 to ptr
  %t624 = call ptr @__olang_scope_alloc(ptr %t623, i64 %t621)
  call void @olang_textcopy(ptr %t624, ptr %t620, i64 %t621)
  %t625 = insertvalue { i64, ptr } undef, i64 %t621, 0
  %t626 = insertvalue { i64, ptr } %t625, ptr %t624, 1
  %t628 = load i64, ptr %l281
  %t629 = inttoptr i64 %t628 to ptr
  %t630 = extractvalue { i64, ptr } %t626, 0
  %t631 = extractvalue { i64, ptr } %t626, 1
  %t632 = mul i64 %t630, 1
  %t633 = call ptr @__olang_scope_alloc(ptr %t629, i64 %t632)
  call void @llvm.memcpy.p0.p0.i64(ptr %t633, ptr %t631, i64 %t632, i1 false)
  %t634 = insertvalue { i64, ptr } undef, i64 %t630, 0
  %t635 = insertvalue { i64, ptr } %t634, ptr %t633, 1
  %t636 = load ptr, ptr %l280, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t636, { i64, ptr } %t635)
  br label %bb132
bb132:
  store ptr %l14, ptr %l286, !tbaa !29
  %t638 = ptrtoint ptr %s0 to i64
  store i64 %t638, ptr %l287, !tbaa !24
  %t639 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t639, label %bb133, label %bb134
bb133:
  %t641 = call ptr @__olang_region_make(ptr %s0)
  %t642 = ptrtoint ptr %t641 to i64
  store i64 %t642, ptr %l287, !tbaa !24
  br label %bb134
bb134:
  %t643 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t645 = extractvalue { i64, ptr } %t643, 1
  %t646 = extractvalue { i64, ptr } %t643, 0
  %t647 = load i64, ptr %l287
  %t648 = inttoptr i64 %t647 to ptr
  %t649 = call ptr @__olang_scope_alloc(ptr %t648, i64 %t646)
  call void @olang_textcopy(ptr %t649, ptr %t645, i64 %t646)
  %t650 = insertvalue { i64, ptr } undef, i64 %t646, 0
  %t651 = insertvalue { i64, ptr } %t650, ptr %t649, 1
  %t653 = load i64, ptr %l287
  %t654 = inttoptr i64 %t653 to ptr
  %t655 = extractvalue { i64, ptr } %t651, 0
  %t656 = extractvalue { i64, ptr } %t651, 1
  %t657 = mul i64 %t655, 1
  %t658 = call ptr @__olang_scope_alloc(ptr %t654, i64 %t657)
  call void @llvm.memcpy.p0.p0.i64(ptr %t658, ptr %t656, i64 %t657, i1 false)
  %t659 = insertvalue { i64, ptr } undef, i64 %t655, 0
  %t660 = insertvalue { i64, ptr } %t659, ptr %t658, 1
  %t661 = load ptr, ptr %l286, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t661, { i64, ptr } %t660)
  br label %bb135
bb135:
  call void @__olang_scope_close(ptr %s16)
  br label %bb136
bb136:
  call void @__olang_scope_close(ptr %s13)
  br label %bb137
bb137:
  br label %bb138
bb138:
  %t663 = load i64, ptr %l21, !tbaa !24
  %t665 = add i64 %t663, 1
  store i64 %t665, ptr %l21, !tbaa !24
  br label %bb46
bb139:
  %t667 = load ptr, ptr %l0, !tbaa !29
  %t669 = getelementptr %"compiler/fmt:loader", ptr %t667, i32 0, i32 2
  store ptr %t669, ptr %l295, !tbaa !29
  %t670 = ptrtoint ptr %v0 to i64
  store i64 %t670, ptr %l296, !tbaa !24
  %t671 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t671, label %bb140, label %bb141
bb140:
  %t673 = call ptr @__olang_region_make(ptr %v0)
  %t674 = ptrtoint ptr %t673 to i64
  store i64 %t674, ptr %l296, !tbaa !24
  br label %bb141
bb141:
  %t675 = load i64, ptr %l296
  %t676 = inttoptr i64 %t675 to ptr
  %t678 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %t676, ptr %l12)
  store { i64, ptr } %t678, ptr %l299
  br label %bb142
bb142:
  %t679 = load { i64, ptr }, ptr %l299, !tbaa !27
  %t680 = load i64, ptr %l296
  %t681 = inttoptr i64 %t680 to ptr
  %t682 = extractvalue { i64, ptr } %t679, 0
  %t683 = extractvalue { i64, ptr } %t679, 1
  %t684 = mul i64 %t682, 1
  %t685 = call ptr @__olang_scope_alloc(ptr %t681, i64 %t684)
  call void @llvm.memcpy.p0.p0.i64(ptr %t685, ptr %t683, i64 %t684, i1 false)
  %t686 = insertvalue { i64, ptr } undef, i64 %t682, 0
  %t687 = insertvalue { i64, ptr } %t686, ptr %t685, 1
  %t688 = load ptr, ptr %l295, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t688, { i64, ptr } %t687)
  br label %bb143
bb143:
  store i64 0, ptr %l28, !tbaa !24
  %t691 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l13)
  store i64 %t691, ptr %l302
  br label %bb144
bb144:
  %t692 = load i64, ptr %l302, !tbaa !24
  store i64 %t692, ptr %l29, !tbaa !24
  store i64 1, ptr %l30, !tbaa !24
  %t693 = load i64, ptr %l29, !tbaa !24
  %t694 = load i64, ptr %l28, !tbaa !24
  %t697 = icmp sgt i64 %t693, %t694
  br i1 %t697, label %bb145, label %bb146
bb145:
  %t699 = load i64, ptr %l30, !tbaa !24
  %t701 = icmp sgt i64 %t699, 0
  br i1 %t701, label %bb147, label %bb148
bb146:
  store i64 0, ptr %l306, !tbaa !24
  br label %bb150
bb147:
  %t703 = load i64, ptr %l29, !tbaa !24
  %t704 = load i64, ptr %l28, !tbaa !24
  %t707 = sub i64 %t703, %t704
  %t708 = load i64, ptr %l30, !tbaa !24
  %t711 = add i64 %t707, %t708
  %t713 = sub i64 %t711, 1
  %t714 = load i64, ptr %l30, !tbaa !24
  %t717 = sdiv i64 %t713, %t714
  store i64 %t717, ptr %l309, !tbaa !24
  br label %bb149
bb148:
  store i64 0, ptr %l309, !tbaa !24
  br label %bb149
bb149:
  %t719 = load i64, ptr %l309, !tbaa !24
  store i64 %t719, ptr %l306, !tbaa !24
  br label %bb150
bb150:
  %t720 = load i64, ptr %l306, !tbaa !24
  store i64 %t720, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  br label %bb151
bb151:
  store %olang.scope zeroinitializer, ptr %s23
  %t721 = load i64, ptr %l32, !tbaa !24
  %t722 = load i64, ptr %l31, !tbaa !24
  %t725 = icmp slt i64 %t721, %t722
  %t727 = xor i1 %t725, true
  br i1 %t727, label %bb152, label %bb153
bb152:
  call void @__olang_scope_close(ptr %s23)
  br label %bb169
bb153:
  br label %bb154
bb154:
  %t729 = load i64, ptr %l28, !tbaa !24
  %t730 = load i64, ptr %l32, !tbaa !24
  %t731 = load i64, ptr %l30, !tbaa !24
  %t734 = mul i64 %t730, %t731
  %t737 = add i64 %t729, %t734
  store i64 %t737, ptr %l33, !tbaa !24
  %t739 = load ptr, ptr %l0, !tbaa !29
  store ptr %t739, ptr %l327, !tbaa !29
  %t740 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t740, ptr %l328, !tbaa !27
  %t741 = load i64, ptr %l33, !tbaa !24
  %t744 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l14, i64 %t741)
  store { i64, ptr } %t744, ptr %l331
  br label %bb155
bb155:
  %t745 = load ptr, ptr %l327, !tbaa !29
  %t746 = load { i64, ptr }, ptr %l328, !tbaa !27
  %t747 = load { i64, ptr }, ptr %l331, !tbaa !27
  %t748 = call { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2etarget(ptr %v0, ptr %s0, ptr %s0, ptr %s23, ptr %t745, { i64, ptr } %t746, { i64, ptr } %t747)
  store { i64, ptr } %t748, ptr %l332
  br label %bb156
bb156:
  %t749 = load { i64, ptr }, ptr %l332, !tbaa !27
  store { i64, ptr } %t749, ptr %l34, !tbaa !27
  store i64 -1, ptr %l35, !tbaa !24
  %t750 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t752 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s23, ptr %s23, { i64, ptr } %t750, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d47, i32 0, i32 1) })
  store i1 %t752, ptr %l334
  br label %bb157
bb157:
  %t753 = load i1, ptr %l334, !tbaa !21
  %t754 = xor i1 %t753, true
  br i1 %t754, label %bb158, label %bb159
bb158:
  %t756 = load ptr, ptr %l0, !tbaa !29
  %t757 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t760 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eload(ptr %v0, ptr %s23, ptr %t756, { i64, ptr } %t757)
  store i64 %t760, ptr %l338
  br label %bb160
bb159:
  br label %bb161
bb160:
  %t761 = load i64, ptr %l338, !tbaa !24
  store i64 %t761, ptr %l35, !tbaa !24
  br label %bb161
bb161:
  %t762 = load ptr, ptr %l0, !tbaa !29
  %t764 = getelementptr %"compiler/fmt:loader", ptr %t762, i32 0, i32 3
  %t765 = load i64, ptr %l11, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t764, i64 %t765)
  br label %bb162
bb162:
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t770 = getelementptr %"compiler/fmt:loader", ptr %t768, i32 0, i32 4
  store ptr %t770, ptr %l343, !tbaa !29
  %t771 = ptrtoint ptr %v0 to i64
  store i64 %t771, ptr %l344, !tbaa !24
  %t772 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t772, label %bb163, label %bb164
bb163:
  %t774 = call ptr @__olang_region_make(ptr %v0)
  %t775 = ptrtoint ptr %t774 to i64
  store i64 %t775, ptr %l344, !tbaa !24
  br label %bb164
bb164:
  %t776 = load i64, ptr %l33, !tbaa !24
  %t779 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s23, ptr %l13, i64 %t776)
  store { i64, ptr } %t779, ptr %l348
  br label %bb165
bb165:
  %t780 = load { i64, ptr }, ptr %l348, !tbaa !27
  %t781 = extractvalue { i64, ptr } %t780, 1
  %t782 = extractvalue { i64, ptr } %t780, 0
  %t783 = load i64, ptr %l344
  %t784 = inttoptr i64 %t783 to ptr
  %t785 = call ptr @__olang_scope_alloc(ptr %t784, i64 %t782)
  call void @olang_textcopy(ptr %t785, ptr %t781, i64 %t782)
  %t786 = insertvalue { i64, ptr } undef, i64 %t782, 0
  %t787 = insertvalue { i64, ptr } %t786, ptr %t785, 1
  %t789 = load i64, ptr %l344
  %t790 = inttoptr i64 %t789 to ptr
  %t791 = extractvalue { i64, ptr } %t787, 0
  %t792 = extractvalue { i64, ptr } %t787, 1
  %t793 = mul i64 %t791, 1
  %t794 = call ptr @__olang_scope_alloc(ptr %t790, i64 %t793)
  call void @llvm.memcpy.p0.p0.i64(ptr %t794, ptr %t792, i64 %t793, i1 false)
  %t795 = insertvalue { i64, ptr } undef, i64 %t791, 0
  %t796 = insertvalue { i64, ptr } %t795, ptr %t794, 1
  %t797 = load ptr, ptr %l343, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t797, { i64, ptr } %t796)
  br label %bb166
bb166:
  %t799 = load ptr, ptr %l0, !tbaa !29
  %t801 = getelementptr %"compiler/fmt:loader", ptr %t799, i32 0, i32 5
  %t802 = load i64, ptr %l35, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t801, i64 %t802)
  br label %bb167
bb167:
  call void @__olang_scope_close(ptr %s23)
  br label %bb168
bb168:
  %t805 = load i64, ptr %l32, !tbaa !24
  %t807 = add i64 %t805, 1
  store i64 %t807, ptr %l32, !tbaa !24
  br label %bb151
bb169:
  %t809 = load i64, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  store i64 %t809, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eoracle(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, { i64, ptr } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca i1
  %l30 = alloca i1
  %l31 = alloca { i64, ptr }
  %l33 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  store ptr %t2, ptr %l10, !tbaa !29
  %t3 = load ptr, ptr %l2, !tbaa !29
  store ptr %t3, ptr %l11, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/fmt:loader", ptr %t4, i32 0, i32 2
  %t7 = load i64, ptr %l3, !tbaa !24
  %t10 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store { i64, ptr } %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l9, !tbaa !29
  %t12 = load ptr, ptr %l10, !tbaa !29
  %t13 = load ptr, ptr %l11, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l15, !tbaa !27
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eaddNames(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %v0, ptr %t11, ptr %t12, ptr %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d48, i32 0, i32 1) }, { i64, ptr } %t14)
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v3, ptr %s1, ptr %s1, { i64, ptr } %a4, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d49, i32 0, i32 1) })
  store { i64, ptr } %t17, ptr %l17
  br label %bb3
bb3:
  %t18 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t18, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l7, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s2
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb6:
  br label %bb7
bb7:
  %t31 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t31, ptr %l24, !tbaa !27
  %t32 = load i64, ptr %l6, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %t35, i64 %t32
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !37
  store { i64, ptr } %t37, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s1, ptr %s2, { i64, ptr } %t39, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t41, ptr %l28
  br label %bb8
bb8:
  %t42 = load i1, ptr %l28, !tbaa !21
  %t43 = xor i1 %t42, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t45, ptr %l31, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr i8, ptr %t47, i64 0
  %t49 = load i8, ptr %t48, !tbaa !32
  %t51 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t49)
  store i1 %t51, ptr %l33
  br label %bb11
bb10:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb12
bb11:
  %t52 = load i1, ptr %l33, !tbaa !21
  store i1 %t52, ptr %l30, !tbaa !21
  br label %bb12
bb12:
  %t53 = load i1, ptr %l30, !tbaa !21
  br i1 %t53, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t55 = load ptr, ptr %l2, !tbaa !29
  %t56 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v2, ptr %s3, ptr %s1, ptr %t54, ptr %t55, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d51, i32 0, i32 1) }, { i64, ptr } %t56)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t60 = load i64, ptr %l6, !tbaa !24
  %t62 = add i64 %t60, 1
  store i64 %t62, ptr %l6, !tbaa !24
  br label %bb4
bb18:
  call void @__olang_scope_close(ptr %s1)
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v1, ptr %v2, ptr %s0, ptr %s0, ptr %t64, ptr %t65, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d52, i32 0, i32 1) }, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d53, i32 0, i32 1) })
  br label %bb19
bb19:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t70 = load ptr, ptr %l2, !tbaa !29
  %t71 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2echains(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %t68, ptr %t69, ptr %t70, i64 %t71, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d54, i32 0, i32 1) }, i64 0)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eprelude(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca [2 x { i64, ptr }]
  %l3 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca [2 x { i64, ptr }]
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i32
  %l24 = alloca i1
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l42 = alloca i1
  %l44 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l67 = alloca i64
  %l68 = alloca i64
  %l76 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l11
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 32)
  br label %bb2
bb2:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/fmt:loader", ptr %t4, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  %t9 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t7, 0
  %t10 = insertvalue [2 x { i64, ptr }] %t9, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t10, ptr %l2
  %t13 = insertvalue { i64, ptr } undef, i64 2, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %l2, 1
  %t16 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l18
  br label %bb3
bb3:
  %t17 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t17, ptr %l3, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t20 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %s0, ptr %s0, { i64, ptr } %t18)
  %t21 = extractvalue { i32, { i64, ptr } } %t20, 1
  %t22 = extractvalue { i32, { i64, ptr } } %t20, 0
  store i32 %t22, ptr %l22
  %t23 = icmp ne i32 %t22, 0
  br i1 %t23, label %bb5, label %ok.24, !prof !99
ok.24:
  store { i64, ptr } %t21, ptr %l21
  br label %bb4
bb4:
  %t25 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t25, ptr %l19, !tbaa !27
  br label %bb9
bb5:
  %t26 = load i32, ptr %l22, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l24, !tbaa !21
  %t30 = load i32, ptr %l22, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb6, label %bb7
bb6:
  call void @__olang_errpay_pop()
  br label %bb7
bb7:
  br label %bb8
bb8:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t35, ptr %l28, !tbaa !27
  %t36 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t36, 0
  store i64 %t37, ptr %l29, !tbaa !24
  %t38 = load i64, ptr %l29, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t39)
  %t41 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  store { i64, ptr } %t42, ptr %l30, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = load i64, ptr %l29, !tbaa !24
  %t48 = mul i64 %t47, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t44, ptr %t46, i64 %t48, i1 false)
  %t49 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t49, ptr %l28, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t50 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t50, ptr %rv
  br label %ret
bb9:
  %t51 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t51, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s3
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s3)
  br label %bb33
bb12:
  br label %bb13
bb13:
  %t66 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr { i64, ptr }, ptr %t70, i64 %t67
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !37
  store { i64, ptr } %t72, ptr %l8, !tbaa !27
  %t74 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %s0, ptr %s3, { i64, ptr } %t74, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d57, i32 0, i32 1) })
  store i1 %t76, ptr %l42
  br label %bb14
bb14:
  %t77 = load i1, ptr %l42, !tbaa !21
  %t78 = xor i1 %t77, true
  br i1 %t78, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb16:
  br label %bb17
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l44, !tbaa !29
  %t81 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t84 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t81, 0
  %t86 = insertvalue [2 x { i64, ptr }] %t84, { i64, ptr } %t82, 1
  store [2 x { i64, ptr }] %t86, ptr %l9
  %t89 = insertvalue { i64, ptr } undef, i64 2, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %l9, 1
  %t92 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s3, ptr %s3, { i64, ptr } %t90)
  store { i64, ptr } %t92, ptr %l50
  br label %bb18
bb18:
  %t93 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 0
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = mul i64 %t94, 1
  %t97 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t96)
  call void @llvm.memcpy.p0.p0.i64(ptr %t97, ptr %t95, i64 %t96, i1 false)
  %t98 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  %t100 = load ptr, ptr %l44, !tbaa !29
  %t102 = call i64 @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2eload(ptr %v0, ptr %s3, ptr %t100, { i64, ptr } %t99)
  store i64 %t102, ptr %l52
  br label %bb19
bb19:
  %t103 = load i64, ptr %l52, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  %t104 = load i64, ptr %l10, !tbaa !24
  %t106 = icmp sge i64 %t104, 0
  br i1 %t106, label %bb20, label %bb21
bb20:
  store ptr %l1, ptr %l55, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/fmt:loader", ptr %t108, i32 0, i32 2
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t110, i64 %t111)
  store { i64, ptr } %t114, ptr %l59
  br label %bb22
bb21:
  br label %bb31
bb22:
  %t115 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t115, ptr %l60, !tbaa !27
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/fmt:loader", ptr %t116, i32 0, i32 2
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t118, i64 %t119)
  store { i64, ptr } %t122, ptr %l64
  br label %bb23
bb23:
  %t123 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t126 = extractvalue { i64, ptr } %t123, 0
  store i64 %t126, ptr %l67, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t127, 0
  store i64 %t128, ptr %l68, !tbaa !24
  %t129 = icmp sge i64 1, 0
  br i1 %t129, label %bb24, label %bb25
bb24:
  %t131 = load i64, ptr %l67, !tbaa !24
  %t132 = icmp sle i64 1, %t131
  br i1 %t132, label %bb26, label %bb27
bb25:
  call void @__olang_check_failed(ptr @olang_loc_1c96c695fa9cb803_60711cea71b32ee7)
  unreachable
bb26:
  %t134 = load i64, ptr %l67, !tbaa !24
  %t135 = load i64, ptr %l68, !tbaa !24
  %t136 = icmp sle i64 %t134, %t135
  br i1 %t136, label %bb28, label %bb29
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1c96c695fa9cb803_60711cea71b32ee7)
  unreachable
bb28:
  %t138 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = load i64, ptr %l67, !tbaa !24
  %t141 = getelementptr i8, ptr %t139, i64 1
  %t142 = sub i64 %t140, 1
  %t143 = insertvalue { i64, ptr } undef, i64 %t142, 0
  %t144 = insertvalue { i64, ptr } %t143, ptr %t141, 1
  %t145 = load ptr, ptr %l55, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %v0, ptr %t145, { i64, ptr } %t144)
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_1c96c695fa9cb803_60711cea71b32ee7)
  unreachable
bb30:
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb32
bb32:
  %t147 = load i64, ptr %l6, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l6, !tbaa !24
  br label %bb10
bb33:
  %t152 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t152, ptr %l76
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t153 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t153, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ffmt_2ecompiler_2ffmt_3aloader_2etarget(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca [2 x { i64, ptr }]
  %l6 = alloca [2 x { i64, ptr }]
  %l8 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l24 = alloca { i64, ptr }
  %l25 = alloca i1
  %l26 = alloca i1
  %l28 = alloca i1
  %l30 = alloca i1
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l36 = alloca i64
  %l37 = alloca { i64, ptr }
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l54 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l3, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v2, { i64, ptr } %t3, i8 47)
  %t7 = extractvalue { i32, i64 } %t6, 1
  %t8 = extractvalue { i32, i64 } %t6, 0
  store i32 %t8, ptr %l12
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store i64 %t7, ptr %l11
  br label %bb1
bb1:
  %t11 = load i64, ptr %l11, !tbaa !24
  store i64 %t11, ptr %l8, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l8, !tbaa !24
  br label %bb4
bb4:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t17, ptr %l15, !tbaa !27
  %t18 = load i64, ptr %l4, !tbaa !24
  store i64 %t18, ptr %l16, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t19, 0
  store i64 %t20, ptr %l17, !tbaa !24
  %t21 = icmp sge i64 0, 0
  br i1 %t21, label %bb7, label %bb8
bb6:
  br label %bb13
bb7:
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = icmp sle i64 0, %t23
  br i1 %t24, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_3df0b8839dc54179_133a546f9cf2d20d)
  unreachable
bb9:
  %t26 = load i64, ptr %l16, !tbaa !24
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = icmp sle i64 %t26, %t27
  br i1 %t28, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3df0b8839dc54179_133a546f9cf2d20d)
  unreachable
bb11:
  %t30 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l16, !tbaa !24
  %t33 = getelementptr i8, ptr %t31, i64 0
  %t34 = sub i64 %t32, 0
  %t35 = insertvalue { i64, ptr } undef, i64 %t34, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t33, 1
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_3df0b8839dc54179_133a546f9cf2d20d)
  unreachable
bb13:
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t41 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t42 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v2, ptr %s0, { i64, ptr } %t38, { i64, ptr } %t41)
  store i1 %t42, ptr %l25
  br label %bb14
bb14:
  %t43 = load i1, ptr %l25, !tbaa !21
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t44 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t46 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t44, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t46, ptr %l28
  br label %bb17
bb16:
  store i1 false, ptr %l26, !tbaa !21
  br label %bb18
bb17:
  %t47 = load i1, ptr %l28, !tbaa !21
  %t48 = xor i1 %t47, true
  store i1 %t48, ptr %l26, !tbaa !21
  br label %bb18
bb18:
  %t50 = load i1, ptr %l26, !tbaa !21
  br i1 %t50, label %bb19, label %bb20
bb19:
  %t51 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t53 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %s0, { i64, ptr } %t51, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d60, i32 0, i32 1) })
  store i1 %t53, ptr %l32
  br label %bb21
bb20:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb22
bb21:
  %t54 = load i1, ptr %l32, !tbaa !21
  %t55 = xor i1 %t54, true
  store i1 %t55, ptr %l30, !tbaa !21
  br label %bb22
bb22:
  %t57 = load i1, ptr %l30, !tbaa !21
  br i1 %t57, label %bb23, label %bb24
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l34, !tbaa !27
  %t58 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t58, ptr %l35, !tbaa !27
  %t59 = load { i64, ptr }, ptr %l35, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t59, 0
  store i64 %t60, ptr %l36, !tbaa !24
  %t61 = load i64, ptr %l36, !tbaa !24
  %t62 = mul i64 %t61, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t62)
  %t64 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  store { i64, ptr } %t65, ptr %l37, !tbaa !27
  %t66 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = load i64, ptr %l36, !tbaa !24
  %t71 = mul i64 %t70, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t67, ptr %t69, i64 %t71, i1 false)
  %t72 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t72, ptr %l35, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t73 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t73, ptr %rv
  br label %ret
bb24:
  br label %bb25
bb25:
  %t74 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t76 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v2, ptr %s0, { i64, ptr } %t74, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d62, i32 0, i32 1) })
  store i1 %t76, ptr %l39
  br label %bb26
bb26:
  %t77 = load i1, ptr %l39, !tbaa !21
  br i1 %t77, label %bb27, label %bb28
bb27:
  store %olang.scope zeroinitializer, ptr %s3
  %t80 = getelementptr %"compiler/fmt:loader", ptr %a0, i32 0, i32 0
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l41, !tbaa !27
  %t82 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t82, ptr %l42, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t83, 0
  store i64 %t86, ptr %l45, !tbaa !24
  %t87 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t87, 0
  store i64 %t88, ptr %l46, !tbaa !24
  %t89 = icmp sge i64 4, 0
  br i1 %t89, label %bb29, label %bb30
bb28:
  br label %bb36
bb29:
  %t91 = load i64, ptr %l45, !tbaa !24
  %t92 = icmp sle i64 4, %t91
  br i1 %t92, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_9121eab1d44cad4c_7d1c1b769798e530)
  unreachable
bb31:
  %t94 = load i64, ptr %l45, !tbaa !24
  %t95 = load i64, ptr %l46, !tbaa !24
  %t96 = icmp sle i64 %t94, %t95
  br i1 %t96, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_9121eab1d44cad4c_7d1c1b769798e530)
  unreachable
bb33:
  %t98 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = load i64, ptr %l45, !tbaa !24
  %t101 = getelementptr i8, ptr %t99, i64 4
  %t102 = sub i64 %t100, 4
  %t103 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t101, 1
  %t105 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t106 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t105, 0
  %t108 = insertvalue [2 x { i64, ptr }] %t106, { i64, ptr } %t104, 1
  store [2 x { i64, ptr }] %t108, ptr %l5
  %t111 = insertvalue { i64, ptr } undef, i64 2, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %l5, 1
  %t114 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s3, ptr %s3, { i64, ptr } %t112)
  store { i64, ptr } %t114, ptr %l54
  br label %bb35
bb34:
  call void @__olang_check_failed(ptr @olang_loc_9121eab1d44cad4c_7d1c1b769798e530)
  unreachable
bb35:
  %t115 = load { i64, ptr }, ptr %l54, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 1
  %t117 = extractvalue { i64, ptr } %t115, 0
  %t118 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t120)
  call void @olang_textcopy(ptr %t121, ptr %t116, i64 %t117)
  %t122 = getelementptr i8, ptr %t121, i64 %t117
  call void @olang_textcopy(ptr %t122, ptr %t118, i64 %t119)
  %t123 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t124 = insertvalue { i64, ptr } %t123, ptr %t121, 1
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t124, ptr %rv
  br label %ret
bb36:
  %t128 = call { i64, ptr } @std_2ffilepath_2eDir(ptr %v1, ptr %s0, { i64, ptr } %a1)
  store { i64, ptr } %t128, ptr %l57
  br label %bb37
bb37:
  %t129 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t130 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t131 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t130, 0
  %t133 = insertvalue [2 x { i64, ptr }] %t131, { i64, ptr } %t129, 1
  store [2 x { i64, ptr }] %t133, ptr %l6
  %t136 = insertvalue { i64, ptr } undef, i64 2, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %l6, 1
  %t139 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t137)
  store { i64, ptr } %t139, ptr %l62
  br label %bb38
bb38:
  %t140 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t140, 1
  %t142 = extractvalue { i64, ptr } %t140, 0
  %t143 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t144 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  %t145 = add i64 %t142, %t144
  %t146 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t141, i64 %t142)
  %t147 = getelementptr i8, ptr %t146, i64 %t142
  call void @olang_textcopy(ptr %t147, ptr %t143, i64 %t144)
  %t148 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t149 = insertvalue { i64, ptr } %t148, ptr %t146, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t149, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2ffmt_2eisCloser(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l3 = alloca i1
  %l6 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t3 = trunc i64 109 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l3, !tbaa !21
  br label %bb3
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 114}
  %t8 = trunc i64 111 to i32
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
  %t14 = trunc i64 113 to i32
  %t15 = icmp eq i32 %t12, %t14
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb6
bb6:
  %t17 = load i1, ptr %l6, !tbaa !21
  store i1 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ffmt_2elineEndOf(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i1
  %l12 = alloca { i64, ptr }
  %rv = alloca i64
  store { i64, ptr } %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp sgt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  store i64 %t5, ptr %l5, !tbaa !24
  br label %bb3
bb2:
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t7 = load i64, ptr %l5, !tbaa !24
  store i64 %t7, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t8 = load i64, ptr %l2, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t8, %t11
  br i1 %t14, label %bb5, label %bb6
bb5:
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t16, ptr %l12, !tbaa !27
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i8, ptr %t20, i64 %t17
  %t22 = load i8, ptr %t21, !tbaa !32
  %t24 = icmp ne i8 %t22, 10
  store i1 %t24, ptr %l11, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l11, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = add i64 %t29, 1
  store i64 %t31, ptr %l2, !tbaa !24
  br label %bb11
bb11:
  br label %bb4
bb12:
  %t33 = load i64, ptr %l2, !tbaa !24
  store i64 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ffmt_2elineStartOf(ptr %v0, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca i64
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  store { i64, ptr } %a0, ptr %l7, !tbaa !27
  %t8 = load i64, ptr %l2, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = icmp ne i8 %t15, 10
  store i1 %t17, ptr %l6, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l6, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  br label %bb7
bb7:
  %t22 = load i64, ptr %l2, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l2, !tbaa !24
  br label %bb8
bb8:
  br label %bb1
bb9:
  %t26 = load i64, ptr %l2, !tbaa !24
  store i64 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ffmt_3aformatter_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca %"std/prelude/text:StringBuilder"
  %l22 = alloca i1
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca i1
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l71 = alloca i64
  %l73 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca i64
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca i64
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l95 = alloca i64
  %l97 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l99 = alloca i64
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca i64
  %l105 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l107 = alloca i64
  %l109 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l111 = alloca i64
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca i64
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca i64
  %l121 = alloca %"std/prelude/text:StringBuilder"
  %l123 = alloca i64
  %l126 = alloca i64
  %l130 = alloca i64
  %l132 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l134 = alloca i64
  %l136 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l138 = alloca %"compiler/fmt:formatter"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l3, !tbaa !27
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l39, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l39, !tbaa !24
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l42, !tbaa !24
  %t13 = load i64, ptr %l42, !tbaa !24
  %t14 = icmp sge i64 %t13, 0
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load i64, ptr %l42, !tbaa !24
  %t17 = icmp sle i64 %t16, 1152921504606846975
  br i1 %t17, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_ce709d7b9ef8b1fc_3d0b2a4c89679e00)
  unreachable
bb5:
  %t19 = load i64, ptr %l42, !tbaa !24
  %t20 = mul i64 %t19, 8
  %t21 = load i64, ptr %l39
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc_zeroed(ptr %t22, i64 %t20)
  %t24 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l4, !tbaa !27
  %t27 = ptrtoint ptr %v2 to i64
  store i64 %t27, ptr %l46, !tbaa !24
  %t28 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e3
  br i1 %t28, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_ce709d7b9ef8b1fc_3d0b2a4c89679e00)
  unreachable
bb7:
  %t30 = call ptr @__olang_region_make(ptr %v2)
  %t31 = ptrtoint ptr %t30 to i64
  store i64 %t31, ptr %l46, !tbaa !24
  br label %bb8
bb8:
  %t32 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t34 = extractvalue { i64, ptr } %t32, 0
  store i64 %t34, ptr %l49, !tbaa !24
  %t35 = load i64, ptr %l49, !tbaa !24
  %t36 = icmp sge i64 %t35, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l49, !tbaa !24
  %t39 = mul i64 %t38, 1
  %t40 = load i64, ptr %l46
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call ptr @__olang_scope_alloc_zeroed(ptr %t41, i64 %t39)
  %t43 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t42, 1
  store { i64, ptr } %t44, ptr %l5, !tbaa !27
  %t46 = ptrtoint ptr %v2 to i64
  store i64 %t46, ptr %l52, !tbaa !24
  %t47 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e4
  br i1 %t47, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_d589fc983080be49_a3fac9ed8d21e52d)
  unreachable
bb11:
  %t49 = call ptr @__olang_region_make(ptr %v2)
  %t50 = ptrtoint ptr %t49 to i64
  store i64 %t50, ptr %l52, !tbaa !24
  br label %bb12
bb12:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t51, 0
  store i64 %t53, ptr %l55, !tbaa !24
  %t54 = load i64, ptr %l55, !tbaa !24
  %t55 = icmp sge i64 %t54, 0
  br i1 %t55, label %bb13, label %bb14
bb13:
  %t57 = load i64, ptr %l55, !tbaa !24
  %t58 = icmp sle i64 %t57, 1152921504606846975
  br i1 %t58, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_5014c5e33980418a_6c70c79ebb210b2e)
  unreachable
bb15:
  %t60 = load i64, ptr %l55, !tbaa !24
  %t61 = mul i64 %t60, 8
  %t62 = load i64, ptr %l52
  %t63 = inttoptr i64 %t62 to ptr
  %t64 = call ptr @__olang_scope_alloc_zeroed(ptr %t63, i64 %t61)
  %t65 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l6, !tbaa !27
  %t68 = ptrtoint ptr %v2 to i64
  store i64 %t68, ptr %l59, !tbaa !24
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e5
  br i1 %t69, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_5014c5e33980418a_6c70c79ebb210b2e)
  unreachable
bb17:
  %t71 = call ptr @__olang_region_make(ptr %v2)
  %t72 = ptrtoint ptr %t71 to i64
  store i64 %t72, ptr %l59, !tbaa !24
  br label %bb18
bb18:
  %t73 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t73, 0
  store i64 %t75, ptr %l62, !tbaa !24
  %t76 = load i64, ptr %l62, !tbaa !24
  %t77 = icmp sge i64 %t76, 0
  br i1 %t77, label %bb19, label %bb20
bb19:
  %t79 = load i64, ptr %l62, !tbaa !24
  %t80 = mul i64 %t79, 1
  %t81 = load i64, ptr %l59
  %t82 = inttoptr i64 %t81 to ptr
  %t83 = call ptr @__olang_scope_alloc_zeroed(ptr %t82, i64 %t80)
  %t84 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  store { i64, ptr } %t85, ptr %l7, !tbaa !27
  %t87 = ptrtoint ptr %v2 to i64
  store i64 %t87, ptr %l65, !tbaa !24
  %t88 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e6
  br i1 %t88, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_b2eb5d9479cf4f5f_182504dbd1c367a3)
  unreachable
bb21:
  %t90 = call ptr @__olang_region_make(ptr %v2)
  %t91 = ptrtoint ptr %t90 to i64
  store i64 %t91, ptr %l65, !tbaa !24
  br label %bb22
bb22:
  %t92 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t92, 0
  store i64 %t94, ptr %l68, !tbaa !24
  %t95 = load i64, ptr %l68, !tbaa !24
  %t96 = icmp sge i64 %t95, 0
  br i1 %t96, label %bb23, label %bb24
bb23:
  %t98 = load i64, ptr %l68, !tbaa !24
  %t99 = mul i64 %t98, 1
  %t100 = load i64, ptr %l65
  %t101 = inttoptr i64 %t100 to ptr
  %t102 = call ptr @__olang_scope_alloc_zeroed(ptr %t101, i64 %t99)
  %t103 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l8, !tbaa !27
  %t106 = ptrtoint ptr %v2 to i64
  store i64 %t106, ptr %l71, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e7
  br i1 %t107, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_bfaf8ae940299f30_3213b1cd9190eecc)
  unreachable
bb25:
  %t109 = call ptr @__olang_region_make(ptr %v2)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l71, !tbaa !24
  br label %bb26
bb26:
  %t111 = load i64, ptr %l71
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t112, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t113, ptr %l73
  br label %bb27
bb27:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e7
  br i1 %t114, label %bb28, label %bb29
bb28:
  %t116 = load i64, ptr %l71
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73, i32 0, i32 0
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = icmp ne ptr %t121, null
  %t123 = select i1 %t122, ptr %t121, ptr null
  %t124 = icmp eq ptr %t123, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t124)
  br label %bb29
bb29:
  %t125 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l73
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125, ptr %l9
  %t126 = ptrtoint ptr %v2 to i64
  store i64 %t126, ptr %l75, !tbaa !24
  %t127 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e8
  br i1 %t127, label %bb30, label %bb31
bb30:
  %t129 = call ptr @__olang_region_make(ptr %v2)
  %t130 = ptrtoint ptr %t129 to i64
  store i64 %t130, ptr %l75, !tbaa !24
  br label %bb31
bb31:
  %t131 = load i64, ptr %l75
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t132, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t133, ptr %l77
  br label %bb32
bb32:
  %t134 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e8
  br i1 %t134, label %bb33, label %bb34
bb33:
  %t136 = load i64, ptr %l75
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77, i32 0, i32 0
  %t139 = load { i64, ptr }, ptr %t138
  %t140 = extractvalue { i64, ptr } %t139, 1
  %t141 = call ptr @__olang_region_or(ptr %t140, ptr null)
  %t142 = icmp ne ptr %t141, null
  %t143 = select i1 %t142, ptr %t141, ptr null
  %t144 = icmp eq ptr %t143, %t137
  call void @__olang_region_settle(ptr %t137, i1 %t144)
  br label %bb34
bb34:
  %t145 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t145, ptr %l10
  %t146 = ptrtoint ptr %v2 to i64
  store i64 %t146, ptr %l79, !tbaa !24
  %t147 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e9
  br i1 %t147, label %bb35, label %bb36
bb35:
  %t149 = call ptr @__olang_region_make(ptr %v2)
  %t150 = ptrtoint ptr %t149 to i64
  store i64 %t150, ptr %l79, !tbaa !24
  br label %bb36
bb36:
  %t151 = load i64, ptr %l79
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t152, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t153, ptr %l81
  br label %bb37
bb37:
  %t154 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e9
  br i1 %t154, label %bb38, label %bb39
bb38:
  %t156 = load i64, ptr %l79
  %t157 = inttoptr i64 %t156 to ptr
  %t158 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81, i32 0, i32 0
  %t159 = load { i64, ptr }, ptr %t158
  %t160 = extractvalue { i64, ptr } %t159, 1
  %t161 = call ptr @__olang_region_or(ptr %t160, ptr null)
  %t162 = icmp ne ptr %t161, null
  %t163 = select i1 %t162, ptr %t161, ptr null
  %t164 = icmp eq ptr %t163, %t157
  call void @__olang_region_settle(ptr %t157, i1 %t164)
  br label %bb39
bb39:
  %t165 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t165, ptr %l11
  %t166 = ptrtoint ptr %v2 to i64
  store i64 %t166, ptr %l83, !tbaa !24
  %t167 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e10
  br i1 %t167, label %bb40, label %bb41
bb40:
  %t169 = call ptr @__olang_region_make(ptr %v2)
  %t170 = ptrtoint ptr %t169 to i64
  store i64 %t170, ptr %l83, !tbaa !24
  br label %bb41
bb41:
  %t171 = load i64, ptr %l83
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t172, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t173, ptr %l85
  br label %bb42
bb42:
  %t174 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e10
  br i1 %t174, label %bb43, label %bb44
bb43:
  %t176 = load i64, ptr %l83
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85, i32 0, i32 0
  %t179 = load { i64, ptr }, ptr %t178
  %t180 = extractvalue { i64, ptr } %t179, 1
  %t181 = call ptr @__olang_region_or(ptr %t180, ptr null)
  %t182 = icmp ne ptr %t181, null
  %t183 = select i1 %t182, ptr %t181, ptr null
  %t184 = icmp eq ptr %t183, %t177
  call void @__olang_region_settle(ptr %t177, i1 %t184)
  br label %bb44
bb44:
  %t185 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t185, ptr %l12
  %t186 = ptrtoint ptr %v2 to i64
  store i64 %t186, ptr %l87, !tbaa !24
  %t187 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e11
  br i1 %t187, label %bb45, label %bb46
bb45:
  %t189 = call ptr @__olang_region_make(ptr %v2)
  %t190 = ptrtoint ptr %t189 to i64
  store i64 %t190, ptr %l87, !tbaa !24
  br label %bb46
bb46:
  %t191 = load i64, ptr %l87
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t192, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t193, ptr %l89
  br label %bb47
bb47:
  %t194 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e11
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t196 = load i64, ptr %l87
  %t197 = inttoptr i64 %t196 to ptr
  %t198 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89, i32 0, i32 0
  %t199 = load { i64, ptr }, ptr %t198
  %t200 = extractvalue { i64, ptr } %t199, 1
  %t201 = call ptr @__olang_region_or(ptr %t200, ptr null)
  %t202 = icmp ne ptr %t201, null
  %t203 = select i1 %t202, ptr %t201, ptr null
  %t204 = icmp eq ptr %t203, %t197
  call void @__olang_region_settle(ptr %t197, i1 %t204)
  br label %bb49
bb49:
  %t205 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t205, ptr %l13
  %t206 = ptrtoint ptr %v2 to i64
  store i64 %t206, ptr %l91, !tbaa !24
  %t207 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e12
  br i1 %t207, label %bb50, label %bb51
bb50:
  %t209 = call ptr @__olang_region_make(ptr %v2)
  %t210 = ptrtoint ptr %t209 to i64
  store i64 %t210, ptr %l91, !tbaa !24
  br label %bb51
bb51:
  %t211 = load i64, ptr %l91
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t212, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t213, ptr %l93
  br label %bb52
bb52:
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e12
  br i1 %t214, label %bb53, label %bb54
bb53:
  %t216 = load i64, ptr %l91
  %t217 = inttoptr i64 %t216 to ptr
  %t218 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93, i32 0, i32 0
  %t219 = load { i64, ptr }, ptr %t218
  %t220 = extractvalue { i64, ptr } %t219, 1
  %t221 = call ptr @__olang_region_or(ptr %t220, ptr null)
  %t222 = icmp ne ptr %t221, null
  %t223 = select i1 %t222, ptr %t221, ptr null
  %t224 = icmp eq ptr %t223, %t217
  call void @__olang_region_settle(ptr %t217, i1 %t224)
  br label %bb54
bb54:
  %t225 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t225, ptr %l14
  %t226 = ptrtoint ptr %v2 to i64
  store i64 %t226, ptr %l95, !tbaa !24
  %t227 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e13
  br i1 %t227, label %bb55, label %bb56
bb55:
  %t229 = call ptr @__olang_region_make(ptr %v2)
  %t230 = ptrtoint ptr %t229 to i64
  store i64 %t230, ptr %l95, !tbaa !24
  br label %bb56
bb56:
  %t231 = load i64, ptr %l95
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t232, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l97
  br label %bb57
bb57:
  %t234 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e13
  br i1 %t234, label %bb58, label %bb59
bb58:
  %t236 = load i64, ptr %l95
  %t237 = inttoptr i64 %t236 to ptr
  %t238 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97, i32 0, i32 0
  %t239 = load { i64, ptr }, ptr %t238
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = call ptr @__olang_region_or(ptr %t240, ptr null)
  %t242 = icmp ne ptr %t241, null
  %t243 = select i1 %t242, ptr %t241, ptr null
  %t244 = icmp eq ptr %t243, %t237
  call void @__olang_region_settle(ptr %t237, i1 %t244)
  br label %bb59
bb59:
  %t245 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l97
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t245, ptr %l15
  %t246 = ptrtoint ptr %v2 to i64
  store i64 %t246, ptr %l99, !tbaa !24
  %t247 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e14
  br i1 %t247, label %bb60, label %bb61
bb60:
  %t249 = call ptr @__olang_region_make(ptr %v2)
  %t250 = ptrtoint ptr %t249 to i64
  store i64 %t250, ptr %l99, !tbaa !24
  br label %bb61
bb61:
  %t251 = load i64, ptr %l99
  %t252 = inttoptr i64 %t251 to ptr
  %t253 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t252, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l101
  br label %bb62
bb62:
  %t254 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e14
  br i1 %t254, label %bb63, label %bb64
bb63:
  %t256 = load i64, ptr %l99
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101, i32 0, i32 0
  %t259 = load { i64, ptr }, ptr %t258
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr null)
  %t262 = icmp ne ptr %t261, null
  %t263 = select i1 %t262, ptr %t261, ptr null
  %t264 = icmp eq ptr %t263, %t257
  call void @__olang_region_settle(ptr %t257, i1 %t264)
  br label %bb64
bb64:
  %t265 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t265, ptr %l16
  %t266 = ptrtoint ptr %v2 to i64
  store i64 %t266, ptr %l103, !tbaa !24
  %t267 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e15
  br i1 %t267, label %bb65, label %bb66
bb65:
  %t269 = call ptr @__olang_region_make(ptr %v2)
  %t270 = ptrtoint ptr %t269 to i64
  store i64 %t270, ptr %l103, !tbaa !24
  br label %bb66
bb66:
  %t271 = load i64, ptr %l103
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t272, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l105
  br label %bb67
bb67:
  %t274 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e15
  br i1 %t274, label %bb68, label %bb69
bb68:
  %t276 = load i64, ptr %l103
  %t277 = inttoptr i64 %t276 to ptr
  %t278 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105, i32 0, i32 0
  %t279 = load { i64, ptr }, ptr %t278
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = call ptr @__olang_region_or(ptr %t280, ptr null)
  %t282 = icmp ne ptr %t281, null
  %t283 = select i1 %t282, ptr %t281, ptr null
  %t284 = icmp eq ptr %t283, %t277
  call void @__olang_region_settle(ptr %t277, i1 %t284)
  br label %bb69
bb69:
  %t285 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t285, ptr %l17
  %t286 = ptrtoint ptr %v2 to i64
  store i64 %t286, ptr %l107, !tbaa !24
  %t287 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e16
  br i1 %t287, label %bb70, label %bb71
bb70:
  %t289 = call ptr @__olang_region_make(ptr %v2)
  %t290 = ptrtoint ptr %t289 to i64
  store i64 %t290, ptr %l107, !tbaa !24
  br label %bb71
bb71:
  %t291 = load i64, ptr %l107
  %t292 = inttoptr i64 %t291 to ptr
  %t293 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t292, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t293, ptr %l109
  br label %bb72
bb72:
  %t294 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e16
  br i1 %t294, label %bb73, label %bb74
bb73:
  %t296 = load i64, ptr %l107
  %t297 = inttoptr i64 %t296 to ptr
  %t298 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109, i32 0, i32 0
  %t299 = load { i64, ptr }, ptr %t298
  %t300 = extractvalue { i64, ptr } %t299, 1
  %t301 = call ptr @__olang_region_or(ptr %t300, ptr null)
  %t302 = icmp ne ptr %t301, null
  %t303 = select i1 %t302, ptr %t301, ptr null
  %t304 = icmp eq ptr %t303, %t297
  call void @__olang_region_settle(ptr %t297, i1 %t304)
  br label %bb74
bb74:
  %t305 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l109
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t305, ptr %l18
  %t306 = ptrtoint ptr %v2 to i64
  store i64 %t306, ptr %l111, !tbaa !24
  %t307 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e17
  br i1 %t307, label %bb75, label %bb76
bb75:
  %t309 = call ptr @__olang_region_make(ptr %v2)
  %t310 = ptrtoint ptr %t309 to i64
  store i64 %t310, ptr %l111, !tbaa !24
  br label %bb76
bb76:
  %t311 = load i64, ptr %l111
  %t312 = inttoptr i64 %t311 to ptr
  %t313 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t312, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t313, ptr %l113
  br label %bb77
bb77:
  %t314 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e17
  br i1 %t314, label %bb78, label %bb79
bb78:
  %t316 = load i64, ptr %l111
  %t317 = inttoptr i64 %t316 to ptr
  %t318 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113, i32 0, i32 0
  %t319 = load { i64, ptr }, ptr %t318
  %t320 = extractvalue { i64, ptr } %t319, 1
  %t321 = call ptr @__olang_region_or(ptr %t320, ptr null)
  %t322 = icmp ne ptr %t321, null
  %t323 = select i1 %t322, ptr %t321, ptr null
  %t324 = icmp eq ptr %t323, %t317
  call void @__olang_region_settle(ptr %t317, i1 %t324)
  br label %bb79
bb79:
  %t325 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t325, ptr %l19
  %t326 = ptrtoint ptr %v2 to i64
  store i64 %t326, ptr %l115, !tbaa !24
  %t327 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e18
  br i1 %t327, label %bb80, label %bb81
bb80:
  %t329 = call ptr @__olang_region_make(ptr %v2)
  %t330 = ptrtoint ptr %t329 to i64
  store i64 %t330, ptr %l115, !tbaa !24
  br label %bb81
bb81:
  %t331 = load i64, ptr %l115
  %t332 = inttoptr i64 %t331 to ptr
  %t333 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t332, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t333, ptr %l117
  br label %bb82
bb82:
  %t334 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e18
  br i1 %t334, label %bb83, label %bb84
bb83:
  %t336 = load i64, ptr %l115
  %t337 = inttoptr i64 %t336 to ptr
  %t338 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117, i32 0, i32 0
  %t339 = load { i64, ptr }, ptr %t338
  %t340 = extractvalue { i64, ptr } %t339, 1
  %t341 = call ptr @__olang_region_or(ptr %t340, ptr null)
  %t342 = icmp ne ptr %t341, null
  %t343 = select i1 %t342, ptr %t341, ptr null
  %t344 = icmp eq ptr %t343, %t337
  call void @__olang_region_settle(ptr %t337, i1 %t344)
  br label %bb84
bb84:
  %t345 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t345, ptr %l20
  %t346 = ptrtoint ptr %v2 to i64
  store i64 %t346, ptr %l119, !tbaa !24
  %t347 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e19
  br i1 %t347, label %bb85, label %bb86
bb85:
  %t349 = call ptr @__olang_region_make(ptr %v2)
  %t350 = ptrtoint ptr %t349 to i64
  store i64 %t350, ptr %l119, !tbaa !24
  br label %bb86
bb86:
  %t351 = load i64, ptr %l119
  %t352 = inttoptr i64 %t351 to ptr
  %t353 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t352)
  store %"std/prelude/text:StringBuilder" %t353, ptr %l121
  br label %bb87
bb87:
  %t354 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e19
  br i1 %t354, label %bb88, label %bb89
bb88:
  %t356 = load i64, ptr %l119
  %t357 = inttoptr i64 %t356 to ptr
  %t358 = getelementptr %"std/prelude/text:StringBuilder", ptr %l121, i32 0, i32 0
  %t359 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t358, i32 0, i32 0
  %t360 = load { i64, ptr }, ptr %t359
  %t361 = extractvalue { i64, ptr } %t360, 1
  %t362 = call ptr @__olang_region_or(ptr %t361, ptr null)
  %t363 = icmp ne ptr %t362, null
  %t364 = select i1 %t363, ptr %t362, ptr null
  %t365 = icmp eq ptr %t364, %t357
  call void @__olang_region_settle(ptr %t357, i1 %t365)
  br label %bb89
bb89:
  %t366 = load %"std/prelude/text:StringBuilder", ptr %l121
  store %"std/prelude/text:StringBuilder" %t366, ptr %l21
  store i1 false, ptr %l22, !tbaa !21
  store i64 0, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  %t367 = ptrtoint ptr %v2 to i64
  store i64 %t367, ptr %l123, !tbaa !24
  %t368 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e23
  br i1 %t368, label %bb90, label %bb91
bb90:
  %t370 = call ptr @__olang_region_make(ptr %v2)
  %t371 = ptrtoint ptr %t370 to i64
  store i64 %t371, ptr %l123, !tbaa !24
  br label %bb91
bb91:
  %t372 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t372, 0
  store i64 %t374, ptr %l126, !tbaa !24
  %t375 = load i64, ptr %l126, !tbaa !24
  %t376 = icmp sge i64 %t375, 0
  br i1 %t376, label %bb92, label %bb93
bb92:
  %t378 = load i64, ptr %l126, !tbaa !24
  %t379 = icmp sle i64 %t378, 1152921504606846975
  br i1 %t379, label %bb94, label %bb95
bb93:
  call void @__olang_check_failed(ptr @olang_loc_f8370207eae072dd_4bf9c30e1d6aa1d9)
  unreachable
bb94:
  %t381 = load i64, ptr %l126, !tbaa !24
  %t382 = mul i64 %t381, 8
  %t383 = load i64, ptr %l123
  %t384 = inttoptr i64 %t383 to ptr
  %t385 = call ptr @__olang_scope_alloc_zeroed(ptr %t384, i64 %t382)
  %t386 = insertvalue { i64, ptr } undef, i64 %t381, 0
  %t387 = insertvalue { i64, ptr } %t386, ptr %t385, 1
  store { i64, ptr } %t387, ptr %l25, !tbaa !27
  store i64 0, ptr %l26, !tbaa !24
  store i1 false, ptr %l27, !tbaa !21
  store i64 -1, ptr %l28, !tbaa !24
  store i64 -1, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  store i64 -1, ptr %l31, !tbaa !24
  store i64 0, ptr %l32, !tbaa !24
  store i64 -1, ptr %l33, !tbaa !24
  %t389 = ptrtoint ptr %v2 to i64
  store i64 %t389, ptr %l130, !tbaa !24
  %t390 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e32
  br i1 %t390, label %bb96, label %bb97
bb95:
  call void @__olang_check_failed(ptr @olang_loc_f8370207eae072dd_4bf9c30e1d6aa1d9)
  unreachable
bb96:
  %t392 = call ptr @__olang_region_make(ptr %v2)
  %t393 = ptrtoint ptr %t392 to i64
  store i64 %t393, ptr %l130, !tbaa !24
  br label %bb97
bb97:
  %t394 = load i64, ptr %l130
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t395, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t396, ptr %l132
  br label %bb98
bb98:
  %t397 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e32
  br i1 %t397, label %bb99, label %bb100
bb99:
  %t399 = load i64, ptr %l130
  %t400 = inttoptr i64 %t399 to ptr
  %t401 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132, i32 0, i32 0
  %t402 = load { i64, ptr }, ptr %t401
  %t403 = extractvalue { i64, ptr } %t402, 1
  %t404 = call ptr @__olang_region_or(ptr %t403, ptr null)
  %t405 = icmp ne ptr %t404, null
  %t406 = select i1 %t405, ptr %t404, ptr null
  %t407 = icmp eq ptr %t406, %t400
  call void @__olang_region_settle(ptr %t400, i1 %t407)
  br label %bb100
bb100:
  %t408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l132
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %l34
  %t409 = ptrtoint ptr %v2 to i64
  store i64 %t409, ptr %l134, !tbaa !24
  %t410 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e33
  br i1 %t410, label %bb101, label %bb102
bb101:
  %t412 = call ptr @__olang_region_make(ptr %v2)
  %t413 = ptrtoint ptr %t412 to i64
  store i64 %t413, ptr %l134, !tbaa !24
  br label %bb102
bb102:
  %t414 = load i64, ptr %l134
  %t415 = inttoptr i64 %t414 to ptr
  %t416 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t415, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t416, ptr %l136
  br label %bb103
bb103:
  %t417 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aformatter_2e33
  br i1 %t417, label %bb104, label %bb105
bb104:
  %t419 = load i64, ptr %l134
  %t420 = inttoptr i64 %t419 to ptr
  %t421 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136, i32 0, i32 0
  %t422 = load { i64, ptr }, ptr %t421
  %t423 = extractvalue { i64, ptr } %t422, 1
  %t424 = call ptr @__olang_region_or(ptr %t423, ptr null)
  %t425 = icmp ne ptr %t424, null
  %t426 = select i1 %t425, ptr %t424, ptr null
  %t427 = icmp eq ptr %t426, %t420
  call void @__olang_region_settle(ptr %t420, i1 %t427)
  br label %bb105
bb105:
  %t428 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l136
  %t429 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 0
  %t430 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t430, ptr %t429, !tbaa !27
  %t431 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 1
  %t432 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t432, ptr %t431, !tbaa !27
  %t433 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 2
  %t434 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t434, ptr %t433, !tbaa !27
  %t435 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 3
  %t436 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t436, ptr %t435, !tbaa !27
  %t437 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 4
  %t438 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t438, ptr %t437, !tbaa !27
  %t439 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 5
  %t440 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t440, ptr %t439, !tbaa !27
  %t441 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 6
  %t442 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t442, ptr %t441, !tbaa !27
  %t443 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 7
  %t444 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t444, ptr %t443
  %t445 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 8
  %t446 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t446, ptr %t445
  %t447 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 9
  %t448 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t448, ptr %t447
  %t449 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 10
  %t450 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t450, ptr %t449
  %t451 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 11
  %t452 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t452, ptr %t451
  %t453 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 12
  %t454 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t454, ptr %t453
  %t455 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 13
  %t456 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t456, ptr %t455
  %t457 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 14
  %t458 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t458, ptr %t457
  %t459 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 15
  %t460 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t460, ptr %t459
  %t461 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 16
  %t462 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t462, ptr %t461
  %t463 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 17
  %t464 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t464, ptr %t463
  %t465 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 18
  %t466 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t466, ptr %t465
  %t467 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 19
  %t468 = load %"std/prelude/text:StringBuilder", ptr %l21
  store %"std/prelude/text:StringBuilder" %t468, ptr %t467
  %t469 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 20
  %t470 = load i1, ptr %l22, !tbaa !21
  store i1 %t470, ptr %t469, !tbaa !21
  %t471 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 21
  %t472 = load i64, ptr %l23, !tbaa !24
  store i64 %t472, ptr %t471, !tbaa !24
  %t473 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 22
  %t474 = load i64, ptr %l24, !tbaa !24
  store i64 %t474, ptr %t473, !tbaa !24
  %t475 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 23
  %t476 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t476, ptr %t475, !tbaa !27
  %t477 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 24
  %t478 = load i64, ptr %l26, !tbaa !24
  store i64 %t478, ptr %t477, !tbaa !24
  %t479 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 25
  %t480 = load i1, ptr %l27, !tbaa !21
  store i1 %t480, ptr %t479, !tbaa !21
  %t481 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 26
  %t482 = load i64, ptr %l28, !tbaa !24
  store i64 %t482, ptr %t481, !tbaa !24
  %t483 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 27
  %t484 = load i64, ptr %l29, !tbaa !24
  store i64 %t484, ptr %t483, !tbaa !24
  %t485 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 28
  %t486 = load i64, ptr %l30, !tbaa !24
  store i64 %t486, ptr %t485, !tbaa !24
  %t487 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 29
  %t488 = load i64, ptr %l31, !tbaa !24
  store i64 %t488, ptr %t487, !tbaa !24
  %t489 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 30
  %t490 = load i64, ptr %l32, !tbaa !24
  store i64 %t490, ptr %t489, !tbaa !24
  %t491 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 31
  %t492 = load i64, ptr %l33, !tbaa !24
  store i64 %t492, ptr %t491, !tbaa !24
  %t493 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 32
  %t494 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t494, ptr %t493
  %t495 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t428, ptr %t495
  %t497 = getelementptr %"compiler/fmt:formatter", ptr %l138, i32 0, i32 34
  store i1 false, ptr %t497, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l138, i64 704, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ffmt_3aloader_2ector(ptr %out, ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca i64
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca i64
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"compiler/fmt:loader"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l1, !tbaa !27
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l8, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l8, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l8
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l8
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  %t23 = ptrtoint ptr %v1 to i64
  store i64 %t23, ptr %l12, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e2
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = call ptr @__olang_region_make(ptr %v1)
  %t27 = ptrtoint ptr %t26 to i64
  store i64 %t27, ptr %l12, !tbaa !24
  br label %bb7
bb7:
  %t28 = load i64, ptr %l12
  %t29 = inttoptr i64 %t28 to ptr
  %t30 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t29, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %l14
  br label %bb8
bb8:
  %t31 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e2
  br i1 %t31, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l12
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14, i32 0, i32 0
  %t36 = load { i64, ptr }, ptr %t35
  %t37 = extractvalue { i64, ptr } %t36, 1
  %t38 = call ptr @__olang_region_or(ptr %t37, ptr null)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t34
  call void @__olang_region_settle(ptr %t34, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l3
  %t43 = ptrtoint ptr %v1 to i64
  store i64 %t43, ptr %l16, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e3
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v1)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l16, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l16
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l18
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e3
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l16
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = icmp ne ptr %t58, null
  %t60 = select i1 %t59, ptr %t58, ptr null
  %t61 = icmp eq ptr %t60, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t61)
  br label %bb15
bb15:
  %t62 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t62, ptr %l4
  %t63 = ptrtoint ptr %v1 to i64
  store i64 %t63, ptr %l20, !tbaa !24
  %t64 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e4
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = call ptr @__olang_region_make(ptr %v1)
  %t67 = ptrtoint ptr %t66 to i64
  store i64 %t67, ptr %l20, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l20
  %t69 = inttoptr i64 %t68 to ptr
  %t70 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t69, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l22
  br label %bb18
bb18:
  %t71 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e4
  br i1 %t71, label %bb19, label %bb20
bb19:
  %t73 = load i64, ptr %l20
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t76 = load { i64, ptr }, ptr %t75
  %t77 = extractvalue { i64, ptr } %t76, 1
  %t78 = call ptr @__olang_region_or(ptr %t77, ptr null)
  %t79 = icmp ne ptr %t78, null
  %t80 = select i1 %t79, ptr %t78, ptr null
  %t81 = icmp eq ptr %t80, %t74
  call void @__olang_region_settle(ptr %t74, i1 %t81)
  br label %bb20
bb20:
  %t82 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t82, ptr %l5
  %t83 = ptrtoint ptr %v1 to i64
  store i64 %t83, ptr %l24, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e5
  br i1 %t84, label %bb21, label %bb22
bb21:
  %t86 = call ptr @__olang_region_make(ptr %v1)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l24, !tbaa !24
  br label %bb22
bb22:
  %t88 = load i64, ptr %l24
  %t89 = inttoptr i64 %t88 to ptr
  %t90 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t89, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l26
  br label %bb23
bb23:
  %t91 = load i1, ptr @olang_2esole_2ecompiler_2ffmt_3aloader_2e5
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load i64, ptr %l24
  %t94 = inttoptr i64 %t93 to ptr
  %t95 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26, i32 0, i32 0
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = icmp ne ptr %t98, null
  %t100 = select i1 %t99, ptr %t98, ptr null
  %t101 = icmp eq ptr %t100, %t94
  call void @__olang_region_settle(ptr %t94, i1 %t101)
  br label %bb25
bb25:
  %t102 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  %t103 = getelementptr %"compiler/fmt:loader", ptr %l28, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t104, ptr %t103, !tbaa !27
  %t105 = getelementptr %"compiler/fmt:loader", ptr %l28, i32 0, i32 1
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %t105
  %t107 = getelementptr %"compiler/fmt:loader", ptr %l28, i32 0, i32 2
  %t108 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %t107
  %t109 = getelementptr %"compiler/fmt:loader", ptr %l28, i32 0, i32 3
  %t110 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t110, ptr %t109
  %t111 = getelementptr %"compiler/fmt:loader", ptr %l28, i32 0, i32 4
  %t112 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t112, ptr %t111
  %t113 = getelementptr %"compiler/fmt:loader", ptr %l28, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t102, ptr %t113
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l28, i64 176, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2fsource_3aSource_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
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
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2ecompiler_2fsource_3aSource_2e1 = weak hidden constant i1 false
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
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
@olang_2esole_2ecompiler_2fdiagmsg_3aMsg_2e2 = weak hidden constant i1 false
declare void @__olang_errpay_pop()
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d1 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c": cannot be read\0A" }>, align 8
@.d2 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-f" }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-p" }>, align 8
@.d4 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d5 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c": cannot be written\0A" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed(ptr) cold noreturn
declare void @__olang_bang_failed_plain(ptr) cold noreturn
@.d9 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d10 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d14 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d15 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d16 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d26 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d28 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"=" }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c" =" }>, align 8
@.d39 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"    " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn:" }>, align 8
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d44 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn:" }>, align 8
@.d45 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare ptr @__olang_scope_of(ptr, ptr) noinline
@.d46 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d47 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d48 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d49 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d52 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d53 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"Array" }>, align 8
@.d54 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d55 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"prelude" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d57 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d59 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d60 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c".." }>, align 8
@.d61 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d62 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
@.d63 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d64 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e2 = weak hidden constant i1 false
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e7 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e19 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/text:StringBuilder"
  %rv = alloca %"std/prelude/text:StringBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l0
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l0
  store %"std/prelude/text:StringBuilder" %t2, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

@olang_2esole_2ecompiler_2ffmt_3aformatter_2e23 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e32 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aformatter_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aloader_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aloader_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aloader_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aloader_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffmt_3aloader_2e5 = weak hidden constant i1 false
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
declare %"compiler/source:Source" @compiler_2fsource_3aSource_2ector(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAddFile(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3)
declare %"compiler/scan:Tokens" @compiler_2fscan_2eTokens_2eScan(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eRule(ptr %v0, %"compiler/scan:Diag" %a0)
declare { i64, ptr } @compiler_2fscan_2ecompiler_2fscan_3aDiag_2eMessage(ptr %v0, %"compiler/scan:Diag" %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fdiagmsg_3aMsg_2ector(ptr %v0, ptr %v1, ptr %v2, i32 %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @compiler_2fparse_3aParser_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5)
declare { i64, ptr } @compiler_2fparse_2ecompiler_2fparse_3aParser_2eFile(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2funparse_2eHeldBranches(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, { i64, ptr } %a2, ptr %a3)
declare %"std/io:Writer" @std_2fio_3aWriter_2ector(ptr %v0, i32 %a0, i64 %a1)
declare { i32, %"compiler/source:Source" } @compiler_2fsource_2eSource_2eRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fio_2estd_2fio_3aWriter_2eWrite(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare i1 @compiler_2fdiag_2eColorWanted()
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i32 @std_2fio_2estd_2fio_3aWriter_2eFlush(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fparse_3aOracle_2ector(ptr %out, ptr %v0)
@G_2ecompiler_2ftoken_2eSpace = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\02" }>, align 8
declare i1 @compiler_2ftoken_2ecompiler_2ftoken_3aToken_2eHas(%"compiler/token:Token" %a0, i8 %a1)
@G_2ecompiler_2ftoken_2eLineBreak = available_externally constant <{ [1 x i8] }> <{ [1 x i8] c"\01" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@olang_loc_efe0301a0eee46c_f87ee963c45aa130 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eTruncate_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_ea99cb1d1495554a_226506bfa77f0e7e = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePush_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eLen_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %a0)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2ePop_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %a0)
@olang_loc_35c4bcbe8a179434_4b4275954f9faef0 = external constant [0 x i8]
@olang_loc_60c6fb5a9e323c49_a95dbf77cbddce25 = external constant [0 x i8]
@olang_loc_951b69446ffbaf49_31d81fa88f191745 = external constant [0 x i8]
@olang_loc_e1e0026cb6156c8f_cc49873f28a42c4b = external constant [0 x i8]
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftoken_3aTok_3e_2eLast_3ccompiler_2ftoken_3aTok_3e(ptr %v0, ptr %a0)
@olang_loc_aa98af033dba4568_940e94a7ebea1854 = external constant [0 x i8]
@olang_loc_bcfa8bcb194c4d3c_b6a77a733196e698 = external constant [0 x i8]
@olang_loc_c72ec7e8dfc94dc_53a73ed146206d80 = external constant [0 x i8]
@olang_loc_8b20359aae87aa49_981ed0beb1f6b3dd = external constant [0 x i8]
@olang_loc_1f023a932aff5454_c8fa03de0f87b198 = external constant [0 x i8]
@olang_loc_259a09fa35ee14c1_c921ceba7167c8f5 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_659f294064b5ce35_34590247fabf25a1 = external constant [0 x i8]
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAddFn(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fparse_2ecompiler_2fparse_3aOracle_2eAdd(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eRealPath(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_b45f67b0c13c7f92_d3bc8c6077d2e8ee = external constant [0 x i8]
@olang_loc_bf801ccf4339d98f_a7f4482671f796eb = external constant [0 x i8]
@olang_loc_31ba00d857a48a4_d72415852a995970 = external constant [0 x i8]
@olang_loc_f328ac53cd348991_ee2d20c1cf12bb4d = external constant [0 x i8]
declare { i64, ptr } @compiler_2fscan_2eLiteralText(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_1c96c695fa9cb803_60711cea71b32ee7 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFindByte(ptr %v0, { i64, ptr } %a0, i8 %a1)
@olang_loc_3df0b8839dc54179_133a546f9cf2d20d = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9121eab1d44cad4c_7d1c1b769798e530 = external constant [0 x i8]
declare { i64, ptr } @std_2ffilepath_2eDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_ce709d7b9ef8b1fc_3d0b2a4c89679e00 = external constant [0 x i8]
@olang_loc_d589fc983080be49_a3fac9ed8d21e52d = external constant [0 x i8]
@olang_loc_5014c5e33980418a_6c70c79ebb210b2e = external constant [0 x i8]
@olang_loc_b2eb5d9479cf4f5f_182504dbd1c367a3 = external constant [0 x i8]
@olang_loc_bfaf8ae940299f30_3213b1cd9190eecc = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_f8370207eae072dd_4bf9c30e1d6aa1d9 = external constant [0 x i8]

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
