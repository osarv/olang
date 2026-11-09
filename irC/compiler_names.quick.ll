source_filename = "compiler_names.quick.ll"
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
%"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/names:Resolver" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/names:Ref" = type { i32, i64, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" = type { i32, i64 }
%"compiler/names:Entry" = type { i32, %"compiler/source:Span", i32, i1, ptr }
%"compiler/names:Table" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/diagmsg:Msg" = type { i32, { i64, ptr }, { i64, ptr } }
%"compiler/ast:TopIf" = type { ptr, ptr, ptr, ptr }
%"compiler/ast:VarDecl" = type { { i64, ptr }, { i64, ptr }, ptr, { i64, ptr }, i1, i1, { i64, ptr }, i1 }
%"compiler/ast:CaseDecl" = type { %"compiler/source:Span", i32, { i64, ptr }, i1, ptr, { i64, ptr } }
%"compiler/ast:Param" = type { %"compiler/source:Span", i32, ptr, ptr, { i64, ptr } }
%"compiler/ast:Branch" = type { %"compiler/source:Span", { i64, ptr }, i64 }
%"compiler/ast:Catch" = type { %"compiler/source:Span", { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i32, %"compiler/source:Span" }
%"compiler/ast:Path" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/ast:Func" = type { %"compiler/source:Span", ptr, i32, ptr, { i64, ptr }, { i64, ptr }, i1, i1, { i64, ptr }, ptr, i32 }
%"compiler/ast:TypeDecl" = type { i32, { i64, ptr }, i1, ptr, { i64, ptr }, i32, i1 }
%"compiler/ast:Sig" = type { { i64, ptr }, { i64, ptr }, i1, { i64, ptr }, i1, ptr, i1, i1, { i64, ptr } }
%"compiler/ast:ContractBlock" = type { %"compiler/source:Span", { i64, ptr } }
%"compiler/names:local" = type { i32, %"compiler/source:Span", i32, i1, i1, i1 }
%"compiler/names:raisedName" = type { i32, %"compiler/source:Span", i64, i1, i64, { i64, ptr } }
%"compiler/ast:If" = type { ptr, ptr, ptr }
%"compiler/load:Import" = type { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, { i64, ptr }, i64, i64, { i64, ptr }, %"compiler/source:Span" }
%"compiler/ast:Match" = type { %"compiler/source:Span", ptr, i1, { i64, ptr } }
%"compiler/names:raised" = type { i32, %"compiler/source:Span", i1, { i64, ptr } }
%"compiler/ast:Multi" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/ast:For3" = type { ptr, ptr, ptr, { i64, ptr } }
%"compiler/ast:ForIn" = type { i32, i32, ptr, i1, { i64, ptr }, { i64, ptr }, i1 }
%"compiler/ast:JoinS" = type { i1, { i64, ptr }, { i64, ptr } }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/ast:TypeParam" = type { %"compiler/source:Span", i32, ptr, { i64, ptr }, i1 }
%"compiler/ast:StructBody" = type { { i64, ptr }, ptr, { i64, ptr }, %"compiler/source:Span", { i64, ptr }, { i64, ptr } }
%"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" = type { i64, %"compiler/source:Span" }
%"compiler/source:Source" = type { { i64, ptr }, { i64, ptr }, { i64, ptr } }
%"compiler/cond:Consts" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/diag:Said" = type { { i64, ptr }, i64, i64, { i64, ptr } }
%"compiler/fetch:Fetcher" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Names" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
define dso_local i1 @compiler_2fnames_2eMentions(ptr %v0, ptr %v1, { i64, ptr } %a0, %"compiler/source:Span" %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i1
  %l19 = alloca i64
  %l32 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l38 = alloca i1
  %l39 = alloca { i64, ptr }
  %l40 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l51 = alloca i1
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l60 = alloca i1
  %l68 = alloca i1
  %l69 = alloca { i64, ptr }
  %l75 = alloca i1
  %l78 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t11 = sext i32 %t9 to i64
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  %t22 = icmp sle i64 %t16, %t19
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t24 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb6
bb5:
  %t29 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l19, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l19, !tbaa !24
  store i64 %t33, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  %t42 = add i64 %t36, %t39
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = icmp sle i64 %t42, %t43
  %t48 = xor i1 %t46, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  br label %bb39
bb9:
  br label %bb10
bb10:
  %t50 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t50, ptr %l32, !tbaa !27
  %t51 = load i64, ptr %l5, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i8, ptr %t54, i64 %t51
  %t56 = load i8, ptr %t55, !tbaa !32
  %t57 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t57, ptr %l35, !tbaa !27
  %t58 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t59 = load ptr, ptr %t58, !tbaa !27
  %t60 = getelementptr i8, ptr %t59, i64 0
  %t61 = load i8, ptr %t60, !tbaa !32
  %t64 = icmp ne i8 %t56, %t61
  br i1 %t64, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb20
bb12:
  %t66 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t66, ptr %l39, !tbaa !27
  %t67 = load i64, ptr %l5, !tbaa !24
  store i64 %t67, ptr %l40, !tbaa !24
  %t68 = load i64, ptr %l5, !tbaa !24
  %t69 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t74 = add i64 %t68, %t71
  store i64 %t74, ptr %l44, !tbaa !24
  %t75 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  store i64 %t76, ptr %l45, !tbaa !24
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = icmp sge i64 %t77, 0
  br i1 %t78, label %bb13, label %bb14
bb13:
  %t80 = load i64, ptr %l40, !tbaa !24
  %t81 = load i64, ptr %l44, !tbaa !24
  %t82 = icmp sle i64 %t80, %t81
  br i1 %t82, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_fb93c458ab7e801d_1c40062d0c03aab1)
  unreachable
bb15:
  %t84 = load i64, ptr %l44, !tbaa !24
  %t85 = load i64, ptr %l45, !tbaa !24
  %t86 = icmp sle i64 %t84, %t85
  br i1 %t86, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_fb93c458ab7e801d_1c40062d0c03aab1)
  unreachable
bb17:
  %t88 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = load i64, ptr %l40, !tbaa !24
  %t91 = load i64, ptr %l44, !tbaa !24
  %t92 = getelementptr i8, ptr %t89, i64 %t90
  %t93 = sub i64 %t91, %t90
  %t94 = insertvalue { i64, ptr } undef, i64 %t93, 0
  %t95 = insertvalue { i64, ptr } %t94, ptr %t92, 1
  %t96 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t99 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t95, { i64, ptr } %t96)
  store i1 %t99, ptr %l51
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_fb93c458ab7e801d_1c40062d0c03aab1)
  unreachable
bb19:
  %t100 = load i1, ptr %l51, !tbaa !21
  %t101 = xor i1 %t100, true
  store i1 %t101, ptr %l38, !tbaa !21
  br label %bb20
bb20:
  %t103 = load i1, ptr %l38, !tbaa !21
  br i1 %t103, label %bb21, label %bb22
bb21:
  br label %bb38
bb22:
  br label %bb23
bb23:
  %t104 = load i64, ptr %l5, !tbaa !24
  %t106 = icmp sgt i64 %t104, 0
  br i1 %t106, label %bb24, label %bb25
bb24:
  %t108 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t108, ptr %l56, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = sub i64 %t109, 1
  %t113 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i8, ptr %t114, i64 %t111
  %t116 = load i8, ptr %t115, !tbaa !32
  %t118 = call i1 @compiler_2fnames_2eidentChar(i8 %t116)
  store i1 %t118, ptr %l60
  br label %bb26
bb25:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb27
bb26:
  %t119 = load i1, ptr %l60, !tbaa !21
  store i1 %t119, ptr %l55, !tbaa !21
  br label %bb27
bb27:
  %t120 = load i1, ptr %l55, !tbaa !21
  store i1 %t120, ptr %l6, !tbaa !21
  %t121 = load i64, ptr %l5, !tbaa !24
  %t122 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t122, 0
  %t127 = add i64 %t121, %t124
  %t128 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t130 = extractvalue { i64, ptr } %t128, 0
  %t133 = icmp slt i64 %t127, %t130
  br i1 %t133, label %bb28, label %bb29
bb28:
  %t135 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t135, ptr %l69, !tbaa !27
  %t136 = load i64, ptr %l5, !tbaa !24
  %t137 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t142 = add i64 %t136, %t139
  %t144 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr i8, ptr %t145, i64 %t142
  %t147 = load i8, ptr %t146, !tbaa !32
  %t149 = call i1 @compiler_2fnames_2eidentChar(i8 %t147)
  store i1 %t149, ptr %l75
  br label %bb30
bb29:
  store i1 false, ptr %l68, !tbaa !21
  br label %bb31
bb30:
  %t150 = load i1, ptr %l75, !tbaa !21
  store i1 %t150, ptr %l68, !tbaa !21
  br label %bb31
bb31:
  %t151 = load i1, ptr %l68, !tbaa !21
  store i1 %t151, ptr %l7, !tbaa !21
  %t152 = load i1, ptr %l6, !tbaa !21
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb32, label %bb33
bb32:
  %t156 = load i1, ptr %l7, !tbaa !21
  %t158 = xor i1 %t156, true
  store i1 %t158, ptr %l78, !tbaa !21
  br label %bb34
bb33:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb34
bb34:
  %t160 = load i1, ptr %l78, !tbaa !21
  br i1 %t160, label %bb35, label %bb36
bb35:
  store i1 true, ptr %rv
  br label %ret
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t162 = load i64, ptr %l5, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l5, !tbaa !24
  br label %bb7
bb39:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fnames_2ePayloadName(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } %a0, 1
  %t4 = extractvalue { i64, ptr } %a0, 0
  %t5 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d0, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d0, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  store { i64, ptr } %t11, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fnames_2eWrittenMut(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l5 = alloca i1
  %l6 = alloca ptr
  %l7 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 8}
  %t13 = icmp eq i64 %t11, 4
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr { i64, [5 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t17, i32 0, i32 2
  %t19 = load i1, ptr %t18
  store i1 %t19, ptr %l1, !tbaa !21
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t21 = load i1, ptr %l1, !tbaa !21
  store i1 %t21, ptr %l5, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_93f58d21316a4d1a_c55e0a424e12d50e)
  unreachable
bb14:
  %t23 = load i1, ptr %l5, !tbaa !21
  store i1 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eImportSaid(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l7 = alloca i64
  %l9 = alloca i64
  %l14 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l18 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 15
  store ptr %t3, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  store i64 %t5, ptr %l7, !tbaa !24
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l9
  br label %bb2
bb2:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t10 = load i64, ptr %l9, !tbaa !24
  %t11 = icmp slt i64 %t9, %t10
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb14
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l2, !tbaa !29
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Hd32f6fdf378a1d4c0e47f8552643012d(ptr %v0, ptr %t15, i64 %t16)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t19, ptr %l14
  br label %bb6
bb6:
  %t20 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l14
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t20, ptr %l4
  %t21 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l4, i32 0, i32 0
  %t22 = load i32, ptr %t21, !tbaa !23
  %t26 = icmp eq i32 %t22, %a1
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l4, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = icmp eq i64 %t29, -1
  store i1 %t31, ptr %l18, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t33 = load i1, ptr %l18, !tbaa !21
  br i1 %t33, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t37 = add i64 %t35, 1
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb1
bb14:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eMember(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca %"compiler/names:Ref"
  %l5 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca %"compiler/names:Ref"
  %l10 = alloca i32
  %l12 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/names:Ref"
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/names:Resolver", ptr %a0, i32 0, i32 5
  store ptr %t3, ptr %l5, !tbaa !29
  %t8 = call i64 @compiler_2fnames_2ekey(i64 %a1, i32 %a2)
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l5, !tbaa !29
  %t10 = load i64, ptr %l8, !tbaa !24
  %t11 = call { i32, %"compiler/names:Ref" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eG_Hb4f204ca9d50eb43e30fe8770cb15d1a(ptr %v0, ptr %t9, i64 %t10)
  %t12 = extractvalue { i32, %"compiler/names:Ref" } %t11, 1
  %t13 = extractvalue { i32, %"compiler/names:Ref" } %t11, 0
  store i32 %t13, ptr %l10
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store %"compiler/names:Ref" %t12, ptr %l9
  br label %bb2
bb2:
  %t16 = load %"compiler/names:Ref", ptr %l9
  store %"compiler/names:Ref" %t16, ptr %l3
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t18 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t18, ptr %l12
  br label %bb5
bb5:
  %t19 = load %"compiler/names:Ref", ptr %l12
  store %"compiler/names:Ref" %t19, ptr %l3
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  %t20 = load %"compiler/names:Ref", ptr %l3
  store %"compiler/names:Ref" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Ref", ptr %rv
  ret %"compiler/names:Ref" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eResolve(ptr %v0, ptr %a0) #0 {
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
  %l14 = alloca ptr
  %l15 = alloca i64
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l19 = alloca %"compiler/names:Entry"
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
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca %"compiler/names:Table"
  %l82 = alloca i64
  %l86 = alloca i64
  %l89 = alloca i64
  %l111 = alloca ptr
  %l121 = alloca ptr
  %l124 = alloca i64
  %l126 = alloca i64
  %l131 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l134 = alloca i1
  %l136 = alloca ptr
  %l141 = alloca i32
  %l148 = alloca ptr
  %l151 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l152 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l154 = alloca %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed"
  %l155 = alloca i32
  %l157 = alloca i1
  %l161 = alloca ptr
  %l165 = alloca %"compiler/names:Entry"
  %l168 = alloca i1
  %l171 = alloca i1
  %l174 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l177 = alloca i1
  %l179 = alloca ptr
  %l180 = alloca i32
  %l184 = alloca %"compiler/names:Ref"
  %l190 = alloca i64
  %l194 = alloca i64
  %l197 = alloca i64
  %l219 = alloca ptr
  %l230 = alloca i64
  %l234 = alloca i64
  %l237 = alloca i64
  %l255 = alloca ptr
  %l256 = alloca i64
  %l261 = alloca ptr
  %l269 = alloca i64
  %l273 = alloca i64
  %l276 = alloca i64
  %l298 = alloca ptr
  %l312 = alloca i64
  %l316 = alloca i64
  %l319 = alloca i64
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %t59 = alloca %"compiler/names:Table", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l1, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t8 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t6)
  store i64 %t8, ptr %l48
  br label %bb1
bb1:
  %t9 = load i64, ptr %l48, !tbaa !24
  store i64 %t9, ptr %l2, !tbaa !24
  store i64 1, ptr %l3, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = icmp sgt i64 %t10, %t11
  br i1 %t14, label %bb2, label %bb3
bb2:
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = icmp sgt i64 %t16, 0
  br i1 %t18, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb7
bb4:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t21 = load i64, ptr %l1, !tbaa !24
  %t24 = sub i64 %t20, %t21
  %t25 = load i64, ptr %l3, !tbaa !24
  %t28 = add i64 %t24, %t25
  %t30 = sub i64 %t28, 1
  %t31 = load i64, ptr %l3, !tbaa !24
  %t34 = sdiv i64 %t30, %t31
  store i64 %t34, ptr %l55, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb6
bb6:
  %t36 = load i64, ptr %l55, !tbaa !24
  store i64 %t36, ptr %l52, !tbaa !24
  br label %bb7
bb7:
  %t37 = load i64, ptr %l52, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp slt i64 %t38, %t39
  %t44 = xor i1 %t42, true
  br i1 %t44, label %bb9, label %bb10
bb9:
  br label %bb15
bb10:
  br label %bb11
bb11:
  %t46 = load i64, ptr %l1, !tbaa !24
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l3, !tbaa !24
  %t51 = mul i64 %t47, %t48
  %t54 = add i64 %t46, %t51
  store i64 %t54, ptr %l6, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/names:Resolver", ptr %t56, i32 0, i32 1
  store ptr %t58, ptr %l74, !tbaa !29
  call void @compiler_2fnames_3aTable_2ector(ptr %t59, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t59, i64 320, i1 false)
  br label %bb12
bb12:
  %t60 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 320, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t60, ptr %l75, i64 320, i1 false)
  %t61 = load ptr, ptr %l74, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H945cb5faf347f41d89f6885b75263baa(ptr %v0, ptr %v0, ptr %t61, ptr %t60)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t63 = load i64, ptr %l5, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l5, !tbaa !24
  br label %bb8
bb15:
  store i64 0, ptr %l7, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/names:Resolver", ptr %t67, i32 0, i32 0
  %t70 = load ptr, ptr %t69, !tbaa !29
  %t72 = getelementptr %"compiler/load:Loader", ptr %t70, i32 0, i32 10
  %t74 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t72)
  store i64 %t74, ptr %l82
  br label %bb16
bb16:
  %t75 = load i64, ptr %l82, !tbaa !24
  store i64 %t75, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t76 = load i64, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = icmp sgt i64 %t76, %t77
  br i1 %t80, label %bb17, label %bb18
bb17:
  %t82 = load i64, ptr %l9, !tbaa !24
  %t84 = icmp sgt i64 %t82, 0
  br i1 %t84, label %bb19, label %bb20
bb18:
  store i64 0, ptr %l86, !tbaa !24
  br label %bb22
bb19:
  %t86 = load i64, ptr %l8, !tbaa !24
  %t87 = load i64, ptr %l7, !tbaa !24
  %t90 = sub i64 %t86, %t87
  %t91 = load i64, ptr %l9, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t96 = sub i64 %t94, 1
  %t97 = load i64, ptr %l9, !tbaa !24
  %t100 = sdiv i64 %t96, %t97
  store i64 %t100, ptr %l89, !tbaa !24
  br label %bb21
bb20:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb21
bb21:
  %t102 = load i64, ptr %l89, !tbaa !24
  store i64 %t102, ptr %l86, !tbaa !24
  br label %bb22
bb22:
  %t103 = load i64, ptr %l86, !tbaa !24
  store i64 %t103, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb23
bb23:
  %t104 = load i64, ptr %l11, !tbaa !24
  %t105 = load i64, ptr %l10, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb24, label %bb25
bb24:
  br label %bb72
bb25:
  br label %bb26
bb26:
  %t112 = load i64, ptr %l7, !tbaa !24
  %t113 = load i64, ptr %l11, !tbaa !24
  %t114 = load i64, ptr %l9, !tbaa !24
  %t117 = mul i64 %t113, %t114
  %t120 = add i64 %t112, %t117
  store i64 %t120, ptr %l12, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/names:Resolver", ptr %t122, i32 0, i32 0
  %t125 = load ptr, ptr %t124, !tbaa !29
  %t127 = getelementptr %"compiler/load:Loader", ptr %t125, i32 0, i32 10
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t127, i64 %t128)
  store ptr %t131, ptr %l111
  br label %bb27
bb27:
  %t132 = load ptr, ptr %l111, !tbaa !29
  %t135 = getelementptr %"compiler/load:Module", ptr %t132, i32 0, i32 3
  %t136 = load i1, ptr %t135, !tbaa !21
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb28, label %bb29
bb28:
  br label %bb71
bb29:
  br label %bb30
bb30:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etableOf(ptr %v0, ptr %t140, i64 %t141)
  br label %bb31
bb31:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/names:Resolver", ptr %t144, i32 0, i32 0
  %t147 = load ptr, ptr %t146, !tbaa !29
  %t149 = getelementptr %"compiler/load:Loader", ptr %t147, i32 0, i32 10
  %t150 = load i64, ptr %l12, !tbaa !24
  %t153 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t149, i64 %t150)
  store ptr %t153, ptr %l121
  br label %bb32
bb32:
  %t154 = load ptr, ptr %l121, !tbaa !29
  %t156 = getelementptr %"compiler/load:Module", ptr %t154, i32 0, i32 9
  store ptr %t156, ptr %l14, !tbaa !29
  store i64 0, ptr %l15, !tbaa !24
  br label %bb33
bb33:
  %t158 = load i64, ptr %l15, !tbaa !24
  store i64 %t158, ptr %l124, !tbaa !24
  %t159 = load ptr, ptr %l14, !tbaa !29
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l126
  br label %bb34
bb34:
  %t162 = load i64, ptr %l124, !tbaa !24
  %t163 = load i64, ptr %l126, !tbaa !24
  %t164 = icmp slt i64 %t162, %t163
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb35, label %bb36
bb35:
  br label %bb46
bb36:
  br label %bb37
bb37:
  %t168 = load ptr, ptr %l14, !tbaa !29
  %t169 = load i64, ptr %l15, !tbaa !24
  %t172 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t168, i64 %t169)
  store { i64, ptr } %t172, ptr %l131
  br label %bb38
bb38:
  %t173 = load { i64, ptr }, ptr %l131, !tbaa !27
  store { i64, ptr } %t173, ptr %l16, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l16, !tbaa !27
  store { i64, ptr } %t174, ptr %l132, !tbaa !27
  %t175 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr i8, ptr %t176, i64 0
  %t178 = load i8, ptr %t177, !tbaa !32
  %t180 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t178)
  store i1 %t180, ptr %l134
  br label %bb39
bb39:
  %t181 = load i1, ptr %l134, !tbaa !21
  br i1 %t181, label %bb40, label %bb41
bb40:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/names:Resolver", ptr %t182, i32 0, i32 2
  store ptr %t184, ptr %l136, !tbaa !29
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/names:Resolver", ptr %t185, i32 0, i32 0
  %t188 = load ptr, ptr %t187, !tbaa !29
  %t190 = getelementptr %"compiler/load:Loader", ptr %t188, i32 0, i32 3
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t192 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t195 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t191, { i64, ptr } %t192)
  store i32 %t195, ptr %l141
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t196 = load i64, ptr %l12, !tbaa !24
  %t197 = load ptr, ptr %l136, !tbaa !29
  %t198 = load i32, ptr %l141, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t197, i32 %t198, i64 %t196)
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb45
bb45:
  %t200 = load i64, ptr %l15, !tbaa !24
  %t202 = add i64 %t200, 1
  store i64 %t202, ptr %l15, !tbaa !24
  br label %bb33
bb46:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/names:Resolver", ptr %t204, i32 0, i32 1
  %t207 = load i64, ptr %l12, !tbaa !24
  %t210 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t206, i64 %t207)
  store ptr %t210, ptr %l148
  br label %bb47
bb47:
  %t211 = load ptr, ptr %l148, !tbaa !29
  %t213 = getelementptr %"compiler/names:Table", ptr %t211, i32 0, i32 1
  %t215 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v0, ptr %t213)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t215, ptr %l151
  br label %bb48
bb48:
  %t216 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l151
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t216, ptr %l17
  br label %bb49
bb49:
  store %olang.scope zeroinitializer, ptr %s12
  %t218 = call { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %l17)
  %t219 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t218, 1
  %t220 = extractvalue { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } %t218, 0
  store i32 %t220, ptr %l155
  %t221 = icmp ne i32 %t220, 0
  br i1 %t221, label %bb51, label %ok.222, !prof !99
ok.222:
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t219, ptr %l154
  br label %bb50
bb50:
  %t223 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l154
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t223, ptr %l152
  br label %bb53
bb51:
  %t224 = load i32, ptr %l155, !tbaa !23
  %t225 = ashr i32 %t224, 16
  %t227 = icmp eq i32 %t225, 1
  store i1 %t227, ptr %l157, !tbaa !21
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s12)
  br label %bb70
bb53:
  %t228 = load %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l152
  store %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" %t228, ptr %l18
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t231 = getelementptr %"compiler/names:Resolver", ptr %t229, i32 0, i32 1
  %t232 = load i64, ptr %l12, !tbaa !24
  %t235 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t231, i64 %t232)
  store ptr %t235, ptr %l161
  br label %bb54
bb54:
  %t236 = load ptr, ptr %l161, !tbaa !29
  %t238 = getelementptr %"compiler/names:Table", ptr %t236, i32 0, i32 0
  %t239 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18, i32 0, i32 1
  %t240 = load i64, ptr %t239, !tbaa !24
  %t243 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t238, i64 %t240)
  store %"compiler/names:Entry" %t243, ptr %l165
  br label %bb55
bb55:
  %t244 = load %"compiler/names:Entry", ptr %l165
  store %"compiler/names:Entry" %t244, ptr %l19
  %t245 = getelementptr %"compiler/names:Entry", ptr %l19, i32 0, i32 2
  %t246 = load i32, ptr %t245, !range !{i32 0, i32 9}
  %t248 = trunc i64 2 to i32
  %t249 = icmp eq i32 %t246, %t248
  br i1 %t249, label %bb56, label %bb57
bb56:
  %t251 = getelementptr %"compiler/names:Entry", ptr %l19, i32 0, i32 3
  %t252 = load i1, ptr %t251, !tbaa !21
  %t254 = xor i1 %t252, true
  store i1 %t254, ptr %l168, !tbaa !21
  br label %bb58
bb57:
  store i1 false, ptr %l168, !tbaa !21
  br label %bb58
bb58:
  %t256 = load i1, ptr %l168, !tbaa !21
  br i1 %t256, label %bb59, label %bb60
bb59:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18, i32 0, i32 0
  %t259 = load i32, ptr %t258, !tbaa !23
  %t262 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s12, ptr %t257, i32 %t259)
  store { i64, ptr } %t262, ptr %l174
  br label %bb61
bb60:
  store i1 false, ptr %l171, !tbaa !21
  br label %bb63
bb61:
  %t263 = load { i64, ptr }, ptr %l174, !tbaa !27
  store { i64, ptr } %t263, ptr %l175, !tbaa !27
  %t264 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i8, ptr %t265, i64 0
  %t267 = load i8, ptr %t266, !tbaa !32
  %t269 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t267)
  store i1 %t269, ptr %l177
  br label %bb62
bb62:
  %t270 = load i1, ptr %l177, !tbaa !21
  store i1 %t270, ptr %l171, !tbaa !21
  br label %bb63
bb63:
  %t271 = load i1, ptr %l171, !tbaa !21
  br i1 %t271, label %bb64, label %bb65
bb64:
  store %olang.scope zeroinitializer, ptr %s13
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/names:Resolver", ptr %t272, i32 0, i32 3
  store ptr %t274, ptr %l179, !tbaa !29
  %t275 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18, i32 0, i32 0
  %t276 = load i32, ptr %t275, !tbaa !23
  store i32 %t276, ptr %l180, !tbaa !23
  %t277 = load i64, ptr %l12, !tbaa !24
  %t278 = getelementptr %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed", ptr %l18, i32 0, i32 1
  %t279 = load i64, ptr %t278, !tbaa !24
  %t283 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s13, i32 2, i64 %t277, i64 %t279)
  store %"compiler/names:Ref" %t283, ptr %l184
  br label %bb66
bb65:
  br label %bb68
bb66:
  %t284 = load ptr, ptr %l179, !tbaa !29
  %t285 = load i32, ptr %l180, !tbaa !23
  %t286 = load %"compiler/names:Ref", ptr %l184
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H456f40e55a35e282608933ec0991ad61(ptr %v0, ptr %t284, i32 %t285, %"compiler/names:Ref" %t286)
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s13)
  br label %bb68
bb68:
  call void @__olang_scope_close(ptr %s12)
  br label %bb69
bb69:
  br label %bb49
bb70:
  br label %bb71
bb71:
  %t287 = load i64, ptr %l11, !tbaa !24
  %t289 = add i64 %t287, 1
  store i64 %t289, ptr %l11, !tbaa !24
  br label %bb23
bb72:
  store i64 0, ptr %l20, !tbaa !24
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t293 = getelementptr %"compiler/names:Resolver", ptr %t291, i32 0, i32 0
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t296 = getelementptr %"compiler/load:Loader", ptr %t294, i32 0, i32 10
  %t298 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t296)
  store i64 %t298, ptr %l190
  br label %bb73
bb73:
  %t299 = load i64, ptr %l190, !tbaa !24
  store i64 %t299, ptr %l21, !tbaa !24
  store i64 1, ptr %l22, !tbaa !24
  %t300 = load i64, ptr %l21, !tbaa !24
  %t301 = load i64, ptr %l20, !tbaa !24
  %t304 = icmp sgt i64 %t300, %t301
  br i1 %t304, label %bb74, label %bb75
bb74:
  %t306 = load i64, ptr %l22, !tbaa !24
  %t308 = icmp sgt i64 %t306, 0
  br i1 %t308, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l194, !tbaa !24
  br label %bb79
bb76:
  %t310 = load i64, ptr %l21, !tbaa !24
  %t311 = load i64, ptr %l20, !tbaa !24
  %t314 = sub i64 %t310, %t311
  %t315 = load i64, ptr %l22, !tbaa !24
  %t318 = add i64 %t314, %t315
  %t320 = sub i64 %t318, 1
  %t321 = load i64, ptr %l22, !tbaa !24
  %t324 = sdiv i64 %t320, %t321
  store i64 %t324, ptr %l197, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l197, !tbaa !24
  br label %bb78
bb78:
  %t326 = load i64, ptr %l197, !tbaa !24
  store i64 %t326, ptr %l194, !tbaa !24
  br label %bb79
bb79:
  %t327 = load i64, ptr %l194, !tbaa !24
  store i64 %t327, ptr %l23, !tbaa !24
  store i64 0, ptr %l24, !tbaa !24
  br label %bb80
bb80:
  %t328 = load i64, ptr %l24, !tbaa !24
  %t329 = load i64, ptr %l23, !tbaa !24
  %t332 = icmp slt i64 %t328, %t329
  %t334 = xor i1 %t332, true
  br i1 %t334, label %bb81, label %bb82
bb81:
  br label %bb90
bb82:
  br label %bb83
bb83:
  %t336 = load i64, ptr %l20, !tbaa !24
  %t337 = load i64, ptr %l24, !tbaa !24
  %t338 = load i64, ptr %l22, !tbaa !24
  %t341 = mul i64 %t337, %t338
  %t344 = add i64 %t336, %t341
  store i64 %t344, ptr %l25, !tbaa !24
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/names:Resolver", ptr %t346, i32 0, i32 0
  %t349 = load ptr, ptr %t348, !tbaa !29
  %t351 = getelementptr %"compiler/load:Loader", ptr %t349, i32 0, i32 10
  %t352 = load i64, ptr %l25, !tbaa !24
  %t355 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t351, i64 %t352)
  store ptr %t355, ptr %l219
  br label %bb84
bb84:
  %t356 = load ptr, ptr %l219, !tbaa !29
  %t358 = getelementptr %"compiler/load:Module", ptr %t356, i32 0, i32 3
  %t359 = load i1, ptr %t358, !tbaa !21
  %t361 = xor i1 %t359, true
  br i1 %t361, label %bb85, label %bb86
bb85:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t364 = load i64, ptr %l25, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etableOf(ptr %v0, ptr %t363, i64 %t364)
  br label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t367 = load i64, ptr %l24, !tbaa !24
  %t369 = add i64 %t367, 1
  store i64 %t369, ptr %l24, !tbaa !24
  br label %bb80
bb90:
  store i64 0, ptr %l26, !tbaa !24
  %t371 = load ptr, ptr %l0, !tbaa !29
  %t373 = getelementptr %"compiler/names:Resolver", ptr %t371, i32 0, i32 0
  %t374 = load ptr, ptr %t373, !tbaa !29
  %t376 = getelementptr %"compiler/load:Loader", ptr %t374, i32 0, i32 10
  %t378 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t376)
  store i64 %t378, ptr %l230
  br label %bb91
bb91:
  %t379 = load i64, ptr %l230, !tbaa !24
  store i64 %t379, ptr %l27, !tbaa !24
  store i64 1, ptr %l28, !tbaa !24
  %t380 = load i64, ptr %l27, !tbaa !24
  %t381 = load i64, ptr %l26, !tbaa !24
  %t384 = icmp sgt i64 %t380, %t381
  br i1 %t384, label %bb92, label %bb93
bb92:
  %t386 = load i64, ptr %l28, !tbaa !24
  %t388 = icmp sgt i64 %t386, 0
  br i1 %t388, label %bb94, label %bb95
bb93:
  store i64 0, ptr %l234, !tbaa !24
  br label %bb97
bb94:
  %t390 = load i64, ptr %l27, !tbaa !24
  %t391 = load i64, ptr %l26, !tbaa !24
  %t394 = sub i64 %t390, %t391
  %t395 = load i64, ptr %l28, !tbaa !24
  %t398 = add i64 %t394, %t395
  %t400 = sub i64 %t398, 1
  %t401 = load i64, ptr %l28, !tbaa !24
  %t404 = sdiv i64 %t400, %t401
  store i64 %t404, ptr %l237, !tbaa !24
  br label %bb96
bb95:
  store i64 0, ptr %l237, !tbaa !24
  br label %bb96
bb96:
  %t406 = load i64, ptr %l237, !tbaa !24
  store i64 %t406, ptr %l234, !tbaa !24
  br label %bb97
bb97:
  %t407 = load i64, ptr %l234, !tbaa !24
  store i64 %t407, ptr %l29, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  br label %bb98
bb98:
  %t408 = load i64, ptr %l30, !tbaa !24
  %t409 = load i64, ptr %l29, !tbaa !24
  %t412 = icmp slt i64 %t408, %t409
  %t414 = xor i1 %t412, true
  br i1 %t414, label %bb99, label %bb100
bb99:
  br label %bb105
bb100:
  br label %bb101
bb101:
  %t416 = load i64, ptr %l26, !tbaa !24
  %t417 = load i64, ptr %l30, !tbaa !24
  %t418 = load i64, ptr %l28, !tbaa !24
  %t421 = mul i64 %t417, %t418
  %t424 = add i64 %t416, %t421
  store i64 %t424, ptr %l31, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  store ptr %t426, ptr %l255, !tbaa !29
  %t427 = load i64, ptr %l31, !tbaa !24
  store i64 %t427, ptr %l256, !tbaa !24
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/names:Resolver", ptr %t428, i32 0, i32 0
  %t431 = load ptr, ptr %t430, !tbaa !29
  %t433 = getelementptr %"compiler/load:Loader", ptr %t431, i32 0, i32 10
  %t434 = load i64, ptr %l31, !tbaa !24
  %t437 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t433, i64 %t434)
  store ptr %t437, ptr %l261
  br label %bb102
bb102:
  %t438 = load ptr, ptr %l261, !tbaa !29
  %t440 = getelementptr %"compiler/load:Module", ptr %t438, i32 0, i32 8
  %t441 = load { i64, ptr }, ptr %t440, !tbaa !27
  %t442 = load ptr, ptr %l255, !tbaa !29
  %t443 = load i64, ptr %l256, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eraisedErrors(ptr %v0, ptr %v0, ptr %t442, i64 %t443, { i64, ptr } %t441)
  br label %bb103
bb103:
  br label %bb104
bb104:
  %t445 = load i64, ptr %l30, !tbaa !24
  %t447 = add i64 %t445, 1
  store i64 %t447, ptr %l30, !tbaa !24
  br label %bb98
bb105:
  store i64 0, ptr %l32, !tbaa !24
  %t449 = load ptr, ptr %l0, !tbaa !29
  %t451 = getelementptr %"compiler/names:Resolver", ptr %t449, i32 0, i32 0
  %t452 = load ptr, ptr %t451, !tbaa !29
  %t454 = getelementptr %"compiler/load:Loader", ptr %t452, i32 0, i32 10
  %t456 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t454)
  store i64 %t456, ptr %l269
  br label %bb106
bb106:
  %t457 = load i64, ptr %l269, !tbaa !24
  store i64 %t457, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t458 = load i64, ptr %l33, !tbaa !24
  %t459 = load i64, ptr %l32, !tbaa !24
  %t462 = icmp sgt i64 %t458, %t459
  br i1 %t462, label %bb107, label %bb108
bb107:
  %t464 = load i64, ptr %l34, !tbaa !24
  %t466 = icmp sgt i64 %t464, 0
  br i1 %t466, label %bb109, label %bb110
bb108:
  store i64 0, ptr %l273, !tbaa !24
  br label %bb112
bb109:
  %t468 = load i64, ptr %l33, !tbaa !24
  %t469 = load i64, ptr %l32, !tbaa !24
  %t472 = sub i64 %t468, %t469
  %t473 = load i64, ptr %l34, !tbaa !24
  %t476 = add i64 %t472, %t473
  %t478 = sub i64 %t476, 1
  %t479 = load i64, ptr %l34, !tbaa !24
  %t482 = sdiv i64 %t478, %t479
  store i64 %t482, ptr %l276, !tbaa !24
  br label %bb111
bb110:
  store i64 0, ptr %l276, !tbaa !24
  br label %bb111
bb111:
  %t484 = load i64, ptr %l276, !tbaa !24
  store i64 %t484, ptr %l273, !tbaa !24
  br label %bb112
bb112:
  %t485 = load i64, ptr %l273, !tbaa !24
  store i64 %t485, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb113
bb113:
  %t486 = load i64, ptr %l36, !tbaa !24
  %t487 = load i64, ptr %l35, !tbaa !24
  %t490 = icmp slt i64 %t486, %t487
  %t492 = xor i1 %t490, true
  br i1 %t492, label %bb114, label %bb115
bb114:
  br label %bb123
bb115:
  br label %bb116
bb116:
  %t494 = load i64, ptr %l32, !tbaa !24
  %t495 = load i64, ptr %l36, !tbaa !24
  %t496 = load i64, ptr %l34, !tbaa !24
  %t499 = mul i64 %t495, %t496
  %t502 = add i64 %t494, %t499
  store i64 %t502, ptr %l37, !tbaa !24
  %t504 = load ptr, ptr %l0, !tbaa !29
  %t506 = getelementptr %"compiler/names:Resolver", ptr %t504, i32 0, i32 0
  %t507 = load ptr, ptr %t506, !tbaa !29
  %t509 = getelementptr %"compiler/load:Loader", ptr %t507, i32 0, i32 10
  %t510 = load i64, ptr %l37, !tbaa !24
  %t513 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t509, i64 %t510)
  store ptr %t513, ptr %l298
  br label %bb117
bb117:
  %t514 = load ptr, ptr %l298, !tbaa !29
  store ptr %t514, ptr %l38, !tbaa !29
  %t515 = load ptr, ptr %l38, !tbaa !29
  %t517 = getelementptr %"compiler/load:Module", ptr %t515, i32 0, i32 8
  %t518 = load { i64, ptr }, ptr %t517, !tbaa !27
  %t520 = extractvalue { i64, ptr } %t518, 0
  %t522 = icmp sgt i64 %t520, 0
  br i1 %t522, label %bb118, label %bb119
bb118:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i64, ptr %l37, !tbaa !24
  %t526 = load ptr, ptr %l38, !tbaa !29
  %t528 = getelementptr %"compiler/load:Module", ptr %t526, i32 0, i32 8
  %t529 = load { i64, ptr }, ptr %t528, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v0, ptr %t524, i64 %t525, { i64, ptr } %t529)
  br label %bb120
bb119:
  br label %bb121
bb120:
  br label %bb121
bb121:
  br label %bb122
bb122:
  %t533 = load i64, ptr %l36, !tbaa !24
  %t535 = add i64 %t533, 1
  store i64 %t535, ptr %l36, !tbaa !24
  br label %bb113
bb123:
  store i64 0, ptr %l39, !tbaa !24
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t539 = getelementptr %"compiler/names:Resolver", ptr %t537, i32 0, i32 0
  %t540 = load ptr, ptr %t539, !tbaa !29
  %t542 = getelementptr %"compiler/load:Loader", ptr %t540, i32 0, i32 10
  %t544 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t542)
  store i64 %t544, ptr %l312
  br label %bb124
bb124:
  %t545 = load i64, ptr %l312, !tbaa !24
  store i64 %t545, ptr %l40, !tbaa !24
  store i64 1, ptr %l41, !tbaa !24
  %t546 = load i64, ptr %l40, !tbaa !24
  %t547 = load i64, ptr %l39, !tbaa !24
  %t550 = icmp sgt i64 %t546, %t547
  br i1 %t550, label %bb125, label %bb126
bb125:
  %t552 = load i64, ptr %l41, !tbaa !24
  %t554 = icmp sgt i64 %t552, 0
  br i1 %t554, label %bb127, label %bb128
bb126:
  store i64 0, ptr %l316, !tbaa !24
  br label %bb130
bb127:
  %t556 = load i64, ptr %l40, !tbaa !24
  %t557 = load i64, ptr %l39, !tbaa !24
  %t560 = sub i64 %t556, %t557
  %t561 = load i64, ptr %l41, !tbaa !24
  %t564 = add i64 %t560, %t561
  %t566 = sub i64 %t564, 1
  %t567 = load i64, ptr %l41, !tbaa !24
  %t570 = sdiv i64 %t566, %t567
  store i64 %t570, ptr %l319, !tbaa !24
  br label %bb129
bb128:
  store i64 0, ptr %l319, !tbaa !24
  br label %bb129
bb129:
  %t572 = load i64, ptr %l319, !tbaa !24
  store i64 %t572, ptr %l316, !tbaa !24
  br label %bb130
bb130:
  %t573 = load i64, ptr %l316, !tbaa !24
  store i64 %t573, ptr %l42, !tbaa !24
  store i64 0, ptr %l43, !tbaa !24
  br label %bb131
bb131:
  %t574 = load i64, ptr %l43, !tbaa !24
  %t575 = load i64, ptr %l42, !tbaa !24
  %t578 = icmp slt i64 %t574, %t575
  %t580 = xor i1 %t578, true
  br i1 %t580, label %bb132, label %bb133
bb132:
  br label %bb137
bb133:
  br label %bb134
bb134:
  %t582 = load i64, ptr %l39, !tbaa !24
  %t583 = load i64, ptr %l43, !tbaa !24
  %t584 = load i64, ptr %l41, !tbaa !24
  %t587 = mul i64 %t583, %t584
  %t590 = add i64 %t582, %t587
  %t592 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunusedImports(ptr %v0, ptr %t592, i64 %t590)
  br label %bb135
bb135:
  br label %bb136
bb136:
  %t596 = load i64, ptr %l43, !tbaa !24
  %t598 = add i64 %t596, 1
  store i64 %t598, ptr %l43, !tbaa !24
  br label %bb131
bb137:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3, i1 %a4, i1 %a5, i1 %a6, ptr %a7) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i1
  %l5 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i1
  %l12 = alloca i64
  %l19 = alloca ptr
  %l24 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l29 = alloca i1
  %l32 = alloca ptr
  %l36 = alloca { i64, [3 x i64] }
  %l37 = alloca %"compiler/diagmsg:Msg"
  %l38 = alloca i64
  %l41 = alloca ptr
  %l45 = alloca %"compiler/names:Entry"
  %l50 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i1
  %l60 = alloca i1
  %l65 = alloca i1
  %l69 = alloca ptr
  %l73 = alloca { i64, [3 x i64] }
  %l76 = alloca { i64, ptr }
  %l78 = alloca %"compiler/diagmsg:Msg"
  %l79 = alloca i64
  %l83 = alloca ptr
  %l87 = alloca { i64, [3 x i64] }
  %l90 = alloca { i64, ptr }
  %l92 = alloca %"compiler/diagmsg:Msg"
  %l93 = alloca i64
  %l99 = alloca i64
  %l103 = alloca i64
  %l104 = alloca i32
  %l109 = alloca ptr
  %l113 = alloca { i64, [3 x i64] }
  %l116 = alloca { i64, ptr }
  %l118 = alloca %"compiler/diagmsg:Msg"
  %l119 = alloca i64
  %l130 = alloca i1
  %l131 = alloca i1
  %l136 = alloca i1
  %l137 = alloca i1
  %l139 = alloca i1
  %l142 = alloca ptr
  %l146 = alloca { i64, [3 x i64] }
  %l149 = alloca { i64, ptr }
  %l151 = alloca %"compiler/diagmsg:Msg"
  %l152 = alloca i64
  %l156 = alloca i1
  %l161 = alloca i1
  %l164 = alloca ptr
  %l168 = alloca { i64, [3 x i64] }
  %l171 = alloca { i64, ptr }
  %l173 = alloca %"compiler/diagmsg:Msg"
  %l174 = alloca i64
  %l176 = alloca ptr
  %l177 = alloca i32
  %l180 = alloca i64
  %l182 = alloca ptr
  %l183 = alloca i32
  %l184 = alloca %"compiler/source:Span"
  %l186 = alloca i32
  %l190 = alloca %"compiler/names:Entry"
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/source:Span" %a3, ptr %l3
  store i1 %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l19
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l19, !tbaa !29
  store ptr %t8, ptr %l8, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/names:Resolver", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t14 = getelementptr %"compiler/load:Loader", ptr %t12, i32 0, i32 10
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l24
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l24, !tbaa !29
  store ptr %t19, ptr %l9, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t20, i32 %t21)
  store { i64, ptr } %t24, ptr %l27
  br label %bb3
bb3:
  %t25 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t25, ptr %l10, !tbaa !27
  %t26 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t26, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t28, ptr %l29
  br label %bb4
bb4:
  %t29 = load i1, ptr %l29, !tbaa !21
  br i1 %t29, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/names:Resolver", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/load:Loader", ptr %t33, i32 0, i32 4
  %t36 = load ptr, ptr %t35, !tbaa !29
  store ptr %t36, ptr %l32, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  %t39 = load %"compiler/source:Span", ptr %l3
  %t43 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t37, i64 %t38, %"compiler/source:Span" %t39)
  store { i64, [3 x i64] } %t43, ptr %l36
  br label %bb7
bb6:
  br label %bb10
bb7:
  %t44 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnderscoreDeclared(ptr %v0)
  store %"compiler/diagmsg:Msg" %t44, ptr %l37
  br label %bb8
bb8:
  %t45 = load ptr, ptr %l32, !tbaa !29
  %t46 = load { i64, [3 x i64] }, ptr %l36
  %t47 = load %"compiler/diagmsg:Msg", ptr %l37
  %t48 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t45, { i64, [3 x i64] } %t46, %"compiler/diagmsg:Msg" %t47)
  store i64 %t48, ptr %l38
  br label %bb9
bb9:
  br label %bb10
bb10:
  br i1 %a6, label %bb11, label %bb12
bb11:
  %t51 = load ptr, ptr %l8, !tbaa !29
  %t53 = getelementptr %"compiler/names:Table", ptr %t51, i32 0, i32 0
  store ptr %t53, ptr %l41, !tbaa !29
  %t54 = load i32, ptr %l2, !tbaa !23
  %t55 = load %"compiler/source:Span", ptr %l3
  %t59 = call %"compiler/names:Entry" @compiler_2fnames_3aEntry_2ector(ptr %v0, ptr %v0, i32 %t54, %"compiler/source:Span" %t55, i32 3, i1 false, ptr null)
  store %"compiler/names:Entry" %t59, ptr %l45
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t60 = load ptr, ptr %l41, !tbaa !29
  %t61 = load %"compiler/names:Entry", ptr %l45
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ePush_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t60, %"compiler/names:Entry" %t61)
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/names:Resolver", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t67 = getelementptr %"compiler/load:Loader", ptr %t65, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t72 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v0, ptr %t68, { i64, ptr } %t69)
  store i1 %t72, ptr %l50
  br label %bb16
bb16:
  %t73 = load i1, ptr %l50, !tbaa !21
  br i1 %t73, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s3
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t76 = getelementptr %"compiler/load:Module", ptr %t74, i32 0, i32 2
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s3, { i64, ptr } %t77, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) })
  store i1 %t79, ptr %l53
  br label %bb19
bb18:
  br label %bb45
bb19:
  %t80 = load i1, ptr %l53, !tbaa !21
  br i1 %t80, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb22
bb21:
  %t81 = load ptr, ptr %l9, !tbaa !29
  %t83 = getelementptr %"compiler/load:Module", ptr %t81, i32 0, i32 3
  %t84 = load i1, ptr %t83, !tbaa !21
  store i1 %t84, ptr %l54, !tbaa !21
  br label %bb22
bb22:
  %t86 = load i1, ptr %l54, !tbaa !21
  store i1 %t86, ptr %l11, !tbaa !21
  %t87 = load i1, ptr %l5, !tbaa !21
  br i1 %t87, label %bb23, label %bb24
bb23:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb25
bb24:
  %t89 = load i1, ptr %l11, !tbaa !21
  store i1 %t89, ptr %l58, !tbaa !21
  br label %bb25
bb25:
  %t91 = load i1, ptr %l58, !tbaa !21
  br i1 %t91, label %bb26, label %bb27
bb26:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb29
bb27:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/names:Resolver", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = getelementptr %"compiler/load:Loader", ptr %t95, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t99 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t102 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefined(ptr %v0, ptr %v0, ptr %t98, { i64, ptr } %t99)
  store i1 %t102, ptr %l65
  br label %bb28
bb28:
  %t103 = load i1, ptr %l65, !tbaa !21
  %t104 = xor i1 %t103, true
  store i1 %t104, ptr %l60, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l60, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/names:Resolver", ptr %t107, i32 0, i32 0
  %t110 = load ptr, ptr %t109, !tbaa !29
  %t112 = getelementptr %"compiler/load:Loader", ptr %t110, i32 0, i32 4
  %t113 = load ptr, ptr %t112, !tbaa !29
  store ptr %t113, ptr %l69, !tbaa !29
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i64, ptr %l1, !tbaa !24
  %t116 = load %"compiler/source:Span", ptr %l3
  %t120 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t114, i64 %t115, %"compiler/source:Span" %t116)
  store { i64, [3 x i64] } %t120, ptr %l73
  br label %bb32
bb31:
  %t121 = load i1, ptr %l4, !tbaa !21
  br i1 %t121, label %bb36, label %bb37
bb32:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i32, ptr %l2, !tbaa !23
  %t127 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t123, i32 %t124)
  store { i64, ptr } %t127, ptr %l76
  br label %bb33
bb33:
  %t128 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t128, 0
  %t130 = extractvalue { i64, ptr } %t128, 1
  %t131 = mul i64 %t129, 1
  %t132 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t131)
  call void @llvm.memcpy.p0.p0.i64(ptr %t132, ptr %t130, i64 %t131, i1 false)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildConstRedeclared(ptr %v0, ptr %v0, { i64, ptr } %t134)
  store %"compiler/diagmsg:Msg" %t136, ptr %l78
  br label %bb34
bb34:
  %t137 = load ptr, ptr %l69, !tbaa !29
  %t138 = load { i64, [3 x i64] }, ptr %l73
  %t139 = load %"compiler/diagmsg:Msg", ptr %l78
  %t140 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t137, { i64, [3 x i64] } %t138, %"compiler/diagmsg:Msg" %t139)
  store i64 %t140, ptr %l79
  br label %bb35
bb35:
  br label %bb44
bb36:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/names:Resolver", ptr %t141, i32 0, i32 0
  %t144 = load ptr, ptr %t143, !tbaa !29
  %t146 = getelementptr %"compiler/load:Loader", ptr %t144, i32 0, i32 4
  %t147 = load ptr, ptr %t146, !tbaa !29
  store ptr %t147, ptr %l83, !tbaa !29
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t149 = load i64, ptr %l1, !tbaa !24
  %t150 = load %"compiler/source:Span", ptr %l3
  %t154 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t148, i64 %t149, %"compiler/source:Span" %t150)
  store { i64, [3 x i64] } %t154, ptr %l87
  br label %bb38
bb37:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l1, !tbaa !24
  %t157 = load i32, ptr %l2, !tbaa !23
  %t158 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebuildDefault(ptr %v0, ptr %v1, ptr %t155, i64 %t156, i32 %t157, %"compiler/source:Span" %t158, ptr %a7)
  br label %bb42
bb38:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l2, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t165, i32 %t166)
  store { i64, ptr } %t169, ptr %l90
  br label %bb39
bb39:
  %t170 = load { i64, ptr }, ptr %l90, !tbaa !27
  %t171 = extractvalue { i64, ptr } %t170, 0
  %t172 = extractvalue { i64, ptr } %t170, 1
  %t173 = mul i64 %t171, 1
  %t174 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t173)
  call void @llvm.memcpy.p0.p0.i64(ptr %t174, ptr %t172, i64 %t173, i1 false)
  %t175 = insertvalue { i64, ptr } undef, i64 %t171, 0
  %t176 = insertvalue { i64, ptr } %t175, ptr %t174, 1
  %t178 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultMut(ptr %v0, ptr %v0, { i64, ptr } %t176)
  store %"compiler/diagmsg:Msg" %t178, ptr %l92
  br label %bb40
bb40:
  %t179 = load ptr, ptr %l83, !tbaa !29
  %t180 = load { i64, [3 x i64] }, ptr %l87
  %t181 = load %"compiler/diagmsg:Msg", ptr %l92
  %t182 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t179, { i64, [3 x i64] } %t180, %"compiler/diagmsg:Msg" %t181)
  store i64 %t182, ptr %l93
  br label %bb41
bb41:
  br label %bb43
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s3)
  br label %bb45
bb45:
  %t183 = load ptr, ptr %l8, !tbaa !29
  %t185 = getelementptr %"compiler/names:Table", ptr %t183, i32 0, i32 1
  %t186 = load i32, ptr %l2, !tbaa !23
  %t189 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t185, i32 %t186)
  %t190 = extractvalue { i32, i64 } %t189, 1
  %t191 = extractvalue { i32, i64 } %t189, 0
  store i32 %t191, ptr %l104
  %t192 = icmp ne i32 %t191, 0
  br i1 %t192, label %bb47, label %ok.193, !prof !99
ok.193:
  store i64 %t190, ptr %l103
  br label %bb46
bb46:
  %t194 = load i64, ptr %l103, !tbaa !24
  store i64 %t194, ptr %l99, !tbaa !24
  br label %bb49
bb47:
  br label %bb48
bb48:
  store i64 -1, ptr %l99, !tbaa !24
  br label %bb49
bb49:
  %t195 = load i64, ptr %l99, !tbaa !24
  store i64 %t195, ptr %l12, !tbaa !24
  %t196 = load i64, ptr %l12, !tbaa !24
  %t198 = icmp sge i64 %t196, 0
  br i1 %t198, label %bb50, label %bb51
bb50:
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/names:Resolver", ptr %t200, i32 0, i32 0
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t205 = getelementptr %"compiler/load:Loader", ptr %t203, i32 0, i32 4
  %t206 = load ptr, ptr %t205, !tbaa !29
  store ptr %t206, ptr %l109, !tbaa !29
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t208 = load i64, ptr %l1, !tbaa !24
  %t209 = load %"compiler/source:Span", ptr %l3
  %t213 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t207, i64 %t208, %"compiler/source:Span" %t209)
  store { i64, [3 x i64] } %t213, ptr %l113
  br label %bb52
bb51:
  br label %bb56
bb52:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i32, ptr %l2, !tbaa !23
  %t218 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t214, i32 %t215)
  store { i64, ptr } %t218, ptr %l116
  br label %bb53
bb53:
  %t219 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t219, 0
  %t221 = extractvalue { i64, ptr } %t219, 1
  %t222 = mul i64 %t220, 1
  %t223 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t222)
  call void @llvm.memcpy.p0.p0.i64(ptr %t223, ptr %t221, i64 %t222, i1 false)
  %t224 = insertvalue { i64, ptr } undef, i64 %t220, 0
  %t225 = insertvalue { i64, ptr } %t224, ptr %t223, 1
  %t227 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameInUse(ptr %v0, ptr %v0, { i64, ptr } %t225)
  store %"compiler/diagmsg:Msg" %t227, ptr %l118
  br label %bb54
bb54:
  %t228 = load ptr, ptr %l109, !tbaa !29
  %t229 = load { i64, [3 x i64] }, ptr %l113
  %t230 = load %"compiler/diagmsg:Msg", ptr %l118
  %t231 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t228, { i64, [3 x i64] } %t229, %"compiler/diagmsg:Msg" %t230)
  store i64 %t231, ptr %l119
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb56:
  %t232 = load i64, ptr %l12, !tbaa !24
  %t234 = icmp slt i64 %t232, 0
  br i1 %t234, label %bb57, label %bb58
bb57:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t237 = load i64, ptr %l1, !tbaa !24
  %t238 = load i32, ptr %l2, !tbaa !23
  %t239 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoAliasClash(ptr %v0, ptr %t236, i64 %t237, i32 %t238, %"compiler/source:Span" %t239)
  br label %bb59
bb58:
  br label %bb89
bb59:
  %t244 = load i32, ptr %l2, !tbaa !23
  %t246 = load ptr, ptr %l8, !tbaa !29
  %t248 = getelementptr %"compiler/names:Table", ptr %t246, i32 0, i32 2
  %t252 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t248, i32 %t244)
  store i1 %t252, ptr %l130
  br label %bb60
bb60:
  %t253 = load i1, ptr %l130, !tbaa !21
  br i1 %t253, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb64
bb62:
  %t254 = load i32, ptr %l2, !tbaa !23
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/names:Resolver", ptr %t256, i32 0, i32 2
  %t262 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t258, i32 %t254)
  store i1 %t262, ptr %l136
  br label %bb63
bb63:
  %t263 = load i1, ptr %l136, !tbaa !21
  store i1 %t263, ptr %l131, !tbaa !21
  br label %bb64
bb64:
  %t264 = load i1, ptr %l131, !tbaa !21
  br i1 %t264, label %bb65, label %bb66
bb65:
  store i1 true, ptr %l137, !tbaa !21
  br label %bb68
bb66:
  %t265 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t267 = call i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %t265)
  store i1 %t267, ptr %l139
  br label %bb67
bb67:
  %t268 = load i1, ptr %l139, !tbaa !21
  store i1 %t268, ptr %l137, !tbaa !21
  br label %bb68
bb68:
  %t269 = load i1, ptr %l137, !tbaa !21
  br i1 %t269, label %bb69, label %bb70
bb69:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/names:Resolver", ptr %t270, i32 0, i32 0
  %t273 = load ptr, ptr %t272, !tbaa !29
  %t275 = getelementptr %"compiler/load:Loader", ptr %t273, i32 0, i32 4
  %t276 = load ptr, ptr %t275, !tbaa !29
  store ptr %t276, ptr %l142, !tbaa !29
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t278 = load i64, ptr %l1, !tbaa !24
  %t279 = load %"compiler/source:Span", ptr %l3
  %t283 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t277, i64 %t278, %"compiler/source:Span" %t279)
  store { i64, [3 x i64] } %t283, ptr %l146
  br label %bb71
bb70:
  br label %bb75
bb71:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i32, ptr %l2, !tbaa !23
  %t288 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t284, i32 %t285)
  store { i64, ptr } %t288, ptr %l149
  br label %bb72
bb72:
  %t289 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t290 = extractvalue { i64, ptr } %t289, 0
  %t291 = extractvalue { i64, ptr } %t289, 1
  %t292 = mul i64 %t290, 1
  %t293 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t292)
  call void @llvm.memcpy.p0.p0.i64(ptr %t293, ptr %t291, i64 %t292, i1 false)
  %t294 = insertvalue { i64, ptr } undef, i64 %t290, 0
  %t295 = insertvalue { i64, ptr } %t294, ptr %t293, 1
  %t297 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameIsType(ptr %v0, ptr %v0, { i64, ptr } %t295)
  store %"compiler/diagmsg:Msg" %t297, ptr %l151
  br label %bb73
bb73:
  %t298 = load ptr, ptr %l142, !tbaa !29
  %t299 = load { i64, [3 x i64] }, ptr %l146
  %t300 = load %"compiler/diagmsg:Msg", ptr %l151
  %t301 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t298, { i64, [3 x i64] } %t299, %"compiler/diagmsg:Msg" %t300)
  store i64 %t301, ptr %l152
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t302 = load ptr, ptr %l9, !tbaa !29
  %t304 = getelementptr %"compiler/load:Module", ptr %t302, i32 0, i32 3
  %t305 = load i1, ptr %t304, !tbaa !21
  %t307 = xor i1 %t305, true
  br i1 %t307, label %bb76, label %bb77
bb76:
  %t309 = load i32, ptr %l2, !tbaa !23
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/names:Resolver", ptr %t311, i32 0, i32 3
  %t317 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H6d33fbc050830e537410645e3c893b2c(ptr %v0, ptr %t313, i32 %t309)
  store i1 %t317, ptr %l161
  br label %bb78
bb77:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb79
bb78:
  %t318 = load i1, ptr %l161, !tbaa !21
  store i1 %t318, ptr %l156, !tbaa !21
  br label %bb79
bb79:
  %t319 = load i1, ptr %l156, !tbaa !21
  br i1 %t319, label %bb80, label %bb81
bb80:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/names:Resolver", ptr %t320, i32 0, i32 0
  %t323 = load ptr, ptr %t322, !tbaa !29
  %t325 = getelementptr %"compiler/load:Loader", ptr %t323, i32 0, i32 4
  %t326 = load ptr, ptr %t325, !tbaa !29
  store ptr %t326, ptr %l164, !tbaa !29
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t328 = load i64, ptr %l1, !tbaa !24
  %t329 = load %"compiler/source:Span", ptr %l3
  %t333 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t327, i64 %t328, %"compiler/source:Span" %t329)
  store { i64, [3 x i64] } %t333, ptr %l168
  br label %bb82
bb81:
  br label %bb86
bb82:
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t335 = load i32, ptr %l2, !tbaa !23
  %t338 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t334, i32 %t335)
  store { i64, ptr } %t338, ptr %l171
  br label %bb83
bb83:
  %t339 = load { i64, ptr }, ptr %l171, !tbaa !27
  %t340 = extractvalue { i64, ptr } %t339, 0
  %t341 = extractvalue { i64, ptr } %t339, 1
  %t342 = mul i64 %t340, 1
  %t343 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t342)
  call void @llvm.memcpy.p0.p0.i64(ptr %t343, ptr %t341, i64 %t342, i1 false)
  %t344 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t345 = insertvalue { i64, ptr } %t344, ptr %t343, 1
  %t347 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePreludeConstRedeclared(ptr %v0, ptr %v0, { i64, ptr } %t345)
  store %"compiler/diagmsg:Msg" %t347, ptr %l173
  br label %bb84
bb84:
  %t348 = load ptr, ptr %l164, !tbaa !29
  %t349 = load { i64, [3 x i64] }, ptr %l168
  %t350 = load %"compiler/diagmsg:Msg", ptr %l173
  %t351 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t348, { i64, [3 x i64] } %t349, %"compiler/diagmsg:Msg" %t350)
  store i64 %t351, ptr %l174
  br label %bb85
bb85:
  br label %bb86
bb86:
  %t352 = load ptr, ptr %l8, !tbaa !29
  %t354 = getelementptr %"compiler/names:Table", ptr %t352, i32 0, i32 1
  store ptr %t354, ptr %l176, !tbaa !29
  %t355 = load i32, ptr %l2, !tbaa !23
  store i32 %t355, ptr %l177, !tbaa !23
  %t356 = load ptr, ptr %l8, !tbaa !29
  %t358 = getelementptr %"compiler/names:Table", ptr %t356, i32 0, i32 0
  %t360 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t358)
  store i64 %t360, ptr %l180
  br label %bb87
bb87:
  %t361 = load ptr, ptr %l176, !tbaa !29
  %t362 = load i32, ptr %l177, !tbaa !23
  %t363 = load i64, ptr %l180, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t361, i32 %t362, i64 %t363)
  br label %bb88
bb88:
  br label %bb89
bb89:
  %t364 = load ptr, ptr %l8, !tbaa !29
  %t366 = getelementptr %"compiler/names:Table", ptr %t364, i32 0, i32 0
  store ptr %t366, ptr %l182, !tbaa !29
  %t367 = load i32, ptr %l2, !tbaa !23
  store i32 %t367, ptr %l183, !tbaa !23
  %t368 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t368, ptr %l184
  %t369 = load i1, ptr %l5, !tbaa !21
  br i1 %t369, label %bb90, label %bb91
bb90:
  store i32 3, ptr %l186
  br label %bb92
bb91:
  store i32 2, ptr %l186
  br label %bb92
bb92:
  %t373 = load i1, ptr %l4, !tbaa !21
  %t374 = load i32, ptr %l183, !tbaa !23
  %t375 = load %"compiler/source:Span", ptr %l184
  %t376 = load i32, ptr %l186, !range !{i32 0, i32 9}
  %t378 = call %"compiler/names:Entry" @compiler_2fnames_3aEntry_2ector(ptr %v0, ptr %v0, i32 %t374, %"compiler/source:Span" %t375, i32 %t376, i1 %t373, ptr null)
  store %"compiler/names:Entry" %t378, ptr %l190
  br label %bb93
bb93:
  %t379 = load ptr, ptr %l182, !tbaa !29
  %t380 = load %"compiler/names:Entry", ptr %l190
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ePush_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t379, %"compiler/names:Entry" %t380)
  br label %bb94
bb94:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasHead(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca i32
  %l3 = alloca %"compiler/names:Ref"
  %l6 = alloca %"compiler/names:Ref"
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t1, i32 %t2)
  store %"compiler/names:Ref" %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load %"compiler/names:Ref", ptr %l6
  store %"compiler/names:Ref" %t6, ptr %l3
  %t7 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t8 = load i32, ptr %t7, !range !{i32 0, i32 9}
  %t10 = trunc i64 5 to i32
  %t11 = icmp eq i32 %t8, %t10
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/source:Span", ptr %l1
  %t15 = load %"compiler/names:Ref", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t13, %"compiler/source:Span" %t14, %"compiler/names:Ref" %t15)
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t19 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 1
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
bb5:
  %t22 = getelementptr %"compiler/names:Ref", ptr %l3, i32 0, i32 0
  %t23 = load i32, ptr %t22, !range !{i32 0, i32 9}
  %t25 = trunc i64 0 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load %"compiler/source:Span", ptr %l1
  %t30 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownHead(ptr %v0, ptr %t28, %"compiler/source:Span" %t29, i32 %t30)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %l9 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l39 = alloca i64
  %l43 = alloca ptr
  %l46 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca i32
  %l57 = alloca ptr
  %l60 = alloca { i64, ptr }
  %l63 = alloca i64
  %l66 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l72 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 6
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  %t10 = sub i64 %t8, 1
  store i64 %t10, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb1, label %bb2
bb1:
  %t18 = load i64, ptr %l5, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb3:
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l5, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l5, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l21, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t39 = load i64, ptr %l18, !tbaa !24
  store i64 %t39, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t40 = load i64, ptr %l7, !tbaa !24
  %t41 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb8, label %bb9
bb8:
  br label %bb33
bb9:
  br label %bb10
bb10:
  %t48 = load i64, ptr %l3, !tbaa !24
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l5, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l8, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/names:Resolver", ptr %t58, i32 0, i32 1
  %t61 = load i64, ptr %l2, !tbaa !24
  %t64 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t60, i64 %t61)
  store ptr %t64, ptr %l43
  br label %bb11
bb11:
  %t65 = load ptr, ptr %l43, !tbaa !29
  %t67 = getelementptr %"compiler/names:Table", ptr %t65, i32 0, i32 3
  %t68 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t68, ptr %l46, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr i32, ptr %t72, i64 %t69
  %t74 = load i32, ptr %t73, !tbaa !33
  %t77 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t67, i32 %t74)
  %t78 = extractvalue { i32, i64 } %t77, 1
  %t79 = extractvalue { i32, i64 } %t77, 0
  store i32 %t79, ptr %l50
  %t80 = icmp ne i32 %t79, 0
  br i1 %t80, label %bb13, label %ok.81, !prof !99
ok.81:
  store i64 %t78, ptr %l49
  br label %bb12
bb12:
  %t82 = load i64, ptr %l49, !tbaa !24
  store i64 %t82, ptr %l39, !tbaa !24
  br label %bb15
bb13:
  br label %bb14
bb14:
  store i64 -1, ptr %l39, !tbaa !24
  br label %bb15
bb15:
  %t83 = load i64, ptr %l39, !tbaa !24
  store i64 %t83, ptr %l9, !tbaa !24
  %t84 = load i64, ptr %l9, !tbaa !24
  %t86 = icmp slt i64 %t84, 0
  br i1 %t86, label %bb16, label %bb17
bb16:
  store i64 -1, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t91 = icmp eq i64 %t89, 0
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/names:Resolver", ptr %t93, i32 0, i32 19
  store ptr %t95, ptr %l57, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/names:Resolver", ptr %t96, i32 0, i32 6
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t100, ptr %l60, !tbaa !27
  %t101 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr i32, ptr %t102, i64 0
  %t104 = load i32, ptr %t103, !tbaa !33
  %t108 = call i64 @compiler_2fnames_2ekey(i64 %t99, i32 %t104)
  store i64 %t108, ptr %l63
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t109 = load ptr, ptr %l57, !tbaa !29
  %t110 = load i64, ptr %l63, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t109, i64 %t110, i1 true)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t113 = icmp sgt i64 %t111, 0
  br i1 %t113, label %bb24, label %bb25
bb24:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t116, ptr %l68, !tbaa !27
  %t117 = load i64, ptr %l8, !tbaa !24
  %t119 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr i32, ptr %t120, i64 %t117
  %t122 = load i32, ptr %t121, !tbaa !33
  %t125 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t115, i32 %t122)
  store { i64, ptr } %t125, ptr %l71
  br label %bb26
bb25:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb28
bb26:
  %t126 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t127 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t126)
  store i1 %t127, ptr %l72
  br label %bb27
bb27:
  %t128 = load i1, ptr %l72, !tbaa !21
  %t129 = xor i1 %t128, true
  store i1 %t129, ptr %l66, !tbaa !21
  br label %bb28
bb28:
  %t131 = load i1, ptr %l66, !tbaa !21
  br i1 %t131, label %bb29, label %bb30
bb29:
  store i64 -1, ptr %rv
  br label %ret
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l9, !tbaa !24
  store i64 %t133, ptr %l2, !tbaa !24
  br label %bb32
bb32:
  %t135 = load i64, ptr %l7, !tbaa !24
  %t137 = add i64 %t135, 1
  store i64 %t137, ptr %l7, !tbaa !24
  br label %bb7
bb33:
  %t139 = load i64, ptr %l2, !tbaa !24
  store i64 %t139, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca i64
  %l26 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca i64
  %l30 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l47 = alloca ptr
  %l48 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca i64
  %l61 = alloca %"compiler/source:Span"
  %l63 = alloca i64
  %l78 = alloca ptr
  %l79 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l98 = alloca ptr
  %l99 = alloca i1
  %l108 = alloca ptr
  %l109 = alloca i1
  %l131 = alloca { i64, ptr }
  %l139 = alloca ptr
  %l140 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i1
  %l170 = alloca ptr
  %l171 = alloca i1
  %l180 = alloca ptr
  %l181 = alloca i1
  %l197 = alloca { i64, ptr }
  %l212 = alloca { i64, ptr }
  %l223 = alloca { i64, ptr }
  %l233 = alloca ptr
  %l234 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  br label %bb131
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l44, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l47, !tbaa !29
  store i1 false, ptr %l48, !tbaa !21
  %t24 = load ptr, ptr %l47, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l47, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 7
  store i1 %t30, ptr %l48, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l48, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb22
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/names:Resolver", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l54, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  store i64 %t42, ptr %l55, !tbaa !24
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TopIf", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_3c4b516dc7f3c61f_40ef246315a2e453)
  unreachable
bb11:
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l7, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TopIf", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l61
  br label %bb13
bb13:
  %t56 = getelementptr %"compiler/source:Span", ptr %l61, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t58 = load ptr, ptr %l54, !tbaa !29
  %t59 = load i64, ptr %l55, !tbaa !24
  %t61 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t58, i64 %t59, i32 %t57)
  store i64 %t61, ptr %l63
  br label %bb14
bb14:
  %t62 = load i64, ptr %l63, !tbaa !24
  store i64 %t62, ptr %l8, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t67 = icmp eq i64 %t63, %t64
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/names:Resolver", ptr %t69, i32 0, i32 21
  %t72 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t71, i64 %t72, i1 true)
  br label %bb17
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load ptr, ptr %l7, !tbaa !29
  %t78 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodiesIf(ptr %v0, ptr %v1, ptr %t75, i64 %t76, ptr %t77, i64 %t78, i64 0)
  br label %bb20
bb17:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t83, i64 %t84)
  br label %bb18
bb18:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etopConds(ptr %v0, ptr %v1, ptr %t87, ptr %t88)
  br label %bb19
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb129
bb22:
  %t91 = load ptr, ptr %l6, !tbaa !29
  store ptr %t91, ptr %l78, !tbaa !29
  store i1 false, ptr %l79, !tbaa !21
  %t92 = load ptr, ptr %l78, !tbaa !29
  %t93 = icmp ne ptr %t92, null
  br i1 %t93, label %bb23, label %bb24
bb23:
  %t95 = load ptr, ptr %l78, !tbaa !29
  %t96 = load i64, ptr %t95, !range !{i64 0, i64 11}
  %t98 = icmp eq i64 %t96, 0
  store i1 %t98, ptr %l79, !tbaa !21
  br label %bb24
bb24:
  %t99 = load i1, ptr %l79, !tbaa !21
  br i1 %t99, label %bb25, label %bb26
bb25:
  %t100 = load ptr, ptr %l6, !tbaa !29
  %t102 = getelementptr { i64, [8 x i64] }, ptr %t100, i32 0, i32 1
  %t103 = getelementptr { ptr }, ptr %t102, i32 0, i32 0
  %t104 = load ptr, ptr %t103
  store ptr %t104, ptr %l9, !tbaa !29
  br label %bb27
bb26:
  br label %bb30
bb27:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t107 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t106, i64 %t107)
  br label %bb28
bb28:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2efunc(ptr %v0, ptr %v1, ptr %t110, ptr %t111)
  br label %bb29
bb29:
  br label %bb129
bb30:
  %t114 = load ptr, ptr %l6, !tbaa !29
  store ptr %t114, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t115 = load ptr, ptr %l88, !tbaa !29
  %t116 = icmp ne ptr %t115, null
  br i1 %t116, label %bb31, label %bb32
bb31:
  %t118 = load ptr, ptr %l88, !tbaa !29
  %t119 = load i64, ptr %t118, !range !{i64 0, i64 11}
  %t121 = icmp eq i64 %t119, 1
  store i1 %t121, ptr %l89, !tbaa !21
  br label %bb32
bb32:
  %t122 = load i1, ptr %l89, !tbaa !21
  br i1 %t122, label %bb33, label %bb34
bb33:
  %t123 = load ptr, ptr %l6, !tbaa !29
  %t125 = getelementptr { i64, [8 x i64] }, ptr %t123, i32 0, i32 1
  %t126 = getelementptr { ptr }, ptr %t125, i32 0, i32 0
  %t127 = load ptr, ptr %t126
  store ptr %t127, ptr %l10, !tbaa !29
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t129, i64 %t130)
  br label %bb36
bb36:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esig(ptr %v0, ptr %v1, ptr %t133, ptr %t134, i1 false)
  br label %bb37
bb37:
  br label %bb129
bb38:
  %t137 = load ptr, ptr %l6, !tbaa !29
  store ptr %t137, ptr %l98, !tbaa !29
  store i1 false, ptr %l99, !tbaa !21
  %t138 = load ptr, ptr %l98, !tbaa !29
  %t139 = icmp ne ptr %t138, null
  br i1 %t139, label %bb39, label %bb40
bb39:
  %t141 = load ptr, ptr %l98, !tbaa !29
  %t142 = load i64, ptr %t141, !range !{i64 0, i64 11}
  %t144 = icmp eq i64 %t142, 2
  store i1 %t144, ptr %l99, !tbaa !21
  br label %bb40
bb40:
  %t145 = load i1, ptr %l99, !tbaa !21
  br i1 %t145, label %bb41, label %bb42
bb41:
  %t146 = load ptr, ptr %l6, !tbaa !29
  %t148 = getelementptr { i64, [8 x i64] }, ptr %t146, i32 0, i32 1
  %t149 = getelementptr { %"compiler/source:Span", ptr }, ptr %t148, i32 0, i32 1
  %t150 = load ptr, ptr %t149
  store ptr %t150, ptr %l11, !tbaa !29
  br label %bb43
bb42:
  br label %bb46
bb43:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t152, i64 %t153)
  br label %bb44
bb44:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeDecl(ptr %v0, ptr %v1, ptr %t156, ptr %t157)
  br label %bb45
bb45:
  br label %bb129
bb46:
  %t160 = load ptr, ptr %l6, !tbaa !29
  store ptr %t160, ptr %l108, !tbaa !29
  store i1 false, ptr %l109, !tbaa !21
  %t161 = load ptr, ptr %l108, !tbaa !29
  %t162 = icmp ne ptr %t161, null
  br i1 %t162, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l108, !tbaa !29
  %t165 = load i64, ptr %t164, !range !{i64 0, i64 11}
  %t167 = icmp eq i64 %t165, 3
  store i1 %t167, ptr %l109, !tbaa !21
  br label %bb48
bb48:
  %t168 = load i1, ptr %l109, !tbaa !21
  br i1 %t168, label %bb49, label %bb50
bb49:
  %t169 = load ptr, ptr %l6, !tbaa !29
  %t171 = getelementptr { i64, [8 x i64] }, ptr %t169, i32 0, i32 1
  %t172 = getelementptr { %"compiler/source:Span", ptr }, ptr %t171, i32 0, i32 1
  %t173 = load ptr, ptr %t172
  store ptr %t173, ptr %l12, !tbaa !29
  br label %bb51
bb50:
  br label %bb64
bb51:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t175, i64 %t176)
  br label %bb52
bb52:
  %t179 = load ptr, ptr %l12, !tbaa !29
  %t181 = getelementptr %"compiler/ast:VarDecl", ptr %t179, i32 0, i32 2
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t184 = icmp eq ptr %t182, null
  %t186 = xor i1 %t184, true
  br i1 %t186, label %bb53, label %bb54
bb53:
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t189 = load ptr, ptr %l12, !tbaa !29
  %t191 = getelementptr %"compiler/ast:VarDecl", ptr %t189, i32 0, i32 2
  %t192 = load ptr, ptr %t191, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t188, ptr %t192)
  br label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb56
bb56:
  %t195 = load ptr, ptr %l12, !tbaa !29
  %t197 = getelementptr %"compiler/ast:VarDecl", ptr %t195, i32 0, i32 3
  %t198 = load { i64, ptr }, ptr %t197, !tbaa !27
  store { i64, ptr } %t198, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t200 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t202 = extractvalue { i64, ptr } %t200, 0
  store i64 %t202, ptr %l15, !tbaa !24
  br label %bb57
bb57:
  %t204 = load i64, ptr %l14, !tbaa !24
  %t205 = load i64, ptr %l15, !tbaa !24
  %t208 = icmp slt i64 %t204, %t205
  %t210 = xor i1 %t208, true
  br i1 %t210, label %bb58, label %bb59
bb58:
  br label %bb63
bb59:
  br label %bb60
bb60:
  %t212 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t212, ptr %l131, !tbaa !27
  %t213 = load i64, ptr %l14, !tbaa !24
  %t215 = getelementptr { i64, ptr }, ptr %l131, i32 0, i32 1
  %t216 = load ptr, ptr %t215, !tbaa !27
  %t217 = getelementptr ptr, ptr %t216, i64 %t213
  %t218 = load ptr, ptr %t217, !tbaa !39
  %t220 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t220, ptr %t218)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t225 = load i64, ptr %l14, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l14, !tbaa !24
  br label %bb57
bb63:
  br label %bb129
bb64:
  %t229 = load ptr, ptr %l6, !tbaa !29
  store ptr %t229, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t230 = load ptr, ptr %l139, !tbaa !29
  %t231 = icmp ne ptr %t230, null
  br i1 %t231, label %bb65, label %bb66
bb65:
  %t233 = load ptr, ptr %l139, !tbaa !29
  %t234 = load i64, ptr %t233, !range !{i64 0, i64 11}
  %t236 = icmp eq i64 %t234, 8
  store i1 %t236, ptr %l140, !tbaa !21
  br label %bb66
bb66:
  %t237 = load i1, ptr %l140, !tbaa !21
  br i1 %t237, label %bb67, label %bb68
bb67:
  %t238 = load ptr, ptr %l6, !tbaa !29
  %t240 = getelementptr { i64, [8 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t240, i32 0, i32 1
  %t242 = load ptr, ptr %t241
  store ptr %t242, ptr %l17, !tbaa !29
  %t244 = load ptr, ptr %l6, !tbaa !29
  %t246 = getelementptr { i64, [8 x i64] }, ptr %t244, i32 0, i32 1
  %t247 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t246, i32 0, i32 2
  %t248 = load ptr, ptr %t247
  store ptr %t248, ptr %l18, !tbaa !29
  br label %bb69
bb68:
  br label %bb73
bb69:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t250, i64 %t251)
  br label %bb70
bb70:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t255 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t254, ptr %t255)
  br label %bb71
bb71:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t259, ptr %t260)
  br label %bb72
bb72:
  br label %bb129
bb73:
  %t264 = load ptr, ptr %l6, !tbaa !29
  store ptr %t264, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t265 = load ptr, ptr %l155, !tbaa !29
  %t266 = icmp ne ptr %t265, null
  br i1 %t266, label %bb74, label %bb75
bb74:
  %t268 = load ptr, ptr %l155, !tbaa !29
  %t269 = load i64, ptr %t268, !range !{i64 0, i64 11}
  %t271 = icmp eq i64 %t269, 9
  store i1 %t271, ptr %l156, !tbaa !21
  br label %bb75
bb75:
  %t272 = load i1, ptr %l156, !tbaa !21
  br i1 %t272, label %bb76, label %bb77
bb76:
  %t273 = load ptr, ptr %l6, !tbaa !29
  %t275 = getelementptr { i64, [8 x i64] }, ptr %t273, i32 0, i32 1
  %t276 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t275, i32 0, i32 1
  %t277 = load ptr, ptr %t276
  store ptr %t277, ptr %l19, !tbaa !29
  %t279 = load ptr, ptr %l6, !tbaa !29
  %t281 = getelementptr { i64, [8 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t281, i32 0, i32 2
  %t283 = load ptr, ptr %t282
  store ptr %t283, ptr %l20, !tbaa !29
  br label %bb78
bb77:
  br label %bb82
bb78:
  %t285 = load ptr, ptr %l0, !tbaa !29
  %t286 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t285, i64 %t286)
  br label %bb79
bb79:
  %t289 = load ptr, ptr %l0, !tbaa !29
  %t290 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t289, ptr %t290)
  br label %bb80
bb80:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t294, ptr %t295)
  br label %bb81
bb81:
  br label %bb129
bb82:
  %t298 = load ptr, ptr %l6, !tbaa !29
  store ptr %t298, ptr %l170, !tbaa !29
  store i1 false, ptr %l171, !tbaa !21
  %t299 = load ptr, ptr %l170, !tbaa !29
  %t300 = icmp ne ptr %t299, null
  br i1 %t300, label %bb83, label %bb84
bb83:
  %t302 = load ptr, ptr %l170, !tbaa !29
  %t303 = load i64, ptr %t302, !range !{i64 0, i64 11}
  %t305 = icmp eq i64 %t303, 6
  store i1 %t305, ptr %l171, !tbaa !21
  br label %bb84
bb84:
  %t306 = load i1, ptr %l171, !tbaa !21
  br i1 %t306, label %bb85, label %bb86
bb85:
  %t307 = load ptr, ptr %l6, !tbaa !29
  %t309 = getelementptr { i64, [8 x i64] }, ptr %t307, i32 0, i32 1
  %t310 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t309, i32 0, i32 2
  %t311 = load { i64, ptr }, ptr %t310
  store { i64, ptr } %t311, ptr %l21, !tbaa !27
  br label %bb87
bb86:
  br label %bb90
bb87:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t313, i64 %t314)
  br label %bb88
bb88:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t317, { i64, ptr } %t318)
  br label %bb89
bb89:
  br label %bb129
bb90:
  %t321 = load ptr, ptr %l6, !tbaa !29
  store ptr %t321, ptr %l180, !tbaa !29
  store i1 false, ptr %l181, !tbaa !21
  %t322 = load ptr, ptr %l180, !tbaa !29
  %t323 = icmp ne ptr %t322, null
  br i1 %t323, label %bb91, label %bb92
bb91:
  %t325 = load ptr, ptr %l180, !tbaa !29
  %t326 = load i64, ptr %t325, !range !{i64 0, i64 11}
  %t328 = icmp eq i64 %t326, 5
  store i1 %t328, ptr %l181, !tbaa !21
  br label %bb92
bb92:
  %t329 = load i1, ptr %l181, !tbaa !21
  br i1 %t329, label %bb93, label %bb94
bb93:
  %t330 = load ptr, ptr %l6, !tbaa !29
  %t332 = getelementptr { i64, [8 x i64] }, ptr %t330, i32 0, i32 1
  %t333 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t332, i32 0, i32 3
  %t334 = load { i64, ptr }, ptr %t333
  store { i64, ptr } %t334, ptr %l22, !tbaa !27
  %t336 = load ptr, ptr %l6, !tbaa !29
  %t338 = getelementptr { i64, [8 x i64] }, ptr %t336, i32 0, i32 1
  %t339 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t338, i32 0, i32 4
  %t340 = load { i64, ptr }, ptr %t339
  store { i64, ptr } %t340, ptr %l23, !tbaa !27
  br label %bb95
bb94:
  br label %bb117
bb95:
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t343 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %t342, i64 %t343)
  br label %bb96
bb96:
  %t346 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t346, ptr %l24, !tbaa !27
  store i64 0, ptr %l25, !tbaa !24
  %t348 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t348, 0
  store i64 %t350, ptr %l26, !tbaa !24
  br label %bb97
bb97:
  %t352 = load i64, ptr %l25, !tbaa !24
  %t353 = load i64, ptr %l26, !tbaa !24
  %t356 = icmp slt i64 %t352, %t353
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb98, label %bb99
bb98:
  br label %bb103
bb99:
  br label %bb100
bb100:
  %t360 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t360, ptr %l197, !tbaa !27
  %t361 = load i64, ptr %l25, !tbaa !24
  %t363 = getelementptr { i64, ptr }, ptr %l197, i32 0, i32 1
  %t364 = load ptr, ptr %t363, !tbaa !27
  %t365 = getelementptr ptr, ptr %t364, i64 %t361
  %t366 = load ptr, ptr %t365, !tbaa !39
  %t368 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t368, ptr %t366)
  br label %bb101
bb101:
  br label %bb102
bb102:
  %t373 = load i64, ptr %l25, !tbaa !24
  %t375 = add i64 %t373, 1
  store i64 %t375, ptr %l25, !tbaa !24
  br label %bb97
bb103:
  %t377 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t377, ptr %l28, !tbaa !27
  store i64 0, ptr %l29, !tbaa !24
  %t379 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t381 = extractvalue { i64, ptr } %t379, 0
  store i64 %t381, ptr %l30, !tbaa !24
  br label %bb104
bb104:
  %t383 = load i64, ptr %l29, !tbaa !24
  %t384 = load i64, ptr %l30, !tbaa !24
  %t387 = icmp slt i64 %t383, %t384
  %t389 = xor i1 %t387, true
  br i1 %t389, label %bb105, label %bb106
bb105:
  br label %bb116
bb106:
  br label %bb107
bb107:
  %t391 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t391, ptr %l212, !tbaa !27
  %t392 = load i64, ptr %l29, !tbaa !24
  %t394 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !27
  %t396 = getelementptr ptr, ptr %t395, i64 %t392
  %t397 = load ptr, ptr %t396, !tbaa !39
  %t401 = getelementptr %"compiler/ast:CaseDecl", ptr %t397, i32 0, i32 2
  %t402 = load { i64, ptr }, ptr %t401, !tbaa !27
  store { i64, ptr } %t402, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t404 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t406 = extractvalue { i64, ptr } %t404, 0
  store i64 %t406, ptr %l34, !tbaa !24
  br label %bb108
bb108:
  %t408 = load i64, ptr %l33, !tbaa !24
  %t409 = load i64, ptr %l34, !tbaa !24
  %t412 = icmp slt i64 %t408, %t409
  %t414 = xor i1 %t412, true
  br i1 %t414, label %bb109, label %bb110
bb109:
  br label %bb114
bb110:
  br label %bb111
bb111:
  %t416 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t416, ptr %l223, !tbaa !27
  %t417 = load i64, ptr %l33, !tbaa !24
  %t419 = getelementptr { i64, ptr }, ptr %l223, i32 0, i32 1
  %t420 = load ptr, ptr %t419, !tbaa !27
  %t421 = getelementptr ptr, ptr %t420, i64 %t417
  %t422 = load ptr, ptr %t421, !tbaa !39
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/ast:Param", ptr %t422, i32 0, i32 2
  %t428 = load ptr, ptr %t427, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t424, ptr %t428)
  br label %bb112
bb112:
  br label %bb113
bb113:
  %t431 = load i64, ptr %l33, !tbaa !24
  %t433 = add i64 %t431, 1
  store i64 %t433, ptr %l33, !tbaa !24
  br label %bb108
bb114:
  br label %bb115
bb115:
  %t435 = load i64, ptr %l29, !tbaa !24
  %t437 = add i64 %t435, 1
  store i64 %t437, ptr %l29, !tbaa !24
  br label %bb104
bb116:
  br label %bb129
bb117:
  %t439 = load ptr, ptr %l6, !tbaa !29
  store ptr %t439, ptr %l233, !tbaa !29
  store i1 false, ptr %l234, !tbaa !21
  %t440 = load ptr, ptr %l233, !tbaa !29
  %t441 = icmp ne ptr %t440, null
  br i1 %t441, label %bb118, label %bb119
bb118:
  %t443 = load ptr, ptr %l233, !tbaa !29
  %t444 = load i64, ptr %t443, !range !{i64 0, i64 11}
  %t446 = icmp eq i64 %t444, 10
  store i1 %t446, ptr %l234, !tbaa !21
  br label %bb119
bb119:
  %t447 = load i1, ptr %l234, !tbaa !21
  br i1 %t447, label %bb120, label %bb121
bb120:
  %t448 = load ptr, ptr %l6, !tbaa !29
  %t450 = getelementptr { i64, [8 x i64] }, ptr %t448, i32 0, i32 1
  %t451 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t450, i32 0, i32 2
  %t452 = load { i64, ptr }, ptr %t451
  store { i64, ptr } %t452, ptr %l36, !tbaa !27
  br label %bb122
bb121:
  br label %bb124
bb122:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t455 = load i64, ptr %l1, !tbaa !24
  %t456 = load { i64, ptr }, ptr %l36, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v1, ptr %t454, i64 %t455, { i64, ptr } %t456)
  br label %bb123
bb123:
  br label %bb129
bb124:
  br i1 true, label %bb125, label %bb126
bb125:
  br label %bb127
bb126:
  br label %bb128
bb127:
  br label %bb129
bb128:
  call void @__olang_check_failed(ptr @olang_loc_d2d926149e7406c7_ee094aa2e5a4afab)
  unreachable
bb129:
  br label %bb130
bb130:
  %t460 = load i64, ptr %l4, !tbaa !24
  %t462 = add i64 %t460, 1
  store i64 %t462, ptr %l4, !tbaa !24
  br label %bb1
bb131:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebranch(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Branch", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/names:Resolver", ptr %t8, i32 0, i32 0
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = getelementptr %"compiler/load:Loader", ptr %t11, i32 0, i32 4
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Branch", ptr %t15, i32 0, i32 2
  %t18 = load i64, ptr %t17, !tbaa !24
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %t14, i64 %t18)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/ast:Branch", ptr %t22, i32 0, i32 1
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t21, { i64, ptr } %t25)
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/ast:Branch", ptr %t28, i32 0, i32 2
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = icmp sge i64 %t31, 0
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/names:Resolver", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t40 = getelementptr %"compiler/load:Loader", ptr %t38, i32 0, i32 4
  %t41 = load ptr, ptr %t40, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %t41)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eclauses(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l27 = alloca { i64, ptr }
  %l36 = alloca i1
  %l37 = alloca ptr
  %l42 = alloca i1
  %l44 = alloca { i64, ptr }
  %l49 = alloca i32
  %l52 = alloca { i64, ptr }
  %l54 = alloca { i64, ptr }
  %l56 = alloca %"compiler/names:Ref"
  %l59 = alloca i1
  %l61 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l86 = alloca i64
  %l103 = alloca { i64, ptr }
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
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  br label %bb44
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l27, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = getelementptr %"compiler/ast:Catch", ptr %t29, i32 0, i32 5
  %t32 = load i32, ptr %t31, !tbaa !23
  store i32 %t32, ptr %l6, !tbaa !23
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/ast:Catch", ptr %t34, i32 0, i32 6
  %t37 = load %"compiler/source:Span", ptr %t36
  store %"compiler/source:Span" %t37, ptr %l7
  %t39 = load i32, ptr %l6, !tbaa !23
  %t41 = icmp eq i32 %t39, 0
  br i1 %t41, label %bb8, label %bb9
bb8:
  %t43 = load ptr, ptr %l5, !tbaa !29
  store ptr %t43, ptr %l37, !tbaa !29
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = getelementptr %"compiler/ast:Catch", ptr %t44, i32 0, i32 1
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  %t51 = icmp eq i64 %t49, 1
  br i1 %t51, label %bb10, label %bb11
bb9:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb18
bb10:
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t55 = getelementptr %"compiler/ast:Catch", ptr %t53, i32 0, i32 1
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l44, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 0
  %t60 = load ptr, ptr %t59, !tbaa !39
  %t62 = getelementptr %"compiler/ast:Path", ptr %t60, i32 0, i32 1
  %t63 = load { i64, ptr }, ptr %t62, !tbaa !27
  %t65 = extractvalue { i64, ptr } %t63, 0
  %t67 = icmp eq i64 %t65, 1
  store i1 %t67, ptr %l42, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb12
bb12:
  %t69 = load i1, ptr %l42, !tbaa !21
  br i1 %t69, label %bb13, label %bb14
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = getelementptr %"compiler/ast:Catch", ptr %t71, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !27
  store { i64, ptr } %t74, ptr %l52, !tbaa !27
  %t75 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr ptr, ptr %t76, i64 0
  %t78 = load ptr, ptr %t77, !tbaa !39
  %t80 = getelementptr %"compiler/ast:Path", ptr %t78, i32 0, i32 1
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l54, !tbaa !27
  %t82 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 0
  %t85 = load i32, ptr %t84, !tbaa !33
  %t88 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t70, i32 %t85)
  store %"compiler/names:Ref" %t88, ptr %l56
  br label %bb15
bb14:
  store i32 4, ptr %l49
  br label %bb16
bb15:
  %t90 = getelementptr %"compiler/names:Ref", ptr %l56, i32 0, i32 0
  %t91 = load i32, ptr %t90, !range !{i32 0, i32 9}
  store i32 %t91, ptr %l49
  br label %bb16
bb16:
  %t93 = load ptr, ptr %l37, !tbaa !29
  %t94 = load i32, ptr %l49, !range !{i32 0, i32 9}
  %t95 = call i1 @compiler_2fnames_2eLoneCatchName(ptr %v1, ptr %t93, i32 %t94)
  store i1 %t95, ptr %l59
  br label %bb17
bb17:
  %t96 = load i1, ptr %l59, !tbaa !21
  store i1 %t96, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t97 = load i1, ptr %l36, !tbaa !21
  br i1 %t97, label %bb19, label %bb20
bb19:
  %t98 = load ptr, ptr %l5, !tbaa !29
  %t100 = getelementptr %"compiler/ast:Catch", ptr %t98, i32 0, i32 1
  %t101 = load { i64, ptr }, ptr %t100, !tbaa !27
  store { i64, ptr } %t101, ptr %l61, !tbaa !27
  %t102 = getelementptr { i64, ptr }, ptr %l61, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr ptr, ptr %t103, i64 0
  %t105 = load ptr, ptr %t104, !tbaa !39
  %t107 = getelementptr %"compiler/ast:Path", ptr %t105, i32 0, i32 1
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l63, !tbaa !27
  %t109 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i32, ptr %t110, i64 0
  %t112 = load i32, ptr %t111, !tbaa !33
  store i32 %t112, ptr %l6, !tbaa !23
  %t114 = load ptr, ptr %l5, !tbaa !29
  %t116 = getelementptr %"compiler/ast:Catch", ptr %t114, i32 0, i32 1
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %l66, !tbaa !27
  %t118 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t119 = load ptr, ptr %t118, !tbaa !27
  %t120 = getelementptr ptr, ptr %t119, i64 0
  %t121 = load ptr, ptr %t120, !tbaa !39
  %t123 = getelementptr %"compiler/ast:Path", ptr %t121, i32 0, i32 0
  %t124 = load %"compiler/source:Span", ptr %t123
  store %"compiler/source:Span" %t124, ptr %l7
  br label %bb28
bb20:
  %t126 = load ptr, ptr %l5, !tbaa !29
  %t128 = getelementptr %"compiler/ast:Catch", ptr %t126, i32 0, i32 1
  %t129 = load { i64, ptr }, ptr %t128, !tbaa !27
  store { i64, ptr } %t129, ptr %l8, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t131 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t133 = extractvalue { i64, ptr } %t131, 0
  store i64 %t133, ptr %l10, !tbaa !24
  br label %bb21
bb21:
  %t135 = load i64, ptr %l9, !tbaa !24
  %t136 = load i64, ptr %l10, !tbaa !24
  %t139 = icmp slt i64 %t135, %t136
  %t141 = xor i1 %t139, true
  br i1 %t141, label %bb22, label %bb23
bb22:
  br label %bb27
bb23:
  br label %bb24
bb24:
  %t143 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t143, ptr %l77, !tbaa !27
  %t144 = load i64, ptr %l9, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr ptr, ptr %t147, i64 %t144
  %t149 = load ptr, ptr %t148, !tbaa !39
  %t151 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t151, ptr %t149)
  br label %bb25
bb25:
  br label %bb26
bb26:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l9, !tbaa !24
  br label %bb21
bb27:
  br label %bb28
bb28:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t160)
  store i64 %t162, ptr %l86
  br label %bb29
bb29:
  %t163 = load i64, ptr %l86, !tbaa !24
  store i64 %t163, ptr %l12, !tbaa !24
  %t164 = load i32, ptr %l6, !tbaa !23
  %t166 = icmp ne i32 %t164, 0
  br i1 %t166, label %bb30, label %bb31
bb30:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i32, ptr %l6, !tbaa !23
  %t170 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclare(ptr %v0, ptr %t168, i32 %t169, %"compiler/source:Span" %t170, i1 false)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t175 = load ptr, ptr %l5, !tbaa !29
  %t177 = getelementptr %"compiler/ast:Catch", ptr %t175, i32 0, i32 2
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t174, { i64, ptr } %t178)
  br label %bb34
bb34:
  %t181 = load ptr, ptr %l5, !tbaa !29
  %t183 = getelementptr %"compiler/ast:Catch", ptr %t181, i32 0, i32 3
  %t184 = load { i64, ptr }, ptr %t183, !tbaa !27
  store { i64, ptr } %t184, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t186 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t188 = extractvalue { i64, ptr } %t186, 0
  store i64 %t188, ptr %l15, !tbaa !24
  br label %bb35
bb35:
  %t190 = load i64, ptr %l14, !tbaa !24
  %t191 = load i64, ptr %l15, !tbaa !24
  %t194 = icmp slt i64 %t190, %t191
  %t196 = xor i1 %t194, true
  br i1 %t196, label %bb36, label %bb37
bb36:
  br label %bb41
bb37:
  br label %bb38
bb38:
  %t198 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t198, ptr %l103, !tbaa !27
  %t199 = load i64, ptr %l14, !tbaa !24
  %t201 = getelementptr { i64, ptr }, ptr %l103, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr ptr, ptr %t202, i64 %t199
  %t204 = load ptr, ptr %t203, !tbaa !39
  %t206 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t206, ptr %t204)
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t211 = load i64, ptr %l14, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l14, !tbaa !24
  br label %bb35
bb41:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t216 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t215, i64 %t216)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t219 = load i64, ptr %l3, !tbaa !24
  %t221 = add i64 %t219, 1
  store i64 %t221, ptr %l3, !tbaa !24
  br label %bb4
bb44:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollect(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca ptr
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca ptr
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i64
  %l48 = alloca %"compiler/source:Span"
  %l50 = alloca i64
  %l61 = alloca ptr
  %l62 = alloca i1
  %l67 = alloca ptr
  %l68 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i64
  %l78 = alloca i32
  %l79 = alloca ptr
  %l80 = alloca i64
  %l86 = alloca %"compiler/source:Span"
  %l90 = alloca %"compiler/source:Span"
  %l95 = alloca i32
  %l105 = alloca ptr
  %l106 = alloca i64
  %l108 = alloca i32
  %l114 = alloca %"compiler/source:Span"
  %l119 = alloca ptr
  %l120 = alloca i1
  %l127 = alloca ptr
  %l128 = alloca i64
  %l130 = alloca i32
  %l136 = alloca %"compiler/source:Span"
  %l139 = alloca ptr
  %l140 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i64
  %l151 = alloca i32
  %l156 = alloca %"compiler/source:Span"
  %l162 = alloca ptr
  %l163 = alloca i1
  %l174 = alloca i64
  %l177 = alloca i64
  %l195 = alloca ptr
  %l196 = alloca i64
  %l198 = alloca { i64, ptr }
  %l200 = alloca i32
  %l202 = alloca { i64, ptr }
  %l204 = alloca %"compiler/source:Span"
  %l207 = alloca i1
  %l212 = alloca ptr
  %l213 = alloca i1
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l3, !tbaa !27
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
  br label %bb99
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l31, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l6, !tbaa !29
  %t23 = load ptr, ptr %l6, !tbaa !29
  store ptr %t23, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t24 = load ptr, ptr %l34, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb5, label %bb6
bb5:
  %t27 = load ptr, ptr %l34, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 11}
  %t30 = icmp eq i64 %t28, 7
  store i1 %t30, ptr %l35, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l35, !tbaa !21
  br i1 %t31, label %bb7, label %bb8
bb7:
  %t32 = load ptr, ptr %l6, !tbaa !29
  %t34 = getelementptr { i64, [8 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { %"compiler/source:Span", ptr }, ptr %t34, i32 0, i32 1
  %t36 = load ptr, ptr %t35
  store ptr %t36, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb20
bb9:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/names:Resolver", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l41, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  store i64 %t42, ptr %l42, !tbaa !24
  %t43 = load ptr, ptr %l7, !tbaa !29
  %t45 = getelementptr %"compiler/ast:TopIf", ptr %t43, i32 0, i32 0
  %t46 = load ptr, ptr %t45, !tbaa !29
  %t48 = icmp eq ptr %t46, null
  br i1 %t48, label %bb10, label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_2f2d72e397ff9e11_581917560c7c3b1d)
  unreachable
bb11:
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l7, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TopIf", ptr %t50, i32 0, i32 0
  %t53 = load ptr, ptr %t52, !tbaa !29
  %t55 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v1, ptr %t53)
  store %"compiler/source:Span" %t55, ptr %l48
  br label %bb13
bb13:
  %t56 = getelementptr %"compiler/source:Span", ptr %l48, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t58 = load ptr, ptr %l41, !tbaa !29
  %t59 = load i64, ptr %l42, !tbaa !24
  %t61 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %t58, i64 %t59, i32 %t57)
  store i64 %t61, ptr %l50
  br label %bb14
bb14:
  %t62 = load i64, ptr %l50, !tbaa !24
  store i64 %t62, ptr %l8, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i64, ptr @G_2ecompiler_2fload_2ePending, !tbaa !24
  %t67 = icmp eq i64 %t63, %t64
  br i1 %t67, label %bb15, label %bb16
bb15:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l1, !tbaa !24
  %t71 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitAside(ptr %v0, ptr %v1, ptr %t69, i64 %t70, ptr %t71)
  br label %bb17
bb16:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load i64, ptr %l1, !tbaa !24
  %t77 = load ptr, ptr %l7, !tbaa !29
  %t78 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollectIf(ptr %v0, ptr %v1, ptr %t75, i64 %t76, ptr %t77, i64 %t78, i64 0)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb97
bb20:
  %t83 = load ptr, ptr %l6, !tbaa !29
  store ptr %t83, ptr %l61, !tbaa !29
  store i1 false, ptr %l62, !tbaa !21
  %t84 = load ptr, ptr %l61, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb21, label %bb22
bb21:
  %t87 = load ptr, ptr %l61, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 11}
  %t90 = icmp eq i64 %t88, 0
  store i1 %t90, ptr %l62, !tbaa !21
  br label %bb22
bb22:
  %t91 = load i1, ptr %l62, !tbaa !21
  br i1 %t91, label %bb23, label %bb24
bb23:
  %t92 = load ptr, ptr %l6, !tbaa !29
  %t94 = getelementptr { i64, [8 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { ptr }, ptr %t94, i32 0, i32 0
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l9, !tbaa !29
  br label %bb29
bb24:
  %t98 = load ptr, ptr %l6, !tbaa !29
  store ptr %t98, ptr %l67, !tbaa !29
  store i1 false, ptr %l68, !tbaa !21
  %t99 = load ptr, ptr %l67, !tbaa !29
  %t100 = icmp ne ptr %t99, null
  br i1 %t100, label %bb25, label %bb26
bb25:
  %t102 = load ptr, ptr %l67, !tbaa !29
  %t103 = load i64, ptr %t102, !range !{i64 0, i64 11}
  %t105 = icmp eq i64 %t103, 1
  store i1 %t105, ptr %l68, !tbaa !21
  br label %bb26
bb26:
  %t106 = load i1, ptr %l68, !tbaa !21
  br i1 %t106, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l6, !tbaa !29
  %t109 = getelementptr { i64, [8 x i64] }, ptr %t107, i32 0, i32 1
  %t110 = getelementptr { ptr }, ptr %t109, i32 0, i32 0
  %t111 = load ptr, ptr %t110
  store ptr %t111, ptr %l9, !tbaa !29
  br label %bb29
bb28:
  br label %bb48
bb29:
  store %olang.scope zeroinitializer, ptr %s6
  %t113 = load ptr, ptr %l9, !tbaa !29
  %t115 = call i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v1, ptr %t113)
  store i1 %t115, ptr %l74
  br label %bb30
bb30:
  %t116 = load i1, ptr %l74, !tbaa !21
  br i1 %t116, label %bb31, label %bb32
bb31:
  store %olang.scope zeroinitializer, ptr %s7
  %t117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t117, ptr %l75, !tbaa !29
  %t118 = load i64, ptr %l1, !tbaa !24
  store i64 %t118, ptr %l76, !tbaa !24
  %t119 = load ptr, ptr %l9, !tbaa !29
  %t121 = getelementptr %"compiler/ast:Func", ptr %t119, i32 0, i32 2
  %t122 = load i32, ptr %t121, !tbaa !23
  store i32 %t122, ptr %l78, !tbaa !23
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l79, !tbaa !29
  %t124 = load i64, ptr %l1, !tbaa !24
  store i64 %t124, ptr %l80, !tbaa !24
  %t125 = load ptr, ptr %l9, !tbaa !29
  %t127 = getelementptr %"compiler/ast:Func", ptr %t125, i32 0, i32 9
  %t128 = load ptr, ptr %t127, !tbaa !29
  %t130 = icmp eq ptr %t128, null
  br i1 %t130, label %bb33, label %bb34
bb32:
  br label %bb39
bb33:
  call void @__olang_check_failed(ptr @olang_loc_217d72d4076f850a_92db47fb0f8e8bb6)
  unreachable
bb34:
  br label %bb35
bb35:
  %t132 = load ptr, ptr %l9, !tbaa !29
  %t134 = getelementptr %"compiler/ast:Func", ptr %t132, i32 0, i32 9
  %t135 = load ptr, ptr %t134, !tbaa !29
  %t137 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v1, ptr %t135)
  store %"compiler/source:Span" %t137, ptr %l86
  br label %bb36
bb36:
  %t138 = getelementptr %"compiler/source:Span", ptr %l86, i32 0, i32 1
  %t139 = load i32, ptr %t138, !tbaa !23
  %t140 = load ptr, ptr %l9, !tbaa !29
  %t142 = getelementptr %"compiler/ast:Func", ptr %t140, i32 0, i32 10
  %t143 = load i32, ptr %t142, !tbaa !23
  %t144 = load ptr, ptr %l79, !tbaa !29
  %t145 = load i64, ptr %l80, !tbaa !24
  %t148 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t144, i64 %t145, i32 %t139, i32 %t143)
  store %"compiler/source:Span" %t148, ptr %l90
  br label %bb37
bb37:
  %t149 = load ptr, ptr %l75, !tbaa !29
  %t150 = load i64, ptr %l76, !tbaa !24
  %t151 = load i32, ptr %l78, !tbaa !23
  %t152 = load %"compiler/source:Span", ptr %l90
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddValue(ptr %v0, ptr %s7, ptr %t149, i64 %t150, i32 %t151, %"compiler/source:Span" %t152, i1 false, i1 true, i1 true, ptr null)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s6)
  br label %bb98
bb39:
  %t153 = load ptr, ptr %l9, !tbaa !29
  %t155 = getelementptr %"compiler/ast:Func", ptr %t153, i32 0, i32 1
  %t156 = load ptr, ptr %t155, !tbaa !29
  %t158 = icmp eq ptr %t156, null
  %t160 = xor i1 %t158, true
  br i1 %t160, label %bb40, label %bb41
bb40:
  %t162 = load ptr, ptr %l9, !tbaa !29
  %t164 = getelementptr %"compiler/ast:Func", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t167 = icmp eq ptr %t165, null
  br i1 %t167, label %bb42, label %bb43
bb41:
  %t169 = load ptr, ptr %l9, !tbaa !29
  %t171 = getelementptr %"compiler/ast:Func", ptr %t169, i32 0, i32 0
  %t172 = getelementptr %"compiler/source:Span", ptr %t171, i32 0, i32 0
  %t173 = load i32, ptr %t172, !tbaa !23
  store i32 %t173, ptr %l95, !tbaa !23
  br label %bb45
bb42:
  call void @__olang_check_failed(ptr @olang_loc_cbd8c9ec4d2c560b_31762469b8343a67)
  unreachable
bb43:
  br label %bb44
bb44:
  %t175 = load ptr, ptr %l9, !tbaa !29
  %t177 = getelementptr %"compiler/ast:Func", ptr %t175, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !29
  %t181 = getelementptr %"compiler/ast:Param", ptr %t178, i32 0, i32 0
  %t182 = getelementptr %"compiler/source:Span", ptr %t181, i32 0, i32 1
  %t183 = load i32, ptr %t182, !tbaa !23
  store i32 %t183, ptr %l95, !tbaa !23
  br label %bb45
bb45:
  %t185 = load i32, ptr %l95, !tbaa !23
  %t186 = load ptr, ptr %l0, !tbaa !29
  store ptr %t186, ptr %l105, !tbaa !29
  %t187 = load i64, ptr %l1, !tbaa !24
  store i64 %t187, ptr %l106, !tbaa !24
  %t188 = load ptr, ptr %l9, !tbaa !29
  %t190 = getelementptr %"compiler/ast:Func", ptr %t188, i32 0, i32 2
  %t191 = load i32, ptr %t190, !tbaa !23
  store i32 %t191, ptr %l108, !tbaa !23
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i64, ptr %l1, !tbaa !24
  %t195 = load ptr, ptr %l9, !tbaa !29
  %t197 = getelementptr %"compiler/ast:Func", ptr %t195, i32 0, i32 2
  %t198 = load i32, ptr %t197, !tbaa !23
  %t203 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t192, i64 %t193, i32 %t185, i32 %t198)
  store %"compiler/source:Span" %t203, ptr %l114
  br label %bb46
bb46:
  %t204 = load ptr, ptr %l9, !tbaa !29
  %t206 = getelementptr %"compiler/ast:Func", ptr %t204, i32 0, i32 1
  %t207 = load ptr, ptr %t206, !tbaa !29
  %t209 = icmp eq ptr %t207, null
  %t211 = xor i1 %t209, true
  %t212 = load ptr, ptr %l105, !tbaa !29
  %t213 = load i64, ptr %l106, !tbaa !24
  %t214 = load i32, ptr %l108, !tbaa !23
  %t215 = load %"compiler/source:Span", ptr %l114
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddValue(ptr %v0, ptr %s6, ptr %t212, i64 %t213, i32 %t214, %"compiler/source:Span" %t215, i1 false, i1 true, i1 %t211, ptr null)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s6)
  br label %bb97
bb48:
  %t217 = load ptr, ptr %l6, !tbaa !29
  store ptr %t217, ptr %l119, !tbaa !29
  store i1 false, ptr %l120, !tbaa !21
  %t218 = load ptr, ptr %l119, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb49, label %bb50
bb49:
  %t221 = load ptr, ptr %l119, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 11}
  %t224 = icmp eq i64 %t222, 2
  store i1 %t224, ptr %l120, !tbaa !21
  br label %bb50
bb50:
  %t225 = load i1, ptr %l120, !tbaa !21
  br i1 %t225, label %bb51, label %bb52
bb51:
  %t226 = load ptr, ptr %l6, !tbaa !29
  %t228 = getelementptr { i64, [8 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l11
  %t232 = load ptr, ptr %l6, !tbaa !29
  %t234 = getelementptr { i64, [8 x i64] }, ptr %t232, i32 0, i32 1
  %t235 = getelementptr { %"compiler/source:Span", ptr }, ptr %t234, i32 0, i32 1
  %t236 = load ptr, ptr %t235
  store ptr %t236, ptr %l12, !tbaa !29
  br label %bb53
bb52:
  br label %bb56
bb53:
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l127, !tbaa !29
  %t239 = load i64, ptr %l1, !tbaa !24
  store i64 %t239, ptr %l128, !tbaa !24
  %t240 = load ptr, ptr %l12, !tbaa !29
  %t242 = getelementptr %"compiler/ast:TypeDecl", ptr %t240, i32 0, i32 0
  %t243 = load i32, ptr %t242, !tbaa !23
  store i32 %t243, ptr %l130, !tbaa !23
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i64, ptr %l1, !tbaa !24
  %t246 = getelementptr %"compiler/source:Span", ptr %l11, i32 0, i32 0
  %t247 = load i32, ptr %t246, !tbaa !23
  %t248 = load ptr, ptr %l12, !tbaa !29
  %t250 = getelementptr %"compiler/ast:TypeDecl", ptr %t248, i32 0, i32 0
  %t251 = load i32, ptr %t250, !tbaa !23
  %t256 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t244, i64 %t245, i32 %t247, i32 %t251)
  store %"compiler/source:Span" %t256, ptr %l136
  br label %bb54
bb54:
  %t257 = load ptr, ptr %l12, !tbaa !29
  %t259 = load ptr, ptr %l127, !tbaa !29
  %t260 = load i64, ptr %l128, !tbaa !24
  %t261 = load i32, ptr %l130, !tbaa !23
  %t262 = load %"compiler/source:Span", ptr %l136
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddType(ptr %v0, ptr %v1, ptr %t259, i64 %t260, i32 %t261, %"compiler/source:Span" %t262, ptr %t257)
  br label %bb55
bb55:
  br label %bb97
bb56:
  %t264 = load ptr, ptr %l6, !tbaa !29
  store ptr %t264, ptr %l139, !tbaa !29
  store i1 false, ptr %l140, !tbaa !21
  %t265 = load ptr, ptr %l139, !tbaa !29
  %t266 = icmp ne ptr %t265, null
  br i1 %t266, label %bb57, label %bb58
bb57:
  %t268 = load ptr, ptr %l139, !tbaa !29
  %t269 = load i64, ptr %t268, !range !{i64 0, i64 11}
  %t271 = icmp eq i64 %t269, 5
  store i1 %t271, ptr %l140, !tbaa !21
  br label %bb58
bb58:
  %t272 = load i1, ptr %l140, !tbaa !21
  br i1 %t272, label %bb59, label %bb60
bb59:
  %t273 = load ptr, ptr %l6, !tbaa !29
  %t275 = getelementptr { i64, [8 x i64] }, ptr %t273, i32 0, i32 1
  %t276 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t275, i32 0, i32 0
  %t277 = load %"compiler/source:Span", ptr %t276
  store %"compiler/source:Span" %t277, ptr %l13
  %t279 = load ptr, ptr %l6, !tbaa !29
  %t281 = getelementptr { i64, [8 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t281, i32 0, i32 1
  %t283 = load i32, ptr %t282
  store i32 %t283, ptr %l14, !tbaa !23
  %t285 = load ptr, ptr %l6, !tbaa !29
  %t287 = getelementptr { i64, [8 x i64] }, ptr %t285, i32 0, i32 1
  %t288 = getelementptr { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t287, i32 0, i32 4
  %t289 = load { i64, ptr }, ptr %t288
  store { i64, ptr } %t289, ptr %l15, !tbaa !27
  br label %bb61
bb60:
  br label %bb65
bb61:
  %t291 = load ptr, ptr %l0, !tbaa !29
  store ptr %t291, ptr %l149, !tbaa !29
  %t292 = load i64, ptr %l1, !tbaa !24
  store i64 %t292, ptr %l150, !tbaa !24
  %t293 = load i32, ptr %l14, !tbaa !23
  store i32 %t293, ptr %l151, !tbaa !23
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i64, ptr %l1, !tbaa !24
  %t296 = getelementptr %"compiler/source:Span", ptr %l13, i32 0, i32 0
  %t297 = load i32, ptr %t296, !tbaa !23
  %t298 = load i32, ptr %l14, !tbaa !23
  %t303 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t294, i64 %t295, i32 %t297, i32 %t298)
  store %"compiler/source:Span" %t303, ptr %l156
  br label %bb62
bb62:
  %t304 = load ptr, ptr %l149, !tbaa !29
  %t305 = load i64, ptr %l150, !tbaa !24
  %t306 = load i32, ptr %l151, !tbaa !23
  %t307 = load %"compiler/source:Span", ptr %l156
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddType(ptr %v0, ptr %v0, ptr %t304, i64 %t305, i32 %t306, %"compiler/source:Span" %t307, ptr null)
  br label %bb63
bb63:
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i64, ptr %l1, !tbaa !24
  %t310 = load %"compiler/source:Span", ptr %l13
  %t311 = load i32, ptr %l14, !tbaa !23
  %t312 = load { i64, ptr }, ptr %l15, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epayloadEnum(ptr %v0, ptr %v1, ptr %t308, i64 %t309, %"compiler/source:Span" %t310, i32 %t311, { i64, ptr } %t312)
  br label %bb64
bb64:
  br label %bb97
bb65:
  %t318 = load ptr, ptr %l6, !tbaa !29
  store ptr %t318, ptr %l162, !tbaa !29
  store i1 false, ptr %l163, !tbaa !21
  %t319 = load ptr, ptr %l162, !tbaa !29
  %t320 = icmp ne ptr %t319, null
  br i1 %t320, label %bb66, label %bb67
bb66:
  %t322 = load ptr, ptr %l162, !tbaa !29
  %t323 = load i64, ptr %t322, !range !{i64 0, i64 11}
  %t325 = icmp eq i64 %t323, 3
  store i1 %t325, ptr %l163, !tbaa !21
  br label %bb67
bb67:
  %t326 = load i1, ptr %l163, !tbaa !21
  br i1 %t326, label %bb68, label %bb69
bb68:
  %t327 = load ptr, ptr %l6, !tbaa !29
  %t329 = getelementptr { i64, [8 x i64] }, ptr %t327, i32 0, i32 1
  %t330 = getelementptr { %"compiler/source:Span", ptr }, ptr %t329, i32 0, i32 1
  %t331 = load ptr, ptr %t330
  store ptr %t331, ptr %l16, !tbaa !29
  br label %bb70
bb69:
  br label %bb85
bb70:
  store i64 0, ptr %l17, !tbaa !24
  %t333 = load ptr, ptr %l16, !tbaa !29
  %t335 = getelementptr %"compiler/ast:VarDecl", ptr %t333, i32 0, i32 0
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t336, 0
  store i64 %t338, ptr %l18, !tbaa !24
  store i64 1, ptr %l19, !tbaa !24
  %t340 = load i64, ptr %l18, !tbaa !24
  %t341 = load i64, ptr %l17, !tbaa !24
  %t344 = icmp sgt i64 %t340, %t341
  br i1 %t344, label %bb71, label %bb72
bb71:
  %t346 = load i64, ptr %l19, !tbaa !24
  %t348 = icmp sgt i64 %t346, 0
  br i1 %t348, label %bb73, label %bb74
bb72:
  store i64 0, ptr %l174, !tbaa !24
  br label %bb76
bb73:
  %t350 = load i64, ptr %l18, !tbaa !24
  %t351 = load i64, ptr %l17, !tbaa !24
  %t354 = sub i64 %t350, %t351
  %t355 = load i64, ptr %l19, !tbaa !24
  %t358 = add i64 %t354, %t355
  %t360 = sub i64 %t358, 1
  %t361 = load i64, ptr %l19, !tbaa !24
  %t364 = sdiv i64 %t360, %t361
  store i64 %t364, ptr %l177, !tbaa !24
  br label %bb75
bb74:
  store i64 0, ptr %l177, !tbaa !24
  br label %bb75
bb75:
  %t366 = load i64, ptr %l177, !tbaa !24
  store i64 %t366, ptr %l174, !tbaa !24
  br label %bb76
bb76:
  %t367 = load i64, ptr %l174, !tbaa !24
  store i64 %t367, ptr %l20, !tbaa !24
  store i64 0, ptr %l21, !tbaa !24
  br label %bb77
bb77:
  %t368 = load i64, ptr %l21, !tbaa !24
  %t369 = load i64, ptr %l20, !tbaa !24
  %t372 = icmp slt i64 %t368, %t369
  %t374 = xor i1 %t372, true
  br i1 %t374, label %bb78, label %bb79
bb78:
  br label %bb84
bb79:
  br label %bb80
bb80:
  %t376 = load i64, ptr %l17, !tbaa !24
  %t377 = load i64, ptr %l21, !tbaa !24
  %t378 = load i64, ptr %l19, !tbaa !24
  %t381 = mul i64 %t377, %t378
  %t384 = add i64 %t376, %t381
  store i64 %t384, ptr %l22, !tbaa !24
  %t386 = load ptr, ptr %l0, !tbaa !29
  store ptr %t386, ptr %l195, !tbaa !29
  %t387 = load i64, ptr %l1, !tbaa !24
  store i64 %t387, ptr %l196, !tbaa !24
  %t388 = load ptr, ptr %l16, !tbaa !29
  %t390 = getelementptr %"compiler/ast:VarDecl", ptr %t388, i32 0, i32 0
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  store { i64, ptr } %t391, ptr %l198, !tbaa !27
  %t392 = load i64, ptr %l22, !tbaa !24
  %t394 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t395 = load ptr, ptr %t394, !tbaa !27
  %t396 = getelementptr i32, ptr %t395, i64 %t392
  %t397 = load i32, ptr %t396, !tbaa !33
  store i32 %t397, ptr %l200, !tbaa !23
  %t398 = load ptr, ptr %l16, !tbaa !29
  %t400 = getelementptr %"compiler/ast:VarDecl", ptr %t398, i32 0, i32 1
  %t401 = load { i64, ptr }, ptr %t400, !tbaa !27
  store { i64, ptr } %t401, ptr %l202, !tbaa !27
  %t402 = load i64, ptr %l22, !tbaa !24
  %t404 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t405 = load ptr, ptr %t404, !tbaa !27
  %t406 = getelementptr %"compiler/source:Span", ptr %t405, i64 %t402
  %t407 = load %"compiler/source:Span", ptr %t406
  store %"compiler/source:Span" %t407, ptr %l204
  %t408 = load ptr, ptr %l16, !tbaa !29
  %t410 = getelementptr %"compiler/ast:VarDecl", ptr %t408, i32 0, i32 2
  %t411 = load ptr, ptr %t410, !tbaa !29
  %t413 = call i1 @compiler_2fnames_2eWrittenMut(ptr %v1, ptr %t411)
  store i1 %t413, ptr %l207
  br label %bb81
bb81:
  %t414 = load ptr, ptr %l16, !tbaa !29
  %t416 = load ptr, ptr %l195, !tbaa !29
  %t417 = load i64, ptr %l196, !tbaa !24
  %t418 = load i32, ptr %l200, !tbaa !23
  %t419 = load %"compiler/source:Span", ptr %l204
  %t420 = load i1, ptr %l207, !tbaa !21
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddValue(ptr %v0, ptr %v1, ptr %t416, i64 %t417, i32 %t418, %"compiler/source:Span" %t419, i1 %t420, i1 false, i1 false, ptr %t414)
  br label %bb82
bb82:
  br label %bb83
bb83:
  %t422 = load i64, ptr %l21, !tbaa !24
  %t424 = add i64 %t422, 1
  store i64 %t424, ptr %l21, !tbaa !24
  br label %bb77
bb84:
  br label %bb97
bb85:
  %t426 = load ptr, ptr %l6, !tbaa !29
  store ptr %t426, ptr %l212, !tbaa !29
  store i1 false, ptr %l213, !tbaa !21
  %t427 = load ptr, ptr %l212, !tbaa !29
  %t428 = icmp ne ptr %t427, null
  br i1 %t428, label %bb86, label %bb87
bb86:
  %t430 = load ptr, ptr %l212, !tbaa !29
  %t431 = load i64, ptr %t430, !range !{i64 0, i64 11}
  %t433 = icmp eq i64 %t431, 10
  store i1 %t433, ptr %l213, !tbaa !21
  br label %bb87
bb87:
  %t434 = load i1, ptr %l213, !tbaa !21
  br i1 %t434, label %bb88, label %bb89
bb88:
  %t435 = load ptr, ptr %l6, !tbaa !29
  %t437 = getelementptr { i64, [8 x i64] }, ptr %t435, i32 0, i32 1
  %t438 = getelementptr { %"compiler/source:Span", %"compiler/source:Span", { i64, ptr } }, ptr %t437, i32 0, i32 2
  %t439 = load { i64, ptr }, ptr %t438
  store { i64, ptr } %t439, ptr %l23, !tbaa !27
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load i64, ptr %l1, !tbaa !24
  %t443 = load { i64, ptr }, ptr %l23, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollect(ptr %v0, ptr %v1, ptr %t441, i64 %t442, { i64, ptr } %t443)
  br label %bb91
bb91:
  br label %bb97
bb92:
  br i1 true, label %bb93, label %bb94
bb93:
  br label %bb95
bb94:
  br label %bb96
bb95:
  br label %bb97
bb96:
  call void @__olang_check_failed(ptr @olang_loc_40bcba17b2bf17b3_8a9927ec4a716c7f)
  unreachable
bb97:
  br label %bb98
bb98:
  %t447 = load i64, ptr %l4, !tbaa !24
  %t449 = add i64 %t447, 1
  store i64 %t449, ptr %l4, !tbaa !24
  br label %bb1
bb99:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2econtract(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:Sig", ptr %t1, i32 0, i32 5
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = icmp eq ptr %t4, null
  br i1 %t6, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l7
  br label %bb4
bb4:
  %t11 = load i64, ptr %l7, !tbaa !24
  store i64 %t11, ptr %l2, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  store ptr %t12, ptr %l8, !tbaa !29
  %t13 = load ptr, ptr %l1, !tbaa !29
  %t15 = getelementptr %"compiler/ast:Sig", ptr %t13, i32 0, i32 5
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_c16bd254021e145_58d15072e112dec1)
  unreachable
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/ast:Sig", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t26 = getelementptr %"compiler/ast:ContractBlock", ptr %t23, i32 0, i32 1
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t28 = load ptr, ptr %l8, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t28, { i64, ptr } %t27)
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t30, i64 %t31)
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclare(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l8 = alloca { i64, ptr }
  %l10 = alloca i1
  %l13 = alloca ptr
  %l18 = alloca { i64, [3 x i64] }
  %l19 = alloca %"compiler/diagmsg:Msg"
  %l20 = alloca i64
  %l21 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l29 = alloca i1
  %l33 = alloca %"compiler/names:local"
  %l36 = alloca i1
  %l41 = alloca ptr
  %l46 = alloca { i64, [3 x i64] }
  %l49 = alloca %"compiler/diagmsg:Msg"
  %l52 = alloca { i64, ptr }
  %l54 = alloca %"compiler/diagmsg:Msg"
  %l57 = alloca { i64, ptr }
  %l59 = alloca %"compiler/diagmsg:Msg"
  %l60 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store %"compiler/source:Span" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t1, i32 %t2)
  store { i64, ptr } %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t6, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t9, ptr %l10
  br label %bb2
bb2:
  %t10 = load i1, ptr %l10, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/names:Resolver", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t16 = getelementptr %"compiler/load:Loader", ptr %t14, i32 0, i32 4
  %t17 = load ptr, ptr %t16, !tbaa !29
  store ptr %t17, ptr %l13, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/names:Resolver", ptr %t19, i32 0, i32 6
  %t22 = load i64, ptr %t21, !tbaa !24
  %t23 = load %"compiler/source:Span", ptr %l2
  %t27 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t18, i64 %t22, %"compiler/source:Span" %t23)
  store { i64, [3 x i64] } %t27, ptr %l18
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t28 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnderscoreDeclared(ptr %v0)
  store %"compiler/diagmsg:Msg" %t28, ptr %l19
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l13, !tbaa !29
  %t30 = load { i64, [3 x i64] }, ptr %l18
  %t31 = load %"compiler/diagmsg:Msg", ptr %l19
  %t32 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t29, { i64, [3 x i64] } %t30, %"compiler/diagmsg:Msg" %t31)
  store i64 %t32, ptr %l20
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/names:Resolver", ptr %t33, i32 0, i32 8
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t35, i32 %t36)
  %t40 = extractvalue { i32, i64 } %t39, 1
  %t41 = extractvalue { i32, i64 } %t39, 0
  store i32 %t41, ptr %l26
  %t42 = icmp ne i32 %t41, 0
  br i1 %t42, label %bb10, label %ok.43, !prof !99
ok.43:
  store i64 %t40, ptr %l25
  br label %bb9
bb9:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l21, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t45 = load i64, ptr %l21, !tbaa !24
  store i64 %t45, ptr %l5, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = icmp sge i64 %t46, 0
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/names:Resolver", ptr %t50, i32 0, i32 7
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t52, i64 %t53)
  store %"compiler/names:local" %t56, ptr %l33
  br label %bb15
bb14:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb16
bb15:
  %t57 = getelementptr %"compiler/names:local", ptr %l33, i32 0, i32 2
  %t58 = load i32, ptr %t57, !range !{i32 0, i32 9}
  %t60 = trunc i64 1 to i32
  %t61 = icmp eq i32 %t58, %t60
  store i1 %t61, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t63 = load i1, ptr %l29, !tbaa !21
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t66 = xor i1 %a3, true
  store i1 %t66, ptr %l36, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb19
bb19:
  %t68 = load i1, ptr %l36, !tbaa !21
  br i1 %t68, label %bb20, label %bb21
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/names:Resolver", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/load:Loader", ptr %t72, i32 0, i32 4
  %t75 = load ptr, ptr %t74, !tbaa !29
  store ptr %t75, ptr %l41, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/names:Resolver", ptr %t77, i32 0, i32 6
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load %"compiler/source:Span", ptr %l2
  %t85 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t76, i64 %t80, %"compiler/source:Span" %t81)
  store { i64, [3 x i64] } %t85, ptr %l46
  br label %bb22
bb21:
  br label %bb31
bb22:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/names:Resolver", ptr %t86, i32 0, i32 13
  %t89 = load i1, ptr %t88, !tbaa !21
  br i1 %t89, label %bb23, label %bb24
bb23:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l1, !tbaa !23
  %t95 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t91, i32 %t92)
  store { i64, ptr } %t95, ptr %l52
  br label %bb25
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t96, i32 %t97)
  store { i64, ptr } %t100, ptr %l57
  br label %bb27
bb25:
  %t101 = load { i64, ptr }, ptr %l52, !tbaa !27
  %t102 = extractvalue { i64, ptr } %t101, 0
  %t103 = extractvalue { i64, ptr } %t101, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t109 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAlreadyDeclared(ptr %v0, ptr %v0, { i64, ptr } %t107)
  store %"compiler/diagmsg:Msg" %t109, ptr %l54
  br label %bb26
bb26:
  %t110 = load %"compiler/diagmsg:Msg", ptr %l54
  store %"compiler/diagmsg:Msg" %t110, ptr %l49
  br label %bb29
bb27:
  %t111 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t111, 0
  %t113 = extractvalue { i64, ptr } %t111, 1
  %t114 = mul i64 %t112, 1
  %t115 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t114)
  call void @llvm.memcpy.p0.p0.i64(ptr %t115, ptr %t113, i64 %t114, i1 false)
  %t116 = insertvalue { i64, ptr } undef, i64 %t112, 0
  %t117 = insertvalue { i64, ptr } %t116, ptr %t115, 1
  %t119 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclaredTwice(ptr %v0, ptr %v0, { i64, ptr } %t117)
  store %"compiler/diagmsg:Msg" %t119, ptr %l59
  br label %bb28
bb28:
  %t120 = load %"compiler/diagmsg:Msg", ptr %l59
  store %"compiler/diagmsg:Msg" %t120, ptr %l49
  br label %bb29
bb29:
  %t121 = load ptr, ptr %l41, !tbaa !29
  %t122 = load { i64, [3 x i64] }, ptr %l46
  %t123 = load %"compiler/diagmsg:Msg", ptr %l49
  %t124 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t121, { i64, [3 x i64] } %t122, %"compiler/diagmsg:Msg" %t123)
  store i64 %t124, ptr %l60
  br label %bb30
bb30:
  br label %bb31
bb31:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load i32, ptr %l1, !tbaa !23
  %t127 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoShadow(ptr %v0, ptr %t125, i32 %t126, %"compiler/source:Span" %t127)
  br label %bb32
bb32:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/names:Resolver", ptr %t132, i32 0, i32 6
  %t135 = load i64, ptr %t134, !tbaa !24
  %t136 = load i32, ptr %l1, !tbaa !23
  %t137 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoAliasClash(ptr %v0, ptr %t131, i64 %t135, i32 %t136, %"compiler/source:Span" %t137)
  br label %bb33
bb33:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l1, !tbaa !23
  %t144 = load %"compiler/source:Span", ptr %l2
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t142, i32 %t143, %"compiler/source:Span" %t144, i32 1)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRaised(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/names:raisedName"
  %lp11 = alloca ptr
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca ptr
  %l27 = alloca { i64, ptr }
  %l35 = alloca i64
  %l37 = alloca i64
  %l42 = alloca %"compiler/names:raisedName"
  %l51 = alloca ptr
  %l53 = alloca ptr
  %l54 = alloca i64
  %l58 = alloca { i64, ptr }
  %l61 = alloca %"compiler/source:Span"
  %l62 = alloca i32
  %l66 = alloca { i64, ptr }
  %l70 = alloca %"compiler/ast:CaseDecl"
  %l73 = alloca ptr
  %l74 = alloca %"compiler/source:Span"
  %l75 = alloca i32
  %l76 = alloca i32
  %l79 = alloca { i64, ptr }
  %l99 = alloca ptr
  %l100 = alloca ptr
  %l102 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %t164 = alloca i64
  %t185 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l12
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/names:Resolver", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  %t10 = getelementptr %"compiler/load:Loader", ptr %t8, i32 0, i32 10
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t10, i64 %t11)
  store ptr %t14, ptr %l18
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l18, !tbaa !29
  %t17 = getelementptr %"compiler/load:Module", ptr %t15, i32 0, i32 8
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 0
  store i64 %t22, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l6, !tbaa !24
  %t28 = icmp slt i64 %t24, %t25
  %t30 = xor i1 %t28, true
  br i1 %t30, label %bb4, label %bb5
bb4:
  br label %bb9
bb5:
  br label %bb6
bb6:
  %t32 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t32, ptr %l27, !tbaa !27
  %t33 = load i64, ptr %l5, !tbaa !24
  %t35 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t36 = load ptr, ptr %t35, !tbaa !27
  %t37 = getelementptr ptr, ptr %t36, i64 %t33
  %t38 = load ptr, ptr %t37, !tbaa !39
  %t40 = load ptr, ptr %l3, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t40, ptr %t38)
  br label %bb7
bb7:
  br label %bb8
bb8:
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l5, !tbaa !24
  br label %bb3
bb9:
  store ptr %a2, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s5
  %t50 = load i64, ptr %l9, !tbaa !24
  store i64 %t50, ptr %l35, !tbaa !24
  %t51 = load ptr, ptr %l8, !tbaa !29
  %t53 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eLen_H9e36587759e47da85a29e6c0abff1d1c(ptr %v1, ptr %t51)
  store i64 %t53, ptr %l37
  br label %bb11
bb11:
  %t54 = load i64, ptr %l35, !tbaa !24
  %t55 = load i64, ptr %l37, !tbaa !24
  %t56 = icmp slt i64 %t54, %t55
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s5)
  br label %bb39
bb13:
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l8, !tbaa !29
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = call %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %v1, ptr %v1, ptr %t60, i64 %t61)
  store %"compiler/names:raisedName" %t64, ptr %l42
  br label %bb15
bb15:
  %t65 = load %"compiler/names:raisedName", ptr %l42
  store %"compiler/names:raisedName" %t65, ptr %l10
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 0
  %t69 = load i32, ptr %t68, !tbaa !23
  %t70 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 1
  %t71 = load %"compiler/source:Span", ptr %t70
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddType(ptr %v0, ptr %v0, ptr %t66, i64 %t67, i32 %t69, %"compiler/source:Span" %t71, ptr null)
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/names:Resolver", ptr %t76, i32 0, i32 0
  %t79 = load ptr, ptr %t78, !tbaa !29
  %t81 = getelementptr %"compiler/load:Loader", ptr %t79, i32 0, i32 10
  %t82 = load i64, ptr %l1, !tbaa !24
  %t85 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t81, i64 %t82)
  store ptr %t85, ptr %l51
  br label %bb17
bb17:
  %t86 = load ptr, ptr %l51, !tbaa !29
  %t88 = getelementptr %"compiler/load:Module", ptr %t86, i32 0, i32 9
  store ptr %t88, ptr %l53, !tbaa !29
  %t89 = ptrtoint ptr %v0 to i64
  store i64 %t89, ptr %l54, !tbaa !24
  %t90 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t90, label %bb18, label %bb19
bb18:
  %t92 = call ptr @__olang_region_make(ptr %v0)
  %t93 = ptrtoint ptr %t92 to i64
  store i64 %t93, ptr %l54, !tbaa !24
  br label %bb19
bb19:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 0
  %t96 = load i32, ptr %t95, !tbaa !23
  %t99 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s5, ptr %t94, i32 %t96)
  store { i64, ptr } %t99, ptr %l58
  br label %bb20
bb20:
  %t100 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t101 = extractvalue { i64, ptr } %t100, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = load i64, ptr %l54
  %t104 = inttoptr i64 %t103 to ptr
  %t105 = call ptr @__olang_scope_alloc(ptr %t104, i64 %t102)
  call void @olang_textcopy(ptr %t105, ptr %t101, i64 %t102)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t109 = load i64, ptr %l54
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = extractvalue { i64, ptr } %t107, 0
  %t112 = extractvalue { i64, ptr } %t107, 1
  %t113 = mul i64 %t111, 1
  %t114 = call ptr @__olang_scope_alloc(ptr %t110, i64 %t113)
  call void @llvm.memcpy.p0.p0.i64(ptr %t114, ptr %t112, i64 %t113, i1 false)
  %t115 = insertvalue { i64, ptr } undef, i64 %t111, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  %t117 = load ptr, ptr %l53, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v0, ptr %t117, { i64, ptr } %t116)
  br label %bb21
bb21:
  %t119 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 1
  %t120 = load %"compiler/source:Span", ptr %t119
  store %"compiler/source:Span" %t120, ptr %l61
  %t121 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 0
  %t122 = load i32, ptr %t121, !tbaa !23
  store i32 %t122, ptr %l62, !tbaa !23
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load i64, ptr %l1, !tbaa !24
  %t125 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 5
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  %t130 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eraisedFields(ptr %v0, ptr %v1, ptr %v0, ptr %t123, i64 %t124, { i64, ptr } %t126)
  store { i64, ptr } %t130, ptr %l66
  br label %bb22
bb22:
  %t131 = icmp sge i64 0, 0
  br i1 %t131, label %bb23, label %bb24
bb23:
  %t133 = icmp sle i64 0, 1152921504606846975
  br i1 %t133, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a58fd8af443a076b_ecb4599a293195d7)
  unreachable
bb25:
  %t135 = mul i64 0, 8
  %t136 = insertvalue { i64, ptr } undef, i64 0, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t138 = load %"compiler/source:Span", ptr %l61
  %t139 = load i32, ptr %l62, !tbaa !23
  %t140 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t142 = call %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v0, ptr %v0, ptr %v0, ptr %v0, %"compiler/source:Span" %t138, i32 %t139, { i64, ptr } %t140, i1 false, ptr null, { i64, ptr } %t137)
  store %"compiler/ast:CaseDecl" %t142, ptr %l70
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_a58fd8af443a076b_ecb4599a293195d7)
  unreachable
bb27:
  %t143 = load %"compiler/ast:CaseDecl", ptr %l70
  %t144 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 64, i64 8)
  store %"compiler/ast:CaseDecl" %t143, ptr %t144
  %t146 = insertvalue [1 x ptr] undef, ptr %t144, 0
  %t147 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 8, i64 8)
  store ptr %t147, ptr %lp11
  %t149 = load ptr, ptr %lp11
  store [1 x ptr] %t146, ptr %t149
  %t150 = load ptr, ptr %l3, !tbaa !29
  store ptr %t150, ptr %l73, !tbaa !29
  %t151 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 1
  %t152 = load %"compiler/source:Span", ptr %t151
  store %"compiler/source:Span" %t152, ptr %l74
  %t153 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 0
  %t154 = load i32, ptr %t153, !tbaa !23
  store i32 %t154, ptr %l75, !tbaa !23
  %t155 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 0
  %t156 = load i32, ptr %t155, !tbaa !23
  store i32 %t156, ptr %l76, !tbaa !23
  %t157 = icmp sge i64 1, 0
  br i1 %t157, label %bb28, label %bb29
bb28:
  %t159 = icmp sle i64 1, 2305843009213693951
  br i1 %t159, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_5e3ab2edd356b256_cd5b13c795510922)
  unreachable
bb30:
  %t161 = mul i64 1, 4
  %t162 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t161)
  %t163 = load i32, ptr %l76, !tbaa !23
  store i64 0, ptr %t164
  br label %fill.165
fill.165:
  %t168 = load i64, ptr %t164
  %t169 = icmp slt i64 %t168, 1
  br i1 %t169, label %fillb.166, label %filld.167
fillb.166:
  %t170 = getelementptr i32, ptr %t162, i64 %t168
  store i32 %t163, ptr %t170
  %t171 = add i64 %t168, 1
  store i64 %t171, ptr %t164
  br label %fill.165
filld.167:
  %t172 = insertvalue { i64, ptr } undef, i64 1, 0
  %t173 = insertvalue { i64, ptr } %t172, ptr %t162, 1
  store { i64, ptr } %t173, ptr %l79, !tbaa !27
  %t174 = icmp sge i64 0, 0
  br i1 %t174, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_5e3ab2edd356b256_cd5b13c795510922)
  unreachable
bb32:
  %t176 = icmp sle i64 0, 1152921504606846975
  br i1 %t176, label %bb34, label %bb35
bb33:
  call void @__olang_check_failed(ptr @olang_loc_5e3ab2edd356b256_cd5b13c795510922)
  unreachable
bb34:
  %t178 = mul i64 0, 8
  %t179 = insertvalue { i64, ptr } undef, i64 0, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t181 = load ptr, ptr %lp11
  %t183 = insertvalue { i64, ptr } undef, i64 1, 0
  %t184 = insertvalue { i64, ptr } %t183, ptr %t181, 1
  store { i64, [8 x i64] } zeroinitializer, ptr %t185
  %t186 = getelementptr { i64, [8 x i64] }, ptr %t185, i32 0, i32 0
  store i64 5, ptr %t186
  %t187 = load %"compiler/source:Span", ptr %l74
  %t188 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } undef, %"compiler/source:Span" %t187, 0
  %t189 = load i32, ptr %l75, !tbaa !23
  %t190 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t188, i32 %t189, 1
  %t191 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t192 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t190, { i64, ptr } %t191, 2
  %t194 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t192, { i64, ptr } %t180, 3
  %t196 = insertvalue { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t194, { i64, ptr } %t184, 4
  %t197 = getelementptr { i64, [8 x i64] }, ptr %t185, i32 0, i32 1
  store { %"compiler/source:Span", i32, { i64, ptr }, { i64, ptr }, { i64, ptr } } %t196, ptr %t197
  %t198 = load { i64, [8 x i64] }, ptr %t185
  %t200 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 72, i64 8)
  store { i64, [8 x i64] } %t198, ptr %t200
  %t201 = load ptr, ptr %l73, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t201, ptr %t200)
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_5e3ab2edd356b256_cd5b13c795510922)
  unreachable
bb36:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l1, !tbaa !24
  %t205 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 1
  %t206 = load %"compiler/source:Span", ptr %t205
  %t207 = getelementptr %"compiler/names:raisedName", ptr %l10, i32 0, i32 0
  %t208 = load i32, ptr %t207, !tbaa !23
  %t209 = load ptr, ptr %lp11
  %t211 = insertvalue { i64, ptr } undef, i64 1, 0
  %t212 = insertvalue { i64, ptr } %t211, ptr %t209, 1
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epayloadEnum(ptr %v0, ptr %v0, ptr %t203, i64 %t204, %"compiler/source:Span" %t206, i32 %t208, { i64, ptr } %t212)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb38
bb38:
  %t218 = load i64, ptr %l9, !tbaa !24
  %t220 = add i64 %t218, 1
  store i64 %t220, ptr %l9, !tbaa !24
  br label %bb10
bb39:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/names:Resolver", ptr %t222, i32 0, i32 0
  %t225 = load ptr, ptr %t224, !tbaa !29
  %t227 = getelementptr %"compiler/load:Loader", ptr %t225, i32 0, i32 10
  %t228 = load i64, ptr %l1, !tbaa !24
  %t231 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t227, i64 %t228)
  store ptr %t231, ptr %l99
  br label %bb40
bb40:
  %t232 = load ptr, ptr %l99, !tbaa !29
  store ptr %t232, ptr %l100, !tbaa !29
  %t233 = load ptr, ptr %l3, !tbaa !29
  %t235 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eToArray_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v0, ptr %t233)
  store { i64, ptr } %t235, ptr %l102
  br label %bb41
bb41:
  %t236 = load { i64, ptr }, ptr %l102, !tbaa !27
  %t237 = load ptr, ptr %l100, !tbaa !29
  %t238 = getelementptr %"compiler/load:Module", ptr %t237, i32 0, i32 8
  store { i64, ptr } %t236, ptr %t238, !tbaa !27
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/names:local"
  %l8 = alloca i64
  %l14 = alloca i64
  %l18 = alloca ptr
  %l21 = alloca i64
  %l23 = alloca %"compiler/names:local"
  %l25 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %l34 = alloca %"compiler/names:local"
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 7
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclare(ptr %v0, ptr %t7, i32 %a1, %"compiler/source:Span" %a2, i1 false)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/names:Resolver", ptr %t13, i32 0, i32 7
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l14
  br label %bb3
bb3:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t19 = load i64, ptr %l14, !tbaa !24
  %t21 = icmp sgt i64 %t19, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/names:Resolver", ptr %t23, i32 0, i32 7
  store ptr %t25, ptr %l18, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/names:Resolver", ptr %t26, i32 0, i32 7
  %t30 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l21
  br label %bb6
bb5:
  br label %bb11
bb6:
  %t31 = load i64, ptr %l21, !tbaa !24
  %t32 = sub i64 %t31, 1
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t35 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t33, i64 %t32)
  store %"compiler/names:local" %t35, ptr %l23
  br label %bb7
bb7:
  %t36 = load %"compiler/names:local", ptr %l23
  store %"compiler/names:local" %t36, ptr %l5
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 7
  store ptr %t39, ptr %l25, !tbaa !29
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/names:Resolver", ptr %t40, i32 0, i32 7
  %t44 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t42)
  store i64 %t44, ptr %l28
  br label %bb8
bb8:
  %t45 = load i64, ptr %l28, !tbaa !24
  %t46 = sub i64 %t45, 1
  store i64 %t46, ptr %l29, !tbaa !24
  %t47 = getelementptr %"compiler/names:local", ptr %l5, i32 0, i32 0
  %t48 = load i32, ptr %t47, !tbaa !23
  %t49 = getelementptr %"compiler/names:local", ptr %l5, i32 0, i32 1
  %t50 = load %"compiler/source:Span", ptr %t49
  %t51 = getelementptr %"compiler/names:local", ptr %l5, i32 0, i32 2
  %t52 = load i32, ptr %t51, !range !{i32 0, i32 9}
  %t58 = call %"compiler/names:local" @compiler_2fnames_3alocal_2ector(ptr %s1, i32 %t48, %"compiler/source:Span" %t50, i32 %t52, i1 true, i1 %a3, i1 false)
  store %"compiler/names:local" %t58, ptr %l34
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l25, !tbaa !29
  %t60 = load i64, ptr %l29, !tbaa !24
  %t61 = load %"compiler/names:local", ptr %l34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eSetAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t59, i64 %t60, %"compiler/names:local" %t61)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s1)
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edropAll(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l23 = alloca ptr
  %l36 = alloca ptr
  %l37 = alloca i1
  %l45 = alloca ptr
  %l51 = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 17
  store ptr %t3, ptr %l5, !tbaa !29
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/ast:If", ptr %t4, i32 0, i32 1
  %t7 = load ptr, ptr %t6, !tbaa !29
  %t9 = icmp eq ptr %t7, null
  br i1 %t9, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_aef4624c79a8a28b_a45312851bdbb01f)
  unreachable
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/ast:If", ptr %t11, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Branch", ptr %t14, i32 0, i32 0
  %t18 = load %"compiler/source:Span", ptr %t17
  %t19 = load ptr, ptr %l5, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t19, %"compiler/source:Span" %t18)
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/ast:If", ptr %t21, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t26 = icmp eq ptr %t24, null
  br i1 %t26, label %bb5, label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_87cbb522e5e56b9c_2473c9b69de9380)
  unreachable
bb6:
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t30 = getelementptr %"compiler/ast:If", ptr %t28, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t34 = getelementptr %"compiler/ast:Branch", ptr %t31, i32 0, i32 2
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/names:Resolver", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  %t44 = getelementptr %"compiler/load:Loader", ptr %t42, i32 0, i32 4
  %t45 = load ptr, ptr %t44, !tbaa !29
  store ptr %t45, ptr %l23, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr %"compiler/ast:If", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = icmp eq ptr %t49, null
  br i1 %t51, label %bb10, label %bb11
bb9:
  br label %bb14
bb10:
  call void @__olang_check_failed(ptr @olang_loc_87cbb522e5e56b9c_2473c9b69de9380)
  unreachable
bb11:
  br label %bb12
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  %t55 = getelementptr %"compiler/ast:If", ptr %t53, i32 0, i32 1
  %t56 = load ptr, ptr %t55, !tbaa !29
  %t59 = getelementptr %"compiler/ast:Branch", ptr %t56, i32 0, i32 2
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCutOff(ptr %v0, ptr %t61, i64 %t60)
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/ast:If", ptr %t63, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t70 = load ptr, ptr %l1, !tbaa !29
  %t72 = getelementptr %"compiler/ast:If", ptr %t70, i32 0, i32 2
  %t73 = load ptr, ptr %t72, !tbaa !29
  store ptr %t73, ptr %l2, !tbaa !29
  %t75 = load ptr, ptr %l2, !tbaa !29
  store ptr %t75, ptr %l36, !tbaa !29
  store i1 false, ptr %l37, !tbaa !21
  %t76 = load ptr, ptr %l36, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t79 = load ptr, ptr %l36, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 22}
  %t82 = icmp eq i64 %t80, 5
  store i1 %t82, ptr %l37, !tbaa !21
  br label %bb19
bb19:
  %t83 = load i1, ptr %l37, !tbaa !21
  br i1 %t83, label %bb20, label %bb21
bb20:
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t86 = getelementptr { i64, [4 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", ptr }, ptr %t86, i32 0, i32 1
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l3, !tbaa !29
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edropAll(ptr %v0, ptr %v1, ptr %t90, ptr %t91)
  br label %bb23
bb23:
  br label %bb34
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/names:Resolver", ptr %t94, i32 0, i32 17
  store ptr %t96, ptr %l45, !tbaa !29
  %t97 = load ptr, ptr %l1, !tbaa !29
  %t99 = getelementptr %"compiler/ast:If", ptr %t97, i32 0, i32 2
  %t100 = load ptr, ptr %t99, !tbaa !29
  %t102 = icmp eq ptr %t100, null
  br i1 %t102, label %bb28, label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_12490b43c47bea91_b34a6c7dd92a3b95)
  unreachable
bb29:
  br label %bb30
bb30:
  %t104 = load ptr, ptr %l1, !tbaa !29
  %t106 = getelementptr %"compiler/ast:If", ptr %t104, i32 0, i32 2
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t109 = call %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v1, ptr %t107)
  store %"compiler/source:Span" %t109, ptr %l51
  br label %bb31
bb31:
  %t110 = load ptr, ptr %l45, !tbaa !29
  %t111 = load %"compiler/source:Span", ptr %l51
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t110, %"compiler/source:Span" %t111)
  br label %bb32
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_f9018996705a58e9_83925e810340c2fd)
  unreachable
bb34:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eelemsPattern(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca i1
  %l22 = alloca ptr
  %l23 = alloca i1
  %l30 = alloca i1
  %l48 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l10, !tbaa !29
  store i1 false, ptr %l11, !tbaa !21
  %t2 = load ptr, ptr %l10, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l10, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 17
  store i1 %t8, ptr %l11, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l11, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l4, !tbaa !29
  br label %bb5
bb4:
  br label %bb10
bb5:
  %t16 = load ptr, ptr %l4, !tbaa !29
  %t18 = icmp eq ptr %t16, null
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t22, ptr %t23)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  br label %bb28
bb10:
  %t27 = load ptr, ptr %l1, !tbaa !29
  store ptr %t27, ptr %l22, !tbaa !29
  store i1 false, ptr %l23, !tbaa !21
  %t28 = load ptr, ptr %l22, !tbaa !29
  %t29 = icmp ne ptr %t28, null
  br i1 %t29, label %bb11, label %bb12
bb11:
  %t31 = load ptr, ptr %l22, !tbaa !29
  %t32 = load i64, ptr %t31, !range !{i64 0, i64 30}
  %t34 = icmp eq i64 %t32, 15
  store i1 %t34, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb13, label %bb14
bb13:
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr { i64, [4 x i64] }, ptr %t36, i32 0, i32 1
  %t39 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t38, i32 0, i32 1
  %t40 = load ptr, ptr %t39
  store ptr %t40, ptr %l5, !tbaa !29
  br label %bb15
bb14:
  br label %bb22
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t46 = call i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enamesType(ptr %v0, ptr %v1, ptr %t42, ptr %t43)
  store i1 %t46, ptr %l30
  br label %bb16
bb16:
  %t47 = load i1, ptr %l30, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t50, ptr %t51)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %ret
bb20:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  br label %bb21
bb21:
  br label %bb28
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t60, ptr %t61)
  br label %bb26
bb26:
  br label %ret
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f2d30a85840d12d4_ee21d33ae1ca6100)
  unreachable
bb28:
  store { i64, ptr } %a2, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t69 = extractvalue { i64, ptr } %t67, 0
  store i64 %t69, ptr %l8, !tbaa !24
  br label %bb29
bb29:
  %t71 = load i64, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l8, !tbaa !24
  %t75 = icmp slt i64 %t71, %t72
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t79 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t79, ptr %l48, !tbaa !27
  %t80 = load i64, ptr %l7, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr ptr, ptr %t83, i64 %t80
  %t85 = load ptr, ptr %t84, !tbaa !39
  %t87 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epattern(ptr %v0, ptr %v2, ptr %v3, ptr %t87, ptr %t85, ptr %a3)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t93 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l7, !tbaa !24
  br label %bb29
bb35:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforName(ptr %v0, ptr %a0, i32 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i1
  %l18 = alloca %"compiler/source:Span"
  %l19 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i32
  %l27 = alloca i1
  %l31 = alloca %"compiler/names:local"
  %l34 = alloca i1
  %l40 = alloca ptr
  %l44 = alloca i1
  %l47 = alloca ptr
  %l52 = alloca { i64, [3 x i64] }
  %l55 = alloca { i64, ptr }
  %l56 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l60 = alloca %"compiler/diagmsg:Msg"
  %l61 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  %t3 = icmp eq i32 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l8, !tbaa !21
  br label %bb5
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i32, ptr %l2, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t5, i32 %t6)
  store { i64, ptr } %t9, ptr %l11
  br label %bb3
bb3:
  %t10 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t10, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) })
  store i1 %t11, ptr %l12
  br label %bb4
bb4:
  %t12 = load i1, ptr %l12, !tbaa !21
  store i1 %t12, ptr %l8, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/names:Resolver", ptr %t15, i32 0, i32 6
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = load i32, ptr %l2, !tbaa !23
  %t25 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t14, i64 %t18, i32 %a1, i32 %t20)
  store %"compiler/source:Span" %t25, ptr %l18
  br label %bb9
bb9:
  %t26 = load %"compiler/source:Span", ptr %l18
  store %"compiler/source:Span" %t26, ptr %l3
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/names:Resolver", ptr %t27, i32 0, i32 8
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t29, i32 %t30)
  %t34 = extractvalue { i32, i64 } %t33, 1
  %t35 = extractvalue { i32, i64 } %t33, 0
  store i32 %t35, ptr %l24
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb11, label %ok.37, !prof !99
ok.37:
  store i64 %t34, ptr %l23
  br label %bb10
bb10:
  %t38 = load i64, ptr %l23, !tbaa !24
  store i64 %t38, ptr %l19, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l19, !tbaa !24
  br label %bb13
bb13:
  %t39 = load i64, ptr %l19, !tbaa !24
  store i64 %t39, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l4, !tbaa !24
  %t42 = icmp sge i64 %t40, 0
  br i1 %t42, label %bb14, label %bb15
bb14:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/names:Resolver", ptr %t44, i32 0, i32 7
  %t47 = load i64, ptr %l4, !tbaa !24
  %t50 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t46, i64 %t47)
  store %"compiler/names:local" %t50, ptr %l31
  br label %bb16
bb15:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb17
bb16:
  %t51 = getelementptr %"compiler/names:local", ptr %l31, i32 0, i32 2
  %t52 = load i32, ptr %t51, !range !{i32 0, i32 9}
  %t54 = trunc i64 1 to i32
  %t55 = icmp eq i32 %t52, %t54
  store i1 %t55, ptr %l27, !tbaa !21
  br label %bb17
bb17:
  %t57 = load i1, ptr %l27, !tbaa !21
  br i1 %t57, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb22
bb19:
  %t58 = load i32, ptr %l2, !tbaa !23
  store i32 %t58, ptr %l5, !tbaa !23
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/names:Resolver", ptr %t60, i32 0, i32 1
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/names:Resolver", ptr %t63, i32 0, i32 6
  %t66 = load i64, ptr %t65, !tbaa !24
  %t69 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t62, i64 %t66)
  store ptr %t69, ptr %l40
  br label %bb20
bb20:
  %t70 = load ptr, ptr %l40, !tbaa !29
  %t72 = getelementptr %"compiler/names:Table", ptr %t70, i32 0, i32 1
  %t73 = load i32, ptr %l5, !tbaa !23
  %t76 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t72, i32 %t73)
  store i1 %t76, ptr %l44
  br label %bb21
bb21:
  %t77 = load i1, ptr %l44, !tbaa !21
  store i1 %t77, ptr %l34, !tbaa !21
  br label %bb22
bb22:
  %t78 = load i1, ptr %l34, !tbaa !21
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/names:Resolver", ptr %t79, i32 0, i32 0
  %t82 = load ptr, ptr %t81, !tbaa !29
  %t84 = getelementptr %"compiler/load:Loader", ptr %t82, i32 0, i32 4
  %t85 = load ptr, ptr %t84, !tbaa !29
  store ptr %t85, ptr %l47, !tbaa !29
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/names:Resolver", ptr %t87, i32 0, i32 6
  %t90 = load i64, ptr %t89, !tbaa !24
  %t91 = load %"compiler/source:Span", ptr %l3
  %t95 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t86, i64 %t90, %"compiler/source:Span" %t91)
  store { i64, [3 x i64] } %t95, ptr %l52
  br label %bb25
bb24:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i32, ptr %l2, !tbaa !23
  %t98 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %t96, i32 %t97, %"compiler/source:Span" %t98, i1 true)
  br label %bb31
bb25:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i32, ptr %l2, !tbaa !23
  %t106 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t102, i32 %t103)
  store { i64, ptr } %t106, ptr %l55
  br label %bb26
bb26:
  %t107 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  %t109 = extractvalue { i64, ptr } %t107, 1
  %t110 = mul i64 %t108, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t110)
  call void @llvm.memcpy.p0.p0.i64(ptr %t111, ptr %t109, i64 %t110, i1 false)
  %t112 = insertvalue { i64, ptr } undef, i64 %t108, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l56, !tbaa !27
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = load i32, ptr %l2, !tbaa !23
  %t118 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t114, i32 %t115)
  store { i64, ptr } %t118, ptr %l59
  br label %bb27
bb27:
  %t119 = load { i64, ptr }, ptr %l56, !tbaa !27
  %t120 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t121 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInNameExists(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t119, { i64, ptr } %t120)
  store %"compiler/diagmsg:Msg" %t121, ptr %l60
  br label %bb28
bb28:
  %t122 = load ptr, ptr %l47, !tbaa !29
  %t123 = load { i64, [3 x i64] }, ptr %l52
  %t124 = load %"compiler/diagmsg:Msg", ptr %l60
  %t125 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t122, { i64, [3 x i64] } %t123, %"compiler/diagmsg:Msg" %t124)
  store i64 %t125, ptr %l61
  br label %bb29
bb29:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load i32, ptr %l2, !tbaa !23
  %t128 = load %"compiler/source:Span", ptr %l3
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t126, i32 %t127, %"compiler/source:Span" %t128, i32 1)
  br label %bb30
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2efunc(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l4
  br label %bb1
bb1:
  %t4 = load i64, ptr %l4, !tbaa !24
  store i64 %t4, ptr %l2, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esig(ptr %v0, ptr %v1, ptr %t5, ptr %t6, i1 true)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:Func", ptr %t10, i32 0, i32 3
  %t13 = load ptr, ptr %t12, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2econtract(ptr %v0, ptr %v1, ptr %t9, ptr %t13)
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l1, !tbaa !29
  %t19 = getelementptr %"compiler/ast:Func", ptr %t17, i32 0, i32 3
  %t20 = load ptr, ptr %t19, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epushSig(ptr %v0, ptr %v1, ptr %t16, ptr %t20)
  br label %bb4
bb4:
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/ast:Func", ptr %t23, i32 0, i32 4
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb5, label %bb6
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/ast:Func", ptr %t33, i32 0, i32 4
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t32, { i64, ptr } %t36)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t39 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopSig(ptr %v0, ptr %t39)
  br label %bb9
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t41, i64 %t42)
  br label %bb10
bb10:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eimportedType(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/load:Import"
  %l5 = alloca i32
  %l11 = alloca ptr
  %l14 = alloca i64
  %l16 = alloca i64
  %l21 = alloca %"compiler/load:Import"
  %l24 = alloca i1
  %l29 = alloca ptr
  %l33 = alloca i1
  %l34 = alloca i1
  %l37 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l40 = alloca i1
  %l41 = alloca i1
  %l46 = alloca ptr
  %s2 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/names:Resolver", ptr %t7, i32 0, i32 6
  %t10 = load i64, ptr %t9, !tbaa !24
  %t13 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %t10)
  store ptr %t13, ptr %l11
  br label %bb1
bb1:
  %t14 = load ptr, ptr %l11, !tbaa !29
  %t16 = getelementptr %"compiler/load:Module", ptr %t14, i32 0, i32 11
  store ptr %t16, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  store %olang.scope zeroinitializer, ptr %s2
  %t18 = load i64, ptr %l3, !tbaa !24
  store i64 %t18, ptr %l14, !tbaa !24
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l16
  br label %bb3
bb3:
  %t22 = load i64, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l16, !tbaa !24
  %t24 = icmp slt i64 %t22, %t23
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb5:
  br label %bb6
bb6:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load i64, ptr %l3, !tbaa !24
  %t32 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store %"compiler/load:Import" %t32, ptr %l21
  br label %bb7
bb7:
  %t33 = load %"compiler/load:Import", ptr %l21
  store %"compiler/load:Import" %t33, ptr %l4
  %t34 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 5
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp sge i64 %t35, 0
  br i1 %t37, label %bb8, label %bb9
bb8:
  %t39 = load i32, ptr %l1, !tbaa !23
  store i32 %t39, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/names:Resolver", ptr %t41, i32 0, i32 1
  %t44 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 5
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t43, i64 %t45)
  store ptr %t48, ptr %l29
  br label %bb10
bb9:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb12
bb10:
  %t49 = load ptr, ptr %l29, !tbaa !29
  %t51 = getelementptr %"compiler/names:Table", ptr %t49, i32 0, i32 2
  %t52 = load i32, ptr %l5, !tbaa !23
  %t55 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l33
  br label %bb11
bb11:
  %t56 = load i1, ptr %l33, !tbaa !21
  store i1 %t56, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l24, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l1, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s2, ptr %t58, i32 %t59)
  store { i64, ptr } %t62, ptr %l37
  br label %bb15
bb14:
  store i1 false, ptr %l34, !tbaa !21
  br label %bb21
bb15:
  %t63 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t63, ptr %l38, !tbaa !27
  %t64 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i8, ptr %t65, i64 0
  %t67 = load i8, ptr %t66, !tbaa !32
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %t67)
  store i1 %t69, ptr %l40
  br label %bb16
bb16:
  %t70 = load i1, ptr %l40, !tbaa !21
  br i1 %t70, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/names:Resolver", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/load:Loader", ptr %t74, i32 0, i32 10
  %t77 = getelementptr %"compiler/load:Import", ptr %l4, i32 0, i32 5
  %t78 = load i64, ptr %t77, !tbaa !24
  %t81 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t76, i64 %t78)
  store ptr %t81, ptr %l46
  br label %bb19
bb19:
  %t82 = load ptr, ptr %l46, !tbaa !29
  %t84 = getelementptr %"compiler/load:Module", ptr %t82, i32 0, i32 30
  %t85 = load i1, ptr %t84, !tbaa !21
  store i1 %t85, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t87 = load i1, ptr %l41, !tbaa !21
  store i1 %t87, ptr %l34, !tbaa !21
  br label %bb21
bb21:
  %t88 = load i1, ptr %l34, !tbaa !21
  br i1 %t88, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s2)
  store i1 true, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s2)
  br label %bb25
bb25:
  %t90 = load i64, ptr %l3, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l3, !tbaa !24
  br label %bb2
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduceVar(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l13 = alloca i1
  %l17 = alloca %"compiler/names:local"
  %l22 = alloca i1
  %l27 = alloca %"compiler/names:Ref"
  %s1 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 8
  %t4 = load i32, ptr %l2, !tbaa !23
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l9
  br label %bb1
bb1:
  %t12 = load i64, ptr %l9, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l5, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/names:Resolver", ptr %t18, i32 0, i32 7
  %t21 = load i64, ptr %l3, !tbaa !24
  %t24 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t20, i64 %t21)
  store %"compiler/names:local" %t24, ptr %l17
  br label %bb7
bb6:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  %t25 = getelementptr %"compiler/names:local", ptr %l17, i32 0, i32 2
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 9}
  %t28 = trunc i64 8 to i32
  %t29 = icmp eq i32 %t26, %t28
  store i1 %t29, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t31 = load i1, ptr %l13, !tbaa !21
  %t34 = xor i1 %t31, true
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 6
  %t40 = load i64, ptr %t39, !tbaa !24
  %t41 = load i32, ptr %l2, !tbaa !23
  %t45 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeIn(ptr %v0, ptr %t36, i64 %t40, i32 %t41)
  store %"compiler/names:Ref" %t45, ptr %l27
  br label %bb11
bb10:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb12
bb11:
  %t46 = getelementptr %"compiler/names:Ref", ptr %l27, i32 0, i32 0
  %t47 = load i32, ptr %t46, !range !{i32 0, i32 9}
  %t49 = trunc i64 0 to i32
  %t50 = icmp eq i32 %t47, %t49
  store i1 %t50, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l22, !tbaa !21
  br i1 %t52, label %bb13, label %bb14
bb13:
  store %olang.scope zeroinitializer, ptr %s1
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduce(ptr %v0, ptr %s1, ptr %t53, %"compiler/source:Span" %a1, i32 %t55, ptr null)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s1)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca %"compiler/names:Ref"
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l21 = alloca %"compiler/names:local"
  %l26 = alloca %"compiler/names:Ref"
  %l31 = alloca ptr
  %l32 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i32
  %l43 = alloca %"compiler/names:Entry"
  %l48 = alloca %"compiler/names:Ref"
  %l49 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l61 = alloca %"compiler/names:Ref"
  %l62 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i32
  %l74 = alloca ptr
  %l79 = alloca i64
  %l82 = alloca %"compiler/names:Ref"
  %l85 = alloca { i64, ptr }
  %l90 = alloca i1
  %l92 = alloca %"compiler/names:Ref"
  %l93 = alloca %"compiler/names:Ref"
  %l97 = alloca %"compiler/names:Ref"
  %l98 = alloca i32
  %l100 = alloca %"compiler/names:Ref"
  %l105 = alloca i64
  %l109 = alloca i64
  %l110 = alloca i32
  %l113 = alloca i32
  %l114 = alloca i64
  %l115 = alloca i64
  %l119 = alloca ptr
  %l123 = alloca i64
  %l124 = alloca i32
  %l125 = alloca %"compiler/names:Ref"
  %l127 = alloca i1
  %l129 = alloca %"compiler/names:Ref"
  %l131 = alloca %"compiler/names:Ref"
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %rv = alloca %"compiler/names:Ref"
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 8
  %t4 = load i32, ptr %l1, !tbaa !23
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t3, i32 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l15
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l14
  br label %bb1
bb1:
  %t12 = load i64, ptr %l14, !tbaa !24
  store i64 %t12, ptr %l10, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l10, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/names:Resolver", ptr %t18, i32 0, i32 7
  %t21 = load i64, ptr %l2, !tbaa !24
  %t24 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t20, i64 %t21)
  store %"compiler/names:local" %t24, ptr %l21
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t25 = getelementptr %"compiler/names:local", ptr %l21, i32 0, i32 2
  %t26 = load i32, ptr %t25, !range !{i32 0, i32 9}
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/names:Resolver", ptr %t27, i32 0, i32 6
  %t30 = load i64, ptr %t29, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  %t35 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s1, i32 %t26, i64 %t30, i64 %t31)
  store %"compiler/names:Ref" %t35, ptr %l26
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t36 = load %"compiler/names:Ref", ptr %l26
  store %"compiler/names:Ref" %t36, ptr %rv
  br label %ret
bb9:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 1
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/names:Resolver", ptr %t40, i32 0, i32 6
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t39, i64 %t43)
  store ptr %t46, ptr %l31
  br label %bb10
bb10:
  %t47 = load ptr, ptr %l31, !tbaa !29
  store ptr %t47, ptr %l3, !tbaa !29
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t50 = getelementptr %"compiler/names:Table", ptr %t48, i32 0, i32 1
  %t51 = load i32, ptr %l1, !tbaa !23
  %t54 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t50, i32 %t51)
  %t55 = extractvalue { i32, i64 } %t54, 1
  %t56 = extractvalue { i32, i64 } %t54, 0
  store i32 %t56, ptr %l37
  %t57 = icmp ne i32 %t56, 0
  br i1 %t57, label %bb12, label %ok.58, !prof !99
ok.58:
  store i64 %t55, ptr %l36
  br label %bb11
bb11:
  %t59 = load i64, ptr %l36, !tbaa !24
  store i64 %t59, ptr %l32, !tbaa !24
  br label %bb14
bb12:
  br label %bb13
bb13:
  store i64 -1, ptr %l32, !tbaa !24
  br label %bb14
bb14:
  %t60 = load i64, ptr %l32, !tbaa !24
  store i64 %t60, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t63 = icmp sge i64 %t61, 0
  br i1 %t63, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t65 = load ptr, ptr %l3, !tbaa !29
  %t67 = getelementptr %"compiler/names:Table", ptr %t65, i32 0, i32 0
  %t68 = load i64, ptr %l4, !tbaa !24
  %t71 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %s2, ptr %t67, i64 %t68)
  store %"compiler/names:Entry" %t71, ptr %l43
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t72 = getelementptr %"compiler/names:Entry", ptr %l43, i32 0, i32 2
  %t73 = load i32, ptr %t72, !range !{i32 0, i32 9}
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/names:Resolver", ptr %t74, i32 0, i32 6
  %t77 = load i64, ptr %t76, !tbaa !24
  %t78 = load i64, ptr %l4, !tbaa !24
  %t82 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s2, i32 %t73, i64 %t77, i64 %t78)
  store %"compiler/names:Ref" %t82, ptr %l48
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  %t83 = load %"compiler/names:Ref", ptr %l48
  store %"compiler/names:Ref" %t83, ptr %rv
  br label %ret
bb19:
  %t84 = load ptr, ptr %l3, !tbaa !29
  %t86 = getelementptr %"compiler/names:Table", ptr %t84, i32 0, i32 2
  %t87 = load i32, ptr %l1, !tbaa !23
  %t90 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t86, i32 %t87)
  %t91 = extractvalue { i32, i64 } %t90, 1
  %t92 = extractvalue { i32, i64 } %t90, 0
  store i32 %t92, ptr %l54
  %t93 = icmp ne i32 %t92, 0
  br i1 %t93, label %bb21, label %ok.94, !prof !99
ok.94:
  store i64 %t91, ptr %l53
  br label %bb20
bb20:
  %t95 = load i64, ptr %l53, !tbaa !24
  store i64 %t95, ptr %l49, !tbaa !24
  br label %bb23
bb21:
  br label %bb22
bb22:
  store i64 -1, ptr %l49, !tbaa !24
  br label %bb23
bb23:
  %t96 = load i64, ptr %l49, !tbaa !24
  store i64 %t96, ptr %l5, !tbaa !24
  %t97 = load i64, ptr %l5, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s3
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t103 = getelementptr %"compiler/names:Resolver", ptr %t101, i32 0, i32 6
  %t104 = load i64, ptr %t103, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t109 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s3, i32 4, i64 %t104, i64 %t105)
  store %"compiler/names:Ref" %t109, ptr %l61
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t110 = load %"compiler/names:Ref", ptr %l61
  store %"compiler/names:Ref" %t110, ptr %rv
  br label %ret
bb27:
  %t111 = load ptr, ptr %l3, !tbaa !29
  %t113 = getelementptr %"compiler/names:Table", ptr %t111, i32 0, i32 3
  %t114 = load i32, ptr %l1, !tbaa !23
  %t117 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t113, i32 %t114)
  %t118 = extractvalue { i32, i64 } %t117, 1
  %t119 = extractvalue { i32, i64 } %t117, 0
  store i32 %t119, ptr %l67
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb29, label %ok.121, !prof !99
ok.121:
  store i64 %t118, ptr %l66
  br label %bb28
bb28:
  %t122 = load i64, ptr %l66, !tbaa !24
  store i64 %t122, ptr %l62, !tbaa !24
  br label %bb31
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l62, !tbaa !24
  br label %bb31
bb31:
  %t123 = load i64, ptr %l62, !tbaa !24
  store i64 %t123, ptr %l6, !tbaa !24
  %t124 = load i64, ptr %l6, !tbaa !24
  %t126 = icmp sge i64 %t124, 0
  br i1 %t126, label %bb32, label %bb33
bb32:
  store %olang.scope zeroinitializer, ptr %s4
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/names:Resolver", ptr %t128, i32 0, i32 22
  %t131 = load i1, ptr %t130, !tbaa !21
  %t133 = xor i1 %t131, true
  br i1 %t133, label %bb34, label %bb35
bb33:
  br label %bb40
bb34:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t137 = getelementptr %"compiler/names:Resolver", ptr %t135, i32 0, i32 19
  store ptr %t137, ptr %l74, !tbaa !29
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/names:Resolver", ptr %t138, i32 0, i32 6
  %t141 = load i64, ptr %t140, !tbaa !24
  %t142 = load i32, ptr %l1, !tbaa !23
  %t146 = call i64 @compiler_2fnames_2ekey(i64 %t141, i32 %t142)
  store i64 %t146, ptr %l79
  br label %bb36
bb35:
  br label %bb38
bb36:
  %t147 = load ptr, ptr %l74, !tbaa !29
  %t148 = load i64, ptr %l79, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t147, i64 %t148, i1 true)
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t149 = load i64, ptr %l6, !tbaa !24
  %t152 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s4, i32 5, i64 %t149, i64 -1)
  store %"compiler/names:Ref" %t152, ptr %l82
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  %t153 = load %"compiler/names:Ref", ptr %l82
  store %"compiler/names:Ref" %t153, ptr %rv
  br label %ret
bb40:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l1, !tbaa !23
  %t158 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t154, i32 %t155)
  store { i64, ptr } %t158, ptr %l85
  br label %bb41
bb41:
  %t159 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t159, ptr %l7, !tbaa !27
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/names:Resolver", ptr %t160, i32 0, i32 0
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = getelementptr %"compiler/load:Loader", ptr %t163, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !29
  %t167 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t170 = call i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v0, ptr %t166, { i64, ptr } %t167)
  store i1 %t170, ptr %l90
  br label %bb42
bb42:
  %t171 = load i1, ptr %l90, !tbaa !21
  br i1 %t171, label %bb43, label %bb44
bb43:
  store %olang.scope zeroinitializer, ptr %s6
  %t173 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s6, i32 6, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t173, ptr %l92
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  %t174 = load %"compiler/names:Ref", ptr %l92
  store %"compiler/names:Ref" %t174, ptr %rv
  br label %ret
bb46:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/names:Resolver", ptr %t175, i32 0, i32 3
  %t178 = load i32, ptr %l1, !tbaa !23
  %t181 = call { i32, %"compiler/names:Ref" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H678d1b43e8b98a171ffdea8f28643d28(ptr %v0, ptr %t177, i32 %t178)
  %t182 = extractvalue { i32, %"compiler/names:Ref" } %t181, 1
  %t183 = extractvalue { i32, %"compiler/names:Ref" } %t181, 0
  store i32 %t183, ptr %l98
  %t184 = icmp ne i32 %t183, 0
  br i1 %t184, label %bb48, label %ok.185, !prof !99
ok.185:
  store %"compiler/names:Ref" %t182, ptr %l97
  br label %bb47
bb47:
  %t186 = load %"compiler/names:Ref", ptr %l97
  store %"compiler/names:Ref" %t186, ptr %l93
  br label %bb51
bb48:
  br label %bb49
bb49:
  %t188 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t188, ptr %l100
  br label %bb50
bb50:
  %t189 = load %"compiler/names:Ref", ptr %l100
  store %"compiler/names:Ref" %t189, ptr %l93
  br label %bb51
bb51:
  %t190 = load %"compiler/names:Ref", ptr %l93
  store %"compiler/names:Ref" %t190, ptr %l8
  %t191 = getelementptr %"compiler/names:Ref", ptr %l8, i32 0, i32 0
  %t192 = load i32, ptr %t191, !range !{i32 0, i32 9}
  %t194 = trunc i64 0 to i32
  %t195 = icmp eq i32 %t192, %t194
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb52, label %bb53
bb52:
  %t199 = load %"compiler/names:Ref", ptr %l8
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/names:Ref" %t199, ptr %rv
  br label %ret
bb53:
  br label %bb54
bb54:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/names:Resolver", ptr %t201, i32 0, i32 2
  %t204 = load i32, ptr %l1, !tbaa !23
  %t207 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t203, i32 %t204)
  %t208 = extractvalue { i32, i64 } %t207, 1
  %t209 = extractvalue { i32, i64 } %t207, 0
  store i32 %t209, ptr %l110
  %t210 = icmp ne i32 %t209, 0
  br i1 %t210, label %bb56, label %ok.211, !prof !99
ok.211:
  store i64 %t208, ptr %l109
  br label %bb55
bb55:
  %t212 = load i64, ptr %l109, !tbaa !24
  store i64 %t212, ptr %l105, !tbaa !24
  br label %bb58
bb56:
  br label %bb57
bb57:
  store i64 -1, ptr %l105, !tbaa !24
  br label %bb58
bb58:
  %t213 = load i64, ptr %l105, !tbaa !24
  store i64 %t213, ptr %l9, !tbaa !24
  %t214 = load i64, ptr %l9, !tbaa !24
  %t216 = icmp sge i64 %t214, 0
  br i1 %t216, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s8
  store i32 4, ptr %l113
  %t218 = load i64, ptr %l9, !tbaa !24
  store i64 %t218, ptr %l114, !tbaa !24
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t221 = getelementptr %"compiler/names:Resolver", ptr %t219, i32 0, i32 1
  %t222 = load i64, ptr %l9, !tbaa !24
  %t225 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t221, i64 %t222)
  store ptr %t225, ptr %l119
  br label %bb61
bb60:
  br label %bb67
bb61:
  %t226 = load ptr, ptr %l119, !tbaa !29
  %t228 = getelementptr %"compiler/names:Table", ptr %t226, i32 0, i32 2
  %t229 = load i32, ptr %l1, !tbaa !23
  %t232 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t228, i32 %t229)
  %t233 = extractvalue { i32, i64 } %t232, 1
  %t234 = extractvalue { i32, i64 } %t232, 0
  store i32 %t234, ptr %l124
  %t235 = icmp ne i32 %t234, 0
  br i1 %t235, label %bb63, label %ok.236, !prof !99
ok.236:
  store i64 %t233, ptr %l123
  br label %bb62
bb62:
  %t237 = load i64, ptr %l123, !tbaa !24
  store i64 %t237, ptr %l115, !tbaa !24
  br label %bb65
bb63:
  br label %bb64
bb64:
  store i64 -1, ptr %l115, !tbaa !24
  br label %bb65
bb65:
  %t238 = load i32, ptr %l113, !range !{i32 0, i32 9}
  %t239 = load i64, ptr %l114, !tbaa !24
  %t240 = load i64, ptr %l115, !tbaa !24
  %t241 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s8, i32 %t238, i64 %t239, i64 %t240)
  store %"compiler/names:Ref" %t241, ptr %l125
  br label %bb66
bb66:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s0)
  %t242 = load %"compiler/names:Ref", ptr %l125
  store %"compiler/names:Ref" %t242, ptr %rv
  br label %ret
bb67:
  %t243 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t245 = call i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %t243)
  store i1 %t245, ptr %l127
  br label %bb68
bb68:
  %t246 = load i1, ptr %l127, !tbaa !21
  br i1 %t246, label %bb69, label %bb70
bb69:
  store %olang.scope zeroinitializer, ptr %s9
  %t248 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s9, i32 7, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t248, ptr %l129
  br label %bb71
bb70:
  br label %bb72
bb71:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  %t249 = load %"compiler/names:Ref", ptr %l129
  store %"compiler/names:Ref" %t249, ptr %rv
  br label %ret
bb72:
  %t251 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s0, i32 0, i64 -1, i64 -1)
  store %"compiler/names:Ref" %t251, ptr %l131
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  %t252 = load %"compiler/names:Ref", ptr %l131
  store %"compiler/names:Ref" %t252, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Ref", ptr %rv
  ret %"compiler/names:Ref" %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ematchOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l18 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/ast:Match", ptr %t2, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/ast:Match", ptr %t9, i32 0, i32 3
  %t12 = load { i64, ptr }, ptr %t11, !tbaa !27
  store { i64, ptr } %t12, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t14 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t16 = extractvalue { i64, ptr } %t14, 0
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb2
bb2:
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l4, !tbaa !24
  %t22 = icmp slt i64 %t18, %t19
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l18, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr ptr, ptr %t30, i64 %t27
  %t32 = load ptr, ptr %t31, !tbaa !39
  %t34 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecaseOf(ptr %v0, ptr %v1, ptr %t34, ptr %t32)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb2
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emember(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, ptr %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/names:Ref"
  %l8 = alloca i64
  %l14 = alloca %"compiler/names:Ref"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/names:Ref"
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca { i64, ptr }
  %l30 = alloca %"compiler/source:Span"
  %l32 = alloca ptr
  %l38 = alloca ptr
  %l42 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  store ptr %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l2, !tbaa !29
  %t5 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasTarget(ptr %v0, ptr %v1, ptr %t1, ptr %t2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sge i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l4, !tbaa !24
  %t13 = load i32, ptr %l3, !tbaa !23
  %t17 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ememberOf(ptr %v0, ptr %t11, i64 %t12, i32 %t13)
  store %"compiler/names:Ref" %t17, ptr %l14
  br label %bb4
bb3:
  br label %bb14
bb4:
  %t18 = load %"compiler/names:Ref", ptr %l14
  store %"compiler/names:Ref" %t18, ptr %l5
  %t19 = getelementptr %"compiler/names:Ref", ptr %l5, i32 0, i32 0
  %t20 = load i32, ptr %t19, !range !{i32 0, i32 9}
  %t22 = trunc i64 0 to i32
  %t23 = icmp eq i32 %t20, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t27 = load ptr, ptr %l0, !tbaa !29
  store ptr %t27, ptr %l18, !tbaa !29
  %t28 = load i64, ptr %l4, !tbaa !24
  store i64 %t28, ptr %l19, !tbaa !24
  %t29 = load %"compiler/names:Ref", ptr %l5
  store %"compiler/names:Ref" %t29, ptr %l20
  %t30 = load i32, ptr %l3, !tbaa !23
  store i32 %t30, ptr %l21, !tbaa !23
  %t31 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t32 = load i32, ptr %t31, !tbaa !23
  store i32 %t32, ptr %l22, !tbaa !23
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l3, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s2, ptr %t33, i32 %t34)
  store { i64, ptr } %t37, ptr %l25
  br label %bb7
bb6:
  br label %bb13
bb7:
  %t38 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t38, 0
  %t41 = trunc i64 %t39 to i32
  %t42 = load i32, ptr %l22, !tbaa !23
  %t44 = sub i32 %t42, %t41
  %t45 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t46 = load i32, ptr %t45, !tbaa !23
  %t49 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s2, i32 %t44, i32 %t46)
  store %"compiler/source:Span" %t49, ptr %l30
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l18, !tbaa !29
  %t51 = load i64, ptr %l19, !tbaa !24
  %t52 = load %"compiler/names:Ref", ptr %l20
  %t53 = load i32, ptr %l21, !tbaa !23
  %t54 = load %"compiler/source:Span", ptr %l30
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enotPrivate(ptr %v0, ptr %t50, i64 %t51, %"compiler/names:Ref" %t52, i32 %t53, %"compiler/source:Span" %t54)
  br label %bb9
bb9:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/names:Resolver", ptr %t55, i32 0, i32 5
  store ptr %t57, ptr %l32, !tbaa !29
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/names:Resolver", ptr %t58, i32 0, i32 0
  %t61 = load ptr, ptr %t60, !tbaa !29
  %t63 = getelementptr %"compiler/load:Loader", ptr %t61, i32 0, i32 10
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/names:Resolver", ptr %t64, i32 0, i32 6
  %t67 = load i64, ptr %t66, !tbaa !24
  %t70 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t63, i64 %t67)
  store ptr %t70, ptr %l38
  br label %bb10
bb10:
  %t71 = load ptr, ptr %l38, !tbaa !29
  %t73 = getelementptr %"compiler/load:Module", ptr %t71, i32 0, i32 4
  %t74 = load i64, ptr %t73, !tbaa !24
  %t75 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t76 = load i32, ptr %t75, !tbaa !23
  %t79 = call i64 @compiler_2fnames_2ekey(i64 %t74, i32 %t76)
  store i64 %t79, ptr %l42
  br label %bb11
bb11:
  %t80 = load %"compiler/names:Ref", ptr %l5
  %t81 = load ptr, ptr %l32, !tbaa !29
  %t82 = load i64, ptr %l42, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eP_Hb17c37756f956998a4fa74bcac088344(ptr %v0, ptr %t81, i64 %t82, %"compiler/names:Ref" %t80)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s2)
  br label %bb13
bb13:
  br label %ret
bb14:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t84, ptr %t85)
  br label %bb15
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enamesType(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca %"compiler/names:Ref"
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca %"compiler/names:Ref"
  %l20 = alloca i1
  %l23 = alloca i1
  %l26 = alloca ptr
  %l27 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l42 = alloca %"compiler/names:Ref"
  %l46 = alloca i1
  %l53 = alloca ptr
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t16, i32 %t17)
  store %"compiler/names:Ref" %t20, ptr %l16
  br label %bb6
bb6:
  %t21 = getelementptr %"compiler/names:Ref", ptr %l16, i32 0, i32 0
  %t22 = load i32, ptr %t21, !range !{i32 0, i32 9}
  store i32 %t22, ptr %l3
  %t24 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t26 = trunc i64 4 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  %t29 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t31 = trunc i64 7 to i32
  %t32 = icmp eq i32 %t29, %t31
  store i1 %t32, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb12
bb11:
  %t35 = load i32, ptr %l3, !range !{i32 0, i32 9}
  %t37 = trunc i64 8 to i32
  %t38 = icmp eq i32 %t35, %t37
  store i1 %t38, ptr %l23, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l23, !tbaa !21
  store i1 %t40, ptr %rv
  br label %ret
bb13:
  %t41 = load ptr, ptr %l1, !tbaa !29
  store ptr %t41, ptr %l26, !tbaa !29
  store i1 false, ptr %l27, !tbaa !21
  %t42 = load ptr, ptr %l26, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l26, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 30}
  %t48 = icmp eq i64 %t46, 14
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t49 = load i1, ptr %l27, !tbaa !21
  br i1 %t49, label %bb16, label %bb17
bb16:
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t52, i32 0, i32 1
  %t54 = load ptr, ptr %t53
  store ptr %t54, ptr %l4, !tbaa !29
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t58, i32 0, i32 2
  %t60 = load i32, ptr %t59
  store i32 %t60, ptr %l5, !tbaa !23
  br label %bb18
bb17:
  br label %bb38
bb18:
  %t62 = load ptr, ptr %l4, !tbaa !29
  store ptr %t62, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 30}
  %t69 = icmp eq i64 %t67, 0
  store i1 %t69, ptr %l35, !tbaa !21
  br label %bb20
bb20:
  %t70 = load i1, ptr %l35, !tbaa !21
  br i1 %t70, label %bb21, label %bb22
bb21:
  %t71 = load ptr, ptr %l4, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32 }, ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l6, !tbaa !23
  br label %bb23
bb22:
  br label %bb33
bb23:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load i32, ptr %l6, !tbaa !23
  %t81 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t77, i32 %t78)
  store %"compiler/names:Ref" %t81, ptr %l42
  br label %bb24
bb24:
  %t82 = load %"compiler/names:Ref", ptr %l42
  store %"compiler/names:Ref" %t82, ptr %l7
  %t83 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 0
  %t84 = load i32, ptr %t83, !range !{i32 0, i32 9}
  %t86 = trunc i64 5 to i32
  %t87 = icmp eq i32 %t84, %t86
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb27
bb26:
  %t91 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t92 = load i64, ptr %t91, !tbaa !24
  %t94 = icmp slt i64 %t92, 0
  store i1 %t94, ptr %l46, !tbaa !21
  br label %bb27
bb27:
  %t96 = load i1, ptr %l46, !tbaa !21
  br i1 %t96, label %bb28, label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/names:Resolver", ptr %t98, i32 0, i32 1
  %t101 = getelementptr %"compiler/names:Ref", ptr %l7, i32 0, i32 1
  %t102 = load i64, ptr %t101, !tbaa !24
  %t105 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t100, i64 %t102)
  store ptr %t105, ptr %l53
  br label %bb31
bb31:
  %t106 = load ptr, ptr %l53, !tbaa !29
  %t108 = getelementptr %"compiler/names:Table", ptr %t106, i32 0, i32 2
  %t109 = load i32, ptr %l5, !tbaa !23
  %t112 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t108, i32 %t109)
  store i1 %t112, ptr %l57
  br label %bb32
bb32:
  %t113 = load i1, ptr %l57, !tbaa !21
  store i1 %t113, ptr %rv
  br label %ret
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  store i1 false, ptr %rv
  br label %ret
bb37:
  call void @__olang_check_failed(ptr @olang_loc_2c32128468766446_22803ecfd3e7a722)
  unreachable
bb38:
  br i1 true, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb42
bb41:
  store i1 false, ptr %rv
  br label %ret
bb42:
  call void @__olang_check_failed(ptr @olang_loc_f2fe3b3cf3edda27_d5ea4c4d6e43c823)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enearRaise(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, %"compiler/names:raisedName" %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/names:raisedName"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/names:Entry"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  %l15 = alloca %"compiler/names:raised"
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l30 = alloca i64
  %l32 = alloca i64
  %l37 = alloca %"compiler/names:Entry"
  %l41 = alloca i1
  %l45 = alloca i1
  %l51 = alloca i64
  %l54 = alloca i1
  %l57 = alloca %"compiler/names:raisedName"
  %l59 = alloca i1
  %l61 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i64
  %l69 = alloca i1
  %l72 = alloca i1
  %l75 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l78 = alloca i64
  %l88 = alloca i64
  %l90 = alloca i64
  %l95 = alloca %"compiler/names:raised"
  %l101 = alloca ptr
  %l105 = alloca { i64, [3 x i64] }
  %l108 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l111 = alloca { i64, ptr }
  %l113 = alloca %"compiler/diagmsg:Msg"
  %l114 = alloca i64
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/names:raisedName" %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/names:raisedName", ptr %l2, i32 0, i32 3
  %t2 = load i1, ptr %t1, !tbaa !21
  br i1 %t2, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/names:raisedName", ptr %l2, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t9 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t4, i32 %t6)
  store { i64, ptr } %t9, ptr %l19
  br label %bb4
bb4:
  %t10 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t10, ptr %l4, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t11 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t11, ptr %l21, !tbaa !27
  %t12 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t12, 0
  store i64 %t13, ptr %l22, !tbaa !24
  %t14 = load i64, ptr %l22, !tbaa !24
  %t15 = mul i64 %t14, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  %t17 = insertvalue { i64, ptr } undef, i64 %t14, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  store { i64, ptr } %t18, ptr %l23, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l22, !tbaa !24
  %t24 = mul i64 %t23, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t20, ptr %t22, i64 %t24, i1 false)
  %t25 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t25, ptr %l5, !tbaa !27
  store i64 2, ptr %l6, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/names:Resolver", ptr %t26, i32 0, i32 1
  %t29 = load i64, ptr %l1, !tbaa !24
  %t32 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t28, i64 %t29)
  store ptr %t32, ptr %l27
  br label %bb5
bb5:
  %t33 = load ptr, ptr %l27, !tbaa !29
  %t36 = getelementptr %"compiler/names:Table", ptr %t33, i32 0, i32 0
  store ptr %t36, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l9, !tbaa !24
  store i64 %t38, ptr %l30, !tbaa !24
  %t39 = load ptr, ptr %l8, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l32
  br label %bb7
bb7:
  %t42 = load i64, ptr %l30, !tbaa !24
  %t43 = load i64, ptr %l32, !tbaa !24
  %t44 = icmp slt i64 %t42, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb8, label %bb9
bb8:
  br label %bb44
bb9:
  br label %bb10
bb10:
  %t48 = load ptr, ptr %l8, !tbaa !29
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = call %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/names:Entry" %t52, ptr %l37
  br label %bb11
bb11:
  %t53 = load %"compiler/names:Entry", ptr %l37
  store %"compiler/names:Entry" %t53, ptr %l10
  %t54 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 2
  %t55 = load i32, ptr %t54, !range !{i32 0, i32 9}
  %t57 = trunc i64 4 to i32
  %t58 = icmp eq i32 %t55, %t57
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb14
bb13:
  %t62 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 4
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t65 = icmp eq ptr %t63, null
  %t67 = xor i1 %t65, true
  store i1 %t67, ptr %l41, !tbaa !21
  br label %bb14
bb14:
  %t69 = load i1, ptr %l41, !tbaa !21
  br i1 %t69, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb17
bb16:
  %t70 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 0
  %t71 = load i32, ptr %t70, !tbaa !23
  %t72 = getelementptr %"compiler/names:raisedName", ptr %l2, i32 0, i32 0
  %t73 = load i32, ptr %t72, !tbaa !23
  %t76 = icmp eq i32 %t71, %t73
  store i1 %t76, ptr %l45, !tbaa !21
  br label %bb17
bb17:
  %t78 = load i1, ptr %l45, !tbaa !21
  br i1 %t78, label %bb18, label %bb19
bb18:
  br label %bb43
bb19:
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l3, !tbaa !29
  %t80 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 0
  %t81 = load i32, ptr %t80, !tbaa !23
  %t84 = call i64 @compiler_2fnames_2eindexOfRaised(ptr %v2, ptr %t79, i32 %t81)
  store i64 %t84, ptr %l51
  br label %bb21
bb21:
  %t85 = load i64, ptr %l51, !tbaa !24
  store i64 %t85, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t88 = icmp sge i64 %t86, 0
  br i1 %t88, label %bb22, label %bb23
bb22:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t91 = load i64, ptr %l11, !tbaa !24
  %t94 = call %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %v2, ptr %v2, ptr %t90, i64 %t91)
  store %"compiler/names:raisedName" %t94, ptr %l57
  br label %bb24
bb23:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb26
bb24:
  %t95 = load %"compiler/names:raisedName", ptr %l2
  %t96 = load %"compiler/names:raisedName", ptr %l57
  %t98 = call i1 @compiler_2fnames_2eoutranks(ptr %v2, ptr %v1, %"compiler/names:raisedName" %t96, %"compiler/names:raisedName" %t95)
  store i1 %t98, ptr %l59
  br label %bb25
bb25:
  %t99 = load i1, ptr %l59, !tbaa !21
  %t100 = xor i1 %t99, true
  store i1 %t100, ptr %l54, !tbaa !21
  br label %bb26
bb26:
  %t102 = load i1, ptr %l54, !tbaa !21
  br i1 %t102, label %bb27, label %bb28
bb27:
  br label %bb43
bb28:
  br label %bb29
bb29:
  %t103 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t103, ptr %l61, !tbaa !27
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 0
  %t106 = load i32, ptr %t105, !tbaa !23
  %t109 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t104, i32 %t106)
  store { i64, ptr } %t109, ptr %l64
  br label %bb30
bb30:
  %t110 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l64, !tbaa !27
  %t112 = call i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v0, { i64, ptr } %t110, { i64, ptr } %t111)
  store i64 %t112, ptr %l65
  br label %bb31
bb31:
  %t113 = load i64, ptr %l65, !tbaa !24
  store i64 %t113, ptr %l12, !tbaa !24
  %t114 = load i64, ptr %l12, !tbaa !24
  %t115 = load i64, ptr %l6, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  br i1 %t118, label %bb32, label %bb33
bb32:
  %t120 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t121 = load i64, ptr %l12, !tbaa !24
  %t124 = call i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %t120, i64 %t121)
  store i1 %t124, ptr %l72
  br label %bb34
bb33:
  store i1 false, ptr %l69, !tbaa !21
  br label %bb35
bb34:
  %t125 = load i1, ptr %l72, !tbaa !21
  store i1 %t125, ptr %l69, !tbaa !21
  br label %bb35
bb35:
  %t126 = load i1, ptr %l69, !tbaa !21
  br i1 %t126, label %bb36, label %bb37
bb36:
  store %olang.scope zeroinitializer, ptr %s6
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/names:Entry", ptr %l10, i32 0, i32 0
  %t129 = load i32, ptr %t128, !tbaa !23
  %t132 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %s6, ptr %t127, i32 %t129)
  store { i64, ptr } %t132, ptr %l75
  br label %bb38
bb37:
  br label %bb42
bb38:
  %t133 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = extractvalue { i64, ptr } %t133, 0
  %t136 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t135)
  call void @olang_textcopy(ptr %t136, ptr %t134, i64 %t135)
  %t137 = insertvalue { i64, ptr } undef, i64 %t135, 0
  %t138 = insertvalue { i64, ptr } %t137, ptr %t136, 1
  store { i64, ptr } %t138, ptr %l76, !tbaa !27
  %t139 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  %t141 = load { i64, ptr }, ptr %l76, !tbaa !27
  %t142 = extractvalue { i64, ptr } %t141, 0
  store i64 %t142, ptr %l78, !tbaa !24
  %t144 = load i64, ptr %l78, !tbaa !24
  %t145 = icmp eq i64 %t140, %t144
  br i1 %t145, label %bb39, label %bb40
bb39:
  %t147 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t148 = load ptr, ptr %t147, !tbaa !27
  %t149 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = load i64, ptr %l78, !tbaa !24
  %t152 = mul i64 %t151, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t148, ptr %t150, i64 %t152, i1 false)
  br label %bb41
bb40:
  %t153 = load { i64, ptr }, ptr %l76, !tbaa !27
  store { i64, ptr } %t153, ptr %l5, !tbaa !27
  br label %bb41
bb41:
  %t154 = load i64, ptr %l12, !tbaa !24
  store i64 %t154, ptr %l6, !tbaa !24
  call void @__olang_scope_close(ptr %s6)
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t158 = add i64 %t156, 1
  store i64 %t158, ptr %l9, !tbaa !24
  br label %bb6
bb44:
  %t160 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  %t164 = icmp eq i64 %t162, 0
  br i1 %t164, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb46:
  br label %bb47
bb47:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/names:Resolver", ptr %t166, i32 0, i32 23
  store ptr %t168, ptr %l13, !tbaa !29
  store i64 0, ptr %l14, !tbaa !24
  br label %bb48
bb48:
  %t170 = load i64, ptr %l14, !tbaa !24
  store i64 %t170, ptr %l88, !tbaa !24
  %t171 = load ptr, ptr %l13, !tbaa !29
  %t173 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eLen_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %t171)
  store i64 %t173, ptr %l90
  br label %bb49
bb49:
  %t174 = load i64, ptr %l88, !tbaa !24
  %t175 = load i64, ptr %l90, !tbaa !24
  %t176 = icmp slt i64 %t174, %t175
  %t178 = xor i1 %t176, true
  br i1 %t178, label %bb50, label %bb51
bb50:
  br label %bb63
bb51:
  br label %bb52
bb52:
  %t180 = load ptr, ptr %l13, !tbaa !29
  %t181 = load i64, ptr %l14, !tbaa !24
  %t184 = call %"compiler/names:raised" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eAt_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %v0, ptr %t180, i64 %t181)
  store %"compiler/names:raised" %t184, ptr %l95
  br label %bb53
bb53:
  %t185 = load %"compiler/names:raised", ptr %l95
  store %"compiler/names:raised" %t185, ptr %l15
  %t186 = getelementptr %"compiler/names:raised", ptr %l15, i32 0, i32 0
  %t187 = load i32, ptr %t186, !tbaa !23
  %t188 = getelementptr %"compiler/names:raisedName", ptr %l2, i32 0, i32 0
  %t189 = load i32, ptr %t188, !tbaa !23
  %t192 = icmp eq i32 %t187, %t189
  br i1 %t192, label %bb54, label %bb55
bb54:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/names:Resolver", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  %t199 = getelementptr %"compiler/load:Loader", ptr %t197, i32 0, i32 4
  %t200 = load ptr, ptr %t199, !tbaa !29
  store ptr %t200, ptr %l101, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t202 = load i64, ptr %l1, !tbaa !24
  %t203 = getelementptr %"compiler/names:raised", ptr %l15, i32 0, i32 1
  %t204 = load %"compiler/source:Span", ptr %t203
  %t208 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t201, i64 %t202, %"compiler/source:Span" %t204)
  store { i64, [3 x i64] } %t208, ptr %l105
  br label %bb56
bb55:
  br label %bb61
bb56:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/names:raisedName", ptr %l2, i32 0, i32 0
  %t211 = load i32, ptr %t210, !tbaa !23
  %t214 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t209, i32 %t211)
  store { i64, ptr } %t214, ptr %l108
  br label %bb57
bb57:
  %t215 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t216 = extractvalue { i64, ptr } %t215, 0
  %t217 = extractvalue { i64, ptr } %t215, 1
  %t218 = mul i64 %t216, 1
  %t219 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t218)
  call void @llvm.memcpy.p0.p0.i64(ptr %t219, ptr %t217, i64 %t218, i1 false)
  %t220 = insertvalue { i64, ptr } undef, i64 %t216, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  store { i64, ptr } %t221, ptr %l109, !tbaa !27
  %t222 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t224 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %s0, ptr %v0, { i64, ptr } %t222)
  store { i64, ptr } %t224, ptr %l111
  br label %bb58
bb58:
  %t225 = load { i64, ptr }, ptr %l111, !tbaa !27
  %t226 = extractvalue { i64, ptr } %t225, 0
  %t227 = extractvalue { i64, ptr } %t225, 1
  %t228 = mul i64 %t226, 1
  %t229 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t228)
  call void @llvm.memcpy.p0.p0.i64(ptr %t229, ptr %t227, i64 %t228, i1 false)
  %t230 = insertvalue { i64, ptr } undef, i64 %t226, 0
  %t231 = insertvalue { i64, ptr } %t230, ptr %t229, 1
  %t232 = load { i64, ptr }, ptr %l109, !tbaa !27
  %t234 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNearError(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t232, { i64, ptr } %t231)
  store %"compiler/diagmsg:Msg" %t234, ptr %l113
  br label %bb59
bb59:
  %t235 = load ptr, ptr %l101, !tbaa !29
  %t236 = load { i64, [3 x i64] }, ptr %l105
  %t237 = load %"compiler/diagmsg:Msg", ptr %l113
  %t238 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t235, { i64, [3 x i64] } %t236, %"compiler/diagmsg:Msg" %t237)
  store i64 %t238, ptr %l114
  br label %bb60
bb60:
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t239 = load i64, ptr %l14, !tbaa !24
  %t241 = add i64 %t239, 1
  store i64 %t241, ptr %l14, !tbaa !24
  br label %bb48
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoAliasClash(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l4 = alloca i32
  %l9 = alloca ptr
  %l13 = alloca i1
  %l16 = alloca ptr
  %l20 = alloca { i64, [3 x i64] }
  %l23 = alloca { i64, ptr }
  %l25 = alloca %"compiler/diagmsg:Msg"
  %l26 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l2, !tbaa !23
  store i32 %t1, ptr %l4, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/names:Resolver", ptr %t3, i32 0, i32 1
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t5, i64 %t6)
  store ptr %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l9, !tbaa !29
  %t12 = getelementptr %"compiler/names:Table", ptr %t10, i32 0, i32 3
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %t12, i32 %t13)
  store i1 %t16, ptr %l13
  br label %bb2
bb2:
  %t17 = load i1, ptr %l13, !tbaa !21
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/names:Resolver", ptr %t18, i32 0, i32 0
  %t21 = load ptr, ptr %t20, !tbaa !29
  %t23 = getelementptr %"compiler/load:Loader", ptr %t21, i32 0, i32 4
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l16, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  %t31 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t25, i64 %t26, %"compiler/source:Span" %a3)
  store { i64, [3 x i64] } %t31, ptr %l20
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l2, !tbaa !23
  %t36 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t32, i32 %t33)
  store { i64, ptr } %t36, ptr %l23
  br label %bb6
bb6:
  %t37 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t37, 0
  %t39 = extractvalue { i64, ptr } %t37, 1
  %t40 = mul i64 %t38, 1
  %t41 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t40)
  call void @llvm.memcpy.p0.p0.i64(ptr %t41, ptr %t39, i64 %t40, i1 false)
  %t42 = insertvalue { i64, ptr } undef, i64 %t38, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t41, 1
  %t45 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameClashesWithImport(ptr %v0, ptr %v0, { i64, ptr } %t43)
  store %"compiler/diagmsg:Msg" %t45, ptr %l25
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l16, !tbaa !29
  %t47 = load { i64, [3 x i64] }, ptr %l20
  %t48 = load %"compiler/diagmsg:Msg", ptr %l25
  %t49 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t46, { i64, [3 x i64] } %t47, %"compiler/diagmsg:Msg" %t48)
  store i64 %t49, ptr %l26
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enotPrivate(ptr %v0, ptr %a0, i64 %a1, %"compiler/names:Ref" %a2, i32 %a3, %"compiler/source:Span" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/names:Ref"
  %l3 = alloca i32
  %l5 = alloca %"compiler/diagmsg:Msg"
  %l10 = alloca i1
  %l13 = alloca i1
  %l16 = alloca i1
  %l19 = alloca { i64, ptr }
  %l20 = alloca i1
  %l21 = alloca i1
  %l26 = alloca ptr
  %l31 = alloca %"compiler/diagmsg:Msg"
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/diagmsg:Msg"
  %l39 = alloca { i64, ptr }
  %l41 = alloca %"compiler/diagmsg:Msg"
  %l44 = alloca ptr
  %l49 = alloca { i64, [3 x i64] }
  %l51 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/names:Ref" %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/names:Resolver", ptr %t2, i32 0, i32 6
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp eq i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb3
bb2:
  %t10 = getelementptr %"compiler/names:Ref", ptr %l2, i32 0, i32 0
  %t11 = load i32, ptr %t10, !range !{i32 0, i32 9}
  %t13 = trunc i64 0 to i32
  %t14 = icmp eq i32 %t11, %t13
  store i1 %t14, ptr %l10, !tbaa !21
  br label %bb3
bb3:
  %t16 = load i1, ptr %l10, !tbaa !21
  br i1 %t16, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t17 = getelementptr %"compiler/names:Ref", ptr %l2, i32 0, i32 0
  %t18 = load i32, ptr %t17, !range !{i32 0, i32 9}
  %t20 = trunc i64 5 to i32
  %t21 = icmp eq i32 %t18, %t20
  store i1 %t21, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l13, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb11
bb8:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t24, i32 %t25)
  store { i64, ptr } %t28, ptr %l19
  br label %bb9
bb9:
  %t29 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t30 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t29)
  store i1 %t30, ptr %l20
  br label %bb10
bb10:
  %t31 = load i1, ptr %l20, !tbaa !21
  store i1 %t31, ptr %l16, !tbaa !21
  br label %bb11
bb11:
  %t32 = load i1, ptr %l16, !tbaa !21
  br i1 %t32, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb15
bb13:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/names:Resolver", ptr %t33, i32 0, i32 0
  %t36 = load ptr, ptr %t35, !tbaa !29
  %t38 = getelementptr %"compiler/load:Loader", ptr %t36, i32 0, i32 10
  %t39 = load i64, ptr %l1, !tbaa !24
  %t42 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t38, i64 %t39)
  store ptr %t42, ptr %l26
  br label %bb14
bb14:
  %t43 = load ptr, ptr %l26, !tbaa !29
  %t45 = getelementptr %"compiler/load:Module", ptr %t43, i32 0, i32 30
  %t46 = load i1, ptr %t45, !tbaa !21
  store i1 %t46, ptr %l21, !tbaa !21
  br label %bb15
bb15:
  %t48 = load i1, ptr %l21, !tbaa !21
  br i1 %t48, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t49 = getelementptr %"compiler/names:Ref", ptr %l2, i32 0, i32 0
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 9}
  %t52 = trunc i64 4 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb19, label %bb20
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i32, ptr %l3, !tbaa !23
  %t59 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t55, i32 %t56)
  store { i64, ptr } %t59, ptr %l34
  br label %bb21
bb20:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load i32, ptr %l3, !tbaa !23
  %t64 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t60, i32 %t61)
  store { i64, ptr } %t64, ptr %l39
  br label %bb23
bb21:
  %t65 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t65, 0
  %t67 = extractvalue { i64, ptr } %t65, 1
  %t68 = mul i64 %t66, 1
  %t69 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t68)
  call void @llvm.memcpy.p0.p0.i64(ptr %t69, ptr %t67, i64 %t68, i1 false)
  %t70 = insertvalue { i64, ptr } undef, i64 %t66, 0
  %t71 = insertvalue { i64, ptr } %t70, ptr %t69, 1
  %t73 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeIsPrivate(ptr %v0, ptr %v0, { i64, ptr } %t71)
  store %"compiler/diagmsg:Msg" %t73, ptr %l36
  br label %bb22
bb22:
  %t74 = load %"compiler/diagmsg:Msg", ptr %l36
  store %"compiler/diagmsg:Msg" %t74, ptr %l31
  br label %bb25
bb23:
  %t75 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t83 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarIsPrivate(ptr %v0, ptr %v0, { i64, ptr } %t81)
  store %"compiler/diagmsg:Msg" %t83, ptr %l41
  br label %bb24
bb24:
  %t84 = load %"compiler/diagmsg:Msg", ptr %l41
  store %"compiler/diagmsg:Msg" %t84, ptr %l31
  br label %bb25
bb25:
  %t85 = load %"compiler/diagmsg:Msg", ptr %l31
  store %"compiler/diagmsg:Msg" %t85, ptr %l5
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/names:Resolver", ptr %t86, i32 0, i32 0
  %t89 = load ptr, ptr %t88, !tbaa !29
  %t91 = getelementptr %"compiler/load:Loader", ptr %t89, i32 0, i32 4
  %t92 = load ptr, ptr %t91, !tbaa !29
  store ptr %t92, ptr %l44, !tbaa !29
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/names:Resolver", ptr %t94, i32 0, i32 6
  %t97 = load i64, ptr %t96, !tbaa !24
  %t102 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t93, i64 %t97, %"compiler/source:Span" %a4)
  store { i64, [3 x i64] } %t102, ptr %l49
  br label %bb26
bb26:
  %t103 = load %"compiler/diagmsg:Msg", ptr %l5
  %t104 = load ptr, ptr %l44, !tbaa !29
  %t105 = load { i64, [3 x i64] }, ptr %l49
  %t107 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t104, { i64, [3 x i64] } %t105, %"compiler/diagmsg:Msg" %t103)
  store i64 %t107, ptr %l51
  br label %bb27
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca ptr
  %l18 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca i32
  %l23 = alloca ptr
  %l24 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l56 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i1
  %l75 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l97 = alloca { i64, ptr }
  %l98 = alloca i1
  %l100 = alloca i1
  %l104 = alloca i1
  %l111 = alloca ptr
  %l112 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i1
  %l132 = alloca ptr
  %l133 = alloca i1
  %l142 = alloca { i64, ptr }
  %l143 = alloca i1
  %l145 = alloca i1
  %l149 = alloca i1
  %s8 = alloca %olang.scope
  %s12 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l23, !tbaa !29
  store i1 false, ptr %l24, !tbaa !21
  %t2 = load ptr, ptr %l23, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l23, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 9}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l24, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l24, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr }, ptr %t12, i32 0, i32 1
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l3, !tbaa !29
  br label %bb9
bb4:
  %t16 = load ptr, ptr %l1, !tbaa !29
  store ptr %t16, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t17 = load ptr, ptr %l29, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l29, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 9}
  %t23 = icmp eq i64 %t21, 4
  store i1 %t23, ptr %l30, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l30, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr }, ptr %t27, i32 0, i32 1
  %t29 = load ptr, ptr %t28
  store ptr %t29, ptr %l3, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t31, ptr %t32)
  br label %bb10
bb10:
  br label %bb91
bb11:
  %t36 = load ptr, ptr %l1, !tbaa !29
  store ptr %t36, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t37 = load ptr, ptr %l38, !tbaa !29
  %t38 = icmp ne ptr %t37, null
  br i1 %t38, label %bb12, label %bb13
bb12:
  %t40 = load ptr, ptr %l38, !tbaa !29
  %t41 = load i64, ptr %t40, !range !{i64 0, i64 9}
  %t43 = icmp eq i64 %t41, 2
  store i1 %t43, ptr %l39, !tbaa !21
  br label %bb13
bb13:
  %t44 = load i1, ptr %l39, !tbaa !21
  br i1 %t44, label %bb14, label %bb15
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  %t47 = getelementptr { i64, [4 x i64] }, ptr %t45, i32 0, i32 1
  %t48 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t47, i32 0, i32 1
  %t49 = load ptr, ptr %t48
  store ptr %t49, ptr %l4, !tbaa !29
  %t51 = load ptr, ptr %l1, !tbaa !29
  %t53 = getelementptr { i64, [4 x i64] }, ptr %t51, i32 0, i32 1
  %t54 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t53, i32 0, i32 2
  %t55 = load { i64, ptr }, ptr %t54
  store { i64, ptr } %t55, ptr %l5, !tbaa !27
  br label %bb16
bb15:
  br label %bb25
bb16:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t57, ptr %t58)
  br label %bb17
bb17:
  %t62 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t62, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t64 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  store i64 %t66, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t68 = load i64, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l8, !tbaa !24
  %t72 = icmp slt i64 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb19, label %bb20
bb19:
  br label %bb24
bb20:
  br label %bb21
bb21:
  %t76 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t76, ptr %l56, !tbaa !27
  %t77 = load i64, ptr %l7, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr ptr, ptr %t80, i64 %t77
  %t82 = load ptr, ptr %t81, !tbaa !39
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %t84, ptr %t82, ptr %t86)
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t90 = load i64, ptr %l7, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l7, !tbaa !24
  br label %bb18
bb24:
  br label %bb91
bb25:
  %t94 = load ptr, ptr %l1, !tbaa !29
  store ptr %t94, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t95 = load ptr, ptr %l64, !tbaa !29
  %t96 = icmp ne ptr %t95, null
  br i1 %t96, label %bb26, label %bb27
bb26:
  %t98 = load ptr, ptr %l64, !tbaa !29
  %t99 = load i64, ptr %t98, !range !{i64 0, i64 9}
  %t101 = icmp eq i64 %t99, 3
  store i1 %t101, ptr %l65, !tbaa !21
  br label %bb27
bb27:
  %t102 = load i1, ptr %l65, !tbaa !21
  br i1 %t102, label %bb28, label %bb29
bb28:
  %t103 = load ptr, ptr %l1, !tbaa !29
  %t105 = getelementptr { i64, [4 x i64] }, ptr %t103, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", i32 }, ptr %t105, i32 0, i32 0
  %t107 = load %"compiler/source:Span", ptr %t106
  store %"compiler/source:Span" %t107, ptr %l10
  %t109 = load ptr, ptr %l1, !tbaa !29
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32 }, ptr %t111, i32 0, i32 1
  %t113 = load i32, ptr %t112
  store i32 %t113, ptr %l11, !tbaa !23
  br label %bb30
bb29:
  br label %bb37
bb30:
  %t115 = load i32, ptr %l11, !tbaa !23
  %t117 = load ptr, ptr %l2, !tbaa !29
  %t121 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t117, i32 %t115)
  store i1 %t121, ptr %l75
  br label %bb31
bb31:
  %t122 = load i1, ptr %l75, !tbaa !21
  %t123 = xor i1 %t122, true
  br i1 %t123, label %bb32, label %bb33
bb32:
  %t125 = load ptr, ptr %l2, !tbaa !29
  %t126 = load i32, ptr %l11, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t125, i32 %t126)
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load i32, ptr %l11, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr %l10
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %t129, i32 %t130, %"compiler/source:Span" %t131, i1 true)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb91
bb37:
  %t135 = load ptr, ptr %l1, !tbaa !29
  store ptr %t135, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t136 = load ptr, ptr %l82, !tbaa !29
  %t137 = icmp ne ptr %t136, null
  br i1 %t137, label %bb38, label %bb39
bb38:
  %t139 = load ptr, ptr %l82, !tbaa !29
  %t140 = load i64, ptr %t139, !range !{i64 0, i64 9}
  %t142 = icmp eq i64 %t140, 5
  store i1 %t142, ptr %l83, !tbaa !21
  br label %bb39
bb39:
  %t143 = load i1, ptr %l83, !tbaa !21
  br i1 %t143, label %bb40, label %bb41
bb40:
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr { i64, [4 x i64] }, ptr %t144, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t146, i32 0, i32 1
  %t148 = load ptr, ptr %t147
  store ptr %t148, ptr %l13, !tbaa !29
  %t150 = load ptr, ptr %l1, !tbaa !29
  %t152 = getelementptr { i64, [4 x i64] }, ptr %t150, i32 0, i32 1
  %t153 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t152, i32 0, i32 2
  %t154 = load i32, ptr %t153
  store i32 %t154, ptr %l14, !tbaa !23
  %t156 = load ptr, ptr %l1, !tbaa !29
  %t158 = getelementptr { i64, [4 x i64] }, ptr %t156, i32 0, i32 1
  %t159 = getelementptr { %"compiler/source:Span", ptr, i32, %"compiler/source:Span" }, ptr %t158, i32 0, i32 3
  %t160 = load %"compiler/source:Span", ptr %t159
  store %"compiler/source:Span" %t160, ptr %l15
  br label %bb42
bb41:
  br label %bb55
bb42:
  store %olang.scope zeroinitializer, ptr %s8
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load ptr, ptr %l13, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t162, ptr %t163)
  br label %bb43
bb43:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i32, ptr %l14, !tbaa !23
  %t171 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t167, i32 %t168)
  store { i64, ptr } %t171, ptr %l97
  br label %bb44
bb44:
  %t172 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t173 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s8, { i64, ptr } %t172, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t173, ptr %l98
  br label %bb45
bb45:
  %t174 = load i1, ptr %l98, !tbaa !21
  %t175 = xor i1 %t174, true
  br i1 %t175, label %bb46, label %bb47
bb46:
  %t177 = load i32, ptr %l14, !tbaa !23
  %t179 = load ptr, ptr %l2, !tbaa !29
  %t183 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t179, i32 %t177)
  store i1 %t183, ptr %l104
  br label %bb48
bb47:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb49
bb48:
  %t184 = load i1, ptr %l104, !tbaa !21
  %t185 = xor i1 %t184, true
  store i1 %t185, ptr %l100, !tbaa !21
  br label %bb49
bb49:
  %t187 = load i1, ptr %l100, !tbaa !21
  br i1 %t187, label %bb50, label %bb51
bb50:
  %t188 = load ptr, ptr %l2, !tbaa !29
  %t189 = load i32, ptr %l14, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t188, i32 %t189)
  br label %bb52
bb51:
  br label %bb54
bb52:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t193 = load i32, ptr %l14, !tbaa !23
  %t194 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %t192, i32 %t193, %"compiler/source:Span" %t194, i1 true)
  br label %bb53
bb53:
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s8)
  br label %bb91
bb55:
  %t198 = load ptr, ptr %l1, !tbaa !29
  store ptr %t198, ptr %l111, !tbaa !29
  store i1 false, ptr %l112, !tbaa !21
  %t199 = load ptr, ptr %l111, !tbaa !29
  %t200 = icmp ne ptr %t199, null
  br i1 %t200, label %bb56, label %bb57
bb56:
  %t202 = load ptr, ptr %l111, !tbaa !29
  %t203 = load i64, ptr %t202, !range !{i64 0, i64 9}
  %t205 = icmp eq i64 %t203, 6
  store i1 %t205, ptr %l112, !tbaa !21
  br label %bb57
bb57:
  %t206 = load i1, ptr %l112, !tbaa !21
  br i1 %t206, label %bb58, label %bb59
bb58:
  %t207 = load ptr, ptr %l1, !tbaa !29
  %t209 = getelementptr { i64, [4 x i64] }, ptr %t207, i32 0, i32 1
  %t210 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t209, i32 0, i32 1
  %t211 = load ptr, ptr %t210
  store ptr %t211, ptr %l17, !tbaa !29
  %t213 = load ptr, ptr %l1, !tbaa !29
  %t215 = getelementptr { i64, [4 x i64] }, ptr %t213, i32 0, i32 1
  %t216 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t215, i32 0, i32 2
  %t217 = load { i64, ptr }, ptr %t216
  store { i64, ptr } %t217, ptr %l18, !tbaa !27
  br label %bb60
bb59:
  br label %bb62
bb60:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load ptr, ptr %l17, !tbaa !29
  %t221 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t222 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eelemsPattern(ptr %v0, ptr %v1, ptr %v1, ptr %v2, ptr %t219, ptr %t220, { i64, ptr } %t221, ptr %t222)
  br label %bb61
bb61:
  br label %bb91
bb62:
  %t227 = load ptr, ptr %l1, !tbaa !29
  store ptr %t227, ptr %l123, !tbaa !29
  store i1 false, ptr %l124, !tbaa !21
  %t228 = load ptr, ptr %l123, !tbaa !29
  %t229 = icmp ne ptr %t228, null
  br i1 %t229, label %bb63, label %bb64
bb63:
  %t231 = load ptr, ptr %l123, !tbaa !29
  %t232 = load i64, ptr %t231, !range !{i64 0, i64 9}
  %t234 = icmp eq i64 %t232, 8
  store i1 %t234, ptr %l124, !tbaa !21
  br label %bb64
bb64:
  %t235 = load i1, ptr %l124, !tbaa !21
  br i1 %t235, label %bb65, label %bb66
bb65:
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t238 = getelementptr { i64, [4 x i64] }, ptr %t236, i32 0, i32 1
  %t239 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t238, i32 0, i32 2
  %t240 = load ptr, ptr %t239
  store ptr %t240, ptr %l19, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load ptr, ptr %l19, !tbaa !29
  %t244 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epattern(ptr %v0, ptr %v1, ptr %v2, ptr %t242, ptr %t243, ptr %t244)
  br label %bb68
bb68:
  br label %bb91
bb69:
  %t248 = load ptr, ptr %l1, !tbaa !29
  store ptr %t248, ptr %l132, !tbaa !29
  store i1 false, ptr %l133, !tbaa !21
  %t249 = load ptr, ptr %l132, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb70, label %bb71
bb70:
  %t252 = load ptr, ptr %l132, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 9}
  %t255 = icmp eq i64 %t253, 7
  store i1 %t255, ptr %l133, !tbaa !21
  br label %bb71
bb71:
  %t256 = load i1, ptr %l133, !tbaa !21
  br i1 %t256, label %bb72, label %bb73
bb72:
  %t257 = load ptr, ptr %l1, !tbaa !29
  %t259 = getelementptr { i64, [4 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", i32 }, ptr %t259, i32 0, i32 0
  %t261 = load %"compiler/source:Span", ptr %t260
  store %"compiler/source:Span" %t261, ptr %l20
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr { i64, [4 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", i32 }, ptr %t265, i32 0, i32 1
  %t267 = load i32, ptr %t266
  store i32 %t267, ptr %l21, !tbaa !23
  br label %bb74
bb73:
  br label %bb86
bb74:
  store %olang.scope zeroinitializer, ptr %s12
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load i32, ptr %l21, !tbaa !23
  %t273 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t269, i32 %t270)
  store { i64, ptr } %t273, ptr %l142
  br label %bb75
bb75:
  %t274 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t275 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s12, { i64, ptr } %t274, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t275, ptr %l143
  br label %bb76
bb76:
  %t276 = load i1, ptr %l143, !tbaa !21
  %t277 = xor i1 %t276, true
  br i1 %t277, label %bb77, label %bb78
bb77:
  %t279 = load i32, ptr %l21, !tbaa !23
  %t281 = load ptr, ptr %l2, !tbaa !29
  %t285 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t281, i32 %t279)
  store i1 %t285, ptr %l149
  br label %bb79
bb78:
  store i1 false, ptr %l145, !tbaa !21
  br label %bb80
bb79:
  %t286 = load i1, ptr %l149, !tbaa !21
  %t287 = xor i1 %t286, true
  store i1 %t287, ptr %l145, !tbaa !21
  br label %bb80
bb80:
  %t289 = load i1, ptr %l145, !tbaa !21
  br i1 %t289, label %bb81, label %bb82
bb81:
  %t290 = load ptr, ptr %l2, !tbaa !29
  %t291 = load i32, ptr %l21, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v2, ptr %t290, i32 %t291)
  br label %bb83
bb82:
  br label %bb85
bb83:
  %t294 = load ptr, ptr %l0, !tbaa !29
  %t295 = load i32, ptr %l21, !tbaa !23
  %t296 = load %"compiler/source:Span", ptr %l20
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %t294, i32 %t295, %"compiler/source:Span" %t296, i1 true)
  br label %bb84
bb84:
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s12)
  br label %bb91
bb86:
  br i1 true, label %bb87, label %bb88
bb87:
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb91
bb90:
  call void @__olang_check_failed(ptr @olang_loc_e5a1f3e08188ecc4_85420485b9e83138)
  unreachable
bb91:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopSig(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i1
  %l8 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/names:Resolver", ptr %t8, i32 0, i32 25
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l8
  br label %bb3
bb3:
  %t13 = load i64, ptr %l8, !tbaa !24
  %t14 = icmp eq i64 %t13, 0
  store i1 %t14, ptr %l5, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l5, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/names:Resolver", ptr %t17, i32 0, i32 25
  %t21 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t19)
  %t22 = extractvalue { i32, i64 } %t21, 1
  %t23 = extractvalue { i32, i64 } %t21, 0
  store i32 %t23, ptr %l14
  %t24 = icmp ne i32 %t23, 0
  br i1 %t24, label %bb9, label %ok.25, !prof !99
ok.25:
  store i64 %t22, ptr %l13
  br label %bb8
bb8:
  %t26 = load i64, ptr %l13, !tbaa !24
  store i64 %t26, ptr %l10, !tbaa !24
  br label %bb11
bb9:
  br label %bb10
bb10:
  br label %ret
bb11:
  %t27 = load i64, ptr %l10, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/names:Resolver", ptr %t28, i32 0, i32 24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %t30, i64 %t27)
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l5 = alloca i64
  %l9 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l12 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l13 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i32
  %l26 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb2
bb2:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sgt i64 %t7, %a1
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb21
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/names:Resolver", ptr %t13, i32 0, i32 9
  %t17 = call { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__He0d1b669a6d0fad4ef2d0863356e160c(ptr %v0, ptr %t15)
  %t18 = extractvalue { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } %t17, 1
  %t19 = extractvalue { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } %t17, 0
  store i32 %t19, ptr %l13
  %t20 = icmp ne i32 %t19, 0
  br i1 %t20, label %bb7, label %ok.21, !prof !99
ok.21:
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t18, ptr %l12
  br label %bb6
bb6:
  %t22 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l12
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t22, ptr %l9
  br label %bb9
bb7:
  br label %bb8
bb8:
  br label %ret
bb9:
  %t23 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l9
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t23, ptr %l2
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/names:Resolver", ptr %t25, i32 0, i32 8
  %t28 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l2, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t32 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %t27, i32 %t29)
  %t33 = extractvalue { i32, i64 } %t32, 1
  %t34 = extractvalue { i32, i64 } %t32, 0
  store i32 %t34, ptr %l20
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb11, label %ok.36, !prof !99
ok.36:
  store i64 %t33, ptr %l19
  br label %bb10
bb10:
  %t37 = load i64, ptr %l19, !tbaa !24
  store i64 %t37, ptr %l15, !tbaa !24
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l15, !tbaa !24
  br label %bb13
bb13:
  %t38 = load ptr, ptr %l14, !tbaa !29
  %t39 = load i64, ptr %l15, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ejudge(ptr %v0, ptr %t38, i64 %t39)
  br label %bb14
bb14:
  %t40 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l2, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb15, label %bb16
bb15:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/names:Resolver", ptr %t45, i32 0, i32 8
  %t48 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l2, i32 0, i32 0
  %t49 = load i32, ptr %t48, !tbaa !23
  %t52 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H7068c8717e9d582db2941dd2bdd79d55(ptr %v0, ptr %t47, i32 %t49)
  store i1 %t52, ptr %l26
  br label %bb17
bb16:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/names:Resolver", ptr %t53, i32 0, i32 8
  %t56 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l2, i32 0, i32 0
  %t57 = load i32, ptr %t56, !tbaa !23
  %t58 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l2, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %t55, i32 %t57, i64 %t59)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  br label %bb1
bb21:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eread(ptr %v0, ptr %a0, %"compiler/names:Ref" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/names:Ref"
  %l2 = alloca %"compiler/names:local"
  %l6 = alloca i1
  %l9 = alloca i1
  %l10 = alloca i64
  %l13 = alloca i64
  %l18 = alloca %"compiler/names:local"
  %l21 = alloca ptr
  %l22 = alloca i64
  %l28 = alloca %"compiler/names:local"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/names:Ref" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 0
  %t2 = load i32, ptr %t1, !range !{i32 0, i32 9}
  %t4 = trunc i64 1 to i32
  %t5 = icmp eq i32 %t2, %t4
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  %t9 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = icmp slt i64 %t10, 0
  store i1 %t12, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l6, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l9, !tbaa !21
  br label %bb7
bb5:
  %t15 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t16 = load i64, ptr %t15, !tbaa !24
  store i64 %t16, ptr %l10, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/names:Resolver", ptr %t17, i32 0, i32 7
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i64, ptr %l10, !tbaa !24
  %t23 = load i64, ptr %l13, !tbaa !24
  %t24 = icmp sge i64 %t22, %t23
  store i1 %t24, ptr %l9, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l9, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/names:Resolver", ptr %t27, i32 0, i32 7
  %t30 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t31 = load i64, ptr %t30, !tbaa !24
  %t34 = call %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t29, i64 %t31)
  store %"compiler/names:local" %t34, ptr %l18
  br label %bb11
bb11:
  %t35 = load %"compiler/names:local", ptr %l18
  store %"compiler/names:local" %t35, ptr %l2
  %t36 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 5
  %t37 = load i1, ptr %t36, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/names:Resolver", ptr %t39, i32 0, i32 7
  store ptr %t41, ptr %l21, !tbaa !29
  %t42 = getelementptr %"compiler/names:Ref", ptr %l1, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l22, !tbaa !24
  %t44 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 0
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 1
  %t47 = load %"compiler/source:Span", ptr %t46
  %t48 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 2
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 9}
  %t50 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 3
  %t51 = load i1, ptr %t50, !tbaa !21
  %t52 = getelementptr %"compiler/names:local", ptr %l2, i32 0, i32 4
  %t53 = load i1, ptr %t52, !tbaa !21
  %t59 = call %"compiler/names:local" @compiler_2fnames_3alocal_2ector(ptr %s0, i32 %t45, %"compiler/source:Span" %t47, i32 %t49, i1 %t51, i1 %t53, i1 true)
  store %"compiler/names:local" %t59, ptr %l28
  br label %bb15
bb15:
  %t60 = load ptr, ptr %l21, !tbaa !29
  %t61 = load i64, ptr %l22, !tbaa !24
  %t62 = load %"compiler/names:local", ptr %l28
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eSetAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t60, i64 %t61, %"compiler/names:local" %t62)
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca i32
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l21 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l23 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca %"compiler/source:Span"
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca { i64, ptr }
  %l35 = alloca i64
  %l36 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca ptr
  %l40 = alloca ptr
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca { i64, ptr }
  %l51 = alloca i64
  %l52 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca i64
  %l57 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i1
  %l74 = alloca ptr
  %l75 = alloca i1
  %l84 = alloca i1
  %l95 = alloca ptr
  %l96 = alloca i1
  %l103 = alloca ptr
  %l104 = alloca i1
  %l117 = alloca { i64, ptr }
  %l133 = alloca { i64, ptr }
  %l136 = alloca ptr
  %l137 = alloca i1
  %l146 = alloca i1
  %l149 = alloca { i64, ptr }
  %l150 = alloca i1
  %l155 = alloca ptr
  %l156 = alloca i1
  %l165 = alloca ptr
  %l166 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i1
  %l191 = alloca ptr
  %l192 = alloca i1
  %l199 = alloca ptr
  %l200 = alloca i1
  %l207 = alloca ptr
  %l208 = alloca i1
  %l220 = alloca ptr
  %l221 = alloca i1
  %l227 = alloca i64
  %l248 = alloca ptr
  %l249 = alloca i1
  %l261 = alloca i64
  %l276 = alloca ptr
  %l277 = alloca i1
  %l289 = alloca ptr
  %l290 = alloca i1
  %l297 = alloca ptr
  %l298 = alloca i1
  %l310 = alloca { i64, ptr }
  %l318 = alloca ptr
  %l319 = alloca i1
  %l324 = alloca ptr
  %l325 = alloca i1
  %l333 = alloca ptr
  %l334 = alloca i1
  %l350 = alloca ptr
  %l351 = alloca i1
  %l362 = alloca ptr
  %l363 = alloca i1
  %l387 = alloca { i64, ptr }
  %l395 = alloca ptr
  %l396 = alloca i1
  %l410 = alloca { i64, ptr }
  %l420 = alloca ptr
  %l421 = alloca i1
  %l432 = alloca ptr
  %l433 = alloca i1
  %l439 = alloca i64
  %l445 = alloca ptr
  %l446 = alloca i1
  %s13 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l1, !tbaa !29
  store ptr %t5, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t6 = load ptr, ptr %l60, !tbaa !29
  %t7 = icmp ne ptr %t6, null
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t9 = load ptr, ptr %l60, !tbaa !29
  %t10 = load i64, ptr %t9, !range !{i64 0, i64 22}
  %t12 = icmp eq i64 %t10, 0
  store i1 %t12, ptr %l61, !tbaa !21
  br label %bb5
bb5:
  %t13 = load i1, ptr %l61, !tbaa !21
  br i1 %t13, label %bb6, label %bb7
bb6:
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t14, i32 0, i32 1
  %t17 = getelementptr { %"compiler/source:Span", ptr }, ptr %t16, i32 0, i32 1
  %t18 = load ptr, ptr %t17
  store ptr %t18, ptr %l2, !tbaa !29
  br label %bb8
bb7:
  br label %bb33
bb8:
  %t20 = load ptr, ptr %l2, !tbaa !29
  store ptr %t20, ptr %l66, !tbaa !29
  store i1 false, ptr %l67, !tbaa !21
  %t21 = load ptr, ptr %l66, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb9, label %bb10
bb9:
  %t24 = load ptr, ptr %l66, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 30}
  %t27 = icmp eq i64 %t25, 3
  store i1 %t27, ptr %l67, !tbaa !21
  br label %bb10
bb10:
  %t28 = load i1, ptr %l67, !tbaa !21
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 1
  %t33 = load i32, ptr %t32, !range !{i32 0, i32 114}
  store i32 %t33, ptr %l3
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t37 = getelementptr { i64, [4 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t37, i32 0, i32 2
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l4, !tbaa !29
  br label %bb17
bb12:
  %t41 = load ptr, ptr %l2, !tbaa !29
  store ptr %t41, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t42 = load ptr, ptr %l74, !tbaa !29
  %t43 = icmp ne ptr %t42, null
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = load ptr, ptr %l74, !tbaa !29
  %t46 = load i64, ptr %t45, !range !{i64 0, i64 30}
  %t48 = icmp eq i64 %t46, 4
  store i1 %t48, ptr %l75, !tbaa !21
  br label %bb14
bb14:
  %t49 = load i1, ptr %l75, !tbaa !21
  br i1 %t49, label %bb15, label %bb16
bb15:
  %t50 = load ptr, ptr %l2, !tbaa !29
  %t52 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  %t53 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t52, i32 0, i32 1
  %t54 = load i32, ptr %t53, !range !{i32 0, i32 114}
  store i32 %t54, ptr %l3
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t58 = getelementptr { i64, [4 x i64] }, ptr %t56, i32 0, i32 1
  %t59 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t58, i32 0, i32 2
  %t60 = load ptr, ptr %t59
  store ptr %t60, ptr %l4, !tbaa !29
  br label %bb17
bb16:
  br label %bb26
bb17:
  %t62 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t64 = trunc i64 92 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l84, !tbaa !21
  br label %bb20
bb19:
  %t67 = load i32, ptr %l3, !range !{i32 0, i32 114}
  %t69 = trunc i64 93 to i32
  %t70 = icmp eq i32 %t67, %t69
  store i1 %t70, ptr %l84, !tbaa !21
  br label %bb20
bb20:
  %t72 = load i1, ptr %l84, !tbaa !21
  br i1 %t72, label %bb21, label %bb22
bb21:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %t73, ptr %t74)
  br label %bb23
bb22:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %bb32
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb31
bb29:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t82, ptr %t83)
  br label %bb30
bb30:
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_6855615fe1bb2138_9d7c9db084b0e41c)
  unreachable
bb32:
  br label %bb276
bb33:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l95, !tbaa !29
  store i1 false, ptr %l96, !tbaa !21
  %t88 = load ptr, ptr %l95, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb34, label %bb35
bb34:
  %t91 = load ptr, ptr %l95, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 22}
  %t94 = icmp eq i64 %t92, 1
  store i1 %t94, ptr %l96, !tbaa !21
  br label %bb35
bb35:
  %t95 = load i1, ptr %l96, !tbaa !21
  br i1 %t95, label %bb36, label %bb37
bb36:
  %t96 = load ptr, ptr %l1, !tbaa !29
  %t98 = getelementptr { i64, [4 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l5, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l5, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2evarDecl(ptr %v0, ptr %v1, ptr %t102, ptr %t103)
  br label %bb39
bb39:
  br label %bb276
bb40:
  %t106 = load ptr, ptr %l1, !tbaa !29
  store ptr %t106, ptr %l103, !tbaa !29
  store i1 false, ptr %l104, !tbaa !21
  %t107 = load ptr, ptr %l103, !tbaa !29
  %t108 = icmp ne ptr %t107, null
  br i1 %t108, label %bb41, label %bb42
bb41:
  %t110 = load ptr, ptr %l103, !tbaa !29
  %t111 = load i64, ptr %t110, !range !{i64 0, i64 22}
  %t113 = icmp eq i64 %t111, 2
  store i1 %t113, ptr %l104, !tbaa !21
  br label %bb42
bb42:
  %t114 = load i1, ptr %l104, !tbaa !21
  br i1 %t114, label %bb43, label %bb44
bb43:
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr { i64, [4 x i64] }, ptr %t115, i32 0, i32 1
  %t118 = getelementptr { %"compiler/source:Span", ptr }, ptr %t117, i32 0, i32 1
  %t119 = load ptr, ptr %t118
  store ptr %t119, ptr %l6, !tbaa !29
  br label %bb45
bb44:
  br label %bb87
bb45:
  %t121 = load ptr, ptr %l6, !tbaa !29
  %t123 = getelementptr %"compiler/ast:Multi", ptr %t121, i32 0, i32 2
  %t124 = load { i64, ptr }, ptr %t123, !tbaa !27
  store { i64, ptr } %t124, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t126 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 0
  store i64 %t128, ptr %l9, !tbaa !24
  br label %bb46
bb46:
  %t130 = load i64, ptr %l8, !tbaa !24
  %t131 = load i64, ptr %l9, !tbaa !24
  %t134 = icmp slt i64 %t130, %t131
  %t136 = xor i1 %t134, true
  br i1 %t136, label %bb47, label %bb48
bb47:
  br label %bb52
bb48:
  br label %bb49
bb49:
  %t138 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t138, ptr %l117, !tbaa !27
  %t139 = load i64, ptr %l8, !tbaa !24
  %t141 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr ptr, ptr %t142, i64 %t139
  %t144 = load ptr, ptr %t143, !tbaa !39
  %t146 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t146, ptr %t144)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l8, !tbaa !24
  br label %bb46
bb52:
  %t155 = load ptr, ptr %l6, !tbaa !29
  %t157 = getelementptr %"compiler/ast:Multi", ptr %t155, i32 0, i32 0
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t160 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t162 = extractvalue { i64, ptr } %t160, 0
  store i64 %t162, ptr %l13, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s13
  %t164 = load i64, ptr %l12, !tbaa !24
  %t165 = load i64, ptr %l13, !tbaa !24
  %t168 = icmp slt i64 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s13)
  br label %bb86
bb55:
  br label %bb56
bb56:
  %t172 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t172, ptr %l133, !tbaa !27
  %t173 = load i64, ptr %l12, !tbaa !24
  %t175 = getelementptr { i64, ptr }, ptr %l133, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr ptr, ptr %t176, i64 %t173
  %t178 = load ptr, ptr %t177, !tbaa !39
  store ptr %t178, ptr %l14, !tbaa !29
  %t180 = load ptr, ptr %l14, !tbaa !29
  store ptr %t180, ptr %l136, !tbaa !29
  store i1 false, ptr %l137, !tbaa !21
  %t181 = load ptr, ptr %l136, !tbaa !29
  %t182 = icmp ne ptr %t181, null
  br i1 %t182, label %bb57, label %bb58
bb57:
  %t184 = load ptr, ptr %l136, !tbaa !29
  %t185 = load i64, ptr %t184, !range !{i64 0, i64 30}
  %t187 = icmp eq i64 %t185, 0
  store i1 %t187, ptr %l137, !tbaa !21
  br label %bb58
bb58:
  %t188 = load i1, ptr %l137, !tbaa !21
  br i1 %t188, label %bb59, label %bb60
bb59:
  %t189 = load ptr, ptr %l14, !tbaa !29
  %t191 = getelementptr { i64, [4 x i64] }, ptr %t189, i32 0, i32 1
  %t192 = getelementptr { %"compiler/source:Span", i32 }, ptr %t191, i32 0, i32 0
  %t193 = load %"compiler/source:Span", ptr %t192
  store %"compiler/source:Span" %t193, ptr %l15
  %t195 = load ptr, ptr %l14, !tbaa !29
  %t197 = getelementptr { i64, [4 x i64] }, ptr %t195, i32 0, i32 1
  %t198 = getelementptr { %"compiler/source:Span", i32 }, ptr %t197, i32 0, i32 1
  %t199 = load i32, ptr %t198
  store i32 %t199, ptr %l16, !tbaa !23
  br label %bb61
bb60:
  br label %bb70
bb61:
  %t201 = load ptr, ptr %l6, !tbaa !29
  %t203 = getelementptr %"compiler/ast:Multi", ptr %t201, i32 0, i32 1
  %t204 = load i1, ptr %t203, !tbaa !21
  br i1 %t204, label %bb62, label %bb63
bb62:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load i32, ptr %l16, !tbaa !23
  %t210 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t206, i32 %t207)
  store { i64, ptr } %t210, ptr %l149
  br label %bb64
bb63:
  store i1 false, ptr %l146, !tbaa !21
  br label %bb66
bb64:
  %t211 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t212 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s13, { i64, ptr } %t211, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t212, ptr %l150
  br label %bb65
bb65:
  %t213 = load i1, ptr %l150, !tbaa !21
  %t214 = xor i1 %t213, true
  store i1 %t214, ptr %l146, !tbaa !21
  br label %bb66
bb66:
  %t216 = load i1, ptr %l146, !tbaa !21
  br i1 %t216, label %bb67, label %bb68
bb67:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i32, ptr %l16, !tbaa !23
  %t219 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2edeclareRead(ptr %v0, ptr %t217, i32 %t218, %"compiler/source:Span" %t219, i1 true)
  br label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb84
bb70:
  %t223 = load ptr, ptr %l14, !tbaa !29
  store ptr %t223, ptr %l155, !tbaa !29
  store i1 false, ptr %l156, !tbaa !21
  %t224 = load ptr, ptr %l155, !tbaa !29
  %t225 = icmp ne ptr %t224, null
  br i1 %t225, label %bb71, label %bb72
bb71:
  %t227 = load ptr, ptr %l155, !tbaa !29
  %t228 = load i64, ptr %t227, !range !{i64 0, i64 30}
  %t230 = icmp eq i64 %t228, 0
  store i1 %t230, ptr %l156, !tbaa !21
  br label %bb72
bb72:
  %t231 = load i1, ptr %l156, !tbaa !21
  br i1 %t231, label %bb73, label %bb74
bb73:
  br label %bb75
bb74:
  br label %bb78
bb75:
  %t232 = load ptr, ptr %l6, !tbaa !29
  %t234 = getelementptr %"compiler/ast:Multi", ptr %t232, i32 0, i32 1
  %t235 = load i1, ptr %t234, !tbaa !21
  br i1 %t235, label %bb76, label %bb77
bb76:
  br label %bb84
bb77:
  br label %bb78
bb78:
  br i1 true, label %bb79, label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb83
bb81:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t238 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %t237, ptr %t238)
  br label %bb82
bb82:
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_6dda337cc9644709_4e0ee1c3f9c7cc4d)
  unreachable
bb84:
  call void @__olang_scope_close(ptr %s13)
  br label %bb85
bb85:
  %t241 = load i64, ptr %l12, !tbaa !24
  %t243 = add i64 %t241, 1
  store i64 %t243, ptr %l12, !tbaa !24
  br label %bb53
bb86:
  br label %bb276
bb87:
  %t245 = load ptr, ptr %l1, !tbaa !29
  store ptr %t245, ptr %l165, !tbaa !29
  store i1 false, ptr %l166, !tbaa !21
  %t246 = load ptr, ptr %l165, !tbaa !29
  %t247 = icmp ne ptr %t246, null
  br i1 %t247, label %bb88, label %bb89
bb88:
  %t249 = load ptr, ptr %l165, !tbaa !29
  %t250 = load i64, ptr %t249, !range !{i64 0, i64 22}
  %t252 = icmp eq i64 %t250, 3
  store i1 %t252, ptr %l166, !tbaa !21
  br label %bb89
bb89:
  %t253 = load i1, ptr %l166, !tbaa !21
  br i1 %t253, label %bb90, label %bb91
bb90:
  %t254 = load ptr, ptr %l1, !tbaa !29
  %t256 = getelementptr { i64, [4 x i64] }, ptr %t254, i32 0, i32 1
  %t257 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t256, i32 0, i32 2
  %t258 = load ptr, ptr %t257
  store ptr %t258, ptr %l17, !tbaa !29
  %t260 = load ptr, ptr %l1, !tbaa !29
  %t262 = getelementptr { i64, [4 x i64] }, ptr %t260, i32 0, i32 1
  %t263 = getelementptr { %"compiler/source:Span", i32, ptr, ptr }, ptr %t262, i32 0, i32 3
  %t264 = load ptr, ptr %t263
  store ptr %t264, ptr %l18, !tbaa !29
  br label %bb92
bb91:
  br label %bb95
bb92:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %t266, ptr %t267)
  br label %bb93
bb93:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t271 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t270, ptr %t271)
  br label %bb94
bb94:
  br label %bb276
bb95:
  %t275 = load ptr, ptr %l1, !tbaa !29
  store ptr %t275, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t276 = load ptr, ptr %l178, !tbaa !29
  %t277 = icmp ne ptr %t276, null
  br i1 %t277, label %bb96, label %bb97
bb96:
  %t279 = load ptr, ptr %l178, !tbaa !29
  %t280 = load i64, ptr %t279, !range !{i64 0, i64 22}
  %t282 = icmp eq i64 %t280, 4
  store i1 %t282, ptr %l179, !tbaa !21
  br label %bb97
bb97:
  %t283 = load i1, ptr %l179, !tbaa !21
  br i1 %t283, label %bb98, label %bb99
bb98:
  %t284 = load ptr, ptr %l1, !tbaa !29
  %t286 = getelementptr { i64, [4 x i64] }, ptr %t284, i32 0, i32 1
  %t287 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t286, i32 0, i32 1
  %t288 = load ptr, ptr %t287
  store ptr %t288, ptr %l19, !tbaa !29
  %t290 = load ptr, ptr %l1, !tbaa !29
  %t292 = getelementptr { i64, [4 x i64] }, ptr %t290, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t292, i32 0, i32 2
  %t294 = load { i64, ptr }, ptr %t293
  store { i64, ptr } %t294, ptr %l20, !tbaa !27
  br label %bb100
bb99:
  br label %bb103
bb100:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t297 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t296, ptr %t297)
  br label %bb101
bb101:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l20, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eclauses(ptr %v0, ptr %v1, ptr %t301, { i64, ptr } %t302)
  br label %bb102
bb102:
  br label %bb276
bb103:
  %t305 = load ptr, ptr %l1, !tbaa !29
  store ptr %t305, ptr %l191, !tbaa !29
  store i1 false, ptr %l192, !tbaa !21
  %t306 = load ptr, ptr %l191, !tbaa !29
  %t307 = icmp ne ptr %t306, null
  br i1 %t307, label %bb104, label %bb105
bb104:
  %t309 = load ptr, ptr %l191, !tbaa !29
  %t310 = load i64, ptr %t309, !range !{i64 0, i64 22}
  %t312 = icmp eq i64 %t310, 5
  store i1 %t312, ptr %l192, !tbaa !21
  br label %bb105
bb105:
  %t313 = load i1, ptr %l192, !tbaa !21
  br i1 %t313, label %bb106, label %bb107
bb106:
  %t314 = load ptr, ptr %l1, !tbaa !29
  %t316 = getelementptr { i64, [4 x i64] }, ptr %t314, i32 0, i32 1
  %t317 = getelementptr { %"compiler/source:Span", ptr }, ptr %t316, i32 0, i32 1
  %t318 = load ptr, ptr %t317
  store ptr %t318, ptr %l21, !tbaa !29
  br label %bb108
bb107:
  br label %bb110
bb108:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load ptr, ptr %l21, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eifStmt(ptr %v0, ptr %v1, ptr %t320, ptr %t321)
  br label %bb109
bb109:
  br label %bb276
bb110:
  %t324 = load ptr, ptr %l1, !tbaa !29
  store ptr %t324, ptr %l199, !tbaa !29
  store i1 false, ptr %l200, !tbaa !21
  %t325 = load ptr, ptr %l199, !tbaa !29
  %t326 = icmp ne ptr %t325, null
  br i1 %t326, label %bb111, label %bb112
bb111:
  %t328 = load ptr, ptr %l199, !tbaa !29
  %t329 = load i64, ptr %t328, !range !{i64 0, i64 22}
  %t331 = icmp eq i64 %t329, 6
  store i1 %t331, ptr %l200, !tbaa !21
  br label %bb112
bb112:
  %t332 = load i1, ptr %l200, !tbaa !21
  br i1 %t332, label %bb113, label %bb114
bb113:
  %t333 = load ptr, ptr %l1, !tbaa !29
  %t335 = getelementptr { i64, [4 x i64] }, ptr %t333, i32 0, i32 1
  %t336 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t335, i32 0, i32 1
  %t337 = load { i64, ptr }, ptr %t336
  store { i64, ptr } %t337, ptr %l22, !tbaa !27
  br label %bb115
bb114:
  br label %bb117
bb115:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load { i64, ptr }, ptr %l22, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t339, { i64, ptr } %t340)
  br label %bb116
bb116:
  br label %bb276
bb117:
  %t343 = load ptr, ptr %l1, !tbaa !29
  store ptr %t343, ptr %l207, !tbaa !29
  store i1 false, ptr %l208, !tbaa !21
  %t344 = load ptr, ptr %l207, !tbaa !29
  %t345 = icmp ne ptr %t344, null
  br i1 %t345, label %bb118, label %bb119
bb118:
  %t347 = load ptr, ptr %l207, !tbaa !29
  %t348 = load i64, ptr %t347, !range !{i64 0, i64 22}
  %t350 = icmp eq i64 %t348, 7
  store i1 %t350, ptr %l208, !tbaa !21
  br label %bb119
bb119:
  %t351 = load i1, ptr %l208, !tbaa !21
  br i1 %t351, label %bb120, label %bb121
bb120:
  %t352 = load ptr, ptr %l1, !tbaa !29
  %t354 = getelementptr { i64, [4 x i64] }, ptr %t352, i32 0, i32 1
  %t355 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t354, i32 0, i32 1
  %t356 = load ptr, ptr %t355
  store ptr %t356, ptr %l23, !tbaa !29
  %t358 = load ptr, ptr %l1, !tbaa !29
  %t360 = getelementptr { i64, [4 x i64] }, ptr %t358, i32 0, i32 1
  %t361 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t360, i32 0, i32 2
  %t362 = load { i64, ptr }, ptr %t361
  store { i64, ptr } %t362, ptr %l24, !tbaa !27
  br label %bb122
bb121:
  br label %bb125
bb122:
  %t364 = load ptr, ptr %l0, !tbaa !29
  %t365 = load ptr, ptr %l23, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t364, ptr %t365)
  br label %bb123
bb123:
  %t369 = load ptr, ptr %l0, !tbaa !29
  %t370 = load { i64, ptr }, ptr %l24, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t369, { i64, ptr } %t370)
  br label %bb124
bb124:
  br label %bb276
bb125:
  %t373 = load ptr, ptr %l1, !tbaa !29
  store ptr %t373, ptr %l220, !tbaa !29
  store i1 false, ptr %l221, !tbaa !21
  %t374 = load ptr, ptr %l220, !tbaa !29
  %t375 = icmp ne ptr %t374, null
  br i1 %t375, label %bb126, label %bb127
bb126:
  %t377 = load ptr, ptr %l220, !tbaa !29
  %t378 = load i64, ptr %t377, !range !{i64 0, i64 22}
  %t380 = icmp eq i64 %t378, 8
  store i1 %t380, ptr %l221, !tbaa !21
  br label %bb127
bb127:
  %t381 = load i1, ptr %l221, !tbaa !21
  br i1 %t381, label %bb128, label %bb129
bb128:
  %t382 = load ptr, ptr %l1, !tbaa !29
  %t384 = getelementptr { i64, [4 x i64] }, ptr %t382, i32 0, i32 1
  %t385 = getelementptr { %"compiler/source:Span", ptr }, ptr %t384, i32 0, i32 1
  %t386 = load ptr, ptr %t385
  store ptr %t386, ptr %l25, !tbaa !29
  br label %bb130
bb129:
  br label %bb140
bb130:
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t388)
  store i64 %t390, ptr %l227
  br label %bb131
bb131:
  %t391 = load i64, ptr %l227, !tbaa !24
  store i64 %t391, ptr %l26, !tbaa !24
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t393 = load ptr, ptr %l25, !tbaa !29
  %t395 = getelementptr %"compiler/ast:For3", ptr %t393, i32 0, i32 0
  %t396 = load ptr, ptr %t395, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t392, ptr %t396)
  br label %bb132
bb132:
  %t400 = load ptr, ptr %l25, !tbaa !29
  %t402 = getelementptr %"compiler/ast:For3", ptr %t400, i32 0, i32 1
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t405 = icmp eq ptr %t403, null
  %t407 = xor i1 %t405, true
  br i1 %t407, label %bb133, label %bb134
bb133:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t410 = load ptr, ptr %l25, !tbaa !29
  %t412 = getelementptr %"compiler/ast:For3", ptr %t410, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t409, ptr %t413)
  br label %bb135
bb134:
  br label %bb136
bb135:
  br label %bb136
bb136:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load ptr, ptr %l25, !tbaa !29
  %t419 = getelementptr %"compiler/ast:For3", ptr %t417, i32 0, i32 2
  %t420 = load ptr, ptr %t419, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t416, ptr %t420)
  br label %bb137
bb137:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load ptr, ptr %l25, !tbaa !29
  %t427 = getelementptr %"compiler/ast:For3", ptr %t425, i32 0, i32 3
  %t428 = load { i64, ptr }, ptr %t427, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t424, { i64, ptr } %t428)
  br label %bb138
bb138:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t431, i64 %t432)
  br label %bb139
bb139:
  br label %bb276
bb140:
  %t435 = load ptr, ptr %l1, !tbaa !29
  store ptr %t435, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t436 = load ptr, ptr %l248, !tbaa !29
  %t437 = icmp ne ptr %t436, null
  br i1 %t437, label %bb141, label %bb142
bb141:
  %t439 = load ptr, ptr %l248, !tbaa !29
  %t440 = load i64, ptr %t439, !range !{i64 0, i64 22}
  %t442 = icmp eq i64 %t440, 9
  store i1 %t442, ptr %l249, !tbaa !21
  br label %bb142
bb142:
  %t443 = load i1, ptr %l249, !tbaa !21
  br i1 %t443, label %bb143, label %bb144
bb143:
  %t444 = load ptr, ptr %l1, !tbaa !29
  %t446 = getelementptr { i64, [4 x i64] }, ptr %t444, i32 0, i32 1
  %t447 = getelementptr { %"compiler/source:Span", ptr }, ptr %t446, i32 0, i32 0
  %t448 = load %"compiler/source:Span", ptr %t447
  store %"compiler/source:Span" %t448, ptr %l27
  %t450 = load ptr, ptr %l1, !tbaa !29
  %t452 = getelementptr { i64, [4 x i64] }, ptr %t450, i32 0, i32 1
  %t453 = getelementptr { %"compiler/source:Span", ptr }, ptr %t452, i32 0, i32 1
  %t454 = load ptr, ptr %t453
  store ptr %t454, ptr %l28, !tbaa !29
  br label %bb145
bb144:
  br label %bb152
bb145:
  %t456 = load ptr, ptr %l0, !tbaa !29
  %t457 = load ptr, ptr %l28, !tbaa !29
  %t459 = getelementptr %"compiler/ast:ForIn", ptr %t457, i32 0, i32 2
  %t460 = load ptr, ptr %t459, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t456, ptr %t460)
  br label %bb146
bb146:
  %t464 = load ptr, ptr %l0, !tbaa !29
  %t466 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t464)
  store i64 %t466, ptr %l261
  br label %bb147
bb147:
  %t467 = load i64, ptr %l261, !tbaa !24
  store i64 %t467, ptr %l29, !tbaa !24
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/source:Span", ptr %l27, i32 0, i32 0
  %t470 = load i32, ptr %t469, !tbaa !23
  %t471 = load ptr, ptr %l28, !tbaa !29
  %t473 = getelementptr %"compiler/ast:ForIn", ptr %t471, i32 0, i32 0
  %t474 = load i32, ptr %t473, !tbaa !23
  %t475 = load ptr, ptr %l28, !tbaa !29
  %t477 = getelementptr %"compiler/ast:ForIn", ptr %t475, i32 0, i32 1
  %t478 = load i32, ptr %t477, !tbaa !23
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforNames(ptr %v0, ptr %t468, i32 %t470, i32 %t474, i32 %t478)
  br label %bb148
bb148:
  %t483 = load ptr, ptr %l0, !tbaa !29
  %t484 = load ptr, ptr %l28, !tbaa !29
  %t486 = getelementptr %"compiler/ast:ForIn", ptr %t484, i32 0, i32 4
  %t487 = load { i64, ptr }, ptr %t486, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t483, { i64, ptr } %t487)
  br label %bb149
bb149:
  %t490 = load ptr, ptr %l0, !tbaa !29
  %t491 = load i64, ptr %l29, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t490, i64 %t491)
  br label %bb150
bb150:
  %t494 = load ptr, ptr %l0, !tbaa !29
  %t495 = load ptr, ptr %l28, !tbaa !29
  %t497 = getelementptr %"compiler/ast:ForIn", ptr %t495, i32 0, i32 5
  %t498 = load { i64, ptr }, ptr %t497, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eclauses(ptr %v0, ptr %v1, ptr %t494, { i64, ptr } %t498)
  br label %bb151
bb151:
  br label %bb276
bb152:
  %t501 = load ptr, ptr %l1, !tbaa !29
  store ptr %t501, ptr %l276, !tbaa !29
  store i1 false, ptr %l277, !tbaa !21
  %t502 = load ptr, ptr %l276, !tbaa !29
  %t503 = icmp ne ptr %t502, null
  br i1 %t503, label %bb153, label %bb154
bb153:
  %t505 = load ptr, ptr %l276, !tbaa !29
  %t506 = load i64, ptr %t505, !range !{i64 0, i64 22}
  %t508 = icmp eq i64 %t506, 10
  store i1 %t508, ptr %l277, !tbaa !21
  br label %bb154
bb154:
  %t509 = load i1, ptr %l277, !tbaa !21
  br i1 %t509, label %bb155, label %bb156
bb155:
  %t510 = load ptr, ptr %l1, !tbaa !29
  %t512 = getelementptr { i64, [4 x i64] }, ptr %t510, i32 0, i32 1
  %t513 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t512, i32 0, i32 1
  %t514 = load { i64, ptr }, ptr %t513
  store { i64, ptr } %t514, ptr %l30, !tbaa !27
  %t516 = load ptr, ptr %l1, !tbaa !29
  %t518 = getelementptr { i64, [4 x i64] }, ptr %t516, i32 0, i32 1
  %t519 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t518, i32 0, i32 2
  %t520 = load ptr, ptr %t519
  store ptr %t520, ptr %l31, !tbaa !29
  br label %bb157
bb156:
  br label %bb160
bb157:
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t523 = load { i64, ptr }, ptr %l30, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t522, { i64, ptr } %t523)
  br label %bb158
bb158:
  %t526 = load ptr, ptr %l0, !tbaa !29
  %t527 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t526, ptr %t527)
  br label %bb159
bb159:
  br label %bb276
bb160:
  %t531 = load ptr, ptr %l1, !tbaa !29
  store ptr %t531, ptr %l289, !tbaa !29
  store i1 false, ptr %l290, !tbaa !21
  %t532 = load ptr, ptr %l289, !tbaa !29
  %t533 = icmp ne ptr %t532, null
  br i1 %t533, label %bb161, label %bb162
bb161:
  %t535 = load ptr, ptr %l289, !tbaa !29
  %t536 = load i64, ptr %t535, !range !{i64 0, i64 22}
  %t538 = icmp eq i64 %t536, 11
  store i1 %t538, ptr %l290, !tbaa !21
  br label %bb162
bb162:
  %t539 = load i1, ptr %l290, !tbaa !21
  br i1 %t539, label %bb163, label %bb164
bb163:
  %t540 = load ptr, ptr %l1, !tbaa !29
  %t542 = getelementptr { i64, [4 x i64] }, ptr %t540, i32 0, i32 1
  %t543 = getelementptr { %"compiler/source:Span", ptr }, ptr %t542, i32 0, i32 1
  %t544 = load ptr, ptr %t543
  store ptr %t544, ptr %l32, !tbaa !29
  br label %bb165
bb164:
  br label %bb167
bb165:
  %t546 = load ptr, ptr %l0, !tbaa !29
  %t547 = load ptr, ptr %l32, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ematchOf(ptr %v0, ptr %v1, ptr %t546, ptr %t547)
  br label %bb166
bb166:
  br label %bb276
bb167:
  %t550 = load ptr, ptr %l1, !tbaa !29
  store ptr %t550, ptr %l297, !tbaa !29
  store i1 false, ptr %l298, !tbaa !21
  %t551 = load ptr, ptr %l297, !tbaa !29
  %t552 = icmp ne ptr %t551, null
  br i1 %t552, label %bb168, label %bb169
bb168:
  %t554 = load ptr, ptr %l297, !tbaa !29
  %t555 = load i64, ptr %t554, !range !{i64 0, i64 22}
  %t557 = icmp eq i64 %t555, 12
  store i1 %t557, ptr %l298, !tbaa !21
  br label %bb169
bb169:
  %t558 = load i1, ptr %l298, !tbaa !21
  br i1 %t558, label %bb170, label %bb171
bb170:
  %t559 = load ptr, ptr %l1, !tbaa !29
  %t561 = getelementptr { i64, [4 x i64] }, ptr %t559, i32 0, i32 1
  %t562 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t561, i32 0, i32 1
  %t563 = load { i64, ptr }, ptr %t562
  store { i64, ptr } %t563, ptr %l33, !tbaa !27
  br label %bb172
bb171:
  br label %bb180
bb172:
  %t565 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t565, ptr %l34, !tbaa !27
  store i64 0, ptr %l35, !tbaa !24
  %t567 = load { i64, ptr }, ptr %l34, !tbaa !27
  %t569 = extractvalue { i64, ptr } %t567, 0
  store i64 %t569, ptr %l36, !tbaa !24
  br label %bb173
bb173:
  %t571 = load i64, ptr %l35, !tbaa !24
  %t572 = load i64, ptr %l36, !tbaa !24
  %t575 = icmp slt i64 %t571, %t572
  %t577 = xor i1 %t575, true
  br i1 %t577, label %bb174, label %bb175
bb174:
  br label %bb179
bb175:
  br label %bb176
bb176:
  %t579 = load { i64, ptr }, ptr %l34, !tbaa !27
  store { i64, ptr } %t579, ptr %l310, !tbaa !27
  %t580 = load i64, ptr %l35, !tbaa !24
  %t582 = getelementptr { i64, ptr }, ptr %l310, i32 0, i32 1
  %t583 = load ptr, ptr %t582, !tbaa !27
  %t584 = getelementptr ptr, ptr %t583, i64 %t580
  %t585 = load ptr, ptr %t584, !tbaa !39
  %t587 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t587, ptr %t585)
  br label %bb177
bb177:
  br label %bb178
bb178:
  %t592 = load i64, ptr %l35, !tbaa !24
  %t594 = add i64 %t592, 1
  store i64 %t594, ptr %l35, !tbaa !24
  br label %bb173
bb179:
  br label %bb276
bb180:
  %t596 = load ptr, ptr %l1, !tbaa !29
  store ptr %t596, ptr %l318, !tbaa !29
  store i1 false, ptr %l319, !tbaa !21
  %t597 = load ptr, ptr %l318, !tbaa !29
  %t598 = icmp ne ptr %t597, null
  br i1 %t598, label %bb181, label %bb182
bb181:
  %t600 = load ptr, ptr %l318, !tbaa !29
  %t601 = load i64, ptr %t600, !range !{i64 0, i64 22}
  %t603 = icmp eq i64 %t601, 21
  store i1 %t603, ptr %l319, !tbaa !21
  br label %bb182
bb182:
  %t604 = load i1, ptr %l319, !tbaa !21
  br i1 %t604, label %bb183, label %bb184
bb183:
  %t605 = load ptr, ptr %l1, !tbaa !29
  %t607 = getelementptr { i64, [4 x i64] }, ptr %t605, i32 0, i32 1
  %t608 = getelementptr { %"compiler/source:Span", ptr }, ptr %t607, i32 0, i32 1
  %t609 = load ptr, ptr %t608
  store ptr %t609, ptr %l38, !tbaa !29
  br label %bb189
bb184:
  %t611 = load ptr, ptr %l1, !tbaa !29
  store ptr %t611, ptr %l324, !tbaa !29
  store i1 false, ptr %l325, !tbaa !21
  %t612 = load ptr, ptr %l324, !tbaa !29
  %t613 = icmp ne ptr %t612, null
  br i1 %t613, label %bb185, label %bb186
bb185:
  %t615 = load ptr, ptr %l324, !tbaa !29
  %t616 = load i64, ptr %t615, !range !{i64 0, i64 22}
  %t618 = icmp eq i64 %t616, 15
  store i1 %t618, ptr %l325, !tbaa !21
  br label %bb186
bb186:
  %t619 = load i1, ptr %l325, !tbaa !21
  br i1 %t619, label %bb187, label %bb188
bb187:
  %t620 = load ptr, ptr %l1, !tbaa !29
  %t622 = getelementptr { i64, [4 x i64] }, ptr %t620, i32 0, i32 1
  %t623 = getelementptr { %"compiler/source:Span", ptr }, ptr %t622, i32 0, i32 1
  %t624 = load ptr, ptr %t623
  store ptr %t624, ptr %l38, !tbaa !29
  br label %bb189
bb188:
  br label %bb191
bb189:
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t627 = load ptr, ptr %l38, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t626, ptr %t627)
  br label %bb190
bb190:
  br label %bb276
bb191:
  %t631 = load ptr, ptr %l1, !tbaa !29
  store ptr %t631, ptr %l333, !tbaa !29
  store i1 false, ptr %l334, !tbaa !21
  %t632 = load ptr, ptr %l333, !tbaa !29
  %t633 = icmp ne ptr %t632, null
  br i1 %t633, label %bb192, label %bb193
bb192:
  %t635 = load ptr, ptr %l333, !tbaa !29
  %t636 = load i64, ptr %t635, !range !{i64 0, i64 22}
  %t638 = icmp eq i64 %t636, 14
  store i1 %t638, ptr %l334, !tbaa !21
  br label %bb193
bb193:
  %t639 = load i1, ptr %l334, !tbaa !21
  br i1 %t639, label %bb194, label %bb195
bb194:
  %t640 = load ptr, ptr %l1, !tbaa !29
  %t642 = getelementptr { i64, [4 x i64] }, ptr %t640, i32 0, i32 1
  %t643 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t642, i32 0, i32 1
  %t644 = load ptr, ptr %t643
  store ptr %t644, ptr %l39, !tbaa !29
  %t646 = load ptr, ptr %l1, !tbaa !29
  %t648 = getelementptr { i64, [4 x i64] }, ptr %t646, i32 0, i32 1
  %t649 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t648, i32 0, i32 2
  %t650 = load ptr, ptr %t649
  store ptr %t650, ptr %l40, !tbaa !29
  br label %bb196
bb195:
  br label %bb202
bb196:
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t653 = load ptr, ptr %l39, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t652, ptr %t653)
  br label %bb197
bb197:
  %t657 = load ptr, ptr %l40, !tbaa !29
  %t659 = icmp eq ptr %t657, null
  %t661 = xor i1 %t659, true
  br i1 %t661, label %bb198, label %bb199
bb198:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load ptr, ptr %l40, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t663, ptr %t664)
  br label %bb200
bb199:
  br label %bb201
bb200:
  br label %bb201
bb201:
  br label %bb276
bb202:
  %t668 = load ptr, ptr %l1, !tbaa !29
  store ptr %t668, ptr %l350, !tbaa !29
  store i1 false, ptr %l351, !tbaa !21
  %t669 = load ptr, ptr %l350, !tbaa !29
  %t670 = icmp ne ptr %t669, null
  br i1 %t670, label %bb203, label %bb204
bb203:
  %t672 = load ptr, ptr %l350, !tbaa !29
  %t673 = load i64, ptr %t672, !range !{i64 0, i64 22}
  %t675 = icmp eq i64 %t673, 13
  store i1 %t675, ptr %l351, !tbaa !21
  br label %bb204
bb204:
  %t676 = load i1, ptr %l351, !tbaa !21
  br i1 %t676, label %bb205, label %bb206
bb205:
  %t677 = load ptr, ptr %l1, !tbaa !29
  %t679 = getelementptr { i64, [4 x i64] }, ptr %t677, i32 0, i32 1
  %t680 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t679, i32 0, i32 2
  %t681 = load ptr, ptr %t680
  store ptr %t681, ptr %l41, !tbaa !29
  br label %bb207
bb206:
  br label %bb212
bb207:
  %t683 = load ptr, ptr %l41, !tbaa !29
  %t685 = icmp eq ptr %t683, null
  %t687 = xor i1 %t685, true
  br i1 %t687, label %bb208, label %bb209
bb208:
  %t689 = load ptr, ptr %l0, !tbaa !29
  %t690 = load ptr, ptr %l41, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t689, ptr %t690)
  br label %bb210
bb209:
  br label %bb211
bb210:
  br label %bb211
bb211:
  br label %bb276
bb212:
  %t694 = load ptr, ptr %l1, !tbaa !29
  store ptr %t694, ptr %l362, !tbaa !29
  store i1 false, ptr %l363, !tbaa !21
  %t695 = load ptr, ptr %l362, !tbaa !29
  %t696 = icmp ne ptr %t695, null
  br i1 %t696, label %bb213, label %bb214
bb213:
  %t698 = load ptr, ptr %l362, !tbaa !29
  %t699 = load i64, ptr %t698, !range !{i64 0, i64 22}
  %t701 = icmp eq i64 %t699, 16
  store i1 %t701, ptr %l363, !tbaa !21
  br label %bb214
bb214:
  %t702 = load i1, ptr %l363, !tbaa !21
  br i1 %t702, label %bb215, label %bb216
bb215:
  %t703 = load ptr, ptr %l1, !tbaa !29
  %t705 = getelementptr { i64, [4 x i64] }, ptr %t703, i32 0, i32 1
  %t706 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t705, i32 0, i32 1
  %t707 = load ptr, ptr %t706
  store ptr %t707, ptr %l42, !tbaa !29
  %t709 = load ptr, ptr %l1, !tbaa !29
  %t711 = getelementptr { i64, [4 x i64] }, ptr %t709, i32 0, i32 1
  %t712 = getelementptr { %"compiler/source:Span", ptr, { i64, ptr } }, ptr %t711, i32 0, i32 2
  %t713 = load { i64, ptr }, ptr %t712
  store { i64, ptr } %t713, ptr %l43, !tbaa !27
  br label %bb217
bb216:
  br label %bb233
bb217:
  %t715 = load ptr, ptr %l0, !tbaa !29
  %t717 = getelementptr %"compiler/names:Resolver", ptr %t715, i32 0, i32 22
  %t718 = load i1, ptr %t717, !tbaa !21
  br i1 %t718, label %bb218, label %bb219
bb218:
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load ptr, ptr %l42, !tbaa !29
  %t722 = load { i64, ptr }, ptr %l43, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyRaise(ptr %v0, ptr %v1, ptr %v1, ptr %t720, ptr %t721, { i64, ptr } %t722)
  br label %bb220
bb219:
  %t726 = load ptr, ptr %l0, !tbaa !29
  %t727 = load ptr, ptr %l42, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t726, ptr %t727)
  br label %bb221
bb220:
  br label %bb222
bb221:
  br label %bb222
bb222:
  %t730 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t732 = extractvalue { i64, ptr } %t730, 0
  %t733 = extractvalue { i64, ptr } { i64 -1, ptr null }, 0
  %t734 = icmp eq i64 %t732, %t733
  %t735 = extractvalue { i64, ptr } %t730, 1
  %t736 = extractvalue { i64, ptr } { i64 -1, ptr null }, 1
  %t737 = icmp eq ptr %t735, %t736
  %t738 = and i1 %t734, %t737
  %t740 = xor i1 %t738, true
  br i1 %t740, label %bb223, label %bb224
bb223:
  %t742 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t742, ptr %l44, !tbaa !27
  store i64 0, ptr %l45, !tbaa !24
  %t744 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t746 = extractvalue { i64, ptr } %t744, 0
  store i64 %t746, ptr %l46, !tbaa !24
  br label %bb225
bb224:
  br label %bb232
bb225:
  %t748 = load i64, ptr %l45, !tbaa !24
  %t749 = load i64, ptr %l46, !tbaa !24
  %t752 = icmp slt i64 %t748, %t749
  %t754 = xor i1 %t752, true
  br i1 %t754, label %bb226, label %bb227
bb226:
  br label %bb231
bb227:
  br label %bb228
bb228:
  %t756 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t756, ptr %l387, !tbaa !27
  %t757 = load i64, ptr %l45, !tbaa !24
  %t759 = getelementptr { i64, ptr }, ptr %l387, i32 0, i32 1
  %t760 = load ptr, ptr %t759, !tbaa !27
  %t761 = getelementptr ptr, ptr %t760, i64 %t757
  %t762 = load ptr, ptr %t761, !tbaa !39
  %t764 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t764, ptr %t762)
  br label %bb229
bb229:
  br label %bb230
bb230:
  %t769 = load i64, ptr %l45, !tbaa !24
  %t771 = add i64 %t769, 1
  store i64 %t771, ptr %l45, !tbaa !24
  br label %bb225
bb231:
  br label %bb232
bb232:
  br label %bb276
bb233:
  %t773 = load ptr, ptr %l1, !tbaa !29
  store ptr %t773, ptr %l395, !tbaa !29
  store i1 false, ptr %l396, !tbaa !21
  %t774 = load ptr, ptr %l395, !tbaa !29
  %t775 = icmp ne ptr %t774, null
  br i1 %t775, label %bb234, label %bb235
bb234:
  %t777 = load ptr, ptr %l395, !tbaa !29
  %t778 = load i64, ptr %t777, !range !{i64 0, i64 22}
  %t780 = icmp eq i64 %t778, 17
  store i1 %t780, ptr %l396, !tbaa !21
  br label %bb235
bb235:
  %t781 = load i1, ptr %l396, !tbaa !21
  br i1 %t781, label %bb236, label %bb237
bb236:
  %t782 = load ptr, ptr %l1, !tbaa !29
  %t784 = getelementptr { i64, [4 x i64] }, ptr %t782, i32 0, i32 1
  %t785 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t784, i32 0, i32 1
  %t786 = load { i64, ptr }, ptr %t785
  store { i64, ptr } %t786, ptr %l48, !tbaa !27
  %t788 = load ptr, ptr %l1, !tbaa !29
  %t790 = getelementptr { i64, [4 x i64] }, ptr %t788, i32 0, i32 1
  %t791 = getelementptr { %"compiler/source:Span", { i64, ptr }, ptr }, ptr %t790, i32 0, i32 2
  %t792 = load ptr, ptr %t791
  store ptr %t792, ptr %l49, !tbaa !29
  br label %bb238
bb237:
  br label %bb247
bb238:
  %t794 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t794, ptr %l50, !tbaa !27
  store i64 0, ptr %l51, !tbaa !24
  %t796 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t798 = extractvalue { i64, ptr } %t796, 0
  store i64 %t798, ptr %l52, !tbaa !24
  br label %bb239
bb239:
  %t800 = load i64, ptr %l51, !tbaa !24
  %t801 = load i64, ptr %l52, !tbaa !24
  %t804 = icmp slt i64 %t800, %t801
  %t806 = xor i1 %t804, true
  br i1 %t806, label %bb240, label %bb241
bb240:
  br label %bb245
bb241:
  br label %bb242
bb242:
  %t808 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t808, ptr %l410, !tbaa !27
  %t809 = load i64, ptr %l51, !tbaa !24
  %t811 = getelementptr { i64, ptr }, ptr %l410, i32 0, i32 1
  %t812 = load ptr, ptr %t811, !tbaa !27
  %t813 = getelementptr ptr, ptr %t812, i64 %t809
  %t814 = load ptr, ptr %t813, !tbaa !39
  %t816 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %t816, ptr %t814)
  br label %bb243
bb243:
  br label %bb244
bb244:
  %t820 = load i64, ptr %l51, !tbaa !24
  %t822 = add i64 %t820, 1
  store i64 %t822, ptr %l51, !tbaa !24
  br label %bb239
bb245:
  %t824 = load ptr, ptr %l0, !tbaa !29
  %t825 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t824, ptr %t825)
  br label %bb246
bb246:
  br label %bb276
bb247:
  %t829 = load ptr, ptr %l1, !tbaa !29
  store ptr %t829, ptr %l420, !tbaa !29
  store i1 false, ptr %l421, !tbaa !21
  %t830 = load ptr, ptr %l420, !tbaa !29
  %t831 = icmp ne ptr %t830, null
  br i1 %t831, label %bb248, label %bb249
bb248:
  %t833 = load ptr, ptr %l420, !tbaa !29
  %t834 = load i64, ptr %t833, !range !{i64 0, i64 22}
  %t836 = icmp eq i64 %t834, 18
  store i1 %t836, ptr %l421, !tbaa !21
  br label %bb249
bb249:
  %t837 = load i1, ptr %l421, !tbaa !21
  br i1 %t837, label %bb250, label %bb251
bb250:
  %t838 = load ptr, ptr %l1, !tbaa !29
  %t840 = getelementptr { i64, [4 x i64] }, ptr %t838, i32 0, i32 1
  %t841 = getelementptr { %"compiler/source:Span", ptr }, ptr %t840, i32 0, i32 1
  %t842 = load ptr, ptr %t841
  store ptr %t842, ptr %l54, !tbaa !29
  br label %bb252
bb251:
  br label %bb255
bb252:
  %t844 = load ptr, ptr %l0, !tbaa !29
  %t845 = load ptr, ptr %l54, !tbaa !29
  %t847 = getelementptr %"compiler/ast:JoinS", ptr %t845, i32 0, i32 1
  %t848 = load { i64, ptr }, ptr %t847, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t844, { i64, ptr } %t848)
  br label %bb253
bb253:
  %t851 = load ptr, ptr %l0, !tbaa !29
  %t852 = load ptr, ptr %l54, !tbaa !29
  %t854 = getelementptr %"compiler/ast:JoinS", ptr %t852, i32 0, i32 2
  %t855 = load { i64, ptr }, ptr %t854, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eclauses(ptr %v0, ptr %v1, ptr %t851, { i64, ptr } %t855)
  br label %bb254
bb254:
  br label %bb276
bb255:
  %t858 = load ptr, ptr %l1, !tbaa !29
  store ptr %t858, ptr %l432, !tbaa !29
  store i1 false, ptr %l433, !tbaa !21
  %t859 = load ptr, ptr %l432, !tbaa !29
  %t860 = icmp ne ptr %t859, null
  br i1 %t860, label %bb256, label %bb257
bb256:
  %t862 = load ptr, ptr %l432, !tbaa !29
  %t863 = load i64, ptr %t862, !range !{i64 0, i64 22}
  %t865 = icmp eq i64 %t863, 19
  store i1 %t865, ptr %l433, !tbaa !21
  br label %bb257
bb257:
  %t866 = load i1, ptr %l433, !tbaa !21
  br i1 %t866, label %bb258, label %bb259
bb258:
  %t867 = load ptr, ptr %l1, !tbaa !29
  %t869 = getelementptr { i64, [4 x i64] }, ptr %t867, i32 0, i32 1
  %t870 = getelementptr { %"compiler/source:Span", ptr, i1 }, ptr %t869, i32 0, i32 1
  %t871 = load ptr, ptr %t870
  store ptr %t871, ptr %l55, !tbaa !29
  br label %bb260
bb259:
  br label %bb264
bb260:
  %t873 = load ptr, ptr %l0, !tbaa !29
  %t875 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t873)
  store i64 %t875, ptr %l439
  br label %bb261
bb261:
  %t876 = load i64, ptr %l439, !tbaa !24
  store i64 %t876, ptr %l56, !tbaa !24
  %t877 = load ptr, ptr %l0, !tbaa !29
  %t878 = load ptr, ptr %l55, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estmt(ptr %v0, ptr %v1, ptr %t877, ptr %t878)
  br label %bb262
bb262:
  %t882 = load ptr, ptr %l0, !tbaa !29
  %t883 = load i64, ptr %l56, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t882, i64 %t883)
  br label %bb263
bb263:
  br label %bb276
bb264:
  %t886 = load ptr, ptr %l1, !tbaa !29
  store ptr %t886, ptr %l445, !tbaa !29
  store i1 false, ptr %l446, !tbaa !21
  %t887 = load ptr, ptr %l445, !tbaa !29
  %t888 = icmp ne ptr %t887, null
  br i1 %t888, label %bb265, label %bb266
bb265:
  %t890 = load ptr, ptr %l445, !tbaa !29
  %t891 = load i64, ptr %t890, !range !{i64 0, i64 22}
  %t893 = icmp eq i64 %t891, 20
  store i1 %t893, ptr %l446, !tbaa !21
  br label %bb266
bb266:
  %t894 = load i1, ptr %l446, !tbaa !21
  br i1 %t894, label %bb267, label %bb268
bb267:
  %t895 = load ptr, ptr %l1, !tbaa !29
  %t897 = getelementptr { i64, [4 x i64] }, ptr %t895, i32 0, i32 1
  %t898 = getelementptr { %"compiler/source:Span", { i64, ptr } }, ptr %t897, i32 0, i32 1
  %t899 = load { i64, ptr }, ptr %t898
  store { i64, ptr } %t899, ptr %l57, !tbaa !27
  br label %bb269
bb268:
  br label %bb271
bb269:
  %t901 = load ptr, ptr %l0, !tbaa !29
  %t902 = load { i64, ptr }, ptr %l57, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t901, { i64, ptr } %t902)
  br label %bb270
bb270:
  br label %bb276
bb271:
  br i1 true, label %bb272, label %bb273
bb272:
  br label %bb274
bb273:
  br label %bb275
bb274:
  br label %bb276
bb275:
  call void @__olang_check_failed(ptr @olang_loc_6c621cf945a32f52_fbb4d8308e24c5b6)
  unreachable
bb276:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyBodies(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 18
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eLen_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/names:Resolver", ptr %t7, i32 0, i32 15
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l11
  br label %bb2
bb2:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/names:Resolver", ptr %t13, i32 0, i32 20
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %t15)
  store i64 %t17, ptr %l14
  br label %bb3
bb3:
  %t18 = load i64, ptr %l14, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/names:Resolver", ptr %t19, i32 0, i32 22
  store i1 true, ptr %t21, !tbaa !21
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/names:Resolver", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  %t27 = getelementptr %"compiler/load:Loader", ptr %t25, i32 0, i32 4
  %t28 = load ptr, ptr %t27, !tbaa !29
  %t30 = getelementptr %"compiler/diag:Diagnostics", ptr %t28, i32 0, i32 22
  store i1 true, ptr %t30, !tbaa !21
  %t31 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodies(ptr %v0, ptr %v1, ptr %t31, i64 %a1, { i64, ptr } %a2)
  br label %bb4
bb4:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/names:Resolver", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  %t42 = getelementptr %"compiler/load:Loader", ptr %t40, i32 0, i32 4
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = getelementptr %"compiler/diag:Diagnostics", ptr %t43, i32 0, i32 22
  store i1 false, ptr %t45, !tbaa !21
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/names:Resolver", ptr %t46, i32 0, i32 22
  store i1 false, ptr %t48, !tbaa !21
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/names:Resolver", ptr %t49, i32 0, i32 18
  %t52 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eTruncate_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %t51, i64 %t52)
  br label %bb5
bb5:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/names:Resolver", ptr %t55, i32 0, i32 15
  %t58 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H30ad8836952c6f4772e34a804c6491c6(ptr %v0, ptr %t57, i64 %t58)
  br label %bb6
bb6:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/names:Resolver", ptr %t61, i32 0, i32 20
  %t64 = load i64, ptr %l5, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H73edf45b0858a6ff3702d25efc23fa6e(ptr %v0, ptr %t63, i64 %t64)
  br label %bb7
bb7:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esurveyRaise(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i1
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i1
  %l21 = alloca { i64, ptr }
  %l25 = alloca %"compiler/names:Ref"
  %l29 = alloca i1
  %l35 = alloca ptr
  %l39 = alloca i1
  %l40 = alloca i1
  %l43 = alloca { i64, ptr }
  %l44 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i64
  %l51 = alloca ptr
  %l54 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l63 = alloca i64
  %l67 = alloca i64
  %l70 = alloca i64
  %l91 = alloca i32
  %l97 = alloca ptr
  %l103 = alloca %"compiler/names:raised"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb3
bb2:
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/ast:Path", ptr %t5, i32 0, i32 1
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  %t10 = extractvalue { i64, ptr } %t8, 0
  %t12 = icmp ne i64 %t10, 1
  store i1 %t12, ptr %l15, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l15, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  br label %bb6
bb6:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/ast:Path", ptr %t15, i32 0, i32 1
  %t18 = load { i64, ptr }, ptr %t17, !tbaa !27
  store { i64, ptr } %t18, ptr %l21, !tbaa !27
  %t19 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr i32, ptr %t20, i64 0
  %t22 = load i32, ptr %t21, !tbaa !33
  store i32 %t22, ptr %l3, !tbaa !23
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i32, ptr %l3, !tbaa !23
  %t28 = call %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2elookup(ptr %v0, ptr %t24, i32 %t25)
  store %"compiler/names:Ref" %t28, ptr %l25
  br label %bb7
bb7:
  %t29 = getelementptr %"compiler/names:Ref", ptr %l25, i32 0, i32 0
  %t30 = load i32, ptr %t29, !range !{i32 0, i32 9}
  %t32 = trunc i64 0 to i32
  %t33 = icmp eq i32 %t30, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb12
bb9:
  %t37 = load i32, ptr %l3, !tbaa !23
  store i32 %t37, ptr %l4, !tbaa !23
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/names:Resolver", ptr %t39, i32 0, i32 1
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/names:Resolver", ptr %t42, i32 0, i32 6
  %t45 = load i64, ptr %t44, !tbaa !24
  %t48 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t41, i64 %t45)
  store ptr %t48, ptr %l35
  br label %bb10
bb10:
  %t49 = load ptr, ptr %l35, !tbaa !29
  %t51 = getelementptr %"compiler/names:Table", ptr %t49, i32 0, i32 4
  %t52 = load i32, ptr %l4, !tbaa !23
  %t55 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t51, i32 %t52)
  store i1 %t55, ptr %l39
  br label %bb11
bb11:
  %t56 = load i1, ptr %l39, !tbaa !21
  store i1 %t56, ptr %l29, !tbaa !21
  br label %bb12
bb12:
  %t57 = load i1, ptr %l29, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l40, !tbaa !21
  br label %bb17
bb14:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l3, !tbaa !23
  %t62 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t58, i32 %t59)
  store { i64, ptr } %t62, ptr %l43
  br label %bb15
bb15:
  %t63 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t63, { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t64, ptr %l44
  br label %bb16
bb16:
  %t65 = load i1, ptr %l44, !tbaa !21
  store i1 %t65, ptr %l40, !tbaa !21
  br label %bb17
bb17:
  %t66 = load i1, ptr %l40, !tbaa !21
  br i1 %t66, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb19:
  br label %bb20
bb20:
  store i1 false, ptr %l5, !tbaa !21
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/names:Resolver", ptr %t67, i32 0, i32 25
  %t71 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t69)
  store i64 %t71, ptr %l47
  br label %bb21
bb21:
  %t72 = load i64, ptr %l47, !tbaa !24
  %t73 = icmp sgt i64 %t72, 0
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/names:Resolver", ptr %t75, i32 0, i32 25
  store ptr %t77, ptr %l51, !tbaa !29
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/names:Resolver", ptr %t78, i32 0, i32 25
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t80)
  store i64 %t82, ptr %l54
  br label %bb24
bb23:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/names:Resolver", ptr %t83, i32 0, i32 24
  %t87 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t85)
  store i64 %t87, ptr %l59
  br label %bb26
bb24:
  %t88 = load i64, ptr %l54, !tbaa !24
  %t89 = sub i64 %t88, 1
  %t90 = load ptr, ptr %l51, !tbaa !29
  %t92 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t90, i64 %t89)
  store i64 %t92, ptr %l56
  br label %bb25
bb25:
  %t93 = load i64, ptr %l56, !tbaa !24
  store i64 %t93, ptr %l49, !tbaa !24
  br label %bb27
bb26:
  %t94 = load i64, ptr %l59, !tbaa !24
  store i64 %t94, ptr %l49, !tbaa !24
  br label %bb27
bb27:
  %t95 = load i64, ptr %l49, !tbaa !24
  store i64 %t95, ptr %l7, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/names:Resolver", ptr %t98, i32 0, i32 24
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l63
  br label %bb28
bb28:
  %t103 = load i64, ptr %l63, !tbaa !24
  store i64 %t103, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = icmp sgt i64 %t104, %t105
  br i1 %t108, label %bb29, label %bb30
bb29:
  %t110 = load i64, ptr %l9, !tbaa !24
  %t112 = icmp sgt i64 %t110, 0
  br i1 %t112, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb34
bb31:
  %t114 = load i64, ptr %l8, !tbaa !24
  %t115 = load i64, ptr %l7, !tbaa !24
  %t118 = sub i64 %t114, %t115
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t124 = sub i64 %t122, 1
  %t125 = load i64, ptr %l9, !tbaa !24
  %t128 = sdiv i64 %t124, %t125
  store i64 %t128, ptr %l70, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb33
bb33:
  %t130 = load i64, ptr %l70, !tbaa !24
  store i64 %t130, ptr %l67, !tbaa !24
  br label %bb34
bb34:
  %t131 = load i64, ptr %l67, !tbaa !24
  store i64 %t131, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb35
bb35:
  %t132 = load i64, ptr %l11, !tbaa !24
  %t133 = load i64, ptr %l10, !tbaa !24
  %t136 = icmp slt i64 %t132, %t133
  %t138 = xor i1 %t136, true
  br i1 %t138, label %bb36, label %bb37
bb36:
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t140 = load i64, ptr %l7, !tbaa !24
  %t141 = load i64, ptr %l11, !tbaa !24
  %t142 = load i64, ptr %l9, !tbaa !24
  %t145 = mul i64 %t141, %t142
  %t148 = add i64 %t140, %t145
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = getelementptr %"compiler/names:Resolver", ptr %t150, i32 0, i32 24
  %t156 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %t152, i64 %t148)
  store i32 %t156, ptr %l91
  br label %bb39
bb39:
  %t157 = load i32, ptr %l3, !tbaa !23
  %t158 = load i32, ptr %l91, !tbaa !23
  %t160 = icmp eq i32 %t158, %t157
  br i1 %t160, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t162 = load i64, ptr %l11, !tbaa !24
  %t164 = add i64 %t162, 1
  store i64 %t164, ptr %l11, !tbaa !24
  br label %bb35
bb44:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/names:Resolver", ptr %t166, i32 0, i32 23
  store ptr %t168, ptr %l97, !tbaa !29
  %t169 = load i32, ptr %l3, !tbaa !23
  %t170 = load ptr, ptr %l1, !tbaa !29
  %t172 = getelementptr %"compiler/ast:Path", ptr %t170, i32 0, i32 0
  %t173 = load %"compiler/source:Span", ptr %t172
  %t174 = load i1, ptr %l5, !tbaa !21
  %t180 = call %"compiler/names:raised" @compiler_2fnames_3araised_2ector(ptr %v2, ptr %v0, i32 %t169, %"compiler/source:Span" %t173, i1 %t174, { i64, ptr } %a2)
  store %"compiler/names:raised" %t180, ptr %l103
  br label %bb45
bb45:
  %t181 = load ptr, ptr %l97, !tbaa !29
  %t182 = load %"compiler/names:raised", ptr %l103
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2ePush_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %v0, ptr %t181, %"compiler/names:raised" %t182)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %a0, i32 %a1)
  store { i64, ptr } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t7 = call { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %t6)
  store { i64, ptr } %t7, ptr %l5
  br label %bb2
bb2:
  %t8 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t8, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etopConds(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l11 = alloca ptr
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 12
  store i1 true, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load ptr, ptr %l1, !tbaa !29
  %t7 = getelementptr %"compiler/ast:TopIf", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t4, ptr %t8)
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/names:Resolver", ptr %t11, i32 0, i32 12
  store i1 false, ptr %t13, !tbaa !21
  %t14 = load ptr, ptr %l1, !tbaa !29
  %t16 = getelementptr %"compiler/ast:TopIf", ptr %t14, i32 0, i32 2
  %t17 = load ptr, ptr %t16, !tbaa !29
  %t19 = icmp eq ptr %t17, null
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb2, label %bb3
bb2:
  %t23 = load ptr, ptr %l0, !tbaa !29
  store ptr %t23, ptr %l11, !tbaa !29
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/ast:TopIf", ptr %t24, i32 0, i32 2
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = icmp eq ptr %t27, null
  br i1 %t29, label %bb4, label %bb5
bb3:
  br label %bb8
bb4:
  call void @__olang_check_failed(ptr @olang_loc_e6063e0110b31a73_71b4269b957cfb57)
  unreachable
bb5:
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/ast:TopIf", ptr %t31, i32 0, i32 2
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t35 = load ptr, ptr %l11, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etopConds(ptr %v0, ptr %v1, ptr %t35, ptr %t34)
  br label %bb7
bb7:
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l31 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l40 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca i64
  %l49 = alloca i64
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca ptr
  %l70 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca i1
  %l112 = alloca i64
  %l124 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l158 = alloca i64
  %l167 = alloca { i64, ptr }
  %l185 = alloca ptr
  %l207 = alloca i64
  %l209 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l211 = alloca i64
  %l213 = alloca i64
  %l218 = alloca i32
  %l219 = alloca ptr
  %l220 = alloca i32
  %l221 = alloca %"compiler/source:Span"
  %l230 = alloca ptr
  %l231 = alloca i1
  %l251 = alloca { i64, ptr }
  %l262 = alloca { i64, ptr }
  %l272 = alloca ptr
  %l273 = alloca i1
  %l289 = alloca { i64, ptr }
  %l304 = alloca { i64, ptr }
  %l319 = alloca { i64, ptr }
  %l323 = alloca i64
  %l338 = alloca ptr
  %l339 = alloca i1
  %l354 = alloca ptr
  %l355 = alloca i1
  %s24 = alloca %olang.scope
  %s25 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/ast:TypeDecl", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  %t8 = icmp sgt i64 %t6, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/ast:TypeDecl", ptr %t10, i32 0, i32 1
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 0
  store i64 %t17, ptr %l4, !tbaa !24
  br label %bb3
bb2:
  br label %bb18
bb3:
  %t19 = load i64, ptr %l3, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t19, %t20
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb4, label %bb5
bb4:
  br label %bb17
bb5:
  br label %bb6
bb6:
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t27, ptr %l70, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr ptr, ptr %t31, i64 %t28
  %t33 = load ptr, ptr %t32, !tbaa !39
  store ptr %t33, ptr %l5, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = getelementptr %"compiler/ast:TypeParam", ptr %t36, i32 0, i32 2
  %t39 = load ptr, ptr %t38, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t35, ptr %t39)
  br label %bb7
bb7:
  %t42 = load ptr, ptr %l5, !tbaa !29
  %t44 = getelementptr %"compiler/ast:TypeParam", ptr %t42, i32 0, i32 3
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t49 = extractvalue { i64, ptr } %t47, 0
  store i64 %t49, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t51 = load i64, ptr %l7, !tbaa !24
  %t52 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb9, label %bb10
bb9:
  br label %bb14
bb10:
  br label %bb11
bb11:
  %t59 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t59, ptr %l84, !tbaa !27
  %t60 = load i64, ptr %l7, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t67 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t67, ptr %t65)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l7, !tbaa !24
  br label %bb8
bb14:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t77 = load ptr, ptr %l5, !tbaa !29
  %t79 = getelementptr %"compiler/ast:TypeParam", ptr %t77, i32 0, i32 1
  %t80 = load i32, ptr %t79, !tbaa !23
  %t81 = load ptr, ptr %l5, !tbaa !29
  %t83 = getelementptr %"compiler/ast:TypeParam", ptr %t81, i32 0, i32 0
  %t84 = load %"compiler/source:Span", ptr %t83
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t76, i32 %t80, %"compiler/source:Span" %t84, i32 8)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t89 = load i64, ptr %l3, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l3, !tbaa !24
  br label %bb3
bb17:
  br label %bb18
bb18:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr %"compiler/ast:TypeDecl", ptr %t93, i32 0, i32 3
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t98 = icmp eq ptr %t96, null
  br i1 %t98, label %bb19, label %bb20
bb19:
  br label %ret
bb20:
  br label %bb21
bb21:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/ast:TypeDecl", ptr %t100, i32 0, i32 3
  %t103 = load ptr, ptr %t102, !tbaa !29
  store ptr %t103, ptr %l10, !tbaa !29
  %t105 = load ptr, ptr %l10, !tbaa !29
  store ptr %t105, ptr %l105, !tbaa !29
  store i1 false, ptr %l106, !tbaa !21
  %t106 = load ptr, ptr %l105, !tbaa !29
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %bb22, label %bb23
bb22:
  %t109 = load ptr, ptr %l105, !tbaa !29
  %t110 = load i64, ptr %t109, !range !{i64 0, i64 5}
  %t112 = icmp eq i64 %t110, 0
  store i1 %t112, ptr %l106, !tbaa !21
  br label %bb23
bb23:
  %t113 = load i1, ptr %l106, !tbaa !21
  br i1 %t113, label %bb24, label %bb25
bb24:
  %t114 = load ptr, ptr %l10, !tbaa !29
  %t116 = getelementptr { i64, [6 x i64] }, ptr %t114, i32 0, i32 1
  %t117 = getelementptr { ptr }, ptr %t116, i32 0, i32 0
  %t118 = load ptr, ptr %t117
  store ptr %t118, ptr %l11, !tbaa !29
  br label %bb26
bb25:
  br label %bb91
bb26:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t120)
  store i64 %t122, ptr %l112
  br label %bb27
bb27:
  %t123 = load i64, ptr %l112, !tbaa !24
  store i64 %t123, ptr %l12, !tbaa !24
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l11, !tbaa !29
  %t127 = getelementptr %"compiler/ast:StructBody", ptr %t125, i32 0, i32 5
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeParams(ptr %v0, ptr %v1, ptr %t124, { i64, ptr } %t128)
  br label %bb28
bb28:
  %t131 = load ptr, ptr %l11, !tbaa !29
  %t133 = getelementptr %"compiler/ast:StructBody", ptr %t131, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l13, !tbaa !27
  store i64 0, ptr %l14, !tbaa !24
  %t136 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t136, 0
  store i64 %t138, ptr %l15, !tbaa !24
  br label %bb29
bb29:
  %t140 = load i64, ptr %l14, !tbaa !24
  %t141 = load i64, ptr %l15, !tbaa !24
  %t144 = icmp slt i64 %t140, %t141
  %t146 = xor i1 %t144, true
  br i1 %t146, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t148 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t148, ptr %l124, !tbaa !27
  %t149 = load i64, ptr %l14, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr ptr, ptr %t152, i64 %t149
  %t154 = load ptr, ptr %t153, !tbaa !39
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/ast:Param", ptr %t154, i32 0, i32 2
  %t160 = load ptr, ptr %t159, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t156, ptr %t160)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t163 = load i64, ptr %l14, !tbaa !24
  %t165 = add i64 %t163, 1
  store i64 %t165, ptr %l14, !tbaa !24
  br label %bb29
bb35:
  %t167 = load ptr, ptr %l11, !tbaa !29
  %t169 = getelementptr %"compiler/ast:StructBody", ptr %t167, i32 0, i32 1
  %t170 = load ptr, ptr %t169, !tbaa !29
  %t172 = icmp eq ptr %t170, null
  %t174 = xor i1 %t172, true
  br i1 %t174, label %bb36, label %bb37
bb36:
  %t176 = load ptr, ptr %l11, !tbaa !29
  %t178 = getelementptr %"compiler/ast:StructBody", ptr %t176, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !29
  %t181 = icmp eq ptr %t179, null
  br i1 %t181, label %bb38, label %bb39
bb37:
  br label %bb48
bb38:
  call void @__olang_check_failed(ptr @olang_loc_6e82bb982de183d3_df58ae24de93c697)
  unreachable
bb39:
  br label %bb40
bb40:
  %t183 = load ptr, ptr %l11, !tbaa !29
  %t185 = getelementptr %"compiler/ast:StructBody", ptr %t183, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t189 = getelementptr %"compiler/ast:Sig", ptr %t186, i32 0, i32 3
  %t190 = load { i64, ptr }, ptr %t189, !tbaa !27
  store { i64, ptr } %t190, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  %t192 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t194 = extractvalue { i64, ptr } %t192, 0
  store i64 %t194, ptr %l19, !tbaa !24
  br label %bb41
bb41:
  %t196 = load i64, ptr %l18, !tbaa !24
  %t197 = load i64, ptr %l19, !tbaa !24
  %t200 = icmp slt i64 %t196, %t197
  %t202 = xor i1 %t200, true
  br i1 %t202, label %bb42, label %bb43
bb42:
  br label %bb47
bb43:
  br label %bb44
bb44:
  %t204 = load { i64, ptr }, ptr %l17, !tbaa !27
  store { i64, ptr } %t204, ptr %l149, !tbaa !27
  %t205 = load i64, ptr %l18, !tbaa !24
  %t207 = getelementptr { i64, ptr }, ptr %l149, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr ptr, ptr %t208, i64 %t205
  %t210 = load ptr, ptr %t209, !tbaa !39
  %t212 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %t212, ptr %t210)
  br label %bb45
bb45:
  br label %bb46
bb46:
  %t217 = load i64, ptr %l18, !tbaa !24
  %t219 = add i64 %t217, 1
  store i64 %t219, ptr %l18, !tbaa !24
  br label %bb41
bb47:
  br label %bb48
bb48:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t221)
  store i64 %t223, ptr %l158
  br label %bb49
bb49:
  %t224 = load i64, ptr %l158, !tbaa !24
  store i64 %t224, ptr %l21, !tbaa !24
  %t225 = load ptr, ptr %l11, !tbaa !29
  %t227 = getelementptr %"compiler/ast:StructBody", ptr %t225, i32 0, i32 0
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  store { i64, ptr } %t228, ptr %l22, !tbaa !27
  store i64 0, ptr %l23, !tbaa !24
  %t230 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  store i64 %t232, ptr %l24, !tbaa !24
  br label %bb50
bb50:
  %t234 = load i64, ptr %l23, !tbaa !24
  %t235 = load i64, ptr %l24, !tbaa !24
  %t238 = icmp slt i64 %t234, %t235
  %t240 = xor i1 %t238, true
  br i1 %t240, label %bb51, label %bb52
bb51:
  br label %bb60
bb52:
  br label %bb53
bb53:
  %t242 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t242, ptr %l167, !tbaa !27
  %t243 = load i64, ptr %l23, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr ptr, ptr %t246, i64 %t243
  %t248 = load ptr, ptr %t247, !tbaa !39
  store ptr %t248, ptr %l25, !tbaa !29
  %t250 = load ptr, ptr %l25, !tbaa !29
  %t252 = getelementptr %"compiler/ast:Param", ptr %t250, i32 0, i32 3
  %t253 = load ptr, ptr %t252, !tbaa !29
  %t255 = icmp eq ptr %t253, null
  %t257 = xor i1 %t255, true
  br i1 %t257, label %bb54, label %bb55
bb54:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load ptr, ptr %l25, !tbaa !29
  %t262 = getelementptr %"compiler/ast:Param", ptr %t260, i32 0, i32 3
  %t263 = load ptr, ptr %t262, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %t259, ptr %t263)
  br label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb57
bb57:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t267 = load ptr, ptr %l25, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparam(ptr %v0, ptr %v1, ptr %t266, ptr %t267, i1 true)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t270 = load i64, ptr %l23, !tbaa !24
  %t272 = add i64 %t270, 1
  store i64 %t272, ptr %l23, !tbaa !24
  br label %bb50
bb60:
  %t274 = load ptr, ptr %l11, !tbaa !29
  %t276 = getelementptr %"compiler/ast:StructBody", ptr %t274, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !29
  %t279 = icmp eq ptr %t277, null
  %t281 = xor i1 %t279, true
  br i1 %t281, label %bb61, label %bb62
bb61:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l185, !tbaa !29
  %t284 = load ptr, ptr %l11, !tbaa !29
  %t286 = getelementptr %"compiler/ast:StructBody", ptr %t284, i32 0, i32 1
  %t287 = load ptr, ptr %t286, !tbaa !29
  %t289 = icmp eq ptr %t287, null
  br i1 %t289, label %bb63, label %bb64
bb62:
  br label %bb67
bb63:
  call void @__olang_check_failed(ptr @olang_loc_860724e602591604_160204475883fa78)
  unreachable
bb64:
  br label %bb65
bb65:
  %t291 = load ptr, ptr %l11, !tbaa !29
  %t293 = getelementptr %"compiler/ast:StructBody", ptr %t291, i32 0, i32 1
  %t294 = load ptr, ptr %t293, !tbaa !29
  %t295 = load ptr, ptr %l185, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2econtract(ptr %v0, ptr %v1, ptr %t295, ptr %t294)
  br label %bb66
bb66:
  br label %bb67
bb67:
  %t297 = load ptr, ptr %l11, !tbaa !29
  %t299 = getelementptr %"compiler/ast:StructBody", ptr %t297, i32 0, i32 2
  %t300 = load { i64, ptr }, ptr %t299, !tbaa !27
  %t302 = extractvalue { i64, ptr } %t300, 0
  %t304 = icmp sgt i64 %t302, 0
  br i1 %t304, label %bb68, label %bb69
bb68:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t307 = load ptr, ptr %l11, !tbaa !29
  %t309 = getelementptr %"compiler/ast:StructBody", ptr %t307, i32 0, i32 2
  %t310 = load { i64, ptr }, ptr %t309, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t306, { i64, ptr } %t310)
  br label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb71
bb71:
  %t313 = load ptr, ptr %l0, !tbaa !29
  %t314 = load i64, ptr %l21, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t313, i64 %t314)
  br label %bb72
bb72:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t317, i64 %t318)
  br label %bb73
bb73:
  %t321 = load ptr, ptr %l11, !tbaa !29
  %t323 = getelementptr %"compiler/ast:StructBody", ptr %t321, i32 0, i32 4
  %t324 = load { i64, ptr }, ptr %t323, !tbaa !27
  %t326 = extractvalue { i64, ptr } %t324, 0
  %t328 = icmp sgt i64 %t326, 0
  br i1 %t328, label %bb74, label %bb75
bb74:
  %t330 = load ptr, ptr %l0, !tbaa !29
  %t332 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t330)
  store i64 %t332, ptr %l207
  br label %bb76
bb75:
  br label %bb90
bb76:
  %t333 = load i64, ptr %l207, !tbaa !24
  store i64 %t333, ptr %l26, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s24
  %t334 = load ptr, ptr %l11, !tbaa !29
  %t336 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fnames_2efieldNames(ptr %v1, ptr %s24, ptr %t334)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l209
  br label %bb77
bb77:
  %t337 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l209
  %t338 = call ptr @__olang_scope_alloc_a(ptr %s24, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t337, ptr %t338
  store ptr %t338, ptr %l27, !tbaa !29
  store i64 0, ptr %l28, !tbaa !24
  br label %bb78
bb78:
  store %olang.scope zeroinitializer, ptr %s25
  %t340 = load i64, ptr %l28, !tbaa !24
  store i64 %t340, ptr %l211, !tbaa !24
  %t341 = load ptr, ptr %l27, !tbaa !29
  %t343 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %s24, ptr %t341)
  store i64 %t343, ptr %l213
  br label %bb79
bb79:
  %t344 = load i64, ptr %l211, !tbaa !24
  %t345 = load i64, ptr %l213, !tbaa !24
  %t346 = icmp slt i64 %t344, %t345
  %t348 = xor i1 %t346, true
  br i1 %t348, label %bb80, label %bb81
bb80:
  call void @__olang_scope_close(ptr %s25)
  br label %bb87
bb81:
  br label %bb82
bb82:
  %t350 = load ptr, ptr %l27, !tbaa !29
  %t351 = load i64, ptr %l28, !tbaa !24
  %t354 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %s24, ptr %t350, i64 %t351)
  store i32 %t354, ptr %l218
  br label %bb83
bb83:
  %t355 = load i32, ptr %l218, !tbaa !23
  %t356 = load ptr, ptr %l0, !tbaa !29
  store ptr %t356, ptr %l219, !tbaa !29
  store i32 %t355, ptr %l220, !tbaa !23
  %t358 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s25, i32 0, i32 0)
  store %"compiler/source:Span" %t358, ptr %l221
  br label %bb84
bb84:
  %t359 = load ptr, ptr %l219, !tbaa !29
  %t360 = load i32, ptr %l220, !tbaa !23
  %t361 = load %"compiler/source:Span", ptr %l221
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t359, i32 %t360, %"compiler/source:Span" %t361, i32 1)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s25)
  br label %bb86
bb86:
  %t363 = load i64, ptr %l28, !tbaa !24
  %t365 = add i64 %t363, 1
  store i64 %t365, ptr %l28, !tbaa !24
  br label %bb78
bb87:
  call void @__olang_scope_close(ptr %s24)
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load ptr, ptr %l11, !tbaa !29
  %t370 = getelementptr %"compiler/ast:StructBody", ptr %t368, i32 0, i32 4
  %t371 = load { i64, ptr }, ptr %t370, !tbaa !27
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %t367, { i64, ptr } %t371)
  br label %bb88
bb88:
  %t374 = load ptr, ptr %l0, !tbaa !29
  %t375 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t374, i64 %t375)
  br label %bb89
bb89:
  br label %bb90
bb90:
  br label %bb162
bb91:
  %t378 = load ptr, ptr %l10, !tbaa !29
  store ptr %t378, ptr %l230, !tbaa !29
  store i1 false, ptr %l231, !tbaa !21
  %t379 = load ptr, ptr %l230, !tbaa !29
  %t380 = icmp ne ptr %t379, null
  br i1 %t380, label %bb92, label %bb93
bb92:
  %t382 = load ptr, ptr %l230, !tbaa !29
  %t383 = load i64, ptr %t382, !range !{i64 0, i64 5}
  %t385 = icmp eq i64 %t383, 1
  store i1 %t385, ptr %l231, !tbaa !21
  br label %bb93
bb93:
  %t386 = load i1, ptr %l231, !tbaa !21
  br i1 %t386, label %bb94, label %bb95
bb94:
  %t387 = load ptr, ptr %l10, !tbaa !29
  %t389 = getelementptr { i64, [6 x i64] }, ptr %t387, i32 0, i32 1
  %t390 = getelementptr { { i64, ptr }, ptr }, ptr %t389, i32 0, i32 0
  %t391 = load { i64, ptr }, ptr %t390
  store { i64, ptr } %t391, ptr %l30, !tbaa !27
  %t393 = load ptr, ptr %l10, !tbaa !29
  %t395 = getelementptr { i64, [6 x i64] }, ptr %t393, i32 0, i32 1
  %t396 = getelementptr { { i64, ptr }, ptr }, ptr %t395, i32 0, i32 1
  %t397 = load ptr, ptr %t396
  store ptr %t397, ptr %l31, !tbaa !29
  br label %bb96
bb95:
  br label %bb114
bb96:
  %t399 = load ptr, ptr %l31, !tbaa !29
  %t401 = icmp eq ptr %t399, null
  %t403 = xor i1 %t401, true
  br i1 %t403, label %bb97, label %bb98
bb97:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t406 = load ptr, ptr %l31, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t405, ptr %t406)
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb100
bb100:
  %t410 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t410, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t412 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t414 = extractvalue { i64, ptr } %t412, 0
  store i64 %t414, ptr %l34, !tbaa !24
  br label %bb101
bb101:
  %t416 = load i64, ptr %l33, !tbaa !24
  %t417 = load i64, ptr %l34, !tbaa !24
  %t420 = icmp slt i64 %t416, %t417
  %t422 = xor i1 %t420, true
  br i1 %t422, label %bb102, label %bb103
bb102:
  br label %bb113
bb103:
  br label %bb104
bb104:
  %t424 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t424, ptr %l251, !tbaa !27
  %t425 = load i64, ptr %l33, !tbaa !24
  %t427 = getelementptr { i64, ptr }, ptr %l251, i32 0, i32 1
  %t428 = load ptr, ptr %t427, !tbaa !27
  %t429 = getelementptr ptr, ptr %t428, i64 %t425
  %t430 = load ptr, ptr %t429, !tbaa !39
  %t434 = getelementptr %"compiler/ast:CaseDecl", ptr %t430, i32 0, i32 2
  %t435 = load { i64, ptr }, ptr %t434, !tbaa !27
  store { i64, ptr } %t435, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  %t437 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t439 = extractvalue { i64, ptr } %t437, 0
  store i64 %t439, ptr %l38, !tbaa !24
  br label %bb105
bb105:
  %t441 = load i64, ptr %l37, !tbaa !24
  %t442 = load i64, ptr %l38, !tbaa !24
  %t445 = icmp slt i64 %t441, %t442
  %t447 = xor i1 %t445, true
  br i1 %t447, label %bb106, label %bb107
bb106:
  br label %bb111
bb107:
  br label %bb108
bb108:
  %t449 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t449, ptr %l262, !tbaa !27
  %t450 = load i64, ptr %l37, !tbaa !24
  %t452 = getelementptr { i64, ptr }, ptr %l262, i32 0, i32 1
  %t453 = load ptr, ptr %t452, !tbaa !27
  %t454 = getelementptr ptr, ptr %t453, i64 %t450
  %t455 = load ptr, ptr %t454, !tbaa !39
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t460 = getelementptr %"compiler/ast:Param", ptr %t455, i32 0, i32 2
  %t461 = load ptr, ptr %t460, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t457, ptr %t461)
  br label %bb109
bb109:
  br label %bb110
bb110:
  %t464 = load i64, ptr %l37, !tbaa !24
  %t466 = add i64 %t464, 1
  store i64 %t466, ptr %l37, !tbaa !24
  br label %bb105
bb111:
  br label %bb112
bb112:
  %t468 = load i64, ptr %l33, !tbaa !24
  %t470 = add i64 %t468, 1
  store i64 %t470, ptr %l33, !tbaa !24
  br label %bb101
bb113:
  br label %bb162
bb114:
  %t472 = load ptr, ptr %l10, !tbaa !29
  store ptr %t472, ptr %l272, !tbaa !29
  store i1 false, ptr %l273, !tbaa !21
  %t473 = load ptr, ptr %l272, !tbaa !29
  %t474 = icmp ne ptr %t473, null
  br i1 %t474, label %bb115, label %bb116
bb115:
  %t476 = load ptr, ptr %l272, !tbaa !29
  %t477 = load i64, ptr %t476, !range !{i64 0, i64 5}
  %t479 = icmp eq i64 %t477, 2
  store i1 %t479, ptr %l273, !tbaa !21
  br label %bb116
bb116:
  %t480 = load i1, ptr %l273, !tbaa !21
  br i1 %t480, label %bb117, label %bb118
bb117:
  %t481 = load ptr, ptr %l10, !tbaa !29
  %t483 = getelementptr { i64, [6 x i64] }, ptr %t481, i32 0, i32 1
  %t484 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t483, i32 0, i32 0
  %t485 = load { i64, ptr }, ptr %t484
  store { i64, ptr } %t485, ptr %l40, !tbaa !27
  %t487 = load ptr, ptr %l10, !tbaa !29
  %t489 = getelementptr { i64, [6 x i64] }, ptr %t487, i32 0, i32 1
  %t490 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t489, i32 0, i32 1
  %t491 = load { i64, ptr }, ptr %t490
  store { i64, ptr } %t491, ptr %l41, !tbaa !27
  %t493 = load ptr, ptr %l10, !tbaa !29
  %t495 = getelementptr { i64, [6 x i64] }, ptr %t493, i32 0, i32 1
  %t496 = getelementptr { { i64, ptr }, { i64, ptr }, { i64, ptr } }, ptr %t495, i32 0, i32 2
  %t497 = load { i64, ptr }, ptr %t496
  store { i64, ptr } %t497, ptr %l42, !tbaa !27
  br label %bb119
bb118:
  br label %bb144
bb119:
  %t499 = load { i64, ptr }, ptr %l41, !tbaa !27
  store { i64, ptr } %t499, ptr %l43, !tbaa !27
  store i64 0, ptr %l44, !tbaa !24
  %t501 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t503 = extractvalue { i64, ptr } %t501, 0
  store i64 %t503, ptr %l45, !tbaa !24
  br label %bb120
bb120:
  %t505 = load i64, ptr %l44, !tbaa !24
  %t506 = load i64, ptr %l45, !tbaa !24
  %t509 = icmp slt i64 %t505, %t506
  %t511 = xor i1 %t509, true
  br i1 %t511, label %bb121, label %bb122
bb121:
  br label %bb126
bb122:
  br label %bb123
bb123:
  %t513 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t513, ptr %l289, !tbaa !27
  %t514 = load i64, ptr %l44, !tbaa !24
  %t516 = getelementptr { i64, ptr }, ptr %l289, i32 0, i32 1
  %t517 = load ptr, ptr %t516, !tbaa !27
  %t518 = getelementptr ptr, ptr %t517, i64 %t514
  %t519 = load ptr, ptr %t518, !tbaa !39
  %t521 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t521, ptr %t519)
  br label %bb124
bb124:
  br label %bb125
bb125:
  %t526 = load i64, ptr %l44, !tbaa !24
  %t528 = add i64 %t526, 1
  store i64 %t528, ptr %l44, !tbaa !24
  br label %bb120
bb126:
  %t530 = load { i64, ptr }, ptr %l42, !tbaa !27
  store { i64, ptr } %t530, ptr %l47, !tbaa !27
  store i64 0, ptr %l48, !tbaa !24
  %t532 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t534 = extractvalue { i64, ptr } %t532, 0
  store i64 %t534, ptr %l49, !tbaa !24
  br label %bb127
bb127:
  %t536 = load i64, ptr %l48, !tbaa !24
  %t537 = load i64, ptr %l49, !tbaa !24
  %t540 = icmp slt i64 %t536, %t537
  %t542 = xor i1 %t540, true
  br i1 %t542, label %bb128, label %bb129
bb128:
  br label %bb133
bb129:
  br label %bb130
bb130:
  %t544 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t544, ptr %l304, !tbaa !27
  %t545 = load i64, ptr %l48, !tbaa !24
  %t547 = getelementptr { i64, ptr }, ptr %l304, i32 0, i32 1
  %t548 = load ptr, ptr %t547, !tbaa !27
  %t549 = getelementptr ptr, ptr %t548, i64 %t545
  %t550 = load ptr, ptr %t549, !tbaa !39
  %t552 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t552, ptr %t550)
  br label %bb131
bb131:
  br label %bb132
bb132:
  %t557 = load i64, ptr %l48, !tbaa !24
  %t559 = add i64 %t557, 1
  store i64 %t559, ptr %l48, !tbaa !24
  br label %bb127
bb133:
  %t561 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t561, ptr %l51, !tbaa !27
  store i64 0, ptr %l52, !tbaa !24
  %t563 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t565 = extractvalue { i64, ptr } %t563, 0
  store i64 %t565, ptr %l53, !tbaa !24
  br label %bb134
bb134:
  %t567 = load i64, ptr %l52, !tbaa !24
  %t568 = load i64, ptr %l53, !tbaa !24
  %t571 = icmp slt i64 %t567, %t568
  %t573 = xor i1 %t571, true
  br i1 %t573, label %bb135, label %bb136
bb135:
  br label %bb143
bb136:
  br label %bb137
bb137:
  %t575 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t575, ptr %l319, !tbaa !27
  %t576 = load i64, ptr %l52, !tbaa !24
  %t578 = getelementptr { i64, ptr }, ptr %l319, i32 0, i32 1
  %t579 = load ptr, ptr %t578, !tbaa !27
  %t580 = getelementptr ptr, ptr %t579, i64 %t576
  %t581 = load ptr, ptr %t580, !tbaa !39
  store ptr %t581, ptr %l54, !tbaa !29
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t585 = call i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %t583)
  store i64 %t585, ptr %l323
  br label %bb138
bb138:
  %t586 = load i64, ptr %l323, !tbaa !24
  store i64 %t586, ptr %l55, !tbaa !24
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = load ptr, ptr %l54, !tbaa !29
  %t589 = load ptr, ptr %l54, !tbaa !29
  %t591 = getelementptr %"compiler/ast:Func", ptr %t589, i32 0, i32 3
  %t592 = load ptr, ptr %t591, !tbaa !29
  %t594 = getelementptr %"compiler/ast:Sig", ptr %t592, i32 0, i32 5
  %t595 = load ptr, ptr %t594, !tbaa !29
  %t597 = icmp eq ptr %t595, null
  %t599 = xor i1 %t597, true
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esig(ptr %v0, ptr %v1, ptr %t587, ptr %t588, i1 %t599)
  br label %bb139
bb139:
  %t603 = load ptr, ptr %l0, !tbaa !29
  %t604 = load ptr, ptr %l54, !tbaa !29
  %t606 = getelementptr %"compiler/ast:Func", ptr %t604, i32 0, i32 3
  %t607 = load ptr, ptr %t606, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2econtract(ptr %v0, ptr %v1, ptr %t603, ptr %t607)
  br label %bb140
bb140:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load i64, ptr %l55, !tbaa !24
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epopTo(ptr %v0, ptr %t610, i64 %t611)
  br label %bb141
bb141:
  br label %bb142
bb142:
  %t614 = load i64, ptr %l52, !tbaa !24
  %t616 = add i64 %t614, 1
  store i64 %t616, ptr %l52, !tbaa !24
  br label %bb134
bb143:
  br label %bb162
bb144:
  %t618 = load ptr, ptr %l10, !tbaa !29
  store ptr %t618, ptr %l338, !tbaa !29
  store i1 false, ptr %l339, !tbaa !21
  %t619 = load ptr, ptr %l338, !tbaa !29
  %t620 = icmp ne ptr %t619, null
  br i1 %t620, label %bb145, label %bb146
bb145:
  %t622 = load ptr, ptr %l338, !tbaa !29
  %t623 = load i64, ptr %t622, !range !{i64 0, i64 5}
  %t625 = icmp eq i64 %t623, 3
  store i1 %t625, ptr %l339, !tbaa !21
  br label %bb146
bb146:
  %t626 = load i1, ptr %l339, !tbaa !21
  br i1 %t626, label %bb147, label %bb148
bb147:
  %t627 = load ptr, ptr %l10, !tbaa !29
  %t629 = getelementptr { i64, [6 x i64] }, ptr %t627, i32 0, i32 1
  %t630 = getelementptr { ptr, ptr }, ptr %t629, i32 0, i32 0
  %t631 = load ptr, ptr %t630
  store ptr %t631, ptr %l56, !tbaa !29
  %t633 = load ptr, ptr %l10, !tbaa !29
  %t635 = getelementptr { i64, [6 x i64] }, ptr %t633, i32 0, i32 1
  %t636 = getelementptr { ptr, ptr }, ptr %t635, i32 0, i32 1
  %t637 = load ptr, ptr %t636
  store ptr %t637, ptr %l57, !tbaa !29
  br label %bb149
bb148:
  br label %bb155
bb149:
  %t639 = load ptr, ptr %l0, !tbaa !29
  %t640 = load ptr, ptr %l56, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t639, ptr %t640)
  br label %bb150
bb150:
  %t644 = load ptr, ptr %l57, !tbaa !29
  %t646 = icmp eq ptr %t644, null
  %t648 = xor i1 %t646, true
  br i1 %t648, label %bb151, label %bb152
bb151:
  %t650 = load ptr, ptr %l0, !tbaa !29
  %t651 = load ptr, ptr %l57, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2efunc(ptr %v0, ptr %v1, ptr %t650, ptr %t651)
  br label %bb153
bb152:
  br label %bb154
bb153:
  br label %bb154
bb154:
  br label %bb162
bb155:
  %t654 = load ptr, ptr %l10, !tbaa !29
  store ptr %t654, ptr %l354, !tbaa !29
  store i1 false, ptr %l355, !tbaa !21
  %t655 = load ptr, ptr %l354, !tbaa !29
  %t656 = icmp ne ptr %t655, null
  br i1 %t656, label %bb156, label %bb157
bb156:
  %t658 = load ptr, ptr %l354, !tbaa !29
  %t659 = load i64, ptr %t658, !range !{i64 0, i64 5}
  %t661 = icmp eq i64 %t659, 4
  store i1 %t661, ptr %l355, !tbaa !21
  br label %bb157
bb157:
  %t662 = load i1, ptr %l355, !tbaa !21
  br i1 %t662, label %bb158, label %bb159
bb158:
  br label %bb160
bb159:
  br label %bb161
bb160:
  br label %bb162
bb161:
  call void @__olang_check_failed(ptr @olang_loc_c9535db678f42df0_760e0f7ff8ef7f34)
  unreachable
bb162:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeParams(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l25 = alloca { i64, ptr }
  %l35 = alloca %"compiler/source:Span"
  %l41 = alloca ptr
  %l42 = alloca %"compiler/source:Span"
  %l43 = alloca i32
  %l45 = alloca i64
  %l48 = alloca i64
  %l50 = alloca %"compiler/names:Ref"
  %l60 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
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
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t9 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  store i64 %t11, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s3
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = icmp slt i64 %t13, %t14
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s3)
  br label %bb14
bb6:
  br label %bb7
bb7:
  %t21 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t21, ptr %l25, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr ptr, ptr %t25, i64 %t22
  %t27 = load ptr, ptr %t26, !tbaa !39
  store ptr %t27, ptr %l5, !tbaa !29
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/names:Resolver", ptr %t30, i32 0, i32 6
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load ptr, ptr %l5, !tbaa !29
  %t36 = getelementptr %"compiler/ast:TypeParam", ptr %t34, i32 0, i32 0
  %t37 = getelementptr %"compiler/source:Span", ptr %t36, i32 0, i32 0
  %t38 = load i32, ptr %t37, !tbaa !23
  %t39 = load ptr, ptr %l5, !tbaa !29
  %t41 = getelementptr %"compiler/ast:TypeParam", ptr %t39, i32 0, i32 1
  %t42 = load i32, ptr %t41, !tbaa !23
  %t47 = call %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %t29, i64 %t33, i32 %t38, i32 %t42)
  store %"compiler/source:Span" %t47, ptr %l35
  br label %bb8
bb8:
  %t48 = load %"compiler/source:Span", ptr %l35
  store %"compiler/source:Span" %t48, ptr %l6
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l5, !tbaa !29
  %t52 = getelementptr %"compiler/ast:TypeParam", ptr %t50, i32 0, i32 1
  %t53 = load i32, ptr %t52, !tbaa !23
  %t54 = load %"compiler/source:Span", ptr %l6
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %t49, i32 %t53, %"compiler/source:Span" %t54, i32 8)
  br label %bb9
bb9:
  %t59 = load ptr, ptr %l0, !tbaa !29
  store ptr %t59, ptr %l41, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t60, ptr %l42
  store i32 8, ptr %l43
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/names:Resolver", ptr %t61, i32 0, i32 6
  %t64 = load i64, ptr %t63, !tbaa !24
  store i64 %t64, ptr %l45, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/names:Resolver", ptr %t65, i32 0, i32 7
  %t69 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %t67)
  store i64 %t69, ptr %l48
  br label %bb10
bb10:
  %t70 = load i64, ptr %l48, !tbaa !24
  %t71 = sub i64 %t70, 1
  %t72 = load i32, ptr %l43, !range !{i32 0, i32 9}
  %t73 = load i64, ptr %l45, !tbaa !24
  %t75 = call %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %s3, i32 %t72, i64 %t73, i64 %t71)
  store %"compiler/names:Ref" %t75, ptr %l50
  br label %bb11
bb11:
  %t76 = load ptr, ptr %l41, !tbaa !29
  %t77 = load %"compiler/source:Span", ptr %l42
  %t78 = load %"compiler/names:Ref", ptr %l50
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %t76, %"compiler/source:Span" %t77, %"compiler/names:Ref" %t78)
  br label %bb12
bb12:
  call void @__olang_scope_close(ptr %s3)
  br label %bb13
bb13:
  %t79 = load i64, ptr %l3, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l3, !tbaa !24
  br label %bb4
bb14:
  %t83 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t83, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t87 = extractvalue { i64, ptr } %t85, 0
  store i64 %t87, ptr %l9, !tbaa !24
  br label %bb15
bb15:
  %t89 = load i64, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l9, !tbaa !24
  %t93 = icmp slt i64 %t89, %t90
  %t95 = xor i1 %t93, true
  br i1 %t95, label %bb16, label %bb17
bb16:
  br label %bb28
bb17:
  br label %bb18
bb18:
  %t97 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t97, ptr %l60, !tbaa !27
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr ptr, ptr %t101, i64 %t98
  %t103 = load ptr, ptr %t102, !tbaa !39
  store ptr %t103, ptr %l10, !tbaa !29
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l10, !tbaa !29
  %t108 = getelementptr %"compiler/ast:TypeParam", ptr %t106, i32 0, i32 2
  %t109 = load ptr, ptr %t108, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t105, ptr %t109)
  br label %bb19
bb19:
  %t112 = load ptr, ptr %l10, !tbaa !29
  %t114 = getelementptr %"compiler/ast:TypeParam", ptr %t112, i32 0, i32 3
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t117 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t119 = extractvalue { i64, ptr } %t117, 0
  store i64 %t119, ptr %l13, !tbaa !24
  br label %bb20
bb20:
  %t121 = load i64, ptr %l12, !tbaa !24
  %t122 = load i64, ptr %l13, !tbaa !24
  %t125 = icmp slt i64 %t121, %t122
  %t127 = xor i1 %t125, true
  br i1 %t127, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t129 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t129, ptr %l74, !tbaa !27
  %t130 = load i64, ptr %l12, !tbaa !24
  %t132 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr ptr, ptr %t133, i64 %t130
  %t135 = load ptr, ptr %t134, !tbaa !39
  %t137 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %t137, ptr %t135)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t142 = load i64, ptr %l12, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l12, !tbaa !24
  br label %bb20
bb26:
  br label %bb27
bb27:
  %t146 = load i64, ptr %l8, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l8, !tbaa !24
  br label %bb15
bb28:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunknownHead(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l13 = alloca ptr
  %l17 = alloca i1
  %l20 = alloca { i64, ptr }
  %l27 = alloca i1
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l42 = alloca i1
  %l48 = alloca ptr
  %l50 = alloca %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed"
  %l53 = alloca ptr
  %l58 = alloca { i64, [3 x i64] }
  %l61 = alloca { i64, ptr }
  %l64 = alloca %"compiler/diagmsg:Msg"
  %l65 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i32, ptr %l2, !tbaa !23
  store i32 %t1, ptr %l3, !tbaa !23
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/names:Resolver", ptr %t3, i32 0, i32 1
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/names:Resolver", ptr %t6, i32 0, i32 6
  %t9 = load i64, ptr %t8, !tbaa !24
  %t12 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v0, ptr %t5, i64 %t9)
  store ptr %t12, ptr %l13
  br label %bb1
bb1:
  %t13 = load ptr, ptr %l13, !tbaa !29
  %t15 = getelementptr %"compiler/names:Table", ptr %t13, i32 0, i32 4
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %t15, i32 %t16)
  store i1 %t19, ptr %l17
  br label %bb2
bb2:
  %t20 = load i1, ptr %l17, !tbaa !21
  br i1 %t20, label %bb3, label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v0, ptr %t21, i32 %t22)
  store { i64, ptr } %t25, ptr %l20
  br label %bb6
bb6:
  %t26 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/names:Resolver", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t32 = getelementptr %"compiler/load:Loader", ptr %t30, i32 0, i32 0
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t36 = extractvalue { i64, ptr } %t33, 1
  %t37 = extractvalue { i64, ptr } %t33, 0
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = extractvalue { i64, ptr } %t34, 1
  %t43 = extractvalue { i64, ptr } %t34, 0
  %t44 = add i64 %t40, %t43
  %t45 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t47 = add i64 %t44, %t46
  %t48 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t36, i64 %t37)
  %t49 = getelementptr i8, ptr %t48, i64 %t37
  call void @olang_textcopy(ptr %t49, ptr %t38, i64 %t39)
  %t50 = getelementptr i8, ptr %t49, i64 %t39
  call void @olang_textcopy(ptr %t50, ptr %t42, i64 %t43)
  %t51 = getelementptr i8, ptr %t50, i64 %t43
  call void @olang_textcopy(ptr %t51, ptr %t45, i64 %t46)
  %t52 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t53 = insertvalue { i64, ptr } %t52, ptr %t48, 1
  %t55 = extractvalue { i64, ptr } %t53, 0
  %t56 = extractvalue { i64, ptr } %t53, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t62 = call i1 @std_2fos_2eExists(ptr %s0, { i64, ptr } %t60)
  store i1 %t62, ptr %l27
  br label %bb7
bb7:
  %t63 = load i1, ptr %l27, !tbaa !21
  %t64 = xor i1 %t63, true
  br i1 %t64, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  br label %bb10
bb10:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/names:Resolver", ptr %t66, i32 0, i32 15
  store ptr %t68, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t70 = load i64, ptr %l6, !tbaa !24
  store i64 %t70, ptr %l31, !tbaa !24
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t73 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l33
  br label %bb12
bb12:
  %t74 = load i64, ptr %l31, !tbaa !24
  %t75 = load i64, ptr %l33, !tbaa !24
  %t76 = icmp slt i64 %t74, %t75
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb13, label %bb14
bb13:
  br label %bb24
bb14:
  br label %bb15
bb15:
  %t80 = load ptr, ptr %l5, !tbaa !29
  %t81 = load i64, ptr %l6, !tbaa !24
  %t84 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Hd32f6fdf378a1d4c0e47f8552643012d(ptr %v0, ptr %t80, i64 %t81)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t84, ptr %l38
  br label %bb16
bb16:
  %t85 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l38
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t85, ptr %l7
  %t86 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l7, i32 0, i32 0
  %t87 = load i32, ptr %t86, !tbaa !23
  %t88 = load i32, ptr %l2, !tbaa !23
  %t91 = icmp eq i32 %t87, %t88
  br i1 %t91, label %bb17, label %bb18
bb17:
  %t93 = getelementptr %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l7, i32 0, i32 1
  %t94 = load i64, ptr %t93, !tbaa !24
  %t96 = icmp eq i64 %t94, -1
  store i1 %t96, ptr %l42, !tbaa !21
  br label %bb19
bb18:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb19
bb19:
  %t98 = load i1, ptr %l42, !tbaa !21
  br i1 %t98, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t99 = load i64, ptr %l6, !tbaa !24
  %t101 = add i64 %t99, 1
  store i64 %t101, ptr %l6, !tbaa !24
  br label %bb11
bb24:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/names:Resolver", ptr %t103, i32 0, i32 15
  store ptr %t105, ptr %l48, !tbaa !29
  %t106 = load i32, ptr %l2, !tbaa !23
  %t108 = call %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %s0, i32 %t106, i64 -1)
  store %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t108, ptr %l50
  br label %bb25
bb25:
  %t109 = load ptr, ptr %l48, !tbaa !29
  %t110 = load %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed", ptr %l50
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %t109, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %t110)
  br label %bb26
bb26:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/names:Resolver", ptr %t111, i32 0, i32 0
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = getelementptr %"compiler/load:Loader", ptr %t114, i32 0, i32 4
  %t117 = load ptr, ptr %t116, !tbaa !29
  store ptr %t117, ptr %l53, !tbaa !29
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/names:Resolver", ptr %t119, i32 0, i32 6
  %t122 = load i64, ptr %t121, !tbaa !24
  %t127 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t118, i64 %t122, %"compiler/source:Span" %a1)
  store { i64, [3 x i64] } %t127, ptr %l58
  br label %bb27
bb27:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load i32, ptr %l2, !tbaa !23
  %t132 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t128, i32 %t129)
  store { i64, ptr } %t132, ptr %l61
  br label %bb28
bb28:
  %t133 = load { i64, ptr }, ptr %l61, !tbaa !27
  %t134 = extractvalue { i64, ptr } %t133, 0
  %t135 = extractvalue { i64, ptr } %t133, 1
  %t136 = mul i64 %t134, 1
  %t137 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t136)
  call void @llvm.memcpy.p0.p0.i64(ptr %t137, ptr %t135, i64 %t136, i1 false)
  %t138 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t139 = insertvalue { i64, ptr } %t138, ptr %t137, 1
  %t140 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t143 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownImportStd(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t139, { i64, ptr } %t140)
  store %"compiler/diagmsg:Msg" %t143, ptr %l64
  br label %bb29
bb29:
  %t144 = load ptr, ptr %l53, !tbaa !29
  %t145 = load { i64, [3 x i64] }, ptr %l58
  %t146 = load %"compiler/diagmsg:Msg", ptr %l64
  %t147 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t144, { i64, [3 x i64] } %t145, %"compiler/diagmsg:Msg" %t146)
  store i64 %t147, ptr %l65
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eunusedImports(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/load:Import"
  %l6 = alloca i32
  %l7 = alloca i1
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l15 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca %"compiler/load:Import"
  %l39 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i1
  %l44 = alloca i1
  %l49 = alloca i32
  %l51 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca i1
  %l59 = alloca i64
  %l61 = alloca i64
  %l66 = alloca %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba"
  %l70 = alloca i1
  %l80 = alloca i1
  %l86 = alloca ptr
  %l90 = alloca { i64, [3 x i64] }
  %l93 = alloca { i64, ptr }
  %l96 = alloca %"compiler/diagmsg:Msg"
  %l97 = alloca i64
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/names:Resolver", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/load:Loader", ptr %t4, i32 0, i32 10
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store ptr %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l15, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t14 = getelementptr %"compiler/load:Module", ptr %t12, i32 0, i32 30
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb4
bb3:
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t19 = getelementptr %"compiler/load:Module", ptr %t17, i32 0, i32 6
  %t20 = load ptr, ptr %t19, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  store i1 %t22, ptr %l18, !tbaa !21
  br label %bb4
bb4:
  %t24 = load i1, ptr %l18, !tbaa !21
  br i1 %t24, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb8
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/names:Resolver", ptr %t25, i32 0, i32 21
  %t28 = load i64, ptr %l1, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l26
  br label %bb7
bb7:
  %t32 = load i1, ptr %l26, !tbaa !21
  store i1 %t32, ptr %l22, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l22, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = getelementptr %"compiler/load:Module", ptr %t34, i32 0, i32 11
  store ptr %t36, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s3
  %t38 = load i64, ptr %l4, !tbaa !24
  store i64 %t38, ptr %l29, !tbaa !24
  %t39 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l31
  br label %bb13
bb13:
  %t42 = load i64, ptr %l29, !tbaa !24
  %t43 = load i64, ptr %l31, !tbaa !24
  %t44 = icmp slt i64 %t42, %t43
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb61
bb15:
  br label %bb16
bb16:
  %t48 = load ptr, ptr %l3, !tbaa !29
  %t49 = load i64, ptr %l4, !tbaa !24
  %t52 = call %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v0, ptr %t48, i64 %t49)
  store %"compiler/load:Import" %t52, ptr %l36
  br label %bb17
bb17:
  %t53 = load %"compiler/load:Import", ptr %l36
  store %"compiler/load:Import" %t53, ptr %l5
  %t54 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 5
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp slt i64 %t55, 0
  br i1 %t57, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb21
bb19:
  %t59 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t60 = load { i64, ptr }, ptr %t59, !tbaa !27
  %t62 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s3, { i64, ptr } %t60, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t62, ptr %l41
  br label %bb20
bb20:
  %t63 = load i1, ptr %l41, !tbaa !21
  store i1 %t63, ptr %l39, !tbaa !21
  br label %bb21
bb21:
  %t64 = load i1, ptr %l39, !tbaa !21
  br i1 %t64, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb25
bb23:
  %t65 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  %t68 = call i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %t66)
  store i1 %t68, ptr %l44
  br label %bb24
bb24:
  %t69 = load i1, ptr %l44, !tbaa !21
  store i1 %t69, ptr %l42, !tbaa !21
  br label %bb25
bb25:
  %t70 = load i1, ptr %l42, !tbaa !21
  br i1 %t70, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb60
bb27:
  br label %bb28
bb28:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/names:Resolver", ptr %t71, i32 0, i32 0
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t76 = getelementptr %"compiler/load:Loader", ptr %t74, i32 0, i32 3
  %t77 = load ptr, ptr %t76, !tbaa !29
  %t78 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t79 = load { i64, ptr }, ptr %t78, !tbaa !27
  %t82 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v0, ptr %t77, { i64, ptr } %t79)
  store i32 %t82, ptr %l49
  br label %bb29
bb29:
  %t83 = load i32, ptr %l49, !tbaa !23
  store i32 %t83, ptr %l6, !tbaa !23
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/names:Resolver", ptr %t84, i32 0, i32 19
  store ptr %t86, ptr %l51, !tbaa !29
  %t87 = load i64, ptr %l1, !tbaa !24
  %t88 = load i32, ptr %l6, !tbaa !23
  %t92 = call i64 @compiler_2fnames_2ekey(i64 %t87, i32 %t88)
  store i64 %t92, ptr %l55
  br label %bb30
bb30:
  %t93 = load ptr, ptr %l51, !tbaa !29
  %t94 = load i64, ptr %l55, !tbaa !24
  %t95 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t93, i64 %t94)
  store i1 %t95, ptr %l56
  br label %bb31
bb31:
  %t96 = load i1, ptr %l56, !tbaa !21
  br i1 %t96, label %bb32, label %bb33
bb32:
  call void @__olang_scope_close(ptr %s3)
  br label %bb60
bb33:
  br label %bb34
bb34:
  store i1 false, ptr %l7, !tbaa !21
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/names:Resolver", ptr %t97, i32 0, i32 20
  store ptr %t99, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb35
bb35:
  %t101 = load i64, ptr %l9, !tbaa !24
  store i64 %t101, ptr %l59, !tbaa !24
  %t102 = load ptr, ptr %l8, !tbaa !29
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %t102)
  store i64 %t104, ptr %l61
  br label %bb36
bb36:
  %t105 = load i64, ptr %l59, !tbaa !24
  %t106 = load i64, ptr %l61, !tbaa !24
  %t107 = icmp slt i64 %t105, %t106
  %t109 = xor i1 %t107, true
  br i1 %t109, label %bb37, label %bb38
bb37:
  br label %bb52
bb38:
  br label %bb39
bb39:
  %t111 = load ptr, ptr %l8, !tbaa !29
  %t112 = load i64, ptr %l9, !tbaa !24
  %t115 = call %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H1a77801a5ab3ea58cbf0ff15b43ff2de(ptr %v0, ptr %t111, i64 %t112)
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t115, ptr %l66
  br label %bb40
bb40:
  %t116 = load %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l66
  store %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" %t116, ptr %l10
  %t117 = getelementptr %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l10, i32 0, i32 0
  %t118 = load i64, ptr %t117, !tbaa !24
  %t119 = load i64, ptr %l1, !tbaa !24
  %t122 = icmp eq i64 %t118, %t119
  br i1 %t122, label %bb41, label %bb42
bb41:
  %t124 = load ptr, ptr %l2, !tbaa !29
  %t126 = getelementptr %"compiler/load:Module", ptr %t124, i32 0, i32 6
  %t127 = load ptr, ptr %t126, !tbaa !29
  %t129 = icmp eq ptr %t127, null
  br i1 %t129, label %bb43, label %bb44
bb42:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb47
bb43:
  call void @__olang_check_failed(ptr @olang_loc_9053a89eb2ebe36f_9971388257a6393)
  unreachable
bb44:
  br label %bb45
bb45:
  %t131 = load ptr, ptr %l2, !tbaa !29
  %t133 = getelementptr %"compiler/load:Module", ptr %t131, i32 0, i32 6
  %t134 = load ptr, ptr %t133, !tbaa !29
  %t137 = getelementptr %"compiler/source:Source", ptr %t134, i32 0, i32 1
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  %t139 = getelementptr %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba", ptr %l10, i32 0, i32 1
  %t140 = load %"compiler/source:Span", ptr %t139
  %t141 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 2
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  %t146 = call i1 @compiler_2fnames_2eMentions(ptr %v0, ptr %v0, { i64, ptr } %t138, %"compiler/source:Span" %t140, { i64, ptr } %t142)
  store i1 %t146, ptr %l80
  br label %bb46
bb46:
  %t147 = load i1, ptr %l80, !tbaa !21
  store i1 %t147, ptr %l70, !tbaa !21
  br label %bb47
bb47:
  %t148 = load i1, ptr %l70, !tbaa !21
  br i1 %t148, label %bb48, label %bb49
bb48:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb50
bb49:
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t149 = load i64, ptr %l9, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l9, !tbaa !24
  br label %bb35
bb52:
  %t153 = load i1, ptr %l7, !tbaa !21
  br i1 %t153, label %bb53, label %bb54
bb53:
  call void @__olang_scope_close(ptr %s3)
  br label %bb60
bb54:
  br label %bb55
bb55:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/names:Resolver", ptr %t155, i32 0, i32 0
  %t158 = load ptr, ptr %t157, !tbaa !29
  %t160 = getelementptr %"compiler/load:Loader", ptr %t158, i32 0, i32 4
  %t161 = load ptr, ptr %t160, !tbaa !29
  store ptr %t161, ptr %l86, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i64, ptr %l1, !tbaa !24
  %t164 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 0
  %t165 = load %"compiler/source:Span", ptr %t164
  %t169 = call { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %t162, i64 %t163, %"compiler/source:Span" %t165)
  store { i64, [3 x i64] } %t169, ptr %l90
  br label %bb56
bb56:
  %t170 = load ptr, ptr %l0, !tbaa !29
  %t171 = load i32, ptr %l6, !tbaa !23
  %t174 = call { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etok(ptr %v0, ptr %v0, ptr %t170, i32 %t171)
  store { i64, ptr } %t174, ptr %l93
  br label %bb57
bb57:
  %t175 = load { i64, ptr }, ptr %l93, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t175, 0
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = mul i64 %t176, 1
  %t179 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t178)
  call void @llvm.memcpy.p0.p0.i64(ptr %t179, ptr %t177, i64 %t178, i1 false)
  %t180 = insertvalue { i64, ptr } undef, i64 %t176, 0
  %t181 = insertvalue { i64, ptr } %t180, ptr %t179, 1
  %t182 = getelementptr %"compiler/load:Import", ptr %l5, i32 0, i32 3
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  %t186 = call %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportUnused(ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t181, { i64, ptr } %t183)
  store %"compiler/diagmsg:Msg" %t186, ptr %l96
  br label %bb58
bb58:
  %t187 = load ptr, ptr %l86, !tbaa !29
  %t188 = load { i64, [3 x i64] }, ptr %l90
  %t189 = load %"compiler/diagmsg:Msg", ptr %l96
  %t190 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v0, ptr %t187, { i64, [3 x i64] } %t188, %"compiler/diagmsg:Msg" %t189)
  store i64 %t190, ptr %l97
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s3)
  br label %bb60
bb60:
  %t191 = load i64, ptr %l4, !tbaa !24
  %t193 = add i64 %t191, 1
  store i64 %t193, ptr %l4, !tbaa !24
  br label %bb12
bb61:
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2fnames_2eexternDeclName(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca i1
  %l12 = alloca ptr
  %l13 = alloca i1
  %rv = alloca i32
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 11}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [8 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { ptr }, ptr %t12, i32 0, i32 0
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/ast:Func", ptr %t16, i32 0, i32 2
  %t19 = load i32, ptr %t18, !tbaa !23
  store i32 %t19, ptr %l3, !tbaa !23
  br label %bb17
bb6:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l12, !tbaa !29
  store i1 false, ptr %l13, !tbaa !21
  %t22 = load ptr, ptr %l12, !tbaa !29
  %t23 = icmp ne ptr %t22, null
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l12, !tbaa !29
  %t26 = load i64, ptr %t25, !range !{i64 0, i64 11}
  %t28 = icmp eq i64 %t26, 2
  store i1 %t28, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l13, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr { i64, [8 x i64] }, ptr %t30, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", ptr }, ptr %t32, i32 0, i32 1
  %t34 = load ptr, ptr %t33
  store ptr %t34, ptr %l2, !tbaa !29
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t38 = getelementptr %"compiler/ast:TypeDecl", ptr %t36, i32 0, i32 0
  %t39 = load i32, ptr %t38, !tbaa !23
  store i32 %t39, ptr %l3, !tbaa !23
  br label %bb17
bb12:
  br i1 true, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i32 0, ptr %l3, !tbaa !23
  br label %bb17
bb16:
  call void @__olang_check_failed(ptr @olang_loc_e6f5afeb81d3c728_e8c5c2420d9193ac)
  unreachable
bb17:
  %t41 = load i32, ptr %l3, !tbaa !23
  store i32 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2fnames_2eindexOfRaised(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %l37 = alloca %"compiler/names:raisedName"
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eLen_H9e36587759e47da85a29e6c0abff1d1c(ptr %v0, ptr %t1)
  store i64 %t3, ptr %l9
  br label %bb1
bb1:
  %t4 = load i64, ptr %l9, !tbaa !24
  store i64 %t4, ptr %l3, !tbaa !24
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
  store i64 0, ptr %l13, !tbaa !24
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
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t31 = load i64, ptr %l16, !tbaa !24
  store i64 %t31, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l13, !tbaa !24
  store i64 %t32, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l5, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
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
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = call %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %v0, ptr %s2, ptr %t51, i64 %t53)
  store %"compiler/names:raisedName" %t56, ptr %l37
  br label %bb12
bb12:
  %t57 = getelementptr %"compiler/names:raisedName", ptr %l37, i32 0, i32 0
  %t58 = load i32, ptr %t57, !tbaa !23
  %t62 = icmp eq i32 %t58, %a1
  br i1 %t62, label %bb13, label %bb14
bb13:
  %t64 = load i64, ptr %l7, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  store i64 %t64, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t66 = load i64, ptr %l6, !tbaa !24
  %t68 = add i64 %t66, 1
  store i64 %t68, ptr %l6, !tbaa !24
  br label %bb8
bb17:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2fnames_2ekey(i64 %a0, i32 %a1) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = shl i64 %a0, 32
  %t6 = sext i32 %a1 to i64
  %t9 = or i64 %t3, %t6
  store i64 %t9, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2fnames_2eliteralType(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i1
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca ptr
  %l50 = alloca i1
  %l56 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l59 = alloca i64
  %l60 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 30}
  %t8 = icmp eq i64 %t6, 1
  store i1 %t8, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l7, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32 }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 114}
  store i32 %t14, ptr %l1
  br label %bb5
bb4:
  br label %bb18
bb5:
  %t16 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t18 = trunc i64 2 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb6, label %bb7
bb6:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d13, i32 0, i32 1) }, ptr %l15, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t21, ptr %l14, !tbaa !27
  br label %bb17
bb7:
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t25 = trunc i64 3 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb8, label %bb9
bb8:
  store { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) }, ptr %l20, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l20, !tbaa !27
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  br label %bb16
bb9:
  %t30 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t32 = trunc i64 6 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb10, label %bb11
bb10:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d15, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t35, ptr %l24, !tbaa !27
  br label %bb15
bb11:
  %t37 = load i32, ptr %l1, !range !{i32 0, i32 114}
  %t39 = trunc i64 5 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb12, label %bb13
bb12:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d16, i32 0, i32 1) }, ptr %l30, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t42, ptr %l29, !tbaa !27
  br label %bb14
bb13:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d17, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t44 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t44, ptr %l29, !tbaa !27
  br label %bb14
bb14:
  %t46 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t46, ptr %l24, !tbaa !27
  br label %bb15
bb15:
  %t47 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t47, ptr %l19, !tbaa !27
  br label %bb16
bb16:
  %t48 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t48, ptr %l14, !tbaa !27
  br label %bb17
bb17:
  %t49 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t49, ptr %l5, !tbaa !27
  br label %bb40
bb18:
  %t50 = load ptr, ptr %l0, !tbaa !29
  store ptr %t50, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t51 = load ptr, ptr %l34, !tbaa !29
  %t52 = icmp ne ptr %t51, null
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l34, !tbaa !29
  %t55 = load i64, ptr %t54, !range !{i64 0, i64 30}
  %t57 = icmp eq i64 %t55, 3
  store i1 %t57, ptr %l35, !tbaa !21
  br label %bb20
bb20:
  %t58 = load i1, ptr %l35, !tbaa !21
  br i1 %t58, label %bb21, label %bb22
bb21:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr { i64, [4 x i64] }, ptr %t59, i32 0, i32 1
  %t62 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62, !range !{i32 0, i32 114}
  store i32 %t63, ptr %l2
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l3, !tbaa !29
  br label %bb23
bb22:
  br label %bb28
bb23:
  %t71 = load i32, ptr %l2, !range !{i32 0, i32 114}
  %t73 = trunc i64 69 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l3, !tbaa !29
  %t78 = call { i64, ptr } @compiler_2fnames_2eliteralType(ptr %v0, ptr %v1, ptr %t76)
  store { i64, ptr } %t78, ptr %l46
  br label %bb26
bb25:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d18, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t79 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t79, ptr %l44, !tbaa !27
  br label %bb27
bb26:
  %t81 = load { i64, ptr }, ptr %l46, !tbaa !27
  store { i64, ptr } %t81, ptr %l44, !tbaa !27
  br label %bb27
bb27:
  %t82 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t82, ptr %l5, !tbaa !27
  br label %bb40
bb28:
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t84 = load ptr, ptr %l49, !tbaa !29
  %t85 = icmp ne ptr %t84, null
  br i1 %t85, label %bb29, label %bb30
bb29:
  %t87 = load ptr, ptr %l49, !tbaa !29
  %t88 = load i64, ptr %t87, !range !{i64 0, i64 30}
  %t90 = icmp eq i64 %t88, 2
  store i1 %t90, ptr %l50, !tbaa !21
  br label %bb30
bb30:
  %t91 = load i1, ptr %l50, !tbaa !21
  br i1 %t91, label %bb31, label %bb32
bb31:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr { i64, [4 x i64] }, ptr %t92, i32 0, i32 1
  %t95 = getelementptr { %"compiler/source:Span", ptr }, ptr %t94, i32 0, i32 1
  %t96 = load ptr, ptr %t95
  store ptr %t96, ptr %l4, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t98 = load ptr, ptr %l4, !tbaa !29
  %t100 = call { i64, ptr } @compiler_2fnames_2eliteralType(ptr %v0, ptr %v1, ptr %t98)
  store { i64, ptr } %t100, ptr %l56
  br label %bb34
bb34:
  %t101 = load { i64, ptr }, ptr %l56, !tbaa !27
  store { i64, ptr } %t101, ptr %l5, !tbaa !27
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d19, i32 0, i32 1) }, ptr %l57, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t102, ptr %l5, !tbaa !27
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_69822c0cac48a014_4fc53fd0a2f89a60)
  unreachable
bb40:
  %t104 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t104, 0
  store i64 %t105, ptr %l59, !tbaa !24
  %t106 = load i64, ptr %l59, !tbaa !24
  %t107 = mul i64 %t106, 1
  %t108 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t107)
  %t109 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t110 = insertvalue { i64, ptr } %t109, ptr %t108, 1
  store { i64, ptr } %t110, ptr %l60, !tbaa !27
  %t111 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = load i64, ptr %l59, !tbaa !24
  %t116 = mul i64 %t115, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t112, ptr %t114, i64 %t116, i1 false)
  %t117 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t117, ptr %l5, !tbaa !27
  %t118 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t118, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i1 @compiler_2fnames_2eoutranks(ptr %v0, ptr %v1, %"compiler/names:raisedName" %a0, %"compiler/names:raisedName" %a1) #0 {
entry:
  %l0 = alloca %"compiler/names:raisedName"
  %l1 = alloca %"compiler/names:raisedName"
  %l5 = alloca i1
  %l9 = alloca i1
  %rv = alloca i1
  store %"compiler/names:raisedName" %a0, ptr %l0
  store %"compiler/names:raisedName" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/names:raisedName", ptr %l0, i32 0, i32 2
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/names:raisedName", ptr %l1, i32 0, i32 2
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp sgt i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb6
bb2:
  %t9 = getelementptr %"compiler/names:raisedName", ptr %l0, i32 0, i32 2
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/names:raisedName", ptr %l1, i32 0, i32 2
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = getelementptr %"compiler/names:raisedName", ptr %l0, i32 0, i32 4
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/names:raisedName", ptr %l1, i32 0, i32 4
  %t20 = load i64, ptr %t19, !tbaa !24
  %t23 = icmp slt i64 %t18, %t20
  store i1 %t23, ptr %l9, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l9, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l9, !tbaa !21
  store i1 %t25, ptr %l5, !tbaa !21
  br label %bb6
bb6:
  %t26 = load i1, ptr %l5, !tbaa !21
  store i1 %t26, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2fnames_2etestRules(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/cond:Consts"
  %l10 = alloca %"compiler/diag:Diagnostics"
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l15 = alloca %"compiler/load:Loader"
  %l16 = alloca %"compiler/names:Resolver"
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/diag:Said"
  %l21 = alloca { i64, i64 }
  %l24 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l26 = alloca i32
  %l28 = alloca i1
  %l36 = alloca i64
  %l39 = alloca i64
  %l58 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l68 = alloca i32
  %l70 = alloca i1
  %l75 = alloca %"compiler/cond:Consts"
  %l77 = alloca %"compiler/diag:Diagnostics"
  %l85 = alloca { i64, ptr }
  %l91 = alloca i32
  %l94 = alloca ptr
  %l95 = alloca i64
  %l97 = alloca i64
  %l101 = alloca { i64, ptr }
  %l102 = alloca i64
  %l107 = alloca %"compiler/fetch:Fetcher"
  %l108 = alloca ptr
  %l109 = alloca i64
  %l111 = alloca %"compiler/source:Names"
  %l114 = alloca %"compiler/load:Loader"
  %l115 = alloca ptr
  %l116 = alloca i64
  %l119 = alloca { i64, ptr }
  %l123 = alloca i64
  %l125 = alloca %"compiler/names:Resolver"
  %l127 = alloca %"std/prelude/text:StringBuilder"
  %l129 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l131 = alloca i64
  %l133 = alloca i64
  %l138 = alloca %"compiler/diag:Said"
  %l139 = alloca { i64, ptr }
  %l142 = alloca { i64, i64 }
  %l154 = alloca { i64, ptr }
  %l156 = alloca i32
  %l158 = alloca i1
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  %t125 = alloca %"compiler/cond:Consts", align 8
  %t127 = alloca %"compiler/diag:Diagnostics", align 8
  %t228 = alloca %"compiler/fetch:Fetcher", align 8
  %t252 = alloca %"compiler/load:Loader", align 8
  %t297 = alloca %"compiler/names:Resolver", align 8
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d20, i32 0, i32 1) }, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d21, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l26
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l25
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t6, ptr %l24, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l26, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  store i1 %t10, ptr %l28, !tbaa !21
  %t11 = load i32, ptr %l26, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  br i1 %t14, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  call void @__olang_check_failed(ptr @olang_loc_7d6219e827f558e0_eeca058e7ab150ac)
  unreachable
bb6:
  %t16 = load { i64, ptr }, ptr %l24, !tbaa !27
  store { i64, ptr } %t16, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t17 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t17, 0
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 2, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l36, !tbaa !24
  br label %bb12
bb9:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l39, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb11
bb11:
  %t47 = load i64, ptr %l39, !tbaa !24
  store i64 %t47, ptr %l36, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l36, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s3
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s3)
  br label %bb24
bb15:
  br label %bb16
bb16:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l8, !tbaa !24
  %t67 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t68, ptr %l58, !tbaa !27
  %t69 = load i64, ptr %l8, !tbaa !24
  %t71 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t72 = load ptr, ptr %t71, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %t72, i64 %t69
  %t74 = load { i64, ptr }, ptr %t73, !tbaa !37
  %t76 = extractvalue { i64, ptr } %t67, 1
  %t77 = extractvalue { i64, ptr } %t67, 0
  %t78 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t79 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t80 = add i64 %t77, %t79
  %t82 = extractvalue { i64, ptr } %t74, 1
  %t83 = extractvalue { i64, ptr } %t74, 0
  %t84 = add i64 %t80, %t83
  %t85 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t84)
  call void @olang_textcopy(ptr %t85, ptr %t76, i64 %t77)
  %t86 = getelementptr i8, ptr %t85, i64 %t77
  call void @olang_textcopy(ptr %t86, ptr %t78, i64 %t79)
  %t87 = getelementptr i8, ptr %t86, i64 %t79
  call void @olang_textcopy(ptr %t87, ptr %t82, i64 %t83)
  %t88 = insertvalue { i64, ptr } undef, i64 %t84, 0
  %t89 = insertvalue { i64, ptr } %t88, ptr %t85, 1
  %t91 = extractvalue { i64, ptr } %t89, 0
  %t92 = extractvalue { i64, ptr } %t89, 1
  %t93 = mul i64 %t91, 1
  %t94 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t93)
  call void @llvm.memcpy.p0.p0.i64(ptr %t94, ptr %t92, i64 %t93, i1 false)
  %t95 = insertvalue { i64, ptr } undef, i64 %t91, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t94, 1
  %t97 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t97, ptr %l63, !tbaa !27
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = add i64 %t98, 1
  %t102 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr { i64, ptr }, ptr %t103, i64 %t100
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !37
  %t109 = call i32 @std_2fos_2eWriteFile(ptr %s3, ptr %v0, { i64, ptr } %t96, { i64, ptr } %t105)
  store i32 %t109, ptr %l68
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb18, label %ok.111, !prof !99
ok.111:
  br label %bb17
bb17:
  br label %bb22
bb18:
  %t112 = load i32, ptr %l68, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  store i1 %t115, ptr %l70, !tbaa !21
  %t116 = load i32, ptr %l68, !tbaa !23
  %t117 = ashr i32 %t116, 16
  %t119 = icmp eq i32 %t117, 1
  br i1 %t119, label %bb19, label %bb20
bb19:
  call void @__olang_errpay_pop()
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb23:
  %t121 = load i64, ptr %l7, !tbaa !24
  %t123 = add i64 %t121, 1
  store i64 %t123, ptr %l7, !tbaa !24
  br label %bb13
bb24:
  call void @compiler_2fcond_3aConsts_2ector(ptr %t125, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l75, ptr %t125, i64 224, i1 false)
  br label %bb25
bb25:
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %l75, i64 224, i1 false)
  call void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %l9, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d23, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d25, i32 0, i32 1) }, i64 128, i64 0, i1 false, i1 false, i1 false)
  br label %bb26
bb26:
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t127, ptr %s0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t127, i64 544, i1 false)
  br label %bb27
bb27:
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %l77, i64 544, i1 false)
  store { i64, ptr } %a1, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t130 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t130, 0
  store i64 %t132, ptr %l13, !tbaa !24
  br label %bb28
bb28:
  %t134 = load i64, ptr %l12, !tbaa !24
  %t135 = load i64, ptr %l13, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb29, label %bb30
bb29:
  br label %bb37
bb30:
  br label %bb31
bb31:
  %t142 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t142, ptr %l85, !tbaa !27
  %t143 = load i64, ptr %l12, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr { i64, ptr }, ptr %t146, i64 %t143
  %t148 = load { i64, ptr }, ptr %t147, !tbaa !37
  %t154 = call i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefine(ptr %s0, ptr %v1, ptr %s0, ptr %l9, { i64, ptr } %t148, ptr %l10)
  store i32 %t154, ptr %l91
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb33, label %ok.156, !prof !99
ok.156:
  br label %bb32
bb32:
  br label %bb35
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb36
bb36:
  %t157 = load i64, ptr %l12, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l12, !tbaa !24
  br label %bb28
bb37:
  store ptr %l9, ptr %l94, !tbaa !29
  %t161 = ptrtoint ptr %s0 to i64
  store i64 %t161, ptr %l95, !tbaa !24
  %t162 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e2
  br i1 %t162, label %bb38, label %bb39
bb38:
  %t164 = call ptr @__olang_region_make(ptr %s0)
  %t165 = ptrtoint ptr %t164 to i64
  store i64 %t165, ptr %l95, !tbaa !24
  br label %bb39
bb39:
  %t166 = load i64, ptr %l95
  %t167 = inttoptr i64 %t166 to ptr
  %t168 = ptrtoint ptr %t167 to i64
  store i64 %t168, ptr %l97, !tbaa !24
  %t169 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0
  br i1 %t169, label %bb40, label %bb41
bb40:
  %t171 = load i64, ptr %l95
  %t172 = inttoptr i64 %t171 to ptr
  %t173 = call ptr @__olang_region_make(ptr %t172)
  %t174 = ptrtoint ptr %t173 to i64
  store i64 %t174, ptr %l97, !tbaa !24
  br label %bb41
bb41:
  %t175 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = extractvalue { i64, ptr } %t175, 0
  %t179 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t180 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t181 = add i64 %t178, %t180
  %t182 = load i64, ptr %l97
  %t183 = inttoptr i64 %t182 to ptr
  %t184 = call ptr @__olang_scope_alloc(ptr %t183, i64 %t181)
  call void @olang_textcopy(ptr %t184, ptr %t177, i64 %t178)
  %t185 = getelementptr i8, ptr %t184, i64 %t178
  call void @olang_textcopy(ptr %t185, ptr %t179, i64 %t180)
  %t186 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t184, 1
  %t189 = load i64, ptr %l97
  %t190 = inttoptr i64 %t189 to ptr
  %t191 = extractvalue { i64, ptr } %t187, 0
  %t192 = extractvalue { i64, ptr } %t187, 1
  %t193 = mul i64 %t191, 1
  %t194 = call ptr @__olang_scope_alloc(ptr %t190, i64 %t193)
  call void @llvm.memcpy.p0.p0.i64(ptr %t194, ptr %t192, i64 %t193, i1 false)
  %t195 = insertvalue { i64, ptr } undef, i64 %t191, 0
  %t196 = insertvalue { i64, ptr } %t195, ptr %t194, 1
  store { i64, ptr } %t196, ptr %l101, !tbaa !27
  %t197 = load i64, ptr %l95
  %t198 = inttoptr i64 %t197 to ptr
  %t199 = ptrtoint ptr %t198 to i64
  store i64 %t199, ptr %l102, !tbaa !24
  %t200 = load i1, ptr @olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1
  br i1 %t200, label %bb42, label %bb43
bb42:
  %t202 = load i64, ptr %l95
  %t203 = inttoptr i64 %t202 to ptr
  %t204 = call ptr @__olang_region_make(ptr %t203)
  %t205 = ptrtoint ptr %t204 to i64
  store i64 %t205, ptr %l102, !tbaa !24
  br label %bb43
bb43:
  %t206 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t208 = extractvalue { i64, ptr } %t206, 1
  %t209 = extractvalue { i64, ptr } %t206, 0
  %t210 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t211 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t212 = add i64 %t209, %t211
  %t213 = load i64, ptr %l102
  %t214 = inttoptr i64 %t213 to ptr
  %t215 = call ptr @__olang_scope_alloc(ptr %t214, i64 %t212)
  call void @olang_textcopy(ptr %t215, ptr %t208, i64 %t209)
  %t216 = getelementptr i8, ptr %t215, i64 %t209
  call void @olang_textcopy(ptr %t216, ptr %t210, i64 %t211)
  %t217 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t215, 1
  %t220 = load i64, ptr %l102
  %t221 = inttoptr i64 %t220 to ptr
  %t222 = extractvalue { i64, ptr } %t218, 0
  %t223 = extractvalue { i64, ptr } %t218, 1
  %t224 = mul i64 %t222, 1
  %t225 = call ptr @__olang_scope_alloc(ptr %t221, i64 %t224)
  call void @llvm.memcpy.p0.p0.i64(ptr %t225, ptr %t223, i64 %t224, i1 false)
  %t226 = insertvalue { i64, ptr } undef, i64 %t222, 0
  %t227 = insertvalue { i64, ptr } %t226, ptr %t225, 1
  %t229 = load i64, ptr %l95
  %t230 = inttoptr i64 %t229 to ptr
  %t231 = load i64, ptr %l95
  %t232 = inttoptr i64 %t231 to ptr
  %t233 = load i64, ptr %l95
  %t234 = inttoptr i64 %t233 to ptr
  %t235 = load { i64, ptr }, ptr %l101, !tbaa !27
  call void @compiler_2ffetch_3aFetcher_2ector(ptr %t228, ptr %t230, ptr %t232, ptr %s0, ptr %t234, { i64, ptr } %t235, { i64, ptr } %t227, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d28, i32 0, i32 1) }, i1 false, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l107, ptr %t228, i64 184, i1 false)
  br label %bb44
bb44:
  %t237 = load i64, ptr %l95
  %t238 = inttoptr i64 %t237 to ptr
  %t239 = call ptr @__olang_scope_alloc_a(ptr %t238, i64 184, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t239, ptr %l107, i64 184, i1 false)
  store ptr %t239, ptr %l108, !tbaa !29
  %t240 = ptrtoint ptr %s0 to i64
  store i64 %t240, ptr %l109, !tbaa !24
  %t241 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aLoader_2e3
  br i1 %t241, label %bb45, label %bb46
bb45:
  %t243 = call ptr @__olang_region_make(ptr %s0)
  %t244 = ptrtoint ptr %t243 to i64
  store i64 %t244, ptr %l109, !tbaa !24
  br label %bb46
bb46:
  %t245 = load i64, ptr %l109
  %t246 = inttoptr i64 %t245 to ptr
  %t247 = call %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %t246)
  store %"compiler/source:Names" %t247, ptr %l111
  br label %bb47
bb47:
  %t248 = load %"compiler/source:Names", ptr %l111
  %t249 = load i64, ptr %l109
  %t250 = inttoptr i64 %t249 to ptr
  %t251 = call ptr @__olang_scope_alloc_a(ptr %t250, i64 104, i64 8)
  store %"compiler/source:Names" %t248, ptr %t251
  %t253 = load ptr, ptr %l94, !tbaa !29
  %t254 = load ptr, ptr %l108, !tbaa !29
  call void @compiler_2fload_3aLoader_2ector(ptr %t252, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, ptr %s0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %t253, ptr %t254, ptr %t251, ptr %l10)
  call void @llvm.memmove.p0.p0.i64(ptr %l114, ptr %t252, i64 680, i1 false)
  br label %bb48
bb48:
  call void @llvm.memmove.p0.p0.i64(ptr %l15, ptr %l114, i64 680, i1 false)
  store ptr %l15, ptr %l115, !tbaa !29
  %t257 = ptrtoint ptr %s0 to i64
  store i64 %t257, ptr %l116, !tbaa !24
  %t258 = load i1, ptr @olang_2esole_2ecompiler_2fload_3aModule_2e0
  br i1 %t258, label %bb49, label %bb50
bb49:
  %t260 = call ptr @__olang_region_make(ptr %s0)
  %t261 = ptrtoint ptr %t260 to i64
  store i64 %t261, ptr %l116, !tbaa !24
  br label %bb50
bb50:
  %t262 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t263 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t263, ptr %l119, !tbaa !27
  %t264 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr { i64, ptr }, ptr %t265, i64 0
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !37
  %t269 = extractvalue { i64, ptr } %t262, 1
  %t270 = extractvalue { i64, ptr } %t262, 0
  %t271 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 1
  %t272 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d30, i32 0, i32 1) }, 0
  %t273 = add i64 %t270, %t272
  %t275 = extractvalue { i64, ptr } %t267, 1
  %t276 = extractvalue { i64, ptr } %t267, 0
  %t277 = add i64 %t273, %t276
  %t278 = load i64, ptr %l116
  %t279 = inttoptr i64 %t278 to ptr
  %t280 = call ptr @__olang_scope_alloc(ptr %t279, i64 %t277)
  call void @olang_textcopy(ptr %t280, ptr %t269, i64 %t270)
  %t281 = getelementptr i8, ptr %t280, i64 %t270
  call void @olang_textcopy(ptr %t281, ptr %t271, i64 %t272)
  %t282 = getelementptr i8, ptr %t281, i64 %t272
  call void @olang_textcopy(ptr %t282, ptr %t275, i64 %t276)
  %t283 = insertvalue { i64, ptr } undef, i64 %t277, 0
  %t284 = insertvalue { i64, ptr } %t283, ptr %t280, 1
  %t286 = load i64, ptr %l116
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = extractvalue { i64, ptr } %t284, 0
  %t289 = extractvalue { i64, ptr } %t284, 1
  %t290 = mul i64 %t288, 1
  %t291 = call ptr @__olang_scope_alloc(ptr %t287, i64 %t290)
  call void @llvm.memcpy.p0.p0.i64(ptr %t291, ptr %t289, i64 %t290, i1 false)
  %t292 = insertvalue { i64, ptr } undef, i64 %t288, 0
  %t293 = insertvalue { i64, ptr } %t292, ptr %t291, 1
  %t294 = load ptr, ptr %l115, !tbaa !29
  %t296 = call i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %s0, ptr %s0, ptr %t294, { i64, ptr } %t293)
  store i64 %t296, ptr %l123
  br label %bb51
bb51:
  call void @compiler_2fnames_3aResolver_2ector(ptr %t297, ptr %s0, ptr %s0, ptr %l15)
  call void @llvm.memmove.p0.p0.i64(ptr %l125, ptr %t297, i64 1072, i1 false)
  br label %bb52
bb52:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l125, i64 1072, i1 false)
  call void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eResolve(ptr %s0, ptr %l16)
  br label %bb53
bb53:
  %t300 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t300, ptr %l127
  br label %bb54
bb54:
  %t301 = load %"std/prelude/text:StringBuilder", ptr %l127
  store %"std/prelude/text:StringBuilder" %t301, ptr %l17
  store %olang.scope zeroinitializer, ptr %s14
  %t303 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %s0, ptr %s14, ptr %l10)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t303, ptr %l129
  br label %bb55
bb55:
  %t304 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l129
  %t305 = call ptr @__olang_scope_alloc_a(ptr %s14, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t304, ptr %t305
  store ptr %t305, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb56
bb56:
  store %olang.scope zeroinitializer, ptr %s15
  %t307 = load i64, ptr %l19, !tbaa !24
  store i64 %t307, ptr %l131, !tbaa !24
  %t308 = load ptr, ptr %l18, !tbaa !29
  %t310 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %s14, ptr %t308)
  store i64 %t310, ptr %l133
  br label %bb57
bb57:
  %t311 = load i64, ptr %l131, !tbaa !24
  %t312 = load i64, ptr %l133, !tbaa !24
  %t313 = icmp slt i64 %t311, %t312
  %t315 = xor i1 %t313, true
  br i1 %t315, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s15)
  br label %bb65
bb59:
  br label %bb60
bb60:
  %t317 = load ptr, ptr %l18, !tbaa !29
  %t318 = load i64, ptr %l19, !tbaa !24
  %t321 = call %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %s14, ptr %s14, ptr %t317, i64 %t318)
  store %"compiler/diag:Said" %t321, ptr %l138
  br label %bb61
bb61:
  %t322 = load %"compiler/diag:Said", ptr %l138
  store %"compiler/diag:Said" %t322, ptr %l20
  %t323 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t323, ptr %l139, !tbaa !27
  %t324 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t325 = load ptr, ptr %t324, !tbaa !27
  %t326 = getelementptr { i64, ptr }, ptr %t325, i64 1
  %t327 = load { i64, ptr }, ptr %t326, !tbaa !37
  %t328 = getelementptr %"compiler/diag:Said", ptr %l20, i32 0, i32 2
  %t329 = load i64, ptr %t328, !tbaa !24
  %t332 = call { i64, i64 } @compiler_2fnames_2elineCol(ptr %v0, { i64, ptr } %t327, i64 %t329)
  store { i64, i64 } %t332, ptr %l142
  br label %bb62
bb62:
  %t333 = load { i64, i64 }, ptr %l142
  store { i64, i64 } %t333, ptr %l21
  %t334 = getelementptr { i64, i64 }, ptr %l21, i32 0, i32 0
  %t335 = load i64, ptr %t334, !tbaa !24
  %t337 = getelementptr { i64, i64 }, ptr %l21, i32 0, i32 1
  %t338 = load i64, ptr %t337, !tbaa !24
  %t340 = getelementptr %"compiler/diag:Said", ptr %l20, i32 0, i32 0
  %t341 = load { i64, ptr }, ptr %t340, !tbaa !27
  %t345 = extractvalue { i64, ptr } %t341, 1
  %t346 = extractvalue { i64, ptr } %t341, 0
  %t347 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t348 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t349 = add i64 %t346, %t348
  %t351 = call i64 @__olang_fmt_i64(ptr null, i64 %t335)
  %t352 = add i64 %t349, %t351
  %t353 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t354 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t355 = add i64 %t352, %t354
  %t357 = call i64 @__olang_fmt_i64(ptr null, i64 %t338)
  %t358 = add i64 %t355, %t357
  %t359 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t360 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t361 = add i64 %t358, %t360
  %t362 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t361)
  call void @olang_textcopy(ptr %t362, ptr %t345, i64 %t346)
  %t363 = getelementptr i8, ptr %t362, i64 %t346
  call void @olang_textcopy(ptr %t363, ptr %t347, i64 %t348)
  %t364 = getelementptr i8, ptr %t363, i64 %t348
  %t365 = call i64 @__olang_fmt_i64(ptr %t364, i64 %t335)
  %t366 = getelementptr i8, ptr %t364, i64 %t351
  call void @olang_textcopy(ptr %t366, ptr %t353, i64 %t354)
  %t367 = getelementptr i8, ptr %t366, i64 %t354
  %t368 = call i64 @__olang_fmt_i64(ptr %t367, i64 %t338)
  %t369 = getelementptr i8, ptr %t367, i64 %t357
  call void @olang_textcopy(ptr %t369, ptr %t359, i64 %t360)
  %t370 = insertvalue { i64, ptr } undef, i64 %t361, 0
  %t371 = insertvalue { i64, ptr } %t370, ptr %t362, 1
  %t373 = extractvalue { i64, ptr } %t371, 0
  %t374 = extractvalue { i64, ptr } %t371, 1
  %t375 = mul i64 %t373, 1
  %t376 = call ptr @__olang_scope_alloc(ptr %s15, i64 %t375)
  call void @llvm.memcpy.p0.p0.i64(ptr %t376, ptr %t374, i64 %t375, i1 false)
  %t377 = insertvalue { i64, ptr } undef, i64 %t373, 0
  %t378 = insertvalue { i64, ptr } %t377, ptr %t376, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s15, ptr %l17, { i64, ptr } %t378)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s15)
  br label %bb64
bb64:
  %t381 = load i64, ptr %l19, !tbaa !24
  %t383 = add i64 %t381, 1
  store i64 %t383, ptr %l19, !tbaa !24
  br label %bb56
bb65:
  call void @__olang_scope_close(ptr %s14)
  %t386 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l17)
  store { i64, ptr } %t386, ptr %l154
  br label %bb66
bb66:
  %t387 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t389 = call i32 @std_2fos_2eRemoveAll(ptr %s0, { i64, ptr } %t387)
  store i32 %t389, ptr %l156
  %t390 = icmp ne i32 %t389, 0
  br i1 %t390, label %bb68, label %ok.391, !prof !99
ok.391:
  br label %bb67
bb67:
  br label %bb72
bb68:
  %t392 = load i32, ptr %l156, !tbaa !23
  %t393 = ashr i32 %t392, 16
  %t395 = icmp eq i32 %t393, 1
  store i1 %t395, ptr %l158, !tbaa !21
  %t396 = load i32, ptr %l156, !tbaa !23
  %t397 = ashr i32 %t396, 16
  %t399 = icmp eq i32 %t397, 1
  br i1 %t399, label %bb69, label %bb70
bb69:
  call void @__olang_errpay_pop()
  br label %bb70
bb70:
  br label %bb71
bb71:
  br label %bb72
bb72:
  call void @__olang_scope_close(ptr %s0)
  %t401 = load { i64, ptr }, ptr %l154, !tbaa !27
  store { i64, ptr } %t401, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/names:Entry" @compiler_2fnames_3aEntry_2ector(ptr %v0, ptr %v1, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3, ptr %a4) #0 {
entry:
  %rv = alloca %"compiler/names:Entry"
  br label %start
start:
  br label %bb0
bb0:
  %t12 = insertvalue %"compiler/names:Entry" undef, i32 %a0, 0
  %t14 = insertvalue %"compiler/names:Entry" %t12, %"compiler/source:Span" %a1, 1
  %t16 = insertvalue %"compiler/names:Entry" %t14, i32 %a2, 2
  %t18 = insertvalue %"compiler/names:Entry" %t16, i1 %a3, 3
  %t20 = insertvalue %"compiler/names:Entry" %t18, ptr %a4, 4
  store %"compiler/names:Entry" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:Entry", ptr %rv
  ret %"compiler/names:Entry" %rr
}

define dso_local void @compiler_2fnames_3aResolver_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l6 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l7 = alloca i64
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i1
  %l14 = alloca i1
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l23 = alloca i1
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l29 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca i64
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca i64
  %l48 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca i64
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca i64
  %l60 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l62 = alloca i64
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca i64
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca i64
  %l72 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l74 = alloca i64
  %l76 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca i64
  %l80 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l83 = alloca i64
  %l85 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l87 = alloca i64
  %l89 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l93 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l95 = alloca %"compiler/names:Resolver"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %l29
  br label %bb1
bb1:
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l29
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l2
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l30, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e2
  br i1 %t6, label %bb2, label %bb3
bb2:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l30, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l30
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t11)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t12, ptr %l32
  br label %bb4
bb4:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e2
  br i1 %t13, label %bb5, label %bb6
bb5:
  %t15 = load i64, ptr %l30
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32, i32 0, i32 2
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32, i32 0, i32 1
  %t24 = load { i64, ptr }, ptr %t23
  %t25 = extractvalue { i64, ptr } %t24, 1
  %t26 = call ptr @__olang_region_or(ptr %t25, ptr null)
  %t27 = icmp ne ptr %t26, null
  %t28 = select i1 %t27, ptr %t26, ptr %t22
  %t29 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32, i32 0, i32 0
  %t30 = load { i64, ptr }, ptr %t29
  %t31 = extractvalue { i64, ptr } %t30, 1
  %t32 = call ptr @__olang_region_or(ptr %t31, ptr null)
  %t33 = icmp ne ptr %t32, null
  %t34 = select i1 %t33, ptr %t32, ptr %t28
  %t35 = icmp eq ptr %t34, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t35)
  br label %bb6
bb6:
  %t36 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t36, ptr %l3
  %t37 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2fnames_3aRef_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t37, ptr %l34
  br label %bb7
bb7:
  %t38 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t38, ptr %l4
  %t39 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t39, ptr %l35
  br label %bb8
bb8:
  %t40 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, ptr %l5
  %t41 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t41, ptr %l36
  br label %bb9
bb9:
  %t42 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l6
  store i64 -1, ptr %l7, !tbaa !24
  %t43 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l37
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l8
  %t45 = ptrtoint ptr %v1 to i64
  store i64 %t45, ptr %l38, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e8
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v1)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l38, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l38
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t51)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t52, ptr %l40
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e8
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l38
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40, i32 0, i32 2
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40, i32 0, i32 1
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr %t62
  %t69 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40, i32 0, i32 0
  %t70 = load { i64, ptr }, ptr %t69
  %t71 = extractvalue { i64, ptr } %t70, 1
  %t72 = call ptr @__olang_region_or(ptr %t71, ptr null)
  %t73 = icmp ne ptr %t72, null
  %t74 = select i1 %t73, ptr %t72, ptr %t68
  %t75 = icmp eq ptr %t74, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t75)
  br label %bb15
bb15:
  %t76 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t76, ptr %l9
  %t77 = ptrtoint ptr %v1 to i64
  store i64 %t77, ptr %l42, !tbaa !24
  %t78 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e9
  br i1 %t78, label %bb16, label %bb17
bb16:
  %t80 = call ptr @__olang_region_make(ptr %v1)
  %t81 = ptrtoint ptr %t80 to i64
  store i64 %t81, ptr %l42, !tbaa !24
  br label %bb17
bb17:
  %t82 = load i64, ptr %l42
  %t83 = inttoptr i64 %t82 to ptr
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_3e_2ector(ptr %t83, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l44
  br label %bb18
bb18:
  %t85 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e9
  br i1 %t85, label %bb19, label %bb20
bb19:
  %t87 = load i64, ptr %l42
  %t88 = inttoptr i64 %t87 to ptr
  %t89 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44, i32 0, i32 0
  %t90 = load { i64, ptr }, ptr %t89
  %t91 = extractvalue { i64, ptr } %t90, 1
  %t92 = call ptr @__olang_region_or(ptr %t91, ptr null)
  %t93 = icmp ne ptr %t92, null
  %t94 = select i1 %t93, ptr %t92, ptr null
  %t95 = icmp eq ptr %t94, %t88
  call void @__olang_region_settle(ptr %t88, i1 %t95)
  br label %bb20
bb20:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %l10
  %t97 = ptrtoint ptr %v1 to i64
  store i64 %t97, ptr %l46, !tbaa !24
  %t98 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e10
  br i1 %t98, label %bb21, label %bb22
bb21:
  %t100 = call ptr @__olang_region_make(ptr %v1)
  %t101 = ptrtoint ptr %t100 to i64
  store i64 %t101, ptr %l46, !tbaa !24
  br label %bb22
bb22:
  %t102 = load i64, ptr %l46
  %t103 = inttoptr i64 %t102 to ptr
  %t104 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t103, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t104, ptr %l48
  br label %bb23
bb23:
  %t105 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e10
  br i1 %t105, label %bb24, label %bb25
bb24:
  %t107 = load i64, ptr %l46
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48, i32 0, i32 0
  %t110 = load { i64, ptr }, ptr %t109
  %t111 = extractvalue { i64, ptr } %t110, 1
  %t112 = call ptr @__olang_region_or(ptr %t111, ptr null)
  %t113 = icmp ne ptr %t112, null
  %t114 = select i1 %t113, ptr %t112, ptr null
  %t115 = icmp eq ptr %t114, %t108
  call void @__olang_region_settle(ptr %t108, i1 %t115)
  br label %bb25
bb25:
  %t116 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l48
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t116, ptr %l11
  %t117 = ptrtoint ptr %v1 to i64
  store i64 %t117, ptr %l50, !tbaa !24
  %t118 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e11
  br i1 %t118, label %bb26, label %bb27
bb26:
  %t120 = call ptr @__olang_region_make(ptr %v1)
  %t121 = ptrtoint ptr %t120 to i64
  store i64 %t121, ptr %l50, !tbaa !24
  br label %bb27
bb27:
  %t122 = load i64, ptr %l50
  %t123 = inttoptr i64 %t122 to ptr
  %t124 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t123, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t124, ptr %l52
  br label %bb28
bb28:
  %t125 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e11
  br i1 %t125, label %bb29, label %bb30
bb29:
  %t127 = load i64, ptr %l50
  %t128 = inttoptr i64 %t127 to ptr
  %t129 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr null
  %t135 = icmp eq ptr %t134, %t128
  call void @__olang_region_settle(ptr %t128, i1 %t135)
  br label %bb30
bb30:
  %t136 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t136, ptr %l12
  store i1 false, ptr %l13, !tbaa !21
  store i1 false, ptr %l14, !tbaa !21
  store i64 0, ptr %l15, !tbaa !24
  %t137 = ptrtoint ptr %v1 to i64
  store i64 %t137, ptr %l54, !tbaa !24
  %t138 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e15
  br i1 %t138, label %bb31, label %bb32
bb31:
  %t140 = call ptr @__olang_region_make(ptr %v1)
  %t141 = ptrtoint ptr %t140 to i64
  store i64 %t141, ptr %l54, !tbaa !24
  br label %bb32
bb32:
  %t142 = load i64, ptr %l54
  %t143 = inttoptr i64 %t142 to ptr
  %t144 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_3e_2ector(ptr %t143, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %l56
  br label %bb33
bb33:
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e15
  br i1 %t145, label %bb34, label %bb35
bb34:
  %t147 = load i64, ptr %l54
  %t148 = inttoptr i64 %t147 to ptr
  %t149 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56, i32 0, i32 0
  %t150 = load { i64, ptr }, ptr %t149
  %t151 = extractvalue { i64, ptr } %t150, 1
  %t152 = call ptr @__olang_region_or(ptr %t151, ptr null)
  %t153 = icmp ne ptr %t152, null
  %t154 = select i1 %t153, ptr %t152, ptr null
  %t155 = icmp eq ptr %t154, %t148
  call void @__olang_region_settle(ptr %t148, i1 %t155)
  br label %bb35
bb35:
  %t156 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t156, ptr %l16
  %t157 = ptrtoint ptr %v1 to i64
  store i64 %t157, ptr %l58, !tbaa !24
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e16
  br i1 %t158, label %bb36, label %bb37
bb36:
  %t160 = call ptr @__olang_region_make(ptr %v1)
  %t161 = ptrtoint ptr %t160 to i64
  store i64 %t161, ptr %l58, !tbaa !24
  br label %bb37
bb37:
  %t162 = load i64, ptr %l58
  %t163 = inttoptr i64 %t162 to ptr
  %t164 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %t163)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t164, ptr %l60
  br label %bb38
bb38:
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e16
  br i1 %t165, label %bb39, label %bb40
bb39:
  %t167 = load i64, ptr %l58
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60, i32 0, i32 2
  %t170 = load { i64, ptr }, ptr %t169
  %t171 = extractvalue { i64, ptr } %t170, 1
  %t172 = call ptr @__olang_region_or(ptr %t171, ptr null)
  %t173 = icmp ne ptr %t172, null
  %t174 = select i1 %t173, ptr %t172, ptr null
  %t175 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60, i32 0, i32 1
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = icmp ne ptr %t178, null
  %t180 = select i1 %t179, ptr %t178, ptr %t174
  %t181 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60, i32 0, i32 0
  %t182 = load { i64, ptr }, ptr %t181
  %t183 = extractvalue { i64, ptr } %t182, 1
  %t184 = call ptr @__olang_region_or(ptr %t183, ptr null)
  %t185 = icmp ne ptr %t184, null
  %t186 = select i1 %t185, ptr %t184, ptr %t180
  %t187 = icmp eq ptr %t186, %t168
  call void @__olang_region_settle(ptr %t168, i1 %t187)
  br label %bb40
bb40:
  %t188 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l60
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t188, ptr %l17
  %t189 = ptrtoint ptr %v1 to i64
  store i64 %t189, ptr %l62, !tbaa !24
  %t190 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e17
  br i1 %t190, label %bb41, label %bb42
bb41:
  %t192 = call ptr @__olang_region_make(ptr %v1)
  %t193 = ptrtoint ptr %t192 to i64
  store i64 %t193, ptr %l62, !tbaa !24
  br label %bb42
bb42:
  %t194 = load i64, ptr %l62
  %t195 = inttoptr i64 %t194 to ptr
  %t196 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t195, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t196, ptr %l64
  br label %bb43
bb43:
  %t197 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e17
  br i1 %t197, label %bb44, label %bb45
bb44:
  %t199 = load i64, ptr %l62
  %t200 = inttoptr i64 %t199 to ptr
  %t201 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64, i32 0, i32 0
  %t202 = load { i64, ptr }, ptr %t201
  %t203 = extractvalue { i64, ptr } %t202, 1
  %t204 = call ptr @__olang_region_or(ptr %t203, ptr null)
  %t205 = icmp ne ptr %t204, null
  %t206 = select i1 %t205, ptr %t204, ptr null
  %t207 = icmp eq ptr %t206, %t200
  call void @__olang_region_settle(ptr %t200, i1 %t207)
  br label %bb45
bb45:
  %t208 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t208, ptr %l18
  %t209 = ptrtoint ptr %v1 to i64
  store i64 %t209, ptr %l66, !tbaa !24
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e18
  br i1 %t210, label %bb46, label %bb47
bb46:
  %t212 = call ptr @__olang_region_make(ptr %v1)
  %t213 = ptrtoint ptr %t212 to i64
  store i64 %t213, ptr %l66, !tbaa !24
  br label %bb47
bb47:
  %t214 = load i64, ptr %l66
  %t215 = inttoptr i64 %t214 to ptr
  %t216 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2ector(ptr %t215, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t216, ptr %l68
  br label %bb48
bb48:
  %t217 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e18
  br i1 %t217, label %bb49, label %bb50
bb49:
  %t219 = load i64, ptr %l66
  %t220 = inttoptr i64 %t219 to ptr
  %t221 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68, i32 0, i32 0
  %t222 = load { i64, ptr }, ptr %t221
  %t223 = extractvalue { i64, ptr } %t222, 1
  %t224 = call ptr @__olang_region_or(ptr %t223, ptr null)
  %t225 = icmp ne ptr %t224, null
  %t226 = select i1 %t225, ptr %t224, ptr null
  %t227 = icmp eq ptr %t226, %t220
  call void @__olang_region_settle(ptr %t220, i1 %t227)
  br label %bb50
bb50:
  %t228 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t228, ptr %l19
  %t229 = ptrtoint ptr %v1 to i64
  store i64 %t229, ptr %l70, !tbaa !24
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e19
  br i1 %t230, label %bb51, label %bb52
bb51:
  %t232 = call ptr @__olang_region_make(ptr %v1)
  %t233 = ptrtoint ptr %t232 to i64
  store i64 %t233, ptr %l70, !tbaa !24
  br label %bb52
bb52:
  %t234 = load i64, ptr %l70
  %t235 = inttoptr i64 %t234 to ptr
  %t236 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t235)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t236, ptr %l72
  br label %bb53
bb53:
  %t237 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e19
  br i1 %t237, label %bb54, label %bb55
bb54:
  %t239 = load i64, ptr %l70
  %t240 = inttoptr i64 %t239 to ptr
  %t241 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72, i32 0, i32 2
  %t242 = load { i64, ptr }, ptr %t241
  %t243 = extractvalue { i64, ptr } %t242, 1
  %t244 = call ptr @__olang_region_or(ptr %t243, ptr null)
  %t245 = icmp ne ptr %t244, null
  %t246 = select i1 %t245, ptr %t244, ptr null
  %t247 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72, i32 0, i32 1
  %t248 = load { i64, ptr }, ptr %t247
  %t249 = extractvalue { i64, ptr } %t248, 1
  %t250 = call ptr @__olang_region_or(ptr %t249, ptr null)
  %t251 = icmp ne ptr %t250, null
  %t252 = select i1 %t251, ptr %t250, ptr %t246
  %t253 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72, i32 0, i32 0
  %t254 = load { i64, ptr }, ptr %t253
  %t255 = extractvalue { i64, ptr } %t254, 1
  %t256 = call ptr @__olang_region_or(ptr %t255, ptr null)
  %t257 = icmp ne ptr %t256, null
  %t258 = select i1 %t257, ptr %t256, ptr %t252
  %t259 = icmp eq ptr %t258, %t240
  call void @__olang_region_settle(ptr %t240, i1 %t259)
  br label %bb55
bb55:
  %t260 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l72
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t260, ptr %l20
  %t261 = ptrtoint ptr %v1 to i64
  store i64 %t261, ptr %l74, !tbaa !24
  %t262 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e20
  br i1 %t262, label %bb56, label %bb57
bb56:
  %t264 = call ptr @__olang_region_make(ptr %v1)
  %t265 = ptrtoint ptr %t264 to i64
  store i64 %t265, ptr %l74, !tbaa !24
  br label %bb57
bb57:
  %t266 = load i64, ptr %l74
  %t267 = inttoptr i64 %t266 to ptr
  %t268 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_3e_2ector(ptr %t267, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t268, ptr %l76
  br label %bb58
bb58:
  %t269 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e20
  br i1 %t269, label %bb59, label %bb60
bb59:
  %t271 = load i64, ptr %l74
  %t272 = inttoptr i64 %t271 to ptr
  %t273 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76, i32 0, i32 0
  %t274 = load { i64, ptr }, ptr %t273
  %t275 = extractvalue { i64, ptr } %t274, 1
  %t276 = call ptr @__olang_region_or(ptr %t275, ptr null)
  %t277 = icmp ne ptr %t276, null
  %t278 = select i1 %t277, ptr %t276, ptr null
  %t279 = icmp eq ptr %t278, %t272
  call void @__olang_region_settle(ptr %t272, i1 %t279)
  br label %bb60
bb60:
  %t280 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l76
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t280, ptr %l21
  %t281 = ptrtoint ptr %v1 to i64
  store i64 %t281, ptr %l78, !tbaa !24
  %t282 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e21
  br i1 %t282, label %bb61, label %bb62
bb61:
  %t284 = call ptr @__olang_region_make(ptr %v1)
  %t285 = ptrtoint ptr %t284 to i64
  store i64 %t285, ptr %l78, !tbaa !24
  br label %bb62
bb62:
  %t286 = load i64, ptr %l78
  %t287 = inttoptr i64 %t286 to ptr
  %t288 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t287)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t288, ptr %l80
  br label %bb63
bb63:
  %t289 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e21
  br i1 %t289, label %bb64, label %bb65
bb64:
  %t291 = load i64, ptr %l78
  %t292 = inttoptr i64 %t291 to ptr
  %t293 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 2
  %t294 = load { i64, ptr }, ptr %t293
  %t295 = extractvalue { i64, ptr } %t294, 1
  %t296 = call ptr @__olang_region_or(ptr %t295, ptr null)
  %t297 = icmp ne ptr %t296, null
  %t298 = select i1 %t297, ptr %t296, ptr null
  %t299 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 1
  %t300 = load { i64, ptr }, ptr %t299
  %t301 = extractvalue { i64, ptr } %t300, 1
  %t302 = call ptr @__olang_region_or(ptr %t301, ptr null)
  %t303 = icmp ne ptr %t302, null
  %t304 = select i1 %t303, ptr %t302, ptr %t298
  %t305 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80, i32 0, i32 0
  %t306 = load { i64, ptr }, ptr %t305
  %t307 = extractvalue { i64, ptr } %t306, 1
  %t308 = call ptr @__olang_region_or(ptr %t307, ptr null)
  %t309 = icmp ne ptr %t308, null
  %t310 = select i1 %t309, ptr %t308, ptr %t304
  %t311 = icmp eq ptr %t310, %t292
  call void @__olang_region_settle(ptr %t292, i1 %t311)
  br label %bb65
bb65:
  %t312 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t312, ptr %l22
  store i1 false, ptr %l23, !tbaa !21
  %t313 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t313, ptr %l82
  br label %bb66
bb66:
  %t314 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t314, ptr %l24
  %t315 = ptrtoint ptr %v1 to i64
  store i64 %t315, ptr %l83, !tbaa !24
  %t316 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e24
  br i1 %t316, label %bb67, label %bb68
bb67:
  %t318 = call ptr @__olang_region_make(ptr %v1)
  %t319 = ptrtoint ptr %t318 to i64
  store i64 %t319, ptr %l83, !tbaa !24
  br label %bb68
bb68:
  %t320 = load i64, ptr %l83
  %t321 = inttoptr i64 %t320 to ptr
  %t322 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t321, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t322, ptr %l85
  br label %bb69
bb69:
  %t323 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e24
  br i1 %t323, label %bb70, label %bb71
bb70:
  %t325 = load i64, ptr %l83
  %t326 = inttoptr i64 %t325 to ptr
  %t327 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85, i32 0, i32 0
  %t328 = load { i64, ptr }, ptr %t327
  %t329 = extractvalue { i64, ptr } %t328, 1
  %t330 = call ptr @__olang_region_or(ptr %t329, ptr null)
  %t331 = icmp ne ptr %t330, null
  %t332 = select i1 %t331, ptr %t330, ptr null
  %t333 = icmp eq ptr %t332, %t326
  call void @__olang_region_settle(ptr %t326, i1 %t333)
  br label %bb71
bb71:
  %t334 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l85
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t334, ptr %l25
  %t335 = ptrtoint ptr %v1 to i64
  store i64 %t335, ptr %l87, !tbaa !24
  %t336 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e25
  br i1 %t336, label %bb72, label %bb73
bb72:
  %t338 = call ptr @__olang_region_make(ptr %v1)
  %t339 = ptrtoint ptr %t338 to i64
  store i64 %t339, ptr %l87, !tbaa !24
  br label %bb73
bb73:
  %t340 = load i64, ptr %l87
  %t341 = inttoptr i64 %t340 to ptr
  %t342 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t341, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t342, ptr %l89
  br label %bb74
bb74:
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e25
  br i1 %t343, label %bb75, label %bb76
bb75:
  %t345 = load i64, ptr %l87
  %t346 = inttoptr i64 %t345 to ptr
  %t347 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89, i32 0, i32 0
  %t348 = load { i64, ptr }, ptr %t347
  %t349 = extractvalue { i64, ptr } %t348, 1
  %t350 = call ptr @__olang_region_or(ptr %t349, ptr null)
  %t351 = icmp ne ptr %t350, null
  %t352 = select i1 %t351, ptr %t350, ptr null
  %t353 = icmp eq ptr %t352, %t346
  call void @__olang_region_settle(ptr %t346, i1 %t353)
  br label %bb76
bb76:
  %t354 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l89
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t354, ptr %l26
  %t355 = ptrtoint ptr %v1 to i64
  store i64 %t355, ptr %l91, !tbaa !24
  %t356 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e26
  br i1 %t356, label %bb77, label %bb78
bb77:
  %t358 = call ptr @__olang_region_make(ptr %v1)
  %t359 = ptrtoint ptr %t358 to i64
  store i64 %t359, ptr %l91, !tbaa !24
  br label %bb78
bb78:
  %t360 = load i64, ptr %l91
  %t361 = inttoptr i64 %t360 to ptr
  %t362 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t361)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t362, ptr %l93
  br label %bb79
bb79:
  %t363 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aResolver_2e26
  br i1 %t363, label %bb80, label %bb81
bb80:
  %t365 = load i64, ptr %l91
  %t366 = inttoptr i64 %t365 to ptr
  %t367 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l93, i32 0, i32 2
  %t368 = load { i64, ptr }, ptr %t367
  %t369 = extractvalue { i64, ptr } %t368, 1
  %t370 = call ptr @__olang_region_or(ptr %t369, ptr null)
  %t371 = icmp ne ptr %t370, null
  %t372 = select i1 %t371, ptr %t370, ptr null
  %t373 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l93, i32 0, i32 1
  %t374 = load { i64, ptr }, ptr %t373
  %t375 = extractvalue { i64, ptr } %t374, 1
  %t376 = call ptr @__olang_region_or(ptr %t375, ptr null)
  %t377 = icmp ne ptr %t376, null
  %t378 = select i1 %t377, ptr %t376, ptr %t372
  %t379 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l93, i32 0, i32 0
  %t380 = load { i64, ptr }, ptr %t379
  %t381 = extractvalue { i64, ptr } %t380, 1
  %t382 = call ptr @__olang_region_or(ptr %t381, ptr null)
  %t383 = icmp ne ptr %t382, null
  %t384 = select i1 %t383, ptr %t382, ptr %t378
  %t385 = icmp eq ptr %t384, %t366
  call void @__olang_region_settle(ptr %t366, i1 %t385)
  br label %bb81
bb81:
  %t386 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l93
  %t387 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 0
  %t388 = load ptr, ptr %l1, !tbaa !29
  store ptr %t388, ptr %t387, !tbaa !29
  %t389 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 1
  %t390 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t390, ptr %t389
  %t391 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 2
  %t392 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t392, ptr %t391
  %t393 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 3
  %t394 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t394, ptr %t393
  %t395 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 4
  %t396 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t396, ptr %t395
  %t397 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 5
  %t398 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l6
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t398, ptr %t397
  %t399 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 6
  %t400 = load i64, ptr %l7, !tbaa !24
  store i64 %t400, ptr %t399, !tbaa !24
  %t401 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 7
  %t402 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t402, ptr %t401
  %t403 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 8
  %t404 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t404, ptr %t403
  %t405 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 9
  %t406 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t406, ptr %t405
  %t407 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 10
  %t408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t408, ptr %t407
  %t409 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 11
  %t410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t410, ptr %t409
  %t411 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 12
  %t412 = load i1, ptr %l13, !tbaa !21
  store i1 %t412, ptr %t411, !tbaa !21
  %t413 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 13
  %t414 = load i1, ptr %l14, !tbaa !21
  store i1 %t414, ptr %t413, !tbaa !21
  %t415 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 14
  %t416 = load i64, ptr %l15, !tbaa !24
  store i64 %t416, ptr %t415, !tbaa !24
  %t417 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 15
  %t418 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t418, ptr %t417
  %t419 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 16
  %t420 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t420, ptr %t419
  %t421 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 17
  %t422 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t422, ptr %t421
  %t423 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 18
  %t424 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t424, ptr %t423
  %t425 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 19
  %t426 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t426, ptr %t425
  %t427 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 20
  %t428 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l21
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t428, ptr %t427
  %t429 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 21
  %t430 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t430, ptr %t429
  %t431 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 22
  %t432 = load i1, ptr %l23, !tbaa !21
  store i1 %t432, ptr %t431, !tbaa !21
  %t433 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 23
  %t434 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t434, ptr %t433
  %t435 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 24
  %t436 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l25
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t436, ptr %t435
  %t437 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 25
  %t438 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t438, ptr %t437
  %t439 = getelementptr %"compiler/names:Resolver", ptr %l95, i32 0, i32 26
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t386, ptr %t439
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l95, i64 1072, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2fnames_3aTable_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
  %l8 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l22 = alloca %"compiler/names:Table"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ector(ptr %v0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l0
  %t3 = ptrtoint ptr %v0 to i64
  store i64 %t3, ptr %l6, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e1
  br i1 %t4, label %bb2, label %bb3
bb2:
  %t6 = call ptr @__olang_region_make(ptr %v0)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l6, !tbaa !24
  br label %bb3
bb3:
  %t8 = load i64, ptr %l6
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t9)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t10, ptr %l8
  br label %bb4
bb4:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e1
  br i1 %t11, label %bb5, label %bb6
bb5:
  %t13 = load i64, ptr %l6
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8, i32 0, i32 2
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8, i32 0, i32 1
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr %t20
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8, i32 0, i32 0
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr %t26
  %t33 = icmp eq ptr %t32, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t33)
  br label %bb6
bb6:
  %t34 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l8
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t34, ptr %l1
  %t35 = ptrtoint ptr %v0 to i64
  store i64 %t35, ptr %l10, !tbaa !24
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e2
  br i1 %t36, label %bb7, label %bb8
bb7:
  %t38 = call ptr @__olang_region_make(ptr %v0)
  %t39 = ptrtoint ptr %t38 to i64
  store i64 %t39, ptr %l10, !tbaa !24
  br label %bb8
bb8:
  %t40 = load i64, ptr %l10
  %t41 = inttoptr i64 %t40 to ptr
  %t42 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t41)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t42, ptr %l12
  br label %bb9
bb9:
  %t43 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e2
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t45 = load i64, ptr %l10
  %t46 = inttoptr i64 %t45 to ptr
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 2
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = icmp ne ptr %t50, null
  %t52 = select i1 %t51, ptr %t50, ptr null
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr %t52
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr %t58
  %t65 = icmp eq ptr %t64, %t46
  call void @__olang_region_settle(ptr %t46, i1 %t65)
  br label %bb11
bb11:
  %t66 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t66, ptr %l2
  %t67 = ptrtoint ptr %v0 to i64
  store i64 %t67, ptr %l14, !tbaa !24
  %t68 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e3
  br i1 %t68, label %bb12, label %bb13
bb12:
  %t70 = call ptr @__olang_region_make(ptr %v0)
  %t71 = ptrtoint ptr %t70 to i64
  store i64 %t71, ptr %l14, !tbaa !24
  br label %bb13
bb13:
  %t72 = load i64, ptr %l14
  %t73 = inttoptr i64 %t72 to ptr
  %t74 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %t73)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t74, ptr %l16
  br label %bb14
bb14:
  %t75 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e3
  br i1 %t75, label %bb15, label %bb16
bb15:
  %t77 = load i64, ptr %l14
  %t78 = inttoptr i64 %t77 to ptr
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16, i32 0, i32 2
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = icmp ne ptr %t82, null
  %t84 = select i1 %t83, ptr %t82, ptr null
  %t85 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16, i32 0, i32 1
  %t86 = load { i64, ptr }, ptr %t85
  %t87 = extractvalue { i64, ptr } %t86, 1
  %t88 = call ptr @__olang_region_or(ptr %t87, ptr null)
  %t89 = icmp ne ptr %t88, null
  %t90 = select i1 %t89, ptr %t88, ptr %t84
  %t91 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16, i32 0, i32 0
  %t92 = load { i64, ptr }, ptr %t91
  %t93 = extractvalue { i64, ptr } %t92, 1
  %t94 = call ptr @__olang_region_or(ptr %t93, ptr null)
  %t95 = icmp ne ptr %t94, null
  %t96 = select i1 %t95, ptr %t94, ptr %t90
  %t97 = icmp eq ptr %t96, %t78
  call void @__olang_region_settle(ptr %t78, i1 %t97)
  br label %bb16
bb16:
  %t98 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t98, ptr %l3
  %t99 = ptrtoint ptr %v0 to i64
  store i64 %t99, ptr %l18, !tbaa !24
  %t100 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e4
  br i1 %t100, label %bb17, label %bb18
bb17:
  %t102 = call ptr @__olang_region_make(ptr %v0)
  %t103 = ptrtoint ptr %t102 to i64
  store i64 %t103, ptr %l18, !tbaa !24
  br label %bb18
bb18:
  %t104 = load i64, ptr %l18
  %t105 = inttoptr i64 %t104 to ptr
  %t106 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %t105)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t106, ptr %l20
  br label %bb19
bb19:
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2fnames_3aTable_2e4
  br i1 %t107, label %bb20, label %bb21
bb20:
  %t109 = load i64, ptr %l18
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20, i32 0, i32 2
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr null
  %t117 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20, i32 0, i32 1
  %t118 = load { i64, ptr }, ptr %t117
  %t119 = extractvalue { i64, ptr } %t118, 1
  %t120 = call ptr @__olang_region_or(ptr %t119, ptr null)
  %t121 = icmp ne ptr %t120, null
  %t122 = select i1 %t121, ptr %t120, ptr %t116
  %t123 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20, i32 0, i32 0
  %t124 = load { i64, ptr }, ptr %t123
  %t125 = extractvalue { i64, ptr } %t124, 1
  %t126 = call ptr @__olang_region_or(ptr %t125, ptr null)
  %t127 = icmp ne ptr %t126, null
  %t128 = select i1 %t127, ptr %t126, ptr %t122
  %t129 = icmp eq ptr %t128, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t129)
  br label %bb21
bb21:
  %t130 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l20
  %t131 = getelementptr %"compiler/names:Table", ptr %l22, i32 0, i32 0
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %t131
  %t133 = getelementptr %"compiler/names:Table", ptr %l22, i32 0, i32 1
  %t134 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t134, ptr %t133
  %t135 = getelementptr %"compiler/names:Table", ptr %l22, i32 0, i32 2
  %t136 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l2
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t136, ptr %t135
  %t137 = getelementptr %"compiler/names:Table", ptr %l22, i32 0, i32 3
  %t138 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t138, ptr %t137
  %t139 = getelementptr %"compiler/names:Table", ptr %l22, i32 0, i32 4
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t130, ptr %t139
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l22, i64 320, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/names:raised" @compiler_2fnames_3araised_2ector(ptr %v0, ptr %v1, i32 %a0, %"compiler/source:Span" %a1, i1 %a2, { i64, ptr } %a3) #0 {
entry:
  %rv = alloca %"compiler/names:raised"
  br label %start
start:
  br label %bb0
bb0:
  %t10 = insertvalue %"compiler/names:raised" undef, i32 %a0, 0
  %t12 = insertvalue %"compiler/names:raised" %t10, %"compiler/source:Span" %a1, 1
  %t14 = insertvalue %"compiler/names:raised" %t12, i1 %a2, 2
  %t16 = insertvalue %"compiler/names:raised" %t14, { i64, ptr } %a3, 3
  store %"compiler/names:raised" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/names:raised", ptr %rv
  ret %"compiler/names:raised" %rr
}

declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"$payload" }>, align 8
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
@.d1 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"std/" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@__olang_empty_array = external constant [16 x i64]
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d7 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d8 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d9 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d11 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c".olang" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d13 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F64" }>, align 8
@.d15 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"Bool" }>, align 8
@.d16 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"String" }>, align 8
@.d17 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d18 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d19 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d20 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d21 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_errpay_pop()
@.d22 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d23 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"linux" }>, align 8
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86_64" }>, align 8
@.d25 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"x86-64" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e0 = weak hidden constant i1 false
@.d26 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"/olang.lock" }>, align 8
@olang_2esole_2ecompiler_2ffetch_3aFetcher_2e1 = weak hidden constant i1 false
@.d27 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"/cache" }>, align 8
@.d28 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"file:///nowhere/" }>, align 8
@olang_2esole_2ecompiler_2fload_3aLoader_2e3 = weak hidden constant i1 false
@.d29 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"std" }>, align 8
@olang_2esole_2ecompiler_2fload_3aModule_2e0 = weak hidden constant i1 false
@.d30 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"/" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c":" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
@olang_2esole_2ecompiler_2fnames_3aResolver_2e2 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
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

declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2fnames_3aRef_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2fnames_3aRef_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fnames_3aResolver_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e16 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fnames_3aResolver_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e19 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fnames_3aResolver_2e20 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e21 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aResolver_2e26 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2fnames_3aTable_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aTable_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aTable_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2fnames_3aTable_2e4 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)
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
@olang_loc_fb93c458ab7e801d_1c40062d0c03aab1 = external constant [0 x i8]
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fnames_2eidentChar(i8 %a0)
@olang_loc_93f58d21316a4d1a_c55e0a424e12d50e = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H04f1a4a88576bd1070c12151a5c28d38(ptr %v0, ptr %a0)
declare %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__Hd32f6fdf378a1d4c0e47f8552643012d(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"compiler/names:Ref" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eG_Hb4f204ca9d50eb43e30fe8770cb15d1a(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_3aRef_2ector(ptr %v0, i32 %a0, i64 %a1, i64 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_H945cb5faf347f41d89f6885b75263baa(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etableOf(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsUpper(i8 %a0)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H862756c16d115e5c03a79726209f69fa(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2_Hc2ccbbc5952c057a60f016e9cc1626d2(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hda627d7755eecb5b938ca977110d67b2(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3ccompiler_2fsource_3aNameId_2c_20I6_Hd1b8e91149b724287340e79c8c928444(ptr %v0, ptr %a0)
declare %"compiler/names:Entry" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eAt_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etext(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H456f40e55a35e282608933ec0991ad61(ptr %v0, ptr %a0, i32 %a1, %"compiler/names:Ref" %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eraisedErrors(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, [3 x i64] } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eat(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnderscoreDeclared(ptr %v0)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eError(ptr %v0, ptr %v1, ptr %a0, { i64, [3 x i64] } %a1, %"compiler/diagmsg:Msg" %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ePush_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/names:Entry" %a1)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eHas(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefined(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildConstRedeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebuildDefault(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3, ptr %a4)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eBuildDefaultMut(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H2a27ec2ae5362b2f0ac6d54f3e063c70(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameInUse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_Hf575c52a5a9e8993bae2b73c9c2548b3(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fnames_2eBuiltinTypeName(ptr %v0, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameIsType(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H6d33fbc050830e537410645e3c893b2c(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2ePreludeConstRedeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2eLen_3ccompiler_2fnames_3aEntry_3e(ptr %v0, ptr %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2erecord(ptr %v0, ptr %a0, %"compiler/source:Span" %a1, %"compiler/names:Ref" %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i1 @compiler_2fload_2ePublic(ptr %v0, { i64, ptr } %a0)
@olang_loc_3c4b516dc7f3c61f_40ef246315a2e453 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aExpr_2eSpan(ptr %v0, ptr %a0)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eChosen(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2fload_2ePending = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FD\FF\FF\FF\FF\FF\FF\FF" }>, align 8
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebodiesIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2estartItem(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2esig(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeRef(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eblock(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epath(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_d2d926149e7406c7_ee094aa2e5a4afab = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eReopen(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eEndHold(ptr %v0, ptr %a0)
declare i1 @compiler_2fnames_2eLoneCatchName(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2emark(ptr %v0, ptr %a0)
@olang_loc_2f2d72e397ff9e11_581917560c7c3b1d = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ewaitAside(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecollectIf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3, i64 %a4)
declare i1 @compiler_2fast_2ecompiler_2fast_3aFunc_2eIsBuilder(ptr %v0, ptr %a0)
@olang_loc_217d72d4076f850a_92db47fb0f8e8bb6 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aTypeRef_2eSpan(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enameSpan(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
@olang_loc_cbd8c9ec4d2c560b_31762469b8343a67 = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eaddType(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, %"compiler/source:Span" %a3, ptr %a4)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epayloadEnum(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"compiler/source:Span" %a2, i32 %a3, { i64, ptr } %a4)
@olang_loc_40bcba17b2bf17b3_8a9927ec4a716c7f = external constant [0 x i8]
@olang_loc_c16bd254021e145_58d15072e112dec1 = external constant [0 x i8]
declare %"compiler/names:local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eAlreadyDeclared(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eDeclaredTwice(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2enoShadow(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ebind(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2ePush_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eLen_H9e36587759e47da85a29e6c0abff1d1c(ptr %v0, ptr %a0)
declare %"compiler/names:raisedName" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araisedName_3e_2eAt__H16b49ab3dab0c5fe49005bf48ab18c1b(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eraisedFields(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, { i64, ptr } %a2)
@olang_loc_a58fd8af443a076b_ecb4599a293195d7 = external constant [0 x i8]
declare %"compiler/ast:CaseDecl" @compiler_2fast_3aCaseDecl_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %v3, %"compiler/source:Span" %a0, i32 %a1, { i64, ptr } %a2, i1 %a3, ptr %a4, { i64, ptr } %a5)
@olang_loc_5e3ab2edd356b256_cd5b13c795510922 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fast_3aDecl_26_3e_2eToArray_3ccompiler_2fast_3aDecl_26_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eLen_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0)
declare %"compiler/names:local" @compiler_2fnames_3alocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i1 %a3, i1 %a4, i1 %a5)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2eSetAt_3ccompiler_2fnames_3alocal_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/names:local" %a2)
@olang_loc_aef4624c79a8a28b_a45312851bdbb01f = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ePush_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, %"compiler/source:Span" %a1)
@olang_loc_87cbb522e5e56b9c_2473c9b69de9380 = external constant [0 x i8]
declare void @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eCutOff(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_12490b43c47bea91_b34a6c7dd92a3b95 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fast_2ecompiler_2fast_3aStmt_2eSpan(ptr %v0, ptr %a0)
@olang_loc_f9018996705a58e9_83925e810340c2fd = external constant [0 x i8]
@olang_loc_f2d30a85840d12d4_ee21d33ae1ca6100 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eForInNameExists(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2epushSig(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eLen_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %a0)
declare %"compiler/load:Import" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fload_3aImport_3e_2eAt_3ccompiler_2fload_3aImport_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etypeIn(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eintroduce(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i32 %a2, ptr %a3)
declare { i32, %"compiler/names:Ref" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compil_H678d1b43e8b98a171ffdea8f28643d28(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ecaseOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ealiasTarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"compiler/names:Ref" @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ememberOf(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2eP_Hb17c37756f956998a4fa74bcac088344(ptr %v0, ptr %a0, i64 %a1, %"compiler/names:Ref" %a2)
@olang_loc_2c32128468766446_22803ecfd3e7a722 = external constant [0 x i8]
@olang_loc_f2fe3b3cf3edda27_d5ea4c4d6e43c823 = external constant [0 x i8]
declare i64 @compiler_2fmsgs_2eDistance(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @compiler_2fmsgs_2eNear(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eLen_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %a0)
declare %"compiler/names:raised" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2eAt_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2fmsgs_2eTok(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eRaiseNearError(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eNameClashesWithImport(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eTypeIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eVarIsPrivate(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eHas_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ePush_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_e5a1f3e08188ecc4_85420485b9e83138 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eTrunca_H0175749ab7aa0aad23a4aa22bc447819(ptr %v0, ptr %a0, i64 %a1)
declare { i32, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__He0d1b669a6d0fad4ef2d0863356e160c(ptr %v0, ptr %a0)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2ejudge(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_H7068c8717e9d582db2941dd2bdd79d55(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2etarget(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6855615fe1bb2138_9d7c9db084b0e41c = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2evarDecl(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_6dda337cc9644709_4e0ee1c3f9c7cc4d = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eifStmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eforNames(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3)
@olang_loc_6c621cf945a32f52_fbb4d8308e24c5b6 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eLen_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H5ec116bb82f5a234bb19cb32db1efc81(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2eTruncate_3ccompiler_2fnames_3aUnread_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H30ad8836952c6f4772e34a804c6491c6(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H73edf45b0858a6ff3702d25efc23fa6e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3_H8da9376267bda3f76393292be0e507b2(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eLen_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2eAt_3ccompiler_2fsource_3aNameId_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2ePush_3ccompiler_2fnames_3araised_3e(ptr %v0, ptr %v1, ptr %a0, %"compiler/names:raised" %a1)
@olang_loc_e6063e0110b31a73_71b4269b957cfb57 = external constant [0 x i8]
@olang_loc_6e82bb982de183d3_df58ae24de93c697 = external constant [0 x i8]
declare void @compiler_2fnames_2ecompiler_2fnames_3aResolver_2eparam(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i1 %a2)
@olang_loc_860724e602591604_160204475883fa78 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fnames_2efieldNames(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_c9535db678f42df0_760e0f7ff8ef7f34 = external constant [0 x i8]
declare i1 @std_2fos_2eExists(ptr %v0, { i64, ptr } %a0)
declare %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" @std_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0, i32 %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource__H6d3eea1e3a905a651c612011755d5d17(ptr %v0, ptr %a0, %"std/pair:Pair.ee791c76fa337c2e45b252e8964cf3ed" %a1)
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eUnknownImportStd(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/pair:Pair.9f40551e0d6019a8e678d8f53048b6ba" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler__H1a77801a5ab3ea58cbf0ff15b43ff2de(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_9053a89eb2ebe36f_9971388257a6393 = external constant [0 x i8]
declare %"compiler/diagmsg:Msg" @compiler_2fmsgs_2eImportUnused(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_e6f5afeb81d3c728_e8c5c2420d9193ac = external constant [0 x i8]
@olang_loc_69822c0cac48a014_4fc53fd0a2f89a60 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fos_2eMkTemp(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_7d6219e827f558e0_eeca058e7ab150ac = external constant [0 x i8]
declare i32 @std_2fos_2eWriteFile(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fcond_3aConsts_2ector(ptr %out, ptr %v0)
declare void @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eBuiltins(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2, { i64, ptr } %a3, i64 %a4, i64 %a5, i1 %a6, i1 %a7, i1 %a8)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare i32 @compiler_2fcond_2ecompiler_2fcond_3aConsts_2eDefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2)
declare void @compiler_2ffetch_3aFetcher_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i1 %a3, i1 %a4)
declare %"compiler/source:Names" @compiler_2fsource_3aNames_2ector(ptr %v0)
declare void @compiler_2fload_3aLoader_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4)
declare i64 @compiler_2fload_2ecompiler_2fload_3aLoader_2eLoad(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eAllSaid(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eLen_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %a0)
declare %"compiler/diag:Said" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aSaid_3e_2eAt_3ccompiler_2fdiag_3aSaid_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, i64 } @compiler_2fnames_2elineCol(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i32 @std_2fos_2eRemoveAll(ptr %v0, { i64, ptr } %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2fnames_3aTable_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3alocal_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3ccompiler_2fsource_3aNameId_2c_20I64_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aUnread_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3araised_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fnames_3aEntry_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20compiler_2fnames_3aRef_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2fnames_3aRef_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fpair_3aPair_3cI64_2c_20I64_3e_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fsource_3aNameId_2c_20Bool_3e_2ector(ptr %v0)

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
