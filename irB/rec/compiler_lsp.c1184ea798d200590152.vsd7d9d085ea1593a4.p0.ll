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
%"compiler/lsp:Server" = type { ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"compiler/lsp:Worker", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1 }
%"compiler/lsp:Worker" = type { i32, i32, ptr, i64 }
%"compiler/session:Reader" = type { i32, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/lsp:Doc" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/text:StringBuilder", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/lsp:worker" = type { ptr, ptr, i32, i32, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/session:Positions" = type { { i64, ptr }, i1, { i64, ptr } }
%"compiler/session:Found" = type { { i64, ptr }, { i64, ptr }, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/diag:Diagnostics" = type { i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, [3 x i64] }, { i64, ptr }, { i64, ptr }, i1, i1 }
%"compiler/session:Analysis" = type { ptr, ptr, ptr, ptr }
%"compiler/load:Loader" = type { { i64, ptr }, ptr, ptr, ptr, ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/load:Module" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, i64, i1, ptr, ptr, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, ptr, ptr, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/session:Items" = type { %"std/prelude/text:StringBuilder", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" = type { { i64, ptr }, { i64, ptr } }
%"compiler/session:Use" = type { i64, i64, { i64, ptr } }
%"compiler/diag:Item" = type { i1, { i64, ptr }, i64, i64, i64, i64, { i64, ptr } }
@G_2ecompiler_2flsp_2eDeprecatedSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\7F\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eDeprecatedSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eDeprecatedSrc.k1 = internal constant <{ [127 x i8] }> <{ [127 x i8] c"\23\20\44\65\70\72\65\63\61\74\65\64\3A\20\75\73\65\20\4E\65\77\0A\66\6E\20\4F\6C\64\28\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\31\20\7D\0A\66\6E\20\4E\65\77\28\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\32\20\7D\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\78\20\3A\3D\20\4F\6C\64\28\29\20\2B\20\4E\65\77\28\29\0A\20\20\20\20\61\73\73\65\72\74\20\78\20\3E\20\30\0A\7D" }>, align 64
@G_2ecompiler_2flsp_2eExamplesSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\A9\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eExamplesSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eExamplesSrc.k1 = internal constant <{ [169 x i8] }> <{ [169 x i8] c"\66\6E\20\54\77\69\63\65\28\6E\20\49\36\34\29\20\49\36\34\20\7B\20\72\65\74\75\72\6E\20\6E\20\2A\20\32\20\7D\0A\74\65\73\74\20\54\77\69\63\65\20\22\64\6F\75\62\6C\65\73\22\20\7B\20\61\73\73\65\72\74\20\54\77\69\63\65\28\32\29\20\3D\3D\20\34\20\7D\0A\74\65\73\74\20\54\77\69\63\65\20\22\64\6F\75\62\6C\65\73\20\61\20\6E\65\67\61\74\69\76\65\22\20\7B\20\61\73\73\65\72\74\20\54\77\69\63\65\28\2D\33\29\20\3D\3D\20\2D\36\20\7D\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\20\78\20\3A\3D\20\54\77\69\63\65\28\31\29\20\7D" }>, align 64
@G_2ecompiler_2flsp_2eRequests = constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }> <{ [8 x i8] c"\12\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k1, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k2, [8 x i8] c"\1B\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k3, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k4, [8 x i8] c"\17\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eRequests.k5 }>, align 64
@G_2ecompiler_2flsp_2eRequests.k1 = internal constant <{ [18 x i8] }> <{ [18 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\68\6F\76\65\72" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k2 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\64\65\66\69\6E\69\74\69\6F\6E" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k3 = internal constant <{ [27 x i8] }> <{ [27 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\64\6F\63\75\6D\65\6E\74\53\79\6D\62\6F\6C" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k4 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\63\6F\6D\70\6C\65\74\69\6F\6E" }>, align 8
@G_2ecompiler_2flsp_2eRequests.k5 = internal constant <{ [23 x i8] }> <{ [23 x i8] c"\74\65\78\74\44\6F\63\75\6D\65\6E\74\2F\66\6F\72\6D\61\74\74\69\6E\67" }>, align 8
@G_2ecompiler_2flsp_2eSessionSrc = constant <{ [8 x i8], ptr }> <{ [8 x i8] c"\F4\00\00\00\00\00\00\00", ptr @G_2ecompiler_2flsp_2eSessionSrc.k1 }>, align 8
@G_2ecompiler_2flsp_2eSessionSrc.k1 = internal constant <{ [244 x i8] }> <{ [244 x i8] c"\69\6D\70\6F\72\74\20\22\73\74\64\2F\69\6F\22\0A\0A\23\20\61\20\70\6F\69\6E\74\20\6F\6E\20\61\20\70\6C\61\6E\65\0A\74\79\70\65\20\50\6F\69\6E\74\20\73\74\72\75\63\74\28\58\20\49\36\34\2C\20\59\20\49\36\34\29\20\7B\0A\20\20\20\20\58\0A\20\20\20\20\59\0A\7D\0A\0A\23\20\74\68\65\20\73\75\6D\20\6F\66\20\61\20\70\6F\69\6E\74\27\73\20\63\6F\6F\72\64\69\6E\61\74\65\73\0A\66\6E\20\73\75\6D\28\70\20\50\6F\69\6E\74\29\20\49\36\34\20\7B\0A\20\20\20\20\72\65\74\75\72\6E\20\70\2E\58\2B\70\2E\59\0A\7D\0A\0A\66\6E\20\6D\61\69\6E\28\29\20\7B\0A\20\20\20\20\71\20\3A\3D\20\50\6F\69\6E\74\28\31\2C\20\32\29\0A\20\20\20\20\69\6F\2E\50\72\69\6E\74\6C\6E\28\24\73\75\6D\28\71\29\29\21\0A\20\20\20\20\62\61\64\20\49\33\32\20\3D\20\22\78\22\0A\7D\0A" }>, align 64
@G_2ecompiler_2flsp_2eSettleNs = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\5A\62\02\00\00\00\00" }>, align 8
@G_2ecompiler_2flsp_2eStuckNs = constant <{ [8 x i8] }> <{ [8 x i8] c"\00\58\47\F8\0D\00\00\00" }>, align 8
define dso_local { i64, ptr } @compiler_2flsp_2ePathOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i1
  %l10 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l25 = alloca { i64, ptr }
  %l29 = alloca i1
  %l35 = alloca i64
  %l36 = alloca { i64, ptr }
  %l38 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca i32
  %l58 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  %t5 = xor i1 %t4, true
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 1
  %t10 = extractvalue { i64, ptr } %t7, 0
  %t11 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t10)
  call void @olang_textcopy(ptr %t11, ptr %t9, i64 %t10)
  %t12 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t13 = insertvalue { i64, ptr } %t12, ptr %t11, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t13, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t15, ptr %l10, !tbaa !27
  %t16 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t19 = extractvalue { i64, ptr } %t16, 0
  store i64 %t19, ptr %l13, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  store i64 %t21, ptr %l14, !tbaa !24
  %t22 = icmp sge i64 7, 0
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = load i64, ptr %l13, !tbaa !24
  %t25 = icmp sle i64 7, %t24
  br i1 %t25, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_6756d46c47226ab9_ec8477bb3ab165)
  unreachable
bb7:
  %t27 = load i64, ptr %l13, !tbaa !24
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = icmp sle i64 %t27, %t28
  br i1 %t29, label %bb9, label %bb10
bb8:
  call void @__olang_check_failed(ptr @olang_loc_6756d46c47226ab9_ec8477bb3ab165)
  unreachable
bb9:
  %t31 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l13, !tbaa !24
  %t34 = getelementptr i8, ptr %t32, i64 7
  %t35 = sub i64 %t33, 7
  %t36 = insertvalue { i64, ptr } undef, i64 %t35, 0
  %t37 = insertvalue { i64, ptr } %t36, ptr %t34, 1
  store { i64, ptr } %t37, ptr %l1, !tbaa !27
  %t39 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t39, ptr %l19
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6756d46c47226ab9_ec8477bb3ab165)
  unreachable
bb11:
  %t40 = load %"std/prelude/text:StringBuilder", ptr %l19
  store %"std/prelude/text:StringBuilder" %t40, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  br label %bb12
bb12:
  %t41 = load i64, ptr %l3, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  %t47 = icmp slt i64 %t41, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb13, label %bb14
bb13:
  br label %bb40
bb14:
  br label %bb15
bb15:
  %t51 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t51, ptr %l25, !tbaa !27
  %t52 = load i64, ptr %l3, !tbaa !24
  %t54 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t55 = load ptr, ptr %t54, !tbaa !27
  %t56 = getelementptr i8, ptr %t55, i64 %t52
  %t57 = load i8, ptr %t56, !tbaa !32
  %t59 = icmp eq i8 %t57, 37
  br i1 %t59, label %bb16, label %bb17
bb16:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t63 = add i64 %t61, 2
  %t64 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t66 = extractvalue { i64, ptr } %t64, 0
  %t69 = icmp slt i64 %t63, %t66
  store i1 %t69, ptr %l29, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t71 = load i1, ptr %l29, !tbaa !21
  br i1 %t71, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t72 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t72, ptr %l36, !tbaa !27
  %t73 = load i64, ptr %l3, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l38, !tbaa !24
  %t76 = load i64, ptr %l3, !tbaa !24
  %t78 = add i64 %t76, 3
  store i64 %t78, ptr %l40, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  store i64 %t80, ptr %l41, !tbaa !24
  %t81 = load i64, ptr %l38, !tbaa !24
  %t82 = icmp sge i64 %t81, 0
  br i1 %t82, label %bb21, label %bb22
bb20:
  br label %bb37
bb21:
  %t84 = load i64, ptr %l38, !tbaa !24
  %t85 = load i64, ptr %l40, !tbaa !24
  %t86 = icmp sle i64 %t84, %t85
  br i1 %t86, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_78ef8a2f2ef3c68c_b23277b974982b08)
  unreachable
bb23:
  %t88 = load i64, ptr %l40, !tbaa !24
  %t89 = load i64, ptr %l41, !tbaa !24
  %t90 = icmp sle i64 %t88, %t89
  br i1 %t90, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_78ef8a2f2ef3c68c_b23277b974982b08)
  unreachable
bb25:
  %t92 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t93 = load ptr, ptr %t92, !tbaa !27
  %t94 = load i64, ptr %l38, !tbaa !24
  %t95 = load i64, ptr %l40, !tbaa !24
  %t96 = getelementptr i8, ptr %t93, i64 %t94
  %t97 = sub i64 %t95, %t94
  %t98 = insertvalue { i64, ptr } undef, i64 %t97, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t96, 1
  store { i64, ptr } %t99, ptr %l45, !tbaa !27
  %t100 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 16)
  %t101 = extractvalue { i32, i64 } %t100, 1
  %t102 = extractvalue { i32, i64 } %t100, 0
  store i32 %t102, ptr %l47
  %t103 = icmp ne i32 %t102, 0
  br i1 %t103, label %bb28, label %ok.104, !prof !99
ok.104:
  store i64 %t101, ptr %l46
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_78ef8a2f2ef3c68c_b23277b974982b08)
  unreachable
bb27:
  %t105 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t106 = load i64, ptr %l46, !tbaa !24
  %t107 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %t105, i64 %t106)
  %t108 = extractvalue { i32, i64 } %t107, 1
  %t109 = extractvalue { i32, i64 } %t107, 0
  store i32 %t109, ptr %l49
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb31, label %ok.111, !prof !99
ok.111:
  store i64 %t108, ptr %l48
  br label %bb30
bb28:
  br label %bb29
bb29:
  store i64 -1, ptr %l35, !tbaa !24
  br label %bb32
bb30:
  %t112 = load i64, ptr %l48, !tbaa !24
  store i64 %t112, ptr %l35, !tbaa !24
  br label %bb32
bb31:
  br label %bb29
bb32:
  %t113 = load i64, ptr %l35, !tbaa !24
  store i64 %t113, ptr %l4, !tbaa !24
  %t114 = load i64, ptr %l4, !tbaa !24
  %t116 = icmp sge i64 %t114, 0
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = trunc i64 %t118 to i8
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 %t120)
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load i64, ptr %l3, !tbaa !24
  %t125 = add i64 %t123, 3
  store i64 %t125, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb36:
  call void @__olang_scope_close(ptr %s4)
  br label %bb37
bb37:
  %t127 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t127, ptr %l58, !tbaa !27
  %t128 = load i64, ptr %l3, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr i8, ptr %t131, i64 %t128
  %t133 = load i8, ptr %t132, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 %t133)
  br label %bb38
bb38:
  %t136 = load i64, ptr %l3, !tbaa !24
  %t138 = add i64 %t136, 1
  store i64 %t138, ptr %l3, !tbaa !24
  br label %bb39
bb39:
  br label %bb12
bb40:
  %t141 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t141, ptr %l64
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  %t142 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t142, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local i32 @compiler_2flsp_2eServe(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca [2 x i32]
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l10 = alloca %"compiler/lsp:Server"
  %l12 = alloca %"compiler/session:Reader"
  %l29 = alloca i64
  %l38 = alloca i64
  %l44 = alloca i1
  %l47 = alloca i64
  %l49 = alloca i1
  %l52 = alloca i64
  %l54 = alloca i1
  %l57 = alloca i64
  %l58 = alloca i64
  %l64 = alloca { i64, ptr }
  %l67 = alloca i1
  %l72 = alloca i1
  %l77 = alloca i32
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l87 = alloca i1
  %l93 = alloca i1
  %l94 = alloca i64
  %l102 = alloca i1
  %l106 = alloca i1
  %l107 = alloca i64
  %l113 = alloca i1
  %l116 = alloca i64
  %l118 = alloca i1
  %l121 = alloca i64
  %l127 = alloca i32
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %rv = alloca i32
  %t2 = alloca %"compiler/lsp:Server", align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @compiler_2fsession_2eIgnoreBrokenPipes()
  br label %bb1
bb1:
  call void @compiler_2flsp_3aServer_2ector(ptr %t2, ptr %v0, ptr %v0, ptr %a0)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t2, i64 152, i1 false)
  br label %bb2
bb2:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t4, ptr %l10, i64 152, i1 false)
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %s0, i32 0)
  store %"compiler/session:Reader" %t6, ptr %l12
  br label %bb3
bb3:
  %t7 = load %"compiler/session:Reader", ptr %l12
  %t8 = call ptr @__olang_scope_alloc_a(ptr %s0, i64 48, i64 8)
  store %"compiler/session:Reader" %t7, ptr %t8
  store ptr %t8, ptr %l2, !tbaa !29
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/lsp:Server", ptr %t10, i32 0, i32 8
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s1)
  br label %bb97
bb6:
  br label %bb7
bb7:
  %t19 = insertvalue [2 x i32] undef, i32 -1, 0
  %t20 = insertvalue [2 x i32] %t19, i32 -1, 1
  store [2 x i32] %t20, ptr %l3
  %t22 = getelementptr [2 x i32], ptr %l3, i64 0, i64 0
  store i32 0, ptr %t22, !tbaa !33
  store i64 1, ptr %l4, !tbaa !24
  %t23 = load ptr, ptr %l1, !tbaa !29
  %t25 = getelementptr %"compiler/lsp:Server", ptr %t23, i32 0, i32 3
  %t26 = getelementptr %"compiler/lsp:Worker", ptr %t25, i32 0, i32 0
  %t27 = load i32, ptr %t26, !tbaa !23
  %t29 = icmp sgt i32 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/lsp:Server", ptr %t31, i32 0, i32 3
  %t34 = getelementptr %"compiler/lsp:Worker", ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = icmp eq ptr %t35, null
  br i1 %t37, label %bb10, label %bb11
bb9:
  br label %bb13
bb10:
  call void @__olang_check_failed(ptr @olang_loc_28490b3d64df97fe_1fa673a94cf24522)
  unreachable
bb11:
  br label %bb12
bb12:
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/lsp:Server", ptr %t39, i32 0, i32 3
  %t42 = getelementptr %"compiler/lsp:Worker", ptr %t41, i32 0, i32 2
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t46 = getelementptr %"compiler/session:Reader", ptr %t43, i32 0, i32 0
  %t47 = load i32, ptr %t46, !tbaa !23
  %t49 = getelementptr [2 x i32], ptr %l3, i64 0, i64 1
  store i32 %t47, ptr %t49, !tbaa !33
  store i64 2, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  store i32 -1, ptr %l5, !tbaa !23
  %t50 = call i64 @std_2ftime_2eNow()
  store i64 %t50, ptr %l29
  br label %bb14
bb14:
  %t51 = load i64, ptr %l29, !tbaa !24
  store i64 %t51, ptr %l6, !tbaa !24
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr %"compiler/lsp:Server", ptr %t52, i32 0, i32 6
  %t55 = load i64, ptr %t54, !tbaa !24
  %t57 = icmp sgt i64 %t55, 0
  br i1 %t57, label %bb15, label %bb16
bb15:
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/lsp:Server", ptr %t59, i32 0, i32 6
  %t62 = load i64, ptr %t61, !tbaa !24
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sub i64 %t62, %t63
  %t68 = sdiv i64 %t66, 1000000
  %t70 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 0, i64 %t68)
  store i64 %t70, ptr %l38
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t71 = load i64, ptr %l38, !tbaa !24
  %t72 = add i64 %t71, 1
  %t74 = trunc i64 %t72 to i32
  store i32 %t74, ptr %l5, !tbaa !23
  br label %bb18
bb18:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr %"compiler/lsp:Server", ptr %t76, i32 0, i32 3
  %t79 = getelementptr %"compiler/lsp:Worker", ptr %t78, i32 0, i32 0
  %t80 = load i32, ptr %t79, !tbaa !23
  %t82 = icmp sgt i32 %t80, 0
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l1, !tbaa !29
  %t86 = getelementptr %"compiler/lsp:Server", ptr %t84, i32 0, i32 5
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l47
  br label %bb21
bb20:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb26
bb21:
  %t89 = load i64, ptr %l47, !tbaa !24
  %t90 = icmp sgt i64 %t89, 0
  br i1 %t90, label %bb22, label %bb23
bb22:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb25
bb23:
  %t92 = load ptr, ptr %l1, !tbaa !29
  %t94 = getelementptr %"compiler/lsp:Server", ptr %t92, i32 0, i32 4
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t94)
  store i64 %t96, ptr %l52
  br label %bb24
bb24:
  %t97 = load i64, ptr %l52, !tbaa !24
  %t98 = icmp sgt i64 %t97, 0
  store i1 %t98, ptr %l49, !tbaa !21
  br label %bb25
bb25:
  %t100 = load i1, ptr %l49, !tbaa !21
  store i1 %t100, ptr %l44, !tbaa !21
  br label %bb26
bb26:
  %t101 = load i1, ptr %l44, !tbaa !21
  br i1 %t101, label %bb27, label %bb28
bb27:
  %t102 = load i32, ptr %l5, !tbaa !23
  %t104 = icmp slt i32 %t102, 0
  store i1 %t104, ptr %l54, !tbaa !21
  br label %bb29
bb28:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb29
bb29:
  %t106 = load i1, ptr %l54, !tbaa !21
  br i1 %t106, label %bb30, label %bb31
bb30:
  store i32 1000, ptr %l5, !tbaa !23
  br label %bb32
bb31:
  br label %bb32
bb32:
  %t107 = load i64, ptr %l4, !tbaa !24
  store i64 %t107, ptr %l57, !tbaa !24
  %t108 = load [2 x i32], ptr %l3
  store i64 2, ptr %l58, !tbaa !24
  %t109 = icmp sge i64 0, 0
  br i1 %t109, label %bb33, label %bb34
bb33:
  %t111 = load i64, ptr %l57, !tbaa !24
  %t112 = icmp sle i64 0, %t111
  br i1 %t112, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_d1a2ced90ae1fed3_af42112fabe41f37)
  unreachable
bb35:
  %t114 = load i64, ptr %l57, !tbaa !24
  %t115 = load i64, ptr %l58, !tbaa !24
  %t116 = icmp sle i64 %t114, %t115
  br i1 %t116, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_d1a2ced90ae1fed3_af42112fabe41f37)
  unreachable
bb37:
  %t118 = load i64, ptr %l57, !tbaa !24
  %t119 = getelementptr i32, ptr %l3, i64 0
  %t120 = sub i64 %t118, 0
  %t121 = insertvalue { i64, ptr } undef, i64 %t120, 0
  %t122 = insertvalue { i64, ptr } %t121, ptr %t119, 1
  %t123 = load i32, ptr %l5, !tbaa !23
  %t126 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s1, ptr %s1, { i64, ptr } %t122, i32 %t123)
  store { i64, ptr } %t126, ptr %l64
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_d1a2ced90ae1fed3_af42112fabe41f37)
  unreachable
bb39:
  %t127 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t127, ptr %l7, !tbaa !27
  %t128 = load i64, ptr %l4, !tbaa !24
  %t130 = icmp eq i64 %t128, 2
  br i1 %t130, label %bb40, label %bb41
bb40:
  %t132 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i1, ptr %t133, i64 1
  %t135 = load i1, ptr %t134, !tbaa !31
  store i1 %t135, ptr %l67, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb42
bb42:
  %t137 = load i1, ptr %l67, !tbaa !21
  br i1 %t137, label %bb43, label %bb44
bb43:
  %t138 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2efromWorker(ptr %v0, ptr %t138)
  br label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb46
bb46:
  %t140 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i1, ptr %t141, i64 0
  %t143 = load i1, ptr %t142, !tbaa !31
  br i1 %t143, label %bb47, label %bb48
bb47:
  %t145 = load ptr, ptr %l2, !tbaa !29
  %t147 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %s0, ptr %t145)
  store i1 %t147, ptr %l72
  br label %bb49
bb48:
  br label %bb68
bb49:
  %t148 = load i1, ptr %l72, !tbaa !21
  %t149 = xor i1 %t148, true
  br i1 %t149, label %bb50, label %bb51
bb50:
  %t151 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edrain(ptr %v0, ptr %v0, ptr %t151)
  br label %bb52
bb51:
  br label %bb56
bb52:
  %t153 = load ptr, ptr %l1, !tbaa !29
  %t155 = getelementptr %"compiler/lsp:Server", ptr %t153, i32 0, i32 7
  %t156 = load i1, ptr %t155, !tbaa !21
  br i1 %t156, label %bb53, label %bb54
bb53:
  store i32 0, ptr %l77, !tbaa !23
  br label %bb55
bb54:
  store i32 1, ptr %l77, !tbaa !23
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  %t158 = load i32, ptr %l77, !tbaa !23
  store i32 %t158, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  store %olang.scope zeroinitializer, ptr %s8
  %t159 = load ptr, ptr %l1, !tbaa !29
  %t161 = getelementptr %"compiler/lsp:Server", ptr %t159, i32 0, i32 8
  %t162 = load i1, ptr %t161, !tbaa !21
  %t164 = xor i1 %t162, true
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s8)
  br label %bb67
bb59:
  br label %bb60
bb60:
  %t168 = load ptr, ptr %l2, !tbaa !29
  %t170 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %s0, ptr %s8, ptr %t168)
  %t171 = extractvalue { i32, { i64, ptr } } %t170, 1
  %t172 = extractvalue { i32, { i64, ptr } } %t170, 0
  store i32 %t172, ptr %l85
  %t173 = icmp ne i32 %t172, 0
  br i1 %t173, label %bb62, label %ok.174, !prof !99
ok.174:
  store { i64, ptr } %t171, ptr %l84
  br label %bb61
bb61:
  %t175 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t175, ptr %l82, !tbaa !27
  br label %bb64
bb62:
  %t176 = load i32, ptr %l85, !tbaa !23
  %t177 = ashr i32 %t176, 16
  %t179 = icmp eq i32 %t177, 1
  store i1 %t179, ptr %l87, !tbaa !21
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s8)
  br label %bb67
bb64:
  %t180 = load { i64, ptr }, ptr %l82, !tbaa !27
  %t181 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ehandle(ptr %v0, ptr %s8, ptr %v0, ptr %t181, { i64, ptr } %t180)
  br label %bb65
bb65:
  call void @__olang_scope_close(ptr %s8)
  br label %bb66
bb66:
  br label %bb57
bb67:
  br label %bb68
bb68:
  %t185 = load ptr, ptr %l1, !tbaa !29
  %t187 = getelementptr %"compiler/lsp:Server", ptr %t185, i32 0, i32 6
  %t188 = load i64, ptr %t187, !tbaa !24
  %t190 = icmp sgt i64 %t188, 0
  br i1 %t190, label %bb69, label %bb70
bb69:
  %t192 = call i64 @std_2ftime_2eNow()
  store i64 %t192, ptr %l94
  br label %bb71
bb70:
  store i1 false, ptr %l93, !tbaa !21
  br label %bb72
bb71:
  %t193 = load ptr, ptr %l1, !tbaa !29
  %t195 = getelementptr %"compiler/lsp:Server", ptr %t193, i32 0, i32 6
  %t196 = load i64, ptr %t195, !tbaa !24
  %t197 = load i64, ptr %l94, !tbaa !24
  %t199 = icmp sge i64 %t197, %t196
  store i1 %t199, ptr %l93, !tbaa !21
  br label %bb72
bb72:
  %t201 = load i1, ptr %l93, !tbaa !21
  br i1 %t201, label %bb73, label %bb74
bb73:
  %t202 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v0, ptr %t202)
  br label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb76
bb76:
  %t204 = load ptr, ptr %l1, !tbaa !29
  %t206 = getelementptr %"compiler/lsp:Server", ptr %t204, i32 0, i32 3
  %t207 = getelementptr %"compiler/lsp:Worker", ptr %t206, i32 0, i32 0
  %t208 = load i32, ptr %t207, !tbaa !23
  %t210 = icmp sgt i32 %t208, 0
  br i1 %t210, label %bb77, label %bb78
bb77:
  %t212 = load ptr, ptr %l1, !tbaa !29
  %t214 = getelementptr %"compiler/lsp:Server", ptr %t212, i32 0, i32 3
  %t215 = getelementptr %"compiler/lsp:Worker", ptr %t214, i32 0, i32 3
  %t216 = load i64, ptr %t215, !tbaa !24
  %t218 = icmp sgt i64 %t216, 0
  store i1 %t218, ptr %l102, !tbaa !21
  br label %bb79
bb78:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb79
bb79:
  %t220 = load i1, ptr %l102, !tbaa !21
  br i1 %t220, label %bb80, label %bb81
bb80:
  %t221 = call i64 @std_2ftime_2eNow()
  store i64 %t221, ptr %l107
  br label %bb82
bb81:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb83
bb82:
  %t222 = load ptr, ptr %l1, !tbaa !29
  %t224 = getelementptr %"compiler/lsp:Server", ptr %t222, i32 0, i32 3
  %t225 = getelementptr %"compiler/lsp:Worker", ptr %t224, i32 0, i32 3
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = load i64, ptr %l107, !tbaa !24
  %t229 = sub i64 %t227, %t226
  %t230 = load i64, ptr @G_2ecompiler_2flsp_2eStuckNs, !tbaa !24
  %t233 = icmp sgt i64 %t229, %t230
  store i1 %t233, ptr %l106, !tbaa !21
  br label %bb83
bb83:
  %t235 = load i1, ptr %l106, !tbaa !21
  br i1 %t235, label %bb84, label %bb85
bb84:
  %t236 = load ptr, ptr %l1, !tbaa !29
  %t238 = getelementptr %"compiler/lsp:Server", ptr %t236, i32 0, i32 5
  %t240 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t238)
  store i64 %t240, ptr %l116
  br label %bb86
bb85:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb91
bb86:
  %t241 = load i64, ptr %l116, !tbaa !24
  %t242 = icmp sgt i64 %t241, 0
  br i1 %t242, label %bb87, label %bb88
bb87:
  store i1 true, ptr %l118, !tbaa !21
  br label %bb90
bb88:
  %t244 = load ptr, ptr %l1, !tbaa !29
  %t246 = getelementptr %"compiler/lsp:Server", ptr %t244, i32 0, i32 4
  %t248 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t246)
  store i64 %t248, ptr %l121
  br label %bb89
bb89:
  %t249 = load i64, ptr %l121, !tbaa !24
  %t250 = icmp sgt i64 %t249, 0
  store i1 %t250, ptr %l118, !tbaa !21
  br label %bb90
bb90:
  %t252 = load i1, ptr %l118, !tbaa !21
  store i1 %t252, ptr %l113, !tbaa !21
  br label %bb91
bb91:
  %t253 = load i1, ptr %l113, !tbaa !21
  br i1 %t253, label %bb92, label %bb93
bb92:
  store %olang.scope zeroinitializer, ptr %s11
  %t254 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %s11, ptr %t254, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d1, i32 0, i32 1) })
  br label %bb94
bb93:
  br label %bb95
bb94:
  call void @__olang_scope_close(ptr %s11)
  br label %bb95
bb95:
  call void @__olang_scope_close(ptr %s1)
  br label %bb96
bb96:
  br label %bb4
bb97:
  %t256 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %t256)
  br label %bb98
bb98:
  %t258 = load ptr, ptr %l1, !tbaa !29
  %t260 = getelementptr %"compiler/lsp:Server", ptr %t258, i32 0, i32 7
  %t261 = load i1, ptr %t260, !tbaa !21
  br i1 %t261, label %bb99, label %bb100
bb99:
  store i32 0, ptr %l127, !tbaa !23
  br label %bb101
bb100:
  store i32 1, ptr %l127, !tbaa !23
  br label %bb101
bb101:
  call void @__olang_scope_close(ptr %s0)
  %t263 = load i32, ptr %l127, !tbaa !23
  store i32 %t263, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eUriOf(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i8
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca { i64, ptr }
  %l19 = alloca i1
  %l20 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l32 = alloca i1
  %l35 = alloca i1
  %l40 = alloca ptr
  %l42 = alloca i8
  %l43 = alloca i64
  %l44 = alloca i32
  %l45 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l6
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d2, i32 0, i32 1) })
  br label %bb2
bb2:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l4, !tbaa !24
  br label %bb3
bb3:
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb4, label %bb5
bb4:
  br label %bb38
bb5:
  br label %bb6
bb6:
  %t18 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t18, ptr %l15, !tbaa !27
  %t19 = load i64, ptr %l3, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i8, ptr %t22, i64 %t19
  %t24 = load i8, ptr %t23, !tbaa !32
  store i8 %t24, ptr %l5, !tbaa !22
  %t26 = load i8, ptr %l5, !tbaa !22
  %t28 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %t26)
  store i1 %t28, ptr %l19
  br label %bb7
bb7:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb11
bb9:
  %t30 = load i8, ptr %l5, !tbaa !22
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %t30)
  store i1 %t32, ptr %l22
  br label %bb10
bb10:
  %t33 = load i1, ptr %l22, !tbaa !21
  store i1 %t33, ptr %l20, !tbaa !21
  br label %bb11
bb11:
  %t34 = load i1, ptr %l20, !tbaa !21
  br i1 %t34, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb14
bb13:
  %t35 = load i8, ptr %l5, !tbaa !22
  %t37 = icmp eq i8 %t35, 47
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb14
bb14:
  %t39 = load i1, ptr %l23, !tbaa !21
  br i1 %t39, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb17
bb16:
  %t40 = load i8, ptr %l5, !tbaa !22
  %t42 = icmp eq i8 %t40, 45
  store i1 %t42, ptr %l26, !tbaa !21
  br label %bb17
bb17:
  %t44 = load i1, ptr %l26, !tbaa !21
  br i1 %t44, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb20
bb19:
  %t45 = load i8, ptr %l5, !tbaa !22
  %t47 = icmp eq i8 %t45, 46
  store i1 %t47, ptr %l29, !tbaa !21
  br label %bb20
bb20:
  %t49 = load i1, ptr %l29, !tbaa !21
  br i1 %t49, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb23
bb22:
  %t50 = load i8, ptr %l5, !tbaa !22
  %t52 = icmp eq i8 %t50, 95
  store i1 %t52, ptr %l32, !tbaa !21
  br label %bb23
bb23:
  %t54 = load i1, ptr %l32, !tbaa !21
  br i1 %t54, label %bb24, label %bb25
bb24:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb26
bb25:
  %t55 = load i8, ptr %l5, !tbaa !22
  %t57 = icmp eq i8 %t55, 126
  store i1 %t57, ptr %l35, !tbaa !21
  br label %bb26
bb26:
  %t59 = load i1, ptr %l35, !tbaa !21
  br i1 %t59, label %bb27, label %bb28
bb27:
  %t60 = load i8, ptr %l5, !tbaa !22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l1, i8 %t60)
  br label %bb29
bb28:
  store %olang.scope zeroinitializer, ptr %s4
  store ptr %l1, ptr %l40, !tbaa !29
  %t63 = load i8, ptr %l5, !tbaa !22
  store i8 %t63, ptr %l42, !tbaa !22
  %t65 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s4, i64 16)
  %t66 = extractvalue { i32, i64 } %t65, 1
  %t67 = extractvalue { i32, i64 } %t65, 0
  store i32 %t67, ptr %l44
  %t68 = icmp ne i32 %t67, 0
  br i1 %t68, label %bb31, label %ok.69, !prof !99
ok.69:
  store i64 %t66, ptr %l43
  br label %bb30
bb29:
  br label %bb36
bb30:
  %t70 = load i8, ptr %l42, !tbaa !22
  %t71 = load i64, ptr %l43, !tbaa !24
  %t72 = call { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %s4, i8 %t70, i64 %t71)
  store { i64, ptr } %t72, ptr %l45
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_b56467a85251252d_5a05a1cd484a3361)
  unreachable
bb32:
  %t73 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t73, 0
  %t75 = extractvalue { i64, ptr } %t73, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  %t81 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %s4, ptr %s4, { i64, ptr } %t79)
  store { i64, ptr } %t81, ptr %l47
  br label %bb33
bb33:
  %t82 = load { i64, ptr }, ptr %l47, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t82, 0
  %t84 = extractvalue { i64, ptr } %t82, 1
  %t85 = mul i64 %t83, 1
  %t86 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t85)
  call void @llvm.memcpy.p0.p0.i64(ptr %t86, ptr %t84, i64 %t85, i1 false)
  %t87 = insertvalue { i64, ptr } undef, i64 %t83, 0
  %t88 = insertvalue { i64, ptr } %t87, ptr %t86, 1
  %t90 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %s4, ptr %s4, { i64, ptr } %t88, i64 2, i8 48)
  store { i64, ptr } %t90, ptr %l49
  br label %bb34
bb34:
  %t91 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t93 = load { i64, ptr }, ptr %l49, !tbaa !27
  %t94 = extractvalue { i64, ptr } %t93, 1
  %t95 = extractvalue { i64, ptr } %t93, 0
  %t96 = add i64 %t92, %t95
  %t97 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t91, i64 %t92)
  %t98 = getelementptr i8, ptr %t97, i64 %t92
  call void @olang_textcopy(ptr %t98, ptr %t94, i64 %t95)
  %t99 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t100 = insertvalue { i64, ptr } %t99, ptr %t97, 1
  %t102 = extractvalue { i64, ptr } %t100, 0
  %t103 = extractvalue { i64, ptr } %t100, 1
  %t104 = mul i64 %t102, 1
  %t105 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t104)
  call void @llvm.memcpy.p0.p0.i64(ptr %t105, ptr %t103, i64 %t104, i1 false)
  %t106 = insertvalue { i64, ptr } undef, i64 %t102, 0
  %t107 = insertvalue { i64, ptr } %t106, ptr %t105, 1
  %t108 = load ptr, ptr %l40, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s4, ptr %t108, { i64, ptr } %t107)
  br label %bb35
bb35:
  call void @__olang_scope_close(ptr %s4)
  br label %bb36
bb36:
  br label %bb37
bb37:
  %t110 = load i64, ptr %l3, !tbaa !24
  %t112 = add i64 %t110, 1
  store i64 %t112, ptr %l3, !tbaa !24
  br label %bb3
bb38:
  %t115 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t115, ptr %l55
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s0)
  %t116 = load { i64, ptr }, ptr %l55, !tbaa !27
  store { i64, ptr } %t116, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ecompilerUnderTest(ptr %v0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i32
  %l7 = alloca i1
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %s0, ptr %s0, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d4, i32 0, i32 1) })
  %t2 = extractvalue { i32, { i64, ptr } } %t1, 1
  %t3 = extractvalue { i32, { i64, ptr } } %t1, 0
  store i32 %t3, ptr %l3
  %t4 = icmp ne i32 %t3, 0
  br i1 %t4, label %bb2, label %ok.5, !prof !99
ok.5:
  store { i64, ptr } %t2, ptr %l2
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t6, ptr %l1, !tbaa !27
  br label %bb6
bb2:
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = ashr i32 %t7, 16
  %t10 = icmp eq i32 %t8, 1
  br i1 %t10, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d5, i32 0, i32 1) }, ptr %l1, !tbaa !27
  br label %bb6
bb6:
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t12, ptr %l0, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t15 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t13, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t15, ptr %l7
  br label %bb7
bb7:
  %t16 = load i1, ptr %l7, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 1
  %t22 = extractvalue { i64, ptr } %t19, 0
  %t23 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t22)
  call void @olang_textcopy(ptr %t23, ptr %t21, i64 %t22)
  %t24 = insertvalue { i64, ptr } undef, i64 %t22, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t23, 1
  store { i64, ptr } %t25, ptr %l9, !tbaa !27
  br label %bb10
bb9:
  store { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t27 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t27, ptr %l9, !tbaa !27
  br label %bb10
bb10:
  %t29 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t29, 0
  store i64 %t30, ptr %l14, !tbaa !24
  %t31 = load i64, ptr %l14, !tbaa !24
  %t32 = mul i64 %t31, 1
  %t33 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t32)
  %t34 = insertvalue { i64, ptr } undef, i64 %t31, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t33, 1
  store { i64, ptr } %t35, ptr %l15, !tbaa !27
  %t36 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = load i64, ptr %l14, !tbaa !24
  %t41 = mul i64 %t40, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t37, ptr %t39, i64 %t41, i1 false)
  %t42 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t42, ptr %l9, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eaddPending(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca i1
  %l9 = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 4
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/lsp:Server", ptr %t8, i32 0, i32 4
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eInsert_3cI64_3e(ptr %v0, ptr %t10, i64 0, i64 %t11)
  store i32 %t14, ptr %l9
  %t15 = icmp ne i32 %t14, 0
  br i1 %t15, label %bb3, label %ok.16, !prof !99
ok.16:
  br label %bb2
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 4
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t19, i64 %t20)
  br label %bb5
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eask(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l10 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l15 = alloca ptr
  %l16 = alloca i64
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca i32
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sle i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v3, ptr %t9)
  br label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lsp:Server", ptr %t11, i32 0, i32 3
  %t14 = getelementptr %"compiler/lsp:Worker", ptr %t13, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  %t17 = icmp sle i32 %t15, 0
  br i1 %t17, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s2
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l10, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %v2, ptr %s2, ptr %s2, { i64, ptr } %t20, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store { i64, ptr } %t22, ptr %l12
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t23 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t24 = extractvalue { i64, ptr } %t23, 0
  %t25 = extractvalue { i64, ptr } %t23, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t30 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s2, ptr %t30, { i64, ptr } %t29)
  br label %bb8
bb8:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lsp:Server", ptr %t32, i32 0, i32 5
  store ptr %t34, ptr %l15, !tbaa !29
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %l17, !tbaa !27
  %t36 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s0, i64 10)
  %t37 = extractvalue { i32, i64 } %t36, 1
  %t38 = extractvalue { i32, i64 } %t36, 0
  store i32 %t38, ptr %l19
  %t39 = icmp ne i32 %t38, 0
  br i1 %t39, label %bb11, label %ok.40, !prof !99
ok.40:
  store i64 %t37, ptr %l18
  br label %bb10
bb10:
  %t41 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t42 = load i64, ptr %l18, !tbaa !24
  %t43 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v2, { i64, ptr } %t41, i64 %t42)
  %t44 = extractvalue { i32, i64 } %t43, 1
  %t45 = extractvalue { i32, i64 } %t43, 0
  store i32 %t45, ptr %l21
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb14, label %ok.47, !prof !99
ok.47:
  store i64 %t44, ptr %l20
  br label %bb13
bb11:
  br label %bb12
bb12:
  store i64 -1, ptr %l16, !tbaa !24
  br label %bb15
bb13:
  %t48 = load i64, ptr %l20, !tbaa !24
  store i64 %t48, ptr %l16, !tbaa !24
  br label %bb15
bb14:
  br label %bb12
bb15:
  %t49 = load ptr, ptr %l15, !tbaa !29
  %t50 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t49, i64 %t50)
  br label %bb16
bb16:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:Server", ptr %t51, i32 0, i32 3
  %t54 = getelementptr %"compiler/lsp:Worker", ptr %t53, i32 0, i32 1
  %t55 = load i32, ptr %t54, !tbaa !23
  call void @compiler_2fsession_2eWriteFramed(ptr %v1, i32 %t55, { i64, ptr } %a1)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2echanged(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l6 = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eopened(ptr %v0, ptr %v1, ptr %v2, ptr %t11, { i64, ptr } %t12, { i64, ptr } %t13)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esetText(ptr %v0, ptr %v2, ptr %t17, i64 %t18, { i64, ptr } %t19)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 1
  %t5 = load i32, ptr %t4, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t5)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lsp:Server", ptr %t7, i32 0, i32 3
  %t10 = getelementptr %"compiler/lsp:Worker", ptr %t9, i32 0, i32 2
  %t11 = load ptr, ptr %t10, !tbaa !29
  %t13 = icmp eq ptr %t11, null
  br i1 %t13, label %bb2, label %bb3
bb2:
  call void @__olang_check_failed(ptr @olang_loc_a8eebe32341e04e6_239ed324021d536a)
  unreachable
bb3:
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lsp:Server", ptr %t15, i32 0, i32 3
  %t18 = getelementptr %"compiler/lsp:Worker", ptr %t17, i32 0, i32 2
  %t19 = load ptr, ptr %t18, !tbaa !29
  %t22 = getelementptr %"compiler/session:Reader", ptr %t19, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t23)
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/lsp:Server", ptr %t25, i32 0, i32 3
  %t28 = getelementptr %"compiler/lsp:Worker", ptr %t27, i32 0, i32 0
  store i32 -1, ptr %t28, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Server", ptr %t29, i32 0, i32 3
  %t32 = getelementptr %"compiler/lsp:Worker", ptr %t31, i32 0, i32 1
  store i32 -1, ptr %t32, !tbaa !23
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eclosed(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l9 = alloca i64
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca { i64, ptr }
  %l29 = alloca i64
  %l31 = alloca i64
  %l36 = alloca { i64, ptr }
  %l37 = alloca ptr
  %l39 = alloca { i64, ptr }
  %l47 = alloca i1
  %l48 = alloca ptr
  %l51 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %a1)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/lsp:Server", ptr %t11, i32 0, i32 1
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t13, i64 %t14)
  store ptr %t17, ptr %l15
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l15, !tbaa !29
  store ptr %t18, ptr %l3, !tbaa !29
  %t19 = load ptr, ptr %l3, !tbaa !29
  %t21 = getelementptr %"compiler/lsp:Doc", ptr %t19, i32 0, i32 4
  store i1 false, ptr %t21, !tbaa !21
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l18, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = call ptr @__olang_region_or(ptr %t26, ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Doc", ptr %t29, i32 0, i32 3
  %t32 = load i64, ptr %l18
  %t33 = inttoptr i64 %t32 to ptr
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %t33, ptr %t31)
  br label %bb8
bb8:
  %t35 = load ptr, ptr %l0, !tbaa !29
  store ptr %t35, ptr %l22, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/lsp:Doc", ptr %t36, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38, !tbaa !27
  %t41 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t39, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store { i64, ptr } %t41, ptr %l25
  br label %bb9
bb9:
  %t42 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = mul i64 %t43, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t45)
  call void @llvm.memcpy.p0.p0.i64(ptr %t46, ptr %t44, i64 %t45, i1 false)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  %t49 = load ptr, ptr %l22, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s0, ptr %t49, { i64, ptr } %t48)
  br label %bb10
bb10:
  %t51 = load ptr, ptr %l3, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:Doc", ptr %t51, i32 0, i32 6
  store ptr %t53, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t55 = load i64, ptr %l5, !tbaa !24
  store i64 %t55, ptr %l29, !tbaa !24
  %t56 = load ptr, ptr %l4, !tbaa !29
  %t58 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t56)
  store i64 %t58, ptr %l31
  br label %bb12
bb12:
  %t59 = load i64, ptr %l29, !tbaa !24
  %t60 = load i64, ptr %l31, !tbaa !24
  %t61 = icmp slt i64 %t59, %t60
  %t63 = xor i1 %t61, true
  br i1 %t63, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb20
bb14:
  br label %bb15
bb15:
  %t65 = load ptr, ptr %l4, !tbaa !29
  %t66 = load i64, ptr %l5, !tbaa !24
  %t69 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t65, i64 %t66)
  store { i64, ptr } %t69, ptr %l36
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t71 = load ptr, ptr %l0, !tbaa !29
  store ptr %t71, ptr %l37, !tbaa !29
  %t74 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s3, ptr %s3, { i64, ptr } %t70, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store { i64, ptr } %t74, ptr %l39
  br label %bb17
bb17:
  %t75 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load ptr, ptr %l37, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s3, ptr %t82, { i64, ptr } %t81)
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s3)
  br label %bb19
bb19:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l5, !tbaa !24
  br label %bb11
bb20:
  %t88 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %t88)
  br label %bb21
bb21:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/lsp:Server", ptr %t90, i32 0, i32 4
  %t93 = load i64, ptr %l2, !tbaa !24
  %t96 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t92, i64 %t93)
  store i1 %t96, ptr %l47
  br label %bb22
bb22:
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l48, !tbaa !29
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lsp:Server", ptr %t98, i32 0, i32 4
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t100)
  store i64 %t102, ptr %l51
  br label %bb23
bb23:
  %t103 = load i64, ptr %l51, !tbaa !24
  %t104 = icmp sgt i64 %t103, 0
  br i1 %t104, label %bb24, label %bb25
bb24:
  %t106 = call i64 @std_2ftime_2eNow()
  store i64 %t106, ptr %l54
  br label %bb26
bb25:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb27
bb26:
  %t107 = load i64, ptr @G_2ecompiler_2flsp_2eSettleNs, !tbaa !24
  %t108 = load i64, ptr %l54, !tbaa !24
  %t110 = add i64 %t108, %t107
  store i64 %t110, ptr %l53, !tbaa !24
  br label %bb27
bb27:
  %t112 = load i64, ptr %l53, !tbaa !24
  %t113 = load ptr, ptr %l48, !tbaa !29
  %t114 = getelementptr %"compiler/lsp:Server", ptr %t113, i32 0, i32 6
  store i64 %t112, ptr %t114, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edrain(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca [1 x i32]
  %l3 = alloca { i64, ptr }
  %l6 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i64
  %l17 = alloca i1
  %l20 = alloca i64
  %l22 = alloca i1
  %l25 = alloca i64
  %l28 = alloca i64
  %l44 = alloca { i64, ptr }
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 4
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp sgt i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  %t15 = icmp sle i32 %t13, 0
  store i1 %t15, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l8, !tbaa !21
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v1, ptr %t18)
  br label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb8
bb8:
  %t20 = call i64 @std_2ftime_2eNow()
  store i64 %t20, ptr %l13
  br label %bb9
bb9:
  %t21 = load i64, ptr %l13, !tbaa !24
  store i64 %t21, ptr %l1, !tbaa !24
  br label %bb10
bb10:
  store %olang.scope zeroinitializer, ptr %s2
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/lsp:Server", ptr %t22, i32 0, i32 3
  %t25 = getelementptr %"compiler/lsp:Worker", ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25, !tbaa !23
  %t28 = icmp sgt i32 %t26, 0
  br i1 %t28, label %bb11, label %bb12
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lsp:Server", ptr %t30, i32 0, i32 4
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l20
  br label %bb13
bb12:
  store i1 false, ptr %l17, !tbaa !21
  br label %bb18
bb13:
  %t35 = load i64, ptr %l20, !tbaa !24
  %t36 = icmp sgt i64 %t35, 0
  br i1 %t36, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb17
bb15:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lsp:Server", ptr %t38, i32 0, i32 5
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l25
  br label %bb16
bb16:
  %t43 = load i64, ptr %l25, !tbaa !24
  %t44 = icmp sgt i64 %t43, 0
  store i1 %t44, ptr %l22, !tbaa !21
  br label %bb17
bb17:
  %t46 = load i1, ptr %l22, !tbaa !21
  store i1 %t46, ptr %l17, !tbaa !21
  br label %bb18
bb18:
  %t47 = load i1, ptr %l17, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb19, label %bb20
bb19:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
bb20:
  br label %bb21
bb21:
  %t50 = call i64 @std_2ftime_2eNow()
  store i64 %t50, ptr %l28
  br label %bb22
bb22:
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = load i64, ptr %l28, !tbaa !24
  %t54 = sub i64 %t52, %t51
  %t55 = load i64, ptr @G_2ecompiler_2flsp_2eStuckNs, !tbaa !24
  %t58 = icmp sgt i64 %t54, %t55
  br i1 %t58, label %bb23, label %bb24
bb23:
  store %olang.scope zeroinitializer, ptr %s3
  %t60 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %s3, ptr %t60, { i64, ptr } { i64 49, ptr getelementptr inbounds (<{ i64, [49 x i8] }>, ptr @.d11, i32 0, i32 1) })
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb26:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/lsp:Server", ptr %t62, i32 0, i32 3
  %t65 = getelementptr %"compiler/lsp:Worker", ptr %t64, i32 0, i32 2
  %t66 = load ptr, ptr %t65, !tbaa !29
  %t68 = icmp eq ptr %t66, null
  br i1 %t68, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_43d07951ce1dba96_20fc5bf2a8432eaa)
  unreachable
bb28:
  br label %bb29
bb29:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/lsp:Server", ptr %t70, i32 0, i32 3
  %t73 = getelementptr %"compiler/lsp:Worker", ptr %t72, i32 0, i32 2
  %t74 = load ptr, ptr %t73, !tbaa !29
  %t77 = getelementptr %"compiler/session:Reader", ptr %t74, i32 0, i32 0
  %t78 = load i32, ptr %t77, !tbaa !23
  %t80 = insertvalue [1 x i32] undef, i32 %t78, 0
  store [1 x i32] %t80, ptr %l2
  %t83 = insertvalue { i64, ptr } undef, i64 1, 0
  %t84 = insertvalue { i64, ptr } %t83, ptr %l2, 1
  %t86 = call { i64, ptr } @compiler_2fsession_2eReadable(ptr %s2, ptr %s2, { i64, ptr } %t84, i32 1000)
  store { i64, ptr } %t86, ptr %l44
  br label %bb30
bb30:
  %t87 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t87, ptr %l3, !tbaa !27
  %t88 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t89 = load ptr, ptr %t88, !tbaa !27
  %t90 = getelementptr i1, ptr %t89, i64 0
  %t91 = load i1, ptr %t90, !tbaa !31
  br i1 %t91, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2efromWorker(ptr %v0, ptr %t93)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb35:
  br label %bb10
bb36:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edue(ptr %v0, ptr %a0, i64 %a1) #0 {
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
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca i1
  %l46 = alloca ptr
  %l49 = alloca i1
  %l54 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %t1)
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eaddPending(ptr %v0, ptr %t3, i64 %t4)
  br label %bb2
bb2:
  store i64 0, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/lsp:Server", ptr %t7, i32 0, i32 1
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l14
  br label %bb3
bb3:
  %t12 = load i64, ptr %l14, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = icmp sgt i64 %t13, %t14
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t19, 0
  br i1 %t21, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb9
bb6:
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = sub i64 %t23, %t24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = add i64 %t27, %t28
  %t33 = sub i64 %t31, 1
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = sdiv i64 %t33, %t34
  store i64 %t37, ptr %l21, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb8
bb8:
  %t39 = load i64, ptr %l21, !tbaa !24
  store i64 %t39, ptr %l18, !tbaa !24
  br label %bb9
bb9:
  %t40 = load i64, ptr %l18, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb10
bb10:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb11, label %bb12
bb11:
  br label %bb28
bb12:
  br label %bb13
bb13:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t51 = load i64, ptr %l4, !tbaa !24
  %t54 = mul i64 %t50, %t51
  %t57 = add i64 %t49, %t54
  store i64 %t57, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l1, !tbaa !24
  %t63 = icmp ne i64 %t59, %t60
  br i1 %t63, label %bb14, label %bb15
bb14:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lsp:Server", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l46
  br label %bb16
bb15:
  store i1 false, ptr %l42, !tbaa !21
  br label %bb17
bb16:
  %t72 = load ptr, ptr %l46, !tbaa !29
  %t74 = getelementptr %"compiler/lsp:Doc", ptr %t72, i32 0, i32 4
  %t75 = load i1, ptr %t74, !tbaa !21
  store i1 %t75, ptr %l42, !tbaa !21
  br label %bb17
bb17:
  %t77 = load i1, ptr %l42, !tbaa !21
  br i1 %t77, label %bb18, label %bb19
bb18:
  %t78 = load i64, ptr %l1, !tbaa !24
  store i64 %t78, ptr %l8, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/lsp:Server", ptr %t80, i32 0, i32 1
  %t83 = load i64, ptr %l7, !tbaa !24
  %t86 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t82, i64 %t83)
  store ptr %t86, ptr %l54
  br label %bb20
bb19:
  store i1 false, ptr %l49, !tbaa !21
  br label %bb22
bb20:
  %t87 = load ptr, ptr %l54, !tbaa !29
  %t89 = getelementptr %"compiler/lsp:Doc", ptr %t87, i32 0, i32 5
  %t90 = load i64, ptr %l8, !tbaa !24
  %t93 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %t89, i64 %t90)
  store i1 %t93, ptr %l58
  br label %bb21
bb21:
  %t94 = load i1, ptr %l58, !tbaa !21
  store i1 %t94, ptr %l49, !tbaa !21
  br label %bb22
bb22:
  %t95 = load i1, ptr %l49, !tbaa !21
  br i1 %t95, label %bb23, label %bb24
bb23:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eaddPending(ptr %v0, ptr %t96, i64 %t97)
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l6, !tbaa !24
  br label %bb10
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l63, !tbaa !29
  %t105 = call i64 @std_2ftime_2eNow()
  store i64 %t105, ptr %l64
  br label %bb29
bb29:
  %t106 = load i64, ptr @G_2ecompiler_2flsp_2eSettleNs, !tbaa !24
  %t107 = load i64, ptr %l64, !tbaa !24
  %t109 = add i64 %t107, %t106
  %t111 = load ptr, ptr %l63, !tbaa !29
  %t112 = getelementptr %"compiler/lsp:Server", ptr %t111, i32 0, i32 6
  store i64 %t109, ptr %t112, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2efromWorker(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l11 = alloca i1
  %l15 = alloca i32
  %l19 = alloca i64
  %l21 = alloca i1
  %l24 = alloca i64
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca [43 x i8]
  %l36 = alloca { i64, ptr }
  %l37 = alloca { i64, ptr }
  %l39 = alloca i64
  %l43 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %l52 = alloca i1
  %l54 = alloca i1
  %l58 = alloca i1
  %l59 = alloca ptr
  %l61 = alloca ptr
  %l62 = alloca i32
  %l64 = alloca i1
  %l67 = alloca i64
  %l69 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l71 = alloca i64
  %l72 = alloca i32
  %l73 = alloca i64
  %l74 = alloca i32
  %l78 = alloca i1
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t7 = icmp eq ptr %t5, null
  br i1 %t7, label %bb1, label %bb2
bb1:
  call void @__olang_check_failed(ptr @olang_loc_824396f7e8872934_1f4412bc0bc5f5e0)
  unreachable
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 2
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %v0, ptr %t13)
  store i1 %t15, ptr %l11
  br label %bb4
bb4:
  %t16 = load i1, ptr %l11, !tbaa !21
  %t17 = xor i1 %t16, true
  br i1 %t17, label %bb5, label %bb6
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/lsp:Server", ptr %t19, i32 0, i32 3
  %t22 = getelementptr %"compiler/lsp:Worker", ptr %t21, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = call i32 @compiler_2fsession_2eReap(i32 %t23)
  store i32 %t25, ptr %l15
  br label %bb7
bb6:
  br label %bb25
bb7:
  %t26 = load i32, ptr %l15, !tbaa !23
  store i32 %t26, ptr %l1, !tbaa !23
  %t27 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %t27)
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Server", ptr %t29, i32 0, i32 4
  %t33 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t31)
  store i64 %t33, ptr %l19
  br label %bb9
bb9:
  %t34 = load i64, ptr %l19, !tbaa !24
  %t35 = icmp sgt i64 %t34, 0
  br i1 %t35, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb13
bb11:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/lsp:Server", ptr %t37, i32 0, i32 5
  %t41 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t39)
  store i64 %t41, ptr %l24
  br label %bb12
bb12:
  %t42 = load i64, ptr %l24, !tbaa !24
  %t43 = icmp sgt i64 %t42, 0
  store i1 %t43, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l21, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lsp:Server", ptr %t46, i32 0, i32 3
  %t49 = getelementptr %"compiler/lsp:Worker", ptr %t48, i32 0, i32 0
  store i32 -1, ptr %t49, !tbaa !23
  store { i64, ptr } { i64 43, ptr getelementptr inbounds (<{ i64, [43 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l27, !tbaa !27
  %t50 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t50, ptr %l28, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = mul i64 43, 1
  call void @llvm.memmove.p0.p0.i64(ptr %l29, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 43, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %l29, 1
  store { i64, ptr } %t56, ptr %l2, !tbaa !27
  %t58 = load i32, ptr %l1, !tbaa !23
  %t60 = icmp sgt i32 %t58, 128
  br i1 %t60, label %bb16, label %bb17
bb15:
  br label %bb24
bb16:
  store %olang.scope zeroinitializer, ptr %s3
  %t62 = load i32, ptr %l1, !tbaa !23
  %t64 = sub i32 %t62, 128
  %t66 = call { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %s3, i32 %t64)
  store { i64, ptr } %t66, ptr %l36
  br label %bb18
bb17:
  br label %bb22
bb18:
  %t67 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t69 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t70 = extractvalue { i64, ptr } %t69, 1
  %t71 = extractvalue { i64, ptr } %t69, 0
  %t72 = add i64 %t68, %t71
  %t73 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t75 = add i64 %t72, %t74
  %t76 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t75)
  call void @olang_textcopy(ptr %t76, ptr %t67, i64 %t68)
  %t77 = getelementptr i8, ptr %t76, i64 %t68
  call void @olang_textcopy(ptr %t77, ptr %t70, i64 %t71)
  %t78 = getelementptr i8, ptr %t77, i64 %t71
  call void @olang_textcopy(ptr %t78, ptr %t73, i64 %t74)
  %t79 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t76, 1
  store { i64, ptr } %t80, ptr %l37, !tbaa !27
  %t81 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t82 = extractvalue { i64, ptr } %t81, 0
  %t83 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t84 = extractvalue { i64, ptr } %t83, 0
  store i64 %t84, ptr %l39, !tbaa !24
  %t86 = load i64, ptr %l39, !tbaa !24
  %t87 = icmp eq i64 %t82, %t86
  br i1 %t87, label %bb19, label %bb20
bb19:
  %t89 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t92 = load ptr, ptr %t91, !tbaa !27
  %t93 = load i64, ptr %l39, !tbaa !24
  %t94 = mul i64 %t93, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t90, ptr %t92, i64 %t94, i1 false)
  br label %bb21
bb20:
  %t95 = load { i64, ptr }, ptr %l37, !tbaa !27
  store { i64, ptr } %t95, ptr %l2, !tbaa !27
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, ptr }, ptr %l2, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %s2, ptr %t96, { i64, ptr } %t97)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb24
bb24:
  br label %ret
bb25:
  br label %bb26
bb26:
  store %olang.scope zeroinitializer, ptr %s5
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/lsp:Server", ptr %t100, i32 0, i32 3
  %t103 = getelementptr %"compiler/lsp:Worker", ptr %t102, i32 0, i32 2
  %t104 = load ptr, ptr %t103, !tbaa !29
  %t106 = icmp eq ptr %t104, null
  br i1 %t106, label %bb27, label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_b5606d6e3fe22ec3_be86f13ccb1ff2ff)
  unreachable
bb28:
  br label %bb29
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lsp:Server", ptr %t108, i32 0, i32 3
  %t111 = getelementptr %"compiler/lsp:Worker", ptr %t110, i32 0, i32 2
  %t112 = load ptr, ptr %t111, !tbaa !29
  %t114 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %v0, ptr %s5, ptr %t112)
  %t115 = extractvalue { i32, { i64, ptr } } %t114, 1
  %t116 = extractvalue { i32, { i64, ptr } } %t114, 0
  store i32 %t116, ptr %l50
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb31, label %ok.118, !prof !99
ok.118:
  store { i64, ptr } %t115, ptr %l49
  br label %bb30
bb30:
  %t119 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t119, ptr %l43, !tbaa !27
  br label %bb33
bb31:
  %t120 = load i32, ptr %l50, !tbaa !23
  %t121 = ashr i32 %t120, 16
  %t123 = icmp eq i32 %t121, 1
  store i1 %t123, ptr %l52, !tbaa !21
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s5)
  br label %bb59
bb33:
  %t124 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t124, ptr %l3, !tbaa !27
  %t125 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t127 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s5, ptr %s5, { i64, ptr } %t125, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t127, ptr %l54
  br label %bb34
bb34:
  %t128 = load i1, ptr %l54, !tbaa !21
  br i1 %t128, label %bb35, label %bb36
bb35:
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t130 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2enote(ptr %v0, ptr %s5, ptr %t129, { i64, ptr } %t130)
  br label %bb37
bb36:
  br label %bb38
bb37:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb38:
  %t133 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t135 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %s5, ptr %s5, { i64, ptr } %t133, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t135, ptr %l58
  br label %bb39
bb39:
  %t136 = load i1, ptr %l58, !tbaa !21
  br i1 %t136, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s8
  %t137 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t139 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %s5, ptr %s8, { i64, ptr } %t137)
  %t140 = extractvalue { i32, ptr } %t139, 1
  %t141 = extractvalue { i32, ptr } %t139, 0
  store i32 %t141, ptr %l62
  %t142 = icmp ne i32 %t141, 0
  br i1 %t142, label %bb43, label %ok.143, !prof !99
ok.143:
  store ptr %t140, ptr %l61
  br label %bb42
bb41:
  br label %bb56
bb42:
  %t144 = load ptr, ptr %l61, !tbaa !29
  store ptr %t144, ptr %l59, !tbaa !29
  br label %bb47
bb43:
  %t145 = load i32, ptr %l62, !tbaa !23
  %t146 = ashr i32 %t145, 16
  %t148 = icmp eq i32 %t146, 1
  store i1 %t148, ptr %l64, !tbaa !21
  %t149 = load i32, ptr %l62, !tbaa !23
  %t150 = ashr i32 %t149, 16
  %t152 = icmp eq i32 %t150, 1
  br i1 %t152, label %bb44, label %bb45
bb44:
  call void @__olang_errpay_pop()
  br label %bb45
bb45:
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s8)
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb47:
  %t154 = load ptr, ptr %l59, !tbaa !29
  %t157 = call { i64, ptr } @compiler_2flsp_2eidOf(ptr %s8, ptr %s8, ptr %t154)
  store { i64, ptr } %t157, ptr %l69
  br label %bb48
bb48:
  %t158 = load { i64, ptr }, ptr %l69, !tbaa !27
  %t159 = extractvalue { i64, ptr } %t158, 0
  %t160 = extractvalue { i64, ptr } %t158, 1
  %t161 = mul i64 %t159, 1
  %t162 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t161)
  call void @llvm.memcpy.p0.p0.i64(ptr %t162, ptr %t160, i64 %t161, i1 false)
  %t163 = insertvalue { i64, ptr } undef, i64 %t159, 0
  %t164 = insertvalue { i64, ptr } %t163, ptr %t162, 1
  store { i64, ptr } %t164, ptr %l70, !tbaa !27
  %t165 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s8, i64 10)
  %t166 = extractvalue { i32, i64 } %t165, 1
  %t167 = extractvalue { i32, i64 } %t165, 0
  store i32 %t167, ptr %l72
  %t168 = icmp ne i32 %t167, 0
  br i1 %t168, label %bb50, label %ok.169, !prof !99
ok.169:
  store i64 %t166, ptr %l71
  br label %bb49
bb49:
  %t170 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t171 = load i64, ptr %l71, !tbaa !24
  %t172 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s8, { i64, ptr } %t170, i64 %t171)
  %t173 = extractvalue { i32, i64 } %t172, 1
  %t174 = extractvalue { i32, i64 } %t172, 0
  store i32 %t174, ptr %l74
  %t175 = icmp ne i32 %t174, 0
  br i1 %t175, label %bb53, label %ok.176, !prof !99
ok.176:
  store i64 %t173, ptr %l73
  br label %bb52
bb50:
  br label %bb51
bb51:
  store i64 -1, ptr %l67, !tbaa !24
  br label %bb54
bb52:
  %t177 = load i64, ptr %l73, !tbaa !24
  store i64 %t177, ptr %l67, !tbaa !24
  br label %bb54
bb53:
  br label %bb51
bb54:
  %t178 = load i64, ptr %l67, !tbaa !24
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/lsp:Server", ptr %t179, i32 0, i32 5
  %t185 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t181, i64 %t178)
  store i1 %t185, ptr %l78
  br label %bb55
bb55:
  call void @__olang_scope_close(ptr %s8)
  br label %bb56
bb56:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load { i64, ptr }, ptr %l3, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s5, ptr %t186, { i64, ptr } %t187)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s5)
  br label %bb58
bb58:
  br label %bb26
bb59:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ehandle(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l11 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l16 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l25 = alloca { i64, ptr }
  %l27 = alloca i1
  %l32 = alloca i1
  %l33 = alloca i1
  %l35 = alloca i1
  %l36 = alloca i1
  %l38 = alloca i1
  %l39 = alloca i1
  %l41 = alloca i1
  %l43 = alloca i1
  %l46 = alloca ptr
  %l48 = alloca { i64, ptr }
  %l51 = alloca i1
  %l54 = alloca i1
  %l55 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l60 = alloca ptr
  %l61 = alloca i32
  %l63 = alloca i1
  %l67 = alloca { i64, ptr }
  %l69 = alloca ptr
  %l70 = alloca i32
  %l72 = alloca i1
  %l75 = alloca ptr
  %l77 = alloca { i64, ptr }
  %l79 = alloca { i64, ptr }
  %l81 = alloca i1
  %l82 = alloca ptr
  %l84 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l87 = alloca i32
  %l89 = alloca i1
  %l92 = alloca ptr
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l97 = alloca i32
  %l99 = alloca i1
  %l102 = alloca { i64, ptr }
  %l103 = alloca { i64, ptr }
  %l105 = alloca { i64, ptr }
  %l107 = alloca ptr
  %l108 = alloca i32
  %l110 = alloca i1
  %l113 = alloca { i64, ptr }
  %l114 = alloca i32
  %l116 = alloca i1
  %l122 = alloca ptr
  %l123 = alloca { i64, ptr }
  %l124 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l131 = alloca i1
  %l132 = alloca ptr
  %l135 = alloca { i64, ptr }
  %l137 = alloca ptr
  %l138 = alloca i32
  %l140 = alloca i1
  %l144 = alloca { i64, ptr }
  %l146 = alloca ptr
  %l147 = alloca i32
  %l149 = alloca i1
  %l152 = alloca ptr
  %l154 = alloca { i64, ptr }
  %l156 = alloca i1
  %l161 = alloca i1
  %l165 = alloca ptr
  %l170 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %s0, { i64, ptr } %t1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l14
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l11, !tbaa !29
  br label %bb8
bb2:
  %t9 = load i32, ptr %l14, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l16, !tbaa !21
  %t13 = load i32, ptr %l14, !tbaa !23
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
  %t18 = load ptr, ptr %l0, !tbaa !29
  store ptr %t18, ptr %l19, !tbaa !29
  %t19 = call { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %s1, ptr %s1, ptr %s1, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d17, i32 0, i32 1) }, i64 -32700, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store { i64, ptr } %t19, ptr %l20
  br label %bb6
bb6:
  %t20 = load { i64, ptr }, ptr %l20, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t20, 0
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = mul i64 %t21, 1
  %t24 = call ptr @__olang_scope_alloc(ptr %s1, i64 %t23)
  call void @llvm.memcpy.p0.p0.i64(ptr %t24, ptr %t22, i64 %t23, i1 false)
  %t25 = insertvalue { i64, ptr } undef, i64 %t21, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  %t27 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s1, ptr %t27, { i64, ptr } %t26)
  br label %bb7
bb7:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t29 = load ptr, ptr %l11, !tbaa !29
  store ptr %t29, ptr %l2, !tbaa !29
  %t30 = load ptr, ptr %l2, !tbaa !29
  %t32 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t30, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store { i64, ptr } %t32, ptr %l23
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l23, !tbaa !27
  store { i64, ptr } %t33, ptr %l3, !tbaa !27
  %t34 = load ptr, ptr %l2, !tbaa !29
  %t36 = call { i64, ptr } @compiler_2flsp_2eidOf(ptr %s0, ptr %s0, ptr %t34)
  store { i64, ptr } %t36, ptr %l25
  br label %bb10
bb10:
  %t37 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t37, ptr %l4, !tbaa !27
  %t38 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t38, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t40, ptr %l27
  br label %bb11
bb11:
  %t41 = load i1, ptr %l27, !tbaa !21
  br i1 %t41, label %bb12, label %bb13
bb12:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l2, !tbaa !29
  %t44 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2einitialize(ptr %v0, ptr %s0, ptr %s0, ptr %t42, ptr %t43, { i64, ptr } %t44)
  br label %bb14
bb13:
  br label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t48 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t50 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t48, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t50, ptr %l32
  br label %bb16
bb16:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb20
bb18:
  %t52 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t54, ptr %l35
  br label %bb19
bb19:
  %t55 = load i1, ptr %l35, !tbaa !21
  store i1 %t55, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t56 = load i1, ptr %l33, !tbaa !21
  br i1 %t56, label %bb21, label %bb22
bb21:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb24
bb22:
  %t57 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t59 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t57, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t59, ptr %l38
  br label %bb23
bb23:
  %t60 = load i1, ptr %l38, !tbaa !21
  store i1 %t60, ptr %l36, !tbaa !21
  br label %bb24
bb24:
  %t61 = load i1, ptr %l36, !tbaa !21
  br i1 %t61, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb28
bb26:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t64 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t62, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t64, ptr %l41
  br label %bb27
bb27:
  %t65 = load i1, ptr %l41, !tbaa !21
  store i1 %t65, ptr %l39, !tbaa !21
  br label %bb28
bb28:
  %t66 = load i1, ptr %l39, !tbaa !21
  br i1 %t66, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb30:
  br label %bb31
bb31:
  %t67 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t69 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t67, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t69, ptr %l43
  br label %bb32
bb32:
  %t70 = load i1, ptr %l43, !tbaa !21
  br i1 %t70, label %bb33, label %bb34
bb33:
  store %olang.scope zeroinitializer, ptr %s4
  %t71 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edrain(ptr %v0, ptr %v2, ptr %t71)
  br label %bb35
bb34:
  br label %bb38
bb35:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/lsp:Server", ptr %t73, i32 0, i32 7
  store i1 true, ptr %t75, !tbaa !21
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l46, !tbaa !29
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t79 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t77, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store { i64, ptr } %t79, ptr %l48
  br label %bb36
bb36:
  %t80 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t81 = extractvalue { i64, ptr } %t80, 0
  %t82 = extractvalue { i64, ptr } %t80, 1
  %t83 = mul i64 %t81, 1
  %t84 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t83)
  call void @llvm.memcpy.p0.p0.i64(ptr %t84, ptr %t82, i64 %t83, i1 false)
  %t85 = insertvalue { i64, ptr } undef, i64 %t81, 0
  %t86 = insertvalue { i64, ptr } %t85, ptr %t84, 1
  %t87 = load ptr, ptr %l46, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s4, ptr %t87, { i64, ptr } %t86)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb38:
  %t89 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t91 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t89, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t91, ptr %l51
  br label %bb39
bb39:
  %t92 = load i1, ptr %l51, !tbaa !21
  br i1 %t92, label %bb40, label %bb41
bb40:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/lsp:Server", ptr %t93, i32 0, i32 8
  store i1 true, ptr %t95, !tbaa !21
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb41:
  br label %bb42
bb42:
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t96, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t98, ptr %l54
  br label %bb43
bb43:
  %t99 = load i1, ptr %l54, !tbaa !21
  br i1 %t99, label %bb44, label %bb45
bb44:
  %t100 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d29, i32 0, i32 1) }, ptr %l58, !tbaa !27
  %t102 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t105 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t100, { i64, ptr } %t102)
  %t106 = extractvalue { i32, ptr } %t105, 1
  %t107 = extractvalue { i32, ptr } %t105, 0
  store i32 %t107, ptr %l61
  %t108 = icmp ne i32 %t107, 0
  br i1 %t108, label %bb47, label %ok.109, !prof !99
ok.109:
  store ptr %t106, ptr %l60
  br label %bb46
bb45:
  br label %bb59
bb46:
  %t110 = load ptr, ptr %l60, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l67, !tbaa !27
  %t111 = load { i64, ptr }, ptr %l67, !tbaa !27
  %t114 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t110, { i64, ptr } %t111)
  %t115 = extractvalue { i32, ptr } %t114, 1
  %t116 = extractvalue { i32, ptr } %t114, 0
  store i32 %t116, ptr %l70
  %t117 = icmp ne i32 %t116, 0
  br i1 %t117, label %bb52, label %ok.118, !prof !99
ok.118:
  store ptr %t115, ptr %l69
  br label %bb51
bb47:
  %t119 = load i32, ptr %l61, !tbaa !23
  %t120 = ashr i32 %t119, 16
  %t122 = icmp eq i32 %t120, 1
  store i1 %t122, ptr %l63, !tbaa !21
  %t123 = load i32, ptr %l61, !tbaa !23
  %t124 = ashr i32 %t123, 16
  %t126 = icmp eq i32 %t124, 1
  br i1 %t126, label %bb48, label %bb49
bb48:
  call void @__olang_errpay_pop()
  br label %bb49
bb49:
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb51:
  %t128 = load ptr, ptr %l69, !tbaa !29
  store ptr %t128, ptr %l55, !tbaa !29
  br label %bb55
bb52:
  %t129 = load i32, ptr %l70, !tbaa !23
  %t130 = ashr i32 %t129, 16
  %t132 = icmp eq i32 %t130, 1
  store i1 %t132, ptr %l72, !tbaa !21
  %t133 = load i32, ptr %l70, !tbaa !23
  %t134 = ashr i32 %t133, 16
  %t136 = icmp eq i32 %t134, 1
  br i1 %t136, label %bb53, label %bb54
bb53:
  call void @__olang_errpay_pop()
  br label %bb54
bb54:
  br label %bb50
bb55:
  %t138 = load ptr, ptr %l55, !tbaa !29
  store ptr %t138, ptr %l5, !tbaa !29
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l75, !tbaa !29
  %t140 = load ptr, ptr %l5, !tbaa !29
  %t142 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t140, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store { i64, ptr } %t142, ptr %l77
  br label %bb56
bb56:
  %t143 = load ptr, ptr %l5, !tbaa !29
  %t145 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t143, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store { i64, ptr } %t145, ptr %l79
  br label %bb57
bb57:
  %t146 = load ptr, ptr %l75, !tbaa !29
  %t147 = load { i64, ptr }, ptr %l77, !tbaa !27
  %t148 = load { i64, ptr }, ptr %l79, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eopened(ptr %v0, ptr %s0, ptr %s0, ptr %t146, { i64, ptr } %t147, { i64, ptr } %t148)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb59:
  %t149 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t151 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t149, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t151, ptr %l81
  br label %bb60
bb60:
  %t152 = load i1, ptr %l81, !tbaa !21
  br i1 %t152, label %bb61, label %bb62
bb61:
  %t153 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d34, i32 0, i32 1) }, ptr %l84, !tbaa !27
  %t154 = load { i64, ptr }, ptr %l84, !tbaa !27
  %t157 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t153, { i64, ptr } %t154)
  %t158 = extractvalue { i32, ptr } %t157, 1
  %t159 = extractvalue { i32, ptr } %t157, 0
  store i32 %t159, ptr %l87
  %t160 = icmp ne i32 %t159, 0
  br i1 %t160, label %bb64, label %ok.161, !prof !99
ok.161:
  store ptr %t158, ptr %l86
  br label %bb63
bb62:
  br label %bb91
bb63:
  %t162 = load ptr, ptr %l86, !tbaa !29
  store ptr %t162, ptr %l82, !tbaa !29
  br label %bb68
bb64:
  %t163 = load i32, ptr %l87, !tbaa !23
  %t164 = ashr i32 %t163, 16
  %t166 = icmp eq i32 %t164, 1
  store i1 %t166, ptr %l89, !tbaa !21
  %t167 = load i32, ptr %l87, !tbaa !23
  %t168 = ashr i32 %t167, 16
  %t170 = icmp eq i32 %t168, 1
  br i1 %t170, label %bb65, label %bb66
bb65:
  call void @__olang_errpay_pop()
  br label %bb66
bb66:
  br label %bb67
bb67:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb68:
  %t172 = load ptr, ptr %l82, !tbaa !29
  store ptr %t172, ptr %l6, !tbaa !29
  %t173 = load ptr, ptr %l6, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d35, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t174 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t177 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t173, { i64, ptr } %t174)
  %t178 = extractvalue { i32, ptr } %t177, 1
  %t179 = extractvalue { i32, ptr } %t177, 0
  store i32 %t179, ptr %l97
  %t180 = icmp ne i32 %t179, 0
  br i1 %t180, label %bb70, label %ok.181, !prof !99
ok.181:
  store ptr %t178, ptr %l96
  br label %bb69
bb69:
  %t182 = load ptr, ptr %l96, !tbaa !29
  store ptr %t182, ptr %l92, !tbaa !29
  br label %bb74
bb70:
  %t183 = load i32, ptr %l97, !tbaa !23
  %t184 = ashr i32 %t183, 16
  %t186 = icmp eq i32 %t184, 1
  store i1 %t186, ptr %l99, !tbaa !21
  %t187 = load i32, ptr %l97, !tbaa !23
  %t188 = ashr i32 %t187, 16
  %t190 = icmp eq i32 %t188, 1
  br i1 %t190, label %bb71, label %bb72
bb71:
  call void @__olang_errpay_pop()
  br label %bb72
bb72:
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb74:
  %t192 = load ptr, ptr %l92, !tbaa !29
  %t193 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t192, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store { i64, ptr } %t193, ptr %l102
  br label %bb75
bb75:
  %t194 = load { i64, ptr }, ptr %l102, !tbaa !27
  store { i64, ptr } %t194, ptr %l7, !tbaa !27
  %t195 = load ptr, ptr %l6, !tbaa !29
  store { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l105, !tbaa !27
  %t196 = load { i64, ptr }, ptr %l105, !tbaa !27
  %t199 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t195, { i64, ptr } %t196)
  %t200 = extractvalue { i32, ptr } %t199, 1
  %t201 = extractvalue { i32, ptr } %t199, 0
  store i32 %t201, ptr %l108
  %t202 = icmp ne i32 %t201, 0
  br i1 %t202, label %bb77, label %ok.203, !prof !99
ok.203:
  store ptr %t200, ptr %l107
  br label %bb76
bb76:
  %t204 = load ptr, ptr %l107, !tbaa !29
  %t205 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t204)
  %t206 = extractvalue { i32, { i64, ptr } } %t205, 1
  %t207 = extractvalue { i32, { i64, ptr } } %t205, 0
  store i32 %t207, ptr %l114
  %t208 = icmp ne i32 %t207, 0
  br i1 %t208, label %bb82, label %ok.209, !prof !99
ok.209:
  store { i64, ptr } %t206, ptr %l113
  br label %bb81
bb77:
  %t210 = load i32, ptr %l108, !tbaa !23
  %t211 = ashr i32 %t210, 16
  %t213 = icmp eq i32 %t211, 1
  store i1 %t213, ptr %l110, !tbaa !21
  %t214 = load i32, ptr %l108, !tbaa !23
  %t215 = ashr i32 %t214, 16
  %t217 = icmp eq i32 %t215, 1
  br i1 %t217, label %bb78, label %bb79
bb78:
  call void @__olang_errpay_pop()
  br label %bb79
bb79:
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb81:
  %t219 = load { i64, ptr }, ptr %l113, !tbaa !27
  store { i64, ptr } %t219, ptr %l103, !tbaa !27
  br label %bb85
bb82:
  %t220 = load i32, ptr %l114, !tbaa !23
  %t221 = ashr i32 %t220, 16
  %t223 = icmp eq i32 %t221, 1
  store i1 %t223, ptr %l116, !tbaa !21
  %t224 = load i32, ptr %l114, !tbaa !23
  %t225 = ashr i32 %t224, 16
  %t227 = icmp eq i32 %t225, 1
  br i1 %t227, label %bb83, label %bb84
bb83:
  call void @__olang_errpay_pop()
  br label %bb84
bb84:
  br label %bb80
bb85:
  %t229 = load { i64, ptr }, ptr %l103, !tbaa !27
  store { i64, ptr } %t229, ptr %l8, !tbaa !27
  %t230 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t232 = extractvalue { i64, ptr } %t230, 0
  %t234 = icmp eq i64 %t232, 0
  br i1 %t234, label %bb86, label %bb87
bb86:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb87:
  br label %bb88
bb88:
  %t236 = load ptr, ptr %l0, !tbaa !29
  store ptr %t236, ptr %l122, !tbaa !29
  %t237 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t237, ptr %l123, !tbaa !27
  %t238 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t238, ptr %l124, !tbaa !27
  %t239 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t243 = sub i64 %t241, 1
  %t245 = getelementptr { i64, ptr }, ptr %l124, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr ptr, ptr %t246, i64 %t243
  %t248 = load ptr, ptr %t247, !tbaa !39
  %t250 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t248, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d38, i32 0, i32 1) })
  store { i64, ptr } %t250, ptr %l129
  br label %bb89
bb89:
  %t251 = load ptr, ptr %l122, !tbaa !29
  %t252 = load { i64, ptr }, ptr %l123, !tbaa !27
  %t253 = load { i64, ptr }, ptr %l129, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2echanged(ptr %v0, ptr %s0, ptr %s0, ptr %t251, { i64, ptr } %t252, { i64, ptr } %t253)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb91:
  %t254 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t256 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t254, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i1 %t256, ptr %l131
  br label %bb92
bb92:
  %t257 = load i1, ptr %l131, !tbaa !21
  br i1 %t257, label %bb93, label %bb94
bb93:
  %t258 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d40, i32 0, i32 1) }, ptr %l135, !tbaa !27
  %t260 = load { i64, ptr }, ptr %l135, !tbaa !27
  %t263 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t258, { i64, ptr } %t260)
  %t264 = extractvalue { i32, ptr } %t263, 1
  %t265 = extractvalue { i32, ptr } %t263, 0
  store i32 %t265, ptr %l138
  %t266 = icmp ne i32 %t265, 0
  br i1 %t266, label %bb96, label %ok.267, !prof !99
ok.267:
  store ptr %t264, ptr %l137
  br label %bb95
bb94:
  br label %bb107
bb95:
  %t268 = load ptr, ptr %l137, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d41, i32 0, i32 1) }, ptr %l144, !tbaa !27
  %t269 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t272 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t268, { i64, ptr } %t269)
  %t273 = extractvalue { i32, ptr } %t272, 1
  %t274 = extractvalue { i32, ptr } %t272, 0
  store i32 %t274, ptr %l147
  %t275 = icmp ne i32 %t274, 0
  br i1 %t275, label %bb101, label %ok.276, !prof !99
ok.276:
  store ptr %t273, ptr %l146
  br label %bb100
bb96:
  %t277 = load i32, ptr %l138, !tbaa !23
  %t278 = ashr i32 %t277, 16
  %t280 = icmp eq i32 %t278, 1
  store i1 %t280, ptr %l140, !tbaa !21
  %t281 = load i32, ptr %l138, !tbaa !23
  %t282 = ashr i32 %t281, 16
  %t284 = icmp eq i32 %t282, 1
  br i1 %t284, label %bb97, label %bb98
bb97:
  call void @__olang_errpay_pop()
  br label %bb98
bb98:
  br label %bb99
bb99:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb100:
  %t286 = load ptr, ptr %l146, !tbaa !29
  store ptr %t286, ptr %l132, !tbaa !29
  br label %bb104
bb101:
  %t287 = load i32, ptr %l147, !tbaa !23
  %t288 = ashr i32 %t287, 16
  %t290 = icmp eq i32 %t288, 1
  store i1 %t290, ptr %l149, !tbaa !21
  %t291 = load i32, ptr %l147, !tbaa !23
  %t292 = ashr i32 %t291, 16
  %t294 = icmp eq i32 %t292, 1
  br i1 %t294, label %bb102, label %bb103
bb102:
  call void @__olang_errpay_pop()
  br label %bb103
bb103:
  br label %bb99
bb104:
  %t296 = load ptr, ptr %l132, !tbaa !29
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l152, !tbaa !29
  %t300 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t296, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d42, i32 0, i32 1) })
  store { i64, ptr } %t300, ptr %l154
  br label %bb105
bb105:
  %t301 = load ptr, ptr %l152, !tbaa !29
  %t302 = load { i64, ptr }, ptr %l154, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eclosed(ptr %v0, ptr %s0, ptr %t301, { i64, ptr } %t302)
  br label %bb106
bb106:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb107:
  %t303 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t303, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) })
  store i1 %t305, ptr %l156
  br label %bb108
bb108:
  %t306 = load i1, ptr %l156, !tbaa !21
  br i1 %t306, label %bb109, label %bb110
bb109:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb110:
  br label %bb111
bb111:
  %t307 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t310 = insertvalue { i64, ptr } undef, i64 5, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr @G_2ecompiler_2flsp_2eRequests, 1
  %t313 = load ptr, ptr @__olang_prog_scope
  %t316 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t313, ptr %s0, { i64, ptr } %t311, { i64, ptr } %t307)
  store i1 %t316, ptr %l161
  br label %bb112
bb112:
  %t317 = load i1, ptr %l161, !tbaa !21
  br i1 %t317, label %bb113, label %bb114
bb113:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t320 = load { i64, ptr }, ptr %l4, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eask(ptr %v0, ptr %v1, ptr %s0, ptr %v2, ptr %t318, { i64, ptr } %t319, { i64, ptr } %t320)
  br label %bb115
bb114:
  br label %bb116
bb115:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb116:
  %t324 = load ptr, ptr %l0, !tbaa !29
  store ptr %t324, ptr %l165, !tbaa !29
  %t325 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t326 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t327 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t328 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t330 = extractvalue { i64, ptr } %t326, 1
  %t331 = extractvalue { i64, ptr } %t326, 0
  %t332 = add i64 %t328, %t331
  %t333 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t332)
  call void @olang_textcopy(ptr %t333, ptr %t327, i64 %t328)
  %t334 = getelementptr i8, ptr %t333, i64 %t328
  call void @olang_textcopy(ptr %t334, ptr %t330, i64 %t331)
  %t335 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t336 = insertvalue { i64, ptr } %t335, ptr %t333, 1
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t339 = extractvalue { i64, ptr } %t336, 1
  %t340 = mul i64 %t338, 1
  %t341 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t340)
  call void @llvm.memcpy.p0.p0.i64(ptr %t341, ptr %t339, i64 %t340, i1 false)
  %t342 = insertvalue { i64, ptr } undef, i64 %t338, 0
  %t343 = insertvalue { i64, ptr } %t342, ptr %t341, 1
  %t346 = call { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t325, i64 -32601, { i64, ptr } %t343)
  store { i64, ptr } %t346, ptr %l170
  br label %bb117
bb117:
  %t347 = load { i64, ptr }, ptr %l170, !tbaa !27
  %t348 = extractvalue { i64, ptr } %t347, 0
  %t349 = extractvalue { i64, ptr } %t347, 1
  %t350 = mul i64 %t348, 1
  %t351 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t350)
  call void @llvm.memcpy.p0.p0.i64(ptr %t351, ptr %t349, i64 %t350, i1 false)
  %t352 = insertvalue { i64, ptr } undef, i64 %t348, 0
  %t353 = insertvalue { i64, ptr } %t352, ptr %t351, 1
  %t354 = load ptr, ptr %l165, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s0, ptr %t354, { i64, ptr } %t353)
  br label %bb118
bb118:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2einitialize(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l14 = alloca ptr
  %l15 = alloca i32
  %l17 = alloca i1
  %l22 = alloca { i64, ptr }
  %l24 = alloca ptr
  %l25 = alloca i32
  %l27 = alloca i1
  %l32 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i32
  %l37 = alloca i1
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca i1
  %l49 = alloca { i64, ptr }
  %l50 = alloca i32
  %l52 = alloca i1
  %l68 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l73 = alloca { i64, ptr }
  %l74 = alloca i32
  %l76 = alloca i1
  %l79 = alloca i1
  %l85 = alloca { i64, ptr }
  %l87 = alloca ptr
  %l92 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d45, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t3 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t6 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %a1, { i64, ptr } %t3)
  %t7 = extractvalue { i32, ptr } %t6, 1
  %t8 = extractvalue { i32, ptr } %t6, 0
  store i32 %t8, ptr %l15
  %t9 = icmp ne i32 %t8, 0
  br i1 %t9, label %bb2, label %ok.10, !prof !99
ok.10:
  store ptr %t7, ptr %l14
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l14, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d46, i32 0, i32 1) }, ptr %l22, !tbaa !27
  %t13 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t16 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t11, { i64, ptr } %t13)
  %t17 = extractvalue { i32, ptr } %t16, 1
  %t18 = extractvalue { i32, ptr } %t16, 0
  store i32 %t18, ptr %l25
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb7, label %ok.20, !prof !99
ok.20:
  store ptr %t17, ptr %l24
  br label %bb6
bb2:
  %t21 = load i32, ptr %l15, !tbaa !23
  %t22 = ashr i32 %t21, 16
  %t24 = icmp eq i32 %t22, 1
  store i1 %t24, ptr %l17, !tbaa !21
  %t25 = load i32, ptr %l15, !tbaa !23
  %t26 = ashr i32 %t25, 16
  %t28 = icmp eq i32 %t26, 1
  br i1 %t28, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t30 = icmp sge i64 0, 0
  br i1 %t30, label %bb22, label %bb23
bb6:
  %t32 = load ptr, ptr %l24, !tbaa !29
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d47, i32 0, i32 1) }, ptr %l32, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t37 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %v1, ptr %t32, { i64, ptr } %t34)
  %t38 = extractvalue { i32, ptr } %t37, 1
  %t39 = extractvalue { i32, ptr } %t37, 0
  store i32 %t39, ptr %l35
  %t40 = icmp ne i32 %t39, 0
  br i1 %t40, label %bb11, label %ok.41, !prof !99
ok.41:
  store ptr %t38, ptr %l34
  br label %bb10
bb7:
  %t42 = load i32, ptr %l25, !tbaa !23
  %t43 = ashr i32 %t42, 16
  %t45 = icmp eq i32 %t43, 1
  store i1 %t45, ptr %l27, !tbaa !21
  %t46 = load i32, ptr %l25, !tbaa !23
  %t47 = ashr i32 %t46, 16
  %t49 = icmp eq i32 %t47, 1
  br i1 %t49, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb5
bb10:
  %t51 = load ptr, ptr %l34, !tbaa !29
  store { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d48, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t52 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t55 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v1, ptr %s0, ptr %t51, { i64, ptr } %t52)
  %t56 = extractvalue { i32, ptr } %t55, 1
  %t57 = extractvalue { i32, ptr } %t55, 0
  store i32 %t57, ptr %l44
  %t58 = icmp ne i32 %t57, 0
  br i1 %t58, label %bb15, label %ok.59, !prof !99
ok.59:
  store ptr %t56, ptr %l43
  br label %bb14
bb11:
  %t60 = load i32, ptr %l35, !tbaa !23
  %t61 = ashr i32 %t60, 16
  %t63 = icmp eq i32 %t61, 1
  store i1 %t63, ptr %l37, !tbaa !21
  %t64 = load i32, ptr %l35, !tbaa !23
  %t65 = ashr i32 %t64, 16
  %t67 = icmp eq i32 %t65, 1
  br i1 %t67, label %bb12, label %bb13
bb12:
  call void @__olang_errpay_pop()
  br label %bb13
bb13:
  br label %bb5
bb14:
  %t69 = load ptr, ptr %l43, !tbaa !29
  %t70 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t69)
  %t71 = extractvalue { i32, { i64, ptr } } %t70, 1
  %t72 = extractvalue { i32, { i64, ptr } } %t70, 0
  store i32 %t72, ptr %l50
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb19, label %ok.74, !prof !99
ok.74:
  store { i64, ptr } %t71, ptr %l49
  br label %bb18
bb15:
  %t75 = load i32, ptr %l44, !tbaa !23
  %t76 = ashr i32 %t75, 16
  %t78 = icmp eq i32 %t76, 1
  store i1 %t78, ptr %l46, !tbaa !21
  %t79 = load i32, ptr %l44, !tbaa !23
  %t80 = ashr i32 %t79, 16
  %t82 = icmp eq i32 %t80, 1
  br i1 %t82, label %bb16, label %bb17
bb16:
  call void @__olang_errpay_pop()
  br label %bb17
bb17:
  br label %bb5
bb18:
  %t84 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t84, ptr %l9, !tbaa !27
  br label %bb26
bb19:
  %t85 = load i32, ptr %l50, !tbaa !23
  %t86 = ashr i32 %t85, 16
  %t88 = icmp eq i32 %t86, 1
  store i1 %t88, ptr %l52, !tbaa !21
  %t89 = load i32, ptr %l50, !tbaa !23
  %t90 = ashr i32 %t89, 16
  %t92 = icmp eq i32 %t90, 1
  br i1 %t92, label %bb20, label %bb21
bb20:
  call void @__olang_errpay_pop()
  br label %bb21
bb21:
  br label %bb5
bb22:
  %t94 = icmp sle i64 0, 1152921504606846975
  br i1 %t94, label %bb24, label %bb25
bb23:
  call void @__olang_check_failed(ptr @olang_loc_9565c00a3cf79970_b45483162fef2b54)
  unreachable
bb24:
  %t96 = mul i64 0, 8
  %t97 = insertvalue { i64, ptr } undef, i64 0, 0
  %t98 = insertvalue { i64, ptr } %t97, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  store { i64, ptr } %t98, ptr %l9, !tbaa !27
  br label %bb26
bb25:
  call void @__olang_check_failed(ptr @olang_loc_9565c00a3cf79970_b45483162fef2b54)
  unreachable
bb26:
  %t100 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t100, ptr %l3, !tbaa !27
  %t101 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t103 = extractvalue { i64, ptr } %t101, 0
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t107, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t109 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t111 = extractvalue { i64, ptr } %t109, 0
  store i64 %t111, ptr %l6, !tbaa !24
  br label %bb29
bb28:
  br label %bb45
bb29:
  store %olang.scope zeroinitializer, ptr %s3
  %t113 = load i64, ptr %l5, !tbaa !24
  %t114 = load i64, ptr %l6, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb44
bb31:
  br label %bb32
bb32:
  %t121 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t121, ptr %l68, !tbaa !27
  %t122 = load i64, ptr %l5, !tbaa !24
  %t124 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t125 = load ptr, ptr %t124, !tbaa !27
  %t126 = getelementptr ptr, ptr %t125, i64 %t122
  %t127 = load ptr, ptr %t126, !tbaa !39
  %t131 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s0, ptr %s0, ptr %t127)
  %t132 = extractvalue { i32, { i64, ptr } } %t131, 1
  %t133 = extractvalue { i32, { i64, ptr } } %t131, 0
  store i32 %t133, ptr %l74
  %t134 = icmp ne i32 %t133, 0
  br i1 %t134, label %bb34, label %ok.135, !prof !99
ok.135:
  store { i64, ptr } %t132, ptr %l73
  br label %bb33
bb33:
  %t136 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t136, ptr %l71, !tbaa !27
  br label %bb38
bb34:
  %t137 = load i32, ptr %l74, !tbaa !23
  %t138 = ashr i32 %t137, 16
  %t140 = icmp eq i32 %t138, 1
  store i1 %t140, ptr %l76, !tbaa !21
  %t141 = load i32, ptr %l74, !tbaa !23
  %t142 = ashr i32 %t141, 16
  %t144 = icmp eq i32 %t142, 1
  br i1 %t144, label %bb35, label %bb36
bb35:
  call void @__olang_errpay_pop()
  br label %bb36
bb36:
  br label %bb37
bb37:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d49, i32 0, i32 1) }, ptr %l71, !tbaa !27
  br label %bb38
bb38:
  %t146 = load { i64, ptr }, ptr %l71, !tbaa !27
  %t147 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s3, { i64, ptr } %t146, { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d50, i32 0, i32 1) })
  store i1 %t147, ptr %l79
  br label %bb39
bb39:
  %t148 = load i1, ptr %l79, !tbaa !21
  br i1 %t148, label %bb40, label %bb41
bb40:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/lsp:Server", ptr %t149, i32 0, i32 2
  store i1 true, ptr %t151, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s3)
  br label %bb43
bb43:
  %t152 = load i64, ptr %l5, !tbaa !24
  %t154 = add i64 %t152, 1
  store i64 %t154, ptr %l5, !tbaa !24
  br label %bb29
bb44:
  br label %bb45
bb45:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/lsp:Server", ptr %t156, i32 0, i32 2
  %t159 = load i1, ptr %t158, !tbaa !21
  br i1 %t159, label %bb46, label %bb47
bb46:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d51, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb48
bb47:
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, ptr %l85, !tbaa !27
  br label %bb48
bb48:
  %t161 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t162 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t163 = load { i64, ptr }, ptr %l85, !tbaa !27
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = extractvalue { i64, ptr } %t163, 0
  %t166 = add i64 %t162, %t165
  %t167 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t168 = extractvalue { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t169 = add i64 %t166, %t168
  %t170 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t172 = add i64 %t169, %t171
  %t173 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t174 = extractvalue { i64, ptr } { i64 83, ptr getelementptr inbounds (<{ i64, [83 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t175 = add i64 %t172, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t161, i64 %t162)
  %t177 = getelementptr i8, ptr %t176, i64 %t162
  call void @olang_textcopy(ptr %t177, ptr %t164, i64 %t165)
  %t178 = getelementptr i8, ptr %t177, i64 %t165
  call void @olang_textcopy(ptr %t178, ptr %t167, i64 %t168)
  %t179 = getelementptr i8, ptr %t178, i64 %t168
  call void @olang_textcopy(ptr %t179, ptr %t170, i64 %t171)
  %t180 = getelementptr i8, ptr %t179, i64 %t171
  call void @olang_textcopy(ptr %t180, ptr %t173, i64 %t174)
  %t181 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t182 = insertvalue { i64, ptr } %t181, ptr %t176, 1
  %t184 = load ptr, ptr %l0, !tbaa !29
  store ptr %t184, ptr %l87, !tbaa !29
  %t187 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t188 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t190 = extractvalue { i64, ptr } %t182, 1
  %t191 = extractvalue { i64, ptr } %t182, 0
  %t192 = add i64 %t188, %t191
  %t193 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t194 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  %t195 = add i64 %t192, %t194
  %t196 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t195)
  call void @olang_textcopy(ptr %t196, ptr %t187, i64 %t188)
  %t197 = getelementptr i8, ptr %t196, i64 %t188
  call void @olang_textcopy(ptr %t197, ptr %t190, i64 %t191)
  %t198 = getelementptr i8, ptr %t197, i64 %t191
  call void @olang_textcopy(ptr %t198, ptr %t193, i64 %t194)
  %t199 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t200 = insertvalue { i64, ptr } %t199, ptr %t196, 1
  %t202 = extractvalue { i64, ptr } %t200, 0
  %t203 = extractvalue { i64, ptr } %t200, 1
  %t204 = mul i64 %t202, 1
  %t205 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t204)
  call void @llvm.memcpy.p0.p0.i64(ptr %t205, ptr %t203, i64 %t204, i1 false)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t210 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %v2, ptr %s0, ptr %s0, { i64, ptr } %a2, { i64, ptr } %t207)
  store { i64, ptr } %t210, ptr %l92
  br label %bb49
bb49:
  %t211 = load { i64, ptr }, ptr %l92, !tbaa !27
  %t212 = extractvalue { i64, ptr } %t211, 0
  %t213 = extractvalue { i64, ptr } %t211, 1
  %t214 = mul i64 %t212, 1
  %t215 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t214)
  call void @llvm.memcpy.p0.p0.i64(ptr %t215, ptr %t213, i64 %t214, i1 false)
  %t216 = insertvalue { i64, ptr } undef, i64 %t212, 0
  %t217 = insertvalue { i64, ptr } %t216, ptr %t215, 1
  %t218 = load ptr, ptr %l87, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s0, ptr %t218, { i64, ptr } %t217)
  br label %bb50
bb50:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2enote(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l11 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i32
  %l20 = alloca i1
  %l23 = alloca i64
  %l25 = alloca { i64, ptr }
  %l27 = alloca ptr
  %l28 = alloca i32
  %l30 = alloca i1
  %l33 = alloca i64
  %l34 = alloca i32
  %l36 = alloca i1
  %l41 = alloca i1
  %l42 = alloca i64
  %l45 = alloca i64
  %l50 = alloca i1
  %l54 = alloca ptr
  %l55 = alloca ptr
  %l56 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca { i64, ptr }
  %l64 = alloca ptr
  %l65 = alloca i32
  %l67 = alloca i1
  %l70 = alloca { i64, ptr }
  %l71 = alloca i32
  %l73 = alloca i1
  %l83 = alloca { i64, ptr }
  %l86 = alloca ptr
  %l87 = alloca i64
  %l90 = alloca ptr
  %l91 = alloca i64
  %l93 = alloca i64
  %l94 = alloca i32
  %l96 = alloca i1
  %l101 = alloca ptr
  %l102 = alloca i64
  %l106 = alloca { i64, ptr }
  %l108 = alloca { i64, ptr }
  %l110 = alloca ptr
  %l111 = alloca i32
  %l113 = alloca i1
  %l116 = alloca { i64, ptr }
  %l117 = alloca i32
  %l119 = alloca i1
  %l129 = alloca { i64, ptr }
  %l132 = alloca ptr
  %l133 = alloca i64
  %l136 = alloca ptr
  %l137 = alloca i64
  %l139 = alloca { i64, ptr }
  %l141 = alloca { i64, ptr }
  %l142 = alloca i32
  %l144 = alloca i1
  %s0 = alloca %olang.scope
  %s9 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l18
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l17
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l17, !tbaa !29
  store ptr %t8, ptr %l15, !tbaa !29
  br label %bb6
bb2:
  %t9 = load i32, ptr %l18, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l20, !tbaa !21
  %t13 = load i32, ptr %l18, !tbaa !23
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
  br label %ret
bb6:
  %t18 = load ptr, ptr %l15, !tbaa !29
  store ptr %t18, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d59, i32 0, i32 1) }, ptr %l25, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l25, !tbaa !27
  %t23 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t19, { i64, ptr } %t20)
  %t24 = extractvalue { i32, ptr } %t23, 1
  %t25 = extractvalue { i32, ptr } %t23, 0
  store i32 %t25, ptr %l28
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb8, label %ok.27, !prof !99
ok.27:
  store ptr %t24, ptr %l27
  br label %bb7
bb7:
  %t28 = load ptr, ptr %l27, !tbaa !29
  %t29 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t28)
  %t30 = extractvalue { i32, i64 } %t29, 1
  %t31 = extractvalue { i32, i64 } %t29, 0
  store i32 %t31, ptr %l34
  %t32 = icmp ne i32 %t31, 0
  br i1 %t32, label %bb13, label %ok.33, !prof !99
ok.33:
  store i64 %t30, ptr %l33
  br label %bb12
bb8:
  %t34 = load i32, ptr %l28, !tbaa !23
  %t35 = ashr i32 %t34, 16
  %t37 = icmp eq i32 %t35, 1
  store i1 %t37, ptr %l30, !tbaa !21
  %t38 = load i32, ptr %l28, !tbaa !23
  %t39 = ashr i32 %t38, 16
  %t41 = icmp eq i32 %t39, 1
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_errpay_pop()
  br label %bb10
bb10:
  br label %bb11
bb11:
  store i64 -1, ptr %l23, !tbaa !24
  br label %bb16
bb12:
  %t43 = load i64, ptr %l33, !tbaa !24
  store i64 %t43, ptr %l23, !tbaa !24
  br label %bb16
bb13:
  %t44 = load i32, ptr %l34, !tbaa !23
  %t45 = ashr i32 %t44, 16
  %t47 = icmp eq i32 %t45, 1
  store i1 %t47, ptr %l36, !tbaa !21
  %t48 = load i32, ptr %l34, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  br i1 %t51, label %bb14, label %bb15
bb14:
  call void @__olang_errpay_pop()
  br label %bb15
bb15:
  br label %bb11
bb16:
  %t53 = load i64, ptr %l23, !tbaa !24
  store i64 %t53, ptr %l3, !tbaa !24
  %t54 = load i64, ptr %l3, !tbaa !24
  %t56 = icmp slt i64 %t54, 0
  br i1 %t56, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l41, !tbaa !21
  br label %bb20
bb18:
  %t58 = load i64, ptr %l3, !tbaa !24
  store i64 %t58, ptr %l42, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/lsp:Server", ptr %t59, i32 0, i32 1
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t61)
  store i64 %t63, ptr %l45
  br label %bb19
bb19:
  %t64 = load i64, ptr %l42, !tbaa !24
  %t65 = load i64, ptr %l45, !tbaa !24
  %t66 = icmp sge i64 %t64, %t65
  store i1 %t66, ptr %l41, !tbaa !21
  br label %bb20
bb20:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/lsp:Server", ptr %t69, i32 0, i32 4
  %t72 = load i64, ptr %l3, !tbaa !24
  %t75 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %t71, i64 %t72)
  store i1 %t75, ptr %l50
  br label %bb24
bb24:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/lsp:Server", ptr %t76, i32 0, i32 1
  %t79 = load i64, ptr %l3, !tbaa !24
  %t82 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t78, i64 %t79)
  store ptr %t82, ptr %l54
  br label %bb25
bb25:
  %t83 = load ptr, ptr %l54, !tbaa !29
  store ptr %t83, ptr %l4, !tbaa !29
  %t84 = load ptr, ptr %l4, !tbaa !29
  store ptr %t84, ptr %l55, !tbaa !29
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l56, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t86, label %bb26, label %bb27
bb26:
  %t88 = load ptr, ptr %l55, !tbaa !29
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr %v0)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l56, !tbaa !24
  br label %bb27
bb27:
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t93 = getelementptr %"compiler/lsp:Doc", ptr %t91, i32 0, i32 5
  %t94 = load i64, ptr %l56
  %t95 = inttoptr i64 %t94 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t95, ptr %t93)
  br label %bb28
bb28:
  %t97 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d60, i32 0, i32 1) }, ptr %l62, !tbaa !27
  %t98 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t101 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t97, { i64, ptr } %t98)
  %t102 = extractvalue { i32, ptr } %t101, 1
  %t103 = extractvalue { i32, ptr } %t101, 0
  store i32 %t103, ptr %l65
  %t104 = icmp ne i32 %t103, 0
  br i1 %t104, label %bb30, label %ok.105, !prof !99
ok.105:
  store ptr %t102, ptr %l64
  br label %bb29
bb29:
  %t106 = load ptr, ptr %l64, !tbaa !29
  %t107 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t106)
  %t108 = extractvalue { i32, { i64, ptr } } %t107, 1
  %t109 = extractvalue { i32, { i64, ptr } } %t107, 0
  store i32 %t109, ptr %l71
  %t110 = icmp ne i32 %t109, 0
  br i1 %t110, label %bb35, label %ok.111, !prof !99
ok.111:
  store { i64, ptr } %t108, ptr %l70
  br label %bb34
bb30:
  %t112 = load i32, ptr %l65, !tbaa !23
  %t113 = ashr i32 %t112, 16
  %t115 = icmp eq i32 %t113, 1
  store i1 %t115, ptr %l67, !tbaa !21
  %t116 = load i32, ptr %l65, !tbaa !23
  %t117 = ashr i32 %t116, 16
  %t119 = icmp eq i32 %t117, 1
  br i1 %t119, label %bb31, label %bb32
bb31:
  call void @__olang_errpay_pop()
  br label %bb32
bb32:
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t121 = load { i64, ptr }, ptr %l70, !tbaa !27
  store { i64, ptr } %t121, ptr %l60, !tbaa !27
  br label %bb38
bb35:
  %t122 = load i32, ptr %l71, !tbaa !23
  %t123 = ashr i32 %t122, 16
  %t125 = icmp eq i32 %t123, 1
  store i1 %t125, ptr %l73, !tbaa !21
  %t126 = load i32, ptr %l71, !tbaa !23
  %t127 = ashr i32 %t126, 16
  %t129 = icmp eq i32 %t127, 1
  br i1 %t129, label %bb36, label %bb37
bb36:
  call void @__olang_errpay_pop()
  br label %bb37
bb37:
  br label %bb33
bb38:
  %t131 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t131, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t134 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t136 = extractvalue { i64, ptr } %t134, 0
  store i64 %t136, ptr %l8, !tbaa !24
  br label %bb39
bb39:
  %t138 = load i64, ptr %l7, !tbaa !24
  %t139 = load i64, ptr %l8, !tbaa !24
  %t142 = icmp slt i64 %t138, %t139
  %t144 = xor i1 %t142, true
  br i1 %t144, label %bb40, label %bb41
bb40:
  br label %bb53
bb41:
  br label %bb42
bb42:
  %t146 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t146, ptr %l83, !tbaa !27
  %t147 = load i64, ptr %l7, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr ptr, ptr %t150, i64 %t147
  %t152 = load ptr, ptr %t151, !tbaa !39
  store ptr %t152, ptr %l9, !tbaa !29
  %t154 = load ptr, ptr %l4, !tbaa !29
  store ptr %t154, ptr %l86, !tbaa !29
  %t155 = ptrtoint ptr %v0 to i64
  store i64 %t155, ptr %l87, !tbaa !24
  %t156 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t156, label %bb43, label %bb44
bb43:
  %t158 = load ptr, ptr %l86, !tbaa !29
  %t159 = call ptr @__olang_region_or(ptr %t158, ptr %v0)
  %t160 = ptrtoint ptr %t159 to i64
  store i64 %t160, ptr %l87, !tbaa !24
  br label %bb44
bb44:
  %t161 = load ptr, ptr %l4, !tbaa !29
  %t163 = getelementptr %"compiler/lsp:Doc", ptr %t161, i32 0, i32 5
  store ptr %t163, ptr %l90, !tbaa !29
  %t164 = load ptr, ptr %l9, !tbaa !29
  %t166 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t164)
  %t167 = extractvalue { i32, i64 } %t166, 1
  %t168 = extractvalue { i32, i64 } %t166, 0
  store i32 %t168, ptr %l94
  %t169 = icmp ne i32 %t168, 0
  br i1 %t169, label %bb46, label %ok.170, !prof !99
ok.170:
  store i64 %t167, ptr %l93
  br label %bb45
bb45:
  %t171 = load i64, ptr %l93, !tbaa !24
  store i64 %t171, ptr %l91, !tbaa !24
  br label %bb50
bb46:
  %t172 = load i32, ptr %l94, !tbaa !23
  %t173 = ashr i32 %t172, 16
  %t175 = icmp eq i32 %t173, 1
  store i1 %t175, ptr %l96, !tbaa !21
  %t176 = load i32, ptr %l94, !tbaa !23
  %t177 = ashr i32 %t176, 16
  %t179 = icmp eq i32 %t177, 1
  br i1 %t179, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb49
bb49:
  store i64 -1, ptr %l91, !tbaa !24
  br label %bb50
bb50:
  %t181 = load i64, ptr %l87
  %t182 = inttoptr i64 %t181 to ptr
  %t183 = load ptr, ptr %l90, !tbaa !29
  %t184 = load i64, ptr %l91, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %t182, ptr %t183, i64 %t184)
  br label %bb51
bb51:
  br label %bb52
bb52:
  %t185 = load i64, ptr %l7, !tbaa !24
  %t187 = add i64 %t185, 1
  store i64 %t187, ptr %l7, !tbaa !24
  br label %bb39
bb53:
  %t189 = load ptr, ptr %l4, !tbaa !29
  store ptr %t189, ptr %l101, !tbaa !29
  %t190 = ptrtoint ptr %v0 to i64
  store i64 %t190, ptr %l102, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t191, label %bb54, label %bb55
bb54:
  %t193 = load ptr, ptr %l101, !tbaa !29
  %t194 = call ptr @__olang_region_or(ptr %t193, ptr %v0)
  %t195 = ptrtoint ptr %t194 to i64
  store i64 %t195, ptr %l102, !tbaa !24
  br label %bb55
bb55:
  %t196 = load ptr, ptr %l4, !tbaa !29
  %t198 = getelementptr %"compiler/lsp:Doc", ptr %t196, i32 0, i32 6
  %t199 = load i64, ptr %l102
  %t200 = inttoptr i64 %t199 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %t200, ptr %t198)
  br label %bb56
bb56:
  %t202 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d61, i32 0, i32 1) }, ptr %l108, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t206 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t202, { i64, ptr } %t203)
  %t207 = extractvalue { i32, ptr } %t206, 1
  %t208 = extractvalue { i32, ptr } %t206, 0
  store i32 %t208, ptr %l111
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb58, label %ok.210, !prof !99
ok.210:
  store ptr %t207, ptr %l110
  br label %bb57
bb57:
  %t211 = load ptr, ptr %l110, !tbaa !29
  %t212 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %s0, ptr %s0, ptr %t211)
  %t213 = extractvalue { i32, { i64, ptr } } %t212, 1
  %t214 = extractvalue { i32, { i64, ptr } } %t212, 0
  store i32 %t214, ptr %l117
  %t215 = icmp ne i32 %t214, 0
  br i1 %t215, label %bb63, label %ok.216, !prof !99
ok.216:
  store { i64, ptr } %t213, ptr %l116
  br label %bb62
bb58:
  %t217 = load i32, ptr %l111, !tbaa !23
  %t218 = ashr i32 %t217, 16
  %t220 = icmp eq i32 %t218, 1
  store i1 %t220, ptr %l113, !tbaa !21
  %t221 = load i32, ptr %l111, !tbaa !23
  %t222 = ashr i32 %t221, 16
  %t224 = icmp eq i32 %t222, 1
  br i1 %t224, label %bb59, label %bb60
bb59:
  call void @__olang_errpay_pop()
  br label %bb60
bb60:
  br label %bb61
bb61:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb62:
  %t226 = load { i64, ptr }, ptr %l116, !tbaa !27
  store { i64, ptr } %t226, ptr %l106, !tbaa !27
  br label %bb66
bb63:
  %t227 = load i32, ptr %l117, !tbaa !23
  %t228 = ashr i32 %t227, 16
  %t230 = icmp eq i32 %t228, 1
  store i1 %t230, ptr %l119, !tbaa !21
  %t231 = load i32, ptr %l117, !tbaa !23
  %t232 = ashr i32 %t231, 16
  %t234 = icmp eq i32 %t232, 1
  br i1 %t234, label %bb64, label %bb65
bb64:
  call void @__olang_errpay_pop()
  br label %bb65
bb65:
  br label %bb61
bb66:
  %t236 = load { i64, ptr }, ptr %l106, !tbaa !27
  store { i64, ptr } %t236, ptr %l11, !tbaa !27
  store i64 0, ptr %l12, !tbaa !24
  %t239 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t241 = extractvalue { i64, ptr } %t239, 0
  store i64 %t241, ptr %l13, !tbaa !24
  br label %bb67
bb67:
  store %olang.scope zeroinitializer, ptr %s9
  %t243 = load i64, ptr %l12, !tbaa !24
  %t244 = load i64, ptr %l13, !tbaa !24
  %t247 = icmp slt i64 %t243, %t244
  %t249 = xor i1 %t247, true
  br i1 %t249, label %bb68, label %bb69
bb68:
  call void @__olang_scope_close(ptr %s9)
  br label %bb83
bb69:
  br label %bb70
bb70:
  %t251 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t251, ptr %l129, !tbaa !27
  %t252 = load i64, ptr %l12, !tbaa !24
  %t254 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr ptr, ptr %t255, i64 %t252
  %t257 = load ptr, ptr %t256, !tbaa !39
  store ptr %t257, ptr %l14, !tbaa !29
  %t259 = load ptr, ptr %l4, !tbaa !29
  store ptr %t259, ptr %l132, !tbaa !29
  %t260 = ptrtoint ptr %v0 to i64
  store i64 %t260, ptr %l133, !tbaa !24
  %t261 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t261, label %bb71, label %bb72
bb71:
  %t263 = load ptr, ptr %l132, !tbaa !29
  %t264 = call ptr @__olang_region_or(ptr %t263, ptr %v0)
  %t265 = ptrtoint ptr %t264 to i64
  store i64 %t265, ptr %l133, !tbaa !24
  br label %bb72
bb72:
  %t266 = load ptr, ptr %l4, !tbaa !29
  %t268 = getelementptr %"compiler/lsp:Doc", ptr %t266, i32 0, i32 6
  store ptr %t268, ptr %l136, !tbaa !29
  %t269 = load i64, ptr %l133
  %t270 = inttoptr i64 %t269 to ptr
  %t271 = ptrtoint ptr %t270 to i64
  store i64 %t271, ptr %l137, !tbaa !24
  %t272 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t272, label %bb73, label %bb74
bb73:
  %t274 = load i64, ptr %l133
  %t275 = inttoptr i64 %t274 to ptr
  %t276 = call ptr @__olang_region_make(ptr %t275)
  %t277 = ptrtoint ptr %t276 to i64
  store i64 %t277, ptr %l137, !tbaa !24
  br label %bb74
bb74:
  %t278 = load ptr, ptr %l14, !tbaa !29
  %t280 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %s0, ptr %s9, ptr %t278)
  %t281 = extractvalue { i32, { i64, ptr } } %t280, 1
  %t282 = extractvalue { i32, { i64, ptr } } %t280, 0
  store i32 %t282, ptr %l142
  %t283 = icmp ne i32 %t282, 0
  br i1 %t283, label %bb76, label %ok.284, !prof !99
ok.284:
  store { i64, ptr } %t281, ptr %l141
  br label %bb75
bb75:
  %t285 = load { i64, ptr }, ptr %l141, !tbaa !27
  store { i64, ptr } %t285, ptr %l139, !tbaa !27
  br label %bb80
bb76:
  %t286 = load i32, ptr %l142, !tbaa !23
  %t287 = ashr i32 %t286, 16
  %t289 = icmp eq i32 %t287, 1
  store i1 %t289, ptr %l144, !tbaa !21
  %t290 = load i32, ptr %l142, !tbaa !23
  %t291 = ashr i32 %t290, 16
  %t293 = icmp eq i32 %t291, 1
  br i1 %t293, label %bb77, label %bb78
bb77:
  call void @__olang_errpay_pop()
  br label %bb78
bb78:
  br label %bb79
bb79:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d62, i32 0, i32 1) }, ptr %l139, !tbaa !27
  br label %bb80
bb80:
  %t295 = load { i64, ptr }, ptr %l139, !tbaa !27
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = extractvalue { i64, ptr } %t295, 0
  %t298 = load i64, ptr %l137
  %t299 = inttoptr i64 %t298 to ptr
  %t300 = call ptr @__olang_scope_alloc(ptr %t299, i64 %t297)
  call void @olang_textcopy(ptr %t300, ptr %t296, i64 %t297)
  %t301 = insertvalue { i64, ptr } undef, i64 %t297, 0
  %t302 = insertvalue { i64, ptr } %t301, ptr %t300, 1
  %t304 = load i64, ptr %l137
  %t305 = inttoptr i64 %t304 to ptr
  %t306 = extractvalue { i64, ptr } %t302, 0
  %t307 = extractvalue { i64, ptr } %t302, 1
  %t308 = mul i64 %t306, 1
  %t309 = call ptr @__olang_scope_alloc(ptr %t305, i64 %t308)
  call void @llvm.memcpy.p0.p0.i64(ptr %t309, ptr %t307, i64 %t308, i1 false)
  %t310 = insertvalue { i64, ptr } undef, i64 %t306, 0
  %t311 = insertvalue { i64, ptr } %t310, ptr %t309, 1
  %t312 = load i64, ptr %l133
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = load i64, ptr %l133
  %t315 = inttoptr i64 %t314 to ptr
  %t316 = load ptr, ptr %l136, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %t313, ptr %t315, ptr %t316, { i64, ptr } %t311)
  br label %bb81
bb81:
  call void @__olang_scope_close(ptr %s9)
  br label %bb82
bb82:
  %t318 = load i64, ptr %l12, !tbaa !24
  %t320 = add i64 %t318, 1
  store i64 %t320, ptr %l12, !tbaa !24
  br label %bb67
bb83:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eopened(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca ptr
  %l15 = alloca i64
  %l19 = alloca { i64, ptr }
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l50 = alloca ptr
  %l59 = alloca i64
  %l63 = alloca { i64, ptr }
  %l64 = alloca i64
  %l68 = alloca { i64, ptr }
  %l69 = alloca i64
  %l72 = alloca { i64, ptr }
  %l74 = alloca %"compiler/lsp:Doc"
  %l81 = alloca i64
  %l86 = alloca ptr
  %l87 = alloca ptr
  %l88 = alloca ptr
  %l89 = alloca i64
  %l91 = alloca i64
  %l96 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l99 = alloca ptr
  %l100 = alloca i64
  %l102 = alloca i64
  %l107 = alloca { i64, ptr }
  %l109 = alloca ptr
  %l110 = alloca ptr
  %l111 = alloca i64
  %l113 = alloca i64
  %l116 = alloca { i64, ptr }
  %l118 = alloca { i64, ptr }
  %l121 = alloca ptr
  %l122 = alloca i64
  %l126 = alloca ptr
  %l127 = alloca i64
  %s1 = alloca %olang.scope
  %t163 = alloca %"compiler/lsp:Doc", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %t1, { i64, ptr } %t2)
  store i64 %t5, ptr %l15
  br label %bb1
bb1:
  %t6 = load i64, ptr %l15, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  store %olang.scope zeroinitializer, ptr %s1
  %t11 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t13 = call { i64, ptr } @compiler_2flsp_2ePathOf(ptr %v1, ptr %s1, { i64, ptr } %t11)
  store { i64, ptr } %t13, ptr %l19
  br label %bb4
bb3:
  br label %bb61
bb4:
  %t14 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/lsp:Server", ptr %t15, i32 0, i32 1
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t17)
  store i64 %t19, ptr %l22
  br label %bb5
bb5:
  %t20 = load i64, ptr %l22, !tbaa !24
  store i64 %t20, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load i64, ptr %l7, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb8:
  %t31 = load i64, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l5, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l7, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l7, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l29, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb10
bb10:
  %t47 = load i64, ptr %l29, !tbaa !24
  store i64 %t47, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l26, !tbaa !24
  store i64 %t48, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb12
bb12:
  %t49 = load i64, ptr %l9, !tbaa !24
  %t50 = load i64, ptr %l8, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb13, label %bb14
bb13:
  br label %bb21
bb14:
  br label %bb15
bb15:
  %t57 = load i64, ptr %l5, !tbaa !24
  %t58 = load i64, ptr %l9, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  store i64 %t65, ptr %l10, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lsp:Server", ptr %t67, i32 0, i32 1
  %t70 = load i64, ptr %l10, !tbaa !24
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t69, i64 %t70)
  store ptr %t73, ptr %l50
  br label %bb16
bb16:
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t76 = getelementptr %"compiler/lsp:Doc", ptr %t74, i32 0, i32 4
  %t77 = load i1, ptr %t76, !tbaa !21
  %t79 = xor i1 %t77, true
  br i1 %t79, label %bb17, label %bb18
bb17:
  %t81 = load i64, ptr %l10, !tbaa !24
  store i64 %t81, ptr %l3, !tbaa !24
  br label %bb21
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t83 = load i64, ptr %l9, !tbaa !24
  %t85 = add i64 %t83, 1
  store i64 %t85, ptr %l9, !tbaa !24
  br label %bb12
bb21:
  %t87 = load i64, ptr %l3, !tbaa !24
  %t89 = icmp slt i64 %t87, 0
  br i1 %t89, label %bb22, label %bb23
bb22:
  %t91 = ptrtoint ptr %v0 to i64
  store i64 %t91, ptr %l59, !tbaa !24
  %t92 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e0
  br i1 %t92, label %bb24, label %bb25
bb23:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/lsp:Server", ptr %t94, i32 0, i32 1
  %t97 = load i64, ptr %l3, !tbaa !24
  %t100 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t96, i64 %t97)
  store ptr %t100, ptr %l86
  br label %bb34
bb24:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l59, !tbaa !24
  br label %bb25
bb25:
  %t103 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t105 = extractvalue { i64, ptr } %t103, 1
  %t106 = extractvalue { i64, ptr } %t103, 0
  %t107 = load i64, ptr %l59
  %t108 = inttoptr i64 %t107 to ptr
  %t109 = call ptr @__olang_scope_alloc(ptr %t108, i64 %t106)
  call void @olang_textcopy(ptr %t109, ptr %t105, i64 %t106)
  %t110 = insertvalue { i64, ptr } undef, i64 %t106, 0
  %t111 = insertvalue { i64, ptr } %t110, ptr %t109, 1
  %t113 = load i64, ptr %l59
  %t114 = inttoptr i64 %t113 to ptr
  %t115 = extractvalue { i64, ptr } %t111, 0
  %t116 = extractvalue { i64, ptr } %t111, 1
  %t117 = mul i64 %t115, 1
  %t118 = call ptr @__olang_scope_alloc(ptr %t114, i64 %t117)
  call void @llvm.memcpy.p0.p0.i64(ptr %t118, ptr %t116, i64 %t117, i1 false)
  %t119 = insertvalue { i64, ptr } undef, i64 %t115, 0
  %t120 = insertvalue { i64, ptr } %t119, ptr %t118, 1
  store { i64, ptr } %t120, ptr %l63, !tbaa !27
  %t121 = ptrtoint ptr %v0 to i64
  store i64 %t121, ptr %l64, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e1
  br i1 %t122, label %bb26, label %bb27
bb26:
  %t124 = call ptr @__olang_region_make(ptr %v0)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l64, !tbaa !24
  br label %bb27
bb27:
  %t126 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t128 = extractvalue { i64, ptr } %t126, 1
  %t129 = extractvalue { i64, ptr } %t126, 0
  %t130 = load i64, ptr %l64
  %t131 = inttoptr i64 %t130 to ptr
  %t132 = call ptr @__olang_scope_alloc(ptr %t131, i64 %t129)
  call void @olang_textcopy(ptr %t132, ptr %t128, i64 %t129)
  %t133 = insertvalue { i64, ptr } undef, i64 %t129, 0
  %t134 = insertvalue { i64, ptr } %t133, ptr %t132, 1
  %t136 = load i64, ptr %l64
  %t137 = inttoptr i64 %t136 to ptr
  %t138 = extractvalue { i64, ptr } %t134, 0
  %t139 = extractvalue { i64, ptr } %t134, 1
  %t140 = mul i64 %t138, 1
  %t141 = call ptr @__olang_scope_alloc(ptr %t137, i64 %t140)
  call void @llvm.memcpy.p0.p0.i64(ptr %t141, ptr %t139, i64 %t140, i1 false)
  %t142 = insertvalue { i64, ptr } undef, i64 %t138, 0
  %t143 = insertvalue { i64, ptr } %t142, ptr %t141, 1
  store { i64, ptr } %t143, ptr %l68, !tbaa !27
  %t144 = ptrtoint ptr %v0 to i64
  store i64 %t144, ptr %l69, !tbaa !24
  %t145 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e2
  br i1 %t145, label %bb28, label %bb29
bb28:
  %t147 = call ptr @__olang_region_make(ptr %v0)
  %t148 = ptrtoint ptr %t147 to i64
  store i64 %t148, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  %t149 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t150 = load i64, ptr %l69
  %t151 = inttoptr i64 %t150 to ptr
  %t153 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %s1, ptr %t151, { i64, ptr } %t149)
  store { i64, ptr } %t153, ptr %l72
  br label %bb30
bb30:
  %t154 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t155 = load i64, ptr %l69
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = extractvalue { i64, ptr } %t154, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %t156, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  %t164 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t165 = load { i64, ptr }, ptr %l68, !tbaa !27
  call void @compiler_2flsp_3aDoc_2ector(ptr %t163, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t164, { i64, ptr } %t165, { i64, ptr } %t162)
  call void @llvm.memmove.p0.p0.i64(ptr %l74, ptr %t163, i64 152, i1 false)
  br label %bb31
bb31:
  %t167 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 152, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t167, ptr %l74, i64 152, i1 false)
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/lsp:Server", ptr %t169, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ePus_H951db0fb6558bf39f52145a6692a11d3(ptr %v0, ptr %v0, ptr %t171, ptr %t167)
  br label %bb32
bb32:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/lsp:Server", ptr %t175, i32 0, i32 1
  %t179 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t177)
  store i64 %t179, ptr %l81
  br label %bb33
bb33:
  %t180 = load i64, ptr %l81, !tbaa !24
  %t181 = sub i64 %t180, 1
  store i64 %t181, ptr %l3, !tbaa !24
  br label %bb60
bb34:
  %t183 = load ptr, ptr %l86, !tbaa !29
  store ptr %t183, ptr %l12, !tbaa !29
  %t184 = load ptr, ptr %l12, !tbaa !29
  store ptr %t184, ptr %l87, !tbaa !29
  %t185 = load ptr, ptr %l12, !tbaa !29
  store ptr %t185, ptr %l88, !tbaa !29
  %t186 = ptrtoint ptr %v0 to i64
  store i64 %t186, ptr %l89, !tbaa !24
  %t187 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t187, label %bb35, label %bb36
bb35:
  %t189 = load ptr, ptr %l88, !tbaa !29
  %t190 = call ptr @__olang_region_or(ptr %t189, ptr %v0)
  %t191 = ptrtoint ptr %t190 to i64
  store i64 %t191, ptr %l89, !tbaa !24
  br label %bb36
bb36:
  %t192 = load i64, ptr %l89
  %t193 = inttoptr i64 %t192 to ptr
  %t194 = ptrtoint ptr %t193 to i64
  store i64 %t194, ptr %l91, !tbaa !24
  %t195 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e0
  br i1 %t195, label %bb37, label %bb38
bb37:
  %t197 = load i64, ptr %l89
  %t198 = inttoptr i64 %t197 to ptr
  %t199 = call ptr @__olang_region_make(ptr %t198)
  %t200 = ptrtoint ptr %t199 to i64
  store i64 %t200, ptr %l91, !tbaa !24
  br label %bb38
bb38:
  %t201 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t203 = extractvalue { i64, ptr } %t201, 1
  %t204 = extractvalue { i64, ptr } %t201, 0
  %t205 = load i64, ptr %l91
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc(ptr %t206, i64 %t204)
  call void @olang_textcopy(ptr %t207, ptr %t203, i64 %t204)
  %t208 = insertvalue { i64, ptr } undef, i64 %t204, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t211 = load i64, ptr %l91
  %t212 = inttoptr i64 %t211 to ptr
  %t213 = extractvalue { i64, ptr } %t209, 0
  %t214 = extractvalue { i64, ptr } %t209, 1
  %t215 = mul i64 %t213, 1
  %t216 = call ptr @__olang_scope_alloc(ptr %t212, i64 %t215)
  call void @llvm.memcpy.p0.p0.i64(ptr %t216, ptr %t214, i64 %t215, i1 false)
  %t217 = insertvalue { i64, ptr } undef, i64 %t213, 0
  %t218 = insertvalue { i64, ptr } %t217, ptr %t216, 1
  %t219 = load ptr, ptr %l87, !tbaa !29
  %t220 = getelementptr %"compiler/lsp:Doc", ptr %t219, i32 0, i32 0
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  store { i64, ptr } %t221, ptr %l96, !tbaa !27
  %t223 = load ptr, ptr %l87, !tbaa !29
  %t224 = getelementptr %"compiler/lsp:Doc", ptr %t223, i32 0, i32 0
  store { i64, ptr } %t218, ptr %t224, !tbaa !27
  %t225 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e0
  br i1 %t225, label %bb39, label %bb40
bb39:
  %t227 = load { i64, ptr }, ptr %l96
  %t228 = extractvalue { i64, ptr } %t227, 1
  call void @__olang_region_release(ptr %t228)
  store { i64, ptr } zeroinitializer, ptr %l96
  br label %bb40
bb40:
  %t229 = load ptr, ptr %l12, !tbaa !29
  store ptr %t229, ptr %l98, !tbaa !29
  %t230 = load ptr, ptr %l12, !tbaa !29
  store ptr %t230, ptr %l99, !tbaa !29
  %t231 = ptrtoint ptr %v0 to i64
  store i64 %t231, ptr %l100, !tbaa !24
  %t232 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t232, label %bb41, label %bb42
bb41:
  %t234 = load ptr, ptr %l99, !tbaa !29
  %t235 = call ptr @__olang_region_or(ptr %t234, ptr %v0)
  %t236 = ptrtoint ptr %t235 to i64
  store i64 %t236, ptr %l100, !tbaa !24
  br label %bb42
bb42:
  %t237 = load i64, ptr %l100
  %t238 = inttoptr i64 %t237 to ptr
  %t239 = ptrtoint ptr %t238 to i64
  store i64 %t239, ptr %l102, !tbaa !24
  %t240 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e1
  br i1 %t240, label %bb43, label %bb44
bb43:
  %t242 = load i64, ptr %l100
  %t243 = inttoptr i64 %t242 to ptr
  %t244 = call ptr @__olang_region_make(ptr %t243)
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l102, !tbaa !24
  br label %bb44
bb44:
  %t246 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t248 = extractvalue { i64, ptr } %t246, 1
  %t249 = extractvalue { i64, ptr } %t246, 0
  %t250 = load i64, ptr %l102
  %t251 = inttoptr i64 %t250 to ptr
  %t252 = call ptr @__olang_scope_alloc(ptr %t251, i64 %t249)
  call void @olang_textcopy(ptr %t252, ptr %t248, i64 %t249)
  %t253 = insertvalue { i64, ptr } undef, i64 %t249, 0
  %t254 = insertvalue { i64, ptr } %t253, ptr %t252, 1
  %t256 = load i64, ptr %l102
  %t257 = inttoptr i64 %t256 to ptr
  %t258 = extractvalue { i64, ptr } %t254, 0
  %t259 = extractvalue { i64, ptr } %t254, 1
  %t260 = mul i64 %t258, 1
  %t261 = call ptr @__olang_scope_alloc(ptr %t257, i64 %t260)
  call void @llvm.memcpy.p0.p0.i64(ptr %t261, ptr %t259, i64 %t260, i1 false)
  %t262 = insertvalue { i64, ptr } undef, i64 %t258, 0
  %t263 = insertvalue { i64, ptr } %t262, ptr %t261, 1
  %t264 = load ptr, ptr %l98, !tbaa !29
  %t265 = getelementptr %"compiler/lsp:Doc", ptr %t264, i32 0, i32 1
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  store { i64, ptr } %t266, ptr %l107, !tbaa !27
  %t268 = load ptr, ptr %l98, !tbaa !29
  %t269 = getelementptr %"compiler/lsp:Doc", ptr %t268, i32 0, i32 1
  store { i64, ptr } %t263, ptr %t269, !tbaa !27
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e1
  br i1 %t270, label %bb45, label %bb46
bb45:
  %t272 = load { i64, ptr }, ptr %l107
  %t273 = extractvalue { i64, ptr } %t272, 1
  call void @__olang_region_release(ptr %t273)
  store { i64, ptr } zeroinitializer, ptr %l107
  br label %bb46
bb46:
  %t274 = load ptr, ptr %l12, !tbaa !29
  store ptr %t274, ptr %l109, !tbaa !29
  %t275 = load ptr, ptr %l12, !tbaa !29
  store ptr %t275, ptr %l110, !tbaa !29
  %t276 = ptrtoint ptr %v0 to i64
  store i64 %t276, ptr %l111, !tbaa !24
  %t277 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t277, label %bb47, label %bb48
bb47:
  %t279 = load ptr, ptr %l110, !tbaa !29
  %t280 = call ptr @__olang_region_or(ptr %t279, ptr %v0)
  %t281 = ptrtoint ptr %t280 to i64
  store i64 %t281, ptr %l111, !tbaa !24
  br label %bb48
bb48:
  %t282 = load i64, ptr %l111
  %t283 = inttoptr i64 %t282 to ptr
  %t284 = ptrtoint ptr %t283 to i64
  store i64 %t284, ptr %l113, !tbaa !24
  %t285 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e2
  br i1 %t285, label %bb49, label %bb50
bb49:
  %t287 = load i64, ptr %l111
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = call ptr @__olang_region_make(ptr %t288)
  %t290 = ptrtoint ptr %t289 to i64
  store i64 %t290, ptr %l113, !tbaa !24
  br label %bb50
bb50:
  %t291 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t292 = load i64, ptr %l113
  %t293 = inttoptr i64 %t292 to ptr
  %t295 = call { i64, ptr } @compiler_2fsession_2eRealOf(ptr %s1, ptr %t293, { i64, ptr } %t291)
  store { i64, ptr } %t295, ptr %l116
  br label %bb51
bb51:
  %t296 = load { i64, ptr }, ptr %l116, !tbaa !27
  %t297 = load i64, ptr %l113
  %t298 = inttoptr i64 %t297 to ptr
  %t299 = extractvalue { i64, ptr } %t296, 0
  %t300 = extractvalue { i64, ptr } %t296, 1
  %t301 = mul i64 %t299, 1
  %t302 = call ptr @__olang_scope_alloc(ptr %t298, i64 %t301)
  call void @llvm.memcpy.p0.p0.i64(ptr %t302, ptr %t300, i64 %t301, i1 false)
  %t303 = insertvalue { i64, ptr } undef, i64 %t299, 0
  %t304 = insertvalue { i64, ptr } %t303, ptr %t302, 1
  %t305 = load ptr, ptr %l109, !tbaa !29
  %t306 = getelementptr %"compiler/lsp:Doc", ptr %t305, i32 0, i32 2
  %t307 = load { i64, ptr }, ptr %t306, !tbaa !27
  store { i64, ptr } %t307, ptr %l118, !tbaa !27
  %t309 = load ptr, ptr %l109, !tbaa !29
  %t310 = getelementptr %"compiler/lsp:Doc", ptr %t309, i32 0, i32 2
  store { i64, ptr } %t304, ptr %t310, !tbaa !27
  %t311 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e2
  br i1 %t311, label %bb52, label %bb53
bb52:
  %t313 = load { i64, ptr }, ptr %l118
  %t314 = extractvalue { i64, ptr } %t313, 1
  call void @__olang_region_release(ptr %t314)
  store { i64, ptr } zeroinitializer, ptr %l118
  br label %bb53
bb53:
  %t315 = load ptr, ptr %l12, !tbaa !29
  %t317 = getelementptr %"compiler/lsp:Doc", ptr %t315, i32 0, i32 4
  store i1 true, ptr %t317, !tbaa !21
  %t318 = load ptr, ptr %l12, !tbaa !29
  store ptr %t318, ptr %l121, !tbaa !29
  %t319 = ptrtoint ptr %v0 to i64
  store i64 %t319, ptr %l122, !tbaa !24
  %t320 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t320, label %bb54, label %bb55
bb54:
  %t322 = load ptr, ptr %l121, !tbaa !29
  %t323 = call ptr @__olang_region_or(ptr %t322, ptr %v0)
  %t324 = ptrtoint ptr %t323 to i64
  store i64 %t324, ptr %l122, !tbaa !24
  br label %bb55
bb55:
  %t325 = load ptr, ptr %l12, !tbaa !29
  %t327 = getelementptr %"compiler/lsp:Doc", ptr %t325, i32 0, i32 5
  %t328 = load i64, ptr %l122
  %t329 = inttoptr i64 %t328 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %t329, ptr %t327)
  br label %bb56
bb56:
  %t331 = load ptr, ptr %l12, !tbaa !29
  store ptr %t331, ptr %l126, !tbaa !29
  %t332 = ptrtoint ptr %v0 to i64
  store i64 %t332, ptr %l127, !tbaa !24
  %t333 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t333, label %bb57, label %bb58
bb57:
  %t335 = load ptr, ptr %l126, !tbaa !29
  %t336 = call ptr @__olang_region_or(ptr %t335, ptr %v0)
  %t337 = ptrtoint ptr %t336 to i64
  store i64 %t337, ptr %l127, !tbaa !24
  br label %bb58
bb58:
  %t338 = load ptr, ptr %l12, !tbaa !29
  %t340 = getelementptr %"compiler/lsp:Doc", ptr %t338, i32 0, i32 6
  %t341 = load i64, ptr %l127
  %t342 = inttoptr i64 %t341 to ptr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %t342, ptr %t340)
  br label %bb59
bb59:
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s1)
  br label %bb61
bb61:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esetText(ptr %v0, ptr %v2, ptr %t344, i64 %t345, { i64, ptr } %a2)
  br label %bb62
bb62:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2fsession_2eWriteFramed(ptr %v1, i32 1, { i64, ptr } %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esetText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i64
  %l13 = alloca ptr
  %l14 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l7, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  %t9 = load ptr, ptr %l3, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = ptrtoint ptr %v0 to i64
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = call ptr @__olang_region_or(ptr %t13, ptr %v0)
  %t15 = ptrtoint ptr %t14 to i64
  store i64 %t15, ptr %l9, !tbaa !24
  br label %bb3
bb3:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = getelementptr %"compiler/lsp:Doc", ptr %t16, i32 0, i32 3
  %t19 = load i64, ptr %l9
  %t20 = inttoptr i64 %t19 to ptr
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %t20, ptr %t18)
  br label %bb4
bb4:
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = ptrtoint ptr %v0 to i64
  store i64 %t23, ptr %l14, !tbaa !24
  %t24 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t24, label %bb5, label %bb6
bb5:
  %t26 = load ptr, ptr %l13, !tbaa !29
  %t27 = call ptr @__olang_region_or(ptr %t26, ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l14, !tbaa !24
  br label %bb6
bb6:
  %t29 = load ptr, ptr %l3, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Doc", ptr %t29, i32 0, i32 3
  %t33 = load i64, ptr %l14
  %t34 = inttoptr i64 %t33 to ptr
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %t34, ptr %v1, ptr %t31, { i64, ptr } %a2)
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2edue(ptr %v0, ptr %t37, i64 %t38)
  br label %bb8
bb8:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l14 = alloca i64
  %l17 = alloca i64
  %l38 = alloca ptr
  %l41 = alloca i1
  %l45 = alloca ptr
  %l49 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 1
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t3)
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
  br label %bb22
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
  %t55 = getelementptr %"compiler/lsp:Server", ptr %t53, i32 0, i32 1
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l38
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l38, !tbaa !29
  %t62 = getelementptr %"compiler/lsp:Doc", ptr %t60, i32 0, i32 4
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/lsp:Server", ptr %t65, i32 0, i32 1
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t67, i64 %t68)
  store ptr %t71, ptr %l45
  br label %bb15
bb14:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb17
bb15:
  %t72 = load ptr, ptr %l45, !tbaa !29
  %t74 = getelementptr %"compiler/lsp:Doc", ptr %t72, i32 0, i32 0
  %t75 = load { i64, ptr }, ptr %t74, !tbaa !27
  %t79 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t75, { i64, ptr } %a1)
  store i1 %t79, ptr %l49
  br label %bb16
bb16:
  %t80 = load i1, ptr %l49, !tbaa !21
  store i1 %t80, ptr %l41, !tbaa !21
  br label %bb17
bb17:
  %t81 = load i1, ptr %l41, !tbaa !21
  br i1 %t81, label %bb18, label %bb19
bb18:
  %t82 = load i64, ptr %l7, !tbaa !24
  store i64 %t82, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t84 = load i64, ptr %l6, !tbaa !24
  %t86 = add i64 %t84, 1
  store i64 %t86, ptr %l6, !tbaa !24
  br label %bb8
bb22:
  store i64 -1, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estartWorker(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i32, i32 }
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i32, i32 }
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l13 = alloca { i32, i32 }
  %l16 = alloca { i32, i32 }
  %l21 = alloca i1
  %l28 = alloca i32
  %l37 = alloca ptr
  %l41 = alloca %"compiler/lsp:worker"
  %l50 = alloca ptr
  %l51 = alloca i64
  %l54 = alloca %"compiler/session:Reader"
  %l56 = alloca ptr
  %l58 = alloca ptr
  %l59 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 6
  store i64 0, ptr %t3, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 3
  %t7 = getelementptr %"compiler/lsp:Worker", ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7, !tbaa !23
  %t10 = icmp sgt i32 %t8, 0
  br i1 %t10, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t12, ptr %l13
  br label %bb4
bb4:
  %t13 = load { i32, i32 }, ptr %l13
  store { i32, i32 } %t13, ptr %l1
  %t14 = getelementptr { i32, i32 }, ptr %l1, i32 0, i32 0
  %t15 = load i32, ptr %t14, !tbaa !23
  store i32 %t15, ptr %l2, !tbaa !23
  %t17 = getelementptr { i32, i32 }, ptr %l1, i32 0, i32 1
  %t18 = load i32, ptr %t17, !tbaa !23
  store i32 %t18, ptr %l3, !tbaa !23
  %t20 = call { i32, i32 } @compiler_2fsession_2ePipe()
  store { i32, i32 } %t20, ptr %l16
  br label %bb5
bb5:
  %t21 = load { i32, i32 }, ptr %l16
  store { i32, i32 } %t21, ptr %l4
  %t22 = getelementptr { i32, i32 }, ptr %l4, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  store i32 %t23, ptr %l5, !tbaa !23
  %t25 = getelementptr { i32, i32 }, ptr %l4, i32 0, i32 1
  %t26 = load i32, ptr %t25, !tbaa !23
  store i32 %t26, ptr %l6, !tbaa !23
  %t28 = load i32, ptr %l2, !tbaa !23
  %t30 = icmp slt i32 %t28, 0
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  %t32 = load i32, ptr %l5, !tbaa !23
  %t34 = icmp slt i32 %t32, 0
  store i1 %t34, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t36 = load i1, ptr %l21, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t37 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t37)
  br label %bb11
bb10:
  br label %bb15
bb11:
  %t39 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t39)
  br label %bb12
bb12:
  %t41 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t41)
  br label %bb13
bb13:
  %t43 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t43)
  br label %bb14
bb14:
  br label %ret
bb15:
  %t45 = call i32 @compiler_2fsession_2eFork()
  store i32 %t45, ptr %l28
  br label %bb16
bb16:
  %t46 = load i32, ptr %l28, !tbaa !23
  store i32 %t46, ptr %l7, !tbaa !23
  %t47 = load i32, ptr %l7, !tbaa !23
  %t49 = icmp slt i32 %t47, 0
  br i1 %t49, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  %t51 = load i32, ptr %l7, !tbaa !23
  %t53 = icmp eq i32 %t51, 0
  br i1 %t53, label %bb20, label %bb21
bb20:
  %t55 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t55)
  br label %bb22
bb21:
  br label %bb28
bb22:
  %t57 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t57)
  br label %bb23
bb23:
  call void @compiler_2fsession_2eDup2(i32 2, i32 1)
  br label %bb24
bb24:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/lsp:Server", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  store ptr %t63, ptr %l37, !tbaa !29
  %t64 = load i32, ptr %l2, !tbaa !23
  %t65 = load i32, ptr %l6, !tbaa !23
  %t66 = load ptr, ptr %l37, !tbaa !29
  %t67 = call ptr @__olang_scope_or(ptr %v1, ptr %t66)
  %t68 = ptrtoint ptr %t67 to i64
  %t70 = inttoptr i64 %t68 to ptr
  %t72 = load ptr, ptr %l37, !tbaa !29
  %t75 = call %"compiler/lsp:worker" @compiler_2flsp_3aworker_2ector(ptr %v0, ptr %t70, ptr %v0, ptr %t59, ptr %t72, i32 %t64, i32 %t65)
  store %"compiler/lsp:worker" %t75, ptr %l41
  br label %bb25
bb25:
  %t76 = load %"compiler/lsp:worker", ptr %l41
  %t77 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 112, i64 8)
  store %"compiler/lsp:worker" %t76, ptr %t77
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eRun(ptr %v0, ptr %t77)
  br label %bb26
bb26:
  call void @compiler_2fsession_2eExit(i32 0)
  unreachable
bb27:
  call void @__olang_check_failed(ptr @olang_loc_1521364e571a2f2d_bf1cb7a51b345899)
  unreachable
bb28:
  %t81 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t81)
  br label %bb29
bb29:
  %t83 = load i32, ptr %l6, !tbaa !23
  call void @compiler_2fsession_2eCloseFd(i32 %t83)
  br label %bb30
bb30:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i32, ptr %l7, !tbaa !23
  %t89 = getelementptr %"compiler/lsp:Server", ptr %t85, i32 0, i32 3
  %t90 = getelementptr %"compiler/lsp:Worker", ptr %t89, i32 0, i32 0
  store i32 %t86, ptr %t90, !tbaa !23
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i32, ptr %l3, !tbaa !23
  %t95 = getelementptr %"compiler/lsp:Server", ptr %t91, i32 0, i32 3
  %t96 = getelementptr %"compiler/lsp:Worker", ptr %t95, i32 0, i32 1
  store i32 %t92, ptr %t96, !tbaa !23
  %t97 = load ptr, ptr %l0, !tbaa !29
  store ptr %t97, ptr %l50, !tbaa !29
  %t98 = ptrtoint ptr %v0 to i64
  store i64 %t98, ptr %l51, !tbaa !24
  %t99 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aWorker_2e2
  br i1 %t99, label %bb31, label %bb32
bb31:
  %t101 = call ptr @__olang_region_make(ptr %v0)
  %t102 = ptrtoint ptr %t101 to i64
  store i64 %t102, ptr %l51, !tbaa !24
  br label %bb32
bb32:
  %t103 = load i32, ptr %l5, !tbaa !23
  %t104 = load i64, ptr %l51
  %t105 = inttoptr i64 %t104 to ptr
  %t107 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %t105, i32 %t103)
  store %"compiler/session:Reader" %t107, ptr %l54
  br label %bb33
bb33:
  %t108 = load %"compiler/session:Reader", ptr %l54
  %t109 = load i64, ptr %l51
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = call ptr @__olang_scope_alloc_a(ptr %t110, i64 48, i64 8)
  store %"compiler/session:Reader" %t108, ptr %t111
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = getelementptr %"compiler/lsp:Server", ptr %t112, i32 0, i32 3
  %t114 = getelementptr %"compiler/lsp:Worker", ptr %t113, i32 0, i32 2
  %t115 = load ptr, ptr %t114, !tbaa !29
  store ptr %t115, ptr %l56, !tbaa !29
  %t117 = load ptr, ptr %l50, !tbaa !29
  %t118 = getelementptr %"compiler/lsp:Server", ptr %t117, i32 0, i32 3
  %t119 = getelementptr %"compiler/lsp:Worker", ptr %t118, i32 0, i32 2
  store ptr %t111, ptr %t119, !tbaa !29
  %t120 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aWorker_2e2
  br i1 %t120, label %bb34, label %bb35
bb34:
  %t122 = load ptr, ptr %l56
  call void @__olang_region_release(ptr %t122)
  store ptr null, ptr %l56
  br label %bb35
bb35:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l58, !tbaa !29
  %t124 = call i64 @std_2ftime_2eNow()
  store i64 %t124, ptr %l59
  br label %bb36
bb36:
  %t125 = load i64, ptr %l59, !tbaa !24
  %t126 = load ptr, ptr %l58, !tbaa !29
  %t127 = getelementptr %"compiler/lsp:Server", ptr %t126, i32 0, i32 3
  %t128 = getelementptr %"compiler/lsp:Worker", ptr %t127, i32 0, i32 3
  store i64 %t125, ptr %t128, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2estopWorker(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca { i64, ptr }
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sle i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  call void @compiler_2fsession_2eKillAndReap(i32 %t13)
  br label %bb4
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %t15)
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 5
  store ptr %t19, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s3
  %t21 = load i64, ptr %l2, !tbaa !24
  store i64 %t21, ptr %l12, !tbaa !24
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l14
  br label %bb7
bb7:
  %t25 = load i64, ptr %l12, !tbaa !24
  %t26 = load i64, ptr %l14, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s3)
  br label %bb15
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t32 = load i64, ptr %l2, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l19
  br label %bb11
bb11:
  %t36 = load i64, ptr %l19, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  store ptr %t37, ptr %l20, !tbaa !29
  %t40 = call i64 @__olang_fmt_i64(ptr null, i64 %t36)
  %t41 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t40)
  %t42 = call i64 @__olang_fmt_i64(ptr %t41, i64 %t36)
  %t43 = insertvalue { i64, ptr } undef, i64 %t40, 0
  %t44 = insertvalue { i64, ptr } %t43, ptr %t41, 1
  %t46 = extractvalue { i64, ptr } %t44, 0
  %t47 = extractvalue { i64, ptr } %t44, 1
  %t48 = mul i64 %t46, 1
  %t49 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t48)
  call void @llvm.memcpy.p0.p0.i64(ptr %t49, ptr %t47, i64 %t48, i1 false)
  %t50 = insertvalue { i64, ptr } undef, i64 %t46, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t49, 1
  %t53 = call { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %s3, ptr %s3, ptr %s3, { i64, ptr } %t51, i64 -32801, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d63, i32 0, i32 1) })
  store { i64, ptr } %t53, ptr %l24
  br label %bb12
bb12:
  %t54 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t55 = extractvalue { i64, ptr } %t54, 0
  %t56 = extractvalue { i64, ptr } %t54, 1
  %t57 = mul i64 %t55, 1
  %t58 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t57)
  call void @llvm.memcpy.p0.p0.i64(ptr %t58, ptr %t56, i64 %t57, i1 false)
  %t59 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t60 = insertvalue { i64, ptr } %t59, ptr %t58, 1
  %t61 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s3, ptr %t61, { i64, ptr } %t60)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb14
bb14:
  %t63 = load i64, ptr %l2, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l2, !tbaa !24
  br label %bb6
bb15:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/lsp:Server", ptr %t67, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t69)
  br label %bb16
bb16:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aServer_2eworkerLost(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i1
  %l33 = alloca ptr
  %l36 = alloca ptr
  %l40 = alloca ptr
  %l42 = alloca { i64, ptr }
  %l44 = alloca { i64, ptr }
  %l46 = alloca { i64, ptr }
  %l54 = alloca i64
  %l56 = alloca i64
  %l61 = alloca i64
  %l62 = alloca ptr
  %l66 = alloca { i64, ptr }
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:Server", ptr %t1, i32 0, i32 3
  %t4 = getelementptr %"compiler/lsp:Worker", ptr %t3, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = icmp sgt i32 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/lsp:Server", ptr %t9, i32 0, i32 3
  %t12 = getelementptr %"compiler/lsp:Worker", ptr %t11, i32 0, i32 0
  %t13 = load i32, ptr %t12, !tbaa !23
  call void @compiler_2fsession_2eKillAndReap(i32 %t13)
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t15 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2ecloseWorker(ptr %v0, ptr %t15)
  br label %bb4
bb4:
  br label %bb5
bb5:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/lsp:Server", ptr %t17, i32 0, i32 4
  store ptr %t19, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb6
bb6:
  %t21 = load i64, ptr %l3, !tbaa !24
  store i64 %t21, ptr %l16, !tbaa !24
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t22)
  store i64 %t24, ptr %l18
  br label %bb7
bb7:
  %t25 = load i64, ptr %l16, !tbaa !24
  %t26 = load i64, ptr %l18, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb8, label %bb9
bb8:
  br label %bb25
bb9:
  br label %bb10
bb10:
  %t31 = load ptr, ptr %l2, !tbaa !29
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l23
  br label %bb11
bb11:
  %t36 = load i64, ptr %l23, !tbaa !24
  store i64 %t36, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  store i64 %t37, ptr %l24, !tbaa !24
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/lsp:Server", ptr %t38, i32 0, i32 1
  %t42 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t40)
  store i64 %t42, ptr %l27
  br label %bb12
bb12:
  %t43 = load i64, ptr %l24, !tbaa !24
  %t44 = load i64, ptr %l27, !tbaa !24
  %t45 = icmp slt i64 %t43, %t44
  br i1 %t45, label %bb13, label %bb14
bb13:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/lsp:Server", ptr %t47, i32 0, i32 1
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t49, i64 %t50)
  store ptr %t53, ptr %l33
  br label %bb15
bb14:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb16
bb15:
  %t54 = load ptr, ptr %l33, !tbaa !29
  %t56 = getelementptr %"compiler/lsp:Doc", ptr %t54, i32 0, i32 4
  %t57 = load i1, ptr %t56, !tbaa !21
  store i1 %t57, ptr %l29, !tbaa !21
  br label %bb16
bb16:
  %t59 = load i1, ptr %l29, !tbaa !21
  br i1 %t59, label %bb17, label %bb18
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t60 = load ptr, ptr %l0, !tbaa !29
  store ptr %t60, ptr %l36, !tbaa !29
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/lsp:Server", ptr %t61, i32 0, i32 1
  %t64 = load i64, ptr %l4, !tbaa !24
  %t67 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store ptr %t67, ptr %l40
  br label %bb19
bb18:
  br label %bb23
bb19:
  %t68 = load ptr, ptr %l40, !tbaa !29
  %t70 = getelementptr %"compiler/lsp:Doc", ptr %t68, i32 0, i32 0
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l42, !tbaa !27
  %t74 = call { i64, ptr } @compiler_2flsp_2elostDiagnostic(ptr %v1, ptr %s4, { i64, ptr } %a1)
  store { i64, ptr } %t74, ptr %l44
  br label %bb20
bb20:
  %t75 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t76 = extractvalue { i64, ptr } %t75, 0
  %t77 = extractvalue { i64, ptr } %t75, 1
  %t78 = mul i64 %t76, 1
  %t79 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t78)
  call void @llvm.memcpy.p0.p0.i64(ptr %t79, ptr %t77, i64 %t78, i1 false)
  %t80 = insertvalue { i64, ptr } undef, i64 %t76, 0
  %t81 = insertvalue { i64, ptr } %t80, ptr %t79, 1
  %t82 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t84 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s4, ptr %s4, { i64, ptr } %t82, { i64, ptr } %t81)
  store { i64, ptr } %t84, ptr %l46
  br label %bb21
bb21:
  %t85 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t86 = extractvalue { i64, ptr } %t85, 0
  %t87 = extractvalue { i64, ptr } %t85, 1
  %t88 = mul i64 %t86, 1
  %t89 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t88)
  call void @llvm.memcpy.p0.p0.i64(ptr %t89, ptr %t87, i64 %t88, i1 false)
  %t90 = insertvalue { i64, ptr } undef, i64 %t86, 0
  %t91 = insertvalue { i64, ptr } %t90, ptr %t89, 1
  %t92 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s4, ptr %t92, { i64, ptr } %t91)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s4)
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t94 = load i64, ptr %l3, !tbaa !24
  %t96 = add i64 %t94, 1
  store i64 %t96, ptr %l3, !tbaa !24
  br label %bb6
bb25:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/lsp:Server", ptr %t98, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t100)
  br label %bb26
bb26:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/lsp:Server", ptr %t102, i32 0, i32 5
  store ptr %t104, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s7
  %t106 = load i64, ptr %l6, !tbaa !24
  store i64 %t106, ptr %l54, !tbaa !24
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t107)
  store i64 %t109, ptr %l56
  br label %bb28
bb28:
  %t110 = load i64, ptr %l54, !tbaa !24
  %t111 = load i64, ptr %l56, !tbaa !24
  %t112 = icmp slt i64 %t110, %t111
  %t114 = xor i1 %t112, true
  br i1 %t114, label %bb29, label %bb30
bb29:
  call void @__olang_scope_close(ptr %s7)
  br label %bb36
bb30:
  br label %bb31
bb31:
  %t116 = load ptr, ptr %l5, !tbaa !29
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t116, i64 %t117)
  store i64 %t120, ptr %l61
  br label %bb32
bb32:
  %t121 = load i64, ptr %l61, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  store ptr %t122, ptr %l62, !tbaa !29
  %t125 = call i64 @__olang_fmt_i64(ptr null, i64 %t121)
  %t126 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t125)
  %t127 = call i64 @__olang_fmt_i64(ptr %t126, i64 %t121)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t126, 1
  %t131 = extractvalue { i64, ptr } %t129, 0
  %t132 = extractvalue { i64, ptr } %t129, 1
  %t133 = mul i64 %t131, 1
  %t134 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t133)
  call void @llvm.memcpy.p0.p0.i64(ptr %t134, ptr %t132, i64 %t133, i1 false)
  %t135 = insertvalue { i64, ptr } undef, i64 %t131, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t134, 1
  %t138 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s7, ptr %s7, ptr %s7, { i64, ptr } %t136, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d64, i32 0, i32 1) })
  store { i64, ptr } %t138, ptr %l66
  br label %bb33
bb33:
  %t139 = load { i64, ptr }, ptr %l66, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  %t141 = extractvalue { i64, ptr } %t139, 1
  %t142 = mul i64 %t140, 1
  %t143 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t142)
  call void @llvm.memcpy.p0.p0.i64(ptr %t143, ptr %t141, i64 %t142, i1 false)
  %t144 = insertvalue { i64, ptr } undef, i64 %t140, 0
  %t145 = insertvalue { i64, ptr } %t144, ptr %t143, 1
  %t146 = load ptr, ptr %l62, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aServer_2esend(ptr %v0, ptr %s7, ptr %t146, { i64, ptr } %t145)
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s7)
  br label %bb35
bb35:
  %t148 = load i64, ptr %l6, !tbaa !24
  %t150 = add i64 %t148, 1
  store i64 %t150, ptr %l6, !tbaa !24
  br label %bb27
bb36:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/lsp:Server", ptr %t152, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t154)
  br label %bb37
bb37:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eRun(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca %"compiler/session:Reader"
  %l12 = alloca i64
  %l14 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i64
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l32 = alloca ptr
  %l33 = alloca i64
  %l37 = alloca { i64, ptr }
  %l44 = alloca i64
  %l46 = alloca i64
  %l51 = alloca i64
  %l58 = alloca %"compiler/session:Reader"
  %l60 = alloca i1
  %l62 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l65 = alloca i32
  %l67 = alloca i1
  %s0 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  store ptr %t6, ptr %l1, !tbaa !29
  store i64 0, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l2, !tbaa !24
  store i64 %t8, ptr %l12, !tbaa !24
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l14
  br label %bb2
bb2:
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = load i64, ptr %l14, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb19
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t19 = load i64, ptr %l2, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l19
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l19, !tbaa !29
  store ptr %t23, ptr %l3, !tbaa !29
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:Doc", ptr %t24, i32 0, i32 4
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:worker", ptr %t29, i32 0, i32 4
  store ptr %t31, ptr %l23, !tbaa !29
  %t32 = ptrtoint ptr %v0 to i64
  store i64 %t32, ptr %l24, !tbaa !24
  %t33 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t33, label %bb9, label %bb10
bb8:
  br label %bb17
bb9:
  %t35 = call ptr @__olang_region_make(ptr %v0)
  %t36 = ptrtoint ptr %t35 to i64
  store i64 %t36, ptr %l24, !tbaa !24
  br label %bb10
bb10:
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t39 = getelementptr %"compiler/lsp:Doc", ptr %t37, i32 0, i32 2
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  %t42 = extractvalue { i64, ptr } %t40, 1
  %t43 = extractvalue { i64, ptr } %t40, 0
  %t44 = load i64, ptr %l24
  %t45 = inttoptr i64 %t44 to ptr
  %t46 = call ptr @__olang_scope_alloc(ptr %t45, i64 %t43)
  call void @olang_textcopy(ptr %t46, ptr %t42, i64 %t43)
  %t47 = insertvalue { i64, ptr } undef, i64 %t43, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  %t50 = load i64, ptr %l24
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = extractvalue { i64, ptr } %t48, 0
  %t53 = extractvalue { i64, ptr } %t48, 1
  %t54 = mul i64 %t52, 1
  %t55 = call ptr @__olang_scope_alloc(ptr %t51, i64 %t54)
  call void @llvm.memcpy.p0.p0.i64(ptr %t55, ptr %t53, i64 %t54, i1 false)
  %t56 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t57 = insertvalue { i64, ptr } %t56, ptr %t55, 1
  store { i64, ptr } %t57, ptr %l29, !tbaa !27
  %t58 = ptrtoint ptr %v0 to i64
  store i64 %t58, ptr %l30, !tbaa !24
  %t59 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t59, label %bb11, label %bb12
bb11:
  %t61 = call ptr @__olang_region_make(ptr %v0)
  %t62 = ptrtoint ptr %t61 to i64
  store i64 %t62, ptr %l30, !tbaa !24
  br label %bb12
bb12:
  %t63 = load ptr, ptr %l3, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l33, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t65, label %bb13, label %bb14
bb13:
  %t67 = load ptr, ptr %l32, !tbaa !29
  %t68 = call ptr @__olang_region_or(ptr %t67, ptr %v0)
  %t69 = ptrtoint ptr %t68 to i64
  store i64 %t69, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t70 = load ptr, ptr %l3, !tbaa !29
  %t72 = getelementptr %"compiler/lsp:Doc", ptr %t70, i32 0, i32 3
  %t73 = load i64, ptr %l33
  %t74 = inttoptr i64 %t73 to ptr
  %t75 = load i64, ptr %l30
  %t76 = inttoptr i64 %t75 to ptr
  %t78 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %t74, ptr %t76, ptr %t72)
  store { i64, ptr } %t78, ptr %l37
  br label %bb15
bb15:
  %t79 = load { i64, ptr }, ptr %l37, !tbaa !27
  %t80 = load i64, ptr %l30
  %t81 = inttoptr i64 %t80 to ptr
  %t82 = extractvalue { i64, ptr } %t79, 0
  %t83 = extractvalue { i64, ptr } %t79, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %t81, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  %t88 = load ptr, ptr %l23, !tbaa !29
  %t89 = load { i64, ptr }, ptr %l29, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v0, ptr %v0, ptr %t88, { i64, ptr } %t89, { i64, ptr } %t87)
  br label %bb16
bb16:
  br label %bb17
bb17:
  br label %bb18
bb18:
  %t91 = load i64, ptr %l2, !tbaa !24
  %t93 = add i64 %t91, 1
  store i64 %t93, ptr %l2, !tbaa !24
  br label %bb1
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/lsp:worker", ptr %t95, i32 0, i32 0
  %t98 = load ptr, ptr %t97, !tbaa !29
  %t100 = getelementptr %"compiler/lsp:Server", ptr %t98, i32 0, i32 4
  store ptr %t100, ptr %l4, !tbaa !29
  store i64 0, ptr %l5, !tbaa !24
  br label %bb20
bb20:
  %t102 = load i64, ptr %l5, !tbaa !24
  store i64 %t102, ptr %l44, !tbaa !24
  %t103 = load ptr, ptr %l4, !tbaa !29
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t103)
  store i64 %t105, ptr %l46
  br label %bb21
bb21:
  %t106 = load i64, ptr %l44, !tbaa !24
  %t107 = load i64, ptr %l46, !tbaa !24
  %t108 = icmp slt i64 %t106, %t107
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t112 = load ptr, ptr %l4, !tbaa !29
  %t113 = load i64, ptr %l5, !tbaa !24
  %t116 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l51
  br label %bb25
bb25:
  %t117 = load i64, ptr %l51, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2echeck(ptr %v0, ptr %t118, i64 %t117)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t122 = load i64, ptr %l5, !tbaa !24
  %t124 = add i64 %t122, 1
  store i64 %t124, ptr %l5, !tbaa !24
  br label %bb20
bb28:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = getelementptr %"compiler/lsp:worker", ptr %t126, i32 0, i32 2
  %t129 = load i32, ptr %t128, !tbaa !23
  %t131 = call %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %s0, i32 %t129)
  store %"compiler/session:Reader" %t131, ptr %l58
  br label %bb29
bb29:
  %t132 = load %"compiler/session:Reader", ptr %l58
  store %"compiler/session:Reader" %t132, ptr %l7
  br label %bb30
bb30:
  %t134 = call i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %s0, ptr %l7)
  store i1 %t134, ptr %l60
  br label %bb31
bb31:
  %t135 = load i1, ptr %l60, !tbaa !21
  %t136 = xor i1 %t135, true
  br i1 %t136, label %bb32, label %bb33
bb32:
  br label %bb44
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s10
  %t139 = call { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %s0, ptr %s10, ptr %l7)
  %t140 = extractvalue { i32, { i64, ptr } } %t139, 1
  %t141 = extractvalue { i32, { i64, ptr } } %t139, 0
  store i32 %t141, ptr %l65
  %t142 = icmp ne i32 %t141, 0
  br i1 %t142, label %bb37, label %ok.143, !prof !99
ok.143:
  store { i64, ptr } %t140, ptr %l64
  br label %bb36
bb36:
  %t144 = load { i64, ptr }, ptr %l64, !tbaa !27
  store { i64, ptr } %t144, ptr %l62, !tbaa !27
  br label %bb39
bb37:
  %t145 = load i32, ptr %l65, !tbaa !23
  %t146 = ashr i32 %t145, 16
  %t148 = icmp eq i32 %t146, 1
  store i1 %t148, ptr %l67, !tbaa !21
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s10)
  br label %bb42
bb39:
  %t149 = load { i64, ptr }, ptr %l62, !tbaa !27
  %t150 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanswer(ptr %v0, ptr %s10, ptr %t150, { i64, ptr } %t149)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s10)
  br label %bb41
bb41:
  br label %bb35
bb42:
  br label %bb43
bb43:
  br label %bb30
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanalysis(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca ptr
  %l8 = alloca i1
  %l22 = alloca ptr
  %l30 = alloca ptr
  %rv = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/lsp:worker", ptr %t2, i32 0, i32 6
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = icmp eq i64 %t1, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/lsp:worker", ptr %t10, i32 0, i32 5
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t15 = icmp eq ptr %t13, null
  %t17 = xor i1 %t15, true
  store i1 %t17, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t19 = load i1, ptr %l8, !tbaa !21
  br i1 %t19, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/lsp:worker", ptr %t20, i32 0, i32 5
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  br i1 %t25, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  call void @__olang_check_failed(ptr @olang_loc_cb6dbf061e2dce2f_dc463ae13d2c2fbb)
  unreachable
bb7:
  br label %bb8
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/lsp:worker", ptr %t27, i32 0, i32 5
  %t30 = load ptr, ptr %t29, !tbaa !29
  store ptr %t30, ptr %rv
  br label %ret
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/lsp:worker", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t37 = getelementptr %"compiler/lsp:Server", ptr %t35, i32 0, i32 1
  %t38 = load i64, ptr %l1, !tbaa !24
  %t41 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t37, i64 %t38)
  store ptr %t41, ptr %l22
  br label %bb10
bb10:
  %t42 = load ptr, ptr %l22, !tbaa !29
  %t44 = getelementptr %"compiler/lsp:Doc", ptr %t42, i32 0, i32 1
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/lsp:worker", ptr %t46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !29
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:worker", ptr %t51, i32 0, i32 4
  %t58 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v0, ptr %v1, ptr %v0, ptr %v2, { i64, ptr } %t45, ptr %t49, ptr %a2, ptr %t53, i1 true)
  store ptr %t58, ptr %l30
  br label %bb11
bb11:
  %t59 = load ptr, ptr %l30, !tbaa !29
  store ptr %t59, ptr %l3, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l3, !tbaa !29
  %t65 = getelementptr %"compiler/lsp:worker", ptr %t60, i32 0, i32 5
  store ptr %t61, ptr %t65, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t70 = getelementptr %"compiler/lsp:worker", ptr %t66, i32 0, i32 6
  store i64 %t67, ptr %t70, !tbaa !24
  %t71 = load ptr, ptr %l3, !tbaa !29
  store ptr %t71, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanswer(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca { i64, ptr }
  %l10 = alloca %"compiler/session:Positions"
  %l11 = alloca i64
  %l13 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca { i64, ptr }
  %l17 = alloca %"std/prelude/text:StringBuilder"
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"std/prelude/text:StringBuilder"
  %l21 = alloca %"compiler/session:Found"
  %l22 = alloca %"std/prelude/text:StringBuilder"
  %l23 = alloca { i64, ptr }
  %l24 = alloca %"compiler/session:Positions"
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"std/prelude/text:StringBuilder"
  %l27 = alloca ptr
  %l29 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i1
  %l36 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l39 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l43 = alloca ptr
  %l44 = alloca i32
  %l46 = alloca i1
  %l49 = alloca ptr
  %l51 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l55 = alloca { i64, ptr }
  %l57 = alloca ptr
  %l58 = alloca i32
  %l60 = alloca i1
  %l63 = alloca { i64, ptr }
  %l67 = alloca i64
  %l70 = alloca ptr
  %l72 = alloca { i64, ptr }
  %l78 = alloca ptr
  %l79 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l85 = alloca i32
  %l90 = alloca %"compiler/session:Positions"
  %l91 = alloca i64
  %l94 = alloca { i64, ptr }
  %l96 = alloca ptr
  %l97 = alloca i32
  %l99 = alloca i1
  %l103 = alloca { i64, ptr }
  %l105 = alloca ptr
  %l106 = alloca i32
  %l108 = alloca i1
  %l111 = alloca i64
  %l112 = alloca i32
  %l114 = alloca i1
  %l117 = alloca i64
  %l120 = alloca { i64, ptr }
  %l122 = alloca ptr
  %l123 = alloca i32
  %l125 = alloca i1
  %l129 = alloca { i64, ptr }
  %l131 = alloca ptr
  %l132 = alloca i32
  %l134 = alloca i1
  %l137 = alloca i64
  %l138 = alloca i32
  %l140 = alloca i1
  %l146 = alloca i64
  %l149 = alloca %"compiler/diag:Diagnostics"
  %l152 = alloca i1
  %l153 = alloca { i64, ptr }
  %l157 = alloca { i64, ptr }
  %l158 = alloca i32
  %l159 = alloca ptr
  %l161 = alloca { i64, ptr }
  %l165 = alloca i1
  %l166 = alloca ptr
  %l168 = alloca { i64, ptr }
  %l170 = alloca %"std/prelude/text:StringBuilder"
  %l180 = alloca ptr
  %l181 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  %l185 = alloca { i64, ptr }
  %l188 = alloca i1
  %l189 = alloca ptr
  %l190 = alloca i64
  %l202 = alloca ptr
  %l204 = alloca i1
  %l208 = alloca i64
  %l211 = alloca i1
  %l216 = alloca ptr
  %l221 = alloca ptr
  %l223 = alloca { i64, ptr }
  %l225 = alloca %"std/prelude/text:StringBuilder"
  %l226 = alloca ptr
  %l227 = alloca ptr
  %l232 = alloca ptr
  %l238 = alloca ptr
  %l239 = alloca { i64, ptr }
  %l241 = alloca { i64, ptr }
  %l243 = alloca { i64, ptr }
  %l245 = alloca %"compiler/session:Found"
  %l250 = alloca %"compiler/session:Found"
  %l251 = alloca i32
  %l253 = alloca i1
  %l254 = alloca ptr
  %l256 = alloca { i64, ptr }
  %l259 = alloca i1
  %l260 = alloca %"std/prelude/text:StringBuilder"
  %l265 = alloca ptr
  %l266 = alloca { i64, ptr }
  %l268 = alloca { i64, ptr }
  %l270 = alloca { i64, ptr }
  %l273 = alloca i1
  %l274 = alloca i1
  %l277 = alloca ptr
  %l279 = alloca { i64, ptr }
  %l284 = alloca { i64, ptr }
  %l289 = alloca %"compiler/session:Positions"
  %l292 = alloca %"compiler/source:Span"
  %l293 = alloca %"std/prelude/text:StringBuilder"
  %l295 = alloca ptr
  %l298 = alloca { i64, ptr }
  %l308 = alloca ptr
  %l309 = alloca { i64, ptr }
  %l311 = alloca { i64, ptr }
  %l313 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s12 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %t267 = alloca %"compiler/diag:Diagnostics", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = call { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v1, ptr %s0, { i64, ptr } %a1)
  %t4 = extractvalue { i32, ptr } %t3, 1
  %t5 = extractvalue { i32, ptr } %t3, 0
  store i32 %t5, ptr %l30
  %t6 = icmp ne i32 %t5, 0
  br i1 %t6, label %bb2, label %ok.7, !prof !99
ok.7:
  store ptr %t4, ptr %l29
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l29, !tbaa !29
  store ptr %t8, ptr %l27, !tbaa !29
  br label %bb6
bb2:
  %t9 = load i32, ptr %l30, !tbaa !23
  %t10 = ashr i32 %t9, 16
  %t12 = icmp eq i32 %t10, 1
  store i1 %t12, ptr %l32, !tbaa !21
  %t13 = load i32, ptr %l30, !tbaa !23
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
  br label %ret
bb6:
  %t18 = load ptr, ptr %l27, !tbaa !29
  store ptr %t18, ptr %l2, !tbaa !29
  %t19 = load ptr, ptr %l2, !tbaa !29
  %t21 = call { i64, ptr } @compiler_2flsp_2eidOf(ptr %s0, ptr %s0, ptr %t19)
  store { i64, ptr } %t21, ptr %l36
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l36, !tbaa !27
  store { i64, ptr } %t22, ptr %l3, !tbaa !27
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t25 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t23, { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d65, i32 0, i32 1) })
  store { i64, ptr } %t25, ptr %l38
  br label %bb8
bb8:
  %t26 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t26, ptr %l4, !tbaa !27
  %t27 = load ptr, ptr %l2, !tbaa !29
  store { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d66, i32 0, i32 1) }, ptr %l41, !tbaa !27
  %t28 = load { i64, ptr }, ptr %l41, !tbaa !27
  %t31 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t27, { i64, ptr } %t28)
  %t32 = extractvalue { i32, ptr } %t31, 1
  %t33 = extractvalue { i32, ptr } %t31, 0
  store i32 %t33, ptr %l44
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb10, label %ok.35, !prof !99
ok.35:
  store ptr %t32, ptr %l43
  br label %bb9
bb9:
  %t36 = load ptr, ptr %l43, !tbaa !29
  store ptr %t36, ptr %l39, !tbaa !29
  br label %bb16
bb10:
  %t37 = load i32, ptr %l44, !tbaa !23
  %t38 = ashr i32 %t37, 16
  %t40 = icmp eq i32 %t38, 1
  store i1 %t40, ptr %l46, !tbaa !21
  %t41 = load i32, ptr %l44, !tbaa !23
  %t42 = ashr i32 %t41, 16
  %t44 = icmp eq i32 %t42, 1
  br i1 %t44, label %bb11, label %bb12
bb11:
  call void @__olang_errpay_pop()
  br label %bb12
bb12:
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l49, !tbaa !29
  %t47 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t49 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s2, ptr %s2, { i64, ptr } %t47, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d67, i32 0, i32 1) })
  store { i64, ptr } %t49, ptr %l51
  br label %bb14
bb14:
  %t50 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  %t52 = extractvalue { i64, ptr } %t50, 1
  %t53 = mul i64 %t51, 1
  %t54 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t53)
  call void @llvm.memcpy.p0.p0.i64(ptr %t54, ptr %t52, i64 %t53, i1 false)
  %t55 = insertvalue { i64, ptr } undef, i64 %t51, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  %t57 = load ptr, ptr %l49, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s2, ptr %t57, { i64, ptr } %t56)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  %t59 = load ptr, ptr %l39, !tbaa !29
  store ptr %t59, ptr %l5, !tbaa !29
  %t60 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d68, i32 0, i32 1) }, ptr %l55, !tbaa !27
  %t61 = load { i64, ptr }, ptr %l55, !tbaa !27
  %t64 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t60, { i64, ptr } %t61)
  %t65 = extractvalue { i32, ptr } %t64, 1
  %t66 = extractvalue { i32, ptr } %t64, 0
  store i32 %t66, ptr %l58
  %t67 = icmp ne i32 %t66, 0
  br i1 %t67, label %bb18, label %ok.68, !prof !99
ok.68:
  store ptr %t65, ptr %l57
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l57, !tbaa !29
  store ptr %t69, ptr %l53, !tbaa !29
  br label %bb22
bb18:
  %t70 = load i32, ptr %l58, !tbaa !23
  %t71 = ashr i32 %t70, 16
  %t73 = icmp eq i32 %t71, 1
  store i1 %t73, ptr %l60, !tbaa !21
  %t74 = load i32, ptr %l58, !tbaa !23
  %t75 = ashr i32 %t74, 16
  %t77 = icmp eq i32 %t75, 1
  br i1 %t77, label %bb19, label %bb20
bb19:
  call void @__olang_errpay_pop()
  br label %bb20
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb22:
  %t79 = load ptr, ptr %l53, !tbaa !29
  %t80 = call { i64, ptr } @compiler_2flsp_2estr(ptr %s0, ptr %s0, ptr %s0, ptr %t79, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d69, i32 0, i32 1) })
  store { i64, ptr } %t80, ptr %l63
  br label %bb23
bb23:
  %t81 = load { i64, ptr }, ptr %l63, !tbaa !27
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/lsp:worker", ptr %t82, i32 0, i32 0
  %t85 = load ptr, ptr %t84, !tbaa !29
  %t89 = call i64 @compiler_2flsp_2ecompiler_2flsp_3aServer_2eslotOf(ptr %v0, ptr %s0, ptr %t85, { i64, ptr } %t81)
  store i64 %t89, ptr %l67
  br label %bb24
bb24:
  %t90 = load i64, ptr %l67, !tbaa !24
  store i64 %t90, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t93 = icmp slt i64 %t91, 0
  br i1 %t93, label %bb25, label %bb26
bb25:
  store %olang.scope zeroinitializer, ptr %s4
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l70, !tbaa !29
  %t96 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t98 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s4, ptr %s4, { i64, ptr } %t96, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d70, i32 0, i32 1) })
  store { i64, ptr } %t98, ptr %l72
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t99 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  %t101 = extractvalue { i64, ptr } %t99, 1
  %t102 = mul i64 %t100, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t102)
  call void @llvm.memcpy.p0.p0.i64(ptr %t103, ptr %t101, i64 %t102, i1 false)
  %t104 = insertvalue { i64, ptr } undef, i64 %t100, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  %t106 = load ptr, ptr %l70, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s4, ptr %t106, { i64, ptr } %t105)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb29:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/lsp:worker", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t113 = getelementptr %"compiler/lsp:Server", ptr %t111, i32 0, i32 1
  %t114 = load i64, ptr %l7, !tbaa !24
  %t117 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t113, i64 %t114)
  store ptr %t117, ptr %l78
  br label %bb30
bb30:
  %t118 = load ptr, ptr %l78, !tbaa !29
  store ptr %t118, ptr %l8, !tbaa !29
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/lsp:worker", ptr %t119, i32 0, i32 4
  %t122 = load ptr, ptr %l8, !tbaa !29
  %t124 = getelementptr %"compiler/lsp:Doc", ptr %t122, i32 0, i32 2
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  %t128 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v0, ptr %v0, ptr %t121, { i64, ptr } %t125)
  %t129 = extractvalue { i32, { i64, ptr } } %t128, 1
  %t130 = extractvalue { i32, { i64, ptr } } %t128, 0
  store i32 %t130, ptr %l85
  %t131 = icmp ne i32 %t130, 0
  br i1 %t131, label %bb32, label %ok.132, !prof !99
ok.132:
  store { i64, ptr } %t129, ptr %l84
  br label %bb31
bb31:
  %t133 = load { i64, ptr }, ptr %l84, !tbaa !27
  store { i64, ptr } %t133, ptr %l79, !tbaa !27
  br label %bb34
bb32:
  br label %bb33
bb33:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d71, i32 0, i32 1) }, ptr %l79, !tbaa !27
  br label %bb34
bb34:
  %t134 = load { i64, ptr }, ptr %l79, !tbaa !27
  store { i64, ptr } %t134, ptr %l9, !tbaa !27
  %t135 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/lsp:worker", ptr %t136, i32 0, i32 0
  %t139 = load ptr, ptr %t138, !tbaa !29
  %t141 = getelementptr %"compiler/lsp:Server", ptr %t139, i32 0, i32 2
  %t142 = load i1, ptr %t141, !tbaa !21
  %t145 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v0, ptr %s0, { i64, ptr } %t135, i1 %t142)
  store %"compiler/session:Positions" %t145, ptr %l90
  br label %bb35
bb35:
  %t146 = load %"compiler/session:Positions", ptr %l90
  store %"compiler/session:Positions" %t146, ptr %l10
  %t147 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d72, i32 0, i32 1) }, ptr %l94, !tbaa !27
  %t149 = load { i64, ptr }, ptr %l94, !tbaa !27
  %t152 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t147, { i64, ptr } %t149)
  %t153 = extractvalue { i32, ptr } %t152, 1
  %t154 = extractvalue { i32, ptr } %t152, 0
  store i32 %t154, ptr %l97
  %t155 = icmp ne i32 %t154, 0
  br i1 %t155, label %bb37, label %ok.156, !prof !99
ok.156:
  store ptr %t153, ptr %l96
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l96, !tbaa !29
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d73, i32 0, i32 1) }, ptr %l103, !tbaa !27
  %t158 = load { i64, ptr }, ptr %l103, !tbaa !27
  %t161 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t157, { i64, ptr } %t158)
  %t162 = extractvalue { i32, ptr } %t161, 1
  %t163 = extractvalue { i32, ptr } %t161, 0
  store i32 %t163, ptr %l106
  %t164 = icmp ne i32 %t163, 0
  br i1 %t164, label %bb42, label %ok.165, !prof !99
ok.165:
  store ptr %t162, ptr %l105
  br label %bb41
bb37:
  %t166 = load i32, ptr %l97, !tbaa !23
  %t167 = ashr i32 %t166, 16
  %t169 = icmp eq i32 %t167, 1
  store i1 %t169, ptr %l99, !tbaa !21
  %t170 = load i32, ptr %l97, !tbaa !23
  %t171 = ashr i32 %t170, 16
  %t173 = icmp eq i32 %t171, 1
  br i1 %t173, label %bb38, label %bb39
bb38:
  call void @__olang_errpay_pop()
  br label %bb39
bb39:
  br label %bb40
bb40:
  store i64 0, ptr %l91, !tbaa !24
  br label %bb49
bb41:
  %t175 = load ptr, ptr %l105, !tbaa !29
  %t176 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t175)
  %t177 = extractvalue { i32, i64 } %t176, 1
  %t178 = extractvalue { i32, i64 } %t176, 0
  store i32 %t178, ptr %l112
  %t179 = icmp ne i32 %t178, 0
  br i1 %t179, label %bb46, label %ok.180, !prof !99
ok.180:
  store i64 %t177, ptr %l111
  br label %bb45
bb42:
  %t181 = load i32, ptr %l106, !tbaa !23
  %t182 = ashr i32 %t181, 16
  %t184 = icmp eq i32 %t182, 1
  store i1 %t184, ptr %l108, !tbaa !21
  %t185 = load i32, ptr %l106, !tbaa !23
  %t186 = ashr i32 %t185, 16
  %t188 = icmp eq i32 %t186, 1
  br i1 %t188, label %bb43, label %bb44
bb43:
  call void @__olang_errpay_pop()
  br label %bb44
bb44:
  br label %bb40
bb45:
  %t190 = load i64, ptr %l111, !tbaa !24
  store i64 %t190, ptr %l91, !tbaa !24
  br label %bb49
bb46:
  %t191 = load i32, ptr %l112, !tbaa !23
  %t192 = ashr i32 %t191, 16
  %t194 = icmp eq i32 %t192, 1
  store i1 %t194, ptr %l114, !tbaa !21
  %t195 = load i32, ptr %l112, !tbaa !23
  %t196 = ashr i32 %t195, 16
  %t198 = icmp eq i32 %t196, 1
  br i1 %t198, label %bb47, label %bb48
bb47:
  call void @__olang_errpay_pop()
  br label %bb48
bb48:
  br label %bb40
bb49:
  %t200 = load i64, ptr %l91, !tbaa !24
  store i64 %t200, ptr %l11, !tbaa !24
  %t201 = load ptr, ptr %l5, !tbaa !29
  store { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d74, i32 0, i32 1) }, ptr %l120, !tbaa !27
  %t203 = load { i64, ptr }, ptr %l120, !tbaa !27
  %t206 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t201, { i64, ptr } %t203)
  %t207 = extractvalue { i32, ptr } %t206, 1
  %t208 = extractvalue { i32, ptr } %t206, 0
  store i32 %t208, ptr %l123
  %t209 = icmp ne i32 %t208, 0
  br i1 %t209, label %bb51, label %ok.210, !prof !99
ok.210:
  store ptr %t207, ptr %l122
  br label %bb50
bb50:
  %t211 = load ptr, ptr %l122, !tbaa !29
  store { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d75, i32 0, i32 1) }, ptr %l129, !tbaa !27
  %t212 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t215 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %s0, ptr %s0, ptr %t211, { i64, ptr } %t212)
  %t216 = extractvalue { i32, ptr } %t215, 1
  %t217 = extractvalue { i32, ptr } %t215, 0
  store i32 %t217, ptr %l132
  %t218 = icmp ne i32 %t217, 0
  br i1 %t218, label %bb56, label %ok.219, !prof !99
ok.219:
  store ptr %t216, ptr %l131
  br label %bb55
bb51:
  %t220 = load i32, ptr %l123, !tbaa !23
  %t221 = ashr i32 %t220, 16
  %t223 = icmp eq i32 %t221, 1
  store i1 %t223, ptr %l125, !tbaa !21
  %t224 = load i32, ptr %l123, !tbaa !23
  %t225 = ashr i32 %t224, 16
  %t227 = icmp eq i32 %t225, 1
  br i1 %t227, label %bb52, label %bb53
bb52:
  call void @__olang_errpay_pop()
  br label %bb53
bb53:
  br label %bb54
bb54:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb63
bb55:
  %t229 = load ptr, ptr %l131, !tbaa !29
  %t230 = call { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %s0, ptr %t229)
  %t231 = extractvalue { i32, i64 } %t230, 1
  %t232 = extractvalue { i32, i64 } %t230, 0
  store i32 %t232, ptr %l138
  %t233 = icmp ne i32 %t232, 0
  br i1 %t233, label %bb60, label %ok.234, !prof !99
ok.234:
  store i64 %t231, ptr %l137
  br label %bb59
bb56:
  %t235 = load i32, ptr %l132, !tbaa !23
  %t236 = ashr i32 %t235, 16
  %t238 = icmp eq i32 %t236, 1
  store i1 %t238, ptr %l134, !tbaa !21
  %t239 = load i32, ptr %l132, !tbaa !23
  %t240 = ashr i32 %t239, 16
  %t242 = icmp eq i32 %t240, 1
  br i1 %t242, label %bb57, label %bb58
bb57:
  call void @__olang_errpay_pop()
  br label %bb58
bb58:
  br label %bb54
bb59:
  %t244 = load i64, ptr %l137, !tbaa !24
  store i64 %t244, ptr %l117, !tbaa !24
  br label %bb63
bb60:
  %t245 = load i32, ptr %l138, !tbaa !23
  %t246 = ashr i32 %t245, 16
  %t248 = icmp eq i32 %t246, 1
  store i1 %t248, ptr %l140, !tbaa !21
  %t249 = load i32, ptr %l138, !tbaa !23
  %t250 = ashr i32 %t249, 16
  %t252 = icmp eq i32 %t250, 1
  br i1 %t252, label %bb61, label %bb62
bb61:
  call void @__olang_errpay_pop()
  br label %bb62
bb62:
  br label %bb54
bb63:
  %t254 = load i64, ptr %l117, !tbaa !24
  %t255 = load i64, ptr %l11, !tbaa !24
  %t260 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eOffset(ptr %s0, ptr %l10, i64 %t255, i64 %t254)
  store i64 %t260, ptr %l146
  br label %bb64
bb64:
  %t261 = load i64, ptr %l146, !tbaa !24
  store i64 %t261, ptr %l13, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/lsp:worker", ptr %t262, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !29
  store ptr %t265, ptr %l14, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t267, ptr %v0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l149, ptr %t267, i64 544, i1 false)
  br label %bb65
bb65:
  %t268 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t268, ptr %l149, i64 544, i1 false)
  store ptr %t268, ptr %l15, !tbaa !29
  %t270 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t272 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t270, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d76, i32 0, i32 1) })
  store i1 %t272, ptr %l152
  br label %bb66
bb66:
  %t273 = load i1, ptr %l152, !tbaa !21
  br i1 %t273, label %bb67, label %bb68
bb67:
  store %olang.scope zeroinitializer, ptr %s5
  %t274 = load ptr, ptr %l8, !tbaa !29
  %t276 = getelementptr %"compiler/lsp:Doc", ptr %t274, i32 0, i32 1
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t278 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t281 = call { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %v0, ptr %v0, ptr %s5, { i64, ptr } %t277, { i64, ptr } %t278)
  %t282 = extractvalue { i32, { i64, ptr } } %t281, 1
  %t283 = extractvalue { i32, { i64, ptr } } %t281, 0
  store i32 %t283, ptr %l158
  %t284 = icmp ne i32 %t283, 0
  br i1 %t284, label %bb70, label %ok.285, !prof !99
ok.285:
  store { i64, ptr } %t282, ptr %l157
  br label %bb69
bb68:
  br label %bb90
bb69:
  %t286 = load { i64, ptr }, ptr %l157, !tbaa !27
  store { i64, ptr } %t286, ptr %l153, !tbaa !27
  br label %bb74
bb70:
  br label %bb71
bb71:
  store %olang.scope zeroinitializer, ptr %s6
  %t287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t287, ptr %l159, !tbaa !29
  %t288 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t290 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s6, ptr %s6, { i64, ptr } %t288, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d77, i32 0, i32 1) })
  store { i64, ptr } %t290, ptr %l161
  br label %bb72
bb72:
  %t291 = load { i64, ptr }, ptr %l161, !tbaa !27
  %t292 = extractvalue { i64, ptr } %t291, 0
  %t293 = extractvalue { i64, ptr } %t291, 1
  %t294 = mul i64 %t292, 1
  %t295 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t294)
  call void @llvm.memcpy.p0.p0.i64(ptr %t295, ptr %t293, i64 %t294, i1 false)
  %t296 = insertvalue { i64, ptr } undef, i64 %t292, 0
  %t297 = insertvalue { i64, ptr } %t296, ptr %t295, 1
  %t298 = load ptr, ptr %l159, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s6, ptr %t298, { i64, ptr } %t297)
  br label %bb73
bb73:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb74:
  %t300 = load { i64, ptr }, ptr %l153, !tbaa !27
  store { i64, ptr } %t300, ptr %l16, !tbaa !27
  %t301 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t302 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t305 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s5, ptr %v0, { i64, ptr } %t301, { i64, ptr } %t302)
  store i1 %t305, ptr %l165
  br label %bb75
bb75:
  %t306 = load i1, ptr %l165, !tbaa !21
  br i1 %t306, label %bb76, label %bb77
bb76:
  store %olang.scope zeroinitializer, ptr %s7
  %t307 = load ptr, ptr %l0, !tbaa !29
  store ptr %t307, ptr %l166, !tbaa !29
  %t308 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t310 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s7, ptr %s7, { i64, ptr } %t308, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d78, i32 0, i32 1) })
  store { i64, ptr } %t310, ptr %l168
  br label %bb78
bb77:
  br label %bb80
bb78:
  %t311 = load { i64, ptr }, ptr %l168, !tbaa !27
  %t312 = extractvalue { i64, ptr } %t311, 0
  %t313 = extractvalue { i64, ptr } %t311, 1
  %t314 = mul i64 %t312, 1
  %t315 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t314)
  call void @llvm.memcpy.p0.p0.i64(ptr %t315, ptr %t313, i64 %t314, i1 false)
  %t316 = insertvalue { i64, ptr } undef, i64 %t312, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load ptr, ptr %l166, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s7, ptr %t318, { i64, ptr } %t317)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s7)
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb80:
  %t320 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s5)
  store %"std/prelude/text:StringBuilder" %t320, ptr %l170
  br label %bb81
bb81:
  %t321 = load %"std/prelude/text:StringBuilder", ptr %l170
  store %"std/prelude/text:StringBuilder" %t321, ptr %l17
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d79, i32 0, i32 1) })
  br label %bb82
bb82:
  %t323 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t325 = extractvalue { i64, ptr } %t323, 0
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %s5, ptr %l10, ptr %l17, i64 0, i64 %t325)
  br label %bb83
bb83:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d80, i32 0, i32 1) })
  br label %bb84
bb84:
  %t330 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } %t330)
  br label %bb85
bb85:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s5, ptr %s5, ptr %l17, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d81, i32 0, i32 1) })
  br label %bb86
bb86:
  %t334 = load ptr, ptr %l0, !tbaa !29
  store ptr %t334, ptr %l180, !tbaa !29
  %t335 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t335, ptr %l181, !tbaa !27
  %t337 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s5, ptr %s5, ptr %l17)
  store { i64, ptr } %t337, ptr %l183
  br label %bb87
bb87:
  %t338 = load { i64, ptr }, ptr %l183, !tbaa !27
  %t339 = extractvalue { i64, ptr } %t338, 0
  %t340 = extractvalue { i64, ptr } %t338, 1
  %t341 = mul i64 %t339, 1
  %t342 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t341)
  call void @llvm.memcpy.p0.p0.i64(ptr %t342, ptr %t340, i64 %t341, i1 false)
  %t343 = insertvalue { i64, ptr } undef, i64 %t339, 0
  %t344 = insertvalue { i64, ptr } %t343, ptr %t342, 1
  %t345 = load { i64, ptr }, ptr %l181, !tbaa !27
  %t347 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s5, ptr %s5, { i64, ptr } %t345, { i64, ptr } %t344)
  store { i64, ptr } %t347, ptr %l185
  br label %bb88
bb88:
  %t348 = load { i64, ptr }, ptr %l185, !tbaa !27
  %t349 = extractvalue { i64, ptr } %t348, 0
  %t350 = extractvalue { i64, ptr } %t348, 1
  %t351 = mul i64 %t349, 1
  %t352 = call ptr @__olang_scope_alloc(ptr %s5, i64 %t351)
  call void @llvm.memcpy.p0.p0.i64(ptr %t352, ptr %t350, i64 %t351, i1 false)
  %t353 = insertvalue { i64, ptr } undef, i64 %t349, 0
  %t354 = insertvalue { i64, ptr } %t353, ptr %t352, 1
  %t355 = load ptr, ptr %l180, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s5, ptr %t355, { i64, ptr } %t354)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb90:
  %t357 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t359 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t357, { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d82, i32 0, i32 1) })
  store i1 %t359, ptr %l188
  br label %bb91
bb91:
  %t360 = load i1, ptr %l188, !tbaa !21
  br i1 %t360, label %bb92, label %bb93
bb92:
  %t361 = load ptr, ptr %l8, !tbaa !29
  store ptr %t361, ptr %l189, !tbaa !29
  %t362 = ptrtoint ptr %v0 to i64
  store i64 %t362, ptr %l190, !tbaa !24
  %t363 = load i1, ptr @olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1
  br i1 %t363, label %bb94, label %bb95
bb93:
  br label %bb97
bb94:
  %t365 = load ptr, ptr %l189, !tbaa !29
  %t366 = call ptr @__olang_region_or(ptr %t365, ptr %v0)
  %t367 = ptrtoint ptr %t366 to i64
  store i64 %t367, ptr %l190, !tbaa !24
  br label %bb95
bb95:
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t370 = load ptr, ptr %l8, !tbaa !29
  %t371 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t372 = load i64, ptr %l13, !tbaa !24
  %t373 = load ptr, ptr %l14, !tbaa !29
  %t374 = load ptr, ptr %l15, !tbaa !29
  %t375 = load i64, ptr %l190
  %t376 = inttoptr i64 %t375 to ptr
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ecomplete(ptr %v0, ptr %s0, ptr %t376, ptr %v0, ptr %v0, ptr %v0, ptr %t368, { i64, ptr } %t369, ptr %t370, { i64, ptr } %t371, i64 %t372, ptr %t373, ptr %t374)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb97:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load i64, ptr %l7, !tbaa !24
  %t386 = load ptr, ptr %l15, !tbaa !29
  %t390 = call ptr @compiler_2flsp_2ecompiler_2flsp_3aworker_2eanalysis(ptr %v0, ptr %v0, ptr %v0, ptr %t384, i64 %t385, ptr %t386)
  store ptr %t390, ptr %l202
  br label %bb98
bb98:
  %t391 = load ptr, ptr %l202, !tbaa !29
  store ptr %t391, ptr %l18, !tbaa !29
  %t392 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t394 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t392, { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d83, i32 0, i32 1) })
  store i1 %t394, ptr %l204
  br label %bb99
bb99:
  %t395 = load i1, ptr %l204, !tbaa !21
  br i1 %t395, label %bb100, label %bb101
bb100:
  store %olang.scope zeroinitializer, ptr %s9
  %t396 = load ptr, ptr %l18, !tbaa !29
  %t397 = load ptr, ptr %l8, !tbaa !29
  %t399 = getelementptr %"compiler/lsp:Doc", ptr %t397, i32 0, i32 2
  %t400 = load { i64, ptr }, ptr %t399, !tbaa !27
  %t403 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v0, ptr %t396, { i64, ptr } %t400)
  store i64 %t403, ptr %l208
  br label %bb102
bb101:
  br label %bb118
bb102:
  %t404 = load i64, ptr %l208, !tbaa !24
  store i64 %t404, ptr %l19, !tbaa !24
  %t405 = load i64, ptr %l19, !tbaa !24
  %t407 = icmp slt i64 %t405, 0
  br i1 %t407, label %bb103, label %bb104
bb103:
  store i1 true, ptr %l211, !tbaa !21
  br label %bb106
bb104:
  %t409 = load ptr, ptr %l18, !tbaa !29
  %t411 = getelementptr %"compiler/session:Analysis", ptr %t409, i32 0, i32 0
  %t412 = load ptr, ptr %t411, !tbaa !29
  %t414 = getelementptr %"compiler/load:Loader", ptr %t412, i32 0, i32 10
  %t415 = load i64, ptr %l19, !tbaa !24
  %t418 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t414, i64 %t415)
  store ptr %t418, ptr %l216
  br label %bb105
bb105:
  %t419 = load ptr, ptr %l216, !tbaa !29
  %t421 = getelementptr %"compiler/load:Module", ptr %t419, i32 0, i32 8
  %t422 = load { i64, ptr }, ptr %t421, !tbaa !27
  %t424 = extractvalue { i64, ptr } %t422, 0
  %t426 = icmp eq i64 %t424, 0
  store i1 %t426, ptr %l211, !tbaa !21
  br label %bb106
bb106:
  %t428 = load i1, ptr %l211, !tbaa !21
  br i1 %t428, label %bb107, label %bb108
bb107:
  store %olang.scope zeroinitializer, ptr %s10
  %t429 = load ptr, ptr %l0, !tbaa !29
  store ptr %t429, ptr %l221, !tbaa !29
  %t430 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t432 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s10, ptr %s10, { i64, ptr } %t430, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d84, i32 0, i32 1) })
  store { i64, ptr } %t432, ptr %l223
  br label %bb109
bb108:
  br label %bb111
bb109:
  %t433 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t434 = extractvalue { i64, ptr } %t433, 0
  %t435 = extractvalue { i64, ptr } %t433, 1
  %t436 = mul i64 %t434, 1
  %t437 = call ptr @__olang_scope_alloc(ptr %s10, i64 %t436)
  call void @llvm.memcpy.p0.p0.i64(ptr %t437, ptr %t435, i64 %t436, i1 false)
  %t438 = insertvalue { i64, ptr } undef, i64 %t434, 0
  %t439 = insertvalue { i64, ptr } %t438, ptr %t437, 1
  %t440 = load ptr, ptr %l221, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s10, ptr %t440, { i64, ptr } %t439)
  br label %bb110
bb110:
  call void @__olang_scope_close(ptr %s10)
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb111:
  %t442 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s9)
  store %"std/prelude/text:StringBuilder" %t442, ptr %l225
  br label %bb112
bb112:
  %t443 = load %"std/prelude/text:StringBuilder", ptr %l225
  store %"std/prelude/text:StringBuilder" %t443, ptr %l20
  store ptr %l20, ptr %l226, !tbaa !29
  store ptr %l10, ptr %l227, !tbaa !29
  %t444 = load ptr, ptr %l18, !tbaa !29
  %t446 = getelementptr %"compiler/session:Analysis", ptr %t444, i32 0, i32 0
  %t447 = load ptr, ptr %t446, !tbaa !29
  %t449 = getelementptr %"compiler/load:Loader", ptr %t447, i32 0, i32 10
  %t450 = load i64, ptr %l19, !tbaa !24
  %t453 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t449, i64 %t450)
  store ptr %t453, ptr %l232
  br label %bb113
bb113:
  %t454 = load ptr, ptr %l232, !tbaa !29
  %t456 = getelementptr %"compiler/load:Module", ptr %t454, i32 0, i32 8
  %t457 = load { i64, ptr }, ptr %t456, !tbaa !27
  %t458 = load ptr, ptr %l18, !tbaa !29
  %t460 = getelementptr %"compiler/session:Analysis", ptr %t458, i32 0, i32 0
  %t461 = load ptr, ptr %t460, !tbaa !29
  %t463 = getelementptr %"compiler/load:Loader", ptr %t461, i32 0, i32 3
  %t464 = load ptr, ptr %t463, !tbaa !29
  %t465 = load ptr, ptr %l226, !tbaa !29
  %t466 = load ptr, ptr %l227, !tbaa !29
  call void @compiler_2fsession_2eSymbols(ptr %s9, ptr %s0, ptr %v0, ptr %v0, ptr %t465, ptr %t466, { i64, ptr } %t457, ptr %t464)
  br label %bb114
bb114:
  %t469 = load ptr, ptr %l0, !tbaa !29
  store ptr %t469, ptr %l238, !tbaa !29
  %t470 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t470, ptr %l239, !tbaa !27
  %t472 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s9, ptr %s9, ptr %l20)
  store { i64, ptr } %t472, ptr %l241
  br label %bb115
bb115:
  %t473 = load { i64, ptr }, ptr %l241, !tbaa !27
  %t474 = extractvalue { i64, ptr } %t473, 0
  %t475 = extractvalue { i64, ptr } %t473, 1
  %t476 = mul i64 %t474, 1
  %t477 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t476)
  call void @llvm.memcpy.p0.p0.i64(ptr %t477, ptr %t475, i64 %t476, i1 false)
  %t478 = insertvalue { i64, ptr } undef, i64 %t474, 0
  %t479 = insertvalue { i64, ptr } %t478, ptr %t477, 1
  %t480 = load { i64, ptr }, ptr %l239, !tbaa !27
  %t482 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s9, ptr %s9, { i64, ptr } %t480, { i64, ptr } %t479)
  store { i64, ptr } %t482, ptr %l243
  br label %bb116
bb116:
  %t483 = load { i64, ptr }, ptr %l243, !tbaa !27
  %t484 = extractvalue { i64, ptr } %t483, 0
  %t485 = extractvalue { i64, ptr } %t483, 1
  %t486 = mul i64 %t484, 1
  %t487 = call ptr @__olang_scope_alloc(ptr %s9, i64 %t486)
  call void @llvm.memcpy.p0.p0.i64(ptr %t487, ptr %t485, i64 %t486, i1 false)
  %t488 = insertvalue { i64, ptr } undef, i64 %t484, 0
  %t489 = insertvalue { i64, ptr } %t488, ptr %t487, 1
  %t490 = load ptr, ptr %l238, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s9, ptr %t490, { i64, ptr } %t489)
  br label %bb117
bb117:
  call void @__olang_scope_close(ptr %s9)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb118:
  %t492 = load ptr, ptr %l18, !tbaa !29
  %t493 = load ptr, ptr %l8, !tbaa !29
  %t495 = getelementptr %"compiler/lsp:Doc", ptr %t493, i32 0, i32 2
  %t496 = load { i64, ptr }, ptr %t495, !tbaa !27
  %t497 = load i64, ptr %l13, !tbaa !24
  %t501 = call { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eLookup(ptr %v0, ptr %v0, ptr %s0, ptr %t492, { i64, ptr } %t496, i64 %t497)
  %t502 = extractvalue { i32, %"compiler/session:Found" } %t501, 1
  %t503 = extractvalue { i32, %"compiler/session:Found" } %t501, 0
  store i32 %t503, ptr %l251
  %t504 = icmp ne i32 %t503, 0
  br i1 %t504, label %bb120, label %ok.505, !prof !99
ok.505:
  store %"compiler/session:Found" %t502, ptr %l250
  br label %bb119
bb119:
  %t506 = load %"compiler/session:Found", ptr %l250
  store %"compiler/session:Found" %t506, ptr %l245
  br label %bb124
bb120:
  %t507 = load i32, ptr %l251, !tbaa !23
  %t508 = ashr i32 %t507, 16
  %t510 = icmp eq i32 %t508, 1
  store i1 %t510, ptr %l253, !tbaa !21
  br label %bb121
bb121:
  store %olang.scope zeroinitializer, ptr %s11
  %t511 = load ptr, ptr %l0, !tbaa !29
  store ptr %t511, ptr %l254, !tbaa !29
  %t512 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t514 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s11, ptr %s11, { i64, ptr } %t512, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d85, i32 0, i32 1) })
  store { i64, ptr } %t514, ptr %l256
  br label %bb122
bb122:
  %t515 = load { i64, ptr }, ptr %l256, !tbaa !27
  %t516 = extractvalue { i64, ptr } %t515, 0
  %t517 = extractvalue { i64, ptr } %t515, 1
  %t518 = mul i64 %t516, 1
  %t519 = call ptr @__olang_scope_alloc(ptr %s11, i64 %t518)
  call void @llvm.memcpy.p0.p0.i64(ptr %t519, ptr %t517, i64 %t518, i1 false)
  %t520 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t521 = insertvalue { i64, ptr } %t520, ptr %t519, 1
  %t522 = load ptr, ptr %l254, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s11, ptr %t522, { i64, ptr } %t521)
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s11)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb124:
  %t524 = load %"compiler/session:Found", ptr %l245
  store %"compiler/session:Found" %t524, ptr %l21
  %t525 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t527 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t525, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d86, i32 0, i32 1) })
  store i1 %t527, ptr %l259
  br label %bb125
bb125:
  %t528 = load i1, ptr %l259, !tbaa !21
  br i1 %t528, label %bb126, label %bb127
bb126:
  store %olang.scope zeroinitializer, ptr %s12
  %t529 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s12)
  store %"std/prelude/text:StringBuilder" %t529, ptr %l260
  br label %bb128
bb127:
  br label %bb135
bb128:
  %t530 = load %"std/prelude/text:StringBuilder", ptr %l260
  store %"std/prelude/text:StringBuilder" %t530, ptr %l22
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s12, ptr %s12, ptr %l22, { i64, ptr } { i64 39, ptr getelementptr inbounds (<{ i64, [39 x i8] }>, ptr @.d87, i32 0, i32 1) })
  br label %bb129
bb129:
  %t532 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 0
  %t533 = load { i64, ptr }, ptr %t532, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s12, ptr %s0, ptr %l22, { i64, ptr } %t533)
  br label %bb130
bb130:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s12, ptr %s12, ptr %l22, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d88, i32 0, i32 1) })
  br label %bb131
bb131:
  %t537 = load ptr, ptr %l0, !tbaa !29
  store ptr %t537, ptr %l265, !tbaa !29
  %t538 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t538, ptr %l266, !tbaa !27
  %t540 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s12, ptr %s12, ptr %l22)
  store { i64, ptr } %t540, ptr %l268
  br label %bb132
bb132:
  %t541 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t542 = extractvalue { i64, ptr } %t541, 0
  %t543 = extractvalue { i64, ptr } %t541, 1
  %t544 = mul i64 %t542, 1
  %t545 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t544)
  call void @llvm.memcpy.p0.p0.i64(ptr %t545, ptr %t543, i64 %t544, i1 false)
  %t546 = insertvalue { i64, ptr } undef, i64 %t542, 0
  %t547 = insertvalue { i64, ptr } %t546, ptr %t545, 1
  %t548 = load { i64, ptr }, ptr %l266, !tbaa !27
  %t550 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s12, ptr %s12, { i64, ptr } %t548, { i64, ptr } %t547)
  store { i64, ptr } %t550, ptr %l270
  br label %bb133
bb133:
  %t551 = load { i64, ptr }, ptr %l270, !tbaa !27
  %t552 = extractvalue { i64, ptr } %t551, 0
  %t553 = extractvalue { i64, ptr } %t551, 1
  %t554 = mul i64 %t552, 1
  %t555 = call ptr @__olang_scope_alloc(ptr %s12, i64 %t554)
  call void @llvm.memcpy.p0.p0.i64(ptr %t555, ptr %t553, i64 %t554, i1 false)
  %t556 = insertvalue { i64, ptr } undef, i64 %t552, 0
  %t557 = insertvalue { i64, ptr } %t556, ptr %t555, 1
  %t558 = load ptr, ptr %l265, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s12, ptr %t558, { i64, ptr } %t557)
  br label %bb134
bb134:
  call void @__olang_scope_close(ptr %s12)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb135:
  %t560 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 1
  %t561 = load { i64, ptr }, ptr %t560, !tbaa !27
  %t563 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t561, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d89, i32 0, i32 1) })
  store i1 %t563, ptr %l273
  br label %bb136
bb136:
  %t564 = load i1, ptr %l273, !tbaa !21
  br i1 %t564, label %bb137, label %bb138
bb137:
  store i1 true, ptr %l274, !tbaa !21
  br label %bb139
bb138:
  %t565 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 2
  %t566 = load i64, ptr %t565, !tbaa !24
  %t568 = icmp slt i64 %t566, 0
  store i1 %t568, ptr %l274, !tbaa !21
  br label %bb139
bb139:
  %t570 = load i1, ptr %l274, !tbaa !21
  br i1 %t570, label %bb140, label %bb141
bb140:
  store %olang.scope zeroinitializer, ptr %s13
  %t571 = load ptr, ptr %l0, !tbaa !29
  store ptr %t571, ptr %l277, !tbaa !29
  %t572 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t574 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s13, ptr %s13, { i64, ptr } %t572, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d90, i32 0, i32 1) })
  store { i64, ptr } %t574, ptr %l279
  br label %bb142
bb141:
  br label %bb144
bb142:
  %t575 = load { i64, ptr }, ptr %l279, !tbaa !27
  %t576 = extractvalue { i64, ptr } %t575, 0
  %t577 = extractvalue { i64, ptr } %t575, 1
  %t578 = mul i64 %t576, 1
  %t579 = call ptr @__olang_scope_alloc(ptr %s13, i64 %t578)
  call void @llvm.memcpy.p0.p0.i64(ptr %t579, ptr %t577, i64 %t578, i1 false)
  %t580 = insertvalue { i64, ptr } undef, i64 %t576, 0
  %t581 = insertvalue { i64, ptr } %t580, ptr %t579, 1
  %t582 = load ptr, ptr %l277, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s13, ptr %t582, { i64, ptr } %t581)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s13)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb144:
  %t584 = load ptr, ptr %l0, !tbaa !29
  %t585 = load ptr, ptr %l18, !tbaa !29
  %t586 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 1
  %t587 = load { i64, ptr }, ptr %t586, !tbaa !27
  %t591 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v0, ptr %s0, ptr %s0, ptr %t584, ptr %t585, { i64, ptr } %t587)
  store { i64, ptr } %t591, ptr %l284
  br label %bb145
bb145:
  %t592 = load { i64, ptr }, ptr %l284, !tbaa !27
  store { i64, ptr } %t592, ptr %l23, !tbaa !27
  %t593 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t594 = load ptr, ptr %l0, !tbaa !29
  %t596 = getelementptr %"compiler/lsp:worker", ptr %t594, i32 0, i32 0
  %t597 = load ptr, ptr %t596, !tbaa !29
  %t599 = getelementptr %"compiler/lsp:Server", ptr %t597, i32 0, i32 2
  %t600 = load i1, ptr %t599, !tbaa !21
  %t603 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s0, ptr %s0, { i64, ptr } %t593, i1 %t600)
  store %"compiler/session:Positions" %t603, ptr %l289
  br label %bb146
bb146:
  %t604 = load %"compiler/session:Positions", ptr %l289
  store %"compiler/session:Positions" %t604, ptr %l24
  %t605 = load { i64, ptr }, ptr %l23, !tbaa !27
  %t606 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 2
  %t607 = load i64, ptr %t606, !tbaa !24
  %t610 = call %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %s0, { i64, ptr } %t605, i64 %t607)
  store %"compiler/source:Span" %t610, ptr %l292
  br label %bb147
bb147:
  %t611 = load %"compiler/source:Span", ptr %l292
  store %"compiler/source:Span" %t611, ptr %l25
  %t612 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t612, ptr %l293
  br label %bb148
bb148:
  %t613 = load %"std/prelude/text:StringBuilder", ptr %l293
  store %"std/prelude/text:StringBuilder" %t613, ptr %l26
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l26, { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d91, i32 0, i32 1) })
  br label %bb149
bb149:
  store ptr %l26, ptr %l295, !tbaa !29
  %t615 = load ptr, ptr %l0, !tbaa !29
  %t616 = getelementptr %"compiler/session:Found", ptr %l21, i32 0, i32 1
  %t617 = load { i64, ptr }, ptr %t616, !tbaa !27
  %t620 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %s0, ptr %s0, ptr %t615, { i64, ptr } %t617)
  store { i64, ptr } %t620, ptr %l298
  br label %bb150
bb150:
  %t621 = load { i64, ptr }, ptr %l298, !tbaa !27
  %t622 = extractvalue { i64, ptr } %t621, 0
  %t623 = extractvalue { i64, ptr } %t621, 1
  %t624 = mul i64 %t622, 1
  %t625 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t624)
  call void @llvm.memcpy.p0.p0.i64(ptr %t625, ptr %t623, i64 %t624, i1 false)
  %t626 = insertvalue { i64, ptr } undef, i64 %t622, 0
  %t627 = insertvalue { i64, ptr } %t626, ptr %t625, 1
  %t628 = load ptr, ptr %l295, !tbaa !29
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %t628, { i64, ptr } %t627)
  br label %bb151
bb151:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l26, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d92, i32 0, i32 1) })
  br label %bb152
bb152:
  %t631 = getelementptr %"compiler/source:Span", ptr %l25, i32 0, i32 0
  %t632 = load i32, ptr %t631, !tbaa !23
  %t634 = sext i32 %t632 to i64
  %t635 = getelementptr %"compiler/source:Span", ptr %l25, i32 0, i32 1
  %t636 = load i32, ptr %t635, !tbaa !23
  %t638 = sext i32 %t636 to i64
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %s0, ptr %l24, ptr %l26, i64 %t634, i64 %t638)
  br label %bb153
bb153:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l26, i8 125)
  br label %bb154
bb154:
  %t644 = load ptr, ptr %l0, !tbaa !29
  store ptr %t644, ptr %l308, !tbaa !29
  %t645 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t645, ptr %l309, !tbaa !27
  %t647 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l26)
  store { i64, ptr } %t647, ptr %l311
  br label %bb155
bb155:
  %t648 = load { i64, ptr }, ptr %l311, !tbaa !27
  %t649 = extractvalue { i64, ptr } %t648, 0
  %t650 = extractvalue { i64, ptr } %t648, 1
  %t651 = mul i64 %t649, 1
  %t652 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t651)
  call void @llvm.memcpy.p0.p0.i64(ptr %t652, ptr %t650, i64 %t651, i1 false)
  %t653 = insertvalue { i64, ptr } undef, i64 %t649, 0
  %t654 = insertvalue { i64, ptr } %t653, ptr %t652, 1
  %t655 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t657 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %s0, ptr %s0, ptr %s0, { i64, ptr } %t655, { i64, ptr } %t654)
  store { i64, ptr } %t657, ptr %l313
  br label %bb156
bb156:
  %t658 = load { i64, ptr }, ptr %l313, !tbaa !27
  %t659 = extractvalue { i64, ptr } %t658, 0
  %t660 = extractvalue { i64, ptr } %t658, 1
  %t661 = mul i64 %t659, 1
  %t662 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t661)
  call void @llvm.memcpy.p0.p0.i64(ptr %t662, ptr %t660, i64 %t661, i1 false)
  %t663 = insertvalue { i64, ptr } undef, i64 %t659, 0
  %t664 = insertvalue { i64, ptr } %t663, ptr %t662, 1
  %t665 = load ptr, ptr %l308, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t665, { i64, ptr } %t664)
  br label %bb157
bb157:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2echeck(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/text:StringBuilder"
  %l9 = alloca i1
  %l10 = alloca ptr
  %l11 = alloca i64
  %l12 = alloca ptr
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
  %l29 = alloca ptr
  %l32 = alloca %"compiler/diag:Diagnostics"
  %l40 = alloca ptr
  %l42 = alloca i64
  %l43 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca i64
  %l59 = alloca i64
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca %"std/prelude/text:StringBuilder"
  %l84 = alloca i64
  %l86 = alloca i64
  %l91 = alloca ptr
  %l95 = alloca i64
  %l99 = alloca i64
  %l102 = alloca i64
  %l123 = alloca i1
  %l128 = alloca ptr
  %l131 = alloca i1
  %l136 = alloca ptr
  %l141 = alloca i1
  %l155 = alloca i64
  %l159 = alloca i64
  %l162 = alloca i64
  %l183 = alloca ptr
  %l186 = alloca { i64, ptr }
  %l190 = alloca ptr
  %l192 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t17 = alloca %"compiler/diag:Diagnostics", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  %t7 = load i64, ptr %l1, !tbaa !24
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t6, i64 %t7)
  store ptr %t10, ptr %l29
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l29, !tbaa !29
  store ptr %t11, ptr %l2, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/lsp:worker", ptr %t12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !29
  store ptr %t15, ptr %l3, !tbaa !29
  call void @compiler_2fdiag_3aDiagnostics_2ector(ptr %t17, ptr %v0, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t17, i64 544, i1 false)
  br label %bb2
bb2:
  %t18 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 544, i64 8)
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l32, i64 544, i1 false)
  store ptr %t18, ptr %l4, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = getelementptr %"compiler/lsp:Doc", ptr %t20, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  %t24 = load ptr, ptr %l3, !tbaa !29
  %t25 = load ptr, ptr %l4, !tbaa !29
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/lsp:worker", ptr %t26, i32 0, i32 4
  %t33 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %v0, { i64, ptr } %t23, ptr %t24, ptr %t25, ptr %t28, i1 false)
  store ptr %t33, ptr %l40
  br label %bb3
bb3:
  %t34 = load ptr, ptr %l40, !tbaa !29
  store ptr %t34, ptr %l5, !tbaa !29
  %t35 = load ptr, ptr %l4, !tbaa !29
  %t37 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t35)
  store i64 %t37, ptr %l42
  br label %bb4
bb4:
  %t38 = load i64, ptr %l42, !tbaa !24
  store i64 %t38, ptr %l6, !tbaa !24
  %t39 = ptrtoint ptr %s0 to i64
  store i64 %t39, ptr %l43, !tbaa !24
  %t40 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t40, label %bb5, label %bb6
bb5:
  %t42 = call ptr @__olang_region_make(ptr %s0)
  %t43 = ptrtoint ptr %t42 to i64
  store i64 %t43, ptr %l43, !tbaa !24
  br label %bb6
bb6:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  %t46 = load ptr, ptr %l5, !tbaa !29
  %t47 = load ptr, ptr %l4, !tbaa !29
  %t48 = load ptr, ptr %l2, !tbaa !29
  %t50 = getelementptr %"compiler/lsp:Doc", ptr %t48, i32 0, i32 6
  %t51 = load i64, ptr %l43
  %t52 = inttoptr i64 %t51 to ptr
  %t58 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flsp_2ecompiler_2flsp_3aworker_2epublishAll(ptr %v0, ptr %v0, ptr %v0, ptr %v0, ptr %t52, ptr %t44, i64 %t45, ptr %t46, ptr %t47, ptr %t50)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %l51
  br label %bb7
bb7:
  %t59 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t59, label %bb8, label %bb9
bb8:
  %t61 = load i64, ptr %l43
  %t62 = inttoptr i64 %t61 to ptr
  %t63 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51, i32 0, i32 0
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = icmp ne ptr %t66, null
  %t68 = select i1 %t67, ptr %t66, ptr null
  %t69 = icmp eq ptr %t68, %t62
  call void @__olang_region_settle(ptr %t62, i1 %t69)
  br label %bb9
bb9:
  %t70 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t70, ptr %l7
  %t71 = load ptr, ptr %l5, !tbaa !29
  %t72 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2fsession_2eHold(ptr %v0, ptr %v0, ptr %t71, ptr %t72)
  br label %bb10
bb10:
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = call i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %t75)
  store i64 %t77, ptr %l56
  br label %bb11
bb11:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l56, !tbaa !24
  %t81 = icmp ne i64 %t79, %t78
  br i1 %t81, label %bb12, label %bb13
bb12:
  %t83 = ptrtoint ptr %s0 to i64
  store i64 %t83, ptr %l59, !tbaa !24
  %t84 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t84, label %bb14, label %bb15
bb13:
  br label %bb21
bb14:
  %t86 = call ptr @__olang_region_make(ptr %s0)
  %t87 = ptrtoint ptr %t86 to i64
  store i64 %t87, ptr %l59, !tbaa !24
  br label %bb15
bb15:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load i64, ptr %l1, !tbaa !24
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t91 = load ptr, ptr %l4, !tbaa !29
  %t92 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t94 = load i64, ptr %l59
  %t95 = inttoptr i64 %t94 to ptr
  %t96 = call ptr @__olang_scope_alloc_a(ptr %t95, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %t96
  %t97 = load i64, ptr %l59
  %t98 = inttoptr i64 %t97 to ptr
  %t99 = load i64, ptr %l59
  %t100 = inttoptr i64 %t99 to ptr
  %t106 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flsp_2ecompiler_2flsp_3aworker_2epublishAll(ptr %v0, ptr %v0, ptr %v0, ptr %t98, ptr %t100, ptr %t88, i64 %t89, ptr %t90, ptr %t91, ptr %t96)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %l67
  br label %bb16
bb16:
  %t107 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t107, label %bb17, label %bb18
bb17:
  %t109 = load i64, ptr %l59
  %t110 = inttoptr i64 %t109 to ptr
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = icmp ne ptr %t114, null
  %t116 = select i1 %t115, ptr %t114, ptr null
  %t117 = icmp eq ptr %t116, %t110
  call void @__olang_region_settle(ptr %t110, i1 %t117)
  br label %bb18
bb18:
  %t118 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t118, ptr %l69
  %t119 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t119, ptr %l7
  %t120 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7
  br i1 %t120, label %bb19, label %bb20
bb19:
  %t122 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69, i32 0, i32 0
  %t123 = load { i64, ptr }, ptr %t122
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = call ptr @__olang_region_or(ptr %t124, ptr null)
  %t126 = icmp ne ptr %t125, null
  %t127 = select i1 %t126, ptr %t125, ptr null
  call void @__olang_region_drop(ptr %t127)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l69
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l5, !tbaa !29
  %t133 = getelementptr %"compiler/lsp:worker", ptr %t128, i32 0, i32 5
  store ptr %t129, ptr %t133, !tbaa !29
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t138 = getelementptr %"compiler/lsp:worker", ptr %t134, i32 0, i32 6
  store i64 %t135, ptr %t138, !tbaa !24
  %t139 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t139, ptr %l76
  br label %bb22
bb22:
  %t140 = load %"std/prelude/text:StringBuilder", ptr %l76
  store %"std/prelude/text:StringBuilder" %t140, ptr %l8
  %t141 = load i64, ptr %l1, !tbaa !24
  %t142 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t143 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  %t145 = call i64 @__olang_fmt_i64(ptr null, i64 %t141)
  %t146 = add i64 %t143, %t145
  %t147 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t148 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  %t149 = add i64 %t146, %t148
  %t150 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t149)
  call void @olang_textcopy(ptr %t150, ptr %t142, i64 %t143)
  %t151 = getelementptr i8, ptr %t150, i64 %t143
  %t152 = call i64 @__olang_fmt_i64(ptr %t151, i64 %t141)
  %t153 = getelementptr i8, ptr %t151, i64 %t145
  call void @olang_textcopy(ptr %t153, ptr %t147, i64 %t148)
  %t154 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t155 = insertvalue { i64, ptr } %t154, ptr %t150, 1
  %t157 = extractvalue { i64, ptr } %t155, 0
  %t158 = extractvalue { i64, ptr } %t155, 1
  %t159 = mul i64 %t157, 1
  %t160 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t159)
  call void @llvm.memcpy.p0.p0.i64(ptr %t160, ptr %t158, i64 %t159, i1 false)
  %t161 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t162 = insertvalue { i64, ptr } %t161, ptr %t160, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } %t162)
  br label %bb23
bb23:
  store i1 true, ptr %l9, !tbaa !21
  %t165 = load ptr, ptr %l5, !tbaa !29
  %t167 = getelementptr %"compiler/session:Analysis", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  %t170 = getelementptr %"compiler/load:Loader", ptr %t168, i32 0, i32 10
  store ptr %t170, ptr %l10, !tbaa !29
  store i64 0, ptr %l11, !tbaa !24
  br label %bb24
bb24:
  %t172 = load i64, ptr %l11, !tbaa !24
  store i64 %t172, ptr %l84, !tbaa !24
  %t173 = load ptr, ptr %l10, !tbaa !29
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %t173)
  store i64 %t175, ptr %l86
  br label %bb25
bb25:
  %t176 = load i64, ptr %l84, !tbaa !24
  %t177 = load i64, ptr %l86, !tbaa !24
  %t178 = icmp slt i64 %t176, %t177
  %t180 = xor i1 %t178, true
  br i1 %t180, label %bb26, label %bb27
bb26:
  br label %bb61
bb27:
  br label %bb28
bb28:
  %t182 = load ptr, ptr %l10, !tbaa !29
  %t183 = load i64, ptr %l11, !tbaa !24
  %t186 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v0, ptr %t182, i64 %t183)
  store ptr %t186, ptr %l91
  br label %bb29
bb29:
  %t187 = load ptr, ptr %l91, !tbaa !29
  store ptr %t187, ptr %l12, !tbaa !29
  store i64 0, ptr %l13, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/lsp:worker", ptr %t188, i32 0, i32 0
  %t191 = load ptr, ptr %t190, !tbaa !29
  %t193 = getelementptr %"compiler/lsp:Server", ptr %t191, i32 0, i32 1
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t193)
  store i64 %t195, ptr %l95
  br label %bb30
bb30:
  %t196 = load i64, ptr %l95, !tbaa !24
  store i64 %t196, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t197 = load i64, ptr %l14, !tbaa !24
  %t198 = load i64, ptr %l13, !tbaa !24
  %t201 = icmp sgt i64 %t197, %t198
  br i1 %t201, label %bb31, label %bb32
bb31:
  %t203 = load i64, ptr %l15, !tbaa !24
  %t205 = icmp sgt i64 %t203, 0
  br i1 %t205, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l99, !tbaa !24
  br label %bb36
bb33:
  %t207 = load i64, ptr %l14, !tbaa !24
  %t208 = load i64, ptr %l13, !tbaa !24
  %t211 = sub i64 %t207, %t208
  %t212 = load i64, ptr %l15, !tbaa !24
  %t215 = add i64 %t211, %t212
  %t217 = sub i64 %t215, 1
  %t218 = load i64, ptr %l15, !tbaa !24
  %t221 = sdiv i64 %t217, %t218
  store i64 %t221, ptr %l102, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l102, !tbaa !24
  br label %bb35
bb35:
  %t223 = load i64, ptr %l102, !tbaa !24
  store i64 %t223, ptr %l99, !tbaa !24
  br label %bb36
bb36:
  %t224 = load i64, ptr %l99, !tbaa !24
  store i64 %t224, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb37
bb37:
  %t225 = load i64, ptr %l17, !tbaa !24
  %t226 = load i64, ptr %l16, !tbaa !24
  %t229 = icmp slt i64 %t225, %t226
  %t231 = xor i1 %t229, true
  br i1 %t231, label %bb38, label %bb39
bb38:
  br label %bb59
bb39:
  br label %bb40
bb40:
  %t233 = load i64, ptr %l13, !tbaa !24
  %t234 = load i64, ptr %l17, !tbaa !24
  %t235 = load i64, ptr %l15, !tbaa !24
  %t238 = mul i64 %t234, %t235
  %t241 = add i64 %t233, %t238
  store i64 %t241, ptr %l18, !tbaa !24
  %t243 = load i64, ptr %l18, !tbaa !24
  %t244 = load i64, ptr %l1, !tbaa !24
  %t247 = icmp ne i64 %t243, %t244
  br i1 %t247, label %bb41, label %bb42
bb41:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t251 = getelementptr %"compiler/lsp:worker", ptr %t249, i32 0, i32 0
  %t252 = load ptr, ptr %t251, !tbaa !29
  %t254 = getelementptr %"compiler/lsp:Server", ptr %t252, i32 0, i32 1
  %t255 = load i64, ptr %l18, !tbaa !24
  %t258 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t254, i64 %t255)
  store ptr %t258, ptr %l128
  br label %bb43
bb42:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb44
bb43:
  %t259 = load ptr, ptr %l128, !tbaa !29
  %t261 = getelementptr %"compiler/lsp:Doc", ptr %t259, i32 0, i32 4
  %t262 = load i1, ptr %t261, !tbaa !21
  store i1 %t262, ptr %l123, !tbaa !21
  br label %bb44
bb44:
  %t264 = load i1, ptr %l123, !tbaa !21
  br i1 %t264, label %bb45, label %bb46
bb45:
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/lsp:worker", ptr %t265, i32 0, i32 0
  %t268 = load ptr, ptr %t267, !tbaa !29
  %t270 = getelementptr %"compiler/lsp:Server", ptr %t268, i32 0, i32 1
  %t271 = load i64, ptr %l18, !tbaa !24
  %t274 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t270, i64 %t271)
  store ptr %t274, ptr %l136
  br label %bb47
bb46:
  store i1 false, ptr %l131, !tbaa !21
  br label %bb49
bb47:
  %t275 = load ptr, ptr %l136, !tbaa !29
  %t277 = getelementptr %"compiler/lsp:Doc", ptr %t275, i32 0, i32 2
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  %t279 = load ptr, ptr %l12, !tbaa !29
  %t281 = getelementptr %"compiler/load:Module", ptr %t279, i32 0, i32 1
  %t282 = load { i64, ptr }, ptr %t281, !tbaa !27
  %t285 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v0, { i64, ptr } %t278, { i64, ptr } %t282)
  store i1 %t285, ptr %l141
  br label %bb48
bb48:
  %t286 = load i1, ptr %l141, !tbaa !21
  store i1 %t286, ptr %l131, !tbaa !21
  br label %bb49
bb49:
  %t287 = load i1, ptr %l131, !tbaa !21
  br i1 %t287, label %bb50, label %bb51
bb50:
  store %olang.scope zeroinitializer, ptr %s7
  %t288 = load i1, ptr %l9, !tbaa !21
  %t290 = xor i1 %t288, true
  br i1 %t290, label %bb52, label %bb53
bb51:
  br label %bb57
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l8, i8 44)
  br label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb55
bb55:
  store i1 false, ptr %l9, !tbaa !21
  %t293 = load i64, ptr %l18, !tbaa !24
  %t295 = call i64 @__olang_fmt_i64(ptr null, i64 %t293)
  %t296 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t295)
  %t297 = call i64 @__olang_fmt_i64(ptr %t296, i64 %t293)
  %t298 = insertvalue { i64, ptr } undef, i64 %t295, 0
  %t299 = insertvalue { i64, ptr } %t298, ptr %t296, 1
  %t301 = extractvalue { i64, ptr } %t299, 0
  %t302 = extractvalue { i64, ptr } %t299, 1
  %t303 = mul i64 %t301, 1
  %t304 = call ptr @__olang_scope_alloc(ptr %s7, i64 %t303)
  call void @llvm.memcpy.p0.p0.i64(ptr %t304, ptr %t302, i64 %t303, i1 false)
  %t305 = insertvalue { i64, ptr } undef, i64 %t301, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s7, ptr %l8, { i64, ptr } %t306)
  br label %bb56
bb56:
  call void @__olang_scope_close(ptr %s7)
  br label %bb57
bb57:
  br label %bb58
bb58:
  %t309 = load i64, ptr %l17, !tbaa !24
  %t311 = add i64 %t309, 1
  store i64 %t311, ptr %l17, !tbaa !24
  br label %bb37
bb59:
  br label %bb60
bb60:
  %t313 = load i64, ptr %l11, !tbaa !24
  %t315 = add i64 %t313, 1
  store i64 %t315, ptr %l11, !tbaa !24
  br label %bb24
bb61:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d95, i32 0, i32 1) })
  br label %bb62
bb62:
  store i64 0, ptr %l19, !tbaa !24
  %t319 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l7)
  store i64 %t319, ptr %l155
  br label %bb63
bb63:
  %t320 = load i64, ptr %l155, !tbaa !24
  store i64 %t320, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t321 = load i64, ptr %l20, !tbaa !24
  %t322 = load i64, ptr %l19, !tbaa !24
  %t325 = icmp sgt i64 %t321, %t322
  br i1 %t325, label %bb64, label %bb65
bb64:
  %t327 = load i64, ptr %l21, !tbaa !24
  %t329 = icmp sgt i64 %t327, 0
  br i1 %t329, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l159, !tbaa !24
  br label %bb69
bb66:
  %t331 = load i64, ptr %l20, !tbaa !24
  %t332 = load i64, ptr %l19, !tbaa !24
  %t335 = sub i64 %t331, %t332
  %t336 = load i64, ptr %l21, !tbaa !24
  %t339 = add i64 %t335, %t336
  %t341 = sub i64 %t339, 1
  %t342 = load i64, ptr %l21, !tbaa !24
  %t345 = sdiv i64 %t341, %t342
  store i64 %t345, ptr %l162, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l162, !tbaa !24
  br label %bb68
bb68:
  %t347 = load i64, ptr %l162, !tbaa !24
  store i64 %t347, ptr %l159, !tbaa !24
  br label %bb69
bb69:
  %t348 = load i64, ptr %l159, !tbaa !24
  store i64 %t348, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb70
bb70:
  %t349 = load i64, ptr %l23, !tbaa !24
  %t350 = load i64, ptr %l22, !tbaa !24
  %t353 = icmp slt i64 %t349, %t350
  %t355 = xor i1 %t353, true
  br i1 %t355, label %bb71, label %bb72
bb71:
  br label %bb81
bb72:
  br label %bb73
bb73:
  %t357 = load i64, ptr %l19, !tbaa !24
  %t358 = load i64, ptr %l23, !tbaa !24
  %t359 = load i64, ptr %l21, !tbaa !24
  %t362 = mul i64 %t358, %t359
  %t365 = add i64 %t357, %t362
  store i64 %t365, ptr %l24, !tbaa !24
  %t367 = load i64, ptr %l24, !tbaa !24
  %t369 = icmp sgt i64 %t367, 0
  br i1 %t369, label %bb74, label %bb75
bb74:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l8, i8 44)
  br label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb77
bb77:
  store ptr %l8, ptr %l183, !tbaa !29
  %t372 = load i64, ptr %l24, !tbaa !24
  %t375 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l7, i64 %t372)
  store { i64, ptr } %t375, ptr %l186
  br label %bb78
bb78:
  %t376 = load ptr, ptr %l183, !tbaa !29
  %t377 = load { i64, ptr }, ptr %l186, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %t376, { i64, ptr } %t377)
  br label %bb79
bb79:
  br label %bb80
bb80:
  %t378 = load i64, ptr %l23, !tbaa !24
  %t380 = add i64 %t378, 1
  store i64 %t380, ptr %l23, !tbaa !24
  br label %bb70
bb81:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l8, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d96, i32 0, i32 1) })
  br label %bb82
bb82:
  %t383 = load ptr, ptr %l0, !tbaa !29
  store ptr %t383, ptr %l190, !tbaa !29
  %t385 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l8)
  store { i64, ptr } %t385, ptr %l192
  br label %bb83
bb83:
  %t386 = load { i64, ptr }, ptr %l192, !tbaa !27
  %t387 = extractvalue { i64, ptr } %t386, 0
  %t388 = extractvalue { i64, ptr } %t386, 1
  %t389 = mul i64 %t387, 1
  %t390 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t389)
  call void @llvm.memcpy.p0.p0.i64(ptr %t390, ptr %t388, i64 %t389, i1 false)
  %t391 = insertvalue { i64, ptr } undef, i64 %t387, 0
  %t392 = insertvalue { i64, ptr } %t391, ptr %t390, 1
  %t393 = load ptr, ptr %l190, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t393, { i64, ptr } %t392)
  br label %bb84
bb84:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ecomplete(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, { i64, ptr } %a1, ptr %a2, { i64, ptr } %a3, i64 %a4, ptr %a5, ptr %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca %"compiler/session:Items"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l14 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l20 = alloca i1
  %l21 = alloca { i64, ptr }
  %l25 = alloca i1
  %l29 = alloca %"compiler/session:Items"
  %l32 = alloca i1
  %l33 = alloca { i64, ptr }
  %l45 = alloca i1
  %l46 = alloca { i64, ptr }
  %l49 = alloca i1
  %l53 = alloca { i64, ptr }
  %l54 = alloca i64
  %l55 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l71 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l74 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l75 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l77 = alloca %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15"
  %l78 = alloca i32
  %l80 = alloca i1
  %l81 = alloca ptr
  %l82 = alloca i64
  %l86 = alloca { i64, ptr }
  %l87 = alloca i64
  %l92 = alloca ptr
  %l93 = alloca i64
  %l105 = alloca ptr
  %l117 = alloca ptr
  %l123 = alloca ptr
  %l124 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store ptr %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l4, !tbaa !24
  store i64 %t1, ptr %l7, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l7, !tbaa !24
  %t5 = icmp sgt i64 %t3, 0
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t7, ptr %l21, !tbaa !27
  %t8 = load i64, ptr %l7, !tbaa !24
  %t10 = sub i64 %t8, 1
  %t12 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i8, ptr %t13, i64 %t10
  %t15 = load i8, ptr %t14, !tbaa !32
  %t17 = call i1 @compiler_2fsession_2eWordChar(i8 %t15)
  store i1 %t17, ptr %l25
  br label %bb4
bb3:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb5
bb4:
  %t18 = load i1, ptr %l25, !tbaa !21
  store i1 %t18, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l20, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb6, label %bb7
bb6:
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t22 = load i64, ptr %l7, !tbaa !24
  %t24 = sub i64 %t22, 1
  store i64 %t24, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  br label %bb1
bb10:
  %t26 = call %"compiler/session:Items" @compiler_2fsession_3aItems_2ector(ptr %s0)
  store %"compiler/session:Items" %t26, ptr %l29
  br label %bb11
bb11:
  %t27 = load %"compiler/session:Items", ptr %l29
  store %"compiler/session:Items" %t27, ptr %l8
  %t28 = load i64, ptr %l7, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb12, label %bb13
bb12:
  %t32 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t32, ptr %l33, !tbaa !27
  %t33 = load i64, ptr %l7, !tbaa !24
  %t35 = sub i64 %t33, 1
  %t37 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr i8, ptr %t38, i64 %t35
  %t40 = load i8, ptr %t39, !tbaa !32
  %t42 = icmp eq i8 %t40, 46
  store i1 %t42, ptr %l32, !tbaa !21
  br label %bb14
bb13:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb14
bb14:
  %t44 = load i1, ptr %l32, !tbaa !21
  br i1 %t44, label %bb15, label %bb16
bb15:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load i64, ptr %l7, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l9, !tbaa !24
  %t49 = load i64, ptr %l4, !tbaa !24
  store i64 %t49, ptr %l10, !tbaa !24
  br label %bb17
bb16:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/lsp:Doc", ptr %t51, i32 0, i32 1
  %t54 = load { i64, ptr }, ptr %t53, !tbaa !27
  %t55 = load ptr, ptr %l5, !tbaa !29
  %t56 = load ptr, ptr %l6, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/lsp:worker", ptr %t57, i32 0, i32 4
  %t64 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v2, ptr %v4, ptr %v5, ptr %v0, ptr %v4, { i64, ptr } %t54, ptr %t55, ptr %t56, ptr %t59, i1 true)
  store ptr %t64, ptr %l117
  br label %bb58
bb17:
  %t65 = load i64, ptr %l10, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  %t71 = icmp slt i64 %t65, %t68
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t73, ptr %l46, !tbaa !27
  %t74 = load i64, ptr %l10, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i8, ptr %t77, i64 %t74
  %t79 = load i8, ptr %t78, !tbaa !32
  %t81 = call i1 @compiler_2fsession_2eWordChar(i8 %t79)
  store i1 %t81, ptr %l49
  br label %bb20
bb19:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb21
bb20:
  %t82 = load i1, ptr %l49, !tbaa !21
  store i1 %t82, ptr %l45, !tbaa !21
  br label %bb21
bb21:
  %t83 = load i1, ptr %l45, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  br label %bb24
bb24:
  %t86 = load i64, ptr %l10, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l10, !tbaa !24
  br label %bb25
bb25:
  br label %bb17
bb26:
  %t90 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t90, ptr %l53, !tbaa !27
  %t91 = load i64, ptr %l9, !tbaa !24
  store i64 %t91, ptr %l54, !tbaa !24
  %t92 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t92, 0
  store i64 %t93, ptr %l55, !tbaa !24
  %t94 = icmp sge i64 0, 0
  br i1 %t94, label %bb27, label %bb28
bb27:
  %t96 = load i64, ptr %l54, !tbaa !24
  %t97 = icmp sle i64 0, %t96
  br i1 %t97, label %bb29, label %bb30
bb28:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb29:
  %t99 = load i64, ptr %l54, !tbaa !24
  %t100 = load i64, ptr %l55, !tbaa !24
  %t101 = icmp sle i64 %t99, %t100
  br i1 %t101, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb31:
  %t103 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t104 = load ptr, ptr %t103, !tbaa !27
  %t105 = load i64, ptr %l54, !tbaa !24
  %t106 = getelementptr i8, ptr %t104, i64 0
  %t107 = sub i64 %t105, 0
  %t108 = insertvalue { i64, ptr } undef, i64 %t107, 0
  %t109 = insertvalue { i64, ptr } %t108, ptr %t106, 1
  store { i64, ptr } %t109, ptr %l59, !tbaa !27
  %t110 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t110, ptr %l60, !tbaa !27
  %t111 = load i64, ptr %l10, !tbaa !24
  store i64 %t111, ptr %l61, !tbaa !24
  %t112 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t112, 0
  store i64 %t115, ptr %l64, !tbaa !24
  %t116 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t117 = extractvalue { i64, ptr } %t116, 0
  store i64 %t117, ptr %l65, !tbaa !24
  %t118 = load i64, ptr %l61, !tbaa !24
  %t119 = icmp sge i64 %t118, 0
  br i1 %t119, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb33:
  %t121 = load i64, ptr %l61, !tbaa !24
  %t122 = load i64, ptr %l64, !tbaa !24
  %t123 = icmp sle i64 %t121, %t122
  br i1 %t123, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb35:
  %t125 = load i64, ptr %l64, !tbaa !24
  %t126 = load i64, ptr %l65, !tbaa !24
  %t127 = icmp sle i64 %t125, %t126
  br i1 %t127, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb37:
  %t129 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = load i64, ptr %l61, !tbaa !24
  %t132 = load i64, ptr %l64, !tbaa !24
  %t133 = getelementptr i8, ptr %t130, i64 %t131
  %t134 = sub i64 %t132, %t131
  %t135 = insertvalue { i64, ptr } undef, i64 %t134, 0
  %t136 = insertvalue { i64, ptr } %t135, ptr %t133, 1
  %t137 = load { i64, ptr }, ptr %l59, !tbaa !27
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = extractvalue { i64, ptr } %t137, 0
  %t141 = extractvalue { i64, ptr } %t136, 1
  %t142 = extractvalue { i64, ptr } %t136, 0
  %t143 = add i64 %t139, %t142
  %t144 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t143)
  call void @olang_textcopy(ptr %t144, ptr %t138, i64 %t139)
  %t145 = getelementptr i8, ptr %t144, i64 %t139
  call void @olang_textcopy(ptr %t145, ptr %t141, i64 %t142)
  %t146 = insertvalue { i64, ptr } undef, i64 %t143, 0
  %t147 = insertvalue { i64, ptr } %t146, ptr %t144, 1
  store { i64, ptr } %t147, ptr %l11, !tbaa !27
  %t149 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s2)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t149, ptr %l71
  br label %bb39
bb38:
  call void @__olang_check_failed(ptr @olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a)
  unreachable
bb39:
  %t150 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l71
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t150, ptr %l12
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/lsp:worker", ptr %t151, i32 0, i32 4
  %t155 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v0, ptr %v0, ptr %t153)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t155, ptr %l74
  br label %bb40
bb40:
  %t156 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l74
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t156, ptr %l13
  br label %bb41
bb41:
  %t158 = call { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v0, ptr %v0, ptr %l13)
  %t159 = extractvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t158, 1
  %t160 = extractvalue { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } %t158, 0
  store i32 %t160, ptr %l78
  %t161 = icmp ne i32 %t160, 0
  br i1 %t161, label %bb43, label %ok.162, !prof !99
ok.162:
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t159, ptr %l77
  br label %bb42
bb42:
  %t163 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l77
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t163, ptr %l75
  br label %bb45
bb43:
  %t164 = load i32, ptr %l78, !tbaa !23
  %t165 = ashr i32 %t164, 16
  %t167 = icmp eq i32 %t165, 1
  store i1 %t167, ptr %l80, !tbaa !21
  br label %bb44
bb44:
  br label %bb52
bb45:
  %t168 = load %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l75
  store %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" %t168, ptr %l14
  store ptr %l12, ptr %l81, !tbaa !29
  %t169 = ptrtoint ptr %s2 to i64
  store i64 %t169, ptr %l82, !tbaa !24
  %t170 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t170, label %bb46, label %bb47
bb46:
  %t172 = call ptr @__olang_region_make(ptr %s2)
  %t173 = ptrtoint ptr %t172 to i64
  store i64 %t173, ptr %l82, !tbaa !24
  br label %bb47
bb47:
  %t174 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l14, i32 0, i32 0
  %t175 = load { i64, ptr }, ptr %t174, !tbaa !27
  %t177 = extractvalue { i64, ptr } %t175, 1
  %t178 = extractvalue { i64, ptr } %t175, 0
  %t179 = load i64, ptr %l82
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = call ptr @__olang_scope_alloc(ptr %t180, i64 %t178)
  call void @olang_textcopy(ptr %t181, ptr %t177, i64 %t178)
  %t182 = insertvalue { i64, ptr } undef, i64 %t178, 0
  %t183 = insertvalue { i64, ptr } %t182, ptr %t181, 1
  %t185 = load i64, ptr %l82
  %t186 = inttoptr i64 %t185 to ptr
  %t187 = extractvalue { i64, ptr } %t183, 0
  %t188 = extractvalue { i64, ptr } %t183, 1
  %t189 = mul i64 %t187, 1
  %t190 = call ptr @__olang_scope_alloc(ptr %t186, i64 %t189)
  call void @llvm.memcpy.p0.p0.i64(ptr %t190, ptr %t188, i64 %t189, i1 false)
  %t191 = insertvalue { i64, ptr } undef, i64 %t187, 0
  %t192 = insertvalue { i64, ptr } %t191, ptr %t190, 1
  store { i64, ptr } %t192, ptr %l86, !tbaa !27
  %t193 = ptrtoint ptr %s2 to i64
  store i64 %t193, ptr %l87, !tbaa !24
  %t194 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03
  br i1 %t194, label %bb48, label %bb49
bb48:
  %t196 = call ptr @__olang_region_make(ptr %s2)
  %t197 = ptrtoint ptr %t196 to i64
  store i64 %t197, ptr %l87, !tbaa !24
  br label %bb49
bb49:
  %t198 = getelementptr %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15", ptr %l14, i32 0, i32 1
  %t199 = load { i64, ptr }, ptr %t198, !tbaa !27
  %t201 = extractvalue { i64, ptr } %t199, 1
  %t202 = extractvalue { i64, ptr } %t199, 0
  %t203 = load i64, ptr %l87
  %t204 = inttoptr i64 %t203 to ptr
  %t205 = call ptr @__olang_scope_alloc(ptr %t204, i64 %t202)
  call void @olang_textcopy(ptr %t205, ptr %t201, i64 %t202)
  %t206 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t205, 1
  %t209 = load i64, ptr %l87
  %t210 = inttoptr i64 %t209 to ptr
  %t211 = extractvalue { i64, ptr } %t207, 0
  %t212 = extractvalue { i64, ptr } %t207, 1
  %t213 = mul i64 %t211, 1
  %t214 = call ptr @__olang_scope_alloc(ptr %t210, i64 %t213)
  call void @llvm.memcpy.p0.p0.i64(ptr %t214, ptr %t212, i64 %t213, i1 false)
  %t215 = insertvalue { i64, ptr } undef, i64 %t211, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  %t217 = load ptr, ptr %l81, !tbaa !29
  %t218 = load { i64, ptr }, ptr %l86, !tbaa !27
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %s2, ptr %s2, ptr %s2, ptr %t217, { i64, ptr } %t218, { i64, ptr } %t216)
  br label %bb50
bb50:
  br label %bb51
bb51:
  br label %bb41
bb52:
  store ptr %l12, ptr %l92, !tbaa !29
  %t220 = ptrtoint ptr %s2 to i64
  store i64 %t220, ptr %l93, !tbaa !24
  %t221 = load i1, ptr @olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670
  br i1 %t221, label %bb53, label %bb54
bb53:
  %t223 = call ptr @__olang_region_make(ptr %s2)
  %t224 = ptrtoint ptr %t223 to i64
  store i64 %t224, ptr %l93, !tbaa !24
  br label %bb54
bb54:
  %t225 = load ptr, ptr %l2, !tbaa !29
  %t227 = getelementptr %"compiler/lsp:Doc", ptr %t225, i32 0, i32 2
  %t228 = load { i64, ptr }, ptr %t227, !tbaa !27
  %t230 = extractvalue { i64, ptr } %t228, 1
  %t231 = extractvalue { i64, ptr } %t228, 0
  %t232 = load i64, ptr %l93
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = call ptr @__olang_scope_alloc(ptr %t233, i64 %t231)
  call void @olang_textcopy(ptr %t234, ptr %t230, i64 %t231)
  %t235 = insertvalue { i64, ptr } undef, i64 %t231, 0
  %t236 = insertvalue { i64, ptr } %t235, ptr %t234, 1
  %t238 = load i64, ptr %l93
  %t239 = inttoptr i64 %t238 to ptr
  %t240 = extractvalue { i64, ptr } %t236, 0
  %t241 = extractvalue { i64, ptr } %t236, 1
  %t242 = mul i64 %t240, 1
  %t243 = call ptr @__olang_scope_alloc(ptr %t239, i64 %t242)
  call void @llvm.memcpy.p0.p0.i64(ptr %t243, ptr %t241, i64 %t242, i1 false)
  %t244 = insertvalue { i64, ptr } undef, i64 %t240, 0
  %t245 = insertvalue { i64, ptr } %t244, ptr %t243, 1
  %t246 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t247 = load ptr, ptr %l92, !tbaa !29
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %s2, ptr %s2, ptr %s2, ptr %t247, { i64, ptr } %t245, { i64, ptr } %t246)
  br label %bb55
bb55:
  %t250 = load ptr, ptr %l2, !tbaa !29
  %t252 = getelementptr %"compiler/lsp:Doc", ptr %t250, i32 0, i32 1
  %t253 = load { i64, ptr }, ptr %t252, !tbaa !27
  %t254 = load ptr, ptr %l5, !tbaa !29
  %t255 = load ptr, ptr %l6, !tbaa !29
  %t260 = call ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v2, ptr %v4, ptr %v5, ptr %s2, ptr %v4, { i64, ptr } %t253, ptr %t254, ptr %t255, ptr %l12, i1 true)
  store ptr %t260, ptr %l105
  br label %bb56
bb56:
  %t261 = load ptr, ptr %l105, !tbaa !29
  %t263 = load ptr, ptr %l2, !tbaa !29
  %t265 = getelementptr %"compiler/lsp:Doc", ptr %t263, i32 0, i32 2
  %t266 = load { i64, ptr }, ptr %t265, !tbaa !27
  %t267 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eMembers(ptr %v4, ptr %s0, ptr %v2, ptr %t261, ptr %l8, { i64, ptr } %t266, i64 %t267)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s2)
  br label %bb60
bb58:
  %t272 = load ptr, ptr %l117, !tbaa !29
  %t274 = load ptr, ptr %l2, !tbaa !29
  %t276 = getelementptr %"compiler/lsp:Doc", ptr %t274, i32 0, i32 2
  %t277 = load { i64, ptr }, ptr %t276, !tbaa !27
  %t278 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eNames(ptr %v4, ptr %s0, ptr %v2, ptr %t272, ptr %l8, { i64, ptr } %t277, i64 %t278)
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t283 = load ptr, ptr %l0, !tbaa !29
  store ptr %t283, ptr %l123, !tbaa !29
  store { i64, ptr } %a1, ptr %l124, !tbaa !27
  %t285 = getelementptr %"compiler/session:Items", ptr %l8, i32 0, i32 0
  %t287 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %t285)
  store { i64, ptr } %t287, ptr %l126
  br label %bb61
bb61:
  %t288 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t289 = extractvalue { i64, ptr } { i64 31, ptr getelementptr inbounds (<{ i64, [31 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  %t290 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t291 = extractvalue { i64, ptr } %t290, 1
  %t292 = extractvalue { i64, ptr } %t290, 0
  %t293 = add i64 %t289, %t292
  %t294 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t295 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  %t296 = add i64 %t293, %t295
  %t297 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t296)
  call void @olang_textcopy(ptr %t297, ptr %t288, i64 %t289)
  %t298 = getelementptr i8, ptr %t297, i64 %t289
  call void @olang_textcopy(ptr %t298, ptr %t291, i64 %t292)
  %t299 = getelementptr i8, ptr %t298, i64 %t292
  call void @olang_textcopy(ptr %t299, ptr %t294, i64 %t295)
  %t300 = insertvalue { i64, ptr } undef, i64 %t296, 0
  %t301 = insertvalue { i64, ptr } %t300, ptr %t297, 1
  %t303 = extractvalue { i64, ptr } %t301, 0
  %t304 = extractvalue { i64, ptr } %t301, 1
  %t305 = mul i64 %t303, 1
  %t306 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t305)
  call void @llvm.memcpy.p0.p0.i64(ptr %t306, ptr %t304, i64 %t305, i1 false)
  %t307 = insertvalue { i64, ptr } undef, i64 %t303, 0
  %t308 = insertvalue { i64, ptr } %t307, ptr %t306, 1
  %t309 = load { i64, ptr }, ptr %l124, !tbaa !27
  %t311 = call { i64, ptr } @compiler_2flsp_2ereply(ptr %v1, ptr %s0, ptr %s0, { i64, ptr } %t309, { i64, ptr } %t308)
  store { i64, ptr } %t311, ptr %l129
  br label %bb62
bb62:
  %t312 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t313 = extractvalue { i64, ptr } %t312, 0
  %t314 = extractvalue { i64, ptr } %t312, 1
  %t315 = mul i64 %t313, 1
  %t316 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t315)
  call void @llvm.memcpy.p0.p0.i64(ptr %t316, ptr %t314, i64 %t315, i1 false)
  %t317 = insertvalue { i64, ptr } undef, i64 %t313, 0
  %t318 = insertvalue { i64, ptr } %t317, ptr %t316, 1
  %t319 = load ptr, ptr %l123, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t319, { i64, ptr } %t318)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2edeprecations(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"compiler/session:Positions"
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"compiler/session:Use"
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca %"compiler/session:Use"
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l21 = alloca %"compiler/session:Positions"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca i64
  %l33 = alloca %"compiler/session:Use"
  %l35 = alloca i64
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca i64
  %l55 = alloca i64
  %l60 = alloca %"compiler/session:Use"
  %l62 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = ptrtoint ptr %s0 to i64
  store i64 %t1, ptr %l11, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aPositions_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %s0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = load i64, ptr %l11
  %t10 = inttoptr i64 %t9 to ptr
  %t14 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v2, ptr %v3, ptr %t10, ptr %t6, ptr %t7, { i64, ptr } %t8)
  store { i64, ptr } %t14, ptr %l16
  br label %bb3
bb3:
  %t15 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t16 = load i64, ptr %l11
  %t17 = inttoptr i64 %t16 to ptr
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = extractvalue { i64, ptr } %t15, 1
  %t20 = mul i64 %t18, 1
  %t21 = call ptr @__olang_scope_alloc(ptr %t17, i64 %t20)
  call void @llvm.memcpy.p0.p0.i64(ptr %t21, ptr %t19, i64 %t20, i1 false)
  %t22 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t21, 1
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:worker", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/lsp:Server", ptr %t27, i32 0, i32 2
  %t30 = load i1, ptr %t29, !tbaa !21
  %t33 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s0, ptr %s0, { i64, ptr } %t23, i1 %t30)
  store %"compiler/session:Positions" %t33, ptr %l21
  br label %bb4
bb4:
  %t34 = load %"compiler/session:Positions", ptr %l21
  store %"compiler/session:Positions" %t34, ptr %l4
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t36 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eDeprecatedUses(ptr %v2, ptr %v3, ptr %s1, ptr %t35, { i64, ptr } %t36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l24
  br label %bb5
bb5:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  %t41 = call ptr @__olang_scope_alloc_a(ptr %s1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %t41
  store ptr %t41, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s2
  %t43 = load i64, ptr %l6, !tbaa !24
  store i64 %t43, ptr %l26, !tbaa !24
  %t44 = load ptr, ptr %l5, !tbaa !29
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eLen_3ccompiler_2fsession_3aUse_3e(ptr %s1, ptr %t44)
  store i64 %t46, ptr %l28
  br label %bb7
bb7:
  %t47 = load i64, ptr %l26, !tbaa !24
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb23
bb9:
  br label %bb10
bb10:
  %t53 = load ptr, ptr %l5, !tbaa !29
  %t54 = load i64, ptr %l6, !tbaa !24
  %t57 = call %"compiler/session:Use" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eAt_3ccompiler_2fsession_3aUse_3e(ptr %s1, ptr %s1, ptr %t53, i64 %t54)
  store %"compiler/session:Use" %t57, ptr %l33
  br label %bb11
bb11:
  %t58 = load %"compiler/session:Use", ptr %l33
  store %"compiler/session:Use" %t58, ptr %l7
  %t59 = load ptr, ptr %l1, !tbaa !29
  %t61 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v1, ptr %t59)
  store i64 %t61, ptr %l35
  br label %bb12
bb12:
  %t62 = load i64, ptr %l35, !tbaa !24
  %t63 = icmp sgt i64 %t62, 0
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t65, i8 44)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  %t67 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t67, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d99, i32 0, i32 1) })
  br label %bb17
bb17:
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr %"compiler/session:Use", ptr %l7, i32 0, i32 0
  %t71 = load i64, ptr %t70, !tbaa !24
  %t72 = getelementptr %"compiler/session:Use", ptr %l7, i32 0, i32 1
  %t73 = load i64, ptr %t72, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %v1, ptr %l4, ptr %t69, i64 %t71, i64 %t73)
  br label %bb18
bb18:
  %t78 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s2, ptr %t78, { i64, ptr } { i64 52, ptr getelementptr inbounds (<{ i64, [52 x i8] }>, ptr @.d100, i32 0, i32 1) })
  br label %bb19
bb19:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t81 = getelementptr %"compiler/session:Use", ptr %l7, i32 0, i32 2
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %s1, ptr %t80, { i64, ptr } %t82)
  br label %bb20
bb20:
  %t85 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t85, i8 125)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb22
bb22:
  %t87 = load i64, ptr %l6, !tbaa !24
  %t89 = add i64 %t87, 1
  store i64 %t89, ptr %l6, !tbaa !24
  br label %bb6
bb23:
  call void @__olang_scope_close(ptr %s1)
  store %olang.scope zeroinitializer, ptr %s5
  %t91 = load ptr, ptr %l2, !tbaa !29
  %t92 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2ePlaced(ptr %v2, ptr %v3, ptr %s5, ptr %t91, { i64, ptr } %t92)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l51
  br label %bb24
bb24:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  %t97 = call ptr @__olang_scope_alloc_a(ptr %s5, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %t97
  store ptr %t97, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s6
  %t99 = load i64, ptr %l9, !tbaa !24
  store i64 %t99, ptr %l53, !tbaa !24
  %t100 = load ptr, ptr %l8, !tbaa !29
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eLen_3ccompiler_2fsession_3aUse_3e(ptr %s5, ptr %t100)
  store i64 %t102, ptr %l55
  br label %bb26
bb26:
  %t103 = load i64, ptr %l53, !tbaa !24
  %t104 = load i64, ptr %l55, !tbaa !24
  %t105 = icmp slt i64 %t103, %t104
  %t107 = xor i1 %t105, true
  br i1 %t107, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s6)
  br label %bb42
bb28:
  br label %bb29
bb29:
  %t109 = load ptr, ptr %l8, !tbaa !29
  %t110 = load i64, ptr %l9, !tbaa !24
  %t113 = call %"compiler/session:Use" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eAt_3ccompiler_2fsession_3aUse_3e(ptr %s5, ptr %s5, ptr %t109, i64 %t110)
  store %"compiler/session:Use" %t113, ptr %l60
  br label %bb30
bb30:
  %t114 = load %"compiler/session:Use", ptr %l60
  store %"compiler/session:Use" %t114, ptr %l10
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v1, ptr %t115)
  store i64 %t117, ptr %l62
  br label %bb31
bb31:
  %t118 = load i64, ptr %l62, !tbaa !24
  %t119 = icmp sgt i64 %t118, 0
  br i1 %t119, label %bb32, label %bb33
bb32:
  %t121 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t121, i8 44)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  %t123 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t123, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d101, i32 0, i32 1) })
  br label %bb36
bb36:
  %t125 = load ptr, ptr %l1, !tbaa !29
  %t126 = getelementptr %"compiler/session:Use", ptr %l10, i32 0, i32 0
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = getelementptr %"compiler/session:Use", ptr %l10, i32 0, i32 1
  %t129 = load i64, ptr %t128, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %s0, ptr %v1, ptr %l4, ptr %t125, i64 %t127, i64 %t129)
  br label %bb37
bb37:
  %t134 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s6, ptr %t134, { i64, ptr } { i64 54, ptr getelementptr inbounds (<{ i64, [54 x i8] }>, ptr @.d102, i32 0, i32 1) })
  br label %bb38
bb38:
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t137 = getelementptr %"compiler/session:Use", ptr %l10, i32 0, i32 2
  %t138 = load { i64, ptr }, ptr %t137, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %s5, ptr %t136, { i64, ptr } %t138)
  br label %bb39
bb39:
  %t141 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t141, i8 125)
  br label %bb40
bb40:
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb41:
  %t143 = load i64, ptr %l9, !tbaa !24
  %t145 = add i64 %t143, 1
  store i64 %t145, ptr %l9, !tbaa !24
  br label %bb25
bb42:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ediagnostic(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %v5, ptr %a0, ptr %a1, ptr %a2, ptr %a3, ptr %a4, i64 %a5, { i64, ptr } %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l7 = alloca %"compiler/diag:Item"
  %l8 = alloca %"compiler/session:Positions"
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca %"compiler/diag:Item"
  %l17 = alloca { i64, ptr }
  %l18 = alloca %"compiler/session:Positions"
  %l21 = alloca %"compiler/diag:Item"
  %l22 = alloca i64
  %l27 = alloca { i64, ptr }
  %l32 = alloca %"compiler/session:Positions"
  %l40 = alloca i1
  %l48 = alloca %"std/prelude/text:StringBuilder"
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l79 = alloca %"compiler/diag:Item"
  %l82 = alloca i64
  %l87 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l93 = alloca i64
  %l98 = alloca { i64, ptr }
  %l103 = alloca %"compiler/session:Positions"
  %l105 = alloca ptr
  %l108 = alloca { i64, ptr }
  %l122 = alloca i64
  %l124 = alloca ptr
  %l126 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  store { i64, ptr } %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l4, !tbaa !29
  %t2 = load i64, ptr %l5, !tbaa !24
  %t5 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v4, ptr %v4, ptr %t1, i64 %t2)
  store %"compiler/diag:Item" %t5, ptr %l21
  br label %bb1
bb1:
  %t6 = load %"compiler/diag:Item", ptr %l21
  store %"compiler/diag:Item" %t6, ptr %l7
  %t7 = ptrtoint ptr %s0 to i64
  store i64 %t7, ptr %l22, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aPositions_2e0
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = call ptr @__olang_region_make(ptr %s0)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l22, !tbaa !24
  br label %bb3
bb3:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load ptr, ptr %l2, !tbaa !29
  %t14 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t15 = load i64, ptr %l22
  %t16 = inttoptr i64 %t15 to ptr
  %t20 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v2, ptr %v5, ptr %t16, ptr %t12, ptr %t13, { i64, ptr } %t14)
  store { i64, ptr } %t20, ptr %l27
  br label %bb4
bb4:
  %t21 = load { i64, ptr }, ptr %l27, !tbaa !27
  %t22 = load i64, ptr %l22
  %t23 = inttoptr i64 %t22 to ptr
  %t24 = extractvalue { i64, ptr } %t21, 0
  %t25 = extractvalue { i64, ptr } %t21, 1
  %t26 = mul i64 %t24, 1
  %t27 = call ptr @__olang_scope_alloc(ptr %t23, i64 %t26)
  call void @llvm.memcpy.p0.p0.i64(ptr %t27, ptr %t25, i64 %t26, i1 false)
  %t28 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t29 = insertvalue { i64, ptr } %t28, ptr %t27, 1
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/lsp:worker", ptr %t30, i32 0, i32 0
  %t33 = load ptr, ptr %t32, !tbaa !29
  %t35 = getelementptr %"compiler/lsp:Server", ptr %t33, i32 0, i32 2
  %t36 = load i1, ptr %t35, !tbaa !21
  %t39 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s0, ptr %s0, { i64, ptr } %t29, i1 %t36)
  store %"compiler/session:Positions" %t39, ptr %l32
  br label %bb5
bb5:
  %t40 = load %"compiler/session:Positions", ptr %l32
  store %"compiler/session:Positions" %t40, ptr %l8
  %t41 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t41, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d103, i32 0, i32 1) })
  br label %bb6
bb6:
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2erangeOf(ptr %v0, ptr %v1, ptr %s0, ptr %v4, ptr %t43, ptr %t44, ptr %l8, ptr %l7)
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t49, { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d104, i32 0, i32 1) })
  br label %bb8
bb8:
  %t51 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  %t54 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v4, ptr %s0, { i64, ptr } %t52, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d105, i32 0, i32 1) })
  store i1 %t54, ptr %l40
  br label %bb9
bb9:
  %t55 = load i1, ptr %l40, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb10, label %bb11
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t58 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s1, ptr %t58, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d106, i32 0, i32 1) })
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t61 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 1
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %v4, ptr %t60, { i64, ptr } %t62)
  br label %bb13
bb13:
  call void @__olang_scope_close(ptr %s1)
  br label %bb14
bb14:
  %t65 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t65, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d107, i32 0, i32 1) })
  br label %bb15
bb15:
  %t67 = load ptr, ptr %l1, !tbaa !29
  %t68 = getelementptr %"compiler/diag:Item", ptr %l7, i32 0, i32 6
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %v1, ptr %v4, ptr %t67, { i64, ptr } %t69)
  br label %bb16
bb16:
  %t72 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t72, ptr %l48
  br label %bb17
bb17:
  %t73 = load %"std/prelude/text:StringBuilder", ptr %l48
  store %"std/prelude/text:StringBuilder" %t73, ptr %l9
  %t74 = load i64, ptr %l5, !tbaa !24
  %t76 = add i64 %t74, 1
  store i64 %t76, ptr %l10, !tbaa !24
  %t78 = load ptr, ptr %l4, !tbaa !29
  %t80 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %v4, ptr %t78)
  store i64 %t80, ptr %l52
  br label %bb18
bb18:
  %t81 = load i64, ptr %l52, !tbaa !24
  store i64 %t81, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l11, !tbaa !24
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = icmp sgt i64 %t82, %t83
  br i1 %t86, label %bb19, label %bb20
bb19:
  %t88 = load i64, ptr %l12, !tbaa !24
  %t90 = icmp sgt i64 %t88, 0
  br i1 %t90, label %bb21, label %bb22
bb20:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb24
bb21:
  %t92 = load i64, ptr %l11, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t96 = sub i64 %t92, %t93
  %t97 = load i64, ptr %l12, !tbaa !24
  %t100 = add i64 %t96, %t97
  %t102 = sub i64 %t100, 1
  %t103 = load i64, ptr %l12, !tbaa !24
  %t106 = sdiv i64 %t102, %t103
  store i64 %t106, ptr %l59, !tbaa !24
  br label %bb23
bb22:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb23
bb23:
  %t108 = load i64, ptr %l59, !tbaa !24
  store i64 %t108, ptr %l56, !tbaa !24
  br label %bb24
bb24:
  %t109 = load i64, ptr %l56, !tbaa !24
  store i64 %t109, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb25
bb25:
  store %olang.scope zeroinitializer, ptr %s3
  %t110 = load i64, ptr %l14, !tbaa !24
  %t111 = load i64, ptr %l13, !tbaa !24
  %t114 = icmp slt i64 %t110, %t111
  %t116 = xor i1 %t114, true
  br i1 %t116, label %bb26, label %bb27
bb26:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb27:
  br label %bb28
bb28:
  %t118 = load i64, ptr %l10, !tbaa !24
  %t119 = load i64, ptr %l14, !tbaa !24
  %t120 = load i64, ptr %l12, !tbaa !24
  %t123 = mul i64 %t119, %t120
  %t126 = add i64 %t118, %t123
  %t128 = load ptr, ptr %l4, !tbaa !29
  %t132 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v4, ptr %v4, ptr %t128, i64 %t126)
  store %"compiler/diag:Item" %t132, ptr %l79
  br label %bb29
bb29:
  %t133 = load %"compiler/diag:Item", ptr %l79
  store %"compiler/diag:Item" %t133, ptr %l16
  %t134 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 0
  %t135 = load i1, ptr %t134, !tbaa !21
  br i1 %t135, label %bb30, label %bb31
bb30:
  call void @__olang_scope_close(ptr %s3)
  br label %bb55
bb31:
  br label %bb32
bb32:
  %t138 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l9)
  store i64 %t138, ptr %l82
  br label %bb33
bb33:
  %t139 = load i64, ptr %l82, !tbaa !24
  %t140 = icmp sgt i64 %t139, 0
  br i1 %t140, label %bb34, label %bb35
bb34:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 44)
  br label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb37
bb37:
  %t143 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 2
  %t144 = load i64, ptr %t143, !tbaa !24
  %t146 = icmp sge i64 %t144, 0
  br i1 %t146, label %bb38, label %bb39
bb38:
  %t148 = load ptr, ptr %l2, !tbaa !29
  %t149 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 2
  %t150 = load i64, ptr %t149, !tbaa !24
  %t153 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v2, ptr %s3, ptr %t148, i64 %t150)
  store { i64, ptr } %t153, ptr %l90
  br label %bb40
bb39:
  %t154 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t156 = extractvalue { i64, ptr } %t154, 1
  %t157 = extractvalue { i64, ptr } %t154, 0
  %t158 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t157)
  call void @olang_textcopy(ptr %t158, ptr %t156, i64 %t157)
  %t159 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t160 = insertvalue { i64, ptr } %t159, ptr %t158, 1
  store { i64, ptr } %t160, ptr %l87, !tbaa !27
  br label %bb41
bb40:
  %t162 = load { i64, ptr }, ptr %l90, !tbaa !27
  store { i64, ptr } %t162, ptr %l87, !tbaa !27
  br label %bb41
bb41:
  %t163 = load { i64, ptr }, ptr %l87, !tbaa !27
  store { i64, ptr } %t163, ptr %l17, !tbaa !27
  %t164 = ptrtoint ptr %s3 to i64
  store i64 %t164, ptr %l93, !tbaa !24
  %t165 = load i1, ptr @olang_2esole_2ecompiler_2fsession_3aPositions_2e0
  br i1 %t165, label %bb42, label %bb43
bb42:
  %t167 = call ptr @__olang_region_make(ptr %s3)
  %t168 = ptrtoint ptr %t167 to i64
  store i64 %t168, ptr %l93, !tbaa !24
  br label %bb43
bb43:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l2, !tbaa !29
  %t171 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t172 = load i64, ptr %l93
  %t173 = inttoptr i64 %t172 to ptr
  %t177 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v2, ptr %s3, ptr %t173, ptr %t169, ptr %t170, { i64, ptr } %t171)
  store { i64, ptr } %t177, ptr %l98
  br label %bb44
bb44:
  %t178 = load { i64, ptr }, ptr %l98, !tbaa !27
  %t179 = load i64, ptr %l93
  %t180 = inttoptr i64 %t179 to ptr
  %t181 = extractvalue { i64, ptr } %t178, 0
  %t182 = extractvalue { i64, ptr } %t178, 1
  %t183 = mul i64 %t181, 1
  %t184 = call ptr @__olang_scope_alloc(ptr %t180, i64 %t183)
  call void @llvm.memcpy.p0.p0.i64(ptr %t184, ptr %t182, i64 %t183, i1 false)
  %t185 = insertvalue { i64, ptr } undef, i64 %t181, 0
  %t186 = insertvalue { i64, ptr } %t185, ptr %t184, 1
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/lsp:worker", ptr %t187, i32 0, i32 0
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t192 = getelementptr %"compiler/lsp:Server", ptr %t190, i32 0, i32 2
  %t193 = load i1, ptr %t192, !tbaa !21
  %t196 = call %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %s3, ptr %s3, { i64, ptr } %t186, i1 %t193)
  store %"compiler/session:Positions" %t196, ptr %l103
  br label %bb45
bb45:
  %t197 = load %"compiler/session:Positions", ptr %l103
  store %"compiler/session:Positions" %t197, ptr %l18
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l9, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d108, i32 0, i32 1) })
  br label %bb46
bb46:
  store ptr %l9, ptr %l105, !tbaa !29
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t200 = load { i64, ptr }, ptr %l17, !tbaa !27
  %t203 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %s3, ptr %s3, ptr %t199, { i64, ptr } %t200)
  store { i64, ptr } %t203, ptr %l108
  br label %bb47
bb47:
  %t204 = load { i64, ptr }, ptr %l108, !tbaa !27
  %t205 = extractvalue { i64, ptr } %t204, 0
  %t206 = extractvalue { i64, ptr } %t204, 1
  %t207 = mul i64 %t205, 1
  %t208 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t207)
  call void @llvm.memcpy.p0.p0.i64(ptr %t208, ptr %t206, i64 %t207, i1 false)
  %t209 = insertvalue { i64, ptr } undef, i64 %t205, 0
  %t210 = insertvalue { i64, ptr } %t209, ptr %t208, 1
  %t211 = load ptr, ptr %l105, !tbaa !29
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s3, ptr %t211, { i64, ptr } %t210)
  br label %bb48
bb48:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l9, { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d109, i32 0, i32 1) })
  br label %bb49
bb49:
  %t214 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2erangeOf(ptr %v0, ptr %s0, ptr %s3, ptr %v4, ptr %t214, ptr %l9, ptr %l18, ptr %l16)
  br label %bb50
bb50:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s3, ptr %l9, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d110, i32 0, i32 1) })
  br label %bb51
bb51:
  %t220 = getelementptr %"compiler/diag:Item", ptr %l16, i32 0, i32 6
  %t221 = load { i64, ptr }, ptr %t220, !tbaa !27
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v4, ptr %l9, { i64, ptr } %t221)
  br label %bb52
bb52:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l9, i8 125)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s3)
  br label %bb54
bb54:
  %t225 = load i64, ptr %l14, !tbaa !24
  %t227 = add i64 %t225, 1
  store i64 %t227, ptr %l14, !tbaa !24
  br label %bb25
bb55:
  %t230 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %l9)
  store i64 %t230, ptr %l122
  br label %bb56
bb56:
  %t231 = load i64, ptr %l122, !tbaa !24
  %t232 = icmp sgt i64 %t231, 0
  br i1 %t232, label %bb57, label %bb58
bb57:
  store %olang.scope zeroinitializer, ptr %s8
  %t234 = load ptr, ptr %l1, !tbaa !29
  store ptr %t234, ptr %l124, !tbaa !29
  %t236 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s8, ptr %l9)
  store { i64, ptr } %t236, ptr %l126
  br label %bb59
bb58:
  br label %bb61
bb59:
  %t237 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t238 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  %t239 = load { i64, ptr }, ptr %l126, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = add i64 %t238, %t241
  %t243 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  %t245 = add i64 %t242, %t244
  %t246 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t245)
  call void @olang_textcopy(ptr %t246, ptr %t237, i64 %t238)
  %t247 = getelementptr i8, ptr %t246, i64 %t238
  call void @olang_textcopy(ptr %t247, ptr %t240, i64 %t241)
  %t248 = getelementptr i8, ptr %t247, i64 %t241
  call void @olang_textcopy(ptr %t248, ptr %t243, i64 %t244)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t246, 1
  %t252 = extractvalue { i64, ptr } %t250, 0
  %t253 = extractvalue { i64, ptr } %t250, 1
  %t254 = mul i64 %t252, 1
  %t255 = call ptr @__olang_scope_alloc(ptr %s8, i64 %t254)
  call void @llvm.memcpy.p0.p0.i64(ptr %t255, ptr %t253, i64 %t254, i1 false)
  %t256 = insertvalue { i64, ptr } undef, i64 %t252, 0
  %t257 = insertvalue { i64, ptr } %t256, ptr %t255, 1
  %t258 = load ptr, ptr %l124, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s8, ptr %t258, { i64, ptr } %t257)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s8)
  br label %bb61
bb61:
  %t260 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v1, ptr %t260, i8 125)
  br label %bb62
bb62:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2flsp_2ecompiler_2flsp_3aworker_2epublishAll(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, i64 %a1, ptr %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/diag:Item"
  %l16 = alloca { i64, ptr }
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca ptr
  %l25 = alloca %"std/prelude/text:StringBuilder"
  %lp26 = alloca ptr
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
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca i64
  %l42 = alloca { i64, ptr }
  %l48 = alloca ptr
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l81 = alloca %"compiler/diag:Item"
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l94 = alloca i1
  %l97 = alloca { i64, ptr }
  %l99 = alloca i64
  %l102 = alloca i64
  %l106 = alloca i64
  %l109 = alloca i64
  %l129 = alloca { i64, ptr }
  %l131 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca %"std/prelude/text:StringBuilder"
  %l146 = alloca i64
  %l150 = alloca ptr
  %l152 = alloca i64
  %l164 = alloca i64
  %l166 = alloca %"std/prelude/text:StringBuilder"
  %l168 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l170 = alloca i64
  %l174 = alloca i64
  %l177 = alloca i64
  %l197 = alloca { i64, ptr }
  %l200 = alloca i1
  %l203 = alloca %"std/prelude/text:StringBuilder"
  %l205 = alloca %"std/prelude/text:StringBuilder"
  %l206 = alloca %"std/prelude/text:StringBuilder"
  %l215 = alloca ptr
  %l217 = alloca { i64, ptr }
  %l219 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %l225 = alloca i64
  %l229 = alloca i64
  %l232 = alloca i64
  %l252 = alloca { i64, ptr }
  %l255 = alloca i1
  %l256 = alloca i1
  %l257 = alloca ptr
  %l260 = alloca { i64, ptr }
  %l261 = alloca i1
  %l262 = alloca ptr
  %l265 = alloca { i64, ptr }
  %l266 = alloca { i64, ptr }
  %l267 = alloca ptr
  %l268 = alloca { i64, ptr }
  %l271 = alloca %"std/prelude/text:StringBuilder"
  %l273 = alloca { i64, ptr }
  %l276 = alloca { i64, ptr }
  %l278 = alloca ptr
  %l279 = alloca i64
  %l287 = alloca i64
  %l289 = alloca i64
  %l294 = alloca { i64, ptr }
  %l298 = alloca i1
  %l300 = alloca ptr
  %l302 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s21 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  %t10 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t6, i64 %a1)
  store ptr %t10, ptr %l48
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l48, !tbaa !29
  store ptr %t11, ptr %l5, !tbaa !29
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l49
  br label %bb2
bb2:
  %t13 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l6
  %t14 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l50
  br label %bb3
bb3:
  %t15 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t15, ptr %l7
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t18 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v2, ptr %s0, ptr %t16)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l52
  br label %bb4
bb4:
  %t19 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t19, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %l8)
  store i64 %t21, ptr %l54
  br label %bb5
bb5:
  %t22 = load i64, ptr %l54, !tbaa !24
  store i64 %t22, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t23 = load i64, ptr %l10, !tbaa !24
  %t24 = load i64, ptr %l9, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = load i64, ptr %l11, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb11
bb8:
  %t33 = load i64, ptr %l10, !tbaa !24
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l11, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l11, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l61, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l61, !tbaa !24
  store i64 %t49, ptr %l58, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l58, !tbaa !24
  store i64 %t50, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb12
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t51 = load i64, ptr %l13, !tbaa !24
  %t52 = load i64, ptr %l12, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s2)
  br label %bb66
bb14:
  br label %bb15
bb15:
  %t59 = load i64, ptr %l9, !tbaa !24
  %t60 = load i64, ptr %l13, !tbaa !24
  %t61 = load i64, ptr %l11, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l14, !tbaa !24
  %t69 = load i64, ptr %l14, !tbaa !24
  %t72 = call %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %s0, ptr %s0, ptr %l8, i64 %t69)
  store %"compiler/diag:Item" %t72, ptr %l81
  br label %bb16
bb16:
  %t73 = load %"compiler/diag:Item", ptr %l81
  store %"compiler/diag:Item" %t73, ptr %l15
  %t74 = getelementptr %"compiler/diag:Item", ptr %l15, i32 0, i32 0
  %t75 = load i1, ptr %t74, !tbaa !21
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb65
bb18:
  br label %bb19
bb19:
  %t79 = getelementptr %"compiler/diag:Item", ptr %l15, i32 0, i32 2
  %t80 = load i64, ptr %t79, !tbaa !24
  %t82 = icmp sge i64 %t80, 0
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t84 = load ptr, ptr %l2, !tbaa !29
  %t85 = getelementptr %"compiler/diag:Item", ptr %l15, i32 0, i32 2
  %t86 = load i64, ptr %t85, !tbaa !24
  %t89 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v1, ptr %s2, ptr %t84, i64 %t86)
  store { i64, ptr } %t89, ptr %l89
  br label %bb22
bb21:
  %t90 = load ptr, ptr %l5, !tbaa !29
  %t92 = getelementptr %"compiler/lsp:Doc", ptr %t90, i32 0, i32 2
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  %t95 = extractvalue { i64, ptr } %t93, 1
  %t96 = extractvalue { i64, ptr } %t93, 0
  %t97 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t96)
  call void @olang_textcopy(ptr %t97, ptr %t95, i64 %t96)
  %t98 = insertvalue { i64, ptr } undef, i64 %t96, 0
  %t99 = insertvalue { i64, ptr } %t98, ptr %t97, 1
  store { i64, ptr } %t99, ptr %l86, !tbaa !27
  br label %bb23
bb22:
  %t101 = load { i64, ptr }, ptr %l89, !tbaa !27
  store { i64, ptr } %t101, ptr %l86, !tbaa !27
  br label %bb23
bb23:
  %t102 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t102, ptr %l16, !tbaa !27
  %t103 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t105 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s2, ptr %s2, { i64, ptr } %t103, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d113, i32 0, i32 1) })
  store i1 %t105, ptr %l94
  br label %bb24
bb24:
  %t106 = load i1, ptr %l94, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %l5, !tbaa !29
  %t109 = getelementptr %"compiler/lsp:Doc", ptr %t107, i32 0, i32 2
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  %t112 = extractvalue { i64, ptr } %t110, 1
  %t113 = extractvalue { i64, ptr } %t110, 0
  %t114 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t113)
  call void @olang_textcopy(ptr %t114, ptr %t112, i64 %t113)
  %t115 = insertvalue { i64, ptr } undef, i64 %t113, 0
  %t116 = insertvalue { i64, ptr } %t115, ptr %t114, 1
  store { i64, ptr } %t116, ptr %l97, !tbaa !27
  %t117 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t118 = extractvalue { i64, ptr } %t117, 0
  %t119 = load { i64, ptr }, ptr %l97, !tbaa !27
  %t120 = extractvalue { i64, ptr } %t119, 0
  store i64 %t120, ptr %l99, !tbaa !24
  %t122 = load i64, ptr %l99, !tbaa !24
  %t123 = icmp eq i64 %t118, %t122
  br i1 %t123, label %bb27, label %bb28
bb26:
  br label %bb30
bb27:
  %t125 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t128 = load ptr, ptr %t127, !tbaa !27
  %t129 = load i64, ptr %l99, !tbaa !24
  %t130 = mul i64 %t129, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t126, ptr %t128, i64 %t130, i1 false)
  br label %bb29
bb28:
  %t131 = load { i64, ptr }, ptr %l97, !tbaa !27
  store { i64, ptr } %t131, ptr %l16, !tbaa !27
  br label %bb29
bb29:
  br label %bb30
bb30:
  store i64 -1, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t133, ptr %l102
  br label %bb31
bb31:
  %t134 = load i64, ptr %l102, !tbaa !24
  store i64 %t134, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t135 = load i64, ptr %l19, !tbaa !24
  %t136 = load i64, ptr %l18, !tbaa !24
  %t139 = icmp sgt i64 %t135, %t136
  br i1 %t139, label %bb32, label %bb33
bb32:
  %t141 = load i64, ptr %l20, !tbaa !24
  %t143 = icmp sgt i64 %t141, 0
  br i1 %t143, label %bb34, label %bb35
bb33:
  store i64 0, ptr %l106, !tbaa !24
  br label %bb37
bb34:
  %t145 = load i64, ptr %l19, !tbaa !24
  %t146 = load i64, ptr %l18, !tbaa !24
  %t149 = sub i64 %t145, %t146
  %t150 = load i64, ptr %l20, !tbaa !24
  %t153 = add i64 %t149, %t150
  %t155 = sub i64 %t153, 1
  %t156 = load i64, ptr %l20, !tbaa !24
  %t159 = sdiv i64 %t155, %t156
  store i64 %t159, ptr %l109, !tbaa !24
  br label %bb36
bb35:
  store i64 0, ptr %l109, !tbaa !24
  br label %bb36
bb36:
  %t161 = load i64, ptr %l109, !tbaa !24
  store i64 %t161, ptr %l106, !tbaa !24
  br label %bb37
bb37:
  %t162 = load i64, ptr %l106, !tbaa !24
  store i64 %t162, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb38
bb38:
  %t163 = load i64, ptr %l22, !tbaa !24
  %t164 = load i64, ptr %l21, !tbaa !24
  %t167 = icmp slt i64 %t163, %t164
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb39, label %bb40
bb39:
  br label %bb48
bb40:
  br label %bb41
bb41:
  %t171 = load i64, ptr %l18, !tbaa !24
  %t172 = load i64, ptr %l22, !tbaa !24
  %t173 = load i64, ptr %l20, !tbaa !24
  %t176 = mul i64 %t172, %t173
  %t179 = add i64 %t171, %t176
  store i64 %t179, ptr %l23, !tbaa !24
  %t181 = load i64, ptr %l23, !tbaa !24
  %t184 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t181)
  store { i64, ptr } %t184, ptr %l129
  br label %bb42
bb42:
  %t185 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t186 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t188 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s2, { i64, ptr } %t186, { i64, ptr } %t185)
  store i1 %t188, ptr %l131
  br label %bb43
bb43:
  %t189 = load i1, ptr %l131, !tbaa !21
  br i1 %t189, label %bb44, label %bb45
bb44:
  %t190 = load i64, ptr %l23, !tbaa !24
  store i64 %t190, ptr %l17, !tbaa !24
  br label %bb46
bb45:
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t192 = load i64, ptr %l22, !tbaa !24
  %t194 = add i64 %t192, 1
  store i64 %t194, ptr %l22, !tbaa !24
  br label %bb38
bb48:
  %t196 = load i64, ptr %l17, !tbaa !24
  %t198 = icmp slt i64 %t196, 0
  br i1 %t198, label %bb49, label %bb50
bb49:
  store %olang.scope zeroinitializer, ptr %s11
  store ptr %l6, ptr %l137, !tbaa !29
  %t200 = ptrtoint ptr %s0 to i64
  store i64 %t200, ptr %l138, !tbaa !24
  %t201 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t201, label %bb51, label %bb52
bb50:
  br label %bb57
bb51:
  %t203 = call ptr @__olang_region_make(ptr %s0)
  %t204 = ptrtoint ptr %t203 to i64
  store i64 %t204, ptr %l138, !tbaa !24
  br label %bb52
bb52:
  %t205 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t207 = extractvalue { i64, ptr } %t205, 1
  %t208 = extractvalue { i64, ptr } %t205, 0
  %t209 = load i64, ptr %l138
  %t210 = inttoptr i64 %t209 to ptr
  %t211 = call ptr @__olang_scope_alloc(ptr %t210, i64 %t208)
  call void @olang_textcopy(ptr %t211, ptr %t207, i64 %t208)
  %t212 = insertvalue { i64, ptr } undef, i64 %t208, 0
  %t213 = insertvalue { i64, ptr } %t212, ptr %t211, 1
  %t215 = load i64, ptr %l138
  %t216 = inttoptr i64 %t215 to ptr
  %t217 = extractvalue { i64, ptr } %t213, 0
  %t218 = extractvalue { i64, ptr } %t213, 1
  %t219 = mul i64 %t217, 1
  %t220 = call ptr @__olang_scope_alloc(ptr %t216, i64 %t219)
  call void @llvm.memcpy.p0.p0.i64(ptr %t220, ptr %t218, i64 %t219, i1 false)
  %t221 = insertvalue { i64, ptr } undef, i64 %t217, 0
  %t222 = insertvalue { i64, ptr } %t221, ptr %t220, 1
  %t223 = load ptr, ptr %l137, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %s0, ptr %s0, ptr %t223, { i64, ptr } %t222)
  br label %bb53
bb53:
  store ptr %l7, ptr %l143, !tbaa !29
  %t225 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s11)
  store %"std/prelude/text:StringBuilder" %t225, ptr %l144
  br label %bb54
bb54:
  %t226 = load ptr, ptr %l143, !tbaa !29
  %t227 = load %"std/prelude/text:StringBuilder", ptr %l144
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H619e677aa004466b5bd5bdbfda9f24c5(ptr %s0, ptr %s11, ptr %t226, %"std/prelude/text:StringBuilder" %t227)
  br label %bb55
bb55:
  %t229 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t229, ptr %l146
  br label %bb56
bb56:
  %t230 = load i64, ptr %l146, !tbaa !24
  %t231 = sub i64 %t230, 1
  store i64 %t231, ptr %l17, !tbaa !24
  call void @__olang_scope_close(ptr %s11)
  br label %bb57
bb57:
  %t233 = load i64, ptr %l17, !tbaa !24
  %t236 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_Hf1ae1a5ebbb395c2e928aa8f7e1c7e01(ptr %s0, ptr %s0, ptr %l7, i64 %t233)
  store ptr %t236, ptr %l150
  br label %bb58
bb58:
  %t237 = load ptr, ptr %l150, !tbaa !29
  store ptr %t237, ptr %l24, !tbaa !29
  %t238 = load ptr, ptr %l24, !tbaa !29
  %t240 = call i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %s0, ptr %t238)
  store i64 %t240, ptr %l152
  br label %bb59
bb59:
  %t241 = load i64, ptr %l152, !tbaa !24
  %t242 = icmp sgt i64 %t241, 0
  br i1 %t242, label %bb60, label %bb61
bb60:
  %t244 = load ptr, ptr %l24, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t244, i8 44)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load ptr, ptr %l24, !tbaa !29
  %t248 = load ptr, ptr %l2, !tbaa !29
  %t249 = load ptr, ptr %l3, !tbaa !29
  %t250 = load i64, ptr %l14, !tbaa !24
  %t251 = load { i64, ptr }, ptr %l16, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2ediagnostic(ptr %v0, ptr %s0, ptr %v1, ptr %v2, ptr %s0, ptr %s2, ptr %t246, ptr %t247, ptr %t248, ptr %t249, ptr %l8, i64 %t250, { i64, ptr } %t251)
  br label %bb64
bb64:
  call void @__olang_scope_close(ptr %s2)
  br label %bb65
bb65:
  %t259 = load i64, ptr %l13, !tbaa !24
  %t261 = add i64 %t259, 1
  store i64 %t261, ptr %l13, !tbaa !24
  br label %bb12
bb66:
  %t263 = ptrtoint ptr %s0 to i64
  store i64 %t263, ptr %l164, !tbaa !24
  %t264 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25
  br i1 %t264, label %bb67, label %bb68
bb67:
  %t266 = call ptr @__olang_region_make(ptr %s0)
  %t267 = ptrtoint ptr %t266 to i64
  store i64 %t267, ptr %l164, !tbaa !24
  br label %bb68
bb68:
  %t268 = load i64, ptr %l164
  %t269 = inttoptr i64 %t268 to ptr
  %t270 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %t269)
  store %"std/prelude/text:StringBuilder" %t270, ptr %l166
  br label %bb69
bb69:
  %t271 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25
  br i1 %t271, label %bb70, label %bb71
bb70:
  %t273 = load i64, ptr %l164
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = getelementptr %"std/prelude/text:StringBuilder", ptr %l166, i32 0, i32 0
  %t276 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t275, i32 0, i32 0
  %t277 = load { i64, ptr }, ptr %t276
  %t278 = extractvalue { i64, ptr } %t277, 1
  %t279 = call ptr @__olang_region_or(ptr %t278, ptr null)
  %t280 = icmp ne ptr %t279, null
  %t281 = select i1 %t280, ptr %t279, ptr null
  %t282 = icmp eq ptr %t281, %t274
  call void @__olang_region_settle(ptr %t274, i1 %t282)
  br label %bb71
bb71:
  %t283 = load %"std/prelude/text:StringBuilder", ptr %l166
  store %"std/prelude/text:StringBuilder" %t283, ptr %l25
  %t284 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v4, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t284, ptr %l168
  br label %bb72
bb72:
  %t285 = call ptr @__olang_scope_alloc_a(ptr %v4, i64 32, i64 8)
  store ptr %t285, ptr %lp26
  %t286 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l168
  %t287 = load ptr, ptr %lp26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t286, ptr %t287
  store i64 0, ptr %l27, !tbaa !24
  %t289 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t289, ptr %l170
  br label %bb73
bb73:
  %t290 = load i64, ptr %l170, !tbaa !24
  store i64 %t290, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t291 = load i64, ptr %l28, !tbaa !24
  %t292 = load i64, ptr %l27, !tbaa !24
  %t295 = icmp sgt i64 %t291, %t292
  br i1 %t295, label %bb74, label %bb75
bb74:
  %t297 = load i64, ptr %l29, !tbaa !24
  %t299 = icmp sgt i64 %t297, 0
  br i1 %t299, label %bb76, label %bb77
bb75:
  store i64 0, ptr %l174, !tbaa !24
  br label %bb79
bb76:
  %t301 = load i64, ptr %l28, !tbaa !24
  %t302 = load i64, ptr %l27, !tbaa !24
  %t305 = sub i64 %t301, %t302
  %t306 = load i64, ptr %l29, !tbaa !24
  %t309 = add i64 %t305, %t306
  %t311 = sub i64 %t309, 1
  %t312 = load i64, ptr %l29, !tbaa !24
  %t315 = sdiv i64 %t311, %t312
  store i64 %t315, ptr %l177, !tbaa !24
  br label %bb78
bb77:
  store i64 0, ptr %l177, !tbaa !24
  br label %bb78
bb78:
  %t317 = load i64, ptr %l177, !tbaa !24
  store i64 %t317, ptr %l174, !tbaa !24
  br label %bb79
bb79:
  %t318 = load i64, ptr %l174, !tbaa !24
  store i64 %t318, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb80
bb80:
  %t319 = load i64, ptr %l31, !tbaa !24
  %t320 = load i64, ptr %l30, !tbaa !24
  %t323 = icmp slt i64 %t319, %t320
  %t325 = xor i1 %t323, true
  br i1 %t325, label %bb81, label %bb82
bb81:
  br label %bb94
bb82:
  br label %bb83
bb83:
  %t327 = load i64, ptr %l27, !tbaa !24
  %t328 = load i64, ptr %l31, !tbaa !24
  %t329 = load i64, ptr %l29, !tbaa !24
  %t332 = mul i64 %t328, %t329
  %t335 = add i64 %t327, %t332
  store i64 %t335, ptr %l32, !tbaa !24
  %t337 = load i64, ptr %l32, !tbaa !24
  %t340 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t337)
  store { i64, ptr } %t340, ptr %l197
  br label %bb84
bb84:
  %t341 = load ptr, ptr %l5, !tbaa !29
  %t343 = getelementptr %"compiler/lsp:Doc", ptr %t341, i32 0, i32 2
  %t344 = load { i64, ptr }, ptr %t343, !tbaa !27
  %t345 = load { i64, ptr }, ptr %l197, !tbaa !27
  %t347 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t345, { i64, ptr } %t344)
  store i1 %t347, ptr %l200
  br label %bb85
bb85:
  %t348 = load i1, ptr %l200, !tbaa !21
  br i1 %t348, label %bb86, label %bb87
bb86:
  %t349 = load i64, ptr %l32, !tbaa !24
  %t352 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H3391400cd512141e3398528b8c477a4f(ptr %s0, ptr %s0, ptr %l7, i64 %t349)
  store %"std/prelude/text:StringBuilder" %t352, ptr %l203
  br label %bb88
bb87:
  br label %bb92
bb88:
  %t354 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2ftext_3aStringBuilder(ptr %s0, ptr %l203)
  store %"std/prelude/text:StringBuilder" %t354, ptr %l205
  br label %bb89
bb89:
  %t355 = load %"std/prelude/text:StringBuilder", ptr %l25
  store %"std/prelude/text:StringBuilder" %t355, ptr %l206
  %t356 = load %"std/prelude/text:StringBuilder", ptr %l205
  store %"std/prelude/text:StringBuilder" %t356, ptr %l25
  %t357 = load i1, ptr @olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25
  br i1 %t357, label %bb90, label %bb91
bb90:
  %t359 = getelementptr %"std/prelude/text:StringBuilder", ptr %l206, i32 0, i32 0
  %t360 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t359, i32 0, i32 0
  %t361 = load { i64, ptr }, ptr %t360
  %t362 = extractvalue { i64, ptr } %t361, 1
  %t363 = call ptr @__olang_region_or(ptr %t362, ptr null)
  %t364 = icmp ne ptr %t363, null
  %t365 = select i1 %t364, ptr %t363, ptr null
  call void @__olang_region_drop(ptr %t365)
  store %"std/prelude/text:StringBuilder" zeroinitializer, ptr %l206
  br label %bb91
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t366 = load i64, ptr %l31, !tbaa !24
  %t368 = add i64 %t366, 1
  store i64 %t368, ptr %l31, !tbaa !24
  br label %bb80
bb94:
  %t370 = load ptr, ptr %l0, !tbaa !29
  %t371 = load ptr, ptr %l2, !tbaa !29
  %t372 = load ptr, ptr %l5, !tbaa !29
  %t374 = getelementptr %"compiler/lsp:Doc", ptr %t372, i32 0, i32 2
  %t375 = load { i64, ptr }, ptr %t374, !tbaa !27
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2edeprecations(ptr %v0, ptr %s0, ptr %v1, ptr %v0, ptr %t370, ptr %l25, ptr %t371, { i64, ptr } %t375)
  br label %bb95
bb95:
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l215, !tbaa !29
  %t381 = load ptr, ptr %l5, !tbaa !29
  %t383 = getelementptr %"compiler/lsp:Doc", ptr %t381, i32 0, i32 0
  %t384 = load { i64, ptr }, ptr %t383, !tbaa !27
  store { i64, ptr } %t384, ptr %l217, !tbaa !27
  %t386 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s0, ptr %l25)
  store { i64, ptr } %t386, ptr %l219
  br label %bb96
bb96:
  %t387 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t388 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  %t389 = load { i64, ptr }, ptr %l219, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t392 = add i64 %t388, %t391
  %t393 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t395)
  call void @olang_textcopy(ptr %t396, ptr %t387, i64 %t388)
  %t397 = getelementptr i8, ptr %t396, i64 %t388
  call void @olang_textcopy(ptr %t397, ptr %t390, i64 %t391)
  %t398 = getelementptr i8, ptr %t397, i64 %t391
  call void @olang_textcopy(ptr %t398, ptr %t393, i64 %t394)
  %t399 = insertvalue { i64, ptr } undef, i64 %t395, 0
  %t400 = insertvalue { i64, ptr } %t399, ptr %t396, 1
  %t402 = extractvalue { i64, ptr } %t400, 0
  %t403 = extractvalue { i64, ptr } %t400, 1
  %t404 = mul i64 %t402, 1
  %t405 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t404)
  call void @llvm.memcpy.p0.p0.i64(ptr %t405, ptr %t403, i64 %t404, i1 false)
  %t406 = insertvalue { i64, ptr } undef, i64 %t402, 0
  %t407 = insertvalue { i64, ptr } %t406, ptr %t405, 1
  %t408 = load { i64, ptr }, ptr %l217, !tbaa !27
  %t410 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t408, { i64, ptr } %t407)
  store { i64, ptr } %t410, ptr %l222
  br label %bb97
bb97:
  %t411 = load { i64, ptr }, ptr %l222, !tbaa !27
  %t412 = extractvalue { i64, ptr } %t411, 0
  %t413 = extractvalue { i64, ptr } %t411, 1
  %t414 = mul i64 %t412, 1
  %t415 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t414)
  call void @llvm.memcpy.p0.p0.i64(ptr %t415, ptr %t413, i64 %t414, i1 false)
  %t416 = insertvalue { i64, ptr } undef, i64 %t412, 0
  %t417 = insertvalue { i64, ptr } %t416, ptr %t415, 1
  %t418 = load ptr, ptr %l215, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s0, ptr %t418, { i64, ptr } %t417)
  br label %bb98
bb98:
  store i64 0, ptr %l33, !tbaa !24
  %t421 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %s0, ptr %l6)
  store i64 %t421, ptr %l225
  br label %bb99
bb99:
  %t422 = load i64, ptr %l225, !tbaa !24
  store i64 %t422, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t423 = load i64, ptr %l34, !tbaa !24
  %t424 = load i64, ptr %l33, !tbaa !24
  %t427 = icmp sgt i64 %t423, %t424
  br i1 %t427, label %bb100, label %bb101
bb100:
  %t429 = load i64, ptr %l35, !tbaa !24
  %t431 = icmp sgt i64 %t429, 0
  br i1 %t431, label %bb102, label %bb103
bb101:
  store i64 0, ptr %l229, !tbaa !24
  br label %bb105
bb102:
  %t433 = load i64, ptr %l34, !tbaa !24
  %t434 = load i64, ptr %l33, !tbaa !24
  %t437 = sub i64 %t433, %t434
  %t438 = load i64, ptr %l35, !tbaa !24
  %t441 = add i64 %t437, %t438
  %t443 = sub i64 %t441, 1
  %t444 = load i64, ptr %l35, !tbaa !24
  %t447 = sdiv i64 %t443, %t444
  store i64 %t447, ptr %l232, !tbaa !24
  br label %bb104
bb103:
  store i64 0, ptr %l232, !tbaa !24
  br label %bb104
bb104:
  %t449 = load i64, ptr %l232, !tbaa !24
  store i64 %t449, ptr %l229, !tbaa !24
  br label %bb105
bb105:
  %t450 = load i64, ptr %l229, !tbaa !24
  store i64 %t450, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb106
bb106:
  store %olang.scope zeroinitializer, ptr %s21
  %t451 = load i64, ptr %l37, !tbaa !24
  %t452 = load i64, ptr %l36, !tbaa !24
  %t455 = icmp slt i64 %t451, %t452
  %t457 = xor i1 %t455, true
  br i1 %t457, label %bb107, label %bb108
bb107:
  call void @__olang_scope_close(ptr %s21)
  br label %bb130
bb108:
  br label %bb109
bb109:
  %t459 = load i64, ptr %l33, !tbaa !24
  %t460 = load i64, ptr %l37, !tbaa !24
  %t461 = load i64, ptr %l35, !tbaa !24
  %t464 = mul i64 %t460, %t461
  %t467 = add i64 %t459, %t464
  store i64 %t467, ptr %l38, !tbaa !24
  %t469 = load i64, ptr %l38, !tbaa !24
  %t472 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t469)
  store { i64, ptr } %t472, ptr %l252
  br label %bb110
bb110:
  %t473 = load ptr, ptr %l5, !tbaa !29
  %t475 = getelementptr %"compiler/lsp:Doc", ptr %t473, i32 0, i32 2
  %t476 = load { i64, ptr }, ptr %t475, !tbaa !27
  %t477 = load { i64, ptr }, ptr %l252, !tbaa !27
  %t479 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %v0, { i64, ptr } %t477, { i64, ptr } %t476)
  store i1 %t479, ptr %l255
  br label %bb111
bb111:
  %t480 = load i1, ptr %l255, !tbaa !21
  br i1 %t480, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l256, !tbaa !21
  br label %bb116
bb113:
  %t481 = load ptr, ptr %l0, !tbaa !29
  store ptr %t481, ptr %l257, !tbaa !29
  %t482 = load i64, ptr %l38, !tbaa !24
  %t485 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t482)
  store { i64, ptr } %t485, ptr %l260
  br label %bb114
bb114:
  %t486 = load ptr, ptr %l257, !tbaa !29
  %t487 = load { i64, ptr }, ptr %l260, !tbaa !27
  %t488 = call i1 @compiler_2flsp_2ecompiler_2flsp_3aworker_2eslotPending(ptr %v0, ptr %s0, ptr %t486, { i64, ptr } %t487)
  store i1 %t488, ptr %l261
  br label %bb115
bb115:
  %t489 = load i1, ptr %l261, !tbaa !21
  store i1 %t489, ptr %l256, !tbaa !21
  br label %bb116
bb116:
  %t490 = load i1, ptr %l256, !tbaa !21
  br i1 %t490, label %bb117, label %bb118
bb117:
  call void @__olang_scope_close(ptr %s21)
  br label %bb129
bb118:
  br label %bb119
bb119:
  %t491 = load ptr, ptr %l0, !tbaa !29
  store ptr %t491, ptr %l262, !tbaa !29
  %t492 = load i64, ptr %l38, !tbaa !24
  %t495 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %s0, ptr %s0, ptr %l6, i64 %t492)
  store { i64, ptr } %t495, ptr %l265
  br label %bb120
bb120:
  %t496 = load ptr, ptr %l262, !tbaa !29
  %t497 = load { i64, ptr }, ptr %l265, !tbaa !27
  %t498 = call { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %s0, ptr %s21, ptr %t496, { i64, ptr } %t497)
  store { i64, ptr } %t498, ptr %l266
  br label %bb121
bb121:
  %t499 = load { i64, ptr }, ptr %l266, !tbaa !27
  store { i64, ptr } %t499, ptr %l39, !tbaa !27
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l267, !tbaa !29
  %t501 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t501, ptr %l268, !tbaa !27
  %t502 = load i64, ptr %l38, !tbaa !24
  %t505 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H3391400cd512141e3398528b8c477a4f(ptr %s0, ptr %s0, ptr %l7, i64 %t502)
  store %"std/prelude/text:StringBuilder" %t505, ptr %l271
  br label %bb122
bb122:
  %t507 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %s21, ptr %l271)
  store { i64, ptr } %t507, ptr %l273
  br label %bb123
bb123:
  %t508 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t509 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  %t510 = load { i64, ptr }, ptr %l273, !tbaa !27
  %t511 = extractvalue { i64, ptr } %t510, 1
  %t512 = extractvalue { i64, ptr } %t510, 0
  %t513 = add i64 %t509, %t512
  %t514 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t515 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  %t516 = add i64 %t513, %t515
  %t517 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t516)
  call void @olang_textcopy(ptr %t517, ptr %t508, i64 %t509)
  %t518 = getelementptr i8, ptr %t517, i64 %t509
  call void @olang_textcopy(ptr %t518, ptr %t511, i64 %t512)
  %t519 = getelementptr i8, ptr %t518, i64 %t512
  call void @olang_textcopy(ptr %t519, ptr %t514, i64 %t515)
  %t520 = insertvalue { i64, ptr } undef, i64 %t516, 0
  %t521 = insertvalue { i64, ptr } %t520, ptr %t517, 1
  %t523 = extractvalue { i64, ptr } %t521, 0
  %t524 = extractvalue { i64, ptr } %t521, 1
  %t525 = mul i64 %t523, 1
  %t526 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t525)
  call void @llvm.memcpy.p0.p0.i64(ptr %t526, ptr %t524, i64 %t525, i1 false)
  %t527 = insertvalue { i64, ptr } undef, i64 %t523, 0
  %t528 = insertvalue { i64, ptr } %t527, ptr %t526, 1
  %t529 = load { i64, ptr }, ptr %l268, !tbaa !27
  %t531 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %s21, ptr %s21, ptr %s21, { i64, ptr } %t529, { i64, ptr } %t528)
  store { i64, ptr } %t531, ptr %l276
  br label %bb124
bb124:
  %t532 = load { i64, ptr }, ptr %l276, !tbaa !27
  %t533 = extractvalue { i64, ptr } %t532, 0
  %t534 = extractvalue { i64, ptr } %t532, 1
  %t535 = mul i64 %t533, 1
  %t536 = call ptr @__olang_scope_alloc(ptr %s21, i64 %t535)
  call void @llvm.memcpy.p0.p0.i64(ptr %t536, ptr %t534, i64 %t535, i1 false)
  %t537 = insertvalue { i64, ptr } undef, i64 %t533, 0
  %t538 = insertvalue { i64, ptr } %t537, ptr %t536, 1
  %t539 = load ptr, ptr %l267, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s21, ptr %t539, { i64, ptr } %t538)
  br label %bb125
bb125:
  %t541 = load ptr, ptr %lp26
  store ptr %t541, ptr %l278, !tbaa !29
  %t542 = ptrtoint ptr %v4 to i64
  store i64 %t542, ptr %l279, !tbaa !24
  %t543 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t543, label %bb126, label %bb127
bb126:
  %t545 = call ptr @__olang_region_make(ptr %v4)
  %t546 = ptrtoint ptr %t545 to i64
  store i64 %t546, ptr %l279, !tbaa !24
  br label %bb127
bb127:
  %t547 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t549 = extractvalue { i64, ptr } %t547, 1
  %t550 = extractvalue { i64, ptr } %t547, 0
  %t551 = load i64, ptr %l279
  %t552 = inttoptr i64 %t551 to ptr
  %t553 = call ptr @__olang_scope_alloc(ptr %t552, i64 %t550)
  call void @olang_textcopy(ptr %t553, ptr %t549, i64 %t550)
  %t554 = insertvalue { i64, ptr } undef, i64 %t550, 0
  %t555 = insertvalue { i64, ptr } %t554, ptr %t553, 1
  %t557 = load i64, ptr %l279
  %t558 = inttoptr i64 %t557 to ptr
  %t559 = extractvalue { i64, ptr } %t555, 0
  %t560 = extractvalue { i64, ptr } %t555, 1
  %t561 = mul i64 %t559, 1
  %t562 = call ptr @__olang_scope_alloc(ptr %t558, i64 %t561)
  call void @llvm.memcpy.p0.p0.i64(ptr %t562, ptr %t560, i64 %t561, i1 false)
  %t563 = insertvalue { i64, ptr } undef, i64 %t559, 0
  %t564 = insertvalue { i64, ptr } %t563, ptr %t562, 1
  %t565 = load ptr, ptr %l278, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v4, ptr %v4, ptr %t565, { i64, ptr } %t564)
  br label %bb128
bb128:
  call void @__olang_scope_close(ptr %s21)
  br label %bb129
bb129:
  %t567 = load i64, ptr %l37, !tbaa !24
  %t569 = add i64 %t567, 1
  store i64 %t569, ptr %l37, !tbaa !24
  br label %bb106
bb130:
  store ptr %a4, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb131
bb131:
  %t573 = load i64, ptr %l41, !tbaa !24
  store i64 %t573, ptr %l287, !tbaa !24
  %t574 = load ptr, ptr %l40, !tbaa !29
  %t576 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v3, ptr %t574)
  store i64 %t576, ptr %l289
  br label %bb132
bb132:
  %t577 = load i64, ptr %l287, !tbaa !24
  %t578 = load i64, ptr %l289, !tbaa !24
  %t579 = icmp slt i64 %t577, %t578
  %t581 = xor i1 %t579, true
  br i1 %t581, label %bb133, label %bb134
bb133:
  br label %bb144
bb134:
  br label %bb135
bb135:
  %t583 = load ptr, ptr %l40, !tbaa !29
  %t584 = load i64, ptr %l41, !tbaa !24
  %t587 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v3, ptr %v3, ptr %t583, i64 %t584)
  store { i64, ptr } %t587, ptr %l294
  br label %bb136
bb136:
  %t588 = load { i64, ptr }, ptr %l294, !tbaa !27
  store { i64, ptr } %t588, ptr %l42, !tbaa !27
  %t589 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t591 = load ptr, ptr %lp26
  %t595 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v4, ptr %v3, ptr %t591, { i64, ptr } %t589)
  store i1 %t595, ptr %l298
  br label %bb137
bb137:
  %t596 = load i1, ptr %l298, !tbaa !21
  %t597 = xor i1 %t596, true
  br i1 %t597, label %bb138, label %bb139
bb138:
  store %olang.scope zeroinitializer, ptr %s28
  %t599 = load ptr, ptr %l0, !tbaa !29
  store ptr %t599, ptr %l300, !tbaa !29
  %t600 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t602 = call { i64, ptr } @compiler_2flsp_2epublish(ptr %v3, ptr %s28, ptr %s28, { i64, ptr } %t600, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d118, i32 0, i32 1) })
  store { i64, ptr } %t602, ptr %l302
  br label %bb140
bb139:
  br label %bb142
bb140:
  %t603 = load { i64, ptr }, ptr %l302, !tbaa !27
  %t604 = extractvalue { i64, ptr } %t603, 0
  %t605 = extractvalue { i64, ptr } %t603, 1
  %t606 = mul i64 %t604, 1
  %t607 = call ptr @__olang_scope_alloc(ptr %s28, i64 %t606)
  call void @llvm.memcpy.p0.p0.i64(ptr %t607, ptr %t605, i64 %t606, i1 false)
  %t608 = insertvalue { i64, ptr } undef, i64 %t604, 0
  %t609 = insertvalue { i64, ptr } %t608, ptr %t607, 1
  %t610 = load ptr, ptr %l300, !tbaa !29
  call void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %s28, ptr %t610, { i64, ptr } %t609)
  br label %bb141
bb141:
  call void @__olang_scope_close(ptr %s28)
  br label %bb142
bb142:
  br label %bb143
bb143:
  %t612 = load i64, ptr %l41, !tbaa !24
  %t614 = add i64 %t612, 1
  store i64 %t614, ptr %l41, !tbaa !24
  br label %bb131
bb144:
  %t616 = load ptr, ptr %lp26
  %t617 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t616
  call void @__olang_scope_close(ptr %s0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t617, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2erangeOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l11 = alloca i64
  %l17 = alloca i64
  %l25 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l3, !tbaa !29
  %t3 = getelementptr %"compiler/diag:Item", ptr %t1, i32 0, i32 3
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sge i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store ptr %a2, ptr %l8, !tbaa !29
  %t9 = load ptr, ptr %l1, !tbaa !29
  store ptr %t9, ptr %l9, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/diag:Item", ptr %t10, i32 0, i32 3
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t16 = getelementptr %"compiler/diag:Item", ptr %t14, i32 0, i32 4
  %t17 = load i64, ptr %t16, !tbaa !24
  %t18 = load ptr, ptr %l3, !tbaa !29
  %t20 = getelementptr %"compiler/diag:Item", ptr %t18, i32 0, i32 3
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = icmp sgt i64 %t17, %t21
  br i1 %t24, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t26 = load ptr, ptr %l3, !tbaa !29
  %t28 = getelementptr %"compiler/diag:Item", ptr %t26, i32 0, i32 4
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l17, !tbaa !24
  br label %bb5
bb4:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr %"compiler/diag:Item", ptr %t31, i32 0, i32 3
  %t34 = load i64, ptr %t33, !tbaa !24
  store i64 %t34, ptr %l17, !tbaa !24
  br label %bb5
bb5:
  %t36 = load ptr, ptr %l8, !tbaa !29
  %t37 = load ptr, ptr %l9, !tbaa !29
  %t38 = load i64, ptr %l11, !tbaa !24
  %t39 = load i64, ptr %l17, !tbaa !24
  call void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v2, ptr %v1, ptr %t36, ptr %t37, i64 %t38, i64 %t39)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t40 = load ptr, ptr %l3, !tbaa !29
  %t42 = getelementptr %"compiler/diag:Item", ptr %t40, i32 0, i32 5
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = icmp sgt i64 %t43, 0
  br i1 %t45, label %bb8, label %bb9
bb8:
  %t47 = load ptr, ptr %l3, !tbaa !29
  %t49 = getelementptr %"compiler/diag:Item", ptr %t47, i32 0, i32 5
  %t50 = load i64, ptr %t49, !tbaa !24
  %t52 = sub i64 %t50, 1
  store i64 %t52, ptr %l25, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb10
bb10:
  %t54 = load i64, ptr %l25, !tbaa !24
  store i64 %t54, ptr %l4, !tbaa !24
  %t55 = load ptr, ptr %l1, !tbaa !29
  %t56 = load i64, ptr %l4, !tbaa !24
  %t57 = load i64, ptr %l4, !tbaa !24
  %t58 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d119, i32 0, i32 1) }, 1
  %t59 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d119, i32 0, i32 1) }, 0
  %t61 = call i64 @__olang_fmt_i64(ptr null, i64 %t56)
  %t62 = add i64 %t59, %t61
  %t63 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d120, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d120, i32 0, i32 1) }, 0
  %t65 = add i64 %t62, %t64
  %t67 = call i64 @__olang_fmt_i64(ptr null, i64 %t57)
  %t68 = add i64 %t65, %t67
  %t69 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d121, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d121, i32 0, i32 1) }, 0
  %t71 = add i64 %t68, %t70
  %t72 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t71)
  call void @olang_textcopy(ptr %t72, ptr %t58, i64 %t59)
  %t73 = getelementptr i8, ptr %t72, i64 %t59
  %t74 = call i64 @__olang_fmt_i64(ptr %t73, i64 %t56)
  %t75 = getelementptr i8, ptr %t73, i64 %t61
  call void @olang_textcopy(ptr %t75, ptr %t63, i64 %t64)
  %t76 = getelementptr i8, ptr %t75, i64 %t64
  %t77 = call i64 @__olang_fmt_i64(ptr %t76, i64 %t57)
  %t78 = getelementptr i8, ptr %t76, i64 %t67
  call void @olang_textcopy(ptr %t78, ptr %t69, i64 %t70)
  %t79 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t80 = insertvalue { i64, ptr } %t79, ptr %t72, 1
  %t82 = extractvalue { i64, ptr } %t80, 0
  %t83 = extractvalue { i64, ptr } %t80, 1
  %t84 = mul i64 %t82, 1
  %t85 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t84)
  call void @llvm.memcpy.p0.p0.i64(ptr %t85, ptr %t83, i64 %t84, i1 false)
  %t86 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t87 = insertvalue { i64, ptr } %t86, ptr %t85, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v1, ptr %s0, ptr %t55, { i64, ptr } %t87)
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_2ecompiler_2flsp_3aworker_2esend(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lsp:worker", ptr %a0, i32 0, i32 3
  %t4 = load i32, ptr %t3, !tbaa !23
  call void @compiler_2fsession_2eWriteFramed(ptr %v1, i32 %t4, { i64, ptr } %a1)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2flsp_2ecompiler_2flsp_3aworker_2eslotPending(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca i64
  %l20 = alloca ptr
  %l24 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/lsp:worker", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 4
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb13
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t18, i64 %t19)
  store i64 %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:worker", ptr %t24, i32 0, i32 0
  %t27 = load ptr, ptr %t26, !tbaa !29
  %t29 = getelementptr %"compiler/lsp:Server", ptr %t27, i32 0, i32 1
  %t33 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t29, i64 %t23)
  store ptr %t33, ptr %l20
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l20, !tbaa !29
  %t36 = getelementptr %"compiler/lsp:Doc", ptr %t34, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  %t41 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t37, { i64, ptr } %a1)
  store i1 %t41, ptr %l24
  br label %bb8
bb8:
  %t42 = load i1, ptr %l24, !tbaa !21
  br i1 %t42, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb1
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2etextOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %l10 = alloca i32
  %l12 = alloca i1
  %l18 = alloca i64
  %l21 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/lsp:worker", ptr %a0, i32 0, i32 4
  %t4 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v2, ptr %v0, ptr %t3, { i64, ptr } %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l10
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l9
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t12, ptr %l5, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d122, i32 0, i32 1) }, ptr %l5, !tbaa !27
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t13, ptr %l3, !tbaa !27
  %t14 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t16 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t14, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d123, i32 0, i32 1) })
  store i1 %t16, ptr %l12
  br label %bb5
bb5:
  %t17 = load i1, ptr %l12, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t20, 1
  %t23 = extractvalue { i64, ptr } %t20, 0
  %t24 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t23)
  call void @olang_textcopy(ptr %t24, ptr %t22, i64 %t23)
  %t25 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t26 = insertvalue { i64, ptr } %t25, ptr %t24, 1
  call void @__olang_scope_close(ptr %s0)
  store { i64, ptr } %t26, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = load ptr, ptr %l1, !tbaa !29
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = call i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v1, ptr %v2, ptr %t28, { i64, ptr } %t29)
  store i64 %t32, ptr %l18
  br label %bb9
bb9:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = icmp sge i64 %t34, 0
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load ptr, ptr %l1, !tbaa !29
  %t39 = load i64, ptr %l4, !tbaa !24
  %t42 = call { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v1, ptr %s0, ptr %t38, i64 %t39)
  store { i64, ptr } %t42, ptr %l24
  br label %bb12
bb11:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d124, i32 0, i32 1) }, ptr %l26, !tbaa !27
  %t43 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t43, ptr %l21, !tbaa !27
  br label %bb13
bb12:
  %t45 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t46 = extractvalue { i64, ptr } %t45, 1
  %t47 = extractvalue { i64, ptr } %t45, 0
  %t48 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t47)
  call void @olang_textcopy(ptr %t48, ptr %t46, i64 %t47)
  %t49 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  store { i64, ptr } %t50, ptr %l21, !tbaa !27
  br label %bb13
bb13:
  %t52 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t53 = extractvalue { i64, ptr } %t52, 0
  store i64 %t53, ptr %l28, !tbaa !24
  %t54 = load i64, ptr %l28, !tbaa !24
  %t55 = mul i64 %t54, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %v3, i64 %t55)
  %t57 = insertvalue { i64, ptr } undef, i64 %t54, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l29, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = load i64, ptr %l28, !tbaa !24
  %t64 = mul i64 %t63, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t60, ptr %t62, i64 %t64, i1 false)
  %t65 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t65, ptr %l21, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t66 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t66, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ecompiler_2flsp_3aworker_2euriOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l8 = alloca i64
  %l10 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca i1
  %l22 = alloca i1
  %l29 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/lsp:worker", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t6 = getelementptr %"compiler/lsp:Server", ptr %t4, i32 0, i32 1
  store ptr %t6, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l3, !tbaa !24
  store i64 %t8, ptr %l8, !tbaa !24
  %t9 = load ptr, ptr %l2, !tbaa !29
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load i64, ptr %l8, !tbaa !24
  %t13 = load i64, ptr %l10, !tbaa !24
  %t14 = icmp slt i64 %t12, %t13
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t19 = load i64, ptr %l3, !tbaa !24
  %t22 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v0, ptr %t18, i64 %t19)
  store ptr %t22, ptr %l15
  br label %bb6
bb6:
  %t23 = load ptr, ptr %l15, !tbaa !29
  store ptr %t23, ptr %l4, !tbaa !29
  %t24 = load ptr, ptr %l4, !tbaa !29
  %t26 = getelementptr %"compiler/lsp:Doc", ptr %t24, i32 0, i32 4
  %t27 = load i1, ptr %t26, !tbaa !21
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = getelementptr %"compiler/lsp:Doc", ptr %t29, i32 0, i32 2
  %t32 = load { i64, ptr }, ptr %t31, !tbaa !27
  %t33 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t36 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %t32, { i64, ptr } %t33)
  store i1 %t36, ptr %l22
  br label %bb9
bb8:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb10
bb9:
  %t37 = load i1, ptr %l22, !tbaa !21
  store i1 %t37, ptr %l18, !tbaa !21
  br label %bb10
bb10:
  %t38 = load i1, ptr %l18, !tbaa !21
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t39 = load ptr, ptr %l4, !tbaa !29
  %t41 = getelementptr %"compiler/lsp:Doc", ptr %t39, i32 0, i32 0
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 1
  %t45 = extractvalue { i64, ptr } %t42, 0
  %t46 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t45)
  call void @olang_textcopy(ptr %t46, ptr %t44, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  br label %bb14
bb14:
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb1
bb15:
  %t54 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t56 = call { i64, ptr } @compiler_2flsp_2eUriOf(ptr %v1, ptr %v2, { i64, ptr } %t54)
  store { i64, ptr } %t56, ptr %l29
  br label %bb16
bb16:
  %t57 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eerrorReply(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l14 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l4
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l4
  store %"std/prelude/text:StringBuilder" %t2, ptr %l3
  %t5 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d125, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d125, i32 0, i32 1) }, 0
  %t8 = extractvalue { i64, ptr } %a0, 1
  %t9 = extractvalue { i64, ptr } %a0, 0
  %t10 = add i64 %t6, %t9
  %t11 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d126, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d126, i32 0, i32 1) }, 0
  %t13 = add i64 %t10, %t12
  %t15 = call i64 @__olang_fmt_i64(ptr null, i64 %a1)
  %t16 = add i64 %t13, %t15
  %t17 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d127, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d127, i32 0, i32 1) }, 0
  %t19 = add i64 %t16, %t18
  %t20 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t19)
  call void @olang_textcopy(ptr %t20, ptr %t5, i64 %t6)
  %t21 = getelementptr i8, ptr %t20, i64 %t6
  call void @olang_textcopy(ptr %t21, ptr %t8, i64 %t9)
  %t22 = getelementptr i8, ptr %t21, i64 %t9
  call void @olang_textcopy(ptr %t22, ptr %t11, i64 %t12)
  %t23 = getelementptr i8, ptr %t22, i64 %t12
  %t24 = call i64 @__olang_fmt_i64(ptr %t23, i64 %a1)
  %t25 = getelementptr i8, ptr %t23, i64 %t15
  call void @olang_textcopy(ptr %t25, ptr %t17, i64 %t18)
  %t26 = insertvalue { i64, ptr } undef, i64 %t19, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t20, 1
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t30 = extractvalue { i64, ptr } %t27, 1
  %t31 = mul i64 %t29, 1
  %t32 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t31)
  call void @llvm.memcpy.p0.p0.i64(ptr %t32, ptr %t30, i64 %t31, i1 false)
  %t33 = insertvalue { i64, ptr } undef, i64 %t29, 0
  %t34 = insertvalue { i64, ptr } %t33, ptr %t32, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } %t34)
  br label %bb2
bb2:
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v1, ptr %l3, { i64, ptr } %a2)
  br label %bb3
bb3:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l3, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d128, i32 0, i32 1) })
  br label %bb4
bb4:
  %t42 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l3)
  store { i64, ptr } %t42, ptr %l14
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t43 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t43, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eframed(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t4 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d129, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d129, i32 0, i32 1) }, 0
  %t8 = call i64 @__olang_fmt_i64(ptr null, i64 %t3)
  %t9 = add i64 %t6, %t8
  %t10 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d130, i32 0, i32 1) }, 1
  %t11 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d130, i32 0, i32 1) }, 0
  %t12 = add i64 %t9, %t11
  %t14 = extractvalue { i64, ptr } %t4, 1
  %t15 = extractvalue { i64, ptr } %t4, 0
  %t16 = add i64 %t12, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t5, i64 %t6)
  %t18 = getelementptr i8, ptr %t17, i64 %t6
  %t19 = call i64 @__olang_fmt_i64(ptr %t18, i64 %t3)
  %t20 = getelementptr i8, ptr %t18, i64 %t8
  call void @olang_textcopy(ptr %t20, ptr %t10, i64 %t11)
  %t21 = getelementptr i8, ptr %t20, i64 %t11
  call void @olang_textcopy(ptr %t21, ptr %t14, i64 %t15)
  %t22 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t23 = insertvalue { i64, ptr } %t22, ptr %t17, 1
  store { i64, ptr } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2flsp_2eframes(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca { i64, ptr }
  %l12 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca { i64, ptr }
  %l24 = alloca i64
  %l27 = alloca i64
  %l28 = alloca i64
  %l33 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i32
  %l37 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca i64
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca i32
  %l57 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l70 = alloca { i64, ptr }
  %l74 = alloca i64
  %l77 = alloca i64
  %l78 = alloca i64
  %s1 = alloca %olang.scope
  %rv = alloca ptr
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l7
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  %t3 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %t3
  store ptr %t3, ptr %l1, !tbaa !29
  %t5 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t5, ptr %l9, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t6, 0
  store i64 %t9, ptr %l12, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l9, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t10, 0
  store i64 %t11, ptr %l13, !tbaa !24
  %t12 = icmp sge i64 0, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = load i64, ptr %l12, !tbaa !24
  %t15 = icmp sle i64 0, %t14
  br i1 %t15, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_f3afb7cdea72bea9_2e903794abb886a5)
  unreachable
bb4:
  %t17 = load i64, ptr %l12, !tbaa !24
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = icmp sle i64 %t17, %t18
  br i1 %t19, label %bb6, label %bb7
bb5:
  call void @__olang_check_failed(ptr @olang_loc_f3afb7cdea72bea9_2e903794abb886a5)
  unreachable
bb6:
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = load i64, ptr %l12, !tbaa !24
  %t24 = getelementptr i8, ptr %t22, i64 0
  %t25 = sub i64 %t23, 0
  %t26 = insertvalue { i64, ptr } undef, i64 %t25, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t24, 1
  store { i64, ptr } %t27, ptr %l2, !tbaa !27
  br label %bb8
bb7:
  call void @__olang_check_failed(ptr @olang_loc_f3afb7cdea72bea9_2e903794abb886a5)
  unreachable
bb8:
  store %olang.scope zeroinitializer, ptr %s1
  %t29 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t31 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t29, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d131, i32 0, i32 1) })
  %t32 = extractvalue { i32, i64 } %t31, 1
  %t33 = extractvalue { i32, i64 } %t31, 0
  store i32 %t33, ptr %l21
  %t34 = icmp ne i32 %t33, 0
  br i1 %t34, label %bb10, label %ok.35, !prof !99
ok.35:
  store i64 %t32, ptr %l20
  br label %bb9
bb9:
  %t36 = load i64, ptr %l20, !tbaa !24
  store i64 %t36, ptr %l18, !tbaa !24
  br label %bb12
bb10:
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb12:
  %t37 = load i64, ptr %l18, !tbaa !24
  %t38 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t38, ptr %l22, !tbaa !27
  %t41 = add i64 %t37, 16
  store i64 %t41, ptr %l24, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t45 = extractvalue { i64, ptr } %t42, 0
  store i64 %t45, ptr %l27, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  store i64 %t47, ptr %l28, !tbaa !24
  %t48 = load i64, ptr %l24, !tbaa !24
  %t49 = icmp sge i64 %t48, 0
  br i1 %t49, label %bb13, label %bb14
bb13:
  %t51 = load i64, ptr %l24, !tbaa !24
  %t52 = load i64, ptr %l27, !tbaa !24
  %t53 = icmp sle i64 %t51, %t52
  br i1 %t53, label %bb15, label %bb16
bb14:
  call void @__olang_check_failed(ptr @olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648)
  unreachable
bb15:
  %t55 = load i64, ptr %l27, !tbaa !24
  %t56 = load i64, ptr %l28, !tbaa !24
  %t57 = icmp sle i64 %t55, %t56
  br i1 %t57, label %bb17, label %bb18
bb16:
  call void @__olang_check_failed(ptr @olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648)
  unreachable
bb17:
  %t59 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l24, !tbaa !24
  %t62 = load i64, ptr %l27, !tbaa !24
  %t63 = getelementptr i8, ptr %t60, i64 %t61
  %t64 = sub i64 %t62, %t61
  %t65 = insertvalue { i64, ptr } undef, i64 %t64, 0
  %t66 = insertvalue { i64, ptr } %t65, ptr %t63, 1
  store { i64, ptr } %t66, ptr %l4, !tbaa !27
  %t68 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t70 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %s1, { i64, ptr } %t68, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d132, i32 0, i32 1) })
  %t71 = extractvalue { i32, i64 } %t70, 1
  %t72 = extractvalue { i32, i64 } %t70, 0
  store i32 %t72, ptr %l36
  %t73 = icmp ne i32 %t72, 0
  br i1 %t73, label %bb20, label %ok.74, !prof !99
ok.74:
  store i64 %t71, ptr %l35
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648)
  unreachable
bb19:
  %t75 = load i64, ptr %l35, !tbaa !24
  store i64 %t75, ptr %l33, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb22:
  %t76 = load i64, ptr %l33, !tbaa !24
  store i64 %t76, ptr %l5, !tbaa !24
  %t77 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t77, ptr %l38, !tbaa !27
  %t78 = load i64, ptr %l5, !tbaa !24
  store i64 %t78, ptr %l39, !tbaa !24
  %t79 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t80 = extractvalue { i64, ptr } %t79, 0
  store i64 %t80, ptr %l40, !tbaa !24
  %t81 = icmp sge i64 0, 0
  br i1 %t81, label %bb23, label %bb24
bb23:
  %t83 = load i64, ptr %l39, !tbaa !24
  %t84 = icmp sle i64 0, %t83
  br i1 %t84, label %bb25, label %bb26
bb24:
  call void @__olang_check_failed(ptr @olang_loc_6f843a9f898efe67_8723688731f48c63)
  unreachable
bb25:
  %t86 = load i64, ptr %l39, !tbaa !24
  %t87 = load i64, ptr %l40, !tbaa !24
  %t88 = icmp sle i64 %t86, %t87
  br i1 %t88, label %bb27, label %bb28
bb26:
  call void @__olang_check_failed(ptr @olang_loc_6f843a9f898efe67_8723688731f48c63)
  unreachable
bb27:
  %t90 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = load i64, ptr %l39, !tbaa !24
  %t93 = getelementptr i8, ptr %t91, i64 0
  %t94 = sub i64 %t92, 0
  %t95 = insertvalue { i64, ptr } undef, i64 %t94, 0
  %t96 = insertvalue { i64, ptr } %t95, ptr %t93, 1
  %t98 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %s1, { i64, ptr } %t96)
  store { i64, ptr } %t98, ptr %l45
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_6f843a9f898efe67_8723688731f48c63)
  unreachable
bb29:
  %t99 = call { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %s1, i64 10)
  %t100 = extractvalue { i32, i64 } %t99, 1
  %t101 = extractvalue { i32, i64 } %t99, 0
  store i32 %t101, ptr %l47
  %t102 = icmp ne i32 %t101, 0
  br i1 %t102, label %bb31, label %ok.103, !prof !99
ok.103:
  store i64 %t100, ptr %l46
  br label %bb30
bb30:
  %t104 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t105 = load i64, ptr %l46, !tbaa !24
  %t106 = call { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %s1, { i64, ptr } %t104, i64 %t105)
  %t107 = extractvalue { i32, i64 } %t106, 1
  %t108 = extractvalue { i32, i64 } %t106, 0
  store i32 %t108, ptr %l49
  %t109 = icmp ne i32 %t108, 0
  br i1 %t109, label %bb34, label %ok.110, !prof !99
ok.110:
  store i64 %t107, ptr %l48
  br label %bb33
bb31:
  br label %bb32
bb32:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb33:
  %t111 = load i64, ptr %l48, !tbaa !24
  store i64 %t111, ptr %l37, !tbaa !24
  br label %bb35
bb34:
  br label %bb32
bb35:
  %t112 = load i64, ptr %l37, !tbaa !24
  store i64 %t112, ptr %l6, !tbaa !24
  %t113 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t115 = extractvalue { i64, ptr } %t113, 0
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = add i64 %t116, 4
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = add i64 %t118, %t119
  %t125 = icmp slt i64 %t115, %t122
  br i1 %t125, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s1)
  br label %bb53
bb37:
  br label %bb38
bb38:
  %t127 = load ptr, ptr %l1, !tbaa !29
  store ptr %t127, ptr %l57, !tbaa !29
  %t128 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t128, ptr %l58, !tbaa !27
  %t129 = load i64, ptr %l5, !tbaa !24
  %t131 = add i64 %t129, 4
  store i64 %t131, ptr %l60, !tbaa !24
  %t132 = load i64, ptr %l5, !tbaa !24
  %t134 = add i64 %t132, 4
  %t135 = load i64, ptr %l6, !tbaa !24
  %t138 = add i64 %t134, %t135
  store i64 %t138, ptr %l64, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l58, !tbaa !27
  %t140 = extractvalue { i64, ptr } %t139, 0
  store i64 %t140, ptr %l65, !tbaa !24
  %t141 = load i64, ptr %l60, !tbaa !24
  %t142 = icmp sge i64 %t141, 0
  br i1 %t142, label %bb39, label %bb40
bb39:
  %t144 = load i64, ptr %l60, !tbaa !24
  %t145 = load i64, ptr %l64, !tbaa !24
  %t146 = icmp sle i64 %t144, %t145
  br i1 %t146, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186)
  unreachable
bb41:
  %t148 = load i64, ptr %l64, !tbaa !24
  %t149 = load i64, ptr %l65, !tbaa !24
  %t150 = icmp sle i64 %t148, %t149
  br i1 %t150, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186)
  unreachable
bb43:
  %t152 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = load i64, ptr %l60, !tbaa !24
  %t155 = load i64, ptr %l64, !tbaa !24
  %t156 = getelementptr i8, ptr %t153, i64 %t154
  %t157 = sub i64 %t155, %t154
  %t158 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t159 = insertvalue { i64, ptr } %t158, ptr %t156, 1
  %t160 = load ptr, ptr %l57, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v0, ptr %t160, { i64, ptr } %t159)
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186)
  unreachable
bb45:
  %t162 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t162, ptr %l70, !tbaa !27
  %t163 = load i64, ptr %l5, !tbaa !24
  %t165 = add i64 %t163, 4
  %t166 = load i64, ptr %l6, !tbaa !24
  %t169 = add i64 %t165, %t166
  store i64 %t169, ptr %l74, !tbaa !24
  %t170 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t173 = extractvalue { i64, ptr } %t170, 0
  store i64 %t173, ptr %l77, !tbaa !24
  %t174 = load { i64, ptr }, ptr %l70, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t174, 0
  store i64 %t175, ptr %l78, !tbaa !24
  %t176 = load i64, ptr %l74, !tbaa !24
  %t177 = icmp sge i64 %t176, 0
  br i1 %t177, label %bb46, label %bb47
bb46:
  %t179 = load i64, ptr %l74, !tbaa !24
  %t180 = load i64, ptr %l77, !tbaa !24
  %t181 = icmp sle i64 %t179, %t180
  br i1 %t181, label %bb48, label %bb49
bb47:
  call void @__olang_check_failed(ptr @olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49)
  unreachable
bb48:
  %t183 = load i64, ptr %l77, !tbaa !24
  %t184 = load i64, ptr %l78, !tbaa !24
  %t185 = icmp sle i64 %t183, %t184
  br i1 %t185, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49)
  unreachable
bb50:
  %t187 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t188 = load ptr, ptr %t187, !tbaa !27
  %t189 = load i64, ptr %l74, !tbaa !24
  %t190 = load i64, ptr %l77, !tbaa !24
  %t191 = getelementptr i8, ptr %t188, i64 %t189
  %t192 = sub i64 %t190, %t189
  %t193 = insertvalue { i64, ptr } undef, i64 %t192, 0
  %t194 = insertvalue { i64, ptr } %t193, ptr %t191, 1
  store { i64, ptr } %t194, ptr %l2, !tbaa !27
  call void @__olang_scope_close(ptr %s1)
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49)
  unreachable
bb52:
  br label %bb8
bb53:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2eidOf(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l2 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i1
  %l12 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d133, i32 0, i32 1) }, ptr %l4, !tbaa !27
  %t2 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v0, ptr %a0, { i64, ptr } %t2)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l7
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  store ptr %t10, ptr %l2, !tbaa !29
  br label %bb6
bb2:
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = ashr i32 %t11, 16
  %t14 = icmp eq i32 %t12, 1
  store i1 %t14, ptr %l9, !tbaa !21
  %t15 = load i32, ptr %l7, !tbaa !23
  %t16 = ashr i32 %t15, 16
  %t18 = icmp eq i32 %t16, 1
  br i1 %t18, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d134, i32 0, i32 1) }, ptr %l12, !tbaa !27
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t20, ptr %l13, !tbaa !27
  %t21 = load { i64, ptr }, ptr %l13, !tbaa !27
  %t22 = extractvalue { i64, ptr } %t21, 0
  store i64 %t22, ptr %l14, !tbaa !24
  %t23 = load i64, ptr %l14, !tbaa !24
  %t24 = mul i64 %t23, 1
  %t25 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t24)
  %t26 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t27 = insertvalue { i64, ptr } %t26, ptr %t25, 1
  store { i64, ptr } %t27, ptr %l15, !tbaa !27
  %t28 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = load i64, ptr %l14, !tbaa !24
  %t33 = mul i64 %t32, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t29, ptr %t31, i64 %t33, i1 false)
  %t34 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t34, ptr %l13, !tbaa !27
  %t35 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
bb6:
  %t36 = load ptr, ptr %l2, !tbaa !29
  %t40 = call { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v1, ptr %t36, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d135, i32 0, i32 1) }, i32 0)
  store { i64, ptr } %t40, ptr %l18
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t41, ptr %l19, !tbaa !27
  %t42 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t42, 0
  store i64 %t43, ptr %l20, !tbaa !24
  %t44 = load i64, ptr %l20, !tbaa !24
  %t45 = mul i64 %t44, 1
  %t46 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t45)
  %t47 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t48 = insertvalue { i64, ptr } %t47, ptr %t46, 1
  store { i64, ptr } %t48, ptr %l21, !tbaa !27
  %t49 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = load i64, ptr %l20, !tbaa !24
  %t54 = mul i64 %t53, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %t52, i64 %t54, i1 false)
  %t55 = load { i64, ptr }, ptr %l21, !tbaa !27
  store { i64, ptr } %t55, ptr %l19, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2elostDiagnostic(ptr %v0, ptr %v1, { i64, ptr } %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l2
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l2
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d136, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 89, ptr getelementptr inbounds (<{ i64, [89 x i8] }>, ptr @.d136, i32 0, i32 1) }, 0
  %t5 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d137, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 27, ptr getelementptr inbounds (<{ i64, [27 x i8] }>, ptr @.d137, i32 0, i32 1) }, 0
  %t7 = add i64 %t4, %t6
  %t8 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t7)
  call void @olang_textcopy(ptr %t8, ptr %t3, i64 %t4)
  %t9 = getelementptr i8, ptr %t8, i64 %t4
  call void @olang_textcopy(ptr %t9, ptr %t5, i64 %t6)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t8, 1
  %t13 = extractvalue { i64, ptr } %t11, 0
  %t14 = extractvalue { i64, ptr } %t11, 1
  %t15 = mul i64 %t13, 1
  %t16 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t15)
  call void @llvm.memcpy.p0.p0.i64(ptr %t16, ptr %t14, i64 %t15, i1 false)
  %t17 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t18 = insertvalue { i64, ptr } %t17, ptr %t16, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t18)
  br label %bb2
bb2:
  %t22 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 1
  %t23 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d138, i32 0, i32 1) }, 0
  %t25 = extractvalue { i64, ptr } %a0, 1
  %t26 = extractvalue { i64, ptr } %a0, 0
  %t27 = add i64 %t23, %t26
  %t28 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d139, i32 0, i32 1) }, 1
  %t29 = extractvalue { i64, ptr } { i64 44, ptr getelementptr inbounds (<{ i64, [44 x i8] }>, ptr @.d139, i32 0, i32 1) }, 0
  %t30 = add i64 %t27, %t29
  %t31 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t30)
  call void @olang_textcopy(ptr %t31, ptr %t22, i64 %t23)
  %t32 = getelementptr i8, ptr %t31, i64 %t23
  call void @olang_textcopy(ptr %t32, ptr %t25, i64 %t26)
  %t33 = getelementptr i8, ptr %t32, i64 %t26
  call void @olang_textcopy(ptr %t33, ptr %t28, i64 %t29)
  %t34 = insertvalue { i64, ptr } undef, i64 %t30, 0
  %t35 = insertvalue { i64, ptr } %t34, ptr %t31, 1
  %t37 = extractvalue { i64, ptr } %t35, 0
  %t38 = extractvalue { i64, ptr } %t35, 1
  %t39 = mul i64 %t37, 1
  %t40 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t39)
  call void @llvm.memcpy.p0.p0.i64(ptr %t40, ptr %t38, i64 %t39, i1 false)
  %t41 = insertvalue { i64, ptr } undef, i64 %t37, 0
  %t42 = insertvalue { i64, ptr } %t41, ptr %t40, 1
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } %t42)
  br label %bb3
bb3:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l1, { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d140, i32 0, i32 1) })
  br label %bb4
bb4:
  %t47 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l1)
  store { i64, ptr } %t47, ptr %l12
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t48 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t48, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2epublish(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/text:StringBuilder"
  %l12 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l3
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l3
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } { i64 76, ptr getelementptr inbounds (<{ i64, [76 x i8] }>, ptr @.d141, i32 0, i32 1) })
  br label %bb2
bb2:
  call void @compiler_2fsession_2eJsonStr(ptr %s0, ptr %v0, ptr %l2, { i64, ptr } %a0)
  br label %bb3
bb3:
  %t8 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d142, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d142, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %a1, 1
  %t12 = extractvalue { i64, ptr } %a1, 0
  %t13 = add i64 %t9, %t12
  %t14 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, 1
  %t15 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d143, i32 0, i32 1) }, 0
  %t16 = add i64 %t13, %t15
  %t17 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t16)
  call void @olang_textcopy(ptr %t17, ptr %t8, i64 %t9)
  %t18 = getelementptr i8, ptr %t17, i64 %t9
  call void @olang_textcopy(ptr %t18, ptr %t11, i64 %t12)
  %t19 = getelementptr i8, ptr %t18, i64 %t12
  call void @olang_textcopy(ptr %t19, ptr %t14, i64 %t15)
  %t20 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t21 = insertvalue { i64, ptr } %t20, ptr %t17, 1
  %t23 = extractvalue { i64, ptr } %t21, 0
  %t24 = extractvalue { i64, ptr } %t21, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l2, { i64, ptr } %t28)
  br label %bb4
bb4:
  %t32 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t32, ptr %l12
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t33 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t33, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2ereply(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t3 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d144, i32 0, i32 1) }, 1
  %t4 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d144, i32 0, i32 1) }, 0
  %t6 = extractvalue { i64, ptr } %a0, 1
  %t7 = extractvalue { i64, ptr } %a0, 0
  %t8 = add i64 %t4, %t7
  %t9 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d145, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d145, i32 0, i32 1) }, 0
  %t11 = add i64 %t8, %t10
  %t13 = extractvalue { i64, ptr } %a1, 1
  %t14 = extractvalue { i64, ptr } %a1, 0
  %t15 = add i64 %t11, %t14
  %t16 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d146, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d146, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t19 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t18)
  call void @olang_textcopy(ptr %t19, ptr %t3, i64 %t4)
  %t20 = getelementptr i8, ptr %t19, i64 %t4
  call void @olang_textcopy(ptr %t20, ptr %t6, i64 %t7)
  %t21 = getelementptr i8, ptr %t20, i64 %t7
  call void @olang_textcopy(ptr %t21, ptr %t9, i64 %t10)
  %t22 = getelementptr i8, ptr %t21, i64 %t10
  call void @olang_textcopy(ptr %t22, ptr %t13, i64 %t14)
  %t23 = getelementptr i8, ptr %t22, i64 %t14
  call void @olang_textcopy(ptr %t23, ptr %t16, i64 %t17)
  %t24 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t25 = insertvalue { i64, ptr } %t24, ptr %t19, 1
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2flsp_2estr(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l8 = alloca i1
  %l11 = alloca { i64, ptr }
  %l12 = alloca i32
  %l14 = alloca i1
  %rv = alloca { i64, ptr }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v0, ptr %a0, { i64, ptr } %a1)
  %t6 = extractvalue { i32, ptr } %t5, 1
  %t7 = extractvalue { i32, ptr } %t5, 0
  store i32 %t7, ptr %l6
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store ptr %t6, ptr %l5
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l5, !tbaa !29
  %t11 = call { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v2, ptr %t10)
  %t12 = extractvalue { i32, { i64, ptr } } %t11, 1
  %t13 = extractvalue { i32, { i64, ptr } } %t11, 0
  store i32 %t13, ptr %l12
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb7, label %ok.15, !prof !99
ok.15:
  store { i64, ptr } %t12, ptr %l11
  br label %bb6
bb2:
  %t16 = load i32, ptr %l6, !tbaa !23
  %t17 = ashr i32 %t16, 16
  %t19 = icmp eq i32 %t17, 1
  store i1 %t19, ptr %l8, !tbaa !21
  %t20 = load i32, ptr %l6, !tbaa !23
  %t21 = ashr i32 %t20, 16
  %t23 = icmp eq i32 %t21, 1
  br i1 %t23, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d147, i32 0, i32 1) }, ptr %l2, !tbaa !27
  br label %bb10
bb6:
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %l2, !tbaa !27
  br label %bb10
bb7:
  %t26 = load i32, ptr %l12, !tbaa !23
  %t27 = ashr i32 %t26, 16
  %t29 = icmp eq i32 %t27, 1
  store i1 %t29, ptr %l14, !tbaa !21
  %t30 = load i32, ptr %l12, !tbaa !23
  %t31 = ashr i32 %t30, 16
  %t33 = icmp eq i32 %t31, 1
  br i1 %t33, label %bb8, label %bb9
bb8:
  call void @__olang_errpay_pop()
  br label %bb9
bb9:
  br label %bb5
bb10:
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2flsp_3aDoc_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %v3, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i1
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/text:StringBuilder"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l21 = alloca i64
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca %"compiler/lsp:Doc"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l3, !tbaa !27
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store { i64, ptr } %a2, ptr %l5, !tbaa !27
  %t7 = ptrtoint ptr %v3 to i64
  store i64 %t7, ptr %l13, !tbaa !24
  %t8 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e3
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = call ptr @__olang_region_make(ptr %v3)
  %t11 = ptrtoint ptr %t10 to i64
  store i64 %t11, ptr %l13, !tbaa !24
  br label %bb2
bb2:
  %t12 = load i64, ptr %l13
  %t13 = inttoptr i64 %t12 to ptr
  %t14 = call %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2ftext_3aStringBuilder(ptr %t13)
  store %"std/prelude/text:StringBuilder" %t14, ptr %l15
  br label %bb3
bb3:
  %t15 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e3
  br i1 %t15, label %bb4, label %bb5
bb4:
  %t17 = load i64, ptr %l13
  %t18 = inttoptr i64 %t17 to ptr
  %t19 = getelementptr %"std/prelude/text:StringBuilder", ptr %l15, i32 0, i32 0
  %t20 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t19, i32 0, i32 0
  %t21 = load { i64, ptr }, ptr %t20
  %t22 = extractvalue { i64, ptr } %t21, 1
  %t23 = call ptr @__olang_region_or(ptr %t22, ptr null)
  %t24 = icmp ne ptr %t23, null
  %t25 = select i1 %t24, ptr %t23, ptr null
  %t26 = icmp eq ptr %t25, %t18
  call void @__olang_region_settle(ptr %t18, i1 %t26)
  br label %bb5
bb5:
  %t27 = load %"std/prelude/text:StringBuilder", ptr %l15
  store %"std/prelude/text:StringBuilder" %t27, ptr %l6
  store i1 true, ptr %l7, !tbaa !21
  %t28 = ptrtoint ptr %v3 to i64
  store i64 %t28, ptr %l17, !tbaa !24
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e5
  br i1 %t29, label %bb6, label %bb7
bb6:
  %t31 = call ptr @__olang_region_make(ptr %v3)
  %t32 = ptrtoint ptr %t31 to i64
  store i64 %t32, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l17
  %t34 = inttoptr i64 %t33 to ptr
  %t35 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t34, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t35, ptr %l19
  br label %bb8
bb8:
  %t36 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e5
  br i1 %t36, label %bb9, label %bb10
bb9:
  %t38 = load i64, ptr %l17
  %t39 = inttoptr i64 %t38 to ptr
  %t40 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t41 = load { i64, ptr }, ptr %t40
  %t42 = extractvalue { i64, ptr } %t41, 1
  %t43 = call ptr @__olang_region_or(ptr %t42, ptr null)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr null
  %t46 = icmp eq ptr %t45, %t39
  call void @__olang_region_settle(ptr %t39, i1 %t46)
  br label %bb10
bb10:
  %t47 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t47, ptr %l8
  %t48 = ptrtoint ptr %v3 to i64
  store i64 %t48, ptr %l21, !tbaa !24
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e6
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = call ptr @__olang_region_make(ptr %v3)
  %t52 = ptrtoint ptr %t51 to i64
  store i64 %t52, ptr %l21, !tbaa !24
  br label %bb12
bb12:
  %t53 = load i64, ptr %l21
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t54, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t55, ptr %l23
  br label %bb13
bb13:
  %t56 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aDoc_2e6
  br i1 %t56, label %bb14, label %bb15
bb14:
  %t58 = load i64, ptr %l21
  %t59 = inttoptr i64 %t58 to ptr
  %t60 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23, i32 0, i32 0
  %t61 = load { i64, ptr }, ptr %t60
  %t62 = extractvalue { i64, ptr } %t61, 1
  %t63 = call ptr @__olang_region_or(ptr %t62, ptr null)
  %t64 = icmp ne ptr %t63, null
  %t65 = select i1 %t64, ptr %t63, ptr null
  %t66 = icmp eq ptr %t65, %t59
  call void @__olang_region_settle(ptr %t59, i1 %t66)
  br label %bb15
bb15:
  %t67 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  %t68 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 0
  %t69 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t69, ptr %t68, !tbaa !27
  %t70 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 1
  %t71 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t71, ptr %t70, !tbaa !27
  %t72 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 2
  %t73 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t73, ptr %t72, !tbaa !27
  %t74 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 3
  %t75 = load %"std/prelude/text:StringBuilder", ptr %l6
  store %"std/prelude/text:StringBuilder" %t75, ptr %t74
  %t76 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 4
  %t77 = load i1, ptr %l7, !tbaa !21
  store i1 %t77, ptr %t76, !tbaa !21
  %t78 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 5
  %t79 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %t78
  %t80 = getelementptr %"compiler/lsp:Doc", ptr %l25, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t67, ptr %t80
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l25, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2flsp_3aServer_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i1
  %l4 = alloca %"compiler/lsp:Worker"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"compiler/lsp:Worker"
  %l16 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca i64
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"compiler/lsp:Server"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l1, !tbaa !29
  %t3 = ptrtoint ptr %v1 to i64
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = call ptr @__olang_region_make(ptr %v1)
  %t7 = ptrtoint ptr %t6 to i64
  store i64 %t7, ptr %l11, !tbaa !24
  br label %bb2
bb2:
  %t8 = load i64, ptr %l11
  %t9 = inttoptr i64 %t8 to ptr
  %t10 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ector(ptr %t9, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %l13
  br label %bb3
bb3:
  %t11 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e1
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l11
  %t14 = inttoptr i64 %t13 to ptr
  %t15 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13, i32 0, i32 0
  %t16 = load { i64, ptr }, ptr %t15
  %t17 = extractvalue { i64, ptr } %t16, 1
  %t18 = call ptr @__olang_region_or(ptr %t17, ptr null)
  %t19 = icmp ne ptr %t18, null
  %t20 = select i1 %t19, ptr %t18, ptr null
  %t21 = icmp eq ptr %t20, %t14
  call void @__olang_region_settle(ptr %t14, i1 %t21)
  br label %bb5
bb5:
  %t22 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t22, ptr %l2
  store i1 false, ptr %l3, !tbaa !21
  %t23 = call %"compiler/lsp:Worker" @compiler_2flsp_3aWorker_2ector(ptr %v1)
  store %"compiler/lsp:Worker" %t23, ptr %l15
  br label %bb6
bb6:
  %t24 = load %"compiler/lsp:Worker", ptr %l15
  store %"compiler/lsp:Worker" %t24, ptr %l4
  %t25 = ptrtoint ptr %v1 to i64
  store i64 %t25, ptr %l16, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e4
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = call ptr @__olang_region_make(ptr %v1)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l16
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l18
  br label %bb9
bb9:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e4
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l16
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb11
bb11:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l5
  %t45 = ptrtoint ptr %v1 to i64
  store i64 %t45, ptr %l20, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e5
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = call ptr @__olang_region_make(ptr %v1)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l20, !tbaa !24
  br label %bb13
bb13:
  %t50 = load i64, ptr %l20
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l22
  br label %bb14
bb14:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aServer_2e5
  br i1 %t53, label %bb15, label %bb16
bb15:
  %t55 = load i64, ptr %l20
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t63)
  br label %bb16
bb16:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  %t65 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 0
  %t66 = load ptr, ptr %l1, !tbaa !29
  store ptr %t66, ptr %t65, !tbaa !29
  %t67 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 1
  %t68 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %t67
  %t69 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 2
  %t70 = load i1, ptr %l3, !tbaa !21
  store i1 %t70, ptr %t69, !tbaa !21
  %t71 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 3
  %t72 = load %"compiler/lsp:Worker", ptr %l4
  store %"compiler/lsp:Worker" %t72, ptr %t71
  %t73 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 4
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %t73
  %t75 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, ptr %t75
  %t77 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 6
  store i64 0, ptr %t77, !tbaa !24
  %t79 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 7
  store i1 false, ptr %t79, !tbaa !21
  %t81 = getelementptr %"compiler/lsp:Server", ptr %l24, i32 0, i32 8
  store i1 false, ptr %t81, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l24, i64 152, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/lsp:Worker" @compiler_2flsp_3aWorker_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/lsp:Worker"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/lsp:Worker" undef, i32 -1, 0
  %t4 = insertvalue %"compiler/lsp:Worker" %t2, i32 -1, 1
  %t6 = insertvalue %"compiler/lsp:Worker" %t4, ptr null, 2
  %t8 = insertvalue %"compiler/lsp:Worker" %t6, i64 0, 3
  store %"compiler/lsp:Worker" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lsp:Worker", ptr %rv
  ret %"compiler/lsp:Worker" %rr
}

define dso_local %"compiler/lsp:worker" @compiler_2flsp_3aworker_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l15 = alloca i64
  %l17 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"compiler/lsp:worker"
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l4, !tbaa !29
  store ptr %a1, ptr %l5, !tbaa !29
  store i32 %a2, ptr %l6, !tbaa !23
  store i32 %a3, ptr %l7, !tbaa !23
  %t9 = ptrtoint ptr %v2 to i64
  store i64 %t9, ptr %l15, !tbaa !24
  %t10 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aworker_2e4
  br i1 %t10, label %bb1, label %bb2
bb1:
  %t12 = call ptr @__olang_region_make(ptr %v2)
  %t13 = ptrtoint ptr %t12 to i64
  store i64 %t13, ptr %l15, !tbaa !24
  br label %bb2
bb2:
  %t14 = load i64, ptr %l15
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %t15)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t16, ptr %l17
  br label %bb3
bb3:
  %t17 = load i1, ptr @olang_2esole_2ecompiler_2flsp_3aworker_2e4
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t19 = load i64, ptr %l15
  %t20 = inttoptr i64 %t19 to ptr
  %t21 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 2
  %t22 = load { i64, ptr }, ptr %t21
  %t23 = extractvalue { i64, ptr } %t22, 1
  %t24 = call ptr @__olang_region_or(ptr %t23, ptr null)
  %t25 = icmp ne ptr %t24, null
  %t26 = select i1 %t25, ptr %t24, ptr null
  %t27 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 1
  %t28 = load { i64, ptr }, ptr %t27
  %t29 = extractvalue { i64, ptr } %t28, 1
  %t30 = call ptr @__olang_region_or(ptr %t29, ptr null)
  %t31 = icmp ne ptr %t30, null
  %t32 = select i1 %t31, ptr %t30, ptr %t26
  %t33 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr %t32
  %t39 = icmp eq ptr %t38, %t20
  call void @__olang_region_settle(ptr %t20, i1 %t39)
  br label %bb5
bb5:
  %t40 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l17
  %t41 = load ptr, ptr %l4, !tbaa !29
  %t42 = insertvalue %"compiler/lsp:worker" undef, ptr %t41, 0
  %t43 = load ptr, ptr %l5, !tbaa !29
  %t44 = insertvalue %"compiler/lsp:worker" %t42, ptr %t43, 1
  %t45 = load i32, ptr %l6, !tbaa !23
  %t46 = insertvalue %"compiler/lsp:worker" %t44, i32 %t45, 2
  %t47 = load i32, ptr %l7, !tbaa !23
  %t48 = insertvalue %"compiler/lsp:worker" %t46, i32 %t47, 3
  %t50 = insertvalue %"compiler/lsp:worker" %t48, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t40, 4
  %t52 = insertvalue %"compiler/lsp:worker" %t50, ptr null, 5
  %t54 = insertvalue %"compiler/lsp:worker" %t52, i64 -1, 6
  store %"compiler/lsp:worker" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/lsp:worker", ptr %rv
  ret %"compiler/lsp:worker" %rr
}

@.d0 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"file://" }>, align 8
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
@.d1 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"checking took more than a minute - it was stopped" }>, align 8
@.d2 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"file://" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"%" }>, align 8
@.d4 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"OLANG" }>, align 8
declare void @__olang_errpay_pop()
@.d5 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d6 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d7 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"build/olang" }>, align 8
@.d8 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@olang_2esole_2eArray_3cmut_20compiler_2flsp_3aDoc_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
@.d9 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d10 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d11 = private constant <{ i64, [49 x i8] }> <{ i64 0, [49 x i8] c"checking took more than a minute - it was stopped" }>, align 8
@.d12 = private constant <{ i64, [43 x i8] }> <{ i64 0, [43 x i8] c"the compiler ended while checking this file" }>, align 8
@.d13 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"the compiler ended (" }>, align 8
@.d14 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c") while checking this file" }>, align 8
@.d15 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22olang\22:" }>, align 8
@.d16 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d17 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d18 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"the message is not JSON" }>, align 8
@.d19 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d20 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"initialize" }>, align 8
@.d21 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"initialized" }>, align 8
@.d22 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"$/cancelRequest" }>, align 8
@.d23 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"$/setTrace" }>, align 8
@.d24 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"textDocument/didSave" }>, align 8
@.d25 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"shutdown" }>, align 8
@.d26 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d27 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"exit" }>, align 8
@.d28 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"textDocument/didOpen" }>, align 8
@.d29 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d30 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d31 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d32 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d33 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"textDocument/didChange" }>, align 8
@.d34 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d35 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d36 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d37 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"contentChanges" }>, align 8
@.d38 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"text" }>, align 8
@.d39 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"textDocument/didClose" }>, align 8
@.d40 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d41 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d42 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d44 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"olang lsp has no " }>, align 8
@.d45 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d46 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"capabilities" }>, align 8
@.d47 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"general" }>, align 8
@.d48 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"positionEncodings" }>, align 8
@__olang_empty_array = external constant [16 x i64]
@.d49 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d50 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"utf-8" }>, align 8
@.d51 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"utf-8" }>, align 8
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"utf-16" }>, align 8
@.d53 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"{\22positionEncoding\22:\22" }>, align 8
@.d54 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"\22,\22textDocumentSync\22:{\22openClose\22:true," }>, align 8
@.d55 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"\22change\22:1},\22hoverProvider\22:true,\22definitionProvider\22:true,\22documentSymbolProvider\22:true," }>, align 8
@.d56 = private constant <{ i64, [83 x i8] }> <{ i64 0, [83 x i8] c"\22completionProvider\22:{\22triggerCharacters\22:[\22.\22]},\22documentFormattingProvider\22:true}" }>, align 8
@.d57 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"{\22capabilities\22:" }>, align 8
@.d58 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c",\22serverInfo\22:{\22name\22:\22olang\22}}" }>, align 8
@.d59 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"slot" }>, align 8
@.d60 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"deps" }>, align 8
@.d61 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"foreign" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d62 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flsp_3aDoc_2e0 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aDoc_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aDoc_2e2 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
declare ptr @__olang_scope_or(ptr, ptr)
@olang_2esole_2ecompiler_2flsp_3aWorker_2e2 = weak hidden constant i1 false
declare i64 @__olang_fmt_i64(ptr, i64)
@.d63 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"the files changed" }>, align 8
@.d64 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33385783b00c3f13cf90b683d8670 = weak hidden constant i1 false
@olang_2esole_2estd_2fprelude_2fmap_3aMapEntry_3cstd_2fprelude_2ftext_3aString_26_2c_20st_Ha3f33285783aff10f13cf80b683d8c03 = weak hidden constant i1 false
@.d65 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"method" }>, align 8
@.d66 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"params" }>, align 8
@.d67 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d68 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"textDocument" }>, align 8
@.d69 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"uri" }>, align 8
@.d70 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d71 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d72 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"position" }>, align 8
@.d73 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"line" }>, align 8
@.d74 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"position" }>, align 8
@.d75 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"character" }>, align 8
@.d76 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"textDocument/formatting" }>, align 8
@.d77 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d78 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d79 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"[{\22range\22:" }>, align 8
@.d80 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22newText\22:" }>, align 8
@.d81 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}]" }>, align 8
@.d82 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"textDocument/completion" }>, align 8
@.d83 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"textDocument/documentSymbol" }>, align 8
@.d84 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d85 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d86 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"textDocument/hover" }>, align 8
@.d87 = private constant <{ i64, [39 x i8] }> <{ i64 0, [39 x i8] c"{\22contents\22:{\22kind\22:\22markdown\22,\22value\22:" }>, align 8
@.d88 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d89 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d90 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"null" }>, align 8
@.d91 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"{\22uri\22:" }>, align 8
@.d92 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22range\22:" }>, align 8
@olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2echeck_2elocal_2e7 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d93 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"{\22olang\22:\22checked\22,\22slot\22:" }>, align 8
@.d94 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22deps\22:[" }>, align 8
@.d95 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"],\22foreign\22:[" }>, align 8
@.d96 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@.d97 = private constant <{ i64, [31 x i8] }> <{ i64 0, [31 x i8] c"{\22isIncomplete\22:false,\22items\22:[" }>, align 8
@.d98 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"]}" }>, align 8
@olang_2esole_2ecompiler_2fsession_3aPositions_2e0 = weak hidden constant i1 false
@.d99 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22range\22:" }>, align 8
@.d100 = private constant <{ i64, [52 x i8] }> <{ i64 0, [52 x i8] c",\22severity\22:4,\22source\22:\22olang\22,\22tags\22:[2],\22message\22:" }>, align 8
@.d101 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22range\22:" }>, align 8
@.d102 = private constant <{ i64, [54 x i8] }> <{ i64 0, [54 x i8] c",\22severity\22:4,\22source\22:\22olang\22,\22code\22:\22O27\22,\22message\22:" }>, align 8
@.d103 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"{\22range\22:" }>, align 8
@.d104 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c",\22severity\22:1,\22source\22:\22olang\22" }>, align 8
@.d105 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d106 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c",\22code\22:" }>, align 8
@.d107 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22message\22:" }>, align 8
@.d108 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"{\22location\22:{\22uri\22:" }>, align 8
@.d109 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c",\22range\22:" }>, align 8
@.d110 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"},\22message\22:" }>, align 8
@.d111 = private constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c",\22relatedInformation\22:[" }>, align 8
@.d112 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d113 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler__2flsp__2ecompiler__2flsp__3aworker__2epublishAll_2elocal_2e25 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/text:StringBuilder" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2ftext_3aStringBuilder(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"std/prelude/text:StringBuilder"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %a0
  store %"std/prelude/text:StringBuilder" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/text:StringBuilder", ptr %l1, i32 0, i32 0
  %t5 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %t3)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t7 = getelementptr %"std/prelude/text:StringBuilder", ptr %l1, i32 0, i32 0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %t7
  %t8 = load %"std/prelude/text:StringBuilder", ptr %l1
  store %"std/prelude/text:StringBuilder" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/text:StringBuilder", ptr %rv
  ret %"std/prelude/text:StringBuilder" %rr
}

@.d114 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d115 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d116 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"[" }>, align 8
@.d117 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"]" }>, align 8
@.d118 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"[]" }>, align 8
@.d119 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"{\22start\22:{\22line\22:" }>, align 8
@.d120 = private constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c",\22character\22:0},\22end\22:{\22line\22:" }>, align 8
@.d121 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c",\22character\22:0}}" }>, align 8
@.d122 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d123 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d124 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d125 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d126 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c",\22error\22:{\22code\22:" }>, align 8
@.d127 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c",\22message\22:" }>, align 8
@.d128 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d129 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Content-Length: " }>, align 8
@.d130 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0D\0A\0D\0A" }>, align 8
@.d131 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"Content-Length: " }>, align 8
@.d132 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"\0D\0A\0D\0A" }>, align 8
@.d133 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"id" }>, align 8
@.d134 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d135 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d136 = private constant <{ i64, [89 x i8] }> <{ i64 0, [89 x i8] c"[{\22range\22:{\22start\22:{\22line\22:0,\22character\22:0},\22end\22:{\22line\22:0,\22character\22:0}},\22severity\22:1," }>, align 8
@.d137 = private constant <{ i64, [27 x i8] }> <{ i64 0, [27 x i8] c"\22source\22:\22olang\22,\22message\22:" }>, align 8
@.d138 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"olang: " }>, align 8
@.d139 = private constant <{ i64, [44 x i8] }> <{ i64 0, [44 x i8] c" - a bug in the compiler, not in the program" }>, align 8
@.d140 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}]" }>, align 8
@.d141 = private constant <{ i64, [76 x i8] }> <{ i64 0, [76 x i8] c"{\22jsonrpc\22:\222.0\22,\22method\22:\22textDocument/publishDiagnostics\22,\22params\22:{\22uri\22:" }>, align 8
@.d142 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c",\22diagnostics\22:" }>, align 8
@.d143 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c"}}" }>, align 8
@.d144 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"{\22jsonrpc\22:\222.0\22,\22id\22:" }>, align 8
@.d145 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c",\22result\22:" }>, align 8
@.d146 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"}" }>, align 8
@.d147 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2flsp_3aDoc_2e3 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2flsp_3aDoc_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aDoc_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aServer_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aServer_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aServer_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2flsp_3aworker_2e4 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aStr_H4eff2894ad89de6e140d6d54faebb689(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aChar_3e(ptr %v0, ptr %a0) #0 {
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

declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_6756d46c47226ab9_ec8477bb3ab165 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
@olang_loc_78ef8a2f2ef3c68c_b23277b974982b08 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_3aRadix_2ector(ptr %v0, i64 %a0)
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eParseInt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2eIgnoreBrokenPipes()
declare %"compiler/session:Reader" @compiler_2fsession_3aReader_2ector(ptr %v0, i32 %a0)
@olang_loc_28490b3d64df97fe_1fa673a94cf24522 = external constant [0 x i8]
declare i64 @std_2ftime_2eNow()
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_d1a2ced90ae1fed3_af42112fabe41f37 = external constant [0 x i8]
declare { i64, ptr } @compiler_2fsession_2eReadable(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2fsession_2ecompiler_2fsession_3aReader_2eFill(ptr %v0, ptr %a0)
declare { i32, { i64, ptr } } @compiler_2fsession_2ecompiler_2fsession_3aReader_2eNext(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsLetter(i8 %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aChar_2eIsDigit(i8 %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2eU8_2eFormat(ptr %v0, i8 %a0, i64 %a1)
@olang_loc_b56467a85251252d_5a05a1cd484a3361 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eToUpper(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2ePadStart(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1, i8 %a2)
declare { i32, { i64, ptr } } @std_2fos_2eEnv(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eRemove_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eInsert_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2fsession_2eWriteFramed(ptr %v0, i32 %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2eCloseFd(i32 %a0)
@olang_loc_a8eebe32341e04e6_239ed324021d536a = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eAt__Ha6317692879988aa8c889b506af3dc4d(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eClear(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_43d07951ce1dba96_20fc5bf2a8432eaa = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2eLen_Ha7d56d00f5631ac8d39ace71211767ab(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_824396f7e8872934_1f4412bc0bc5f5e0 = external constant [0 x i8]
declare i32 @compiler_2fsession_2eReap(i32 %a0)
declare { i64, ptr } @compiler_2fbuild_2eSignalName(ptr %v0, i32 %a0)
@olang_loc_b5606d6e3fe22ec3_be86f13ccb1ff2ff = external constant [0 x i8]
declare { i32, ptr } @std_2fjson_2eJson_2eParse(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_3e(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsArr(ptr %v0, ptr %v1, ptr %a0)
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_9565c00a3cf79970_b45483162fef2b54 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fjson_2estd_2fjson_3aJson_2eAsStr(ptr %v0, ptr %v1, ptr %a0)
declare { i32, i64 } @std_2fjson_2estd_2fjson_3aJson_2eAsInt(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fsession_2eRealOf(ptr %v0, ptr %v1, { i64, ptr } %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ePus_H951db0fb6558bf39f52145a6692a11d3(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i32 } @compiler_2fsession_2ePipe()
declare i32 @compiler_2fsession_2eFork()
declare void @compiler_2fsession_2eDup2(i32 %a0, i32 %a1)
declare void @compiler_2fsession_2eExit(i32 %a0)
@olang_loc_1521364e571a2f2d_bf1cb7a51b345899 = external constant [0 x i8]
declare void @compiler_2fsession_2eKillAndReap(i32 %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6f7a2f8d839c49b6e7a19c287d4b190c(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, ptr } %a2)
@olang_loc_cb6dbf061e2dce2f_dc463ae13d2c2fbb = external constant [0 x i8]
declare ptr @compiler_2fsession_2eAnalysis_2eAnalyze(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, { i64, ptr } %a0, ptr %a1, ptr %a2, ptr %a3, i1 %a4)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_Ha4444909f5ef14f7626d25b8f59e6ba2(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/session:Positions" @compiler_2fsession_3aPositions_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare i64 @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eOffset(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2fdiag_3aDiagnostics_2ector(ptr %out, ptr %v0, i1 %a0)
declare { i32, { i64, ptr } } @compiler_2fsession_2eFormat(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1)
declare void @compiler_2fsession_2ecompiler_2fsession_3aPositions_2eRange(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i64 %a2, i64 %a3)
declare void @compiler_2fsession_2eJsonStr(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eModuleOf(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_H7bcf2aeb09afa796f4333e6ec8c3f63f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2fsession_2eSymbols(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2, ptr %a3)
declare { i32, %"compiler/session:Found" } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eLookup(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i64 %a2)
declare %"compiler/source:Span" @compiler_2fsession_2eWordAt(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i64 @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eErrors(ptr %v0, ptr %a0)
declare void @compiler_2fsession_2eHold(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cmut_20compiler_2fload_3aModule_26_3e_2_Hb2d19b6b5ea5ab5a85c5720545345bd4(ptr %v0, ptr %a0)
declare i1 @compiler_2fsession_2eWordChar(i8 %a0)
declare %"compiler/session:Items" @compiler_2fsession_3aItems_2ector(ptr %v0)
@olang_loc_af7c431932a7c0fe_be95e1b6bda5ce6a = external constant [0 x i8]
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H233962476a3191cb30d917b30cae0288(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.c7dad01dbd7dd6cd22e9701676806c15" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cstd_2fprelude_2ftext_3aString_26_2_H2ebf6f1d68886862a568a520c713bfce(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eMembers(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare void @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eNames(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, ptr } %a2, i64 %a3)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eDeprecatedUses(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eLen_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %a0)
declare %"compiler/session:Use" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsession_3aUse_3e_2eAt_3ccompiler_2fsession_3aUse_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eLen(ptr %v0, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2ePlaced(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"compiler/diag:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eAt_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fdiag_3aItem_3e_2eLen_3ccompiler_2fdiag_3aItem_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eRealOfFile(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2fdiag_2ecompiler_2fdiag_3aDiagnostics_2eItems(ptr %v0, ptr %v1, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H619e677aa004466b5bd5bdbfda9f24c5(ptr %v0, ptr %v1, ptr %a0, %"std/prelude/text:StringBuilder" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_Hf1ae1a5ebbb395c2e928aa8f7e1c7e01(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aStringBuilder_3_H3391400cd512141e3398528b8c477a4f(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H0127831368543eff3b7740d7d3240080(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2fsession_2ecompiler_2fsession_3aAnalysis_2eTextOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f3afb7cdea72bea9_2e903794abb886a5 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eFind(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_8c5172bb8ea5e6bc_75de6e53c7815648 = external constant [0 x i8]
@olang_loc_6f843a9f898efe67_8723688731f48c63 = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eTrim(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_8f54b2067e6b6b8a_86cbf1b666cce186 = external constant [0 x i8]
@olang_loc_c8d49224b0a3e505_8d1f0d35a00e1b49 = external constant [0 x i8]
declare { i64, ptr } @std_2fjson_2eEncode_3cstd_2fjson_3aJson_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, i32 %a2)
declare { i32, ptr } @std_2fjson_2estd_2fjson_3aJson_2eAt_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cmut_20compiler_2flsp_3aDoc_26_3e_2ector(ptr %v0, i64 %a0)

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
