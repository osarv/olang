source_filename = "compiler_olang.inst.quick.ll"
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
%"compiler/build:Program" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/build:Config" = type { { i64, ptr }, { i64, ptr }, %"compiler/target:Target", %"compiler/cond:Consts", i1, i1, i1, i1, i1, i1, { i64, ptr }, i64, i1, i1, i1, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, { i64, ptr }, { i64, ptr }, i64, i64, i1, { i64, ptr }, { i64, ptr } }
%"compiler/target:Target" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1 }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/os:FileInfo" = type { i32, i64, i64 }
%"compiler/build:Listed" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/os:Output" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/listing:Inputs" = type { ptr, ptr, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/olang:CommandLine" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, { i64, ptr } }
%"compiler/profile:Profile" = type { i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr } }
%"compiler/profile:Places" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" = type { i64, %"compiler/eval:Image" }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" = type { { i64, ptr }, { i64, ptr } }
%"compiler/build:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/emit:Reused" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/explain:Code" = type { { i64, ptr }, { i64, ptr }, i64, { i64, ptr } }
%"compiler/views:Cand" = type { i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i32 @compiler_2fbuild_2eBuildProgram_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca %"compiler/build:Program"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/build:Program"
  %l14 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l21 = alloca i64
  %l23 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i32
  %l31 = alloca i32
  %l33 = alloca i1
  %l35 = alloca i32
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca i32
  %l43 = alloca i1
  %l45 = alloca i32
  %l53 = alloca i32
  %l56 = alloca i1
  %l58 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l65 = alloca { i64, ptr }
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca ptr
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l75 = alloca i1
  %l78 = alloca i32
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca { i64, [3 x i64] }
  %l84 = alloca %"compiler/diagmsg:Msg"
  %l86 = alloca i32
  %l94 = alloca ptr
  %l97 = alloca i1
  %l99 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i32
  %t1 = alloca %"compiler/build:Program", align 8
  %t176 = alloca { i64, [3 x i64] }, align 8
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fbuild_3aProgram_2ector(ptr %t1, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %t1, i64 224, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l7, i64 224, i1 false)
  %t3 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t12 = call i32 @compiler_2folang_2ecompiler_2folang_3aPasses_2eAnalyze(ptr %v0, ptr %v2, ptr %v1, ptr %s0, ptr %v3, ptr %a0, { i64, ptr } %t3, i32 1, ptr %t4, ptr %l4, ptr %t5)
  store i32 %t12, ptr %l14
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb3, label %ok.14, !prof !99
ok.14:
  br label %bb2
bb2:
  br label %bb12
bb3:
  %t15 = load i32, ptr %l14, !tbaa !23
  %t16 = icmp eq i32 %t15, 65536
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  %t18 = load i32, ptr %l14, !tbaa !23
  %t19 = icmp eq i32 %t18, 65537
  br i1 %t19, label %bb7, label %bb8
bb6:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t21)
  store i32 %t23, ptr %l18
  br label %bb10
bb7:
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_4cd8465f442ebc46_73c7e9f900a2458a)
  unreachable
bb9:
  %t24 = call i32 @compiler_2fbuild_2eunbuilt()
  store i32 %t24, ptr %l19
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load i32, ptr %l18, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i32, ptr %l19, !tbaa !23
  store i32 %t26, ptr %rv
  br label %ret
bb12:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v3, ptr %t27)
  store i64 %t29, ptr %l21
  br label %bb13
bb13:
  %t30 = load i64, ptr %l21, !tbaa !24
  %t31 = icmp sgt i64 %t30, 0
  br i1 %t31, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb17
bb15:
  %t33 = getelementptr %"compiler/build:Program", ptr %l4, i32 0, i32 0
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t33)
  store i64 %t35, ptr %l25
  br label %bb16
bb16:
  %t36 = load i64, ptr %l25, !tbaa !24
  %t37 = icmp eq i64 %t36, 0
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb17
bb17:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb18, label %bb19
bb18:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t40)
  store i32 %t42, ptr %l28
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load i32, ptr %l28, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
bb21:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v1, ptr %v3, ptr %t44, ptr %t45)
  store i32 %t48, ptr %l31
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb23, label %ok.50, !prof !99
ok.50:
  br label %bb22
bb22:
  br label %bb26
bb23:
  %t51 = load i32, ptr %l31, !tbaa !23
  %t52 = ashr i32 %t51, 16
  %t54 = icmp eq i32 %t52, 1
  store i1 %t54, ptr %l33, !tbaa !21
  br label %bb24
bb24:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t55)
  store i32 %t57, ptr %l35
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load i32, ptr %l35, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
bb26:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t64 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v1, ptr %s0, ptr %v3, ptr %s0, ptr %t59, ptr %l4, ptr %t60)
  %t65 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t64, 1
  %t66 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t64, 0
  store i32 %t66, ptr %l41
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb28, label %ok.68, !prof !99
ok.68:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l40
  br label %bb27
bb27:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l36
  br label %bb31
bb28:
  %t70 = load i32, ptr %l41, !tbaa !23
  %t71 = ashr i32 %t70, 16
  %t73 = icmp eq i32 %t71, 1
  store i1 %t73, ptr %l43, !tbaa !21
  br label %bb29
bb29:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t74)
  store i32 %t76, ptr %l45
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t77 = load i32, ptr %l45, !tbaa !23
  store i32 %t77, ptr %rv
  br label %ret
bb31:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l5
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) })
  br label %bb32
bb32:
  %t79 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/build:Config", ptr %t79, i32 0, i32 9
  %t82 = load i1, ptr %t81, !tbaa !21
  br i1 %t82, label %bb33, label %bb34
bb33:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t85 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t86 = load ptr, ptr %l3, !tbaa !29
  %t92 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elibrary(ptr %v1, ptr %s0, ptr %s0, ptr %v2, ptr %v3, ptr %t84, ptr %l4, ptr %l5, { i64, ptr } %t85, ptr %t86)
  store i32 %t92, ptr %l53
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  %t93 = load i32, ptr %l53, !tbaa !23
  store i32 %t93, ptr %rv
  br label %ret
bb36:
  %t94 = load ptr, ptr %l1, !tbaa !29
  %t96 = getelementptr %"compiler/build:Config", ptr %t94, i32 0, i32 23
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t97, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t99, ptr %l56
  br label %bb37
bb37:
  %t100 = load i1, ptr %l56, !tbaa !21
  %t101 = xor i1 %t100, true
  br i1 %t101, label %bb38, label %bb39
bb38:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr %"compiler/build:Config", ptr %t103, i32 0, i32 23
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t106, 1
  %t109 = extractvalue { i64, ptr } %t106, 0
  %t110 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t109)
  call void @olang_textcopy(ptr %t110, ptr %t108, i64 %t109)
  %t111 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t112 = insertvalue { i64, ptr } %t111, ptr %t110, 1
  store { i64, ptr } %t112, ptr %l58, !tbaa !27
  br label %bb43
bb39:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t116 = getelementptr %"compiler/build:Config", ptr %t114, i32 0, i32 0
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %l63, !tbaa !27
  %t119 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aProgram_2erootIdentity(ptr %s0, ptr %s0, ptr %l4)
  store { i64, ptr } %t119, ptr %l65
  br label %bb40
bb40:
  %t120 = load { i64, ptr }, ptr %l65, !tbaa !27
  %t121 = extractvalue { i64, ptr } %t120, 0
  %t122 = extractvalue { i64, ptr } %t120, 1
  %t123 = mul i64 %t121, 1
  %t124 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t123)
  call void @llvm.memcpy.p0.p0.i64(ptr %t124, ptr %t122, i64 %t123, i1 false)
  %t125 = insertvalue { i64, ptr } undef, i64 %t121, 0
  %t126 = insertvalue { i64, ptr } %t125, ptr %t124, 1
  %t128 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %s0, ptr %s0, { i64, ptr } %t126)
  store { i64, ptr } %t128, ptr %l67
  br label %bb41
bb41:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t131 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v1, ptr %s0, ptr %t129)
  store { i64, ptr } %t131, ptr %l69
  br label %bb42
bb42:
  %t132 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t132, 1
  %t134 = extractvalue { i64, ptr } %t132, 0
  %t135 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t136 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t137 = add i64 %t134, %t136
  %t138 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t138, 1
  %t140 = extractvalue { i64, ptr } %t138, 0
  %t141 = add i64 %t137, %t140
  %t142 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t143 = extractvalue { i64, ptr } %t142, 1
  %t144 = extractvalue { i64, ptr } %t142, 0
  %t145 = add i64 %t141, %t144
  %t146 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t145)
  call void @olang_textcopy(ptr %t146, ptr %t133, i64 %t134)
  %t147 = getelementptr i8, ptr %t146, i64 %t134
  call void @olang_textcopy(ptr %t147, ptr %t135, i64 %t136)
  %t148 = getelementptr i8, ptr %t147, i64 %t136
  call void @olang_textcopy(ptr %t148, ptr %t139, i64 %t140)
  %t149 = getelementptr i8, ptr %t148, i64 %t140
  call void @olang_textcopy(ptr %t149, ptr %t143, i64 %t144)
  %t150 = insertvalue { i64, ptr } undef, i64 %t145, 0
  %t151 = insertvalue { i64, ptr } %t150, ptr %t146, 1
  store { i64, ptr } %t151, ptr %l58, !tbaa !27
  br label %bb43
bb43:
  %t153 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t153, ptr %l6, !tbaa !27
  %t154 = load ptr, ptr %l1, !tbaa !29
  store ptr %t154, ptr %l71, !tbaa !29
  store ptr %l5, ptr %l72, !tbaa !29
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t155, ptr %l73, !tbaa !27
  %t156 = getelementptr %"compiler/build:Program", ptr %l4, i32 0, i32 2
  %t157 = load { i64, ptr }, ptr %t156, !tbaa !27
  %t159 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t157, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t159, ptr %l75
  br label %bb44
bb44:
  %t160 = load i1, ptr %l75, !tbaa !21
  %t161 = xor i1 %t160, true
  %t162 = getelementptr %"compiler/build:Program", ptr %l4, i32 0, i32 3
  %t163 = load ptr, ptr %l71, !tbaa !29
  %t164 = load ptr, ptr %l72, !tbaa !29
  %t165 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t168 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t163, ptr %t164, { i64, ptr } %t165, i1 %t161, ptr %t162, ptr null)
  store i32 %t168, ptr %l78
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb46, label %ok.170, !prof !99
ok.170:
  br label %bb45
bb45:
  br label %bb51
bb46:
  %t171 = load i32, ptr %l78, !tbaa !23
  %t172 = ashr i32 %t171, 16
  %t174 = icmp eq i32 %t172, 1
  store i1 %t174, ptr %l80, !tbaa !21
  br label %bb47
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t175 = load ptr, ptr %l3, !tbaa !29
  store ptr %t175, ptr %l81, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [3 x i64] }, ptr %t176, i32 0, i32 0
  store i64 0, ptr %t177
  %t178 = load { i64, [3 x i64] }, ptr %t176
  store { i64, [3 x i64] } %t178, ptr %l82
  %t179 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t181 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %s0, ptr %s9, { i64, ptr } %t179)
  store %"compiler/diagmsg:Msg" %t181, ptr %l84
  br label %bb48
bb48:
  %t182 = load ptr, ptr %l81, !tbaa !29
  %t183 = load { i64, [3 x i64] }, ptr %l82
  %t184 = load %"compiler/diagmsg:Msg", ptr %l84
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v3, ptr %s9, ptr %t182, { i64, [3 x i64] } %t183, %"compiler/diagmsg:Msg" %t184)
  br label %bb49
bb49:
  %t185 = load ptr, ptr %l3, !tbaa !29
  %t187 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t185)
  store i32 %t187, ptr %l86
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t188 = load i32, ptr %l86, !tbaa !23
  store i32 %t188, ptr %rv
  br label %ret
bb51:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) })
  br label %bb52
bb52:
  %t189 = load ptr, ptr %l1, !tbaa !29
  %t190 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t190, 1
  %t193 = extractvalue { i64, ptr } %t190, 0
  %t194 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t193)
  call void @olang_textcopy(ptr %t194, ptr %t192, i64 %t193)
  %t195 = insertvalue { i64, ptr } undef, i64 %t193, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  %t198 = extractvalue { i64, ptr } %t196, 0
  %t199 = extractvalue { i64, ptr } %t196, 1
  %t200 = mul i64 %t198, 1
  %t201 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t200)
  call void @llvm.memcpy.p0.p0.i64(ptr %t201, ptr %t199, i64 %t200, i1 false)
  %t202 = insertvalue { i64, ptr } undef, i64 %t198, 0
  %t203 = insertvalue { i64, ptr } %t202, ptr %t201, 1
  %t206 = getelementptr %"compiler/build:Config", ptr %t189, i32 0, i32 24
  store { i64, ptr } %t203, ptr %t206, !tbaa !27
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr %"compiler/build:Config", ptr %t207, i32 0, i32 22
  %t210 = load i1, ptr %t209, !tbaa !21
  %t212 = xor i1 %t210, true
  br i1 %t212, label %bb53, label %bb54
bb53:
  store %olang.scope zeroinitializer, ptr %s11
  %t214 = load ptr, ptr %l1, !tbaa !29
  store ptr %t214, ptr %l94, !tbaa !29
  %t215 = load ptr, ptr %l1, !tbaa !29
  %t217 = getelementptr %"compiler/build:Config", ptr %t215, i32 0, i32 23
  %t218 = load { i64, ptr }, ptr %t217, !tbaa !27
  %t220 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s11, { i64, ptr } %t218, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t220, ptr %l97
  br label %bb55
bb54:
  br label %bb62
bb55:
  %t221 = load i1, ptr %l97, !tbaa !21
  %t222 = xor i1 %t221, true
  br i1 %t222, label %bb56, label %bb57
bb56:
  %t224 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t224, ptr %l99, !tbaa !27
  br label %bb59
bb57:
  %t226 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t228 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %s0, ptr %s11, { i64, ptr } %t226)
  store { i64, ptr } %t228, ptr %l102
  br label %bb58
bb58:
  %t229 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t229, ptr %l99, !tbaa !27
  br label %bb59
bb59:
  %t230 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t232 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = extractvalue { i64, ptr } %t232, 0
  %t235 = add i64 %t231, %t234
  %t236 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t235)
  call void @olang_textcopy(ptr %t236, ptr %t230, i64 %t231)
  %t237 = getelementptr i8, ptr %t236, i64 %t231
  call void @olang_textcopy(ptr %t237, ptr %t233, i64 %t234)
  %t238 = insertvalue { i64, ptr } undef, i64 %t235, 0
  %t239 = insertvalue { i64, ptr } %t238, ptr %t236, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = extractvalue { i64, ptr } %t239, 1
  %t243 = mul i64 %t241, 1
  %t244 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t243)
  call void @llvm.memcpy.p0.p0.i64(ptr %t244, ptr %t242, i64 %t243, i1 false)
  %t245 = insertvalue { i64, ptr } undef, i64 %t241, 0
  %t246 = insertvalue { i64, ptr } %t245, ptr %t244, 1
  %t247 = load ptr, ptr %l94, !tbaa !29
  %t249 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v1, ptr %s11, ptr %s11, ptr %s11, ptr %t247, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d7, i32 0, i32 1) }, { i64, ptr } %t246)
  store { i64, ptr } %t249, ptr %l105
  br label %bb60
bb60:
  %t250 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t251 = extractvalue { i64, ptr } %t250, 0
  %t252 = extractvalue { i64, ptr } %t250, 1
  %t253 = mul i64 %t251, 1
  %t254 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t253)
  call void @llvm.memcpy.p0.p0.i64(ptr %t254, ptr %t252, i64 %t253, i1 false)
  %t255 = insertvalue { i64, ptr } undef, i64 %t251, 0
  %t256 = insertvalue { i64, ptr } %t255, ptr %t254, 1
  call void @compiler_2fbuild_2esayln(ptr %s11, { i64, ptr } %t256)
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s11)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2eCompile_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca %"compiler/build:Program"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca { i64, ptr }
  %l8 = alloca %"compiler/build:Program"
  %l15 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l22 = alloca i64
  %l24 = alloca i1
  %l26 = alloca i64
  %l29 = alloca i32
  %l32 = alloca i32
  %l34 = alloca i1
  %l36 = alloca i32
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca i32
  %l44 = alloca i1
  %l46 = alloca i32
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l56 = alloca i32
  %l58 = alloca i1
  %l61 = alloca { i64, ptr }
  %l62 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i32
  %l70 = alloca i32
  %l72 = alloca i1
  %l76 = alloca { i64, ptr }
  %l77 = alloca %"compiler/diagmsg:Msg"
  %l80 = alloca i32
  %l92 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca i32
  %t1 = alloca %"compiler/build:Program", align 8
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fbuild_3aProgram_2ector(ptr %t1, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t1, i64 224, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l8, i64 224, i1 false)
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t5 = load ptr, ptr %l3, !tbaa !29
  %t12 = call i32 @compiler_2folang_2ecompiler_2folang_3aPasses_2eAnalyze(ptr %v0, ptr %v2, ptr %v1, ptr %s0, ptr %v3, ptr %a0, { i64, ptr } %a2, i32 0, ptr %t4, ptr %l4, ptr %t5)
  store i32 %t12, ptr %l15
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb3, label %ok.14, !prof !99
ok.14:
  br label %bb2
bb2:
  br label %bb12
bb3:
  %t15 = load i32, ptr %l15, !tbaa !23
  %t16 = icmp eq i32 %t15, 65536
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  %t18 = load i32, ptr %l15, !tbaa !23
  %t19 = icmp eq i32 %t18, 65537
  br i1 %t19, label %bb7, label %bb8
bb6:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t23 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t21)
  store i32 %t23, ptr %l19
  br label %bb10
bb7:
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_539f96ece49ac99_8ec4d6c22ed03845)
  unreachable
bb9:
  %t24 = call i32 @compiler_2fbuild_2eunbuilt()
  store i32 %t24, ptr %l20
  br label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t25 = load i32, ptr %l19, !tbaa !23
  store i32 %t25, ptr %rv
  br label %ret
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t26 = load i32, ptr %l20, !tbaa !23
  store i32 %t26, ptr %rv
  br label %ret
bb12:
  %t27 = load ptr, ptr %l3, !tbaa !29
  %t29 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v3, ptr %t27)
  store i64 %t29, ptr %l22
  br label %bb13
bb13:
  %t30 = load i64, ptr %l22, !tbaa !24
  %t31 = icmp sgt i64 %t30, 0
  br i1 %t31, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb17
bb15:
  %t33 = getelementptr %"compiler/build:Program", ptr %l4, i32 0, i32 0
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t33)
  store i64 %t35, ptr %l26
  br label %bb16
bb16:
  %t36 = load i64, ptr %l26, !tbaa !24
  %t37 = icmp eq i64 %t36, 0
  store i1 %t37, ptr %l24, !tbaa !21
  br label %bb17
bb17:
  %t39 = load i1, ptr %l24, !tbaa !21
  br i1 %t39, label %bb18, label %bb19
bb18:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t40)
  store i32 %t42, ptr %l29
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load i32, ptr %l29, !tbaa !23
  store i32 %t43, ptr %rv
  br label %ret
bb21:
  %t44 = load ptr, ptr %l1, !tbaa !29
  %t45 = load ptr, ptr %l3, !tbaa !29
  %t48 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v1, ptr %v3, ptr %t44, ptr %t45)
  store i32 %t48, ptr %l32
  %t49 = icmp ne i32 %t48, 0
  br i1 %t49, label %bb23, label %ok.50, !prof !99
ok.50:
  br label %bb22
bb22:
  br label %bb26
bb23:
  %t51 = load i32, ptr %l32, !tbaa !23
  %t52 = ashr i32 %t51, 16
  %t54 = icmp eq i32 %t52, 1
  store i1 %t54, ptr %l34, !tbaa !21
  br label %bb24
bb24:
  %t55 = load ptr, ptr %l3, !tbaa !29
  %t57 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t55)
  store i32 %t57, ptr %l36
  br label %bb25
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t58 = load i32, ptr %l36, !tbaa !23
  store i32 %t58, ptr %rv
  br label %ret
bb26:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t60 = load ptr, ptr %l3, !tbaa !29
  %t64 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v1, ptr %s0, ptr %v3, ptr %s0, ptr %t59, ptr %l4, ptr %t60)
  %t65 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t64, 1
  %t66 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t64, 0
  store i32 %t66, ptr %l42
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb28, label %ok.68, !prof !99
ok.68:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l41
  br label %bb27
bb27:
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, ptr %l37
  br label %bb31
bb28:
  %t70 = load i32, ptr %l42, !tbaa !23
  %t71 = ashr i32 %t70, 16
  %t73 = icmp eq i32 %t71, 1
  store i1 %t73, ptr %l44, !tbaa !21
  br label %bb29
bb29:
  %t74 = load ptr, ptr %l3, !tbaa !29
  %t76 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t74)
  store i32 %t76, ptr %l46
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  %t77 = load i32, ptr %l46, !tbaa !23
  store i32 %t77, ptr %rv
  br label %ret
bb31:
  %t78 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t78, ptr %l5
  %t80 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %l5, i64 0)
  store { i64, ptr } %t80, ptr %l48
  br label %bb32
bb32:
  %t81 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t81, ptr %l6, !tbaa !27
  %t82 = load ptr, ptr %l1, !tbaa !29
  %t84 = getelementptr %"compiler/build:Config", ptr %t82, i32 0, i32 23
  %t85 = load { i64, ptr }, ptr %t84, !tbaa !27
  %t87 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t85, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t87, ptr %l51
  br label %bb33
bb33:
  %t88 = load i1, ptr %l51, !tbaa !21
  %t89 = xor i1 %t88, true
  br i1 %t89, label %bb34, label %bb35
bb34:
  store %olang.scope zeroinitializer, ptr %s6
  %t91 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t93 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s6, { i64, ptr } %t91)
  %t94 = extractvalue { i32, { i64, ptr } } %t93, 1
  %t95 = extractvalue { i32, { i64, ptr } } %t93, 0
  store i32 %t95, ptr %l56
  %t96 = icmp ne i32 %t95, 0
  br i1 %t96, label %bb37, label %ok.97, !prof !99
ok.97:
  store { i64, ptr } %t94, ptr %l55
  br label %bb36
bb35:
  br label %bb54
bb36:
  %t98 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t98, ptr %l53, !tbaa !27
  br label %bb44
bb37:
  %t99 = load i32, ptr %l56, !tbaa !23
  %t100 = ashr i32 %t99, 16
  %t102 = icmp eq i32 %t100, 1
  store i1 %t102, ptr %l58, !tbaa !21
  %t103 = load i32, ptr %l56, !tbaa !23
  %t104 = ashr i32 %t103, 16
  %t106 = icmp eq i32 %t104, 1
  br i1 %t106, label %bb38, label %bb39
bb38:
  call void @__olang_errpay_pop()
  br label %bb39
bb39:
  br label %bb40
bb40:
  store %olang.scope zeroinitializer, ptr %s7
  %t108 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t108, ptr %l61, !tbaa !27
  %t109 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s7)
  store %"compiler/diagmsg:Msg" %t109, ptr %l62
  br label %bb41
bb41:
  %t110 = load ptr, ptr %l3, !tbaa !29
  %t111 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t112 = load %"compiler/diagmsg:Msg", ptr %l62
  call void @compiler_2fbuild_2efileFatal(ptr %s0, ptr %s7, ptr %v3, { i64, ptr } %t111, %"compiler/diagmsg:Msg" %t112, ptr %t110)
  br label %bb42
bb42:
  %t114 = load ptr, ptr %l3, !tbaa !29
  %t116 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t114)
  store i32 %t116, ptr %l65
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t117 = load i32, ptr %l65, !tbaa !23
  store i32 %t117, ptr %rv
  br label %ret
bb44:
  %t118 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t119 = load ptr, ptr %l1, !tbaa !29
  %t121 = getelementptr %"compiler/build:Config", ptr %t119, i32 0, i32 23
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  %t127 = call i32 @std_2fos_2eWriteFile(ptr %v1, ptr %s6, { i64, ptr } %t122, { i64, ptr } %t118)
  store i32 %t127, ptr %l70
  %t128 = icmp ne i32 %t127, 0
  br i1 %t128, label %bb46, label %ok.129, !prof !99
ok.129:
  br label %bb45
bb45:
  br label %bb53
bb46:
  %t130 = load i32, ptr %l70, !tbaa !23
  %t131 = ashr i32 %t130, 16
  %t133 = icmp eq i32 %t131, 1
  store i1 %t133, ptr %l72, !tbaa !21
  %t134 = load i32, ptr %l70, !tbaa !23
  %t135 = ashr i32 %t134, 16
  %t137 = icmp eq i32 %t135, 1
  br i1 %t137, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s8
  %t139 = load ptr, ptr %l1, !tbaa !29
  %t141 = getelementptr %"compiler/build:Config", ptr %t139, i32 0, i32 23
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l76, !tbaa !27
  %t143 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %s8)
  store %"compiler/diagmsg:Msg" %t143, ptr %l77
  br label %bb50
bb50:
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t145 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t146 = load %"compiler/diagmsg:Msg", ptr %l77
  call void @compiler_2fbuild_2efileFatal(ptr %v1, ptr %s8, ptr %v3, { i64, ptr } %t145, %"compiler/diagmsg:Msg" %t146, ptr %t144)
  br label %bb51
bb51:
  %t148 = load ptr, ptr %l3, !tbaa !29
  %t150 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t148)
  store i32 %t150, ptr %l80
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t151 = load i32, ptr %l80, !tbaa !23
  store i32 %t151, ptr %rv
  br label %ret
bb53:
  %t152 = load ptr, ptr %l1, !tbaa !29
  %t154 = getelementptr %"compiler/build:Config", ptr %t152, i32 0, i32 23
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = extractvalue { i64, ptr } %t155, 0
  %t159 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t158)
  call void @olang_textcopy(ptr %t159, ptr %t157, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 %t158, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t163 = extractvalue { i64, ptr } %t161, 0
  %t164 = extractvalue { i64, ptr } %t161, 1
  %t165 = mul i64 %t163, 1
  %t166 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t165)
  call void @llvm.memcpy.p0.p0.i64(ptr %t166, ptr %t164, i64 %t165, i1 false)
  %t167 = insertvalue { i64, ptr } undef, i64 %t163, 0
  %t168 = insertvalue { i64, ptr } %t167, ptr %t166, 1
  store { i64, ptr } %t168, ptr %l6, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb54:
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr %"compiler/build:Config", ptr %t170, i32 0, i32 22
  %t173 = load i1, ptr %t172, !tbaa !21
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t177 = load ptr, ptr %l1, !tbaa !29
  %t178 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t179 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t182 = extractvalue { i64, ptr } %t178, 1
  %t183 = extractvalue { i64, ptr } %t178, 0
  %t184 = add i64 %t180, %t183
  %t185 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t184)
  call void @olang_textcopy(ptr %t185, ptr %t179, i64 %t180)
  %t186 = getelementptr i8, ptr %t185, i64 %t180
  call void @olang_textcopy(ptr %t186, ptr %t182, i64 %t183)
  %t187 = insertvalue { i64, ptr } undef, i64 %t184, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t185, 1
  %t190 = extractvalue { i64, ptr } %t188, 0
  %t191 = extractvalue { i64, ptr } %t188, 1
  %t192 = mul i64 %t190, 1
  %t193 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t192)
  call void @llvm.memcpy.p0.p0.i64(ptr %t193, ptr %t191, i64 %t192, i1 false)
  %t194 = insertvalue { i64, ptr } undef, i64 %t190, 0
  %t195 = insertvalue { i64, ptr } %t194, ptr %t193, 1
  %t198 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v1, ptr %s10, ptr %s10, ptr %s10, ptr %t177, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) }, { i64, ptr } %t195)
  store { i64, ptr } %t198, ptr %l92
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t199 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t200 = extractvalue { i64, ptr } %t199, 0
  %t201 = extractvalue { i64, ptr } %t199, 1
  %t202 = mul i64 %t200, 1
  %t203 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t202)
  call void @llvm.memcpy.p0.p0.i64(ptr %t203, ptr %t201, i64 %t202, i1 false)
  %t204 = insertvalue { i64, ptr } undef, i64 %t200, 0
  %t205 = insertvalue { i64, ptr } %t204, ptr %t203, 1
  call void @compiler_2fbuild_2esayln(ptr %s10, { i64, ptr } %t205)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s10)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2eExplain_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t11 = call { i32, { i64, ptr } } @compiler_2folang_2ecompiler_2folang_3aPasses_2eExplain(ptr %v0, ptr %v2, ptr %v3, ptr %v1, ptr %v4, ptr %s0, ptr %a0, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a1, ptr %t5)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l13
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb2, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l12
  br label %bb1
bb1:
  %t16 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t16, ptr %l6, !tbaa !27
  br label %bb11
bb2:
  %t17 = load i32, ptr %l13, !tbaa !23
  %t18 = icmp eq i32 %t17, 65536
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  %t20 = load i32, ptr %l13, !tbaa !23
  %t21 = icmp eq i32 %t20, 65537
  br i1 %t21, label %bb6, label %bb7
bb5:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t23)
  store i32 %t25, ptr %l17
  br label %bb9
bb6:
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_251e830707558b33_b2bdace7e2a71047)
  unreachable
bb8:
  %t26 = call i32 @compiler_2fbuild_2eunbuilt()
  store i32 %t26, ptr %l18
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i32, ptr %l17, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t28 = load i32, ptr %l18, !tbaa !23
  store i32 %t28, ptr %rv
  br label %ret
bb11:
  %t29 = load { i64, ptr }, ptr %l6, !tbaa !27
  call void @compiler_2fbuild_2esay(ptr %s0, { i64, ptr } %t29)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2eInterpretTests_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/os:FileInfo"
  %l6 = alloca i32
  %l7 = alloca %"std/os:FileInfo"
  %l9 = alloca %"std/os:FileInfo"
  %l10 = alloca i32
  %l12 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"compiler/diagmsg:Msg"
  %l19 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i32
  %l30 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l32 = alloca %"compiler/diagmsg:Msg"
  %l34 = alloca i32
  %l35 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i32
  %l52 = alloca i1
  %l60 = alloca { i64, ptr }
  %l65 = alloca i32
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v2, { i64, ptr } %t1)
  %t4 = extractvalue { i32, %"std/os:FileInfo" } %t3, 1
  %t5 = extractvalue { i32, %"std/os:FileInfo" } %t3, 0
  store i32 %t5, ptr %l10
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/os:FileInfo" %t4, ptr %l9
  br label %bb1
bb1:
  %t8 = load %"std/os:FileInfo", ptr %l9
  store %"std/os:FileInfo" %t8, ptr %l7
  br label %bb8
bb2:
  %t9 = load i32, ptr %l10, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l12, !tbaa !21
  %t13 = load i32, ptr %l10, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l1, !tbaa !29
  store ptr %t18, ptr %l15, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l16, !tbaa !27
  %t20 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s1)
  store %"compiler/diagmsg:Msg" %t20, ptr %l17
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l15, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t24 = load %"compiler/diagmsg:Msg", ptr %l17
  %t26 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v1, ptr %v2, ptr %s1, ptr %v3, ptr %t22, { i64, ptr } %t23, %"compiler/diagmsg:Msg" %t24, ptr %t21)
  store i32 %t26, ptr %l19
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t27 = load i32, ptr %l19, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
bb8:
  %t28 = load %"std/os:FileInfo", ptr %l7
  store %"std/os:FileInfo" %t28, ptr %l5
  %t29 = getelementptr %"std/os:FileInfo", ptr %l5, i32 0, i32 0
  %t30 = load i32, ptr %t29, !range !{i32 0, i32 3}
  %t32 = trunc i64 1 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l23, !tbaa !27
  %t37 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %s2)
  store %"compiler/diagmsg:Msg" %t37, ptr %l24
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t39 = load ptr, ptr %l22, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t41 = load %"compiler/diagmsg:Msg", ptr %l24
  %t43 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v1, ptr %v2, ptr %s2, ptr %v3, ptr %t39, { i64, ptr } %t40, %"compiler/diagmsg:Msg" %t41, ptr %t38)
  store i32 %t43, ptr %l26
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  %t44 = load i32, ptr %l26, !tbaa !23
  store i32 %t44, ptr %rv
  br label %ret
bb13:
  %t45 = getelementptr %"std/os:FileInfo", ptr %l5, i32 0, i32 0
  %t46 = load i32, ptr %t45, !range !{i32 0, i32 3}
  %t48 = trunc i64 0 to i32
  %t49 = icmp eq i32 %t46, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l30, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t54, ptr %l31, !tbaa !27
  %t55 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotRegular(ptr %s3)
  store %"compiler/diagmsg:Msg" %t55, ptr %l32
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t57 = load ptr, ptr %l30, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t59 = load %"compiler/diagmsg:Msg", ptr %l32
  %t61 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v1, ptr %v2, ptr %s3, ptr %v3, ptr %t57, { i64, ptr } %t58, %"compiler/diagmsg:Msg" %t59, ptr %t56)
  store i32 %t61, ptr %l34
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  %t62 = load i32, ptr %l34, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
bb18:
  %t64 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t65 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t73 = call { i32, i32 } @compiler_2folang_2ecompiler_2folang_3aPasses_2eInterpret(ptr %v0, ptr %v2, ptr %v4, ptr %v1, ptr %v3, ptr %a0, { i64, ptr } %t64, { i64, ptr } %t65, ptr %t66, ptr %t67)
  %t74 = extractvalue { i32, i32 } %t73, 1
  %t75 = extractvalue { i32, i32 } %t73, 0
  store i32 %t75, ptr %l42
  %t76 = icmp ne i32 %t75, 0
  br i1 %t76, label %bb20, label %ok.77, !prof !99
ok.77:
  store i32 %t74, ptr %l41
  br label %bb19
bb19:
  %t78 = load i32, ptr %l41, !tbaa !23
  store i32 %t78, ptr %l35, !tbaa !23
  br label %bb29
bb20:
  %t79 = load i32, ptr %l42, !tbaa !23
  %t80 = icmp eq i32 %t79, 65536
  br i1 %t80, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  %t82 = load i32, ptr %l42, !tbaa !23
  %t83 = icmp eq i32 %t82, 65537
  br i1 %t83, label %bb24, label %bb25
bb23:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t86 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t87 = load ptr, ptr %l3, !tbaa !29
  %t91 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eskipped(ptr %v1, ptr %v2, ptr %v3, ptr %t85, { i64, ptr } %t86, ptr %t87)
  store i32 %t91, ptr %l48
  br label %bb27
bb24:
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_ac43697cc5f2dca0_4dfd3d6081b857d4)
  unreachable
bb26:
  %t92 = call i32 @compiler_2fbuild_2eunbuilt()
  store i32 %t92, ptr %l49
  br label %bb28
bb27:
  %t93 = load i32, ptr %l48, !tbaa !23
  store i32 %t93, ptr %rv
  br label %ret
bb28:
  %t94 = load i32, ptr %l49, !tbaa !23
  store i32 %t94, ptr %rv
  br label %ret
bb29:
  %t95 = load i32, ptr %l35, !tbaa !23
  store i32 %t95, ptr %l6, !tbaa !23
  %t96 = load i32, ptr %l6, !tbaa !23
  %t98 = icmp eq i32 %t96, 3
  br i1 %t98, label %bb30, label %bb31
bb30:
  %t100 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t104 = icmp sgt i64 %t102, 0
  store i1 %t104, ptr %l52, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb32
bb32:
  %t106 = load i1, ptr %l52, !tbaa !21
  br i1 %t106, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t107 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr %"compiler/build:Config", ptr %t109, i32 0, i32 19
  %t115 = call { i64, ptr } @compiler_2fbuild_2enoTestNamed(ptr %v2, ptr %v4, ptr %v1, ptr %s6, { i64, ptr } %t107, { i64, ptr } %t108, ptr %t111)
  store { i64, ptr } %t115, ptr %l60
  br label %bb35
bb34:
  br label %bb37
bb35:
  %t116 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  %t118 = extractvalue { i64, ptr } %t116, 1
  %t119 = mul i64 %t117, 1
  %t120 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t119)
  call void @llvm.memcpy.p0.p0.i64(ptr %t120, ptr %t118, i64 %t119, i1 false)
  %t121 = insertvalue { i64, ptr } undef, i64 %t117, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t120, 1
  call void @compiler_2fbuild_2esayln(ptr %s6, { i64, ptr } %t122)
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s6)
  store i32 3, ptr %rv
  br label %ret
bb37:
  %t125 = load i32, ptr %l6, !tbaa !23
  %t127 = icmp eq i32 %t125, 0
  br i1 %t127, label %bb38, label %bb39
bb38:
  store i32 0, ptr %l65, !tbaa !23
  br label %bb40
bb39:
  store i32 1, ptr %l65, !tbaa !23
  br label %bb40
bb40:
  %t129 = load i32, ptr %l65, !tbaa !23
  store i32 %t129, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2eInterpret_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %rv = alloca i32
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t5 = load ptr, ptr %l4, !tbaa !29
  %t11 = call { i32, i32 } @compiler_2folang_2ecompiler_2folang_3aPasses_2eInterpret(ptr %v0, ptr %v2, ptr %v3, ptr %v1, ptr %v4, ptr %a0, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a1, ptr %t5)
  %t12 = extractvalue { i32, i32 } %t11, 1
  %t13 = extractvalue { i32, i32 } %t11, 0
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb2, label %ok.15, !prof !99
ok.15:
  store i32 %t12, ptr %l11
  br label %bb1
bb1:
  %t16 = load i32, ptr %l11, !tbaa !23
  store i32 %t16, ptr %l5, !tbaa !23
  br label %bb11
bb2:
  %t17 = load i32, ptr %l12, !tbaa !23
  %t18 = icmp eq i32 %t17, 65536
  br i1 %t18, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  %t20 = load i32, ptr %l12, !tbaa !23
  %t21 = icmp eq i32 %t20, 65537
  br i1 %t21, label %bb6, label %bb7
bb5:
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t23)
  store i32 %t25, ptr %l16
  br label %bb9
bb6:
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_6ff5f1cbdf8b017d_cabbfa25d1d462b1)
  unreachable
bb8:
  %t26 = call i32 @compiler_2fbuild_2eunbuilt()
  store i32 %t26, ptr %l17
  br label %bb10
bb9:
  %t27 = load i32, ptr %l16, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
bb10:
  %t28 = load i32, ptr %l17, !tbaa !23
  store i32 %t28, ptr %rv
  br label %ret
bb11:
  %t29 = load i32, ptr %l5, !tbaa !23
  store i32 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i32, %"compiler/build:Listed" } @compiler_2fbuild_2eListed_2eListingCode_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5) #0 {
entry:
  %l1 = alloca ptr
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %lp7 = alloca ptr
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l18 = alloca i32
  %l21 = alloca i64
  %l23 = alloca i1
  %l26 = alloca i64
  %l31 = alloca i32
  %l34 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l44 = alloca %"compiler/build:Listed"
  %l53 = alloca i32
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l61 = alloca i32
  %l64 = alloca i64
  %l66 = alloca i64
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l75 = alloca i1
  %l76 = alloca ptr
  %l78 = alloca { i64, ptr }
  %l89 = alloca i32
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca { i32, %"compiler/build:Listed" }
  store ptr %a1, ptr %l1
  store i1 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = load ptr, ptr %l1, !tbaa !29
  %t4 = load ptr, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t12 = call i32 @compiler_2folang_2ecompiler_2folang_3aPasses_2eAnalyze(ptr %v0, ptr %v2, ptr %v1, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a2, i32 1, ptr %t3, ptr %t4, ptr %t5)
  store i32 %t12, ptr %l18
  %t13 = icmp ne i32 %t12, 0
  br i1 %t13, label %bb2, label %ok.14, !prof !99
ok.14:
  br label %bb1
bb1:
  br label %bb3
bb2:
  %t15 = load i32, ptr %l18, !tbaa !23
  %t16 = lshr i32 %t15, 16
  %t17 = and i32 %t15, 65535
  %t18 = icmp eq i32 %t16, 1
  %t19 = select i1 %t18, i32 1, i32 0
  %t20 = icmp eq i32 %t15, 0
  %t21 = shl i32 %t19, 16
  %t22 = or i32 %t21, %t17
  %t23 = select i1 %t20, i32 0, i32 %t22
  call void @__olang_scope_close(ptr %s0)
  %t25 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, i32 %t23, 0
  store { i32, %"compiler/build:Listed" } %t25, ptr %rv
  br label %ret
bb3:
  %t26 = load ptr, ptr %l5, !tbaa !29
  %t28 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v4, ptr %t26)
  store i64 %t28, ptr %l21
  br label %bb4
bb4:
  %t29 = load i64, ptr %l21, !tbaa !24
  %t30 = icmp sgt i64 %t29, 0
  br i1 %t30, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb8
bb6:
  %t32 = load ptr, ptr %l4, !tbaa !29
  %t34 = getelementptr %"compiler/build:Program", ptr %t32, i32 0, i32 0
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v3, ptr %t34)
  store i64 %t36, ptr %l26
  br label %bb7
bb7:
  %t37 = load i64, ptr %l26, !tbaa !24
  %t38 = icmp eq i64 %t37, 0
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t40 = load i1, ptr %l23, !tbaa !21
  br i1 %t40, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t42 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, i32 65536, 0
  store { i32, %"compiler/build:Listed" } %t42, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t47 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v1, ptr %v4, ptr %t43, ptr %t44)
  store i32 %t47, ptr %l31
  %t48 = icmp ne i32 %t47, 0
  br i1 %t48, label %bb13, label %ok.49, !prof !99
ok.49:
  br label %bb12
bb12:
  br label %bb14
bb13:
  %t50 = load i32, ptr %l31, !tbaa !23
  %t51 = lshr i32 %t50, 16
  %t52 = and i32 %t50, 65535
  %t53 = icmp eq i32 %t51, 1
  %t54 = select i1 %t53, i32 1, i32 0
  %t55 = icmp eq i32 %t50, 0
  %t56 = shl i32 %t54, 16
  %t57 = or i32 %t56, %t52
  %t58 = select i1 %t55, i32 0, i32 %t57
  call void @__olang_scope_close(ptr %s0)
  %t60 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, i32 %t58, 0
  store { i32, %"compiler/build:Listed" } %t60, ptr %rv
  br label %ret
bb14:
  %t61 = load ptr, ptr %l1, !tbaa !29
  %t63 = getelementptr %"compiler/build:Config", ptr %t61, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63, !tbaa !27
  store { i64, ptr } %t64, ptr %l34, !tbaa !27
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t67 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aProgram_2erootIdentity(ptr %v3, ptr %s0, ptr %t65)
  store { i64, ptr } %t67, ptr %l36
  br label %bb15
bb15:
  %t68 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t68, 0
  %t70 = extractvalue { i64, ptr } %t68, 1
  %t71 = mul i64 %t69, 1
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @llvm.memcpy.p0.p0.i64(ptr %t72, ptr %t70, i64 %t71, i1 false)
  %t73 = insertvalue { i64, ptr } undef, i64 %t69, 0
  %t74 = insertvalue { i64, ptr } %t73, ptr %t72, 1
  %t76 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %s0, ptr %s0, { i64, ptr } %t74)
  store { i64, ptr } %t76, ptr %l38
  br label %bb16
bb16:
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v1, ptr %s0, ptr %t77)
  store { i64, ptr } %t79, ptr %l40
  br label %bb17
bb17:
  %t80 = load i1, ptr %l3, !tbaa !21
  br i1 %t80, label %bb18, label %bb19
bb18:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l42, !tbaa !27
  br label %bb20
bb19:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l42, !tbaa !27
  br label %bb20
bb20:
  %t82 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 1
  %t84 = extractvalue { i64, ptr } %t82, 0
  %t85 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t87 = add i64 %t84, %t86
  %t88 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = extractvalue { i64, ptr } %t88, 0
  %t91 = add i64 %t87, %t90
  %t92 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = extractvalue { i64, ptr } %t92, 0
  %t95 = add i64 %t91, %t94
  %t96 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = extractvalue { i64, ptr } %t96, 0
  %t99 = add i64 %t95, %t98
  %t100 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t99)
  call void @olang_textcopy(ptr %t100, ptr %t83, i64 %t84)
  %t101 = getelementptr i8, ptr %t100, i64 %t84
  call void @olang_textcopy(ptr %t101, ptr %t85, i64 %t86)
  %t102 = getelementptr i8, ptr %t101, i64 %t86
  call void @olang_textcopy(ptr %t102, ptr %t89, i64 %t90)
  %t103 = getelementptr i8, ptr %t102, i64 %t90
  call void @olang_textcopy(ptr %t103, ptr %t93, i64 %t94)
  %t104 = getelementptr i8, ptr %t103, i64 %t94
  call void @olang_textcopy(ptr %t104, ptr %t97, i64 %t98)
  %t105 = insertvalue { i64, ptr } undef, i64 %t99, 0
  %t106 = insertvalue { i64, ptr } %t105, ptr %t100, 1
  store { i64, ptr } %t106, ptr %l6, !tbaa !27
  %t108 = call %"compiler/build:Listed" @compiler_2fbuild_3aListed_2ector(ptr %v5)
  store %"compiler/build:Listed" %t108, ptr %l44
  br label %bb21
bb21:
  %t109 = call ptr @__olang_scope_alloc_a(ptr %v5, i64 64, i64 8)
  store ptr %t109, ptr %lp7
  %t110 = load %"compiler/build:Listed", ptr %l44
  %t111 = load ptr, ptr %lp7
  store %"compiler/build:Listed" %t110, ptr %t111
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr %"compiler/build:Config", ptr %t112, i32 0, i32 5
  %t115 = load i1, ptr %t114, !tbaa !21
  br i1 %t115, label %bb22, label %bb23
bb22:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t118 = load ptr, ptr %l4, !tbaa !29
  %t119 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t120 = load i1, ptr %l3, !tbaa !21
  %t121 = load ptr, ptr %lp7
  %t122 = load ptr, ptr %l5, !tbaa !29
  %t129 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistQuick(ptr %v1, ptr %v3, ptr %s0, ptr %v5, ptr %v4, ptr %t117, ptr %t118, { i64, ptr } %t119, i1 %t120, ptr %t121, ptr %t122)
  store i32 %t129, ptr %l53
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb25, label %ok.131, !prof !99
ok.131:
  br label %bb24
bb23:
  br label %bb27
bb24:
  br label %bb26
bb25:
  %t132 = load i32, ptr %l53, !tbaa !23
  %t133 = lshr i32 %t132, 16
  %t134 = and i32 %t132, 65535
  %t135 = icmp eq i32 %t133, 1
  %t136 = select i1 %t135, i32 1, i32 0
  %t137 = icmp eq i32 %t132, 0
  %t138 = shl i32 %t136, 16
  %t139 = or i32 %t138, %t134
  %t140 = select i1 %t137, i32 0, i32 %t139
  call void @__olang_scope_close(ptr %s0)
  %t142 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, i32 %t140, 0
  store { i32, %"compiler/build:Listed" } %t142, ptr %rv
  br label %ret
bb26:
  %t143 = load ptr, ptr %lp7
  %t144 = load %"compiler/build:Listed", ptr %t143
  call void @__olang_scope_close(ptr %s0)
  %t146 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, %"compiler/build:Listed" %t144, 1
  store { i32, %"compiler/build:Listed" } %t146, ptr %rv
  br label %ret
bb27:
  %t147 = load ptr, ptr %l1, !tbaa !29
  %t148 = load ptr, ptr %l4, !tbaa !29
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t153 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v1, ptr %v3, ptr %v4, ptr %s0, ptr %t147, ptr %t148, ptr %t149)
  %t154 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t153, 1
  %t155 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t153, 0
  store i32 %t155, ptr %l61
  %t156 = icmp ne i32 %t155, 0
  br i1 %t156, label %bb29, label %ok.157, !prof !99
ok.157:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t154, ptr %l60
  br label %bb28
bb28:
  %t158 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l60
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t158, ptr %l56
  br label %bb30
bb29:
  %t159 = load i32, ptr %l61, !tbaa !23
  %t160 = lshr i32 %t159, 16
  %t161 = and i32 %t159, 65535
  %t162 = icmp eq i32 %t160, 1
  %t163 = select i1 %t162, i32 1, i32 0
  %t164 = icmp eq i32 %t159, 0
  %t165 = shl i32 %t163, 16
  %t166 = or i32 %t165, %t161
  %t167 = select i1 %t164, i32 0, i32 %t166
  call void @__olang_scope_close(ptr %s0)
  %t169 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, i32 %t167, 0
  store { i32, %"compiler/build:Listed" } %t169, ptr %rv
  br label %ret
bb30:
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %l8
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d14, i32 0, i32 1) })
  br label %bb31
bb31:
  store ptr %l8, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s5
  %t172 = load i64, ptr %l10, !tbaa !24
  store i64 %t172, ptr %l64, !tbaa !24
  %t173 = load ptr, ptr %l9, !tbaa !29
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t173)
  store i64 %t175, ptr %l66
  br label %bb33
bb33:
  %t176 = load i64, ptr %l64, !tbaa !24
  %t177 = load i64, ptr %l66, !tbaa !24
  %t178 = icmp slt i64 %t176, %t177
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s5)
  br label %bb46
bb35:
  br label %bb36
bb36:
  %t182 = load ptr, ptr %l9, !tbaa !29
  %t183 = load i64, ptr %l10, !tbaa !24
  %t186 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t182, i64 %t183)
  store { i64, ptr } %t186, ptr %l71
  br label %bb37
bb37:
  %t187 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t187, ptr %l11, !tbaa !27
  %t188 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t190 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %s0, ptr %s5, { i64, ptr } %t188)
  store { i64, ptr } %t190, ptr %l73
  br label %bb38
bb38:
  %t191 = load { i64, ptr }, ptr %l73, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  %t193 = extractvalue { i64, ptr } %t191, 1
  %t194 = mul i64 %t192, 1
  %t195 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t194)
  call void @llvm.memcpy.p0.p0.i64(ptr %t195, ptr %t193, i64 %t194, i1 false)
  %t196 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t197 = insertvalue { i64, ptr } %t196, ptr %t195, 1
  %t199 = call i1 @std_2fos_2eExists(ptr %s5, { i64, ptr } %t197)
  store i1 %t199, ptr %l75
  br label %bb39
bb39:
  %t200 = load i1, ptr %l75, !tbaa !21
  br i1 %t200, label %bb40, label %bb41
bb40:
  %t201 = load ptr, ptr %lp7
  %t202 = getelementptr %"compiler/build:Listed", ptr %t201, i32 0, i32 1
  store ptr %t202, ptr %l76, !tbaa !29
  %t203 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t205 = call { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %s0, ptr %v5, { i64, ptr } %t203)
  store { i64, ptr } %t205, ptr %l78
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t206 = load { i64, ptr }, ptr %l78, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t206, 0
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = mul i64 %t207, 1
  %t210 = call ptr @__olang_scope_alloc(ptr %v5, i64 %t209)
  call void @llvm.memcpy.p0.p0.i64(ptr %t210, ptr %t208, i64 %t209, i1 false)
  %t211 = insertvalue { i64, ptr } undef, i64 %t207, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t210, 1
  %t213 = load ptr, ptr %l76, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v5, ptr %v5, ptr %t213, { i64, ptr } %t212)
  br label %bb43
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s5)
  br label %bb45
bb45:
  %t215 = load i64, ptr %l10, !tbaa !24
  %t217 = add i64 %t215, 1
  store i64 %t217, ptr %l10, !tbaa !24
  br label %bb32
bb46:
  %t219 = load ptr, ptr %l1, !tbaa !29
  %t220 = load ptr, ptr %l4, !tbaa !29
  %t221 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t222 = load i1, ptr %l3, !tbaa !21
  %t223 = load ptr, ptr %lp7
  %t224 = load ptr, ptr %l5, !tbaa !29
  %t232 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistLink(ptr %v1, ptr %s0, ptr %v3, ptr %s0, ptr %v5, ptr %v4, ptr %t219, ptr %l8, ptr %t220, { i64, ptr } %t221, i1 %t222, ptr %t223, ptr %t224)
  store i32 %t232, ptr %l89
  %t233 = icmp ne i32 %t232, 0
  br i1 %t233, label %bb48, label %ok.234, !prof !99
ok.234:
  br label %bb47
bb47:
  br label %bb49
bb48:
  %t235 = load i32, ptr %l89, !tbaa !23
  %t236 = lshr i32 %t235, 16
  %t237 = and i32 %t235, 65535
  %t238 = icmp eq i32 %t236, 1
  %t239 = select i1 %t238, i32 1, i32 0
  %t240 = icmp eq i32 %t235, 0
  %t241 = shl i32 %t239, 16
  %t242 = or i32 %t241, %t237
  %t243 = select i1 %t240, i32 0, i32 %t242
  call void @__olang_scope_close(ptr %s0)
  %t245 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, i32 %t243, 0
  store { i32, %"compiler/build:Listed" } %t245, ptr %rv
  br label %ret
bb49:
  %t246 = load ptr, ptr %lp7
  %t247 = load %"compiler/build:Listed", ptr %t246
  call void @__olang_scope_close(ptr %s0)
  %t249 = insertvalue { i32, %"compiler/build:Listed" } zeroinitializer, %"compiler/build:Listed" %t247, 1
  store { i32, %"compiler/build:Listed" } %t249, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"compiler/build:Listed" }, ptr %rv
  ret { i32, %"compiler/build:Listed" } %rr
}

define dso_local i32 @compiler_2fbuild_2eRunProgram_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l21 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca i32
  %l31 = alloca i1
  %l33 = alloca i32
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca { i64, ptr }
  %l51 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l81 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l91 = alloca i32
  %l93 = alloca i1
  %l96 = alloca ptr
  %l97 = alloca { i64, [3 x i64] }
  %l98 = alloca %"compiler/diagmsg:Msg"
  %l100 = alloca i32
  %s0 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %rv = alloca i32
  %t210 = alloca { i64, [3 x i64] }, align 8
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 22
  store i1 true, ptr %t3, !tbaa !21
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t12 = call i32 @compiler_2fbuild_2eBuildProgram_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %a0, ptr %t5, { i64, ptr } %t6, ptr %t7)
  store i32 %t12, ptr %l21
  br label %bb1
bb1:
  %t13 = load i32, ptr %l21, !tbaa !23
  store i32 %t13, ptr %l5, !tbaa !23
  %t14 = load i32, ptr %l5, !tbaa !23
  %t16 = icmp ne i32 %t14, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = load i32, ptr %l5, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t18, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t21 = load ptr, ptr %l4, !tbaa !29
  %t24 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunner(ptr %v1, ptr %v4, ptr %s0, ptr %t20, ptr %t21)
  %t25 = extractvalue { i32, { i64, ptr } } %t24, 1
  %t26 = extractvalue { i32, { i64, ptr } } %t24, 0
  store i32 %t26, ptr %l29
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb6, label %ok.28, !prof !99
ok.28:
  store { i64, ptr } %t25, ptr %l28
  br label %bb5
bb5:
  %t29 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t29, ptr %l25, !tbaa !27
  br label %bb9
bb6:
  %t30 = load i32, ptr %l29, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  store i1 %t33, ptr %l31, !tbaa !21
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l4, !tbaa !29
  %t36 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t34)
  store i32 %t36, ptr %l33
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s0)
  %t37 = load i32, ptr %l33, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
bb9:
  %t38 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t38, ptr %l6, !tbaa !27
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l34
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l7
  %t41 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t41, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t43 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t43, 0
  store i64 %t45, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t47 = load i64, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t55, ptr %l42, !tbaa !27
  %t56 = load i64, ptr %l9, !tbaa !24
  %t58 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr { i64, ptr }, ptr %t59, i64 %t56
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !37
  %t65 = extractvalue { i64, ptr } %t61, 1
  %t66 = extractvalue { i64, ptr } %t61, 0
  %t67 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t66)
  call void @olang_textcopy(ptr %t67, ptr %t65, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = extractvalue { i64, ptr } %t69, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } %t76)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t79 = load i64, ptr %l9, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l9, !tbaa !24
  br label %bb11
bb17:
  store ptr %l7, ptr %l51, !tbaa !29
  %t83 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t85 = extractvalue { i64, ptr } %t83, 0
  %t87 = icmp eq i64 %t85, 0
  br i1 %t87, label %bb18, label %bb19
bb18:
  %t89 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t89, 1
  %t92 = extractvalue { i64, ptr } %t89, 0
  %t93 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t92)
  call void @olang_textcopy(ptr %t93, ptr %t91, i64 %t92)
  %t94 = insertvalue { i64, ptr } undef, i64 %t92, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t93, 1
  store { i64, ptr } %t95, ptr %l55, !tbaa !27
  br label %bb21
bb19:
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/build:Config", ptr %t97, i32 0, i32 24
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  %t102 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %v1, ptr %s0, { i64, ptr } %t100)
  store { i64, ptr } %t102, ptr %l60
  br label %bb20
bb20:
  %t103 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t103, ptr %l55, !tbaa !27
  br label %bb21
bb21:
  %t104 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  %t106 = extractvalue { i64, ptr } %t104, 1
  %t107 = mul i64 %t105, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t107)
  call void @llvm.memcpy.p0.p0.i64(ptr %t108, ptr %t106, i64 %t107, i1 false)
  %t109 = insertvalue { i64, ptr } undef, i64 %t105, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  %t111 = load ptr, ptr %l51, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %t111, { i64, ptr } %t110)
  br label %bb22
bb22:
  store { i64, ptr } %a3, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t115 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t115, 0
  store i64 %t117, ptr %l14, !tbaa !24
  br label %bb23
bb23:
  %t119 = load i64, ptr %l13, !tbaa !24
  %t120 = load i64, ptr %l14, !tbaa !24
  %t123 = icmp slt i64 %t119, %t120
  %t125 = xor i1 %t123, true
  br i1 %t125, label %bb24, label %bb25
bb24:
  br label %bb29
bb25:
  br label %bb26
bb26:
  %t127 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t127, ptr %l69, !tbaa !27
  %t128 = load i64, ptr %l13, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %t131, i64 %t128
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !37
  %t137 = extractvalue { i64, ptr } %t133, 1
  %t138 = extractvalue { i64, ptr } %t133, 0
  %t139 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t138)
  call void @olang_textcopy(ptr %t139, ptr %t137, i64 %t138)
  %t140 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t141 = insertvalue { i64, ptr } %t140, ptr %t139, 1
  %t143 = extractvalue { i64, ptr } %t141, 0
  %t144 = extractvalue { i64, ptr } %t141, 1
  %t145 = mul i64 %t143, 1
  %t146 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t145)
  call void @llvm.memcpy.p0.p0.i64(ptr %t146, ptr %t144, i64 %t145, i1 false)
  %t147 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t146, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %l7, { i64, ptr } %t148)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t151 = load i64, ptr %l13, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l13, !tbaa !24
  br label %bb23
bb29:
  %t155 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t159 = icmp eq i64 %t157, 0
  br i1 %t159, label %bb30, label %bb31
bb30:
  %t161 = load ptr, ptr %l1, !tbaa !29
  %t163 = getelementptr %"compiler/build:Config", ptr %t161, i32 0, i32 24
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  %t166 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %v1, ptr %s0, { i64, ptr } %t164)
  store { i64, ptr } %t166, ptr %l84
  br label %bb32
bb31:
  %t167 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr { i64, ptr }, ptr %t168, i64 0
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !37
  %t172 = extractvalue { i64, ptr } %t170, 1
  %t173 = extractvalue { i64, ptr } %t170, 0
  %t174 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t173)
  call void @olang_textcopy(ptr %t174, ptr %t172, i64 %t173)
  %t175 = insertvalue { i64, ptr } undef, i64 %t173, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t178 = extractvalue { i64, ptr } %t176, 0
  %t179 = extractvalue { i64, ptr } %t176, 1
  %t180 = mul i64 %t178, 1
  %t181 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t180)
  call void @llvm.memcpy.p0.p0.i64(ptr %t181, ptr %t179, i64 %t180, i1 false)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  store { i64, ptr } %t183, ptr %l81, !tbaa !27
  br label %bb33
bb32:
  %t185 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t185, 0
  %t187 = extractvalue { i64, ptr } %t185, 1
  %t188 = mul i64 %t186, 1
  %t189 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t188)
  call void @llvm.memcpy.p0.p0.i64(ptr %t189, ptr %t187, i64 %t188, i1 false)
  %t190 = insertvalue { i64, ptr } undef, i64 %t186, 0
  %t191 = insertvalue { i64, ptr } %t190, ptr %t189, 1
  store { i64, ptr } %t191, ptr %l81, !tbaa !27
  br label %bb33
bb33:
  %t194 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %l7)
  store { i64, ptr } %t194, ptr %l90
  br label %bb34
bb34:
  %t195 = load { i64, ptr }, ptr %l81, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t197 = call i32 @std_2fos_2eExecInPlace(ptr %s0, ptr %s0, { i64, ptr } %t195, { i64, ptr } %t196)
  store i32 %t197, ptr %l91
  %t198 = icmp ne i32 %t197, 0
  br i1 %t198, label %bb36, label %ok.199, !prof !99
ok.199:
  br label %bb35
bb35:
  br label %bb43
bb36:
  %t200 = load i32, ptr %l91, !tbaa !23
  %t201 = ashr i32 %t200, 16
  %t203 = icmp eq i32 %t201, 1
  store i1 %t203, ptr %l93, !tbaa !21
  %t204 = load i32, ptr %l91, !tbaa !23
  %t205 = ashr i32 %t204, 16
  %t207 = icmp eq i32 %t205, 1
  br i1 %t207, label %bb37, label %bb38
bb37:
  call void @__olang_errpay_pop()
  br label %bb38
bb38:
  br label %bb39
bb39:
  store %olang.scope zeroinitializer, ptr %s13
  %t209 = load ptr, ptr %l4, !tbaa !29
  store ptr %t209, ptr %l96, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t210
  %t211 = getelementptr { i64, [3 x i64] }, ptr %t210, i32 0, i32 0
  store i64 0, ptr %t211
  %t212 = load { i64, [3 x i64] }, ptr %t210
  store { i64, [3 x i64] } %t212, ptr %l97
  %t213 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotRun(ptr %s13, ptr %s13, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t213, ptr %l98
  br label %bb40
bb40:
  %t214 = load ptr, ptr %l96, !tbaa !29
  %t215 = load { i64, [3 x i64] }, ptr %l97
  %t216 = load %"compiler/diagmsg:Msg", ptr %l98
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %s13, ptr %t214, { i64, [3 x i64] } %t215, %"compiler/diagmsg:Msg" %t216)
  br label %bb41
bb41:
  %t217 = load ptr, ptr %l4, !tbaa !29
  %t219 = call i32 @compiler_2fbuild_2efinish(ptr %v4, ptr %t217)
  store i32 %t219, ptr %l100
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  %t220 = load i32, ptr %l100, !tbaa !23
  store i32 %t220, ptr %rv
  br label %ret
bb43:
  call void @__olang_check_failed(ptr @olang_loc_e43b1413a2a1997d_89f9fa2bec5137e9)
  unreachable
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fbuild_2eTestFile_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3, { i64, ptr } %a4) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/os:FileInfo"
  %l6 = alloca %"compiler/build:Program"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca %"std/os:Output"
  %l20 = alloca %"std/os:FileInfo"
  %l22 = alloca %"std/os:FileInfo"
  %l23 = alloca i32
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca { i64, ptr }
  %l30 = alloca %"compiler/diagmsg:Msg"
  %l32 = alloca i32
  %l35 = alloca ptr
  %l36 = alloca { i64, ptr }
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l39 = alloca i32
  %l43 = alloca ptr
  %l44 = alloca { i64, ptr }
  %l45 = alloca %"compiler/diagmsg:Msg"
  %l47 = alloca i32
  %l48 = alloca %"compiler/build:Program"
  %l55 = alloca i32
  %l61 = alloca i32
  %l62 = alloca i32
  %l64 = alloca i64
  %l66 = alloca i1
  %l68 = alloca i64
  %l73 = alloca i32
  %l76 = alloca i32
  %l78 = alloca i1
  %l80 = alloca i32
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l86 = alloca i32
  %l88 = alloca i1
  %l90 = alloca i32
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l96 = alloca { i64, ptr }
  %l98 = alloca { i64, ptr }
  %l100 = alloca ptr
  %l101 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l104 = alloca i1
  %l107 = alloca i32
  %l109 = alloca i1
  %l114 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l123 = alloca i32
  %l125 = alloca i1
  %l127 = alloca i32
  %l128 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l136 = alloca { i64, ptr }
  %l145 = alloca ptr
  %l147 = alloca { i64, ptr }
  %l151 = alloca i1
  %l156 = alloca i32
  %l164 = alloca { i64, ptr }
  %l173 = alloca %"std/os:Output"
  %l175 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l177 = alloca %"std/os:Output"
  %l178 = alloca i32
  %l180 = alloca i1
  %l186 = alloca ptr
  %l187 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l197 = alloca i1
  %l204 = alloca { i64, ptr }
  %l209 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s23 = alloca %olang.scope
  %s25 = alloca %olang.scope
  %rv = alloca i32
  %t63 = alloca %"compiler/build:Program", align 8
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store { i64, ptr } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = call { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v2, { i64, ptr } %t1)
  %t4 = extractvalue { i32, %"std/os:FileInfo" } %t3, 1
  %t5 = extractvalue { i32, %"std/os:FileInfo" } %t3, 0
  store i32 %t5, ptr %l23
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store %"std/os:FileInfo" %t4, ptr %l22
  br label %bb1
bb1:
  %t8 = load %"std/os:FileInfo", ptr %l22
  store %"std/os:FileInfo" %t8, ptr %l20
  br label %bb8
bb2:
  %t9 = load i32, ptr %l23, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l25, !tbaa !21
  %t13 = load i32, ptr %l23, !tbaa !23
  %t14 = ashr i32 %t13, 16
  %t16 = icmp eq i32 %t14, 1
  br i1 %t16, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l1, !tbaa !29
  store ptr %t18, ptr %l28, !tbaa !29
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t19, ptr %l29, !tbaa !27
  %t20 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %s1)
  store %"compiler/diagmsg:Msg" %t20, ptr %l30
  br label %bb6
bb6:
  %t21 = load ptr, ptr %l3, !tbaa !29
  %t22 = load ptr, ptr %l28, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t24 = load %"compiler/diagmsg:Msg", ptr %l30
  %t26 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v1, ptr %v2, ptr %s1, ptr %v3, ptr %t22, { i64, ptr } %t23, %"compiler/diagmsg:Msg" %t24, ptr %t21)
  store i32 %t26, ptr %l32
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t27 = load i32, ptr %l32, !tbaa !23
  store i32 %t27, ptr %rv
  br label %ret
bb8:
  %t28 = load %"std/os:FileInfo", ptr %l20
  store %"std/os:FileInfo" %t28, ptr %l5
  %t29 = getelementptr %"std/os:FileInfo", ptr %l5, i32 0, i32 0
  %t30 = load i32, ptr %t29, !range !{i32 0, i32 3}
  %t32 = trunc i64 1 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l35, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t36, ptr %l36, !tbaa !27
  %t37 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %s2)
  store %"compiler/diagmsg:Msg" %t37, ptr %l37
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t39 = load ptr, ptr %l35, !tbaa !29
  %t40 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t41 = load %"compiler/diagmsg:Msg", ptr %l37
  %t43 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v1, ptr %v2, ptr %s2, ptr %v3, ptr %t39, { i64, ptr } %t40, %"compiler/diagmsg:Msg" %t41, ptr %t38)
  store i32 %t43, ptr %l39
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t44 = load i32, ptr %l39, !tbaa !23
  store i32 %t44, ptr %rv
  br label %ret
bb13:
  %t45 = getelementptr %"std/os:FileInfo", ptr %l5, i32 0, i32 0
  %t46 = load i32, ptr %t45, !range !{i32 0, i32 3}
  %t48 = trunc i64 0 to i32
  %t49 = icmp eq i32 %t46, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s3
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l43, !tbaa !29
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t54, ptr %l44, !tbaa !27
  %t55 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotRegular(ptr %s3)
  store %"compiler/diagmsg:Msg" %t55, ptr %l45
  br label %bb16
bb15:
  br label %bb18
bb16:
  %t56 = load ptr, ptr %l3, !tbaa !29
  %t57 = load ptr, ptr %l43, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t59 = load %"compiler/diagmsg:Msg", ptr %l45
  %t61 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v1, ptr %v2, ptr %s3, ptr %v3, ptr %t57, { i64, ptr } %t58, %"compiler/diagmsg:Msg" %t59, ptr %t56)
  store i32 %t61, ptr %l47
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t62 = load i32, ptr %l47, !tbaa !23
  store i32 %t62, ptr %rv
  br label %ret
bb18:
  call void @compiler_2fbuild_3aProgram_2ector(ptr %t63, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t63, i64 224, i1 false)
  br label %bb19
bb19:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l48, i64 224, i1 false)
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t66 = load ptr, ptr %l1, !tbaa !29
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t74 = call i32 @compiler_2folang_2ecompiler_2folang_3aPasses_2eAnalyze(ptr %v0, ptr %v2, ptr %v1, ptr %s0, ptr %v3, ptr %a0, { i64, ptr } %t65, i32 2, ptr %t66, ptr %l6, ptr %t67)
  store i32 %t74, ptr %l55
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb21, label %ok.76, !prof !99
ok.76:
  br label %bb20
bb20:
  br label %bb30
bb21:
  %t77 = load i32, ptr %l55, !tbaa !23
  %t78 = icmp eq i32 %t77, 65536
  br i1 %t78, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  %t80 = load i32, ptr %l55, !tbaa !23
  %t81 = icmp eq i32 %t80, 65537
  br i1 %t81, label %bb25, label %bb26
bb24:
  %t83 = load ptr, ptr %l1, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t85 = load ptr, ptr %l3, !tbaa !29
  %t89 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eskipped(ptr %v1, ptr %v2, ptr %v3, ptr %t83, { i64, ptr } %t84, ptr %t85)
  store i32 %t89, ptr %l61
  br label %bb28
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_44996bcc7c9bda8_515f8c8db8b0565c)
  unreachable
bb27:
  %t90 = call i32 @compiler_2fbuild_2eunbuilt()
  store i32 %t90, ptr %l62
  br label %bb29
bb28:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load i32, ptr %l61, !tbaa !23
  store i32 %t91, ptr %rv
  br label %ret
bb29:
  call void @__olang_scope_close(ptr %s0)
  %t92 = load i32, ptr %l62, !tbaa !23
  store i32 %t92, ptr %rv
  br label %ret
bb30:
  %t93 = load ptr, ptr %l3, !tbaa !29
  %t95 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v3, ptr %t93)
  store i64 %t95, ptr %l64
  br label %bb31
bb31:
  %t96 = load i64, ptr %l64, !tbaa !24
  %t97 = icmp sgt i64 %t96, 0
  br i1 %t97, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l66, !tbaa !21
  br label %bb35
bb33:
  %t99 = getelementptr %"compiler/build:Program", ptr %l6, i32 0, i32 0
  %t101 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t99)
  store i64 %t101, ptr %l68
  br label %bb34
bb34:
  %t102 = load i64, ptr %l68, !tbaa !24
  %t103 = icmp eq i64 %t102, 0
  store i1 %t103, ptr %l66, !tbaa !21
  br label %bb35
bb35:
  %t105 = load i1, ptr %l66, !tbaa !21
  br i1 %t105, label %bb36, label %bb37
bb36:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t107 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t108 = load ptr, ptr %l3, !tbaa !29
  %t112 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eskipped(ptr %v1, ptr %v2, ptr %v3, ptr %t106, { i64, ptr } %t107, ptr %t108)
  store i32 %t112, ptr %l73
  br label %bb38
bb37:
  br label %bb39
bb38:
  call void @__olang_scope_close(ptr %s0)
  %t113 = load i32, ptr %l73, !tbaa !23
  store i32 %t113, ptr %rv
  br label %ret
bb39:
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t118 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v1, ptr %v3, ptr %t114, ptr %t115)
  store i32 %t118, ptr %l76
  %t119 = icmp ne i32 %t118, 0
  br i1 %t119, label %bb41, label %ok.120, !prof !99
ok.120:
  br label %bb40
bb40:
  br label %bb44
bb41:
  %t121 = load i32, ptr %l76, !tbaa !23
  %t122 = ashr i32 %t121, 16
  %t124 = icmp eq i32 %t122, 1
  store i1 %t124, ptr %l78, !tbaa !21
  br label %bb42
bb42:
  %t125 = load ptr, ptr %l3, !tbaa !29
  %t127 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t125)
  store i32 %t127, ptr %l80
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s0)
  %t128 = load i32, ptr %l80, !tbaa !23
  store i32 %t128, ptr %rv
  br label %ret
bb44:
  %t129 = load ptr, ptr %l1, !tbaa !29
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t134 = call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v1, ptr %s0, ptr %v3, ptr %s0, ptr %t129, ptr %l6, ptr %t130)
  %t135 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t134, 1
  %t136 = extractvalue { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %t134, 0
  store i32 %t136, ptr %l86
  %t137 = icmp ne i32 %t136, 0
  br i1 %t137, label %bb46, label %ok.138, !prof !99
ok.138:
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t135, ptr %l85
  br label %bb45
bb45:
  %t139 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t139, ptr %l81
  br label %bb49
bb46:
  %t140 = load i32, ptr %l86, !tbaa !23
  %t141 = ashr i32 %t140, 16
  %t143 = icmp eq i32 %t141, 1
  store i1 %t143, ptr %l88, !tbaa !21
  br label %bb47
bb47:
  %t144 = load ptr, ptr %l3, !tbaa !29
  %t146 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t144)
  store i32 %t146, ptr %l90
  br label %bb48
bb48:
  call void @__olang_scope_close(ptr %s0)
  %t147 = load i32, ptr %l90, !tbaa !23
  store i32 %t147, ptr %rv
  br label %ret
bb49:
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l7
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d16, i32 0, i32 1) })
  br label %bb50
bb50:
  %t149 = load ptr, ptr %l1, !tbaa !29
  %t151 = getelementptr %"compiler/build:Config", ptr %t149, i32 0, i32 0
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  store { i64, ptr } %t152, ptr %l92, !tbaa !27
  %t154 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aProgram_2erootIdentity(ptr %s0, ptr %s0, ptr %l6)
  store { i64, ptr } %t154, ptr %l94
  br label %bb51
bb51:
  %t155 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t155, 0
  %t157 = extractvalue { i64, ptr } %t155, 1
  %t158 = mul i64 %t156, 1
  %t159 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t158)
  call void @llvm.memcpy.p0.p0.i64(ptr %t159, ptr %t157, i64 %t158, i1 false)
  %t160 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t163 = call { i64, ptr } @compiler_2fbuild_2eReadable(ptr %s0, ptr %s0, { i64, ptr } %t161)
  store { i64, ptr } %t163, ptr %l96
  br label %bb52
bb52:
  %t164 = load ptr, ptr %l1, !tbaa !29
  %t166 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v1, ptr %s0, ptr %t164)
  store { i64, ptr } %t166, ptr %l98
  br label %bb53
bb53:
  %t167 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t168 = extractvalue { i64, ptr } %t167, 1
  %t169 = extractvalue { i64, ptr } %t167, 0
  %t170 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = load { i64, ptr }, ptr %l96, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t173, 1
  %t175 = extractvalue { i64, ptr } %t173, 0
  %t176 = add i64 %t172, %t175
  %t177 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t178 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t179 = add i64 %t176, %t178
  %t180 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t181 = extractvalue { i64, ptr } %t180, 1
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = add i64 %t179, %t182
  %t184 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t183)
  call void @olang_textcopy(ptr %t184, ptr %t168, i64 %t169)
  %t185 = getelementptr i8, ptr %t184, i64 %t169
  call void @olang_textcopy(ptr %t185, ptr %t170, i64 %t171)
  %t186 = getelementptr i8, ptr %t185, i64 %t171
  call void @olang_textcopy(ptr %t186, ptr %t174, i64 %t175)
  %t187 = getelementptr i8, ptr %t186, i64 %t175
  call void @olang_textcopy(ptr %t187, ptr %t177, i64 %t178)
  %t188 = getelementptr i8, ptr %t187, i64 %t178
  call void @olang_textcopy(ptr %t188, ptr %t181, i64 %t182)
  %t189 = insertvalue { i64, ptr } undef, i64 %t183, 0
  %t190 = insertvalue { i64, ptr } %t189, ptr %t184, 1
  store { i64, ptr } %t190, ptr %l8, !tbaa !27
  %t192 = load ptr, ptr %l1, !tbaa !29
  store ptr %t192, ptr %l100, !tbaa !29
  store ptr %l7, ptr %l101, !tbaa !29
  %t193 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t193, ptr %l102, !tbaa !27
  %t194 = getelementptr %"compiler/build:Program", ptr %l6, i32 0, i32 2
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  %t197 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t195, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t197, ptr %l104
  br label %bb54
bb54:
  %t198 = load i1, ptr %l104, !tbaa !21
  %t199 = xor i1 %t198, true
  %t200 = getelementptr %"compiler/build:Program", ptr %l6, i32 0, i32 3
  %t201 = load ptr, ptr %l100, !tbaa !29
  %t202 = load ptr, ptr %l101, !tbaa !29
  %t203 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t206 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t201, ptr %t202, { i64, ptr } %t203, i1 %t199, ptr %t200, ptr null)
  store i32 %t206, ptr %l107
  %t207 = icmp ne i32 %t206, 0
  br i1 %t207, label %bb56, label %ok.208, !prof !99
ok.208:
  br label %bb55
bb55:
  br label %bb60
bb56:
  %t209 = load i32, ptr %l107, !tbaa !23
  %t210 = ashr i32 %t209, 16
  %t212 = icmp eq i32 %t210, 1
  store i1 %t212, ptr %l109, !tbaa !21
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s10
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t214 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t214, 1
  %t217 = extractvalue { i64, ptr } %t214, 0
  %t218 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t219 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t220 = add i64 %t217, %t219
  %t221 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t220)
  call void @olang_textcopy(ptr %t221, ptr %t216, i64 %t217)
  %t222 = getelementptr i8, ptr %t221, i64 %t217
  call void @olang_textcopy(ptr %t222, ptr %t218, i64 %t219)
  %t223 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t224 = insertvalue { i64, ptr } %t223, ptr %t221, 1
  %t226 = extractvalue { i64, ptr } %t224, 0
  %t227 = extractvalue { i64, ptr } %t224, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t234 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v1, ptr %s10, ptr %s10, ptr %s10, ptr %t213, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d21, i32 0, i32 1) }, { i64, ptr } %t231)
  store { i64, ptr } %t234, ptr %l114
  br label %bb58
bb58:
  %t235 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  %t237 = extractvalue { i64, ptr } %t235, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  call void @compiler_2fbuild_2esayln(ptr %s10, { i64, ptr } %t241)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb60:
  call void @compiler_2fbuild_2ePhase(ptr %s0, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d22, i32 0, i32 1) })
  br label %bb61
bb61:
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t245 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eTestHeader(ptr %v1, ptr %v2, ptr %t244, { i64, ptr } %t245)
  br label %bb62
bb62:
  %t248 = load ptr, ptr %l1, !tbaa !29
  %t249 = load ptr, ptr %l3, !tbaa !29
  %t252 = call { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunner(ptr %v1, ptr %v3, ptr %s0, ptr %t248, ptr %t249)
  %t253 = extractvalue { i32, { i64, ptr } } %t252, 1
  %t254 = extractvalue { i32, { i64, ptr } } %t252, 0
  store i32 %t254, ptr %l123
  %t255 = icmp ne i32 %t254, 0
  br i1 %t255, label %bb64, label %ok.256, !prof !99
ok.256:
  store { i64, ptr } %t253, ptr %l122
  br label %bb63
bb63:
  %t257 = load { i64, ptr }, ptr %l122, !tbaa !27
  store { i64, ptr } %t257, ptr %l119, !tbaa !27
  br label %bb67
bb64:
  %t258 = load i32, ptr %l123, !tbaa !23
  %t259 = ashr i32 %t258, 16
  %t261 = icmp eq i32 %t259, 1
  store i1 %t261, ptr %l125, !tbaa !21
  br label %bb65
bb65:
  %t262 = load ptr, ptr %l3, !tbaa !29
  %t264 = call i32 @compiler_2fbuild_2efinish(ptr %v3, ptr %t262)
  store i32 %t264, ptr %l127
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s0)
  %t265 = load i32, ptr %l127, !tbaa !23
  store i32 %t265, ptr %rv
  br label %ret
bb67:
  %t266 = load { i64, ptr }, ptr %l119, !tbaa !27
  store { i64, ptr } %t266, ptr %l9, !tbaa !27
  %t267 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t267, ptr %l128
  br label %bb68
bb68:
  %t268 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l128
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l10
  %t269 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t269, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t271 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t271, 0
  store i64 %t273, ptr %l13, !tbaa !24
  br label %bb69
bb69:
  %t275 = load i64, ptr %l12, !tbaa !24
  %t276 = load i64, ptr %l13, !tbaa !24
  %t279 = icmp slt i64 %t275, %t276
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb70, label %bb71
bb70:
  br label %bb75
bb71:
  br label %bb72
bb72:
  %t283 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t283, ptr %l136, !tbaa !27
  %t284 = load i64, ptr %l12, !tbaa !24
  %t286 = getelementptr { i64, ptr }, ptr %l136, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !27
  %t288 = getelementptr { i64, ptr }, ptr %t287, i64 %t284
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !37
  %t293 = extractvalue { i64, ptr } %t289, 1
  %t294 = extractvalue { i64, ptr } %t289, 0
  %t295 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t294)
  call void @olang_textcopy(ptr %t295, ptr %t293, i64 %t294)
  %t296 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t299 = extractvalue { i64, ptr } %t297, 0
  %t300 = extractvalue { i64, ptr } %t297, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t304)
  br label %bb73
bb73:
  br label %bb74
bb74:
  %t307 = load i64, ptr %l12, !tbaa !24
  %t309 = add i64 %t307, 1
  store i64 %t309, ptr %l12, !tbaa !24
  br label %bb69
bb75:
  store ptr %l10, ptr %l145, !tbaa !29
  %t311 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t313 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %s0, ptr %s0, { i64, ptr } %t311)
  store { i64, ptr } %t313, ptr %l147
  br label %bb76
bb76:
  %t314 = load { i64, ptr }, ptr %l147, !tbaa !27
  %t315 = extractvalue { i64, ptr } %t314, 0
  %t316 = extractvalue { i64, ptr } %t314, 1
  %t317 = mul i64 %t315, 1
  %t318 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t317)
  call void @llvm.memcpy.p0.p0.i64(ptr %t318, ptr %t316, i64 %t317, i1 false)
  %t319 = insertvalue { i64, ptr } undef, i64 %t315, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t318, 1
  %t321 = load ptr, ptr %l145, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %t321, { i64, ptr } %t320)
  br label %bb77
bb77:
  %t323 = load ptr, ptr %l1, !tbaa !29
  %t325 = getelementptr %"compiler/build:Config", ptr %t323, i32 0, i32 10
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  %t328 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t326, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t328, ptr %l151
  br label %bb78
bb78:
  %t329 = load i1, ptr %l151, !tbaa !21
  %t330 = xor i1 %t329, true
  br i1 %t330, label %bb79, label %bb80
bb79:
  %t332 = load ptr, ptr %l1, !tbaa !29
  %t336 = call i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2efuzzRun(ptr %v1, ptr %s0, ptr %s0, ptr %t332, ptr %l10, ptr %l6)
  store i32 %t336, ptr %l156
  br label %bb81
bb80:
  br label %bb82
bb81:
  call void @__olang_scope_close(ptr %s0)
  %t337 = load i32, ptr %l156, !tbaa !23
  store i32 %t337, ptr %rv
  br label %ret
bb82:
  %t338 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t338, ptr %l15, !tbaa !27
  store i64 0, ptr %l16, !tbaa !24
  %t340 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t342 = extractvalue { i64, ptr } %t340, 0
  store i64 %t342, ptr %l17, !tbaa !24
  br label %bb83
bb83:
  %t344 = load i64, ptr %l16, !tbaa !24
  %t345 = load i64, ptr %l17, !tbaa !24
  %t348 = icmp slt i64 %t344, %t345
  %t350 = xor i1 %t348, true
  br i1 %t350, label %bb84, label %bb85
bb84:
  br label %bb89
bb85:
  br label %bb86
bb86:
  %t352 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t352, ptr %l164, !tbaa !27
  %t353 = load i64, ptr %l16, !tbaa !24
  %t355 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t356 = load ptr, ptr %t355, !tbaa !27
  %t357 = getelementptr { i64, ptr }, ptr %t356, i64 %t353
  %t358 = load { i64, ptr }, ptr %t357, !tbaa !37
  %t362 = extractvalue { i64, ptr } %t358, 1
  %t363 = extractvalue { i64, ptr } %t358, 0
  %t364 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t363)
  call void @olang_textcopy(ptr %t364, ptr %t362, i64 %t363)
  %t365 = insertvalue { i64, ptr } undef, i64 %t363, 0
  %t366 = insertvalue { i64, ptr } %t365, ptr %t364, 1
  %t368 = extractvalue { i64, ptr } %t366, 0
  %t369 = extractvalue { i64, ptr } %t366, 1
  %t370 = mul i64 %t368, 1
  %t371 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t370)
  call void @llvm.memcpy.p0.p0.i64(ptr %t371, ptr %t369, i64 %t370, i1 false)
  %t372 = insertvalue { i64, ptr } undef, i64 %t368, 0
  %t373 = insertvalue { i64, ptr } %t372, ptr %t371, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s0, ptr %s0, ptr %l10, { i64, ptr } %t373)
  br label %bb87
bb87:
  br label %bb88
bb88:
  %t376 = load i64, ptr %l16, !tbaa !24
  %t378 = add i64 %t376, 1
  store i64 %t378, ptr %l16, !tbaa !24
  br label %bb83
bb89:
  %t381 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %l10)
  store { i64, ptr } %t381, ptr %l175
  br label %bb90
bb90:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d24, i32 0, i32 1) }, ptr %l176, !tbaa !27
  %t382 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t383 = load { i64, ptr }, ptr %l176, !tbaa !27
  %t384 = call { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t382, { i64, ptr } %t383, i1 false, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  %t385 = extractvalue { i32, %"std/os:Output" } %t384, 1
  %t386 = extractvalue { i32, %"std/os:Output" } %t384, 0
  store i32 %t386, ptr %l178
  %t387 = icmp ne i32 %t386, 0
  br i1 %t387, label %bb92, label %ok.388, !prof !99
ok.388:
  store %"std/os:Output" %t385, ptr %l177
  br label %bb91
bb91:
  %t389 = load %"std/os:Output", ptr %l177
  store %"std/os:Output" %t389, ptr %l173
  br label %bb96
bb92:
  %t390 = load i32, ptr %l178, !tbaa !23
  %t391 = ashr i32 %t390, 16
  %t393 = icmp eq i32 %t391, 1
  store i1 %t393, ptr %l180, !tbaa !21
  %t394 = load i32, ptr %l178, !tbaa !23
  %t395 = ashr i32 %t394, 16
  %t397 = icmp eq i32 %t395, 1
  br i1 %t397, label %bb93, label %bb94
bb93:
  call void @__olang_errpay_pop()
  br label %bb94
bb94:
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb96:
  %t400 = load %"std/os:Output", ptr %l173
  store %"std/os:Output" %t400, ptr %l19
  %t401 = getelementptr %"std/os:Output", ptr %l19, i32 0, i32 0
  %t402 = load i32, ptr %t401, !tbaa !23
  %t404 = icmp sgt i32 %t402, 128
  br i1 %t404, label %bb97, label %bb98
bb97:
  store %olang.scope zeroinitializer, ptr %s23
  %t406 = load ptr, ptr %l1, !tbaa !29
  store ptr %t406, ptr %l186, !tbaa !29
  %t407 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t407, ptr %l187, !tbaa !27
  %t408 = getelementptr %"std/os:Output", ptr %l19, i32 0, i32 0
  %t409 = load i32, ptr %t408, !tbaa !23
  %t411 = sub i32 %t409, 128
  %t413 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s23, i32 %t411)
  store { i64, ptr } %t413, ptr %l190
  br label %bb99
bb98:
  br label %bb102
bb99:
  %t414 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t415 = extractvalue { i64, ptr } %t414, 1
  %t416 = extractvalue { i64, ptr } %t414, 0
  %t417 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t418 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t419 = add i64 %t416, %t418
  %t420 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t421 = extractvalue { i64, ptr } %t420, 1
  %t422 = extractvalue { i64, ptr } %t420, 0
  %t423 = add i64 %t419, %t422
  %t424 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t425 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t426 = add i64 %t423, %t425
  %t427 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t426)
  call void @olang_textcopy(ptr %t427, ptr %t415, i64 %t416)
  %t428 = getelementptr i8, ptr %t427, i64 %t416
  call void @olang_textcopy(ptr %t428, ptr %t417, i64 %t418)
  %t429 = getelementptr i8, ptr %t428, i64 %t418
  call void @olang_textcopy(ptr %t429, ptr %t421, i64 %t422)
  %t430 = getelementptr i8, ptr %t429, i64 %t422
  call void @olang_textcopy(ptr %t430, ptr %t424, i64 %t425)
  %t431 = insertvalue { i64, ptr } undef, i64 %t426, 0
  %t432 = insertvalue { i64, ptr } %t431, ptr %t427, 1
  %t434 = extractvalue { i64, ptr } %t432, 0
  %t435 = extractvalue { i64, ptr } %t432, 1
  %t436 = mul i64 %t434, 1
  %t437 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t436)
  call void @llvm.memcpy.p0.p0.i64(ptr %t437, ptr %t435, i64 %t436, i1 false)
  %t438 = insertvalue { i64, ptr } undef, i64 %t434, 0
  %t439 = insertvalue { i64, ptr } %t438, ptr %t437, 1
  %t440 = load ptr, ptr %l186, !tbaa !29
  %t442 = call { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v1, ptr %s23, ptr %s23, ptr %s23, ptr %t440, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d28, i32 0, i32 1) }, { i64, ptr } %t439)
  store { i64, ptr } %t442, ptr %l193
  br label %bb100
bb100:
  %t443 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t444 = extractvalue { i64, ptr } %t443, 0
  %t445 = extractvalue { i64, ptr } %t443, 1
  %t446 = mul i64 %t444, 1
  %t447 = call ptr @__olang_scope_alloc(ptr %s23, i64 %t446)
  call void @llvm.memcpy.p0.p0.i64(ptr %t447, ptr %t445, i64 %t446, i1 false)
  %t448 = insertvalue { i64, ptr } undef, i64 %t444, 0
  %t449 = insertvalue { i64, ptr } %t448, ptr %t447, 1
  call void @compiler_2fbuild_2esayln(ptr %s23, { i64, ptr } %t449)
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s23)
  br label %bb102
bb102:
  %t451 = getelementptr %"std/os:Output", ptr %l19, i32 0, i32 0
  %t452 = load i32, ptr %t451, !tbaa !23
  %t454 = icmp eq i32 %t452, 3
  br i1 %t454, label %bb103, label %bb104
bb103:
  %t456 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t458 = extractvalue { i64, ptr } %t456, 0
  %t460 = icmp sgt i64 %t458, 0
  store i1 %t460, ptr %l197, !tbaa !21
  br label %bb105
bb104:
  store i1 false, ptr %l197, !tbaa !21
  br label %bb105
bb105:
  %t462 = load i1, ptr %l197, !tbaa !21
  br i1 %t462, label %bb106, label %bb107
bb106:
  store %olang.scope zeroinitializer, ptr %s25
  %t463 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t464 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t465 = getelementptr %"compiler/build:Program", ptr %l6, i32 0, i32 7
  %t469 = call { i64, ptr } @compiler_2fbuild_2enoTestNamed(ptr %v2, ptr %v4, ptr %s0, ptr %s25, { i64, ptr } %t463, { i64, ptr } %t464, ptr %t465)
  store { i64, ptr } %t469, ptr %l204
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t470 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t471 = extractvalue { i64, ptr } %t470, 0
  %t472 = extractvalue { i64, ptr } %t470, 1
  %t473 = mul i64 %t471, 1
  %t474 = call ptr @__olang_scope_alloc(ptr %s25, i64 %t473)
  call void @llvm.memcpy.p0.p0.i64(ptr %t474, ptr %t472, i64 %t473, i1 false)
  %t475 = insertvalue { i64, ptr } undef, i64 %t471, 0
  %t476 = insertvalue { i64, ptr } %t475, ptr %t474, 1
  call void @compiler_2fbuild_2esayln(ptr %s25, { i64, ptr } %t476)
  br label %bb109
bb109:
  call void @__olang_scope_close(ptr %s25)
  call void @__olang_scope_close(ptr %s0)
  store i32 3, ptr %rv
  br label %ret
bb110:
  %t479 = getelementptr %"std/os:Output", ptr %l19, i32 0, i32 0
  %t480 = load i32, ptr %t479, !tbaa !23
  %t482 = icmp eq i32 %t480, 0
  br i1 %t482, label %bb111, label %bb112
bb111:
  store i32 0, ptr %l209, !tbaa !23
  br label %bb113
bb112:
  store i32 1, ptr %l209, !tbaa !23
  br label %bb113
bb113:
  call void @__olang_scope_close(ptr %s0)
  %t484 = load i32, ptr %l209, !tbaa !23
  store i32 %t484, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2flisting_2eRun_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4, ptr %a5) #0 {
entry:
  %l1 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca %"compiler/build:Program"
  %l7 = alloca %"compiler/build:Listed"
  %l14 = alloca %"compiler/build:Program"
  %l15 = alloca %"compiler/build:Listed"
  %l22 = alloca %"compiler/build:Listed"
  %l23 = alloca i32
  %l27 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l40 = alloca %"compiler/listing:Inputs"
  %l42 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  %t25 = alloca %"compiler/build:Program", align 8
  store ptr %a1, ptr %l1
  store i1 %a4, ptr %l4
  store ptr %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 14
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t7 = extractvalue { i64, ptr } %a3, 1
  %t8 = extractvalue { i64, ptr } %a3, 0
  %t9 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t8)
  call void @olang_textcopy(ptr %t9, ptr %t7, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  %t21 = getelementptr %"compiler/build:Config", ptr %t4, i32 0, i32 15
  store { i64, ptr } %t18, ptr %t21, !tbaa !27
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/build:Config", ptr %t22, i32 0, i32 22
  store i1 true, ptr %t24, !tbaa !21
  call void @compiler_2fbuild_3aProgram_2ector(ptr %t25, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t25, i64 224, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l14, i64 224, i1 false)
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = load i1, ptr %l4, !tbaa !21
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t37 = call { i32, %"compiler/build:Listed" } @compiler_2fbuild_2eListed_2eListingCode_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %s0, ptr %v4, ptr %s0, ptr %a0, ptr %t27, { i64, ptr } %a2, i1 %t29, ptr %l6, ptr %t30)
  %t38 = extractvalue { i32, %"compiler/build:Listed" } %t37, 1
  %t39 = extractvalue { i32, %"compiler/build:Listed" } %t37, 0
  store i32 %t39, ptr %l23
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb3, label %ok.41, !prof !99
ok.41:
  store %"compiler/build:Listed" %t38, ptr %l22
  br label %bb2
bb2:
  %t42 = load %"compiler/build:Listed", ptr %l22
  store %"compiler/build:Listed" %t42, ptr %l15
  br label %bb11
bb3:
  %t43 = load i32, ptr %l23, !tbaa !23
  %t44 = icmp eq i32 %t43, 65536
  br i1 %t44, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  %t46 = load i32, ptr %l23, !tbaa !23
  %t47 = icmp eq i32 %t46, 65537
  br i1 %t47, label %bb7, label %bb8
bb6:
  %t49 = load ptr, ptr %l5, !tbaa !29
  %t51 = call i32 @compiler_2fbuild_2eFinish(ptr %v4, ptr %t49)
  store i32 %t51, ptr %l27
  br label %bb10
bb7:
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_4ce37e8669e18741_b51ffe42b73135c5)
  unreachable
bb9:
  call void @__olang_scope_close(ptr %s0)
  store i32 1, ptr %rv
  br label %ret
bb10:
  call void @__olang_scope_close(ptr %s0)
  %t53 = load i32, ptr %l27, !tbaa !23
  store i32 %t53, ptr %rv
  br label %ret
bb11:
  %t54 = load %"compiler/build:Listed", ptr %l15
  store %"compiler/build:Listed" %t54, ptr %l7
  store ptr %l6, ptr %l29, !tbaa !29
  store ptr %l7, ptr %l30, !tbaa !29
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load i1, ptr %l4, !tbaa !21
  %t59 = call { i64, ptr } @compiler_2flisting_2ehow(ptr %v1, ptr %s0, ptr %t55, i1 %t56)
  store { i64, ptr } %t59, ptr %l33
  br label %bb12
bb12:
  %t60 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t61 = extractvalue { i64, ptr } %t60, 0
  %t62 = extractvalue { i64, ptr } %t60, 1
  %t63 = mul i64 %t61, 1
  %t64 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t63)
  call void @llvm.memcpy.p0.p0.i64(ptr %t64, ptr %t62, i64 %t63, i1 false)
  %t65 = insertvalue { i64, ptr } undef, i64 %t61, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t64, 1
  store { i64, ptr } %t66, ptr %l34, !tbaa !27
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t68 = load i1, ptr %l4, !tbaa !21
  %t71 = call { i64, ptr } @compiler_2flisting_2ecommentOf(ptr %v1, ptr %s0, ptr %t67, i1 %t68)
  store { i64, ptr } %t71, ptr %l37
  br label %bb13
bb13:
  %t72 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t73 = extractvalue { i64, ptr } %t72, 0
  %t74 = extractvalue { i64, ptr } %t72, 1
  %t75 = mul i64 %t73, 1
  %t76 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t75)
  call void @llvm.memcpy.p0.p0.i64(ptr %t76, ptr %t74, i64 %t75, i1 false)
  %t77 = insertvalue { i64, ptr } undef, i64 %t73, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  %t79 = load i1, ptr %l4, !tbaa !21
  %t80 = load ptr, ptr %l29, !tbaa !29
  %t81 = load ptr, ptr %l30, !tbaa !29
  %t82 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t85 = call %"compiler/listing:Inputs" @compiler_2flisting_3aInputs_2ector(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t80, ptr %t81, { i64, ptr } %t82, { i64, ptr } %t78, i1 %t79)
  store %"compiler/listing:Inputs" %t85, ptr %l40
  br label %bb14
bb14:
  %t86 = load %"compiler/listing:Inputs", ptr %l40
  %t87 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 56, i64 8)
  store %"compiler/listing:Inputs" %t86, ptr %t87
  %t89 = call { i64, ptr } @compiler_2flisting_2eRender(ptr %s0, ptr %s0, ptr %t87)
  store { i64, ptr } %t89, ptr %l42
  br label %bb15
bb15:
  %t90 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t91 = extractvalue { i64, ptr } %t90, 0
  %t92 = extractvalue { i64, ptr } %t90, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  call void @compiler_2flisting_2esay(ptr %s0, { i64, ptr } %t96)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2folang_2eRunWith_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca %"compiler/diag:Diagnostics"
  %l3 = alloca %"compiler/build:Config"
  %l4 = alloca %"compiler/olang:CommandLine"
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca ptr
  %l11 = alloca i64
  %l14 = alloca i1
  %l15 = alloca %"compiler/diag:Diagnostics"
  %l16 = alloca %"compiler/build:Config"
  %l18 = alloca %"compiler/olang:CommandLine"
  %l22 = alloca %"compiler/olang:CommandLine"
  %l23 = alloca i32
  %l25 = alloca i1
  %l27 = alloca i32
  %l31 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i32
  %l37 = alloca i1
  %l39 = alloca i32
  %l41 = alloca i32
  %l45 = alloca i1
  %l48 = alloca { i64, ptr }
  %l50 = alloca i32
  %l54 = alloca i1
  %l56 = alloca i1
  %l58 = alloca ptr
  %l59 = alloca ptr
  %l61 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca i1
  %l66 = alloca i32
  %l71 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca ptr
  %l76 = alloca { i64, ptr }
  %l79 = alloca i32
  %l80 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i32
  %l86 = alloca i1
  %l88 = alloca i32
  %l90 = alloca i32
  %l95 = alloca i32
  %l99 = alloca { i64, ptr }
  %l100 = alloca { i64, ptr }
  %l101 = alloca i32
  %l103 = alloca i1
  %l106 = alloca { i64, ptr }
  %l110 = alloca i1
  %l112 = alloca { i64, ptr }
  %l113 = alloca { i64, ptr }
  %l114 = alloca { i64, ptr }
  %l116 = alloca i32
  %l121 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l123 = alloca { i64, ptr }
  %l125 = alloca i32
  %l130 = alloca { i64, ptr }
  %l134 = alloca i32
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l143 = alloca { i64, ptr }
  %l145 = alloca i32
  %l150 = alloca i32
  %l154 = alloca ptr
  %l155 = alloca { i64, ptr }
  %l156 = alloca { i64, ptr }
  %l157 = alloca i32
  %l159 = alloca i1
  %l162 = alloca { i64, ptr }
  %l166 = alloca i32
  %l168 = alloca { i64, ptr }
  %l174 = alloca { i64, ptr }
  %l177 = alloca i32
  %l183 = alloca { i64, ptr }
  %l186 = alloca i32
  %l190 = alloca ptr
  %l191 = alloca ptr
  %l192 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l195 = alloca { i64, ptr }
  %l197 = alloca i32
  %l201 = alloca ptr
  %l202 = alloca ptr
  %l203 = alloca { i64, ptr }
  %l204 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l208 = alloca i32
  %l212 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l214 = alloca { i64, ptr }
  %l219 = alloca i64
  %l221 = alloca i64
  %l226 = alloca { i64, ptr }
  %l233 = alloca ptr
  %l234 = alloca ptr
  %l235 = alloca { i64, ptr }
  %l236 = alloca { i64, ptr }
  %l238 = alloca { i64, ptr }
  %l240 = alloca i32
  %l244 = alloca i1
  %l246 = alloca ptr
  %l247 = alloca ptr
  %l248 = alloca { i64, ptr }
  %l249 = alloca { i64, ptr }
  %l250 = alloca ptr
  %l252 = alloca { i64, ptr }
  %l253 = alloca i32
  %l257 = alloca ptr
  %l258 = alloca ptr
  %l259 = alloca { i64, ptr }
  %l260 = alloca { i64, ptr }
  %l261 = alloca ptr
  %l263 = alloca { i64, ptr }
  %l264 = alloca i32
  %l265 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l267 = alloca i32
  %l269 = alloca i1
  %l272 = alloca { i64, ptr }
  %l276 = alloca ptr
  %l277 = alloca { i64, ptr }
  %l279 = alloca { i64, ptr }
  %l280 = alloca { i64, ptr }
  %l282 = alloca { i64, ptr }
  %l283 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s22 = alloca %olang.scope
  %rv = alloca i32
  %t2 = alloca %"compiler/diag:Diagnostics", align 8
  %t4 = alloca %"compiler/build:Config", align 8
  %t10 = alloca %"compiler/olang:CommandLine", align 8
  store { i64, ptr } %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call i1 @compiler_2fdiag_2eColorWanted()
  store i1 %t1, ptr %l14
  br label %bb1
bb1:
  %t3 = load i1, ptr %l14, !tbaa !21
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t2, ptr %s0, i1 %t3)
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %t2, i64 544, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l15, i64 544, i1 false)
  call void @compiler_2fbuild_3aConfig_2ector(ptr %t4, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t4, i64 584, i1 false)
  br label %bb3
bb3:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l16, i64 584, i1 false)
  %t5 = getelementptr %"compiler/diag:Diagnostics", ptr %l2, i32 0, i32 0
  %t6 = load i1, ptr %t5, !tbaa !21
  %t8 = getelementptr %"compiler/build:Config", ptr %l3, i32 0, i32 21
  store i1 %t6, ptr %t8, !tbaa !21
  %t9 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t14 = call i32 @compiler_2folang_2eCommandLine_2ePrepare(ptr %t10, ptr %v0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t9, ptr %l3, ptr %l2)
  store i32 %t14, ptr %l23
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb5, label %ok.16, !prof !99
ok.16:
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t10, i64 240, i1 false)
  br label %bb4
bb4:
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %l22, i64 240, i1 false)
  br label %bb8
bb5:
  %t17 = load i32, ptr %l23, !tbaa !23
  %t18 = ashr i32 %t17, 16
  %t20 = icmp eq i32 %t18, 1
  store i1 %t20, ptr %l25, !tbaa !21
  br label %bb6
bb6:
  %t22 = call i32 @compiler_2folang_2esaid(ptr %s0, ptr %l2)
  store i32 %t22, ptr %l27
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  %t23 = load i32, ptr %l27, !tbaa !23
  store i32 %t23, ptr %rv
  br label %ret
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %l18, i64 240, i1 false)
  %t24 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t25 = load i64, ptr %t24, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2folang_2eHelp, !tbaa !24
  %t29 = icmp eq i64 %t25, %t26
  br i1 %t29, label %bb9, label %bb10
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = call { i32, { i64, ptr } } @compiler_2folang_2ehelp(ptr %s0, ptr %s0, ptr %s2, ptr %l4, ptr %l2)
  %t34 = extractvalue { i32, { i64, ptr } } %t33, 1
  %t35 = extractvalue { i32, { i64, ptr } } %t33, 0
  store i32 %t35, ptr %l35
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb12, label %ok.37, !prof !99
ok.37:
  store { i64, ptr } %t34, ptr %l34
  br label %bb11
bb10:
  br label %bb17
bb11:
  %t38 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t38, ptr %l31, !tbaa !27
  br label %bb15
bb12:
  %t39 = load i32, ptr %l35, !tbaa !23
  %t40 = ashr i32 %t39, 16
  %t42 = icmp eq i32 %t40, 1
  store i1 %t42, ptr %l37, !tbaa !21
  br label %bb13
bb13:
  %t44 = call i32 @compiler_2folang_2esaid(ptr %s0, ptr %l2)
  store i32 %t44, ptr %l39
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t45 = load i32, ptr %l39, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
bb15:
  %t46 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t49 = call i32 @compiler_2folang_2ewrite(ptr %s2, { i64, ptr } %t46)
  store i32 %t49, ptr %l41
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t50 = load i32, ptr %l41, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
bb17:
  %t51 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t56 = icmp eq i64 %t52, %t53
  br i1 %t56, label %bb18, label %bb19
bb18:
  %t58 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 11
  %t59 = load i1, ptr %t58, !tbaa !21
  store i1 %t59, ptr %l45, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb20
bb20:
  %t61 = load i1, ptr %l45, !tbaa !21
  br i1 %t61, label %bb21, label %bb22
bb21:
  %t62 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t64 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t62, i64 0)
  store { i64, ptr } %t64, ptr %l48
  br label %bb23
bb22:
  br label %bb25
bb23:
  %t65 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t67 = call i32 @compiler_2fsession_2eCapsMode(ptr %s0, ptr %s0, { i64, ptr } %t65, ptr %l3)
  store i32 %t67, ptr %l50
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t68 = load i32, ptr %l50, !tbaa !23
  store i32 %t68, ptr %rv
  br label %ret
bb25:
  %t69 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t70 = load i64, ptr %t69, !tbaa !24
  %t71 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t74 = icmp eq i64 %t70, %t71
  br i1 %t74, label %bb26, label %bb27
bb26:
  %t76 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 12
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t77, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t79, ptr %l56
  br label %bb28
bb27:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb29
bb28:
  %t80 = load i1, ptr %l56, !tbaa !21
  %t81 = xor i1 %t80, true
  store i1 %t81, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t83 = load i1, ptr %l54, !tbaa !21
  br i1 %t83, label %bb30, label %bb31
bb30:
  store %olang.scope zeroinitializer, ptr %s5
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l58, !tbaa !29
  store ptr %l3, ptr %l59, !tbaa !29
  %t85 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t87 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t85, i64 0)
  store { i64, ptr } %t87, ptr %l61
  br label %bb32
bb31:
  br label %bb35
bb32:
  %t88 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 3
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l62, !tbaa !27
  %t90 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 12
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s5, { i64, ptr } %t91, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t93, ptr %l64
  br label %bb33
bb33:
  %t94 = load ptr, ptr %l58, !tbaa !29
  %t95 = load ptr, ptr %l59, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t97 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t98 = load i1, ptr %l64, !tbaa !21
  %t100 = call i32 @compiler_2flisting_2eRun_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t94, ptr %t95, { i64, ptr } %t96, { i64, ptr } %t97, i1 %t98, ptr %l2)
  store i32 %t100, ptr %l66
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  %t101 = load i32, ptr %l66, !tbaa !23
  store i32 %t101, ptr %rv
  br label %ret
bb35:
  %t102 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t103 = load i64, ptr %t102, !tbaa !24
  %t104 = load i64, ptr @G_2ecompiler_2folang_2eExplain, !tbaa !24
  %t107 = icmp eq i64 %t103, %t104
  br i1 %t107, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t109 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t111 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t109)
  store i64 %t111, ptr %l71
  br label %bb38
bb37:
  br label %bb50
bb38:
  %t112 = load i64, ptr %l71, !tbaa !24
  %t113 = icmp eq i64 %t112, 1
  br i1 %t113, label %bb39, label %bb40
bb39:
  %t115 = load ptr, ptr %l1, !tbaa !29
  store ptr %t115, ptr %l73, !tbaa !29
  store ptr %l3, ptr %l74, !tbaa !29
  %t116 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t118 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t116, i64 0)
  store { i64, ptr } %t118, ptr %l76
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t119 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 3
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  %t121 = load ptr, ptr %l73, !tbaa !29
  %t122 = load ptr, ptr %l74, !tbaa !29
  %t123 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t126 = call i32 @compiler_2fbuild_2eExplain_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t121, ptr %t122, { i64, ptr } %t123, { i64, ptr } %t120, ptr %l2)
  store i32 %t126, ptr %l79
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t127 = load i32, ptr %l79, !tbaa !23
  store i32 %t127, ptr %rv
  br label %ret
bb43:
  %t128 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 3
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  %t132 = call { i32, { i64, ptr } } @compiler_2folang_2eexplainRule(ptr %s0, ptr %s0, ptr %s6, { i64, ptr } %t129, ptr %l2)
  %t133 = extractvalue { i32, { i64, ptr } } %t132, 1
  %t134 = extractvalue { i32, { i64, ptr } } %t132, 0
  store i32 %t134, ptr %l84
  %t135 = icmp ne i32 %t134, 0
  br i1 %t135, label %bb45, label %ok.136, !prof !99
ok.136:
  store { i64, ptr } %t133, ptr %l83
  br label %bb44
bb44:
  %t137 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t137, ptr %l80, !tbaa !27
  br label %bb48
bb45:
  %t138 = load i32, ptr %l84, !tbaa !23
  %t139 = ashr i32 %t138, 16
  %t141 = icmp eq i32 %t139, 1
  store i1 %t141, ptr %l86, !tbaa !21
  br label %bb46
bb46:
  %t143 = call i32 @compiler_2folang_2esaid(ptr %s0, ptr %l2)
  store i32 %t143, ptr %l88
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t144 = load i32, ptr %l88, !tbaa !23
  store i32 %t144, ptr %rv
  br label %ret
bb48:
  %t145 = load { i64, ptr }, ptr %l80, !tbaa !27
  %t148 = call i32 @compiler_2folang_2ewrite(ptr %s6, { i64, ptr } %t145)
  store i32 %t148, ptr %l90
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t149 = load i32, ptr %l90, !tbaa !23
  store i32 %t149, ptr %rv
  br label %ret
bb50:
  %t150 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t151 = load i64, ptr %t150, !tbaa !24
  %t152 = load i64, ptr @G_2ecompiler_2folang_2eFormat, !tbaa !24
  %t155 = icmp eq i64 %t151, %t152
  br i1 %t155, label %bb51, label %bb52
bb51:
  %t158 = call i32 @compiler_2folang_2eformat(ptr %s0, ptr %l4)
  store i32 %t158, ptr %l95
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_scope_close(ptr %s0)
  %t159 = load i32, ptr %l95, !tbaa !23
  store i32 %t159, ptr %rv
  br label %ret
bb54:
  %t160 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t161 = load i64, ptr %t160, !tbaa !24
  %t162 = load i64, ptr @G_2ecompiler_2folang_2eFix, !tbaa !24
  %t165 = icmp eq i64 %t161, %t162
  br i1 %t165, label %bb55, label %bb56
bb55:
  store %olang.scope zeroinitializer, ptr %s10
  %t167 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s10, ptr %s10, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d31, i32 0, i32 1) })
  %t168 = extractvalue { i32, { i64, ptr } } %t167, 1
  %t169 = extractvalue { i32, { i64, ptr } } %t167, 0
  store i32 %t169, ptr %l101
  %t170 = icmp ne i32 %t169, 0
  br i1 %t170, label %bb58, label %ok.171, !prof !99
ok.171:
  store { i64, ptr } %t168, ptr %l100
  br label %bb57
bb56:
  br label %bb66
bb57:
  %t172 = load { i64, ptr }, ptr %l100, !tbaa !27
  store { i64, ptr } %t172, ptr %l99, !tbaa !27
  br label %bb62
bb58:
  %t173 = load i32, ptr %l101, !tbaa !23
  %t174 = ashr i32 %t173, 16
  %t176 = icmp eq i32 %t174, 1
  store i1 %t176, ptr %l103, !tbaa !21
  %t177 = load i32, ptr %l101, !tbaa !23
  %t178 = ashr i32 %t177, 16
  %t180 = icmp eq i32 %t178, 1
  br i1 %t180, label %bb59, label %bb60
bb59:
  call void @__olang_errpay_pop()
  br label %bb60
bb60:
  br label %bb61
bb61:
  %t182 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t182, ptr %l106, !tbaa !27
  %t183 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t184 = load ptr, ptr %t183, !tbaa !27
  %t185 = getelementptr { i64, ptr }, ptr %t184, i64 0
  %t186 = load { i64, ptr }, ptr %t185, !tbaa !37
  %t188 = extractvalue { i64, ptr } %t186, 1
  %t189 = extractvalue { i64, ptr } %t186, 0
  %t190 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t189)
  call void @olang_textcopy(ptr %t190, ptr %t188, i64 %t189)
  %t191 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  %t194 = extractvalue { i64, ptr } %t192, 0
  %t195 = extractvalue { i64, ptr } %t192, 1
  %t196 = mul i64 %t194, 1
  %t197 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t196)
  call void @llvm.memcpy.p0.p0.i64(ptr %t197, ptr %t195, i64 %t196, i1 false)
  %t198 = insertvalue { i64, ptr } undef, i64 %t194, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  store { i64, ptr } %t199, ptr %l99, !tbaa !27
  br label %bb62
bb62:
  %t201 = load { i64, ptr }, ptr %l99, !tbaa !27
  store { i64, ptr } %t201, ptr %l7, !tbaa !27
  %t202 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 9
  %t203 = load i1, ptr %t202, !tbaa !21
  store i1 %t203, ptr %l110, !tbaa !21
  %t204 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t206 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t204)
  store { i64, ptr } %t206, ptr %l112
  br label %bb63
bb63:
  %t207 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t207, ptr %l113, !tbaa !27
  %t208 = call { i64, ptr } @compiler_2fload_2eStdDir(ptr %s10)
  store { i64, ptr } %t208, ptr %l114
  br label %bb64
bb64:
  %t209 = load { i64, ptr }, ptr %l114, !tbaa !27
  %t210 = extractvalue { i64, ptr } %t209, 0
  %t211 = extractvalue { i64, ptr } %t209, 1
  %t212 = mul i64 %t210, 1
  %t213 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t212)
  call void @llvm.memcpy.p0.p0.i64(ptr %t213, ptr %t211, i64 %t212, i1 false)
  %t214 = insertvalue { i64, ptr } undef, i64 %t210, 0
  %t215 = insertvalue { i64, ptr } %t214, ptr %t213, 1
  %t216 = load i1, ptr %l110, !tbaa !21
  %t217 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t218 = load { i64, ptr }, ptr %l113, !tbaa !27
  %t220 = call i32 @compiler_2ffix_2eFiles(ptr %s0, ptr %s10, ptr %s10, i1 %t216, { i64, ptr } %t217, { i64, ptr } %t218, { i64, ptr } %t215)
  store i32 %t220, ptr %l116
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t221 = load i32, ptr %l116, !tbaa !23
  store i32 %t221, ptr %rv
  br label %ret
bb66:
  %t222 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t223 = load i64, ptr %t222, !tbaa !24
  %t224 = load i64, ptr @G_2ecompiler_2folang_2eBindgen, !tbaa !24
  %t227 = icmp eq i64 %t223, %t224
  br i1 %t227, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s12
  %t229 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t231 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t229, i64 0)
  store { i64, ptr } %t231, ptr %l121
  br label %bb69
bb68:
  br label %bb72
bb69:
  %t232 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 8
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l122, !tbaa !27
  %t234 = call { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %s12)
  store { i64, ptr } %t234, ptr %l123
  br label %bb70
bb70:
  %t235 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t236 = extractvalue { i64, ptr } %t235, 0
  %t237 = extractvalue { i64, ptr } %t235, 1
  %t238 = mul i64 %t236, 1
  %t239 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t238)
  call void @llvm.memcpy.p0.p0.i64(ptr %t239, ptr %t237, i64 %t238, i1 false)
  %t240 = insertvalue { i64, ptr } undef, i64 %t236, 0
  %t241 = insertvalue { i64, ptr } %t240, ptr %t239, 1
  %t242 = load { i64, ptr }, ptr %l121, !tbaa !27
  %t243 = load { i64, ptr }, ptr %l122, !tbaa !27
  %t245 = call i32 @compiler_2fbindgen_2eRun(ptr %s0, ptr %s0, ptr %s12, { i64, ptr } %t242, { i64, ptr } %t243, { i64, ptr } %t241)
  store i32 %t245, ptr %l125
  br label %bb71
bb71:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  %t246 = load i32, ptr %l125, !tbaa !23
  store i32 %t246, ptr %rv
  br label %ret
bb72:
  %t247 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t248 = load i64, ptr %t247, !tbaa !24
  %t249 = load i64, ptr @G_2ecompiler_2folang_2eDoc, !tbaa !24
  %t252 = icmp eq i64 %t248, %t249
  br i1 %t252, label %bb73, label %bb74
bb73:
  %t254 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t256 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t254)
  store { i64, ptr } %t256, ptr %l130
  br label %bb75
bb74:
  br label %bb77
bb75:
  %t257 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 3
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  %t259 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 10
  %t260 = load { i64, ptr }, ptr %t259, !tbaa !27
  %t261 = load { i64, ptr }, ptr %l130, !tbaa !27
  %t265 = call i32 @compiler_2fsession_2eDocMode(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t261, { i64, ptr } %t258, { i64, ptr } %t260, ptr %l3)
  store i32 %t265, ptr %l134
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  %t266 = load i32, ptr %l134, !tbaa !23
  store i32 %t266, ptr %rv
  br label %ret
bb77:
  %t267 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t268 = load i64, ptr %t267, !tbaa !24
  %t269 = load i64, ptr @G_2ecompiler_2folang_2eApi, !tbaa !24
  %t272 = icmp eq i64 %t268, %t269
  br i1 %t272, label %bb78, label %bb79
bb78:
  %t274 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t276 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t274, i64 0)
  store { i64, ptr } %t276, ptr %l139
  br label %bb80
bb79:
  br label %bb84
bb80:
  %t277 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t279 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t277, i64 1)
  store { i64, ptr } %t279, ptr %l141
  br label %bb81
bb81:
  %t280 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t282 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t280, i64 2)
  store { i64, ptr } %t282, ptr %l143
  br label %bb82
bb82:
  %t283 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t284 = load { i64, ptr }, ptr %l141, !tbaa !27
  %t285 = load { i64, ptr }, ptr %l143, !tbaa !27
  %t287 = call i32 @compiler_2fapi_2eMode(ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t283, { i64, ptr } %t284, { i64, ptr } %t285, ptr %l3)
  store i32 %t287, ptr %l145
  br label %bb83
bb83:
  call void @__olang_scope_close(ptr %s0)
  %t288 = load i32, ptr %l145, !tbaa !23
  store i32 %t288, ptr %rv
  br label %ret
bb84:
  %t289 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t290 = load i64, ptr %t289, !tbaa !24
  %t291 = load i64, ptr @G_2ecompiler_2folang_2eLsp, !tbaa !24
  %t294 = icmp eq i64 %t290, %t291
  br i1 %t294, label %bb85, label %bb86
bb85:
  %t297 = call i32 @compiler_2flsp_2eServe(ptr %s0, ptr %l3)
  store i32 %t297, ptr %l150
  br label %bb87
bb86:
  br label %bb88
bb87:
  call void @__olang_scope_close(ptr %s0)
  %t298 = load i32, ptr %l150, !tbaa !23
  store i32 %t298, ptr %rv
  br label %ret
bb88:
  %t299 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t300 = load i64, ptr %t299, !tbaa !24
  %t301 = load i64, ptr @G_2ecompiler_2folang_2eMcp, !tbaa !24
  %t304 = icmp eq i64 %t300, %t301
  br i1 %t304, label %bb89, label %bb90
bb89:
  store %olang.scope zeroinitializer, ptr %s16
  store ptr %l3, ptr %l154, !tbaa !29
  %t306 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s16, ptr %s16, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d32, i32 0, i32 1) })
  %t307 = extractvalue { i32, { i64, ptr } } %t306, 1
  %t308 = extractvalue { i32, { i64, ptr } } %t306, 0
  store i32 %t308, ptr %l157
  %t309 = icmp ne i32 %t308, 0
  br i1 %t309, label %bb92, label %ok.310, !prof !99
ok.310:
  store { i64, ptr } %t307, ptr %l156
  br label %bb91
bb90:
  br label %bb98
bb91:
  %t311 = load { i64, ptr }, ptr %l156, !tbaa !27
  store { i64, ptr } %t311, ptr %l155, !tbaa !27
  br label %bb96
bb92:
  %t312 = load i32, ptr %l157, !tbaa !23
  %t313 = ashr i32 %t312, 16
  %t315 = icmp eq i32 %t313, 1
  store i1 %t315, ptr %l159, !tbaa !21
  %t316 = load i32, ptr %l157, !tbaa !23
  %t317 = ashr i32 %t316, 16
  %t319 = icmp eq i32 %t317, 1
  br i1 %t319, label %bb93, label %bb94
bb93:
  call void @__olang_errpay_pop()
  br label %bb94
bb94:
  br label %bb95
bb95:
  %t321 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t321, ptr %l162, !tbaa !27
  %t322 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t323 = load ptr, ptr %t322, !tbaa !27
  %t324 = getelementptr { i64, ptr }, ptr %t323, i64 0
  %t325 = load { i64, ptr }, ptr %t324, !tbaa !37
  %t327 = extractvalue { i64, ptr } %t325, 1
  %t328 = extractvalue { i64, ptr } %t325, 0
  %t329 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t328)
  call void @olang_textcopy(ptr %t329, ptr %t327, i64 %t328)
  %t330 = insertvalue { i64, ptr } undef, i64 %t328, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t329, 1
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = extractvalue { i64, ptr } %t331, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  store { i64, ptr } %t338, ptr %l155, !tbaa !27
  br label %bb96
bb96:
  %t340 = load ptr, ptr %l154, !tbaa !29
  %t341 = load { i64, ptr }, ptr %l155, !tbaa !27
  %t342 = call i32 @compiler_2fmcp_2eServe(ptr %s0, ptr %s16, ptr %t340, { i64, ptr } %t341)
  store i32 %t342, ptr %l166
  br label %bb97
bb97:
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  %t343 = load i32, ptr %l166, !tbaa !23
  store i32 %t343, ptr %rv
  br label %ret
bb98:
  %t344 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 1
  %t346 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t344)
  store { i64, ptr } %t346, ptr %l168
  br label %bb99
bb99:
  %t347 = load { i64, ptr }, ptr %l168, !tbaa !27
  store { i64, ptr } %t347, ptr %l8, !tbaa !27
  %t348 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t349 = load i64, ptr %t348, !tbaa !24
  %t350 = load i64, ptr @G_2ecompiler_2folang_2eCompile, !tbaa !24
  %t353 = icmp eq i64 %t349, %t350
  br i1 %t353, label %bb100, label %bb101
bb100:
  %t355 = load ptr, ptr %l1, !tbaa !29
  %t356 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t356, ptr %l174, !tbaa !27
  %t357 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t358 = load ptr, ptr %t357, !tbaa !27
  %t359 = getelementptr { i64, ptr }, ptr %t358, i64 0
  %t360 = load { i64, ptr }, ptr %t359, !tbaa !37
  %t365 = call i32 @compiler_2fbuild_2eCompile_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %t355, ptr %l3, { i64, ptr } %t360, ptr %l2)
  store i32 %t365, ptr %l177
  br label %bb102
bb101:
  br label %bb103
bb102:
  call void @__olang_scope_close(ptr %s0)
  %t366 = load i32, ptr %l177, !tbaa !23
  store i32 %t366, ptr %rv
  br label %ret
bb103:
  %t367 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t368 = load i64, ptr %t367, !tbaa !24
  %t369 = load i64, ptr @G_2ecompiler_2folang_2eBuild, !tbaa !24
  %t372 = icmp eq i64 %t368, %t369
  br i1 %t372, label %bb104, label %bb105
bb104:
  %t374 = load ptr, ptr %l1, !tbaa !29
  %t375 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t375, ptr %l183, !tbaa !27
  %t376 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t377 = load ptr, ptr %t376, !tbaa !27
  %t378 = getelementptr { i64, ptr }, ptr %t377, i64 0
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !37
  %t384 = call i32 @compiler_2fbuild_2eBuildProgram_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %t374, ptr %l3, { i64, ptr } %t379, ptr %l2)
  store i32 %t384, ptr %l186
  br label %bb106
bb105:
  br label %bb107
bb106:
  call void @__olang_scope_close(ptr %s0)
  %t385 = load i32, ptr %l186, !tbaa !23
  store i32 %t385, ptr %rv
  br label %ret
bb107:
  %t386 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t387 = load i64, ptr %t386, !tbaa !24
  %t388 = load i64, ptr @G_2ecompiler_2folang_2eRun, !tbaa !24
  %t391 = icmp eq i64 %t387, %t388
  br i1 %t391, label %bb108, label %bb109
bb108:
  %t393 = load ptr, ptr %l1, !tbaa !29
  store ptr %t393, ptr %l190, !tbaa !29
  store ptr %l3, ptr %l191, !tbaa !29
  %t394 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t394, ptr %l192, !tbaa !27
  %t395 = getelementptr { i64, ptr }, ptr %l192, i32 0, i32 1
  %t396 = load ptr, ptr %t395, !tbaa !27
  %t397 = getelementptr { i64, ptr }, ptr %t396, i64 0
  %t398 = load { i64, ptr }, ptr %t397, !tbaa !37
  store { i64, ptr } %t398, ptr %l193, !tbaa !27
  %t399 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 5
  %t401 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t399)
  store { i64, ptr } %t401, ptr %l195
  br label %bb110
bb109:
  br label %bb112
bb110:
  %t402 = load ptr, ptr %l190, !tbaa !29
  %t403 = load ptr, ptr %l191, !tbaa !29
  %t404 = load { i64, ptr }, ptr %l193, !tbaa !27
  %t405 = load { i64, ptr }, ptr %l195, !tbaa !27
  %t407 = call i32 @compiler_2fbuild_2eRunProgram_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t402, ptr %t403, { i64, ptr } %t404, { i64, ptr } %t405, ptr %l2)
  store i32 %t407, ptr %l197
  br label %bb111
bb111:
  call void @__olang_scope_close(ptr %s0)
  %t408 = load i32, ptr %l197, !tbaa !23
  store i32 %t408, ptr %rv
  br label %ret
bb112:
  %t409 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t410 = load i64, ptr %t409, !tbaa !24
  %t411 = load i64, ptr @G_2ecompiler_2folang_2eProfile, !tbaa !24
  %t414 = icmp eq i64 %t410, %t411
  br i1 %t414, label %bb113, label %bb114
bb113:
  %t416 = load ptr, ptr %l1, !tbaa !29
  store ptr %t416, ptr %l201, !tbaa !29
  store ptr %l3, ptr %l202, !tbaa !29
  %t417 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t417, ptr %l203, !tbaa !27
  %t418 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t419 = load ptr, ptr %t418, !tbaa !27
  %t420 = getelementptr { i64, ptr }, ptr %t419, i64 0
  %t421 = load { i64, ptr }, ptr %t420, !tbaa !37
  store { i64, ptr } %t421, ptr %l204, !tbaa !27
  %t422 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 5
  %t424 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t422)
  store { i64, ptr } %t424, ptr %l206
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t425 = load ptr, ptr %l201, !tbaa !29
  %t426 = load ptr, ptr %l202, !tbaa !29
  %t427 = load { i64, ptr }, ptr %l204, !tbaa !27
  %t428 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t430 = call i32 @compiler_2fprofile_2eRun_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t425, ptr %t426, { i64, ptr } %t427, { i64, ptr } %t428, ptr %l2)
  store i32 %t430, ptr %l208
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s0)
  %t431 = load i32, ptr %l208, !tbaa !23
  store i32 %t431, ptr %rv
  br label %ret
bb117:
  %t432 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 0
  %t433 = load i64, ptr %t432, !tbaa !24
  %t434 = load i64, ptr @G_2ecompiler_2folang_2eInterp, !tbaa !24
  %t437 = icmp eq i64 %t433, %t434
  br i1 %t437, label %bb118, label %bb119
bb118:
  store %olang.scope zeroinitializer, ptr %s22
  %t439 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %s22, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t439, ptr %l212
  br label %bb120
bb119:
  br label %bb133
bb120:
  %t440 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t440, ptr %l9
  %t441 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t441, ptr %l214, !tbaa !27
  %t442 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t443 = load ptr, ptr %t442, !tbaa !27
  %t444 = getelementptr { i64, ptr }, ptr %t443, i64 0
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !37
  %t447 = extractvalue { i64, ptr } %t445, 1
  %t448 = extractvalue { i64, ptr } %t445, 0
  %t449 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t448)
  call void @olang_textcopy(ptr %t449, ptr %t447, i64 %t448)
  %t450 = insertvalue { i64, ptr } undef, i64 %t448, 0
  %t451 = insertvalue { i64, ptr } %t450, ptr %t449, 1
  %t453 = extractvalue { i64, ptr } %t451, 0
  %t454 = extractvalue { i64, ptr } %t451, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s22, ptr %s22, ptr %l9, { i64, ptr } %t458)
  br label %bb121
bb121:
  %t461 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 5
  store ptr %t461, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb122
bb122:
  %t463 = load i64, ptr %l11, !tbaa !24
  store i64 %t463, ptr %l219, !tbaa !24
  %t464 = load ptr, ptr %l10, !tbaa !29
  %t466 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %s0, ptr %t464)
  store i64 %t466, ptr %l221
  br label %bb123
bb123:
  %t467 = load i64, ptr %l219, !tbaa !24
  %t468 = load i64, ptr %l221, !tbaa !24
  %t469 = icmp slt i64 %t467, %t468
  %t471 = xor i1 %t469, true
  br i1 %t471, label %bb124, label %bb125
bb124:
  br label %bb130
bb125:
  br label %bb126
bb126:
  %t473 = load ptr, ptr %l10, !tbaa !29
  %t474 = load i64, ptr %l11, !tbaa !24
  %t477 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %s0, ptr %s0, ptr %t473, i64 %t474)
  store { i64, ptr } %t477, ptr %l226
  br label %bb127
bb127:
  %t478 = load { i64, ptr }, ptr %l226, !tbaa !27
  %t481 = extractvalue { i64, ptr } %t478, 1
  %t482 = extractvalue { i64, ptr } %t478, 0
  %t483 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t482)
  call void @olang_textcopy(ptr %t483, ptr %t481, i64 %t482)
  %t484 = insertvalue { i64, ptr } undef, i64 %t482, 0
  %t485 = insertvalue { i64, ptr } %t484, ptr %t483, 1
  %t487 = extractvalue { i64, ptr } %t485, 0
  %t488 = extractvalue { i64, ptr } %t485, 1
  %t489 = mul i64 %t487, 1
  %t490 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t489)
  call void @llvm.memcpy.p0.p0.i64(ptr %t490, ptr %t488, i64 %t489, i1 false)
  %t491 = insertvalue { i64, ptr } undef, i64 %t487, 0
  %t492 = insertvalue { i64, ptr } %t491, ptr %t490, 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %s22, ptr %s22, ptr %l9, { i64, ptr } %t492)
  br label %bb128
bb128:
  br label %bb129
bb129:
  %t495 = load i64, ptr %l11, !tbaa !24
  %t497 = add i64 %t495, 1
  store i64 %t497, ptr %l11, !tbaa !24
  br label %bb122
bb130:
  %t499 = load ptr, ptr %l1, !tbaa !29
  store ptr %t499, ptr %l233, !tbaa !29
  store ptr %l3, ptr %l234, !tbaa !29
  %t500 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t500, ptr %l235, !tbaa !27
  %t501 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t502 = load ptr, ptr %t501, !tbaa !27
  %t503 = getelementptr { i64, ptr }, ptr %t502, i64 0
  %t504 = load { i64, ptr }, ptr %t503, !tbaa !37
  store { i64, ptr } %t504, ptr %l236, !tbaa !27
  %t506 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s22, ptr %s22, ptr %l9)
  store { i64, ptr } %t506, ptr %l238
  br label %bb131
bb131:
  %t507 = load ptr, ptr %l233, !tbaa !29
  %t508 = load ptr, ptr %l234, !tbaa !29
  %t509 = load { i64, ptr }, ptr %l236, !tbaa !27
  %t510 = load { i64, ptr }, ptr %l238, !tbaa !27
  %t512 = call i32 @compiler_2fbuild_2eInterpret_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s22, ptr %s0, ptr %t507, ptr %t508, { i64, ptr } %t509, { i64, ptr } %t510, ptr %l2)
  store i32 %t512, ptr %l240
  br label %bb132
bb132:
  call void @__olang_scope_close(ptr %s22)
  call void @__olang_scope_close(ptr %s0)
  %t513 = load i32, ptr %l240, !tbaa !23
  store i32 %t513, ptr %rv
  br label %ret
bb133:
  %t514 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t514, 0
  %t518 = icmp eq i64 %t516, 1
  br i1 %t518, label %bb134, label %bb135
bb134:
  %t520 = getelementptr %"compiler/build:Config", ptr %l3, i32 0, i32 18
  %t521 = load i1, ptr %t520, !tbaa !21
  store i1 %t521, ptr %l244, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l244, !tbaa !21
  br label %bb136
bb136:
  %t523 = load i1, ptr %l244, !tbaa !21
  br i1 %t523, label %bb137, label %bb138
bb137:
  %t524 = load ptr, ptr %l1, !tbaa !29
  store ptr %t524, ptr %l246, !tbaa !29
  store ptr %l3, ptr %l247, !tbaa !29
  %t525 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t525, ptr %l248, !tbaa !27
  %t526 = getelementptr { i64, ptr }, ptr %l248, i32 0, i32 1
  %t527 = load ptr, ptr %t526, !tbaa !27
  %t528 = getelementptr { i64, ptr }, ptr %t527, i64 0
  %t529 = load { i64, ptr }, ptr %t528, !tbaa !37
  store { i64, ptr } %t529, ptr %l249, !tbaa !27
  store ptr %l2, ptr %l250, !tbaa !29
  %t530 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 2
  %t532 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t530)
  store { i64, ptr } %t532, ptr %l252
  br label %bb139
bb138:
  br label %bb141
bb139:
  %t533 = load ptr, ptr %l246, !tbaa !29
  %t534 = load ptr, ptr %l247, !tbaa !29
  %t535 = load { i64, ptr }, ptr %l249, !tbaa !27
  %t536 = load ptr, ptr %l250, !tbaa !29
  %t537 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t538 = call i32 @compiler_2fbuild_2eInterpretTests_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t533, ptr %t534, { i64, ptr } %t535, ptr %t536, { i64, ptr } %t537)
  store i32 %t538, ptr %l253
  br label %bb140
bb140:
  call void @__olang_scope_close(ptr %s0)
  %t539 = load i32, ptr %l253, !tbaa !23
  store i32 %t539, ptr %rv
  br label %ret
bb141:
  %t540 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t540, 0
  %t544 = icmp eq i64 %t542, 1
  br i1 %t544, label %bb142, label %bb143
bb142:
  %t546 = load ptr, ptr %l1, !tbaa !29
  store ptr %t546, ptr %l257, !tbaa !29
  store ptr %l3, ptr %l258, !tbaa !29
  %t547 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t547, ptr %l259, !tbaa !27
  %t548 = getelementptr { i64, ptr }, ptr %l259, i32 0, i32 1
  %t549 = load ptr, ptr %t548, !tbaa !27
  %t550 = getelementptr { i64, ptr }, ptr %t549, i64 0
  %t551 = load { i64, ptr }, ptr %t550, !tbaa !37
  store { i64, ptr } %t551, ptr %l260, !tbaa !27
  store ptr %l2, ptr %l261, !tbaa !29
  %t552 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 2
  %t554 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t552)
  store { i64, ptr } %t554, ptr %l263
  br label %bb144
bb143:
  br label %bb146
bb144:
  %t555 = load ptr, ptr %l257, !tbaa !29
  %t556 = load ptr, ptr %l258, !tbaa !29
  %t557 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t558 = load ptr, ptr %l261, !tbaa !29
  %t559 = load { i64, ptr }, ptr %l263, !tbaa !27
  %t560 = call i32 @compiler_2fbuild_2eTestFile_3ccompiler_2folang_3aPasses_3e(ptr %v1, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t555, ptr %t556, { i64, ptr } %t557, ptr %t558, { i64, ptr } %t559)
  store i32 %t560, ptr %l264
  br label %bb145
bb145:
  call void @__olang_scope_close(ptr %s0)
  %t561 = load i32, ptr %l264, !tbaa !23
  store i32 %t561, ptr %rv
  br label %ret
bb146:
  %t562 = call { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %s0, ptr %s0, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d33, i32 0, i32 1) })
  %t563 = extractvalue { i32, { i64, ptr } } %t562, 1
  %t564 = extractvalue { i32, { i64, ptr } } %t562, 0
  store i32 %t564, ptr %l267
  %t565 = icmp ne i32 %t564, 0
  br i1 %t565, label %bb148, label %ok.566, !prof !99
ok.566:
  store { i64, ptr } %t563, ptr %l266
  br label %bb147
bb147:
  %t567 = load { i64, ptr }, ptr %l266, !tbaa !27
  store { i64, ptr } %t567, ptr %l265, !tbaa !27
  br label %bb152
bb148:
  %t568 = load i32, ptr %l267, !tbaa !23
  %t569 = ashr i32 %t568, 16
  %t571 = icmp eq i32 %t569, 1
  store i1 %t571, ptr %l269, !tbaa !21
  %t572 = load i32, ptr %l267, !tbaa !23
  %t573 = ashr i32 %t572, 16
  %t575 = icmp eq i32 %t573, 1
  br i1 %t575, label %bb149, label %bb150
bb149:
  call void @__olang_errpay_pop()
  br label %bb150
bb150:
  br label %bb151
bb151:
  %t577 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t577, ptr %l272, !tbaa !27
  %t578 = getelementptr { i64, ptr }, ptr %l272, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr { i64, ptr }, ptr %t579, i64 0
  %t581 = load { i64, ptr }, ptr %t580, !tbaa !37
  %t583 = extractvalue { i64, ptr } %t581, 1
  %t584 = extractvalue { i64, ptr } %t581, 0
  %t585 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t584)
  call void @olang_textcopy(ptr %t585, ptr %t583, i64 %t584)
  %t586 = insertvalue { i64, ptr } undef, i64 %t584, 0
  %t587 = insertvalue { i64, ptr } %t586, ptr %t585, 1
  %t589 = extractvalue { i64, ptr } %t587, 0
  %t590 = extractvalue { i64, ptr } %t587, 1
  %t591 = mul i64 %t589, 1
  %t592 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t591)
  call void @llvm.memcpy.p0.p0.i64(ptr %t592, ptr %t590, i64 %t591, i1 false)
  %t593 = insertvalue { i64, ptr } undef, i64 %t589, 0
  %t594 = insertvalue { i64, ptr } %t593, ptr %t592, 1
  store { i64, ptr } %t594, ptr %l265, !tbaa !27
  br label %bb152
bb152:
  %t596 = load { i64, ptr }, ptr %l265, !tbaa !27
  store ptr %l3, ptr %l276, !tbaa !29
  store { i64, ptr } %t596, ptr %l277, !tbaa !27
  %t598 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 6
  %t600 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t598)
  store { i64, ptr } %t600, ptr %l279
  br label %bb153
bb153:
  %t601 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t601, ptr %l280, !tbaa !27
  %t602 = getelementptr %"compiler/olang:CommandLine", ptr %l4, i32 0, i32 2
  %t604 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %s0, ptr %s0, ptr %t602)
  store { i64, ptr } %t604, ptr %l282
  br label %bb154
bb154:
  %t605 = load ptr, ptr %l276, !tbaa !29
  %t606 = load { i64, ptr }, ptr %l277, !tbaa !27
  %t607 = load { i64, ptr }, ptr %l279, !tbaa !27
  %t608 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t609 = load { i64, ptr }, ptr %l282, !tbaa !27
  %t610 = call i32 @compiler_2fbuild_2eTestFiles(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %t605, { i64, ptr } %t606, { i64, ptr } %t607, { i64, ptr } %t608, { i64, ptr } %t609)
  store i32 %t610, ptr %l283
  br label %bb155
bb155:
  call void @__olang_scope_close(ptr %s0)
  %t611 = load i32, ptr %l283, !tbaa !23
  store i32 %t611, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2fprofile_2eRun_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, ptr %a4) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l12 = alloca %"compiler/profile:Profile"
  %l13 = alloca { i64, ptr }
  %l14 = alloca %"compiler/profile:Places"
  %l25 = alloca i32
  %l33 = alloca i32
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca { i64, [3 x i64] }
  %l43 = alloca %"compiler/diagmsg:Msg"
  %l45 = alloca i32
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i32
  %l55 = alloca { i64, ptr }
  %l56 = alloca i64
  %l57 = alloca i64
  %l66 = alloca i1
  %l69 = alloca { i64, ptr }
  %l71 = alloca i64
  %l74 = alloca i32
  %l76 = alloca i1
  %l84 = alloca i32
  %l87 = alloca ptr
  %l88 = alloca { i64, [3 x i64] }
  %l89 = alloca %"compiler/diagmsg:Msg"
  %l91 = alloca i32
  %l92 = alloca { i64, ptr }
  %l94 = alloca { i64, ptr }
  %l95 = alloca i32
  %l97 = alloca i1
  %l100 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l107 = alloca %"compiler/profile:Profile"
  %l110 = alloca %"compiler/profile:Profile"
  %l111 = alloca i32
  %l113 = alloca i1
  %l118 = alloca { i64, ptr }
  %l121 = alloca %"compiler/profile:Places"
  %l125 = alloca { i64, ptr }
  %l128 = alloca i1
  %l129 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l136 = alloca i32
  %l138 = alloca i1
  %l146 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %rv = alloca i32
  %t67 = alloca { i64, [3 x i64] }, align 8
  %t236 = alloca { i64, [3 x i64] }, align 8
  %t346 = alloca %"compiler/profile:Places", align 8
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/build:Config", ptr %t1, i32 0, i32 23
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 1
  %t7 = extractvalue { i64, ptr } %t4, 0
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t6, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l5, !tbaa !27
  %t12 = load ptr, ptr %l1, !tbaa !29
  %t14 = getelementptr %"compiler/build:Config", ptr %t12, i32 0, i32 23
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %t14, !tbaa !27
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/build:Config", ptr %t15, i32 0, i32 22
  store i1 true, ptr %t17, !tbaa !21
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/build:Config", ptr %t18, i32 0, i32 12
  store i1 true, ptr %t20, !tbaa !21
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t29 = call i32 @compiler_2fbuild_2eBuildProgram_3ccompiler_2folang_3aPasses_3e(ptr %v0, ptr %v1, ptr %v2, ptr %v4, ptr %a0, ptr %t22, { i64, ptr } %t23, ptr %t24)
  store i32 %t29, ptr %l25
  br label %bb1
bb1:
  %t30 = load i32, ptr %l25, !tbaa !23
  store i32 %t30, ptr %l6, !tbaa !23
  %t31 = load i32, ptr %l6, !tbaa !23
  %t33 = icmp ne i32 %t31, 0
  br i1 %t33, label %bb2, label %bb3
bb2:
  %t35 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t35, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/build:Config", ptr %t37, i32 0, i32 0
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = extractvalue { i64, ptr } %t40, 0
  %t44 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t45 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t46 = add i64 %t43, %t45
  %t47 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t46)
  call void @olang_textcopy(ptr %t47, ptr %t42, i64 %t43)
  %t48 = getelementptr i8, ptr %t47, i64 %t43
  call void @olang_textcopy(ptr %t48, ptr %t44, i64 %t45)
  %t49 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t47, 1
  store { i64, ptr } %t50, ptr %l7, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t54 = call i32 @std_2fos_2eMkDirAll(ptr %s0, { i64, ptr } %t52)
  store i32 %t54, ptr %l33
  %t55 = icmp ne i32 %t54, 0
  br i1 %t55, label %bb6, label %ok.56, !prof !99
ok.56:
  br label %bb5
bb5:
  br label %bb13
bb6:
  %t57 = load i32, ptr %l33, !tbaa !23
  %t58 = ashr i32 %t57, 16
  %t60 = icmp eq i32 %t58, 1
  store i1 %t60, ptr %l35, !tbaa !21
  %t61 = load i32, ptr %l33, !tbaa !23
  %t62 = ashr i32 %t61, 16
  %t64 = icmp eq i32 %t62, 1
  br i1 %t64, label %bb7, label %bb8
bb7:
  call void @__olang_errpay_pop()
  br label %bb8
bb8:
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load ptr, ptr %l4, !tbaa !29
  store ptr %t66, ptr %l38, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [3 x i64] }, ptr %t67, i32 0, i32 0
  store i64 0, ptr %t68
  %t69 = load { i64, [3 x i64] }, ptr %t67
  store { i64, [3 x i64] } %t69, ptr %l39
  %t70 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t71 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t74 = extractvalue { i64, ptr } %t70, 1
  %t75 = extractvalue { i64, ptr } %t70, 0
  %t76 = add i64 %t72, %t75
  %t77 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t79 = add i64 %t76, %t78
  %t80 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t79)
  call void @olang_textcopy(ptr %t80, ptr %t71, i64 %t72)
  %t81 = getelementptr i8, ptr %t80, i64 %t72
  call void @olang_textcopy(ptr %t81, ptr %t74, i64 %t75)
  %t82 = getelementptr i8, ptr %t81, i64 %t75
  call void @olang_textcopy(ptr %t82, ptr %t77, i64 %t78)
  %t83 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %t80, 1
  %t86 = extractvalue { i64, ptr } %t84, 0
  %t87 = extractvalue { i64, ptr } %t84, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t93 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotRun(ptr %s4, ptr %s4, { i64, ptr } %t91)
  store %"compiler/diagmsg:Msg" %t93, ptr %l43
  br label %bb10
bb10:
  %t94 = load ptr, ptr %l38, !tbaa !29
  %t95 = load { i64, [3 x i64] }, ptr %l39
  %t96 = load %"compiler/diagmsg:Msg", ptr %l43
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %s4, ptr %t94, { i64, [3 x i64] } %t95, %"compiler/diagmsg:Msg" %t96)
  br label %bb11
bb11:
  %t97 = load ptr, ptr %l4, !tbaa !29
  %t99 = call i32 @compiler_2fbuild_2eFinish(ptr %v4, ptr %t97)
  store i32 %t99, ptr %l45
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t100 = load i32, ptr %l45, !tbaa !23
  store i32 %t100, ptr %rv
  br label %ret
bb13:
  %t101 = load ptr, ptr %l1, !tbaa !29
  %t103 = getelementptr %"compiler/build:Config", ptr %t101, i32 0, i32 24
  %t104 = load { i64, ptr }, ptr %t103, !tbaa !27
  %t106 = call { i64, ptr } @std_2ffilepath_2eBase(ptr %v1, ptr %v1, { i64, ptr } %t104)
  store { i64, ptr } %t106, ptr %l48
  br label %bb14
bb14:
  %t107 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t107, ptr %l8, !tbaa !27
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t110 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v1, ptr %s0, { i64, ptr } %t108, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d38, i32 0, i32 1) })
  %t111 = extractvalue { i32, i64 } %t110, 1
  %t112 = extractvalue { i32, i64 } %t110, 0
  store i32 %t112, ptr %l52
  %t113 = icmp ne i32 %t112, 0
  br i1 %t113, label %bb16, label %ok.114, !prof !99
ok.114:
  store i64 %t111, ptr %l51
  br label %bb15
bb15:
  %t115 = load i64, ptr %l51, !tbaa !24
  store i64 %t115, ptr %l49, !tbaa !24
  br label %bb18
bb16:
  br label %bb17
bb17:
  %t116 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t116, 0
  store i64 %t118, ptr %l49, !tbaa !24
  br label %bb18
bb18:
  %t120 = load i64, ptr %l49, !tbaa !24
  %t121 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t121, ptr %l55, !tbaa !27
  store i64 %t120, ptr %l56, !tbaa !24
  %t123 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l57, !tbaa !24
  %t125 = icmp sge i64 0, 0
  br i1 %t125, label %bb19, label %bb20
bb19:
  %t127 = load i64, ptr %l56, !tbaa !24
  %t128 = icmp sle i64 0, %t127
  br i1 %t128, label %bb21, label %bb22
bb20:
  call void @__olang_check_failed(ptr @olang_loc_2308270aeb54ce5f_1121c256bef46e33)
  unreachable
bb21:
  %t130 = load i64, ptr %l56, !tbaa !24
  %t131 = load i64, ptr %l57, !tbaa !24
  %t132 = icmp sle i64 %t130, %t131
  br i1 %t132, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_2308270aeb54ce5f_1121c256bef46e33)
  unreachable
bb23:
  %t134 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = load i64, ptr %l56, !tbaa !24
  %t137 = getelementptr i8, ptr %t135, i64 0
  %t138 = sub i64 %t136, 0
  %t139 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t140 = insertvalue { i64, ptr } %t139, ptr %t137, 1
  store { i64, ptr } %t140, ptr %l8, !tbaa !27
  %t142 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t143 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t145 = extractvalue { i64, ptr } %t142, 1
  %t146 = extractvalue { i64, ptr } %t142, 0
  %t147 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t151 = extractvalue { i64, ptr } %t143, 1
  %t152 = extractvalue { i64, ptr } %t143, 0
  %t153 = add i64 %t149, %t152
  %t154 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t155 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t156 = add i64 %t153, %t155
  %t157 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t156)
  call void @olang_textcopy(ptr %t157, ptr %t145, i64 %t146)
  %t158 = getelementptr i8, ptr %t157, i64 %t146
  call void @olang_textcopy(ptr %t158, ptr %t147, i64 %t148)
  %t159 = getelementptr i8, ptr %t158, i64 %t148
  call void @olang_textcopy(ptr %t159, ptr %t151, i64 %t152)
  %t160 = getelementptr i8, ptr %t159, i64 %t152
  call void @olang_textcopy(ptr %t160, ptr %t154, i64 %t155)
  %t161 = insertvalue { i64, ptr } undef, i64 %t156, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t157, 1
  store { i64, ptr } %t162, ptr %l10, !tbaa !27
  %t164 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t166 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t164, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i1 %t166, ptr %l66
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_2308270aeb54ce5f_1121c256bef46e33)
  unreachable
bb25:
  %t167 = load i1, ptr %l66, !tbaa !21
  br i1 %t167, label %bb26, label %bb27
bb26:
  %t168 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t169 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t168, 1
  %t172 = extractvalue { i64, ptr } %t168, 0
  %t173 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t177 = extractvalue { i64, ptr } %t169, 1
  %t178 = extractvalue { i64, ptr } %t169, 0
  %t179 = add i64 %t175, %t178
  %t180 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t181 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t182 = add i64 %t179, %t181
  %t183 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t182)
  call void @olang_textcopy(ptr %t183, ptr %t171, i64 %t172)
  %t184 = getelementptr i8, ptr %t183, i64 %t172
  call void @olang_textcopy(ptr %t184, ptr %t173, i64 %t174)
  %t185 = getelementptr i8, ptr %t184, i64 %t174
  call void @olang_textcopy(ptr %t185, ptr %t177, i64 %t178)
  %t186 = getelementptr i8, ptr %t185, i64 %t178
  call void @olang_textcopy(ptr %t186, ptr %t180, i64 %t181)
  %t187 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t188 = insertvalue { i64, ptr } %t187, ptr %t183, 1
  store { i64, ptr } %t188, ptr %l69, !tbaa !27
  %t189 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t190 = extractvalue { i64, ptr } %t189, 0
  %t191 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 0
  store i64 %t192, ptr %l71, !tbaa !24
  %t194 = load i64, ptr %l71, !tbaa !24
  %t195 = icmp eq i64 %t190, %t194
  br i1 %t195, label %bb28, label %bb29
bb27:
  br label %bb31
bb28:
  %t197 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t198 = load ptr, ptr %t197, !tbaa !27
  %t199 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t200 = load ptr, ptr %t199, !tbaa !27
  %t201 = load i64, ptr %l71, !tbaa !24
  %t202 = mul i64 %t201, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t198, ptr %t200, i64 %t202, i1 false)
  br label %bb30
bb29:
  %t203 = load { i64, ptr }, ptr %l69, !tbaa !27
  store { i64, ptr } %t203, ptr %l5, !tbaa !27
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t204 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t206 = call i32 @std_2fos_2eRemove(ptr %s0, { i64, ptr } %t204)
  store i32 %t206, ptr %l74
  %t207 = icmp ne i32 %t206, 0
  br i1 %t207, label %bb33, label %ok.208, !prof !99
ok.208:
  br label %bb32
bb32:
  br label %bb37
bb33:
  %t209 = load i32, ptr %l74, !tbaa !23
  %t210 = ashr i32 %t209, 16
  %t212 = icmp eq i32 %t210, 1
  store i1 %t212, ptr %l76, !tbaa !21
  %t213 = load i32, ptr %l74, !tbaa !23
  %t214 = ashr i32 %t213, 16
  %t216 = icmp eq i32 %t214, 1
  br i1 %t216, label %bb34, label %bb35
bb34:
  call void @__olang_errpay_pop()
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr %"compiler/build:Config", ptr %t218, i32 0, i32 24
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t224 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t229 = call i32 @compiler_2fprofile_2erunProfiled(ptr %v1, ptr %v2, ptr %v3, ptr %s0, { i64, ptr } %t221, { i64, ptr } %t222, { i64, ptr } %a3, { i64, ptr } %t224)
  store i32 %t229, ptr %l84
  br label %bb38
bb38:
  %t230 = load i32, ptr %l84, !tbaa !23
  store i32 %t230, ptr %l6, !tbaa !23
  %t231 = load i32, ptr %l6, !tbaa !23
  %t233 = icmp slt i32 %t231, 0
  br i1 %t233, label %bb39, label %bb40
bb39:
  store %olang.scope zeroinitializer, ptr %s10
  %t235 = load ptr, ptr %l4, !tbaa !29
  store ptr %t235, ptr %l87, !tbaa !29
  store { i64, [3 x i64] } zeroinitializer, ptr %t236
  %t237 = getelementptr { i64, [3 x i64] }, ptr %t236, i32 0, i32 0
  store i64 0, ptr %t237
  %t238 = load { i64, [3 x i64] }, ptr %t236
  store { i64, [3 x i64] } %t238, ptr %l88
  %t239 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotRun(ptr %s10, ptr %s10, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d44, i32 0, i32 1) })
  store %"compiler/diagmsg:Msg" %t239, ptr %l89
  br label %bb41
bb40:
  br label %bb44
bb41:
  %t240 = load ptr, ptr %l87, !tbaa !29
  %t241 = load { i64, [3 x i64] }, ptr %l88
  %t242 = load %"compiler/diagmsg:Msg", ptr %l89
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v4, ptr %s10, ptr %t240, { i64, [3 x i64] } %t241, %"compiler/diagmsg:Msg" %t242)
  br label %bb42
bb42:
  %t243 = load ptr, ptr %l4, !tbaa !29
  %t245 = call i32 @compiler_2fbuild_2eFinish(ptr %v4, ptr %t243)
  store i32 %t245, ptr %l91
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s0)
  %t246 = load i32, ptr %l91, !tbaa !23
  store i32 %t246, ptr %rv
  br label %ret
bb44:
  %t247 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t249 = call { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %s0, ptr %s0, { i64, ptr } %t247)
  %t250 = extractvalue { i32, { i64, ptr } } %t249, 1
  %t251 = extractvalue { i32, { i64, ptr } } %t249, 0
  store i32 %t251, ptr %l95
  %t252 = icmp ne i32 %t251, 0
  br i1 %t252, label %bb46, label %ok.253, !prof !99
ok.253:
  store { i64, ptr } %t250, ptr %l94
  br label %bb45
bb45:
  %t254 = load { i64, ptr }, ptr %l94, !tbaa !27
  store { i64, ptr } %t254, ptr %l92, !tbaa !27
  br label %bb52
bb46:
  %t255 = load i32, ptr %l95, !tbaa !23
  %t256 = ashr i32 %t255, 16
  %t258 = icmp eq i32 %t256, 1
  store i1 %t258, ptr %l97, !tbaa !21
  %t259 = load i32, ptr %l95, !tbaa !23
  %t260 = ashr i32 %t259, 16
  %t262 = icmp eq i32 %t260, 1
  br i1 %t262, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s11
  %t264 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t264, ptr %l100, !tbaa !27
  %t265 = load i32, ptr %l6, !tbaa !23
  %t267 = sub i32 %t265, 128
  %t269 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s11, i32 %t267)
  store { i64, ptr } %t269, ptr %l103
  br label %bb50
bb50:
  %t270 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t271 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t272 = load { i64, ptr }, ptr %l100, !tbaa !27
  %t273 = extractvalue { i64, ptr } %t272, 1
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t275 = add i64 %t271, %t274
  %t276 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t277 = extractvalue { i64, ptr } { i64 42, ptr getelementptr inbounds (<{ i64, [42 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t278 = add i64 %t275, %t277
  %t279 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t280 = extractvalue { i64, ptr } %t279, 1
  %t281 = extractvalue { i64, ptr } %t279, 0
  %t282 = add i64 %t278, %t281
  %t283 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t284 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t285 = add i64 %t282, %t284
  %t286 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t285)
  call void @olang_textcopy(ptr %t286, ptr %t270, i64 %t271)
  %t287 = getelementptr i8, ptr %t286, i64 %t271
  call void @olang_textcopy(ptr %t287, ptr %t273, i64 %t274)
  %t288 = getelementptr i8, ptr %t287, i64 %t274
  call void @olang_textcopy(ptr %t288, ptr %t276, i64 %t277)
  %t289 = getelementptr i8, ptr %t288, i64 %t277
  call void @olang_textcopy(ptr %t289, ptr %t280, i64 %t281)
  %t290 = getelementptr i8, ptr %t289, i64 %t281
  call void @olang_textcopy(ptr %t290, ptr %t283, i64 %t284)
  %t291 = insertvalue { i64, ptr } undef, i64 %t285, 0
  %t292 = insertvalue { i64, ptr } %t291, ptr %t286, 1
  %t294 = extractvalue { i64, ptr } %t292, 0
  %t295 = extractvalue { i64, ptr } %t292, 1
  %t296 = mul i64 %t294, 1
  %t297 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t296)
  call void @llvm.memcpy.p0.p0.i64(ptr %t297, ptr %t295, i64 %t296, i1 false)
  %t298 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t297, 1
  call void @compiler_2fprofile_2esay(ptr %s11, { i64, ptr } %t299)
  br label %bb51
bb51:
  %t301 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t301, ptr %rv
  br label %ret
bb52:
  %t303 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t307 = call { i32, %"compiler/profile:Profile" } @compiler_2fprofile_2eProfile_2eRead(ptr %s0, ptr %s0, { i64, ptr } %t303)
  %t308 = extractvalue { i32, %"compiler/profile:Profile" } %t307, 1
  %t309 = extractvalue { i32, %"compiler/profile:Profile" } %t307, 0
  store i32 %t309, ptr %l111
  %t310 = icmp ne i32 %t309, 0
  br i1 %t310, label %bb54, label %ok.311, !prof !99
ok.311:
  store %"compiler/profile:Profile" %t308, ptr %l110
  br label %bb53
bb53:
  %t312 = load %"compiler/profile:Profile", ptr %l110
  store %"compiler/profile:Profile" %t312, ptr %l107
  br label %bb57
bb54:
  %t313 = load i32, ptr %l111, !tbaa !23
  %t314 = ashr i32 %t313, 16
  %t316 = icmp eq i32 %t314, 1
  store i1 %t316, ptr %l113, !tbaa !21
  br label %bb55
bb55:
  store %olang.scope zeroinitializer, ptr %s13
  %t317 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t318 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t321 = extractvalue { i64, ptr } %t317, 1
  %t322 = extractvalue { i64, ptr } %t317, 0
  %t323 = add i64 %t319, %t322
  %t324 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t325 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t326 = add i64 %t323, %t325
  %t327 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t326)
  call void @olang_textcopy(ptr %t327, ptr %t318, i64 %t319)
  %t328 = getelementptr i8, ptr %t327, i64 %t319
  call void @olang_textcopy(ptr %t328, ptr %t321, i64 %t322)
  %t329 = getelementptr i8, ptr %t328, i64 %t322
  call void @olang_textcopy(ptr %t329, ptr %t324, i64 %t325)
  %t330 = insertvalue { i64, ptr } undef, i64 %t326, 0
  %t331 = insertvalue { i64, ptr } %t330, ptr %t327, 1
  %t333 = extractvalue { i64, ptr } %t331, 0
  %t334 = extractvalue { i64, ptr } %t331, 1
  %t335 = mul i64 %t333, 1
  %t336 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t335)
  call void @llvm.memcpy.p0.p0.i64(ptr %t336, ptr %t334, i64 %t335, i1 false)
  %t337 = insertvalue { i64, ptr } undef, i64 %t333, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  call void @compiler_2fprofile_2esay(ptr %s13, { i64, ptr } %t338)
  br label %bb56
bb56:
  %t340 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t340, ptr %rv
  br label %ret
bb57:
  %t342 = load %"compiler/profile:Profile", ptr %l107
  store %"compiler/profile:Profile" %t342, ptr %l12
  %t343 = call { i64, ptr } @compiler_2fprofile_2eSymbolizer(ptr %s0)
  store { i64, ptr } %t343, ptr %l118
  br label %bb58
bb58:
  %t344 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t344, ptr %l13, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l13, !tbaa !27
  call void @compiler_2fprofile_2ePlaces_2eResolve(ptr %t346, ptr %s0, ptr %s0, ptr %s0, ptr %l12, { i64, ptr } %t345)
  call void @llvm.memmove.p0.p0.i64(ptr %l121, ptr %t346, i64 272, i1 false)
  br label %bb59
bb59:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l121, i64 272, i1 false)
  %t349 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t353 = call { i64, ptr } @compiler_2fprofile_2eReport(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t349, ptr %l12, ptr %l14)
  store { i64, ptr } %t353, ptr %l125
  br label %bb60
bb60:
  %t354 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t355 = extractvalue { i64, ptr } %t354, 0
  %t356 = extractvalue { i64, ptr } %t354, 1
  %t357 = mul i64 %t355, 1
  %t358 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t357)
  call void @llvm.memcpy.p0.p0.i64(ptr %t358, ptr %t356, i64 %t357, i1 false)
  %t359 = insertvalue { i64, ptr } undef, i64 %t355, 0
  %t360 = insertvalue { i64, ptr } %t359, ptr %t358, 1
  call void @compiler_2fprofile_2esay(ptr %s0, { i64, ptr } %t360)
  br label %bb61
bb61:
  %t362 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t364 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t362, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t364, ptr %l128
  br label %bb62
bb62:
  %t365 = load i1, ptr %l128, !tbaa !21
  br i1 %t365, label %bb63, label %bb64
bb63:
  store %olang.scope zeroinitializer, ptr %s15
  call void @compiler_2fprofile_2esay(ptr %s15, { i64, ptr } { i64 101, ptr getelementptr inbounds (<{ i64, [101 x i8] }>, ptr @.d51, i32 0, i32 1) })
  br label %bb65
bb64:
  br label %bb66
bb65:
  call void @__olang_scope_close(ptr %s15)
  br label %bb66
bb66:
  %t366 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t366, ptr %l129, !tbaa !27
  %t367 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t371 = call { i64, ptr } @compiler_2fprofile_2eFlameGraph(ptr %v1, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t367, ptr %l12, ptr %l14)
  store { i64, ptr } %t371, ptr %l133
  br label %bb67
bb67:
  %t372 = load { i64, ptr }, ptr %l133, !tbaa !27
  %t374 = extractvalue { i64, ptr } %t372, 0
  %t375 = extractvalue { i64, ptr } %t372, 1
  %t376 = mul i64 %t374, 1
  %t377 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t376)
  call void @llvm.memcpy.p0.p0.i64(ptr %t377, ptr %t375, i64 %t376, i1 false)
  %t378 = insertvalue { i64, ptr } undef, i64 %t374, 0
  %t379 = insertvalue { i64, ptr } %t378, ptr %t377, 1
  %t380 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t382 = call i32 @std_2fos_2eWriteFile(ptr %s0, ptr %s0, { i64, ptr } %t380, { i64, ptr } %t379)
  store i32 %t382, ptr %l136
  %t383 = icmp ne i32 %t382, 0
  br i1 %t383, label %bb69, label %ok.384, !prof !99
ok.384:
  br label %bb68
bb68:
  br label %bb74
bb69:
  %t385 = load i32, ptr %l136, !tbaa !23
  %t386 = ashr i32 %t385, 16
  %t388 = icmp eq i32 %t386, 1
  store i1 %t388, ptr %l138, !tbaa !21
  %t389 = load i32, ptr %l136, !tbaa !23
  %t390 = ashr i32 %t389, 16
  %t392 = icmp eq i32 %t390, 1
  br i1 %t392, label %bb70, label %bb71
bb70:
  call void @__olang_errpay_pop()
  br label %bb71
bb71:
  br label %bb72
bb72:
  store %olang.scope zeroinitializer, ptr %s16
  %t394 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t395 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t396 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t398 = extractvalue { i64, ptr } %t394, 1
  %t399 = extractvalue { i64, ptr } %t394, 0
  %t400 = add i64 %t396, %t399
  %t401 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t402 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t403 = add i64 %t400, %t402
  %t404 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t403)
  call void @olang_textcopy(ptr %t404, ptr %t395, i64 %t396)
  %t405 = getelementptr i8, ptr %t404, i64 %t396
  call void @olang_textcopy(ptr %t405, ptr %t398, i64 %t399)
  %t406 = getelementptr i8, ptr %t405, i64 %t399
  call void @olang_textcopy(ptr %t406, ptr %t401, i64 %t402)
  %t407 = insertvalue { i64, ptr } undef, i64 %t403, 0
  %t408 = insertvalue { i64, ptr } %t407, ptr %t404, 1
  %t410 = extractvalue { i64, ptr } %t408, 0
  %t411 = extractvalue { i64, ptr } %t408, 1
  %t412 = mul i64 %t410, 1
  %t413 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t412)
  call void @llvm.memcpy.p0.p0.i64(ptr %t413, ptr %t411, i64 %t412, i1 false)
  %t414 = insertvalue { i64, ptr } undef, i64 %t410, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t413, 1
  call void @compiler_2fprofile_2esay(ptr %s16, { i64, ptr } %t415)
  br label %bb73
bb73:
  %t417 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s16)
  call void @__olang_scope_close(ptr %s0)
  store i32 %t417, ptr %rv
  br label %ret
bb74:
  %t419 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t421 = call { i64, ptr } @compiler_2fbuild_2eShown(ptr %s0, ptr %s0, { i64, ptr } %t419)
  store { i64, ptr } %t421, ptr %l146
  br label %bb75
bb75:
  %t422 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t423 = extractvalue { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t424 = load { i64, ptr }, ptr %l146, !tbaa !27
  %t425 = extractvalue { i64, ptr } %t424, 1
  %t426 = extractvalue { i64, ptr } %t424, 0
  %t427 = add i64 %t423, %t426
  %t428 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t429 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t430 = add i64 %t427, %t429
  %t431 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t430)
  call void @olang_textcopy(ptr %t431, ptr %t422, i64 %t423)
  %t432 = getelementptr i8, ptr %t431, i64 %t423
  call void @olang_textcopy(ptr %t432, ptr %t425, i64 %t426)
  %t433 = getelementptr i8, ptr %t432, i64 %t426
  call void @olang_textcopy(ptr %t433, ptr %t428, i64 %t429)
  %t434 = insertvalue { i64, ptr } undef, i64 %t430, 0
  %t435 = insertvalue { i64, ptr } %t434, ptr %t431, 1
  %t437 = extractvalue { i64, ptr } %t435, 0
  %t438 = extractvalue { i64, ptr } %t435, 1
  %t439 = mul i64 %t437, 1
  %t440 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t439)
  call void @llvm.memcpy.p0.p0.i64(ptr %t440, ptr %t438, i64 %t439, i1 false)
  %t441 = insertvalue { i64, ptr } undef, i64 %t437, 0
  %t442 = insertvalue { i64, ptr } %t441, ptr %t440, 1
  call void @compiler_2fprofile_2esay(ptr %s0, { i64, ptr } %t442)
  br label %bb76
bb76:
  %t444 = load i32, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  store i32 %t444, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local ptr @std_2fprelude_2fiterator_2estd_2fprelude_2ftext_3aLineIter_2eToVec_3cstd_2fprelude_2ftex_H26ca3914517df8db224f03300752057f(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  store ptr %a0, ptr %l2, !tbaa !29
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t9 = call { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v0, ptr %t7)
  %t10 = extractvalue { i32, { i64, ptr } } %t9, 1
  %t11 = extractvalue { i32, { i64, ptr } } %t9, 0
  store i32 %t11, ptr %l10
  %t12 = icmp ne i32 %t11, 0
  br i1 %t12, label %bb4, label %ok.13, !prof !99
ok.13:
  store { i64, ptr } %t10, ptr %l9
  br label %bb3
bb3:
  %t14 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t14, ptr %l7, !tbaa !27
  br label %bb6
bb4:
  %t15 = load i32, ptr %l10, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  store i1 %t18, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  br label %bb9
bb6:
  %t19 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t20 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v1, ptr %v0, ptr %t20, { i64, ptr } %t19)
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %bb2
bb9:
  br label %bb10
bb10:
  %t24 = load ptr, ptr %l1, !tbaa !29
  store ptr %t24, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2feval_3aImage_3_Hb70b8ba6c3e879cab72ad6295e03d3b2(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l11 = alloca ptr
  %l17 = alloca i1
  %l21 = alloca i64
  %l25 = alloca %"compiler/eval:Image"
  %l27 = alloca %"compiler/eval:Image"
  %l28 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %l30 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %rv = alloca { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t8, i32 0, i32 3
  %t11 = load i64, ptr %t10, !tbaa !24
  %t14 = icmp slt i64 %t4, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb13
bb3:
  br label %bb4
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t18, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l1, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l11, !tbaa !29
  %t24 = load ptr, ptr %l11, !tbaa !29
  %t25 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t24, i32 0, i32 1
  %t26 = load i64, ptr %t25, !tbaa !24
  %t28 = add i64 %t26, 1
  %t30 = load ptr, ptr %l11, !tbaa !29
  %t31 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t30, i32 0, i32 1
  store i64 %t28, ptr %t31, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t39 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t35, i64 %t36)
  store i1 %t39, ptr %l17
  br label %bb5
bb5:
  %t40 = load i1, ptr %l17, !tbaa !21
  br i1 %t40, label %bb6, label %bb7
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t44, i32 0, i32 0
  %t49 = getelementptr { i64, ptr }, ptr %t47, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %t50, i64 %t45
  %t52 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %t51, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l21, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %t54, i32 0, i32 0
  %t57 = load ptr, ptr %t56, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t60 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t57, i32 0, i32 0
  %t62 = getelementptr { i64, ptr }, ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %t63, i64 %t58
  %t65 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %t64, i32 0, i32 1
  %t66 = load %"compiler/eval:Image", ptr %t65
  store %"compiler/eval:Image" %t66, ptr %l25
  %t68 = call %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %v1, ptr %l25)
  store %"compiler/eval:Image" %t68, ptr %l27
  br label %bb8
bb7:
  br label %bb11
bb8:
  %t69 = load i64, ptr %l21, !tbaa !24
  %t70 = load %"compiler/eval:Image", ptr %l27
  %t71 = call %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v1, ptr %v1, i64 %t69, %"compiler/eval:Image" %t70)
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t71, ptr %l28
  br label %bb9
bb9:
  %t73 = call %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v1, ptr %l28)
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t73, ptr %l30
  br label %bb10
bb10:
  %t74 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l30
  %t75 = insertvalue { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } zeroinitializer, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t74, 1
  store { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } %t75, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb1
bb13:
  %t77 = insertvalue { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } zeroinitializer, i32 65536, 0
  store { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } %t77, ptr %rv
  br label %ret
ret:
  %rr = load { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" }, ptr %rv
  ret { i32, %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" } %rr
}

define dso_local %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2feval_3aImage_3e_2e_H22169a789cb544431edc747dee234bd5(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H4aa8749bc5cf37a88c7557cdc2f2204a(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cs_H5a6cbfc85b925203d0895958ef20509b(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %r = tail call { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
  ret { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } %r
}

define dso_local void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_2c_20std_H260c71ae77815ec4b6e333189d6723ff(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l16 = alloca i1
  %l19 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l28 = alloca i64
  %l31 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = sub i64 %t4, 1
  store i64 %t6, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = icmp sge i64 %t8, 0
  %t12 = xor i1 %t10, true
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %t14, i64 %t15)
  store i1 %t18, ptr %l16
  br label %bb5
bb5:
  %t19 = load i1, ptr %l16, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i64, ptr %l1, !tbaa !24
  %t23 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t20, i32 0, i32 0
  %t25 = getelementptr { i64, ptr }, ptr %t23, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %t26, i64 %t21
  %t28 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %t27
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" zeroinitializer, ptr %t27
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t28, ptr %l19
  br label %bb8
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = sub i64 %t29, 1
  store i64 %t31, ptr %l1, !tbaa !24
  br label %bb1
bb10:
  store i64 0, ptr %l2, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t33, i32 0, i32 2
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l2, !tbaa !24
  %t44 = icmp sgt i64 %t40, %t41
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t48 = icmp sgt i64 %t46, 0
  br i1 %t48, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb16
bb13:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = sub i64 %t50, %t51
  %t55 = load i64, ptr %l4, !tbaa !24
  %t58 = add i64 %t54, %t55
  %t60 = sub i64 %t58, 1
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = sdiv i64 %t60, %t61
  store i64 %t64, ptr %l31, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb15
bb15:
  %t66 = load i64, ptr %l31, !tbaa !24
  store i64 %t66, ptr %l28, !tbaa !24
  br label %bb16
bb16:
  %t67 = load i64, ptr %l28, !tbaa !24
  store i64 %t67, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb17
bb17:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t76 = load i64, ptr %l2, !tbaa !24
  %t77 = load i64, ptr %l6, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t81 = mul i64 %t77, %t78
  %t84 = add i64 %t76, %t81
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t86, i32 0, i32 2
  %t91 = getelementptr { i64, ptr }, ptr %t89, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = getelementptr i64, ptr %t92, i64 %t84
  store i64 -1, ptr %t93, !tbaa !34
  br label %bb21
bb21:
  %t94 = load i64, ptr %l6, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l6, !tbaa !24
  br label %bb17
bb22:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t98, i32 0, i32 3
  store i64 0, ptr %t100, !tbaa !24
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t101, i32 0, i32 4
  store i64 0, ptr %t103, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t104, i32 0, i32 5
  store i64 -1, ptr %t106, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %r = tail call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
  ret %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2ePush_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/build:Code" %a1) #0 {
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eroom_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %t15, i64 %t21)
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
  %t36 = getelementptr %"compiler/build:Code", ptr %t35, i64 %t28
  store %"compiler/build:Code" %a1, ptr %t36
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

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fbuild_3aCode_3e_2eroom_3ccompiler_2fbuild_3aCode_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_42020986585537b2_4c4b240152eb3e56)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_42020986585537b2_4c4b240152eb3e56)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/build:Code", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 56
  %t88 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_42020986585537b2_4c4b240152eb3e56)
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
  %t106 = getelementptr %"compiler/build:Code", ptr %t105, i64 %t102
  %t107 = load %"compiler/build:Code", ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/build:Code", ptr %t111, i64 %t109
  store %"compiler/build:Code" %t107, ptr %t112
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

define dso_local ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2femit_3aReused_3e_2eRef_3ccompiler_2femit_3aReused_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca ptr
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/emit:Reused", ptr %t7, i64 %a1
  store ptr %t8, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local %"compiler/explain:Code" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2eAt_3ccompiler_2fexplain_3aCode_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/explain:Code"
  br label %start
start:
  br label %bb0
bb0:
  %t4 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %a0, i32 0, i32 0
  %t6 = getelementptr { i64, ptr }, ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !27
  %t8 = getelementptr %"compiler/explain:Code", ptr %t7, i64 %a1
  %t9 = load %"compiler/explain:Code", ptr %t8
  store %"compiler/explain:Code" %t9, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/explain:Code", ptr %rv
  ret %"compiler/explain:Code" %rr
}

define dso_local i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fexplain_3aCode_3e_2eLen_3ccompiler_2fexplain_3aCode_3e(ptr %v0, ptr %a0) #0 {
entry:
  %r = tail call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
  ret i64 %r
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2ePush_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/views:Cand" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l12 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/views:Cand"
  %l17 = alloca %"compiler/views:Cand"
  %l18 = alloca ptr
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
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eroom_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %t15, i64 %t21)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l12, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t25, i32 0, i32 1
  %t28 = load i64, ptr %t27, !tbaa !24
  store i64 %t28, ptr %l14, !tbaa !24
  store %"compiler/views:Cand" %a1, ptr %l15
  %t31 = call %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %l15)
  store %"compiler/views:Cand" %t31, ptr %l17
  br label %bb5
bb5:
  %t32 = load %"compiler/views:Cand", ptr %l17
  %t33 = load ptr, ptr %l12, !tbaa !29
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %l14, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %t34, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/views:Cand", ptr %t37, i64 %t35
  store %"compiler/views:Cand" %t32, ptr %t38
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l18, !tbaa !29
  %t40 = load ptr, ptr %l18, !tbaa !29
  %t41 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = add i64 %t42, 1
  %t46 = load ptr, ptr %l18, !tbaa !29
  %t47 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t46, i32 0, i32 1
  store i64 %t44, ptr %t47, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fviews_3aCand_3e_2eroom_3ccompiler_2fviews_3aCand_3e(ptr %v0, ptr %a0, i64 %a1) noinline cold #0 {
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
  call void @__olang_check_failed(ptr @olang_loc_82d7e3816727b7d6_2185186449dccf1a)
  unreachable
bb15:
  %t71 = load i64, ptr %l36, !tbaa !24
  %t72 = load i64, ptr %l37, !tbaa !24
  %t73 = icmp sle i64 %t71, %t72
  br i1 %t73, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_82d7e3816727b7d6_2185186449dccf1a)
  unreachable
bb17:
  %t75 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = load i64, ptr %l36, !tbaa !24
  %t78 = getelementptr %"compiler/views:Cand", ptr %t76, i64 0
  %t79 = sub i64 %t77, 0
  %t80 = insertvalue { i64, ptr } undef, i64 %t79, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t78, 1
  store { i64, ptr } %t81, ptr %l4, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t87 = mul i64 %t83, 104
  %t88 = call ptr @__olang_scope_alloc_zeroed(ptr %v0, i64 %t87)
  %t89 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t90 = insertvalue { i64, ptr } %t89, ptr %t88, 1
  store { i64, ptr } %t90, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_82d7e3816727b7d6_2185186449dccf1a)
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
  %t106 = getelementptr %"compiler/views:Cand", ptr %t105, i64 %t102
  %t107 = load %"compiler/views:Cand", ptr %t106
  store %"compiler/views:Cand" zeroinitializer, ptr %t106
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/views:Cand", ptr %t111, i64 %t109
  store %"compiler/views:Cand" %t107, ptr %t112
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"compile" }>, align 8
@.d1 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d3 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"built " }>, align 8
@.d7 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"built " }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"32" }>, align 8
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c".ir" }>, align 8
@.d12 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c".asm" }>, align 8
@.d13 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"/listing/" }>, align 8
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
@.d14 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"compile" }>, align 8
@.d15 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"it cannot be started" }>, align 8
@.d16 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"compile" }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d18 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"_test" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c": native compilation failed" }>, align 8
@.d21 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d22 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"link" }>, align 8
@.d23 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d24 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c": the tests ended by a signal (" }>, align 8
@.d27 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d28 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"31" }>, align 8
@.d29 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d30 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"-ir" }>, align 8
@.d31 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d32 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d33 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"/proc/self/exe" }>, align 8
@.d34 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d35 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"/profile" }>, align 8
@.d36 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"its profile's directory " }>, align 8
@.d37 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" cannot be made" }>, align 8
@.d38 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"." }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d40 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c".samples" }>, align 8
@.d41 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d43 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c".html" }>, align 8
@.d44 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"it cannot be started" }>, align 8
@.d45 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang profile: " }>, align 8
@.d46 = private constant <{ i64, [42 x i8] }> <{ i64 0, [42 x i8] c" wrote no profile - it ended by a signal (" }>, align 8
@.d47 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c")\0A" }>, align 8
@.d48 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang profile: " }>, align 8
@.d49 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c" is not a profile this compiler writes\0A" }>, align 8
@.d50 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d51 = private constant <{ i64, [101 x i8] }> <{ i64 0, [101 x i8] c"olang profile: no llvm-symbolizer found beside clang or on PATH - functions named by their addresses\0A" }>, align 8
@.d52 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"olang profile: " }>, align 8
@.d53 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c" cannot be written\0A" }>, align 8
@.d54 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"flame graph: " }>, align 8
@.d55 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
define linkonce_odr %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Image"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/eval:Image"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/eval:Image", ptr %a0
  store %"compiler/eval:Image" %t2, ptr %l1
  %t3 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 1
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/eval:Image", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = load %"compiler/eval:Image", ptr %l1
  store %"compiler/eval:Image" %t13, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Image", ptr %rv
  ret %"compiler/eval:Image" %rr
}

define linkonce_odr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  %l3 = alloca %"compiler/eval:Image"
  %rv = alloca %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %a0
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l1, i32 0, i32 1
  %t5 = call %"compiler/eval:Image" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aImage(ptr %v0, ptr %t3)
  store %"compiler/eval:Image" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/eval:Image", ptr %l3
  %t7 = getelementptr %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l1, i32 0, i32 1
  store %"compiler/eval:Image" %t6, ptr %t7
  %t8 = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %l1
  store %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8", ptr %rv
  ret %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" %rr
}

define linkonce_odr %"compiler/views:Cand" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fviews_3aCand(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/views:Cand"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/views:Cand"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/views:Cand", ptr %a0
  store %"compiler/views:Cand" %t2, ptr %l1
  %t3 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l5
  br label %bb2
bb2:
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t12 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %t12
  %t13 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  %t15 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %t13)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  br label %bb3
bb3:
  %t16 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t17 = getelementptr %"compiler/views:Cand", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t16, ptr %t17
  %t18 = load %"compiler/views:Cand", ptr %l1
  store %"compiler/views:Cand" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/views:Cand", ptr %rv
  ret %"compiler/views:Cand" %rr
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e(ptr %v0, ptr %a0) #0 {
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
  %t6 = call { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feval_3aBlob_3e(ptr %v0, { i64, ptr } %t4)
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_26_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 16
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 16
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

define linkonce_odr { i64, ptr } @olang_2emir_2eHelperKind_2eCopy_2eArray_3ccompiler_2feval_3aBlob_3e(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca %"compiler/eval:Blob"
  %rv = alloca { i64, ptr }
  %t16 = alloca %"compiler/eval:Blob", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t2 = extractvalue { i64, ptr } %t1, 0
  store i64 %t2, ptr %l1, !tbaa !24
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = mul i64 %t3, 272
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
  %t15 = getelementptr %"compiler/eval:Blob", ptr %t14, i64 %t12
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %t16, ptr %v0, ptr %t15)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %t16, i64 272, i1 false)
  br label %bb4
bb3:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t21 = load ptr, ptr %t20, !tbaa !27
  %t22 = getelementptr %"compiler/eval:Blob", ptr %t21, i64 %t19
  call void @llvm.memmove.p0.p0.i64(ptr %t22, ptr %l6, i64 272, i1 false)
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = add i64 %t23, 1
  store i64 %t24, ptr %l3, !tbaa !24
  br label %bb1
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3aBlob(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:Blob"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 272, i1 false)
  %t2 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  %t12 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t12)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l7
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t16 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %t16
  %t17 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  %t19 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t17)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l9
  br label %bb4
bb4:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t21 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %t21
  %t22 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  %t24 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t22)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l11
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t26 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %t26
  %t27 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t27)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l13
  br label %bb6
bb6:
  %t30 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  %t31 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t30, ptr %t31
  %t32 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  %t34 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %t32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l15
  br label %bb7
bb7:
  %t35 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t36 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %t36
  %t37 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t37)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l17
  br label %bb8
bb8:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  %t41 = getelementptr %"compiler/eval:Blob", ptr %l1, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 1
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 1
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 4
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 4
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

declare void @compiler_2fbuild_3aProgram_2ector(ptr %out, ptr %v0)
declare i32 @compiler_2folang_2ecompiler_2folang_3aPasses_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, i32 %a2, ptr %a3, ptr %a4, ptr %a5)
declare i32 @compiler_2fbuild_2efinish(ptr %v0, ptr %a0)
@olang_loc_4cd8465f442ebc46_73c7e9f900a2458a = external constant [0 x i8]
declare i32 @compiler_2fbuild_2eunbuilt()
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU64_3e_2eLen_3cU64_3e(ptr %v0, ptr %a0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eensureDir(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eObjects(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2fbuild_2ePhase(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elibrary(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, ptr %a4)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aProgram_2erootIdentity(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2fbuild_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2emodeSuffix(ptr %v0, ptr %v1, ptr %a0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eLink(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eLinkFailed(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eFatal(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare { i64, ptr } @compiler_2fbuild_2eShown(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2epaint(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
declare void @compiler_2fbuild_2esayln(ptr %v0, { i64, ptr } %a0)
@olang_loc_539f96ece49ac99_8ec4d6c22ed03845 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H43a0c2f426a671129c7ac3eefd9ac274(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fos_2eReadFile(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotOpen(ptr %v0)
declare void @compiler_2fbuild_2efileFatal(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, %"compiler/diagmsg:Msg" %a1, ptr %a2)
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eOutputCannotWrite(ptr %v0)
declare { i32, { i64, ptr } } @compiler_2folang_2ecompiler_2folang_3aPasses_2eExplain(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4)
@olang_loc_251e830707558b33_b2bdace7e2a71047 = external constant [0 x i8]
declare void @compiler_2fbuild_2esay(ptr %v0, { i64, ptr } %a0)
declare { i32, %"std/os:FileInfo" } @std_2fos_2eFileInfo_2eStat(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eunusable(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, %"compiler/diagmsg:Msg" %a2, ptr %a3)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eIsDirectory(ptr %v0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNotRegular(ptr %v0)
declare { i32, i32 } @compiler_2folang_2ecompiler_2folang_3aPasses_2eInterpret(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3, ptr %a4)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eskipped(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2)
@olang_loc_ac43697cc5f2dca0_4dfd3d6081b857d4 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fbuild_2enoTestNamed(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, ptr %a2)
@olang_loc_6ff5f1cbdf8b017d_cabbfa25d1d462b1 = external constant [0 x i8]
declare %"compiler/build:Listed" @compiler_2fbuild_3aListed_2ector(ptr %v0)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistQuick(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, ptr %a5)
declare { i64, ptr } @compiler_2fbuild_2eRemarksOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__Hdba28025cac729fb3c994cc5728b4c22(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2elistLink(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3, i1 %a4, ptr %a5, ptr %a6)
declare { i32, { i64, ptr } } @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2erunner(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU64_3e_2ector(ptr %v0, i64 %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cstd_2fprelude_2ftext_3aString__H90cd95196748a565d72dba99b0550122(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eExecInPlace(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eCannotRun(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_e43b1413a2a1997d_89f9fa2bec5137e9 = external constant [0 x i8]
@olang_loc_44996bcc7c9bda8_515f8c8db8b0565c = external constant [0 x i8]
declare void @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2eTestHeader(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fbuild_2ecompiler_2fbuild_3aConfig_2efuzzRun(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2)
declare { i32, %"std/os:Output" } @std_2fos_2eOutput_2eExec(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, i1 %a2, { i64, ptr } %a3)
declare { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %v0, i32 %a0)
declare i32 @compiler_2fbuild_2eFinish(ptr %v0, ptr %a0)
@olang_loc_4ce37e8669e18741_b51ffe42b73135c5 = external constant [0 x i8]
declare { i64, ptr } @compiler_2flisting_2ehow(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare { i64, ptr } @compiler_2flisting_2ecommentOf(ptr %v0, ptr %v1, ptr %a0, i1 %a1)
declare %"compiler/listing:Inputs" @compiler_2flisting_3aInputs_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, ptr } %a2, { i64, ptr } %a3, i1 %a4)
declare { i64, ptr } @compiler_2flisting_2eRender(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2flisting_2esay(ptr %v0, { i64, ptr } %a0)
declare i1 @compiler_2fdiag_2eColorWanted()
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare void @compiler_2fbuild_3aConfig_2ector(ptr %out, ptr %v0)
declare i32 @compiler_2folang_2eCommandLine_2ePrepare(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2)
declare i32 @compiler_2folang_2esaid(ptr %v0, ptr %a0)
@G_2ecompiler_2folang_2eHelp = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
declare { i32, { i64, ptr } } @compiler_2folang_2ehelp(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i32 @compiler_2folang_2ewrite(ptr %v0, { i64, ptr } %a0)
@G_2ecompiler_2folang_2eExplain = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fsession_2eCapsMode(ptr %v0, ptr %v1, { i64, ptr } %a0, ptr %a1)
declare { i32, { i64, ptr } } @compiler_2folang_2eexplainRule(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, ptr %a1)
@G_2ecompiler_2folang_2eFormat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2folang_2eformat(ptr %v0, ptr %a0)
@G_2ecompiler_2folang_2eFix = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare { i32, { i64, ptr } } @std_2fos_2eReadLink(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fload_2eStdDir(ptr %v0)
declare i32 @compiler_2ffix_2eFiles(ptr %v0, ptr %v1, ptr %v2, i1 %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
@G_2ecompiler_2folang_2eBindgen = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftarget_2eFindClang(ptr %v0)
declare i32 @compiler_2fbindgen_2eRun(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@G_2ecompiler_2folang_2eDoc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fsession_2eDocMode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3)
@G_2ecompiler_2folang_2eApi = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0E\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fapi_2eMode(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, ptr %a3)
@G_2ecompiler_2folang_2eLsp = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2flsp_2eServe(ptr %v0, ptr %a0)
@G_2ecompiler_2folang_2eMcp = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fmcp_2eServe(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2folang_2eCompile = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eBuild = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eRun = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eProfile = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2folang_2eInterp = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fbuild_2eTestFiles(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, { i64, ptr } %a4)
declare i32 @std_2fos_2eMkDirAll(ptr %v0, { i64, ptr } %a0)
declare { i64, ptr } @std_2ffilepath_2eBase(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_2308270aeb54ce5f_1121c256bef46e33 = external constant [0 x i8]
declare i32 @std_2fos_2eRemove(ptr %v0, { i64, ptr } %a0)
declare i32 @compiler_2fprofile_2erunProfiled(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3)
declare void @compiler_2fprofile_2esay(ptr %v0, { i64, ptr } %a0)
declare { i32, %"compiler/profile:Profile" } @compiler_2fprofile_2eProfile_2eRead(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @compiler_2fprofile_2eSymbolizer(ptr %v0)
declare void @compiler_2fprofile_2ePlaces_2eResolve(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fprofile_2eReport(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2)
declare { i64, ptr } @compiler_2fprofile_2eFlameGraph(ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, ptr %a1, ptr %a2)
declare { i32, { i64, ptr } } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aLineIter_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H068cfedf7407289d149ee3c6f4c8aa20(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapEntry.d73a415b3d3fe84ca844d285f54031b8" @std_2fprelude_2fmap_3aMapEntry_3cI64_2c_20compiler_2feval_3aImage_3e_2ector(ptr %v0, ptr %v1, i64 %a0, %"compiler/eval:Image" %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftyped_3aVersions_2_H0b5e11c98f28e10a1176da3c2806abb8(ptr %v0, ptr %a0)
declare { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Heebd28230b8fdd871dbb93ccdeb5ff7f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2ector(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_42020986585537b2_4c4b240152eb3e56 = external constant [0 x i8]
@olang_loc_82d7e3816727b7d6_2185186449dccf1a = external constant [0 x i8]

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
