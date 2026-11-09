source_filename = "compiler_api.quick.ll"
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
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/api:change" = type { i1, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/api:sig" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/doc:Entry" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"std/prelude/text:LineIter" = type { { i64, ptr }, i64 }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/doc:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/session:Analysis" = type { ptr, ptr, ptr, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i32 @compiler_2fapi_2eMode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"compiler/diag:Diagnostics"
  %l5 = alloca { i64, ptr }
  %l6 = alloca [2 x { i64, ptr }]
  %l7 = alloca { i64, ptr }
  %l8 = alloca [2 x { i64, ptr }]
  %l9 = alloca { i64, ptr }
  %l10 = alloca [2 x { i64, ptr }]
  %l11 = alloca [2 x { i64, ptr }]
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca [2 x { i64, ptr }]
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca [2 x { i64, ptr }]
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca %"compiler/api:change"
  %l26 = alloca i1
  %l27 = alloca %"compiler/diag:Diagnostics"
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i32
  %l32 = alloca i1
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i32
  %l48 = alloca i1
  %l50 = alloca i32
  %l52 = alloca i32
  %l54 = alloca i1
  %l57 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i32
  %l69 = alloca i1
  %l71 = alloca i32
  %l73 = alloca i32
  %l75 = alloca i1
  %l83 = alloca { i64, ptr }
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca ptr
  %l93 = alloca { i64, ptr }
  %l96 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca ptr
  %l103 = alloca { i64, [3 x i64] }
  %l105 = alloca %"compiler/diagmsg:Msg"
  %l106 = alloca i64
  %l108 = alloca i32
  %l110 = alloca i32
  %l112 = alloca i1
  %l115 = alloca %"std/prelude/text:StringBuilder"
  %l117 = alloca i64
  %l119 = alloca i64
  %l124 = alloca { i64, ptr }
  %l125 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l126 = alloca { i64, ptr }
  %l127 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l135 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca i32
  %l138 = alloca i1
  %l139 = alloca i32
  %l141 = alloca i32
  %l143 = alloca i1
  %l146 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l147 = alloca { i64, ptr }
  %l148 = alloca { i64, ptr }
  %l153 = alloca { i64, ptr }
  %l156 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l157 = alloca i32
  %l159 = alloca i1
  %l160 = alloca i32
  %l162 = alloca i32
  %l164 = alloca i1
  %l169 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l171 = alloca i64
  %l178 = alloca i64
  %l180 = alloca i64
  %l185 = alloca %"compiler/api:change"
  %l189 = alloca ptr
  %l191 = alloca { i64, ptr }
  %l197 = alloca ptr
  %l198 = alloca i64
  %l201 = alloca { i64, ptr }
  %l205 = alloca { i64, ptr }
  %l209 = alloca i32
  %l211 = alloca i32
  %l213 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %rv = alloca i32
  %t2 = alloca %"compiler/diag:Diagnostics", align 8
  %t178 = alloca { i64, [3 x i64] }, align 8
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i1 @compiler_2fdiag_2eColorWanted()
  store i1 %t1, ptr %l26
  br label %bb1
bb1:
  %t3 = load i1, ptr %l26, !tbaa !21
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t2, ptr %s0, i1 %t3)
  call void @llvm.memmove.p0.p0.i64(ptr %l27, ptr %t2, i64 544, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l27, i64 544, i1 false)
  %t4 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d1, i32 0, i32 1) })
  %t5 = extractvalue { i32, { i64, ptr } } %t4, 1
  %t6 = extractvalue { i32, { i64, ptr } } %t4, 0
  store i32 %t6, ptr %l30
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb4, label %ok.8, !prof !99
ok.8:
  store { i64, ptr } %t5, ptr %l29
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t9, ptr %l28, !tbaa !27
  br label %bb9
bb4:
  %t10 = load i32, ptr %l30, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  store i1 %t13, ptr %l32, !tbaa !21
  %t14 = load i32, ptr %l30, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  br i1 %t17, label %bb5, label %bb6
bb5:
  call void @__olang_errpay_pop()
  br label %bb6
bb6:
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s1
  call void @compiler_2fapi_2esay(ptr %s1, { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
bb9:
  %t20 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t20, ptr %l5, !tbaa !27
  store { i64, ptr } %a0, ptr %l37, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t24 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t22, 0
  %t25 = insertvalue [2 x { i64, ptr }] %t24, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t25, ptr %l6
  %t28 = insertvalue { i64, ptr } undef, i64 2, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %l6, 1
  %t31 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t29)
  store { i64, ptr } %t31, ptr %l42
  br label %bb10
bb10:
  %t32 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t33 = extractvalue { i64, ptr } %t32, 0
  %t34 = extractvalue { i64, ptr } %t32, 1
  %t35 = mul i64 %t33, 1
  %t36 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t35)
  call void @llvm.memcpy.p0.p0.i64(ptr %t36, ptr %t34, i64 %t35, i1 false)
  %t37 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t38 = insertvalue { i64, ptr } %t37, ptr %t36, 1
  %t39 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t42 = call { i32, { i64, ptr } } @compiler_2fapi_2eside(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t39, { i64, ptr } %t38, ptr %l4)
  %t43 = extractvalue { i32, { i64, ptr } } %t42, 1
  %t44 = extractvalue { i32, { i64, ptr } } %t42, 0
  store i32 %t44, ptr %l46
  %t45 = icmp ne i32 %t44, 0
  br i1 %t45, label %bb12, label %ok.46, !prof !99
ok.46:
  store { i64, ptr } %t43, ptr %l45
  br label %bb11
bb11:
  %t47 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t47, ptr %l36, !tbaa !27
  br label %bb21
bb12:
  %t48 = load i32, ptr %l46, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  store i1 %t51, ptr %l48, !tbaa !21
  br label %bb13
bb13:
  %t53 = call i32 @compiler_2fapi_2esaid(ptr %s0, ptr %l4)
  store i32 %t53, ptr %l50
  br label %bb14
bb14:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t56 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t54)
  store i32 %t56, ptr %l52
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb16, label %ok.58, !prof !99
ok.58:
  br label %bb15
bb15:
  br label %bb20
bb16:
  %t59 = load i32, ptr %l52, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  store i1 %t62, ptr %l54, !tbaa !21
  %t63 = load i32, ptr %l52, !tbaa !23
  %t64 = ashr i32 %t63, 16
  %t66 = icmp eq i32 %t64, 1
  br i1 %t66, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t68 = load i32, ptr %l50, !tbaa !23
  store i32 %t68, ptr %rv
  br label %ret
bb21:
  %t69 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t69, ptr %l7, !tbaa !27
  store { i64, ptr } %a1, ptr %l58, !tbaa !27
  %t71 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t73 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t71, 0
  %t74 = insertvalue [2 x { i64, ptr }] %t73, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t74, ptr %l8
  %t77 = insertvalue { i64, ptr } undef, i64 2, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %l8, 1
  %t80 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t78)
  store { i64, ptr } %t80, ptr %l63
  br label %bb22
bb22:
  %t81 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  %t83 = extractvalue { i64, ptr } %t81, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t88 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t91 = call { i32, { i64, ptr } } @compiler_2fapi_2eside(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t88, { i64, ptr } %t87, ptr %l4)
  %t92 = extractvalue { i32, { i64, ptr } } %t91, 1
  %t93 = extractvalue { i32, { i64, ptr } } %t91, 0
  store i32 %t93, ptr %l67
  %t94 = icmp ne i32 %t93, 0
  br i1 %t94, label %bb24, label %ok.95, !prof !99
ok.95:
  store { i64, ptr } %t92, ptr %l66
  br label %bb23
bb23:
  %t96 = load { i64, ptr }, ptr %l66, !tbaa !27
  store { i64, ptr } %t96, ptr %l57, !tbaa !27
  br label %bb33
bb24:
  %t97 = load i32, ptr %l67, !tbaa !23
  %t98 = ashr i32 %t97, 16
  %t100 = icmp eq i32 %t98, 1
  store i1 %t100, ptr %l69, !tbaa !21
  br label %bb25
bb25:
  %t102 = call i32 @compiler_2fapi_2esaid(ptr %s0, ptr %l4)
  store i32 %t102, ptr %l71
  br label %bb26
bb26:
  %t103 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t105 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t103)
  store i32 %t105, ptr %l73
  %t106 = icmp ne i32 %t105, 0
  br i1 %t106, label %bb28, label %ok.107, !prof !99
ok.107:
  br label %bb27
bb27:
  br label %bb32
bb28:
  %t108 = load i32, ptr %l73, !tbaa !23
  %t109 = ashr i32 %t108, 16
  %t111 = icmp eq i32 %t109, 1
  store i1 %t111, ptr %l75, !tbaa !21
  %t112 = load i32, ptr %l73, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  br i1 %t115, label %bb29, label %bb30
bb29:
  call void @__olang_errpay_pop()
  br label %bb30
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  %t117 = load i32, ptr %l71, !tbaa !23
  store i32 %t117, ptr %rv
  br label %ret
bb33:
  %t118 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t118, ptr %l9, !tbaa !27
  %t119 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t122 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t119, 0
  %t124 = insertvalue [2 x { i64, ptr }] %t122, { i64, ptr } %t120, 1
  store [2 x { i64, ptr }] %t124, ptr %l10
  %t127 = insertvalue { i64, ptr } undef, i64 2, 0
  %t128 = insertvalue { i64, ptr } %t127, ptr %l10, 1
  %t130 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v2, { i64, ptr } %t128)
  store { i64, ptr } %t130, ptr %l83
  br label %bb34
bb34:
  %t131 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  %t133 = extractvalue { i64, ptr } %t131, 1
  %t134 = mul i64 %t132, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t134)
  call void @llvm.memcpy.p0.p0.i64(ptr %t135, ptr %t133, i64 %t134, i1 false)
  %t136 = insertvalue { i64, ptr } undef, i64 %t132, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  %t138 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t141 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2esources(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t137, { i64, ptr } %t138)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t141, ptr %l86
  br label %bb35
bb35:
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  %t143 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %t143
  store ptr %t143, ptr %l87, !tbaa !29
  %t144 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t145 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t147 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t144, 0
  %t149 = insertvalue [2 x { i64, ptr }] %t147, { i64, ptr } %t145, 1
  store [2 x { i64, ptr }] %t149, ptr %l11
  %t152 = insertvalue { i64, ptr } undef, i64 2, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %l11, 1
  %t155 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v2, { i64, ptr } %t153)
  store { i64, ptr } %t155, ptr %l93
  br label %bb36
bb36:
  %t156 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t156, 0
  %t158 = extractvalue { i64, ptr } %t156, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t163 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t166 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2esources(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t162, { i64, ptr } %t163)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t166, ptr %l96
  br label %bb37
bb37:
  %t167 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l96
  %t168 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t167, ptr %t168
  %t169 = load ptr, ptr %l87, !tbaa !29
  %t171 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2eunion(ptr %v2, ptr %v2, ptr %s0, ptr %t169, ptr %t168)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t171, ptr %l98
  br label %bb38
bb38:
  %t172 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %l12
  %t174 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l12)
  store i64 %t174, ptr %l100
  br label %bb39
bb39:
  %t175 = load i64, ptr %l100, !tbaa !24
  %t176 = icmp eq i64 %t175, 0
  br i1 %t176, label %bb40, label %bb41
bb40:
  store ptr %l4, ptr %l102, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t178
  %t179 = getelementptr { i64, [3 x i64] }, ptr %t178, i32 0, i32 0
  store i64 0, ptr %t179
  %t180 = load { i64, [3 x i64] }, ptr %t178
  store { i64, [3 x i64] } %t180, ptr %l103
  %t181 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t183 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiNoFiles(ptr %v2, ptr %s0, { i64, ptr } %t181)
  store %"compiler/diagmsg:Msg" %t183, ptr %l105
  br label %bb42
bb41:
  br label %bb51
bb42:
  %t184 = load ptr, ptr %l102, !tbaa !29
  %t185 = load { i64, [3 x i64] }, ptr %l103
  %t186 = load %"compiler/diagmsg:Msg", ptr %l105
  %t187 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %s0, ptr %s0, ptr %t184, { i64, [3 x i64] } %t185, %"compiler/diagmsg:Msg" %t186)
  store i64 %t187, ptr %l106
  br label %bb43
bb43:
  %t189 = call i32 @compiler_2fapi_2esaid(ptr %s0, ptr %l4)
  store i32 %t189, ptr %l108
  br label %bb44
bb44:
  %t190 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t192 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t190)
  store i32 %t192, ptr %l110
  %t193 = icmp ne i32 %t192, 0
  br i1 %t193, label %bb46, label %ok.194, !prof !99
ok.194:
  br label %bb45
bb45:
  br label %bb50
bb46:
  %t195 = load i32, ptr %l110, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  store i1 %t198, ptr %l112, !tbaa !21
  %t199 = load i32, ptr %l110, !tbaa !23
  %t200 = ashr i32 %t199, 16
  %t202 = icmp eq i32 %t200, 1
  br i1 %t202, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  %t204 = load i32, ptr %l108, !tbaa !23
  store i32 %t204, ptr %rv
  br label %ret
bb51:
  store i64 0, ptr %l13, !tbaa !24
  %t205 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t205, ptr %l115
  br label %bb52
bb52:
  %t206 = load %"std/prelude/text:StringBuilder", ptr %l115
  store %"std/prelude/text:StringBuilder" %t206, ptr %l14
  store ptr %l12, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s15
  %t208 = load i64, ptr %l16, !tbaa !24
  store i64 %t208, ptr %l117, !tbaa !24
  %t209 = load ptr, ptr %l15, !tbaa !29
  %t211 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %t209)
  store i64 %t211, ptr %l119
  br label %bb54
bb54:
  %t212 = load i64, ptr %l117, !tbaa !24
  %t213 = load i64, ptr %l119, !tbaa !24
  %t214 = icmp slt i64 %t212, %t213
  %t216 = xor i1 %t214, true
  br i1 %t216, label %bb55, label %bb56
bb55:
  call void @__olang_scope_close(ptr %s15)
  br label %bb101
bb56:
  br label %bb57
bb57:
  %t218 = load ptr, ptr %l15, !tbaa !29
  %t219 = load i64, ptr %l16, !tbaa !24
  %t222 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %t218, i64 %t219)
  store { i64, ptr } %t222, ptr %l124
  br label %bb58
bb58:
  %t223 = load { i64, ptr }, ptr %l124, !tbaa !27
  store { i64, ptr } %t223, ptr %l17, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t224, ptr %l126, !tbaa !27
  %t225 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t225, ptr %l127, !tbaa !27
  %t226 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t228 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t226, 0
  %t229 = insertvalue [2 x { i64, ptr }] %t228, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t229, ptr %l18
  %t232 = insertvalue { i64, ptr } undef, i64 2, 0
  %t233 = insertvalue { i64, ptr } %t232, ptr %l18, 1
  %t235 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s15, ptr %s15, { i64, ptr } %t233)
  store { i64, ptr } %t235, ptr %l132
  br label %bb59
bb59:
  %t236 = load { i64, ptr }, ptr %l132, !tbaa !27
  %t237 = extractvalue { i64, ptr } %t236, 0
  %t238 = extractvalue { i64, ptr } %t236, 1
  %t239 = mul i64 %t237, 1
  %t240 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t239)
  call void @llvm.memcpy.p0.p0.i64(ptr %t240, ptr %t238, i64 %t239, i1 false)
  %t241 = insertvalue { i64, ptr } undef, i64 %t237, 0
  %t242 = insertvalue { i64, ptr } %t241, ptr %t240, 1
  %t243 = load ptr, ptr %l3, !tbaa !29
  %t244 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t245 = load { i64, ptr }, ptr %l127, !tbaa !27
  %t248 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fapi_2eentries(ptr %s0, ptr %s0, ptr %s15, ptr %v3, ptr %s15, { i64, ptr } %t244, { i64, ptr } %t245, { i64, ptr } %t242, ptr %t243)
  %t249 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t248, 1
  %t250 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t248, 0
  store i32 %t250, ptr %l136
  %t251 = icmp ne i32 %t250, 0
  br i1 %t251, label %bb61, label %ok.252, !prof !99
ok.252:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %l135
  br label %bb60
bb60:
  %t253 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l135
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t253, ptr %l125
  br label %bb69
bb61:
  %t254 = load i32, ptr %l136, !tbaa !23
  %t255 = ashr i32 %t254, 16
  %t257 = icmp eq i32 %t255, 1
  store i1 %t257, ptr %l138, !tbaa !21
  br label %bb62
bb62:
  store i32 2, ptr %l139, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  %t258 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t260 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t258)
  store i32 %t260, ptr %l141
  %t261 = icmp ne i32 %t260, 0
  br i1 %t261, label %bb64, label %ok.262, !prof !99
ok.262:
  br label %bb63
bb63:
  br label %bb68
bb64:
  %t263 = load i32, ptr %l141, !tbaa !23
  %t264 = ashr i32 %t263, 16
  %t266 = icmp eq i32 %t264, 1
  store i1 %t266, ptr %l143, !tbaa !21
  %t267 = load i32, ptr %l141, !tbaa !23
  %t268 = ashr i32 %t267, 16
  %t270 = icmp eq i32 %t268, 1
  br i1 %t270, label %bb65, label %bb66
bb65:
  call void @__olang_errpay_pop()
  br label %bb66
bb66:
  br label %bb67
bb67:
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s0)
  %t272 = load i32, ptr %l139, !tbaa !23
  store i32 %t272, ptr %rv
  br label %ret
bb69:
  %t273 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l125
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t273, ptr %l19
  %t274 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t274, ptr %l147, !tbaa !27
  %t275 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t275, ptr %l148, !tbaa !27
  %t276 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t278 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t276, 0
  %t279 = insertvalue [2 x { i64, ptr }] %t278, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  store [2 x { i64, ptr }] %t279, ptr %l20
  %t282 = insertvalue { i64, ptr } undef, i64 2, 0
  %t283 = insertvalue { i64, ptr } %t282, ptr %l20, 1
  %t285 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s15, ptr %s15, { i64, ptr } %t283)
  store { i64, ptr } %t285, ptr %l153
  br label %bb70
bb70:
  %t286 = load { i64, ptr }, ptr %l153, !tbaa !27
  %t287 = extractvalue { i64, ptr } %t286, 0
  %t288 = extractvalue { i64, ptr } %t286, 1
  %t289 = mul i64 %t287, 1
  %t290 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t289)
  call void @llvm.memcpy.p0.p0.i64(ptr %t290, ptr %t288, i64 %t289, i1 false)
  %t291 = insertvalue { i64, ptr } undef, i64 %t287, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t290, 1
  %t293 = load ptr, ptr %l3, !tbaa !29
  %t294 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t295 = load { i64, ptr }, ptr %l148, !tbaa !27
  %t298 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fapi_2eentries(ptr %s0, ptr %s0, ptr %s15, ptr %v3, ptr %s15, { i64, ptr } %t294, { i64, ptr } %t295, { i64, ptr } %t292, ptr %t293)
  %t299 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t298, 1
  %t300 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t298, 0
  store i32 %t300, ptr %l157
  %t301 = icmp ne i32 %t300, 0
  br i1 %t301, label %bb72, label %ok.302, !prof !99
ok.302:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t299, ptr %l156
  br label %bb71
bb71:
  %t303 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l156
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l146
  br label %bb80
bb72:
  %t304 = load i32, ptr %l157, !tbaa !23
  %t305 = ashr i32 %t304, 16
  %t307 = icmp eq i32 %t305, 1
  store i1 %t307, ptr %l159, !tbaa !21
  br label %bb73
bb73:
  store i32 2, ptr %l160, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  %t308 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t310 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t308)
  store i32 %t310, ptr %l162
  %t311 = icmp ne i32 %t310, 0
  br i1 %t311, label %bb75, label %ok.312, !prof !99
ok.312:
  br label %bb74
bb74:
  br label %bb79
bb75:
  %t313 = load i32, ptr %l162, !tbaa !23
  %t314 = ashr i32 %t313, 16
  %t316 = icmp eq i32 %t314, 1
  store i1 %t316, ptr %l164, !tbaa !21
  %t317 = load i32, ptr %l162, !tbaa !23
  %t318 = ashr i32 %t317, 16
  %t320 = icmp eq i32 %t318, 1
  br i1 %t320, label %bb76, label %bb77
bb76:
  call void @__olang_errpay_pop()
  br label %bb77
bb77:
  br label %bb78
bb78:
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s0)
  %t322 = load i32, ptr %l160, !tbaa !23
  store i32 %t322, ptr %rv
  br label %ret
bb80:
  %t323 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l146
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l21
  %t326 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2ecompare(ptr %s15, ptr %s15, ptr %s15, ptr %l19, ptr %l21)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t326, ptr %l169
  br label %bb81
bb81:
  %t327 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l169
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t327, ptr %l22
  %t329 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2eLen_3ccompiler_2fapi_3achange_3e(ptr %s15, ptr %l22)
  store i64 %t329, ptr %l171
  br label %bb82
bb82:
  %t330 = load i64, ptr %l171, !tbaa !24
  %t331 = icmp eq i64 %t330, 0
  br i1 %t331, label %bb83, label %bb84
bb83:
  call void @__olang_scope_close(ptr %s15)
  br label %bb100
bb84:
  br label %bb85
bb85:
  %t333 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t335 = extractvalue { i64, ptr } %t333, 1
  %t336 = extractvalue { i64, ptr } %t333, 0
  %t337 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t338 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t339 = add i64 %t336, %t338
  %t340 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t339)
  call void @olang_textcopy(ptr %t340, ptr %t335, i64 %t336)
  %t341 = getelementptr i8, ptr %t340, i64 %t336
  call void @olang_textcopy(ptr %t341, ptr %t337, i64 %t338)
  %t342 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t340, 1
  %t345 = extractvalue { i64, ptr } %t343, 0
  %t346 = extractvalue { i64, ptr } %t343, 1
  %t347 = mul i64 %t345, 1
  %t348 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t347)
  call void @llvm.memcpy.p0.p0.i64(ptr %t348, ptr %t346, i64 %t347, i1 false)
  %t349 = insertvalue { i64, ptr } undef, i64 %t345, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t348, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l14, { i64, ptr } %t350)
  br label %bb86
bb86:
  store ptr %l22, ptr %l23, !tbaa !29
  store i64 0, ptr %l24, !tbaa !24
  br label %bb87
bb87:
  store %olang.scope zeroinitializer, ptr %s27
  %t354 = load i64, ptr %l24, !tbaa !24
  store i64 %t354, ptr %l178, !tbaa !24
  %t355 = load ptr, ptr %l23, !tbaa !29
  %t357 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2eLen_3ccompiler_2fapi_3achange_3e(ptr %s15, ptr %t355)
  store i64 %t357, ptr %l180
  br label %bb88
bb88:
  %t358 = load i64, ptr %l178, !tbaa !24
  %t359 = load i64, ptr %l180, !tbaa !24
  %t360 = icmp slt i64 %t358, %t359
  %t362 = xor i1 %t360, true
  br i1 %t362, label %bb89, label %bb90
bb89:
  call void @__olang_scope_close(ptr %s27)
  br label %bb99
bb90:
  br label %bb91
bb91:
  %t364 = load ptr, ptr %l23, !tbaa !29
  %t365 = load i64, ptr %l24, !tbaa !24
  %t368 = call %"compiler/api:change" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2eAt_3ccompiler_2fapi_3achange_3e(ptr %s15, ptr %s15, ptr %t364, i64 %t365)
  store %"compiler/api:change" %t368, ptr %l185
  br label %bb92
bb92:
  %t369 = load %"compiler/api:change", ptr %l185
  store %"compiler/api:change" %t369, ptr %l25
  %t370 = getelementptr %"compiler/api:change", ptr %l25, i32 0, i32 0
  %t371 = load i1, ptr %t370, !tbaa !21
  br i1 %t371, label %bb93, label %bb94
bb93:
  %t373 = load i64, ptr %l13, !tbaa !24
  %t375 = add i64 %t373, 1
  store i64 %t375, ptr %l13, !tbaa !24
  br label %bb95
bb94:
  br label %bb95
bb95:
  store ptr %l14, ptr %l189, !tbaa !29
  %t378 = call { i64, ptr } @compiler_2fapi_2erowOf(ptr %s27, ptr %s27, ptr %l25)
  store { i64, ptr } %t378, ptr %l191
  br label %bb96
bb96:
  %t379 = load { i64, ptr }, ptr %l191, !tbaa !27
  %t380 = extractvalue { i64, ptr } %t379, 0
  %t381 = extractvalue { i64, ptr } %t379, 1
  %t382 = mul i64 %t380, 1
  %t383 = call ptr @__olang_scope_alloc(ptr %s27, i64 %t382)
  call void @llvm.memcpy.p0.p0.i64(ptr %t383, ptr %t381, i64 %t382, i1 false)
  %t384 = insertvalue { i64, ptr } undef, i64 %t380, 0
  %t385 = insertvalue { i64, ptr } %t384, ptr %t383, 1
  %t386 = load ptr, ptr %l189, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s27, ptr %t386, { i64, ptr } %t385)
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s27)
  br label %bb98
bb98:
  %t388 = load i64, ptr %l24, !tbaa !24
  %t390 = add i64 %t388, 1
  store i64 %t390, ptr %l24, !tbaa !24
  br label %bb87
bb99:
  call void @__olang_scope_close(ptr %s15)
  br label %bb100
bb100:
  %t392 = load i64, ptr %l16, !tbaa !24
  %t394 = add i64 %t392, 1
  store i64 %t394, ptr %l16, !tbaa !24
  br label %bb53
bb101:
  store ptr %l14, ptr %l197, !tbaa !29
  %t396 = load i64, ptr %l13, !tbaa !24
  store i64 %t396, ptr %l198, !tbaa !24
  %t397 = load i64, ptr %l13, !tbaa !24
  %t399 = icmp eq i64 %t397, 1
  br i1 %t399, label %bb102, label %bb103
bb102:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l201, !tbaa !27
  br label %bb104
bb103:
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l201, !tbaa !27
  br label %bb104
bb104:
  %t401 = load i64, ptr %l198, !tbaa !24
  %t402 = call i64 @__olang_fmt_i64(ptr null, i64 %t401)
  %t403 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t404 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t405 = add i64 %t402, %t404
  %t406 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t407 = extractvalue { i64, ptr } %t406, 1
  %t408 = extractvalue { i64, ptr } %t406, 0
  %t409 = add i64 %t405, %t408
  %t410 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t411 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t412 = add i64 %t409, %t411
  %t413 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t412)
  %t414 = call i64 @__olang_fmt_i64(ptr %t413, i64 %t401)
  %t415 = getelementptr i8, ptr %t413, i64 %t402
  call void @olang_textcopy(ptr %t415, ptr %t403, i64 %t404)
  %t416 = getelementptr i8, ptr %t415, i64 %t404
  call void @olang_textcopy(ptr %t416, ptr %t407, i64 %t408)
  %t417 = getelementptr i8, ptr %t416, i64 %t408
  call void @olang_textcopy(ptr %t417, ptr %t410, i64 %t411)
  %t418 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t413, 1
  %t421 = extractvalue { i64, ptr } %t419, 0
  %t422 = extractvalue { i64, ptr } %t419, 1
  %t423 = mul i64 %t421, 1
  %t424 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t423)
  call void @llvm.memcpy.p0.p0.i64(ptr %t424, ptr %t422, i64 %t423, i1 false)
  %t425 = insertvalue { i64, ptr } undef, i64 %t421, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t424, 1
  %t427 = load ptr, ptr %l197, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %t427, { i64, ptr } %t426)
  br label %bb105
bb105:
  %t430 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l14)
  store { i64, ptr } %t430, ptr %l205
  br label %bb106
bb106:
  %t431 = load { i64, ptr }, ptr %l205, !tbaa !27
  %t432 = extractvalue { i64, ptr } %t431, 0
  %t433 = extractvalue { i64, ptr } %t431, 1
  %t434 = mul i64 %t432, 1
  %t435 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t434)
  call void @llvm.memcpy.p0.p0.i64(ptr %t435, ptr %t433, i64 %t434, i1 false)
  %t436 = insertvalue { i64, ptr } undef, i64 %t432, 0
  %t437 = insertvalue { i64, ptr } %t436, ptr %t435, 1
  call void @compiler_2fapi_2esay(ptr %s0, { i64, ptr } %t437)
  br label %bb107
bb107:
  %t439 = load i64, ptr %l13, !tbaa !24
  %t441 = icmp sgt i64 %t439, 0
  br i1 %t441, label %bb108, label %bb109
bb108:
  store i32 1, ptr %l209, !tbaa !23
  br label %bb110
bb109:
  store i32 0, ptr %l209, !tbaa !23
  br label %bb110
bb110:
  %t443 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t445 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t443)
  store i32 %t445, ptr %l211
  %t446 = icmp ne i32 %t445, 0
  br i1 %t446, label %bb112, label %ok.447, !prof !99
ok.447:
  br label %bb111
bb111:
  br label %bb116
bb112:
  %t448 = load i32, ptr %l211, !tbaa !23
  %t449 = ashr i32 %t448, 16
  %t451 = icmp eq i32 %t449, 1
  store i1 %t451, ptr %l213, !tbaa !21
  %t452 = load i32, ptr %l211, !tbaa !23
  %t453 = ashr i32 %t452, 16
  %t455 = icmp eq i32 %t453, 1
  br i1 %t455, label %bb113, label %bb114
bb113:
  call void @__olang_errpay_pop()
  br label %bb114
bb114:
  br label %bb115
bb115:
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s0)
  %t457 = load i32, ptr %l209, !tbaa !23
  store i32 %t457, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2fapi_2eaddBreaks(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i1
  %l5 = alloca i1
  %l6 = alloca i1
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) })
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
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t7, ptr %l5
  br label %bb4
bb4:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %l3, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l3, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb9
bb7:
  %t10 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t12 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t12, ptr %l8
  br label %bb8
bb8:
  %t13 = load i1, ptr %l8, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t14 = load i1, ptr %l6, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/api:change" @compiler_2fapi_2echange_2echanged(ptr %v0, ptr %v1, ptr %v2, %"compiler/api:sig" %a0, %"compiler/api:sig" %a1) #0 {
entry:
  %l0 = alloca %"compiler/api:sig"
  %l1 = alloca %"compiler/api:sig"
  %l2 = alloca { { i64, ptr }, { i64, ptr } }
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { { i64, ptr }, { i64, ptr } }
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i64
  %l11 = alloca i1
  %l12 = alloca i64
  %l14 = alloca { { i64, ptr }, { i64, ptr } }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca { { i64, ptr }, { i64, ptr } }
  %l23 = alloca { i64, ptr }
  %l24 = alloca i64
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l31 = alloca i1
  %l32 = alloca i1
  %l42 = alloca i1
  %l47 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l53 = alloca i1
  %l60 = alloca i1
  %l61 = alloca i64
  %l68 = alloca %"compiler/api:change"
  %l69 = alloca i64
  %l76 = alloca %"compiler/api:change"
  %l78 = alloca i1
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i1
  %l89 = alloca %"compiler/api:change"
  %l90 = alloca i64
  %l97 = alloca %"compiler/api:change"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/api:change"
  store %"compiler/api:sig" %a0, ptr %l0
  store %"compiler/api:sig" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t4 = call { { i64, ptr }, { i64, ptr } } @compiler_2fapi_2esplitErrors(ptr %v0, ptr %s0, { i64, ptr } %t2)
  store { { i64, ptr }, { i64, ptr } } %t4, ptr %l14
  br label %bb1
bb1:
  %t5 = load { { i64, ptr }, { i64, ptr } }, ptr %l14
  store { { i64, ptr }, { i64, ptr } } %t5, ptr %l2
  %t6 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l2, i32 0, i32 0
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l15, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t8, 0
  store i64 %t9, ptr %l16, !tbaa !24
  %t10 = load i64, ptr %l16, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  store { i64, ptr } %t14, ptr %l17, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = load i64, ptr %l16, !tbaa !24
  %t20 = mul i64 %t19, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t16, ptr %t18, i64 %t20, i1 false)
  %t21 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t21, ptr %l3, !tbaa !27
  %t22 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l2, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l18, !tbaa !27
  %t24 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t25 = extractvalue { i64, ptr } %t24, 0
  store i64 %t25, ptr %l19, !tbaa !24
  %t26 = load i64, ptr %l19, !tbaa !24
  %t27 = mul i64 %t26, 16
  %t28 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t27)
  %t29 = insertvalue { i64, ptr } undef, i64 %t26, 0
  %t30 = insertvalue { i64, ptr } %t29, ptr %t28, 1
  store { i64, ptr } %t30, ptr %l20, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = load i64, ptr %l19, !tbaa !24
  %t36 = mul i64 %t35, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %t34, i64 %t36, i1 false)
  %t37 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  %t38 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 2
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = call { { i64, ptr }, { i64, ptr } } @compiler_2fapi_2esplitErrors(ptr %v1, ptr %s0, { i64, ptr } %t39)
  store { { i64, ptr }, { i64, ptr } } %t41, ptr %l22
  br label %bb2
bb2:
  %t42 = load { { i64, ptr }, { i64, ptr } }, ptr %l22
  store { { i64, ptr }, { i64, ptr } } %t42, ptr %l5
  %t43 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 0
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l23, !tbaa !27
  %t45 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 0
  store i64 %t46, ptr %l24, !tbaa !24
  %t47 = load i64, ptr %l24, !tbaa !24
  %t48 = mul i64 %t47, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  %t50 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  store { i64, ptr } %t51, ptr %l25, !tbaa !27
  %t52 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = load i64, ptr %l24, !tbaa !24
  %t57 = mul i64 %t56, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t53, ptr %t55, i64 %t57, i1 false)
  %t58 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t59 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l5, i32 0, i32 1
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  store { i64, ptr } %t60, ptr %l26, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t62 = extractvalue { i64, ptr } %t61, 0
  store i64 %t62, ptr %l27, !tbaa !24
  %t63 = load i64, ptr %l27, !tbaa !24
  %t64 = mul i64 %t63, 16
  %t65 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t64)
  %t66 = insertvalue { i64, ptr } undef, i64 %t63, 0
  %t67 = insertvalue { i64, ptr } %t66, ptr %t65, 1
  store { i64, ptr } %t67, ptr %l28, !tbaa !27
  %t68 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = load i64, ptr %l27, !tbaa !24
  %t73 = mul i64 %t72, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t69, ptr %t71, i64 %t73, i1 false)
  %t74 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t74, ptr %l7, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t75, { i64, ptr } %t58)
  store i1 %t79, ptr %l31
  br label %bb3
bb3:
  %t80 = load i1, ptr %l31, !tbaa !21
  br i1 %t80, label %bb4, label %bb5
bb4:
  %t81 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t81, ptr %l8, !tbaa !27
  %t83 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t83, ptr %l9, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l10, !tbaa !24
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t92 = extractvalue { i64, ptr } %t90, 0
  %t95 = icmp eq i64 %t89, %t92
  store i1 %t95, ptr %l11, !tbaa !21
  store i64 0, ptr %l12, !tbaa !24
  br label %bb6
bb5:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb16
bb6:
  %t97 = load i1, ptr %l11, !tbaa !21
  br i1 %t97, label %bb7, label %bb8
bb7:
  %t99 = load i64, ptr %l12, !tbaa !24
  %t100 = load i64, ptr %l10, !tbaa !24
  %t103 = icmp slt i64 %t99, %t100
  store i1 %t103, ptr %l42, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb9
bb9:
  %t105 = load i1, ptr %l42, !tbaa !21
  %t106 = xor i1 %t105, true
  br i1 %t106, label %bb10, label %bb11
bb10:
  br label %bb15
bb11:
  br label %bb12
bb12:
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t108, ptr %l47, !tbaa !27
  %t109 = load i64, ptr %l12, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %t112, i64 %t109
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !37
  %t115 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t115, ptr %l50, !tbaa !27
  %t116 = load i64, ptr %l12, !tbaa !24
  %t118 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr { i64, ptr }, ptr %t119, i64 %t116
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !37
  %t124 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t114, { i64, ptr } %t121)
  store i1 %t124, ptr %l53
  br label %bb13
bb13:
  %t125 = load i1, ptr %l53, !tbaa !21
  store i1 %t125, ptr %l11, !tbaa !21
  br label %bb14
bb14:
  %t126 = load i64, ptr %l12, !tbaa !24
  %t128 = add i64 %t126, 1
  store i64 %t128, ptr %l12, !tbaa !24
  br label %bb6
bb15:
  %t130 = load i1, ptr %l11, !tbaa !21
  %t132 = xor i1 %t130, true
  store i1 %t132, ptr %l32, !tbaa !21
  br label %bb16
bb16:
  %t134 = load i1, ptr %l32, !tbaa !21
  br i1 %t134, label %bb17, label %bb18
bb17:
  %t135 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t136 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t139 = call i1 @compiler_2fapi_2esubset(ptr %s0, ptr %s0, { i64, ptr } %t135, { i64, ptr } %t136)
  store i1 %t139, ptr %l60
  br label %bb19
bb18:
  br label %bb29
bb19:
  %t140 = load i1, ptr %l60, !tbaa !21
  br i1 %t140, label %bb20, label %bb21
bb20:
  %t141 = ptrtoint ptr %v2 to i64
  store i64 %t141, ptr %l61, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3achange_2e1
  br i1 %t142, label %bb22, label %bb23
bb21:
  br label %bb25
bb22:
  %t144 = call ptr @__olang_region_make(ptr %v2)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l61, !tbaa !24
  br label %bb23
bb23:
  %t146 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 1
  %t147 = load { i64, ptr }, ptr %t146, !tbaa !27
  %t148 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t149 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t151 = extractvalue { i64, ptr } %t147, 1
  %t152 = extractvalue { i64, ptr } %t147, 0
  %t153 = add i64 %t149, %t152
  %t154 = load i64, ptr %l61
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = call ptr @__olang_scope_alloc(ptr %t155, i64 %t153)
  call void @olang_textcopy(ptr %t156, ptr %t148, i64 %t149)
  %t157 = getelementptr i8, ptr %t156, i64 %t149
  call void @olang_textcopy(ptr %t157, ptr %t151, i64 %t152)
  %t158 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t156, 1
  %t161 = load i64, ptr %l61
  %t162 = inttoptr i64 %t161 to ptr
  %t163 = extractvalue { i64, ptr } %t159, 0
  %t164 = extractvalue { i64, ptr } %t159, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %t162, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t169 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  %t171 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 2
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t176 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v2, ptr %v0, ptr %v1, ptr %v2, i1 false, { i64, ptr } %t168, { i64, ptr } %t170, { i64, ptr } %t172)
  store %"compiler/api:change" %t176, ptr %l68
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t177 = load %"compiler/api:change", ptr %l68
  store %"compiler/api:change" %t177, ptr %rv
  br label %ret
bb25:
  %t178 = ptrtoint ptr %v2 to i64
  store i64 %t178, ptr %l69, !tbaa !24
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3achange_2e1
  br i1 %t179, label %bb26, label %bb27
bb26:
  %t181 = call ptr @__olang_region_make(ptr %v2)
  %t182 = ptrtoint ptr %t181 to i64
  store i64 %t182, ptr %l69, !tbaa !24
  br label %bb27
bb27:
  %t183 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 1
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  %t185 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t186 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t188 = extractvalue { i64, ptr } %t184, 1
  %t189 = extractvalue { i64, ptr } %t184, 0
  %t190 = add i64 %t186, %t189
  %t191 = load i64, ptr %l69
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = call ptr @__olang_scope_alloc(ptr %t192, i64 %t190)
  call void @olang_textcopy(ptr %t193, ptr %t185, i64 %t186)
  %t194 = getelementptr i8, ptr %t193, i64 %t186
  call void @olang_textcopy(ptr %t194, ptr %t188, i64 %t189)
  %t195 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t193, 1
  %t198 = load i64, ptr %l69
  %t199 = inttoptr i64 %t198 to ptr
  %t200 = extractvalue { i64, ptr } %t196, 0
  %t201 = extractvalue { i64, ptr } %t196, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %t199, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  %t206 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  %t208 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 2
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  %t213 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v2, ptr %v0, ptr %v1, ptr %v2, i1 true, { i64, ptr } %t205, { i64, ptr } %t207, { i64, ptr } %t209)
  store %"compiler/api:change" %t213, ptr %l76
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t214 = load %"compiler/api:change", ptr %l76
  store %"compiler/api:change" %t214, ptr %rv
  br label %ret
bb29:
  %t215 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 1
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  %t218 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t216, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t218, ptr %l78
  br label %bb30
bb30:
  %t219 = load i1, ptr %l78, !tbaa !21
  br i1 %t219, label %bb31, label %bb32
bb31:
  %t220 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  %t223 = call { i64, ptr } @compiler_2fapi_2evalueless(ptr %v0, ptr %s0, { i64, ptr } %t221)
  store { i64, ptr } %t223, ptr %l81
  br label %bb33
bb32:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb36
bb33:
  %t224 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t225 = extractvalue { i64, ptr } %t224, 0
  %t226 = extractvalue { i64, ptr } %t224, 1
  %t227 = mul i64 %t225, 1
  %t228 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t227)
  call void @llvm.memcpy.p0.p0.i64(ptr %t228, ptr %t226, i64 %t227, i1 false)
  %t229 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t230 = insertvalue { i64, ptr } %t229, ptr %t228, 1
  store { i64, ptr } %t230, ptr %l82, !tbaa !27
  %t231 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 2
  %t232 = load { i64, ptr }, ptr %t231, !tbaa !27
  %t234 = call { i64, ptr } @compiler_2fapi_2evalueless(ptr %v1, ptr %s0, { i64, ptr } %t232)
  store { i64, ptr } %t234, ptr %l84
  br label %bb34
bb34:
  %t235 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  %t237 = extractvalue { i64, ptr } %t235, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  %t242 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t244 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t242, { i64, ptr } %t241)
  store i1 %t244, ptr %l86
  br label %bb35
bb35:
  %t245 = load i1, ptr %l86, !tbaa !21
  store i1 %t245, ptr %l79, !tbaa !21
  br label %bb36
bb36:
  %t246 = load i1, ptr %l79, !tbaa !21
  br i1 %t246, label %bb37, label %bb38
bb37:
  %t247 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t248 = load { i64, ptr }, ptr %t247, !tbaa !27
  %t249 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 2
  %t250 = load { i64, ptr }, ptr %t249, !tbaa !27
  %t253 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v2, ptr %v0, ptr %v1, ptr %v2, i1 false, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d18, i32 0, i32 1) }, { i64, ptr } %t248, { i64, ptr } %t250)
  store %"compiler/api:change" %t253, ptr %l89
  br label %bb39
bb38:
  br label %bb40
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t254 = load %"compiler/api:change", ptr %l89
  store %"compiler/api:change" %t254, ptr %rv
  br label %ret
bb40:
  %t255 = ptrtoint ptr %v2 to i64
  store i64 %t255, ptr %l90, !tbaa !24
  %t256 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3achange_2e1
  br i1 %t256, label %bb41, label %bb42
bb41:
  %t258 = call ptr @__olang_region_make(ptr %v2)
  %t259 = ptrtoint ptr %t258 to i64
  store i64 %t259, ptr %l90, !tbaa !24
  br label %bb42
bb42:
  %t260 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 1
  %t261 = load { i64, ptr }, ptr %t260, !tbaa !27
  %t262 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t263 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t265 = extractvalue { i64, ptr } %t261, 1
  %t266 = extractvalue { i64, ptr } %t261, 0
  %t267 = add i64 %t263, %t266
  %t268 = load i64, ptr %l90
  %t269 = inttoptr i64 %t268 to ptr
  %t270 = call ptr @__olang_scope_alloc(ptr %t269, i64 %t267)
  call void @olang_textcopy(ptr %t270, ptr %t262, i64 %t263)
  %t271 = getelementptr i8, ptr %t270, i64 %t263
  call void @olang_textcopy(ptr %t271, ptr %t265, i64 %t266)
  %t272 = insertvalue { i64, ptr } undef, i64 %t267, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %t270, 1
  %t275 = load i64, ptr %l90
  %t276 = inttoptr i64 %t275 to ptr
  %t277 = extractvalue { i64, ptr } %t273, 0
  %t278 = extractvalue { i64, ptr } %t273, 1
  %t279 = mul i64 %t277, 1
  %t280 = call ptr @__olang_scope_alloc(ptr %t276, i64 %t279)
  call void @llvm.memcpy.p0.p0.i64(ptr %t280, ptr %t278, i64 %t279, i1 false)
  %t281 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t282 = insertvalue { i64, ptr } %t281, ptr %t280, 1
  %t283 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  %t285 = getelementptr %"compiler/api:sig", ptr %l1, i32 0, i32 2
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  %t290 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v2, ptr %v0, ptr %v1, ptr %v2, i1 true, { i64, ptr } %t282, { i64, ptr } %t284, { i64, ptr } %t286)
  store %"compiler/api:change" %t290, ptr %l97
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t291 = load %"compiler/api:change", ptr %l97
  store %"compiler/api:change" %t291, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/api:change", ptr %rv
  ret %"compiler/api:change" %rr
}

define dso_local %"compiler/api:change" @compiler_2fapi_2echange_2edeprecation(ptr %v0, ptr %v1, %"compiler/api:sig" %a0) #0 {
entry:
  %l0 = alloca %"compiler/api:sig"
  %lp1 = alloca ptr
  %l4 = alloca %"compiler/api:change"
  %rv = alloca %"compiler/api:change"
  store %"compiler/api:sig" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 1
  %t2 = load { i64, ptr }, ptr %t1, !tbaa !27
  %t3 = getelementptr %"compiler/api:sig", ptr %l0, i32 0, i32 2
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t7 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v0, ptr %v1, ptr %v0, ptr %v1, i1 false, { i64, ptr } %t2, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, { i64, ptr } %t4)
  store %"compiler/api:change" %t7, ptr %l4
  br label %bb1
bb1:
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 64, i64 8)
  store ptr %t8, ptr %lp1
  %t9 = load %"compiler/api:change", ptr %l4
  %t10 = load ptr, ptr %lp1
  store %"compiler/api:change" %t9, ptr %t10
  %t11 = load ptr, ptr %lp1
  %t12 = getelementptr %"compiler/api:change", ptr %t11, i32 0, i32 4
  store i1 true, ptr %t12, !tbaa !21
  %t13 = load ptr, ptr %lp1
  %t14 = load %"compiler/api:change", ptr %t13
  store %"compiler/api:change" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/api:change", ptr %rv
  ret %"compiler/api:change" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2ecompare(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/api:sig"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/api:sig"
  %lp10 = alloca ptr
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca ptr
  %l13 = alloca i64
  %l14 = alloca %"compiler/api:sig"
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca %"compiler/api:sig"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca i64
  %l23 = alloca i64
  %l28 = alloca %"compiler/api:sig"
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca %"compiler/api:sig"
  %l43 = alloca %"compiler/api:sig"
  %l46 = alloca %"compiler/api:sig"
  %l47 = alloca i32
  %l49 = alloca i1
  %l50 = alloca ptr
  %l52 = alloca i1
  %l53 = alloca i64
  %l59 = alloca %"compiler/api:change"
  %l62 = alloca i1
  %l64 = alloca ptr
  %l67 = alloca %"compiler/api:change"
  %l69 = alloca i1
  %l72 = alloca ptr
  %l74 = alloca %"compiler/api:change"
  %l77 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l79 = alloca i64
  %l81 = alloca i64
  %l86 = alloca %"compiler/api:sig"
  %l92 = alloca i64
  %l94 = alloca i64
  %l99 = alloca %"compiler/api:sig"
  %l102 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca i64
  %l111 = alloca %"compiler/api:change"
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l18
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H6de7542eecbb29e51c9aaeba51635081(ptr %v2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t5, ptr %l19
  br label %bb2
bb2:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 72, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  %t8 = load ptr, ptr %lp3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t7, ptr %t8
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb3
bb3:
  %t11 = load i64, ptr %l5, !tbaa !24
  store i64 %t11, ptr %l21, !tbaa !24
  %t12 = load ptr, ptr %l4, !tbaa !29
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eLen_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l23
  br label %bb4
bb4:
  %t15 = load i64, ptr %l21, !tbaa !24
  %t16 = load i64, ptr %l23, !tbaa !24
  %t17 = icmp slt i64 %t15, %t16
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb11
bb6:
  br label %bb7
bb7:
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = call %"compiler/api:sig" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eAt_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %v0, ptr %t21, i64 %t22)
  store %"compiler/api:sig" %t25, ptr %l28
  br label %bb8
bb8:
  %t26 = load %"compiler/api:sig", ptr %l28
  store %"compiler/api:sig" %t26, ptr %l6
  %t27 = load ptr, ptr %lp3
  %t28 = getelementptr %"compiler/api:sig", ptr %l6, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t30 = load %"compiler/api:sig", ptr %l6
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hae803d8bca68916aa9f075d6624b0839(ptr %v2, ptr %v0, ptr %v0, ptr %t27, { i64, ptr } %t29, %"compiler/api:sig" %t30)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l5, !tbaa !24
  br label %bb3
bb11:
  %t38 = load ptr, ptr %l1, !tbaa !29
  store ptr %t38, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l8, !tbaa !24
  store i64 %t40, ptr %l35, !tbaa !24
  %t41 = load ptr, ptr %l7, !tbaa !29
  %t43 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eLen_3ccompiler_2fapi_3asig_3e(ptr %v1, ptr %t41)
  store i64 %t43, ptr %l37
  br label %bb13
bb13:
  %t44 = load i64, ptr %l35, !tbaa !24
  %t45 = load i64, ptr %l37, !tbaa !24
  %t46 = icmp slt i64 %t44, %t45
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb14, label %bb15
bb14:
  br label %bb42
bb15:
  br label %bb16
bb16:
  %t50 = load ptr, ptr %l7, !tbaa !29
  %t51 = load i64, ptr %l8, !tbaa !24
  %t54 = call %"compiler/api:sig" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eAt_3ccompiler_2fapi_3asig_3e(ptr %v1, ptr %v1, ptr %t50, i64 %t51)
  store %"compiler/api:sig" %t54, ptr %l42
  br label %bb17
bb17:
  %t55 = load %"compiler/api:sig", ptr %l42
  store %"compiler/api:sig" %t55, ptr %l9
  %t56 = load ptr, ptr %lp3
  %t57 = getelementptr %"compiler/api:sig", ptr %l9, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57, !tbaa !27
  %t61 = call { i32, %"compiler/api:sig" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H1e871a75bae078877fd6428e2f181625(ptr %v2, ptr %v1, ptr %v2, ptr %t56, { i64, ptr } %t58)
  %t62 = extractvalue { i32, %"compiler/api:sig" } %t61, 1
  %t63 = extractvalue { i32, %"compiler/api:sig" } %t61, 0
  store i32 %t63, ptr %l47
  %t64 = icmp ne i32 %t63, 0
  br i1 %t64, label %bb19, label %ok.65, !prof !99
ok.65:
  store %"compiler/api:sig" %t62, ptr %l46
  br label %bb18
bb18:
  %t66 = load %"compiler/api:sig", ptr %l46
  store %"compiler/api:sig" %t66, ptr %l43
  br label %bb26
bb19:
  %t67 = load i32, ptr %l47, !tbaa !23
  %t68 = ashr i32 %t67, 16
  %t70 = icmp eq i32 %t68, 1
  store i1 %t70, ptr %l49, !tbaa !21
  br label %bb20
bb20:
  %t71 = load ptr, ptr %lp2
  store ptr %t71, ptr %l50, !tbaa !29
  %t72 = getelementptr %"compiler/api:sig", ptr %l9, i32 0, i32 1
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t75 = call i1 @compiler_2fapi_2eaddBreaks(ptr %v1, { i64, ptr } %t73)
  store i1 %t75, ptr %l52
  br label %bb21
bb21:
  %t76 = ptrtoint ptr %v2 to i64
  store i64 %t76, ptr %l53, !tbaa !24
  %t77 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3achange_2e1
  br i1 %t77, label %bb22, label %bb23
bb22:
  %t79 = call ptr @__olang_region_make(ptr %v2)
  %t80 = ptrtoint ptr %t79 to i64
  store i64 %t80, ptr %l53, !tbaa !24
  br label %bb23
bb23:
  %t81 = getelementptr %"compiler/api:sig", ptr %l9, i32 0, i32 1
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  %t83 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t86 = extractvalue { i64, ptr } %t82, 1
  %t87 = extractvalue { i64, ptr } %t82, 0
  %t88 = add i64 %t84, %t87
  %t89 = load i64, ptr %l53
  %t90 = inttoptr i64 %t89 to ptr
  %t91 = call ptr @__olang_scope_alloc(ptr %t90, i64 %t88)
  call void @olang_textcopy(ptr %t91, ptr %t83, i64 %t84)
  %t92 = getelementptr i8, ptr %t91, i64 %t84
  call void @olang_textcopy(ptr %t92, ptr %t86, i64 %t87)
  %t93 = insertvalue { i64, ptr } undef, i64 %t88, 0
  %t94 = insertvalue { i64, ptr } %t93, ptr %t91, 1
  %t96 = load i64, ptr %l53
  %t97 = inttoptr i64 %t96 to ptr
  %t98 = extractvalue { i64, ptr } %t94, 0
  %t99 = extractvalue { i64, ptr } %t94, 1
  %t100 = mul i64 %t98, 1
  %t101 = call ptr @__olang_scope_alloc(ptr %t97, i64 %t100)
  call void @llvm.memcpy.p0.p0.i64(ptr %t101, ptr %t99, i64 %t100, i1 false)
  %t102 = insertvalue { i64, ptr } undef, i64 %t98, 0
  %t103 = insertvalue { i64, ptr } %t102, ptr %t101, 1
  %t104 = getelementptr %"compiler/api:sig", ptr %l9, i32 0, i32 2
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  %t106 = load i1, ptr %l52, !tbaa !21
  %t109 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v2, ptr %v2, ptr %v1, ptr %v2, i1 %t106, { i64, ptr } %t103, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d22, i32 0, i32 1) }, { i64, ptr } %t105)
  store %"compiler/api:change" %t109, ptr %l59
  br label %bb24
bb24:
  %t110 = load ptr, ptr %l50, !tbaa !29
  %t111 = load %"compiler/api:change", ptr %l59
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ePush_3ccompiler_2fapi_3achange_3e(ptr %v2, ptr %v2, ptr %t110, %"compiler/api:change" %t111)
  br label %bb25
bb25:
  br label %bb41
bb26:
  %t112 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 56, i64 8)
  store ptr %t112, ptr %lp10
  %t113 = load %"compiler/api:sig", ptr %l43
  %t114 = load ptr, ptr %lp10
  store %"compiler/api:sig" %t113, ptr %t114
  %t115 = load ptr, ptr %lp10
  %t116 = getelementptr %"compiler/api:sig", ptr %t115, i32 0, i32 2
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  %t118 = getelementptr %"compiler/api:sig", ptr %l9, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t122 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v2, ptr %v1, { i64, ptr } %t117, { i64, ptr } %t119)
  store i1 %t122, ptr %l62
  br label %bb27
bb27:
  %t123 = load i1, ptr %l62, !tbaa !21
  %t124 = xor i1 %t123, true
  br i1 %t124, label %bb28, label %bb29
bb28:
  %t126 = load ptr, ptr %lp2
  store ptr %t126, ptr %l64, !tbaa !29
  %t127 = load ptr, ptr %lp10
  %t128 = load %"compiler/api:sig", ptr %t127
  %t129 = load %"compiler/api:sig", ptr %l9
  %t132 = call %"compiler/api:change" @compiler_2fapi_2echange_2echanged(ptr %v2, ptr %v1, ptr %v2, %"compiler/api:sig" %t128, %"compiler/api:sig" %t129)
  store %"compiler/api:change" %t132, ptr %l67
  br label %bb30
bb29:
  br label %bb32
bb30:
  %t133 = load ptr, ptr %l64, !tbaa !29
  %t134 = load %"compiler/api:change", ptr %l67
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ePush_3ccompiler_2fapi_3achange_3e(ptr %v2, ptr %v2, ptr %t133, %"compiler/api:change" %t134)
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t135 = getelementptr %"compiler/api:sig", ptr %l9, i32 0, i32 3
  %t136 = load i1, ptr %t135, !tbaa !21
  br i1 %t136, label %bb33, label %bb34
bb33:
  %t138 = load ptr, ptr %lp10
  %t139 = getelementptr %"compiler/api:sig", ptr %t138, i32 0, i32 3
  %t140 = load i1, ptr %t139, !tbaa !21
  %t142 = xor i1 %t140, true
  store i1 %t142, ptr %l69, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t144 = load i1, ptr %l69, !tbaa !21
  br i1 %t144, label %bb36, label %bb37
bb36:
  %t145 = load ptr, ptr %lp2
  store ptr %t145, ptr %l72, !tbaa !29
  %t146 = load %"compiler/api:sig", ptr %l9
  %t148 = call %"compiler/api:change" @compiler_2fapi_2echange_2edeprecation(ptr %v1, ptr %v1, %"compiler/api:sig" %t146)
  store %"compiler/api:change" %t148, ptr %l74
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t149 = load ptr, ptr %l72, !tbaa !29
  %t150 = load %"compiler/api:change", ptr %l74
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ePush_3ccompiler_2fapi_3achange_3e(ptr %v2, ptr %v1, ptr %t149, %"compiler/api:change" %t150)
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l8, !tbaa !24
  br label %bb12
bb42:
  %t155 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t155, ptr %l77
  br label %bb43
bb43:
  %t156 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l77
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t156, ptr %l11
  %t157 = load ptr, ptr %l1, !tbaa !29
  store ptr %t157, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  br label %bb44
bb44:
  %t159 = load i64, ptr %l13, !tbaa !24
  store i64 %t159, ptr %l79, !tbaa !24
  %t160 = load ptr, ptr %l12, !tbaa !29
  %t162 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eLen_3ccompiler_2fapi_3asig_3e(ptr %v1, ptr %t160)
  store i64 %t162, ptr %l81
  br label %bb45
bb45:
  %t163 = load i64, ptr %l79, !tbaa !24
  %t164 = load i64, ptr %l81, !tbaa !24
  %t165 = icmp slt i64 %t163, %t164
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  br label %bb48
bb48:
  %t169 = load ptr, ptr %l12, !tbaa !29
  %t170 = load i64, ptr %l13, !tbaa !24
  %t173 = call %"compiler/api:sig" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eAt_3ccompiler_2fapi_3asig_3e(ptr %v1, ptr %v1, ptr %t169, i64 %t170)
  store %"compiler/api:sig" %t173, ptr %l86
  br label %bb49
bb49:
  %t174 = load %"compiler/api:sig", ptr %l86
  store %"compiler/api:sig" %t174, ptr %l14
  %t175 = getelementptr %"compiler/api:sig", ptr %l14, i32 0, i32 0
  %t176 = load { i64, ptr }, ptr %t175, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %s0, ptr %v1, ptr %l11, { i64, ptr } %t176, i1 true)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t179 = load i64, ptr %l13, !tbaa !24
  %t181 = add i64 %t179, 1
  store i64 %t181, ptr %l13, !tbaa !24
  br label %bb44
bb52:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l15, !tbaa !29
  store i64 0, ptr %l16, !tbaa !24
  br label %bb53
bb53:
  %t185 = load i64, ptr %l16, !tbaa !24
  store i64 %t185, ptr %l92, !tbaa !24
  %t186 = load ptr, ptr %l15, !tbaa !29
  %t188 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eLen_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %t186)
  store i64 %t188, ptr %l94
  br label %bb54
bb54:
  %t189 = load i64, ptr %l92, !tbaa !24
  %t190 = load i64, ptr %l94, !tbaa !24
  %t191 = icmp slt i64 %t189, %t190
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb55, label %bb56
bb55:
  br label %bb68
bb56:
  br label %bb57
bb57:
  %t195 = load ptr, ptr %l15, !tbaa !29
  %t196 = load i64, ptr %l16, !tbaa !24
  %t199 = call %"compiler/api:sig" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eAt_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %v0, ptr %t195, i64 %t196)
  store %"compiler/api:sig" %t199, ptr %l99
  br label %bb58
bb58:
  %t200 = load %"compiler/api:sig", ptr %l99
  store %"compiler/api:sig" %t200, ptr %l17
  %t201 = getelementptr %"compiler/api:sig", ptr %l17, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201, !tbaa !27
  %t205 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %s0, ptr %v0, ptr %l11, { i64, ptr } %t202)
  store i1 %t205, ptr %l102
  br label %bb59
bb59:
  %t206 = load i1, ptr %l102, !tbaa !21
  %t207 = xor i1 %t206, true
  br i1 %t207, label %bb60, label %bb61
bb60:
  %t209 = load ptr, ptr %lp2
  store ptr %t209, ptr %l104, !tbaa !29
  %t210 = ptrtoint ptr %v2 to i64
  store i64 %t210, ptr %l105, !tbaa !24
  %t211 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3achange_2e1
  br i1 %t211, label %bb62, label %bb63
bb61:
  br label %bb66
bb62:
  %t213 = call ptr @__olang_region_make(ptr %v2)
  %t214 = ptrtoint ptr %t213 to i64
  store i64 %t214, ptr %l105, !tbaa !24
  br label %bb63
bb63:
  %t215 = getelementptr %"compiler/api:sig", ptr %l17, i32 0, i32 1
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  %t217 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t218 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t220 = extractvalue { i64, ptr } %t216, 1
  %t221 = extractvalue { i64, ptr } %t216, 0
  %t222 = add i64 %t218, %t221
  %t223 = load i64, ptr %l105
  %t224 = inttoptr i64 %t223 to ptr
  %t225 = call ptr @__olang_scope_alloc(ptr %t224, i64 %t222)
  call void @olang_textcopy(ptr %t225, ptr %t217, i64 %t218)
  %t226 = getelementptr i8, ptr %t225, i64 %t218
  call void @olang_textcopy(ptr %t226, ptr %t220, i64 %t221)
  %t227 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t228 = insertvalue { i64, ptr } %t227, ptr %t225, 1
  %t230 = load i64, ptr %l105
  %t231 = inttoptr i64 %t230 to ptr
  %t232 = extractvalue { i64, ptr } %t228, 0
  %t233 = extractvalue { i64, ptr } %t228, 1
  %t234 = mul i64 %t232, 1
  %t235 = call ptr @__olang_scope_alloc(ptr %t231, i64 %t234)
  call void @llvm.memcpy.p0.p0.i64(ptr %t235, ptr %t233, i64 %t234, i1 false)
  %t236 = insertvalue { i64, ptr } undef, i64 %t232, 0
  %t237 = insertvalue { i64, ptr } %t236, ptr %t235, 1
  %t238 = getelementptr %"compiler/api:sig", ptr %l17, i32 0, i32 2
  %t239 = load { i64, ptr }, ptr %t238, !tbaa !27
  %t242 = call %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v2, ptr %v0, ptr %v2, ptr %v2, i1 true, { i64, ptr } %t237, { i64, ptr } %t239, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store %"compiler/api:change" %t242, ptr %l111
  br label %bb64
bb64:
  %t243 = load ptr, ptr %l104, !tbaa !29
  %t244 = load %"compiler/api:change", ptr %l111
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ePush_3ccompiler_2fapi_3achange_3e(ptr %v2, ptr %v2, ptr %t243, %"compiler/api:change" %t244)
  br label %bb65
bb65:
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t245 = load i64, ptr %l16, !tbaa !24
  %t247 = add i64 %t245, 1
  store i64 %t247, ptr %l16, !tbaa !24
  br label %bb53
bb68:
  %t249 = load ptr, ptr %lp2
  %t250 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t249
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t250, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fapi_2edepMark(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l5 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/doc:Entry", ptr %a0, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v0, ptr %s0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t7, 0
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = mul i64 %t8, 1
  %t11 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t10)
  call void @llvm.memcpy.p0.p0.i64(ptr %t11, ptr %t9, i64 %t10, i1 false)
  %t12 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t15, ptr %l5
  br label %bb2
bb2:
  %t16 = load i1, ptr %l5, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d26, i32 0, i32 1) }, ptr %l8, !tbaa !27
  %t19 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t19, ptr %l7, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d27, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t21, ptr %l7, !tbaa !27
  br label %bb5
bb5:
  %t23 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  store i64 %t24, ptr %l12, !tbaa !24
  %t25 = load i64, ptr %l12, !tbaa !24
  %t26 = mul i64 %t25, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t26)
  %t28 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  store { i64, ptr } %t29, ptr %l13, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = load i64, ptr %l12, !tbaa !24
  %t35 = mul i64 %t34, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t31, ptr %t33, i64 %t35, i1 false)
  %t36 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t36, ptr %l7, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t37 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fapi_2eentries(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %lp4 = alloca ptr
  %l5 = alloca [2 x { i64, ptr }]
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"std/prelude/text:LineIter"
  %l10 = alloca { i64, ptr }
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca { i64, ptr }
  %l19 = alloca i1
  %l26 = alloca i32
  %l32 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l37 = alloca i1
  %l42 = alloca %"std/prelude/text:LineIter"
  %l43 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i32
  %l48 = alloca i1
  %l50 = alloca { i64, ptr }
  %l54 = alloca ptr
  %l55 = alloca i64
  %l57 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l67 = alloca i64
  %l69 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l75 = alloca i1
  %l76 = alloca %"compiler/api:sig"
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
  %t33 = alloca { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, align 8
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t2, ptr %lp4
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t8 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %a0, 0
  %t10 = insertvalue [2 x { i64, ptr }] %t8, { i64, ptr } %a1, 1
  store [2 x { i64, ptr }] %t10, ptr %l5
  %t13 = insertvalue { i64, ptr } undef, i64 2, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %l5, 1
  %t16 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %s0, { i64, ptr } %t14)
  store { i64, ptr } %t16, ptr %l17
  br label %bb2
bb2:
  %t17 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t17, ptr %l6, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t20 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t18)
  store i1 %t20, ptr %l19
  br label %bb3
bb3:
  %t21 = load i1, ptr %l19, !tbaa !21
  %t22 = xor i1 %t21, true
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = load ptr, ptr %lp4
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24
  call void @__olang_scope_close(ptr %s0)
  %t27 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t27, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t28 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr null, i32 1
  %t32 = ptrtoint ptr %t31 to i64
  %t34 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t33, i32 0, i32 0
  store { i64, ptr } %t28, ptr %t34, !tbaa !28
  %t36 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t33, i32 0, i32 1
  store { i64, ptr } %t29, ptr %t36, !tbaa !28
  %t38 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t33, i32 0, i32 2
  store ptr %a3, ptr %t38, !tbaa !28
  call void @__olang_scope_escape(ptr %s0)
  %t40 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t33, i32 0, i32 3
  store ptr %s0, ptr %t40, !tbaa !28
  call void @__olang_scope_escape(ptr %v2)
  %t41 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t33, i32 0, i32 4
  store ptr %v2, ptr %t41, !tbaa !28
  call void @__olang_scope_escape(ptr %v3)
  %t42 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %t33, i32 0, i32 5
  store ptr %v3, ptr %t42, !tbaa !28
  %t43 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_28, 0
  %t44 = insertvalue { ptr, ptr } %t43, ptr %t33, 1
  %t46 = extractvalue { ptr, ptr } %t44, 0
  %t47 = extractvalue { ptr, ptr } %t44, 1
  %t48 = call i32 @compiler_2fsession_2eInChild(ptr %s0, ptr %t46, ptr %t47)
  store i32 %t48, ptr %l26
  br label %bb7
bb7:
  %t49 = load i32, ptr %l26, !tbaa !23
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t52 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t53 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t56 = extractvalue { i64, ptr } %t52, 1
  %t57 = extractvalue { i64, ptr } %t52, 0
  %t58 = add i64 %t54, %t57
  %t59 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 47, ptr getelementptr inbounds (<{ i64, [47 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t61 = add i64 %t58, %t60
  %t62 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t61)
  call void @olang_textcopy(ptr %t62, ptr %t53, i64 %t54)
  %t63 = getelementptr i8, ptr %t62, i64 %t54
  call void @olang_textcopy(ptr %t63, ptr %t56, i64 %t57)
  %t64 = getelementptr i8, ptr %t63, i64 %t57
  call void @olang_textcopy(ptr %t64, ptr %t59, i64 %t60)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t62, 1
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t69 = extractvalue { i64, ptr } %t66, 1
  %t70 = mul i64 %t68, 1
  %t71 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t70)
  call void @llvm.memcpy.p0.p0.i64(ptr %t71, ptr %t69, i64 %t70, i1 false)
  %t72 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t73 = insertvalue { i64, ptr } %t72, ptr %t71, 1
  call void @compiler_2fapi_2esay(ptr %s2, { i64, ptr } %t73)
  br label %bb10
bb9:
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t76 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t76, ptr %rv
  br label %ret
bb11:
  %t77 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t79 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v2, ptr %s0, { i64, ptr } %t77)
  %t80 = extractvalue { i32, { i64, ptr } } %t79, 1
  %t81 = extractvalue { i32, { i64, ptr } } %t79, 0
  store i32 %t81, ptr %l35
  %t82 = icmp ne i32 %t81, 0
  br i1 %t82, label %bb13, label %ok.83, !prof !99
ok.83:
  store { i64, ptr } %t80, ptr %l34
  br label %bb12
bb12:
  %t84 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t84, ptr %l32, !tbaa !27
  br label %bb17
bb13:
  %t85 = load i32, ptr %l35, !tbaa !23
  %t86 = ashr i32 %t85, 16
  %t88 = icmp eq i32 %t86, 1
  store i1 %t88, ptr %l37, !tbaa !21
  %t89 = load i32, ptr %l35, !tbaa !23
  %t90 = ashr i32 %t89, 16
  %t92 = icmp eq i32 %t90, 1
  br i1 %t92, label %bb14, label %bb15
bb14:
  call void @__olang_errpay_pop()
  br label %bb15
bb15:
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t95 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t95, ptr %rv
  br label %ret
bb17:
  %t96 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t99 = call %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %s0, ptr %s0, { i64, ptr } %t96)
  store %"std/prelude/text:LineIter" %t99, ptr %l42
  br label %bb18
bb18:
  %t100 = load %"std/prelude/text:LineIter", ptr %l42
  store %"std/prelude/text:LineIter" %t100, ptr %l8
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t102 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %s0, ptr %s0, ptr %l8)
  %t103 = extractvalue { i32, { i64, ptr } } %t102, 1
  %t104 = extractvalue { i32, { i64, ptr } } %t102, 0
  store i32 %t104, ptr %l46
  %t105 = icmp ne i32 %t104, 0
  br i1 %t105, label %bb21, label %ok.106, !prof !99
ok.106:
  store { i64, ptr } %t103, ptr %l45
  br label %bb20
bb20:
  %t107 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t107, ptr %l43, !tbaa !27
  br label %bb23
bb21:
  %t108 = load i32, ptr %l46, !tbaa !23
  %t109 = ashr i32 %t108, 16
  %t111 = icmp eq i32 %t109, 1
  store i1 %t111, ptr %l48, !tbaa !21
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb23:
  %t112 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t115 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %s0, ptr %s6, ptr %s6, { i64, ptr } %t112, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store { i64, ptr } %t115, ptr %l50
  br label %bb24
bb24:
  %t116 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t116, ptr %l10, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  %t121 = icmp eq i64 %t119, 4
  br i1 %t121, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s7
  %t123 = load ptr, ptr %lp4
  store ptr %t123, ptr %l54, !tbaa !29
  %t124 = ptrtoint ptr %v4 to i64
  store i64 %t124, ptr %l55, !tbaa !24
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3asig_2e0
  br i1 %t125, label %bb27, label %bb28
bb26:
  br label %bb36
bb27:
  %t127 = call ptr @__olang_region_make(ptr %v4)
  %t128 = ptrtoint ptr %t127 to i64
  store i64 %t128, ptr %l55, !tbaa !24
  br label %bb28
bb28:
  %t129 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t129, ptr %l57, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %t131, i64 0
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !37
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = extractvalue { i64, ptr } %t133, 0
  %t137 = load i64, ptr %l55
  %t138 = inttoptr i64 %t137 to ptr
  %t139 = call ptr @__olang_scope_alloc(ptr %t138, i64 %t136)
  call void @olang_textcopy(ptr %t139, ptr %t135, i64 %t136)
  %t140 = insertvalue { i64, ptr } undef, i64 %t136, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  %t143 = load i64, ptr %l55
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = extractvalue { i64, ptr } %t141, 0
  %t146 = extractvalue { i64, ptr } %t141, 1
  %t147 = mul i64 %t145, 1
  %t148 = call ptr @__olang_scope_alloc(ptr %t144, i64 %t147)
  call void @llvm.memcpy.p0.p0.i64(ptr %t148, ptr %t146, i64 %t147, i1 false)
  %t149 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t150 = insertvalue { i64, ptr } %t149, ptr %t148, 1
  store { i64, ptr } %t150, ptr %l60, !tbaa !27
  %t151 = ptrtoint ptr %v4 to i64
  store i64 %t151, ptr %l61, !tbaa !24
  %t152 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3asig_2e1
  br i1 %t152, label %bb29, label %bb30
bb29:
  %t154 = call ptr @__olang_region_make(ptr %v4)
  %t155 = ptrtoint ptr %t154 to i64
  store i64 %t155, ptr %l61, !tbaa !24
  br label %bb30
bb30:
  %t156 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t156, ptr %l63, !tbaa !27
  %t157 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr { i64, ptr }, ptr %t158, i64 1
  %t160 = load { i64, ptr }, ptr %t159, !tbaa !37
  %t162 = extractvalue { i64, ptr } %t160, 1
  %t163 = extractvalue { i64, ptr } %t160, 0
  %t164 = load i64, ptr %l61
  %t165 = inttoptr i64 %t164 to ptr
  %t166 = call ptr @__olang_scope_alloc(ptr %t165, i64 %t163)
  call void @olang_textcopy(ptr %t166, ptr %t162, i64 %t163)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  %t170 = load i64, ptr %l61
  %t171 = inttoptr i64 %t170 to ptr
  %t172 = extractvalue { i64, ptr } %t168, 0
  %t173 = extractvalue { i64, ptr } %t168, 1
  %t174 = mul i64 %t172, 1
  %t175 = call ptr @__olang_scope_alloc(ptr %t171, i64 %t174)
  call void @llvm.memcpy.p0.p0.i64(ptr %t175, ptr %t173, i64 %t174, i1 false)
  %t176 = insertvalue { i64, ptr } undef, i64 %t172, 0
  %t177 = insertvalue { i64, ptr } %t176, ptr %t175, 1
  store { i64, ptr } %t177, ptr %l66, !tbaa !27
  %t178 = ptrtoint ptr %v4 to i64
  store i64 %t178, ptr %l67, !tbaa !24
  %t179 = load i1, ptr @olang_2esole_2ecompiler_2fapi_3asig_2e2
  br i1 %t179, label %bb31, label %bb32
bb31:
  %t181 = call ptr @__olang_region_make(ptr %v4)
  %t182 = ptrtoint ptr %t181 to i64
  store i64 %t182, ptr %l67, !tbaa !24
  br label %bb32
bb32:
  %t183 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t183, ptr %l69, !tbaa !27
  %t184 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr { i64, ptr }, ptr %t185, i64 2
  %t187 = load { i64, ptr }, ptr %t186, !tbaa !37
  %t189 = extractvalue { i64, ptr } %t187, 1
  %t190 = extractvalue { i64, ptr } %t187, 0
  %t191 = load i64, ptr %l67
  %t192 = inttoptr i64 %t191 to ptr
  %t193 = call ptr @__olang_scope_alloc(ptr %t192, i64 %t190)
  call void @olang_textcopy(ptr %t193, ptr %t189, i64 %t190)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  %t197 = load i64, ptr %l67
  %t198 = inttoptr i64 %t197 to ptr
  %t199 = extractvalue { i64, ptr } %t195, 0
  %t200 = extractvalue { i64, ptr } %t195, 1
  %t201 = mul i64 %t199, 1
  %t202 = call ptr @__olang_scope_alloc(ptr %t198, i64 %t201)
  call void @llvm.memcpy.p0.p0.i64(ptr %t202, ptr %t200, i64 %t201, i1 false)
  %t203 = insertvalue { i64, ptr } undef, i64 %t199, 0
  %t204 = insertvalue { i64, ptr } %t203, ptr %t202, 1
  store { i64, ptr } %t204, ptr %l72, !tbaa !27
  %t205 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t205, ptr %l73, !tbaa !27
  %t206 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !27
  %t208 = getelementptr { i64, ptr }, ptr %t207, i64 3
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !37
  %t211 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s6, ptr %s7, { i64, ptr } %t209, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t211, ptr %l75
  br label %bb33
bb33:
  %t212 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t214 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t215 = load i1, ptr %l75, !tbaa !21
  %t216 = call %"compiler/api:sig" @compiler_2fapi_3asig_2ector(ptr %v4, ptr %v4, ptr %v4, ptr %v4, { i64, ptr } %t212, { i64, ptr } %t213, { i64, ptr } %t214, i1 %t215)
  store %"compiler/api:sig" %t216, ptr %l76
  br label %bb34
bb34:
  %t217 = load ptr, ptr %l54, !tbaa !29
  %t218 = load %"compiler/api:sig", ptr %l76
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2ePush_3ccompiler_2fapi_3asig_3e(ptr %v4, ptr %v4, ptr %t217, %"compiler/api:sig" %t218)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s6)
  br label %bb37
bb37:
  br label %bb19
bb38:
  %t219 = load ptr, ptr %lp4
  %t220 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t219
  call void @__olang_scope_close(ptr %s0)
  %t222 = insertvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } zeroinitializer, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t220, 1
  store { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t222, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }, ptr %rv
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %rr
}

define dso_local { i32, { i64, ptr } } @compiler_2fapi_2egit(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/os:Output"
  %l2 = alloca %"std/os:Output"
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/os:Output"
  %l6 = alloca i32
  %l8 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d33, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t4 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %a0, { i64, ptr } %t3, i1 true, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) })
  %t5 = extractvalue { i32, %"std/os:Output" } %t4, 1
  %t6 = extractvalue { i32, %"std/os:Output" } %t4, 0
  store i32 %t6, ptr %l6
  %t7 = icmp ne i32 %t6, 0
  br i1 %t7, label %bb2, label %ok.8, !prof !99
ok.8:
  store %"std/os:Output" %t5, ptr %l5
  br label %bb1
bb1:
  %t9 = load %"std/os:Output", ptr %l5
  store %"std/os:Output" %t9, ptr %l2
  br label %bb6
bb2:
  %t10 = load i32, ptr %l6, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  store i1 %t13, ptr %l8, !tbaa !21
  %t14 = load i32, ptr %l6, !tbaa !23
  %t15 = ashr i32 %t14, 16
  %t17 = icmp eq i32 %t15, 1
  br i1 %t17, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t20 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t20, ptr %rv
  br label %ret
bb6:
  %t21 = load %"std/os:Output", ptr %l2
  store %"std/os:Output" %t21, ptr %l1
  %t22 = getelementptr %"std/os:Output", ptr %l1, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = icmp ne i32 %t23, 0
  br i1 %t25, label %bb7, label %bb8
bb7:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t27, ptr %l15, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 0
  store i64 %t29, ptr %l16, !tbaa !24
  %t30 = load i64, ptr %l16, !tbaa !24
  %t31 = mul i64 %t30, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t31)
  %t33 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  store { i64, ptr } %t34, ptr %l17, !tbaa !27
  %t35 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = load i64, ptr %l16, !tbaa !24
  %t40 = mul i64 %t39, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t36, ptr %t38, i64 %t40, i1 false)
  %t41 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t41, ptr %l15, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t42 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t43 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t42, 1
  store { i32, { i64, ptr } } %t43, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t44 = getelementptr %"std/os:Output", ptr %l1, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t47 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %s0, ptr %s0, { i64, ptr } %t45)
  store { i64, ptr } %t47, ptr %l19
  br label %bb10
bb10:
  %t48 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = extractvalue { i64, ptr } %t48, 0
  %t51 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t50)
  call void @olang_textcopy(ptr %t51, ptr %t49, i64 %t50)
  %t52 = insertvalue { i64, ptr } undef, i64 %t50, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t51, 1
  call void @__olang_scope_close(ptr %s0)
  %t55 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t53, 1
  store { i32, { i64, ptr } } %t55, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fapi_2eitemKind(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l6 = alloca i1
  %l7 = alloca i1
  %l9 = alloca i1
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l15 = alloca i1
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l21 = alloca i1
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca { i64, ptr }
  %l44 = alloca i1
  %l46 = alloca { i64, ptr }
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb5
bb3:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d37, i32 0, i32 1) })
  store i1 %t7, ptr %l9
  br label %bb4
bb4:
  %t8 = load i1, ptr %l9, !tbaa !21
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l10, !tbaa !27
  %t10 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t10, ptr %l11, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t11, 0
  store i64 %t12, ptr %l12, !tbaa !24
  %t13 = load i64, ptr %l12, !tbaa !24
  %t14 = mul i64 %t13, 1
  %t15 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t14)
  %t16 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t17 = insertvalue { i64, ptr } %t16, ptr %t15, 1
  store { i64, ptr } %t17, ptr %l13, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = mul i64 %t22, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t19, ptr %t21, i64 %t23, i1 false)
  %t24 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t24, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t28, ptr %l15
  br label %bb9
bb9:
  %t29 = load i1, ptr %l15, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l16, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t30, ptr %l17, !tbaa !27
  %t31 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t32 = extractvalue { i64, ptr } %t31, 0
  store i64 %t32, ptr %l18, !tbaa !24
  %t33 = load i64, ptr %l18, !tbaa !24
  %t34 = mul i64 %t33, 1
  %t35 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t34)
  %t36 = insertvalue { i64, ptr } undef, i64 %t33, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t35, 1
  store { i64, ptr } %t37, ptr %l19, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = load i64, ptr %l18, !tbaa !24
  %t43 = mul i64 %t42, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t39, ptr %t41, i64 %t43, i1 false)
  %t44 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t44, ptr %l17, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t45, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t46 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t48 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t46, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t48, ptr %l21
  br label %bb13
bb13:
  %t49 = load i1, ptr %l21, !tbaa !21
  %t50 = xor i1 %t49, true
  br i1 %t50, label %bb14, label %bb15
bb14:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l23, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t52, ptr %l24, !tbaa !27
  %t53 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t54 = extractvalue { i64, ptr } %t53, 0
  store i64 %t54, ptr %l25, !tbaa !24
  %t55 = load i64, ptr %l25, !tbaa !24
  %t56 = mul i64 %t55, 1
  %t57 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t56)
  %t58 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t59 = insertvalue { i64, ptr } %t58, ptr %t57, 1
  store { i64, ptr } %t59, ptr %l26, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = load i64, ptr %l25, !tbaa !24
  %t65 = mul i64 %t64, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t61, ptr %t63, i64 %t65, i1 false)
  %t66 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t66, ptr %l24, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t67 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t67, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t69 = insertvalue [5 x { i64, ptr }] %t68, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t70 = insertvalue [5 x { i64, ptr }] %t69, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d45, i32 0, i32 1) }, 2
  %t71 = insertvalue [5 x { i64, ptr }] %t70, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d46, i32 0, i32 1) }, 3
  %t72 = insertvalue [5 x { i64, ptr }] %t71, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d47, i32 0, i32 1) }, 4
  %t74 = call ptr @__olang_scope_alloc_a(ptr %s4, i64 80, i64 8)
  store [5 x { i64, ptr }] %t72, ptr %t74
  store ptr %t74, ptr %l1
  store i64 0, ptr %l2, !tbaa !24
  %t76 = load ptr, ptr %l1
  store i64 5, ptr %l3, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t79 = load i64, ptr %l2, !tbaa !24
  %t80 = load i64, ptr %l3, !tbaa !24
  %t83 = icmp slt i64 %t79, %t80
  %t85 = xor i1 %t83, true
  br i1 %t85, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s5)
  br label %bb26
bb19:
  br label %bb20
bb20:
  %t87 = load ptr, ptr %l1
  %t88 = load i64, ptr %l2, !tbaa !24
  %t91 = getelementptr [5 x { i64, ptr }], ptr %t87, i64 0, i64 %t88
  %t92 = load { i64, ptr }, ptr %t91, !tbaa !37
  store { i64, ptr } %t92, ptr %l4, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t96 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t97 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t100 = extractvalue { i64, ptr } %t96, 1
  %t101 = extractvalue { i64, ptr } %t96, 0
  %t102 = add i64 %t98, %t101
  %t103 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t102)
  call void @olang_textcopy(ptr %t103, ptr %t97, i64 %t98)
  %t104 = getelementptr i8, ptr %t103, i64 %t98
  call void @olang_textcopy(ptr %t104, ptr %t100, i64 %t101)
  %t105 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t103, 1
  %t109 = extractvalue { i64, ptr } %t106, 0
  %t110 = extractvalue { i64, ptr } %t106, 1
  %t111 = mul i64 %t109, 1
  %t112 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t111)
  call void @llvm.memcpy.p0.p0.i64(ptr %t112, ptr %t110, i64 %t111, i1 false)
  %t113 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t114 = insertvalue { i64, ptr } %t113, ptr %t112, 1
  %t117 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %s5, { i64, ptr } %t94, { i64, ptr } %t114)
  store i1 %t117, ptr %l44
  br label %bb21
bb21:
  %t118 = load i1, ptr %l44, !tbaa !21
  br i1 %t118, label %bb22, label %bb23
bb22:
  %t119 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t119, ptr %l46, !tbaa !27
  %t121 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 0
  store i64 %t122, ptr %l47, !tbaa !24
  %t123 = load i64, ptr %l47, !tbaa !24
  %t124 = mul i64 %t123, 1
  %t125 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t124)
  %t126 = insertvalue { i64, ptr } undef, i64 %t123, 0
  %t127 = insertvalue { i64, ptr } %t126, ptr %t125, 1
  store { i64, ptr } %t127, ptr %l48, !tbaa !27
  %t128 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = load i64, ptr %l47, !tbaa !24
  %t133 = mul i64 %t132, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t129, ptr %t131, i64 %t133, i1 false)
  %t134 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t134, ptr %l46, !tbaa !27
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t135 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t135, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb25:
  %t136 = load i64, ptr %l2, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l2, !tbaa !24
  br label %bb17
bb26:
  call void @__olang_scope_close(ptr %s4)
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l51, !tbaa !27
  %t140 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t140, ptr %l52, !tbaa !27
  %t141 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l53, !tbaa !24
  %t143 = load i64, ptr %l53, !tbaa !24
  %t144 = mul i64 %t143, 1
  %t145 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t144)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t145, 1
  store { i64, ptr } %t147, ptr %l54, !tbaa !27
  %t148 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = load i64, ptr %l53, !tbaa !24
  %t153 = mul i64 %t152, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t149, ptr %t151, i64 %t153, i1 false)
  %t154 = load { i64, ptr }, ptr %l54, !tbaa !27
  store { i64, ptr } %t154, ptr %l52, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t155 = load { i64, ptr }, ptr %l52, !tbaa !27
  store { i64, ptr } %t155, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fapi_2eitemSigs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca %"compiler/doc:Entry"
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca %"compiler/doc:Entry"
  %l33 = alloca %"compiler/doc:Entry"
  %l35 = alloca { i64, ptr }
  %l37 = alloca i1
  %l45 = alloca ptr
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l52 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %t84 = alloca %"compiler/doc:Entry", align 8
  %t87 = alloca %"compiler/doc:Entry", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/doc:Entry", ptr %t1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @compiler_2fapi_2esigLine(ptr %v1, ptr %s0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l10
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t10 = call { i64, ptr } @compiler_2fapi_2eitemKind(ptr %s0, ptr %s0, { i64, ptr } %t8)
  store { i64, ptr } %t10, ptr %l12
  br label %bb2
bb2:
  %t11 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l13, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/doc:Entry", ptr %t13, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  store { i64, ptr } %t16, ptr %l15, !tbaa !27
  %t17 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t17, ptr %l16, !tbaa !27
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l17, !tbaa !27
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = call { i64, ptr } @compiler_2fapi_2edepMark(ptr %v1, ptr %s0, ptr %t19)
  store { i64, ptr } %t21, ptr %l19
  br label %bb3
bb3:
  %t22 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = extractvalue { i64, ptr } %t22, 0
  %t25 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t27 = add i64 %t24, %t26
  %t28 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t31 = add i64 %t27, %t30
  %t32 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t33 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t34 = add i64 %t31, %t33
  %t35 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = add i64 %t34, %t37
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t41 = add i64 %t38, %t40
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 1
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t45 = add i64 %t41, %t44
  %t46 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t47 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t48 = add i64 %t45, %t47
  %t49 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t48)
  call void @olang_textcopy(ptr %t49, ptr %t23, i64 %t24)
  %t50 = getelementptr i8, ptr %t49, i64 %t24
  call void @olang_textcopy(ptr %t50, ptr %t25, i64 %t26)
  %t51 = getelementptr i8, ptr %t50, i64 %t26
  call void @olang_textcopy(ptr %t51, ptr %t29, i64 %t30)
  %t52 = getelementptr i8, ptr %t51, i64 %t30
  call void @olang_textcopy(ptr %t52, ptr %t32, i64 %t33)
  %t53 = getelementptr i8, ptr %t52, i64 %t33
  call void @olang_textcopy(ptr %t53, ptr %t36, i64 %t37)
  %t54 = getelementptr i8, ptr %t53, i64 %t37
  call void @olang_textcopy(ptr %t54, ptr %t39, i64 %t40)
  %t55 = getelementptr i8, ptr %t54, i64 %t40
  call void @olang_textcopy(ptr %t55, ptr %t43, i64 %t44)
  %t56 = getelementptr i8, ptr %t55, i64 %t44
  call void @olang_textcopy(ptr %t56, ptr %t46, i64 %t47)
  %t57 = insertvalue { i64, ptr } undef, i64 %t48, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t49, 1
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t61 = extractvalue { i64, ptr } %t58, 1
  %t62 = mul i64 %t60, 1
  %t63 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t62)
  call void @llvm.memcpy.p0.p0.i64(ptr %t63, ptr %t61, i64 %t62, i1 false)
  %t64 = insertvalue { i64, ptr } undef, i64 %t60, 0
  %t65 = insertvalue { i64, ptr } %t64, ptr %t63, 1
  %t66 = load ptr, ptr %l13, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s0, ptr %t66, { i64, ptr } %t65)
  br label %bb4
bb4:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/doc:Entry", ptr %t68, i32 0, i32 5
  store ptr %t70, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s3
  %t72 = load i64, ptr %l5, !tbaa !24
  store i64 %t72, ptr %l24, !tbaa !24
  %t73 = load ptr, ptr %l4, !tbaa !29
  %t75 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e_2eLen_3ccompiler_2fdoc_3aEntry_3e(ptr %v1, ptr %t73)
  store i64 %t75, ptr %l26
  br label %bb6
bb6:
  %t76 = load i64, ptr %l24, !tbaa !24
  %t77 = load i64, ptr %l26, !tbaa !24
  %t78 = icmp slt i64 %t76, %t77
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb8:
  br label %bb9
bb9:
  %t82 = load ptr, ptr %l4, !tbaa !29
  %t83 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e_2eAt_3ccompiler_2fdoc_3aEntry_3e(ptr %t84, ptr %v1, ptr %v1, ptr %t82, i64 %t83)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t84, i64 152, i1 false)
  br label %bb10
bb10:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aEntry(ptr %t87, ptr %v1, ptr %l31)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t87, i64 152, i1 false)
  br label %bb11
bb11:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l33, i64 152, i1 false)
  %t89 = getelementptr %"compiler/doc:Entry", ptr %l6, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89, !tbaa !27
  %t92 = call { i64, ptr } @compiler_2fapi_2esigLine(ptr %v1, ptr %s3, { i64, ptr } %t90)
  store { i64, ptr } %t92, ptr %l35
  br label %bb12
bb12:
  %t93 = load { i64, ptr }, ptr %l35, !tbaa !27
  store { i64, ptr } %t93, ptr %l7, !tbaa !27
  %t94 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t96 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s3, ptr %s3, { i64, ptr } %t94, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) })
  store i1 %t96, ptr %l37
  br label %bb13
bb13:
  %t97 = load i1, ptr %l37, !tbaa !21
  br i1 %t97, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s4
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr %"compiler/doc:Entry", ptr %t99, i32 0, i32 2
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t106 = extractvalue { i64, ptr } %t102, 1
  %t107 = extractvalue { i64, ptr } %t102, 0
  %t108 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t109 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t110 = add i64 %t107, %t109
  %t112 = extractvalue { i64, ptr } %t103, 1
  %t113 = extractvalue { i64, ptr } %t103, 0
  %t114 = add i64 %t110, %t113
  %t115 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t116 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t117 = add i64 %t114, %t116
  %t119 = extractvalue { i64, ptr } %t104, 1
  %t120 = extractvalue { i64, ptr } %t104, 0
  %t121 = add i64 %t117, %t120
  %t122 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t123 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t124 = add i64 %t121, %t123
  %t125 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t124)
  call void @olang_textcopy(ptr %t125, ptr %t106, i64 %t107)
  %t126 = getelementptr i8, ptr %t125, i64 %t107
  call void @olang_textcopy(ptr %t126, ptr %t108, i64 %t109)
  %t127 = getelementptr i8, ptr %t126, i64 %t109
  call void @olang_textcopy(ptr %t127, ptr %t112, i64 %t113)
  %t128 = getelementptr i8, ptr %t127, i64 %t113
  call void @olang_textcopy(ptr %t128, ptr %t115, i64 %t116)
  %t129 = getelementptr i8, ptr %t128, i64 %t116
  call void @olang_textcopy(ptr %t129, ptr %t119, i64 %t120)
  %t130 = getelementptr i8, ptr %t129, i64 %t120
  call void @olang_textcopy(ptr %t130, ptr %t122, i64 %t123)
  %t131 = insertvalue { i64, ptr } undef, i64 %t124, 0
  %t132 = insertvalue { i64, ptr } %t131, ptr %t125, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } %t132, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s4, ptr %t98, { i64, ptr } %t139)
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb17:
  %t142 = load ptr, ptr %l0, !tbaa !29
  store ptr %t142, ptr %l45, !tbaa !29
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/doc:Entry", ptr %t143, i32 0, i32 2
  %t146 = load { i64, ptr }, ptr %t145, !tbaa !27
  store { i64, ptr } %t146, ptr %l47, !tbaa !27
  %t147 = getelementptr %"compiler/doc:Entry", ptr %l6, i32 0, i32 2
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !27
  store { i64, ptr } %t148, ptr %l48, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t150 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t151 = getelementptr %"compiler/doc:Entry", ptr %l6, i32 0, i32 6
  %t152 = load i1, ptr %t151, !tbaa !21
  %t156 = call { i64, ptr } @compiler_2fapi_2ememberKind(ptr %s0, ptr %s3, ptr %s3, { i64, ptr } %t149, { i64, ptr } %t150, i1 %t152)
  store { i64, ptr } %t156, ptr %l52
  br label %bb18
bb18:
  %t157 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t157, ptr %l53, !tbaa !27
  %t159 = call { i64, ptr } @compiler_2fapi_2edepMark(ptr %s3, ptr %s3, ptr %l6)
  store { i64, ptr } %t159, ptr %l55
  br label %bb19
bb19:
  %t160 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t163 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t164 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t165 = add i64 %t162, %t164
  %t166 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t167 = extractvalue { i64, ptr } %t166, 1
  %t168 = extractvalue { i64, ptr } %t166, 0
  %t169 = add i64 %t165, %t168
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t176 = add i64 %t172, %t175
  %t177 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = add i64 %t179, %t182
  %t184 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t185 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t186 = add i64 %t183, %t185
  %t187 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t187, 1
  %t189 = extractvalue { i64, ptr } %t187, 0
  %t190 = add i64 %t186, %t189
  %t191 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t192 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t193 = add i64 %t190, %t192
  %t194 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t193)
  call void @olang_textcopy(ptr %t194, ptr %t161, i64 %t162)
  %t195 = getelementptr i8, ptr %t194, i64 %t162
  call void @olang_textcopy(ptr %t195, ptr %t163, i64 %t164)
  %t196 = getelementptr i8, ptr %t195, i64 %t164
  call void @olang_textcopy(ptr %t196, ptr %t167, i64 %t168)
  %t197 = getelementptr i8, ptr %t196, i64 %t168
  call void @olang_textcopy(ptr %t197, ptr %t170, i64 %t171)
  %t198 = getelementptr i8, ptr %t197, i64 %t171
  call void @olang_textcopy(ptr %t198, ptr %t174, i64 %t175)
  %t199 = getelementptr i8, ptr %t198, i64 %t175
  call void @olang_textcopy(ptr %t199, ptr %t177, i64 %t178)
  %t200 = getelementptr i8, ptr %t199, i64 %t178
  call void @olang_textcopy(ptr %t200, ptr %t181, i64 %t182)
  %t201 = getelementptr i8, ptr %t200, i64 %t182
  call void @olang_textcopy(ptr %t201, ptr %t184, i64 %t185)
  %t202 = getelementptr i8, ptr %t201, i64 %t185
  call void @olang_textcopy(ptr %t202, ptr %t188, i64 %t189)
  %t203 = getelementptr i8, ptr %t202, i64 %t189
  call void @olang_textcopy(ptr %t203, ptr %t191, i64 %t192)
  %t204 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t194, 1
  %t207 = extractvalue { i64, ptr } %t205, 0
  %t208 = extractvalue { i64, ptr } %t205, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t213 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %s3, ptr %t213, { i64, ptr } %t212)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s3)
  br label %bb21
bb21:
  %t215 = load i64, ptr %l5, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l5, !tbaa !24
  br label %bb5
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fapi_2eitems(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i8
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l20 = alloca i64
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %l46 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i1
  %l59 = alloca i1
  %l66 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i64
  %l72 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca i64
  %l75 = alloca i64
  %l80 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l92 = alloca i64
  %l94 = alloca { i64, ptr }
  %l95 = alloca i64
  %l98 = alloca i64
  %l99 = alloca i64
  %l104 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l110 = alloca i64
  %l111 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store i64 0, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 0
  store i64 %t7, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t9 = load i64, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp sgt i64 %t9, %t10
  br i1 %t13, label %bb2, label %bb3
bb2:
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp sgt i64 %t15, 0
  br i1 %t17, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb4:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = sub i64 %t19, %t20
  %t24 = load i64, ptr %l6, !tbaa !24
  %t27 = add i64 %t23, %t24
  %t29 = sub i64 %t27, 1
  %t30 = load i64, ptr %l6, !tbaa !24
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
  store i64 %t36, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t37 = load i64, ptr %l8, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp slt i64 %t37, %t38
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb9, label %bb10
bb9:
  br label %bb50
bb10:
  br label %bb11
bb11:
  %t45 = load i64, ptr %l4, !tbaa !24
  %t46 = load i64, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l6, !tbaa !24
  %t50 = mul i64 %t46, %t47
  %t53 = add i64 %t45, %t50
  store i64 %t53, ptr %l9, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t55, ptr %l38, !tbaa !27
  %t56 = load i64, ptr %l9, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 %t56
  %t61 = load i8, ptr %t60, !tbaa !32
  store i8 %t61, ptr %l10, !tbaa !22
  %t63 = load i8, ptr %l10, !tbaa !22
  %t65 = icmp eq i8 %t63, 40
  br i1 %t65, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb14
bb13:
  %t67 = load i8, ptr %l10, !tbaa !22
  %t69 = icmp eq i8 %t67, 60
  store i1 %t69, ptr %l43, !tbaa !21
  br label %bb14
bb14:
  %t71 = load i1, ptr %l43, !tbaa !21
  br i1 %t71, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  %t72 = load i8, ptr %l10, !tbaa !22
  %t74 = icmp eq i8 %t72, 91
  store i1 %t74, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t76 = load i1, ptr %l46, !tbaa !21
  br i1 %t76, label %bb18, label %bb19
bb18:
  %t77 = load i64, ptr %l2, !tbaa !24
  %t79 = add i64 %t77, 1
  store i64 %t79, ptr %l2, !tbaa !24
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t81 = load i8, ptr %l10, !tbaa !22
  %t83 = icmp eq i8 %t81, 41
  br i1 %t83, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb23
bb22:
  %t85 = load i8, ptr %l10, !tbaa !22
  %t87 = icmp eq i8 %t85, 62
  store i1 %t87, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t89 = load i1, ptr %l53, !tbaa !21
  br i1 %t89, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb26
bb25:
  %t90 = load i8, ptr %l10, !tbaa !22
  %t92 = icmp eq i8 %t90, 93
  store i1 %t92, ptr %l56, !tbaa !21
  br label %bb26
bb26:
  %t94 = load i1, ptr %l56, !tbaa !21
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t97 = icmp sgt i64 %t95, 0
  store i1 %t97, ptr %l59, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l59, !tbaa !21
  br label %bb29
bb29:
  %t99 = load i1, ptr %l59, !tbaa !21
  br i1 %t99, label %bb30, label %bb31
bb30:
  %t100 = load i64, ptr %l2, !tbaa !24
  %t102 = sub i64 %t100, 1
  store i64 %t102, ptr %l2, !tbaa !24
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t104 = load i64, ptr %l2, !tbaa !24
  %t106 = icmp eq i64 %t104, 0
  br i1 %t106, label %bb33, label %bb34
bb33:
  %t108 = load i8, ptr %l10, !tbaa !22
  %t110 = icmp eq i8 %t108, 44
  store i1 %t110, ptr %l66, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t112 = load i1, ptr %l66, !tbaa !21
  br i1 %t112, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s5
  %t113 = load ptr, ptr %lp1
  store ptr %t113, ptr %l69, !tbaa !29
  %t114 = ptrtoint ptr %v1 to i64
  store i64 %t114, ptr %l70, !tbaa !24
  %t115 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t115, label %bb38, label %bb39
bb37:
  br label %bb48
bb38:
  %t117 = call ptr @__olang_region_make(ptr %v1)
  %t118 = ptrtoint ptr %t117 to i64
  store i64 %t118, ptr %l70, !tbaa !24
  br label %bb39
bb39:
  %t119 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t119, ptr %l72, !tbaa !27
  %t120 = load i64, ptr %l3, !tbaa !24
  store i64 %t120, ptr %l73, !tbaa !24
  %t121 = load i64, ptr %l9, !tbaa !24
  store i64 %t121, ptr %l74, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t123 = extractvalue { i64, ptr } %t122, 0
  store i64 %t123, ptr %l75, !tbaa !24
  %t124 = load i64, ptr %l73, !tbaa !24
  %t125 = icmp sge i64 %t124, 0
  br i1 %t125, label %bb40, label %bb41
bb40:
  %t127 = load i64, ptr %l73, !tbaa !24
  %t128 = load i64, ptr %l74, !tbaa !24
  %t129 = icmp sle i64 %t127, %t128
  br i1 %t129, label %bb42, label %bb43
bb41:
  call void @__olang_check_failed(ptr @olang_loc_260304cabd5cd416_913b5f9104b1a62)
  unreachable
bb42:
  %t131 = load i64, ptr %l74, !tbaa !24
  %t132 = load i64, ptr %l75, !tbaa !24
  %t133 = icmp sle i64 %t131, %t132
  br i1 %t133, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_260304cabd5cd416_913b5f9104b1a62)
  unreachable
bb44:
  %t135 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = load i64, ptr %l73, !tbaa !24
  %t138 = load i64, ptr %l74, !tbaa !24
  %t139 = getelementptr i8, ptr %t136, i64 %t137
  %t140 = sub i64 %t138, %t137
  %t141 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t139, 1
  %t144 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s5, { i64, ptr } %t142)
  store { i64, ptr } %t144, ptr %l80
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_260304cabd5cd416_913b5f9104b1a62)
  unreachable
bb46:
  %t145 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t146 = extractvalue { i64, ptr } %t145, 1
  %t147 = extractvalue { i64, ptr } %t145, 0
  %t148 = load i64, ptr %l70
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = call ptr @__olang_scope_alloc(ptr %t149, i64 %t147)
  call void @olang_textcopy(ptr %t150, ptr %t146, i64 %t147)
  %t151 = insertvalue { i64, ptr } undef, i64 %t147, 0
  %t152 = insertvalue { i64, ptr } %t151, ptr %t150, 1
  %t154 = load i64, ptr %l70
  %t155 = inttoptr i64 %t154 to ptr
  %t156 = extractvalue { i64, ptr } %t152, 0
  %t157 = extractvalue { i64, ptr } %t152, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %t155, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t162 = load ptr, ptr %l69, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t162, { i64, ptr } %t161)
  br label %bb47
bb47:
  %t164 = load i64, ptr %l9, !tbaa !24
  %t166 = add i64 %t164, 1
  store i64 %t166, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s5)
  br label %bb48
bb48:
  br label %bb49
bb49:
  %t168 = load i64, ptr %l8, !tbaa !24
  %t170 = add i64 %t168, 1
  store i64 %t170, ptr %l8, !tbaa !24
  br label %bb8
bb50:
  %t172 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t175 = load i64, ptr %l3, !tbaa !24
  %t178 = icmp sgt i64 %t174, %t175
  br i1 %t178, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s8
  %t180 = load ptr, ptr %lp1
  store ptr %t180, ptr %l91, !tbaa !29
  %t181 = ptrtoint ptr %v1 to i64
  store i64 %t181, ptr %l92, !tbaa !24
  %t182 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t182, label %bb53, label %bb54
bb52:
  br label %bb63
bb53:
  %t184 = call ptr @__olang_region_make(ptr %v1)
  %t185 = ptrtoint ptr %t184 to i64
  store i64 %t185, ptr %l92, !tbaa !24
  br label %bb54
bb54:
  %t186 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t186, ptr %l94, !tbaa !27
  %t187 = load i64, ptr %l3, !tbaa !24
  store i64 %t187, ptr %l95, !tbaa !24
  %t188 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t188, 0
  store i64 %t191, ptr %l98, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t193 = extractvalue { i64, ptr } %t192, 0
  store i64 %t193, ptr %l99, !tbaa !24
  %t194 = load i64, ptr %l95, !tbaa !24
  %t195 = icmp sge i64 %t194, 0
  br i1 %t195, label %bb55, label %bb56
bb55:
  %t197 = load i64, ptr %l95, !tbaa !24
  %t198 = load i64, ptr %l98, !tbaa !24
  %t199 = icmp sle i64 %t197, %t198
  br i1 %t199, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_604929f766c85c73_85c34c9ae6f351df)
  unreachable
bb57:
  %t201 = load i64, ptr %l98, !tbaa !24
  %t202 = load i64, ptr %l99, !tbaa !24
  %t203 = icmp sle i64 %t201, %t202
  br i1 %t203, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_604929f766c85c73_85c34c9ae6f351df)
  unreachable
bb59:
  %t205 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t206 = load ptr, ptr %t205, !tbaa !27
  %t207 = load i64, ptr %l95, !tbaa !24
  %t208 = load i64, ptr %l98, !tbaa !24
  %t209 = getelementptr i8, ptr %t206, i64 %t207
  %t210 = sub i64 %t208, %t207
  %t211 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t209, 1
  %t214 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s8, { i64, ptr } %t212)
  store { i64, ptr } %t214, ptr %l104
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_604929f766c85c73_85c34c9ae6f351df)
  unreachable
bb61:
  %t215 = load { i64, ptr }, ptr %l104, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = extractvalue { i64, ptr } %t215, 0
  %t218 = load i64, ptr %l92
  %t219 = inttoptr i64 %t218 to ptr
  %t220 = call ptr @__olang_scope_alloc(ptr %t219, i64 %t217)
  call void @olang_textcopy(ptr %t220, ptr %t216, i64 %t217)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  %t224 = load i64, ptr %l92
  %t225 = inttoptr i64 %t224 to ptr
  %t226 = extractvalue { i64, ptr } %t222, 0
  %t227 = extractvalue { i64, ptr } %t222, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %t225, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t232 = load ptr, ptr %l91, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t232, { i64, ptr } %t231)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s8)
  br label %bb63
bb63:
  %t234 = load ptr, ptr %lp1
  %t236 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v1, ptr %v1, ptr %t234)
  store { i64, ptr } %t236, ptr %l108
  br label %bb64
bb64:
  %t237 = load { i64, ptr }, ptr %l108, !tbaa !27
  store { i64, ptr } %t237, ptr %l109, !tbaa !27
  %t238 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t239 = extractvalue { i64, ptr } %t238, 0
  store i64 %t239, ptr %l110, !tbaa !24
  %t240 = load i64, ptr %l110, !tbaa !24
  %t241 = mul i64 %t240, 16
  %t242 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t241)
  %t243 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t244 = insertvalue { i64, ptr } %t243, ptr %t242, 1
  store { i64, ptr } %t244, ptr %l111, !tbaa !27
  %t245 = getelementptr { i64, ptr }, ptr %l111, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t248 = load ptr, ptr %t247, !tbaa !27
  %t249 = load i64, ptr %l110, !tbaa !24
  %t250 = mul i64 %t249, 16
  call void @llvm.memmove.p0.p0.i64(ptr %t246, ptr %t248, i64 %t250, i1 false)
  %t251 = load { i64, ptr }, ptr %l111, !tbaa !27
  store { i64, ptr } %t251, ptr %l109, !tbaa !27
  %t252 = load { i64, ptr }, ptr %l109, !tbaa !27
  store { i64, ptr } %t252, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fapi_2ememberKind(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l4 = alloca i1
  %l6 = alloca i1
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca i1
  %l14 = alloca { i64, ptr }
  %l17 = alloca i1
  %l18 = alloca { i64, ptr }
  %l21 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca i64
  %l27 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a2, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l4, !tbaa !21
  br label %bb4
bb2:
  %t5 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v1, ptr %s0, { i64, ptr } %a1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d59, i32 0, i32 1) })
  store i1 %t5, ptr %l6
  br label %bb3
bb3:
  %t6 = load i1, ptr %l6, !tbaa !21
  store i1 %t6, ptr %l4, !tbaa !21
  br label %bb4
bb4:
  %t7 = load i1, ptr %l4, !tbaa !21
  br i1 %t7, label %bb5, label %bb6
bb5:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l7, !tbaa !27
  %t8 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  %t9 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t9, 0
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load i64, ptr %l9, !tbaa !24
  %t12 = mul i64 %t11, 1
  %t13 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t12)
  %t14 = insertvalue { i64, ptr } undef, i64 %t11, 0
  %t15 = insertvalue { i64, ptr } %t14, ptr %t13, 1
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = load i64, ptr %l9, !tbaa !24
  %t21 = mul i64 %t20, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t17, ptr %t19, i64 %t21, i1 false)
  %t22 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t22, ptr %l8, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t23 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t23, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t24 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t26 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t24, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d61, i32 0, i32 1) })
  store i1 %t26, ptr %l13
  br label %bb8
bb8:
  %t27 = load i1, ptr %l13, !tbaa !21
  br i1 %t27, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l14, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t28, ptr %l11, !tbaa !27
  br label %bb27
bb12:
  %t30 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store i1 %t32, ptr %l17
  br label %bb13
bb13:
  %t33 = load i1, ptr %l17, !tbaa !21
  br i1 %t33, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d64, i32 0, i32 1) }, ptr %l18, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t34, ptr %l11, !tbaa !27
  br label %bb27
bb17:
  %t36 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t38 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t36, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store i1 %t38, ptr %l21
  br label %bb18
bb18:
  %t39 = load i1, ptr %l21, !tbaa !21
  br i1 %t39, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t40 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t40, ptr %l11, !tbaa !27
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d67, i32 0, i32 1) }, ptr %l24, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t42, ptr %l11, !tbaa !27
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_2367fe2aaee9c783_ead5253a58acfdcf)
  unreachable
bb27:
  %t44 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t44, 0
  store i64 %t45, ptr %l26, !tbaa !24
  %t46 = load i64, ptr %l26, !tbaa !24
  %t47 = mul i64 %t46, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l27, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = load i64, ptr %l26, !tbaa !24
  %t56 = mul i64 %t55, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t52, ptr %t54, i64 %t56, i1 false)
  %t57 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t57, ptr %l11, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t58 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t58, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2fapi_2erowOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca i1
  %l19 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/api:change", ptr %t1, i32 0, i32 0
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l4, !tbaa !27
  br label %bb6
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/api:change", ptr %t6, i32 0, i32 4
  %t9 = load i1, ptr %t8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  store { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d69, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb5
bb4:
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d70, i32 0, i32 1) }, ptr %l7, !tbaa !27
  br label %bb5
bb5:
  %t11 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t12, ptr %l1, !tbaa !27
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/api:change", ptr %t13, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) })
  store i1 %t18, ptr %l10
  br label %bb7
bb7:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb8, label %bb9
bb8:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/api:change", ptr %t21, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/api:change", ptr %t25, i32 0, i32 3
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t29 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  %t32 = extractvalue { i64, ptr } %t20, 1
  %t33 = extractvalue { i64, ptr } %t20, 0
  %t34 = add i64 %t30, %t33
  %t35 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  %t37 = add i64 %t34, %t36
  %t39 = extractvalue { i64, ptr } %t24, 1
  %t40 = extractvalue { i64, ptr } %t24, 0
  %t41 = add i64 %t37, %t40
  %t42 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t43 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  %t44 = add i64 %t41, %t43
  %t46 = extractvalue { i64, ptr } %t28, 1
  %t47 = extractvalue { i64, ptr } %t28, 0
  %t48 = add i64 %t44, %t47
  %t49 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  %t51 = add i64 %t48, %t50
  %t52 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t51)
  call void @olang_textcopy(ptr %t52, ptr %t29, i64 %t30)
  %t53 = getelementptr i8, ptr %t52, i64 %t30
  call void @olang_textcopy(ptr %t53, ptr %t32, i64 %t33)
  %t54 = getelementptr i8, ptr %t53, i64 %t33
  call void @olang_textcopy(ptr %t54, ptr %t35, i64 %t36)
  %t55 = getelementptr i8, ptr %t54, i64 %t36
  call void @olang_textcopy(ptr %t55, ptr %t39, i64 %t40)
  %t56 = getelementptr i8, ptr %t55, i64 %t40
  call void @olang_textcopy(ptr %t56, ptr %t42, i64 %t43)
  %t57 = getelementptr i8, ptr %t56, i64 %t43
  call void @olang_textcopy(ptr %t57, ptr %t46, i64 %t47)
  %t58 = getelementptr i8, ptr %t57, i64 %t47
  call void @olang_textcopy(ptr %t58, ptr %t49, i64 %t50)
  %t59 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t52, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t60, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/api:change", ptr %t62, i32 0, i32 3
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  %t67 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t65, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t67, ptr %l19
  br label %bb11
bb11:
  %t68 = load i1, ptr %l19, !tbaa !21
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/api:change", ptr %t70, i32 0, i32 1
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/api:change", ptr %t74, i32 0, i32 2
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t78 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  %t81 = extractvalue { i64, ptr } %t69, 1
  %t82 = extractvalue { i64, ptr } %t69, 0
  %t83 = add i64 %t79, %t82
  %t84 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t85 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  %t86 = add i64 %t83, %t85
  %t88 = extractvalue { i64, ptr } %t73, 1
  %t89 = extractvalue { i64, ptr } %t73, 0
  %t90 = add i64 %t86, %t89
  %t91 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  %t93 = add i64 %t90, %t92
  %t95 = extractvalue { i64, ptr } %t77, 1
  %t96 = extractvalue { i64, ptr } %t77, 0
  %t97 = add i64 %t93, %t96
  %t98 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t99 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  %t100 = add i64 %t97, %t99
  %t101 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t100)
  call void @olang_textcopy(ptr %t101, ptr %t78, i64 %t79)
  %t102 = getelementptr i8, ptr %t101, i64 %t79
  call void @olang_textcopy(ptr %t102, ptr %t81, i64 %t82)
  %t103 = getelementptr i8, ptr %t102, i64 %t82
  call void @olang_textcopy(ptr %t103, ptr %t84, i64 %t85)
  %t104 = getelementptr i8, ptr %t103, i64 %t85
  call void @olang_textcopy(ptr %t104, ptr %t88, i64 %t89)
  %t105 = getelementptr i8, ptr %t104, i64 %t89
  call void @olang_textcopy(ptr %t105, ptr %t91, i64 %t92)
  %t106 = getelementptr i8, ptr %t105, i64 %t92
  call void @olang_textcopy(ptr %t106, ptr %t95, i64 %t96)
  %t107 = getelementptr i8, ptr %t106, i64 %t96
  call void @olang_textcopy(ptr %t107, ptr %t98, i64 %t99)
  %t108 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t101, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t109, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t111 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/api:change", ptr %t112, i32 0, i32 1
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/api:change", ptr %t116, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118, !tbaa !27
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/api:change", ptr %t120, i32 0, i32 3
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  %t124 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t125 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  %t127 = extractvalue { i64, ptr } %t111, 1
  %t128 = extractvalue { i64, ptr } %t111, 0
  %t129 = add i64 %t125, %t128
  %t130 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t131 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  %t132 = add i64 %t129, %t131
  %t134 = extractvalue { i64, ptr } %t115, 1
  %t135 = extractvalue { i64, ptr } %t115, 0
  %t136 = add i64 %t132, %t135
  %t137 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t138 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  %t139 = add i64 %t136, %t138
  %t141 = extractvalue { i64, ptr } %t119, 1
  %t142 = extractvalue { i64, ptr } %t119, 0
  %t143 = add i64 %t139, %t142
  %t144 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t145 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  %t146 = add i64 %t143, %t145
  %t148 = extractvalue { i64, ptr } %t123, 1
  %t149 = extractvalue { i64, ptr } %t123, 0
  %t150 = add i64 %t146, %t149
  %t151 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t152 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  %t153 = add i64 %t150, %t152
  %t154 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t153)
  call void @olang_textcopy(ptr %t154, ptr %t124, i64 %t125)
  %t155 = getelementptr i8, ptr %t154, i64 %t125
  call void @olang_textcopy(ptr %t155, ptr %t127, i64 %t128)
  %t156 = getelementptr i8, ptr %t155, i64 %t128
  call void @olang_textcopy(ptr %t156, ptr %t130, i64 %t131)
  %t157 = getelementptr i8, ptr %t156, i64 %t131
  call void @olang_textcopy(ptr %t157, ptr %t134, i64 %t135)
  %t158 = getelementptr i8, ptr %t157, i64 %t135
  call void @olang_textcopy(ptr %t158, ptr %t137, i64 %t138)
  %t159 = getelementptr i8, ptr %t158, i64 %t138
  call void @olang_textcopy(ptr %t159, ptr %t141, i64 %t142)
  %t160 = getelementptr i8, ptr %t159, i64 %t142
  call void @olang_textcopy(ptr %t160, ptr %t144, i64 %t145)
  %t161 = getelementptr i8, ptr %t160, i64 %t145
  call void @olang_textcopy(ptr %t161, ptr %t148, i64 %t149)
  %t162 = getelementptr i8, ptr %t161, i64 %t149
  call void @olang_textcopy(ptr %t162, ptr %t151, i64 %t152)
  %t163 = insertvalue { i64, ptr } undef, i64 %t153, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t154, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t164, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fapi_2esaid(ptr %v0, ptr %a0) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %s0, ptr %a0)
  store { i64, ptr } %t3, ptr %l2
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t4, 0
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = mul i64 %t5, 1
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @llvm.memcpy.p0.p0.i64(ptr %t8, ptr %t6, i64 %t7, i1 false)
  %t9 = insertvalue { i64, ptr } undef, i64 %t5, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  call void @compiler_2fapi_2esay(ptr %s0, { i64, ptr } %t10)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  store i32 2, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2fapi_2esay(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
  store i32 %t3, ptr %l2
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t6 = load i32, ptr %l2, !tbaa !23
  %t7 = ashr i32 %t6, 16
  %t9 = icmp eq i32 %t7, 1
  store i1 %t9, ptr %l4, !tbaa !21
  %t10 = load i32, ptr %l2, !tbaa !23
  %t11 = ashr i32 %t10, 16
  %t13 = icmp eq i32 %t11, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local { i32, { i64, ptr } } @compiler_2fapi_2eside(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l3 = alloca [5 x { i64, ptr }]
  %l4 = alloca { i64, ptr }
  %l5 = alloca [3 x { i64, ptr }]
  %l6 = alloca { i64, ptr }
  %l7 = alloca [3 x { i64, ptr }]
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca [8 x { i64, ptr }]
  %l11 = alloca [5 x { i64, ptr }]
  %l12 = alloca [2 x { i64, ptr }]
  %l14 = alloca i1
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca { i64, [3 x i64] }
  %l34 = alloca %"compiler/diagmsg:Msg"
  %l35 = alloca i64
  %l37 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca i32
  %l44 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i32
  %l52 = alloca i32
  %l54 = alloca i1
  %l60 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l68 = alloca i32
  %l70 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l77 = alloca i32
  %l84 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { i64, ptr } }
  %t75 = alloca { i64, [3 x i64] }, align 8
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %t1)
  store i1 %t3, ptr %l14
  br label %bb1
bb1:
  %t4 = load i1, ptr %l14, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t5, 1
  %t8 = extractvalue { i64, ptr } %t5, 0
  %t9 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t7, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  call void @__olang_scope_close(ptr %s0)
  %t13 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t11, 1
  store { i32, { i64, ptr } } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = ptrtoint ptr %s0 to i64
  store i64 %t14, ptr %l18, !tbaa !24
  %t15 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_205_3e_2e_2d1
  br i1 %t15, label %bb5, label %bb6
bb5:
  %t17 = call ptr @__olang_region_make(ptr %s0)
  %t18 = ptrtoint ptr %t17 to i64
  store i64 %t18, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t26 = load i64, ptr %l18
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call ptr @__olang_scope_alloc(ptr %t27, i64 %t25)
  call void @olang_textcopy(ptr %t28, ptr %t21, i64 %t22)
  %t29 = getelementptr i8, ptr %t28, i64 %t22
  call void @olang_textcopy(ptr %t29, ptr %t23, i64 %t24)
  %t30 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t28, 1
  %t33 = load i64, ptr %l18
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = extractvalue { i64, ptr } %t31, 0
  %t36 = extractvalue { i64, ptr } %t31, 1
  %t37 = mul i64 %t35, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %t34, i64 %t37)
  call void @llvm.memcpy.p0.p0.i64(ptr %t38, ptr %t36, i64 %t37, i1 false)
  %t39 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  %t41 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  %t42 = insertvalue [5 x { i64, ptr }] %t41, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t43 = insertvalue [5 x { i64, ptr }] %t42, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d89, i32 0, i32 1) }, 2
  %t44 = insertvalue [5 x { i64, ptr }] %t43, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d90, i32 0, i32 1) }, 3
  %t46 = insertvalue [5 x { i64, ptr }] %t44, { i64, ptr } %t40, 4
  store [5 x { i64, ptr }] %t46, ptr %l3
  %t49 = insertvalue { i64, ptr } undef, i64 5, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %l3, 1
  %t52 = call { i32, { i64, ptr } } @compiler_2fapi_2egit(ptr %s0, ptr %s0, { i64, ptr } %t50)
  %t53 = extractvalue { i32, { i64, ptr } } %t52, 1
  %t54 = extractvalue { i32, { i64, ptr } } %t52, 0
  store i32 %t54, ptr %l27
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb8, label %ok.56, !prof !99
ok.56:
  store { i64, ptr } %t53, ptr %l26
  br label %bb7
bb7:
  %t57 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t57, ptr %l17, !tbaa !27
  br label %bb9
bb8:
  %t58 = load i32, ptr %l27, !tbaa !23
  %t59 = lshr i32 %t58, 16
  %t60 = and i32 %t58, 65535
  %t61 = icmp eq i32 %t59, 1
  %t62 = select i1 %t61, i32 1, i32 0
  %t63 = icmp eq i32 %t58, 0
  %t64 = shl i32 %t62, 16
  %t65 = or i32 %t64, %t60
  %t66 = select i1 %t63, i32 0, i32 %t65
  call void @__olang_scope_close(ptr %s0)
  %t68 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t66, 0
  store { i32, { i64, ptr } } %t68, ptr %rv
  br label %ret
bb9:
  %t69 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t69, ptr %l4, !tbaa !27
  %t70 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t72 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t70, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d91, i32 0, i32 1) })
  store i1 %t72, ptr %l30
  br label %bb10
bb10:
  %t73 = load i1, ptr %l30, !tbaa !21
  br i1 %t73, label %bb11, label %bb12
bb11:
  store ptr %a2, ptr %l31, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [3 x i64] }, ptr %t75, i32 0, i32 0
  store i64 0, ptr %t76
  %t77 = load { i64, [3 x i64] }, ptr %t75
  store { i64, [3 x i64] } %t77, ptr %l32
  %t78 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t80 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiNoSide(ptr %v0, ptr %v2, { i64, ptr } %t78)
  store %"compiler/diagmsg:Msg" %t80, ptr %l34
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t81 = load ptr, ptr %l31, !tbaa !29
  %t82 = load { i64, [3 x i64] }, ptr %l32
  %t83 = load %"compiler/diagmsg:Msg", ptr %l34
  %t84 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v2, ptr %v2, ptr %t81, { i64, [3 x i64] } %t82, %"compiler/diagmsg:Msg" %t83)
  store i64 %t84, ptr %l35
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  %t86 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t86, ptr %rv
  br label %ret
bb15:
  %t87 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  %t88 = insertvalue [3 x { i64, ptr }] %t87, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t89 = insertvalue [3 x { i64, ptr }] %t88, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d94, i32 0, i32 1) }, 2
  store [3 x { i64, ptr }] %t89, ptr %l5
  %t92 = insertvalue { i64, ptr } undef, i64 3, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %l5, 1
  %t95 = call { i32, { i64, ptr } } @compiler_2fapi_2egit(ptr %s0, ptr %s0, { i64, ptr } %t93)
  %t96 = extractvalue { i32, { i64, ptr } } %t95, 1
  %t97 = extractvalue { i32, { i64, ptr } } %t95, 0
  store i32 %t97, ptr %l42
  %t98 = icmp ne i32 %t97, 0
  br i1 %t98, label %bb17, label %ok.99, !prof !99
ok.99:
  store { i64, ptr } %t96, ptr %l41
  br label %bb16
bb16:
  %t100 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t100, ptr %l37, !tbaa !27
  br label %bb18
bb17:
  %t101 = load i32, ptr %l42, !tbaa !23
  %t102 = lshr i32 %t101, 16
  %t103 = and i32 %t101, 65535
  %t104 = icmp eq i32 %t102, 1
  %t105 = select i1 %t104, i32 1, i32 0
  %t106 = icmp eq i32 %t101, 0
  %t107 = shl i32 %t105, 16
  %t108 = or i32 %t107, %t103
  %t109 = select i1 %t106, i32 0, i32 %t108
  call void @__olang_scope_close(ptr %s0)
  %t111 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t109, 0
  store { i32, { i64, ptr } } %t111, ptr %rv
  br label %ret
bb18:
  %t112 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t112, ptr %l6, !tbaa !27
  %t113 = insertvalue [3 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  %t114 = insertvalue [3 x { i64, ptr }] %t113, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t115 = insertvalue [3 x { i64, ptr }] %t114, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d97, i32 0, i32 1) }, 2
  store [3 x { i64, ptr }] %t115, ptr %l7
  %t118 = insertvalue { i64, ptr } undef, i64 3, 0
  %t119 = insertvalue { i64, ptr } %t118, ptr %l7, 1
  %t121 = call { i32, { i64, ptr } } @compiler_2fapi_2egit(ptr %s0, ptr %s0, { i64, ptr } %t119)
  %t122 = extractvalue { i32, { i64, ptr } } %t121, 1
  %t123 = extractvalue { i32, { i64, ptr } } %t121, 0
  store i32 %t123, ptr %l49
  %t124 = icmp ne i32 %t123, 0
  br i1 %t124, label %bb20, label %ok.125, !prof !99
ok.125:
  store { i64, ptr } %t122, ptr %l48
  br label %bb19
bb19:
  %t126 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t126, ptr %l44, !tbaa !27
  br label %bb21
bb20:
  %t127 = load i32, ptr %l49, !tbaa !23
  %t128 = lshr i32 %t127, 16
  %t129 = and i32 %t127, 65535
  %t130 = icmp eq i32 %t128, 1
  %t131 = select i1 %t130, i32 1, i32 0
  %t132 = icmp eq i32 %t127, 0
  %t133 = shl i32 %t131, 16
  %t134 = or i32 %t133, %t129
  %t135 = select i1 %t132, i32 0, i32 %t134
  call void @__olang_scope_close(ptr %s0)
  %t137 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t135, 0
  store { i32, { i64, ptr } } %t137, ptr %rv
  br label %ret
bb21:
  %t138 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t138, ptr %l8, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t141 = call i32 @std_2fos_2eMkDirAll(ptr %v1, { i64, ptr } %t139)
  store i32 %t141, ptr %l52
  %t142 = icmp ne i32 %t141, 0
  br i1 %t142, label %bb23, label %ok.143, !prof !99
ok.143:
  br label %bb22
bb22:
  br label %bb27
bb23:
  %t144 = load i32, ptr %l52, !tbaa !23
  %t145 = ashr i32 %t144, 16
  %t147 = icmp eq i32 %t145, 1
  store i1 %t147, ptr %l54, !tbaa !21
  %t148 = load i32, ptr %l52, !tbaa !23
  %t149 = ashr i32 %t148, 16
  %t151 = icmp eq i32 %t149, 1
  br i1 %t151, label %bb24, label %bb25
bb24:
  call void @__olang_errpay_pop()
  br label %bb25
bb25:
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s0)
  %t154 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 65536, 0
  store { i32, { i64, ptr } } %t154, ptr %rv
  br label %ret
bb27:
  %t155 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = extractvalue { i64, ptr } %t155, 0
  %t159 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t160 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t161 = add i64 %t158, %t160
  %t162 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t161)
  call void @olang_textcopy(ptr %t162, ptr %t157, i64 %t158)
  %t163 = getelementptr i8, ptr %t162, i64 %t158
  call void @olang_textcopy(ptr %t163, ptr %t159, i64 %t160)
  %t164 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t165 = insertvalue { i64, ptr } %t164, ptr %t162, 1
  store { i64, ptr } %t165, ptr %l9, !tbaa !27
  %t167 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t168 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t170 = insertvalue [8 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  %t171 = insertvalue [8 x { i64, ptr }] %t170, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t173 = insertvalue [8 x { i64, ptr }] %t171, { i64, ptr } %t167, 2
  %t174 = insertvalue [8 x { i64, ptr }] %t173, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d101, i32 0, i32 1) }, 3
  %t175 = insertvalue [8 x { i64, ptr }] %t174, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d102, i32 0, i32 1) }, 4
  %t176 = insertvalue [8 x { i64, ptr }] %t175, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d103, i32 0, i32 1) }, 5
  %t178 = insertvalue [8 x { i64, ptr }] %t176, { i64, ptr } %t168, 6
  %t180 = insertvalue [8 x { i64, ptr }] %t178, { i64, ptr } %t169, 7
  store [8 x { i64, ptr }] %t180, ptr %l10
  %t183 = insertvalue { i64, ptr } undef, i64 8, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %l10, 1
  %t186 = call { i32, { i64, ptr } } @compiler_2fapi_2egit(ptr %s0, ptr %s0, { i64, ptr } %t184)
  %t187 = extractvalue { i32, { i64, ptr } } %t186, 1
  %t188 = extractvalue { i32, { i64, ptr } } %t186, 0
  store i32 %t188, ptr %l68
  %t189 = icmp ne i32 %t188, 0
  br i1 %t189, label %bb29, label %ok.190, !prof !99
ok.190:
  store { i64, ptr } %t187, ptr %l67
  br label %bb28
bb28:
  %t191 = load { i64, ptr }, ptr %l67, !tbaa !27
  store { i64, ptr } %t191, ptr %l60, !tbaa !27
  br label %bb30
bb29:
  %t192 = load i32, ptr %l68, !tbaa !23
  %t193 = lshr i32 %t192, 16
  %t194 = and i32 %t192, 65535
  %t195 = icmp eq i32 %t193, 1
  %t196 = select i1 %t195, i32 1, i32 0
  %t197 = icmp eq i32 %t192, 0
  %t198 = shl i32 %t196, 16
  %t199 = or i32 %t198, %t194
  %t200 = select i1 %t197, i32 0, i32 %t199
  call void @__olang_scope_close(ptr %s0)
  %t202 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t200, 0
  store { i32, { i64, ptr } } %t202, ptr %rv
  br label %ret
bb30:
  %t203 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t204 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t205 = insertvalue [5 x { i64, ptr }] undef, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  %t206 = insertvalue [5 x { i64, ptr }] %t205, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t208 = insertvalue [5 x { i64, ptr }] %t206, { i64, ptr } %t203, 2
  %t209 = insertvalue [5 x { i64, ptr }] %t208, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d106, i32 0, i32 1) }, 3
  %t211 = insertvalue [5 x { i64, ptr }] %t209, { i64, ptr } %t204, 4
  store [5 x { i64, ptr }] %t211, ptr %l11
  %t214 = insertvalue { i64, ptr } undef, i64 5, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %l11, 1
  %t217 = call { i32, { i64, ptr } } @compiler_2fapi_2egit(ptr %s0, ptr %s0, { i64, ptr } %t215)
  %t218 = extractvalue { i32, { i64, ptr } } %t217, 1
  %t219 = extractvalue { i32, { i64, ptr } } %t217, 0
  store i32 %t219, ptr %l77
  %t220 = icmp ne i32 %t219, 0
  br i1 %t220, label %bb32, label %ok.221, !prof !99
ok.221:
  store { i64, ptr } %t218, ptr %l76
  br label %bb31
bb31:
  %t222 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t222, ptr %l70, !tbaa !27
  br label %bb33
bb32:
  %t223 = load i32, ptr %l77, !tbaa !23
  %t224 = lshr i32 %t223, 16
  %t225 = and i32 %t223, 65535
  %t226 = icmp eq i32 %t224, 1
  %t227 = select i1 %t226, i32 1, i32 0
  %t228 = icmp eq i32 %t223, 0
  %t229 = shl i32 %t227, 16
  %t230 = or i32 %t229, %t225
  %t231 = select i1 %t228, i32 0, i32 %t230
  call void @__olang_scope_close(ptr %s0)
  %t233 = insertvalue { i32, { i64, ptr } } zeroinitializer, i32 %t231, 0
  store { i32, { i64, ptr } } %t233, ptr %rv
  br label %ret
bb33:
  %t234 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t235 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t237 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t234, 0
  %t239 = insertvalue [2 x { i64, ptr }] %t237, { i64, ptr } %t235, 1
  store [2 x { i64, ptr }] %t239, ptr %l12
  %t242 = insertvalue { i64, ptr } undef, i64 2, 0
  %t243 = insertvalue { i64, ptr } %t242, ptr %l12, 1
  %t245 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s0, ptr %v3, { i64, ptr } %t243)
  store { i64, ptr } %t245, ptr %l84
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  %t246 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t247 = insertvalue { i32, { i64, ptr } } zeroinitializer, { i64, ptr } %t246, 1
  store { i32, { i64, ptr } } %t247, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { i64, ptr } }, ptr %rv
  ret { i32, { i64, ptr } } %rr
}

define dso_local { i64, ptr } @compiler_2fapi_2esigLine(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i32
  %l26 = alloca { i64, ptr }
  %l27 = alloca i64
  %l28 = alloca i64
  %l33 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i64, ptr } @compiler_2fdoc_2ePastAttrs(ptr %v0, ptr %v0, { i64, ptr } %a0)
  store { i64, ptr } %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t4, ptr %l1, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d107, i32 0, i32 1) })
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb3, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t18, ptr %l13, !tbaa !27
  store i64 %t17, ptr %l14, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l15, !tbaa !24
  %t22 = icmp sge i64 0, 0
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load i64, ptr %l14, !tbaa !24
  %t25 = icmp sle i64 0, %t24
  br i1 %t25, label %bb8, label %bb9
bb7:
  call void @__olang_check_failed(ptr @olang_loc_87c5320dd61ccdf_e8122b69ccf346f3)
  unreachable
bb8:
  %t27 = load i64, ptr %l14, !tbaa !24
  %t28 = load i64, ptr %l15, !tbaa !24
  %t29 = icmp sle i64 %t27, %t28
  br i1 %t29, label %bb10, label %bb11
bb9:
  call void @__olang_check_failed(ptr @olang_loc_87c5320dd61ccdf_e8122b69ccf346f3)
  unreachable
bb10:
  %t31 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l14, !tbaa !24
  %t34 = getelementptr i8, ptr %t32, i64 0
  %t35 = sub i64 %t33, 0
  %t36 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  store { i64, ptr } %t37, ptr %l3, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t41 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d108, i32 0, i32 1) })
  %t42 = extractvalue { i32, i64 } %t41, 1
  %t43 = extractvalue { i32, i64 } %t41, 0
  store i32 %t43, ptr %l23
  %t44 = icmp ne i32 %t43, 0
  br i1 %t44, label %bb13, label %ok.45, !prof !99
ok.45:
  store i64 %t42, ptr %l22
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_87c5320dd61ccdf_e8122b69ccf346f3)
  unreachable
bb12:
  %t46 = load i64, ptr %l22, !tbaa !24
  store i64 %t46, ptr %l20, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l20, !tbaa !24
  br label %bb15
bb15:
  %t51 = load i64, ptr %l20, !tbaa !24
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t52, ptr %l26, !tbaa !27
  store i64 %t51, ptr %l27, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l26, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  store i64 %t55, ptr %l28, !tbaa !24
  %t56 = icmp sge i64 0, 0
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t58 = load i64, ptr %l27, !tbaa !24
  %t59 = icmp sle i64 0, %t58
  br i1 %t59, label %bb18, label %bb19
bb17:
  call void @__olang_check_failed(ptr @olang_loc_8bccbc7f06b99562_adcc063d2387be96)
  unreachable
bb18:
  %t61 = load i64, ptr %l27, !tbaa !24
  %t62 = load i64, ptr %l28, !tbaa !24
  %t63 = icmp sle i64 %t61, %t62
  br i1 %t63, label %bb20, label %bb21
bb19:
  call void @__olang_check_failed(ptr @olang_loc_8bccbc7f06b99562_adcc063d2387be96)
  unreachable
bb20:
  %t65 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = load i64, ptr %l27, !tbaa !24
  %t68 = getelementptr i8, ptr %t66, i64 0
  %t69 = sub i64 %t67, 0
  %t70 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t68, 1
  %t73 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s0, { i64, ptr } %t71)
  store { i64, ptr } %t73, ptr %l33
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_8bccbc7f06b99562_adcc063d2387be96)
  unreachable
bb22:
  %t74 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = extractvalue { i64, ptr } %t74, 0
  %t77 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t76)
  call void @olang_textcopy(ptr %t77, ptr %t75, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2esources(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca [2 x { i64, ptr }]
  %l9 = alloca [2 x { i64, ptr }]
  %l10 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l21 = alloca i1
  %l25 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca i32
  %l30 = alloca i1
  %l43 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca i1
  %l50 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca i64
  %l69 = alloca i64
  %l74 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store { i64, ptr } %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t7 = call i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %t5)
  store i1 %t7, ptr %l15
  br label %bb2
bb2:
  %t8 = load i1, ptr %l15, !tbaa !21
  %t9 = xor i1 %t8, true
  br i1 %t9, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t13 = call i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %t11)
  store i1 %t13, ptr %l18
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t14 = load i1, ptr %l18, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t17 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %s1, { i64, ptr } %t15, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d109, i32 0, i32 1) })
  store i1 %t17, ptr %l21
  br label %bb8
bb7:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb9
bb8:
  %t18 = load i1, ptr %l21, !tbaa !21
  store i1 %t18, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t19 = load i1, ptr %l19, !tbaa !21
  br i1 %t19, label %bb10, label %bb11
bb10:
  %t20 = load ptr, ptr %lp2
  %t21 = load { i64, ptr }, ptr %l1, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v1, ptr %t20, { i64, ptr } %t21)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb13
bb13:
  %t24 = load ptr, ptr %lp2
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %rv
  br label %ret
bb14:
  %t27 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t29 = call { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %s0, { i64, ptr } %t27)
  %t30 = extractvalue { i32, { i64, ptr } } %t29, 1
  %t31 = extractvalue { i32, { i64, ptr } } %t29, 0
  store i32 %t31, ptr %l28
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb16, label %ok.33, !prof !99
ok.33:
  store { i64, ptr } %t30, ptr %l27
  br label %bb15
bb15:
  %t34 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t34, ptr %l25, !tbaa !27
  br label %bb24
bb16:
  %t35 = load i32, ptr %l28, !tbaa !23
  %t36 = ashr i32 %t35, 16
  %t38 = icmp eq i32 %t36, 1
  store i1 %t38, ptr %l30, !tbaa !21
  %t39 = load i32, ptr %l28, !tbaa !23
  %t40 = ashr i32 %t39, 16
  %t42 = icmp eq i32 %t40, 1
  br i1 %t42, label %bb17, label %bb18
bb17:
  call void @__olang_errpay_pop()
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t44 = icmp sge i64 0, 0
  br i1 %t44, label %bb20, label %bb21
bb20:
  %t46 = icmp sle i64 0, 576460752303423487
  br i1 %t46, label %bb22, label %bb23
bb21:
  call void @__olang_check_failed(ptr @olang_loc_7ad8a062239855c4_5d778575ea84a368)
  unreachable
bb22:
  %t48 = mul i64 0, 16
  %t49 = insertvalue { i64, ptr } undef, i64 0, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t50, ptr %l25, !tbaa !27
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_7ad8a062239855c4_5d778575ea84a368)
  unreachable
bb24:
  %t52 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t52, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t55 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t57 = extractvalue { i64, ptr } %t55, 0
  store i64 %t57, ptr %l6, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t59 = load i64, ptr %l5, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp slt i64 %t59, %t60
  %t65 = xor i1 %t63, true
  br i1 %t65, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb50
bb27:
  br label %bb28
bb28:
  %t67 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t67, ptr %l43, !tbaa !27
  %t68 = load i64, ptr %l5, !tbaa !24
  %t70 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %t71, i64 %t68
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !37
  store { i64, ptr } %t73, ptr %l7, !tbaa !27
  %t75 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t77 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s0, ptr %s4, { i64, ptr } %t75, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d110, i32 0, i32 1) })
  store i1 %t77, ptr %l47
  br label %bb29
bb29:
  %t78 = load i1, ptr %l47, !tbaa !21
  br i1 %t78, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l48, !tbaa !21
  br label %bb33
bb31:
  %t79 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s4, { i64, ptr } %t79, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d111, i32 0, i32 1) })
  store i1 %t81, ptr %l50
  br label %bb32
bb32:
  %t82 = load i1, ptr %l50, !tbaa !21
  store i1 %t82, ptr %l48, !tbaa !21
  br label %bb33
bb33:
  %t83 = load i1, ptr %l48, !tbaa !21
  br i1 %t83, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s4)
  br label %bb49
bb35:
  br label %bb36
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t84 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t85 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t87 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t84, 0
  %t89 = insertvalue [2 x { i64, ptr }] %t87, { i64, ptr } %t85, 1
  store [2 x { i64, ptr }] %t89, ptr %l8
  %t92 = insertvalue { i64, ptr } undef, i64 2, 0
  %t93 = insertvalue { i64, ptr } %t92, ptr %l8, 1
  %t95 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s6, ptr %v2, { i64, ptr } %t93)
  store { i64, ptr } %t95, ptr %l56
  br label %bb37
bb37:
  %t96 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 0
  %t98 = extractvalue { i64, ptr } %t96, 1
  %t99 = mul i64 %t97, 1
  %t100 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t99)
  call void @llvm.memcpy.p0.p0.i64(ptr %t100, ptr %t98, i64 %t99, i1 false)
  %t101 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t102 = insertvalue { i64, ptr } %t101, ptr %t100, 1
  store { i64, ptr } %t102, ptr %l57, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t104 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t106 = insertvalue [2 x { i64, ptr }] undef, { i64, ptr } %t103, 0
  %t108 = insertvalue [2 x { i64, ptr }] %t106, { i64, ptr } %t104, 1
  store [2 x { i64, ptr }] %t108, ptr %l9
  %t111 = insertvalue { i64, ptr } undef, i64 2, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %l9, 1
  %t114 = call { i64, ptr } @std_2ffilepath_2eJoin(ptr %s6, ptr %v2, { i64, ptr } %t112)
  store { i64, ptr } %t114, ptr %l63
  br label %bb38
bb38:
  %t115 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t116 = extractvalue { i64, ptr } %t115, 0
  %t117 = extractvalue { i64, ptr } %t115, 1
  %t118 = mul i64 %t116, 1
  %t119 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t118)
  call void @llvm.memcpy.p0.p0.i64(ptr %t119, ptr %t117, i64 %t118, i1 false)
  %t120 = insertvalue { i64, ptr } undef, i64 %t116, 0
  %t121 = insertvalue { i64, ptr } %t120, ptr %t119, 1
  %t122 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t124 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2esources(ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t122, { i64, ptr } %t121)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l65
  br label %bb39
bb39:
  %t125 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  %t126 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t125, ptr %t126
  store ptr %t126, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb40
bb40:
  %t128 = load i64, ptr %l11, !tbaa !24
  store i64 %t128, ptr %l67, !tbaa !24
  %t129 = load ptr, ptr %l10, !tbaa !29
  %t131 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v2, ptr %t129)
  store i64 %t131, ptr %l69
  br label %bb41
bb41:
  %t132 = load i64, ptr %l67, !tbaa !24
  %t133 = load i64, ptr %l69, !tbaa !24
  %t134 = icmp slt i64 %t132, %t133
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb42, label %bb43
bb42:
  br label %bb48
bb43:
  br label %bb44
bb44:
  %t138 = load ptr, ptr %l10, !tbaa !29
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v2, ptr %v2, ptr %t138, i64 %t139)
  store { i64, ptr } %t142, ptr %l74
  br label %bb45
bb45:
  %t143 = load { i64, ptr }, ptr %l74, !tbaa !27
  %t144 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v2, ptr %t144, { i64, ptr } %t143)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t148 = load i64, ptr %l11, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l11, !tbaa !24
  br label %bb40
bb48:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s4)
  br label %bb49
bb49:
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l5, !tbaa !24
  br label %bb25
bb50:
  %t156 = load ptr, ptr %lp2
  %t157 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t156
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { { i64, ptr }, { i64, ptr } } @compiler_2fapi_2esplitErrors(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i8
  %l14 = alloca i64
  %l17 = alloca i64
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %l43 = alloca i1
  %l50 = alloca i1
  %l53 = alloca i1
  %l56 = alloca i1
  %l63 = alloca i1
  %l66 = alloca i1
  %l69 = alloca i1
  %l70 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l77 = alloca i64
  %l78 = alloca i64
  %l83 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l86 = alloca i64
  %l89 = alloca i64
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l105 = alloca { { i64, ptr }, { i64, ptr } }
  %l106 = alloca { i64, ptr }
  %l107 = alloca i64
  %l108 = alloca { i64, ptr }
  %rv = alloca { { i64, ptr }, { i64, ptr } }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
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
  store i64 0, ptr %l14, !tbaa !24
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
  br label %bb59
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l2, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l7, !tbaa !24
  %t51 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t51, ptr %l35, !tbaa !27
  %t52 = load i64, ptr %l7, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  store i8 %t57, ptr %l8, !tbaa !22
  %t59 = load i8, ptr %l8, !tbaa !22
  %t61 = icmp eq i8 %t59, 40
  br i1 %t61, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb13
bb12:
  %t63 = load i8, ptr %l8, !tbaa !22
  %t65 = icmp eq i8 %t63, 60
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb13
bb13:
  %t67 = load i1, ptr %l40, !tbaa !21
  br i1 %t67, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l43, !tbaa !21
  br label %bb16
bb15:
  %t68 = load i8, ptr %l8, !tbaa !22
  %t70 = icmp eq i8 %t68, 91
  store i1 %t70, ptr %l43, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l43, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  %t73 = load i64, ptr %l1, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l1, !tbaa !24
  br label %bb19
bb18:
  br label %bb19
bb19:
  %t77 = load i8, ptr %l8, !tbaa !22
  %t79 = icmp eq i8 %t77, 41
  br i1 %t79, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l50, !tbaa !21
  br label %bb22
bb21:
  %t81 = load i8, ptr %l8, !tbaa !22
  %t83 = icmp eq i8 %t81, 62
  store i1 %t83, ptr %l50, !tbaa !21
  br label %bb22
bb22:
  %t85 = load i1, ptr %l50, !tbaa !21
  br i1 %t85, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l53, !tbaa !21
  br label %bb25
bb24:
  %t86 = load i8, ptr %l8, !tbaa !22
  %t88 = icmp eq i8 %t86, 93
  store i1 %t88, ptr %l53, !tbaa !21
  br label %bb25
bb25:
  %t90 = load i1, ptr %l53, !tbaa !21
  br i1 %t90, label %bb26, label %bb27
bb26:
  %t91 = load i64, ptr %l1, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  store i1 %t93, ptr %l56, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb28
bb28:
  %t95 = load i1, ptr %l56, !tbaa !21
  br i1 %t95, label %bb29, label %bb30
bb29:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t98 = sub i64 %t96, 1
  store i64 %t98, ptr %l1, !tbaa !24
  br label %bb31
bb30:
  br label %bb31
bb31:
  %t100 = load i64, ptr %l1, !tbaa !24
  %t102 = icmp eq i64 %t100, 0
  br i1 %t102, label %bb32, label %bb33
bb32:
  %t104 = load i8, ptr %l8, !tbaa !22
  %t106 = icmp eq i8 %t104, 63
  store i1 %t106, ptr %l63, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l63, !tbaa !21
  br label %bb34
bb34:
  %t108 = load i1, ptr %l63, !tbaa !21
  br i1 %t108, label %bb35, label %bb36
bb35:
  %t109 = load i64, ptr %l7, !tbaa !24
  %t111 = icmp sgt i64 %t109, 0
  store i1 %t111, ptr %l66, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb37
bb37:
  %t113 = load i1, ptr %l66, !tbaa !21
  br i1 %t113, label %bb38, label %bb39
bb38:
  %t114 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t114, ptr %l70, !tbaa !27
  %t115 = load i64, ptr %l7, !tbaa !24
  %t117 = sub i64 %t115, 1
  %t119 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i8, ptr %t120, i64 %t117
  %t122 = load i8, ptr %t121, !tbaa !32
  %t124 = icmp eq i8 %t122, 32
  store i1 %t124, ptr %l69, !tbaa !21
  br label %bb40
bb39:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb40
bb40:
  %t126 = load i1, ptr %l69, !tbaa !21
  br i1 %t126, label %bb41, label %bb42
bb41:
  %t127 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t127, ptr %l75, !tbaa !27
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = sub i64 %t128, 1
  store i64 %t130, ptr %l77, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l78, !tbaa !24
  %t133 = icmp sge i64 0, 0
  br i1 %t133, label %bb43, label %bb44
bb42:
  br label %bb57
bb43:
  %t135 = load i64, ptr %l77, !tbaa !24
  %t136 = icmp sle i64 0, %t135
  br i1 %t136, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_d41a7e60632d887_5501c681380c557b)
  unreachable
bb45:
  %t138 = load i64, ptr %l77, !tbaa !24
  %t139 = load i64, ptr %l78, !tbaa !24
  %t140 = icmp sle i64 %t138, %t139
  br i1 %t140, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_d41a7e60632d887_5501c681380c557b)
  unreachable
bb47:
  %t142 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = load i64, ptr %l77, !tbaa !24
  %t145 = getelementptr i8, ptr %t143, i64 0
  %t146 = sub i64 %t144, 0
  %t147 = insertvalue { i64, ptr } undef, i64 %t146, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  %t150 = extractvalue { i64, ptr } %t148, 1
  %t151 = extractvalue { i64, ptr } %t148, 0
  %t152 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t151)
  call void @olang_textcopy(ptr %t152, ptr %t150, i64 %t151)
  %t153 = insertvalue { i64, ptr } undef, i64 %t151, 0
  %t154 = insertvalue { i64, ptr } %t153, ptr %t152, 1
  store { i64, ptr } %t154, ptr %l83, !tbaa !27
  %t155 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t155, ptr %l84, !tbaa !27
  %t156 = load i64, ptr %l7, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l86, !tbaa !24
  %t159 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t159, 0
  store i64 %t162, ptr %l89, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 0
  store i64 %t164, ptr %l90, !tbaa !24
  %t165 = load i64, ptr %l86, !tbaa !24
  %t166 = icmp sge i64 %t165, 0
  br i1 %t166, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d41a7e60632d887_5501c681380c557b)
  unreachable
bb49:
  %t168 = load i64, ptr %l86, !tbaa !24
  %t169 = load i64, ptr %l89, !tbaa !24
  %t170 = icmp sle i64 %t168, %t169
  br i1 %t170, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_d41a7e60632d887_5501c681380c557b)
  unreachable
bb51:
  %t172 = load i64, ptr %l89, !tbaa !24
  %t173 = load i64, ptr %l90, !tbaa !24
  %t174 = icmp sle i64 %t172, %t173
  br i1 %t174, label %bb53, label %bb54
bb52:
  call void @__olang_check_failed(ptr @olang_loc_d41a7e60632d887_5501c681380c557b)
  unreachable
bb53:
  %t176 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = load i64, ptr %l86, !tbaa !24
  %t179 = load i64, ptr %l89, !tbaa !24
  %t180 = getelementptr i8, ptr %t177, i64 %t178
  %t181 = sub i64 %t179, %t178
  %t182 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t180, 1
  %t185 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %t183)
  store { i64, ptr } %t185, ptr %l95
  br label %bb55
bb54:
  call void @__olang_check_failed(ptr @olang_loc_d41a7e60632d887_5501c681380c557b)
  unreachable
bb55:
  %t186 = load { i64, ptr }, ptr %l95, !tbaa !27
  %t187 = call { i64, ptr } @compiler_2fapi_2eitems(ptr %v1, ptr %v1, { i64, ptr } %t186)
  store { i64, ptr } %t187, ptr %l96
  br label %bb56
bb56:
  %t188 = load { i64, ptr }, ptr %l83, !tbaa !27
  %t189 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t188, 0
  %t190 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t191 = insertvalue { { i64, ptr }, { i64, ptr } } %t189, { i64, ptr } %t190, 1
  store { { i64, ptr }, { i64, ptr } } %t191, ptr %rv
  br label %ret
bb57:
  br label %bb58
bb58:
  %t193 = load i64, ptr %l6, !tbaa !24
  %t195 = add i64 %t193, 1
  store i64 %t195, ptr %l6, !tbaa !24
  br label %bb7
bb59:
  %t197 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t197, ptr %l101, !tbaa !27
  %t199 = icmp sge i64 0, 0
  br i1 %t199, label %bb60, label %bb61
bb60:
  %t201 = icmp sle i64 0, 576460752303423487
  br i1 %t201, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_a3e1d230fee7d732_44f12f5b03cf85de)
  unreachable
bb62:
  %t203 = mul i64 0, 16
  %t204 = insertvalue { i64, ptr } undef, i64 0, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t206 = load { i64, ptr }, ptr %l101, !tbaa !27
  %t207 = insertvalue { { i64, ptr }, { i64, ptr } } undef, { i64, ptr } %t206, 0
  %t209 = insertvalue { { i64, ptr }, { i64, ptr } } %t207, { i64, ptr } %t205, 1
  store { { i64, ptr }, { i64, ptr } } %t209, ptr %l105
  %t210 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l105, i32 0, i32 0
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l106, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l106, !tbaa !27
  %t213 = extractvalue { i64, ptr } %t212, 0
  store i64 %t213, ptr %l107, !tbaa !24
  %t214 = load i64, ptr %l107, !tbaa !24
  %t215 = mul i64 %t214, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t215)
  %t217 = insertvalue { i64, ptr } undef, i64 %t214, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  store { i64, ptr } %t218, ptr %l108, !tbaa !27
  %t219 = getelementptr { i64, ptr }, ptr %l108, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t222 = load ptr, ptr %t221, !tbaa !27
  %t223 = load i64, ptr %l107, !tbaa !24
  %t224 = mul i64 %t223, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t220, ptr %t222, i64 %t224, i1 false)
  %t225 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t226 = getelementptr { { i64, ptr }, { i64, ptr } }, ptr %l105, i32 0, i32 0
  store { i64, ptr } %t225, ptr %t226, !tbaa !27
  %t227 = load { { i64, ptr }, { i64, ptr } }, ptr %l105
  store { { i64, ptr }, { i64, ptr } } %t227, ptr %rv
  br label %ret
bb63:
  call void @__olang_check_failed(ptr @olang_loc_a3e1d230fee7d732_44f12f5b03cf85de)
  unreachable
ret:
  %rr = load { { i64, ptr }, { i64, ptr } }, ptr %rv
  ret { { i64, ptr }, { i64, ptr } } %rr
}

define dso_local i1 @compiler_2fapi_2esubset(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l13 = alloca { i64, ptr }
  %l18 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l13, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr { i64, ptr }, ptr %t19, i64 %t16
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !37
  %t27 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v1, ptr %v0, { i64, ptr } %a1, { i64, ptr } %t21)
  store i1 %t27, ptr %l18
  br label %bb5
bb5:
  %t28 = load i1, ptr %l18, !tbaa !21
  %t29 = xor i1 %t28, true
  br i1 %t29, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = add i64 %t32, 1
  store i64 %t34, ptr %l3, !tbaa !24
  br label %bb1
bb10:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fapi_2eunion(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca { i64, ptr }
  %l24 = alloca i64
  %l26 = alloca i64
  %l31 = alloca { i64, ptr }
  %l34 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store ptr %a0, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l11, !tbaa !24
  %t8 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load i64, ptr %l11, !tbaa !24
  %t12 = load i64, ptr %l13, !tbaa !24
  %t13 = icmp slt i64 %t11, %t12
  %t15 = xor i1 %t13, true
  br i1 %t15, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t17 = load ptr, ptr %l3, !tbaa !29
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store { i64, ptr } %t21, ptr %l18
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t23 = load ptr, ptr %lp2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v0, ptr %t23, { i64, ptr } %t22)
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t27 = load i64, ptr %l4, !tbaa !24
  %t29 = add i64 %t27, 1
  store i64 %t29, ptr %l4, !tbaa !24
  br label %bb2
bb10:
  store ptr %a1, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t33 = load i64, ptr %l7, !tbaa !24
  store i64 %t33, ptr %l24, !tbaa !24
  %t34 = load ptr, ptr %l6, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v1, ptr %t34)
  store i64 %t36, ptr %l26
  br label %bb12
bb12:
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = icmp slt i64 %t37, %t38
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb13, label %bb14
bb13:
  br label %bb23
bb14:
  br label %bb15
bb15:
  %t43 = load ptr, ptr %l6, !tbaa !29
  %t44 = load i64, ptr %l7, !tbaa !24
  %t47 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v1, ptr %v1, ptr %t43, i64 %t44)
  store { i64, ptr } %t47, ptr %l31
  br label %bb16
bb16:
  %t48 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t48, ptr %l8, !tbaa !27
  %t49 = load ptr, ptr %lp2
  %t50 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t53 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v2, ptr %v1, ptr %t49, { i64, ptr } %t50)
  store i1 %t53, ptr %l34
  br label %bb17
bb17:
  %t54 = load i1, ptr %l34, !tbaa !21
  %t55 = xor i1 %t54, true
  br i1 %t55, label %bb18, label %bb19
bb18:
  %t57 = load ptr, ptr %lp2
  %t58 = load { i64, ptr }, ptr %l8, !tbaa !27
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v2, ptr %v1, ptr %t57, { i64, ptr } %t58)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t61 = load i64, ptr %l7, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l7, !tbaa !24
  br label %bb11
bb23:
  %t65 = load ptr, ptr %lp2
  %t66 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_112, 0
  %t67 = insertvalue { ptr, ptr } %t66, ptr null, 1
  %t70 = extractvalue { ptr, ptr } %t67, 0
  %t71 = extractvalue { ptr, ptr } %t67, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v2, ptr %s0, ptr %t65, ptr %t70, ptr %t71)
  br label %bb24
bb24:
  %t72 = load ptr, ptr %lp2
  %t73 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t72
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local { i64, ptr } @compiler_2fapi_2evalueless(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d113, i32 0, i32 1) })
  %t4 = extractvalue { i32, i64 } %t3, 1
  %t5 = extractvalue { i32, i64 } %t3, 0
  store i32 %t5, ptr %l5
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store i64 %t4, ptr %l4
  br label %bb1
bb1:
  %t8 = load i64, ptr %l4, !tbaa !24
  store i64 %t8, ptr %l2, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l2, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t14, ptr %l8, !tbaa !27
  store i64 %t13, ptr %l9, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t16, 0
  store i64 %t17, ptr %l10, !tbaa !24
  %t18 = icmp sge i64 0, 0
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l9, !tbaa !24
  %t21 = icmp sle i64 0, %t20
  br i1 %t21, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_9951d8874535c65a_5b7a0ddb735ab90e)
  unreachable
bb7:
  %t23 = load i64, ptr %l9, !tbaa !24
  %t24 = load i64, ptr %l10, !tbaa !24
  %t25 = icmp sle i64 %t23, %t24
  br i1 %t25, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_9951d8874535c65a_5b7a0ddb735ab90e)
  unreachable
bb9:
  %t27 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = load i64, ptr %l9, !tbaa !24
  %t30 = getelementptr i8, ptr %t28, i64 0
  %t31 = sub i64 %t29, 0
  %t32 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t33 = insertvalue { i64, ptr } %t32, ptr %t30, 1
  %t35 = extractvalue { i64, ptr } %t33, 1
  %t36 = extractvalue { i64, ptr } %t33, 0
  %t37 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t36)
  call void @olang_textcopy(ptr %t37, ptr %t35, i64 %t36)
  %t38 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t39 = insertvalue { i64, ptr } %t38, ptr %t37, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t39, ptr %rv
  br label %ret
bb10:
  call void @__olang_check_failed(ptr @olang_loc_9951d8874535c65a_5b7a0ddb735ab90e)
  unreachable
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2fapi_2ewriteSigs(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2) #0 {
entry:
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/doc:Module"
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/doc:Entry"
  %l10 = alloca %"compiler/diag:Diagnostics"
  %l12 = alloca { i64, ptr }
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l19 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca i1
  %l27 = alloca i1
  %l32 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l44 = alloca ptr
  %l53 = alloca %"compiler/doc:Module"
  %l54 = alloca %"std/prelude/text:StringBuilder"
  %l56 = alloca i64
  %l58 = alloca i64
  %l63 = alloca %"compiler/doc:Entry"
  %l65 = alloca %"compiler/doc:Entry"
  %l70 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l75 = alloca i32
  %l77 = alloca i1
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %rv = alloca i32
  %t1 = alloca %"compiler/diag:Diagnostics", align 8
  %t121 = alloca %"compiler/doc:Entry", align 8
  %t124 = alloca %"compiler/doc:Entry", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t1, ptr %v2, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t1, i64 544, i1 false)
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t2, ptr %l10, i64 544, i1 false)
  store ptr %t2, ptr %l3, !tbaa !29
  store { i64, ptr } %a0, ptr %l12, !tbaa !27
  store ptr %a2, ptr %l13, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  store ptr %t6, ptr %l14, !tbaa !29
  %t7 = ptrtoint ptr %v2 to i64
  store i64 %t7, ptr %l15, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = call ptr @__olang_region_make(ptr %v2)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l15, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l15
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t13)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t14, ptr %l17
  br label %bb4
bb4:
  %t15 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t16 = load i64, ptr %l15
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = call ptr @__olang_scope_alloc_a(ptr %t17, i64 72, i64 8)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t15, ptr %t18
  %t19 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load ptr, ptr %l14, !tbaa !29
  %t23 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v2, ptr %v2, ptr %v2, ptr %v2, { i64, ptr } %t19, ptr %t20, ptr %t21, ptr %t18, i1 true)
  store ptr %t23, ptr %l19
  br label %bb5
bb5:
  %t24 = load ptr, ptr %l19, !tbaa !29
  store ptr %t24, ptr %l4, !tbaa !29
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v2, ptr %t25)
  store i64 %t27, ptr %l21
  br label %bb6
bb6:
  %t28 = load i64, ptr %l21, !tbaa !24
  %t29 = icmp sgt i64 %t28, 0
  br i1 %t29, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb9
bb8:
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/session:Analysis", ptr %t31, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  store i1 %t36, ptr %l23, !tbaa !21
  br label %bb9
bb9:
  %t38 = load i1, ptr %l23, !tbaa !21
  br i1 %t38, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb12
bb11:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = getelementptr %"compiler/session:Analysis", ptr %t39, i32 0, i32 2
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  store i1 %t44, ptr %l27, !tbaa !21
  br label %bb12
bb12:
  %t46 = load i1, ptr %l27, !tbaa !21
  br i1 %t46, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s1
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = call { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v2, ptr %s1, ptr %t47)
  store { i64, ptr } %t49, ptr %l32
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t50 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  %t52 = extractvalue { i64, ptr } %t50, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  call void @compiler_2fapi_2esay(ptr %s1, { i64, ptr } %t56)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb17:
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/session:Analysis", ptr %t59, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t64 = icmp eq ptr %t62, null
  br i1 %t64, label %bb18, label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_c4a0fad4d32f1d23_28eb6d814d877c07)
  unreachable
bb19:
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l4, !tbaa !29
  %t68 = getelementptr %"compiler/session:Analysis", ptr %t66, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !29
  store ptr %t69, ptr %l39, !tbaa !29
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/session:Analysis", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  %t75 = icmp eq ptr %t73, null
  br i1 %t75, label %bb21, label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_c4a0fad4d32f1d23_28eb6d814d877c07)
  unreachable
bb22:
  br label %bb23
bb23:
  %t77 = load ptr, ptr %l4, !tbaa !29
  %t79 = getelementptr %"compiler/session:Analysis", ptr %t77, i32 0, i32 2
  %t80 = load ptr, ptr %t79, !tbaa !29
  store ptr %t80, ptr %l44, !tbaa !29
  %t81 = load ptr, ptr %l4, !tbaa !29
  %t83 = getelementptr %"compiler/session:Analysis", ptr %t81, i32 0, i32 3
  %t84 = load ptr, ptr %t83, !tbaa !29
  %t86 = icmp eq ptr %t84, null
  br i1 %t86, label %bb24, label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_c4a0fad4d32f1d23_28eb6d814d877c07)
  unreachable
bb25:
  br label %bb26
bb26:
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = getelementptr %"compiler/session:Analysis", ptr %t88, i32 0, i32 3
  %t91 = load ptr, ptr %t90, !tbaa !29
  %t92 = load ptr, ptr %l4, !tbaa !29
  %t94 = getelementptr %"compiler/session:Analysis", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 12
  %t98 = load i64, ptr %t97, !tbaa !24
  %t99 = load ptr, ptr %l39, !tbaa !29
  %t100 = load ptr, ptr %l44, !tbaa !29
  %t103 = call %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v2, ptr %v2, ptr %v2, ptr %s0, ptr %t99, ptr %t100, ptr %t91, i64 %t98, i1 false)
  store %"compiler/doc:Module" %t103, ptr %l53
  br label %bb27
bb27:
  %t104 = load %"compiler/doc:Module", ptr %l53
  store %"compiler/doc:Module" %t104, ptr %l5
  %t105 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t105, ptr %l54
  br label %bb28
bb28:
  %t106 = load %"std/prelude/text:StringBuilder", ptr %l54
  store %"std/prelude/text:StringBuilder" %t106, ptr %l6
  %t107 = getelementptr %"compiler/doc:Module", ptr %l5, i32 0, i32 3
  store ptr %t107, ptr %l7, !tbaa !29
  store i64 0, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  store %olang.scope zeroinitializer, ptr %s3
  %t109 = load i64, ptr %l8, !tbaa !24
  store i64 %t109, ptr %l56, !tbaa !24
  %t110 = load ptr, ptr %l7, !tbaa !29
  %t112 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e_2eLen_3ccompiler_2fdoc_3aEntry_3e(ptr %s0, ptr %t110)
  store i64 %t112, ptr %l58
  br label %bb30
bb30:
  %t113 = load i64, ptr %l56, !tbaa !24
  %t114 = load i64, ptr %l58, !tbaa !24
  %t115 = icmp slt i64 %t113, %t114
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb32:
  br label %bb33
bb33:
  %t119 = load ptr, ptr %l7, !tbaa !29
  %t120 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e_2eAt_3ccompiler_2fdoc_3aEntry_3e(ptr %t121, ptr %s0, ptr %s0, ptr %t119, i64 %t120)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t121, i64 152, i1 false)
  br label %bb34
bb34:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aEntry(ptr %t124, ptr %s0, ptr %l63)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t124, i64 152, i1 false)
  br label %bb35
bb35:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l65, i64 152, i1 false)
  call void @compiler_2fapi_2eitemSigs(ptr %s0, ptr %s3, ptr %l6, ptr %l9)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s3)
  br label %bb37
bb37:
  %t128 = load i64, ptr %l8, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l8, !tbaa !24
  br label %bb29
bb38:
  store { i64, ptr } %a1, ptr %l70, !tbaa !27
  %t134 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t134, ptr %l72
  br label %bb39
bb39:
  %t135 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t137 = extractvalue { i64, ptr } %t135, 0
  %t138 = extractvalue { i64, ptr } %t135, 1
  %t139 = mul i64 %t137, 1
  %t140 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t139)
  call void @llvm.memcpy.p0.p0.i64(ptr %t140, ptr %t138, i64 %t139, i1 false)
  %t141 = insertvalue { i64, ptr } undef, i64 %t137, 0
  %t142 = insertvalue { i64, ptr } %t141, ptr %t140, 1
  %t143 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t145 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s0, { i64, ptr } %t143, { i64, ptr } %t142)
  store i32 %t145, ptr %l75
  %t146 = icmp ne i32 %t145, 0
  br i1 %t146, label %bb41, label %ok.147, !prof !99
ok.147:
  br label %bb40
bb40:
  br label %bb45
bb41:
  %t148 = load i32, ptr %l75, !tbaa !23
  %t149 = ashr i32 %t148, 16
  %t151 = icmp eq i32 %t149, 1
  store i1 %t151, ptr %l77, !tbaa !21
  %t152 = load i32, ptr %l75, !tbaa !23
  %t153 = ashr i32 %t152, 16
  %t155 = icmp eq i32 %t153, 1
  br i1 %t155, label %bb42, label %bb43
bb42:
  call void @__olang_errpay_pop()
  br label %bb43
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb45:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/api:change" @compiler_2fapi_3achange_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, i1 %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/api:change"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/api:change" undef, i1 %a0, 0
  %t12 = insertvalue %"compiler/api:change" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/api:change" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/api:change" %t14, { i64, ptr } %a3, 3
  %t18 = insertvalue %"compiler/api:change" %t16, i1 false, 4
  store %"compiler/api:change" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/api:change", ptr %rv
  ret %"compiler/api:change" %rr
}

define dso_local %"compiler/api:sig" @compiler_2fapi_3asig_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3) #0 {
entry:
  %rv = alloca %"compiler/api:sig"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/api:sig" undef, { i64, ptr } %a0, 0
  %t12 = insertvalue %"compiler/api:sig" %t10, { i64, ptr } %a1, 1
  %t14 = insertvalue %"compiler/api:sig" %t12, { i64, ptr } %a2, 2
  %t16 = insertvalue %"compiler/api:sig" %t14, i1 %a3, 3
  store %"compiler/api:sig" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/api:sig", ptr %rv
  ret %"compiler/api:sig" %rr
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"olang-api-" }>, align 8
declare void @__olang_errpay_pop()
@.d2 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c"olang: a scratch directory cannot be made\0A" }>, align 8
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
@.d3 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"old" }>, align 8
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
@.d4 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"new" }>, align 8
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
@.d5 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"old.sigs" }>, align 8
@.d6 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"new.sigs" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"s" }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d10 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c" breaking change" }>, align 8
@.d11 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"word" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@olang_2esole_2ecompiler_2fapi_3achange_2e1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d15 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"narrower error set of " }>, align 8
@.d16 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"wider error set of " }>, align 8
@.d17 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"global" }>, align 8
@.d18 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"value of global" }>, align 8
@.d19 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"changed " }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H6de7542eecbb29e51c9aaeba51635081(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fapi_3asig_3e_2ector(ptr %v0)
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

@.d21 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"added " }>, align 8
@.d22 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
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

@.d23 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"removed " }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"deprecated" }>, align 8
@.d27 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
define internal i32 @olang_lambda_28(ptr %env) #0 {
entry:
  %l6 = alloca i32
  %rv = alloca i32
  %cp0 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load { i64, ptr }, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load { i64, ptr }, ptr %cp1, !tbaa !28
  %cp2 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 2
  %cv2 = load ptr, ptr %cp2, !tbaa !28
  %vq0 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 3
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  %vq1 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 4
  %vr1 = load ptr, ptr %vq1, !tbaa !28
  %vc1 = call ptr @__olang_capture_scope(ptr %vr1)
  %vq2 = getelementptr { { i64, ptr }, { i64, ptr }, ptr, ptr, ptr, ptr }, ptr %env, i32 0, i32 5
  %vr2 = load ptr, ptr %vq2, !tbaa !28
  %vc2 = call ptr @__olang_capture_scope(ptr %vr2)
  br label %start
start:
  br label %bb0
bb0:
  %t7 = call i32 @compiler_2fapi_2ewriteSigs(ptr %vc0, ptr %vc1, ptr %vc2, { i64, ptr } %cv0, { i64, ptr } %cv1, ptr %cv2)
  store i32 %t7, ptr %l6
  br label %bb1
bb1:
  %t8 = load i32, ptr %l6, !tbaa !23
  store i32 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

@.d29 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d30 = private constant <{ i64, [47 x i8] }> <{ i64 0, [47 x i8] c" does not check - api compares modules that do\0A" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@olang_2esole_2ecompiler_2fapi_3asig_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fapi_3asig_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fapi_3asig_2e2 = weak hidden constant i1 false
@.d32 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"deprecated" }>, align 8
@.d33 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d37 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"extern fn " }>, align 8
@.d38 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d39 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"error " }>, align 8
@.d40 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d41 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"type " }>, align 8
@.d42 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"global" }>, align 8
@.d43 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d44 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d45 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"trait" }>, align 8
@.d46 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"struct" }>, align 8
@.d47 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"extends" }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d49 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"type" }>, align 8
@.d50 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aEntry(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/doc:Entry"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 152, i1 false)
  %t2 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 5
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 7
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/doc:Entry", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"meets " }>, align 8
@.d53 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d54 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"\09meets\09" }>, align 8
@.d55 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"\09\0A" }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\09" }>, align 8
@.d58 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare void @__olang_check_failed(ptr) cold noreturn
@.d59 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"fn " }>, align 8
@.d60 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"fn" }>, align 8
@.d61 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"enum" }>, align 8
@.d62 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"case" }>, align 8
@.d63 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"error" }>, align 8
@.d64 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"word" }>, align 8
@.d65 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"trait" }>, align 8
@.d66 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d67 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"field" }>, align 8
@.d68 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"breaking" }>, align 8
@.d69 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"deprecated" }>, align 8
@.d70 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"ok      " }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d73 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d74 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d75 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d76 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d77 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d78 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d79 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d80 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d82 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"  " }>, align 8
@.d83 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d84 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"\0A              now: " }>, align 8
@.d85 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_2c_205_3e_2e_2d1 = weak hidden constant i1 false
@.d86 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"^{commit}" }>, align 8
@.d87 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d88 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"rev-parse" }>, align 8
@.d89 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"--verify" }>, align 8
@.d90 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"--quiet" }>, align 8
@.d91 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d92 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d93 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"rev-parse" }>, align 8
@.d94 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"--show-toplevel" }>, align 8
@.d95 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d96 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"rev-parse" }>, align 8
@.d97 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"--show-prefix" }>, align 8
@.d98 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".tar" }>, align 8
@.d99 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"git" }>, align 8
@.d100 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d101 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"archive" }>, align 8
@.d102 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"--format=tar" }>, align 8
@.d103 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-o" }>, align 8
@.d104 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"tar" }>, align 8
@.d105 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-xf" }>, align 8
@.d106 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"-C" }>, align 8
@.d107 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@.d108 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"   #" }>, align 8
@.d109 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d110 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d111 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"testdata" }>, align 8
define internal i1 @olang_lambda_112(ptr %env, ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l4 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i32 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eCompare(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
  store i32 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i32, ptr %l4, !tbaa !23
  %t7 = icmp slt i32 %t6, 0
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

@.d113 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c" = " }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2c_20std_Hae258982e94f82c7c4916579e261fcef = weak hidden constant i1 false
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, { i64, ptr } %t4)
  store { i64, ptr } %t6, ptr %l3
  br label %bb1
bb1:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t7, ptr %t8, !tbaa !27
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aExample_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 32
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 32
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
define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/doc:Entry"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/doc:Entry", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 152
  %t5 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t4)
  %t6 = insertvalue { i64, ptr } undef, i64 %t3, 0
  %t7 = insertvalue { i64, ptr } %t6, ptr %t5, 1
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp slt i64 %t8, %t9
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l0, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"compiler/doc:Entry", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fdoc_3aEntry(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 152, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/doc:Entry", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 152, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

declare ptr @__olang_scope_mine_slow(ptr) noinline
declare i1 @compiler_2fdiag_2eColorWanted()
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2ffilepath_2eJoin(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiNoFiles(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2eLen_3ccompiler_2fapi_3achange_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/api:change" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2eAt_3ccompiler_2fapi_3achange_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ector(ptr %v0, i64 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eLen_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %a0)
declare %"compiler/api:sig" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2eAt_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Hae803d8bca68916aa9f075d6624b0839(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, %"compiler/api:sig" %a2)
declare { i32, %"compiler/api:sig" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H1e871a75bae078877fd6428e2f181625(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3achange_3e_2ePush_3ccompiler_2fapi_3achange_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/api:change" %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H2b85ceff512af6e6ca26c554a1c16247(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i1 %a2)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fdoc_2eDeprecation(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2ector(ptr %v0, i64 %a0)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fsession_2eInChild(ptr %v0, ptr %a0c, ptr %a0e)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"std/prelude/text:LineIter" @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eLines(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eSplit(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fapi_3asig_3e_2ePush_3ccompiler_2fapi_3asig_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/api:sig" %a1)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrimEnd(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aChar_3e_2eContains_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e_2eLen_3ccompiler_2fdoc_3aEntry_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdoc_3aEntry_3e_2eAt_3ccompiler_2fdoc_3aEntry_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_260304cabd5cd416_913b5f9104b1a62 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_604929f766c85c73_85c34c9ae6f351df = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H835e186358a312b102cd15b4faa0b451(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_2367fe2aaee9c783_ead5253a58acfdcf = external constant [0 x i8]
declare { i64, ptr } @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fio_2ePrint(ptr %v0, { i64, ptr } %a0)
declare i1 @std_2fos_2eIsDir(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eApiNoSide(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fdoc_2ePastAttrs(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_87c5320dd61ccdf_e8122b69ccf346f3 = external constant [0 x i8]
@olang_loc_8bccbc7f06b99562_adcc063d2387be96 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEndsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadDir(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_7ad8a062239855c4_5d778575ea84a368 = external constant [0 x i8]
@olang_loc_d41a7e60632d887_5501c681380c557b = external constant [0 x i8]
@olang_loc_a3e1d230fee7d732_44f12f5b03cf85de = external constant [0 x i8]
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H1642129570dad448bb7dcc47c334de83(ptr %v0, ptr %v1, ptr %a0, ptr %a1c, ptr %a1e)
@olang_loc_9951d8874535c65a_5b7a0ddb735ab90e = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, i1 %a4)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
@olang_loc_c4a0fad4d32f1d23_28eb6d814d877c07 = external constant [0 x i8]
declare %"compiler/doc:Module" @compiler_2fdoc_2eModule_2eOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, i64 %a3, i1 %a4)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20compiler_2fapi_3asig_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare i32 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eCompare(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)

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
