source_filename = "compiler_eval-4.quick.ll"
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
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64 }
%"compiler/mir:ScopeInfo" = type { i32, i32, i32, %"compiler/source:Span", i32 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/eval:reg" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
define dso_local i64 @compiler_2feval_2eclassOf(i64 %a0) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 3, ptr %l1, !tbaa !24
  br label %bb1
bb1:
  %t1 = load i64, ptr %l1, !tbaa !24
  store i64 %t1, ptr %l2, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t3 = load i64, ptr %l2, !tbaa !24
  %t4 = shl i64 1, %t3
  %t8 = icmp slt i64 %t4, %a0
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb2, label %bb3
bb2:
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t12 = load i64, ptr %l1, !tbaa !24
  %t14 = add i64 %t12, 1
  store i64 %t14, ptr %l1, !tbaa !24
  br label %bb5
bb5:
  br label %bb1
bb6:
  %t16 = load i64, ptr %l1, !tbaa !24
  store i64 %t16, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { i64, [2 x i64] }
  %l11 = alloca i32
  %l14 = alloca i64
  %l30 = alloca ptr
  %l33 = alloca i64
  %l34 = alloca %"compiler/eval:cfn"
  %l36 = alloca %"compiler/eval:cfn"
  %l45 = alloca i64
  %l48 = alloca i64
  %l67 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l71 = alloca %"compiler/eval:cfn"
  %l75 = alloca { i64, ptr }
  %l76 = alloca i64
  %l79 = alloca %"compiler/eval:cfn"
  %l81 = alloca { i64, ptr }
  %l82 = alloca i64
  %l87 = alloca i1
  %l94 = alloca { i64, ptr }
  %t49 = alloca %"compiler/eval:cfn", align 8
  %t59 = alloca i64
  %t148 = alloca %"compiler/eval:cfn", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eLen_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 27
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 0
  %t13 = load { i64, [2 x i64] }, ptr %t12
  %t14 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %t9, { i64, [2 x i64] } %t13, i64 %t14)
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 22
  %t21 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ePush_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %t20, ptr %t21)
  br label %bb3
bb3:
  %t24 = load i64, ptr %l2, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 23
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  %t30 = extractvalue { i64, ptr } %t28, 0
  %t33 = icmp sge i64 %t24, %t30
  br i1 %t33, label %bb4, label %bb5
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 23
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l3, !tbaa !27
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l30, !tbaa !29
  %t41 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t43 = extractvalue { i64, ptr } %t41, 0
  %t45 = mul i64 2, %t43
  store i64 %t45, ptr %l33, !tbaa !24
  call void @llvm.memset.p0.i64(ptr %l34, i8 0, i64 264, i1 false)
  %t46 = load i64, ptr %l33, !tbaa !24
  %t47 = icmp sgt i64 %t46, 0
  br i1 %t47, label %bb6, label %bb7
bb5:
  br label %bb25
bb6:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3acfn(ptr %t49, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t49, i64 264, i1 false)
  br label %bb8
bb7:
  %t50 = load i64, ptr %l33, !tbaa !24
  %t51 = icmp sge i64 %t50, 0
  br i1 %t51, label %bb9, label %bb10
bb8:
  call void @llvm.memmove.p0.p0.i64(ptr %l34, ptr %l36, i64 264, i1 false)
  br label %bb7
bb9:
  %t53 = load i64, ptr %l33, !tbaa !24
  %t54 = icmp sle i64 %t53, 34937015291116575
  br i1 %t54, label %bb11, label %bb12
bb10:
  call void @__olang_check_failed(ptr @olang_loc_8e30d4bcef98d937_821e6ec72834ca4b)
  unreachable
bb11:
  %t56 = load i64, ptr %l33, !tbaa !24
  %t57 = mul i64 %t56, 264
  %t58 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t57)
  store i64 0, ptr %t59
  br label %fill.60
fill.60:
  %t63 = load i64, ptr %t59
  %t64 = icmp slt i64 %t63, %t56
  br i1 %t64, label %fillb.61, label %filld.62
fillb.61:
  %t65 = getelementptr %"compiler/eval:cfn", ptr %t58, i64 %t63
  call void @llvm.memmove.p0.p0.i64(ptr %t65, ptr %l34, i64 264, i1 false)
  %t66 = add i64 %t63, 1
  store i64 %t66, ptr %t59
  br label %fill.60
filld.62:
  %t67 = insertvalue { i64, ptr } undef, i64 %t56, 0
  %t68 = insertvalue { i64, ptr } %t67, ptr %t58, 1
  %t70 = load ptr, ptr %l30, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 23
  store { i64, ptr } %t68, ptr %t71, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  store i64 %t74, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t76 = load i64, ptr %l5, !tbaa !24
  %t77 = load i64, ptr %l4, !tbaa !24
  %t80 = icmp sgt i64 %t76, %t77
  br i1 %t80, label %bb13, label %bb14
bb12:
  call void @__olang_check_failed(ptr @olang_loc_8e30d4bcef98d937_821e6ec72834ca4b)
  unreachable
bb13:
  %t82 = load i64, ptr %l6, !tbaa !24
  %t84 = icmp sgt i64 %t82, 0
  br i1 %t84, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb18
bb15:
  %t86 = load i64, ptr %l5, !tbaa !24
  %t87 = load i64, ptr %l4, !tbaa !24
  %t90 = sub i64 %t86, %t87
  %t91 = load i64, ptr %l6, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t96 = sub i64 %t94, 1
  %t97 = load i64, ptr %l6, !tbaa !24
  %t100 = sdiv i64 %t96, %t97
  store i64 %t100, ptr %l48, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb17
bb17:
  %t102 = load i64, ptr %l48, !tbaa !24
  store i64 %t102, ptr %l45, !tbaa !24
  br label %bb18
bb18:
  %t103 = load i64, ptr %l45, !tbaa !24
  store i64 %t103, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t104 = load i64, ptr %l8, !tbaa !24
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = icmp slt i64 %t104, %t105
  %t110 = xor i1 %t108, true
  br i1 %t110, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t112 = load i64, ptr %l4, !tbaa !24
  %t113 = load i64, ptr %l8, !tbaa !24
  %t114 = load i64, ptr %l6, !tbaa !24
  %t117 = mul i64 %t113, %t114
  %t120 = add i64 %t112, %t117
  store i64 %t120, ptr %l9, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 23
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l67, !tbaa !27
  %t126 = load i64, ptr %l9, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t127, ptr %l69, !tbaa !27
  %t128 = load i64, ptr %l9, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr %"compiler/eval:cfn", ptr %t131, i64 %t128
  call void @llvm.memmove.p0.p0.i64(ptr %l71, ptr %t132, i64 264, i1 false)
  %t134 = getelementptr { i64, ptr }, ptr %l67, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr %"compiler/eval:cfn", ptr %t135, i64 %t126
  call void @llvm.memmove.p0.p0.i64(ptr %t136, ptr %l71, i64 264, i1 false)
  br label %bb23
bb23:
  %t137 = load i64, ptr %l8, !tbaa !24
  %t139 = add i64 %t137, 1
  store i64 %t139, ptr %l8, !tbaa !24
  br label %bb19
bb24:
  br label %bb25
bb25:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 23
  %t144 = load { i64, ptr }, ptr %t143, !tbaa !27
  store { i64, ptr } %t144, ptr %l75, !tbaa !27
  %t145 = load i64, ptr %l2, !tbaa !24
  store i64 %t145, ptr %l76, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edecode(ptr %t148, ptr %v0, ptr %v1, ptr %v0, ptr %t146, ptr %t147)
  call void @llvm.memmove.p0.p0.i64(ptr %l79, ptr %t148, i64 264, i1 false)
  br label %bb26
bb26:
  %t151 = load i64, ptr %l76, !tbaa !24
  %t152 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t153 = load ptr, ptr %t152, !tbaa !27
  %t154 = getelementptr %"compiler/eval:cfn", ptr %t153, i64 %t151
  call void @llvm.memmove.p0.p0.i64(ptr %t154, ptr %l79, i64 264, i1 false)
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 23
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l81, !tbaa !27
  %t159 = load i64, ptr %l2, !tbaa !24
  store i64 %t159, ptr %l82, !tbaa !24
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 21
  %t163 = load ptr, ptr %l1, !tbaa !29
  %t165 = getelementptr %"compiler/mir:Fn", ptr %t163, i32 0, i32 0
  %t166 = load { i64, [2 x i64] }, ptr %t165
  %t169 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %t162, { i64, [2 x i64] } %t166)
  store i1 %t169, ptr %l87
  br label %bb27
bb27:
  %t170 = load i1, ptr %l87, !tbaa !21
  %t171 = load i64, ptr %l82, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr %"compiler/eval:cfn", ptr %t173, i64 %t171
  %t175 = getelementptr %"compiler/eval:cfn", ptr %t174, i32 0, i32 16
  store i1 %t170, ptr %t175, !tbaa !21
  %t176 = load ptr, ptr %l1, !tbaa !29
  %t178 = getelementptr %"compiler/mir:Fn", ptr %t176, i32 0, i32 0
  %t179 = load { i64, [2 x i64] }, ptr %t178
  store { i64, [2 x i64] } %t179, ptr %l10
  %t181 = load { i64, [2 x i64] }, ptr %l10
  %t183 = extractvalue { i64, [2 x i64] } %t181, 0
  %t184 = icmp eq i64 %t183, 3
  br i1 %t184, label %bb28, label %bb29
bb28:
  %t186 = getelementptr { i64, [2 x i64] }, ptr %l10, i32 0, i32 1
  %t187 = getelementptr { i32, i32 }, ptr %t186, i32 0, i32 0
  %t188 = load i32, ptr %t187, !range !{i32 0, i32 8}
  store i32 %t188, ptr %l11
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/eval:Machine", ptr %t190, i32 0, i32 23
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  store { i64, ptr } %t193, ptr %l94, !tbaa !27
  %t194 = load i64, ptr %l2, !tbaa !24
  %t195 = load i32, ptr %l11, !range !{i32 0, i32 8}
  %t197 = trunc i64 1 to i32
  %t198 = icmp eq i32 %t195, %t197
  %t201 = getelementptr { i64, ptr }, ptr %l94, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr %"compiler/eval:cfn", ptr %t202, i64 %t194
  %t204 = getelementptr %"compiler/eval:cfn", ptr %t203, i32 0, i32 17
  store i1 %t198, ptr %t204, !tbaa !21
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_8d25544d0bd70291_3d464b777e1774ad)
  unreachable
bb36:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l4, !tbaa !29
  store %"compiler/eval:Ptr" %a1, ptr %l5
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t4, i32 %t5)
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load %"compiler/eval:Ptr", ptr %l5
  %t11 = load i64, ptr %l8, !tbaa !24
  %t12 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t9, %"compiler/eval:Ptr" %t10, i64 %t11)
  store i64 %t12, ptr %l9
  br label %bb2
bb2:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load ptr, ptr %l3, !tbaa !29
  %t15 = load i64, ptr %l9, !tbaa !24
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t14, i64 %t15, i32 %t13)
  store i64 %t17, ptr %l11
  br label %bb3
bb3:
  %t18 = load i64, ptr %l11, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eMain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca [0 x i64]
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %lp8 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l24 = alloca { i64, [5 x i64] }
  %l35 = alloca { i64, [5 x i64] }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [5 x i64] }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store [0 x i64] zeroinitializer, ptr %l3
  store { i64, ptr } %a1, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t4 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t8 = load i64, ptr %l5, !tbaa !24
  %t9 = load i64, ptr %l6, !tbaa !24
  %t12 = icmp slt i64 %t8, %t9
  %t14 = xor i1 %t12, true
  br i1 %t14, label %bb2, label %bb3
bb2:
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t16 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t16, ptr %l17, !tbaa !27
  %t17 = load i64, ptr %l5, !tbaa !24
  %t19 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t20 = load ptr, ptr %t19, !tbaa !27
  %t21 = getelementptr { i64, [2 x i64] }, ptr %t20, i64 %t17
  %t22 = load { i64, [2 x i64] }, ptr %t21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t27 = insertvalue { i64, ptr } undef, i64 0, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %l3, 1
  %t32 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v2, ptr %t24, { i64, [2 x i64] } %t22, { i64, ptr } %t28)
  store { i64, [5 x i64] } %t32, ptr %l24
  br label %bb5
bb5:
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 48, i64 8)
  store ptr %t33, ptr %lp8
  %t34 = load { i64, [5 x i64] }, ptr %l24
  %t35 = load ptr, ptr %lp8
  store { i64, [5 x i64] } %t34, ptr %t35
  %t36 = load ptr, ptr %lp8
  %t37 = load { i64, [5 x i64] }, ptr %t36
  %t39 = extractvalue { i64, [5 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 0
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb6, label %bb7
bb6:
  %t44 = load ptr, ptr %lp8
  %t45 = load { i64, [5 x i64] }, ptr %t44
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t45, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t47 = load i64, ptr %l5, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l5, !tbaa !24
  br label %bb1
bb10:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t54 = insertvalue { i64, ptr } undef, i64 0, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %l3, 1
  %t59 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v2, ptr %t51, { i64, [2 x i64] } %a2, { i64, ptr } %t55)
  store { i64, [5 x i64] } %t59, ptr %l35
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t60 = load { i64, [5 x i64] }, ptr %l35
  store { i64, [5 x i64] } %t60, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eText(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { %"compiler/eval:Ptr", i64 }
  %l4 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l6 = alloca %"std/prelude/text:StringBuilder"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca { %"compiler/eval:Ptr", i64 }
  %l19 = alloca %"std/prelude/text:StringBuilder"
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca ptr
  %l46 = alloca ptr
  %l51 = alloca %"compiler/eval:Ptr"
  %l52 = alloca i64
  %l58 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i32 %a2)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l16
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l3
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l3, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l4
  %t12 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l3, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l5, !tbaa !24
  %t15 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t15, ptr %l19
  br label %bb2
bb2:
  %t16 = load %"std/prelude/text:StringBuilder", ptr %l19
  store %"std/prelude/text:StringBuilder" %t16, ptr %l6
  store i64 0, ptr %l7, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  store i64 %t17, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t19 = load i64, ptr %l8, !tbaa !24
  %t20 = load i64, ptr %l7, !tbaa !24
  %t23 = icmp sgt i64 %t19, %t20
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l9, !tbaa !24
  %t27 = icmp sgt i64 %t25, 0
  br i1 %t27, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb8
bb5:
  %t29 = load i64, ptr %l8, !tbaa !24
  %t30 = load i64, ptr %l7, !tbaa !24
  %t33 = sub i64 %t29, %t30
  %t34 = load i64, ptr %l9, !tbaa !24
  %t37 = add i64 %t33, %t34
  %t39 = sub i64 %t37, 1
  %t40 = load i64, ptr %l9, !tbaa !24
  %t43 = sdiv i64 %t39, %t40
  store i64 %t43, ptr %l27, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb7
bb7:
  %t45 = load i64, ptr %l27, !tbaa !24
  store i64 %t45, ptr %l24, !tbaa !24
  br label %bb8
bb8:
  %t46 = load i64, ptr %l24, !tbaa !24
  store i64 %t46, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb9
bb9:
  store %olang.scope zeroinitializer, ptr %s2
  %t47 = load i64, ptr %l11, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp slt i64 %t47, %t48
  %t53 = xor i1 %t51, true
  br i1 %t53, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb11:
  br label %bb12
bb12:
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l11, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t60 = mul i64 %t56, %t57
  %t63 = add i64 %t55, %t60
  store ptr %l6, ptr %l45, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l46, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t67 = load i64, ptr %t66, !tbaa !24
  %t68 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 1
  %t69 = load i64, ptr %t68, !tbaa !24
  %t73 = add i64 %t69, %t63
  %t76 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t67, i64 %t73)
  store %"compiler/eval:Ptr" %t76, ptr %l51
  br label %bb13
bb13:
  %t77 = load ptr, ptr %l46, !tbaa !29
  %t78 = load %"compiler/eval:Ptr", ptr %l51
  %t79 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t77, %"compiler/eval:Ptr" %t78, i64 1)
  store i64 %t79, ptr %l52
  br label %bb14
bb14:
  %t80 = load i64, ptr %l52, !tbaa !24
  %t81 = trunc i64 %t80 to i8
  %t83 = load ptr, ptr %l45, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %t83, i8 %t81)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t85 = load i64, ptr %l11, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l11, !tbaa !24
  br label %bb9
bb17:
  %t90 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l6)
  store { i64, ptr } %t90, ptr %l58
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s0)
  %t91 = load { i64, ptr }, ptr %l58, !tbaa !27
  store { i64, ptr } %t91, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceWhat(ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l8 = alloca i64
  %l11 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 85
  %t6 = mul i64 4, %a1
  %t8 = add i64 %t6, 3
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t8)
  store i64 %t11, ptr %l8
  br label %bb1
bb1:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp sge i64 %t13, 0
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 86
  %t20 = load i64, ptr %l2, !tbaa !24
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %t19, i64 %t20)
  store { i64, ptr } %t23, ptr %l15
  br label %bb4
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l11, !tbaa !27
  br label %bb5
bb4:
  %t24 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t24, ptr %l11, !tbaa !27
  br label %bb5
bb5:
  %t25 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { %"compiler/eval:Ptr", i32 }
  %l7 = alloca i32
  %l8 = alloca %"compiler/eval:Ptr"
  %l15 = alloca { %"compiler/eval:Ptr", i32 }
  %l21 = alloca i32
  %l22 = alloca ptr
  %l23 = alloca i64
  %l26 = alloca i64
  %l28 = alloca %"compiler/eval:Ptr"
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l4
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load %"compiler/mir:Lvalue", ptr %l4
  %t16 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t10, i64 %t11, %"compiler/mir:Lvalue" %t12)
  store { %"compiler/eval:Ptr", i32 } %t16, ptr %l15
  br label %bb4
bb4:
  %t17 = load { %"compiler/eval:Ptr", i32 }, ptr %l15
  store { %"compiler/eval:Ptr", i32 } %t17, ptr %l5
  %t18 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l5, i32 0, i32 0
  %t19 = load %"compiler/eval:Ptr", ptr %t18
  store %"compiler/eval:Ptr" %t19, ptr %rv
  br label %ret
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_6f754b89a33b6044_bbcfb7dbcaa58778)
  unreachable
bb10:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i64, ptr %l1, !tbaa !24
  %t25 = load { i64, [4 x i64] }, ptr %l2
  %t29 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t23, i64 %t24, { i64, [4 x i64] } %t25)
  store i32 %t29, ptr %l21
  br label %bb11
bb11:
  %t30 = load i32, ptr %l21, !tbaa !23
  store i32 %t30, ptr %l7, !tbaa !23
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l22, !tbaa !29
  store i64 %a3, ptr %l23, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t34 = load i32, ptr %l7, !tbaa !23
  %t37 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t33, i32 %t34)
  store i64 %t37, ptr %l26
  br label %bb12
bb12:
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = add i64 %t38, 16
  %t40 = load ptr, ptr %l22, !tbaa !29
  %t41 = load i64, ptr %l23, !tbaa !24
  %t43 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t40, i64 %t41, i64 %t39)
  store %"compiler/eval:Ptr" %t43, ptr %l28
  br label %bb13
bb13:
  %t44 = load %"compiler/eval:Ptr", ptr %l28
  store %"compiler/eval:Ptr" %t44, ptr %l8
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  %t47 = load %"compiler/eval:Ptr", ptr %l8
  %t48 = load i32, ptr %l7, !tbaa !23
  %t49 = load { i64, [4 x i64] }, ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t45, i64 %t46, %"compiler/eval:Ptr" %t47, i32 %t48, { i64, [4 x i64] } %t49)
  br label %bb14
bb14:
  %t55 = load %"compiler/eval:Ptr", ptr %l8
  store %"compiler/eval:Ptr" %t55, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaggregate(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i64 %a4, %"compiler/mir:Range" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i32
  %l9 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca { i64, [4 x i64] }
  %l25 = alloca i32
  %l26 = alloca i32
  %l29 = alloca i64
  %l32 = alloca %"compiler/eval:Ptr"
  %l37 = alloca ptr
  %l41 = alloca i32
  %l42 = alloca i1
  %l46 = alloca i32
  %l48 = alloca ptr
  %l52 = alloca i32
  %l53 = alloca { i64, ptr }
  %l57 = alloca { i64, ptr }
  %l62 = alloca i32
  %l65 = alloca i32
  %l83 = alloca ptr
  %l84 = alloca %"compiler/eval:Ptr"
  %l86 = alloca i64
  %l87 = alloca { i64, ptr }
  %l89 = alloca i32
  %l90 = alloca ptr
  %l91 = alloca i64
  %l97 = alloca { i64, [4 x i64] }
  %l98 = alloca %"compiler/eval:Ptr"
  %l107 = alloca i64
  %l112 = alloca i32
  %l115 = alloca i32
  %l138 = alloca { i64, [4 x i64] }
  %l144 = alloca i32
  %l145 = alloca ptr
  %l146 = alloca i64
  %l147 = alloca i64
  %l149 = alloca i64
  %l152 = alloca i64
  %l154 = alloca %"compiler/eval:Ptr"
  %l163 = alloca i32
  %l164 = alloca ptr
  %l165 = alloca i64
  %l166 = alloca i64
  %l171 = alloca i64
  %l173 = alloca %"compiler/eval:Ptr"
  %l178 = alloca i32
  %l180 = alloca ptr
  %l181 = alloca i64
  %l182 = alloca i64
  %l187 = alloca i64
  %l188 = alloca %"compiler/eval:Ptr"
  %l193 = alloca i32
  %s1 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s10 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store %"compiler/mir:Range" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l29
  br label %bb1
bb1:
  %t6 = load i64, ptr %l29, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t7, i64 0, i64 %t8)
  store %"compiler/eval:Ptr" %t11, ptr %l32
  br label %bb2
bb2:
  %t12 = load %"compiler/eval:Ptr", ptr %l32
  store %"compiler/eval:Ptr" %t12, ptr %l7
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load %"compiler/eval:Ptr", ptr %l7
  %t15 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t13, %"compiler/eval:Ptr" %t14, i64 %t15)
  br label %bb3
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l37, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l41
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l37, !tbaa !29
  %t32 = load i32, ptr %l41, !tbaa !23
  %t33 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %t31, i32 %t32)
  store i1 %t33, ptr %l42
  br label %bb5
bb5:
  %t34 = load i1, ptr %l42, !tbaa !21
  br i1 %t34, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 0
  %t38 = load ptr, ptr %t37, !tbaa !29
  %t39 = load i32, ptr %l3, !tbaa !23
  %t42 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t38, i32 %t39)
  store i32 %t42, ptr %l46
  br label %bb8
bb7:
  br label %bb28
bb8:
  %t43 = load i32, ptr %l46, !tbaa !23
  store i32 %t43, ptr %l8, !tbaa !23
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l48, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l8, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l52
  br label %bb9
bb9:
  %t56 = load ptr, ptr %l48, !tbaa !29
  %t57 = load i32, ptr %l52, !tbaa !23
  %t58 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t56, i32 %t57)
  store { i64, ptr } %t58, ptr %l53
  br label %bb10
bb10:
  %t59 = load { i64, ptr }, ptr %l53, !tbaa !27
  store { i64, ptr } %t59, ptr %l9, !tbaa !27
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l8, !tbaa !23
  %t67 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %s1, ptr %t63, i32 %t64)
  store { i64, ptr } %t67, ptr %l57
  br label %bb11
bb11:
  %t68 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t68, ptr %l10, !tbaa !27
  store i32 0, ptr %l11, !tbaa !23
  %t69 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t70 = load i32, ptr %t69, !tbaa !23
  store i32 %t70, ptr %l12, !tbaa !23
  store i32 1, ptr %l13, !tbaa !23
  %t72 = load i32, ptr %l12, !tbaa !23
  %t73 = load i32, ptr %l11, !tbaa !23
  %t76 = icmp sgt i32 %t72, %t73
  br i1 %t76, label %bb12, label %bb13
bb12:
  %t78 = load i32, ptr %l13, !tbaa !23
  %t80 = icmp sgt i32 %t78, 0
  br i1 %t80, label %bb14, label %bb15
bb13:
  store i32 0, ptr %l62, !tbaa !23
  br label %bb17
bb14:
  %t82 = load i32, ptr %l12, !tbaa !23
  %t83 = load i32, ptr %l11, !tbaa !23
  %t86 = sub i32 %t82, %t83
  %t87 = load i32, ptr %l13, !tbaa !23
  %t90 = add i32 %t86, %t87
  %t92 = sub i32 %t90, 1
  %t93 = load i32, ptr %l13, !tbaa !23
  %t96 = sdiv i32 %t92, %t93
  store i32 %t96, ptr %l65, !tbaa !23
  br label %bb16
bb15:
  store i32 0, ptr %l65, !tbaa !23
  br label %bb16
bb16:
  %t98 = load i32, ptr %l65, !tbaa !23
  store i32 %t98, ptr %l62, !tbaa !23
  br label %bb17
bb17:
  %t99 = load i32, ptr %l62, !tbaa !23
  store i32 %t99, ptr %l14, !tbaa !23
  store i32 0, ptr %l15, !tbaa !23
  br label %bb18
bb18:
  %t100 = load i32, ptr %l15, !tbaa !23
  %t101 = load i32, ptr %l14, !tbaa !23
  %t104 = icmp slt i32 %t100, %t101
  %t106 = xor i1 %t104, true
  br i1 %t106, label %bb19, label %bb20
bb19:
  br label %bb26
bb20:
  br label %bb21
bb21:
  %t108 = load i32, ptr %l11, !tbaa !23
  %t109 = load i32, ptr %l15, !tbaa !23
  %t110 = load i32, ptr %l13, !tbaa !23
  %t113 = mul i32 %t109, %t110
  %t116 = add i32 %t108, %t113
  store i32 %t116, ptr %l16, !tbaa !23
  %t118 = load ptr, ptr %l0, !tbaa !29
  store ptr %t118, ptr %l83, !tbaa !29
  %t119 = load %"compiler/eval:Ptr", ptr %l7
  store %"compiler/eval:Ptr" %t119, ptr %l84
  %t120 = load i32, ptr %l16, !tbaa !23
  %t122 = sext i32 %t120 to i64
  %t123 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t124 = load ptr, ptr %t123, !tbaa !27
  %t125 = getelementptr i64, ptr %t124, i64 %t122
  %t126 = load i64, ptr %t125, !tbaa !34
  store i64 %t126, ptr %l86, !tbaa !24
  %t127 = load { i64, ptr }, ptr %l9, !tbaa !27
  store { i64, ptr } %t127, ptr %l87, !tbaa !27
  %t128 = load i32, ptr %l16, !tbaa !23
  %t130 = sext i32 %t128 to i64
  %t131 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t132 = load ptr, ptr %t131, !tbaa !27
  %t133 = getelementptr i32, ptr %t132, i64 %t130
  %t134 = load i32, ptr %t133, !tbaa !33
  store i32 %t134, ptr %l89, !tbaa !23
  %t135 = load ptr, ptr %l0, !tbaa !29
  store ptr %t135, ptr %l90, !tbaa !29
  %t136 = load i64, ptr %l1, !tbaa !24
  store i64 %t136, ptr %l91, !tbaa !24
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t138 = load i64, ptr %l1, !tbaa !24
  %t139 = load %"compiler/mir:Range", ptr %l5
  %t140 = load i32, ptr %l16, !tbaa !23
  %t142 = sext i32 %t140 to i64
  %t147 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t137, i64 %t138, %"compiler/mir:Range" %t139, i64 %t142)
  store { i64, [4 x i64] } %t147, ptr %l97
  br label %bb22
bb22:
  %t148 = load ptr, ptr %l90, !tbaa !29
  %t149 = load i64, ptr %l91, !tbaa !24
  %t150 = load { i64, [4 x i64] }, ptr %l97
  %t151 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t148, i64 %t149, { i64, [4 x i64] } %t150, i64 1)
  store %"compiler/eval:Ptr" %t151, ptr %l98
  br label %bb23
bb23:
  %t152 = load ptr, ptr %l83, !tbaa !29
  %t153 = load %"compiler/eval:Ptr", ptr %l84
  %t154 = load i64, ptr %l86, !tbaa !24
  %t155 = load i32, ptr %l89, !tbaa !23
  %t156 = load %"compiler/eval:Ptr", ptr %l98
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %t152, %"compiler/eval:Ptr" %t153, i64 %t154, i32 %t155, %"compiler/eval:Ptr" %t156)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t157 = load i32, ptr %l15, !tbaa !23
  %t159 = add i32 %t157, 1
  store i32 %t159, ptr %l15, !tbaa !23
  br label %bb18
bb26:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t162 = load %"compiler/eval:Ptr", ptr %l2
  %t163 = load %"compiler/eval:Ptr", ptr %l7
  %t164 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t161, %"compiler/eval:Ptr" %t162, %"compiler/eval:Ptr" %t163, i64 %t164)
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s1)
  br label %ret
bb28:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load i32, ptr %l3, !tbaa !23
  %t173 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t169, i32 %t170)
  store i64 %t173, ptr %l107
  br label %bb29
bb29:
  %t174 = load i64, ptr %l107, !tbaa !24
  store i64 %t174, ptr %l17, !tbaa !24
  store i32 0, ptr %l18, !tbaa !23
  %t175 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t176 = load i32, ptr %t175, !tbaa !23
  store i32 %t176, ptr %l19, !tbaa !23
  store i32 1, ptr %l20, !tbaa !23
  %t178 = load i32, ptr %l19, !tbaa !23
  %t179 = load i32, ptr %l18, !tbaa !23
  %t182 = icmp sgt i32 %t178, %t179
  br i1 %t182, label %bb30, label %bb31
bb30:
  %t184 = load i32, ptr %l20, !tbaa !23
  %t186 = icmp sgt i32 %t184, 0
  br i1 %t186, label %bb32, label %bb33
bb31:
  store i32 0, ptr %l112, !tbaa !23
  br label %bb35
bb32:
  %t188 = load i32, ptr %l19, !tbaa !23
  %t189 = load i32, ptr %l18, !tbaa !23
  %t192 = sub i32 %t188, %t189
  %t193 = load i32, ptr %l20, !tbaa !23
  %t196 = add i32 %t192, %t193
  %t198 = sub i32 %t196, 1
  %t199 = load i32, ptr %l20, !tbaa !23
  %t202 = sdiv i32 %t198, %t199
  store i32 %t202, ptr %l115, !tbaa !23
  br label %bb34
bb33:
  store i32 0, ptr %l115, !tbaa !23
  br label %bb34
bb34:
  %t204 = load i32, ptr %l115, !tbaa !23
  store i32 %t204, ptr %l112, !tbaa !23
  br label %bb35
bb35:
  %t205 = load i32, ptr %l112, !tbaa !23
  store i32 %t205, ptr %l21, !tbaa !23
  store i32 0, ptr %l22, !tbaa !23
  br label %bb36
bb36:
  %t206 = load i32, ptr %l22, !tbaa !23
  %t207 = load i32, ptr %l21, !tbaa !23
  %t210 = icmp slt i32 %t206, %t207
  %t212 = xor i1 %t210, true
  br i1 %t212, label %bb37, label %bb38
bb37:
  br label %bb61
bb38:
  br label %bb39
bb39:
  %t214 = load i32, ptr %l18, !tbaa !23
  %t215 = load i32, ptr %l22, !tbaa !23
  %t216 = load i32, ptr %l20, !tbaa !23
  %t219 = mul i32 %t215, %t216
  %t222 = add i32 %t214, %t219
  store i32 %t222, ptr %l23, !tbaa !23
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load i64, ptr %l1, !tbaa !24
  %t226 = load %"compiler/mir:Range", ptr %l5
  %t227 = load i32, ptr %l23, !tbaa !23
  %t229 = sext i32 %t227 to i64
  %t234 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t224, i64 %t225, %"compiler/mir:Range" %t226, i64 %t229)
  store { i64, [4 x i64] } %t234, ptr %l138
  br label %bb40
bb40:
  %t235 = load { i64, [4 x i64] }, ptr %l138
  store { i64, [4 x i64] } %t235, ptr %l24
  %t236 = load i64, ptr %l17, !tbaa !24
  %t237 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t240 = icmp eq i64 %t236, %t237
  br i1 %t240, label %bb41, label %bb42
bb41:
  store %olang.scope zeroinitializer, ptr %s7
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t243 = load i32, ptr %l3, !tbaa !23
  %t246 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t242, i32 %t243)
  store i32 %t246, ptr %l144
  br label %bb43
bb42:
  %t247 = load i64, ptr %l17, !tbaa !24
  %t248 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  %t251 = icmp eq i64 %t247, %t248
  br i1 %t251, label %bb47, label %bb48
bb43:
  %t253 = load i32, ptr %l144, !tbaa !23
  store i32 %t253, ptr %l25, !tbaa !23
  %t254 = load ptr, ptr %l0, !tbaa !29
  store ptr %t254, ptr %l145, !tbaa !29
  %t255 = load i64, ptr %l1, !tbaa !24
  store i64 %t255, ptr %l146, !tbaa !24
  %t256 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t257 = load i64, ptr %t256, !tbaa !24
  store i64 %t257, ptr %l147, !tbaa !24
  %t258 = load i32, ptr %l23, !tbaa !23
  %t260 = sext i32 %t258 to i64
  store i64 %t260, ptr %l149, !tbaa !24
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i32, ptr %l25, !tbaa !23
  %t265 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t261, i32 %t262)
  store i64 %t265, ptr %l152
  br label %bb44
bb44:
  %t266 = load i64, ptr %l149, !tbaa !24
  %t267 = load i64, ptr %l152, !tbaa !24
  %t268 = mul i64 %t266, %t267
  %t269 = load i64, ptr %l147, !tbaa !24
  %t271 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t269, i64 %t268)
  store %"compiler/eval:Ptr" %t271, ptr %l154
  br label %bb45
bb45:
  %t272 = load i32, ptr %l25, !tbaa !23
  %t273 = load { i64, [4 x i64] }, ptr %l24
  %t274 = load ptr, ptr %l145, !tbaa !29
  %t275 = load i64, ptr %l146, !tbaa !24
  %t276 = load %"compiler/eval:Ptr", ptr %l154
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t274, i64 %t275, %"compiler/eval:Ptr" %t276, i32 %t272, { i64, [4 x i64] } %t273)
  br label %bb46
bb46:
  call void @__olang_scope_close(ptr %s7)
  br label %bb59
bb47:
  store %olang.scope zeroinitializer, ptr %s9
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t280 = load i32, ptr %l3, !tbaa !23
  %t281 = load i64, ptr %l4, !tbaa !24
  %t285 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %t279, i32 %t280, i64 %t281)
  store i32 %t285, ptr %l163
  br label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s10
  %t286 = load ptr, ptr %l0, !tbaa !29
  store ptr %t286, ptr %l180, !tbaa !29
  %t287 = load i64, ptr %l1, !tbaa !24
  store i64 %t287, ptr %l181, !tbaa !24
  %t288 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t289 = load i64, ptr %t288, !tbaa !24
  store i64 %t289, ptr %l182, !tbaa !24
  %t290 = load ptr, ptr %l0, !tbaa !29
  %t291 = load i32, ptr %l3, !tbaa !23
  %t292 = load i32, ptr %l23, !tbaa !23
  %t294 = sext i32 %t292 to i64
  %t298 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t290, i32 %t291, i64 %t294)
  store i64 %t298, ptr %l187
  br label %bb54
bb49:
  %t299 = load i32, ptr %l163, !tbaa !23
  store i32 %t299, ptr %l26, !tbaa !23
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l164, !tbaa !29
  %t301 = load i64, ptr %l1, !tbaa !24
  store i64 %t301, ptr %l165, !tbaa !24
  %t302 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t303 = load i64, ptr %t302, !tbaa !24
  store i64 %t303, ptr %l166, !tbaa !24
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i32, ptr %l26, !tbaa !23
  %t306 = load i32, ptr %l23, !tbaa !23
  %t308 = sext i32 %t306 to i64
  %t312 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t304, i32 %t305, i64 %t308)
  store i64 %t312, ptr %l171
  br label %bb50
bb50:
  %t313 = load i64, ptr %l171, !tbaa !24
  %t314 = add i64 8, %t313
  %t315 = load i64, ptr %l166, !tbaa !24
  %t317 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s9, i64 %t315, i64 %t314)
  store %"compiler/eval:Ptr" %t317, ptr %l173
  br label %bb51
bb51:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load i32, ptr %l26, !tbaa !23
  %t320 = load i32, ptr %l23, !tbaa !23
  %t322 = sext i32 %t320 to i64
  %t326 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t318, i32 %t319, i64 %t322)
  store i32 %t326, ptr %l178
  br label %bb52
bb52:
  %t327 = load { i64, [4 x i64] }, ptr %l24
  %t328 = load ptr, ptr %l164, !tbaa !29
  %t329 = load i64, ptr %l165, !tbaa !24
  %t330 = load %"compiler/eval:Ptr", ptr %l173
  %t331 = load i32, ptr %l178, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t328, i64 %t329, %"compiler/eval:Ptr" %t330, i32 %t331, { i64, [4 x i64] } %t327)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s9)
  br label %bb58
bb54:
  %t333 = load i64, ptr %l182, !tbaa !24
  %t334 = load i64, ptr %l187, !tbaa !24
  %t335 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s10, i64 %t333, i64 %t334)
  store %"compiler/eval:Ptr" %t335, ptr %l188
  br label %bb55
bb55:
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t337 = load i32, ptr %l3, !tbaa !23
  %t338 = load i32, ptr %l23, !tbaa !23
  %t340 = sext i32 %t338 to i64
  %t344 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t336, i32 %t337, i64 %t340)
  store i32 %t344, ptr %l193
  br label %bb56
bb56:
  %t345 = load { i64, [4 x i64] }, ptr %l24
  %t346 = load ptr, ptr %l180, !tbaa !29
  %t347 = load i64, ptr %l181, !tbaa !24
  %t348 = load %"compiler/eval:Ptr", ptr %l188
  %t349 = load i32, ptr %l193, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t346, i64 %t347, %"compiler/eval:Ptr" %t348, i32 %t349, { i64, [4 x i64] } %t345)
  br label %bb57
bb57:
  call void @__olang_scope_close(ptr %s10)
  br label %bb58
bb58:
  br label %bb59
bb59:
  br label %bb60
bb60:
  %t351 = load i32, ptr %l22, !tbaa !23
  %t353 = add i32 %t351, 1
  store i32 %t353, ptr %l22, !tbaa !23
  br label %bb36
bb61:
  %t355 = load i64, ptr %l17, !tbaa !24
  %t356 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  %t359 = icmp eq i64 %t355, %t356
  br i1 %t359, label %bb62, label %bb63
bb62:
  %t361 = load ptr, ptr %l0, !tbaa !29
  %t362 = load %"compiler/eval:Ptr", ptr %l7
  %t363 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t361, %"compiler/eval:Ptr" %t362, i64 8, i64 %t363)
  br label %bb64
bb63:
  %t367 = load i64, ptr %l17, !tbaa !24
  %t368 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  %t371 = icmp eq i64 %t367, %t368
  br i1 %t371, label %bb65, label %bb66
bb64:
  br label %bb69
bb65:
  %t373 = load ptr, ptr %l0, !tbaa !29
  %t374 = load %"compiler/eval:Ptr", ptr %l7
  %t375 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t373, %"compiler/eval:Ptr" %t374, i64 4, i64 %t375)
  br label %bb67
bb66:
  br label %bb68
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load %"compiler/eval:Ptr", ptr %l2
  %t381 = load %"compiler/eval:Ptr", ptr %l7
  %t382 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t379, %"compiler/eval:Ptr" %t380, %"compiler/eval:Ptr" %t381, i64 %t382)
  br label %bb70
bb70:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
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
  br label %bb7
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i8, ptr %t19, i64 %t16
  %t21 = load i8, ptr %t20, !tbaa !32
  %t27 = zext i8 %t21 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %t27)
  br label %bb5
bb5:
  br label %bb6
bb6:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l4, !tbaa !24
  br label %bb1
bb7:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eatomic(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca %"compiler/mir:Range"
  %l5 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca i64
  %l15 = alloca { i64, [4 x i64] }
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca %"compiler/eval:Ptr"
  %l19 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i64
  %l31 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca %"compiler/eval:Ptr"
  %l42 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i64
  %l48 = alloca { i64, [4 x i64] }
  %l49 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i64
  %l61 = alloca { i64, [4 x i64] }
  %l62 = alloca i64
  %l63 = alloca i64
  %l66 = alloca i64
  %l70 = alloca ptr
  %l71 = alloca %"compiler/eval:Ptr"
  %l72 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca i64
  %l78 = alloca { i64, [4 x i64] }
  %l79 = alloca i64
  %l80 = alloca i64
  %l81 = alloca ptr
  %l82 = alloca i64
  %l86 = alloca { i64, [4 x i64] }
  %l87 = alloca i64
  %l90 = alloca i64
  %l93 = alloca ptr
  %l94 = alloca %"compiler/eval:Ptr"
  %l95 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca i64
  %l101 = alloca { i64, [4 x i64] }
  %l102 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  store ptr %t2, ptr %l10, !tbaa !29
  %t3 = load i64, ptr %l1, !tbaa !24
  store i64 %t3, ptr %l11, !tbaa !24
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load %"compiler/mir:Range", ptr %l3
  %t10 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t4, i64 %t5, %"compiler/mir:Range" %t6, i64 0)
  store { i64, [4 x i64] } %t10, ptr %l15
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l10, !tbaa !29
  %t12 = load i64, ptr %l11, !tbaa !24
  %t13 = load { i64, [4 x i64] }, ptr %l15
  %t14 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t11, i64 %t12, { i64, [4 x i64] } %t13, i64 1)
  store %"compiler/eval:Ptr" %t14, ptr %l16
  br label %bb2
bb2:
  %t15 = load ptr, ptr %l9, !tbaa !29
  %t16 = load %"compiler/eval:Ptr", ptr %l16
  %t17 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t15, %"compiler/eval:Ptr" %t16)
  store %"compiler/eval:Ptr" %t17, ptr %l17
  br label %bb3
bb3:
  %t18 = load %"compiler/eval:Ptr", ptr %l17
  store %"compiler/eval:Ptr" %t18, ptr %l5
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  store ptr %t22, ptr %l19, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t26, i32 %a4)
  store i32 %t30, ptr %l23
  br label %bb4
bb4:
  %t31 = load ptr, ptr %l19, !tbaa !29
  %t32 = load i32, ptr %l23, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t33, ptr %l24
  br label %bb5
bb5:
  %t34 = load i32, ptr %l24, !tbaa !23
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t35, i32 %t34)
  store i64 %t39, ptr %l27
  br label %bb6
bb6:
  %t40 = load i64, ptr %l27, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load %"compiler/eval:Ptr", ptr %l5
  %t43 = load i64, ptr %l7, !tbaa !24
  %t47 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t41, %"compiler/eval:Ptr" %t42, i64 %t43)
  store i64 %t47, ptr %l31
  br label %bb7
bb7:
  %t48 = load i64, ptr %l31, !tbaa !24
  store i64 %t48, ptr %l8, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 19
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb8, label %bb9
bb8:
  store i64 0, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t57 = trunc i64 24 to i32
  %t58 = icmp eq i32 %t55, %t57
  br i1 %t58, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t60 = load i64, ptr %l8, !tbaa !24
  store i64 %t60, ptr %rv
  br label %ret
bb14:
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t64 = trunc i64 25 to i32
  %t65 = icmp eq i32 %t62, %t64
  br i1 %t65, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb21
bb17:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l40, !tbaa !29
  %t68 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t68, ptr %l41
  %t69 = load i64, ptr %l7, !tbaa !24
  store i64 %t69, ptr %l42, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  store ptr %t70, ptr %l43, !tbaa !29
  %t71 = load i64, ptr %l1, !tbaa !24
  store i64 %t71, ptr %l44, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load %"compiler/mir:Range", ptr %l3
  %t78 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t72, i64 %t73, %"compiler/mir:Range" %t74, i64 1)
  store { i64, [4 x i64] } %t78, ptr %l48
  br label %bb18
bb18:
  %t79 = load ptr, ptr %l43, !tbaa !29
  %t80 = load i64, ptr %l44, !tbaa !24
  %t81 = load { i64, [4 x i64] }, ptr %l48
  %t82 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t79, i64 %t80, { i64, [4 x i64] } %t81)
  store i64 %t82, ptr %l49
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l40, !tbaa !29
  %t84 = load %"compiler/eval:Ptr", ptr %l41
  %t85 = load i64, ptr %l42, !tbaa !24
  %t86 = load i64, ptr %l49, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t83, %"compiler/eval:Ptr" %t84, i64 %t85, i64 %t86)
  br label %bb20
bb20:
  br label %bb50
bb21:
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t89 = trunc i64 26 to i32
  %t90 = icmp eq i32 %t87, %t89
  br i1 %t90, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb29
bb24:
  %t92 = load ptr, ptr %l0, !tbaa !29
  store ptr %t92, ptr %l52, !tbaa !29
  %t93 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t93, ptr %l53
  %t94 = load i64, ptr %l7, !tbaa !24
  store i64 %t94, ptr %l54, !tbaa !24
  %t95 = load i64, ptr %l8, !tbaa !24
  store i64 %t95, ptr %l55, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  store ptr %t96, ptr %l56, !tbaa !29
  %t97 = load i64, ptr %l1, !tbaa !24
  store i64 %t97, ptr %l57, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load i64, ptr %l1, !tbaa !24
  %t100 = load %"compiler/mir:Range", ptr %l3
  %t104 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t98, i64 %t99, %"compiler/mir:Range" %t100, i64 1)
  store { i64, [4 x i64] } %t104, ptr %l61
  br label %bb25
bb25:
  %t105 = load ptr, ptr %l56, !tbaa !29
  %t106 = load i64, ptr %l57, !tbaa !24
  %t107 = load { i64, [4 x i64] }, ptr %l61
  %t108 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t105, i64 %t106, { i64, [4 x i64] } %t107)
  store i64 %t108, ptr %l62
  br label %bb26
bb26:
  %t109 = load i64, ptr %l55, !tbaa !24
  %t110 = load i64, ptr %l62, !tbaa !24
  %t111 = add i64 %t109, %t110
  store i64 %t111, ptr %l63, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load i64, ptr %l7, !tbaa !24
  %t116 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t112, i64 %t113)
  store i64 %t116, ptr %l66
  br label %bb27
bb27:
  %t117 = load i64, ptr %l63, !tbaa !24
  %t118 = load i64, ptr %l66, !tbaa !24
  %t119 = and i64 %t117, %t118
  %t120 = load ptr, ptr %l52, !tbaa !29
  %t121 = load %"compiler/eval:Ptr", ptr %l53
  %t122 = load i64, ptr %l54, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t120, %"compiler/eval:Ptr" %t121, i64 %t122, i64 %t119)
  br label %bb28
bb28:
  br label %bb50
bb29:
  %t124 = load i32, ptr %l2, !range !{i32 0, i32 52}
  %t126 = trunc i64 27 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb36
bb32:
  %t129 = load ptr, ptr %l0, !tbaa !29
  store ptr %t129, ptr %l70, !tbaa !29
  %t130 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t130, ptr %l71
  %t131 = load i64, ptr %l7, !tbaa !24
  store i64 %t131, ptr %l72, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  store ptr %t132, ptr %l73, !tbaa !29
  %t133 = load i64, ptr %l1, !tbaa !24
  store i64 %t133, ptr %l74, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load %"compiler/mir:Range", ptr %l3
  %t140 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t134, i64 %t135, %"compiler/mir:Range" %t136, i64 1)
  store { i64, [4 x i64] } %t140, ptr %l78
  br label %bb33
bb33:
  %t141 = load ptr, ptr %l73, !tbaa !29
  %t142 = load i64, ptr %l74, !tbaa !24
  %t143 = load { i64, [4 x i64] }, ptr %l78
  %t144 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t141, i64 %t142, { i64, [4 x i64] } %t143)
  store i64 %t144, ptr %l79
  br label %bb34
bb34:
  %t145 = load ptr, ptr %l70, !tbaa !29
  %t146 = load %"compiler/eval:Ptr", ptr %l71
  %t147 = load i64, ptr %l72, !tbaa !24
  %t148 = load i64, ptr %l79, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t145, %"compiler/eval:Ptr" %t146, i64 %t147, i64 %t148)
  br label %bb35
bb35:
  br label %bb50
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb49
bb39:
  %t149 = load i64, ptr %l8, !tbaa !24
  store i64 %t149, ptr %l80, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  store ptr %t150, ptr %l81, !tbaa !29
  %t151 = load i64, ptr %l1, !tbaa !24
  store i64 %t151, ptr %l82, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load i64, ptr %l1, !tbaa !24
  %t154 = load %"compiler/mir:Range", ptr %l3
  %t158 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t152, i64 %t153, %"compiler/mir:Range" %t154, i64 1)
  store { i64, [4 x i64] } %t158, ptr %l86
  br label %bb40
bb40:
  %t159 = load ptr, ptr %l81, !tbaa !29
  %t160 = load i64, ptr %l82, !tbaa !24
  %t161 = load { i64, [4 x i64] }, ptr %l86
  %t162 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t159, i64 %t160, { i64, [4 x i64] } %t161)
  store i64 %t162, ptr %l87
  br label %bb41
bb41:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l7, !tbaa !24
  %t167 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t163, i64 %t164)
  store i64 %t167, ptr %l90
  br label %bb42
bb42:
  %t168 = load i64, ptr %l87, !tbaa !24
  %t169 = load i64, ptr %l90, !tbaa !24
  %t170 = and i64 %t168, %t169
  %t171 = load i64, ptr %l80, !tbaa !24
  %t173 = icmp eq i64 %t171, %t170
  br i1 %t173, label %bb43, label %bb44
bb43:
  %t175 = load ptr, ptr %l0, !tbaa !29
  store ptr %t175, ptr %l93, !tbaa !29
  %t176 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t176, ptr %l94
  %t177 = load i64, ptr %l7, !tbaa !24
  store i64 %t177, ptr %l95, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  store ptr %t178, ptr %l96, !tbaa !29
  %t179 = load i64, ptr %l1, !tbaa !24
  store i64 %t179, ptr %l97, !tbaa !24
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l1, !tbaa !24
  %t182 = load %"compiler/mir:Range", ptr %l3
  %t186 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t180, i64 %t181, %"compiler/mir:Range" %t182, i64 2)
  store { i64, [4 x i64] } %t186, ptr %l101
  br label %bb45
bb44:
  br label %bb48
bb45:
  %t187 = load ptr, ptr %l96, !tbaa !29
  %t188 = load i64, ptr %l97, !tbaa !24
  %t189 = load { i64, [4 x i64] }, ptr %l101
  %t190 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t187, i64 %t188, { i64, [4 x i64] } %t189)
  store i64 %t190, ptr %l102
  br label %bb46
bb46:
  %t191 = load ptr, ptr %l93, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l94
  %t193 = load i64, ptr %l95, !tbaa !24
  %t194 = load i64, ptr %l102, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, i64 %t193, i64 %t194)
  br label %bb47
bb47:
  br label %bb48
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_561376b2ca02a7ba_25f299f9320c8ad6)
  unreachable
bb50:
  %t195 = load i64, ptr %l8, !tbaa !24
  store i64 %t195, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca { i64, [2 x i64] }
  %l17 = alloca i64
  %l25 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, [2 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 29
  %t4 = load { i64, [2 x i64] }, ptr %l1
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t3, { i64, [2 x i64] } %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l8
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t12 = load i64, ptr %l7, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l3, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sge i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l2, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 29
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t23, ptr %l14
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 28
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l17
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l13, !tbaa !29
  %t30 = load { i64, [2 x i64] }, ptr %l14
  %t31 = load i64, ptr %l17, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %t29, { i64, [2 x i64] } %t30, i64 %t31)
  br label %bb9
bb9:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 28
  %t35 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t34, { i64, [2 x i64] } %t35)
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 30
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t40, i64 0)
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 28
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l25
  br label %bb12
bb12:
  %t47 = load i64, ptr %l25, !tbaa !24
  %t48 = sub i64 %t47, 1
  store i64 %t48, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodePtr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l10 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l18 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %t1, { i64, [2 x i64] } %a1)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 30
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t9, i64 %t10)
  store i64 %t13, ptr %l10
  br label %bb2
bb2:
  %t14 = load i64, ptr %l10, !tbaa !24
  %t15 = icmp eq i64 %t14, 0
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 67
  %t22 = load i64, ptr %t21, !tbaa !24
  %t26 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t17, i64 0, i64 %t18, i64 %t22)
  store %"compiler/eval:Ptr" %t26, ptr %l16
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t27 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t27, ptr %l3
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 46
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l18, !tbaa !27
  %t32 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t37 = and i64 %t33, %t34
  %t38 = load i64, ptr %l2, !tbaa !24
  %t41 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr %"compiler/eval:alloc", ptr %t42, i64 %t37
  %t44 = getelementptr %"compiler/eval:alloc", ptr %t43, i32 0, i32 14
  store i64 %t38, ptr %t44, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 30
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t50 = load i64, ptr %t49, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t47, i64 %t48, i64 %t50)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/eval:Machine", ptr %t54, i32 0, i32 30
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t56, i64 %t57)
  store i64 %t60, ptr %l30
  br label %bb8
bb8:
  %t61 = load i64, ptr %l30, !tbaa !24
  %t62 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t61, i64 0)
  store %"compiler/eval:Ptr" %t62, ptr %l31
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  %t63 = load %"compiler/eval:Ptr", ptr %l31
  store %"compiler/eval:Ptr" %t63, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i64, ptr %l3, !tbaa !24
  %t11 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t5, %"compiler/eval:Ptr" %a2, i64 %t7, i1 false)
  store i64 %t11, ptr %l11
  br label %bb4
bb4:
  %t12 = load i64, ptr %l11, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l3, !tbaa !24
  %t19 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t13, %"compiler/eval:Ptr" %a1, i64 %t15, i1 true)
  store i64 %t19, ptr %l15
  br label %bb5
bb5:
  %t20 = load i64, ptr %l15, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb8
bb7:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t27 = icmp slt i64 %t25, 0
  store i1 %t27, ptr %l18, !tbaa !21
  br label %bb8
bb8:
  %t29 = load i1, ptr %l18, !tbaa !21
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l5, !tbaa !24
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2emove(ptr %v0, ptr %t30, i64 %t31, i64 %t32, i64 %t33)
  br label %bb12
bb12:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, i64 %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca %"compiler/mir:Lvalue"
  %l12 = alloca i64
  %l22 = alloca i1
  %l24 = alloca i1
  %l27 = alloca i64
  %l34 = alloca i64
  %l36 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l53 = alloca i64
  %l58 = alloca i1
  %l59 = alloca ptr
  %l63 = alloca %"compiler/mir:Local"
  %l65 = alloca i1
  %l67 = alloca i1
  %l68 = alloca ptr
  %l72 = alloca %"compiler/mir:Local"
  %l74 = alloca i64
  %l81 = alloca { i64, ptr }
  %l85 = alloca { i64, ptr }
  %l90 = alloca { i64, ptr }
  %l96 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store i64 %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { i32, i64 }, ptr %t6, i32 0, i32 0
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l6, !tbaa !23
  %t10 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { i32, i64 }, ptr %t10, i32 0, i32 1
  %t12 = load i64, ptr %t11
  store i64 %t12, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  br label %bb13
bb3:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i32, ptr %l6, !tbaa !23
  %t18 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t14, i32 %t15)
  store i1 %t18, ptr %l22
  br label %bb4
bb4:
  %t19 = load i1, ptr %l22, !tbaa !21
  %t20 = xor i1 %t19, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb8
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i32, ptr %l6, !tbaa !23
  %t26 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t22, i32 %t23)
  store i64 %t26, ptr %l27
  br label %bb7
bb7:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l27, !tbaa !24
  %t30 = icmp ne i64 %t28, %t27
  store i1 %t30, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l24, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t33 = load i64, ptr @G_2ecompiler_2feval_2efConst, !tbaa !24
  store i64 %t33, ptr %l8, !tbaa !24
  store i64 -1, ptr %l9, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t37 = load i64, ptr %l7, !tbaa !24
  %t41 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t35, i32 %t36, i64 %t37)
  store i64 %t41, ptr %l34
  br label %bb12
bb12:
  %t42 = load i64, ptr %l34, !tbaa !24
  %t43 = load ptr, ptr %l4, !tbaa !29
  %t45 = getelementptr %"compiler/eval:cfn", ptr %t43, i32 0, i32 13
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l36, !tbaa !27
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr i64, ptr %t52, i64 %t47
  store i64 %t48, ptr %t53, !tbaa !34
  %t54 = load ptr, ptr %l4, !tbaa !29
  %t56 = getelementptr %"compiler/eval:cfn", ptr %t54, i32 0, i32 13
  %t57 = load { i64, ptr }, ptr %t56, !tbaa !27
  store { i64, ptr } %t57, ptr %l40, !tbaa !27
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = add i64 %t58, 3
  %t61 = load i64, ptr %l9, !tbaa !24
  %t64 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr i64, ptr %t65, i64 %t60
  store i64 %t61, ptr %t66, !tbaa !34
  %t67 = load ptr, ptr %l4, !tbaa !29
  %t69 = getelementptr %"compiler/eval:cfn", ptr %t67, i32 0, i32 13
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l45, !tbaa !27
  %t71 = load i64, ptr %l5, !tbaa !24
  %t73 = add i64 %t71, 4
  %t77 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t78 = load ptr, ptr %t77, !tbaa !27
  %t79 = getelementptr i64, ptr %t78, i64 %t73
  store i64 %t42, ptr %t79, !tbaa !34
  br label %bb46
bb13:
  %t80 = load { i64, [4 x i64] }, ptr %l2
  %t82 = extractvalue { i64, [4 x i64] } %t80, 0
  %t83 = icmp eq i64 %t82, 1
  br i1 %t83, label %bb14, label %bb15
bb14:
  %t85 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t86 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t85, i32 0, i32 0
  %t87 = load %"compiler/mir:Lvalue", ptr %t86
  store %"compiler/mir:Lvalue" %t87, ptr %l11
  br label %bb16
bb15:
  br label %bb41
bb16:
  %t89 = load %"compiler/mir:Lvalue", ptr %l11
  %t91 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t89)
  store i64 %t91, ptr %l53
  br label %bb17
bb17:
  %t92 = load i64, ptr %l53, !tbaa !24
  store i64 %t92, ptr %l12, !tbaa !24
  %t93 = getelementptr %"compiler/mir:Lvalue", ptr %l11, i32 0, i32 1
  %t94 = getelementptr %"compiler/mir:Range", ptr %t93, i32 0, i32 1
  %t95 = load i32, ptr %t94, !tbaa !23
  %t97 = icmp eq i32 %t95, 0
  br i1 %t97, label %bb18, label %bb19
bb18:
  %t99 = load i64, ptr %l12, !tbaa !24
  %t101 = icmp slt i64 %t99, 0
  br i1 %t101, label %bb20, label %bb21
bb19:
  %t103 = getelementptr %"compiler/mir:Lvalue", ptr %l11, i32 0, i32 1
  %t104 = getelementptr %"compiler/mir:Range", ptr %t103, i32 0, i32 1
  %t105 = load i32, ptr %t104, !tbaa !23
  %t107 = icmp eq i32 %t105, 1
  br i1 %t107, label %bb33, label %bb34
bb20:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb24
bb21:
  %t109 = load ptr, ptr %l0, !tbaa !29
  store ptr %t109, ptr %l59, !tbaa !29
  %t110 = load ptr, ptr %l1, !tbaa !29
  %t112 = getelementptr %"compiler/mir:Fn", ptr %t110, i32 0, i32 7
  %t113 = load i64, ptr %l12, !tbaa !24
  %t116 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t112, i64 %t113)
  store %"compiler/mir:Local" %t116, ptr %l63
  br label %bb22
bb22:
  %t117 = getelementptr %"compiler/mir:Local", ptr %l63, i32 0, i32 2
  %t118 = load i32, ptr %t117, !tbaa !23
  %t119 = load ptr, ptr %l59, !tbaa !29
  %t121 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t119, i32 %t118)
  store i1 %t121, ptr %l65
  br label %bb23
bb23:
  %t122 = load i1, ptr %l65, !tbaa !21
  %t123 = xor i1 %t122, true
  store i1 %t123, ptr %l58, !tbaa !21
  br label %bb24
bb24:
  %t125 = load i1, ptr %l58, !tbaa !21
  br i1 %t125, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb29
bb26:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l68, !tbaa !29
  %t127 = load ptr, ptr %l1, !tbaa !29
  %t129 = getelementptr %"compiler/mir:Fn", ptr %t127, i32 0, i32 7
  %t130 = load i64, ptr %l12, !tbaa !24
  %t133 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t129, i64 %t130)
  store %"compiler/mir:Local" %t133, ptr %l72
  br label %bb27
bb27:
  %t134 = getelementptr %"compiler/mir:Local", ptr %l72, i32 0, i32 2
  %t135 = load i32, ptr %t134, !tbaa !23
  %t136 = load ptr, ptr %l68, !tbaa !29
  %t138 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t136, i32 %t135)
  store i64 %t138, ptr %l74
  br label %bb28
bb28:
  %t139 = load i64, ptr %l3, !tbaa !24
  %t140 = load i64, ptr %l74, !tbaa !24
  %t142 = icmp ne i64 %t140, %t139
  store i1 %t142, ptr %l67, !tbaa !21
  br label %bb29
bb29:
  %t144 = load i1, ptr %l67, !tbaa !21
  br i1 %t144, label %bb30, label %bb31
bb30:
  br label %ret
bb31:
  br label %bb32
bb32:
  %t145 = load i64, ptr @G_2ecompiler_2feval_2efCopy, !tbaa !24
  %t147 = load i64, ptr %l12, !tbaa !24
  %t149 = load i64, ptr %l3, !tbaa !24
  %t151 = load ptr, ptr %l4, !tbaa !29
  %t153 = getelementptr %"compiler/eval:cfn", ptr %t151, i32 0, i32 13
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l81, !tbaa !27
  %t155 = load i64, ptr %l5, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr i64, ptr %t160, i64 %t155
  store i64 %t145, ptr %t161, !tbaa !34
  %t162 = load ptr, ptr %l4, !tbaa !29
  %t164 = getelementptr %"compiler/eval:cfn", ptr %t162, i32 0, i32 13
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l85, !tbaa !27
  %t166 = load i64, ptr %l5, !tbaa !24
  %t168 = add i64 %t166, 3
  %t172 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t168
  store i64 %t147, ptr %t174, !tbaa !34
  %t175 = load ptr, ptr %l4, !tbaa !29
  %t177 = getelementptr %"compiler/eval:cfn", ptr %t175, i32 0, i32 13
  %t178 = load { i64, ptr }, ptr %t177, !tbaa !27
  store { i64, ptr } %t178, ptr %l90, !tbaa !27
  %t179 = load i64, ptr %l5, !tbaa !24
  %t181 = add i64 %t179, 4
  %t185 = getelementptr { i64, ptr }, ptr %l90, i32 0, i32 1
  %t186 = load ptr, ptr %t185, !tbaa !27
  %t187 = getelementptr i64, ptr %t186, i64 %t181
  store i64 %t149, ptr %t187, !tbaa !34
  br label %bb40
bb33:
  %t188 = load i64, ptr %l12, !tbaa !24
  %t190 = icmp sge i64 %t188, 0
  store i1 %t190, ptr %l96, !tbaa !21
  br label %bb35
bb34:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb35
bb35:
  %t192 = load i1, ptr %l96, !tbaa !21
  br i1 %t192, label %bb36, label %bb37
bb36:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t194 = load ptr, ptr %l1, !tbaa !29
  %t195 = load %"compiler/mir:Lvalue", ptr %l11
  %t196 = load i64, ptr %l12, !tbaa !24
  %t197 = load i64, ptr %l3, !tbaa !24
  %t198 = load ptr, ptr %l4, !tbaa !29
  %t199 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenLoad(ptr %v0, ptr %v1, ptr %v2, ptr %t193, ptr %t194, %"compiler/mir:Lvalue" %t195, i64 %t196, i64 %t197, ptr %t198, i64 %t199)
  br label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  br label %bb46
bb41:
  br i1 true, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  br label %bb46
bb45:
  call void @__olang_check_failed(ptr @olang_loc_fa5d44bd34a52c36_2176aa5fee74345a)
  unreachable
bb46:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatCompare(ptr %v0, ptr %a0, i32 %a1, double %a2, double %a3) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca double
  %l3 = alloca double
  %l4 = alloca i1
  %l5 = alloca i1
  %l49 = alloca i64
  %l51 = alloca i64
  %rv = alloca i64
  store i32 %a1, ptr %l1
  store double %a2, ptr %l2
  store double %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t3 = trunc i64 13 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load double, ptr %l2, !tbaa !26
  %t7 = load double, ptr %l3, !tbaa !26
  %t10 = fcmp oeq double %t6, %t7
  store i1 %t10, ptr %l5, !tbaa !21
  br label %bb29
bb4:
  %t12 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t14 = trunc i64 14 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = load double, ptr %l2, !tbaa !26
  %t18 = load double, ptr %l3, !tbaa !26
  %t21 = fcmp une double %t17, %t18
  store i1 %t21, ptr %l5, !tbaa !21
  br label %bb29
bb8:
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t25 = trunc i64 15 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t28 = load double, ptr %l2, !tbaa !26
  %t29 = load double, ptr %l3, !tbaa !26
  %t32 = fcmp olt double %t28, %t29
  store i1 %t32, ptr %l5, !tbaa !21
  br label %bb29
bb12:
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t36 = trunc i64 16 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t39 = load double, ptr %l2, !tbaa !26
  %t40 = load double, ptr %l3, !tbaa !26
  %t43 = fcmp ole double %t39, %t40
  store i1 %t43, ptr %l5, !tbaa !21
  br label %bb29
bb16:
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t47 = trunc i64 17 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t50 = load double, ptr %l2, !tbaa !26
  %t51 = load double, ptr %l3, !tbaa !26
  %t54 = fcmp ogt double %t50, %t51
  store i1 %t54, ptr %l5, !tbaa !21
  br label %bb29
bb20:
  %t56 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t58 = trunc i64 18 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t61 = load double, ptr %l2, !tbaa !26
  %t62 = load double, ptr %l3, !tbaa !26
  %t65 = fcmp oge double %t61, %t62
  store i1 %t65, ptr %l5, !tbaa !21
  br label %bb29
bb24:
  br i1 true, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb29
bb28:
  call void @__olang_check_failed(ptr @olang_loc_9ff5c0c5c0f3031a_9845a0a415f7f056)
  unreachable
bb29:
  %t67 = load i1, ptr %l5, !tbaa !21
  store i1 %t67, ptr %l4, !tbaa !21
  %t68 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t70 = trunc i64 13 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb30, label %bb31
bb30:
  br label %bb42
bb31:
  %t73 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t75 = trunc i64 14 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb32, label %bb33
bb32:
  br label %bb42
bb33:
  %t78 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t80 = trunc i64 15 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb34, label %bb35
bb34:
  br label %bb42
bb35:
  %t83 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t85 = trunc i64 16 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb36, label %bb37
bb36:
  br label %bb42
bb37:
  %t88 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t90 = trunc i64 17 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb38, label %bb39
bb38:
  br label %bb42
bb39:
  %t93 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t95 = trunc i64 18 to i32
  %t96 = icmp eq i32 %t93, %t95
  br i1 %t96, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb49
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb48
bb46:
  %t100 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
  store i64 %t100, ptr %l49
  br label %bb47
bb47:
  %t101 = load i64, ptr %l49, !tbaa !24
  store i64 %t101, ptr %rv
  br label %ret
bb48:
  call void @__olang_check_failed(ptr @olang_loc_dc78e3ab17f01d1b_791cd762b2865477)
  unreachable
bb49:
  %t102 = load i1, ptr %l4, !tbaa !21
  br i1 %t102, label %bb50, label %bb51
bb50:
  store i64 1, ptr %l51, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb52
bb52:
  %t104 = load i64, ptr %l51, !tbaa !24
  store i64 %t104, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l33 = alloca { i64, ptr }
  %s2 = alloca %olang.builder
  %s2room = alloca [64 x i8], align 8
  %s4 = alloca %olang.builder
  %s4room = alloca [64 x i8], align 8
  %s6 = alloca %olang.builder
  %s6room = alloca [64 x i8], align 8
  %s8 = alloca %olang.builder
  %s8room = alloca [64 x i8], align 8
  %rv = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load i32, ptr %l3, !tbaa !23
  %t12 = icmp eq i32 %t10, 11
  br i1 %t12, label %bb2, label %bb3
bb2:
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = and i64 %t14, 65535
  %t18 = trunc i64 %t16 to i16
  %t20 = call i16 asm "", "=r,0"(i16 %t18)
  %t21 = bitcast i16 %t20 to half
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s2
  store ptr %s2room, ptr %s2
  %t23 = fpext half %t21 to double
  %t24 = call ptr @__olang_sb_room(ptr %s2, i64 48)
  %t25 = call i64 @__olang_fmt_float(ptr %t24, i64 48, double %t23, i32 2)
  call void @__olang_sb_add(ptr %s2, i64 %t25)
  %t26 = load ptr, ptr %s2
  %t27 = getelementptr %olang.builder, ptr %s2, i32 0, i32 1
  %t28 = load i64, ptr %t27
  %t29 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t28)
  call void @olang_textcopy(ptr %t29, ptr %t26, i64 %t28)
  %t30 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr %t29, 1
  store { i64, ptr } %t31, ptr %l15, !tbaa !27
  %t32 = getelementptr %olang.builder, ptr %s2, i32 0, i32 3
  %t33 = load ptr, ptr %t32
  %t34 = icmp ne ptr %t33, null
  br i1 %t34, label %sbgrew.35, label %sbdone.36
sbgrew.35:
  call void @__olang_sb_done(ptr %s2)
  br label %sbdone.36
sbdone.36:
  %t37 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t37, ptr %l8, !tbaa !27
  br label %bb18
bb5:
  %t38 = load i32, ptr %l3, !tbaa !23
  %t40 = icmp eq i32 %t38, 12
  br i1 %t40, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t42 = load i64, ptr %l1, !tbaa !24
  %t44 = and i64 %t42, 65535
  %t46 = trunc i64 %t44 to i16
  %t48 = bitcast i16 %t46 to bfloat
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s4
  store ptr %s4room, ptr %s4
  %t50 = fpext bfloat %t48 to double
  %t51 = call ptr @__olang_sb_room(ptr %s4, i64 48)
  %t52 = call i64 @__olang_fmt_float(ptr %t51, i64 48, double %t50, i32 3)
  call void @__olang_sb_add(ptr %s4, i64 %t52)
  %t53 = load ptr, ptr %s4
  %t54 = getelementptr %olang.builder, ptr %s4, i32 0, i32 1
  %t55 = load i64, ptr %t54
  %t56 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t55)
  call void @olang_textcopy(ptr %t56, ptr %t53, i64 %t55)
  %t57 = insertvalue { i64, ptr } undef, i64 %t55, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  store { i64, ptr } %t58, ptr %l22, !tbaa !27
  %t59 = getelementptr %olang.builder, ptr %s4, i32 0, i32 3
  %t60 = load ptr, ptr %t59
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %sbgrew.62, label %sbdone.63
sbgrew.62:
  call void @__olang_sb_done(ptr %s4)
  br label %sbdone.63
sbdone.63:
  %t64 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t64, ptr %l8, !tbaa !27
  br label %bb18
bb9:
  %t65 = load i32, ptr %l3, !tbaa !23
  %t67 = icmp eq i32 %t65, 13
  br i1 %t67, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t69 = load i64, ptr %l1, !tbaa !24
  %t71 = and i64 %t69, 4294967295
  %t73 = trunc i64 %t71 to i32
  %t75 = bitcast i32 %t73 to float
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s6
  store ptr %s6room, ptr %s6
  %t77 = fpext float %t75 to double
  %t78 = call ptr @__olang_sb_room(ptr %s6, i64 48)
  %t79 = call i64 @__olang_fmt_float(ptr %t78, i64 48, double %t77, i32 1)
  call void @__olang_sb_add(ptr %s6, i64 %t79)
  %t80 = load ptr, ptr %s6
  %t81 = getelementptr %olang.builder, ptr %s6, i32 0, i32 1
  %t82 = load i64, ptr %t81
  %t83 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t82)
  call void @olang_textcopy(ptr %t83, ptr %t80, i64 %t82)
  %t84 = insertvalue { i64, ptr } undef, i64 %t82, 0
  %t85 = insertvalue { i64, ptr } %t84, ptr %t83, 1
  store { i64, ptr } %t85, ptr %l29, !tbaa !27
  %t86 = getelementptr %olang.builder, ptr %s6, i32 0, i32 3
  %t87 = load ptr, ptr %t86
  %t88 = icmp ne ptr %t87, null
  br i1 %t88, label %sbgrew.89, label %sbdone.90
sbgrew.89:
  call void @__olang_sb_done(ptr %s6)
  br label %sbdone.90
sbdone.90:
  %t91 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t91, ptr %l8, !tbaa !27
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t92 = load i64, ptr %l1, !tbaa !24
  %t95 = bitcast i64 %t92 to double
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s8
  store ptr %s8room, ptr %s8
  %t97 = call ptr @__olang_sb_room(ptr %s8, i64 48)
  %t98 = call i64 @__olang_fmt_float(ptr %t97, i64 48, double %t95, i32 0)
  call void @__olang_sb_add(ptr %s8, i64 %t98)
  %t99 = load ptr, ptr %s8
  %t100 = getelementptr %olang.builder, ptr %s8, i32 0, i32 1
  %t101 = load i64, ptr %t100
  %t102 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t101)
  call void @olang_textcopy(ptr %t102, ptr %t99, i64 %t101)
  %t103 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t104 = insertvalue { i64, ptr } %t103, ptr %t102, 1
  store { i64, ptr } %t104, ptr %l33, !tbaa !27
  %t105 = getelementptr %olang.builder, ptr %s8, i32 0, i32 3
  %t106 = load ptr, ptr %t105
  %t107 = icmp ne ptr %t106, null
  br i1 %t107, label %sbgrew.108, label %sbdone.109
sbgrew.108:
  call void @__olang_sb_done(ptr %s8)
  br label %sbdone.109
sbdone.109:
  %t110 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t110, ptr %l8, !tbaa !27
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_1a5820d8caa3da70_8ddb412d29c69c24)
  unreachable
bb18:
  %t111 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t111, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreedEarly(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l8 = alloca i32
  %l10 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 74
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 75
  %t8 = getelementptr %"compiler/source:Span", ptr %t7, i32 0, i32 0
  %t9 = load i32, ptr %t8, !tbaa !23
  %t10 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFreedEarly, !tbaa !27
  %t11 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t14 = call i64 @__olang_fmt_i64(ptr null, i64 %t4)
  %t15 = add i64 %t12, %t14
  %t16 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t17 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t18 = add i64 %t15, %t17
  %t20 = sext i32 %t9 to i64
  %t21 = call i64 @__olang_fmt_i64(ptr null, i64 %t20)
  %t22 = add i64 %t18, %t21
  %t23 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t25 = add i64 %t22, %t24
  %t27 = extractvalue { i64, ptr } %t10, 1
  %t28 = extractvalue { i64, ptr } %t10, 0
  %t29 = add i64 %t25, %t28
  %t30 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t31 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t32 = add i64 %t29, %t31
  %t33 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t32)
  call void @olang_textcopy(ptr %t33, ptr %t11, i64 %t12)
  %t34 = getelementptr i8, ptr %t33, i64 %t12
  %t35 = call i64 @__olang_fmt_i64(ptr %t34, i64 %t4)
  %t36 = getelementptr i8, ptr %t34, i64 %t14
  call void @olang_textcopy(ptr %t36, ptr %t16, i64 %t17)
  %t37 = getelementptr i8, ptr %t36, i64 %t17
  %t38 = call i64 @__olang_fmt_i64(ptr %t37, i64 %t20)
  %t39 = getelementptr i8, ptr %t37, i64 %t21
  call void @olang_textcopy(ptr %t39, ptr %t23, i64 %t24)
  %t40 = getelementptr i8, ptr %t39, i64 %t24
  call void @olang_textcopy(ptr %t40, ptr %t27, i64 %t28)
  %t41 = getelementptr i8, ptr %t40, i64 %t28
  call void @olang_textcopy(ptr %t41, ptr %t30, i64 %t31)
  %t42 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t43 = insertvalue { i64, ptr } %t42, ptr %t33, 1
  %t45 = extractvalue { i64, ptr } %t43, 0
  %t46 = extractvalue { i64, ptr } %t43, 1
  %t47 = mul i64 %t45, 1
  %t48 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t47)
  call void @llvm.memcpy.p0.p0.i64(ptr %t48, ptr %t46, i64 %t47, i1 false)
  %t49 = insertvalue { i64, ptr } undef, i64 %t45, 0
  %t50 = insertvalue { i64, ptr } %t49, ptr %t48, 1
  %t52 = call i32 @std_2fio_2ePrintErr(ptr %s0, { i64, ptr } %t50)
  store i32 %t52, ptr %l8
  %t53 = icmp ne i32 %t52, 0
  br i1 %t53, label %bb2, label %ok.54, !prof !99
ok.54:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t55 = load i32, ptr %l8, !tbaa !23
  %t56 = ashr i32 %t55, 16
  %t58 = icmp eq i32 %t56, 1
  store i1 %t58, ptr %l10, !tbaa !21
  %t59 = load i32, ptr %l8, !tbaa !23
  %t60 = ashr i32 %t59, 16
  %t62 = icmp eq i32 %t60, 1
  br i1 %t62, label %bb3, label %bb4
bb3:
  call void @__olang_errpay_pop()
  br label %bb4
bb4:
  br label %bb5
bb5:
  br label %bb6
bb6:
  call void @std_2fos_2eExit(i32 70)
  unreachable
bb7:
  call void @__olang_check_failed(ptr @olang_loc_c25616630356082_96e485ee4d1c8d36)
  unreachable
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca ptr
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store ptr %a0, ptr %l2, !tbaa !29
  %t2 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t3 = load i64, ptr %t2, !tbaa !24
  %t4 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t7 = sub i64 %t5, 8
  %t10 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t3, i64 %t7)
  store %"compiler/eval:Ptr" %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load %"compiler/eval:Ptr", ptr %l6
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t11, %"compiler/eval:Ptr" %t12, i64 8)
  store i64 %t13, ptr %l7
  br label %bb2
bb2:
  %t14 = load i64, ptr %l7, !tbaa !24
  %t15 = ashr i64 %t14, 16
  %t17 = and i64 %t15, 3
  call void @__olang_scope_close(ptr %s0)
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalsReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca %"compiler/mir:Lvalue"
  %l7 = alloca %"compiler/mir:Lvalue"
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca %"compiler/mir:Range"
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca { i64, [4 x i64] }
  %l16 = alloca { i64, ptr }
  %l19 = alloca ptr
  %l23 = alloca i1
  %l26 = alloca i1
  %l29 = alloca i1
  %l42 = alloca i1
  %l55 = alloca i1
  %l64 = alloca i1
  %l65 = alloca i1
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca i1
  %l91 = alloca i1
  %l99 = alloca i1
  %l100 = alloca i1
  %l104 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 55
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l16, !tbaa !27
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/eval:frame", ptr %t11, i64 %t8
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t14)
  store ptr %t17, ptr %l19
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l19, !tbaa !29
  store ptr %t18, ptr %l4, !tbaa !29
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 1
  %t22 = load i32, ptr %t21, !range !{i32 0, i32 2}
  %t24 = trunc i64 0 to i32
  %t25 = icmp eq i32 %t22, %t24
  br i1 %t25, label %bb2, label %bb3
bb2:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t31 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalWritten(ptr %v0, ptr %t27, %"compiler/mir:Lvalue" %a2)
  store i1 %t31, ptr %l26
  br label %bb4
bb3:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb5
bb4:
  %t32 = load i1, ptr %l26, !tbaa !21
  %t33 = xor i1 %t32, true
  store i1 %t33, ptr %l23, !tbaa !21
  br label %bb5
bb5:
  %t35 = load i1, ptr %l23, !tbaa !21
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t37 = load { i64, [15 x i64] }, ptr %l3
  %t39 = extractvalue { i64, [15 x i64] } %t37, 0
  %t40 = icmp eq i64 %t39, 0
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t43 = getelementptr { { i64, [4 x i64] } }, ptr %t42, i32 0, i32 0
  %t44 = load { i64, [4 x i64] }, ptr %t43
  store { i64, [4 x i64] } %t44, ptr %l5
  br label %bb15
bb10:
  %t46 = load { i64, [15 x i64] }, ptr %l3
  %t48 = extractvalue { i64, [15 x i64] } %t46, 0
  %t49 = icmp eq i64 %t48, 7
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t52 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t51, i32 0, i32 1
  %t53 = load { i64, [4 x i64] }, ptr %t52
  store { i64, [4 x i64] } %t53, ptr %l5
  br label %bb15
bb12:
  %t55 = load { i64, [15 x i64] }, ptr %l3
  %t57 = extractvalue { i64, [15 x i64] } %t55, 0
  %t58 = icmp eq i64 %t57, 11
  br i1 %t58, label %bb13, label %bb14
bb13:
  %t60 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t61 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t60, i32 0, i32 0
  %t62 = load { i64, [4 x i64] }, ptr %t61
  store { i64, [4 x i64] } %t62, ptr %l5
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = load { i64, [4 x i64] }, ptr %l5
  %t70 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t64, i64 %t65, { i64, [4 x i64] } %t66)
  store i1 %t70, ptr %l42
  br label %bb16
bb16:
  %t71 = load i1, ptr %l42, !tbaa !21
  store i1 %t71, ptr %l29, !tbaa !21
  br label %bb64
bb17:
  %t72 = load { i64, [15 x i64] }, ptr %l3
  %t74 = extractvalue { i64, [15 x i64] } %t72, 0
  %t75 = icmp eq i64 %t74, 1
  br i1 %t75, label %bb18, label %bb19
bb18:
  %t77 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t78 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t77, i32 0, i32 0
  %t79 = load %"compiler/mir:Lvalue", ptr %t78
  store %"compiler/mir:Lvalue" %t79, ptr %l6
  br label %bb24
bb19:
  %t81 = load { i64, [15 x i64] }, ptr %l3
  %t83 = extractvalue { i64, [15 x i64] } %t81, 0
  %t84 = icmp eq i64 %t83, 2
  br i1 %t84, label %bb20, label %bb21
bb20:
  %t86 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t87 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t86, i32 0, i32 0
  %t88 = load %"compiler/mir:Lvalue", ptr %t87
  store %"compiler/mir:Lvalue" %t88, ptr %l6
  br label %bb24
bb21:
  %t90 = load { i64, [15 x i64] }, ptr %l3
  %t92 = extractvalue { i64, [15 x i64] } %t90, 0
  %t93 = icmp eq i64 %t92, 5
  br i1 %t93, label %bb22, label %bb23
bb22:
  %t95 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t96 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t95, i32 0, i32 0
  %t97 = load %"compiler/mir:Lvalue", ptr %t96
  store %"compiler/mir:Lvalue" %t97, ptr %l6
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load i64, ptr %l1, !tbaa !24
  %t101 = load %"compiler/mir:Lvalue", ptr %l6
  %t105 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %t99, i64 %t100, %"compiler/mir:Lvalue" %t101)
  store i1 %t105, ptr %l55
  br label %bb25
bb25:
  %t106 = load i1, ptr %l55, !tbaa !21
  store i1 %t106, ptr %l29, !tbaa !21
  br label %bb64
bb26:
  %t107 = load { i64, [15 x i64] }, ptr %l3
  %t109 = extractvalue { i64, [15 x i64] } %t107, 0
  %t110 = icmp eq i64 %t109, 9
  br i1 %t110, label %bb27, label %bb28
bb27:
  %t112 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t113 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t112, i32 0, i32 0
  %t114 = load %"compiler/mir:Lvalue", ptr %t113
  store %"compiler/mir:Lvalue" %t114, ptr %l7
  %t116 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t117 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t116, i32 0, i32 1
  %t118 = load { i64, [4 x i64] }, ptr %t117
  store { i64, [4 x i64] } %t118, ptr %l8
  %t120 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t121 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t120, i32 0, i32 2
  %t122 = load { i64, [4 x i64] }, ptr %t121
  store { i64, [4 x i64] } %t122, ptr %l9
  br label %bb29
bb28:
  br label %bb39
bb29:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l1, !tbaa !24
  %t126 = load %"compiler/mir:Lvalue", ptr %l7
  %t130 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %t124, i64 %t125, %"compiler/mir:Lvalue" %t126)
  store i1 %t130, ptr %l64
  br label %bb30
bb30:
  %t131 = load i1, ptr %l64, !tbaa !21
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load i64, ptr %l1, !tbaa !24
  %t134 = load { i64, [4 x i64] }, ptr %l8
  %t138 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t132, i64 %t133, { i64, [4 x i64] } %t134)
  store i1 %t138, ptr %l69
  br label %bb33
bb32:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb34
bb33:
  %t139 = load i1, ptr %l69, !tbaa !21
  store i1 %t139, ptr %l65, !tbaa !21
  br label %bb34
bb34:
  %t140 = load i1, ptr %l65, !tbaa !21
  br i1 %t140, label %bb35, label %bb36
bb35:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l1, !tbaa !24
  %t143 = load { i64, [4 x i64] }, ptr %l9
  %t147 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t141, i64 %t142, { i64, [4 x i64] } %t143)
  store i1 %t147, ptr %l74
  br label %bb37
bb36:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb38
bb37:
  %t148 = load i1, ptr %l74, !tbaa !21
  store i1 %t148, ptr %l70, !tbaa !21
  br label %bb38
bb38:
  %t149 = load i1, ptr %l70, !tbaa !21
  store i1 %t149, ptr %l29, !tbaa !21
  br label %bb64
bb39:
  %t150 = load { i64, [15 x i64] }, ptr %l3
  %t152 = extractvalue { i64, [15 x i64] } %t150, 0
  %t153 = icmp eq i64 %t152, 3
  br i1 %t153, label %bb40, label %bb41
bb40:
  %t155 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t156 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t155, i32 0, i32 2
  %t157 = load %"compiler/mir:Range", ptr %t156
  store %"compiler/mir:Range" %t157, ptr %l10
  br label %bb48
bb41:
  %t159 = load { i64, [15 x i64] }, ptr %l3
  %t161 = extractvalue { i64, [15 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 4
  br i1 %t162, label %bb42, label %bb43
bb42:
  %t164 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t165 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t164, i32 0, i32 2
  %t166 = load %"compiler/mir:Range", ptr %t165
  store %"compiler/mir:Range" %t166, ptr %l10
  br label %bb48
bb43:
  %t168 = load { i64, [15 x i64] }, ptr %l3
  %t170 = extractvalue { i64, [15 x i64] } %t168, 0
  %t171 = icmp eq i64 %t170, 6
  br i1 %t171, label %bb44, label %bb45
bb44:
  %t173 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t174 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t173, i32 0, i32 2
  %t175 = load %"compiler/mir:Range", ptr %t174
  store %"compiler/mir:Range" %t175, ptr %l10
  br label %bb48
bb45:
  %t177 = load { i64, [15 x i64] }, ptr %l3
  %t179 = extractvalue { i64, [15 x i64] } %t177, 0
  %t180 = icmp eq i64 %t179, 10
  br i1 %t180, label %bb46, label %bb47
bb46:
  %t182 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t183 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t182, i32 0, i32 3
  %t184 = load %"compiler/mir:Range", ptr %t183
  store %"compiler/mir:Range" %t184, ptr %l10
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l1, !tbaa !24
  %t188 = load ptr, ptr %l4, !tbaa !29
  %t189 = load %"compiler/mir:Range", ptr %l10
  %t194 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v0, ptr %t186, i64 %t187, ptr %t188, %"compiler/mir:Range" %t189)
  store i1 %t194, ptr %l91
  br label %bb49
bb49:
  %t195 = load i1, ptr %l91, !tbaa !21
  store i1 %t195, ptr %l29, !tbaa !21
  br label %bb64
bb50:
  %t196 = load { i64, [15 x i64] }, ptr %l3
  %t198 = extractvalue { i64, [15 x i64] } %t196, 0
  %t199 = icmp eq i64 %t198, 8
  br i1 %t199, label %bb51, label %bb52
bb51:
  %t201 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t202 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t201, i32 0, i32 2
  %t203 = load { i64, [4 x i64] }, ptr %t202
  store { i64, [4 x i64] } %t203, ptr %l11
  %t205 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t206 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t205, i32 0, i32 3
  %t207 = load { i64, [4 x i64] }, ptr %t206
  store { i64, [4 x i64] } %t207, ptr %l12
  br label %bb53
bb52:
  br label %bb59
bb53:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l1, !tbaa !24
  %t211 = load { i64, [4 x i64] }, ptr %l11
  %t215 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t209, i64 %t210, { i64, [4 x i64] } %t211)
  store i1 %t215, ptr %l99
  br label %bb54
bb54:
  %t216 = load i1, ptr %l99, !tbaa !21
  br i1 %t216, label %bb55, label %bb56
bb55:
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t218 = load i64, ptr %l1, !tbaa !24
  %t219 = load { i64, [4 x i64] }, ptr %l12
  %t223 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t217, i64 %t218, { i64, [4 x i64] } %t219)
  store i1 %t223, ptr %l104
  br label %bb57
bb56:
  store i1 false, ptr %l100, !tbaa !21
  br label %bb58
bb57:
  %t224 = load i1, ptr %l104, !tbaa !21
  store i1 %t224, ptr %l100, !tbaa !21
  br label %bb58
bb58:
  %t225 = load i1, ptr %l100, !tbaa !21
  store i1 %t225, ptr %l29, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i1 true, ptr %l29, !tbaa !21
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_d7d71e32b1402da8_19cce939fe39e26c)
  unreachable
bb64:
  %t226 = load i1, ptr %l29, !tbaa !21
  store i1 %t226, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca ptr
  %l7 = alloca i64
  %l11 = alloca i32
  %l12 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l3, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l1, !tbaa !24
  %t4 = load { i64, [4 x i64] }, ptr %l2
  %t8 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t2, i64 %t3, { i64, [4 x i64] } %t4)
  store i64 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l2
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l11
  br label %bb2
bb2:
  %t16 = load ptr, ptr %l3, !tbaa !29
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i32, ptr %l11, !tbaa !23
  %t19 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t16, i64 %t17, i32 %t18)
  store i64 %t19, ptr %l12
  br label %bb3
bb3:
  %t20 = load i64, ptr %l12, !tbaa !24
  store i64 %t20, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %a0, i64 %a1, i1 %a2, { i64, [4 x i64] } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i1
  %l5 = alloca %"compiler/eval:frame"
  %l7 = alloca { i64, ptr }
  %l9 = alloca %"compiler/eval:frame"
  %l20 = alloca { i64, ptr }
  %l23 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l32 = alloca i1
  %l35 = alloca i1
  %l43 = alloca { i64, ptr }
  %l47 = alloca %"compiler/eval:frame"
  %t105 = alloca %"compiler/eval:frame", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i1 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l7, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  call void @llvm.memmove.p0.p0.i64(ptr %l9, ptr %t9, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l9, i64 136, i1 false)
  %t10 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 11
  %t11 = load i1, ptr %t10, !tbaa !21
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb1, label %bb2
bb1:
  %t15 = load i1, ptr %l2, !tbaa !21
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb2:
  br label %bb19
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %t19, i64 %t20, { i64, [4 x i64] } %a3)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb6
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 19
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 55
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l20, !tbaa !27
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:frame", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:frame", ptr %t38, i32 0, i32 11
  store i1 true, ptr %t39, !tbaa !21
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 55
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l23, !tbaa !27
  %t44 = load i64, ptr %l1, !tbaa !24
  %t45 = load i1, ptr %l2, !tbaa !21
  %t48 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr %"compiler/eval:frame", ptr %t49, i64 %t44
  %t51 = getelementptr %"compiler/eval:frame", ptr %t50, i32 0, i32 12
  store i1 %t45, ptr %t51, !tbaa !21
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 55
  %t55 = load { i64, ptr }, ptr %t54, !tbaa !27
  store { i64, ptr } %t55, ptr %l27, !tbaa !27
  %t56 = load i64, ptr %l1, !tbaa !24
  %t60 = getelementptr { i64, ptr }, ptr %l27, i32 0, i32 1
  %t61 = load ptr, ptr %t60, !tbaa !27
  %t62 = getelementptr %"compiler/eval:frame", ptr %t61, i64 %t56
  %t63 = getelementptr %"compiler/eval:frame", ptr %t62, i32 0, i32 13
  store i64 %a4, ptr %t63, !tbaa !24
  %t64 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 19
  %t65 = load i64, ptr %t64, !tbaa !24
  %t67 = icmp ne i64 %t65, 0
  br i1 %t67, label %bb10, label %bb11
bb10:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 19
  %t71 = load i64, ptr %t70, !tbaa !24
  %t74 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t69, i64 %t71)
  store i1 %t74, ptr %l35
  br label %bb12
bb11:
  store i1 false, ptr %l32, !tbaa !21
  br label %bb13
bb12:
  %t75 = load i1, ptr %l35, !tbaa !21
  store i1 %t75, ptr %l32, !tbaa !21
  br label %bb13
bb13:
  %t76 = load i1, ptr %l32, !tbaa !21
  br i1 %t76, label %bb14, label %bb15
bb14:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t77, i32 0, i32 59
  %t80 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 19
  %t81 = load i64, ptr %t80, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t79, i64 %t81)
  br label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb17
bb17:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 59
  %t87 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 6
  %t88 = load i64, ptr %t87, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t86, i64 %t88)
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t91, i32 0, i32 55
  %t94 = load { i64, ptr }, ptr %t93, !tbaa !27
  store { i64, ptr } %t94, ptr %l43, !tbaa !27
  %t95 = load i64, ptr %l1, !tbaa !24
  %t97 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr %"compiler/eval:frame", ptr %t98, i64 %t95
  %t100 = getelementptr %"compiler/eval:frame", ptr %t99, i32 0, i32 10
  store i1 true, ptr %t100, !tbaa !21
  br label %ret
bb19:
  %t101 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %t101)
  br label %bb20
bb20:
  %t103 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l47, ptr %l5, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t105, ptr %l47, i64 136, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %t103, ptr %t105)
  br label %bb21
bb21:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l20 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 57
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 55
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %a1
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = sext i32 %a2 to i64
  %t21 = add i64 %t15, %t18
  %t23 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !34
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = load i64, ptr %l3, !tbaa !24
  %t30 = icmp eq i64 %t28, 0
  br i1 %t30, label %bb1, label %bb2
bb1:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t34 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t34, ptr %t32, { i64, ptr } %t33)
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t37 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t37, ptr %rv
  br label %ret
bb4:
  %t39 = load i64, ptr %l3, !tbaa !24
  %t41 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t39, i64 0)
  store %"compiler/eval:Ptr" %t41, ptr %l20
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  %t42 = load %"compiler/eval:Ptr", ptr %l20
  store %"compiler/eval:Ptr" %t42, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewTaskSlot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/eval:task"
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 53
  store ptr %t3, ptr %l2, !tbaa !29
  %t4 = call %"compiler/eval:task" @compiler_2feval_3atask_2ector(ptr %s0)
  store %"compiler/eval:task" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  %t6 = load %"compiler/eval:task", ptr %l3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2ePush_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t5, %"compiler/eval:task" %t6)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 53
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eLen_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l6
  br label %bb3
bb3:
  %t12 = load i64, ptr %l6, !tbaa !24
  %t13 = sub i64 %t12, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %lp2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i64
  %l43 = alloca { i64, ptr }
  %l46 = alloca i1
  %l47 = alloca { i64, ptr }
  %l52 = alloca i64
  %l55 = alloca { i64, ptr }
  %l58 = alloca i64
  %l71 = alloca i64
  %l73 = alloca { i64, ptr }
  %l76 = alloca i64
  %rv = alloca { { i64, ptr }, i64 }
  store ptr %a0, ptr %l0
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
  %t8 = icmp sle i64 %t7, 1152921504606846975
  br i1 %t8, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_4df6f2ee185eb0d1_4c6469cdbf591dfd)
  unreachable
bb3:
  %t10 = load i64, ptr %l12, !tbaa !24
  %t11 = mul i64 %t10, 8
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 16, i64 8)
  store ptr %t15, ptr %lp2
  %t17 = load ptr, ptr %lp2
  store { i64, ptr } %t14, ptr %t17, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t18 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t20 = extractvalue { i64, ptr } %t18, 0
  store i64 %t20, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_4df6f2ee185eb0d1_4c6469cdbf591dfd)
  unreachable
bb5:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb10
bb7:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l24, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l24, !tbaa !24
  store i64 %t48, ptr %l21, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l21, !tbaa !24
  store i64 %t49, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  br label %bb25
bb13:
  br label %bb14
bb14:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l9, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t69, ptr %l43, !tbaa !27
  %t70 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l43, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i32, ptr %t73, i64 %t70
  %t75 = load i32, ptr %t74, !tbaa !33
  %t78 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t68, i32 %t75)
  store i1 %t78, ptr %l46
  br label %bb15
bb15:
  %t79 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t79, ptr %l47, !tbaa !27
  %t80 = load i64, ptr %l9, !tbaa !24
  %t82 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
  %t83 = load ptr, ptr %t82, !tbaa !27
  %t84 = getelementptr i32, ptr %t83, i64 %t80
  %t85 = load i32, ptr %t84, !tbaa !33
  %t86 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t89 = icmp ne i32 %t85, %t86
  br i1 %t89, label %bb16, label %bb17
bb16:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t91, i32 0, i32 0
  %t94 = load ptr, ptr %t93, !tbaa !29
  %t95 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t95, ptr %l55, !tbaa !27
  %t96 = load i64, ptr %l9, !tbaa !24
  %t98 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i32, ptr %t99, i64 %t96
  %t101 = load i32, ptr %t100, !tbaa !33
  %t104 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t94, i32 %t101)
  store i64 %t104, ptr %l58
  br label %bb18
bb17:
  store i64 1, ptr %l52, !tbaa !24
  br label %bb19
bb18:
  %t105 = load i64, ptr %l58, !tbaa !24
  store i64 %t105, ptr %l52, !tbaa !24
  br label %bb19
bb19:
  %t106 = load i64, ptr %l52, !tbaa !24
  store i64 %t106, ptr %l10, !tbaa !24
  %t107 = load i64, ptr %l10, !tbaa !24
  %t109 = icmp slt i64 %t107, 1
  br i1 %t109, label %bb20, label %bb21
bb20:
  store i64 1, ptr %l10, !tbaa !24
  br label %bb22
bb21:
  br label %bb22
bb22:
  %t111 = load i64, ptr %l3, !tbaa !24
  %t112 = load i64, ptr %l10, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l10, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  %t122 = load i64, ptr %l10, !tbaa !24
  %t125 = mul i64 %t121, %t122
  store i64 %t125, ptr %l3, !tbaa !24
  %t127 = load i64, ptr %l9, !tbaa !24
  %t128 = load i64, ptr %l3, !tbaa !24
  %t130 = load ptr, ptr %lp2
  %t132 = getelementptr { i64, ptr }, ptr %t130, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = getelementptr i64, ptr %t133, i64 %t127
  store i64 %t128, ptr %t134, !tbaa !34
  %t135 = load i64, ptr %l3, !tbaa !24
  store i64 %t135, ptr %l71, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t137, ptr %l73, !tbaa !27
  %t138 = load i64, ptr %l9, !tbaa !24
  %t140 = getelementptr { i64, ptr }, ptr %l73, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = getelementptr i32, ptr %t141, i64 %t138
  %t143 = load i32, ptr %t142, !tbaa !33
  %t146 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t136, i32 %t143)
  store i64 %t146, ptr %l76
  br label %bb23
bb23:
  %t147 = load i64, ptr %l71, !tbaa !24
  %t148 = load i64, ptr %l76, !tbaa !24
  %t149 = add i64 %t147, %t148
  store i64 %t149, ptr %l3, !tbaa !24
  br label %bb24
bb24:
  %t151 = load i64, ptr %l8, !tbaa !24
  %t153 = add i64 %t151, 1
  store i64 %t153, ptr %l8, !tbaa !24
  br label %bb11
bb25:
  %t155 = load ptr, ptr %lp2
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  %t157 = load i64, ptr %l3, !tbaa !24
  %t159 = add i64 %t157, 7
  %t161 = sdiv i64 %t159, 8
  %t163 = mul i64 %t161, 8
  %t165 = insertvalue { { i64, ptr }, i64 } undef, { i64, ptr } %t156, 0
  %t167 = insertvalue { { i64, ptr }, i64 } %t165, i64 %t163, 1
  store { { i64, ptr }, i64 } %t167, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, i64 }, ptr %rv
  ret { { i64, ptr }, i64 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i32 %a3, %"compiler/eval:Ptr" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l4 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, ptr }
  %l16 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i32
  %l24 = alloca i32
  %l30 = alloca i32
  %l34 = alloca i64
  %l36 = alloca ptr
  %l40 = alloca i32
  %l41 = alloca i64
  %l45 = alloca i64
  %l48 = alloca i64
  %l66 = alloca ptr
  %l67 = alloca %"compiler/eval:Ptr"
  %l72 = alloca i64
  %l73 = alloca i32
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l82 = alloca %"compiler/eval:Ptr"
  %l88 = alloca i64
  %l92 = alloca { i64, ptr }
  %l96 = alloca i32
  %l99 = alloca i1
  %l109 = alloca %"compiler/eval:Ptr"
  %l110 = alloca ptr
  %l111 = alloca %"compiler/eval:Ptr"
  %l112 = alloca { i64, ptr }
  %l115 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/eval:Ptr" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a3)
  store i32 %t8, ptr %l20
  br label %bb1
bb1:
  %t9 = load i32, ptr %l20, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l5, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l24
  br label %bb2
bb2:
  %t18 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l30
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t31 = load i32, ptr %l30, !tbaa !23
  store i32 %t31, ptr %l6, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l34
  br label %bb6
bb6:
  %t40 = load i64, ptr %l34, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l36, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l40
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l36, !tbaa !29
  %t54 = load i32, ptr %l40, !tbaa !23
  %t55 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t53, i32 %t54)
  store i64 %t55, ptr %l41
  br label %bb8
bb8:
  %t56 = load i64, ptr %l41, !tbaa !24
  store i64 %t56, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l9, !tbaa !24
  %t58 = load i64, ptr %l8, !tbaa !24
  %t61 = icmp sgt i64 %t57, %t58
  br i1 %t61, label %bb9, label %bb10
bb9:
  %t63 = load i64, ptr %l10, !tbaa !24
  %t65 = icmp sgt i64 %t63, 0
  br i1 %t65, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb14
bb11:
  %t67 = load i64, ptr %l9, !tbaa !24
  %t68 = load i64, ptr %l8, !tbaa !24
  %t71 = sub i64 %t67, %t68
  %t72 = load i64, ptr %l10, !tbaa !24
  %t75 = add i64 %t71, %t72
  %t77 = sub i64 %t75, 1
  %t78 = load i64, ptr %l10, !tbaa !24
  %t81 = sdiv i64 %t77, %t78
  store i64 %t81, ptr %l48, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb13
bb13:
  %t83 = load i64, ptr %l48, !tbaa !24
  store i64 %t83, ptr %l45, !tbaa !24
  br label %bb14
bb14:
  %t84 = load i64, ptr %l45, !tbaa !24
  store i64 %t84, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t85 = load i64, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t89 = icmp slt i64 %t85, %t86
  %t91 = xor i1 %t89, true
  br i1 %t91, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb23
bb17:
  br label %bb18
bb18:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t94 = load i64, ptr %l12, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = mul i64 %t94, %t95
  %t101 = add i64 %t93, %t98
  store i64 %t101, ptr %l13, !tbaa !24
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l66, !tbaa !29
  %t104 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t104, ptr %l67
  %t105 = load i64, ptr %l2, !tbaa !24
  %t106 = load i64, ptr %l13, !tbaa !24
  %t107 = load i64, ptr %l7, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  store i64 %t113, ptr %l72, !tbaa !24
  %t114 = load i32, ptr %l6, !tbaa !23
  store i32 %t114, ptr %l73, !tbaa !23
  %t115 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  store i64 %t116, ptr %l74, !tbaa !24
  %t117 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 1
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l75, !tbaa !24
  %t119 = load i64, ptr %l13, !tbaa !24
  store i64 %t119, ptr %l76, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load i32, ptr %l6, !tbaa !23
  %t124 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t120, i32 %t121)
  store i64 %t124, ptr %l79
  br label %bb19
bb19:
  %t125 = load i64, ptr %l76, !tbaa !24
  %t126 = load i64, ptr %l79, !tbaa !24
  %t127 = mul i64 %t125, %t126
  %t128 = load i64, ptr %l75, !tbaa !24
  %t130 = add i64 %t128, %t127
  %t131 = load i64, ptr %l74, !tbaa !24
  %t133 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t131, i64 %t130)
  store %"compiler/eval:Ptr" %t133, ptr %l82
  br label %bb20
bb20:
  %t134 = load ptr, ptr %l66, !tbaa !29
  %t135 = load %"compiler/eval:Ptr", ptr %l67
  %t136 = load i64, ptr %l72, !tbaa !24
  %t137 = load i32, ptr %l73, !tbaa !23
  %t138 = load %"compiler/eval:Ptr", ptr %l82
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %t134, %"compiler/eval:Ptr" %t135, i64 %t136, i32 %t137, %"compiler/eval:Ptr" %t138)
  br label %bb21
bb21:
  call void @__olang_scope_close(ptr %s3)
  br label %bb22
bb22:
  %t139 = load i64, ptr %l12, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l12, !tbaa !24
  br label %bb15
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t147 = load i32, ptr %l5, !tbaa !23
  %t150 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t146, i32 %t147)
  store i64 %t150, ptr %l88
  br label %bb25
bb25:
  %t151 = load i64, ptr %l88, !tbaa !24
  store i64 %t151, ptr %l14, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = load i32, ptr %l5, !tbaa !23
  %t159 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %s0, ptr %t155, i32 %t156)
  store { i64, ptr } %t159, ptr %l92
  br label %bb26
bb26:
  %t160 = load { i64, ptr }, ptr %l92, !tbaa !27
  store { i64, ptr } %t160, ptr %l15, !tbaa !27
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/eval:Machine", ptr %t161, i32 0, i32 0
  %t164 = load ptr, ptr %t163, !tbaa !29
  %t165 = load i32, ptr %l5, !tbaa !23
  %t168 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t164, i32 %t165)
  store i32 %t168, ptr %l96
  br label %bb27
bb27:
  %t169 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t170 = load i32, ptr %l96, !tbaa !23
  %t172 = icmp eq i32 %t170, %t169
  br i1 %t172, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l99, !tbaa !21
  br label %bb30
bb29:
  %t174 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t176 = extractvalue { i64, ptr } %t174, 0
  %t178 = icmp eq i64 %t176, 0
  store i1 %t178, ptr %l99, !tbaa !21
  br label %bb30
bb30:
  %t180 = load i1, ptr %l99, !tbaa !21
  br i1 %t180, label %bb31, label %bb32
bb31:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t182 = load %"compiler/eval:Ptr", ptr %l1
  %t183 = load i64, ptr %l2, !tbaa !24
  %t184 = load %"compiler/eval:Ptr", ptr %l4
  %t185 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t181, %"compiler/eval:Ptr" %t182, i64 %t183, %"compiler/eval:Ptr" %t184, i64 0, i64 %t185)
  br label %bb33
bb32:
  br label %bb34
bb33:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb34:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t193 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t191, i64 3, i64 8)
  store %"compiler/eval:Ptr" %t193, ptr %l109
  br label %bb35
bb35:
  %t194 = load %"compiler/eval:Ptr", ptr %l109
  store %"compiler/eval:Ptr" %t194, ptr %l16
  %t195 = load ptr, ptr %l0, !tbaa !29
  store ptr %t195, ptr %l110, !tbaa !29
  %t196 = load %"compiler/eval:Ptr", ptr %l16
  store %"compiler/eval:Ptr" %t196, ptr %l111
  %t197 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t197, ptr %l112, !tbaa !27
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t199 = load %"compiler/eval:Ptr", ptr %l4
  %t202 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t198, %"compiler/eval:Ptr" %t199, i64 4)
  store i64 %t202, ptr %l115
  br label %bb36
bb36:
  %t203 = load i64, ptr %l115, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr i64, ptr %t205, i64 %t203
  %t207 = load i64, ptr %t206, !tbaa !34
  %t208 = load ptr, ptr %l110, !tbaa !29
  %t209 = load %"compiler/eval:Ptr", ptr %l111
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t208, %"compiler/eval:Ptr" %t209, i64 8, i64 %t207)
  br label %bb37
bb37:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load %"compiler/eval:Ptr", ptr %l1
  %t213 = load i64, ptr %l2, !tbaa !24
  %t214 = load %"compiler/eval:Ptr", ptr %l16
  %t215 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t211, %"compiler/eval:Ptr" %t212, i64 %t213, %"compiler/eval:Ptr" %t214, i64 0, i64 %t215)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp sle i64 %t7, %a1
  br i1 %t9, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 9
  %t15 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t13)
  %t16 = extractvalue { i32, i64 } %t15, 1
  %t17 = extractvalue { i32, i64 } %t15, 0
  store i32 %t17, ptr %l12
  %t18 = icmp ne i32 %t17, 0
  br i1 %t18, label %bb6, label %ok.19, !prof !99
ok.19:
  store i64 %t16, ptr %l11
  br label %bb5
bb5:
  %t20 = load i64, ptr %l11, !tbaa !24
  store i64 %t20, ptr %l8, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 0, ptr %l8, !tbaa !24
  br label %bb8
bb8:
  %t21 = load i64, ptr %l8, !tbaa !24
  store i64 %t21, ptr %l2, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 10
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 10
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l17
  br label %bb9
bb9:
  %t30 = load i64, ptr %l17, !tbaa !24
  %t31 = sub i64 %t30, 1
  %t32 = load ptr, ptr %l14, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eTruncate_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t32, i64 %t31)
  br label %bb10
bb10:
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = icmp ne i64 %t34, 0
  br i1 %t36, label %bb11, label %bb12
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t38, i64 %t39)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i32
  %l7 = alloca { i64, [2 x i64] }
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i64
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca { i64, [1 x i64] }
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca i32
  %l24 = alloca { %"compiler/eval:Ptr", i32 }
  %l25 = alloca i64
  %l26 = alloca { %"compiler/eval:Ptr", i32 }
  %l27 = alloca i32
  %l28 = alloca i64
  %l30 = alloca { i64, ptr }
  %l44 = alloca %"compiler/eval:Ptr"
  %l46 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l57 = alloca i64
  %l59 = alloca ptr
  %l62 = alloca %"compiler/eval:gkey"
  %l63 = alloca i64
  %l64 = alloca i32
  %l73 = alloca i1
  %l78 = alloca i1
  %l82 = alloca %"compiler/eval:global"
  %l93 = alloca %"compiler/eval:global"
  %l95 = alloca %"compiler/eval:Ptr"
  %l103 = alloca i32
  %l106 = alloca i32
  %l130 = alloca { i64, ptr }
  %l132 = alloca { i64, ptr }
  %l142 = alloca i64
  %l143 = alloca i64
  %l147 = alloca i64
  %l149 = alloca %"compiler/eval:Ptr"
  %l153 = alloca i32
  %l158 = alloca { i64, ptr }
  %l160 = alloca { i64, ptr }
  %l164 = alloca ptr
  %l165 = alloca ptr
  %l169 = alloca %"compiler/eval:Ptr"
  %l172 = alloca i64
  %l173 = alloca i64
  %l175 = alloca i64
  %l180 = alloca { %"compiler/eval:Ptr", i32 }
  %l190 = alloca { %"compiler/eval:Ptr", i32 }
  %l195 = alloca ptr
  %l198 = alloca i32
  %l199 = alloca i32
  %l202 = alloca i1
  %l206 = alloca %"compiler/eval:Ptr"
  %l217 = alloca i64
  %l225 = alloca %"compiler/eval:Ptr"
  %l229 = alloca i32
  %s2 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %rv = alloca { %"compiler/eval:Ptr", i32 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l30, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l4, !tbaa !29
  %t18 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t18, ptr %l5
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t20, ptr %l6, !tbaa !23
  %t22 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 0
  %t23 = load { i64, [2 x i64] }, ptr %t22
  store { i64, [2 x i64] } %t23, ptr %l7
  %t25 = load { i64, [2 x i64] }, ptr %l7
  %t27 = extractvalue { i64, [2 x i64] } %t25, 0
  %t28 = icmp eq i64 %t27, 1
  br i1 %t28, label %bb1, label %bb2
bb1:
  %t30 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t31 = getelementptr { i32 }, ptr %t30, i32 0, i32 0
  %t32 = load i32, ptr %t31
  store i32 %t32, ptr %l8, !tbaa !23
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load i32, ptr %l8, !tbaa !23
  %t40 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t34, i64 %t35, i32 %t36)
  store %"compiler/eval:Ptr" %t40, ptr %l44
  br label %bb4
bb4:
  %t41 = load %"compiler/eval:Ptr", ptr %l44
  store %"compiler/eval:Ptr" %t41, ptr %l5
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 23
  %t45 = load { i64, ptr }, ptr %t44, !tbaa !27
  store { i64, ptr } %t45, ptr %l46, !tbaa !27
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr %"compiler/eval:cfn", ptr %t49, i64 %t46
  %t51 = getelementptr %"compiler/eval:cfn", ptr %t50, i32 0, i32 1
  %t52 = load { i64, ptr }, ptr %t51, !tbaa !27
  store { i64, ptr } %t52, ptr %l48, !tbaa !27
  %t53 = load i32, ptr %l8, !tbaa !23
  %t55 = sext i32 %t53 to i64
  %t57 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr %"compiler/mir:Local", ptr %t58, i64 %t55
  %t60 = getelementptr %"compiler/mir:Local", ptr %t59, i32 0, i32 2
  %t61 = load i32, ptr %t60, !tbaa !23
  store i32 %t61, ptr %l6, !tbaa !23
  br label %bb33
bb5:
  %t63 = load { i64, [2 x i64] }, ptr %l7
  %t65 = extractvalue { i64, [2 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 2
  br i1 %t66, label %bb6, label %bb7
bb6:
  %t68 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t69 = getelementptr { i64, i32, i32 }, ptr %t68, i32 0, i32 0
  %t70 = load i64, ptr %t69
  store i64 %t70, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t73 = getelementptr { i64, i32, i32 }, ptr %t72, i32 0, i32 1
  %t74 = load i32, ptr %t73
  store i32 %t74, ptr %l10, !tbaa !23
  %t76 = getelementptr { i64, [2 x i64] }, ptr %l7, i32 0, i32 1
  %t77 = getelementptr { i64, i32, i32 }, ptr %t76, i32 0, i32 2
  %t78 = load i32, ptr %t77
  store i32 %t78, ptr %l11, !tbaa !23
  br label %bb8
bb7:
  br label %bb28
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 40
  store ptr %t82, ptr %l59, !tbaa !29
  %t83 = load i64, ptr %l9, !tbaa !24
  %t84 = load i32, ptr %l10, !tbaa !23
  %t87 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s2, i64 %t83, i32 %t84)
  store %"compiler/eval:gkey" %t87, ptr %l62
  br label %bb9
bb9:
  %t88 = load ptr, ptr %l59, !tbaa !29
  %t89 = load %"compiler/eval:gkey", ptr %l62
  %t90 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t88, %"compiler/eval:gkey" %t89)
  %t91 = extractvalue { i32, i64 } %t90, 1
  %t92 = extractvalue { i32, i64 } %t90, 0
  store i32 %t92, ptr %l64
  %t93 = icmp ne i32 %t92, 0
  br i1 %t93, label %bb11, label %ok.94, !prof !99
ok.94:
  store i64 %t91, ptr %l63
  br label %bb10
bb10:
  %t95 = load i64, ptr %l63, !tbaa !24
  store i64 %t95, ptr %l57, !tbaa !24
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t98 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t98, ptr %t96, { i64, ptr } %t97)
  br label %bb13
bb13:
  %t101 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t102 = load i32, ptr %l11, !tbaa !23
  %t104 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t101, 0
  %t106 = insertvalue { %"compiler/eval:Ptr", i32 } %t104, i32 %t102, 1
  call void @__olang_scope_close(ptr %s2)
  store { %"compiler/eval:Ptr", i32 } %t106, ptr %rv
  br label %ret
bb14:
  %t108 = load i64, ptr %l57, !tbaa !24
  store i64 %t108, ptr %l12, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/eval:Machine", ptr %t109, i32 0, i32 1
  %t112 = load i32, ptr %t111, !range !{i32 0, i32 2}
  %t114 = trunc i64 0 to i32
  %t115 = icmp eq i32 %t112, %t114
  br i1 %t115, label %bb15, label %bb16
bb15:
  %t117 = load i64, ptr %l12, !tbaa !24
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 70
  %t121 = load i64, ptr %t120, !tbaa !24
  %t124 = icmp ne i64 %t117, %t121
  store i1 %t124, ptr %l73, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l73, !tbaa !21
  br label %bb17
bb17:
  %t126 = load i1, ptr %l73, !tbaa !21
  br i1 %t126, label %bb18, label %bb19
bb18:
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 39
  %t130 = load i64, ptr %l12, !tbaa !24
  %t133 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t129, i64 %t130)
  store %"compiler/eval:global" %t133, ptr %l82
  br label %bb20
bb19:
  store i1 false, ptr %l78, !tbaa !21
  br label %bb21
bb20:
  %t134 = getelementptr %"compiler/eval:global", ptr %l82, i32 0, i32 4
  %t135 = load i64, ptr %t134, !tbaa !24
  %t137 = icmp ne i64 %t135, 2
  store i1 %t137, ptr %l78, !tbaa !21
  br label %bb21
bb21:
  %t139 = load i1, ptr %l78, !tbaa !21
  br i1 %t139, label %bb22, label %bb23
bb22:
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t141 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoGlobal, !tbaa !27
  %t142 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t142, ptr %t140, { i64, ptr } %t141)
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t145 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t146 = load i32, ptr %l11, !tbaa !23
  %t148 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t145, 0
  %t150 = insertvalue { %"compiler/eval:Ptr", i32 } %t148, i32 %t146, 1
  call void @__olang_scope_close(ptr %s2)
  store { %"compiler/eval:Ptr", i32 } %t150, ptr %rv
  br label %ret
bb25:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 39
  %t155 = load i64, ptr %l12, !tbaa !24
  %t158 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t154, i64 %t155)
  store %"compiler/eval:global" %t158, ptr %l93
  br label %bb26
bb26:
  %t159 = getelementptr %"compiler/eval:global", ptr %l93, i32 0, i32 3
  %t160 = load i64, ptr %t159, !tbaa !24
  %t162 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t160, i64 0)
  store %"compiler/eval:Ptr" %t162, ptr %l95
  br label %bb27
bb27:
  %t163 = load %"compiler/eval:Ptr", ptr %l95
  store %"compiler/eval:Ptr" %t163, ptr %l5
  %t164 = load i32, ptr %l11, !tbaa !23
  store i32 %t164, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb28:
  %t166 = load { i64, [2 x i64] }, ptr %l7
  %t168 = extractvalue { i64, [2 x i64] } %t166, 0
  %t169 = icmp eq i64 %t168, 0
  br i1 %t169, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  call void @__olang_check_failed(ptr @olang_loc_de6102181a77a536_5fca55a0d6277082)
  unreachable
bb33:
  store i32 0, ptr %l13, !tbaa !23
  %t171 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t172 = getelementptr %"compiler/mir:Range", ptr %t171, i32 0, i32 1
  %t173 = load i32, ptr %t172, !tbaa !23
  store i32 %t173, ptr %l14, !tbaa !23
  store i32 1, ptr %l15, !tbaa !23
  %t175 = load i32, ptr %l14, !tbaa !23
  %t176 = load i32, ptr %l13, !tbaa !23
  %t179 = icmp sgt i32 %t175, %t176
  br i1 %t179, label %bb34, label %bb35
bb34:
  %t181 = load i32, ptr %l15, !tbaa !23
  %t183 = icmp sgt i32 %t181, 0
  br i1 %t183, label %bb36, label %bb37
bb35:
  store i32 0, ptr %l103, !tbaa !23
  br label %bb39
bb36:
  %t185 = load i32, ptr %l14, !tbaa !23
  %t186 = load i32, ptr %l13, !tbaa !23
  %t189 = sub i32 %t185, %t186
  %t190 = load i32, ptr %l15, !tbaa !23
  %t193 = add i32 %t189, %t190
  %t195 = sub i32 %t193, 1
  %t196 = load i32, ptr %l15, !tbaa !23
  %t199 = sdiv i32 %t195, %t196
  store i32 %t199, ptr %l106, !tbaa !23
  br label %bb38
bb37:
  store i32 0, ptr %l106, !tbaa !23
  br label %bb38
bb38:
  %t201 = load i32, ptr %l106, !tbaa !23
  store i32 %t201, ptr %l103, !tbaa !23
  br label %bb39
bb39:
  %t202 = load i32, ptr %l103, !tbaa !23
  store i32 %t202, ptr %l16, !tbaa !23
  store i32 0, ptr %l17, !tbaa !23
  br label %bb40
bb40:
  %t203 = load i32, ptr %l17, !tbaa !23
  %t204 = load i32, ptr %l16, !tbaa !23
  %t207 = icmp slt i32 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb41, label %bb42
bb41:
  br label %bb96
bb42:
  br label %bb43
bb43:
  %t211 = load i32, ptr %l13, !tbaa !23
  %t212 = load i32, ptr %l17, !tbaa !23
  %t213 = load i32, ptr %l15, !tbaa !23
  %t216 = mul i32 %t212, %t213
  %t219 = add i32 %t211, %t216
  store i32 %t219, ptr %l18, !tbaa !23
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/eval:Machine", ptr %t221, i32 0, i32 19
  %t224 = load i1, ptr %t223, !tbaa !21
  br i1 %t224, label %bb44, label %bb45
bb44:
  %t226 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t227 = load i32, ptr %l6, !tbaa !23
  %t229 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t226, 0
  %t231 = insertvalue { %"compiler/eval:Ptr", i32 } %t229, i32 %t227, 1
  store { %"compiler/eval:Ptr", i32 } %t231, ptr %rv
  br label %ret
bb45:
  br label %bb46
bb46:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t233, i32 0, i32 23
  %t236 = load { i64, ptr }, ptr %t235, !tbaa !27
  store { i64, ptr } %t236, ptr %l130, !tbaa !27
  %t237 = load i64, ptr %l3, !tbaa !24
  %t239 = getelementptr { i64, ptr }, ptr %l130, i32 0, i32 1
  %t240 = load ptr, ptr %t239, !tbaa !27
  %t241 = getelementptr %"compiler/eval:cfn", ptr %t240, i64 %t237
  %t242 = getelementptr %"compiler/eval:cfn", ptr %t241, i32 0, i32 3
  %t243 = load { i64, ptr }, ptr %t242, !tbaa !27
  store { i64, ptr } %t243, ptr %l132, !tbaa !27
  %t244 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t245 = getelementptr %"compiler/mir:Range", ptr %t244, i32 0, i32 0
  %t246 = load i32, ptr %t245, !tbaa !23
  %t248 = sext i32 %t246 to i64
  %t249 = load i32, ptr %l18, !tbaa !23
  %t251 = sext i32 %t249 to i64
  %t254 = add i64 %t248, %t251
  %t256 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t257 = load ptr, ptr %t256, !tbaa !27
  %t258 = getelementptr { i64, [1 x i64] }, ptr %t257, i64 %t254
  %t259 = load { i64, [1 x i64] }, ptr %t258
  store { i64, [1 x i64] } %t259, ptr %l19
  %t261 = load { i64, [1 x i64] }, ptr %l19
  %t263 = extractvalue { i64, [1 x i64] } %t261, 0
  %t264 = icmp eq i64 %t263, 0
  br i1 %t264, label %bb47, label %bb48
bb47:
  %t266 = getelementptr { i64, [1 x i64] }, ptr %l19, i32 0, i32 1
  %t267 = getelementptr { i64 }, ptr %t266, i32 0, i32 0
  %t268 = load i64, ptr %t267
  store i64 %t268, ptr %l20, !tbaa !24
  br label %bb49
bb48:
  br label %bb53
bb49:
  store %olang.scope zeroinitializer, ptr %s9
  %t270 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t271 = load i64, ptr %t270, !tbaa !24
  store i64 %t271, ptr %l142, !tbaa !24
  %t272 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t273 = load i64, ptr %t272, !tbaa !24
  store i64 %t273, ptr %l143, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i32, ptr %l6, !tbaa !23
  %t276 = load i64, ptr %l20, !tbaa !24
  %t280 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t274, i32 %t275, i64 %t276)
  store i64 %t280, ptr %l147
  br label %bb50
bb50:
  %t281 = load i64, ptr %l143, !tbaa !24
  %t282 = load i64, ptr %l147, !tbaa !24
  %t283 = add i64 %t281, %t282
  %t284 = load i64, ptr %l142, !tbaa !24
  %t286 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s9, i64 %t284, i64 %t283)
  store %"compiler/eval:Ptr" %t286, ptr %l149
  br label %bb51
bb51:
  %t287 = load %"compiler/eval:Ptr", ptr %l149
  store %"compiler/eval:Ptr" %t287, ptr %l5
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i32, ptr %l6, !tbaa !23
  %t290 = load i64, ptr %l20, !tbaa !24
  %t294 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t288, i32 %t289, i64 %t290)
  store i32 %t294, ptr %l153
  br label %bb52
bb52:
  %t295 = load i32, ptr %l153, !tbaa !23
  store i32 %t295, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s9)
  br label %bb94
bb53:
  %t296 = load { i64, [1 x i64] }, ptr %l19
  %t298 = extractvalue { i64, [1 x i64] } %t296, 0
  %t299 = icmp eq i64 %t298, 1
  br i1 %t299, label %bb54, label %bb55
bb54:
  %t301 = getelementptr { i64, [1 x i64] }, ptr %l19, i32 0, i32 1
  %t302 = getelementptr { i32 }, ptr %t301, i32 0, i32 0
  %t303 = load i32, ptr %t302
  store i32 %t303, ptr %l21, !tbaa !23
  br label %bb56
bb55:
  br label %bb62
bb56:
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t307 = getelementptr %"compiler/eval:Machine", ptr %t305, i32 0, i32 23
  %t308 = load { i64, ptr }, ptr %t307, !tbaa !27
  store { i64, ptr } %t308, ptr %l158, !tbaa !27
  %t309 = load i64, ptr %l3, !tbaa !24
  %t311 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t312 = load ptr, ptr %t311, !tbaa !27
  %t313 = getelementptr %"compiler/eval:cfn", ptr %t312, i64 %t309
  %t314 = getelementptr %"compiler/eval:cfn", ptr %t313, i32 0, i32 1
  %t315 = load { i64, ptr }, ptr %t314, !tbaa !27
  store { i64, ptr } %t315, ptr %l160, !tbaa !27
  %t316 = load i32, ptr %l21, !tbaa !23
  %t318 = sext i32 %t316 to i64
  %t320 = getelementptr { i64, ptr }, ptr %l160, i32 0, i32 1
  %t321 = load ptr, ptr %t320, !tbaa !27
  %t322 = getelementptr %"compiler/mir:Local", ptr %t321, i64 %t318
  %t323 = getelementptr %"compiler/mir:Local", ptr %t322, i32 0, i32 2
  %t324 = load i32, ptr %t323, !tbaa !23
  store i32 %t324, ptr %l22, !tbaa !23
  %t326 = load ptr, ptr %l0, !tbaa !29
  store ptr %t326, ptr %l164, !tbaa !29
  %t327 = load ptr, ptr %l0, !tbaa !29
  store ptr %t327, ptr %l165, !tbaa !29
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load i64, ptr %l1, !tbaa !24
  %t330 = load i32, ptr %l21, !tbaa !23
  %t334 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t328, i64 %t329, i32 %t330)
  store %"compiler/eval:Ptr" %t334, ptr %l169
  br label %bb57
bb57:
  %t335 = load ptr, ptr %l0, !tbaa !29
  %t336 = load i32, ptr %l22, !tbaa !23
  %t339 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t335, i32 %t336)
  store i64 %t339, ptr %l172
  br label %bb58
bb58:
  %t340 = load ptr, ptr %l165, !tbaa !29
  %t341 = load %"compiler/eval:Ptr", ptr %l169
  %t342 = load i64, ptr %l172, !tbaa !24
  %t343 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t340, %"compiler/eval:Ptr" %t341, i64 %t342)
  store i64 %t343, ptr %l173
  br label %bb59
bb59:
  %t344 = load i32, ptr %l22, !tbaa !23
  %t345 = load ptr, ptr %l164, !tbaa !29
  %t346 = load i64, ptr %l173, !tbaa !24
  %t348 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t345, i64 %t346, i32 %t344)
  store i64 %t348, ptr %l175
  br label %bb60
bb60:
  %t349 = load i64, ptr %l175, !tbaa !24
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load %"compiler/eval:Ptr", ptr %l5
  %t352 = load i32, ptr %l6, !tbaa !23
  %t358 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %t350, %"compiler/eval:Ptr" %t351, i32 %t352, i64 %t349)
  store { %"compiler/eval:Ptr", i32 } %t358, ptr %l180
  br label %bb61
bb61:
  %t359 = load { %"compiler/eval:Ptr", i32 }, ptr %l180
  store { %"compiler/eval:Ptr", i32 } %t359, ptr %l24
  %t360 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l24, i32 0, i32 0
  %t361 = load %"compiler/eval:Ptr", ptr %t360
  store %"compiler/eval:Ptr" %t361, ptr %l5
  %t363 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l24, i32 0, i32 1
  %t364 = load i32, ptr %t363, !tbaa !23
  store i32 %t364, ptr %l6, !tbaa !23
  br label %bb94
bb62:
  %t366 = load { i64, [1 x i64] }, ptr %l19
  %t368 = extractvalue { i64, [1 x i64] } %t366, 0
  %t369 = icmp eq i64 %t368, 2
  br i1 %t369, label %bb63, label %bb64
bb63:
  %t371 = getelementptr { i64, [1 x i64] }, ptr %l19, i32 0, i32 1
  %t372 = getelementptr { i64 }, ptr %t371, i32 0, i32 0
  %t373 = load i64, ptr %t372
  store i64 %t373, ptr %l25, !tbaa !24
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load %"compiler/eval:Ptr", ptr %l5
  %t377 = load i32, ptr %l6, !tbaa !23
  %t378 = load i64, ptr %l25, !tbaa !24
  %t383 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %t375, %"compiler/eval:Ptr" %t376, i32 %t377, i64 %t378)
  store { %"compiler/eval:Ptr", i32 } %t383, ptr %l190
  br label %bb66
bb66:
  %t384 = load { %"compiler/eval:Ptr", i32 }, ptr %l190
  store { %"compiler/eval:Ptr", i32 } %t384, ptr %l26
  %t385 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l26, i32 0, i32 0
  %t386 = load %"compiler/eval:Ptr", ptr %t385
  store %"compiler/eval:Ptr" %t386, ptr %l5
  %t388 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l26, i32 0, i32 1
  %t389 = load i32, ptr %t388, !tbaa !23
  store i32 %t389, ptr %l6, !tbaa !23
  br label %bb94
bb67:
  %t391 = load { i64, [1 x i64] }, ptr %l19
  %t393 = extractvalue { i64, [1 x i64] } %t391, 0
  %t394 = icmp eq i64 %t393, 3
  br i1 %t394, label %bb68, label %bb69
bb68:
  br label %bb70
bb69:
  br label %bb82
bb70:
  %t396 = load ptr, ptr %l4, !tbaa !29
  store ptr %t396, ptr %l195, !tbaa !29
  %t397 = load ptr, ptr %l4, !tbaa !29
  %t398 = load i32, ptr %l6, !tbaa !23
  %t401 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t397, i32 %t398)
  store i32 %t401, ptr %l198
  br label %bb71
bb71:
  %t402 = load ptr, ptr %l195, !tbaa !29
  %t403 = load i32, ptr %l198, !tbaa !23
  %t404 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t402, i32 %t403)
  store i32 %t404, ptr %l199
  br label %bb72
bb72:
  %t405 = load i32, ptr %l199, !tbaa !23
  store i32 %t405, ptr %l27, !tbaa !23
  %t406 = load ptr, ptr %l0, !tbaa !29
  %t407 = load i32, ptr %l27, !tbaa !23
  %t410 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %t406, i32 %t407)
  store i1 %t410, ptr %l202
  br label %bb73
bb73:
  %t411 = load i1, ptr %l202, !tbaa !21
  %t412 = xor i1 %t411, true
  br i1 %t412, label %bb74, label %bb75
bb74:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t415 = load %"compiler/eval:Ptr", ptr %l5
  %t418 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t414, %"compiler/eval:Ptr" %t415)
  store %"compiler/eval:Ptr" %t418, ptr %l206
  br label %bb76
bb75:
  br label %bb77
bb76:
  %t419 = load %"compiler/eval:Ptr", ptr %l206
  store %"compiler/eval:Ptr" %t419, ptr %l5
  br label %bb77
bb77:
  %t420 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t421 = load i64, ptr %t420, !tbaa !24
  %t423 = icmp eq i64 %t421, 0
  br i1 %t423, label %bb78, label %bb79
bb78:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t426 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNull, !tbaa !27
  %t427 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t427, ptr %t425, { i64, ptr } %t426)
  br label %bb80
bb79:
  br label %bb81
bb80:
  br label %bb81
bb81:
  %t430 = load i32, ptr %l27, !tbaa !23
  store i32 %t430, ptr %l6, !tbaa !23
  br label %bb94
bb82:
  %t432 = load { i64, [1 x i64] }, ptr %l19
  %t434 = extractvalue { i64, [1 x i64] } %t432, 0
  %t435 = icmp eq i64 %t434, 4
  br i1 %t435, label %bb83, label %bb84
bb83:
  %t437 = getelementptr { i64, [1 x i64] }, ptr %l19, i32 0, i32 1
  %t438 = getelementptr { i64 }, ptr %t437, i32 0, i32 0
  %t439 = load i64, ptr %t438
  store i64 %t439, ptr %l28, !tbaa !24
  br label %bb85
bb84:
  br label %bb93
bb85:
  store %olang.scope zeroinitializer, ptr %s15
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t442 = load %"compiler/eval:Ptr", ptr %l5
  %t445 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t441, %"compiler/eval:Ptr" %t442, i64 8)
  store i64 %t445, ptr %l217
  br label %bb86
bb86:
  %t446 = load i64, ptr %l28, !tbaa !24
  %t447 = load i64, ptr %l217, !tbaa !24
  %t449 = icmp ne i64 %t447, %t446
  br i1 %t449, label %bb87, label %bb88
bb87:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t452 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyPayload, !tbaa !27
  %t453 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t453, ptr %t451, { i64, ptr } %t452)
  br label %bb89
bb88:
  br label %bb90
bb89:
  br label %bb90
bb90:
  %t456 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t457 = load i64, ptr %t456, !tbaa !24
  %t458 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t459 = load i64, ptr %t458, !tbaa !24
  %t461 = add i64 %t459, 8
  %t464 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s15, i64 %t457, i64 %t461)
  store %"compiler/eval:Ptr" %t464, ptr %l225
  br label %bb91
bb91:
  %t465 = load %"compiler/eval:Ptr", ptr %l225
  store %"compiler/eval:Ptr" %t465, ptr %l5
  %t466 = load ptr, ptr %l0, !tbaa !29
  %t467 = load i32, ptr %l6, !tbaa !23
  %t468 = load i64, ptr %l28, !tbaa !24
  %t472 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %t466, i32 %t467, i64 %t468)
  store i32 %t472, ptr %l229
  br label %bb92
bb92:
  %t473 = load i32, ptr %l229, !tbaa !23
  store i32 %t473, ptr %l6, !tbaa !23
  call void @__olang_scope_close(ptr %s15)
  br label %bb94
bb93:
  call void @__olang_check_failed(ptr @olang_loc_c157b2e02f5238d7_241c429033d52203)
  unreachable
bb94:
  br label %bb95
bb95:
  %t474 = load i32, ptr %l17, !tbaa !23
  %t476 = add i32 %t474, 1
  store i32 %t476, ptr %l17, !tbaa !23
  br label %bb40
bb96:
  %t478 = load %"compiler/eval:Ptr", ptr %l5
  %t479 = load i32, ptr %l6, !tbaa !23
  %t481 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t478, 0
  %t483 = insertvalue { %"compiler/eval:Ptr", i32 } %t481, i32 %t479, 1
  store { %"compiler/eval:Ptr", i32 } %t483, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/eval:Ptr", i32 }, ptr %rv
  ret { %"compiler/eval:Ptr", i32 } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, [8 x i64] }
  %l7 = alloca %"compiler/source:Span"
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"compiler/eval:frame"
  %l21 = alloca i64
  %l22 = alloca { i64, ptr }
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
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l43 = alloca { i64, ptr }
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l55 = alloca ptr
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l68 = alloca i64
  %l72 = alloca i64
  %l79 = alloca i1
  %l81 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l98 = alloca ptr
  %l102 = alloca { i64, ptr }
  %l105 = alloca %"compiler/mir:BasicBlock"
  %l117 = alloca ptr
  %l121 = alloca { i64, ptr }
  %l125 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l140 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l148 = alloca %"compiler/eval:frame"
  %l172 = alloca i64
  %l175 = alloca i64
  %l199 = alloca ptr
  %l200 = alloca i64
  %l202 = alloca i64
  %l206 = alloca { i64, ptr }
  %l213 = alloca i64
  %l216 = alloca i64
  %l235 = alloca { i64, ptr }
  %l237 = alloca { i64, ptr }
  %l246 = alloca i64
  %l249 = alloca i64
  %l267 = alloca { i64, ptr }
  %l271 = alloca ptr
  %l273 = alloca { i64, ptr }
  %l276 = alloca i64
  %l279 = alloca %"compiler/eval:Ptr"
  %l282 = alloca { i64, ptr }
  %l298 = alloca i64
  %l301 = alloca i64
  %l320 = alloca { i64, ptr }
  %l337 = alloca ptr
  %l338 = alloca i64
  %l342 = alloca i64
  %l343 = alloca %"compiler/eval:frame"
  %l345 = alloca %"compiler/eval:frame"
  %l349 = alloca { i64, ptr }
  %l356 = alloca i64
  %l359 = alloca i64
  %l378 = alloca { i64, ptr }
  %l380 = alloca { i64, ptr }
  %l382 = alloca %"compiler/eval:frame"
  %l386 = alloca { i64, ptr }
  %l389 = alloca %"compiler/eval:frame"
  %l390 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i64
  %t249 = alloca %"compiler/eval:frame", align 8
  %t687 = alloca %"compiler/eval:frame", align 8
  %t699 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 7
  %t8 = load i64, ptr %t7, !tbaa !24
  %t11 = icmp sge i64 %t4, %t8
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l55, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 1
  %t17 = load i32, ptr %t16, !range !{i32 0, i32 2}
  %t19 = trunc i64 0 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb2:
  br label %bb7
bb3:
  %t22 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDepth, !tbaa !27
  store { i64, ptr } %t22, ptr %l59, !tbaa !27
  br label %bb5
bb4:
  %t24 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyRunDepth, !tbaa !27
  store { i64, ptr } %t24, ptr %l59, !tbaa !27
  br label %bb5
bb5:
  %t26 = load ptr, ptr @__olang_prog_scope
  %t27 = load ptr, ptr %l55, !tbaa !29
  %t28 = load { i64, ptr }, ptr %l59, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t26, ptr %t27, { i64, ptr } %t28)
  br label %bb6
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 23
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l64, !tbaa !27
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:cfn", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:cfn", ptr %t38, i32 0, i32 17
  %t40 = load i1, ptr %t39, !tbaa !21
  br i1 %t40, label %bb8, label %bb9
bb8:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 8
  %t45 = load i64, ptr %t44, !tbaa !24
  store i64 %t45, ptr %l68, !tbaa !24
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 1
  %t49 = load i32, ptr %t48, !range !{i32 0, i32 2}
  %t51 = trunc i64 0 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb10, label %bb11
bb9:
  br label %bb43
bb10:
  store i64 2000, ptr %l72, !tbaa !24
  br label %bb12
bb11:
  store i64 100000, ptr %l72, !tbaa !24
  br label %bb12
bb12:
  %t54 = load i64, ptr %l68, !tbaa !24
  %t55 = load i64, ptr %l72, !tbaa !24
  %t56 = icmp sge i64 %t54, %t55
  br i1 %t56, label %bb13, label %bb14
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 56
  %t61 = load i64, ptr %t60, !tbaa !24
  %t63 = sub i64 %t61, 1
  store i64 %t63, ptr %l4, !tbaa !24
  br label %bb15
bb14:
  br label %bb42
bb15:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t67 = icmp sgt i64 %t65, 0
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 23
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l81, !tbaa !27
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 55
  %t76 = load { i64, ptr }, ptr %t75, !tbaa !27
  store { i64, ptr } %t76, ptr %l83, !tbaa !27
  %t77 = load i64, ptr %l4, !tbaa !24
  %t79 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t80 = load ptr, ptr %t79, !tbaa !27
  %t81 = getelementptr %"compiler/eval:frame", ptr %t80, i64 %t77
  %t82 = getelementptr %"compiler/eval:frame", ptr %t81, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr %"compiler/eval:cfn", ptr %t86, i64 %t83
  %t88 = getelementptr %"compiler/eval:cfn", ptr %t87, i32 0, i32 17
  %t89 = load i1, ptr %t88, !tbaa !21
  store i1 %t89, ptr %l79, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb18
bb18:
  %t91 = load i1, ptr %l79, !tbaa !21
  %t92 = xor i1 %t91, true
  br i1 %t92, label %bb19, label %bb20
bb19:
  br label %bb23
bb20:
  br label %bb21
bb21:
  %t94 = load i64, ptr %l4, !tbaa !24
  %t96 = sub i64 %t94, 1
  store i64 %t96, ptr %l4, !tbaa !24
  br label %bb22
bb22:
  br label %bb15
bb23:
  %t98 = load i64, ptr %l4, !tbaa !24
  %t100 = icmp sge i64 %t98, 0
  br i1 %t100, label %bb24, label %bb25
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Machine", ptr %t102, i32 0, i32 22
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/eval:Machine", ptr %t105, i32 0, i32 55
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l95, !tbaa !27
  %t109 = load i64, ptr %l4, !tbaa !24
  %t111 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t112 = load ptr, ptr %t111, !tbaa !27
  %t113 = getelementptr %"compiler/eval:frame", ptr %t112, i64 %t109
  %t114 = getelementptr %"compiler/eval:frame", ptr %t113, i32 0, i32 0
  %t115 = load i64, ptr %t114, !tbaa !24
  %t118 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t104, i64 %t115)
  store ptr %t118, ptr %l98
  br label %bb26
bb25:
  br label %bb37
bb26:
  %t119 = load ptr, ptr %l98, !tbaa !29
  store ptr %t119, ptr %l5, !tbaa !29
  %t120 = load ptr, ptr %l5, !tbaa !29
  %t122 = getelementptr %"compiler/mir:Fn", ptr %t120, i32 0, i32 9
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/eval:Machine", ptr %t123, i32 0, i32 55
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l102, !tbaa !27
  %t127 = load i64, ptr %l4, !tbaa !24
  %t129 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t130 = load ptr, ptr %t129, !tbaa !27
  %t131 = getelementptr %"compiler/eval:frame", ptr %t130, i64 %t127
  %t132 = getelementptr %"compiler/eval:frame", ptr %t131, i32 0, i32 1
  %t133 = load i64, ptr %t132, !tbaa !24
  %t136 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s5, ptr %t122, i64 %t133)
  store %"compiler/mir:BasicBlock" %t136, ptr %l105
  br label %bb27
bb27:
  %t137 = getelementptr %"compiler/mir:BasicBlock", ptr %l105, i32 0, i32 1
  %t138 = load { i64, [8 x i64] }, ptr %t137
  store { i64, [8 x i64] } %t138, ptr %l6
  %t140 = load { i64, [8 x i64] }, ptr %l6
  %t142 = extractvalue { i64, [8 x i64] } %t140, 0
  %t143 = icmp eq i64 %t142, 4
  br i1 %t143, label %bb28, label %bb29
bb28:
  %t145 = getelementptr { i64, [8 x i64] }, ptr %l6, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32 }, ptr %t145, i32 0, i32 0
  %t147 = load %"compiler/source:Span", ptr %t146
  store %"compiler/source:Span" %t147, ptr %l7
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = getelementptr %"compiler/mir:Fn", ptr %t149, i32 0, i32 2
  %t152 = load i64, ptr %t151, !tbaa !24
  %t154 = load %"compiler/source:Span", ptr %l7
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/eval:Machine", ptr %t156, i32 0, i32 74
  store i64 %t152, ptr %t160, !tbaa !24
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t161, i32 0, i32 75
  store %"compiler/source:Span" %t154, ptr %t165
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_f2c339cbb479452c_c316cd9120a44978)
  unreachable
bb36:
  call void @__olang_scope_close(ptr %s5)
  br label %bb37
bb37:
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l117, !tbaa !29
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t169 = getelementptr %"compiler/eval:Machine", ptr %t167, i32 0, i32 1
  %t170 = load i32, ptr %t169, !range !{i32 0, i32 2}
  %t172 = trunc i64 0 to i32
  %t173 = icmp eq i32 %t170, %t172
  br i1 %t173, label %bb38, label %bb39
bb38:
  %t175 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyEqDepth, !tbaa !27
  store { i64, ptr } %t175, ptr %l121, !tbaa !27
  br label %bb40
bb39:
  %t177 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyRunEqDepth, !tbaa !27
  store { i64, ptr } %t177, ptr %l121, !tbaa !27
  br label %bb40
bb40:
  %t179 = load ptr, ptr @__olang_prog_scope
  %t180 = load ptr, ptr %l117, !tbaa !29
  %t181 = load { i64, ptr }, ptr %l121, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t179, ptr %t180, { i64, ptr } %t181)
  br label %bb41
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i64 -1, ptr %rv
  br label %ret
bb42:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l125, !tbaa !29
  %t184 = load ptr, ptr %l125, !tbaa !29
  %t185 = getelementptr %"compiler/eval:Machine", ptr %t184, i32 0, i32 8
  %t186 = load i64, ptr %t185, !tbaa !24
  %t188 = add i64 %t186, 1
  %t190 = load ptr, ptr %l125, !tbaa !29
  %t191 = getelementptr %"compiler/eval:Machine", ptr %t190, i32 0, i32 8
  store i64 %t188, ptr %t191, !tbaa !24
  br label %bb43
bb43:
  %t192 = load ptr, ptr %l0, !tbaa !29
  %t194 = getelementptr %"compiler/eval:Machine", ptr %t192, i32 0, i32 23
  %t195 = load { i64, ptr }, ptr %t194, !tbaa !27
  store { i64, ptr } %t195, ptr %l129, !tbaa !27
  %t196 = load i64, ptr %l1, !tbaa !24
  %t198 = getelementptr { i64, ptr }, ptr %l129, i32 0, i32 1
  %t199 = load ptr, ptr %t198, !tbaa !27
  %t200 = getelementptr %"compiler/eval:cfn", ptr %t199, i64 %t196
  %t201 = getelementptr %"compiler/eval:cfn", ptr %t200, i32 0, i32 16
  %t202 = load i1, ptr %t201, !tbaa !21
  br i1 %t202, label %bb44, label %bb45
bb44:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t204, i32 0, i32 20
  store i1 true, ptr %t206, !tbaa !21
  br label %bb46
bb45:
  br label %bb46
bb46:
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t207, i32 0, i32 23
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  store { i64, ptr } %t210, ptr %l134, !tbaa !27
  %t211 = load i64, ptr %l1, !tbaa !24
  %t213 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t214 = load ptr, ptr %t213, !tbaa !27
  %t215 = getelementptr %"compiler/eval:cfn", ptr %t214, i64 %t211
  %t216 = getelementptr %"compiler/eval:cfn", ptr %t215, i32 0, i32 1
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  store { i64, ptr } %t217, ptr %l10, !tbaa !27
  %t219 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t221 = extractvalue { i64, ptr } %t219, 0
  store i64 %t221, ptr %l11, !tbaa !24
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/eval:Machine", ptr %t223, i32 0, i32 23
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l140, !tbaa !27
  %t227 = load i64, ptr %l1, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr %"compiler/eval:cfn", ptr %t230, i64 %t227
  %t232 = getelementptr %"compiler/eval:cfn", ptr %t231, i32 0, i32 2
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  store i64 %t235, ptr %l12, !tbaa !24
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/eval:Machine", ptr %t237, i32 0, i32 23
  %t240 = load { i64, ptr }, ptr %t239, !tbaa !27
  store { i64, ptr } %t240, ptr %l145, !tbaa !27
  %t241 = load i64, ptr %l1, !tbaa !24
  %t243 = getelementptr { i64, ptr }, ptr %l145, i32 0, i32 1
  %t244 = load ptr, ptr %t243, !tbaa !27
  %t245 = getelementptr %"compiler/eval:cfn", ptr %t244, i64 %t241
  %t246 = getelementptr %"compiler/eval:cfn", ptr %t245, i32 0, i32 15
  %t247 = load i64, ptr %t246, !tbaa !24
  store i64 %t247, ptr %l13, !tbaa !24
  call void @compiler_2feval_3aframe_2ector(ptr %t249, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l148, ptr %t249, i64 136, i1 false)
  br label %bb47
bb47:
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %l148, i64 136, i1 false)
  %t250 = load i64, ptr %l1, !tbaa !24
  %t258 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 0
  store i64 %t250, ptr %t258, !tbaa !24
  %t261 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 7
  store i64 %a2, ptr %t261, !tbaa !24
  %t264 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 8
  store i64 %a3, ptr %t264, !tbaa !24
  %t265 = load ptr, ptr %l0, !tbaa !29
  %t267 = getelementptr %"compiler/eval:Machine", ptr %t265, i32 0, i32 58
  %t268 = load i64, ptr %t267, !tbaa !24
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/eval:Machine", ptr %t270, i32 0, i32 58
  %t273 = load i64, ptr %t272, !tbaa !24
  %t274 = load i64, ptr %l11, !tbaa !24
  %t277 = add i64 %t273, %t274
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/eval:Machine", ptr %t279, i32 0, i32 58
  %t282 = load i64, ptr %t281, !tbaa !24
  %t283 = load i64, ptr %l11, !tbaa !24
  %t286 = add i64 %t282, %t283
  %t287 = load i64, ptr %l12, !tbaa !24
  %t290 = add i64 %t286, %t287
  %t294 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 3
  store i64 %t268, ptr %t294, !tbaa !24
  %t297 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 4
  store i64 %t277, ptr %t297, !tbaa !24
  %t300 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 5
  store i64 %t290, ptr %t300, !tbaa !24
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/eval:Machine", ptr %t301, i32 0, i32 59
  %t305 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t303)
  store i64 %t305, ptr %l172
  br label %bb48
bb48:
  %t306 = load i64, ptr %l172, !tbaa !24
  %t307 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 9
  store i64 %t306, ptr %t307, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i64, ptr @G_2ecompiler_2feval_2esStore, !tbaa !24
  %t312 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t308, i64 %t309)
  store i64 %t312, ptr %l175
  br label %bb49
bb49:
  %t313 = load i64, ptr %l175, !tbaa !24
  %t314 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 6
  store i64 %t313, ptr %t314, !tbaa !24
  %t315 = load ptr, ptr %l0, !tbaa !29
  %t317 = getelementptr %"compiler/eval:Machine", ptr %t315, i32 0, i32 58
  %t318 = load i64, ptr %t317, !tbaa !24
  %t319 = load i64, ptr %l11, !tbaa !24
  %t322 = add i64 %t318, %t319
  %t323 = load i64, ptr %l12, !tbaa !24
  %t326 = add i64 %t322, %t323
  %t327 = load i64, ptr %l13, !tbaa !24
  %t330 = add i64 %t326, %t327
  store i64 %t330, ptr %l21, !tbaa !24
  %t332 = load i64, ptr %l21, !tbaa !24
  %t333 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/eval:Machine", ptr %t333, i32 0, i32 57
  %t336 = load { i64, ptr }, ptr %t335, !tbaa !27
  %t338 = extractvalue { i64, ptr } %t336, 0
  %t341 = icmp sgt i64 %t332, %t338
  br i1 %t341, label %bb50, label %bb51
bb50:
  %t343 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/eval:Machine", ptr %t343, i32 0, i32 57
  %t346 = load { i64, ptr }, ptr %t345, !tbaa !27
  store { i64, ptr } %t346, ptr %l22, !tbaa !27
  %t348 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t350 = extractvalue { i64, ptr } %t348, 0
  store i64 %t350, ptr %l23, !tbaa !24
  br label %bb52
bb51:
  br label %bb78
bb52:
  %t352 = load i64, ptr %l23, !tbaa !24
  %t353 = load i64, ptr %l21, !tbaa !24
  %t356 = icmp slt i64 %t352, %t353
  %t358 = xor i1 %t356, true
  br i1 %t358, label %bb53, label %bb54
bb53:
  br label %bb57
bb54:
  br label %bb55
bb55:
  %t360 = load i64, ptr %l23, !tbaa !24
  %t362 = mul i64 %t360, 2
  store i64 %t362, ptr %l23, !tbaa !24
  br label %bb56
bb56:
  br label %bb52
bb57:
  %t364 = load ptr, ptr %l0, !tbaa !29
  store ptr %t364, ptr %l199, !tbaa !29
  %t365 = ptrtoint ptr %v0 to i64
  store i64 %t365, ptr %l200, !tbaa !24
  %t366 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
  br i1 %t366, label %bb58, label %bb59
bb58:
  %t368 = call ptr @__olang_region_make(ptr %v0)
  %t369 = ptrtoint ptr %t368 to i64
  store i64 %t369, ptr %l200, !tbaa !24
  br label %bb59
bb59:
  %t370 = load i64, ptr %l23, !tbaa !24
  store i64 %t370, ptr %l202, !tbaa !24
  %t371 = load i64, ptr %l202, !tbaa !24
  %t372 = icmp sge i64 %t371, 0
  br i1 %t372, label %bb60, label %bb61
bb60:
  %t374 = load i64, ptr %l202, !tbaa !24
  %t375 = icmp sle i64 %t374, 1152921504606846975
  br i1 %t375, label %bb62, label %bb63
bb61:
  call void @__olang_check_failed(ptr @olang_loc_d67750d3ea89b5a6_4cf132db9678b04a)
  unreachable
bb62:
  %t377 = load i64, ptr %l202, !tbaa !24
  %t378 = mul i64 %t377, 8
  %t379 = load i64, ptr %l200
  %t380 = inttoptr i64 %t379 to ptr
  %t381 = call ptr @__olang_scope_alloc_zeroed(ptr %t380, i64 %t378)
  %t382 = insertvalue { i64, ptr } undef, i64 %t377, 0
  %t383 = insertvalue { i64, ptr } %t382, ptr %t381, 1
  %t384 = load ptr, ptr %l199, !tbaa !29
  %t385 = getelementptr %"compiler/eval:Machine", ptr %t384, i32 0, i32 57
  %t386 = load { i64, ptr }, ptr %t385, !tbaa !27
  store { i64, ptr } %t386, ptr %l206, !tbaa !27
  %t388 = load ptr, ptr %l199, !tbaa !29
  %t389 = getelementptr %"compiler/eval:Machine", ptr %t388, i32 0, i32 57
  store { i64, ptr } %t383, ptr %t389, !tbaa !27
  %t390 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
  br i1 %t390, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_d67750d3ea89b5a6_4cf132db9678b04a)
  unreachable
bb64:
  %t392 = load { i64, ptr }, ptr %l206
  %t393 = extractvalue { i64, ptr } %t392, 1
  call void @__olang_region_release(ptr %t393)
  store { i64, ptr } zeroinitializer, ptr %l206
  br label %bb65
bb65:
  store i64 0, ptr %l24, !tbaa !24
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/eval:Machine", ptr %t394, i32 0, i32 58
  %t397 = load i64, ptr %t396, !tbaa !24
  store i64 %t397, ptr %l25, !tbaa !24
  store i64 1, ptr %l26, !tbaa !24
  %t399 = load i64, ptr %l25, !tbaa !24
  %t400 = load i64, ptr %l24, !tbaa !24
  %t403 = icmp sgt i64 %t399, %t400
  br i1 %t403, label %bb66, label %bb67
bb66:
  %t405 = load i64, ptr %l26, !tbaa !24
  %t407 = icmp sgt i64 %t405, 0
  br i1 %t407, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l213, !tbaa !24
  br label %bb71
bb68:
  %t409 = load i64, ptr %l25, !tbaa !24
  %t410 = load i64, ptr %l24, !tbaa !24
  %t413 = sub i64 %t409, %t410
  %t414 = load i64, ptr %l26, !tbaa !24
  %t417 = add i64 %t413, %t414
  %t419 = sub i64 %t417, 1
  %t420 = load i64, ptr %l26, !tbaa !24
  %t423 = sdiv i64 %t419, %t420
  store i64 %t423, ptr %l216, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l216, !tbaa !24
  br label %bb70
bb70:
  %t425 = load i64, ptr %l216, !tbaa !24
  store i64 %t425, ptr %l213, !tbaa !24
  br label %bb71
bb71:
  %t426 = load i64, ptr %l213, !tbaa !24
  store i64 %t426, ptr %l27, !tbaa !24
  store i64 0, ptr %l28, !tbaa !24
  br label %bb72
bb72:
  %t427 = load i64, ptr %l28, !tbaa !24
  %t428 = load i64, ptr %l27, !tbaa !24
  %t431 = icmp slt i64 %t427, %t428
  %t433 = xor i1 %t431, true
  br i1 %t433, label %bb73, label %bb74
bb73:
  br label %bb77
bb74:
  br label %bb75
bb75:
  %t435 = load i64, ptr %l24, !tbaa !24
  %t436 = load i64, ptr %l28, !tbaa !24
  %t437 = load i64, ptr %l26, !tbaa !24
  %t440 = mul i64 %t436, %t437
  %t443 = add i64 %t435, %t440
  store i64 %t443, ptr %l29, !tbaa !24
  %t445 = load ptr, ptr %l0, !tbaa !29
  %t447 = getelementptr %"compiler/eval:Machine", ptr %t445, i32 0, i32 57
  %t448 = load { i64, ptr }, ptr %t447, !tbaa !27
  store { i64, ptr } %t448, ptr %l235, !tbaa !27
  %t449 = load i64, ptr %l29, !tbaa !24
  %t450 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t450, ptr %l237, !tbaa !27
  %t451 = load i64, ptr %l29, !tbaa !24
  %t453 = getelementptr { i64, ptr }, ptr %l237, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr i64, ptr %t454, i64 %t451
  %t456 = load i64, ptr %t455, !tbaa !34
  %t459 = getelementptr { i64, ptr }, ptr %l235, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = getelementptr i64, ptr %t460, i64 %t449
  store i64 %t456, ptr %t461, !tbaa !34
  br label %bb76
bb76:
  %t462 = load i64, ptr %l28, !tbaa !24
  %t464 = add i64 %t462, 1
  store i64 %t464, ptr %l28, !tbaa !24
  br label %bb72
bb77:
  br label %bb78
bb78:
  store i64 0, ptr %l30, !tbaa !24
  %t466 = load i64, ptr %l11, !tbaa !24
  store i64 %t466, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t468 = load i64, ptr %l31, !tbaa !24
  %t469 = load i64, ptr %l30, !tbaa !24
  %t472 = icmp sgt i64 %t468, %t469
  br i1 %t472, label %bb79, label %bb80
bb79:
  %t474 = load i64, ptr %l32, !tbaa !24
  %t476 = icmp sgt i64 %t474, 0
  br i1 %t476, label %bb81, label %bb82
bb80:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb84
bb81:
  %t478 = load i64, ptr %l31, !tbaa !24
  %t479 = load i64, ptr %l30, !tbaa !24
  %t482 = sub i64 %t478, %t479
  %t483 = load i64, ptr %l32, !tbaa !24
  %t486 = add i64 %t482, %t483
  %t488 = sub i64 %t486, 1
  %t489 = load i64, ptr %l32, !tbaa !24
  %t492 = sdiv i64 %t488, %t489
  store i64 %t492, ptr %l249, !tbaa !24
  br label %bb83
bb82:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb83
bb83:
  %t494 = load i64, ptr %l249, !tbaa !24
  store i64 %t494, ptr %l246, !tbaa !24
  br label %bb84
bb84:
  %t495 = load i64, ptr %l246, !tbaa !24
  store i64 %t495, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb85
bb85:
  %t496 = load i64, ptr %l34, !tbaa !24
  %t497 = load i64, ptr %l33, !tbaa !24
  %t500 = icmp slt i64 %t496, %t497
  %t502 = xor i1 %t500, true
  br i1 %t502, label %bb86, label %bb87
bb86:
  br label %bb95
bb87:
  br label %bb88
bb88:
  %t504 = load i64, ptr %l30, !tbaa !24
  %t505 = load i64, ptr %l34, !tbaa !24
  %t506 = load i64, ptr %l32, !tbaa !24
  %t509 = mul i64 %t505, %t506
  %t512 = add i64 %t504, %t509
  store i64 %t512, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  %t514 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t514, ptr %l267, !tbaa !27
  %t515 = load i64, ptr %l35, !tbaa !24
  %t517 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t518 = load ptr, ptr %t517, !tbaa !27
  %t519 = getelementptr %"compiler/mir:Local", ptr %t518, i64 %t515
  %t520 = getelementptr %"compiler/mir:Local", ptr %t519, i32 0, i32 4
  %t521 = load { i64, [1 x i64] }, ptr %t520
  %t523 = extractvalue { i64, [1 x i64] } %t521, 0
  %t524 = icmp eq i64 %t523, 3
  br i1 %t524, label %bb89, label %bb90
bb89:
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l271, !tbaa !29
  %t527 = load ptr, ptr %l0, !tbaa !29
  %t528 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t528, ptr %l273, !tbaa !27
  %t529 = load i64, ptr %l35, !tbaa !24
  %t531 = getelementptr { i64, ptr }, ptr %l273, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !27
  %t533 = getelementptr %"compiler/mir:Local", ptr %t532, i64 %t529
  %t534 = getelementptr %"compiler/mir:Local", ptr %t533, i32 0, i32 2
  %t535 = load i32, ptr %t534, !tbaa !23
  %t538 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t527, i32 %t535)
  store i64 %t538, ptr %l276
  br label %bb91
bb90:
  br label %bb93
bb91:
  %t539 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t540 = getelementptr %"compiler/eval:frame", ptr %l14, i32 0, i32 6
  %t541 = load i64, ptr %t540, !tbaa !24
  %t542 = load ptr, ptr %l271, !tbaa !29
  %t543 = load i64, ptr %l276, !tbaa !24
  %t546 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t542, i64 %t543, i64 %t539, i64 %t541)
  store %"compiler/eval:Ptr" %t546, ptr %l279
  br label %bb92
bb92:
  %t547 = getelementptr %"compiler/eval:Ptr", ptr %l279, i32 0, i32 0
  %t548 = load i64, ptr %t547, !tbaa !24
  store i64 %t548, ptr %l36, !tbaa !24
  br label %bb93
bb93:
  %t550 = load ptr, ptr %l0, !tbaa !29
  %t552 = getelementptr %"compiler/eval:Machine", ptr %t550, i32 0, i32 57
  %t553 = load { i64, ptr }, ptr %t552, !tbaa !27
  store { i64, ptr } %t553, ptr %l282, !tbaa !27
  %t554 = load ptr, ptr %l0, !tbaa !29
  %t556 = getelementptr %"compiler/eval:Machine", ptr %t554, i32 0, i32 58
  %t557 = load i64, ptr %t556, !tbaa !24
  %t558 = load i64, ptr %l35, !tbaa !24
  %t561 = add i64 %t557, %t558
  %t562 = load i64, ptr %l36, !tbaa !24
  %t565 = getelementptr { i64, ptr }, ptr %l282, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr i64, ptr %t566, i64 %t561
  store i64 %t562, ptr %t567, !tbaa !34
  br label %bb94
bb94:
  %t568 = load i64, ptr %l34, !tbaa !24
  %t570 = add i64 %t568, 1
  store i64 %t570, ptr %l34, !tbaa !24
  br label %bb85
bb95:
  %t572 = load i64, ptr %l11, !tbaa !24
  store i64 %t572, ptr %l37, !tbaa !24
  %t574 = load i64, ptr %l21, !tbaa !24
  %t575 = load ptr, ptr %l0, !tbaa !29
  %t577 = getelementptr %"compiler/eval:Machine", ptr %t575, i32 0, i32 58
  %t578 = load i64, ptr %t577, !tbaa !24
  %t581 = sub i64 %t574, %t578
  store i64 %t581, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t583 = load i64, ptr %l38, !tbaa !24
  %t584 = load i64, ptr %l37, !tbaa !24
  %t587 = icmp sgt i64 %t583, %t584
  br i1 %t587, label %bb96, label %bb97
bb96:
  %t589 = load i64, ptr %l39, !tbaa !24
  %t591 = icmp sgt i64 %t589, 0
  br i1 %t591, label %bb98, label %bb99
bb97:
  store i64 0, ptr %l298, !tbaa !24
  br label %bb101
bb98:
  %t593 = load i64, ptr %l38, !tbaa !24
  %t594 = load i64, ptr %l37, !tbaa !24
  %t597 = sub i64 %t593, %t594
  %t598 = load i64, ptr %l39, !tbaa !24
  %t601 = add i64 %t597, %t598
  %t603 = sub i64 %t601, 1
  %t604 = load i64, ptr %l39, !tbaa !24
  %t607 = sdiv i64 %t603, %t604
  store i64 %t607, ptr %l301, !tbaa !24
  br label %bb100
bb99:
  store i64 0, ptr %l301, !tbaa !24
  br label %bb100
bb100:
  %t609 = load i64, ptr %l301, !tbaa !24
  store i64 %t609, ptr %l298, !tbaa !24
  br label %bb101
bb101:
  %t610 = load i64, ptr %l298, !tbaa !24
  store i64 %t610, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb102
bb102:
  %t611 = load i64, ptr %l41, !tbaa !24
  %t612 = load i64, ptr %l40, !tbaa !24
  %t615 = icmp slt i64 %t611, %t612
  %t617 = xor i1 %t615, true
  br i1 %t617, label %bb103, label %bb104
bb103:
  br label %bb107
bb104:
  br label %bb105
bb105:
  %t619 = load i64, ptr %l37, !tbaa !24
  %t620 = load i64, ptr %l41, !tbaa !24
  %t621 = load i64, ptr %l39, !tbaa !24
  %t624 = mul i64 %t620, %t621
  %t627 = add i64 %t619, %t624
  %t629 = load ptr, ptr %l0, !tbaa !29
  %t631 = getelementptr %"compiler/eval:Machine", ptr %t629, i32 0, i32 57
  %t632 = load { i64, ptr }, ptr %t631, !tbaa !27
  store { i64, ptr } %t632, ptr %l320, !tbaa !27
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t635 = getelementptr %"compiler/eval:Machine", ptr %t633, i32 0, i32 58
  %t636 = load i64, ptr %t635, !tbaa !24
  %t640 = add i64 %t636, %t627
  %t642 = getelementptr { i64, ptr }, ptr %l320, i32 0, i32 1
  %t643 = load ptr, ptr %t642, !tbaa !27
  %t644 = getelementptr i64, ptr %t643, i64 %t640
  store i64 0, ptr %t644, !tbaa !34
  br label %bb106
bb106:
  %t645 = load i64, ptr %l41, !tbaa !24
  %t647 = add i64 %t645, 1
  store i64 %t647, ptr %l41, !tbaa !24
  br label %bb102
bb107:
  %t649 = load ptr, ptr %l0, !tbaa !29
  %t650 = load i64, ptr %l21, !tbaa !24
  %t653 = getelementptr %"compiler/eval:Machine", ptr %t649, i32 0, i32 58
  store i64 %t650, ptr %t653, !tbaa !24
  %t654 = load ptr, ptr %l0, !tbaa !29
  %t656 = getelementptr %"compiler/eval:Machine", ptr %t654, i32 0, i32 56
  %t657 = load i64, ptr %t656, !tbaa !24
  %t658 = load ptr, ptr %l0, !tbaa !29
  %t660 = getelementptr %"compiler/eval:Machine", ptr %t658, i32 0, i32 55
  %t661 = load { i64, ptr }, ptr %t660, !tbaa !27
  %t663 = extractvalue { i64, ptr } %t661, 0
  %t666 = icmp sge i64 %t657, %t663
  br i1 %t666, label %bb108, label %bb109
bb108:
  %t668 = load ptr, ptr %l0, !tbaa !29
  %t670 = getelementptr %"compiler/eval:Machine", ptr %t668, i32 0, i32 55
  %t671 = load { i64, ptr }, ptr %t670, !tbaa !27
  store { i64, ptr } %t671, ptr %l43, !tbaa !27
  %t673 = load ptr, ptr %l0, !tbaa !29
  store ptr %t673, ptr %l337, !tbaa !29
  %t674 = ptrtoint ptr %v0 to i64
  store i64 %t674, ptr %l338, !tbaa !24
  %t675 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
  br i1 %t675, label %bb110, label %bb111
bb109:
  br label %bb133
bb110:
  %t677 = call ptr @__olang_region_make(ptr %v0)
  %t678 = ptrtoint ptr %t677 to i64
  store i64 %t678, ptr %l338, !tbaa !24
  br label %bb111
bb111:
  %t679 = load { i64, ptr }, ptr %l43, !tbaa !27
  %t681 = extractvalue { i64, ptr } %t679, 0
  %t683 = mul i64 2, %t681
  store i64 %t683, ptr %l342, !tbaa !24
  call void @llvm.memset.p0.i64(ptr %l343, i8 0, i64 136, i1 false)
  %t684 = load i64, ptr %l342, !tbaa !24
  %t685 = icmp sgt i64 %t684, 0
  br i1 %t685, label %bb112, label %bb113
bb112:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %t687)
  call void @llvm.memmove.p0.p0.i64(ptr %l345, ptr %t687, i64 136, i1 false)
  br label %bb114
bb113:
  %t688 = load i64, ptr %l342, !tbaa !24
  %t689 = icmp sge i64 %t688, 0
  br i1 %t689, label %bb115, label %bb116
bb114:
  call void @llvm.memmove.p0.p0.i64(ptr %l343, ptr %l345, i64 136, i1 false)
  br label %bb113
bb115:
  %t691 = load i64, ptr %l342, !tbaa !24
  %t692 = icmp sle i64 %t691, 67818912035696880
  br i1 %t692, label %bb117, label %bb118
bb116:
  call void @__olang_check_failed(ptr @olang_loc_84b7ba4c2a706fc5_7fbf5d3432269f09)
  unreachable
bb117:
  %t694 = load i64, ptr %l342, !tbaa !24
  %t695 = mul i64 %t694, 136
  %t696 = load i64, ptr %l338
  %t697 = inttoptr i64 %t696 to ptr
  %t698 = call ptr @__olang_scope_alloc(ptr %t697, i64 %t695)
  store i64 0, ptr %t699
  br label %fill.700
fill.700:
  %t703 = load i64, ptr %t699
  %t704 = icmp slt i64 %t703, %t694
  br i1 %t704, label %fillb.701, label %filld.702
fillb.701:
  %t705 = getelementptr %"compiler/eval:frame", ptr %t698, i64 %t703
  call void @llvm.memmove.p0.p0.i64(ptr %t705, ptr %l343, i64 136, i1 false)
  %t706 = add i64 %t703, 1
  store i64 %t706, ptr %t699
  br label %fill.700
filld.702:
  %t707 = insertvalue { i64, ptr } undef, i64 %t694, 0
  %t708 = insertvalue { i64, ptr } %t707, ptr %t698, 1
  %t709 = load ptr, ptr %l337, !tbaa !29
  %t710 = getelementptr %"compiler/eval:Machine", ptr %t709, i32 0, i32 55
  %t711 = load { i64, ptr }, ptr %t710, !tbaa !27
  store { i64, ptr } %t711, ptr %l349, !tbaa !27
  %t713 = load ptr, ptr %l337, !tbaa !29
  %t714 = getelementptr %"compiler/eval:Machine", ptr %t713, i32 0, i32 55
  store { i64, ptr } %t708, ptr %t714, !tbaa !27
  %t715 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
  br i1 %t715, label %bb119, label %bb120
bb118:
  call void @__olang_check_failed(ptr @olang_loc_84b7ba4c2a706fc5_7fbf5d3432269f09)
  unreachable
bb119:
  %t717 = load { i64, ptr }, ptr %l349
  %t718 = extractvalue { i64, ptr } %t717, 1
  call void @__olang_region_release(ptr %t718)
  store { i64, ptr } zeroinitializer, ptr %l349
  br label %bb120
bb120:
  store i64 0, ptr %l44, !tbaa !24
  %t719 = load ptr, ptr %l0, !tbaa !29
  %t721 = getelementptr %"compiler/eval:Machine", ptr %t719, i32 0, i32 56
  %t722 = load i64, ptr %t721, !tbaa !24
  store i64 %t722, ptr %l45, !tbaa !24
  store i64 1, ptr %l46, !tbaa !24
  %t724 = load i64, ptr %l45, !tbaa !24
  %t725 = load i64, ptr %l44, !tbaa !24
  %t728 = icmp sgt i64 %t724, %t725
  br i1 %t728, label %bb121, label %bb122
bb121:
  %t730 = load i64, ptr %l46, !tbaa !24
  %t732 = icmp sgt i64 %t730, 0
  br i1 %t732, label %bb123, label %bb124
bb122:
  store i64 0, ptr %l356, !tbaa !24
  br label %bb126
bb123:
  %t734 = load i64, ptr %l45, !tbaa !24
  %t735 = load i64, ptr %l44, !tbaa !24
  %t738 = sub i64 %t734, %t735
  %t739 = load i64, ptr %l46, !tbaa !24
  %t742 = add i64 %t738, %t739
  %t744 = sub i64 %t742, 1
  %t745 = load i64, ptr %l46, !tbaa !24
  %t748 = sdiv i64 %t744, %t745
  store i64 %t748, ptr %l359, !tbaa !24
  br label %bb125
bb124:
  store i64 0, ptr %l359, !tbaa !24
  br label %bb125
bb125:
  %t750 = load i64, ptr %l359, !tbaa !24
  store i64 %t750, ptr %l356, !tbaa !24
  br label %bb126
bb126:
  %t751 = load i64, ptr %l356, !tbaa !24
  store i64 %t751, ptr %l47, !tbaa !24
  store i64 0, ptr %l48, !tbaa !24
  br label %bb127
bb127:
  %t752 = load i64, ptr %l48, !tbaa !24
  %t753 = load i64, ptr %l47, !tbaa !24
  %t756 = icmp slt i64 %t752, %t753
  %t758 = xor i1 %t756, true
  br i1 %t758, label %bb128, label %bb129
bb128:
  br label %bb132
bb129:
  br label %bb130
bb130:
  %t760 = load i64, ptr %l44, !tbaa !24
  %t761 = load i64, ptr %l48, !tbaa !24
  %t762 = load i64, ptr %l46, !tbaa !24
  %t765 = mul i64 %t761, %t762
  %t768 = add i64 %t760, %t765
  store i64 %t768, ptr %l49, !tbaa !24
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t772 = getelementptr %"compiler/eval:Machine", ptr %t770, i32 0, i32 55
  %t773 = load { i64, ptr }, ptr %t772, !tbaa !27
  store { i64, ptr } %t773, ptr %l378, !tbaa !27
  %t774 = load i64, ptr %l49, !tbaa !24
  %t775 = load { i64, ptr }, ptr %l43, !tbaa !27
  store { i64, ptr } %t775, ptr %l380, !tbaa !27
  %t776 = load i64, ptr %l49, !tbaa !24
  %t778 = getelementptr { i64, ptr }, ptr %l380, i32 0, i32 1
  %t779 = load ptr, ptr %t778, !tbaa !27
  %t780 = getelementptr %"compiler/eval:frame", ptr %t779, i64 %t776
  call void @llvm.memmove.p0.p0.i64(ptr %l382, ptr %t780, i64 136, i1 false)
  %t782 = getelementptr { i64, ptr }, ptr %l378, i32 0, i32 1
  %t783 = load ptr, ptr %t782, !tbaa !27
  %t784 = getelementptr %"compiler/eval:frame", ptr %t783, i64 %t774
  call void @llvm.memmove.p0.p0.i64(ptr %t784, ptr %l382, i64 136, i1 false)
  br label %bb131
bb131:
  %t785 = load i64, ptr %l48, !tbaa !24
  %t787 = add i64 %t785, 1
  store i64 %t787, ptr %l48, !tbaa !24
  br label %bb127
bb132:
  br label %bb133
bb133:
  %t789 = load ptr, ptr %l0, !tbaa !29
  %t791 = getelementptr %"compiler/eval:Machine", ptr %t789, i32 0, i32 55
  %t792 = load { i64, ptr }, ptr %t791, !tbaa !27
  store { i64, ptr } %t792, ptr %l386, !tbaa !27
  %t793 = load ptr, ptr %l0, !tbaa !29
  %t795 = getelementptr %"compiler/eval:Machine", ptr %t793, i32 0, i32 56
  %t796 = load i64, ptr %t795, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l389, ptr %l14, i64 136, i1 false)
  %t798 = getelementptr { i64, ptr }, ptr %l386, i32 0, i32 1
  %t799 = load ptr, ptr %t798, !tbaa !27
  %t800 = getelementptr %"compiler/eval:frame", ptr %t799, i64 %t796
  call void @llvm.memmove.p0.p0.i64(ptr %t800, ptr %l389, i64 136, i1 false)
  %t801 = load ptr, ptr %l0, !tbaa !29
  store ptr %t801, ptr %l390, !tbaa !29
  %t802 = load ptr, ptr %l390, !tbaa !29
  %t803 = getelementptr %"compiler/eval:Machine", ptr %t802, i32 0, i32 56
  %t804 = load i64, ptr %t803, !tbaa !24
  %t806 = add i64 %t804, 1
  %t808 = load ptr, ptr %l390, !tbaa !29
  %t809 = getelementptr %"compiler/eval:Machine", ptr %t808, i32 0, i32 56
  store i64 %t806, ptr %t809, !tbaa !24
  %t810 = load ptr, ptr %l0, !tbaa !29
  %t812 = getelementptr %"compiler/eval:Machine", ptr %t810, i32 0, i32 56
  %t813 = load i64, ptr %t812, !tbaa !24
  %t815 = sub i64 %t813, 1
  call void @__olang_scope_close(ptr %s0)
  store i64 %t815, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputData(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, i64 %a5, %"compiler/source:Span" %a6) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca { i64, [1 x i64] }
  %l9 = alloca i64
  %l10 = alloca { %"compiler/eval:Ptr", i64 }
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca i64
  %l16 = alloca ptr
  %l21 = alloca { i64, [1 x i64] }
  %l25 = alloca ptr
  %l26 = alloca %"compiler/eval:Ptr"
  %l29 = alloca i64
  %l37 = alloca { %"compiler/eval:Ptr", i64 }
  %l44 = alloca i64
  %l51 = alloca ptr
  %l55 = alloca %"compiler/eval:Ptr"
  %l66 = alloca ptr
  %l67 = alloca %"compiler/eval:Ptr"
  %l68 = alloca %"compiler/eval:Ptr"
  %l71 = alloca i64
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %a1)
  store ptr %t5, ptr %l16
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l16, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l7, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Fn", ptr %t7, i32 0, i32 19
  %t10 = load i32, ptr %l4, !tbaa !23
  %t12 = sext i32 %t10 to i64
  %t15 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %t9, i64 %t12)
  store { i64, [1 x i64] } %t15, ptr %l21
  br label %bb2
bb2:
  %t16 = load { i64, [1 x i64] }, ptr %l21
  store { i64, [1 x i64] } %t16, ptr %l8
  %t17 = load { i64, [1 x i64] }, ptr %l8
  %t19 = extractvalue { i64, [1 x i64] } %t17, 0
  %t20 = icmp eq i64 %t19, 0
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = getelementptr { i64, [1 x i64] }, ptr %l8, i32 0, i32 1
  %t23 = getelementptr { i64 }, ptr %t22, i32 0, i32 0
  %t24 = load i64, ptr %t23
  store i64 %t24, ptr %l9, !tbaa !24
  br label %bb5
bb4:
  br label %bb8
bb5:
  %t26 = load ptr, ptr %l0, !tbaa !29
  store ptr %t26, ptr %l25, !tbaa !29
  %t27 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t27, ptr %l26
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l29
  br label %bb6
bb6:
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load ptr, ptr %l25, !tbaa !29
  %t35 = load %"compiler/eval:Ptr", ptr %l26
  %t36 = load i64, ptr %l29, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t34, %"compiler/eval:Ptr" %t35, i64 %t36, i64 %t33)
  br label %bb7
bb7:
  br label %ret
bb8:
  br i1 true, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_12565802a2336670_a75db38aedd0e3fc)
  unreachable
bb13:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load ptr, ptr %l7, !tbaa !29
  %t40 = load i32, ptr %l3, !tbaa !23
  %t41 = load i32, ptr %l4, !tbaa !23
  %t50 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2edataFor(ptr %v0, ptr %v0, ptr %t38, ptr %t39, i32 %t40, i32 %t41, i64 %a5, %"compiler/source:Span" %a6)
  store { %"compiler/eval:Ptr", i64 } %t50, ptr %l37
  br label %bb14
bb14:
  %t51 = load { %"compiler/eval:Ptr", i64 }, ptr %l37
  store { %"compiler/eval:Ptr", i64 } %t51, ptr %l10
  %t52 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 0
  %t53 = load %"compiler/eval:Ptr", ptr %t52
  store %"compiler/eval:Ptr" %t53, ptr %l11
  %t55 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 1
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l12, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 19
  %t61 = load i1, ptr %t60, !tbaa !21
  br i1 %t61, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l3, !tbaa !23
  %t67 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t63, i32 %t64)
  store i64 %t67, ptr %l44
  br label %bb18
bb18:
  %t68 = load i64, ptr %l44, !tbaa !24
  store i64 %t68, ptr %l13, !tbaa !24
  %t69 = load i64, ptr %l13, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t73 = icmp eq i64 %t69, %t70
  br i1 %t73, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb25
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t76 = load %"compiler/eval:Ptr", ptr %l2
  %t77 = load i64, ptr %l12, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t75, %"compiler/eval:Ptr" %t76, i64 8, i64 %t77)
  br label %bb22
bb22:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l51, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = add i64 %t85, 8
  %t90 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t83, i64 %t87)
  store %"compiler/eval:Ptr" %t90, ptr %l55
  br label %bb23
bb23:
  %t91 = load %"compiler/eval:Ptr", ptr %l11
  %t92 = load ptr, ptr %l51, !tbaa !29
  %t93 = load %"compiler/eval:Ptr", ptr %l55
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t92, %"compiler/eval:Ptr" %t93, %"compiler/eval:Ptr" %t91)
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s4)
  br label %bb42
bb25:
  %t95 = load i64, ptr %l13, !tbaa !24
  %t96 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t101 = load ptr, ptr %l0, !tbaa !29
  %t102 = load %"compiler/eval:Ptr", ptr %l2
  %t103 = load %"compiler/eval:Ptr", ptr %l11
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t101, %"compiler/eval:Ptr" %t102, %"compiler/eval:Ptr" %t103)
  br label %bb29
bb29:
  br label %bb42
bb30:
  %t107 = load i64, ptr %l13, !tbaa !24
  %t108 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t111 = icmp eq i64 %t107, %t108
  br i1 %t111, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb36
bb33:
  %t113 = load ptr, ptr %l0, !tbaa !29
  store ptr %t113, ptr %l66, !tbaa !29
  %t114 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t114, ptr %l67
  %t115 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t115, ptr %l68
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i32, ptr %l3, !tbaa !23
  %t120 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t116, i32 %t117)
  store i64 %t120, ptr %l71
  br label %bb34
bb34:
  %t121 = load ptr, ptr %l66, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l67
  %t123 = load %"compiler/eval:Ptr", ptr %l68
  %t124 = load i64, ptr %l71, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, %"compiler/eval:Ptr" %t123, i64 %t124)
  br label %bb35
bb35:
  br label %bb42
bb36:
  br i1 true, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t126 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t127 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t127, ptr %t125, { i64, ptr } %t126)
  br label %bb40
bb40:
  br label %bb42
bb41:
  call void @__olang_check_failed(ptr @olang_loc_1069159e4cdf0a01_3c7ea434b50ec3ad)
  unreachable
bb42:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/mir:Range" %a2) #0 {
entry:
  %l2 = alloca %"compiler/mir:Range"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca %"compiler/mir:Lvalue"
  %l15 = alloca i32
  %l18 = alloca i32
  %l43 = alloca { i64, [4 x i64] }
  %l49 = alloca i1
  %rv = alloca i1
  store %"compiler/mir:Range" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l3, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l4, !tbaa !23
  store i32 1, ptr %l5, !tbaa !23
  %t4 = load i32, ptr %l4, !tbaa !23
  %t5 = load i32, ptr %l3, !tbaa !23
  %t8 = icmp sgt i32 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l5, !tbaa !23
  %t12 = icmp sgt i32 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb6
bb3:
  %t14 = load i32, ptr %l4, !tbaa !23
  %t15 = load i32, ptr %l3, !tbaa !23
  %t18 = sub i32 %t14, %t15
  %t19 = load i32, ptr %l5, !tbaa !23
  %t22 = add i32 %t18, %t19
  %t24 = sub i32 %t22, 1
  %t25 = load i32, ptr %l5, !tbaa !23
  %t28 = sdiv i32 %t24, %t25
  store i32 %t28, ptr %l18, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l18, !tbaa !23
  br label %bb5
bb5:
  %t30 = load i32, ptr %l18, !tbaa !23
  store i32 %t30, ptr %l15, !tbaa !23
  br label %bb6
bb6:
  %t31 = load i32, ptr %l15, !tbaa !23
  store i32 %t31, ptr %l6, !tbaa !23
  store i32 0, ptr %l7, !tbaa !23
  br label %bb7
bb7:
  %t32 = load i32, ptr %l7, !tbaa !23
  %t33 = load i32, ptr %l6, !tbaa !23
  %t36 = icmp slt i32 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb26
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l3, !tbaa !23
  %t41 = load i32, ptr %l7, !tbaa !23
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  %t52 = getelementptr %"compiler/mir:Fn", ptr %a1, i32 0, i32 11
  %t53 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 0
  %t54 = load i32, ptr %t53, !tbaa !23
  %t56 = sext i32 %t54 to i64
  %t59 = sext i32 %t48 to i64
  %t62 = add i64 %t56, %t59
  %t65 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %t52, i64 %t62)
  store { i64, [4 x i64] } %t65, ptr %l43
  br label %bb11
bb11:
  %t66 = load { i64, [4 x i64] }, ptr %l43
  store { i64, [4 x i64] } %t66, ptr %l9
  %t67 = load { i64, [4 x i64] }, ptr %l9
  %t69 = extractvalue { i64, [4 x i64] } %t67, 0
  %t70 = icmp eq i64 %t69, 1
  br i1 %t70, label %bb12, label %bb13
bb12:
  %t72 = getelementptr { i64, [4 x i64] }, ptr %l9, i32 0, i32 1
  %t73 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t72, i32 0, i32 0
  %t74 = load %"compiler/mir:Lvalue", ptr %t73
  store %"compiler/mir:Lvalue" %t74, ptr %l10
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t77 = load %"compiler/mir:Lvalue", ptr %l10
  %t80 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2emutableGlobal(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %t77)
  store i1 %t80, ptr %l49
  br label %bb15
bb15:
  %t81 = load i1, ptr %l49, !tbaa !21
  br i1 %t81, label %bb16, label %bb17
bb16:
  store i1 true, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_4b87b113311cbcf6_8401054b0e12d93a)
  unreachable
bb24:
  br label %bb25
bb25:
  %t83 = load i32, ptr %l7, !tbaa !23
  %t85 = add i32 %t83, 1
  store i32 %t85, ptr %l7, !tbaa !23
  br label %bb7
bb26:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2esettle(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i1
  %l9 = alloca i1
  %l11 = alloca i1
  %l17 = alloca %"compiler/eval:scope"
  %l24 = alloca i64
  %l27 = alloca i1
  %t22 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l6, !tbaa !21
  br label %bb4
bb2:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load i64, ptr %l1, !tbaa !24
  %t9 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t5, i64 %t6)
  store i1 %t9, ptr %l9
  br label %bb3
bb3:
  %t10 = load i1, ptr %l9, !tbaa !21
  %t11 = xor i1 %t10, true
  store i1 %t11, ptr %l6, !tbaa !21
  br label %bb4
bb4:
  %t13 = load i1, ptr %l6, !tbaa !21
  br i1 %t13, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb8
bb6:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 49
  %t17 = load i64, ptr %l1, !tbaa !24
  %t18 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t21 = and i64 %t17, %t18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t22, ptr %v0, ptr %t16, i64 %t21)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t22, i64 144, i1 false)
  br label %bb7
bb7:
  %t25 = getelementptr %"compiler/eval:scope", ptr %l17, i32 0, i32 2
  %t26 = load i64, ptr %t25, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t30 = icmp ne i64 %t26, %t27
  store i1 %t30, ptr %l11, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l11, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  br label %ret
bb10:
  br label %bb11
bb11:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t39 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %t33, %"compiler/eval:Ptr" %a2, i32 %a3)
  store i64 %t39, ptr %l24
  br label %bb12
bb12:
  %t40 = load i64, ptr %l1, !tbaa !24
  %t41 = load i64, ptr %l24, !tbaa !24
  %t43 = icmp eq i64 %t41, %t40
  br i1 %t43, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb15
bb14:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 19
  %t48 = load i1, ptr %t47, !tbaa !21
  store i1 %t48, ptr %l27, !tbaa !21
  br label %bb15
bb15:
  %t50 = load i1, ptr %l27, !tbaa !21
  br i1 %t50, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t52 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t51, i64 %t52)
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l7 = alloca i64
  %l12 = alloca %"compiler/eval:global"
  %l14 = alloca i64
  %l16 = alloca ptr
  %l20 = alloca { i64, [2 x i64] }
  %l21 = alloca i64
  %l22 = alloca i32
  %l32 = alloca i64
  %l38 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l52 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 39
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/eval:global" %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/eval:global", ptr %l12, i32 0, i32 2
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 27
  store ptr %t13, ptr %l16, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 28
  %t20 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t16, i64 %t9)
  store { i64, [2 x i64] } %t20, ptr %l20
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = load { i64, [2 x i64] }, ptr %l20
  %t23 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t21, { i64, [2 x i64] } %t22)
  %t24 = extractvalue { i32, i64 } %t23, 1
  %t25 = extractvalue { i32, i64 } %t23, 0
  store i32 %t25, ptr %l22
  %t26 = icmp ne i32 %t25, 0
  br i1 %t26, label %bb4, label %ok.27, !prof !99
ok.27:
  store i64 %t24, ptr %l21
  br label %bb3
bb3:
  %t28 = load i64, ptr %l21, !tbaa !24
  store i64 %t28, ptr %l14, !tbaa !24
  br label %bb7
bb4:
  br label %bb5
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t31 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t31, ptr %t29, { i64, ptr } %t30)
  br label %bb6
bb6:
  br label %ret
bb7:
  %t34 = load i64, ptr %l14, !tbaa !24
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 20
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l4, !tbaa !21
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 20
  store i1 false, ptr %t42, !tbaa !21
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr @G_2ecompiler_2feval_2erGlobal, !tbaa !24
  %t46 = load i64, ptr %l1, !tbaa !24
  %t51 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t43, i64 %t34, i64 %t45, i64 %t46)
  store i64 %t51, ptr %l32
  br label %bb8
bb8:
  %t52 = load i64, ptr %l32, !tbaa !24
  store i64 %t52, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp slt i64 %t53, 0
  br i1 %t55, label %bb9, label %bb10
bb9:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i1, ptr %l4, !tbaa !21
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 20
  store i1 %t58, ptr %t61, !tbaa !21
  br label %ret
bb10:
  br label %bb11
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 55
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l38, !tbaa !27
  %t66 = load i64, ptr %l5, !tbaa !24
  %t67 = load i1, ptr %l4, !tbaa !21
  %t70 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr %"compiler/eval:frame", ptr %t71, i64 %t66
  %t73 = getelementptr %"compiler/eval:frame", ptr %t72, i32 0, i32 15
  store i1 %t67, ptr %t73, !tbaa !21
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 55
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l42, !tbaa !27
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Machine", ptr %t79, i32 0, i32 70
  %t82 = load i64, ptr %t81, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr %"compiler/eval:frame", ptr %t86, i64 %t78
  %t88 = getelementptr %"compiler/eval:frame", ptr %t87, i32 0, i32 14
  store i64 %t82, ptr %t88, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t89, i32 0, i32 70
  store i64 %t90, ptr %t93, !tbaa !24
  %t94 = load i64, ptr %l1, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/eval:Machine", ptr %t96, i32 0, i32 39
  %t102 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t98, i64 %t94)
  store ptr %t102, ptr %l52
  br label %bb12
bb12:
  %t103 = load ptr, ptr %l52, !tbaa !29
  %t105 = load i64, ptr %l7, !tbaa !24
  %t108 = getelementptr %"compiler/eval:global", ptr %t103, i32 0, i32 4
  store i64 %t105, ptr %t108, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2estmtAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i1
  %l6 = alloca { i64, [21 x i64] }
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca %"compiler/mir:Lvalue"
  %l9 = alloca { i64, [15 x i64] }
  %l10 = alloca %"compiler/source:Span"
  %l11 = alloca i32
  %l12 = alloca %"compiler/mir:Local"
  %l13 = alloca i64
  %l14 = alloca i32
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca %"compiler/mir:ScopeInfo"
  %l19 = alloca i32
  %l20 = alloca i64
  %l21 = alloca i64
  %l23 = alloca i64
  %l25 = alloca %"compiler/eval:Ptr"
  %l27 = alloca i64
  %l29 = alloca i32
  %l30 = alloca i64
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca i32
  %l33 = alloca i32
  %l34 = alloca %"compiler/source:Span"
  %l35 = alloca { i64, [1 x i64] }
  %l36 = alloca i32
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca i64
  %l41 = alloca i1
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca %"compiler/mir:Lvalue"
  %l45 = alloca { %"compiler/eval:Ptr", i32 }
  %l46 = alloca %"compiler/eval:Ptr"
  %l47 = alloca i32
  %l48 = alloca i64
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca i32
  %l51 = alloca %"compiler/mir:Lvalue"
  %l52 = alloca { %"compiler/eval:Ptr", i32 }
  %l53 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i32
  %l55 = alloca i64
  %l56 = alloca %"compiler/source:Span"
  %l57 = alloca { i64, [1 x i64] }
  %l58 = alloca i32
  %l59 = alloca { i64, [4 x i64] }
  %l60 = alloca %"compiler/source:Span"
  %l61 = alloca { i64, [4 x i64] }
  %l62 = alloca %"compiler/source:Span"
  %l63 = alloca { i64, [4 x i64] }
  %l64 = alloca { i64, [4 x i64] }
  %l65 = alloca i64
  %l66 = alloca %"compiler/eval:Ptr"
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca %"compiler/source:Span"
  %l71 = alloca %"compiler/mir:Lvalue"
  %l72 = alloca %"compiler/mir:Lvalue"
  %l73 = alloca { i64, [4 x i64] }
  %l74 = alloca { %"compiler/eval:Ptr", i32 }
  %l75 = alloca %"compiler/eval:Ptr"
  %l76 = alloca i32
  %l77 = alloca { %"compiler/eval:Ptr", i32 }
  %l78 = alloca %"compiler/eval:Ptr"
  %l79 = alloca i32
  %l80 = alloca { %"compiler/eval:Ptr", i64 }
  %l81 = alloca %"compiler/eval:Ptr"
  %l82 = alloca i64
  %l83 = alloca { %"compiler/eval:Ptr", i64 }
  %l84 = alloca %"compiler/eval:Ptr"
  %l85 = alloca i64
  %l86 = alloca i64
  %l87 = alloca %"compiler/source:Span"
  %l88 = alloca i32
  %l89 = alloca i32
  %l91 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l109 = alloca { i64, ptr }
  %l110 = alloca i64
  %l114 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l122 = alloca { i64, ptr }
  %l124 = alloca { i64, [21 x i64] }
  %l125 = alloca { i64, [21 x i64] }
  %l134 = alloca i1
  %l139 = alloca i1
  %l145 = alloca { i64, [21 x i64] }
  %l153 = alloca { i64, ptr }
  %l155 = alloca { i64, ptr }
  %l162 = alloca i64
  %l166 = alloca { i64, ptr }
  %l168 = alloca { i64, ptr }
  %l173 = alloca i64
  %l174 = alloca ptr
  %l177 = alloca i64
  %l180 = alloca %"compiler/eval:Ptr"
  %l182 = alloca { i64, [21 x i64] }
  %l186 = alloca { i64, ptr }
  %l193 = alloca { i64, ptr }
  %l198 = alloca i1
  %l200 = alloca { i64, ptr }
  %l206 = alloca i64
  %l214 = alloca { i64, ptr }
  %l216 = alloca { i64, [21 x i64] }
  %l220 = alloca { i64, ptr }
  %l222 = alloca { i64, ptr }
  %l227 = alloca i64
  %l243 = alloca i64
  %l245 = alloca { i64, ptr }
  %l247 = alloca { i64, ptr }
  %l265 = alloca ptr
  %l274 = alloca %"compiler/eval:Ptr"
  %l282 = alloca ptr
  %l285 = alloca { i64, [21 x i64] }
  %l293 = alloca { i64, ptr }
  %l295 = alloca { i64, ptr }
  %l303 = alloca { i64, ptr }
  %l305 = alloca { i64, ptr }
  %l313 = alloca i1
  %l318 = alloca { i64, ptr }
  %l320 = alloca { i64, [21 x i64] }
  %l327 = alloca { i64, [21 x i64] }
  %l352 = alloca { i64, [21 x i64] }
  %l364 = alloca i64
  %l368 = alloca i1
  %l373 = alloca i1
  %l377 = alloca i1
  %l380 = alloca i1
  %l384 = alloca ptr
  %l388 = alloca %"compiler/eval:Ptr"
  %l389 = alloca %"compiler/eval:Ptr"
  %l400 = alloca i1
  %l409 = alloca ptr
  %l412 = alloca { i64, [21 x i64] }
  %l422 = alloca { %"compiler/eval:Ptr", i32 }
  %l427 = alloca i64
  %l433 = alloca i64
  %l437 = alloca { i64, ptr }
  %l439 = alloca { i64, [21 x i64] }
  %l450 = alloca { %"compiler/eval:Ptr", i32 }
  %l455 = alloca i64
  %l456 = alloca ptr
  %l460 = alloca i64
  %l465 = alloca i64
  %l469 = alloca { i64, ptr }
  %l471 = alloca { i64, [21 x i64] }
  %l485 = alloca { i64, [21 x i64] }
  %l494 = alloca i64
  %l499 = alloca ptr
  %l502 = alloca i64
  %l503 = alloca i64
  %l504 = alloca ptr
  %l508 = alloca %"compiler/eval:Ptr"
  %l509 = alloca %"compiler/eval:Ptr"
  %l510 = alloca { i64, [21 x i64] }
  %l518 = alloca ptr
  %l522 = alloca i64
  %l524 = alloca i64
  %l528 = alloca %"compiler/eval:Ptr"
  %l532 = alloca ptr
  %l533 = alloca %"compiler/eval:Ptr"
  %l537 = alloca i32
  %l539 = alloca { i64, [21 x i64] }
  %l545 = alloca i64
  %l548 = alloca i64
  %l549 = alloca i32
  %l553 = alloca ptr
  %l556 = alloca i64
  %l560 = alloca i64
  %l565 = alloca i64
  %l569 = alloca { i64, ptr }
  %l571 = alloca { i64, [21 x i64] }
  %l583 = alloca { %"compiler/eval:Ptr", i32 }
  %l589 = alloca { %"compiler/eval:Ptr", i32 }
  %l595 = alloca { %"compiler/eval:Ptr", i64 }
  %l601 = alloca { %"compiler/eval:Ptr", i64 }
  %l604 = alloca ptr
  %l608 = alloca i64
  %l612 = alloca i32
  %l613 = alloca i64
  %l618 = alloca i1
  %l622 = alloca i1
  %l628 = alloca ptr
  %l629 = alloca %"compiler/eval:Ptr"
  %l630 = alloca %"compiler/eval:Ptr"
  %l631 = alloca i64
  %l632 = alloca ptr
  %l635 = alloca i32
  %l636 = alloca i64
  %l638 = alloca { i64, [21 x i64] }
  %l654 = alloca { i64, ptr }
  %l655 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 23
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l91, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i32 0, i32 13
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l93, !tbaa !27
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t16 = mul i64 %t12, %t13
  %t18 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp ne i64 %t23, 0
  br i1 %t25, label %bb1, label %bb2
bb1:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %t27, i64 %t28, i64 %t29, i64 %t30, i64 %t31)
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 19
  %t40 = load i1, ptr %t39, !tbaa !21
  %t42 = xor i1 %t40, true
  br i1 %t42, label %bb4, label %bb5
bb4:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 55
  %t47 = load { i64, ptr }, ptr %t46, !tbaa !27
  store { i64, ptr } %t47, ptr %l109, !tbaa !27
  %t48 = load i64, ptr %l1, !tbaa !24
  store i64 %t48, ptr %l110, !tbaa !24
  %t49 = load i64, ptr %l110, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr %"compiler/eval:frame", ptr %t51, i64 %t49
  %t53 = getelementptr %"compiler/eval:frame", ptr %t52, i32 0, i32 2
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = add i64 %t54, 1
  %t58 = load i64, ptr %l110, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l109, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:frame", ptr %t60, i64 %t58
  %t62 = getelementptr %"compiler/eval:frame", ptr %t61, i32 0, i32 2
  store i64 %t56, ptr %t62, !tbaa !24
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
bb7:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 23
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l114, !tbaa !27
  %t67 = load i64, ptr %l2, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l114, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr %"compiler/eval:cfn", ptr %t70, i64 %t67
  %t72 = getelementptr %"compiler/eval:cfn", ptr %t71, i32 0, i32 10
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l116, !tbaa !27
  %t74 = load i64, ptr %l3, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i1, ptr %t77, i64 %t74
  %t79 = load i1, ptr %t78, !tbaa !31
  store i1 %t79, ptr %l5, !tbaa !21
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 23
  %t84 = load { i64, ptr }, ptr %t83, !tbaa !27
  store { i64, ptr } %t84, ptr %l120, !tbaa !27
  %t85 = load i64, ptr %l2, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/eval:cfn", ptr %t88, i64 %t85
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t89, i32 0, i32 7
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l122, !tbaa !27
  %t92 = load i64, ptr %l3, !tbaa !24
  %t94 = getelementptr { i64, ptr }, ptr %l122, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !27
  %t96 = getelementptr { i64, [21 x i64] }, ptr %t95, i64 %t92
  call void @llvm.memmove.p0.p0.i64(ptr %l124, ptr %t96, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l124, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l125, ptr %l6, i64 176, i1 false)
  %t97 = load { i64, [21 x i64] }, ptr %l125
  %t98 = extractvalue { i64, [21 x i64] } %t97, 0
  %t99 = icmp eq i64 %t98, 0
  br i1 %t99, label %bb8, label %bb9
bb8:
  %t101 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t101, i32 0, i32 0
  %t103 = load %"compiler/source:Span", ptr %t102
  store %"compiler/source:Span" %t103, ptr %l7
  %t105 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t106 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t105, i32 0, i32 1
  %t107 = load %"compiler/mir:Lvalue", ptr %t106
  store %"compiler/mir:Lvalue" %t107, ptr %l8
  %t109 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t110 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t109, i32 0, i32 2
  %t111 = load { i64, [15 x i64] }, ptr %t110
  store { i64, [15 x i64] } %t111, ptr %l9
  br label %bb10
bb9:
  br label %bb20
bb10:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l2, !tbaa !24
  %t115 = load %"compiler/source:Span", ptr %l7
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t113, i64 %t114, %"compiler/source:Span" %t115)
  br label %bb11
bb11:
  %t119 = load i1, ptr %l5, !tbaa !21
  br i1 %t119, label %bb12, label %bb13
bb12:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i64, ptr %l1, !tbaa !24
  %t123 = load %"compiler/mir:Lvalue", ptr %l8
  %t124 = load { i64, [15 x i64] }, ptr %l9
  %t129 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalsReady(ptr %v0, ptr %t121, i64 %t122, %"compiler/mir:Lvalue" %t123, { i64, [15 x i64] } %t124)
  store i1 %t129, ptr %l139
  br label %bb14
bb13:
  store i1 false, ptr %l134, !tbaa !21
  br label %bb15
bb14:
  %t130 = load i1, ptr %l139, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %l134, !tbaa !21
  br label %bb15
bb15:
  %t133 = load i1, ptr %l134, !tbaa !21
  br i1 %t133, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load i64, ptr %l1, !tbaa !24
  %t136 = load %"compiler/mir:Lvalue", ptr %l8
  %t137 = load { i64, [15 x i64] }, ptr %l9
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eassign(ptr %v0, ptr %t134, i64 %t135, %"compiler/mir:Lvalue" %t136, { i64, [15 x i64] } %t137)
  br label %bb19
bb19:
  br label %bb247
bb20:
  call void @llvm.memmove.p0.p0.i64(ptr %l145, ptr %l6, i64 176, i1 false)
  %t142 = load { i64, [21 x i64] }, ptr %l145
  %t143 = extractvalue { i64, [21 x i64] } %t142, 0
  %t144 = icmp eq i64 %t143, 1
  br i1 %t144, label %bb21, label %bb22
bb21:
  %t146 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t147 = getelementptr { %"compiler/source:Span", i32 }, ptr %t146, i32 0, i32 0
  %t148 = load %"compiler/source:Span", ptr %t147
  store %"compiler/source:Span" %t148, ptr %l10
  %t150 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32 }, ptr %t150, i32 0, i32 1
  %t152 = load i32, ptr %t151
  store i32 %t152, ptr %l11, !tbaa !23
  br label %bb23
bb22:
  br label %bb31
bb23:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i64, ptr %l2, !tbaa !24
  %t156 = load %"compiler/source:Span", ptr %l10
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t154, i64 %t155, %"compiler/source:Span" %t156)
  br label %bb24
bb24:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t162 = getelementptr %"compiler/eval:Machine", ptr %t160, i32 0, i32 23
  %t163 = load { i64, ptr }, ptr %t162, !tbaa !27
  store { i64, ptr } %t163, ptr %l153, !tbaa !27
  %t164 = load i64, ptr %l2, !tbaa !24
  %t166 = getelementptr { i64, ptr }, ptr %l153, i32 0, i32 1
  %t167 = load ptr, ptr %t166, !tbaa !27
  %t168 = getelementptr %"compiler/eval:cfn", ptr %t167, i64 %t164
  %t169 = getelementptr %"compiler/eval:cfn", ptr %t168, i32 0, i32 1
  %t170 = load { i64, ptr }, ptr %t169, !tbaa !27
  store { i64, ptr } %t170, ptr %l155, !tbaa !27
  %t171 = load i32, ptr %l11, !tbaa !23
  %t173 = sext i32 %t171 to i64
  %t175 = getelementptr { i64, ptr }, ptr %l155, i32 0, i32 1
  %t176 = load ptr, ptr %t175, !tbaa !27
  %t177 = getelementptr %"compiler/mir:Local", ptr %t176, i64 %t173
  %t178 = load %"compiler/mir:Local", ptr %t177
  store %"compiler/mir:Local" %t178, ptr %l12
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l1, !tbaa !24
  %t182 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 4
  %t183 = load { i64, [1 x i64] }, ptr %t182
  %t187 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t180, i64 %t181, { i64, [1 x i64] } %t183)
  store i64 %t187, ptr %l162
  br label %bb25
bb25:
  %t188 = load i64, ptr %l162, !tbaa !24
  store i64 %t188, ptr %l13, !tbaa !24
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/eval:Machine", ptr %t189, i32 0, i32 19
  %t192 = load i1, ptr %t191, !tbaa !21
  br i1 %t192, label %bb26, label %bb27
bb26:
  br label %ret
bb27:
  br label %bb28
bb28:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 57
  %t197 = load { i64, ptr }, ptr %t196, !tbaa !27
  store { i64, ptr } %t197, ptr %l166, !tbaa !27
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/eval:Machine", ptr %t198, i32 0, i32 55
  %t201 = load { i64, ptr }, ptr %t200, !tbaa !27
  store { i64, ptr } %t201, ptr %l168, !tbaa !27
  %t202 = load i64, ptr %l1, !tbaa !24
  %t204 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t205 = load ptr, ptr %t204, !tbaa !27
  %t206 = getelementptr %"compiler/eval:frame", ptr %t205, i64 %t202
  %t207 = getelementptr %"compiler/eval:frame", ptr %t206, i32 0, i32 3
  %t208 = load i64, ptr %t207, !tbaa !24
  %t209 = load i32, ptr %l11, !tbaa !23
  %t211 = sext i32 %t209 to i64
  %t214 = add i64 %t208, %t211
  store i64 %t214, ptr %l173, !tbaa !24
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l174, !tbaa !29
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/mir:Local", ptr %l12, i32 0, i32 2
  %t218 = load i32, ptr %t217, !tbaa !23
  %t221 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t216, i32 %t218)
  store i64 %t221, ptr %l177
  br label %bb29
bb29:
  %t222 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t223 = load i64, ptr %l13, !tbaa !24
  %t224 = load ptr, ptr %l174, !tbaa !29
  %t225 = load i64, ptr %l177, !tbaa !24
  %t228 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t224, i64 %t225, i64 %t222, i64 %t223)
  store %"compiler/eval:Ptr" %t228, ptr %l180
  br label %bb30
bb30:
  %t229 = getelementptr %"compiler/eval:Ptr", ptr %l180, i32 0, i32 0
  %t230 = load i64, ptr %t229, !tbaa !24
  %t232 = load i64, ptr %l173, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l166, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i64, ptr %t234, i64 %t232
  store i64 %t230, ptr %t235, !tbaa !34
  br label %bb247
bb31:
  call void @llvm.memmove.p0.p0.i64(ptr %l182, ptr %l6, i64 176, i1 false)
  %t236 = load { i64, [21 x i64] }, ptr %l182
  %t237 = extractvalue { i64, [21 x i64] } %t236, 0
  %t238 = icmp eq i64 %t237, 2
  br i1 %t238, label %bb32, label %bb33
bb32:
  %t240 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", i32 }, ptr %t240, i32 0, i32 1
  %t242 = load i32, ptr %t241
  store i32 %t242, ptr %l14, !tbaa !23
  br label %bb34
bb33:
  br label %bb42
bb34:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/eval:Machine", ptr %t244, i32 0, i32 55
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l186, !tbaa !27
  %t248 = load i64, ptr %l1, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l186, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr %"compiler/eval:frame", ptr %t251, i64 %t248
  %t253 = getelementptr %"compiler/eval:frame", ptr %t252, i32 0, i32 3
  %t254 = load i64, ptr %t253, !tbaa !24
  %t255 = load i32, ptr %l14, !tbaa !23
  %t257 = sext i32 %t255 to i64
  %t260 = add i64 %t254, %t257
  store i64 %t260, ptr %l15, !tbaa !24
  %t262 = load ptr, ptr %l0, !tbaa !29
  %t264 = getelementptr %"compiler/eval:Machine", ptr %t262, i32 0, i32 57
  %t265 = load { i64, ptr }, ptr %t264, !tbaa !27
  store { i64, ptr } %t265, ptr %l193, !tbaa !27
  %t266 = load i64, ptr %l15, !tbaa !24
  %t268 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t269 = load ptr, ptr %t268, !tbaa !27
  %t270 = getelementptr i64, ptr %t269, i64 %t266
  %t271 = load i64, ptr %t270, !tbaa !34
  store i64 %t271, ptr %l16, !tbaa !24
  %t273 = load i64, ptr %l16, !tbaa !24
  %t275 = icmp ne i64 %t273, 0
  br i1 %t275, label %bb35, label %bb36
bb35:
  %t277 = load ptr, ptr %l0, !tbaa !29
  %t279 = getelementptr %"compiler/eval:Machine", ptr %t277, i32 0, i32 46
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l200, !tbaa !27
  %t281 = load i64, ptr %l16, !tbaa !24
  %t282 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t285 = and i64 %t281, %t282
  %t287 = getelementptr { i64, ptr }, ptr %l200, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr %"compiler/eval:alloc", ptr %t288, i64 %t285
  %t290 = getelementptr %"compiler/eval:alloc", ptr %t289, i32 0, i32 3
  %t291 = load i64, ptr %t290, !tbaa !24
  %t292 = load i64, ptr %l16, !tbaa !24
  %t293 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t293, ptr %l206, !tbaa !24
  %t295 = load i64, ptr %l206, !tbaa !24
  %t296 = load i64, ptr %l206, !tbaa !24
  %t297 = ashr i64 %t292, %t296
  %t300 = icmp eq i64 %t291, %t297
  store i1 %t300, ptr %l198, !tbaa !21
  br label %bb37
bb36:
  store i1 false, ptr %l198, !tbaa !21
  br label %bb37
bb37:
  %t302 = load i1, ptr %l198, !tbaa !21
  br i1 %t302, label %bb38, label %bb39
bb38:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load i64, ptr %l16, !tbaa !24
  %t305 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t308 = and i64 %t304, %t305
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t303, i64 %t308)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/eval:Machine", ptr %t311, i32 0, i32 57
  %t314 = load { i64, ptr }, ptr %t313, !tbaa !27
  store { i64, ptr } %t314, ptr %l214, !tbaa !27
  %t315 = load i64, ptr %l15, !tbaa !24
  %t317 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr i64, ptr %t318, i64 %t315
  store i64 0, ptr %t319, !tbaa !34
  br label %bb247
bb42:
  call void @llvm.memmove.p0.p0.i64(ptr %l216, ptr %l6, i64 176, i1 false)
  %t320 = load { i64, [21 x i64] }, ptr %l216
  %t321 = extractvalue { i64, [21 x i64] } %t320, 0
  %t322 = icmp eq i64 %t321, 3
  br i1 %t322, label %bb43, label %bb44
bb43:
  %t324 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t325 = getelementptr { %"compiler/source:Span", i32 }, ptr %t324, i32 0, i32 1
  %t326 = load i32, ptr %t325
  store i32 %t326, ptr %l17, !tbaa !23
  br label %bb45
bb44:
  br label %bb77
bb45:
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t330 = getelementptr %"compiler/eval:Machine", ptr %t328, i32 0, i32 23
  %t331 = load { i64, ptr }, ptr %t330, !tbaa !27
  store { i64, ptr } %t331, ptr %l220, !tbaa !27
  %t332 = load i64, ptr %l2, !tbaa !24
  %t334 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t335 = load ptr, ptr %t334, !tbaa !27
  %t336 = getelementptr %"compiler/eval:cfn", ptr %t335, i64 %t332
  %t337 = getelementptr %"compiler/eval:cfn", ptr %t336, i32 0, i32 2
  %t338 = load { i64, ptr }, ptr %t337, !tbaa !27
  store { i64, ptr } %t338, ptr %l222, !tbaa !27
  %t339 = load i32, ptr %l17, !tbaa !23
  %t341 = sext i32 %t339 to i64
  %t343 = getelementptr { i64, ptr }, ptr %l222, i32 0, i32 1
  %t344 = load ptr, ptr %t343, !tbaa !27
  %t345 = getelementptr %"compiler/mir:ScopeInfo", ptr %t344, i64 %t341
  %t346 = load %"compiler/mir:ScopeInfo", ptr %t345
  store %"compiler/mir:ScopeInfo" %t346, ptr %l18
  %t348 = getelementptr %"compiler/mir:ScopeInfo", ptr %l18, i32 0, i32 0
  %t349 = load i32, ptr %t348, !range !{i32 0, i32 7}
  store i32 %t349, ptr %l19
  %t351 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t353 = trunc i64 5 to i32
  %t354 = icmp eq i32 %t351, %t353
  br i1 %t354, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb49
bb48:
  %t356 = load i64, ptr @G_2ecompiler_2feval_2esInert, !tbaa !24
  store i64 %t356, ptr %l227, !tbaa !24
  br label %bb66
bb49:
  %t358 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t360 = trunc i64 6 to i32
  %t361 = icmp eq i32 %t358, %t360
  br i1 %t361, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t363 = load i64, ptr @G_2ecompiler_2feval_2esBuilder, !tbaa !24
  store i64 %t363, ptr %l227, !tbaa !24
  br label %bb66
bb53:
  %t365 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t367 = trunc i64 4 to i32
  %t368 = icmp eq i32 %t365, %t367
  br i1 %t368, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t370 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  store i64 %t370, ptr %l227, !tbaa !24
  br label %bb66
bb57:
  %t372 = load i32, ptr %l19, !range !{i32 0, i32 7}
  %t374 = trunc i64 3 to i32
  %t375 = icmp eq i32 %t372, %t374
  br i1 %t375, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t377 = load i64, ptr @G_2ecompiler_2feval_2esJoin, !tbaa !24
  store i64 %t377, ptr %l227, !tbaa !24
  br label %bb66
bb61:
  br i1 true, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb65
bb64:
  %t379 = load i64, ptr @G_2ecompiler_2feval_2esBlock, !tbaa !24
  store i64 %t379, ptr %l227, !tbaa !24
  br label %bb66
bb65:
  call void @__olang_check_failed(ptr @olang_loc_fe5b662c8cf4b58_7006b7c636f2421c)
  unreachable
bb66:
  %t381 = load i64, ptr %l227, !tbaa !24
  store i64 %t381, ptr %l20, !tbaa !24
  %t382 = load ptr, ptr %l0, !tbaa !29
  %t383 = load i64, ptr %l20, !tbaa !24
  %t386 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t382, i64 %t383)
  store i64 %t386, ptr %l243
  br label %bb67
bb67:
  %t387 = load i64, ptr %l243, !tbaa !24
  store i64 %t387, ptr %l21, !tbaa !24
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t390 = getelementptr %"compiler/eval:Machine", ptr %t388, i32 0, i32 57
  %t391 = load { i64, ptr }, ptr %t390, !tbaa !27
  store { i64, ptr } %t391, ptr %l245, !tbaa !27
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 55
  %t395 = load { i64, ptr }, ptr %t394, !tbaa !27
  store { i64, ptr } %t395, ptr %l247, !tbaa !27
  %t396 = load i64, ptr %l1, !tbaa !24
  %t398 = getelementptr { i64, ptr }, ptr %l247, i32 0, i32 1
  %t399 = load ptr, ptr %t398, !tbaa !27
  %t400 = getelementptr %"compiler/eval:frame", ptr %t399, i64 %t396
  %t401 = getelementptr %"compiler/eval:frame", ptr %t400, i32 0, i32 4
  %t402 = load i64, ptr %t401, !tbaa !24
  %t403 = load i32, ptr %l17, !tbaa !23
  %t405 = sext i32 %t403 to i64
  %t408 = add i64 %t402, %t405
  %t409 = load i64, ptr %l21, !tbaa !24
  %t412 = getelementptr { i64, ptr }, ptr %l245, i32 0, i32 1
  %t413 = load ptr, ptr %t412, !tbaa !27
  %t414 = getelementptr i64, ptr %t413, i64 %t408
  store i64 %t409, ptr %t414, !tbaa !34
  %t415 = load i64, ptr %l20, !tbaa !24
  %t416 = load i64, ptr @G_2ecompiler_2feval_2esJoin, !tbaa !24
  %t419 = icmp eq i64 %t415, %t416
  br i1 %t419, label %bb68, label %bb69
bb68:
  %t421 = load i64, ptr %l21, !tbaa !24
  %t422 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t425 = and i64 %t421, %t422
  %t427 = getelementptr %"compiler/mir:ScopeInfo", ptr %l18, i32 0, i32 4
  %t428 = load i32, ptr %t427, !tbaa !23
  %t430 = sext i32 %t428 to i64
  store i64 %t430, ptr %l23, !tbaa !24
  %t432 = load ptr, ptr %l0, !tbaa !29
  %t434 = getelementptr %"compiler/eval:Machine", ptr %t432, i32 0, i32 49
  %t438 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t434, i64 %t425)
  store ptr %t438, ptr %l265
  br label %bb70
bb69:
  br label %bb71
bb70:
  %t439 = load ptr, ptr %l265, !tbaa !29
  %t441 = load i64, ptr %l23, !tbaa !24
  %t444 = getelementptr %"compiler/eval:scope", ptr %t439, i32 0, i32 14
  store i64 %t441, ptr %t444, !tbaa !24
  br label %bb71
bb71:
  %t445 = load i64, ptr %l20, !tbaa !24
  %t446 = load i64, ptr @G_2ecompiler_2feval_2esBuilder, !tbaa !24
  %t449 = icmp eq i64 %t445, %t446
  br i1 %t449, label %bb72, label %bb73
bb72:
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t452 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t453 = load i64, ptr %l21, !tbaa !24
  %t457 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t451, i64 64, i64 %t452, i64 %t453)
  store %"compiler/eval:Ptr" %t457, ptr %l274
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t458 = load %"compiler/eval:Ptr", ptr %l274
  store %"compiler/eval:Ptr" %t458, ptr %l25
  %t459 = load i64, ptr %l21, !tbaa !24
  %t460 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t463 = and i64 %t459, %t460
  %t465 = getelementptr %"compiler/eval:Ptr", ptr %l25, i32 0, i32 0
  %t466 = load i64, ptr %t465, !tbaa !24
  store i64 %t466, ptr %l27, !tbaa !24
  %t468 = load ptr, ptr %l0, !tbaa !29
  %t470 = getelementptr %"compiler/eval:Machine", ptr %t468, i32 0, i32 49
  %t474 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t470, i64 %t463)
  store ptr %t474, ptr %l282
  br label %bb75
bb75:
  %t475 = load ptr, ptr %l282, !tbaa !29
  %t477 = load i64, ptr %l27, !tbaa !24
  %t480 = getelementptr %"compiler/eval:scope", ptr %t475, i32 0, i32 8
  store i64 %t477, ptr %t480, !tbaa !24
  br label %bb76
bb76:
  br label %bb247
bb77:
  call void @llvm.memmove.p0.p0.i64(ptr %l285, ptr %l6, i64 176, i1 false)
  %t481 = load { i64, [21 x i64] }, ptr %l285
  %t482 = extractvalue { i64, [21 x i64] } %t481, 0
  %t483 = icmp eq i64 %t482, 4
  br i1 %t483, label %bb78, label %bb79
bb78:
  %t485 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t486 = getelementptr { %"compiler/source:Span", i32 }, ptr %t485, i32 0, i32 1
  %t487 = load i32, ptr %t486
  store i32 %t487, ptr %l29, !tbaa !23
  br label %bb80
bb79:
  br label %bb87
bb80:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l1, !tbaa !24
  %t491 = load i32, ptr %l29, !tbaa !23
  %t493 = sext i32 %t491 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %t489, i64 %t490, i64 %t493, i1 false)
  br label %bb81
bb81:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t499 = getelementptr %"compiler/eval:Machine", ptr %t497, i32 0, i32 57
  %t500 = load { i64, ptr }, ptr %t499, !tbaa !27
  store { i64, ptr } %t500, ptr %l293, !tbaa !27
  %t501 = load ptr, ptr %l0, !tbaa !29
  %t503 = getelementptr %"compiler/eval:Machine", ptr %t501, i32 0, i32 55
  %t504 = load { i64, ptr }, ptr %t503, !tbaa !27
  store { i64, ptr } %t504, ptr %l295, !tbaa !27
  %t505 = load i64, ptr %l1, !tbaa !24
  %t507 = getelementptr { i64, ptr }, ptr %l295, i32 0, i32 1
  %t508 = load ptr, ptr %t507, !tbaa !27
  %t509 = getelementptr %"compiler/eval:frame", ptr %t508, i64 %t505
  %t510 = getelementptr %"compiler/eval:frame", ptr %t509, i32 0, i32 4
  %t511 = load i64, ptr %t510, !tbaa !24
  %t512 = load i32, ptr %l29, !tbaa !23
  %t514 = sext i32 %t512 to i64
  %t517 = add i64 %t511, %t514
  %t519 = getelementptr { i64, ptr }, ptr %l293, i32 0, i32 1
  %t520 = load ptr, ptr %t519, !tbaa !27
  %t521 = getelementptr i64, ptr %t520, i64 %t517
  %t522 = load i64, ptr %t521, !tbaa !34
  store i64 %t522, ptr %l30, !tbaa !24
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t526 = getelementptr %"compiler/eval:Machine", ptr %t524, i32 0, i32 57
  %t527 = load { i64, ptr }, ptr %t526, !tbaa !27
  store { i64, ptr } %t527, ptr %l303, !tbaa !27
  %t528 = load ptr, ptr %l0, !tbaa !29
  %t530 = getelementptr %"compiler/eval:Machine", ptr %t528, i32 0, i32 55
  %t531 = load { i64, ptr }, ptr %t530, !tbaa !27
  store { i64, ptr } %t531, ptr %l305, !tbaa !27
  %t532 = load i64, ptr %l1, !tbaa !24
  %t534 = getelementptr { i64, ptr }, ptr %l305, i32 0, i32 1
  %t535 = load ptr, ptr %t534, !tbaa !27
  %t536 = getelementptr %"compiler/eval:frame", ptr %t535, i64 %t532
  %t537 = getelementptr %"compiler/eval:frame", ptr %t536, i32 0, i32 4
  %t538 = load i64, ptr %t537, !tbaa !24
  %t539 = load i32, ptr %l29, !tbaa !23
  %t541 = sext i32 %t539 to i64
  %t544 = add i64 %t538, %t541
  %t546 = getelementptr { i64, ptr }, ptr %l303, i32 0, i32 1
  %t547 = load ptr, ptr %t546, !tbaa !27
  %t548 = getelementptr i64, ptr %t547, i64 %t544
  store i64 0, ptr %t548, !tbaa !34
  %t549 = load ptr, ptr %l0, !tbaa !29
  %t550 = load i64, ptr %l30, !tbaa !24
  %t553 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t549, i64 %t550)
  store i1 %t553, ptr %l313
  br label %bb82
bb82:
  %t554 = load i1, ptr %l313, !tbaa !21
  br i1 %t554, label %bb83, label %bb84
bb83:
  %t555 = load ptr, ptr %l0, !tbaa !29
  %t557 = getelementptr %"compiler/eval:Machine", ptr %t555, i32 0, i32 59
  %t558 = load i64, ptr %l30, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t557, i64 %t558)
  br label %bb85
bb84:
  br label %bb86
bb85:
  %t561 = load ptr, ptr %l0, !tbaa !29
  %t563 = getelementptr %"compiler/eval:Machine", ptr %t561, i32 0, i32 55
  %t564 = load { i64, ptr }, ptr %t563, !tbaa !27
  store { i64, ptr } %t564, ptr %l318, !tbaa !27
  %t565 = load i64, ptr %l1, !tbaa !24
  %t567 = getelementptr { i64, ptr }, ptr %l318, i32 0, i32 1
  %t568 = load ptr, ptr %t567, !tbaa !27
  %t569 = getelementptr %"compiler/eval:frame", ptr %t568, i64 %t565
  %t570 = getelementptr %"compiler/eval:frame", ptr %t569, i32 0, i32 10
  store i1 true, ptr %t570, !tbaa !21
  br label %ret
bb86:
  br label %bb247
bb87:
  call void @llvm.memmove.p0.p0.i64(ptr %l320, ptr %l6, i64 176, i1 false)
  %t571 = load { i64, [21 x i64] }, ptr %l320
  %t572 = extractvalue { i64, [21 x i64] } %t571, 0
  %t573 = icmp eq i64 %t572, 11
  br i1 %t573, label %bb88, label %bb89
bb88:
  %t575 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t576 = getelementptr { %"compiler/source:Span" }, ptr %t575, i32 0, i32 0
  %t577 = load %"compiler/source:Span", ptr %t576
  store %"compiler/source:Span" %t577, ptr %l31
  br label %bb90
bb89:
  br label %bb92
bb90:
  %t579 = load ptr, ptr %l0, !tbaa !29
  %t580 = load i64, ptr %l1, !tbaa !24
  %t581 = load i64, ptr %l2, !tbaa !24
  %t582 = load %"compiler/source:Span", ptr %l31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %t579, i64 %t580, i64 %t581, %"compiler/source:Span" %t582)
  br label %bb91
bb91:
  br label %bb247
bb92:
  call void @llvm.memmove.p0.p0.i64(ptr %l327, ptr %l6, i64 176, i1 false)
  %t587 = load { i64, [21 x i64] }, ptr %l327
  %t588 = extractvalue { i64, [21 x i64] } %t587, 0
  %t589 = icmp eq i64 %t588, 15
  br i1 %t589, label %bb93, label %bb94
bb93:
  %t591 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t592 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t591, i32 0, i32 1
  %t593 = load i32, ptr %t592
  store i32 %t593, ptr %l32, !tbaa !23
  %t595 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t596 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t595, i32 0, i32 2
  %t597 = load i32, ptr %t596
  store i32 %t597, ptr %l33, !tbaa !23
  br label %bb95
bb94:
  br label %bb106
bb95:
  %t599 = load i32, ptr %l33, !tbaa !23
  %t600 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t603 = icmp eq i32 %t599, %t600
  br i1 %t603, label %bb96, label %bb97
bb96:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t606 = load i64, ptr %l1, !tbaa !24
  %t607 = load i32, ptr %l32, !tbaa !23
  %t609 = sext i32 %t607 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %t605, i64 %t606, i64 %t609, i1 true)
  br label %bb98
bb97:
  %t613 = load ptr, ptr %l0, !tbaa !29
  %t615 = getelementptr %"compiler/eval:Machine", ptr %t613, i32 0, i32 1
  %t616 = load i32, ptr %t615, !range !{i32 0, i32 2}
  %t618 = trunc i64 1 to i32
  %t619 = icmp eq i32 %t616, %t618
  br i1 %t619, label %bb99, label %bb100
bb98:
  br label %bb105
bb99:
  %t621 = load ptr, ptr %l0, !tbaa !29
  %t623 = getelementptr %"compiler/eval:Machine", ptr %t621, i32 0, i32 63
  %t624 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t623, i64 %t624)
  br label %bb101
bb100:
  br label %bb104
bb101:
  %t627 = load ptr, ptr %l0, !tbaa !29
  %t629 = getelementptr %"compiler/eval:Machine", ptr %t627, i32 0, i32 64
  %t630 = load i32, ptr %l32, !tbaa !23
  %t632 = sext i32 %t630 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t629, i64 %t632)
  br label %bb102
bb102:
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t637 = getelementptr %"compiler/eval:Machine", ptr %t635, i32 0, i32 65
  %t638 = load i32, ptr %l33, !tbaa !23
  %t640 = sext i32 %t638 to i64
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t637, i64 %t640)
  br label %bb103
bb103:
  br label %bb104
bb104:
  br label %bb105
bb105:
  br label %bb247
bb106:
  call void @llvm.memmove.p0.p0.i64(ptr %l352, ptr %l6, i64 176, i1 false)
  %t643 = load { i64, [21 x i64] }, ptr %l352
  %t644 = extractvalue { i64, [21 x i64] } %t643, 0
  %t645 = icmp eq i64 %t644, 5
  br i1 %t645, label %bb107, label %bb108
bb107:
  %t647 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t648 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t647, i32 0, i32 0
  %t649 = load %"compiler/source:Span", ptr %t648
  store %"compiler/source:Span" %t649, ptr %l34
  %t651 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t652 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t651, i32 0, i32 1
  %t653 = load { i64, [1 x i64] }, ptr %t652
  store { i64, [1 x i64] } %t653, ptr %l35
  %t655 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t656 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t655, i32 0, i32 2
  %t657 = load i32, ptr %t656
  store i32 %t657, ptr %l36, !tbaa !23
  %t659 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t660 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t659, i32 0, i32 3
  %t661 = load { i64, [4 x i64] }, ptr %t660
  store { i64, [4 x i64] } %t661, ptr %l37
  br label %bb109
bb108:
  br label %bb136
bb109:
  %t663 = load ptr, ptr %l0, !tbaa !29
  %t664 = load i64, ptr %l2, !tbaa !24
  %t665 = load %"compiler/source:Span", ptr %l34
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t663, i64 %t664, %"compiler/source:Span" %t665)
  br label %bb110
bb110:
  %t669 = load ptr, ptr %l0, !tbaa !29
  %t670 = load i64, ptr %l1, !tbaa !24
  %t671 = load { i64, [1 x i64] }, ptr %l35
  %t675 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t669, i64 %t670, { i64, [1 x i64] } %t671)
  store i64 %t675, ptr %l364
  br label %bb111
bb111:
  %t676 = load i64, ptr %l364, !tbaa !24
  store i64 %t676, ptr %l38, !tbaa !24
  %t677 = load ptr, ptr %l0, !tbaa !29
  %t679 = getelementptr %"compiler/eval:Machine", ptr %t677, i32 0, i32 1
  %t680 = load i32, ptr %t679, !range !{i32 0, i32 2}
  %t682 = trunc i64 0 to i32
  %t683 = icmp eq i32 %t680, %t682
  br i1 %t683, label %bb112, label %bb113
bb112:
  %t685 = load i64, ptr %l38, !tbaa !24
  %t686 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/eval:Machine", ptr %t686, i32 0, i32 67
  %t689 = load i64, ptr %t688, !tbaa !24
  %t692 = icmp eq i64 %t685, %t689
  br i1 %t692, label %bb114, label %bb115
bb113:
  store i1 false, ptr %l368, !tbaa !21
  br label %bb121
bb114:
  %t694 = load ptr, ptr %l0, !tbaa !29
  %t696 = getelementptr %"compiler/eval:Machine", ptr %t694, i32 0, i32 70
  %t697 = load i64, ptr %t696, !tbaa !24
  %t699 = icmp sge i64 %t697, 0
  store i1 %t699, ptr %l373, !tbaa !21
  br label %bb116
bb115:
  store i1 false, ptr %l373, !tbaa !21
  br label %bb116
bb116:
  %t701 = load i1, ptr %l373, !tbaa !21
  br i1 %t701, label %bb117, label %bb118
bb117:
  %t702 = load ptr, ptr %l0, !tbaa !29
  %t703 = load i64, ptr %l1, !tbaa !24
  %t706 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2einitFrame(ptr %v0, ptr %t702, i64 %t703)
  store i1 %t706, ptr %l380
  br label %bb119
bb118:
  store i1 false, ptr %l377, !tbaa !21
  br label %bb120
bb119:
  %t707 = load i1, ptr %l380, !tbaa !21
  store i1 %t707, ptr %l377, !tbaa !21
  br label %bb120
bb120:
  %t708 = load i1, ptr %l377, !tbaa !21
  %t709 = xor i1 %t708, true
  store i1 %t709, ptr %l368, !tbaa !21
  br label %bb121
bb121:
  %t711 = load i1, ptr %l368, !tbaa !21
  br i1 %t711, label %bb122, label %bb123
bb122:
  %t712 = load ptr, ptr %l0, !tbaa !29
  %t713 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDestructor, !tbaa !27
  %t714 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t714, ptr %t712, { i64, ptr } %t713)
  br label %bb124
bb123:
  br label %bb125
bb124:
  br label %ret
bb125:
  %t717 = load ptr, ptr %l0, !tbaa !29
  store ptr %t717, ptr %l384, !tbaa !29
  %t718 = load ptr, ptr %l0, !tbaa !29
  %t719 = load i64, ptr %l1, !tbaa !24
  %t720 = load { i64, [4 x i64] }, ptr %l37
  %t724 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t718, i64 %t719, { i64, [4 x i64] } %t720, i64 1)
  store %"compiler/eval:Ptr" %t724, ptr %l388
  br label %bb126
bb126:
  %t725 = load ptr, ptr %l384, !tbaa !29
  %t726 = load %"compiler/eval:Ptr", ptr %l388
  %t727 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t725, %"compiler/eval:Ptr" %t726)
  store %"compiler/eval:Ptr" %t727, ptr %l389
  br label %bb127
bb127:
  %t728 = load %"compiler/eval:Ptr", ptr %l389
  %t729 = load ptr, ptr %l0, !tbaa !29
  %t730 = load i64, ptr %l38, !tbaa !24
  %t731 = load i64, ptr @G_2ecompiler_2feval_2egDtor, !tbaa !24
  %t732 = load i32, ptr %l36, !tbaa !23
  %t734 = sext i32 %t732 to i64
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %t729, i64 %t730, i64 %t731, i64 %t734, %"compiler/eval:Ptr" %t728)
  br label %bb128
bb128:
  %t741 = load i64, ptr %l38, !tbaa !24
  %t742 = load ptr, ptr %l0, !tbaa !29
  %t744 = getelementptr %"compiler/eval:Machine", ptr %t742, i32 0, i32 67
  %t745 = load i64, ptr %t744, !tbaa !24
  %t748 = icmp eq i64 %t741, %t745
  br i1 %t748, label %bb129, label %bb130
bb129:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/eval:Machine", ptr %t750, i32 0, i32 70
  %t753 = load i64, ptr %t752, !tbaa !24
  %t755 = icmp sge i64 %t753, 0
  store i1 %t755, ptr %l400, !tbaa !21
  br label %bb131
bb130:
  store i1 false, ptr %l400, !tbaa !21
  br label %bb131
bb131:
  %t757 = load i1, ptr %l400, !tbaa !21
  br i1 %t757, label %bb132, label %bb133
bb132:
  %t758 = load ptr, ptr %l0, !tbaa !29
  %t760 = getelementptr %"compiler/eval:Machine", ptr %t758, i32 0, i32 70
  %t761 = load i64, ptr %t760, !tbaa !24
  store i1 true, ptr %l41, !tbaa !21
  %t763 = load ptr, ptr %l0, !tbaa !29
  %t765 = getelementptr %"compiler/eval:Machine", ptr %t763, i32 0, i32 39
  %t769 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t765, i64 %t761)
  store ptr %t769, ptr %l409
  br label %bb134
bb133:
  br label %bb135
bb134:
  %t770 = load ptr, ptr %l409, !tbaa !29
  %t772 = load i1, ptr %l41, !tbaa !21
  %t775 = getelementptr %"compiler/eval:global", ptr %t770, i32 0, i32 7
  store i1 %t772, ptr %t775, !tbaa !21
  br label %bb135
bb135:
  br label %bb247
bb136:
  call void @llvm.memmove.p0.p0.i64(ptr %l412, ptr %l6, i64 176, i1 false)
  %t776 = load { i64, [21 x i64] }, ptr %l412
  %t777 = extractvalue { i64, [21 x i64] } %t776, 0
  %t778 = icmp eq i64 %t777, 6
  br i1 %t778, label %bb137, label %bb138
bb137:
  %t780 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t781 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t780, i32 0, i32 0
  %t782 = load %"compiler/source:Span", ptr %t781
  store %"compiler/source:Span" %t782, ptr %l43
  %t784 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t785 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue" }, ptr %t784, i32 0, i32 1
  %t786 = load %"compiler/mir:Lvalue", ptr %t785
  store %"compiler/mir:Lvalue" %t786, ptr %l44
  br label %bb139
bb138:
  br label %bb148
bb139:
  %t788 = load ptr, ptr %l0, !tbaa !29
  %t789 = load i64, ptr %l2, !tbaa !24
  %t790 = load %"compiler/source:Span", ptr %l43
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t788, i64 %t789, %"compiler/source:Span" %t790)
  br label %bb140
bb140:
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t795 = load i64, ptr %l1, !tbaa !24
  %t796 = load %"compiler/mir:Lvalue", ptr %l44
  %t800 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t794, i64 %t795, %"compiler/mir:Lvalue" %t796)
  store { %"compiler/eval:Ptr", i32 } %t800, ptr %l422
  br label %bb141
bb141:
  %t801 = load { %"compiler/eval:Ptr", i32 }, ptr %l422
  store { %"compiler/eval:Ptr", i32 } %t801, ptr %l45
  %t802 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l45, i32 0, i32 0
  %t803 = load %"compiler/eval:Ptr", ptr %t802
  store %"compiler/eval:Ptr" %t803, ptr %l46
  %t805 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l45, i32 0, i32 1
  %t806 = load i32, ptr %t805, !tbaa !23
  store i32 %t806, ptr %l47, !tbaa !23
  %t808 = load ptr, ptr %l0, !tbaa !29
  %t810 = getelementptr %"compiler/eval:Machine", ptr %t808, i32 0, i32 59
  %t812 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t810)
  store i64 %t812, ptr %l427
  br label %bb142
bb142:
  %t813 = load i64, ptr %l427, !tbaa !24
  store i64 %t813, ptr %l48, !tbaa !24
  %t814 = load ptr, ptr %l0, !tbaa !29
  %t815 = load %"compiler/eval:Ptr", ptr %l46
  %t816 = load i32, ptr %l47, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereleaseHeld(ptr %v0, ptr %t814, %"compiler/eval:Ptr" %t815, i32 %t816)
  br label %bb143
bb143:
  %t820 = load ptr, ptr %l0, !tbaa !29
  %t822 = getelementptr %"compiler/eval:Machine", ptr %t820, i32 0, i32 59
  %t824 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t822)
  store i64 %t824, ptr %l433
  br label %bb144
bb144:
  %t825 = load i64, ptr %l48, !tbaa !24
  %t826 = load i64, ptr %l433, !tbaa !24
  %t828 = icmp sgt i64 %t826, %t825
  br i1 %t828, label %bb145, label %bb146
bb145:
  %t830 = load ptr, ptr %l0, !tbaa !29
  %t832 = getelementptr %"compiler/eval:Machine", ptr %t830, i32 0, i32 55
  %t833 = load { i64, ptr }, ptr %t832, !tbaa !27
  store { i64, ptr } %t833, ptr %l437, !tbaa !27
  %t834 = load i64, ptr %l1, !tbaa !24
  %t836 = getelementptr { i64, ptr }, ptr %l437, i32 0, i32 1
  %t837 = load ptr, ptr %t836, !tbaa !27
  %t838 = getelementptr %"compiler/eval:frame", ptr %t837, i64 %t834
  %t839 = getelementptr %"compiler/eval:frame", ptr %t838, i32 0, i32 10
  store i1 true, ptr %t839, !tbaa !21
  br label %ret
bb146:
  br label %bb147
bb147:
  br label %bb247
bb148:
  call void @llvm.memmove.p0.p0.i64(ptr %l439, ptr %l6, i64 176, i1 false)
  %t840 = load { i64, [21 x i64] }, ptr %l439
  %t841 = extractvalue { i64, [21 x i64] } %t840, 0
  %t842 = icmp eq i64 %t841, 7
  br i1 %t842, label %bb149, label %bb150
bb149:
  %t844 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t845 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t844, i32 0, i32 0
  %t846 = load %"compiler/source:Span", ptr %t845
  store %"compiler/source:Span" %t846, ptr %l49
  %t848 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t849 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t848, i32 0, i32 1
  %t850 = load i32, ptr %t849
  store i32 %t850, ptr %l50, !tbaa !23
  %t852 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t853 = getelementptr { %"compiler/source:Span", i32, %"compiler/mir:Lvalue" }, ptr %t852, i32 0, i32 2
  %t854 = load %"compiler/mir:Lvalue", ptr %t853
  store %"compiler/mir:Lvalue" %t854, ptr %l51
  br label %bb151
bb150:
  br label %bb161
bb151:
  %t856 = load ptr, ptr %l0, !tbaa !29
  %t857 = load i64, ptr %l2, !tbaa !24
  %t858 = load %"compiler/source:Span", ptr %l49
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t856, i64 %t857, %"compiler/source:Span" %t858)
  br label %bb152
bb152:
  %t862 = load ptr, ptr %l0, !tbaa !29
  %t863 = load i64, ptr %l1, !tbaa !24
  %t864 = load %"compiler/mir:Lvalue", ptr %l51
  %t868 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t862, i64 %t863, %"compiler/mir:Lvalue" %t864)
  store { %"compiler/eval:Ptr", i32 } %t868, ptr %l450
  br label %bb153
bb153:
  %t869 = load { %"compiler/eval:Ptr", i32 }, ptr %l450
  store { %"compiler/eval:Ptr", i32 } %t869, ptr %l52
  %t870 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l52, i32 0, i32 0
  %t871 = load %"compiler/eval:Ptr", ptr %t870
  store %"compiler/eval:Ptr" %t871, ptr %l53
  %t873 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l52, i32 0, i32 1
  %t874 = load i32, ptr %t873, !tbaa !23
  store i32 %t874, ptr %l54, !tbaa !23
  %t876 = load ptr, ptr %l0, !tbaa !29
  %t878 = getelementptr %"compiler/eval:Machine", ptr %t876, i32 0, i32 59
  %t880 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t878)
  store i64 %t880, ptr %l455
  br label %bb154
bb154:
  %t881 = load i64, ptr %l455, !tbaa !24
  store i64 %t881, ptr %l55, !tbaa !24
  %t882 = load ptr, ptr %l0, !tbaa !29
  store ptr %t882, ptr %l456, !tbaa !29
  %t883 = load ptr, ptr %l0, !tbaa !29
  %t884 = load i64, ptr %l1, !tbaa !24
  %t885 = load i32, ptr %l50, !tbaa !23
  %t889 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eheldScope(ptr %v0, ptr %t883, i64 %t884, i32 %t885)
  store i64 %t889, ptr %l460
  br label %bb155
bb155:
  %t890 = load %"compiler/eval:Ptr", ptr %l53
  %t891 = load i32, ptr %l54, !tbaa !23
  %t892 = load ptr, ptr %l456, !tbaa !29
  %t893 = load i64, ptr %l460, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2esettle(ptr %v0, ptr %t892, i64 %t893, %"compiler/eval:Ptr" %t890, i32 %t891)
  br label %bb156
bb156:
  %t896 = load ptr, ptr %l0, !tbaa !29
  %t898 = getelementptr %"compiler/eval:Machine", ptr %t896, i32 0, i32 59
  %t900 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t898)
  store i64 %t900, ptr %l465
  br label %bb157
bb157:
  %t901 = load i64, ptr %l55, !tbaa !24
  %t902 = load i64, ptr %l465, !tbaa !24
  %t904 = icmp sgt i64 %t902, %t901
  br i1 %t904, label %bb158, label %bb159
bb158:
  %t906 = load ptr, ptr %l0, !tbaa !29
  %t908 = getelementptr %"compiler/eval:Machine", ptr %t906, i32 0, i32 55
  %t909 = load { i64, ptr }, ptr %t908, !tbaa !27
  store { i64, ptr } %t909, ptr %l469, !tbaa !27
  %t910 = load i64, ptr %l1, !tbaa !24
  %t912 = getelementptr { i64, ptr }, ptr %l469, i32 0, i32 1
  %t913 = load ptr, ptr %t912, !tbaa !27
  %t914 = getelementptr %"compiler/eval:frame", ptr %t913, i64 %t910
  %t915 = getelementptr %"compiler/eval:frame", ptr %t914, i32 0, i32 10
  store i1 true, ptr %t915, !tbaa !21
  br label %ret
bb159:
  br label %bb160
bb160:
  br label %bb247
bb161:
  call void @llvm.memmove.p0.p0.i64(ptr %l471, ptr %l6, i64 176, i1 false)
  %t916 = load { i64, [21 x i64] }, ptr %l471
  %t917 = extractvalue { i64, [21 x i64] } %t916, 0
  %t918 = icmp eq i64 %t917, 8
  br i1 %t918, label %bb162, label %bb163
bb162:
  %t920 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t921 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t920, i32 0, i32 0
  %t922 = load %"compiler/source:Span", ptr %t921
  store %"compiler/source:Span" %t922, ptr %l56
  %t924 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t925 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t924, i32 0, i32 1
  %t926 = load { i64, [1 x i64] }, ptr %t925
  store { i64, [1 x i64] } %t926, ptr %l57
  %t928 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t929 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t928, i32 0, i32 2
  %t930 = load i32, ptr %t929, !range !{i32 0, i32 8}
  store i32 %t930, ptr %l58
  %t932 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t933 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t932, i32 0, i32 3
  %t934 = load { i64, [4 x i64] }, ptr %t933
  store { i64, [4 x i64] } %t934, ptr %l59
  br label %bb164
bb163:
  br label %bb167
bb164:
  %t936 = load ptr, ptr %l0, !tbaa !29
  %t937 = load i64, ptr %l2, !tbaa !24
  %t938 = load %"compiler/source:Span", ptr %l56
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t936, i64 %t937, %"compiler/source:Span" %t938)
  br label %bb165
bb165:
  %t942 = load ptr, ptr %l0, !tbaa !29
  %t943 = load i64, ptr %l1, !tbaa !24
  %t944 = load { i64, [1 x i64] }, ptr %l57
  %t945 = load i32, ptr %l58, !range !{i32 0, i32 8}
  %t946 = load { i64, [4 x i64] }, ptr %l59
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrite(ptr %v0, ptr %t942, i64 %t943, { i64, [1 x i64] } %t944, i32 %t945, { i64, [4 x i64] } %t946)
  br label %bb166
bb166:
  br label %bb247
bb167:
  call void @llvm.memmove.p0.p0.i64(ptr %l485, ptr %l6, i64 176, i1 false)
  %t952 = load { i64, [21 x i64] }, ptr %l485
  %t953 = extractvalue { i64, [21 x i64] } %t952, 0
  %t954 = icmp eq i64 %t953, 12
  br i1 %t954, label %bb168, label %bb169
bb168:
  %t956 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t957 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t956, i32 0, i32 0
  %t958 = load %"compiler/source:Span", ptr %t957
  store %"compiler/source:Span" %t958, ptr %l60
  %t960 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t961 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t960, i32 0, i32 1
  %t962 = load { i64, [4 x i64] }, ptr %t961
  store { i64, [4 x i64] } %t962, ptr %l61
  br label %bb170
bb169:
  br label %bb181
bb170:
  %t964 = load ptr, ptr %l0, !tbaa !29
  %t965 = load i64, ptr %l2, !tbaa !24
  %t966 = load %"compiler/source:Span", ptr %l60
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t964, i64 %t965, %"compiler/source:Span" %t966)
  br label %bb171
bb171:
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t972 = getelementptr %"compiler/eval:Machine", ptr %t970, i32 0, i32 10
  %t974 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t972)
  store i64 %t974, ptr %l494
  br label %bb172
bb172:
  %t975 = load i64, ptr %l494, !tbaa !24
  %t976 = icmp eq i64 %t975, 0
  br i1 %t976, label %bb173, label %bb174
bb173:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t979 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t980 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t980, ptr %t978, { i64, ptr } %t979)
  br label %bb175
bb174:
  br label %bb176
bb175:
  br label %ret
bb176:
  %t983 = load ptr, ptr %l0, !tbaa !29
  %t985 = getelementptr %"compiler/eval:Machine", ptr %t983, i32 0, i32 10
  store ptr %t985, ptr %l499, !tbaa !29
  %t986 = load ptr, ptr %l0, !tbaa !29
  %t988 = getelementptr %"compiler/eval:Machine", ptr %t986, i32 0, i32 10
  %t990 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t988)
  store i64 %t990, ptr %l502
  br label %bb177
bb177:
  %t991 = load i64, ptr %l502, !tbaa !24
  %t992 = sub i64 %t991, 1
  store i64 %t992, ptr %l503, !tbaa !24
  %t993 = load ptr, ptr %l0, !tbaa !29
  store ptr %t993, ptr %l504, !tbaa !29
  %t994 = load ptr, ptr %l0, !tbaa !29
  %t995 = load i64, ptr %l1, !tbaa !24
  %t996 = load { i64, [4 x i64] }, ptr %l61
  %t1000 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t994, i64 %t995, { i64, [4 x i64] } %t996, i64 1)
  store %"compiler/eval:Ptr" %t1000, ptr %l508
  br label %bb178
bb178:
  %t1001 = load ptr, ptr %l504, !tbaa !29
  %t1002 = load %"compiler/eval:Ptr", ptr %l508
  %t1003 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t1001, %"compiler/eval:Ptr" %t1002)
  store %"compiler/eval:Ptr" %t1003, ptr %l509
  br label %bb179
bb179:
  %t1004 = load ptr, ptr %l499, !tbaa !29
  %t1005 = load i64, ptr %l503, !tbaa !24
  %t1006 = load %"compiler/eval:Ptr", ptr %l509
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eSetAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1004, i64 %t1005, %"compiler/eval:Ptr" %t1006)
  br label %bb180
bb180:
  br label %bb247
bb181:
  call void @llvm.memmove.p0.p0.i64(ptr %l510, ptr %l6, i64 176, i1 false)
  %t1007 = load { i64, [21 x i64] }, ptr %l510
  %t1008 = extractvalue { i64, [21 x i64] } %t1007, 0
  %t1009 = icmp eq i64 %t1008, 14
  br i1 %t1009, label %bb182, label %bb183
bb182:
  %t1011 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1012 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t1011, i32 0, i32 0
  %t1013 = load %"compiler/source:Span", ptr %t1012
  store %"compiler/source:Span" %t1013, ptr %l62
  %t1015 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1016 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t1015, i32 0, i32 1
  %t1017 = load { i64, [4 x i64] }, ptr %t1016
  store { i64, [4 x i64] } %t1017, ptr %l63
  %t1019 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1020 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t1019, i32 0, i32 2
  %t1021 = load { i64, [4 x i64] }, ptr %t1020
  store { i64, [4 x i64] } %t1021, ptr %l64
  br label %bb184
bb183:
  br label %bb194
bb184:
  %t1023 = load ptr, ptr %l0, !tbaa !29
  %t1024 = load i64, ptr %l2, !tbaa !24
  %t1025 = load %"compiler/source:Span", ptr %l62
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1023, i64 %t1024, %"compiler/source:Span" %t1025)
  br label %bb185
bb185:
  %t1029 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1029, ptr %l518, !tbaa !29
  %t1030 = load ptr, ptr %l0, !tbaa !29
  %t1031 = load i64, ptr %l1, !tbaa !24
  %t1032 = load { i64, [4 x i64] }, ptr %l64
  %t1036 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t1030, i64 %t1031, { i64, [4 x i64] } %t1032)
  store i64 %t1036, ptr %l522
  br label %bb186
bb186:
  %t1037 = load i32, ptr @G_2ecompiler_2fmir_2eI64T, !tbaa !23
  %t1038 = load ptr, ptr %l518, !tbaa !29
  %t1039 = load i64, ptr %l522, !tbaa !24
  %t1041 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t1038, i64 %t1039, i32 %t1037)
  store i64 %t1041, ptr %l524
  br label %bb187
bb187:
  %t1042 = load i64, ptr %l524, !tbaa !24
  store i64 %t1042, ptr %l65, !tbaa !24
  %t1043 = load ptr, ptr %l0, !tbaa !29
  %t1044 = load i64, ptr %l1, !tbaa !24
  %t1045 = load { i64, [4 x i64] }, ptr %l63
  %t1049 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t1043, i64 %t1044, { i64, [4 x i64] } %t1045, i64 1)
  store %"compiler/eval:Ptr" %t1049, ptr %l528
  br label %bb188
bb188:
  %t1050 = load %"compiler/eval:Ptr", ptr %l528
  store %"compiler/eval:Ptr" %t1050, ptr %l66
  %t1051 = load ptr, ptr %l0, !tbaa !29
  %t1053 = getelementptr %"compiler/eval:Machine", ptr %t1051, i32 0, i32 19
  %t1054 = load i1, ptr %t1053, !tbaa !21
  %t1056 = xor i1 %t1054, true
  br i1 %t1056, label %bb189, label %bb190
bb189:
  %t1058 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1058, ptr %l532, !tbaa !29
  %t1059 = load %"compiler/eval:Ptr", ptr %l66
  store %"compiler/eval:Ptr" %t1059, ptr %l533
  %t1060 = load ptr, ptr %l0, !tbaa !29
  %t1061 = load i64, ptr %l1, !tbaa !24
  %t1062 = load { i64, [4 x i64] }, ptr %l63
  %t1066 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1060, i64 %t1061, { i64, [4 x i64] } %t1062)
  store i32 %t1066, ptr %l537
  br label %bb191
bb190:
  br label %bb193
bb191:
  %t1067 = load i64, ptr %l65, !tbaa !24
  %t1068 = load ptr, ptr %l532, !tbaa !29
  %t1069 = load %"compiler/eval:Ptr", ptr %l533
  %t1070 = load i32, ptr %l537, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholders(ptr %v0, ptr %t1068, %"compiler/eval:Ptr" %t1069, i32 %t1070, i64 %t1067)
  br label %bb192
bb192:
  br label %bb193
bb193:
  br label %bb247
bb194:
  call void @llvm.memmove.p0.p0.i64(ptr %l539, ptr %l6, i64 176, i1 false)
  %t1072 = load { i64, [21 x i64] }, ptr %l539
  %t1073 = extractvalue { i64, [21 x i64] } %t1072, 0
  %t1074 = icmp eq i64 %t1073, 13
  br i1 %t1074, label %bb195, label %bb196
bb195:
  %t1076 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1077 = getelementptr { %"compiler/source:Span" }, ptr %t1076, i32 0, i32 0
  %t1078 = load %"compiler/source:Span", ptr %t1077
  store %"compiler/source:Span" %t1078, ptr %l67
  br label %bb197
bb196:
  br label %bb212
bb197:
  %t1080 = load ptr, ptr %l0, !tbaa !29
  %t1081 = load i64, ptr %l2, !tbaa !24
  %t1082 = load %"compiler/source:Span", ptr %l67
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1080, i64 %t1081, %"compiler/source:Span" %t1082)
  br label %bb198
bb198:
  %t1086 = load ptr, ptr %l0, !tbaa !29
  %t1088 = getelementptr %"compiler/eval:Machine", ptr %t1086, i32 0, i32 9
  %t1090 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t1088)
  %t1091 = extractvalue { i32, i64 } %t1090, 1
  %t1092 = extractvalue { i32, i64 } %t1090, 0
  store i32 %t1092, ptr %l549
  %t1093 = icmp ne i32 %t1092, 0
  br i1 %t1093, label %bb200, label %ok.1094, !prof !99
ok.1094:
  store i64 %t1091, ptr %l548
  br label %bb199
bb199:
  %t1095 = load i64, ptr %l548, !tbaa !24
  store i64 %t1095, ptr %l545, !tbaa !24
  br label %bb203
bb200:
  br label %bb201
bb201:
  %t1096 = load ptr, ptr %l0, !tbaa !29
  %t1097 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t1098 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1098, ptr %t1096, { i64, ptr } %t1097)
  br label %bb202
bb202:
  br label %ret
bb203:
  %t1101 = load i64, ptr %l545, !tbaa !24
  store i64 %t1101, ptr %l68, !tbaa !24
  %t1102 = load ptr, ptr %l0, !tbaa !29
  %t1104 = getelementptr %"compiler/eval:Machine", ptr %t1102, i32 0, i32 10
  store ptr %t1104, ptr %l553, !tbaa !29
  %t1105 = load ptr, ptr %l0, !tbaa !29
  %t1107 = getelementptr %"compiler/eval:Machine", ptr %t1105, i32 0, i32 10
  %t1109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1107)
  store i64 %t1109, ptr %l556
  br label %bb204
bb204:
  %t1110 = load i64, ptr %l556, !tbaa !24
  %t1111 = sub i64 %t1110, 1
  %t1112 = load ptr, ptr %l553, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eTruncate_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1112, i64 %t1111)
  br label %bb205
bb205:
  %t1114 = load ptr, ptr %l0, !tbaa !29
  %t1116 = getelementptr %"compiler/eval:Machine", ptr %t1114, i32 0, i32 59
  %t1118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1116)
  store i64 %t1118, ptr %l560
  br label %bb206
bb206:
  %t1119 = load i64, ptr %l560, !tbaa !24
  store i64 %t1119, ptr %l69, !tbaa !24
  %t1120 = load ptr, ptr %l0, !tbaa !29
  %t1121 = load i64, ptr %l68, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %t1120, i64 %t1121)
  br label %bb207
bb207:
  %t1124 = load ptr, ptr %l0, !tbaa !29
  %t1126 = getelementptr %"compiler/eval:Machine", ptr %t1124, i32 0, i32 59
  %t1128 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t1126)
  store i64 %t1128, ptr %l565
  br label %bb208
bb208:
  %t1129 = load i64, ptr %l69, !tbaa !24
  %t1130 = load i64, ptr %l565, !tbaa !24
  %t1132 = icmp sgt i64 %t1130, %t1129
  br i1 %t1132, label %bb209, label %bb210
bb209:
  %t1134 = load ptr, ptr %l0, !tbaa !29
  %t1136 = getelementptr %"compiler/eval:Machine", ptr %t1134, i32 0, i32 55
  %t1137 = load { i64, ptr }, ptr %t1136, !tbaa !27
  store { i64, ptr } %t1137, ptr %l569, !tbaa !27
  %t1138 = load i64, ptr %l1, !tbaa !24
  %t1140 = getelementptr { i64, ptr }, ptr %l569, i32 0, i32 1
  %t1141 = load ptr, ptr %t1140, !tbaa !27
  %t1142 = getelementptr %"compiler/eval:frame", ptr %t1141, i64 %t1138
  %t1143 = getelementptr %"compiler/eval:frame", ptr %t1142, i32 0, i32 10
  store i1 true, ptr %t1143, !tbaa !21
  br label %ret
bb210:
  br label %bb211
bb211:
  br label %bb247
bb212:
  call void @llvm.memmove.p0.p0.i64(ptr %l571, ptr %l6, i64 176, i1 false)
  %t1144 = load { i64, [21 x i64] }, ptr %l571
  %t1145 = extractvalue { i64, [21 x i64] } %t1144, 0
  %t1146 = icmp eq i64 %t1145, 9
  br i1 %t1146, label %bb213, label %bb214
bb213:
  %t1148 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1149 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1148, i32 0, i32 0
  %t1150 = load %"compiler/source:Span", ptr %t1149
  store %"compiler/source:Span" %t1150, ptr %l70
  %t1152 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1153 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1152, i32 0, i32 1
  %t1154 = load %"compiler/mir:Lvalue", ptr %t1153
  store %"compiler/mir:Lvalue" %t1154, ptr %l71
  %t1156 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1157 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1156, i32 0, i32 2
  %t1158 = load %"compiler/mir:Lvalue", ptr %t1157
  store %"compiler/mir:Lvalue" %t1158, ptr %l72
  %t1160 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1161 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", %"compiler/mir:Lvalue", { i64, [4 x i64] } }, ptr %t1160, i32 0, i32 3
  %t1162 = load { i64, [4 x i64] }, ptr %t1161
  store { i64, [4 x i64] } %t1162, ptr %l73
  br label %bb215
bb214:
  br label %bb240
bb215:
  %t1164 = load ptr, ptr %l0, !tbaa !29
  %t1165 = load i64, ptr %l2, !tbaa !24
  %t1166 = load %"compiler/source:Span", ptr %l70
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1164, i64 %t1165, %"compiler/source:Span" %t1166)
  br label %bb216
bb216:
  %t1170 = load ptr, ptr %l0, !tbaa !29
  %t1171 = load i64, ptr %l1, !tbaa !24
  %t1172 = load %"compiler/mir:Lvalue", ptr %l71
  %t1176 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1170, i64 %t1171, %"compiler/mir:Lvalue" %t1172)
  store { %"compiler/eval:Ptr", i32 } %t1176, ptr %l583
  br label %bb217
bb217:
  %t1177 = load { %"compiler/eval:Ptr", i32 }, ptr %l583
  store { %"compiler/eval:Ptr", i32 } %t1177, ptr %l74
  %t1178 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l74, i32 0, i32 0
  %t1179 = load %"compiler/eval:Ptr", ptr %t1178
  store %"compiler/eval:Ptr" %t1179, ptr %l75
  %t1181 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l74, i32 0, i32 1
  %t1182 = load i32, ptr %t1181, !tbaa !23
  store i32 %t1182, ptr %l76, !tbaa !23
  %t1184 = load ptr, ptr %l0, !tbaa !29
  %t1185 = load i64, ptr %l1, !tbaa !24
  %t1186 = load %"compiler/mir:Lvalue", ptr %l72
  %t1190 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1184, i64 %t1185, %"compiler/mir:Lvalue" %t1186)
  store { %"compiler/eval:Ptr", i32 } %t1190, ptr %l589
  br label %bb218
bb218:
  %t1191 = load { %"compiler/eval:Ptr", i32 }, ptr %l589
  store { %"compiler/eval:Ptr", i32 } %t1191, ptr %l77
  %t1192 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l77, i32 0, i32 0
  %t1193 = load %"compiler/eval:Ptr", ptr %t1192
  store %"compiler/eval:Ptr" %t1193, ptr %l78
  %t1195 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l77, i32 0, i32 1
  %t1196 = load i32, ptr %t1195, !tbaa !23
  store i32 %t1196, ptr %l79, !tbaa !23
  %t1198 = load ptr, ptr %l0, !tbaa !29
  %t1199 = load %"compiler/eval:Ptr", ptr %l75
  %t1200 = load i32, ptr %l76, !tbaa !23
  %t1204 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1198, %"compiler/eval:Ptr" %t1199, i32 %t1200)
  store { %"compiler/eval:Ptr", i64 } %t1204, ptr %l595
  br label %bb219
bb219:
  %t1205 = load { %"compiler/eval:Ptr", i64 }, ptr %l595
  store { %"compiler/eval:Ptr", i64 } %t1205, ptr %l80
  %t1206 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l80, i32 0, i32 0
  %t1207 = load %"compiler/eval:Ptr", ptr %t1206
  store %"compiler/eval:Ptr" %t1207, ptr %l81
  %t1209 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l80, i32 0, i32 1
  %t1210 = load i64, ptr %t1209, !tbaa !24
  store i64 %t1210, ptr %l82, !tbaa !24
  %t1212 = load ptr, ptr %l0, !tbaa !29
  %t1213 = load %"compiler/eval:Ptr", ptr %l78
  %t1214 = load i32, ptr %l79, !tbaa !23
  %t1218 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1212, %"compiler/eval:Ptr" %t1213, i32 %t1214)
  store { %"compiler/eval:Ptr", i64 } %t1218, ptr %l601
  br label %bb220
bb220:
  %t1219 = load { %"compiler/eval:Ptr", i64 }, ptr %l601
  store { %"compiler/eval:Ptr", i64 } %t1219, ptr %l83
  %t1220 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l83, i32 0, i32 0
  %t1221 = load %"compiler/eval:Ptr", ptr %t1220
  store %"compiler/eval:Ptr" %t1221, ptr %l84
  %t1223 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l83, i32 0, i32 1
  %t1224 = load i64, ptr %t1223, !tbaa !24
  store i64 %t1224, ptr %l85, !tbaa !24
  %t1226 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1226, ptr %l604, !tbaa !29
  %t1227 = load ptr, ptr %l0, !tbaa !29
  %t1228 = load i64, ptr %l1, !tbaa !24
  %t1229 = load { i64, [4 x i64] }, ptr %l73
  %t1233 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t1227, i64 %t1228, { i64, [4 x i64] } %t1229)
  store i64 %t1233, ptr %l608
  br label %bb221
bb221:
  %t1234 = load ptr, ptr %l0, !tbaa !29
  %t1235 = load i64, ptr %l1, !tbaa !24
  %t1236 = load { i64, [4 x i64] }, ptr %l73
  %t1240 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1234, i64 %t1235, { i64, [4 x i64] } %t1236)
  store i32 %t1240, ptr %l612
  br label %bb222
bb222:
  %t1241 = load ptr, ptr %l604, !tbaa !29
  %t1242 = load i64, ptr %l608, !tbaa !24
  %t1243 = load i32, ptr %l612, !tbaa !23
  %t1244 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t1241, i64 %t1242, i32 %t1243)
  store i64 %t1244, ptr %l613
  br label %bb223
bb223:
  %t1245 = load i64, ptr %l613, !tbaa !24
  store i64 %t1245, ptr %l86, !tbaa !24
  %t1246 = load ptr, ptr %l0, !tbaa !29
  %t1248 = getelementptr %"compiler/eval:Machine", ptr %t1246, i32 0, i32 19
  %t1249 = load i1, ptr %t1248, !tbaa !21
  br i1 %t1249, label %bb224, label %bb225
bb224:
  br label %ret
bb225:
  br label %bb226
bb226:
  %t1251 = load i64, ptr %l86, !tbaa !24
  %t1253 = icmp slt i64 %t1251, 0
  br i1 %t1253, label %bb227, label %bb228
bb227:
  store i1 true, ptr %l618, !tbaa !21
  br label %bb229
bb228:
  %t1255 = load i64, ptr %l86, !tbaa !24
  %t1256 = load i64, ptr %l82, !tbaa !24
  %t1259 = icmp sgt i64 %t1255, %t1256
  store i1 %t1259, ptr %l618, !tbaa !21
  br label %bb229
bb229:
  %t1261 = load i1, ptr %l618, !tbaa !21
  br i1 %t1261, label %bb230, label %bb231
bb230:
  store i1 true, ptr %l622, !tbaa !21
  br label %bb232
bb231:
  %t1262 = load i64, ptr %l86, !tbaa !24
  %t1263 = load i64, ptr %l85, !tbaa !24
  %t1266 = icmp sgt i64 %t1262, %t1263
  store i1 %t1266, ptr %l622, !tbaa !21
  br label %bb232
bb232:
  %t1268 = load i1, ptr %l622, !tbaa !21
  br i1 %t1268, label %bb233, label %bb234
bb233:
  %t1269 = load ptr, ptr %l0, !tbaa !29
  %t1270 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyOutside, !tbaa !27
  %t1271 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1271, ptr %t1269, { i64, ptr } %t1270)
  br label %bb235
bb234:
  br label %bb236
bb235:
  br label %ret
bb236:
  %t1274 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1274, ptr %l628, !tbaa !29
  %t1275 = load %"compiler/eval:Ptr", ptr %l81
  store %"compiler/eval:Ptr" %t1275, ptr %l629
  %t1276 = load %"compiler/eval:Ptr", ptr %l84
  store %"compiler/eval:Ptr" %t1276, ptr %l630
  %t1277 = load i64, ptr %l86, !tbaa !24
  store i64 %t1277, ptr %l631, !tbaa !24
  %t1278 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1278, ptr %l632, !tbaa !29
  %t1279 = load ptr, ptr %l0, !tbaa !29
  %t1280 = load i32, ptr %l76, !tbaa !23
  %t1283 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t1279, i32 %t1280)
  store i32 %t1283, ptr %l635
  br label %bb237
bb237:
  %t1284 = load ptr, ptr %l632, !tbaa !29
  %t1285 = load i32, ptr %l635, !tbaa !23
  %t1286 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t1284, i32 %t1285)
  store i64 %t1286, ptr %l636
  br label %bb238
bb238:
  %t1287 = load i64, ptr %l631, !tbaa !24
  %t1288 = load i64, ptr %l636, !tbaa !24
  %t1289 = mul i64 %t1287, %t1288
  %t1290 = load ptr, ptr %l628, !tbaa !29
  %t1291 = load %"compiler/eval:Ptr", ptr %l629
  %t1292 = load %"compiler/eval:Ptr", ptr %l630
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t1290, %"compiler/eval:Ptr" %t1291, %"compiler/eval:Ptr" %t1292, i64 %t1289)
  br label %bb239
bb239:
  br label %bb247
bb240:
  call void @llvm.memmove.p0.p0.i64(ptr %l638, ptr %l6, i64 176, i1 false)
  %t1294 = load { i64, [21 x i64] }, ptr %l638
  %t1295 = extractvalue { i64, [21 x i64] } %t1294, 0
  %t1296 = icmp eq i64 %t1295, 10
  br i1 %t1296, label %bb241, label %bb242
bb241:
  %t1298 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1299 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1298, i32 0, i32 0
  %t1300 = load %"compiler/source:Span", ptr %t1299
  store %"compiler/source:Span" %t1300, ptr %l87
  %t1302 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1303 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1302, i32 0, i32 1
  %t1304 = load i32, ptr %t1303
  store i32 %t1304, ptr %l88, !tbaa !23
  %t1306 = getelementptr { i64, [21 x i64] }, ptr %l6, i32 0, i32 1
  %t1307 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t1306, i32 0, i32 2
  %t1308 = load i32, ptr %t1307
  store i32 %t1308, ptr %l89, !tbaa !23
  br label %bb243
bb242:
  br label %bb246
bb243:
  %t1310 = load ptr, ptr %l0, !tbaa !29
  %t1311 = load i64, ptr %l2, !tbaa !24
  %t1312 = load %"compiler/source:Span", ptr %l87
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1310, i64 %t1311, %"compiler/source:Span" %t1312)
  br label %bb244
bb244:
  %t1316 = load ptr, ptr %l0, !tbaa !29
  %t1317 = load i64, ptr %l1, !tbaa !24
  %t1318 = load i32, ptr %l88, !tbaa !23
  %t1319 = load i32, ptr %l89, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2espawn(ptr %v0, ptr %t1316, i64 %t1317, i32 %t1318, i32 %t1319)
  br label %bb245
bb245:
  br label %bb247
bb246:
  call void @__olang_check_failed(ptr @olang_loc_7f284a3be8281e29_2098fbd9ac092a4d)
  unreachable
bb247:
  %t1324 = load ptr, ptr %l0, !tbaa !29
  %t1326 = getelementptr %"compiler/eval:Machine", ptr %t1324, i32 0, i32 19
  %t1327 = load i1, ptr %t1326, !tbaa !21
  %t1329 = xor i1 %t1327, true
  br i1 %t1329, label %bb248, label %bb249
bb248:
  %t1331 = load ptr, ptr %l0, !tbaa !29
  %t1333 = getelementptr %"compiler/eval:Machine", ptr %t1331, i32 0, i32 55
  %t1334 = load { i64, ptr }, ptr %t1333, !tbaa !27
  store { i64, ptr } %t1334, ptr %l654, !tbaa !27
  %t1335 = load i64, ptr %l1, !tbaa !24
  store i64 %t1335, ptr %l655, !tbaa !24
  %t1336 = load i64, ptr %l655, !tbaa !24
  %t1337 = getelementptr { i64, ptr }, ptr %l654, i32 0, i32 1
  %t1338 = load ptr, ptr %t1337, !tbaa !27
  %t1339 = getelementptr %"compiler/eval:frame", ptr %t1338, i64 %t1336
  %t1340 = getelementptr %"compiler/eval:frame", ptr %t1339, i32 0, i32 2
  %t1341 = load i64, ptr %t1340, !tbaa !24
  %t1343 = add i64 %t1341, 1
  %t1345 = load i64, ptr %l655, !tbaa !24
  %t1346 = getelementptr { i64, ptr }, ptr %l654, i32 0, i32 1
  %t1347 = load ptr, ptr %t1346, !tbaa !27
  %t1348 = getelementptr %"compiler/eval:frame", ptr %t1347, i64 %t1345
  %t1349 = getelementptr %"compiler/eval:frame", ptr %t1348, i32 0, i32 2
  store i64 %t1343, ptr %t1349, !tbaa !24
  br label %bb250
bb249:
  br label %bb250
bb250:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca i64
  %l13 = alloca i64
  %l16 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  %t7 = load i64, ptr %l5, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  store ptr %t11, ptr %l8, !tbaa !29
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load %"compiler/eval:Ptr", ptr %l1
  %t16 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t12, %"compiler/eval:Ptr" %t13, i64 4)
  store i64 %t16, ptr %l11
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t17 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = load i64, ptr %l11, !tbaa !24
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t18, i64 %t19, i32 %t17)
  store i64 %t21, ptr %l13
  br label %bb5
bb5:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %rv
  br label %ret
bb6:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load %"compiler/eval:Ptr", ptr %l1
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t23, %"compiler/eval:Ptr" %t24, i64 8)
  store i64 %t27, ptr %l16
  br label %bb7
bb7:
  %t28 = load i64, ptr %l16, !tbaa !24
  store i64 %t28, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etoTargets(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca %"compiler/eval:task"
  %l6 = alloca ptr
  %l7 = alloca %"compiler/mir:Task"
  %l8 = alloca { { i64, ptr }, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca %"compiler/eval:Ptr"
  %l19 = alloca i32
  %l20 = alloca %"compiler/eval:Ptr"
  %l25 = alloca %"compiler/eval:task"
  %l29 = alloca ptr
  %l33 = alloca %"compiler/mir:Task"
  %l39 = alloca { { i64, ptr }, i64 }
  %l48 = alloca %"compiler/eval:Ptr"
  %l53 = alloca i64
  %l56 = alloca i64
  %l74 = alloca ptr
  %l80 = alloca %"compiler/eval:Ptr"
  %l81 = alloca %"compiler/eval:Ptr"
  %l84 = alloca i32
  %l89 = alloca i32
  %l92 = alloca %"compiler/eval:Ptr"
  %l94 = alloca i64
  %l95 = alloca i64
  %l99 = alloca i64
  %l101 = alloca %"compiler/eval:Ptr"
  %l106 = alloca i1
  %l108 = alloca ptr
  %l112 = alloca i32
  %l113 = alloca i32
  %l116 = alloca i1
  %l118 = alloca ptr
  %l122 = alloca i32
  %l123 = alloca i32
  %l125 = alloca ptr
  %l143 = alloca %"compiler/eval:Ptr"
  %l144 = alloca i64
  %l150 = alloca ptr
  %l151 = alloca %"compiler/eval:Ptr"
  %l152 = alloca %"compiler/eval:Ptr"
  %l155 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 53
  %t7 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t3, i64 %a2)
  store %"compiler/eval:task" %t7, ptr %l25
  br label %bb1
bb1:
  %t8 = load %"compiler/eval:task", ptr %l25
  store %"compiler/eval:task" %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 22
  %t12 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t11, i64 %t13)
  store ptr %t16, ptr %l29
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l29, !tbaa !29
  store ptr %t17, ptr %l6, !tbaa !29
  %t18 = load ptr, ptr %l6, !tbaa !29
  %t20 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 16
  %t21 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t25 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t20, i64 %t22)
  store %"compiler/mir:Task" %t25, ptr %l33
  br label %bb3
bb3:
  %t26 = load %"compiler/mir:Task", ptr %l33
  store %"compiler/mir:Task" %t26, ptr %l7
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load ptr, ptr %l6, !tbaa !29
  %t29 = load %"compiler/mir:Task", ptr %l7
  %t30 = load i64, ptr %l1, !tbaa !24
  %t32 = sub i64 %t30, 1
  %t37 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v0, ptr %s0, ptr %t27, ptr %t28, %"compiler/mir:Task" %t29, i64 %t32)
  store { { i64, ptr }, i64 } %t37, ptr %l39
  br label %bb4
bb4:
  %t38 = load { { i64, ptr }, i64 }, ptr %l39
  store { { i64, ptr }, i64 } %t38, ptr %l8
  %t39 = getelementptr { { i64, ptr }, i64 }, ptr %l8, i32 0, i32 1
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l9, !tbaa !24
  %t42 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 3
  %t43 = getelementptr %"compiler/mir:Range", ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store i64 %t46, ptr %l10, !tbaa !24
  %t48 = load i64, ptr %l10, !tbaa !24
  %t50 = icmp eq i64 %t48, 0
  br i1 %t50, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l1, !tbaa !24
  %t58 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t52, i64 %t53, { i64, [4 x i64] } %a3, i64 1)
  store %"compiler/eval:Ptr" %t58, ptr %l48
  br label %bb8
bb8:
  %t59 = load %"compiler/eval:Ptr", ptr %l48
  store %"compiler/eval:Ptr" %t59, ptr %l11
  store i64 0, ptr %l12, !tbaa !24
  %t60 = load i64, ptr %l10, !tbaa !24
  store i64 %t60, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t62 = load i64, ptr %l13, !tbaa !24
  %t63 = load i64, ptr %l12, !tbaa !24
  %t66 = icmp sgt i64 %t62, %t63
  br i1 %t66, label %bb9, label %bb10
bb9:
  %t68 = load i64, ptr %l14, !tbaa !24
  %t70 = icmp sgt i64 %t68, 0
  br i1 %t70, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l53, !tbaa !24
  br label %bb14
bb11:
  %t72 = load i64, ptr %l13, !tbaa !24
  %t73 = load i64, ptr %l12, !tbaa !24
  %t76 = sub i64 %t72, %t73
  %t77 = load i64, ptr %l14, !tbaa !24
  %t80 = add i64 %t76, %t77
  %t82 = sub i64 %t80, 1
  %t83 = load i64, ptr %l14, !tbaa !24
  %t86 = sdiv i64 %t82, %t83
  store i64 %t86, ptr %l56, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb13
bb13:
  %t88 = load i64, ptr %l56, !tbaa !24
  store i64 %t88, ptr %l53, !tbaa !24
  br label %bb14
bb14:
  %t89 = load i64, ptr %l53, !tbaa !24
  store i64 %t89, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb15
bb15:
  store %olang.scope zeroinitializer, ptr %s3
  %t90 = load i64, ptr %l16, !tbaa !24
  %t91 = load i64, ptr %l15, !tbaa !24
  %t94 = icmp slt i64 %t90, %t91
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s3)
  br label %bb49
bb17:
  br label %bb18
bb18:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l16, !tbaa !24
  %t100 = load i64, ptr %l14, !tbaa !24
  %t103 = mul i64 %t99, %t100
  %t106 = add i64 %t98, %t103
  store i64 %t106, ptr %l17, !tbaa !24
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l74, !tbaa !29
  %t109 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 2
  %t110 = load i64, ptr %t109, !tbaa !24
  %t111 = load i64, ptr %l9, !tbaa !24
  %t112 = load i64, ptr %l17, !tbaa !24
  %t114 = mul i64 8, %t112
  %t117 = add i64 %t111, %t114
  %t120 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t110, i64 %t117)
  store %"compiler/eval:Ptr" %t120, ptr %l80
  br label %bb19
bb19:
  %t121 = load ptr, ptr %l74, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l80
  %t123 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122)
  store %"compiler/eval:Ptr" %t123, ptr %l81
  br label %bb20
bb20:
  %t124 = load %"compiler/eval:Ptr", ptr %l81
  store %"compiler/eval:Ptr" %t124, ptr %l18
  %t125 = load i64, ptr %l10, !tbaa !24
  %t127 = icmp eq i64 %t125, 1
  br i1 %t127, label %bb21, label %bb22
bb21:
  %t129 = load i32, ptr %l4, !tbaa !23
  store i32 %t129, ptr %l84, !tbaa !23
  br label %bb24
bb22:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = load i32, ptr %l4, !tbaa !23
  %t133 = load i64, ptr %l17, !tbaa !24
  %t137 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t131, i32 %t132, i64 %t133)
  store i32 %t137, ptr %l89
  br label %bb23
bb23:
  %t138 = load i32, ptr %l89, !tbaa !23
  store i32 %t138, ptr %l84, !tbaa !23
  br label %bb24
bb24:
  %t139 = load i32, ptr %l84, !tbaa !23
  store i32 %t139, ptr %l19, !tbaa !23
  %t140 = load i64, ptr %l10, !tbaa !24
  %t142 = icmp eq i64 %t140, 1
  br i1 %t142, label %bb25, label %bb26
bb25:
  %t144 = load %"compiler/eval:Ptr", ptr %l11
  store %"compiler/eval:Ptr" %t144, ptr %l92
  br label %bb29
bb26:
  %t146 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t147 = load i64, ptr %t146, !tbaa !24
  store i64 %t147, ptr %l94, !tbaa !24
  %t148 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t149 = load i64, ptr %t148, !tbaa !24
  store i64 %t149, ptr %l95, !tbaa !24
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t151 = load i32, ptr %l4, !tbaa !23
  %t152 = load i64, ptr %l17, !tbaa !24
  %t156 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t150, i32 %t151, i64 %t152)
  store i64 %t156, ptr %l99
  br label %bb27
bb27:
  %t157 = load i64, ptr %l95, !tbaa !24
  %t158 = load i64, ptr %l99, !tbaa !24
  %t159 = add i64 %t157, %t158
  %t160 = load i64, ptr %l94, !tbaa !24
  %t162 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t160, i64 %t159)
  store %"compiler/eval:Ptr" %t162, ptr %l101
  br label %bb28
bb28:
  %t163 = load %"compiler/eval:Ptr", ptr %l101
  store %"compiler/eval:Ptr" %t163, ptr %l92
  br label %bb29
bb29:
  %t164 = load %"compiler/eval:Ptr", ptr %l92
  store %"compiler/eval:Ptr" %t164, ptr %l20
  %t165 = load i64, ptr %l17, !tbaa !24
  %t166 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 7
  %t167 = getelementptr %"compiler/mir:Range", ptr %t166, i32 0, i32 1
  %t168 = load i32, ptr %t167, !tbaa !23
  %t170 = sext i32 %t168 to i64
  %t173 = icmp slt i64 %t165, %t170
  br i1 %t173, label %bb30, label %bb31
bb30:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t175, i32 0, i32 0
  %t178 = load ptr, ptr %t177, !tbaa !29
  store ptr %t178, ptr %l108, !tbaa !29
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr %"compiler/eval:Machine", ptr %t179, i32 0, i32 0
  %t182 = load ptr, ptr %t181, !tbaa !29
  %t183 = load i32, ptr %l19, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t182, i32 %t183)
  store i32 %t186, ptr %l112
  br label %bb32
bb31:
  store i1 false, ptr %l106, !tbaa !21
  br label %bb34
bb32:
  %t187 = load ptr, ptr %l108, !tbaa !29
  %t188 = load i32, ptr %l112, !tbaa !23
  %t189 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t187, i32 %t188)
  store i32 %t189, ptr %l113
  br label %bb33
bb33:
  %t190 = load i32, ptr %l113, !range !{i32 0, i32 33}
  %t192 = trunc i64 19 to i32
  %t193 = icmp eq i32 %t190, %t192
  store i1 %t193, ptr %l106, !tbaa !21
  br label %bb34
bb34:
  %t195 = load i1, ptr %l106, !tbaa !21
  br i1 %t195, label %bb35, label %bb36
bb35:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/eval:Machine", ptr %t196, i32 0, i32 0
  %t199 = load ptr, ptr %t198, !tbaa !29
  store ptr %t199, ptr %l118, !tbaa !29
  %t200 = load ptr, ptr %l0, !tbaa !29
  %t202 = getelementptr %"compiler/eval:Machine", ptr %t200, i32 0, i32 0
  %t203 = load ptr, ptr %t202, !tbaa !29
  %t204 = load i32, ptr %l19, !tbaa !23
  %t207 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t203, i32 %t204)
  store i32 %t207, ptr %l122
  br label %bb37
bb36:
  store i1 false, ptr %l116, !tbaa !21
  br label %bb39
bb37:
  %t208 = load ptr, ptr %l118, !tbaa !29
  %t209 = load i32, ptr %l122, !tbaa !23
  %t210 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t208, i32 %t209)
  store i32 %t210, ptr %l123
  br label %bb38
bb38:
  %t211 = load i32, ptr %l123, !tbaa !23
  %t212 = icmp eq i32 %t211, 0
  store i1 %t212, ptr %l116, !tbaa !21
  br label %bb39
bb39:
  %t214 = load i1, ptr %l116, !tbaa !21
  br i1 %t214, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s4
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l125, !tbaa !29
  %t216 = getelementptr %"compiler/eval:task", ptr %l5, i32 0, i32 2
  %t217 = load i64, ptr %t216, !tbaa !24
  %t218 = load i64, ptr %l9, !tbaa !24
  %t219 = load i64, ptr %l10, !tbaa !24
  %t221 = mul i64 8, %t219
  %t224 = add i64 %t218, %t221
  %t225 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 4
  %t226 = getelementptr %"compiler/mir:Range", ptr %t225, i32 0, i32 1
  %t227 = load i32, ptr %t226, !tbaa !23
  %t229 = sext i32 %t227 to i64
  %t231 = mul i64 16, %t229
  %t234 = add i64 %t224, %t231
  %t235 = getelementptr %"compiler/mir:Task", ptr %l7, i32 0, i32 2
  %t236 = getelementptr %"compiler/mir:Range", ptr %t235, i32 0, i32 1
  %t237 = load i32, ptr %t236, !tbaa !23
  %t239 = sext i32 %t237 to i64
  %t241 = mul i64 8, %t239
  %t244 = add i64 %t234, %t241
  %t246 = add i64 %t244, 16
  %t247 = load i64, ptr %l17, !tbaa !24
  %t249 = mul i64 8, %t247
  %t252 = add i64 %t246, %t249
  %t255 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t217, i64 %t252)
  store %"compiler/eval:Ptr" %t255, ptr %l143
  br label %bb42
bb41:
  br label %bb45
bb42:
  %t256 = load ptr, ptr %l125, !tbaa !29
  %t257 = load %"compiler/eval:Ptr", ptr %l143
  %t258 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t256, %"compiler/eval:Ptr" %t257, i64 8)
  store i64 %t258, ptr %l144
  br label %bb43
bb43:
  %t259 = load i64, ptr %l144, !tbaa !24
  %t260 = load ptr, ptr %l0, !tbaa !29
  %t261 = load %"compiler/eval:Ptr", ptr %l18
  %t262 = load %"compiler/eval:Ptr", ptr %l20
  %t263 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayTarget(ptr %v0, ptr %t260, %"compiler/eval:Ptr" %t261, %"compiler/eval:Ptr" %t262, i32 %t263, i64 %t259)
  br label %bb44
bb44:
  call void @__olang_scope_close(ptr %s4)
  call void @__olang_scope_close(ptr %s3)
  br label %bb48
bb45:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l150, !tbaa !29
  %t271 = load %"compiler/eval:Ptr", ptr %l18
  store %"compiler/eval:Ptr" %t271, ptr %l151
  %t272 = load %"compiler/eval:Ptr", ptr %l20
  store %"compiler/eval:Ptr" %t272, ptr %l152
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load i32, ptr %l19, !tbaa !23
  %t277 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t273, i32 %t274)
  store i64 %t277, ptr %l155
  br label %bb46
bb46:
  %t278 = load ptr, ptr %l150, !tbaa !29
  %t279 = load %"compiler/eval:Ptr", ptr %l151
  %t280 = load %"compiler/eval:Ptr", ptr %l152
  %t281 = load i64, ptr %l155, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t278, %"compiler/eval:Ptr" %t279, %"compiler/eval:Ptr" %t280, i64 %t281)
  br label %bb47
bb47:
  call void @__olang_scope_close(ptr %s3)
  br label %bb48
bb48:
  %t282 = load i64, ptr %l16, !tbaa !24
  %t284 = add i64 %t282, 1
  store i64 %t284, ptr %l16, !tbaa !24
  br label %bb15
bb49:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunlinkReg(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:reg"
  %l4 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l15 = alloca %"compiler/eval:reg"
  %l23 = alloca ptr
  %l28 = alloca i1
  %l36 = alloca ptr
  %l46 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 51
  %t7 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t3, i64 %a1)
  store %"compiler/eval:reg" %t7, ptr %l15
  br label %bb1
bb1:
  %t8 = load %"compiler/eval:reg", ptr %l15
  store %"compiler/eval:reg" %t8, ptr %l2
  %t9 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 5
  %t10 = load i64, ptr %t9, !tbaa !24
  %t12 = icmp sge i64 %t10, 0
  br i1 %t12, label %bb2, label %bb3
bb2:
  %t14 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 5
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 4
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l4, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 51
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v0, ptr %t22, i64 %t15)
  store ptr %t26, ptr %l23
  br label %bb4
bb3:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 6
  %t29 = load i64, ptr %t28, !tbaa !24
  %t32 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t27, i64 %t29)
  store i1 %t32, ptr %l28
  br label %bb5
bb4:
  %t33 = load ptr, ptr %l23, !tbaa !29
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = getelementptr %"compiler/eval:reg", ptr %t33, i32 0, i32 4
  store i64 %t35, ptr %t38, !tbaa !24
  br label %bb10
bb5:
  %t39 = load i1, ptr %l28, !tbaa !21
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t40 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 6
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t45 = and i64 %t41, %t42
  %t47 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 4
  %t48 = load i64, ptr %t47, !tbaa !24
  store i64 %t48, ptr %l7, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 49
  %t56 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t52, i64 %t45)
  store ptr %t56, ptr %l36
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t57 = load ptr, ptr %l36, !tbaa !29
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = getelementptr %"compiler/eval:scope", ptr %t57, i32 0, i32 4
  store i64 %t59, ptr %t62, !tbaa !24
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t63 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 4
  %t64 = load i64, ptr %t63, !tbaa !24
  %t66 = icmp sge i64 %t64, 0
  br i1 %t66, label %bb11, label %bb12
bb11:
  %t68 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 4
  %t69 = load i64, ptr %t68, !tbaa !24
  %t71 = getelementptr %"compiler/eval:reg", ptr %l2, i32 0, i32 5
  %t72 = load i64, ptr %t71, !tbaa !24
  store i64 %t72, ptr %l10, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 51
  %t80 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v0, ptr %t76, i64 %t69)
  store ptr %t80, ptr %l46
  br label %bb13
bb12:
  br label %bb14
bb13:
  %t81 = load ptr, ptr %l46, !tbaa !29
  %t83 = load i64, ptr %l10, !tbaa !24
  %t86 = getelementptr %"compiler/eval:reg", ptr %t81, i32 0, i32 5
  store i64 %t83, ptr %t86, !tbaa !24
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [5 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i1
  %l20 = alloca i1
  %l48 = alloca i1
  %l53 = alloca ptr
  %l58 = alloca %"compiler/eval:global"
  %l60 = alloca { i64, [2 x i64] }
  %l69 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l97 = alloca %"compiler/eval:global"
  %l104 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 19
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 1
  %t9 = load i32, ptr %t8, !range !{i32 0, i32 2}
  %t11 = trunc i64 1 to i32
  %t12 = icmp eq i32 %t9, %t11
  store i1 %t12, ptr %l16, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb3
bb3:
  %t14 = load i1, ptr %l16, !tbaa !21
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 56
  %t18 = load i64, ptr %t17, !tbaa !24
  %t19 = load i64, ptr %l1, !tbaa !24
  %t22 = icmp sgt i64 %t18, %t19
  store i1 %t22, ptr %l20, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l20, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 17
  %t28 = load { i64, [5 x i64] }, ptr %t27
  store { i64, [5 x i64] } %t28, ptr %l2
  %t30 = load { i64, [5 x i64] }, ptr %l2
  %t32 = extractvalue { i64, [5 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 3
  br i1 %t33, label %bb9, label %bb10
bb8:
  br label %bb29
bb9:
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunCleanups(ptr %v0, ptr %t35, i64 %t36)
  br label %bb12
bb12:
  br label %bb28
bb13:
  %t39 = load { i64, [5 x i64] }, ptr %l2
  %t41 = extractvalue { i64, [5 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 2
  br i1 %t42, label %bb14, label %bb15
bb14:
  br label %bb18
bb15:
  %t44 = load { i64, [5 x i64] }, ptr %l2
  %t46 = extractvalue { i64, [5 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 1
  br i1 %t47, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb23
bb18:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 83
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb19, label %bb20
bb19:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseOpen(ptr %v0, ptr %t54, i64 %t55)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb22
bb22:
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_f4c8d7149bd44e26_572dd2a903112792)
  unreachable
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 56
  %t61 = load i64, ptr %t60, !tbaa !24
  %t62 = load i64, ptr %l1, !tbaa !24
  %t65 = icmp sgt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t69 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %t69)
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb30
bb36:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 70
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = icmp sge i64 %t74, 0
  br i1 %t76, label %bb37, label %bb38
bb37:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 19
  %t81 = load i1, ptr %t80, !tbaa !21
  store i1 %t81, ptr %l48, !tbaa !21
  br label %bb39
bb38:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb39
bb39:
  %t83 = load i1, ptr %l48, !tbaa !21
  br i1 %t83, label %bb40, label %bb41
bb40:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 18
  store i64 -1, ptr %t86, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 28
  store ptr %t89, ptr %l53, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 39
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/eval:Machine", ptr %t93, i32 0, i32 70
  %t96 = load i64, ptr %t95, !tbaa !24
  %t99 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t92, i64 %t96)
  store %"compiler/eval:global" %t99, ptr %l58
  br label %bb42
bb41:
  br label %bb71
bb42:
  %t100 = getelementptr %"compiler/eval:global", ptr %l58, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load ptr, ptr %l53, !tbaa !29
  %t104 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t102, i64 %t101)
  store { i64, [2 x i64] } %t104, ptr %l60
  br label %bb43
bb43:
  %t105 = load { i64, [2 x i64] }, ptr %l60
  store { i64, [2 x i64] } %t105, ptr %l3
  %t106 = load { i64, [2 x i64] }, ptr %l3
  %t108 = extractvalue { i64, [2 x i64] } %t106, 0
  %t109 = icmp eq i64 %t108, 0
  br i1 %t109, label %bb44, label %bb45
bb44:
  %t111 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t112 = getelementptr { i32 }, ptr %t111, i32 0, i32 0
  %t113 = load i32, ptr %t112
  store i32 %t113, ptr %l4, !tbaa !23
  br label %bb46
bb45:
  br label %bb47
bb46:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l4, !tbaa !23
  %t118 = sext i32 %t116 to i64
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t115, i32 0, i32 18
  store i64 %t118, ptr %t121, !tbaa !24
  br label %bb52
bb47:
  br i1 true, label %bb48, label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb52
bb51:
  call void @__olang_check_failed(ptr @olang_loc_2654da324b88ad87_946d0eedc2d95193)
  unreachable
bb52:
  store i64 0, ptr %l5, !tbaa !24
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 39
  %t126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t124)
  store i64 %t126, ptr %l69
  br label %bb53
bb53:
  %t127 = load i64, ptr %l69, !tbaa !24
  store i64 %t127, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t128 = load i64, ptr %l6, !tbaa !24
  %t129 = load i64, ptr %l5, !tbaa !24
  %t132 = icmp sgt i64 %t128, %t129
  br i1 %t132, label %bb54, label %bb55
bb54:
  %t134 = load i64, ptr %l7, !tbaa !24
  %t136 = icmp sgt i64 %t134, 0
  br i1 %t136, label %bb56, label %bb57
bb55:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb59
bb56:
  %t138 = load i64, ptr %l6, !tbaa !24
  %t139 = load i64, ptr %l5, !tbaa !24
  %t142 = sub i64 %t138, %t139
  %t143 = load i64, ptr %l7, !tbaa !24
  %t146 = add i64 %t142, %t143
  %t148 = sub i64 %t146, 1
  %t149 = load i64, ptr %l7, !tbaa !24
  %t152 = sdiv i64 %t148, %t149
  store i64 %t152, ptr %l76, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb58
bb58:
  %t154 = load i64, ptr %l76, !tbaa !24
  store i64 %t154, ptr %l73, !tbaa !24
  br label %bb59
bb59:
  %t155 = load i64, ptr %l73, !tbaa !24
  store i64 %t155, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb60
bb60:
  %t156 = load i64, ptr %l9, !tbaa !24
  %t157 = load i64, ptr %l8, !tbaa !24
  %t160 = icmp slt i64 %t156, %t157
  %t162 = xor i1 %t160, true
  br i1 %t162, label %bb61, label %bb62
bb61:
  br label %bb70
bb62:
  br label %bb63
bb63:
  %t164 = load i64, ptr %l5, !tbaa !24
  %t165 = load i64, ptr %l9, !tbaa !24
  %t166 = load i64, ptr %l7, !tbaa !24
  %t169 = mul i64 %t165, %t166
  %t172 = add i64 %t164, %t169
  store i64 %t172, ptr %l10, !tbaa !24
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/eval:Machine", ptr %t174, i32 0, i32 39
  %t177 = load i64, ptr %l10, !tbaa !24
  %t180 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t176, i64 %t177)
  store %"compiler/eval:global" %t180, ptr %l97
  br label %bb64
bb64:
  %t181 = getelementptr %"compiler/eval:global", ptr %l97, i32 0, i32 4
  %t182 = load i64, ptr %t181, !tbaa !24
  %t184 = icmp eq i64 %t182, 1
  br i1 %t184, label %bb65, label %bb66
bb65:
  %t186 = load i64, ptr %l10, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t188 = load ptr, ptr %l0, !tbaa !29
  %t190 = getelementptr %"compiler/eval:Machine", ptr %t188, i32 0, i32 39
  %t194 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t190, i64 %t186)
  store ptr %t194, ptr %l104
  br label %bb67
bb66:
  br label %bb68
bb67:
  %t195 = load ptr, ptr %l104, !tbaa !29
  %t197 = load i64, ptr %l12, !tbaa !24
  %t200 = getelementptr %"compiler/eval:global", ptr %t195, i32 0, i32 4
  store i64 %t197, ptr %t200, !tbaa !24
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t201 = load i64, ptr %l9, !tbaa !24
  %t203 = add i64 %t201, 1
  store i64 %t203, ptr %l9, !tbaa !24
  br label %bb60
bb70:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 70
  store i64 -1, ptr %t207, !tbaa !24
  br label %bb71
bb71:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidthOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l5 = alloca i64
  %l19 = alloca ptr
  %l23 = alloca i32
  %l24 = alloca i1
  %l25 = alloca i64
  %l27 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l35 = alloca ptr
  %l39 = alloca i32
  %l40 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t11 = icmp eq i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 1, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  %t18 = icmp eq i64 %t14, %t15
  br i1 %t18, label %bb5, label %bb6
bb5:
  store i64 4, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t21 = load i64, ptr %l2, !tbaa !24
  %t22 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t25 = icmp eq i64 %t21, %t22
  br i1 %t25, label %bb8, label %bb9
bb8:
  store i64 8, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l23
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l19, !tbaa !29
  %t41 = load i32, ptr %l23, !tbaa !23
  %t42 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t40, i32 %t41)
  store i1 %t42, ptr %l24
  br label %bb12
bb12:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 0
  %t47 = load ptr, ptr %t46, !tbaa !29
  store ptr %t47, ptr %l27, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 0
  %t51 = load ptr, ptr %t50, !tbaa !29
  %t52 = load i32, ptr %l1, !tbaa !23
  %t55 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t55, ptr %l31
  br label %bb15
bb14:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  store ptr %t59, ptr %l35, !tbaa !29
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Machine", ptr %t60, i32 0, i32 0
  %t63 = load ptr, ptr %t62, !tbaa !29
  %t64 = load i32, ptr %l1, !tbaa !23
  %t67 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t63, i32 %t64)
  store i32 %t67, ptr %l39
  br label %bb18
bb15:
  %t68 = load ptr, ptr %l27, !tbaa !29
  %t69 = load i32, ptr %l31, !tbaa !23
  %t70 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t68, i32 %t69)
  store i64 %t70, ptr %l32
  br label %bb16
bb16:
  %t71 = load i64, ptr %l32, !tbaa !24
  %t72 = call i64 @compiler_2ftypes_2eIntBytes(i64 %t71)
  store i64 %t72, ptr %l33
  br label %bb17
bb17:
  %t73 = load i64, ptr %l33, !tbaa !24
  store i64 %t73, ptr %l25, !tbaa !24
  br label %bb20
bb18:
  %t74 = load ptr, ptr %l35, !tbaa !29
  %t75 = load i32, ptr %l39, !tbaa !23
  %t76 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t74, i32 %t75)
  store i64 %t76, ptr %l40
  br label %bb19
bb19:
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = sdiv i64 %t77, 8
  store i64 %t78, ptr %l25, !tbaa !24
  br label %bb20
bb20:
  %t80 = load i64, ptr %l25, !tbaa !24
  store i64 %t80, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2efibFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %lp4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l18 = alloca i32
  %l19 = alloca ptr
  %l22 = alloca i32
  %l24 = alloca i32
  %l28 = alloca %"compiler/mir:Fn"
  %l32 = alloca i32
  %l36 = alloca i32
  %l40 = alloca i32
  %l44 = alloca i32
  %l48 = alloca i32
  %l52 = alloca i32
  %l54 = alloca i32
  %l56 = alloca i32
  %l58 = alloca i32
  %l60 = alloca i32
  %l61 = alloca ptr
  %l62 = alloca i32
  %l64 = alloca i64
  %l65 = alloca i32
  %l66 = alloca i32
  %l67 = alloca { i64, [4 x i64] }
  %l70 = alloca ptr
  %l71 = alloca i32
  %l73 = alloca %"compiler/mir:Lvalue"
  %l82 = alloca { i64, [21 x i64] }
  %l84 = alloca ptr
  %l85 = alloca i32
  %l86 = alloca %"compiler/source:Span"
  %l87 = alloca { i64, [4 x i64] }
  %l89 = alloca ptr
  %l90 = alloca i32
  %l92 = alloca i64
  %l93 = alloca i32
  %l94 = alloca i32
  %l95 = alloca { i64, [4 x i64] }
  %l98 = alloca ptr
  %l100 = alloca { i64, [2 x i64] }
  %l102 = alloca { i64, [7 x i64] }
  %l103 = alloca ptr
  %l105 = alloca %"compiler/mir:Lvalue"
  %l107 = alloca { i64, ptr }
  %l108 = alloca %"compiler/mir:Range"
  %l109 = alloca %"compiler/mir:Range"
  %l111 = alloca %"compiler/mir:Lvalue"
  %l115 = alloca %"compiler/mir:Call"
  %l116 = alloca i32
  %l122 = alloca ptr
  %l123 = alloca i32
  %l125 = alloca i64
  %l126 = alloca i32
  %l127 = alloca i32
  %l128 = alloca { i64, [4 x i64] }
  %l131 = alloca ptr
  %l133 = alloca { i64, [2 x i64] }
  %l135 = alloca { i64, [7 x i64] }
  %l136 = alloca ptr
  %l138 = alloca %"compiler/mir:Lvalue"
  %l140 = alloca { i64, ptr }
  %l141 = alloca %"compiler/mir:Range"
  %l142 = alloca %"compiler/mir:Range"
  %l144 = alloca %"compiler/mir:Lvalue"
  %l148 = alloca %"compiler/mir:Call"
  %l149 = alloca i32
  %l155 = alloca ptr
  %l156 = alloca i32
  %l158 = alloca i64
  %l159 = alloca i32
  %l160 = alloca i32
  %l162 = alloca %"compiler/mir:Lvalue"
  %l163 = alloca { i64, [4 x i64] }
  %l165 = alloca %"compiler/mir:Lvalue"
  %l171 = alloca { i64, [21 x i64] }
  %l173 = alloca ptr
  %l174 = alloca i32
  %l175 = alloca %"compiler/source:Span"
  %l177 = alloca %"compiler/mir:Lvalue"
  %l180 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/mir:Fn", align 8
  %t98 = alloca { i64, [4 x i64] }, align 8
  %t117 = alloca { i64, [4 x i64] }, align 8
  %t125 = alloca { i64, [8 x i64] }, align 8
  %t142 = alloca { i64, [21 x i64] }, align 8
  %t157 = alloca { i64, [8 x i64] }, align 8
  %t176 = alloca { i64, [4 x i64] }, align 8
  %t195 = alloca { i64, [7 x i64] }, align 8
  %t207 = alloca { i64, [4 x i64] }, align 8
  %t247 = alloca { i64, [8 x i64] }, align 8
  %t266 = alloca { i64, [4 x i64] }, align 8
  %t285 = alloca { i64, [7 x i64] }, align 8
  %t297 = alloca { i64, [4 x i64] }, align 8
  %t337 = alloca { i64, [8 x i64] }, align 8
  %t357 = alloca { i64, [4 x i64] }, align 8
  %t366 = alloca { i64, [4 x i64] }, align 8
  %t383 = alloca { i64, [21 x i64] }, align 8
  %t400 = alloca { i64, [4 x i64] }, align 8
  %t406 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i32 %t3, ptr %l18
  br label %bb1
bb1:
  %t4 = load i32, ptr %l18, !tbaa !23
  store i32 %t4, ptr %l2, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l19, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l2, !tbaa !23
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t6, i32 %t7)
  store i32 %t10, ptr %l22
  br label %bb2
bb2:
  %t11 = load i32, ptr %l2, !tbaa !23
  %t12 = load ptr, ptr %l19, !tbaa !29
  %t13 = load i32, ptr %l22, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t12, i32 %t13, i32 %t11, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t15, ptr %l24
  br label %bb3
bb3:
  %t16 = load i32, ptr %l24, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t20, ptr %v0, ptr %v1, ptr %t17, i64 %t18, i32 %t19)
  call void @llvm.memmove.p0.p0.i64(ptr %l28, ptr %t20, i64 800, i1 false)
  br label %bb4
bb4:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t24, ptr %lp4
  %t25 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %l28, i64 800, i1 false)
  %t26 = load ptr, ptr %lp4
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t28 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t32 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t26, i32 %t27, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l32
  br label %bb5
bb5:
  %t33 = load i32, ptr %l32, !tbaa !23
  store i32 %t33, ptr %l5, !tbaa !23
  %t34 = load ptr, ptr %lp4
  %t35 = load i32, ptr %l2, !tbaa !23
  %t36 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t40 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t34, i32 %t35, %"compiler/source:Span" %t36)
  store i32 %t40, ptr %l36
  br label %bb6
bb6:
  %t41 = load i32, ptr %l36, !tbaa !23
  store i32 %t41, ptr %l6, !tbaa !23
  %t42 = load ptr, ptr %lp4
  %t43 = load i32, ptr %l2, !tbaa !23
  %t44 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t48 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t42, i32 %t43, %"compiler/source:Span" %t44)
  store i32 %t48, ptr %l40
  br label %bb7
bb7:
  %t49 = load i32, ptr %l40, !tbaa !23
  store i32 %t49, ptr %l7, !tbaa !23
  %t50 = load ptr, ptr %lp4
  %t51 = load i32, ptr %l2, !tbaa !23
  %t52 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t56 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t50, i32 %t51, %"compiler/source:Span" %t52)
  store i32 %t56, ptr %l44
  br label %bb8
bb8:
  %t57 = load i32, ptr %l44, !tbaa !23
  store i32 %t57, ptr %l8, !tbaa !23
  %t58 = load ptr, ptr %lp4
  %t59 = load i32, ptr %l2, !tbaa !23
  %t60 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t64 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t58, i32 %t59, %"compiler/source:Span" %t60)
  store i32 %t64, ptr %l48
  br label %bb9
bb9:
  %t65 = load i32, ptr %l48, !tbaa !23
  store i32 %t65, ptr %l9, !tbaa !23
  %t66 = load ptr, ptr %lp4
  %t67 = load i32, ptr %l2, !tbaa !23
  %t68 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t72 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t66, i32 %t67, %"compiler/source:Span" %t68)
  store i32 %t72, ptr %l52
  br label %bb10
bb10:
  %t73 = load i32, ptr %l52, !tbaa !23
  store i32 %t73, ptr %l10, !tbaa !23
  %t74 = load ptr, ptr %lp4
  %t76 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t74)
  store i32 %t76, ptr %l54
  br label %bb11
bb11:
  %t77 = load i32, ptr %l54, !tbaa !23
  store i32 %t77, ptr %l11, !tbaa !23
  %t78 = load ptr, ptr %lp4
  %t80 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t78)
  store i32 %t80, ptr %l56
  br label %bb12
bb12:
  %t81 = load i32, ptr %l56, !tbaa !23
  store i32 %t81, ptr %l12, !tbaa !23
  %t82 = load ptr, ptr %lp4
  %t84 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t82)
  store i32 %t84, ptr %l58
  br label %bb13
bb13:
  %t85 = load i32, ptr %l58, !tbaa !23
  store i32 %t85, ptr %l13, !tbaa !23
  %t86 = load ptr, ptr %lp4
  %t88 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t86)
  store i32 %t88, ptr %l60
  br label %bb14
bb14:
  %t89 = load i32, ptr %l60, !tbaa !23
  store i32 %t89, ptr %l14, !tbaa !23
  %t90 = load ptr, ptr %lp4
  store ptr %t90, ptr %l61, !tbaa !29
  %t91 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t91, ptr %l62, !tbaa !23
  %t92 = load i32, ptr %l5, !tbaa !23
  %t94 = sext i32 %t92 to i64
  store i64 %t94, ptr %l64, !tbaa !24
  store i32 15, ptr %l65
  %t95 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t95, ptr %l66, !tbaa !23
  %t96 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t96, ptr %l67
  br label %bb15
bb15:
  %t97 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t98
  %t99 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 0
  store i64 2, ptr %t99
  %t101 = insertvalue { i32, i64 } undef, i32 %t97, 0
  %t102 = insertvalue { i32, i64 } %t101, i64 2, 1
  %t103 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  store { i32, i64 } %t102, ptr %t103
  %t104 = load { i64, [4 x i64] }, ptr %t98
  %t105 = load ptr, ptr %l61, !tbaa !29
  %t106 = load i32, ptr %l62, !tbaa !23
  %t107 = load i64, ptr %l64, !tbaa !24
  %t108 = load i32, ptr %l65, !range !{i32 0, i32 52}
  %t109 = load i32, ptr %l66, !tbaa !23
  %t110 = load { i64, [4 x i64] }, ptr %l67
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t105, i32 %t106, i64 %t107, i32 %t108, i32 %t109, { i64, [4 x i64] } %t110, { i64, [4 x i64] } %t104)
  br label %bb16
bb16:
  %t112 = load ptr, ptr %lp4
  store ptr %t112, ptr %l70, !tbaa !29
  %t113 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t113, ptr %l71, !tbaa !23
  %t114 = load i32, ptr %l5, !tbaa !23
  %t116 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t114)
  store %"compiler/mir:Lvalue" %t116, ptr %l73
  br label %bb17
bb17:
  store { i64, [4 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 0
  store i64 1, ptr %t118
  %t119 = load %"compiler/mir:Lvalue", ptr %l73
  %t120 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t119, 0
  %t121 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t120, ptr %t121
  %t122 = load { i64, [4 x i64] }, ptr %t117
  %t123 = load i32, ptr %l11, !tbaa !23
  %t124 = load i32, ptr %l12, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t125
  %t126 = getelementptr { i64, [8 x i64] }, ptr %t125, i32 0, i32 0
  store i64 2, ptr %t126
  %t128 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t122, 0
  %t130 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t128, i32 %t123, 1
  %t132 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t130, i32 %t124, 2
  %t133 = getelementptr { i64, [8 x i64] }, ptr %t125, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t132, ptr %t133
  %t134 = load { i64, [8 x i64] }, ptr %t125
  %t135 = load ptr, ptr %l70, !tbaa !29
  %t136 = load i32, ptr %l71, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t135, i32 %t136, { i64, [8 x i64] } %t134)
  br label %bb18
bb18:
  %t138 = load ptr, ptr %lp4
  %t139 = load i32, ptr %l11, !tbaa !23
  %t140 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t141 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t142
  %t143 = getelementptr { i64, [21 x i64] }, ptr %t142, i32 0, i32 0
  store i64 4, ptr %t143
  %t145 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t140, 0
  %t147 = insertvalue { %"compiler/source:Span", i32 } %t145, i32 %t141, 1
  %t148 = getelementptr { i64, [21 x i64] }, ptr %t142, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t147, ptr %t148
  %t149 = load { i64, [21 x i64] }, ptr %t142
  store { i64, [21 x i64] } %t149, ptr %l82
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t138, i32 %t139, ptr %l82)
  br label %bb19
bb19:
  %t153 = load ptr, ptr %lp4
  store ptr %t153, ptr %l84, !tbaa !29
  %t154 = load i32, ptr %l11, !tbaa !23
  store i32 %t154, ptr %l85, !tbaa !23
  %t155 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t155, ptr %l86
  %t156 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t156, ptr %l87
  br label %bb20
bb20:
  store { i64, [8 x i64] } zeroinitializer, ptr %t157
  %t158 = getelementptr { i64, [8 x i64] }, ptr %t157, i32 0, i32 0
  store i64 5, ptr %t158
  %t159 = load %"compiler/source:Span", ptr %l86
  %t160 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t159, 0
  %t161 = load { i64, [4 x i64] }, ptr %l87
  %t162 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t160, { i64, [4 x i64] } %t161, 1
  %t163 = getelementptr { i64, [8 x i64] }, ptr %t157, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t162, ptr %t163
  %t164 = load { i64, [8 x i64] }, ptr %t157
  %t165 = load ptr, ptr %l84, !tbaa !29
  %t166 = load i32, ptr %l85, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t165, i32 %t166, { i64, [8 x i64] } %t164)
  br label %bb21
bb21:
  %t168 = load ptr, ptr %lp4
  store ptr %t168, ptr %l89, !tbaa !29
  %t169 = load i32, ptr %l12, !tbaa !23
  store i32 %t169, ptr %l90, !tbaa !23
  %t170 = load i32, ptr %l6, !tbaa !23
  %t172 = sext i32 %t170 to i64
  store i64 %t172, ptr %l92, !tbaa !24
  store i32 4, ptr %l93
  %t173 = load i32, ptr %l2, !tbaa !23
  store i32 %t173, ptr %l94, !tbaa !23
  %t174 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t174, ptr %l95
  br label %bb22
bb22:
  %t175 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t176
  %t177 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 0
  store i64 2, ptr %t177
  %t179 = insertvalue { i32, i64 } undef, i32 %t175, 0
  %t180 = insertvalue { i32, i64 } %t179, i64 1, 1
  %t181 = getelementptr { i64, [4 x i64] }, ptr %t176, i32 0, i32 1
  store { i32, i64 } %t180, ptr %t181
  %t182 = load { i64, [4 x i64] }, ptr %t176
  %t183 = load ptr, ptr %l89, !tbaa !29
  %t184 = load i32, ptr %l90, !tbaa !23
  %t185 = load i64, ptr %l92, !tbaa !24
  %t186 = load i32, ptr %l93, !range !{i32 0, i32 52}
  %t187 = load i32, ptr %l94, !tbaa !23
  %t188 = load { i64, [4 x i64] }, ptr %l95
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t183, i32 %t184, i64 %t185, i32 %t186, i32 %t187, { i64, [4 x i64] } %t188, { i64, [4 x i64] } %t182)
  br label %bb23
bb23:
  %t190 = load ptr, ptr %lp4
  store ptr %t190, ptr %l98, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  %t193 = call { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %t191)
  store { i64, [2 x i64] } %t193, ptr %l100
  br label %bb24
bb24:
  %t194 = load i32, ptr %l3, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t195
  %t196 = getelementptr { i64, [7 x i64] }, ptr %t195, i32 0, i32 0
  store i64 0, ptr %t196
  %t197 = load { i64, [2 x i64] }, ptr %l100
  %t198 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t197, 0
  %t200 = insertvalue { { i64, [2 x i64] }, i32 } %t198, i32 %t194, 1
  %t201 = getelementptr { i64, [7 x i64] }, ptr %t195, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t200, ptr %t201
  %t202 = load { i64, [7 x i64] }, ptr %t195
  store { i64, [7 x i64] } %t202, ptr %l102
  %t203 = load ptr, ptr %lp4
  store ptr %t203, ptr %l103, !tbaa !29
  %t204 = load i32, ptr %l6, !tbaa !23
  %t206 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t204)
  store %"compiler/mir:Lvalue" %t206, ptr %l105
  br label %bb25
bb25:
  store { i64, [4 x i64] } zeroinitializer, ptr %t207
  %t208 = getelementptr { i64, [4 x i64] }, ptr %t207, i32 0, i32 0
  store i64 1, ptr %t208
  %t209 = load %"compiler/mir:Lvalue", ptr %l105
  %t210 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t209, 0
  %t211 = getelementptr { i64, [4 x i64] }, ptr %t207, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t210, ptr %t211
  %t212 = load { i64, [4 x i64] }, ptr %t207
  %t213 = mul i64 1, 40
  %t214 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t213)
  %t215 = insertvalue { i64, ptr } undef, i64 1, 0
  %t216 = insertvalue { i64, ptr } %t215, ptr %t214, 1
  store { i64, ptr } %t216, ptr %l107, !tbaa !27
  %t218 = getelementptr { i64, ptr }, ptr %l107, i32 0, i32 1
  %t219 = load ptr, ptr %t218, !tbaa !27
  %t220 = getelementptr { i64, [4 x i64] }, ptr %t219, i64 0
  store { i64, [4 x i64] } %t212, ptr %t220
  %t221 = load ptr, ptr %l103, !tbaa !29
  %t222 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t223 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t221, { i64, ptr } %t222)
  store %"compiler/mir:Range" %t223, ptr %l108
  br label %bb26
bb26:
  %t224 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t224, ptr %l109
  %t225 = load i32, ptr %l8, !tbaa !23
  %t227 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t225)
  store %"compiler/mir:Lvalue" %t227, ptr %l111
  br label %bb27
bb27:
  %t228 = load i32, ptr %l13, !tbaa !23
  %t229 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t230 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t231 = load { i64, [7 x i64] }, ptr %l102
  %t232 = load %"compiler/mir:Range", ptr %l108
  %t233 = load %"compiler/mir:Range", ptr %l109
  %t234 = load %"compiler/mir:Lvalue", ptr %l111
  %t238 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t231, %"compiler/mir:Range" %t232, %"compiler/mir:Range" %t233, %"compiler/mir:Lvalue" %t234, i1 true, i32 %t228, i32 %t229, i32 %t230)
  store %"compiler/mir:Call" %t238, ptr %l115
  br label %bb28
bb28:
  %t239 = load ptr, ptr %l98, !tbaa !29
  %t240 = load %"compiler/mir:Call", ptr %l115
  %t241 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t239, %"compiler/mir:Call" %t240)
  store i32 %t241, ptr %l116
  br label %bb29
bb29:
  %t242 = load i32, ptr %l116, !tbaa !23
  %t243 = load ptr, ptr %lp4
  %t244 = load i32, ptr %l12, !tbaa !23
  %t245 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t247
  %t248 = getelementptr { i64, [8 x i64] }, ptr %t247, i32 0, i32 0
  store i64 4, ptr %t248
  %t250 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t245, 0
  %t252 = insertvalue { %"compiler/source:Span", i32 } %t250, i32 %t242, 1
  %t253 = getelementptr { i64, [8 x i64] }, ptr %t247, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t252, ptr %t253
  %t254 = load { i64, [8 x i64] }, ptr %t247
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t243, i32 %t244, { i64, [8 x i64] } %t254)
  br label %bb30
bb30:
  %t258 = load ptr, ptr %lp4
  store ptr %t258, ptr %l122, !tbaa !29
  %t259 = load i32, ptr %l13, !tbaa !23
  store i32 %t259, ptr %l123, !tbaa !23
  %t260 = load i32, ptr %l7, !tbaa !23
  %t262 = sext i32 %t260 to i64
  store i64 %t262, ptr %l125, !tbaa !24
  store i32 4, ptr %l126
  %t263 = load i32, ptr %l2, !tbaa !23
  store i32 %t263, ptr %l127, !tbaa !23
  %t264 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t264, ptr %l128
  br label %bb31
bb31:
  %t265 = load i32, ptr %l2, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t266
  %t267 = getelementptr { i64, [4 x i64] }, ptr %t266, i32 0, i32 0
  store i64 2, ptr %t267
  %t269 = insertvalue { i32, i64 } undef, i32 %t265, 0
  %t270 = insertvalue { i32, i64 } %t269, i64 2, 1
  %t271 = getelementptr { i64, [4 x i64] }, ptr %t266, i32 0, i32 1
  store { i32, i64 } %t270, ptr %t271
  %t272 = load { i64, [4 x i64] }, ptr %t266
  %t273 = load ptr, ptr %l122, !tbaa !29
  %t274 = load i32, ptr %l123, !tbaa !23
  %t275 = load i64, ptr %l125, !tbaa !24
  %t276 = load i32, ptr %l126, !range !{i32 0, i32 52}
  %t277 = load i32, ptr %l127, !tbaa !23
  %t278 = load { i64, [4 x i64] }, ptr %l128
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t273, i32 %t274, i64 %t275, i32 %t276, i32 %t277, { i64, [4 x i64] } %t278, { i64, [4 x i64] } %t272)
  br label %bb32
bb32:
  %t280 = load ptr, ptr %lp4
  store ptr %t280, ptr %l131, !tbaa !29
  %t281 = load i64, ptr %l1, !tbaa !24
  %t283 = call { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %t281)
  store { i64, [2 x i64] } %t283, ptr %l133
  br label %bb33
bb33:
  %t284 = load i32, ptr %l3, !tbaa !23
  store { i64, [7 x i64] } zeroinitializer, ptr %t285
  %t286 = getelementptr { i64, [7 x i64] }, ptr %t285, i32 0, i32 0
  store i64 0, ptr %t286
  %t287 = load { i64, [2 x i64] }, ptr %l133
  %t288 = insertvalue { { i64, [2 x i64] }, i32 } undef, { i64, [2 x i64] } %t287, 0
  %t290 = insertvalue { { i64, [2 x i64] }, i32 } %t288, i32 %t284, 1
  %t291 = getelementptr { i64, [7 x i64] }, ptr %t285, i32 0, i32 1
  store { { i64, [2 x i64] }, i32 } %t290, ptr %t291
  %t292 = load { i64, [7 x i64] }, ptr %t285
  store { i64, [7 x i64] } %t292, ptr %l135
  %t293 = load ptr, ptr %lp4
  store ptr %t293, ptr %l136, !tbaa !29
  %t294 = load i32, ptr %l7, !tbaa !23
  %t296 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t294)
  store %"compiler/mir:Lvalue" %t296, ptr %l138
  br label %bb34
bb34:
  store { i64, [4 x i64] } zeroinitializer, ptr %t297
  %t298 = getelementptr { i64, [4 x i64] }, ptr %t297, i32 0, i32 0
  store i64 1, ptr %t298
  %t299 = load %"compiler/mir:Lvalue", ptr %l138
  %t300 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t299, 0
  %t301 = getelementptr { i64, [4 x i64] }, ptr %t297, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t300, ptr %t301
  %t302 = load { i64, [4 x i64] }, ptr %t297
  %t303 = mul i64 1, 40
  %t304 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t303)
  %t305 = insertvalue { i64, ptr } undef, i64 1, 0
  %t306 = insertvalue { i64, ptr } %t305, ptr %t304, 1
  store { i64, ptr } %t306, ptr %l140, !tbaa !27
  %t308 = getelementptr { i64, ptr }, ptr %l140, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = getelementptr { i64, [4 x i64] }, ptr %t309, i64 0
  store { i64, [4 x i64] } %t302, ptr %t310
  %t311 = load ptr, ptr %l136, !tbaa !29
  %t312 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t313 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t311, { i64, ptr } %t312)
  store %"compiler/mir:Range" %t313, ptr %l141
  br label %bb35
bb35:
  %t314 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t314, ptr %l142
  %t315 = load i32, ptr %l9, !tbaa !23
  %t317 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t315)
  store %"compiler/mir:Lvalue" %t317, ptr %l144
  br label %bb36
bb36:
  %t318 = load i32, ptr %l14, !tbaa !23
  %t319 = load i32, ptr @G_2ecompiler_2fmir_2eNoLocal, !tbaa !23
  %t320 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t321 = load { i64, [7 x i64] }, ptr %l135
  %t322 = load %"compiler/mir:Range", ptr %l141
  %t323 = load %"compiler/mir:Range", ptr %l142
  %t324 = load %"compiler/mir:Lvalue", ptr %l144
  %t328 = call %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %s0, { i64, [7 x i64] } %t321, %"compiler/mir:Range" %t322, %"compiler/mir:Range" %t323, %"compiler/mir:Lvalue" %t324, i1 true, i32 %t318, i32 %t319, i32 %t320)
  store %"compiler/mir:Call" %t328, ptr %l148
  br label %bb37
bb37:
  %t329 = load ptr, ptr %l131, !tbaa !29
  %t330 = load %"compiler/mir:Call", ptr %l148
  %t331 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v1, ptr %t329, %"compiler/mir:Call" %t330)
  store i32 %t331, ptr %l149
  br label %bb38
bb38:
  %t332 = load i32, ptr %l149, !tbaa !23
  %t333 = load ptr, ptr %lp4
  %t334 = load i32, ptr %l13, !tbaa !23
  %t335 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store { i64, [8 x i64] } zeroinitializer, ptr %t337
  %t338 = getelementptr { i64, [8 x i64] }, ptr %t337, i32 0, i32 0
  store i64 4, ptr %t338
  %t340 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t335, 0
  %t342 = insertvalue { %"compiler/source:Span", i32 } %t340, i32 %t332, 1
  %t343 = getelementptr { i64, [8 x i64] }, ptr %t337, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t342, ptr %t343
  %t344 = load { i64, [8 x i64] }, ptr %t337
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t333, i32 %t334, { i64, [8 x i64] } %t344)
  br label %bb39
bb39:
  %t348 = load ptr, ptr %lp4
  store ptr %t348, ptr %l155, !tbaa !29
  %t349 = load i32, ptr %l14, !tbaa !23
  store i32 %t349, ptr %l156, !tbaa !23
  %t350 = load i32, ptr %l10, !tbaa !23
  %t352 = sext i32 %t350 to i64
  store i64 %t352, ptr %l158, !tbaa !24
  store i32 3, ptr %l159
  %t353 = load i32, ptr %l2, !tbaa !23
  store i32 %t353, ptr %l160, !tbaa !23
  %t354 = load i32, ptr %l8, !tbaa !23
  %t356 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t354)
  store %"compiler/mir:Lvalue" %t356, ptr %l162
  br label %bb40
bb40:
  store { i64, [4 x i64] } zeroinitializer, ptr %t357
  %t358 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 0
  store i64 1, ptr %t358
  %t359 = load %"compiler/mir:Lvalue", ptr %l162
  %t360 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t359, 0
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t357, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t360, ptr %t361
  %t362 = load { i64, [4 x i64] }, ptr %t357
  store { i64, [4 x i64] } %t362, ptr %l163
  %t363 = load i32, ptr %l9, !tbaa !23
  %t365 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t363)
  store %"compiler/mir:Lvalue" %t365, ptr %l165
  br label %bb41
bb41:
  store { i64, [4 x i64] } zeroinitializer, ptr %t366
  %t367 = getelementptr { i64, [4 x i64] }, ptr %t366, i32 0, i32 0
  store i64 1, ptr %t367
  %t368 = load %"compiler/mir:Lvalue", ptr %l165
  %t369 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t368, 0
  %t370 = getelementptr { i64, [4 x i64] }, ptr %t366, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t369, ptr %t370
  %t371 = load { i64, [4 x i64] }, ptr %t366
  %t372 = load ptr, ptr %l155, !tbaa !29
  %t373 = load i32, ptr %l156, !tbaa !23
  %t374 = load i64, ptr %l158, !tbaa !24
  %t375 = load i32, ptr %l159, !range !{i32 0, i32 52}
  %t376 = load i32, ptr %l160, !tbaa !23
  %t377 = load { i64, [4 x i64] }, ptr %l163
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t372, i32 %t373, i64 %t374, i32 %t375, i32 %t376, { i64, [4 x i64] } %t377, { i64, [4 x i64] } %t371)
  br label %bb42
bb42:
  %t379 = load ptr, ptr %lp4
  %t380 = load i32, ptr %l14, !tbaa !23
  %t381 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t382 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t383
  %t384 = getelementptr { i64, [21 x i64] }, ptr %t383, i32 0, i32 0
  store i64 4, ptr %t384
  %t386 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t381, 0
  %t388 = insertvalue { %"compiler/source:Span", i32 } %t386, i32 %t382, 1
  %t389 = getelementptr { i64, [21 x i64] }, ptr %t383, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t388, ptr %t389
  %t390 = load { i64, [21 x i64] }, ptr %t383
  store { i64, [21 x i64] } %t390, ptr %l171
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t379, i32 %t380, ptr %l171)
  br label %bb43
bb43:
  %t394 = load ptr, ptr %lp4
  store ptr %t394, ptr %l173, !tbaa !29
  %t395 = load i32, ptr %l14, !tbaa !23
  store i32 %t395, ptr %l174, !tbaa !23
  %t396 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t396, ptr %l175
  %t397 = load i32, ptr %l10, !tbaa !23
  %t399 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t397)
  store %"compiler/mir:Lvalue" %t399, ptr %l177
  br label %bb44
bb44:
  store { i64, [4 x i64] } zeroinitializer, ptr %t400
  %t401 = getelementptr { i64, [4 x i64] }, ptr %t400, i32 0, i32 0
  store i64 1, ptr %t401
  %t402 = load %"compiler/mir:Lvalue", ptr %l177
  %t403 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t402, 0
  %t404 = getelementptr { i64, [4 x i64] }, ptr %t400, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t403, ptr %t404
  %t405 = load { i64, [4 x i64] }, ptr %t400
  store { i64, [8 x i64] } zeroinitializer, ptr %t406
  %t407 = getelementptr { i64, [8 x i64] }, ptr %t406, i32 0, i32 0
  store i64 5, ptr %t407
  %t408 = load %"compiler/source:Span", ptr %l175
  %t409 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t408, 0
  %t411 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t409, { i64, [4 x i64] } %t405, 1
  %t412 = getelementptr { i64, [8 x i64] }, ptr %t406, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t411, ptr %t412
  %t413 = load { i64, [8 x i64] }, ptr %t406
  %t414 = load ptr, ptr %l173, !tbaa !29
  %t415 = load i32, ptr %l174, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t414, i32 %t415, { i64, [8 x i64] } %t413)
  br label %bb45
bb45:
  %t417 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %l180, ptr %t417, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l180, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2efibHost(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp slt i64 %t1, 2
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb5
bb2:
  %t7 = load i64, ptr %l0, !tbaa !24
  %t9 = sub i64 %t7, 1
  %t11 = call i64 @compiler_2feval_2efibHost(i64 %t9)
  store i64 %t11, ptr %l7
  br label %bb3
bb3:
  %t12 = load i64, ptr %l0, !tbaa !24
  %t14 = sub i64 %t12, 2
  %t16 = call i64 @compiler_2feval_2efibHost(i64 %t14)
  store i64 %t16, ptr %l10
  br label %bb4
bb4:
  %t17 = load i64, ptr %l7, !tbaa !24
  %t18 = load i64, ptr %l10, !tbaa !24
  %t19 = add i64 %t17, %t18
  store i64 %t19, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t21 = load i64, ptr %l3, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2emul128(i64 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l4 = alloca { i64, i64 }
  %l9 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = call { i64, i64 } @compiler_2feval_2emul64(i64 %t1, i64 %t2)
  store { i64, i64 } %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load { i64, i64 }, ptr %l9
  store { i64, i64 } %t6, ptr %l4
  %t7 = getelementptr { i64, i64 }, ptr %l4, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = getelementptr { i64, i64 }, ptr %l4, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t15 = load i64, ptr %l0, !tbaa !24
  %t19 = mul i64 %t15, %a3
  %t22 = add i64 %t11, %t19
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = mul i64 %a1, %t24
  %t30 = add i64 %t22, %t27
  %t32 = insertvalue { i64, i64 } undef, i64 %t8, 0
  %t34 = insertvalue { i64, i64 } %t32, i64 %t30, 1
  store { i64, i64 } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, i64 } @compiler_2feval_2eneg128(i64 %a0, i64 %a1) #0 {
entry:
  %l4 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call { i64, i64 } @compiler_2feval_2esub128(i64 0, i64 0, i64 %a0, i64 %a1)
  store { i64, i64 } %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load { i64, i64 }, ptr %l4
  store { i64, i64 } %t6, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local void @compiler_2feval_2eovFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %lp4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca { i64, ptr }
  %l13 = alloca i32
  %l15 = alloca i32
  %l16 = alloca %"compiler/mir:Fn"
  %l20 = alloca i32
  %l21 = alloca ptr
  %l22 = alloca i32
  %l23 = alloca %"compiler/source:Span"
  %l25 = alloca %"compiler/mir:Lvalue"
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca ptr
  %l29 = alloca { i64, [4 x i64] }
  %l30 = alloca { i64, [4 x i64] }
  %l31 = alloca { i64, ptr }
  %l32 = alloca %"compiler/mir:Range"
  %l34 = alloca { i64, [21 x i64] }
  %l40 = alloca { i64, [21 x i64] }
  %l42 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/mir:Lvalue"
  %l49 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t27 = alloca %"compiler/mir:Fn", align 8
  %t67 = alloca { i64, [15 x i64] }, align 8
  %t77 = alloca { i64, [21 x i64] }, align 8
  %t94 = alloca { i64, [21 x i64] }, align 8
  %t111 = alloca { i64, [4 x i64] }, align 8
  %t117 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l6, !tbaa !29
  store i64 %a1, ptr %l7, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l8, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t5 = load i32, ptr %l3, !tbaa !23
  %t6 = load i32, ptr %l3, !tbaa !23
  %t7 = mul i64 2, 4
  %t8 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t7)
  %t9 = insertvalue { i64, ptr } undef, i64 2, 0
  %t10 = insertvalue { i64, ptr } %t9, ptr %t8, 1
  store { i64, ptr } %t10, ptr %l12, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr i32, ptr %t13, i64 0
  store i32 %t5, ptr %t14, !tbaa !33
  %t16 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i32, ptr %t17, i64 1
  store i32 %t6, ptr %t18, !tbaa !33
  %t20 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t4, { i64, ptr } %t20)
  store i32 %t21, ptr %l13
  br label %bb1
bb1:
  %t22 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t23 = load ptr, ptr %l8, !tbaa !29
  %t24 = load i32, ptr %l13, !tbaa !23
  %t26 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t23, i32 %t24, i32 %t22, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t26, ptr %l15
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l6, !tbaa !29
  %t29 = load i64, ptr %l7, !tbaa !24
  %t30 = load i32, ptr %l15, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t27, ptr %v0, ptr %v1, ptr %t28, i64 %t29, i32 %t30)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t27, i64 800, i1 false)
  br label %bb3
bb3:
  %t31 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t31, ptr %lp4
  %t32 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %t32, ptr %l16, i64 800, i1 false)
  %t33 = load ptr, ptr %lp4
  %t34 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t35 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t39 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t33, i32 %t34, %"compiler/source:Span" %t35)
  store i32 %t39, ptr %l20
  br label %bb4
bb4:
  %t40 = load i32, ptr %l20, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %lp4
  store ptr %t41, ptr %l21, !tbaa !29
  %t42 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t42, ptr %l22, !tbaa !23
  %t43 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t43, ptr %l23
  %t44 = load i32, ptr %l5, !tbaa !23
  %t46 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t44)
  store %"compiler/mir:Lvalue" %t46, ptr %l25
  br label %bb5
bb5:
  store i32 %a2, ptr %l26
  %t48 = load i32, ptr %l3, !tbaa !23
  store i32 %t48, ptr %l27, !tbaa !23
  %t49 = load ptr, ptr %lp4
  store ptr %t49, ptr %l28, !tbaa !29
  %t50 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t50, ptr %l29
  br label %bb6
bb6:
  %t51 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 1)
  store { i64, [4 x i64] } %t51, ptr %l30
  br label %bb7
bb7:
  %t52 = mul i64 2, 40
  %t53 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t52)
  %t54 = insertvalue { i64, ptr } undef, i64 2, 0
  %t55 = insertvalue { i64, ptr } %t54, ptr %t53, 1
  store { i64, ptr } %t55, ptr %l31, !tbaa !27
  %t56 = load { i64, [4 x i64] }, ptr %l29
  %t57 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, [4 x i64] }, ptr %t58, i64 0
  store { i64, [4 x i64] } %t56, ptr %t59
  %t60 = load { i64, [4 x i64] }, ptr %l30
  %t61 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr { i64, [4 x i64] }, ptr %t62, i64 1
  store { i64, [4 x i64] } %t60, ptr %t63
  %t64 = load ptr, ptr %l28, !tbaa !29
  %t65 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t66 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t64, { i64, ptr } %t65)
  store %"compiler/mir:Range" %t66, ptr %l32
  br label %bb8
bb8:
  store { i64, [15 x i64] } zeroinitializer, ptr %t67
  %t68 = getelementptr { i64, [15 x i64] }, ptr %t67, i32 0, i32 0
  store i64 4, ptr %t68
  %t69 = load i32, ptr %l26, !range !{i32 0, i32 52}
  %t70 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %t69, 0
  %t71 = load i32, ptr %l27, !tbaa !23
  %t72 = insertvalue { i32, i32, %"compiler/mir:Range" } %t70, i32 %t71, 1
  %t73 = load %"compiler/mir:Range", ptr %l32
  %t74 = insertvalue { i32, i32, %"compiler/mir:Range" } %t72, %"compiler/mir:Range" %t73, 2
  %t75 = getelementptr { i64, [15 x i64] }, ptr %t67, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t74, ptr %t75
  %t76 = load { i64, [15 x i64] }, ptr %t67
  store { i64, [21 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [21 x i64] }, ptr %t77, i32 0, i32 0
  store i64 0, ptr %t78
  %t79 = load %"compiler/source:Span", ptr %l23
  %t80 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t79, 0
  %t81 = load %"compiler/mir:Lvalue", ptr %l25
  %t82 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t80, %"compiler/mir:Lvalue" %t81, 1
  %t84 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t82, { i64, [15 x i64] } %t76, 2
  %t85 = getelementptr { i64, [21 x i64] }, ptr %t77, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t84, ptr %t85
  %t86 = load { i64, [21 x i64] }, ptr %t77
  store { i64, [21 x i64] } %t86, ptr %l34
  %t87 = load ptr, ptr %l21, !tbaa !29
  %t88 = load i32, ptr %l22, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t87, i32 %t88, ptr %l34)
  br label %bb9
bb9:
  %t90 = load ptr, ptr %lp4
  %t91 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t92 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t93 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t94
  %t95 = getelementptr { i64, [21 x i64] }, ptr %t94, i32 0, i32 0
  store i64 4, ptr %t95
  %t97 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t92, 0
  %t99 = insertvalue { %"compiler/source:Span", i32 } %t97, i32 %t93, 1
  %t100 = getelementptr { i64, [21 x i64] }, ptr %t94, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t99, ptr %t100
  %t101 = load { i64, [21 x i64] }, ptr %t94
  store { i64, [21 x i64] } %t101, ptr %l40
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t90, i32 %t91, ptr %l40)
  br label %bb10
bb10:
  %t105 = load ptr, ptr %lp4
  store ptr %t105, ptr %l42, !tbaa !29
  %t106 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t106, ptr %l43, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t107, ptr %l44
  %t108 = load i32, ptr %l5, !tbaa !23
  %t110 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t108)
  store %"compiler/mir:Lvalue" %t110, ptr %l46
  br label %bb11
bb11:
  store { i64, [4 x i64] } zeroinitializer, ptr %t111
  %t112 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 0
  store i64 1, ptr %t112
  %t113 = load %"compiler/mir:Lvalue", ptr %l46
  %t114 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t113, 0
  %t115 = getelementptr { i64, [4 x i64] }, ptr %t111, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t114, ptr %t115
  %t116 = load { i64, [4 x i64] }, ptr %t111
  store { i64, [8 x i64] } zeroinitializer, ptr %t117
  %t118 = getelementptr { i64, [8 x i64] }, ptr %t117, i32 0, i32 0
  store i64 5, ptr %t118
  %t119 = load %"compiler/source:Span", ptr %l44
  %t120 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t119, 0
  %t122 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t120, { i64, [4 x i64] } %t116, 1
  %t123 = getelementptr { i64, [8 x i64] }, ptr %t117, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t122, ptr %t123
  %t124 = load { i64, [8 x i64] }, ptr %t117
  %t125 = load ptr, ptr %l42, !tbaa !29
  %t126 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t125, i32 %t126, { i64, [8 x i64] } %t124)
  br label %bb12
bb12:
  %t128 = load ptr, ptr %lp4
  call void @llvm.memmove.p0.p0.i64(ptr %l49, ptr %t128, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l49, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2eoverflows64(i32 %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l38 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l52 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a3, label %bb1, label %bb2
bb1:
  %t3 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t5 = trunc i64 3 to i32
  %t6 = icmp eq i32 %t3, %t5
  br i1 %t6, label %bb3, label %bb4
bb2:
  br label %bb27
bb3:
  %t8 = load i64, ptr %l1, !tbaa !24
  %t9 = load i64, ptr %l2, !tbaa !24
  %t12 = add i64 %t8, %t9
  store i64 %t12, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = xor i64 %t14, %t15
  %t19 = load i64, ptr %l2, !tbaa !24
  %t20 = load i64, ptr %l4, !tbaa !24
  %t23 = xor i64 %t19, %t20
  %t26 = and i64 %t18, %t23
  %t28 = icmp slt i64 %t26, 0
  store i1 %t28, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t32 = trunc i64 4 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb6, label %bb7
bb6:
  %t35 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = sub i64 %t35, %t36
  %t41 = load i64, ptr %l1, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t45 = xor i64 %t41, %t42
  %t46 = load i64, ptr %l1, !tbaa !24
  %t50 = xor i64 %t46, %t39
  %t53 = and i64 %t45, %t50
  %t55 = icmp slt i64 %t53, 0
  store i1 %t55, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t57 = load i64, ptr %l1, !tbaa !24
  %t59 = icmp eq i64 %t57, 0
  br i1 %t59, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb11
bb10:
  %t61 = load i64, ptr %l2, !tbaa !24
  %t63 = icmp eq i64 %t61, 0
  store i1 %t63, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t65 = load i1, ptr %l38, !tbaa !21
  br i1 %t65, label %bb12, label %bb13
bb12:
  store i1 false, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t67 = shl i64 1, 63
  store i64 %t67, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l1, !tbaa !24
  %t71 = icmp eq i64 %t69, -1
  br i1 %t71, label %bb15, label %bb16
bb15:
  %t73 = load i64, ptr %l2, !tbaa !24
  %t74 = load i64, ptr %l6, !tbaa !24
  %t77 = icmp eq i64 %t73, %t74
  store i1 %t77, ptr %l45, !tbaa !21
  br label %bb17
bb16:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb17
bb17:
  %t79 = load i1, ptr %l45, !tbaa !21
  br i1 %t79, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l49, !tbaa !21
  br label %bb23
bb19:
  %t80 = load i64, ptr %l2, !tbaa !24
  %t82 = icmp eq i64 %t80, -1
  br i1 %t82, label %bb20, label %bb21
bb20:
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = load i64, ptr %l6, !tbaa !24
  %t88 = icmp eq i64 %t84, %t85
  store i1 %t88, ptr %l52, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l52, !tbaa !21
  br label %bb22
bb22:
  %t90 = load i1, ptr %l52, !tbaa !21
  store i1 %t90, ptr %l49, !tbaa !21
  br label %bb23
bb23:
  %t91 = load i1, ptr %l49, !tbaa !21
  br i1 %t91, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t93 = load i64, ptr %l1, !tbaa !24
  %t94 = load i64, ptr %l2, !tbaa !24
  %t97 = mul i64 %t93, %t94
  %t98 = load i64, ptr %l2, !tbaa !24
  %t101 = sdiv i64 %t97, %t98
  %t102 = load i64, ptr %l1, !tbaa !24
  %t105 = icmp ne i64 %t101, %t102
  store i1 %t105, ptr %rv
  br label %ret
bb27:
  %t107 = load i64, ptr %l1, !tbaa !24
  store i64 %t107, ptr %l7, !tbaa !65
  %t110 = load i64, ptr %l2, !tbaa !24
  store i64 %t110, ptr %l8, !tbaa !65
  %t113 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t115 = trunc i64 3 to i32
  %t116 = icmp eq i32 %t113, %t115
  br i1 %t116, label %bb28, label %bb29
bb28:
  %t118 = load i64, ptr %l7, !tbaa !65
  %t119 = load i64, ptr %l8, !tbaa !65
  %t122 = add i64 %t118, %t119
  %t123 = load i64, ptr %l7, !tbaa !65
  %t126 = icmp ult i64 %t122, %t123
  store i1 %t126, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t128 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t130 = trunc i64 4 to i32
  %t131 = icmp eq i32 %t128, %t130
  br i1 %t131, label %bb31, label %bb32
bb31:
  %t133 = load i64, ptr %l8, !tbaa !65
  %t134 = load i64, ptr %l7, !tbaa !65
  %t137 = icmp ugt i64 %t133, %t134
  store i1 %t137, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t139 = load i64, ptr %l7, !tbaa !65
  %t141 = icmp eq i64 %t139, 0
  br i1 %t141, label %bb34, label %bb35
bb34:
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t144 = load i64, ptr %l7, !tbaa !65
  %t145 = load i64, ptr %l8, !tbaa !65
  %t148 = mul i64 %t144, %t145
  %t149 = load i64, ptr %l7, !tbaa !65
  %t152 = udiv i64 %t148, %t149
  %t153 = load i64, ptr %l8, !tbaa !65
  %t156 = icmp ne i64 %t152, %t153
  store i1 %t156, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2eretFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %lp3 = alloca ptr
  %l4 = alloca i32
  %l7 = alloca %"compiler/mir:Fn"
  %l8 = alloca ptr
  %l10 = alloca i32
  %l12 = alloca i32
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l17 = alloca %"compiler/mir:Lvalue"
  %l20 = alloca { i64, [21 x i64] }
  %l26 = alloca { i64, [21 x i64] }
  %l28 = alloca ptr
  %l29 = alloca i32
  %l30 = alloca %"compiler/source:Span"
  %l32 = alloca %"compiler/mir:Lvalue"
  %l35 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t3 = alloca %"compiler/mir:Fn", align 8
  %t25 = alloca { i64, [15 x i64] }, align 8
  %t31 = alloca { i64, [21 x i64] }, align 8
  %t48 = alloca { i64, [21 x i64] }, align 8
  %t65 = alloca { i64, [4 x i64] }, align 8
  %t71 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2enfn(ptr %t3, ptr %v0, ptr %v1, ptr %t1, i64 %a1)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %t3, i64 800, i1 false)
  br label %bb1
bb1:
  %t6 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t6, ptr %lp3
  %t7 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t7, ptr %l7, i64 800, i1 false)
  %t8 = load ptr, ptr %lp3
  store ptr %t8, ptr %l8, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t9, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i32 %t11, ptr %l10
  br label %bb2
bb2:
  %t12 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t13 = load ptr, ptr %l8, !tbaa !29
  %t14 = load i32, ptr %l10, !tbaa !23
  %t16 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t13, i32 %t14, %"compiler/source:Span" %t12)
  store i32 %t16, ptr %l12
  br label %bb3
bb3:
  %t17 = load i32, ptr %l12, !tbaa !23
  store i32 %t17, ptr %l4, !tbaa !23
  %t18 = load ptr, ptr %lp3
  store ptr %t18, ptr %l13, !tbaa !29
  %t19 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t19, ptr %l14, !tbaa !23
  %t20 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t20, ptr %l15
  %t21 = load i32, ptr %l4, !tbaa !23
  %t23 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t21)
  store %"compiler/mir:Lvalue" %t23, ptr %l17
  br label %bb4
bb4:
  store { i64, [15 x i64] } zeroinitializer, ptr %t25
  %t26 = getelementptr { i64, [15 x i64] }, ptr %t25, i32 0, i32 0
  store i64 0, ptr %t26
  %t28 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %a2, 0
  %t29 = getelementptr { i64, [15 x i64] }, ptr %t25, i32 0, i32 1
  store { { i64, [4 x i64] } } %t28, ptr %t29
  %t30 = load { i64, [15 x i64] }, ptr %t25
  store { i64, [21 x i64] } zeroinitializer, ptr %t31
  %t32 = getelementptr { i64, [21 x i64] }, ptr %t31, i32 0, i32 0
  store i64 0, ptr %t32
  %t33 = load %"compiler/source:Span", ptr %l15
  %t34 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t33, 0
  %t35 = load %"compiler/mir:Lvalue", ptr %l17
  %t36 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t34, %"compiler/mir:Lvalue" %t35, 1
  %t38 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t36, { i64, [15 x i64] } %t30, 2
  %t39 = getelementptr { i64, [21 x i64] }, ptr %t31, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t38, ptr %t39
  %t40 = load { i64, [21 x i64] }, ptr %t31
  store { i64, [21 x i64] } %t40, ptr %l20
  %t41 = load ptr, ptr %l13, !tbaa !29
  %t42 = load i32, ptr %l14, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t41, i32 %t42, ptr %l20)
  br label %bb5
bb5:
  %t44 = load ptr, ptr %lp3
  %t45 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t46 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t47 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [21 x i64] }, ptr %t48, i32 0, i32 0
  store i64 4, ptr %t49
  %t51 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t46, 0
  %t53 = insertvalue { %"compiler/source:Span", i32 } %t51, i32 %t47, 1
  %t54 = getelementptr { i64, [21 x i64] }, ptr %t48, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t53, ptr %t54
  %t55 = load { i64, [21 x i64] }, ptr %t48
  store { i64, [21 x i64] } %t55, ptr %l26
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t44, i32 %t45, ptr %l26)
  br label %bb6
bb6:
  %t59 = load ptr, ptr %lp3
  store ptr %t59, ptr %l28, !tbaa !29
  %t60 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t60, ptr %l29, !tbaa !23
  %t61 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t61, ptr %l30
  %t62 = load i32, ptr %l4, !tbaa !23
  %t64 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t62)
  store %"compiler/mir:Lvalue" %t64, ptr %l32
  br label %bb7
bb7:
  store { i64, [4 x i64] } zeroinitializer, ptr %t65
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 0
  store i64 1, ptr %t66
  %t67 = load %"compiler/mir:Lvalue", ptr %l32
  %t68 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t67, 0
  %t69 = getelementptr { i64, [4 x i64] }, ptr %t65, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t68, ptr %t69
  %t70 = load { i64, [4 x i64] }, ptr %t65
  store { i64, [8 x i64] } zeroinitializer, ptr %t71
  %t72 = getelementptr { i64, [8 x i64] }, ptr %t71, i32 0, i32 0
  store i64 5, ptr %t72
  %t73 = load %"compiler/source:Span", ptr %l30
  %t74 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t73, 0
  %t76 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t74, { i64, [4 x i64] } %t70, 1
  %t77 = getelementptr { i64, [8 x i64] }, ptr %t71, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t76, ptr %t77
  %t78 = load { i64, [8 x i64] }, ptr %t71
  %t79 = load ptr, ptr %l28, !tbaa !29
  %t80 = load i32, ptr %l29, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t79, i32 %t80, { i64, [8 x i64] } %t78)
  br label %bb8
bb8:
  %t82 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %t82, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l35, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2esatOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t3 = trunc i64 48 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb9
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t8 = trunc i64 49 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb9
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t13 = trunc i64 50 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb9
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t18 = trunc i64 51 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb15
bb10:
  br i1 true, label %bb11, label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb14
bb13:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_b8e29b8ed59f9a38_134c8e80a89a2a2c)
  unreachable
bb15:
  %t21 = load i1, ptr %l1, !tbaa !21
  store i1 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2etdefine(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l6 = alloca { i64, ptr }
  %l8 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l2, !tbaa !29
  %t5 = call { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v2, ptr %v0, ptr %s0, ptr %t1, ptr %a0)
  store { i64, ptr } %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t6, ptr %l3, !tbaa !27
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %s0, ptr %s0, { i64, ptr } %t7, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t9, ptr %l8
  br label %bb2
bb2:
  %t10 = load i1, ptr %l8, !tbaa !21
  br i1 %t10, label %bb3, label %bb4
bb3:
  %t12 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefine(ptr %v1, ptr %v2, ptr %a1, ptr %t12)
  br label %bb5
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t17 = extractvalue { i64, ptr } %t15, 1
  %t18 = extractvalue { i64, ptr } %t15, 0
  %t19 = insertvalue { i64, ptr } undef, i64 %t18, 0
  %t20 = insertvalue { i64, ptr } %t19, ptr %t17, 1
  call void @__olang_check_failed_text(ptr @olang_loc_48f03219a23009f5_27a95ef9d9612249, { i64, ptr } %t20)
  unreachable
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2etermNamesGlobal(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, [8 x i64] }
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l6 = alloca i1
  %l11 = alloca i1
  %l16 = alloca i1
  %l24 = alloca i1
  %l31 = alloca ptr
  %l36 = alloca %"compiler/mir:Call"
  %l38 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [8 x i64] } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [8 x i64] }, ptr %l1
  %t3 = extractvalue { i64, [8 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 2
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t7 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [4 x i64] }, ptr %t7
  store { i64, [4 x i64] } %t8, ptr %l2
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load { i64, [4 x i64] }, ptr %l2
  %t12 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t10)
  store i1 %t12, ptr %l11
  br label %bb4
bb4:
  %t13 = load i1, ptr %l11, !tbaa !21
  store i1 %t13, ptr %l6, !tbaa !21
  br label %bb30
bb5:
  %t14 = load { i64, [8 x i64] }, ptr %l1
  %t16 = extractvalue { i64, [8 x i64] } %t14, 0
  %t17 = icmp eq i64 %t16, 3
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t19 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t20 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t19, i32 0, i32 0
  %t21 = load { i64, [4 x i64] }, ptr %t20
  store { i64, [4 x i64] } %t21, ptr %l3
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t23 = load { i64, [4 x i64] }, ptr %l3
  %t25 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t23)
  store i1 %t25, ptr %l16
  br label %bb9
bb9:
  %t26 = load i1, ptr %l16, !tbaa !21
  store i1 %t26, ptr %l6, !tbaa !21
  br label %bb30
bb10:
  %t27 = load { i64, [8 x i64] }, ptr %l1
  %t29 = extractvalue { i64, [8 x i64] } %t27, 0
  %t30 = icmp eq i64 %t29, 5
  br i1 %t30, label %bb11, label %bb12
bb11:
  %t32 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t33 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t32, i32 0, i32 1
  %t34 = load { i64, [4 x i64] }, ptr %t33
  store { i64, [4 x i64] } %t34, ptr %l4
  br label %bb15
bb12:
  %t36 = load { i64, [8 x i64] }, ptr %l1
  %t38 = extractvalue { i64, [8 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 11
  br i1 %t39, label %bb13, label %bb14
bb13:
  %t41 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t42 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t41, i32 0, i32 1
  %t43 = load { i64, [4 x i64] }, ptr %t42
  store { i64, [4 x i64] } %t43, ptr %l4
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t45 = load { i64, [4 x i64] }, ptr %l4
  %t47 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t45)
  store i1 %t47, ptr %l24
  br label %bb16
bb16:
  %t48 = load i1, ptr %l24, !tbaa !21
  store i1 %t48, ptr %l6, !tbaa !21
  br label %bb30
bb17:
  %t49 = load { i64, [8 x i64] }, ptr %l1
  %t51 = extractvalue { i64, [8 x i64] } %t49, 0
  %t52 = icmp eq i64 %t51, 4
  br i1 %t52, label %bb18, label %bb19
bb18:
  %t54 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32 }, ptr %t54, i32 0, i32 1
  %t56 = load i32, ptr %t55
  store i32 %t56, ptr %l5, !tbaa !23
  br label %bb22
bb19:
  %t58 = load { i64, [8 x i64] }, ptr %l1
  %t60 = extractvalue { i64, [8 x i64] } %t58, 0
  %t61 = icmp eq i64 %t60, 6
  br i1 %t61, label %bb20, label %bb21
bb20:
  %t63 = getelementptr { i64, [8 x i64] }, ptr %l1, i32 0, i32 1
  %t64 = getelementptr { %"compiler/source:Span", i32 }, ptr %t63, i32 0, i32 1
  %t65 = load i32, ptr %t64
  store i32 %t65, ptr %l5, !tbaa !23
  br label %bb22
bb21:
  br label %bb25
bb22:
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l31, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/mir:Fn", ptr %t68, i32 0, i32 14
  %t71 = load i32, ptr %l5, !tbaa !23
  %t73 = sext i32 %t71 to i64
  %t76 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t70, i64 %t73)
  store %"compiler/mir:Call" %t76, ptr %l36
  br label %bb23
bb23:
  %t77 = getelementptr %"compiler/mir:Call", ptr %l36, i32 0, i32 1
  %t78 = load %"compiler/mir:Range", ptr %t77
  %t79 = load ptr, ptr %l31, !tbaa !29
  %t81 = call i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %t79, %"compiler/mir:Range" %t78)
  store i1 %t81, ptr %l38
  br label %bb24
bb24:
  %t82 = load i1, ptr %l38, !tbaa !21
  store i1 %t82, ptr %l6, !tbaa !21
  br label %bb30
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_70d3567da39f3a7a_be006e6544252cae)
  unreachable
bb30:
  %t83 = load i1, ptr %l6, !tbaa !21
  store i1 %t83, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, [2 x i64] } @compiler_2feval_2etkey(i64 %a0) #0 {
entry:
  %rv = alloca { i64, [2 x i64] }
  %t5 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = trunc i64 %a0 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t8 = insertvalue { i32 } undef, i32 %t3, 0
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i32 } %t8, ptr %t9
  %t10 = load { i64, [2 x i64] }, ptr %t5
  store { i64, [2 x i64] } %t10, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i1 @compiler_2feval_2etrueOverflows(i32 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l33 = alloca i64
  %l36 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i1
  %l54 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l3, !tbaa !24
  %t3 = icmp slt i64 %t1, 8
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t7 = trunc i64 3 to i32
  %t8 = icmp eq i32 %t5, %t7
  br i1 %t8, label %bb3, label %bb4
bb2:
  br label %bb18
bb3:
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load i64, ptr %l2, !tbaa !24
  %t14 = add i64 %t10, %t11
  store i64 %t14, ptr %l12, !tbaa !24
  br label %bb8
bb4:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t18 = trunc i64 4 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i64, ptr %l1, !tbaa !24
  %t22 = load i64, ptr %l2, !tbaa !24
  %t25 = sub i64 %t21, %t22
  store i64 %t25, ptr %l18, !tbaa !24
  br label %bb7
bb6:
  %t27 = load i64, ptr %l1, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t31 = mul i64 %t27, %t28
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l12, !tbaa !24
  br label %bb8
bb8:
  %t34 = load i64, ptr %l12, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  %t35 = load i1, ptr %l4, !tbaa !21
  br i1 %t35, label %bb9, label %bb10
bb9:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = mul i64 8, %t37
  %t41 = sub i64 %t39, 1
  store i64 %t41, ptr %l29, !tbaa !24
  %t42 = load i64, ptr %l29, !tbaa !24
  %t43 = load i64, ptr %l29, !tbaa !24
  %t44 = shl i64 1, %t43
  %t46 = sub i64 0, %t44
  store i64 %t46, ptr %l26, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l26, !tbaa !24
  br label %bb11
bb11:
  %t48 = load i64, ptr %l26, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  %t49 = load i1, ptr %l4, !tbaa !21
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load i64, ptr %l3, !tbaa !24
  %t53 = mul i64 8, %t51
  %t55 = sub i64 %t53, 1
  store i64 %t55, ptr %l36, !tbaa !24
  %t56 = load i64, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = shl i64 1, %t57
  %t60 = sub i64 %t58, 1
  store i64 %t60, ptr %l33, !tbaa !24
  br label %bb14
bb13:
  %t62 = load i64, ptr %l3, !tbaa !24
  %t64 = mul i64 8, %t62
  store i64 %t64, ptr %l40, !tbaa !24
  %t65 = load i64, ptr %l40, !tbaa !24
  %t66 = load i64, ptr %l40, !tbaa !24
  %t67 = shl i64 1, %t66
  %t69 = sub i64 %t67, 1
  store i64 %t69, ptr %l33, !tbaa !24
  br label %bb14
bb14:
  %t71 = load i64, ptr %l33, !tbaa !24
  store i64 %t71, ptr %l7, !tbaa !24
  %t72 = load i64, ptr %l5, !tbaa !24
  %t73 = load i64, ptr %l6, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  br i1 %t76, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb17
bb16:
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = icmp sgt i64 %t78, %t79
  store i1 %t82, ptr %l46, !tbaa !21
  br label %bb17
bb17:
  %t84 = load i1, ptr %l46, !tbaa !21
  store i1 %t84, ptr %rv
  br label %ret
bb18:
  %t85 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t86 = load i64, ptr %l1, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  %t88 = load i1, ptr %l4, !tbaa !21
  %t93 = call i1 @compiler_2feval_2eoverflows64(i32 %t85, i64 %t86, i64 %t87, i1 %t88)
  store i1 %t93, ptr %l54
  br label %bb19
bb19:
  %t94 = load i1, ptr %l54, !tbaa !21
  store i1 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2eult64(i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t7 = icmp ult i64 %a0, %a1
  store i1 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2ewideMin(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, i64 }
  %l7 = alloca i64
  %l11 = alloca { i64, i64 }
  %l16 = alloca { i64, i64 }
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sle i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t7 = call i64 @compiler_2feval_2eminBits(i64 %t5)
  store i64 %t7, ptr %l7
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t8 = load i64, ptr %l7, !tbaa !24
  %t9 = insertvalue { i64, i64 } undef, i64 %t8, 0
  %t10 = insertvalue { i64, i64 } %t9, i64 -1, 1
  store { i64, i64 } %t10, ptr %rv
  br label %ret
bb4:
  %t12 = load i64, ptr %l0, !tbaa !24
  %t14 = sub i64 %t12, 1
  %t16 = call { i64, i64 } @compiler_2feval_2eshl128(i64 1, i64 0, i64 %t14)
  store { i64, i64 } %t16, ptr %l11
  br label %bb5
bb5:
  %t17 = load { i64, i64 }, ptr %l11
  store { i64, i64 } %t17, ptr %l1
  %t18 = getelementptr { i64, i64 }, ptr %l1, i32 0, i32 0
  %t19 = load i64, ptr %t18, !tbaa !24
  %t21 = getelementptr { i64, i64 }, ptr %l1, i32 0, i32 1
  %t22 = load i64, ptr %t21, !tbaa !24
  %t28 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t19, i64 %t22)
  store { i64, i64 } %t28, ptr %l16
  br label %bb6
bb6:
  %t29 = load { i64, i64 }, ptr %l16
  store { i64, i64 } %t29, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1) #0 {
entry:
  %rv = alloca %"compiler/eval:Ptr"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/eval:Ptr" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/eval:Ptr" %t6, i64 %a1, 1
  store %"compiler/eval:Ptr" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_3agenRec_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:frame"
  %l3 = alloca i64
  %l4 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i1
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"compiler/eval:frame"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"compiler/eval:genRec"
  %t1 = alloca %"compiler/eval:frame", align 8
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l0, !tbaa !24
  store i64 0, ptr %l1, !tbaa !24
  call void @compiler_2feval_3aframe_2ector(ptr %t1, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l12, i64 136, i1 false)
  store i64 -1, ptr %l3, !tbaa !24
  %t2 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t2, ptr %l4
  store i1 false, ptr %l5, !tbaa !21
  %t4 = ptrtoint ptr %v0 to i64
  store i64 %t4, ptr %l14, !tbaa !24
  %t5 = load i1, ptr @olang_2esole_2ecompiler_2feval_3agenRec_2e6
  br i1 %t5, label %bb2, label %bb3
bb2:
  %t7 = call ptr @__olang_region_make(ptr %v0)
  %t8 = ptrtoint ptr %t7 to i64
  store i64 %t8, ptr %l14, !tbaa !24
  br label %bb3
bb3:
  %t9 = load i64, ptr %l14
  %t10 = inttoptr i64 %t9 to ptr
  %t11 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t10, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l16
  br label %bb4
bb4:
  %t12 = load i1, ptr @olang_2esole_2ecompiler_2feval_3agenRec_2e6
  br i1 %t12, label %bb5, label %bb6
bb5:
  %t14 = load i64, ptr %l14
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t17 = load { i64, ptr }, ptr %t16
  %t18 = extractvalue { i64, ptr } %t17, 1
  %t19 = call ptr @__olang_region_or(ptr %t18, ptr null)
  %t20 = icmp ne ptr %t19, null
  %t21 = select i1 %t20, ptr %t19, ptr null
  %t22 = icmp eq ptr %t21, %t15
  call void @__olang_region_settle(ptr %t15, i1 %t22)
  br label %bb6
bb6:
  %t23 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t23, ptr %l6
  %t24 = ptrtoint ptr %v0 to i64
  store i64 %t24, ptr %l18, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2feval_3agenRec_2e7
  br i1 %t25, label %bb7, label %bb8
bb7:
  %t27 = call ptr @__olang_region_make(ptr %v0)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t29 = load i64, ptr %l18
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l20
  br label %bb9
bb9:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2feval_3agenRec_2e7
  br i1 %t32, label %bb10, label %bb11
bb10:
  %t34 = load i64, ptr %l18
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr null
  %t42 = icmp eq ptr %t41, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t42)
  br label %bb11
bb11:
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  %t44 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 0
  %t45 = load i64, ptr %l0, !tbaa !24
  store i64 %t45, ptr %t44, !tbaa !24
  %t46 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 1
  %t47 = load i64, ptr %l1, !tbaa !24
  store i64 %t47, ptr %t46, !tbaa !24
  %t48 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 2
  call void @llvm.memmove.p0.p0.i64(ptr %t48, ptr %l2, i64 136, i1 false)
  %t49 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 3
  %t50 = load i64, ptr %l3, !tbaa !24
  store i64 %t50, ptr %t49, !tbaa !24
  %t51 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 4
  %t52 = load %"compiler/eval:Ptr", ptr %l4
  store %"compiler/eval:Ptr" %t52, ptr %t51
  %t53 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 5
  %t54 = load i1, ptr %l5, !tbaa !21
  store i1 %t54, ptr %t53, !tbaa !21
  %t55 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 6
  %t56 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t56, ptr %t55
  %t57 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %t57
  %t59 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 8
  store i64 -1, ptr %t59, !tbaa !24
  %t61 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 9
  store i64 0, ptr %t61, !tbaa !24
  %t63 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 10
  store i64 0, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 11
  store i64 -1, ptr %t65, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l22, i64 280, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %v0, i64 %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/eval:gkey"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/eval:gkey" undef, i64 %a0, 0
  %t8 = insertvalue %"compiler/eval:gkey" %t6, i32 %a1, 1
  store %"compiler/eval:gkey" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:gkey", ptr %rv
  ret %"compiler/eval:gkey" %rr
}

define dso_local %"compiler/eval:reg" @compiler_2feval_3areg_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:reg"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:reg" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:reg" %t2, i64 0, 1
  %t6 = insertvalue %"compiler/eval:reg" %t4, i64 0, 2
  %t8 = insertvalue %"compiler/eval:reg" %t6, i64 0, 3
  %t10 = insertvalue %"compiler/eval:reg" %t8, i64 -1, 4
  %t12 = insertvalue %"compiler/eval:reg" %t10, i64 -1, 5
  %t14 = insertvalue %"compiler/eval:reg" %t12, i64 0, 6
  %t16 = insertvalue %"compiler/eval:reg" %t14, i64 -1, 7
  store %"compiler/eval:reg" %t16, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:reg", ptr %rv
  ret %"compiler/eval:reg" %rr
}

declare void @llvm.memset.p0.i64(ptr, i8, i64, i1)
define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3acfn(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"compiler/eval:cfn"
  %t1 = alloca %"compiler/eval:cfn", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2feval_3acfn_2ector(ptr %t1, ptr %v0)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 264, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_check_failed(ptr) cold noreturn
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
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
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
@.d1 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: internal compiler error: file " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_errpay_pop()
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2feval_3aMachine_2e57 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
@olang_2esole_2ecompiler_2feval_3aMachine_2e55 = weak hidden constant i1 false
define linkonce_odr void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %out) #0 {
entry:
  %l0 = alloca %"compiler/eval:frame"
  %t1 = alloca %"compiler/eval:frame", align 8
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_3aframe_2ector(ptr %t1, ptr %t2)
  call void @llvm.memmove.p0.p0.i64(ptr %l0, ptr %t1, i64 136, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l0, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

@.d5 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d6 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d7 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
declare void @__olang_check_failed_text(ptr, { i64, ptr }) cold noreturn
@olang_2esole_2ecompiler_2feval_3agenRec_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feval_3agenRec_2e7 = weak hidden constant i1 false
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eLen_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ePush_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_8e30d4bcef98d937_821e6ec72834ca4b = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edecode(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2e_Hf0a5beca6f8aee4731a76bd327ae0a99(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@olang_loc_8d25544d0bd70291_3d464b777e1774ad = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_6f754b89a33b6044_bbcfb7dbcaa58778 = external constant [0 x i8]
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evEnum = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
@G_2ecompiler_2feval_2evOrd = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_561376b2ca02a7ba_25f299f9320c8ad6 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaCode = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2emove(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2efConst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a0)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2efCopy = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenLoad(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, i64 %a3, i64 %a4, ptr %a5, i64 %a6)
@olang_loc_fa5d44bd34a52c36_2176aa5fee74345a = external constant [0 x i8]
@olang_loc_9ff5c0c5c0f3031a_9845a0a415f7f056 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
@olang_loc_dc78e3ab17f01d1b_791cd762b2865477 = external constant [0 x i8]
@olang_loc_1a5820d8caa3da70_8ddb412d29c69c24 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyFreedEarly = external constant <{ [8 x i8], ptr }>
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_c25616630356082_96e485ee4d1c8d36 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eglobalWritten(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/mir:Range" %a3)
@olang_loc_d7d71e32b1402da8_19cce939fe39e26c = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %a0, ptr %a1)
@G_2ecompiler_2feval_2eWhyClosed = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:task" @compiler_2feval_3atask_2ector(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2ePush_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, %"compiler/eval:task" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eLen_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0)
@olang_loc_4df6f2ee185eb0d1_4c6469cdbf591dfd = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, %"compiler/eval:Ptr" %a3, i64 %a4, i64 %a5)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eTruncate_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyNoGlobal = external constant <{ [8 x i8], ptr }>
@olang_loc_de6102181a77a536_5fca55a0d6277082 = external constant [0 x i8]
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyNull = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyPayload = external constant <{ [8 x i8], ptr }>
@olang_loc_c157b2e02f5238d7_241c429033d52203 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyDepth = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyRunDepth = external constant <{ [8 x i8], ptr }>
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_f2c339cbb479452c_c316cd9120a44978 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyEqDepth = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyRunEqDepth = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0)
@G_2ecompiler_2feval_2esStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d67750d3ea89b5a6_4cf132db9678b04a = external constant [0 x i8]
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@olang_loc_84b7ba4c2a706fc5_7fbf5d3432269f09 = external constant [0 x i8]
declare ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_12565802a2336670_a75db38aedd0e3fc = external constant [0 x i8]
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2edataFor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5)
@G_2ecompiler_2feval_2evPair = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
@G_2ecompiler_2feval_2evPtr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
@olang_loc_1069159e4cdf0a01_3c7ea434b50ec3ad = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2emutableGlobal(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_4b87b113311cbcf6_8401054b0e12d93a = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2erGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2efastStride = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eassign(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esInert = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBuilder = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esJoin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2esBlock = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@olang_loc_fe5b662c8cf4b58_7006b7c636f2421c = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropDefers(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2einitFrame(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyDestructor = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2egDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddReg(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, %"compiler/eval:Ptr" %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereleaseHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eheldScope(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrite(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eSetAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2)
@G_2ecompiler_2fmir_2eI64T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\06\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholders(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3)
@G_2ecompiler_2feval_2eWhyOutside = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2espawn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
@olang_loc_7f284a3be8281e29_2098fbd9ac092a4d = external constant [0 x i8]
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayTarget(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i64 %a4)
declare %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunCleanups(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseOpen(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f4c8d7149bd44e26_572dd2a903112792 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %a0)
@olang_loc_2654da324b88ad87_946d0eedc2d95193 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2eIntBytes(i64 %a0)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eB0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 %a0)
declare void @compiler_2feval_2etprim(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6)
declare %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %a0)
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v0, ptr %a0, i32 %a1, { i64, [8 x i64] } %a2)
@G_2ecompiler_2feval_2eS0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2fmir_2eNoLocal = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare %"compiler/mir:Call" @compiler_2fmir_3aCall_2ector(ptr %v0, { i64, [7 x i64] } %a0, %"compiler/mir:Range" %a1, %"compiler/mir:Range" %a2, %"compiler/mir:Lvalue" %a3, i1 %a4, i32 %a5, i32 %a6, i32 %a7)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddCall(ptr %v0, ptr %a0, %"compiler/mir:Call" %a1)
declare { i64, i64 } @compiler_2feval_2emul64(i64 %a0, i64 %a1)
declare { i64, i64 } @compiler_2feval_2esub128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2feval_2enfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_b8e29b8ed59f9a38_134c8e80a89a2a2c = external constant [0 x i8]
declare { i64, ptr } @compiler_2fmir_2ecompiler_2fmir_3aFn_2eVerify(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@olang_loc_48f03219a23009f5_27a95ef9d9612249 = external constant [0 x i8]
declare i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %a0)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1)
@olang_loc_70d3567da39f3a7a_be006e6544252cae = external constant [0 x i8]
declare i64 @compiler_2feval_2eminBits(i64 %a0)
declare { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2feval_3acfn_2ector(ptr %out, ptr %v0)

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
