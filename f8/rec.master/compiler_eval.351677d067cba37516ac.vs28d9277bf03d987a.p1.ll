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
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/eval:Machine" = type { ptr, i32, i64, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:reg" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64, i1, i1 }
%"compiler/eval:Snapshot" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" = type { ptr, i64 }
%"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" = type { i64, i64 }
%"compiler/eval:Image" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
define dso_local { i64, i64 } @compiler_2feval_2eadd128(i64 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l15 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t5 = add i64 %t1, %a2
  store i64 %t5, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  store i64 %t7, ptr %l8, !tbaa !24
  %t12 = add i64 %a1, %a3
  store i64 %t12, ptr %l11, !tbaa !24
  %t13 = load i64, ptr %l4, !tbaa !24
  %t14 = load i64, ptr %l0, !tbaa !24
  %t17 = call i1 @compiler_2feval_2eult64(i64 %t13, i64 %t14)
  store i1 %t17, ptr %l14
  br label %bb1
bb1:
  %t18 = load i1, ptr %l14, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  store i64 1, ptr %l15, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb4
bb4:
  %t19 = load i64, ptr %l11, !tbaa !24
  %t20 = load i64, ptr %l15, !tbaa !24
  %t21 = add i64 %t19, %t20
  %t22 = load i64, ptr %l8, !tbaa !24
  %t23 = insertvalue { i64, i64 } undef, i64 %t22, 0
  %t25 = insertvalue { i64, i64 } %t23, i64 %t21, 1
  store { i64, i64 } %t25, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2feval_2ebmask(i64 %a0) #0 {
entry:
  %l0 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %rv = alloca i64
  store i64 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t3 = icmp sge i64 %t1, 64
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb3
bb2:
  %t5 = load i64, ptr %l0, !tbaa !24
  store i64 %t5, ptr %l4, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = shl i64 1, %t7
  %t10 = sub i64 %t8, 1
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t12 = load i64, ptr %l3, !tbaa !24
  store i64 %t12, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eElems(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca { %"compiler/eval:Ptr", i64 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %lp8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca { %"compiler/eval:Ptr", i64 }
  %l23 = alloca i64
  %l24 = alloca i64
  %l32 = alloca i64
  %l35 = alloca i64
  %l53 = alloca i64
  %l54 = alloca ptr
  %l61 = alloca %"compiler/eval:Ptr"
  %l63 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i32 %a2)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l18
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l18
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l4
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l5
  %t12 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l4, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l6, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load i32, ptr %l3, !tbaa !23
  %t19 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t15, i32 %t16)
  store i64 %t19, ptr %l23
  br label %bb2
bb2:
  %t20 = load i64, ptr %l23, !tbaa !24
  store i64 %t20, ptr %l7, !tbaa !24
  %t21 = load i64, ptr %l6, !tbaa !24
  store i64 %t21, ptr %l24, !tbaa !24
  %t22 = load i64, ptr %l24, !tbaa !24
  %t23 = icmp sge i64 %t22, 0
  br i1 %t23, label %bb3, label %bb4
bb3:
  %t25 = load i64, ptr %l24, !tbaa !24
  %t26 = icmp sle i64 %t25, 1152921504606846975
  br i1 %t26, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a07810e0cbb459c4_651f13a6a529fa18)
  unreachable
bb5:
  %t28 = load i64, ptr %l24, !tbaa !24
  %t29 = mul i64 %t28, 8
  %t30 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t29)
  %t31 = insertvalue { i64, ptr } undef, i64 %t28, 0
  %t32 = insertvalue { i64, ptr } %t31, ptr %t30, 1
  %t33 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t33, ptr %lp8
  %t35 = load ptr, ptr %lp8
  store { i64, ptr } %t32, ptr %t35, !tbaa !27
  store i64 0, ptr %l9, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  store i64 %t36, ptr %l10, !tbaa !24
  store i64 1, ptr %l11, !tbaa !24
  %t38 = load i64, ptr %l10, !tbaa !24
  %t39 = load i64, ptr %l9, !tbaa !24
  %t42 = icmp sgt i64 %t38, %t39
  br i1 %t42, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_a07810e0cbb459c4_651f13a6a529fa18)
  unreachable
bb7:
  %t44 = load i64, ptr %l11, !tbaa !24
  %t46 = icmp sgt i64 %t44, 0
  br i1 %t46, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l32, !tbaa !24
  br label %bb12
bb9:
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l9, !tbaa !24
  %t52 = sub i64 %t48, %t49
  %t53 = load i64, ptr %l11, !tbaa !24
  %t56 = add i64 %t52, %t53
  %t58 = sub i64 %t56, 1
  %t59 = load i64, ptr %l11, !tbaa !24
  %t62 = sdiv i64 %t58, %t59
  store i64 %t62, ptr %l35, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l35, !tbaa !24
  br label %bb11
bb11:
  %t64 = load i64, ptr %l35, !tbaa !24
  store i64 %t64, ptr %l32, !tbaa !24
  br label %bb12
bb12:
  %t65 = load i64, ptr %l32, !tbaa !24
  store i64 %t65, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  br label %bb13
bb13:
  store %olang.scope zeroinitializer, ptr %s2
  %t66 = load i64, ptr %l13, !tbaa !24
  %t67 = load i64, ptr %l12, !tbaa !24
  %t70 = icmp slt i64 %t66, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t74 = load i64, ptr %l9, !tbaa !24
  %t75 = load i64, ptr %l13, !tbaa !24
  %t76 = load i64, ptr %l11, !tbaa !24
  %t79 = mul i64 %t75, %t76
  %t82 = add i64 %t74, %t79
  store i64 %t82, ptr %l14, !tbaa !24
  %t84 = load i64, ptr %l14, !tbaa !24
  store i64 %t84, ptr %l53, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  store ptr %t85, ptr %l54, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !24
  %t88 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t89 = load i64, ptr %t88, !tbaa !24
  %t90 = load i64, ptr %l14, !tbaa !24
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = mul i64 %t90, %t91
  %t97 = add i64 %t89, %t94
  %t100 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t87, i64 %t97)
  store %"compiler/eval:Ptr" %t100, ptr %l61
  br label %bb17
bb17:
  %t101 = load i32, ptr %l3, !tbaa !23
  %t102 = load ptr, ptr %l54, !tbaa !29
  %t103 = load %"compiler/eval:Ptr", ptr %l61
  %t105 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %t102, %"compiler/eval:Ptr" %t103, i32 %t101)
  store i64 %t105, ptr %l63
  br label %bb18
bb18:
  %t106 = load i64, ptr %l63, !tbaa !24
  %t107 = load ptr, ptr %lp8
  %t108 = load i64, ptr %l53, !tbaa !24
  %t109 = getelementptr { i64, ptr }, ptr %t107, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i64, ptr %t110, i64 %t108
  store i64 %t106, ptr %t111, !tbaa !34
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = add i64 %t112, 1
  store i64 %t114, ptr %l13, !tbaa !24
  br label %bb13
bb20:
  %t116 = load ptr, ptr %lp8
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l39 = alloca i1
  %l41 = alloca { i64, ptr }
  %l60 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i32
  %l73 = alloca ptr
  %l87 = alloca i64
  %l97 = alloca i64
  %l100 = alloca i64
  %l118 = alloca i64
  %l121 = alloca i64
  %l126 = alloca i32
  %l131 = alloca %"compiler/mir:Local"
  %l133 = alloca ptr
  %l137 = alloca %"compiler/eval:Ptr"
  %l140 = alloca i64
  %l141 = alloca { i64, ptr }
  %l148 = alloca i64
  %l152 = alloca i64
  %l155 = alloca i64
  %l174 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %rv = alloca { i64, [5 x i64] }
  %t8 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 23
  store i1 false, ptr %t6, !tbaa !21
  %t7 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t8
  %t9 = getelementptr { i64, [5 x i64] }, ptr %t8, i32 0, i32 0
  store i64 0, ptr %t9
  %t10 = load { i64, [5 x i64] }, ptr %t8
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 20
  store { i64, [5 x i64] } %t10, ptr %t13
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 21
  store i64 -1, ptr %t16, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 14
  store i64 0, ptr %t19, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 88
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t22)
  br label %bb1
bb1:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 91
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t26)
  br label %bb2
bb2:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 90
  store i64 0, ptr %t30, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 18
  %t34 = getelementptr %"compiler/eval:Ptr", ptr %t33, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t37 = icmp ne i64 %t35, 0
  br i1 %t37, label %bb3, label %bb4
bb3:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 49
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l41, !tbaa !27
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 18
  %t46 = getelementptr %"compiler/eval:Ptr", ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46, !tbaa !24
  %t48 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t51 = and i64 %t47, %t48
  %t53 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr %"compiler/eval:alloc", ptr %t54, i64 %t51
  %t56 = getelementptr %"compiler/eval:alloc", ptr %t55, i32 0, i32 4
  %t57 = load i64, ptr %t56, !tbaa !24
  %t58 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t61 = icmp ne i64 %t57, %t58
  store i1 %t61, ptr %l39, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l39, !tbaa !21
  br label %bb5
bb5:
  %t63 = load i1, ptr %l39, !tbaa !21
  br i1 %t63, label %bb6, label %bb7
bb6:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 18
  %t68 = getelementptr %"compiler/eval:Ptr", ptr %t67, i32 0, i32 0
  %t69 = load i64, ptr %t68, !tbaa !24
  %t70 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t73 = and i64 %t69, %t70
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t64, i64 %t73)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t76 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t78 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 18
  store %"compiler/eval:Ptr" %t76, ptr %t84
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t85, i32 0, i32 19
  store i32 %t78, ptr %t89, !tbaa !23
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 30
  %t96 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t92, { i64, [2 x i64] } %a1)
  %t97 = extractvalue { i32, i64 } %t96, 1
  %t98 = extractvalue { i32, i64 } %t96, 0
  store i32 %t98, ptr %l65
  %t99 = icmp ne i32 %t98, 0
  br i1 %t99, label %bb11, label %ok.100, !prof !99
ok.100:
  store i64 %t97, ptr %l64
  br label %bb10
bb10:
  %t101 = load i64, ptr %l64, !tbaa !24
  store i64 %t101, ptr %l60, !tbaa !24
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t104 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t104, ptr %t102, { i64, ptr } %t103)
  br label %bb13
bb13:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 20
  %t110 = load { i64, [5 x i64] }, ptr %t109
  store { i64, [5 x i64] } %t110, ptr %rv
  br label %ret
bb14:
  %t112 = load i64, ptr %l60, !tbaa !24
  store i64 %t112, ptr %l5, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 25
  %t116 = load i64, ptr %l5, !tbaa !24
  %t119 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t115, i64 %t116)
  store ptr %t119, ptr %l73
  br label %bb15
bb15:
  %t120 = load ptr, ptr %l73, !tbaa !29
  store ptr %t120, ptr %l6, !tbaa !29
  %t121 = load ptr, ptr %l6, !tbaa !29
  %t123 = getelementptr %"compiler/mir:Fn", ptr %t121, i32 0, i32 2
  %t124 = load i64, ptr %t123, !tbaa !24
  %t126 = load ptr, ptr %l6, !tbaa !29
  %t128 = getelementptr %"compiler/mir:Fn", ptr %t126, i32 0, i32 3
  %t129 = load %"compiler/source:Span", ptr %t128
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t131, i32 0, i32 77
  store i64 %t124, ptr %t135, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:Machine", ptr %t136, i32 0, i32 78
  store %"compiler/source:Span" %t129, ptr %t140
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 59
  %t144 = load i64, ptr %t143, !tbaa !24
  store i64 %t144, ptr %l9, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = load i64, ptr %l5, !tbaa !24
  %t148 = load i64, ptr @G_2ecompiler_2feval_2erRequest, !tbaa !24
  %t152 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t146, i64 %t147, i64 %t148, i64 0)
  store i64 %t152, ptr %l87
  br label %bb16
bb16:
  %t153 = load i64, ptr %l87, !tbaa !24
  store i64 %t153, ptr %l10, !tbaa !24
  %t154 = load i64, ptr %l10, !tbaa !24
  %t156 = icmp slt i64 %t154, 0
  br i1 %t156, label %bb17, label %bb18
bb17:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/eval:Machine", ptr %t158, i32 0, i32 20
  %t161 = load { i64, [5 x i64] }, ptr %t160
  store { i64, [5 x i64] } %t161, ptr %rv
  br label %ret
bb18:
  br label %bb19
bb19:
  store i64 0, ptr %l11, !tbaa !24
  %t163 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t165 = extractvalue { i64, ptr } %t163, 0
  store i64 %t165, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t167 = load i64, ptr %l12, !tbaa !24
  %t168 = load i64, ptr %l11, !tbaa !24
  %t171 = icmp sgt i64 %t167, %t168
  br i1 %t171, label %bb20, label %bb21
bb20:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t175 = icmp sgt i64 %t173, 0
  br i1 %t175, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l97, !tbaa !24
  br label %bb25
bb22:
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t181 = sub i64 %t177, %t178
  %t182 = load i64, ptr %l13, !tbaa !24
  %t185 = add i64 %t181, %t182
  %t187 = sub i64 %t185, 1
  %t188 = load i64, ptr %l13, !tbaa !24
  %t191 = sdiv i64 %t187, %t188
  store i64 %t191, ptr %l100, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l100, !tbaa !24
  br label %bb24
bb24:
  %t193 = load i64, ptr %l100, !tbaa !24
  store i64 %t193, ptr %l97, !tbaa !24
  br label %bb25
bb25:
  %t194 = load i64, ptr %l97, !tbaa !24
  store i64 %t194, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb26
bb26:
  %t195 = load i64, ptr %l15, !tbaa !24
  %t196 = load i64, ptr %l14, !tbaa !24
  %t199 = icmp slt i64 %t195, %t196
  %t201 = xor i1 %t199, true
  br i1 %t201, label %bb27, label %bb28
bb27:
  br label %bb40
bb28:
  br label %bb29
bb29:
  %t203 = load i64, ptr %l11, !tbaa !24
  %t204 = load i64, ptr %l15, !tbaa !24
  %t205 = load i64, ptr %l13, !tbaa !24
  %t208 = mul i64 %t204, %t205
  %t211 = add i64 %t203, %t208
  store i64 %t211, ptr %l16, !tbaa !24
  %t213 = load i64, ptr %l16, !tbaa !24
  store i64 %t213, ptr %l118, !tbaa !24
  %t214 = load ptr, ptr %l6, !tbaa !29
  %t216 = getelementptr %"compiler/mir:Fn", ptr %t214, i32 0, i32 4
  %t218 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t216)
  store i64 %t218, ptr %l121
  br label %bb30
bb30:
  %t219 = load i64, ptr %l118, !tbaa !24
  %t220 = load i64, ptr %l121, !tbaa !24
  %t221 = icmp slt i64 %t219, %t220
  br i1 %t221, label %bb31, label %bb32
bb31:
  %t223 = load ptr, ptr %l6, !tbaa !29
  %t225 = getelementptr %"compiler/mir:Fn", ptr %t223, i32 0, i32 4
  %t226 = load i64, ptr %l16, !tbaa !24
  %t229 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t225, i64 %t226)
  store i32 %t229, ptr %l126
  br label %bb33
bb32:
  br label %bb38
bb33:
  %t230 = load i32, ptr %l126, !tbaa !23
  store i32 %t230, ptr %l17, !tbaa !23
  %t231 = load ptr, ptr %l6, !tbaa !29
  %t233 = getelementptr %"compiler/mir:Fn", ptr %t231, i32 0, i32 7
  %t234 = load i32, ptr %l17, !tbaa !23
  %t236 = sext i32 %t234 to i64
  %t239 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t233, i64 %t236)
  store %"compiler/mir:Local" %t239, ptr %l131
  br label %bb34
bb34:
  %t240 = getelementptr %"compiler/mir:Local", ptr %l131, i32 0, i32 2
  %t241 = load i32, ptr %t240, !tbaa !23
  store i32 %t241, ptr %l18, !tbaa !23
  %t243 = load ptr, ptr %l0, !tbaa !29
  store ptr %t243, ptr %l133, !tbaa !29
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i64, ptr %l10, !tbaa !24
  %t246 = load i32, ptr %l17, !tbaa !23
  %t250 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t244, i64 %t245, i32 %t246)
  store %"compiler/eval:Ptr" %t250, ptr %l137
  br label %bb35
bb35:
  %t251 = load ptr, ptr %l0, !tbaa !29
  %t252 = load i32, ptr %l18, !tbaa !23
  %t255 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t251, i32 %t252)
  store i64 %t255, ptr %l140
  br label %bb36
bb36:
  %t256 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t256, ptr %l141, !tbaa !27
  %t257 = load i64, ptr %l16, !tbaa !24
  %t259 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i64, ptr %t260, i64 %t257
  %t262 = load i64, ptr %t261, !tbaa !34
  %t263 = load ptr, ptr %l133, !tbaa !29
  %t264 = load %"compiler/eval:Ptr", ptr %l137
  %t265 = load i64, ptr %l140, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t263, %"compiler/eval:Ptr" %t264, i64 %t265, i64 %t262)
  br label %bb37
bb37:
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t267 = load i64, ptr %l15, !tbaa !24
  %t269 = add i64 %t267, 1
  store i64 %t269, ptr %l15, !tbaa !24
  br label %bb26
bb40:
  store i64 0, ptr %l19, !tbaa !24
  %t271 = load ptr, ptr %l6, !tbaa !29
  %t273 = getelementptr %"compiler/mir:Fn", ptr %t271, i32 0, i32 6
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t273)
  store i64 %t275, ptr %l148
  br label %bb41
bb41:
  %t276 = load i64, ptr %l148, !tbaa !24
  store i64 %t276, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t277 = load i64, ptr %l20, !tbaa !24
  %t278 = load i64, ptr %l19, !tbaa !24
  %t281 = icmp sgt i64 %t277, %t278
  br i1 %t281, label %bb42, label %bb43
bb42:
  %t283 = load i64, ptr %l21, !tbaa !24
  %t285 = icmp sgt i64 %t283, 0
  br i1 %t285, label %bb44, label %bb45
bb43:
  store i64 0, ptr %l152, !tbaa !24
  br label %bb47
bb44:
  %t287 = load i64, ptr %l20, !tbaa !24
  %t288 = load i64, ptr %l19, !tbaa !24
  %t291 = sub i64 %t287, %t288
  %t292 = load i64, ptr %l21, !tbaa !24
  %t295 = add i64 %t291, %t292
  %t297 = sub i64 %t295, 1
  %t298 = load i64, ptr %l21, !tbaa !24
  %t301 = sdiv i64 %t297, %t298
  store i64 %t301, ptr %l155, !tbaa !24
  br label %bb46
bb45:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb46
bb46:
  %t303 = load i64, ptr %l155, !tbaa !24
  store i64 %t303, ptr %l152, !tbaa !24
  br label %bb47
bb47:
  %t304 = load i64, ptr %l152, !tbaa !24
  store i64 %t304, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb48
bb48:
  %t305 = load i64, ptr %l23, !tbaa !24
  %t306 = load i64, ptr %l22, !tbaa !24
  %t309 = icmp slt i64 %t305, %t306
  %t311 = xor i1 %t309, true
  br i1 %t311, label %bb49, label %bb50
bb49:
  br label %bb53
bb50:
  br label %bb51
bb51:
  %t313 = load i64, ptr %l19, !tbaa !24
  %t314 = load i64, ptr %l23, !tbaa !24
  %t315 = load i64, ptr %l21, !tbaa !24
  %t318 = mul i64 %t314, %t315
  %t321 = add i64 %t313, %t318
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/eval:Machine", ptr %t323, i32 0, i32 60
  %t326 = load { i64, ptr }, ptr %t325, !tbaa !27
  store { i64, ptr } %t326, ptr %l174, !tbaa !27
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 58
  %t330 = load { i64, ptr }, ptr %t329, !tbaa !27
  store { i64, ptr } %t330, ptr %l176, !tbaa !27
  %t331 = load i64, ptr %l10, !tbaa !24
  %t333 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t334 = load ptr, ptr %t333, !tbaa !27
  %t335 = getelementptr %"compiler/eval:frame", ptr %t334, i64 %t331
  %t336 = getelementptr %"compiler/eval:frame", ptr %t335, i32 0, i32 5
  %t337 = load i64, ptr %t336, !tbaa !24
  %t341 = add i64 %t337, %t321
  %t342 = load ptr, ptr %l0, !tbaa !29
  %t344 = getelementptr %"compiler/eval:Machine", ptr %t342, i32 0, i32 70
  %t345 = load i64, ptr %t344, !tbaa !24
  %t348 = getelementptr { i64, ptr }, ptr %l174, i32 0, i32 1
  %t349 = load ptr, ptr %t348, !tbaa !27
  %t350 = getelementptr i64, ptr %t349, i64 %t341
  store i64 %t345, ptr %t350, !tbaa !34
  br label %bb52
bb52:
  %t351 = load i64, ptr %l23, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l23, !tbaa !24
  br label %bb48
bb53:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t355, i64 %t356)
  br label %bb54
bb54:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %t359, i64 %t360)
  br label %bb55
bb55:
  %t363 = load ptr, ptr %l0, !tbaa !29
  %t365 = getelementptr %"compiler/eval:Machine", ptr %t363, i32 0, i32 20
  %t366 = load { i64, [5 x i64] }, ptr %t365
  store { i64, [5 x i64] } %t366, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local { i32, { %"compiler/eval:Ptr", i32 } } @compiler_2feval_2ecompiler_2feval_3aMachine_2eGlobalAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca ptr
  %l9 = alloca %"compiler/eval:gkey"
  %l10 = alloca i64
  %l11 = alloca i32
  %l16 = alloca %"compiler/eval:global"
  %l18 = alloca %"compiler/eval:Ptr"
  %l22 = alloca %"compiler/eval:global"
  %s0 = alloca %olang.scope
  %rv = alloca { i32, { %"compiler/eval:Ptr", i32 } }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 43
  store ptr %t3, ptr %l6, !tbaa !29
  %t8 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l6, !tbaa !29
  %t10 = load %"compiler/eval:gkey", ptr %l9
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t9, %"compiler/eval:gkey" %t10)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l11
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l10
  br label %bb2
bb2:
  %t16 = load i64, ptr %l10, !tbaa !24
  store i64 %t16, ptr %l4, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t18 = insertvalue { i32, { %"compiler/eval:Ptr", i32 } } zeroinitializer, i32 65539, 0
  store { i32, { %"compiler/eval:Ptr", i32 } } %t18, ptr %rv
  br label %ret
bb5:
  %t19 = load i64, ptr %l4, !tbaa !24
  store i64 %t19, ptr %l3, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 42
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t22, i64 %t23)
  store %"compiler/eval:global" %t26, ptr %l16
  br label %bb6
bb6:
  %t27 = getelementptr %"compiler/eval:global", ptr %l16, i32 0, i32 3
  %t28 = load i64, ptr %t27, !tbaa !24
  %t30 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t28, i64 0)
  store %"compiler/eval:Ptr" %t30, ptr %l18
  br label %bb7
bb7:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 42
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t33, i64 %t34)
  store %"compiler/eval:global" %t37, ptr %l22
  br label %bb8
bb8:
  %t38 = getelementptr %"compiler/eval:global", ptr %l22, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = trunc i64 %t39 to i32
  %t43 = load %"compiler/eval:Ptr", ptr %l18
  %t44 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t43, 0
  %t46 = insertvalue { %"compiler/eval:Ptr", i32 } %t44, i32 %t41, 1
  call void @__olang_scope_close(ptr %s0)
  %t48 = insertvalue { i32, { %"compiler/eval:Ptr", i32 } } zeroinitializer, { %"compiler/eval:Ptr", i32 } %t46, 1
  store { i32, { %"compiler/eval:Ptr", i32 } } %t48, ptr %rv
  br label %ret
ret:
  %rr = load { i32, { %"compiler/eval:Ptr", i32 } }, ptr %rv
  ret { i32, { %"compiler/eval:Ptr", i32 } } %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2eLayout(ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l4 = alloca %"std/prelude/text:StringBuilder"
  %l5 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca { i64, ptr }
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
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  %t3 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %s0)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t3, ptr %l5
  br label %bb2
bb2:
  %t4 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t4, ptr %l3
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %s0, ptr %s0, ptr %a0, i32 %a1, ptr %l2, ptr %l3)
  br label %bb3
bb3:
  %t12 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v1, ptr %l2)
  store { i64, ptr } %t12, ptr %l11
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  %t13 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t13, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eRefAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l4 = alloca %"compiler/eval:Ptr"
  %rv = alloca %"compiler/eval:Ptr"
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
  store %"compiler/eval:Ptr" %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load %"compiler/eval:Ptr", ptr %l4
  store %"compiler/eval:Ptr" %t6, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eSaveRegs(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"compiler/eval:reg"
  %l12 = alloca i64
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"compiler/eval:scope"
  %l30 = alloca %"compiler/eval:reg"
  %l33 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l58 = alloca ptr
  %l60 = alloca i64
  %l64 = alloca i64
  %l68 = alloca %"compiler/eval:reg"
  %l69 = alloca i64
  %l73 = alloca i64
  %l74 = alloca i32
  %l78 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i64
  %l91 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %t14 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l13
  br label %bb1
bb1:
  %t2 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t2, ptr %l2
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/eval:Machine", ptr %t3, i32 0, i32 52
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 70
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t13 = and i64 %t9, %t10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t14, ptr %v0, ptr %t5, i64 %t13)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t14, i64 152, i1 false)
  br label %bb2
bb2:
  %t17 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 4
  %t18 = load i64, ptr %t17, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  br label %bb3
bb3:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  %t24 = xor i1 %t22, true
  br i1 %t24, label %bb4, label %bb5
bb4:
  br label %bb10
bb5:
  br label %bb6
bb6:
  %t26 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l2, i64 %t26)
  br label %bb7
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 54
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t31, i64 %t32)
  store %"compiler/eval:reg" %t35, ptr %l30
  br label %bb8
bb8:
  %t36 = getelementptr %"compiler/eval:reg", ptr %l30, i32 0, i32 4
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l3, !tbaa !24
  br label %bb9
bb9:
  br label %bb3
bb10:
  store i64 0, ptr %l4, !tbaa !24
  %t40 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t40, ptr %l33
  br label %bb11
bb11:
  %t41 = load i64, ptr %l33, !tbaa !24
  store i64 %t41, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t43 = load i64, ptr %l4, !tbaa !24
  %t46 = icmp sgt i64 %t42, %t43
  br i1 %t46, label %bb12, label %bb13
bb12:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp sgt i64 %t48, 0
  br i1 %t50, label %bb14, label %bb15
bb13:
  store i64 0, ptr %l37, !tbaa !24
  br label %bb17
bb14:
  %t52 = load i64, ptr %l5, !tbaa !24
  %t53 = load i64, ptr %l4, !tbaa !24
  %t56 = sub i64 %t52, %t53
  %t57 = load i64, ptr %l6, !tbaa !24
  %t60 = add i64 %t56, %t57
  %t62 = sub i64 %t60, 1
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = sdiv i64 %t62, %t63
  store i64 %t66, ptr %l40, !tbaa !24
  br label %bb16
bb15:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb16
bb16:
  %t68 = load i64, ptr %l40, !tbaa !24
  store i64 %t68, ptr %l37, !tbaa !24
  br label %bb17
bb17:
  %t69 = load i64, ptr %l37, !tbaa !24
  store i64 %t69, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb18
bb18:
  %t70 = load i64, ptr %l8, !tbaa !24
  %t71 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  %t76 = xor i1 %t74, true
  br i1 %t76, label %bb19, label %bb20
bb19:
  br label %bb43
bb20:
  br label %bb21
bb21:
  %t78 = load i64, ptr %l4, !tbaa !24
  %t79 = load i64, ptr %l8, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = mul i64 %t79, %t80
  %t86 = add i64 %t78, %t83
  store i64 %t86, ptr %l9, !tbaa !24
  store ptr %l2, ptr %l58, !tbaa !29
  %t89 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l2)
  store i64 %t89, ptr %l60
  br label %bb22
bb22:
  %t90 = load i64, ptr %l60, !tbaa !24
  %t91 = sub i64 %t90, 1
  %t92 = load i64, ptr %l9, !tbaa !24
  %t95 = sub i64 %t91, %t92
  %t96 = load ptr, ptr %l58, !tbaa !29
  %t98 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t96, i64 %t95)
  store i64 %t98, ptr %l64
  br label %bb23
bb23:
  %t99 = load i64, ptr %l64, !tbaa !24
  store i64 %t99, ptr %l10, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 54
  %t103 = load i64, ptr %l10, !tbaa !24
  %t106 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t102, i64 %t103)
  store %"compiler/eval:reg" %t106, ptr %l68
  br label %bb24
bb24:
  %t107 = load %"compiler/eval:reg", ptr %l68
  store %"compiler/eval:reg" %t107, ptr %l11
  %t108 = load ptr, ptr %l1, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Snapshot", ptr %t108, i32 0, i32 5
  %t111 = getelementptr %"compiler/eval:reg", ptr %l11, i32 0, i32 2
  %t112 = load i64, ptr %t111, !tbaa !24
  %t115 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v1, ptr %t110, i64 %t112)
  %t116 = extractvalue { i32, i64 } %t115, 1
  %t117 = extractvalue { i32, i64 } %t115, 0
  store i32 %t117, ptr %l74
  %t118 = icmp ne i32 %t117, 0
  br i1 %t118, label %bb26, label %ok.119, !prof !99
ok.119:
  store i64 %t116, ptr %l73
  br label %bb25
bb25:
  %t120 = load i64, ptr %l73, !tbaa !24
  store i64 %t120, ptr %l69, !tbaa !24
  br label %bb28
bb26:
  br label %bb27
bb27:
  store i64 -1, ptr %l69, !tbaa !24
  br label %bb28
bb28:
  %t121 = load i64, ptr %l69, !tbaa !24
  store i64 %t121, ptr %l12, !tbaa !24
  %t122 = getelementptr %"compiler/eval:reg", ptr %l11, i32 0, i32 0
  %t123 = load i64, ptr %t122, !tbaa !24
  %t124 = load i64, ptr @G_2ecompiler_2feval_2egDtor, !tbaa !24
  %t127 = icmp ne i64 %t123, %t124
  br i1 %t127, label %bb29, label %bb30
bb29:
  store i1 true, ptr %l78, !tbaa !21
  br label %bb31
bb30:
  %t129 = load i64, ptr %l12, !tbaa !24
  %t131 = icmp slt i64 %t129, 0
  store i1 %t131, ptr %l78, !tbaa !21
  br label %bb31
bb31:
  %t133 = load i1, ptr %l78, !tbaa !21
  br i1 %t133, label %bb32, label %bb33
bb32:
  br label %bb42
bb33:
  br label %bb34
bb34:
  %t134 = load ptr, ptr %l1, !tbaa !29
  %t136 = getelementptr %"compiler/eval:Snapshot", ptr %t134, i32 0, i32 2
  store ptr %t136, ptr %l82, !tbaa !29
  %t137 = ptrtoint ptr %v1 to i64
  store i64 %t137, ptr %l83, !tbaa !24
  %t138 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t138, label %bb35, label %bb36
bb35:
  %t140 = call ptr @__olang_region_make(ptr %v1)
  %t141 = ptrtoint ptr %t140 to i64
  store i64 %t141, ptr %l83, !tbaa !24
  br label %bb36
bb36:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t144 = getelementptr %"compiler/eval:Machine", ptr %t142, i32 0, i32 0
  %t145 = load ptr, ptr %t144, !tbaa !29
  %t146 = getelementptr %"compiler/eval:reg", ptr %l11, i32 0, i32 1
  %t147 = load i64, ptr %t146, !tbaa !24
  %t149 = trunc i64 %t147 to i32
  %t151 = load i64, ptr %l83
  %t152 = inttoptr i64 %t151 to ptr
  %t154 = inttoptr i64 0 to ptr
  %t157 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %t152, ptr %t154, ptr %t145, i32 %t149)
  store { i64, ptr } %t157, ptr %l91
  br label %bb37
bb37:
  %t158 = load { i64, ptr }, ptr %l91, !tbaa !27
  %t159 = load i64, ptr %l83
  %t160 = inttoptr i64 %t159 to ptr
  %t161 = extractvalue { i64, ptr } %t158, 0
  %t162 = extractvalue { i64, ptr } %t158, 1
  %t163 = mul i64 %t161, 1
  %t164 = call ptr @__olang_scope_alloc(ptr %t160, i64 %t163)
  call void @llvm.memcpy.p0.p0.i64(ptr %t164, ptr %t162, i64 %t163, i1 false)
  %t165 = insertvalue { i64, ptr } undef, i64 %t161, 0
  %t166 = insertvalue { i64, ptr } %t165, ptr %t164, 1
  %t167 = load ptr, ptr %l82, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v1, ptr %v1, ptr %t167, { i64, ptr } %t166)
  br label %bb38
bb38:
  %t169 = load ptr, ptr %l1, !tbaa !29
  %t171 = getelementptr %"compiler/eval:Snapshot", ptr %t169, i32 0, i32 3
  %t172 = load i64, ptr %l12, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t171, i64 %t172)
  br label %bb39
bb39:
  %t175 = load ptr, ptr %l1, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Snapshot", ptr %t175, i32 0, i32 4
  %t178 = getelementptr %"compiler/eval:reg", ptr %l11, i32 0, i32 3
  %t179 = load i64, ptr %t178, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t177, i64 %t179)
  br label %bb40
bb40:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunlinkReg(ptr %v0, ptr %t182, i64 %t183)
  br label %bb41
bb41:
  br label %bb42
bb42:
  %t186 = load i64, ptr %l8, !tbaa !24
  %t188 = add i64 %t186, 1
  store i64 %t188, ptr %l8, !tbaa !24
  br label %bb18
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceAt(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l6 = alloca i64
  %l12 = alloca i64
  %l18 = alloca i64
  %rv = alloca { i64, i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 88
  %t4 = load i64, ptr %l1, !tbaa !24
  %t6 = mul i64 4, %t4
  %t9 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t3, i64 %t6)
  store i64 %t9, ptr %l6
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 88
  %t13 = load i64, ptr %l1, !tbaa !24
  %t15 = mul i64 4, %t13
  %t17 = add i64 %t15, 1
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t12, i64 %t17)
  store i64 %t20, ptr %l12
  br label %bb2
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 88
  %t24 = load i64, ptr %l1, !tbaa !24
  %t26 = mul i64 4, %t24
  %t28 = add i64 %t26, 2
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t23, i64 %t28)
  store i64 %t31, ptr %l18
  br label %bb3
bb3:
  %t32 = load i64, ptr %l6, !tbaa !24
  %t33 = insertvalue { i64, i64, i64 } undef, i64 %t32, 0
  %t34 = load i64, ptr %l12, !tbaa !24
  %t35 = insertvalue { i64, i64, i64 } %t33, i64 %t34, 1
  %t36 = load i64, ptr %l18, !tbaa !24
  %t37 = insertvalue { i64, i64, i64 } %t35, i64 %t36, 2
  store { i64, i64, i64 } %t37, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64, i64 }, ptr %rv
  ret { i64, i64, i64 } %rr
}

define dso_local %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 49
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  %t6 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t9 = and i64 %a1, %t6
  %t11 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:alloc", ptr %t12, i64 %t9
  %t14 = load %"compiler/eval:alloc", ptr %t13
  store %"compiler/eval:alloc" %t14, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i64
  %l11 = alloca i64
  %l19 = alloca %"compiler/eval:scope"
  %l24 = alloca %"compiler/eval:scope"
  %l28 = alloca { i64, ptr }
  %l39 = alloca %"compiler/eval:Ptr"
  %l42 = alloca ptr
  %l43 = alloca %"compiler/eval:Ptr"
  %l45 = alloca %"compiler/eval:Ptr"
  %l56 = alloca ptr
  %l60 = alloca ptr
  %l63 = alloca %"compiler/eval:Ptr"
  %l71 = alloca ptr
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %t11 = alloca %"compiler/eval:scope", align 8
  %t21 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 52
  %t10 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t11, i64 152, i1 false)
  br label %bb1
bb1:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l19, i32 0, i32 8
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 52
  %t20 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t21, ptr %v0, ptr %t19, i64 %t20)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t21, i64 152, i1 false)
  br label %bb2
bb2:
  %t24 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 9
  %t25 = load i64, ptr %t24, !tbaa !24
  store i64 %t25, ptr %l5, !tbaa !24
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 49
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l28, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t36 = and i64 %t32, %t33
  %t38 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr %"compiler/eval:alloc", ptr %t39, i64 %t36
  %t41 = getelementptr %"compiler/eval:alloc", ptr %t40, i32 0, i32 1
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp sge i64 %t27, %t42
  br i1 %t45, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l5, !tbaa !24
  %t50 = mul i64 2, %t48
  %t51 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t52 = load i64, ptr %l1, !tbaa !24
  %t57 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t47, i64 %t50, i64 %t51, i64 %t52)
  store %"compiler/eval:Ptr" %t57, ptr %l39
  br label %bb5
bb4:
  br label %bb13
bb5:
  %t58 = load %"compiler/eval:Ptr", ptr %l39
  store %"compiler/eval:Ptr" %t58, ptr %l6
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 22
  %t62 = load i1, ptr %t61, !tbaa !21
  br i1 %t62, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l42, !tbaa !29
  %t65 = load %"compiler/eval:Ptr", ptr %l6
  store %"compiler/eval:Ptr" %t65, ptr %l43
  %t66 = load i64, ptr %l4, !tbaa !24
  %t68 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t66, i64 0)
  store %"compiler/eval:Ptr" %t68, ptr %l45
  br label %bb9
bb9:
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load ptr, ptr %l42, !tbaa !29
  %t71 = load %"compiler/eval:Ptr", ptr %l43
  %t72 = load %"compiler/eval:Ptr", ptr %l45
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t70, %"compiler/eval:Ptr" %t71, %"compiler/eval:Ptr" %t72, i64 %t69)
  br label %bb10
bb10:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load i64, ptr %l4, !tbaa !24
  %t76 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t79 = and i64 %t75, %t76
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t74, i64 %t79)
  br label %bb11
bb11:
  %t82 = load i64, ptr %l3, !tbaa !24
  %t84 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  store i64 %t85, ptr %l8, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 52
  %t93 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t89, i64 %t82)
  store ptr %t93, ptr %l56
  br label %bb12
bb12:
  %t94 = load ptr, ptr %l56, !tbaa !29
  %t96 = load i64, ptr %l8, !tbaa !24
  %t99 = getelementptr %"compiler/eval:scope", ptr %t94, i32 0, i32 8
  store i64 %t96, ptr %t99, !tbaa !24
  %t100 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  store i64 %t101, ptr %l4, !tbaa !24
  call void @__olang_scope_close(ptr %s1)
  br label %bb13
bb13:
  %t103 = load ptr, ptr %l0, !tbaa !29
  store ptr %t103, ptr %l60, !tbaa !29
  %t104 = load i64, ptr %l4, !tbaa !24
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t104, i64 %t105)
  store %"compiler/eval:Ptr" %t108, ptr %l63
  br label %bb14
bb14:
  %t110 = load ptr, ptr %l60, !tbaa !29
  %t111 = load %"compiler/eval:Ptr", ptr %l63
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t110, %"compiler/eval:Ptr" %t111, i64 1, i64 %a2)
  br label %bb15
bb15:
  %t113 = load i64, ptr %l3, !tbaa !24
  %t115 = load i64, ptr %l5, !tbaa !24
  %t117 = add i64 %t115, 1
  store i64 %t117, ptr %l11, !tbaa !24
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 52
  %t125 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t121, i64 %t113)
  store ptr %t125, ptr %l71
  br label %bb16
bb16:
  %t126 = load ptr, ptr %l71, !tbaa !29
  %t128 = load i64, ptr %l11, !tbaa !24
  %t131 = getelementptr %"compiler/eval:scope", ptr %t126, i32 0, i32 9
  store i64 %t128, ptr %t131, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, ptr }
  %l7 = alloca { i64, ptr }
  %l10 = alloca { i64, ptr }
  %rv = alloca { i64, [4 x i64] }
  store ptr %a0, ptr %l0
  store %"compiler/mir:Range" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 58
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l7, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %a1
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr %"compiler/eval:cfn", ptr %t18, i64 %t15
  %t20 = getelementptr %"compiler/eval:cfn", ptr %t19, i32 0, i32 4
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l10, !tbaa !27
  %t22 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 0
  %t23 = load i32, ptr %t22, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t29 = add i64 %t25, %a3
  %t31 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t32, i64 %t29
  %t34 = load { i64, [4 x i64] }, ptr %t33
  store { i64, [4 x i64] } %t34, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
  %l24 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l17
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load i32, ptr %l17, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load i32, ptr %l18, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l21
  br label %bb8
bb8:
  %t37 = load i32, ptr %l21, !range !{i32 0, i32 33}
  %t39 = trunc i64 19 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb9, label %bb10
bb9:
  %t42 = load i32, ptr %l3, !tbaa !23
  store i32 %t42, ptr %l24, !tbaa !23
  br label %bb11
bb10:
  %t44 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t44, ptr %l24, !tbaa !23
  br label %bb11
bb11:
  %t46 = load i32, ptr %l24, !tbaa !23
  store i32 %t46, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayTarget(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { %"compiler/eval:Ptr", i64 }
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/eval:Ptr"
  %l16 = alloca { %"compiler/eval:Ptr", i64 }
  %l22 = alloca { %"compiler/eval:Ptr", i64 }
  %l25 = alloca ptr
  %l28 = alloca i32
  %l29 = alloca i64
  %l50 = alloca %"compiler/eval:Ptr"
  %l62 = alloca ptr
  %l66 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/eval:Ptr", ptr %l1
  %t3 = load i32, ptr %l3, !tbaa !23
  %t7 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %t2, i32 %t3)
  store { %"compiler/eval:Ptr", i64 } %t7, ptr %l16
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i64 }, ptr %l16
  store { %"compiler/eval:Ptr", i64 } %t8, ptr %l5
  %t9 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l6
  %t12 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 1
  %t13 = load i64, ptr %t12, !tbaa !24
  store i64 %t13, ptr %l7, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t16 = load %"compiler/eval:Ptr", ptr %l2
  %t17 = load i32, ptr %l3, !tbaa !23
  %t21 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t15, %"compiler/eval:Ptr" %t16, i32 %t17)
  store { %"compiler/eval:Ptr", i64 } %t21, ptr %l22
  br label %bb2
bb2:
  %t22 = load { %"compiler/eval:Ptr", i64 }, ptr %l22
  store { %"compiler/eval:Ptr", i64 } %t22, ptr %l8
  %t23 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  store %"compiler/eval:Ptr" %t24, ptr %l9
  %t26 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l10, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l25, !tbaa !29
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l28
  br label %bb3
bb3:
  %t35 = load ptr, ptr %l25, !tbaa !29
  %t36 = load i32, ptr %l28, !tbaa !23
  %t37 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t37, ptr %l29
  br label %bb4
bb4:
  %t38 = load i64, ptr %l29, !tbaa !24
  store i64 %t38, ptr %l11, !tbaa !24
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l10, !tbaa !24
  %t43 = icmp eq i64 %t39, %t40
  br i1 %t43, label %bb5, label %bb6
bb5:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/eval:Ptr", ptr %l6
  %t47 = load %"compiler/eval:Ptr", ptr %l9
  %t48 = load i64, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l11, !tbaa !24
  %t52 = mul i64 %t48, %t49
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t45, %"compiler/eval:Ptr" %t46, %"compiler/eval:Ptr" %t47, i64 %t52)
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb8:
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = icmp eq i64 %t57, 0
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load %"compiler/eval:Ptr", ptr %l1
  %t63 = load %"compiler/eval:Ptr", ptr %l2
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t61, %"compiler/eval:Ptr" %t62, %"compiler/eval:Ptr" %t63, i64 16)
  br label %bb11
bb10:
  br label %bb12
bb11:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l10, !tbaa !24
  %t69 = load i64, ptr %l11, !tbaa !24
  %t72 = mul i64 %t68, %t69
  %t73 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t74 = load i64, ptr %l4, !tbaa !24
  %t79 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t67, i64 %t72, i64 %t73, i64 %t74)
  store %"compiler/eval:Ptr" %t79, ptr %l50
  br label %bb13
bb13:
  %t80 = load %"compiler/eval:Ptr", ptr %l50
  store %"compiler/eval:Ptr" %t80, ptr %l12
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 22
  %t84 = load i1, ptr %t83, !tbaa !21
  br i1 %t84, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  br label %bb16
bb16:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/eval:Ptr", ptr %l12
  %t88 = load %"compiler/eval:Ptr", ptr %l9
  %t89 = load i64, ptr %l10, !tbaa !24
  %t90 = load i64, ptr %l11, !tbaa !24
  %t93 = mul i64 %t89, %t90
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t86, %"compiler/eval:Ptr" %t87, %"compiler/eval:Ptr" %t88, i64 %t93)
  br label %bb17
bb17:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load %"compiler/eval:Ptr", ptr %l1
  %t100 = load i64, ptr %l10, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t98, %"compiler/eval:Ptr" %t99, i64 8, i64 %t100)
  br label %bb18
bb18:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l62, !tbaa !29
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t107 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t108 = load i64, ptr %t107, !tbaa !24
  %t110 = add i64 %t108, 8
  %t113 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t106, i64 %t110)
  store %"compiler/eval:Ptr" %t113, ptr %l66
  br label %bb19
bb19:
  %t114 = load %"compiler/eval:Ptr", ptr %l12
  %t115 = load ptr, ptr %l62, !tbaa !29
  %t116 = load %"compiler/eval:Ptr", ptr %l66
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t115, %"compiler/eval:Ptr" %t116, %"compiler/eval:Ptr" %t114)
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i32
  %l15 = alloca i32
  %l18 = alloca ptr
  %l21 = alloca i32
  %l22 = alloca i32
  %l25 = alloca i32
  %l29 = alloca %"compiler/eval:Ptr"
  %l32 = alloca i64
  %l36 = alloca i32
  %l38 = alloca %"compiler/eval:Ptr"
  %l41 = alloca i64
  %l45 = alloca i64
  %l46 = alloca ptr
  %l50 = alloca %"compiler/eval:Ptr"
  %l51 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i1
  %s0 = alloca %olang.scope
  %rv = alloca { %"compiler/eval:Ptr", i64 }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t6 = load ptr, ptr %l3, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a2)
  store i32 %t10, ptr %l12
  br label %bb1
bb1:
  %t11 = load i32, ptr %l12, !tbaa !23
  store i32 %t11, ptr %l4, !tbaa !23
  %t12 = load ptr, ptr %l3, !tbaa !29
  %t13 = load i32, ptr %l4, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l15
  br label %bb2
bb2:
  %t17 = load i32, ptr %l15, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l18, !tbaa !29
  %t23 = load ptr, ptr %l3, !tbaa !29
  %t24 = load i32, ptr %l4, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l21
  br label %bb5
bb4:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t29 = load i32, ptr %l4, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l36
  br label %bb13
bb5:
  %t33 = load ptr, ptr %l18, !tbaa !29
  %t34 = load i32, ptr %l21, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t33, i32 %t34)
  store i32 %t35, ptr %l22
  br label %bb6
bb6:
  %t36 = load i32, ptr %l22, !tbaa !23
  store i32 %t36, ptr %l5, !tbaa !23
  %t37 = load ptr, ptr %l3, !tbaa !29
  %t38 = load i32, ptr %l5, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l25
  br label %bb7
bb7:
  %t42 = load i32, ptr %l25, !tbaa !23
  %t43 = icmp ne i32 %t42, 0
  br i1 %t43, label %bb8, label %bb9
bb8:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load %"compiler/eval:Ptr", ptr %l1
  %t49 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t45, %"compiler/eval:Ptr" %t46)
  store %"compiler/eval:Ptr" %t49, ptr %l29
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l5, !tbaa !23
  %t54 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t54, ptr %l32
  br label %bb11
bb11:
  %t55 = load %"compiler/eval:Ptr", ptr %l29
  %t56 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t55, 0
  %t57 = load i64, ptr %l32, !tbaa !24
  %t58 = insertvalue { %"compiler/eval:Ptr", i64 } %t56, i64 %t57, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t58, ptr %rv
  br label %ret
bb12:
  br label %bb18
bb13:
  %t60 = load i32, ptr %l36, !tbaa !23
  %t61 = icmp ne i32 %t60, 0
  br i1 %t61, label %bb14, label %bb15
bb14:
  %t63 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t63, ptr %l38
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l4, !tbaa !23
  %t68 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l41
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t69 = load %"compiler/eval:Ptr", ptr %l38
  %t70 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t69, 0
  %t71 = load i64, ptr %l41, !tbaa !24
  %t72 = insertvalue { %"compiler/eval:Ptr", i64 } %t70, i64 %t71, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t72, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/eval:Ptr", ptr %l1
  %t78 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t74, %"compiler/eval:Ptr" %t75, i64 8)
  store i64 %t78, ptr %l45
  br label %bb19
bb19:
  %t79 = load i64, ptr %l45, !tbaa !24
  store i64 %t79, ptr %l6, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l46, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = add i64 %t84, 8
  %t89 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t82, i64 %t86)
  store %"compiler/eval:Ptr" %t89, ptr %l50
  br label %bb20
bb20:
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = load %"compiler/eval:Ptr", ptr %l50
  %t92 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t90, %"compiler/eval:Ptr" %t91)
  store %"compiler/eval:Ptr" %t92, ptr %l51
  br label %bb21
bb21:
  %t93 = load %"compiler/eval:Ptr", ptr %l51
  store %"compiler/eval:Ptr" %t93, ptr %l7
  %t94 = load i64, ptr %l6, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb22, label %bb23
bb22:
  %t98 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  %t101 = icmp eq i64 %t99, 0
  store i1 %t101, ptr %l54, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l54, !tbaa !21
  br label %bb24
bb24:
  %t103 = load i1, ptr %l54, !tbaa !21
  br i1 %t103, label %bb25, label %bb26
bb25:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNull, !tbaa !27
  %t106 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t106, ptr %t104, { i64, ptr } %t105)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t109 = load %"compiler/eval:Ptr", ptr %l7
  %t110 = load i64, ptr %l6, !tbaa !24
  %t112 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t109, 0
  %t114 = insertvalue { %"compiler/eval:Ptr", i64 } %t112, i64 %t110, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t114, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/eval:Ptr", i64 }, ptr %rv
  ret { %"compiler/eval:Ptr", i64 } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebitcast(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i1
  %l20 = alloca i64
  %l25 = alloca i32
  %l26 = alloca i64
  %l36 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l51 = alloca i1
  %l56 = alloca i64
  %l67 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t7 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 1
  %t14 = load i32, ptr %t13, !range !{i32 0, i32 2}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  store i1 %t17, ptr %l14, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t24, ptr %l20
  br label %bb7
bb6:
  br label %bb40
bb7:
  %t25 = load i64, ptr %l20, !tbaa !24
  %t26 = mul i64 8, %t25
  store i64 %t26, ptr %l3, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 0
  %t31 = load ptr, ptr %t30, !tbaa !29
  %t32 = load i32, ptr %l2, !tbaa !23
  %t35 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t35, ptr %l25
  br label %bb8
bb8:
  %t36 = load i32, ptr %l25, !tbaa !23
  store i32 %t36, ptr %l4, !tbaa !23
  %t37 = load i32, ptr %l4, !tbaa !23
  %t39 = icmp eq i32 %t37, 11
  br i1 %t39, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  store i64 10, ptr %l26, !tbaa !24
  br label %bb25
bb12:
  %t41 = load i32, ptr %l4, !tbaa !23
  %t43 = icmp eq i32 %t41, 12
  br i1 %t43, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 7, ptr %l26, !tbaa !24
  br label %bb25
bb16:
  %t45 = load i32, ptr %l4, !tbaa !23
  %t47 = icmp eq i32 %t45, 13
  br i1 %t47, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i64 23, ptr %l26, !tbaa !24
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i64 52, ptr %l26, !tbaa !24
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_7b1287020d5a411f_7f0f28d70ecde84b)
  unreachable
bb25:
  %t49 = load i64, ptr %l26, !tbaa !24
  store i64 %t49, ptr %l5, !tbaa !24
  %t50 = load i64, ptr %l3, !tbaa !24
  %t52 = sub i64 %t50, 1
  %t53 = load i64, ptr %l5, !tbaa !24
  %t56 = sub i64 %t52, %t53
  store i64 %t56, ptr %l36, !tbaa !24
  %t57 = load i64, ptr %l36, !tbaa !24
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = shl i64 1, %t58
  %t61 = sub i64 %t59, 1
  %t62 = load i64, ptr %l5, !tbaa !24
  store i64 %t62, ptr %l39, !tbaa !24
  %t64 = load i64, ptr %l39, !tbaa !24
  %t65 = load i64, ptr %l39, !tbaa !24
  %t66 = shl i64 %t61, %t65
  store i64 %t66, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l1, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  store i64 %t69, ptr %l42, !tbaa !24
  %t70 = load i64, ptr %l42, !tbaa !24
  %t71 = load i64, ptr %l42, !tbaa !24
  %t72 = shl i64 1, %t71
  %t74 = sub i64 %t72, 1
  %t77 = and i64 %t68, %t74
  store i64 %t77, ptr %l7, !tbaa !24
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = and i64 %t79, %t80
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = icmp eq i64 %t83, %t84
  br i1 %t87, label %bb26, label %bb27
bb26:
  %t89 = load i64, ptr %l7, !tbaa !24
  %t91 = icmp ne i64 %t89, 0
  store i1 %t91, ptr %l51, !tbaa !21
  br label %bb28
bb27:
  store i1 false, ptr %l51, !tbaa !21
  br label %bb28
bb28:
  %t93 = load i1, ptr %l51, !tbaa !21
  br i1 %t93, label %bb29, label %bb30
bb29:
  %t94 = load i64, ptr %l7, !tbaa !24
  %t95 = load i64, ptr %l5, !tbaa !24
  %t97 = sub i64 %t95, 1
  store i64 %t97, ptr %l56, !tbaa !24
  %t99 = load i64, ptr %l56, !tbaa !24
  %t100 = load i64, ptr %l56, !tbaa !24
  %t101 = ashr i64 %t94, %t100
  %t103 = and i64 %t101, 1
  %t105 = icmp eq i64 %t103, 1
  %t109 = xor i1 %t105, true
  br i1 %t109, label %bb31, label %bb32
bb30:
  br label %bb39
bb31:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNaNSignal, !tbaa !27
  %t113 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t113, ptr %t111, { i64, ptr } %t112)
  br label %bb33
bb32:
  br label %bb34
bb33:
  store i64 0, ptr %rv
  br label %ret
bb34:
  %t117 = load i64, ptr %l7, !tbaa !24
  %t118 = load i64, ptr %l5, !tbaa !24
  %t120 = sub i64 %t118, 1
  store i64 %t120, ptr %l67, !tbaa !24
  %t121 = load i64, ptr %l67, !tbaa !24
  %t122 = load i64, ptr %l67, !tbaa !24
  %t123 = shl i64 1, %t122
  %t126 = icmp eq i64 %t117, %t123
  br i1 %t126, label %bb35, label %bb36
bb35:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNaNOp, !tbaa !27
  %t130 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t130, ptr %t128, { i64, ptr } %t129)
  br label %bb37
bb36:
  br label %bb38
bb37:
  store i64 0, ptr %rv
  br label %ret
bb38:
  br label %bb39
bb39:
  br label %bb40
bb40:
  %t134 = load i64, ptr %l1, !tbaa !24
  store i64 %t134, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallExtern(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, %"compiler/mir:Range" %a4, %"compiler/eval:Ptr" %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i1
  %l7 = alloca ptr
  %l8 = alloca { i64, ptr }
  %l9 = alloca ptr
  %l10 = alloca { i64, ptr }
  %l11 = alloca i32
  %l12 = alloca i1
  %l13 = alloca i64
  %l14 = alloca { i64, ptr }
  %l15 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l17 = alloca { i64, ptr }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca { i64, [4 x i64] }
  %l26 = alloca i32
  %l27 = alloca i64
  %l28 = alloca i32
  %l29 = alloca i64
  %l30 = alloca { %"compiler/eval:Ptr", i64 }
  %l31 = alloca %"compiler/eval:Ptr"
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca %"compiler/eval:Ptr"
  %l35 = alloca i32
  %l36 = alloca { i64, ptr }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca %"compiler/eval:Ptr"
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca i64
  %l49 = alloca i64
  %l50 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i8
  %l55 = alloca i64
  %l56 = alloca i64
  %l57 = alloca i64
  %l58 = alloca i64
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca %"compiler/eval:Ptr"
  %l63 = alloca i64
  %l64 = alloca i64
  %l65 = alloca i64
  %l66 = alloca i64
  %l67 = alloca i64
  %l68 = alloca i64
  %l69 = alloca i64
  %l72 = alloca ptr
  %l73 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l78 = alloca i32
  %l84 = alloca ptr
  %l87 = alloca i32
  %l88 = alloca { i64, ptr }
  %l91 = alloca i32
  %l95 = alloca i1
  %l99 = alloca i1
  %l101 = alloca i1
  %l103 = alloca i1
  %l109 = alloca i1
  %l117 = alloca i1
  %l121 = alloca i1
  %l124 = alloca i1
  %l128 = alloca i1
  %l131 = alloca i1
  %l133 = alloca i1
  %l141 = alloca i64
  %l144 = alloca i64
  %l145 = alloca %"compiler/eval:Ptr"
  %l147 = alloca %"compiler/eval:Ptr"
  %l151 = alloca i64
  %l155 = alloca i64
  %l163 = alloca i64
  %l166 = alloca i64
  %l190 = alloca { i64, [4 x i64] }
  %l195 = alloca i32
  %l196 = alloca { i64, ptr }
  %l202 = alloca i32
  %l206 = alloca i1
  %l207 = alloca i64
  %l210 = alloca i32
  %l211 = alloca i8
  %l215 = alloca i64
  %l219 = alloca i64
  %l226 = alloca i64
  %l235 = alloca i32
  %l238 = alloca i64
  %l242 = alloca i1
  %l246 = alloca ptr
  %l250 = alloca %"compiler/eval:Ptr"
  %l252 = alloca { %"compiler/eval:Ptr", i64 }
  %l257 = alloca i32
  %l260 = alloca i64
  %l262 = alloca i8
  %l267 = alloca i1
  %l268 = alloca i64
  %l271 = alloca i32
  %l272 = alloca i8
  %l275 = alloca i1
  %l276 = alloca i64
  %l278 = alloca i8
  %l284 = alloca i64
  %l285 = alloca i64
  %l288 = alloca i64
  %l290 = alloca i64
  %l293 = alloca i64
  %l299 = alloca ptr
  %l303 = alloca %"compiler/eval:Ptr"
  %l304 = alloca %"compiler/eval:Ptr"
  %l305 = alloca i64
  %l307 = alloca i8
  %l310 = alloca i1
  %l324 = alloca ptr
  %l327 = alloca i32
  %l328 = alloca i32
  %l331 = alloca i1
  %l334 = alloca i1
  %l335 = alloca i64
  %l337 = alloca i8
  %l340 = alloca i64
  %l343 = alloca i64
  %l344 = alloca i64
  %l347 = alloca i64
  %l358 = alloca i64
  %l366 = alloca i64
  %l369 = alloca i64
  %l394 = alloca i64
  %l396 = alloca i8
  %l398 = alloca i8
  %l400 = alloca i64
  %l403 = alloca i64
  %l407 = alloca i64
  %l414 = alloca i64
  %l417 = alloca i64
  %l435 = alloca ptr
  %l440 = alloca %"compiler/eval:Ptr"
  %l441 = alloca i64
  %l458 = alloca i64
  %l463 = alloca i64
  %l465 = alloca i64
  %l478 = alloca i1
  %l482 = alloca i8
  %l484 = alloca i8
  %l486 = alloca i8
  %l489 = alloca i32
  %l490 = alloca i8
  %l491 = alloca i64
  %l495 = alloca i64
  %l496 = alloca i32
  %l497 = alloca i64
  %l503 = alloca i64
  %l504 = alloca i32
  %l512 = alloca ptr
  %l513 = alloca i32
  %l518 = alloca i64
  %l521 = alloca i64
  %l547 = alloca { i64, ptr }
  %l557 = alloca i64
  %l560 = alloca i64
  %l578 = alloca ptr
  %l583 = alloca %"compiler/eval:Ptr"
  %l593 = alloca i64
  %l599 = alloca i64
  %l601 = alloca i64
  %l609 = alloca i1
  %l611 = alloca ptr
  %l612 = alloca %"compiler/eval:Ptr"
  %l615 = alloca %"compiler/eval:Ptr"
  %l620 = alloca %"compiler/eval:Ptr"
  %l622 = alloca i1
  %l626 = alloca i1
  %l630 = alloca ptr
  %l631 = alloca %"compiler/eval:Ptr"
  %l634 = alloca i64
  %s0 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s37 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %rv = alloca i1
  %t171 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  store %"compiler/eval:Ptr" %a5, ptr %l5
  store i1 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l72
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l72, !tbaa !29
  store ptr %t6, ptr %l7, !tbaa !29
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 34
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t9, i64 %t10)
  %t14 = extractvalue { i32, { i64, ptr } } %t13, 1
  %t15 = extractvalue { i32, { i64, ptr } } %t13, 0
  store i32 %t15, ptr %l78
  %t16 = icmp ne i32 %t15, 0
  br i1 %t16, label %bb3, label %ok.17, !prof !99
ok.17:
  store { i64, ptr } %t14, ptr %l77
  br label %bb2
bb2:
  %t18 = load { i64, ptr }, ptr %l77, !tbaa !27
  store { i64, ptr } %t18, ptr %l73, !tbaa !27
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t21 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t21, ptr %t19, { i64, ptr } %t20)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb6:
  %t25 = load { i64, ptr }, ptr %l73, !tbaa !27
  store { i64, ptr } %t25, ptr %l8, !tbaa !27
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 0
  %t29 = load ptr, ptr %t28, !tbaa !29
  store ptr %t29, ptr %l9, !tbaa !29
  %t31 = load ptr, ptr %l9, !tbaa !29
  store ptr %t31, ptr %l84, !tbaa !29
  %t32 = load ptr, ptr %l9, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l87
  br label %bb7
bb7:
  %t37 = load ptr, ptr %l84, !tbaa !29
  %t38 = load i32, ptr %l87, !tbaa !23
  %t39 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t37, i32 %t38)
  store { i64, ptr } %t39, ptr %l88
  br label %bb8
bb8:
  %t40 = load { i64, ptr }, ptr %l88, !tbaa !27
  store { i64, ptr } %t40, ptr %l10, !tbaa !27
  %t41 = load ptr, ptr %l9, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l91
  br label %bb9
bb9:
  %t46 = load i32, ptr %l91, !tbaa !23
  store i32 %t46, ptr %l11, !tbaa !23
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 1
  %t50 = load i32, ptr %t49, !range !{i32 0, i32 2}
  %t52 = trunc i64 0 to i32
  %t53 = icmp eq i32 %t50, %t52
  br i1 %t53, label %bb10, label %bb11
bb10:
  %t55 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t56 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t58 = extractvalue { i64, ptr } %t56, 0
  %t61 = call i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %t55, i64 %t58)
  store i1 %t61, ptr %l99
  br label %bb12
bb11:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb13
bb12:
  %t62 = load i1, ptr %l99, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l95, !tbaa !21
  br label %bb13
bb13:
  %t65 = load i1, ptr %l95, !tbaa !21
  br i1 %t65, label %bb14, label %bb15
bb14:
  %t66 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t68 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t66, { i64, ptr } { i64 14, ptr getelementptr inbounds (<{ i64, [14 x i8] }>, ptr @.d0, i32 0, i32 1) })
  store i1 %t68, ptr %l103
  br label %bb16
bb15:
  store i1 false, ptr %l101, !tbaa !21
  br label %bb17
bb16:
  %t69 = load i1, ptr %l103, !tbaa !21
  %t70 = xor i1 %t69, true
  store i1 %t70, ptr %l101, !tbaa !21
  br label %bb17
bb17:
  %t72 = load i1, ptr %l101, !tbaa !21
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyExtern, !tbaa !27
  %t75 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t75, ptr %t73, { i64, ptr } %t74)
  br label %bb20
bb19:
  br label %bb21
bb20:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb21:
  %t79 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t81 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %s0, { i64, ptr } %t79, { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d1, i32 0, i32 1) })
  store i1 %t81, ptr %l109
  br label %bb22
bb22:
  %t82 = load i1, ptr %l109, !tbaa !21
  br i1 %t82, label %bb23, label %bb24
bb23:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t86 = load %"compiler/mir:Range", ptr %l4
  %t87 = load i32, ptr %l3, !tbaa !23
  %t88 = load %"compiler/eval:Ptr", ptr %l5
  %t89 = load i1, ptr %l6, !tbaa !21
  %t97 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eruntimeFn(ptr %v0, ptr %v0, ptr %t83, i64 %t84, { i64, ptr } %t85, %"compiler/mir:Range" %t86, i32 %t87, %"compiler/eval:Ptr" %t88, i1 %t89)
  store i1 %t97, ptr %l117
  br label %bb25
bb24:
  br label %bb26
bb25:
  call void @__olang_scope_close(ptr %s0)
  %t98 = load i1, ptr %l117, !tbaa !21
  store i1 %t98, ptr %rv
  br label %ret
bb26:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 1
  %t102 = load i32, ptr %t101, !range !{i32 0, i32 2}
  %t104 = trunc i64 1 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t111 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewaitsForTask(ptr %v0, ptr %v0, ptr %t107, { i64, ptr } %t108)
  store i1 %t111, ptr %l124
  br label %bb29
bb28:
  store i1 false, ptr %l121, !tbaa !21
  br label %bb30
bb29:
  %t112 = load i1, ptr %l124, !tbaa !21
  store i1 %t112, ptr %l121, !tbaa !21
  br label %bb30
bb30:
  %t113 = load i1, ptr %l121, !tbaa !21
  br i1 %t113, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb32:
  br label %bb33
bb33:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i32, ptr %l11, !tbaa !23
  %t119 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eforeignRef(ptr %v0, ptr %t115, i32 %t116)
  store i1 %t119, ptr %l128
  br label %bb34
bb34:
  %t120 = load i1, ptr %l128, !tbaa !21
  store i1 %t120, ptr %l12, !tbaa !21
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load i32, ptr %l11, !tbaa !23
  %t125 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t121, i32 %t122, i1 true)
  store i1 %t125, ptr %l131
  br label %bb35
bb35:
  %t126 = load i1, ptr %l131, !tbaa !21
  %t127 = xor i1 %t126, true
  br i1 %t127, label %bb36, label %bb37
bb36:
  %t129 = load i1, ptr %l12, !tbaa !21
  %t131 = xor i1 %t129, true
  store i1 %t131, ptr %l133, !tbaa !21
  br label %bb38
bb37:
  store i1 false, ptr %l133, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l133, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t136 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t136, ptr %t134, { i64, ptr } %t135)
  br label %bb41
bb40:
  br label %bb42
bb41:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb42:
  %t140 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  store i64 %t143, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l13, !tbaa !24
  store i64 %t145, ptr %l141, !tbaa !24
  %t146 = load i64, ptr %l141, !tbaa !24
  %t147 = icmp sge i64 %t146, 0
  br i1 %t147, label %bb43, label %bb44
bb43:
  %t149 = load i64, ptr %l141, !tbaa !24
  %t150 = mul i64 %t149, 1
  %t151 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  store { i64, ptr } %t153, ptr %l14, !tbaa !27
  %t155 = load i64, ptr %l13, !tbaa !24
  store i64 %t155, ptr %l144, !tbaa !24
  store %"compiler/eval:Ptr" zeroinitializer, ptr %l145
  %t156 = load i64, ptr %l144, !tbaa !24
  %t157 = icmp sgt i64 %t156, 0
  br i1 %t157, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_8455ed81fb66a668_e2c955a612231684)
  unreachable
bb45:
  %t159 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 0, i64 0)
  store %"compiler/eval:Ptr" %t159, ptr %l147
  br label %bb47
bb46:
  %t160 = load i64, ptr %l144, !tbaa !24
  %t161 = icmp sge i64 %t160, 0
  br i1 %t161, label %bb48, label %bb49
bb47:
  %t163 = load %"compiler/eval:Ptr", ptr %l147
  store %"compiler/eval:Ptr" %t163, ptr %l145
  br label %bb46
bb48:
  %t164 = load i64, ptr %l144, !tbaa !24
  %t165 = icmp sle i64 %t164, 576460752303423487
  br i1 %t165, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_e6f2fd943c115655_f5638f66c9629791)
  unreachable
bb50:
  %t167 = load i64, ptr %l144, !tbaa !24
  %t168 = mul i64 %t167, 16
  %t169 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t168)
  %t170 = load %"compiler/eval:Ptr", ptr %l145
  store i64 0, ptr %t171
  br label %fill.172
fill.172:
  %t175 = load i64, ptr %t171
  %t176 = icmp slt i64 %t175, %t167
  br i1 %t176, label %fillb.173, label %filld.174
fillb.173:
  %t177 = getelementptr %"compiler/eval:Ptr", ptr %t169, i64 %t175
  store %"compiler/eval:Ptr" %t170, ptr %t177
  %t178 = add i64 %t175, 1
  store i64 %t178, ptr %t171
  br label %fill.172
filld.174:
  %t179 = insertvalue { i64, ptr } undef, i64 %t167, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t169, 1
  store { i64, ptr } %t180, ptr %l15, !tbaa !27
  %t182 = load i64, ptr %l13, !tbaa !24
  store i64 %t182, ptr %l151, !tbaa !24
  %t183 = load i64, ptr %l151, !tbaa !24
  %t184 = icmp sge i64 %t183, 0
  br i1 %t184, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_e6f2fd943c115655_f5638f66c9629791)
  unreachable
bb52:
  %t186 = load i64, ptr %l151, !tbaa !24
  %t187 = icmp sle i64 %t186, 1152921504606846975
  br i1 %t187, label %bb54, label %bb55
bb53:
  call void @__olang_check_failed(ptr @olang_loc_24365dba12301136_85ae2e45ea64b572)
  unreachable
bb54:
  %t189 = load i64, ptr %l151, !tbaa !24
  %t190 = mul i64 %t189, 8
  %t191 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t190)
  %t192 = insertvalue { i64, ptr } undef, i64 %t189, 0
  %t193 = insertvalue { i64, ptr } %t192, ptr %t191, 1
  store { i64, ptr } %t193, ptr %l16, !tbaa !27
  %t195 = load i64, ptr %l13, !tbaa !24
  store i64 %t195, ptr %l155, !tbaa !24
  %t196 = load i64, ptr %l155, !tbaa !24
  %t197 = icmp sge i64 %t196, 0
  br i1 %t197, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_24365dba12301136_85ae2e45ea64b572)
  unreachable
bb56:
  %t199 = load i64, ptr %l155, !tbaa !24
  %t200 = icmp sle i64 %t199, 1152921504606846975
  br i1 %t200, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_e79146937ca231cb_dd9a37031fe8e967)
  unreachable
bb58:
  %t202 = load i64, ptr %l155, !tbaa !24
  %t203 = mul i64 %t202, 8
  %t204 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t203)
  %t205 = insertvalue { i64, ptr } undef, i64 %t202, 0
  %t206 = insertvalue { i64, ptr } %t205, ptr %t204, 1
  store { i64, ptr } %t206, ptr %l17, !tbaa !27
  store i64 0, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  %t208 = load i64, ptr %l13, !tbaa !24
  store i64 %t208, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t210 = load i64, ptr %l20, !tbaa !24
  %t211 = load i64, ptr %l19, !tbaa !24
  %t214 = icmp sgt i64 %t210, %t211
  br i1 %t214, label %bb60, label %bb61
bb59:
  call void @__olang_check_failed(ptr @olang_loc_e79146937ca231cb_dd9a37031fe8e967)
  unreachable
bb60:
  %t216 = load i64, ptr %l21, !tbaa !24
  %t218 = icmp sgt i64 %t216, 0
  br i1 %t218, label %bb62, label %bb63
bb61:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb65
bb62:
  %t220 = load i64, ptr %l20, !tbaa !24
  %t221 = load i64, ptr %l19, !tbaa !24
  %t224 = sub i64 %t220, %t221
  %t225 = load i64, ptr %l21, !tbaa !24
  %t228 = add i64 %t224, %t225
  %t230 = sub i64 %t228, 1
  %t231 = load i64, ptr %l21, !tbaa !24
  %t234 = sdiv i64 %t230, %t231
  store i64 %t234, ptr %l166, !tbaa !24
  br label %bb64
bb63:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb64
bb64:
  %t236 = load i64, ptr %l166, !tbaa !24
  store i64 %t236, ptr %l163, !tbaa !24
  br label %bb65
bb65:
  %t237 = load i64, ptr %l163, !tbaa !24
  store i64 %t237, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb66
bb66:
  %t238 = load i64, ptr %l23, !tbaa !24
  %t239 = load i64, ptr %l22, !tbaa !24
  %t242 = icmp slt i64 %t238, %t239
  %t244 = xor i1 %t242, true
  br i1 %t244, label %bb67, label %bb68
bb67:
  br label %bb145
bb68:
  br label %bb69
bb69:
  %t246 = load i64, ptr %l19, !tbaa !24
  %t247 = load i64, ptr %l23, !tbaa !24
  %t248 = load i64, ptr %l21, !tbaa !24
  %t251 = mul i64 %t247, %t248
  %t254 = add i64 %t246, %t251
  store i64 %t254, ptr %l24, !tbaa !24
  %t256 = load ptr, ptr %l7, !tbaa !29
  %t258 = getelementptr %"compiler/mir:Fn", ptr %t256, i32 0, i32 11
  %t259 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t260 = load i32, ptr %t259, !tbaa !23
  %t262 = sext i32 %t260 to i64
  %t263 = load i64, ptr %l24, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t269 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t258, i64 %t266)
  store { i64, [4 x i64] } %t269, ptr %l190
  br label %bb70
bb70:
  %t270 = load { i64, [4 x i64] }, ptr %l190
  store { i64, [4 x i64] } %t270, ptr %l25
  %t271 = load i64, ptr %l24, !tbaa !24
  %t272 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t274 = extractvalue { i64, ptr } %t272, 0
  %t277 = icmp slt i64 %t271, %t274
  br i1 %t277, label %bb71, label %bb72
bb71:
  %t279 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t279, ptr %l196, !tbaa !27
  %t280 = load i64, ptr %l24, !tbaa !24
  %t282 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t283 = load ptr, ptr %t282, !tbaa !27
  %t284 = getelementptr i32, ptr %t283, i64 %t280
  %t285 = load i32, ptr %t284, !tbaa !33
  store i32 %t285, ptr %l195, !tbaa !23
  br label %bb74
bb72:
  %t287 = load ptr, ptr %l0, !tbaa !29
  %t288 = load i64, ptr %l1, !tbaa !24
  %t289 = load { i64, [4 x i64] }, ptr %l25
  %t293 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t287, i64 %t288, { i64, [4 x i64] } %t289)
  store i32 %t293, ptr %l202
  br label %bb73
bb73:
  %t294 = load i32, ptr %l202, !tbaa !23
  store i32 %t294, ptr %l195, !tbaa !23
  br label %bb74
bb74:
  %t295 = load i32, ptr %l195, !tbaa !23
  store i32 %t295, ptr %l26, !tbaa !23
  %t296 = load i64, ptr %l24, !tbaa !24
  %t298 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t299 = load ptr, ptr %t298, !tbaa !27
  %t300 = getelementptr i64, ptr %t299, i64 %t296
  store i64 -1, ptr %t300, !tbaa !34
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t302 = load i32, ptr %l26, !tbaa !23
  %t305 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t301, i32 %t302, i1 false)
  store i1 %t305, ptr %l206
  br label %bb75
bb75:
  %t306 = load i1, ptr %l206, !tbaa !21
  br i1 %t306, label %bb76, label %bb77
bb76:
  %t307 = load i64, ptr %l24, !tbaa !24
  store i64 %t307, ptr %l207, !tbaa !24
  %t308 = load ptr, ptr %l0, !tbaa !29
  %t309 = load i32, ptr %l26, !tbaa !23
  %t312 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %t308, i32 %t309)
  store i32 %t312, ptr %l210
  br label %bb78
bb77:
  br label %bb86
bb78:
  %t313 = load i32, ptr %l210, !range !{i32 0, i32 12}
  %t314 = call i8 @std_2fffi_2eCode(i32 %t313)
  store i8 %t314, ptr %l211
  br label %bb79
bb79:
  %t315 = load i8, ptr %l211, !tbaa !22
  %t316 = load i64, ptr %l207, !tbaa !24
  %t317 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t318 = load ptr, ptr %t317, !tbaa !27
  %t319 = getelementptr i8, ptr %t318, i64 %t316
  store i8 %t315, ptr %t319, !tbaa !32
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load i64, ptr %l1, !tbaa !24
  %t322 = load { i64, [4 x i64] }, ptr %l25
  %t326 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t320, i64 %t321, { i64, [4 x i64] } %t322)
  store i64 %t326, ptr %l215
  br label %bb80
bb80:
  %t327 = load i64, ptr %l215, !tbaa !24
  store i64 %t327, ptr %l27, !tbaa !65
  %t329 = load ptr, ptr %l0, !tbaa !29
  %t330 = load i32, ptr %l26, !tbaa !23
  %t333 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t329, i32 %t330)
  store i64 %t333, ptr %l219
  br label %bb81
bb81:
  %t334 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t335 = load i64, ptr %l219, !tbaa !24
  %t337 = icmp eq i64 %t335, %t334
  br i1 %t337, label %bb82, label %bb83
bb82:
  %t339 = load ptr, ptr %l0, !tbaa !29
  %t340 = load i64, ptr %l27, !tbaa !65
  %t342 = load i32, ptr %l26, !tbaa !23
  %t346 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t339, i64 %t340, i32 %t342)
  store i64 %t346, ptr %l226
  br label %bb84
bb83:
  br label %bb85
bb84:
  %t347 = load i64, ptr %l226, !tbaa !24
  store i64 %t347, ptr %l27, !tbaa !65
  br label %bb85
bb85:
  %t349 = load i64, ptr %l24, !tbaa !24
  %t350 = load i64, ptr %l27, !tbaa !65
  %t353 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t354 = load ptr, ptr %t353, !tbaa !27
  %t355 = getelementptr i64, ptr %t354, i64 %t349
  store i64 %t350, ptr %t355, !tbaa !85
  %t356 = load i64, ptr %l18, !tbaa !24
  %t358 = add i64 %t356, 1
  store i64 %t358, ptr %l18, !tbaa !24
  br label %bb144
bb86:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t361 = load i64, ptr %l1, !tbaa !24
  %t362 = load { i64, [4 x i64] }, ptr %l25
  %t366 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t360, i64 %t361, { i64, [4 x i64] } %t362)
  store i32 %t366, ptr %l235
  br label %bb87
bb87:
  %t367 = load i32, ptr %l235, !tbaa !23
  store i32 %t367, ptr %l28, !tbaa !23
  %t368 = load ptr, ptr %l0, !tbaa !29
  %t369 = load i32, ptr %l28, !tbaa !23
  %t372 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t368, i32 %t369)
  store i64 %t372, ptr %l238
  br label %bb88
bb88:
  %t373 = load i64, ptr %l238, !tbaa !24
  store i64 %t373, ptr %l29, !tbaa !24
  %t374 = load i64, ptr %l29, !tbaa !24
  %t375 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t378 = icmp eq i64 %t374, %t375
  br i1 %t378, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l242, !tbaa !21
  br label %bb91
bb90:
  %t380 = load i64, ptr %l29, !tbaa !24
  %t381 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t384 = icmp eq i64 %t380, %t381
  store i1 %t384, ptr %l242, !tbaa !21
  br label %bb91
bb91:
  %t386 = load i1, ptr %l242, !tbaa !21
  br i1 %t386, label %bb92, label %bb93
bb92:
  %t387 = load ptr, ptr %l0, !tbaa !29
  store ptr %t387, ptr %l246, !tbaa !29
  %t388 = load ptr, ptr %l0, !tbaa !29
  %t389 = load i64, ptr %l1, !tbaa !24
  %t390 = load { i64, [4 x i64] }, ptr %l25
  %t394 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t388, i64 %t389, { i64, [4 x i64] } %t390, i64 1)
  store %"compiler/eval:Ptr" %t394, ptr %l250
  br label %bb94
bb93:
  br label %bb115
bb94:
  %t395 = load i32, ptr %l28, !tbaa !23
  %t396 = load ptr, ptr %l246, !tbaa !29
  %t397 = load %"compiler/eval:Ptr", ptr %l250
  %t399 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t396, %"compiler/eval:Ptr" %t397, i32 %t395)
  store { %"compiler/eval:Ptr", i64 } %t399, ptr %l252
  br label %bb95
bb95:
  %t400 = load { %"compiler/eval:Ptr", i64 }, ptr %l252
  store { %"compiler/eval:Ptr", i64 } %t400, ptr %l30
  %t401 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l30, i32 0, i32 0
  %t402 = load %"compiler/eval:Ptr", ptr %t401
  store %"compiler/eval:Ptr" %t402, ptr %l31
  %t404 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l30, i32 0, i32 1
  %t405 = load i64, ptr %t404, !tbaa !24
  store i64 %t405, ptr %l32, !tbaa !24
  %t407 = load ptr, ptr %l0, !tbaa !29
  %t408 = load i32, ptr %l28, !tbaa !23
  %t411 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t407, i32 %t408)
  store i32 %t411, ptr %l257
  br label %bb96
bb96:
  %t412 = load i32, ptr %l257, !tbaa !23
  store i32 %t412, ptr %l33, !tbaa !23
  %t413 = getelementptr %"compiler/eval:Ptr", ptr %l31, i32 0, i32 0
  %t414 = load i64, ptr %t413, !tbaa !24
  %t416 = icmp eq i64 %t414, 0
  br i1 %t416, label %bb97, label %bb98
bb97:
  %t418 = load i64, ptr %l24, !tbaa !24
  store i64 %t418, ptr %l260, !tbaa !24
  %t420 = call i8 @std_2fffi_2eCode(i32 7)
  store i8 %t420, ptr %l262
  br label %bb99
bb98:
  br label %bb100
bb99:
  %t421 = load i8, ptr %l262, !tbaa !22
  %t422 = load i64, ptr %l260, !tbaa !24
  %t423 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t424 = load ptr, ptr %t423, !tbaa !27
  %t425 = getelementptr i8, ptr %t424, i64 %t422
  store i8 %t421, ptr %t425, !tbaa !32
  %t426 = load i64, ptr %l18, !tbaa !24
  %t428 = add i64 %t426, 1
  store i64 %t428, ptr %l18, !tbaa !24
  br label %bb144
bb100:
  %t430 = load ptr, ptr %l0, !tbaa !29
  %t431 = load i32, ptr %l33, !tbaa !23
  %t434 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t430, i32 %t431, i1 false)
  store i1 %t434, ptr %l267
  br label %bb101
bb101:
  %t435 = load i1, ptr %l267, !tbaa !21
  br i1 %t435, label %bb102, label %bb103
bb102:
  %t436 = load i64, ptr %l24, !tbaa !24
  store i64 %t436, ptr %l268, !tbaa !24
  %t437 = load ptr, ptr %l0, !tbaa !29
  %t438 = load i32, ptr %l33, !tbaa !23
  %t441 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %t437, i32 %t438)
  store i32 %t441, ptr %l271
  br label %bb104
bb103:
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t443 = load i32, ptr %l33, !tbaa !23
  %t446 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t442, i32 %t443)
  store i1 %t446, ptr %l275
  br label %bb106
bb104:
  %t447 = load i32, ptr %l271, !range !{i32 0, i32 12}
  %t448 = call i8 @std_2fffi_2eArrayOf(i32 %t447)
  store i8 %t448, ptr %l272
  br label %bb105
bb105:
  %t449 = load i8, ptr %l272, !tbaa !22
  %t450 = load i64, ptr %l268, !tbaa !24
  %t451 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t452 = load ptr, ptr %t451, !tbaa !27
  %t453 = getelementptr i8, ptr %t452, i64 %t450
  store i8 %t449, ptr %t453, !tbaa !32
  br label %bb112
bb106:
  %t454 = load i1, ptr %l275, !tbaa !21
  br i1 %t454, label %bb107, label %bb108
bb107:
  %t455 = load i64, ptr %l24, !tbaa !24
  store i64 %t455, ptr %l276, !tbaa !24
  %t457 = call i8 @std_2fffi_2eArrayOf(i32 4)
  store i8 %t457, ptr %l278
  br label %bb109
bb108:
  %t458 = load ptr, ptr %l0, !tbaa !29
  %t459 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t460 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t460, ptr %t458, { i64, ptr } %t459)
  br label %bb110
bb109:
  %t463 = load i8, ptr %l278, !tbaa !22
  %t464 = load i64, ptr %l276, !tbaa !24
  %t465 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t466 = load ptr, ptr %t465, !tbaa !27
  %t467 = getelementptr i8, ptr %t466, i64 %t464
  store i8 %t463, ptr %t467, !tbaa !32
  br label %bb111
bb110:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb111:
  br label %bb112
bb112:
  %t469 = load i64, ptr %l24, !tbaa !24
  %t470 = load %"compiler/eval:Ptr", ptr %l31
  %t473 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t474 = load ptr, ptr %t473, !tbaa !27
  %t475 = getelementptr %"compiler/eval:Ptr", ptr %t474, i64 %t469
  store %"compiler/eval:Ptr" %t470, ptr %t475
  %t476 = load i64, ptr %l24, !tbaa !24
  store i64 %t476, ptr %l284, !tbaa !24
  %t477 = load i64, ptr %l32, !tbaa !24
  store i64 %t477, ptr %l285, !tbaa !24
  %t478 = load ptr, ptr %l0, !tbaa !29
  %t479 = load i32, ptr %l33, !tbaa !23
  %t482 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t478, i32 %t479)
  store i64 %t482, ptr %l288
  br label %bb113
bb113:
  %t483 = load i64, ptr %l285, !tbaa !24
  %t484 = load i64, ptr %l288, !tbaa !24
  %t485 = mul i64 %t483, %t484
  %t487 = load i64, ptr %l284, !tbaa !24
  %t488 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t489 = load ptr, ptr %t488, !tbaa !27
  %t490 = getelementptr i64, ptr %t489, i64 %t487
  store i64 %t485, ptr %t490, !tbaa !34
  %t491 = load i64, ptr %l18, !tbaa !24
  store i64 %t491, ptr %l290, !tbaa !24
  %t492 = load i64, ptr %l24, !tbaa !24
  %t494 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t495 = load ptr, ptr %t494, !tbaa !27
  %t496 = getelementptr i64, ptr %t495, i64 %t492
  %t497 = load i64, ptr %t496, !tbaa !34
  %t499 = call i64 @std_2fffi_2eWordsFor(i64 %t497)
  store i64 %t499, ptr %l293
  br label %bb114
bb114:
  %t500 = load i64, ptr %l293, !tbaa !24
  %t501 = add i64 1, %t500
  %t502 = load i64, ptr %l290, !tbaa !24
  %t504 = add i64 %t502, %t501
  store i64 %t504, ptr %l18, !tbaa !24
  br label %bb144
bb115:
  %t506 = load i64, ptr %l29, !tbaa !24
  %t507 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  %t510 = icmp eq i64 %t506, %t507
  br i1 %t510, label %bb116, label %bb117
bb116:
  %t512 = load ptr, ptr %l0, !tbaa !29
  store ptr %t512, ptr %l299, !tbaa !29
  %t513 = load ptr, ptr %l0, !tbaa !29
  %t514 = load i64, ptr %l1, !tbaa !24
  %t515 = load { i64, [4 x i64] }, ptr %l25
  %t519 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t513, i64 %t514, { i64, [4 x i64] } %t515, i64 1)
  store %"compiler/eval:Ptr" %t519, ptr %l303
  br label %bb118
bb117:
  br label %bb142
bb118:
  %t520 = load ptr, ptr %l299, !tbaa !29
  %t521 = load %"compiler/eval:Ptr", ptr %l303
  %t522 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %t520, %"compiler/eval:Ptr" %t521)
  store %"compiler/eval:Ptr" %t522, ptr %l304
  br label %bb119
bb119:
  %t523 = load %"compiler/eval:Ptr", ptr %l304
  store %"compiler/eval:Ptr" %t523, ptr %l34
  %t524 = load i64, ptr %l24, !tbaa !24
  store i64 %t524, ptr %l305, !tbaa !24
  %t526 = call i8 @std_2fffi_2eCode(i32 7)
  store i8 %t526, ptr %l307
  br label %bb120
bb120:
  %t527 = load i8, ptr %l307, !tbaa !22
  %t528 = load i64, ptr %l305, !tbaa !24
  %t529 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t530 = load ptr, ptr %t529, !tbaa !27
  %t531 = getelementptr i8, ptr %t530, i64 %t528
  store i8 %t527, ptr %t531, !tbaa !32
  %t532 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t533 = load i64, ptr %t532, !tbaa !24
  %t535 = icmp eq i64 %t533, 0
  br i1 %t535, label %bb121, label %bb122
bb121:
  %t537 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 1
  %t538 = load i64, ptr %t537, !tbaa !24
  %t540 = icmp eq i64 %t538, 0
  store i1 %t540, ptr %l310, !tbaa !21
  br label %bb123
bb122:
  store i1 false, ptr %l310, !tbaa !21
  br label %bb123
bb123:
  %t542 = load i1, ptr %l310, !tbaa !21
  br i1 %t542, label %bb124, label %bb125
bb124:
  %t543 = load i64, ptr %l24, !tbaa !24
  %t545 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr i64, ptr %t546, i64 %t543
  store i64 0, ptr %t547, !tbaa !85
  %t548 = load i64, ptr %l18, !tbaa !24
  %t550 = add i64 %t548, 1
  store i64 %t550, ptr %l18, !tbaa !24
  br label %bb144
bb125:
  br label %bb126
bb126:
  %t552 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t553 = load i64, ptr %t552, !tbaa !24
  %t554 = load i64, ptr @G_2ecompiler_2feval_2eForeignId, !tbaa !24
  %t557 = icmp eq i64 %t553, %t554
  br i1 %t557, label %bb127, label %bb128
bb127:
  %t559 = load i64, ptr %l24, !tbaa !24
  %t560 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 1
  %t561 = load i64, ptr %t560, !tbaa !24
  %t565 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr i64, ptr %t566, i64 %t559
  store i64 %t561, ptr %t567, !tbaa !85
  %t568 = load i64, ptr %l18, !tbaa !24
  %t570 = add i64 %t568, 1
  store i64 %t570, ptr %l18, !tbaa !24
  br label %bb144
bb128:
  br label %bb129
bb129:
  %t572 = load ptr, ptr %l9, !tbaa !29
  store ptr %t572, ptr %l324, !tbaa !29
  %t573 = load ptr, ptr %l9, !tbaa !29
  %t574 = load i32, ptr %l28, !tbaa !23
  %t577 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t573, i32 %t574)
  store i32 %t577, ptr %l327
  br label %bb130
bb130:
  %t578 = load ptr, ptr %l324, !tbaa !29
  %t579 = load i32, ptr %l327, !tbaa !23
  %t580 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t578, i32 %t579)
  store i32 %t580, ptr %l328
  br label %bb131
bb131:
  %t581 = load i32, ptr %l328, !tbaa !23
  store i32 %t581, ptr %l35, !tbaa !23
  %t582 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t583 = load i64, ptr %t582, !tbaa !24
  %t585 = icmp ne i64 %t583, 0
  br i1 %t585, label %bb132, label %bb133
bb132:
  %t587 = load ptr, ptr %l0, !tbaa !29
  %t588 = load i32, ptr %l35, !tbaa !23
  %t591 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t587, i32 %t588)
  store i1 %t591, ptr %l334
  br label %bb134
bb133:
  store i1 false, ptr %l331, !tbaa !21
  br label %bb135
bb134:
  %t592 = load i1, ptr %l334, !tbaa !21
  store i1 %t592, ptr %l331, !tbaa !21
  br label %bb135
bb135:
  %t593 = load i1, ptr %l331, !tbaa !21
  br i1 %t593, label %bb136, label %bb137
bb136:
  %t594 = load i64, ptr %l24, !tbaa !24
  store i64 %t594, ptr %l335, !tbaa !24
  %t596 = call i8 @std_2fffi_2eArrayOf(i32 4)
  store i8 %t596, ptr %l337
  br label %bb138
bb137:
  br label %bb141
bb138:
  %t597 = load i8, ptr %l337, !tbaa !22
  %t598 = load i64, ptr %l335, !tbaa !24
  %t599 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t600 = load ptr, ptr %t599, !tbaa !27
  %t601 = getelementptr i8, ptr %t600, i64 %t598
  store i8 %t597, ptr %t601, !tbaa !32
  %t602 = load i64, ptr %l24, !tbaa !24
  %t603 = load %"compiler/eval:Ptr", ptr %l34
  %t606 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t607 = load ptr, ptr %t606, !tbaa !27
  %t608 = getelementptr %"compiler/eval:Ptr", ptr %t607, i64 %t602
  store %"compiler/eval:Ptr" %t603, ptr %t608
  %t609 = load i64, ptr %l24, !tbaa !24
  store i64 %t609, ptr %l340, !tbaa !24
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load i32, ptr %l35, !tbaa !23
  %t614 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t610, i32 %t611)
  store i64 %t614, ptr %l343
  br label %bb139
bb139:
  %t615 = load i64, ptr %l343, !tbaa !24
  %t616 = load i64, ptr %l340, !tbaa !24
  %t617 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t618 = load ptr, ptr %t617, !tbaa !27
  %t619 = getelementptr i64, ptr %t618, i64 %t616
  store i64 %t615, ptr %t619, !tbaa !34
  %t620 = load i64, ptr %l18, !tbaa !24
  store i64 %t620, ptr %l344, !tbaa !24
  %t621 = load i64, ptr %l24, !tbaa !24
  %t623 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t624 = load ptr, ptr %t623, !tbaa !27
  %t625 = getelementptr i64, ptr %t624, i64 %t621
  %t626 = load i64, ptr %t625, !tbaa !34
  %t628 = call i64 @std_2fffi_2eWordsFor(i64 %t626)
  store i64 %t628, ptr %l347
  br label %bb140
bb140:
  %t629 = load i64, ptr %l347, !tbaa !24
  %t630 = add i64 1, %t629
  %t631 = load i64, ptr %l344, !tbaa !24
  %t633 = add i64 %t631, %t630
  store i64 %t633, ptr %l18, !tbaa !24
  br label %bb144
bb141:
  br label %bb142
bb142:
  %t635 = load ptr, ptr %l0, !tbaa !29
  %t636 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t637 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t637, ptr %t635, { i64, ptr } %t636)
  br label %bb143
bb143:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb144:
  %t641 = load i64, ptr %l23, !tbaa !24
  %t643 = add i64 %t641, 1
  store i64 %t643, ptr %l23, !tbaa !24
  br label %bb66
bb145:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t647 = getelementptr %"compiler/eval:Machine", ptr %t645, i32 0, i32 22
  %t648 = load i1, ptr %t647, !tbaa !21
  br i1 %t648, label %bb146, label %bb147
bb146:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb147:
  br label %bb148
bb148:
  %t651 = load i64, ptr %l18, !tbaa !24
  store i64 %t651, ptr %l358, !tbaa !24
  %t652 = load i64, ptr %l358, !tbaa !24
  %t653 = icmp sge i64 %t652, 0
  br i1 %t653, label %bb149, label %bb150
bb149:
  %t655 = load i64, ptr %l358, !tbaa !24
  %t656 = icmp sle i64 %t655, 1152921504606846975
  br i1 %t656, label %bb151, label %bb152
bb150:
  call void @__olang_check_failed(ptr @olang_loc_84b043302e365534_8c4896c766887f8)
  unreachable
bb151:
  %t658 = load i64, ptr %l358, !tbaa !24
  %t659 = mul i64 %t658, 8
  %t660 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t659)
  %t661 = insertvalue { i64, ptr } undef, i64 %t658, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t660, 1
  store { i64, ptr } %t662, ptr %l36, !tbaa !27
  store i64 0, ptr %l37, !tbaa !24
  store i64 0, ptr %l38, !tbaa !24
  %t664 = load i64, ptr %l13, !tbaa !24
  store i64 %t664, ptr %l39, !tbaa !24
  store i64 1, ptr %l40, !tbaa !24
  %t666 = load i64, ptr %l39, !tbaa !24
  %t667 = load i64, ptr %l38, !tbaa !24
  %t670 = icmp sgt i64 %t666, %t667
  br i1 %t670, label %bb153, label %bb154
bb152:
  call void @__olang_check_failed(ptr @olang_loc_84b043302e365534_8c4896c766887f8)
  unreachable
bb153:
  %t672 = load i64, ptr %l40, !tbaa !24
  %t674 = icmp sgt i64 %t672, 0
  br i1 %t674, label %bb155, label %bb156
bb154:
  store i64 0, ptr %l366, !tbaa !24
  br label %bb158
bb155:
  %t676 = load i64, ptr %l39, !tbaa !24
  %t677 = load i64, ptr %l38, !tbaa !24
  %t680 = sub i64 %t676, %t677
  %t681 = load i64, ptr %l40, !tbaa !24
  %t684 = add i64 %t680, %t681
  %t686 = sub i64 %t684, 1
  %t687 = load i64, ptr %l40, !tbaa !24
  %t690 = sdiv i64 %t686, %t687
  store i64 %t690, ptr %l369, !tbaa !24
  br label %bb157
bb156:
  store i64 0, ptr %l369, !tbaa !24
  br label %bb157
bb157:
  %t692 = load i64, ptr %l369, !tbaa !24
  store i64 %t692, ptr %l366, !tbaa !24
  br label %bb158
bb158:
  %t693 = load i64, ptr %l366, !tbaa !24
  store i64 %t693, ptr %l41, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  br label %bb159
bb159:
  %t694 = load i64, ptr %l42, !tbaa !24
  %t695 = load i64, ptr %l41, !tbaa !24
  %t698 = icmp slt i64 %t694, %t695
  %t700 = xor i1 %t698, true
  br i1 %t700, label %bb160, label %bb161
bb160:
  br label %bb187
bb161:
  br label %bb162
bb162:
  %t702 = load i64, ptr %l38, !tbaa !24
  %t703 = load i64, ptr %l42, !tbaa !24
  %t704 = load i64, ptr %l40, !tbaa !24
  %t707 = mul i64 %t703, %t704
  %t710 = add i64 %t702, %t707
  store i64 %t710, ptr %l43, !tbaa !24
  %t712 = load i64, ptr %l43, !tbaa !24
  %t714 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !27
  %t716 = getelementptr i64, ptr %t715, i64 %t712
  %t717 = load i64, ptr %t716, !tbaa !34
  %t719 = icmp sge i64 %t717, 0
  br i1 %t719, label %bb163, label %bb164
bb163:
  %t721 = load i64, ptr %l43, !tbaa !24
  %t723 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t724 = load ptr, ptr %t723, !tbaa !27
  %t725 = getelementptr %"compiler/eval:Ptr", ptr %t724, i64 %t721
  %t726 = load %"compiler/eval:Ptr", ptr %t725
  store %"compiler/eval:Ptr" %t726, ptr %l44
  %t728 = load i64, ptr %l43, !tbaa !24
  %t730 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t731 = load ptr, ptr %t730, !tbaa !27
  %t732 = getelementptr i64, ptr %t731, i64 %t728
  %t733 = load i64, ptr %t732, !tbaa !34
  store i64 %t733, ptr %l45, !tbaa !24
  %t735 = load i64, ptr %l37, !tbaa !24
  store i64 %t735, ptr %l394, !tbaa !24
  %t736 = load i64, ptr %l43, !tbaa !24
  %t738 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t739 = load ptr, ptr %t738, !tbaa !27
  %t740 = getelementptr i8, ptr %t739, i64 %t736
  %t741 = load i8, ptr %t740, !tbaa !32
  store i8 %t741, ptr %l396, !tbaa !22
  %t743 = call i8 @std_2fffi_2eArrayOf(i32 4)
  store i8 %t743, ptr %l398
  br label %bb165
bb164:
  %t744 = load i64, ptr %l37, !tbaa !24
  %t745 = load i64, ptr %l43, !tbaa !24
  %t747 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t748 = load ptr, ptr %t747, !tbaa !27
  %t749 = getelementptr i64, ptr %t748, i64 %t745
  %t750 = load i64, ptr %t749, !tbaa !85
  %t753 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t754 = load ptr, ptr %t753, !tbaa !27
  %t755 = getelementptr i64, ptr %t754, i64 %t744
  store i64 %t750, ptr %t755, !tbaa !85
  %t756 = load i64, ptr %l37, !tbaa !24
  %t758 = add i64 %t756, 1
  store i64 %t758, ptr %l37, !tbaa !24
  br label %bb185
bb165:
  %t760 = load i8, ptr %l396, !tbaa !22
  %t761 = load i8, ptr %l398, !tbaa !22
  %t762 = icmp eq i8 %t760, %t761
  br i1 %t762, label %bb166, label %bb167
bb166:
  %t764 = load i64, ptr %l45, !tbaa !24
  store i64 %t764, ptr %l400, !tbaa !65
  br label %bb169
bb167:
  %t767 = load i64, ptr %l45, !tbaa !24
  store i64 %t767, ptr %l403, !tbaa !24
  %t768 = load ptr, ptr %l0, !tbaa !29
  %t769 = load i64, ptr %l43, !tbaa !24
  %t771 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t772 = load ptr, ptr %t771, !tbaa !27
  %t773 = getelementptr i8, ptr %t772, i64 %t769
  %t774 = load i8, ptr %t773, !tbaa !32
  %t777 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekindWidth(ptr %v0, ptr %t768, i8 %t774)
  store i64 %t777, ptr %l407
  br label %bb168
bb168:
  %t778 = load i64, ptr %l403, !tbaa !24
  %t779 = load i64, ptr %l407, !tbaa !24
  %t780 = sdiv i64 %t778, %t779
  store i64 %t780, ptr %l400, !tbaa !65
  br label %bb169
bb169:
  %t783 = load i64, ptr %l400, !tbaa !65
  %t784 = load i64, ptr %l394, !tbaa !24
  %t785 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t786 = load ptr, ptr %t785, !tbaa !27
  %t787 = getelementptr i64, ptr %t786, i64 %t784
  store i64 %t783, ptr %t787, !tbaa !85
  store i64 0, ptr %l46, !tbaa !24
  %t788 = load i64, ptr %l45, !tbaa !24
  store i64 %t788, ptr %l47, !tbaa !24
  store i64 1, ptr %l48, !tbaa !24
  %t790 = load i64, ptr %l47, !tbaa !24
  %t791 = load i64, ptr %l46, !tbaa !24
  %t794 = icmp sgt i64 %t790, %t791
  br i1 %t794, label %bb170, label %bb171
bb170:
  %t796 = load i64, ptr %l48, !tbaa !24
  %t798 = icmp sgt i64 %t796, 0
  br i1 %t798, label %bb172, label %bb173
bb171:
  store i64 0, ptr %l414, !tbaa !24
  br label %bb175
bb172:
  %t800 = load i64, ptr %l47, !tbaa !24
  %t801 = load i64, ptr %l46, !tbaa !24
  %t804 = sub i64 %t800, %t801
  %t805 = load i64, ptr %l48, !tbaa !24
  %t808 = add i64 %t804, %t805
  %t810 = sub i64 %t808, 1
  %t811 = load i64, ptr %l48, !tbaa !24
  %t814 = sdiv i64 %t810, %t811
  store i64 %t814, ptr %l417, !tbaa !24
  br label %bb174
bb173:
  store i64 0, ptr %l417, !tbaa !24
  br label %bb174
bb174:
  %t816 = load i64, ptr %l417, !tbaa !24
  store i64 %t816, ptr %l414, !tbaa !24
  br label %bb175
bb175:
  %t817 = load i64, ptr %l414, !tbaa !24
  store i64 %t817, ptr %l49, !tbaa !24
  store i64 0, ptr %l50, !tbaa !24
  br label %bb176
bb176:
  store %olang.scope zeroinitializer, ptr %s26
  %t818 = load i64, ptr %l50, !tbaa !24
  %t819 = load i64, ptr %l49, !tbaa !24
  %t822 = icmp slt i64 %t818, %t819
  %t824 = xor i1 %t822, true
  br i1 %t824, label %bb177, label %bb178
bb177:
  call void @__olang_scope_close(ptr %s26)
  br label %bb183
bb178:
  br label %bb179
bb179:
  %t826 = load i64, ptr %l46, !tbaa !24
  %t827 = load i64, ptr %l50, !tbaa !24
  %t828 = load i64, ptr %l48, !tbaa !24
  %t831 = mul i64 %t827, %t828
  %t834 = add i64 %t826, %t831
  store i64 %t834, ptr %l51, !tbaa !24
  %t836 = load ptr, ptr %l0, !tbaa !29
  store ptr %t836, ptr %l435, !tbaa !29
  %t837 = getelementptr %"compiler/eval:Ptr", ptr %l44, i32 0, i32 0
  %t838 = load i64, ptr %t837, !tbaa !24
  %t839 = getelementptr %"compiler/eval:Ptr", ptr %l44, i32 0, i32 1
  %t840 = load i64, ptr %t839, !tbaa !24
  %t841 = load i64, ptr %l51, !tbaa !24
  %t844 = add i64 %t840, %t841
  %t847 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s26, i64 %t838, i64 %t844)
  store %"compiler/eval:Ptr" %t847, ptr %l440
  br label %bb180
bb180:
  %t848 = load ptr, ptr %l435, !tbaa !29
  %t849 = load %"compiler/eval:Ptr", ptr %l440
  %t850 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t848, %"compiler/eval:Ptr" %t849, i64 1)
  store i64 %t850, ptr %l441
  br label %bb181
bb181:
  %t851 = load i64, ptr %l441, !tbaa !24
  %t853 = load i64, ptr %l37, !tbaa !24
  %t855 = add i64 %t853, 1
  %t856 = load i64, ptr %l51, !tbaa !24
  %t858 = sdiv i64 %t856, 8
  %t861 = add i64 %t855, %t858
  %t862 = load i64, ptr %l37, !tbaa !24
  %t864 = add i64 %t862, 1
  %t865 = load i64, ptr %l51, !tbaa !24
  %t867 = sdiv i64 %t865, 8
  %t870 = add i64 %t864, %t867
  %t872 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t873 = load ptr, ptr %t872, !tbaa !27
  %t874 = getelementptr i64, ptr %t873, i64 %t870
  %t875 = load i64, ptr %t874, !tbaa !85
  %t877 = load i64, ptr %l51, !tbaa !24
  %t879 = srem i64 %t877, 8
  %t882 = mul i64 %t879, 8
  store i64 %t882, ptr %l458, !tbaa !65
  %t884 = load i64, ptr %l458, !tbaa !65
  %t885 = load i64, ptr %l458, !tbaa !65
  %t886 = shl i64 %t851, %t885
  %t889 = or i64 %t875, %t886
  %t892 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t893 = load ptr, ptr %t892, !tbaa !27
  %t894 = getelementptr i64, ptr %t893, i64 %t861
  store i64 %t889, ptr %t894, !tbaa !85
  call void @__olang_scope_close(ptr %s26)
  br label %bb182
bb182:
  %t895 = load i64, ptr %l50, !tbaa !24
  %t897 = add i64 %t895, 1
  store i64 %t897, ptr %l50, !tbaa !24
  br label %bb176
bb183:
  %t899 = load i64, ptr %l37, !tbaa !24
  store i64 %t899, ptr %l463, !tbaa !24
  %t900 = load i64, ptr %l45, !tbaa !24
  %t902 = call i64 @std_2fffi_2eWordsFor(i64 %t900)
  store i64 %t902, ptr %l465
  br label %bb184
bb184:
  %t903 = load i64, ptr %l465, !tbaa !24
  %t904 = add i64 1, %t903
  %t905 = load i64, ptr %l463, !tbaa !24
  %t907 = add i64 %t905, %t904
  store i64 %t907, ptr %l37, !tbaa !24
  br label %bb185
bb185:
  br label %bb186
bb186:
  %t909 = load i64, ptr %l42, !tbaa !24
  %t911 = add i64 %t909, 1
  store i64 %t911, ptr %l42, !tbaa !24
  br label %bb159
bb187:
  %t913 = load i32, ptr %l11, !tbaa !23
  %t914 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t917 = icmp eq i32 %t913, %t914
  br i1 %t917, label %bb188, label %bb189
bb188:
  store i1 true, ptr %l478, !tbaa !21
  br label %bb190
bb189:
  %t919 = load i32, ptr %l11, !tbaa !23
  %t920 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t923 = icmp eq i32 %t919, %t920
  store i1 %t923, ptr %l478, !tbaa !21
  br label %bb190
bb190:
  %t925 = load i1, ptr %l478, !tbaa !21
  br i1 %t925, label %bb191, label %bb192
bb191:
  store i8 0, ptr %l482, !tbaa !22
  br label %bb199
bb192:
  %t926 = load i1, ptr %l12, !tbaa !21
  br i1 %t926, label %bb193, label %bb194
bb193:
  %t929 = call i8 @std_2fffi_2eCode(i32 7)
  store i8 %t929, ptr %l486
  br label %bb195
bb194:
  %t930 = load ptr, ptr %l0, !tbaa !29
  %t931 = load i32, ptr %l11, !tbaa !23
  %t934 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %t930, i32 %t931)
  store i32 %t934, ptr %l489
  br label %bb196
bb195:
  %t935 = load i8, ptr %l486, !tbaa !22
  store i8 %t935, ptr %l484, !tbaa !22
  br label %bb198
bb196:
  %t936 = load i32, ptr %l489, !range !{i32 0, i32 12}
  %t937 = call i8 @std_2fffi_2eCode(i32 %t936)
  store i8 %t937, ptr %l490
  br label %bb197
bb197:
  %t938 = load i8, ptr %l490, !tbaa !22
  store i8 %t938, ptr %l484, !tbaa !22
  br label %bb198
bb198:
  %t939 = load i8, ptr %l484, !tbaa !22
  store i8 %t939, ptr %l482, !tbaa !22
  br label %bb199
bb199:
  %t940 = load i8, ptr %l482, !tbaa !22
  store i8 %t940, ptr %l53, !tbaa !22
  %t941 = load ptr, ptr %l0, !tbaa !29
  %t943 = getelementptr %"compiler/eval:Machine", ptr %t941, i32 0, i32 35
  %t944 = load i64, ptr %l2, !tbaa !24
  %t947 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t943, i64 %t944)
  %t948 = extractvalue { i32, i64 } %t947, 1
  %t949 = extractvalue { i32, i64 } %t947, 0
  store i32 %t949, ptr %l496
  %t950 = icmp ne i32 %t949, 0
  br i1 %t950, label %bb201, label %ok.951, !prof !99
ok.951:
  store i64 %t948, ptr %l495
  br label %bb200
bb200:
  %t952 = load i64, ptr %l495, !tbaa !24
  store i64 %t952, ptr %l491, !tbaa !24
  br label %bb203
bb201:
  br label %bb202
bb202:
  store i64 -1, ptr %l491, !tbaa !24
  br label %bb203
bb203:
  %t953 = load i64, ptr %l491, !tbaa !24
  %t954 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t955 = load { i64, ptr }, ptr %l14, !tbaa !27
  %t956 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t957 = load i8, ptr %l53, !tbaa !22
  %t964 = call { i32, i64 } @std_2fffi_2eCall(ptr %v0, ptr %s0, ptr %s0, { i64, ptr } %t954, { i64, ptr } %t955, { i64, ptr } %t956, i8 %t957, i64 %t953)
  %t965 = extractvalue { i32, i64 } %t964, 1
  %t966 = extractvalue { i32, i64 } %t964, 0
  store i32 %t966, ptr %l504
  %t967 = icmp ne i32 %t966, 0
  br i1 %t967, label %bb205, label %ok.968, !prof !99
ok.968:
  store i64 %t965, ptr %l503
  br label %bb204
bb204:
  %t969 = load i64, ptr %l503, !tbaa !65
  store i64 %t969, ptr %l497, !tbaa !65
  br label %bb212
bb205:
  %t970 = load i32, ptr %l504, !tbaa !23
  %t971 = icmp eq i32 %t970, 65536
  br i1 %t971, label %bb206, label %bb207
bb206:
  br label %bb208
bb207:
  br label %bb209
bb208:
  %t973 = load ptr, ptr %l0, !tbaa !29
  %t974 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiFind, !tbaa !27
  %t975 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t975, ptr %t973, { i64, ptr } %t974)
  br label %bb210
bb209:
  %t978 = load ptr, ptr %l0, !tbaa !29
  %t979 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiPass, !tbaa !27
  %t980 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t980, ptr %t978, { i64, ptr } %t979)
  br label %bb211
bb210:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb211:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb212:
  %t985 = load i64, ptr %l497, !tbaa !65
  store i64 %t985, ptr %l55, !tbaa !65
  %t986 = load ptr, ptr %l0, !tbaa !29
  store ptr %t986, ptr %l512, !tbaa !29
  %t987 = call i32 @__olang_err()
  store i32 %t987, ptr %l513
  br label %bb213
bb213:
  %t988 = load i32, ptr %l513, !tbaa !23
  %t989 = load ptr, ptr %l512, !tbaa !29
  %t990 = getelementptr %"compiler/eval:Machine", ptr %t989, i32 0, i32 94
  store i32 %t988, ptr %t990, !tbaa !23
  store i64 0, ptr %l37, !tbaa !24
  store i64 0, ptr %l56, !tbaa !24
  %t991 = load i64, ptr %l13, !tbaa !24
  store i64 %t991, ptr %l57, !tbaa !24
  store i64 1, ptr %l58, !tbaa !24
  %t993 = load i64, ptr %l57, !tbaa !24
  %t994 = load i64, ptr %l56, !tbaa !24
  %t997 = icmp sgt i64 %t993, %t994
  br i1 %t997, label %bb214, label %bb215
bb214:
  %t999 = load i64, ptr %l58, !tbaa !24
  %t1001 = icmp sgt i64 %t999, 0
  br i1 %t1001, label %bb216, label %bb217
bb215:
  store i64 0, ptr %l518, !tbaa !24
  br label %bb219
bb216:
  %t1003 = load i64, ptr %l57, !tbaa !24
  %t1004 = load i64, ptr %l56, !tbaa !24
  %t1007 = sub i64 %t1003, %t1004
  %t1008 = load i64, ptr %l58, !tbaa !24
  %t1011 = add i64 %t1007, %t1008
  %t1013 = sub i64 %t1011, 1
  %t1014 = load i64, ptr %l58, !tbaa !24
  %t1017 = sdiv i64 %t1013, %t1014
  store i64 %t1017, ptr %l521, !tbaa !24
  br label %bb218
bb217:
  store i64 0, ptr %l521, !tbaa !24
  br label %bb218
bb218:
  %t1019 = load i64, ptr %l521, !tbaa !24
  store i64 %t1019, ptr %l518, !tbaa !24
  br label %bb219
bb219:
  %t1020 = load i64, ptr %l518, !tbaa !24
  store i64 %t1020, ptr %l59, !tbaa !24
  store i64 0, ptr %l60, !tbaa !24
  br label %bb220
bb220:
  %t1021 = load i64, ptr %l60, !tbaa !24
  %t1022 = load i64, ptr %l59, !tbaa !24
  %t1025 = icmp slt i64 %t1021, %t1022
  %t1027 = xor i1 %t1025, true
  br i1 %t1027, label %bb221, label %bb222
bb221:
  br label %bb246
bb222:
  br label %bb223
bb223:
  %t1029 = load i64, ptr %l56, !tbaa !24
  %t1030 = load i64, ptr %l60, !tbaa !24
  %t1031 = load i64, ptr %l58, !tbaa !24
  %t1034 = mul i64 %t1030, %t1031
  %t1037 = add i64 %t1029, %t1034
  store i64 %t1037, ptr %l61, !tbaa !24
  %t1039 = load i64, ptr %l61, !tbaa !24
  %t1041 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t1042 = load ptr, ptr %t1041, !tbaa !27
  %t1043 = getelementptr i64, ptr %t1042, i64 %t1039
  %t1044 = load i64, ptr %t1043, !tbaa !34
  %t1046 = icmp sge i64 %t1044, 0
  br i1 %t1046, label %bb224, label %bb225
bb224:
  %t1048 = load i64, ptr %l61, !tbaa !24
  %t1050 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t1051 = load ptr, ptr %t1050, !tbaa !27
  %t1052 = getelementptr %"compiler/eval:Ptr", ptr %t1051, i64 %t1048
  %t1053 = load %"compiler/eval:Ptr", ptr %t1052
  store %"compiler/eval:Ptr" %t1053, ptr %l62
  %t1055 = load i64, ptr %l61, !tbaa !24
  %t1057 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t1058 = load ptr, ptr %t1057, !tbaa !27
  %t1059 = getelementptr i64, ptr %t1058, i64 %t1055
  %t1060 = load i64, ptr %t1059, !tbaa !34
  store i64 %t1060, ptr %l63, !tbaa !24
  %t1062 = load ptr, ptr %l0, !tbaa !29
  %t1064 = getelementptr %"compiler/eval:Machine", ptr %t1062, i32 0, i32 49
  %t1065 = load { i64, ptr }, ptr %t1064, !tbaa !27
  store { i64, ptr } %t1065, ptr %l547, !tbaa !27
  %t1066 = getelementptr %"compiler/eval:Ptr", ptr %l62, i32 0, i32 0
  %t1067 = load i64, ptr %t1066, !tbaa !24
  %t1068 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t1071 = and i64 %t1067, %t1068
  %t1073 = getelementptr { i64, ptr }, ptr %l547, i32 0, i32 1
  %t1074 = load ptr, ptr %t1073, !tbaa !27
  %t1075 = getelementptr %"compiler/eval:alloc", ptr %t1074, i64 %t1071
  %t1076 = getelementptr %"compiler/eval:alloc", ptr %t1075, i32 0, i32 13
  %t1077 = load i1, ptr %t1076, !tbaa !21
  %t1079 = icmp eq i1 %t1077, false
  br i1 %t1079, label %bb226, label %bb227
bb225:
  %t1081 = load i64, ptr %l37, !tbaa !24
  %t1083 = add i64 %t1081, 1
  store i64 %t1083, ptr %l37, !tbaa !24
  br label %bb244
bb226:
  store i64 0, ptr %l64, !tbaa !24
  %t1085 = load i64, ptr %l63, !tbaa !24
  store i64 %t1085, ptr %l65, !tbaa !24
  store i64 1, ptr %l66, !tbaa !24
  %t1087 = load i64, ptr %l65, !tbaa !24
  %t1088 = load i64, ptr %l64, !tbaa !24
  %t1091 = icmp sgt i64 %t1087, %t1088
  br i1 %t1091, label %bb228, label %bb229
bb227:
  br label %bb242
bb228:
  %t1093 = load i64, ptr %l66, !tbaa !24
  %t1095 = icmp sgt i64 %t1093, 0
  br i1 %t1095, label %bb230, label %bb231
bb229:
  store i64 0, ptr %l557, !tbaa !24
  br label %bb233
bb230:
  %t1097 = load i64, ptr %l65, !tbaa !24
  %t1098 = load i64, ptr %l64, !tbaa !24
  %t1101 = sub i64 %t1097, %t1098
  %t1102 = load i64, ptr %l66, !tbaa !24
  %t1105 = add i64 %t1101, %t1102
  %t1107 = sub i64 %t1105, 1
  %t1108 = load i64, ptr %l66, !tbaa !24
  %t1111 = sdiv i64 %t1107, %t1108
  store i64 %t1111, ptr %l560, !tbaa !24
  br label %bb232
bb231:
  store i64 0, ptr %l560, !tbaa !24
  br label %bb232
bb232:
  %t1113 = load i64, ptr %l560, !tbaa !24
  store i64 %t1113, ptr %l557, !tbaa !24
  br label %bb233
bb233:
  %t1114 = load i64, ptr %l557, !tbaa !24
  store i64 %t1114, ptr %l67, !tbaa !24
  store i64 0, ptr %l68, !tbaa !24
  br label %bb234
bb234:
  store %olang.scope zeroinitializer, ptr %s37
  %t1115 = load i64, ptr %l68, !tbaa !24
  %t1116 = load i64, ptr %l67, !tbaa !24
  %t1119 = icmp slt i64 %t1115, %t1116
  %t1121 = xor i1 %t1119, true
  br i1 %t1121, label %bb235, label %bb236
bb235:
  call void @__olang_scope_close(ptr %s37)
  br label %bb241
bb236:
  br label %bb237
bb237:
  %t1123 = load i64, ptr %l64, !tbaa !24
  %t1124 = load i64, ptr %l68, !tbaa !24
  %t1125 = load i64, ptr %l66, !tbaa !24
  %t1128 = mul i64 %t1124, %t1125
  %t1131 = add i64 %t1123, %t1128
  store i64 %t1131, ptr %l69, !tbaa !24
  %t1133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1133, ptr %l578, !tbaa !29
  %t1134 = getelementptr %"compiler/eval:Ptr", ptr %l62, i32 0, i32 0
  %t1135 = load i64, ptr %t1134, !tbaa !24
  %t1136 = getelementptr %"compiler/eval:Ptr", ptr %l62, i32 0, i32 1
  %t1137 = load i64, ptr %t1136, !tbaa !24
  %t1138 = load i64, ptr %l69, !tbaa !24
  %t1141 = add i64 %t1137, %t1138
  %t1144 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s37, i64 %t1135, i64 %t1141)
  store %"compiler/eval:Ptr" %t1144, ptr %l583
  br label %bb238
bb238:
  %t1145 = load i64, ptr %l37, !tbaa !24
  %t1147 = add i64 %t1145, 1
  %t1148 = load i64, ptr %l69, !tbaa !24
  %t1150 = sdiv i64 %t1148, 8
  %t1153 = add i64 %t1147, %t1150
  %t1155 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t1156 = load ptr, ptr %t1155, !tbaa !27
  %t1157 = getelementptr i64, ptr %t1156, i64 %t1153
  %t1158 = load i64, ptr %t1157, !tbaa !85
  %t1159 = load i64, ptr %l69, !tbaa !24
  %t1161 = srem i64 %t1159, 8
  %t1164 = mul i64 %t1161, 8
  store i64 %t1164, ptr %l593, !tbaa !65
  %t1166 = load i64, ptr %l593, !tbaa !65
  %t1167 = load i64, ptr %l593, !tbaa !65
  %t1168 = lshr i64 %t1158, %t1167
  %t1170 = and i64 %t1168, 255
  %t1172 = load ptr, ptr %l578, !tbaa !29
  %t1173 = load %"compiler/eval:Ptr", ptr %l583
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1172, %"compiler/eval:Ptr" %t1173, i64 1, i64 %t1170)
  br label %bb239
bb239:
  call void @__olang_scope_close(ptr %s37)
  br label %bb240
bb240:
  %t1175 = load i64, ptr %l68, !tbaa !24
  %t1177 = add i64 %t1175, 1
  store i64 %t1177, ptr %l68, !tbaa !24
  br label %bb234
bb241:
  br label %bb242
bb242:
  %t1179 = load i64, ptr %l37, !tbaa !24
  store i64 %t1179, ptr %l599, !tbaa !24
  %t1180 = load i64, ptr %l63, !tbaa !24
  %t1182 = call i64 @std_2fffi_2eWordsFor(i64 %t1180)
  store i64 %t1182, ptr %l601
  br label %bb243
bb243:
  %t1183 = load i64, ptr %l601, !tbaa !24
  %t1184 = add i64 1, %t1183
  %t1185 = load i64, ptr %l599, !tbaa !24
  %t1187 = add i64 %t1185, %t1184
  store i64 %t1187, ptr %l37, !tbaa !24
  br label %bb244
bb244:
  br label %bb245
bb245:
  %t1189 = load i64, ptr %l60, !tbaa !24
  %t1191 = add i64 %t1189, 1
  store i64 %t1191, ptr %l60, !tbaa !24
  br label %bb220
bb246:
  %t1193 = load i1, ptr %l6, !tbaa !21
  br i1 %t1193, label %bb247, label %bb248
bb247:
  %t1195 = load i1, ptr %l12, !tbaa !21
  store i1 %t1195, ptr %l609, !tbaa !21
  br label %bb249
bb248:
  store i1 false, ptr %l609, !tbaa !21
  br label %bb249
bb249:
  %t1197 = load i1, ptr %l609, !tbaa !21
  br i1 %t1197, label %bb250, label %bb251
bb250:
  store %olang.scope zeroinitializer, ptr %s41
  %t1198 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1198, ptr %l611, !tbaa !29
  %t1199 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1199, ptr %l612
  %t1200 = load i64, ptr %l55, !tbaa !65
  %t1202 = icmp eq i64 %t1200, 0
  br i1 %t1202, label %bb252, label %bb253
bb251:
  %t1204 = load i1, ptr %l6, !tbaa !21
  br i1 %t1204, label %bb257, label %bb258
bb252:
  %t1206 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t1206, ptr %l615
  br label %bb255
bb253:
  %t1208 = load i64, ptr @G_2ecompiler_2feval_2eForeignId, !tbaa !24
  %t1209 = load i64, ptr %l55, !tbaa !65
  %t1213 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s41, i64 %t1208, i64 %t1209)
  store %"compiler/eval:Ptr" %t1213, ptr %l620
  br label %bb254
bb254:
  %t1214 = load %"compiler/eval:Ptr", ptr %l620
  store %"compiler/eval:Ptr" %t1214, ptr %l615
  br label %bb255
bb255:
  %t1215 = load ptr, ptr %l611, !tbaa !29
  %t1216 = load %"compiler/eval:Ptr", ptr %l612
  %t1217 = load %"compiler/eval:Ptr", ptr %l615
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t1215, %"compiler/eval:Ptr" %t1216, %"compiler/eval:Ptr" %t1217)
  br label %bb256
bb256:
  call void @__olang_scope_close(ptr %s41)
  br label %bb268
bb257:
  %t1218 = load i32, ptr %l11, !tbaa !23
  %t1219 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1222 = icmp ne i32 %t1218, %t1219
  store i1 %t1222, ptr %l622, !tbaa !21
  br label %bb259
bb258:
  store i1 false, ptr %l622, !tbaa !21
  br label %bb259
bb259:
  %t1224 = load i1, ptr %l622, !tbaa !21
  br i1 %t1224, label %bb260, label %bb261
bb260:
  %t1225 = load i32, ptr %l11, !tbaa !23
  %t1226 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t1229 = icmp ne i32 %t1225, %t1226
  store i1 %t1229, ptr %l626, !tbaa !21
  br label %bb262
bb261:
  store i1 false, ptr %l626, !tbaa !21
  br label %bb262
bb262:
  %t1231 = load i1, ptr %l626, !tbaa !21
  br i1 %t1231, label %bb263, label %bb264
bb263:
  %t1232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1232, ptr %l630, !tbaa !29
  %t1233 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1233, ptr %l631
  %t1234 = load ptr, ptr %l0, !tbaa !29
  %t1235 = load i32, ptr %l11, !tbaa !23
  %t1238 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t1234, i32 %t1235)
  store i64 %t1238, ptr %l634
  br label %bb265
bb264:
  br label %bb267
bb265:
  %t1239 = load i64, ptr %l55, !tbaa !65
  %t1241 = load ptr, ptr %l630, !tbaa !29
  %t1242 = load %"compiler/eval:Ptr", ptr %l631
  %t1243 = load i64, ptr %l634, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1241, %"compiler/eval:Ptr" %t1242, i64 %t1243, i64 %t1239)
  br label %bb266
bb266:
  br label %bb267
bb267:
  br label %bb268
bb268:
  %t1245 = load ptr, ptr %l0, !tbaa !29
  %t1247 = getelementptr %"compiler/eval:Machine", ptr %t1245, i32 0, i32 22
  %t1248 = load i1, ptr %t1247, !tbaa !21
  %t1250 = xor i1 %t1248, true
  call void @__olang_scope_close(ptr %s0)
  store i1 %t1250, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallIndex(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Call" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/mir:Call"
  %l3 = alloca { i64, [8 x i64] }
  %l4 = alloca i32
  %l6 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l13 = alloca { i64, ptr }
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Call" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 26
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l6, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 58
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l8, !tbaa !27
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %t9
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr %"compiler/eval:cfn", ptr %t18, i64 %t15
  %t20 = getelementptr %"compiler/eval:cfn", ptr %t19, i32 0, i32 9
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l11, !tbaa !27
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 58
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l13, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr %"compiler/eval:frame", ptr %t29, i64 %t26
  %t31 = getelementptr %"compiler/eval:frame", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr { i64, [8 x i64] }, ptr %t35, i64 %t32
  %t37 = load { i64, [8 x i64] }, ptr %t36
  store { i64, [8 x i64] } %t37, ptr %l3
  %t39 = load { i64, [8 x i64] }, ptr %l3
  %t41 = extractvalue { i64, [8 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 4
  br i1 %t42, label %bb1, label %bb2
bb1:
  %t44 = getelementptr { i64, [8 x i64] }, ptr %l3, i32 0, i32 1
  %t45 = getelementptr { %"compiler/source:Span", i32 }, ptr %t44, i32 0, i32 1
  %t46 = load i32, ptr %t45
  store i32 %t46, ptr %l4, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t48 = load i32, ptr %l4, !tbaa !23
  %t50 = sext i32 %t48 to i64
  %t52 = insertvalue { i32, i64 } zeroinitializer, i64 %t50, 1
  store { i32, i64 } %t52, ptr %rv
  br label %ret
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t54 = insertvalue { i32, i64 } zeroinitializer, i32 65536, 0
  store { i32, i64 } %t54, ptr %rv
  br label %ret
bb8:
  call void @__olang_check_failed(ptr @olang_loc_40e1a1a182bd943_2fb0eb1e2dc82487)
  unreachable
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallTerm(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i32 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i32
  %l6 = alloca %"compiler/mir:Call"
  %l7 = alloca { i64, [7 x i64] }
  %l8 = alloca i64
  %l9 = alloca i32
  %l10 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l11 = alloca i64
  %l16 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i64
  %l29 = alloca ptr
  %l31 = alloca i1
  %l48 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l54 = alloca ptr
  %l55 = alloca i64
  %l56 = alloca %"compiler/mir:Call"
  %l57 = alloca i64
  %l61 = alloca i32
  %l70 = alloca i64
  %l79 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t1, i64 %t2, %"compiler/source:Span" %a3)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 26
  %t10 = load { i64, ptr }, ptr %t9, !tbaa !27
  store { i64, ptr } %t10, ptr %l16, !tbaa !27
  %t11 = load i64, ptr %l2, !tbaa !24
  %t13 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr %"compiler/eval:cfn", ptr %t14, i64 %t11
  %t16 = getelementptr %"compiler/eval:cfn", ptr %t15, i32 0, i32 5
  %t17 = load { i64, ptr }, ptr %t16, !tbaa !27
  store { i64, ptr } %t17, ptr %l18, !tbaa !27
  %t18 = load i32, ptr %l4, !tbaa !23
  %t20 = sext i32 %t18 to i64
  %t22 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr %"compiler/mir:Call", ptr %t23, i64 %t20
  %t25 = load %"compiler/mir:Call", ptr %t24
  store %"compiler/mir:Call" %t25, ptr %l6
  br i1 %a5, label %bb2, label %bb3
bb2:
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l24, !tbaa !29
  %t30 = load i64, ptr %l1, !tbaa !24
  store i64 %t30, ptr %l25, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 25
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store ptr %t37, ptr %l29
  br label %bb4
bb3:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb6
bb4:
  %t38 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 1
  %t39 = load %"compiler/mir:Range", ptr %t38
  %t40 = load ptr, ptr %l24, !tbaa !29
  %t41 = load i64, ptr %l25, !tbaa !24
  %t42 = load ptr, ptr %l29, !tbaa !29
  %t44 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v0, ptr %t40, i64 %t41, ptr %t42, %"compiler/mir:Range" %t39)
  store i1 %t44, ptr %l31
  br label %bb5
bb5:
  %t45 = load i1, ptr %l31, !tbaa !21
  %t46 = xor i1 %t45, true
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb6
bb6:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t49 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 0
  %t50 = load { i64, [7 x i64] }, ptr %t49
  store { i64, [7 x i64] } %t50, ptr %l7
  %t52 = load { i64, [7 x i64] }, ptr %l7
  %t54 = extractvalue { i64, [7 x i64] } %t52, 0
  %t55 = icmp eq i64 %t54, 1
  br i1 %t55, label %bb10, label %bb11
bb10:
  %t57 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t58 = getelementptr { i64, i32 }, ptr %t57, i32 0, i32 0
  %t59 = load i64, ptr %t58
  store i64 %t59, ptr %l8, !tbaa !24
  %t61 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t62 = getelementptr { i64, i32 }, ptr %t61, i32 0, i32 1
  %t63 = load i32, ptr %t62
  store i32 %t63, ptr %l9, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load i64, ptr %l1, !tbaa !24
  %t67 = load %"compiler/mir:Call", ptr %l6
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexternCall(ptr %v0, ptr %t65, i64 %t66, %"compiler/mir:Call" %t67, i64 %t68, i32 %t69)
  br label %bb13
bb13:
  br label %bb34
bb14:
  %t75 = load { i64, [7 x i64] }, ptr %l7
  %t77 = extractvalue { i64, [7 x i64] } %t75, 0
  %t78 = icmp eq i64 %t77, 2
  br i1 %t78, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb28
bb17:
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i64, ptr %l1, !tbaa !24
  %t82 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 0
  %t83 = load { i64, [7 x i64] }, ptr %t82
  %t87 = call { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %t80, i64 %t81, { i64, [7 x i64] } %t83)
  store { i64, %"compiler/eval:Ptr", i64 } %t87, ptr %l48
  br label %bb18
bb18:
  %t88 = load { i64, %"compiler/eval:Ptr", i64 }, ptr %l48
  store { i64, %"compiler/eval:Ptr", i64 } %t88, ptr %l10
  %t89 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 2
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t90, ptr %l11, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 22
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb19, label %bb20
bb19:
  br label %ret
bb20:
  br label %bb21
bb21:
  %t97 = load i64, ptr %l11, !tbaa !24
  %t99 = icmp sge i64 %t97, 0
  br i1 %t99, label %bb22, label %bb23
bb22:
  %t101 = load ptr, ptr %l0, !tbaa !29
  store ptr %t101, ptr %l54, !tbaa !29
  %t102 = load i64, ptr %l1, !tbaa !24
  store i64 %t102, ptr %l55, !tbaa !24
  %t103 = load %"compiler/mir:Call", ptr %l6
  store %"compiler/mir:Call" %t103, ptr %l56
  %t104 = load i64, ptr %l11, !tbaa !24
  store i64 %t104, ptr %l57, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load i64, ptr %l1, !tbaa !24
  %t107 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 0
  %t108 = load { i64, [7 x i64] }, ptr %t107
  %t112 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %t105, i64 %t106, { i64, [7 x i64] } %t108)
  store i32 %t112, ptr %l61
  br label %bb24
bb23:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l1, !tbaa !24
  %t115 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 0
  %t116 = load { i64, [7 x i64] }, ptr %t115
  %t117 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 1
  %t118 = load %"compiler/mir:Range", ptr %t117
  %t119 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 2
  %t120 = load %"compiler/mir:Range", ptr %t119
  %t121 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t122 = load i32, ptr %l4, !tbaa !23
  %t124 = sext i32 %t122 to i64
  %t132 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %t113, i64 %t114, { i64, [7 x i64] } %t116, %"compiler/mir:Range" %t118, %"compiler/mir:Range" %t120, i64 %t121, i64 %t124)
  store i64 %t132, ptr %l70
  br label %bb26
bb24:
  %t133 = load ptr, ptr %l54, !tbaa !29
  %t134 = load i64, ptr %l55, !tbaa !24
  %t135 = load %"compiler/mir:Call", ptr %l56
  %t136 = load i64, ptr %l57, !tbaa !24
  %t137 = load i32, ptr %l61, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexternCall(ptr %v0, ptr %t133, i64 %t134, %"compiler/mir:Call" %t135, i64 %t136, i32 %t137)
  br label %bb25
bb25:
  br label %bb27
bb26:
  br label %bb27
bb27:
  br label %bb34
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb33
bb31:
  %t138 = load ptr, ptr %l0, !tbaa !29
  %t139 = load i64, ptr %l1, !tbaa !24
  %t140 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 0
  %t141 = load { i64, [7 x i64] }, ptr %t140
  %t142 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 1
  %t143 = load %"compiler/mir:Range", ptr %t142
  %t144 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 2
  %t145 = load %"compiler/mir:Range", ptr %t144
  %t146 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t147 = load i32, ptr %l4, !tbaa !23
  %t149 = sext i32 %t147 to i64
  %t157 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %t138, i64 %t139, { i64, [7 x i64] } %t141, %"compiler/mir:Range" %t143, %"compiler/mir:Range" %t145, i64 %t146, i64 %t149)
  store i64 %t157, ptr %l79
  br label %bb32
bb32:
  br label %bb34
bb33:
  call void @__olang_check_failed(ptr @olang_loc_4f5be22e13685bb3_572e44e2203c77cf)
  unreachable
bb34:
  br label %ret
ret:
  ret void
}

define dso_local { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca %"compiler/eval:alloc"
  %l11 = alloca i64
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i64
  %l14 = alloca %"compiler/eval:Ptr"
  %l15 = alloca %"compiler/eval:Ptr"
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i64
  %l21 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i32
  %l46 = alloca %"compiler/eval:Ptr"
  %l49 = alloca %"compiler/eval:Ptr"
  %l50 = alloca ptr
  %l54 = alloca %"compiler/eval:Ptr"
  %l55 = alloca %"compiler/eval:Ptr"
  %l68 = alloca %"compiler/eval:alloc"
  %l80 = alloca i64
  %l82 = alloca ptr
  %l86 = alloca { i64, [2 x i64] }
  %l87 = alloca i64
  %l88 = alloca i32
  %l103 = alloca %"compiler/eval:Ptr"
  %l104 = alloca ptr
  %l108 = alloca %"compiler/eval:Ptr"
  %l109 = alloca %"compiler/eval:Ptr"
  %l120 = alloca ptr
  %l128 = alloca %"compiler/eval:Ptr"
  %l129 = alloca %"compiler/eval:Ptr"
  %l136 = alloca i1
  %l139 = alloca %"compiler/eval:alloc"
  %l147 = alloca i64
  %l149 = alloca ptr
  %l151 = alloca ptr
  %l154 = alloca %"compiler/eval:alloc"
  %l156 = alloca { i64, [2 x i64] }
  %l157 = alloca i64
  %l158 = alloca i32
  %s4 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %rv = alloca { i64, %"compiler/eval:Ptr", i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [7 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [2 x i64] }, ptr %t7
  store { i64, [2 x i64] } %t8, ptr %l3
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 30
  %t13 = load { i64, [2 x i64] }, ptr %l3
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t12, { i64, [2 x i64] } %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l26
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb5, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l25
  br label %bb4
bb4:
  %t21 = load i64, ptr %l25, !tbaa !24
  store i64 %t21, ptr %l21, !tbaa !24
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i64 -1, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t22 = load i64, ptr %l21, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t23, 0
  br i1 %t25, label %bb8, label %bb9
bb8:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t29 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t29, ptr %t27, { i64, ptr } %t28)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t35 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 %t32, 0
  %t37 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t35, %"compiler/eval:Ptr" %t33, 1
  %t38 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t37, i64 -1, 2
  store { i64, %"compiler/eval:Ptr", i64 } %t38, ptr %rv
  br label %ret
bb12:
  %t40 = load { i64, [7 x i64] }, ptr %l2
  %t42 = extractvalue { i64, [7 x i64] } %t40, 0
  %t43 = icmp eq i64 %t42, 1
  br i1 %t43, label %bb13, label %bb14
bb13:
  %t45 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t46 = getelementptr { i64, i32 }, ptr %t45, i32 0, i32 0
  %t47 = load i64, ptr %t46
  store i64 %t47, ptr %l5, !tbaa !24
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t49 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t53 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t51, %"compiler/eval:Ptr" %t49, 1
  %t55 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t53, i64 %t50, 2
  store { i64, %"compiler/eval:Ptr", i64 } %t55, ptr %rv
  br label %ret
bb16:
  %t57 = load { i64, [7 x i64] }, ptr %l2
  %t59 = extractvalue { i64, [7 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 2
  br i1 %t60, label %bb17, label %bb18
bb17:
  %t62 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t63 = getelementptr { { i64, [4 x i64] } }, ptr %t62, i32 0, i32 0
  %t64 = load { i64, [4 x i64] }, ptr %t63
  store { i64, [4 x i64] } %t64, ptr %l6
  br label %bb19
bb18:
  br label %bb48
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  %t68 = load { i64, [4 x i64] }, ptr %l6
  %t72 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t66, i64 %t67, { i64, [4 x i64] } %t68, i64 3)
  store %"compiler/eval:Ptr" %t72, ptr %l46
  br label %bb20
bb20:
  %t73 = load %"compiler/eval:Ptr", ptr %l46
  store %"compiler/eval:Ptr" %t73, ptr %l7
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load %"compiler/eval:Ptr", ptr %l7
  %t78 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t74, %"compiler/eval:Ptr" %t75)
  store %"compiler/eval:Ptr" %t78, ptr %l49
  br label %bb21
bb21:
  %t79 = load %"compiler/eval:Ptr", ptr %l49
  store %"compiler/eval:Ptr" %t79, ptr %l8
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l50, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 1
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = add i64 %t84, 8
  %t89 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t82, i64 %t86)
  store %"compiler/eval:Ptr" %t89, ptr %l54
  br label %bb22
bb22:
  %t90 = load ptr, ptr %l50, !tbaa !29
  %t91 = load %"compiler/eval:Ptr", ptr %l54
  %t92 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t90, %"compiler/eval:Ptr" %t91)
  store %"compiler/eval:Ptr" %t92, ptr %l55
  br label %bb23
bb23:
  %t93 = load %"compiler/eval:Ptr", ptr %l55
  store %"compiler/eval:Ptr" %t93, ptr %l9
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/eval:Machine", ptr %t94, i32 0, i32 22
  %t97 = load i1, ptr %t96, !tbaa !21
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t100 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t102 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t100, %"compiler/eval:Ptr" %t99, 1
  %t103 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t102, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t103, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  %t105 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t106 = load i64, ptr %t105, !tbaa !24
  %t108 = icmp eq i64 %t106, 0
  br i1 %t108, label %bb27, label %bb28
bb27:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t112 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t112, ptr %t110, { i64, ptr } %t111)
  br label %bb29
bb28:
  br label %bb30
bb29:
  %t115 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t116 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t118 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t116, %"compiler/eval:Ptr" %t115, 1
  %t119 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t118, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t119, ptr %rv
  br label %ret
bb30:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t123 = load i64, ptr %t122, !tbaa !24
  %t126 = call %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %t121, i64 %t123)
  store %"compiler/eval:alloc" %t126, ptr %l68
  br label %bb31
bb31:
  %t127 = load %"compiler/eval:alloc", ptr %l68
  store %"compiler/eval:alloc" %t127, ptr %l10
  %t128 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 4
  %t129 = load i64, ptr %t128, !tbaa !24
  %t130 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t133 = icmp ne i64 %t129, %t130
  br i1 %t133, label %bb32, label %bb33
bb32:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t137 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t137, ptr %t135, { i64, ptr } %t136)
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t140 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t141 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t143 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t141, %"compiler/eval:Ptr" %t140, 1
  %t144 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t143, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t144, ptr %rv
  br label %ret
bb35:
  %t146 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 15
  %t147 = load i1, ptr %t146, !tbaa !21
  br i1 %t147, label %bb36, label %bb37
bb36:
  %t149 = load %"compiler/eval:Ptr", ptr %l9
  %t150 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 14
  %t151 = load i64, ptr %t150, !tbaa !24
  %t152 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t154 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t152, %"compiler/eval:Ptr" %t149, 1
  %t156 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t154, i64 %t151, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t156, ptr %rv
  br label %ret
bb37:
  br label %bb38
bb38:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/eval:Machine", ptr %t158, i32 0, i32 30
  store ptr %t160, ptr %l82, !tbaa !29
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/eval:Machine", ptr %t161, i32 0, i32 31
  %t164 = getelementptr %"compiler/eval:alloc", ptr %l10, i32 0, i32 14
  %t165 = load i64, ptr %t164, !tbaa !24
  %t168 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t163, i64 %t165)
  store { i64, [2 x i64] } %t168, ptr %l86
  br label %bb39
bb39:
  %t169 = load ptr, ptr %l82, !tbaa !29
  %t170 = load { i64, [2 x i64] }, ptr %l86
  %t171 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t169, { i64, [2 x i64] } %t170)
  %t172 = extractvalue { i32, i64 } %t171, 1
  %t173 = extractvalue { i32, i64 } %t171, 0
  store i32 %t173, ptr %l88
  %t174 = icmp ne i32 %t173, 0
  br i1 %t174, label %bb41, label %ok.175, !prof !99
ok.175:
  store i64 %t172, ptr %l87
  br label %bb40
bb40:
  %t176 = load i64, ptr %l87, !tbaa !24
  store i64 %t176, ptr %l80, !tbaa !24
  br label %bb43
bb41:
  br label %bb42
bb42:
  store i64 -1, ptr %l80, !tbaa !24
  br label %bb43
bb43:
  %t177 = load i64, ptr %l80, !tbaa !24
  store i64 %t177, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l11, !tbaa !24
  %t180 = icmp slt i64 %t178, 0
  br i1 %t180, label %bb44, label %bb45
bb44:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t184 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t184, ptr %t182, { i64, ptr } %t183)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  %t187 = load i64, ptr %l11, !tbaa !24
  %t188 = load %"compiler/eval:Ptr", ptr %l9
  %t190 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 %t187, 0
  %t192 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t190, %"compiler/eval:Ptr" %t188, 1
  %t193 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t192, i64 -1, 2
  call void @__olang_scope_close(ptr %s4)
  store { i64, %"compiler/eval:Ptr", i64 } %t193, ptr %rv
  br label %ret
bb48:
  %t195 = load { i64, [7 x i64] }, ptr %l2
  %t197 = extractvalue { i64, [7 x i64] } %t195, 0
  %t198 = icmp eq i64 %t197, 3
  br i1 %t198, label %bb49, label %bb50
bb49:
  %t200 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t201 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t200, i32 0, i32 0
  %t202 = load { i64, [4 x i64] }, ptr %t201
  store { i64, [4 x i64] } %t202, ptr %l12
  %t204 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t205 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t204, i32 0, i32 1
  %t206 = load i64, ptr %t205
  store i64 %t206, ptr %l13, !tbaa !24
  br label %bb51
bb50:
  br label %bb85
bb51:
  store %olang.scope zeroinitializer, ptr %s10
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t209 = load i64, ptr %l1, !tbaa !24
  %t210 = load { i64, [4 x i64] }, ptr %l12
  %t214 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t208, i64 %t209, { i64, [4 x i64] } %t210, i64 3)
  store %"compiler/eval:Ptr" %t214, ptr %l103
  br label %bb52
bb52:
  %t215 = load %"compiler/eval:Ptr", ptr %l103
  store %"compiler/eval:Ptr" %t215, ptr %l14
  %t216 = load ptr, ptr %l0, !tbaa !29
  store ptr %t216, ptr %l104, !tbaa !29
  %t217 = getelementptr %"compiler/eval:Ptr", ptr %l14, i32 0, i32 0
  %t218 = load i64, ptr %t217, !tbaa !24
  %t219 = getelementptr %"compiler/eval:Ptr", ptr %l14, i32 0, i32 1
  %t220 = load i64, ptr %t219, !tbaa !24
  %t222 = add i64 %t220, 8
  %t225 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s10, i64 %t218, i64 %t222)
  store %"compiler/eval:Ptr" %t225, ptr %l108
  br label %bb53
bb53:
  %t226 = load ptr, ptr %l104, !tbaa !29
  %t227 = load %"compiler/eval:Ptr", ptr %l108
  %t228 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t226, %"compiler/eval:Ptr" %t227)
  store %"compiler/eval:Ptr" %t228, ptr %l109
  br label %bb54
bb54:
  %t229 = load %"compiler/eval:Ptr", ptr %l109
  store %"compiler/eval:Ptr" %t229, ptr %l15
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/eval:Machine", ptr %t230, i32 0, i32 22
  %t233 = load i1, ptr %t232, !tbaa !21
  br i1 %t233, label %bb55, label %bb56
bb55:
  %t235 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t236 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t238 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t236, %"compiler/eval:Ptr" %t235, 1
  %t239 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t238, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t239, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t241 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 0
  %t242 = load i64, ptr %t241, !tbaa !24
  %t244 = icmp eq i64 %t242, 0
  br i1 %t244, label %bb58, label %bb59
bb58:
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t247 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t248 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t248, ptr %t246, { i64, ptr } %t247)
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t251 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t252 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t254 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t252, %"compiler/eval:Ptr" %t251, 1
  %t255 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t254, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t255, ptr %rv
  br label %ret
bb61:
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l120, !tbaa !29
  %t258 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 0
  %t259 = load i64, ptr %t258, !tbaa !24
  %t260 = getelementptr %"compiler/eval:Ptr", ptr %l15, i32 0, i32 1
  %t261 = load i64, ptr %t260, !tbaa !24
  %t262 = load i64, ptr @G_2ecompiler_2ftypes_2eAnySlotBase, !tbaa !24
  %t263 = load i64, ptr %l13, !tbaa !24
  %t266 = add i64 %t262, %t263
  %t268 = mul i64 8, %t266
  %t271 = add i64 %t261, %t268
  %t274 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s10, i64 %t259, i64 %t271)
  store %"compiler/eval:Ptr" %t274, ptr %l128
  br label %bb62
bb62:
  %t275 = load ptr, ptr %l120, !tbaa !29
  %t276 = load %"compiler/eval:Ptr", ptr %l128
  %t277 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t275, %"compiler/eval:Ptr" %t276)
  store %"compiler/eval:Ptr" %t277, ptr %l129
  br label %bb63
bb63:
  %t278 = load %"compiler/eval:Ptr", ptr %l129
  store %"compiler/eval:Ptr" %t278, ptr %l16
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr %"compiler/eval:Machine", ptr %t279, i32 0, i32 22
  %t282 = load i1, ptr %t281, !tbaa !21
  br i1 %t282, label %bb64, label %bb65
bb64:
  %t284 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t285 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t287 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t285, %"compiler/eval:Ptr" %t284, 1
  %t288 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t287, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t288, ptr %rv
  br label %ret
bb65:
  br label %bb66
bb66:
  %t290 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t291 = load i64, ptr %t290, !tbaa !24
  %t293 = icmp eq i64 %t291, 0
  br i1 %t293, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l136, !tbaa !21
  br label %bb70
bb68:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t297 = load i64, ptr %t296, !tbaa !24
  %t300 = call %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %t295, i64 %t297)
  store %"compiler/eval:alloc" %t300, ptr %l139
  br label %bb69
bb69:
  %t301 = getelementptr %"compiler/eval:alloc", ptr %l139, i32 0, i32 4
  %t302 = load i64, ptr %t301, !tbaa !24
  %t303 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t306 = icmp ne i64 %t302, %t303
  store i1 %t306, ptr %l136, !tbaa !21
  br label %bb70
bb70:
  %t308 = load i1, ptr %l136, !tbaa !21
  br i1 %t308, label %bb71, label %bb72
bb71:
  %t309 = load ptr, ptr %l0, !tbaa !29
  %t310 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t311 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t311, ptr %t309, { i64, ptr } %t310)
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t314 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t315 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 -1, 0
  %t317 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t315, %"compiler/eval:Ptr" %t314, 1
  %t318 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t317, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t318, ptr %rv
  br label %ret
bb74:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t322 = getelementptr %"compiler/eval:Machine", ptr %t320, i32 0, i32 30
  store ptr %t322, ptr %l149, !tbaa !29
  %t323 = load ptr, ptr %l0, !tbaa !29
  %t325 = getelementptr %"compiler/eval:Machine", ptr %t323, i32 0, i32 31
  store ptr %t325, ptr %l151, !tbaa !29
  %t326 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr %"compiler/eval:Ptr", ptr %l16, i32 0, i32 0
  %t328 = load i64, ptr %t327, !tbaa !24
  %t331 = call %"compiler/eval:alloc" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocOf(ptr %v0, ptr %t326, i64 %t328)
  store %"compiler/eval:alloc" %t331, ptr %l154
  br label %bb75
bb75:
  %t332 = getelementptr %"compiler/eval:alloc", ptr %l154, i32 0, i32 14
  %t333 = load i64, ptr %t332, !tbaa !24
  %t334 = load ptr, ptr %l151, !tbaa !29
  %t336 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t334, i64 %t333)
  store { i64, [2 x i64] } %t336, ptr %l156
  br label %bb76
bb76:
  %t337 = load ptr, ptr %l149, !tbaa !29
  %t338 = load { i64, [2 x i64] }, ptr %l156
  %t339 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t337, { i64, [2 x i64] } %t338)
  %t340 = extractvalue { i32, i64 } %t339, 1
  %t341 = extractvalue { i32, i64 } %t339, 0
  store i32 %t341, ptr %l158
  %t342 = icmp ne i32 %t341, 0
  br i1 %t342, label %bb78, label %ok.343, !prof !99
ok.343:
  store i64 %t340, ptr %l157
  br label %bb77
bb77:
  %t344 = load i64, ptr %l157, !tbaa !24
  store i64 %t344, ptr %l147, !tbaa !24
  br label %bb80
bb78:
  br label %bb79
bb79:
  store i64 -1, ptr %l147, !tbaa !24
  br label %bb80
bb80:
  %t345 = load i64, ptr %l147, !tbaa !24
  store i64 %t345, ptr %l17, !tbaa !24
  %t346 = load i64, ptr %l17, !tbaa !24
  %t348 = icmp slt i64 %t346, 0
  br i1 %t348, label %bb81, label %bb82
bb81:
  %t350 = load ptr, ptr %l0, !tbaa !29
  %t351 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t352 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t352, ptr %t350, { i64, ptr } %t351)
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb84
bb84:
  %t355 = load i64, ptr %l17, !tbaa !24
  %t356 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t358 = insertvalue { i64, %"compiler/eval:Ptr", i64 } undef, i64 %t355, 0
  %t360 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t358, %"compiler/eval:Ptr" %t356, 1
  %t361 = insertvalue { i64, %"compiler/eval:Ptr", i64 } %t360, i64 -1, 2
  call void @__olang_scope_close(ptr %s10)
  store { i64, %"compiler/eval:Ptr", i64 } %t361, ptr %rv
  br label %ret
bb85:
  call void @__olang_check_failed(ptr @olang_loc_bde43f50f3dd47_4bb44709ac02dbdb)
  unreachable
ret:
  %rr = load { i64, %"compiler/eval:Ptr", i64 }, ptr %rv
  ret { i64, %"compiler/eval:Ptr", i64 } %rr
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [7 x i64] }
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i32
  %l20 = alloca ptr
  %l24 = alloca i32
  %l25 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, [7 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [7 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [7 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t6, i32 0, i32 1
  %t8 = load i32, ptr %t7
  store i32 %t8, ptr %l3, !tbaa !23
  br label %bb7
bb2:
  %t10 = load { i64, [7 x i64] }, ptr %l2
  %t12 = extractvalue { i64, [7 x i64] } %t10, 0
  %t13 = icmp eq i64 %t12, 1
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t16 = getelementptr { i64, i32 }, ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l3, !tbaa !23
  br label %bb7
bb4:
  %t19 = load { i64, [7 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [7 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 3
  br i1 %t22, label %bb5, label %bb6
bb5:
  %t24 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t24, i32 0, i32 2
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l3, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t28 = load i32, ptr %l3, !tbaa !23
  store i32 %t28, ptr %l5, !tbaa !23
  br label %bb15
bb8:
  %t30 = load { i64, [7 x i64] }, ptr %l2
  %t32 = extractvalue { i64, [7 x i64] } %t30, 0
  %t33 = icmp eq i64 %t32, 2
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = getelementptr { i64, [7 x i64] }, ptr %l2, i32 0, i32 1
  %t36 = getelementptr { { i64, [4 x i64] } }, ptr %t35, i32 0, i32 0
  %t37 = load { i64, [4 x i64] }, ptr %t36
  store { i64, [4 x i64] } %t37, ptr %l4
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 0
  %t42 = load ptr, ptr %t41, !tbaa !29
  store ptr %t42, ptr %l20, !tbaa !29
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = load { i64, [4 x i64] }, ptr %l4
  %t49 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t43, i64 %a1, { i64, [4 x i64] } %t45)
  store i32 %t49, ptr %l24
  br label %bb12
bb12:
  %t50 = load ptr, ptr %l20, !tbaa !29
  %t51 = load i32, ptr %l24, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t50, i32 %t51)
  store i32 %t52, ptr %l25
  br label %bb13
bb13:
  %t53 = load i32, ptr %l25, !tbaa !23
  store i32 %t53, ptr %l5, !tbaa !23
  br label %bb15
bb14:
  call void @__olang_check_failed(ptr @olang_loc_467821a0171adcef_9f7d024fdb995773)
  unreachable
bb15:
  %t54 = load i32, ptr %l5, !tbaa !23
  store i32 %t54, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseGen(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:genRec"
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l14 = alloca %"compiler/eval:genRec"
  %l16 = alloca %"compiler/eval:genRec"
  %l20 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l29 = alloca ptr
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca %"compiler/eval:genRec"
  %l42 = alloca %"compiler/eval:genRec"
  %l49 = alloca ptr
  %l55 = alloca i64
  %l59 = alloca { i64, ptr }
  %l63 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %t5 = alloca %"compiler/eval:genRec", align 8
  %t8 = alloca %"compiler/eval:genRec", align 8
  %t60 = alloca %"compiler/eval:genRec", align 8
  %t64 = alloca %"compiler/eval:genRec", align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 63
  %t4 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t5, ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t5, i64 280, i1 false)
  br label %bb1
bb1:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t8, ptr %s0, ptr %l14)
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t8, i64 280, i1 false)
  br label %bb2
bb2:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l16, i64 280, i1 false)
  %t10 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = icmp ne i64 %t11, 2
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load i64, ptr %l2, !tbaa !24
  store i64 %t15, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 64
  %t20 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t24 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t19, i64 %t21)
  %t25 = extractvalue { i32, i64 } %t24, 1
  %t26 = extractvalue { i32, i64 } %t24, 0
  store i32 %t26, ptr %l25
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb6, label %ok.28, !prof !99
ok.28:
  store i64 %t25, ptr %l24
  br label %bb5
bb4:
  br label %bb11
bb5:
  %t29 = load i64, ptr %l24, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l20, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l5, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 63
  %t34 = load i64, ptr %l4, !tbaa !24
  %t37 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t33, i64 %t34)
  store ptr %t37, ptr %l29
  br label %bb9
bb9:
  %t38 = load ptr, ptr %l29, !tbaa !29
  %t40 = load i64, ptr %l5, !tbaa !24
  %t43 = getelementptr %"compiler/eval:genRec", ptr %t38, i32 0, i32 11
  store i64 %t40, ptr %t43, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 64
  %t47 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 1
  %t48 = load i64, ptr %t47, !tbaa !24
  %t49 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t46, i64 %t48, i64 %t49)
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t53 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 0
  %t54 = load i64, ptr %t53, !tbaa !24
  %t56 = icmp eq i64 %t54, 0
  br i1 %t56, label %bb12, label %bb13
bb12:
  store %olang.scope zeroinitializer, ptr %s2
  %t58 = load ptr, ptr %l0, !tbaa !29
  store ptr %t58, ptr %l38, !tbaa !29
  store i64 %a1, ptr %l39, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l40, ptr %l3, i64 280, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t60, ptr %s2, ptr %l40)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t60, i64 280, i1 false)
  br label %bb14
bb13:
  br label %bb16
bb14:
  %t62 = load ptr, ptr %l38, !tbaa !29
  %t63 = load i64, ptr %l39, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t64, ptr %l42, i64 280, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshDrops(ptr %v0, ptr %s2, ptr %t62, i64 %t63, ptr %t64)
  br label %bb15
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %bb16
bb16:
  %t65 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 0
  %t66 = load i64, ptr %t65, !tbaa !24
  %t68 = icmp ne i64 %t66, 1
  br i1 %t68, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb18:
  br label %bb19
bb19:
  %t70 = load i64, ptr %l2, !tbaa !24
  store i64 3, ptr %l8, !tbaa !24
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 63
  %t78 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t74, i64 %t70)
  store ptr %t78, ptr %l49
  br label %bb20
bb20:
  %t79 = load ptr, ptr %l49, !tbaa !29
  %t81 = load i64, ptr %l8, !tbaa !24
  %t84 = getelementptr %"compiler/eval:genRec", ptr %t79, i32 0, i32 0
  store i64 %t81, ptr %t84, !tbaa !24
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l2, !tbaa !24
  %t87 = load i64, ptr @G_2ecompiler_2feval_2erDtor, !tbaa !24
  %t91 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %t85, i64 %t86, i64 %t87, i64 0)
  store i64 %t91, ptr %l55
  br label %bb21
bb21:
  %t92 = load i64, ptr %l55, !tbaa !24
  store i64 %t92, ptr %l10, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp slt i64 %t93, 0
  br i1 %t95, label %bb22, label %bb23
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb23:
  br label %bb24
bb24:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 58
  %t100 = load { i64, ptr }, ptr %t99, !tbaa !27
  store { i64, ptr } %t100, ptr %l59, !tbaa !27
  %t101 = load i64, ptr %l10, !tbaa !24
  %t102 = getelementptr %"compiler/eval:genRec", ptr %l3, i32 0, i32 3
  %t103 = load i64, ptr %t102, !tbaa !24
  %t106 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr %"compiler/eval:frame", ptr %t107, i64 %t101
  %t109 = getelementptr %"compiler/eval:frame", ptr %t108, i32 0, i32 1
  store i64 %t103, ptr %t109, !tbaa !24
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t112 = getelementptr %"compiler/eval:Machine", ptr %t110, i32 0, i32 58
  %t113 = load { i64, ptr }, ptr %t112, !tbaa !27
  store { i64, ptr } %t113, ptr %l63, !tbaa !27
  %t114 = load i64, ptr %l10, !tbaa !24
  %t116 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = getelementptr %"compiler/eval:frame", ptr %t117, i64 %t114
  %t119 = getelementptr %"compiler/eval:frame", ptr %t118, i32 0, i32 2
  store i64 0, ptr %t119, !tbaa !24
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/eval:Machine", ptr %t120, i32 0, i32 58
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l66, !tbaa !27
  %t124 = load i64, ptr %l10, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr %"compiler/eval:frame", ptr %t127, i64 %t124
  %t129 = getelementptr %"compiler/eval:frame", ptr %t128, i32 0, i32 18
  store i32 -1, ptr %t129, !tbaa !23
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseOpen(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [5 x i64] }
  %l5 = alloca i64
  %l6 = alloca %"compiler/eval:frame"
  %l7 = alloca i64
  %l8 = alloca i64
  %l23 = alloca i1
  %l34 = alloca { i64, ptr }
  %l36 = alloca %"compiler/eval:frame"
  %l43 = alloca i1
  %l49 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l61 = alloca i1
  %l70 = alloca i1
  %l73 = alloca i1
  %t9 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 20
  %t4 = load { i64, [5 x i64] }, ptr %t3
  store { i64, [5 x i64] } %t4, ptr %l2
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 87
  store i1 true, ptr %t8, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t9
  %t10 = getelementptr { i64, [5 x i64] }, ptr %t9, i32 0, i32 0
  store i64 0, ptr %t10
  %t11 = load { i64, [5 x i64] }, ptr %t9
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 22
  store i1 false, ptr %t17, !tbaa !21
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 20
  store { i64, [5 x i64] } %t11, ptr %t22
  br label %bb1
bb1:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 59
  %t26 = load i64, ptr %t25, !tbaa !24
  %t30 = icmp sgt i64 %t26, %a1
  br i1 %t30, label %bb2, label %bb3
bb2:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 22
  %t35 = load i1, ptr %t34, !tbaa !21
  %t37 = xor i1 %t35, true
  store i1 %t37, ptr %l23, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb4
bb4:
  %t39 = load i1, ptr %l23, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb5, label %bb6
bb5:
  br label %bb36
bb6:
  br label %bb7
bb7:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 59
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = sub i64 %t45, 1
  store i64 %t47, ptr %l5, !tbaa !24
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %t49, i64 %t50)
  br label %bb8
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 58
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l34, !tbaa !27
  %t57 = load i64, ptr %l5, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:frame", ptr %t60, i64 %t57
  call void @llvm.memmove.p0.p0.i64(ptr %l36, ptr %t61, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l36, i64 136, i1 false)
  %t62 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 5
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 4
  %t65 = load i64, ptr %t64, !tbaa !24
  %t68 = sub i64 %t63, %t65
  %t70 = sub i64 %t68, 1
  store i64 %t70, ptr %l7, !tbaa !24
  br label %bb9
bb9:
  %t72 = load i64, ptr %l7, !tbaa !24
  %t74 = icmp sge i64 %t72, 0
  br i1 %t74, label %bb10, label %bb11
bb10:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/eval:Machine", ptr %t76, i32 0, i32 22
  %t79 = load i1, ptr %t78, !tbaa !21
  %t81 = xor i1 %t79, true
  store i1 %t81, ptr %l43, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb12
bb12:
  %t83 = load i1, ptr %l43, !tbaa !21
  %t84 = xor i1 %t83, true
  br i1 %t84, label %bb13, label %bb14
bb13:
  br label %bb22
bb14:
  br label %bb15
bb15:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/eval:Machine", ptr %t86, i32 0, i32 60
  %t89 = load { i64, ptr }, ptr %t88, !tbaa !27
  store { i64, ptr } %t89, ptr %l49, !tbaa !27
  %t90 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 4
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = load i64, ptr %l7, !tbaa !24
  %t95 = add i64 %t91, %t92
  %t97 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t98 = load ptr, ptr %t97, !tbaa !27
  %t99 = getelementptr i64, ptr %t98, i64 %t95
  %t100 = load i64, ptr %t99, !tbaa !34
  store i64 %t100, ptr %l8, !tbaa !24
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Machine", ptr %t102, i32 0, i32 60
  %t105 = load { i64, ptr }, ptr %t104, !tbaa !27
  store { i64, ptr } %t105, ptr %l55, !tbaa !27
  %t106 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 4
  %t107 = load i64, ptr %t106, !tbaa !24
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = add i64 %t107, %t108
  %t113 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr i64, ptr %t114, i64 %t111
  store i64 0, ptr %t115, !tbaa !34
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l8, !tbaa !24
  %t120 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t116, i64 %t117)
  store i1 %t120, ptr %l61
  br label %bb16
bb16:
  %t121 = load i1, ptr %l61, !tbaa !21
  br i1 %t121, label %bb17, label %bb18
bb17:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t123 = load i64, ptr %l5, !tbaa !24
  %t124 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %t122, i64 %t123, i64 %t124)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = sub i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb9
bb22:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 22
  %t135 = load i1, ptr %t134, !tbaa !21
  %t137 = xor i1 %t135, true
  br i1 %t137, label %bb23, label %bb24
bb23:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 6
  %t141 = load i64, ptr %t140, !tbaa !24
  %t144 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t139, i64 %t141)
  store i1 %t144, ptr %l73
  br label %bb25
bb24:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb26
bb25:
  %t145 = load i1, ptr %l73, !tbaa !21
  store i1 %t145, ptr %l70, !tbaa !21
  br label %bb26
bb26:
  %t146 = load i1, ptr %l70, !tbaa !21
  br i1 %t146, label %bb27, label %bb28
bb27:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l5, !tbaa !24
  %t149 = getelementptr %"compiler/eval:frame", ptr %l6, i32 0, i32 6
  %t150 = load i64, ptr %t149, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %t147, i64 %t148, i64 %t150)
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb30
bb30:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/eval:Machine", ptr %t154, i32 0, i32 22
  %t157 = load i1, ptr %t156, !tbaa !21
  %t159 = xor i1 %t157, true
  br i1 %t159, label %bb31, label %bb32
bb31:
  %t161 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %t161)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb34
bb34:
  br label %bb35
bb35:
  br label %bb1
bb36:
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t165 = getelementptr %"compiler/eval:Machine", ptr %t163, i32 0, i32 87
  store i1 false, ptr %t165, !tbaa !21
  %t166 = load { i64, [5 x i64] }, ptr %l2
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t172 = getelementptr %"compiler/eval:Machine", ptr %t168, i32 0, i32 22
  store i1 true, ptr %t172, !tbaa !21
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t177 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 20
  store { i64, [5 x i64] } %t166, ptr %t177
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i1
  %l13 = alloca ptr
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edisown(ptr %v0, ptr %t1, i64 %t2)
  br label %bb1
bb1:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t6 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t9 = and i64 %t5, %t6
  store i1 true, ptr %l3, !tbaa !21
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 52
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t13, i64 %t9)
  store ptr %t17, ptr %l13
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l13, !tbaa !29
  %t20 = load i1, ptr %l3, !tbaa !21
  %t23 = getelementptr %"compiler/eval:scope", ptr %t18, i32 0, i32 15
  store i1 %t20, ptr %t23, !tbaa !21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 62
  %t27 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t26, i64 %t27)
  br label %bb3
bb3:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econstLen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [1 x i64] }
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [1 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [1 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 1, ptr %l4, !tbaa !24
  br label %bb11
bb4:
  %t6 = load { i64, [1 x i64] }, ptr %l2
  %t8 = extractvalue { i64, [1 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 1
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t12 = getelementptr { %"compiler/mir:Range" }, ptr %t11, i32 0, i32 0
  %t13 = load %"compiler/mir:Range", ptr %t12
  store %"compiler/mir:Range" %t13, ptr %l3
  br label %bb9
bb6:
  %t15 = load { i64, [1 x i64] }, ptr %l2
  %t17 = extractvalue { i64, [1 x i64] } %t15, 0
  %t18 = icmp eq i64 %t17, 2
  br i1 %t18, label %bb7, label %bb8
bb7:
  %t20 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t21 = getelementptr { %"compiler/mir:Range" }, ptr %t20, i32 0, i32 0
  %t22 = load %"compiler/mir:Range", ptr %t21
  store %"compiler/mir:Range" %t22, ptr %l3
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t24 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t27 = sext i32 %t25 to i64
  store i64 %t27, ptr %l4, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_6be2223409a54017_8087911232ed0aeb)
  unreachable
bb11:
  %t29 = load i64, ptr %l4, !tbaa !24
  store i64 %t29, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edecode(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/eval:cfn"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca i64
  %l21 = alloca { i64, [21 x i64] }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca %"compiler/eval:cfn"
  %l33 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l42 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l55 = alloca i64
  %l59 = alloca i64
  %l62 = alloca i64
  %l80 = alloca i64
  %l84 = alloca %"compiler/mir:BasicBlock"
  %l86 = alloca %"compiler/mir:BasicBlock"
  %l88 = alloca i64
  %l94 = alloca i64
  %l95 = alloca i64
  %l99 = alloca i64
  %l101 = alloca i64
  %l104 = alloca { i64, ptr }
  %l108 = alloca i64
  %l109 = alloca i64
  %l113 = alloca i64
  %l117 = alloca { i64, ptr }
  %l119 = alloca i64
  %l120 = alloca i32
  %l124 = alloca i64
  %l126 = alloca i64
  %l127 = alloca %"compiler/source:Span"
  %l131 = alloca { i64, ptr }
  %l133 = alloca i64
  %l136 = alloca i64
  %l140 = alloca { i64, ptr }
  %l142 = alloca i64
  %l146 = alloca i64
  %l148 = alloca i64
  %l151 = alloca { i64, ptr }
  %l157 = alloca i64
  %l160 = alloca i64
  %l181 = alloca ptr
  %l182 = alloca { i64, ptr }
  %l187 = alloca i64
  %l189 = alloca i64
  %l194 = alloca { i64, [21 x i64] }
  %l195 = alloca { i64, ptr }
  %l197 = alloca { i64, [21 x i64] }
  %l198 = alloca { i64, ptr }
  %l199 = alloca i64
  %l202 = alloca i1
  %l203 = alloca { i64, ptr }
  %l216 = alloca { i64, ptr }
  %l220 = alloca { i64, ptr }
  %l221 = alloca i64
  %l225 = alloca i1
  %l228 = alloca { i64, ptr }
  %l231 = alloca i64
  %l235 = alloca i64
  %l238 = alloca { i64, ptr }
  %l242 = alloca i64
  %l246 = alloca i64
  %l249 = alloca i64
  %l267 = alloca { i64, ptr }
  %l268 = alloca i64
  %l269 = alloca ptr
  %l271 = alloca ptr
  %l275 = alloca i32
  %l277 = alloca %"compiler/mir:Local"
  %l279 = alloca i1
  %l280 = alloca i1
  %l281 = alloca ptr
  %l283 = alloca ptr
  %l287 = alloca i32
  %l288 = alloca i1
  %l291 = alloca %"compiler/eval:cfn"
  %s2 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %t1 = alloca %"compiler/eval:cfn", align 8
  %t229 = alloca i64
  %t262 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2feval_3acfn_2ector(ptr %t1, ptr %v2)
  call void @llvm.memmove.p0.p0.i64(ptr %l28, ptr %t1, i64 264, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %l28, i64 264, i1 false)
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/mir:Fn", ptr %t2, i32 0, i32 2
  %t5 = load i64, ptr %t4, !tbaa !24
  %t7 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 0
  store i64 %t5, ptr %t7, !tbaa !24
  %t8 = load ptr, ptr %l1, !tbaa !29
  %t10 = getelementptr %"compiler/mir:Fn", ptr %t8, i32 0, i32 7
  %t12 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eToArray_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %v2, ptr %t10)
  store { i64, ptr } %t12, ptr %l33
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t14 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 1
  store { i64, ptr } %t13, ptr %t14, !tbaa !27
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr %"compiler/mir:Fn", ptr %t15, i32 0, i32 8
  %t19 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eToArra_H6fd2d5f022de1d6918789edb46830007(ptr %v1, ptr %v2, ptr %t17)
  store { i64, ptr } %t19, ptr %l36
  br label %bb3
bb3:
  %t20 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t21 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 2
  store { i64, ptr } %t20, ptr %t21, !tbaa !27
  %t22 = load ptr, ptr %l1, !tbaa !29
  %t24 = getelementptr %"compiler/mir:Fn", ptr %t22, i32 0, i32 10
  %t26 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %v2, ptr %t24)
  store { i64, ptr } %t26, ptr %l39
  br label %bb4
bb4:
  %t27 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t28 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 3
  store { i64, ptr } %t27, ptr %t28, !tbaa !27
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 11
  %t33 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eToArray_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %v2, ptr %t31)
  store { i64, ptr } %t33, ptr %l42
  br label %bb5
bb5:
  %t34 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t35 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 4
  store { i64, ptr } %t34, ptr %t35, !tbaa !27
  %t36 = load ptr, ptr %l1, !tbaa !29
  %t38 = getelementptr %"compiler/mir:Fn", ptr %t36, i32 0, i32 14
  %t40 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eToArray_3ccompiler_2fmir_3aCall_3e(ptr %v1, ptr %v2, ptr %t38)
  store { i64, ptr } %t40, ptr %l45
  br label %bb6
bb6:
  %t41 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t42 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 5
  store { i64, ptr } %t41, ptr %t42, !tbaa !27
  %t43 = ptrtoint ptr %v2 to i64
  store i64 %t43, ptr %l46, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e6
  br i1 %t44, label %bb7, label %bb8
bb7:
  %t46 = call ptr @__olang_region_make(ptr %v2)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l46, !tbaa !24
  br label %bb8
bb8:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/mir:Fn", ptr %t48, i32 0, i32 15
  %t51 = load i64, ptr %l46
  %t52 = inttoptr i64 %t51 to ptr
  %t54 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eToArray_3ccompiler_2fmir_3aCase_3e(ptr %v1, ptr %t52, ptr %t50)
  store { i64, ptr } %t54, ptr %l50
  br label %bb9
bb9:
  %t55 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 6
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l51, !tbaa !27
  %t57 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t58 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 6
  store { i64, ptr } %t57, ptr %t58, !tbaa !27
  %t59 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e6
  br i1 %t59, label %bb10, label %bb11
bb10:
  %t61 = load { i64, ptr }, ptr %l51
  %t62 = extractvalue { i64, ptr } %t61, 1
  call void @__olang_region_release(ptr %t62)
  store { i64, ptr } zeroinitializer, ptr %l51
  br label %bb11
bb11:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr %"compiler/mir:Fn", ptr %t63, i32 0, i32 9
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %t65)
  store i64 %t67, ptr %l55
  br label %bb12
bb12:
  %t68 = load i64, ptr %l55, !tbaa !24
  store i64 %t68, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t69 = load i64, ptr %l5, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t73 = icmp sgt i64 %t69, %t70
  br i1 %t73, label %bb13, label %bb14
bb13:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = icmp sgt i64 %t75, 0
  br i1 %t77, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb18
bb15:
  %t79 = load i64, ptr %l5, !tbaa !24
  %t80 = load i64, ptr %l4, !tbaa !24
  %t83 = sub i64 %t79, %t80
  %t84 = load i64, ptr %l6, !tbaa !24
  %t87 = add i64 %t83, %t84
  %t89 = sub i64 %t87, 1
  %t90 = load i64, ptr %l6, !tbaa !24
  %t93 = sdiv i64 %t89, %t90
  store i64 %t93, ptr %l62, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb17
bb17:
  %t95 = load i64, ptr %l62, !tbaa !24
  store i64 %t95, ptr %l59, !tbaa !24
  br label %bb18
bb18:
  %t96 = load i64, ptr %l59, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s2
  %t97 = load i64, ptr %l8, !tbaa !24
  %t98 = load i64, ptr %l7, !tbaa !24
  %t101 = icmp slt i64 %t97, %t98
  %t103 = xor i1 %t101, true
  br i1 %t103, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s2)
  br label %bb27
bb21:
  br label %bb22
bb22:
  %t105 = load i64, ptr %l4, !tbaa !24
  %t106 = load i64, ptr %l8, !tbaa !24
  %t107 = load i64, ptr %l6, !tbaa !24
  %t110 = mul i64 %t106, %t107
  %t113 = add i64 %t105, %t110
  %t115 = load i64, ptr %l3, !tbaa !24
  store i64 %t115, ptr %l80, !tbaa !24
  %t116 = load ptr, ptr %l1, !tbaa !29
  %t118 = getelementptr %"compiler/mir:Fn", ptr %t116, i32 0, i32 9
  %t122 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %v1, ptr %t118, i64 %t113)
  store %"compiler/mir:BasicBlock" %t122, ptr %l84
  br label %bb23
bb23:
  %t124 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %s2, ptr %l84)
  store %"compiler/mir:BasicBlock" %t124, ptr %l86
  br label %bb24
bb24:
  %t125 = getelementptr %"compiler/mir:BasicBlock", ptr %l86, i32 0, i32 0
  %t127 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v1, ptr %t125)
  store i64 %t127, ptr %l88
  br label %bb25
bb25:
  %t128 = load i64, ptr %l80, !tbaa !24
  %t129 = load i64, ptr %l88, !tbaa !24
  %t130 = add i64 %t128, %t129
  store i64 %t130, ptr %l3, !tbaa !24
  call void @__olang_scope_close(ptr %s2)
  br label %bb26
bb26:
  %t132 = load i64, ptr %l8, !tbaa !24
  %t134 = add i64 %t132, 1
  store i64 %t134, ptr %l8, !tbaa !24
  br label %bb19
bb27:
  %t136 = load ptr, ptr %l1, !tbaa !29
  %t138 = getelementptr %"compiler/mir:Fn", ptr %t136, i32 0, i32 9
  %t140 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %t138)
  store i64 %t140, ptr %l94
  br label %bb28
bb28:
  %t141 = load i64, ptr %l94, !tbaa !24
  store i64 %t141, ptr %l10, !tbaa !24
  %t142 = load i64, ptr %l3, !tbaa !24
  store i64 %t142, ptr %l95, !tbaa !24
  %t143 = load i64, ptr %l95, !tbaa !24
  %t144 = icmp sge i64 %t143, 0
  br i1 %t144, label %bb29, label %bb30
bb29:
  %t146 = load i64, ptr %l95, !tbaa !24
  %t147 = icmp sle i64 %t146, 52405522936674862
  br i1 %t147, label %bb31, label %bb32
bb30:
  call void @__olang_check_failed(ptr @olang_loc_241753625ba0fed0_6f3de102ac38e444)
  unreachable
bb31:
  %t149 = load i64, ptr %l95, !tbaa !24
  %t150 = mul i64 %t149, 176
  %t151 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t150)
  %t152 = insertvalue { i64, ptr } undef, i64 %t149, 0
  %t153 = insertvalue { i64, ptr } %t152, ptr %t151, 1
  %t155 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 7
  store { i64, ptr } %t153, ptr %t155, !tbaa !27
  %t156 = ptrtoint ptr %v2 to i64
  store i64 %t156, ptr %l99, !tbaa !24
  %t157 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e10
  br i1 %t157, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_241753625ba0fed0_6f3de102ac38e444)
  unreachable
bb33:
  %t159 = call ptr @__olang_region_make(ptr %v2)
  %t160 = ptrtoint ptr %t159 to i64
  store i64 %t160, ptr %l99, !tbaa !24
  br label %bb34
bb34:
  %t161 = load i64, ptr %l3, !tbaa !24
  store i64 %t161, ptr %l101, !tbaa !24
  %t162 = load i64, ptr %l101, !tbaa !24
  %t163 = icmp sge i64 %t162, 0
  br i1 %t163, label %bb35, label %bb36
bb35:
  %t165 = load i64, ptr %l101, !tbaa !24
  %t166 = mul i64 %t165, 1
  %t167 = load i64, ptr %l99
  %t168 = inttoptr i64 %t167 to ptr
  %t169 = call ptr @__olang_scope_alloc_zeroed(ptr %t168, i64 %t166)
  %t170 = insertvalue { i64, ptr } undef, i64 %t165, 0
  %t171 = insertvalue { i64, ptr } %t170, ptr %t169, 1
  %t172 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 10
  %t173 = load { i64, ptr }, ptr %t172, !tbaa !27
  store { i64, ptr } %t173, ptr %l104, !tbaa !27
  %t175 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 10
  store { i64, ptr } %t171, ptr %t175, !tbaa !27
  %t176 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e10
  br i1 %t176, label %bb37, label %bb38
bb36:
  call void @__olang_check_failed(ptr @olang_loc_dff38e562927abfd_2c5e94ab37a21251)
  unreachable
bb37:
  %t178 = load { i64, ptr }, ptr %l104
  %t179 = extractvalue { i64, ptr } %t178, 1
  call void @__olang_region_release(ptr %t179)
  store { i64, ptr } zeroinitializer, ptr %l104
  br label %bb38
bb38:
  %t180 = load ptr, ptr %l1, !tbaa !29
  %t182 = getelementptr %"compiler/mir:Fn", ptr %t180, i32 0, i32 6
  %t184 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v1, ptr %t182)
  store i64 %t184, ptr %l108
  br label %bb39
bb39:
  %t185 = load i64, ptr %l108, !tbaa !24
  %t186 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 15
  store i64 %t185, ptr %t186, !tbaa !24
  %t187 = ptrtoint ptr %v2 to i64
  store i64 %t187, ptr %l109, !tbaa !24
  %t188 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e13
  br i1 %t188, label %bb40, label %bb41
bb40:
  %t190 = call ptr @__olang_region_make(ptr %v2)
  %t191 = ptrtoint ptr %t190 to i64
  store i64 %t191, ptr %l109, !tbaa !24
  br label %bb41
bb41:
  %t192 = load i64, ptr %l3, !tbaa !24
  %t193 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t196 = mul i64 %t192, %t193
  store i64 %t196, ptr %l113, !tbaa !24
  %t197 = load i64, ptr %l113, !tbaa !24
  %t198 = icmp sge i64 %t197, 0
  br i1 %t198, label %bb42, label %bb43
bb42:
  %t200 = load i64, ptr %l113, !tbaa !24
  %t201 = icmp sle i64 %t200, 1152921504606846975
  br i1 %t201, label %bb44, label %bb45
bb43:
  call void @__olang_check_failed(ptr @olang_loc_f974da260d2147be_261330901ffea532)
  unreachable
bb44:
  %t203 = load i64, ptr %l113, !tbaa !24
  %t204 = mul i64 %t203, 8
  %t205 = load i64, ptr %l109
  %t206 = inttoptr i64 %t205 to ptr
  %t207 = call ptr @__olang_scope_alloc_zeroed(ptr %t206, i64 %t204)
  %t208 = insertvalue { i64, ptr } undef, i64 %t203, 0
  %t209 = insertvalue { i64, ptr } %t208, ptr %t207, 1
  %t210 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 13
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l117, !tbaa !27
  %t213 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 13
  store { i64, ptr } %t209, ptr %t213, !tbaa !27
  %t214 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e13
  br i1 %t214, label %bb46, label %bb47
bb45:
  call void @__olang_check_failed(ptr @olang_loc_f974da260d2147be_261330901ffea532)
  unreachable
bb46:
  %t216 = load { i64, ptr }, ptr %l117
  %t217 = extractvalue { i64, ptr } %t216, 1
  call void @__olang_region_release(ptr %t217)
  store { i64, ptr } zeroinitializer, ptr %l117
  br label %bb47
bb47:
  %t218 = load i64, ptr %l3, !tbaa !24
  store i64 %t218, ptr %l119, !tbaa !24
  store i32 3, ptr %l120
  %t219 = load i64, ptr %l119, !tbaa !24
  %t220 = icmp sge i64 %t219, 0
  br i1 %t220, label %bb48, label %bb49
bb48:
  %t222 = load i64, ptr %l119, !tbaa !24
  %t223 = icmp sle i64 %t222, 2305843009213693951
  br i1 %t223, label %bb50, label %bb51
bb49:
  call void @__olang_check_failed(ptr @olang_loc_d12e80ad37c716f3_175b69241b7dc127)
  unreachable
bb50:
  %t225 = load i64, ptr %l119, !tbaa !24
  %t226 = mul i64 %t225, 4
  %t227 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t226)
  %t228 = load i32, ptr %l120, !range !{i32 0, i32 51}
  store i64 0, ptr %t229
  br label %fill.230
fill.230:
  %t233 = load i64, ptr %t229
  %t234 = icmp slt i64 %t233, %t225
  br i1 %t234, label %fillb.231, label %filld.232
fillb.231:
  %t235 = getelementptr i32, ptr %t227, i64 %t233
  store i32 %t228, ptr %t235
  %t236 = add i64 %t233, 1
  store i64 %t236, ptr %t229
  br label %fill.230
filld.232:
  %t237 = insertvalue { i64, ptr } undef, i64 %t225, 0
  %t238 = insertvalue { i64, ptr } %t237, ptr %t227, 1
  %t240 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 14
  store { i64, ptr } %t238, ptr %t240, !tbaa !27
  %t241 = ptrtoint ptr %v2 to i64
  store i64 %t241, ptr %l124, !tbaa !24
  %t242 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e18
  br i1 %t242, label %bb52, label %bb53
bb51:
  call void @__olang_check_failed(ptr @olang_loc_d12e80ad37c716f3_175b69241b7dc127)
  unreachable
bb52:
  %t244 = call ptr @__olang_region_make(ptr %v2)
  %t245 = ptrtoint ptr %t244 to i64
  store i64 %t245, ptr %l124, !tbaa !24
  br label %bb53
bb53:
  %t246 = load i64, ptr %l3, !tbaa !24
  store i64 %t246, ptr %l126, !tbaa !24
  %t247 = load i64, ptr %l124
  %t248 = inttoptr i64 %t247 to ptr
  %t249 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %t248, i32 0, i32 0)
  store %"compiler/source:Span" %t249, ptr %l127
  br label %bb54
bb54:
  %t250 = load i64, ptr %l126, !tbaa !24
  %t251 = icmp sge i64 %t250, 0
  br i1 %t251, label %bb55, label %bb56
bb55:
  %t253 = load i64, ptr %l126, !tbaa !24
  %t254 = icmp sle i64 %t253, 1152921504606846975
  br i1 %t254, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_b7a31071d3fea69c_48dc013a177eb8)
  unreachable
bb57:
  %t256 = load i64, ptr %l126, !tbaa !24
  %t257 = mul i64 %t256, 8
  %t258 = load i64, ptr %l124
  %t259 = inttoptr i64 %t258 to ptr
  %t260 = call ptr @__olang_scope_alloc(ptr %t259, i64 %t257)
  %t261 = load %"compiler/source:Span", ptr %l127
  store i64 0, ptr %t262
  br label %fill.263
fill.263:
  %t266 = load i64, ptr %t262
  %t267 = icmp slt i64 %t266, %t256
  br i1 %t267, label %fillb.264, label %filld.265
fillb.264:
  %t268 = getelementptr %"compiler/source:Span", ptr %t260, i64 %t266
  store %"compiler/source:Span" %t261, ptr %t268
  %t269 = add i64 %t266, 1
  store i64 %t269, ptr %t262
  br label %fill.263
filld.265:
  %t270 = insertvalue { i64, ptr } undef, i64 %t256, 0
  %t271 = insertvalue { i64, ptr } %t270, ptr %t260, 1
  %t272 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 18
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  store { i64, ptr } %t273, ptr %l131, !tbaa !27
  %t275 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 18
  store { i64, ptr } %t271, ptr %t275, !tbaa !27
  %t276 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e18
  br i1 %t276, label %bb59, label %bb60
bb58:
  call void @__olang_check_failed(ptr @olang_loc_b7a31071d3fea69c_48dc013a177eb8)
  unreachable
bb59:
  %t278 = load { i64, ptr }, ptr %l131
  %t279 = extractvalue { i64, ptr } %t278, 1
  call void @__olang_region_release(ptr %t279)
  store { i64, ptr } zeroinitializer, ptr %l131
  br label %bb60
bb60:
  %t280 = ptrtoint ptr %v2 to i64
  store i64 %t280, ptr %l133, !tbaa !24
  %t281 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e8
  br i1 %t281, label %bb61, label %bb62
bb61:
  %t283 = call ptr @__olang_region_make(ptr %v2)
  %t284 = ptrtoint ptr %t283 to i64
  store i64 %t284, ptr %l133, !tbaa !24
  br label %bb62
bb62:
  %t285 = load i64, ptr %l10, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l136, !tbaa !24
  %t288 = load i64, ptr %l136, !tbaa !24
  %t289 = icmp sge i64 %t288, 0
  br i1 %t289, label %bb63, label %bb64
bb63:
  %t291 = load i64, ptr %l136, !tbaa !24
  %t292 = icmp sle i64 %t291, 1152921504606846975
  br i1 %t292, label %bb65, label %bb66
bb64:
  call void @__olang_check_failed(ptr @olang_loc_3b5c2c57d838d869_14cf45850b137925)
  unreachable
bb65:
  %t294 = load i64, ptr %l136, !tbaa !24
  %t295 = mul i64 %t294, 8
  %t296 = load i64, ptr %l133
  %t297 = inttoptr i64 %t296 to ptr
  %t298 = call ptr @__olang_scope_alloc_zeroed(ptr %t297, i64 %t295)
  %t299 = insertvalue { i64, ptr } undef, i64 %t294, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t298, 1
  %t301 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 8
  %t302 = load { i64, ptr }, ptr %t301, !tbaa !27
  store { i64, ptr } %t302, ptr %l140, !tbaa !27
  %t304 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 8
  store { i64, ptr } %t300, ptr %t304, !tbaa !27
  %t305 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e8
  br i1 %t305, label %bb67, label %bb68
bb66:
  call void @__olang_check_failed(ptr @olang_loc_3b5c2c57d838d869_14cf45850b137925)
  unreachable
bb67:
  %t307 = load { i64, ptr }, ptr %l140
  %t308 = extractvalue { i64, ptr } %t307, 1
  call void @__olang_region_release(ptr %t308)
  store { i64, ptr } zeroinitializer, ptr %l140
  br label %bb68
bb68:
  %t309 = load i64, ptr %l10, !tbaa !24
  store i64 %t309, ptr %l142, !tbaa !24
  %t310 = load i64, ptr %l142, !tbaa !24
  %t311 = icmp sge i64 %t310, 0
  br i1 %t311, label %bb69, label %bb70
bb69:
  %t313 = load i64, ptr %l142, !tbaa !24
  %t314 = icmp sle i64 %t313, 128102389400760775
  br i1 %t314, label %bb71, label %bb72
bb70:
  call void @__olang_check_failed(ptr @olang_loc_8cc95a5d9353ea2a_915fe4a94e905706)
  unreachable
bb71:
  %t316 = load i64, ptr %l142, !tbaa !24
  %t317 = mul i64 %t316, 72
  %t318 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t317)
  %t319 = insertvalue { i64, ptr } undef, i64 %t316, 0
  %t320 = insertvalue { i64, ptr } %t319, ptr %t318, 1
  %t322 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 9
  store { i64, ptr } %t320, ptr %t322, !tbaa !27
  %t323 = ptrtoint ptr %v2 to i64
  store i64 %t323, ptr %l146, !tbaa !24
  %t324 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e11
  br i1 %t324, label %bb73, label %bb74
bb72:
  call void @__olang_check_failed(ptr @olang_loc_8cc95a5d9353ea2a_915fe4a94e905706)
  unreachable
bb73:
  %t326 = call ptr @__olang_region_make(ptr %v2)
  %t327 = ptrtoint ptr %t326 to i64
  store i64 %t327, ptr %l146, !tbaa !24
  br label %bb74
bb74:
  %t328 = load i64, ptr %l10, !tbaa !24
  store i64 %t328, ptr %l148, !tbaa !24
  %t329 = load i64, ptr %l148, !tbaa !24
  %t330 = icmp sge i64 %t329, 0
  br i1 %t330, label %bb75, label %bb76
bb75:
  %t332 = load i64, ptr %l148, !tbaa !24
  %t333 = mul i64 %t332, 1
  %t334 = load i64, ptr %l146
  %t335 = inttoptr i64 %t334 to ptr
  %t336 = call ptr @__olang_scope_alloc_zeroed(ptr %t335, i64 %t333)
  %t337 = insertvalue { i64, ptr } undef, i64 %t332, 0
  %t338 = insertvalue { i64, ptr } %t337, ptr %t336, 1
  %t339 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 11
  %t340 = load { i64, ptr }, ptr %t339, !tbaa !27
  store { i64, ptr } %t340, ptr %l151, !tbaa !27
  %t342 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 11
  store { i64, ptr } %t338, ptr %t342, !tbaa !27
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e11
  br i1 %t343, label %bb77, label %bb78
bb76:
  call void @__olang_check_failed(ptr @olang_loc_82df08a25f1b1bff_dd8fde79650f209b)
  unreachable
bb77:
  %t345 = load { i64, ptr }, ptr %l151
  %t346 = extractvalue { i64, ptr } %t345, 1
  call void @__olang_region_release(ptr %t346)
  store { i64, ptr } zeroinitializer, ptr %l151
  br label %bb78
bb78:
  store i64 0, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t347 = load i64, ptr %l10, !tbaa !24
  store i64 %t347, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t349 = load i64, ptr %l13, !tbaa !24
  %t350 = load i64, ptr %l12, !tbaa !24
  %t353 = icmp sgt i64 %t349, %t350
  br i1 %t353, label %bb79, label %bb80
bb79:
  %t355 = load i64, ptr %l14, !tbaa !24
  %t357 = icmp sgt i64 %t355, 0
  br i1 %t357, label %bb81, label %bb82
bb80:
  store i64 0, ptr %l157, !tbaa !24
  br label %bb84
bb81:
  %t359 = load i64, ptr %l13, !tbaa !24
  %t360 = load i64, ptr %l12, !tbaa !24
  %t363 = sub i64 %t359, %t360
  %t364 = load i64, ptr %l14, !tbaa !24
  %t367 = add i64 %t363, %t364
  %t369 = sub i64 %t367, 1
  %t370 = load i64, ptr %l14, !tbaa !24
  %t373 = sdiv i64 %t369, %t370
  store i64 %t373, ptr %l160, !tbaa !24
  br label %bb83
bb82:
  store i64 0, ptr %l160, !tbaa !24
  br label %bb83
bb83:
  %t375 = load i64, ptr %l160, !tbaa !24
  store i64 %t375, ptr %l157, !tbaa !24
  br label %bb84
bb84:
  %t376 = load i64, ptr %l157, !tbaa !24
  store i64 %t376, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb85
bb85:
  %t377 = load i64, ptr %l16, !tbaa !24
  %t378 = load i64, ptr %l15, !tbaa !24
  %t381 = icmp slt i64 %t377, %t378
  %t383 = xor i1 %t381, true
  br i1 %t383, label %bb86, label %bb87
bb86:
  br label %bb105
bb87:
  br label %bb88
bb88:
  %t385 = load i64, ptr %l12, !tbaa !24
  %t386 = load i64, ptr %l16, !tbaa !24
  %t387 = load i64, ptr %l14, !tbaa !24
  %t390 = mul i64 %t386, %t387
  %t393 = add i64 %t385, %t390
  store i64 %t393, ptr %l17, !tbaa !24
  %t395 = load ptr, ptr %l1, !tbaa !29
  %t397 = getelementptr %"compiler/mir:Fn", ptr %t395, i32 0, i32 9
  %t398 = load i64, ptr %l17, !tbaa !24
  %t401 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %v1, ptr %t397, i64 %t398)
  store ptr %t401, ptr %l181
  br label %bb89
bb89:
  %t402 = load ptr, ptr %l181, !tbaa !29
  store ptr %t402, ptr %l18, !tbaa !29
  %t403 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 8
  %t404 = load { i64, ptr }, ptr %t403, !tbaa !27
  store { i64, ptr } %t404, ptr %l182, !tbaa !27
  %t405 = load i64, ptr %l17, !tbaa !24
  %t406 = load i64, ptr %l11, !tbaa !24
  %t409 = getelementptr { i64, ptr }, ptr %l182, i32 0, i32 1
  %t410 = load ptr, ptr %t409, !tbaa !27
  %t411 = getelementptr i64, ptr %t410, i64 %t405
  store i64 %t406, ptr %t411, !tbaa !34
  %t412 = load ptr, ptr %l18, !tbaa !29
  %t414 = getelementptr %"compiler/mir:BasicBlock", ptr %t412, i32 0, i32 0
  store ptr %t414, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb90
bb90:
  store %olang.scope zeroinitializer, ptr %s7
  %t416 = load i64, ptr %l20, !tbaa !24
  store i64 %t416, ptr %l187, !tbaa !24
  %t417 = load ptr, ptr %l19, !tbaa !29
  %t419 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v1, ptr %t417)
  store i64 %t419, ptr %l189
  br label %bb91
bb91:
  %t420 = load i64, ptr %l187, !tbaa !24
  %t421 = load i64, ptr %l189, !tbaa !24
  %t422 = icmp slt i64 %t420, %t421
  %t424 = xor i1 %t422, true
  br i1 %t424, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s7)
  br label %bb102
bb93:
  br label %bb94
bb94:
  %t426 = load ptr, ptr %l19, !tbaa !29
  %t427 = load i64, ptr %l20, !tbaa !24
  %t430 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v1, ptr %t426, i64 %t427)
  store { i64, [21 x i64] } %t430, ptr %l194
  br label %bb95
bb95:
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %l194, i64 176, i1 false)
  %t431 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 7
  %t432 = load { i64, ptr }, ptr %t431, !tbaa !27
  store { i64, ptr } %t432, ptr %l195, !tbaa !27
  %t433 = load i64, ptr %l11, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l197, ptr %l21, i64 176, i1 false)
  %t435 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t436 = load ptr, ptr %t435, !tbaa !27
  %t437 = getelementptr { i64, [21 x i64] }, ptr %t436, i64 %t433
  call void @llvm.memmove.p0.p0.i64(ptr %t437, ptr %l197, i64 176, i1 false)
  %t438 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 10
  %t439 = load { i64, ptr }, ptr %t438, !tbaa !27
  store { i64, ptr } %t439, ptr %l198, !tbaa !27
  %t440 = load i64, ptr %l11, !tbaa !24
  store i64 %t440, ptr %l199, !tbaa !24
  %t441 = load ptr, ptr %l1, !tbaa !29
  %t444 = call i1 @compiler_2feval_2estmtNamesGlobal(ptr %v1, ptr %s7, ptr %t441, ptr %l21)
  store i1 %t444, ptr %l202
  br label %bb96
bb96:
  %t445 = load i1, ptr %l202, !tbaa !21
  %t446 = load i64, ptr %l199, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l198, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr i1, ptr %t448, i64 %t446
  store i1 %t445, ptr %t449, !tbaa !31
  %t450 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 10
  %t451 = load { i64, ptr }, ptr %t450, !tbaa !27
  store { i64, ptr } %t451, ptr %l203, !tbaa !27
  %t452 = load i64, ptr %l11, !tbaa !24
  %t454 = getelementptr { i64, ptr }, ptr %l203, i32 0, i32 1
  %t455 = load ptr, ptr %t454, !tbaa !27
  %t456 = getelementptr i1, ptr %t455, i64 %t452
  %t457 = load i1, ptr %t456, !tbaa !31
  %t459 = xor i1 %t457, true
  br i1 %t459, label %bb97, label %bb98
bb97:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load ptr, ptr %l1, !tbaa !29
  %t463 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatten(ptr %v0, ptr %v1, ptr %s7, ptr %v2, ptr %t461, ptr %t462, ptr %l21, ptr %l2, i64 %t463)
  br label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb100
bb100:
  %t469 = load i64, ptr %l11, !tbaa !24
  %t471 = add i64 %t469, 1
  store i64 %t471, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb101
bb101:
  %t473 = load i64, ptr %l20, !tbaa !24
  %t475 = add i64 %t473, 1
  store i64 %t475, ptr %l20, !tbaa !24
  br label %bb90
bb102:
  %t477 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 9
  %t478 = load { i64, ptr }, ptr %t477, !tbaa !27
  store { i64, ptr } %t478, ptr %l216, !tbaa !27
  %t479 = load i64, ptr %l17, !tbaa !24
  %t480 = load ptr, ptr %l18, !tbaa !29
  %t482 = getelementptr %"compiler/mir:BasicBlock", ptr %t480, i32 0, i32 1
  %t483 = load { i64, [8 x i64] }, ptr %t482
  %t486 = getelementptr { i64, ptr }, ptr %l216, i32 0, i32 1
  %t487 = load ptr, ptr %t486, !tbaa !27
  %t488 = getelementptr { i64, [8 x i64] }, ptr %t487, i64 %t479
  store { i64, [8 x i64] } %t483, ptr %t488
  %t489 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 11
  %t490 = load { i64, ptr }, ptr %t489, !tbaa !27
  store { i64, ptr } %t490, ptr %l220, !tbaa !27
  %t491 = load i64, ptr %l17, !tbaa !24
  store i64 %t491, ptr %l221, !tbaa !24
  %t492 = load ptr, ptr %l1, !tbaa !29
  %t493 = load ptr, ptr %l18, !tbaa !29
  %t495 = getelementptr %"compiler/mir:BasicBlock", ptr %t493, i32 0, i32 1
  %t496 = load { i64, [8 x i64] }, ptr %t495
  %t499 = call i1 @compiler_2feval_2etermNamesGlobal(ptr %v1, ptr %t492, { i64, [8 x i64] } %t496)
  store i1 %t499, ptr %l225
  br label %bb103
bb103:
  %t500 = load i1, ptr %l225, !tbaa !21
  %t501 = load i64, ptr %l221, !tbaa !24
  %t502 = getelementptr { i64, ptr }, ptr %l220, i32 0, i32 1
  %t503 = load ptr, ptr %t502, !tbaa !27
  %t504 = getelementptr i1, ptr %t503, i64 %t501
  store i1 %t500, ptr %t504, !tbaa !31
  br label %bb104
bb104:
  %t505 = load i64, ptr %l16, !tbaa !24
  %t507 = add i64 %t505, 1
  store i64 %t507, ptr %l16, !tbaa !24
  br label %bb85
bb105:
  %t509 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 8
  %t510 = load { i64, ptr }, ptr %t509, !tbaa !27
  store { i64, ptr } %t510, ptr %l228, !tbaa !27
  %t511 = load i64, ptr %l10, !tbaa !24
  %t512 = load i64, ptr %l11, !tbaa !24
  %t515 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t516 = load ptr, ptr %t515, !tbaa !27
  %t517 = getelementptr i64, ptr %t516, i64 %t511
  store i64 %t512, ptr %t517, !tbaa !34
  %t518 = ptrtoint ptr %v2 to i64
  store i64 %t518, ptr %l231, !tbaa !24
  %t519 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e12
  br i1 %t519, label %bb106, label %bb107
bb106:
  %t521 = call ptr @__olang_region_make(ptr %v2)
  %t522 = ptrtoint ptr %t521 to i64
  store i64 %t522, ptr %l231, !tbaa !24
  br label %bb107
bb107:
  %t523 = load ptr, ptr %l1, !tbaa !29
  %t525 = getelementptr %"compiler/mir:Fn", ptr %t523, i32 0, i32 4
  %t527 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t525)
  store i64 %t527, ptr %l235
  br label %bb108
bb108:
  %t528 = load i64, ptr %l235, !tbaa !24
  %t529 = icmp sge i64 %t528, 0
  br i1 %t529, label %bb109, label %bb110
bb109:
  %t531 = load i64, ptr %l235, !tbaa !24
  %t532 = mul i64 %t531, 1
  %t533 = load i64, ptr %l231
  %t534 = inttoptr i64 %t533 to ptr
  %t535 = call ptr @__olang_scope_alloc_zeroed(ptr %t534, i64 %t532)
  %t536 = insertvalue { i64, ptr } undef, i64 %t531, 0
  %t537 = insertvalue { i64, ptr } %t536, ptr %t535, 1
  %t538 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 12
  %t539 = load { i64, ptr }, ptr %t538, !tbaa !27
  store { i64, ptr } %t539, ptr %l238, !tbaa !27
  %t541 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 12
  store { i64, ptr } %t537, ptr %t541, !tbaa !27
  %t542 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e12
  br i1 %t542, label %bb111, label %bb112
bb110:
  call void @__olang_check_failed(ptr @olang_loc_1d233abf61feac98_d906727ad02ddbc)
  unreachable
bb111:
  %t544 = load { i64, ptr }, ptr %l238
  %t545 = extractvalue { i64, ptr } %t544, 1
  call void @__olang_region_release(ptr %t545)
  store { i64, ptr } zeroinitializer, ptr %l238
  br label %bb112
bb112:
  store i64 0, ptr %l22, !tbaa !24
  %t546 = load ptr, ptr %l1, !tbaa !29
  %t548 = getelementptr %"compiler/mir:Fn", ptr %t546, i32 0, i32 4
  %t550 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t548)
  store i64 %t550, ptr %l242
  br label %bb113
bb113:
  %t551 = load i64, ptr %l242, !tbaa !24
  store i64 %t551, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t552 = load i64, ptr %l23, !tbaa !24
  %t553 = load i64, ptr %l22, !tbaa !24
  %t556 = icmp sgt i64 %t552, %t553
  br i1 %t556, label %bb114, label %bb115
bb114:
  %t558 = load i64, ptr %l24, !tbaa !24
  %t560 = icmp sgt i64 %t558, 0
  br i1 %t560, label %bb116, label %bb117
bb115:
  store i64 0, ptr %l246, !tbaa !24
  br label %bb119
bb116:
  %t562 = load i64, ptr %l23, !tbaa !24
  %t563 = load i64, ptr %l22, !tbaa !24
  %t566 = sub i64 %t562, %t563
  %t567 = load i64, ptr %l24, !tbaa !24
  %t570 = add i64 %t566, %t567
  %t572 = sub i64 %t570, 1
  %t573 = load i64, ptr %l24, !tbaa !24
  %t576 = sdiv i64 %t572, %t573
  store i64 %t576, ptr %l249, !tbaa !24
  br label %bb118
bb117:
  store i64 0, ptr %l249, !tbaa !24
  br label %bb118
bb118:
  %t578 = load i64, ptr %l249, !tbaa !24
  store i64 %t578, ptr %l246, !tbaa !24
  br label %bb119
bb119:
  %t579 = load i64, ptr %l246, !tbaa !24
  store i64 %t579, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb120
bb120:
  %t580 = load i64, ptr %l26, !tbaa !24
  %t581 = load i64, ptr %l25, !tbaa !24
  %t584 = icmp slt i64 %t580, %t581
  %t586 = xor i1 %t584, true
  br i1 %t586, label %bb121, label %bb122
bb121:
  br label %bb133
bb122:
  br label %bb123
bb123:
  %t588 = load i64, ptr %l22, !tbaa !24
  %t589 = load i64, ptr %l26, !tbaa !24
  %t590 = load i64, ptr %l24, !tbaa !24
  %t593 = mul i64 %t589, %t590
  %t596 = add i64 %t588, %t593
  store i64 %t596, ptr %l27, !tbaa !24
  %t598 = getelementptr %"compiler/eval:cfn", ptr %l2, i32 0, i32 12
  %t599 = load { i64, ptr }, ptr %t598, !tbaa !27
  store { i64, ptr } %t599, ptr %l267, !tbaa !27
  %t600 = load i64, ptr %l27, !tbaa !24
  store i64 %t600, ptr %l268, !tbaa !24
  %t601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t601, ptr %l269, !tbaa !29
  %t602 = load ptr, ptr %l1, !tbaa !29
  %t604 = getelementptr %"compiler/mir:Fn", ptr %t602, i32 0, i32 7
  store ptr %t604, ptr %l271, !tbaa !29
  %t605 = load ptr, ptr %l1, !tbaa !29
  %t607 = getelementptr %"compiler/mir:Fn", ptr %t605, i32 0, i32 4
  %t608 = load i64, ptr %l27, !tbaa !24
  %t611 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t607, i64 %t608)
  store i32 %t611, ptr %l275
  br label %bb124
bb124:
  %t612 = load i32, ptr %l275, !tbaa !23
  %t613 = sext i32 %t612 to i64
  %t614 = load ptr, ptr %l271, !tbaa !29
  %t616 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t614, i64 %t613)
  store %"compiler/mir:Local" %t616, ptr %l277
  br label %bb125
bb125:
  %t617 = getelementptr %"compiler/mir:Local", ptr %l277, i32 0, i32 2
  %t618 = load i32, ptr %t617, !tbaa !23
  %t619 = load ptr, ptr %l269, !tbaa !29
  %t621 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArrayValue(ptr %v0, ptr %t619, i32 %t618)
  store i1 %t621, ptr %l279
  br label %bb126
bb126:
  %t622 = load i1, ptr %l279, !tbaa !21
  br i1 %t622, label %bb127, label %bb128
bb127:
  %t623 = load ptr, ptr %l1, !tbaa !29
  store ptr %t623, ptr %l281, !tbaa !29
  %t624 = load ptr, ptr %l0, !tbaa !29
  %t626 = getelementptr %"compiler/eval:Machine", ptr %t624, i32 0, i32 0
  %t627 = load ptr, ptr %t626, !tbaa !29
  store ptr %t627, ptr %l283, !tbaa !29
  %t628 = load ptr, ptr %l1, !tbaa !29
  %t630 = getelementptr %"compiler/mir:Fn", ptr %t628, i32 0, i32 4
  %t631 = load i64, ptr %l27, !tbaa !24
  %t634 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t630, i64 %t631)
  store i32 %t634, ptr %l287
  br label %bb129
bb128:
  store i1 false, ptr %l280, !tbaa !21
  br label %bb131
bb129:
  %t635 = load ptr, ptr %l281, !tbaa !29
  %t636 = load ptr, ptr %l283, !tbaa !29
  %t637 = load i32, ptr %l287, !tbaa !23
  %t638 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v1, ptr %v0, ptr %t635, ptr %t636, i32 %t637)
  store i1 %t638, ptr %l288
  br label %bb130
bb130:
  %t639 = load i1, ptr %l288, !tbaa !21
  store i1 %t639, ptr %l280, !tbaa !21
  br label %bb131
bb131:
  %t640 = load i1, ptr %l280, !tbaa !21
  %t641 = load i64, ptr %l268, !tbaa !24
  %t642 = getelementptr { i64, ptr }, ptr %l267, i32 0, i32 1
  %t643 = load ptr, ptr %t642, !tbaa !27
  %t644 = getelementptr i1, ptr %t643, i64 %t641
  store i1 %t640, ptr %t644, !tbaa !31
  br label %bb132
bb132:
  %t645 = load i64, ptr %l26, !tbaa !24
  %t647 = add i64 %t645, 1
  store i64 %t647, ptr %l26, !tbaa !24
  br label %bb120
bb133:
  call void @llvm.memmove.p0.p0.i64(ptr %l291, ptr %l2, i64 264, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l291, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l8 = alloca i32
  %l11 = alloca i32
  %l14 = alloca ptr
  %l17 = alloca i32
  %l18 = alloca i32
  %l21 = alloca i32
  %rv = alloca i32
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l8
  br label %bb1
bb1:
  %t11 = load i32, ptr %l8, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l11
  br label %bb2
bb2:
  %t17 = load i32, ptr %l11, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  br i1 %t20, label %bb3, label %bb4
bb3:
  %t22 = load ptr, ptr %l2, !tbaa !29
  store ptr %t22, ptr %l14, !tbaa !29
  %t23 = load ptr, ptr %l2, !tbaa !29
  %t24 = load i32, ptr %l3, !tbaa !23
  %t27 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t23, i32 %t24)
  store i32 %t27, ptr %l17
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t28 = load ptr, ptr %l14, !tbaa !29
  %t29 = load i32, ptr %l17, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t30, ptr %l18
  br label %bb6
bb6:
  %t31 = load i32, ptr %l18, !tbaa !23
  store i32 %t31, ptr %l3, !tbaa !23
  br label %bb7
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t33 = load i32, ptr %l3, !tbaa !23
  %t36 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t32, i32 %t33)
  store i32 %t36, ptr %l21
  br label %bb8
bb8:
  %t37 = load i32, ptr %l21, !tbaa !23
  store i32 %t37, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i32
  %l5 = alloca { %"compiler/eval:Ptr", i64 }
  %l6 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l10 = alloca i32
  %l14 = alloca { %"compiler/eval:Ptr", i64 }
  %l24 = alloca i1
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l38 = alloca i64
  %l41 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca { %"compiler/eval:Ptr", i32 }
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t1, i32 %t2)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !tbaa !23
  store i32 %t6, ptr %l4, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l2, !tbaa !23
  %t13 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t7, %"compiler/eval:Ptr" %a1, i32 %t9)
  store { %"compiler/eval:Ptr", i64 } %t13, ptr %l14
  br label %bb2
bb2:
  %t14 = load { %"compiler/eval:Ptr", i64 }, ptr %l14
  store { %"compiler/eval:Ptr", i64 } %t14, ptr %l5
  %t15 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 0
  %t16 = load %"compiler/eval:Ptr", ptr %t15
  store %"compiler/eval:Ptr" %t16, ptr %l6
  %t18 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l5, i32 0, i32 1
  %t19 = load i64, ptr %t18, !tbaa !24
  store i64 %t19, ptr %l7, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 22
  %t24 = load i1, ptr %t23, !tbaa !21
  br i1 %t24, label %bb3, label %bb4
bb3:
  %t26 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t27 = load i32, ptr %l4, !tbaa !23
  %t29 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t26, 0
  %t31 = insertvalue { %"compiler/eval:Ptr", i32 } %t29, i32 %t27, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i32 } %t31, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = icmp slt i64 %t33, 0
  br i1 %t35, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb8
bb7:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t38 = load i64, ptr %l7, !tbaa !24
  %t41 = icmp sge i64 %t37, %t38
  store i1 %t41, ptr %l24, !tbaa !21
  br label %bb8
bb8:
  %t43 = load i1, ptr %l24, !tbaa !21
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyOutside, !tbaa !27
  %t46 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t46, ptr %t44, { i64, ptr } %t45)
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t49 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t50 = load i32, ptr %l4, !tbaa !23
  %t52 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t49, 0
  %t54 = insertvalue { %"compiler/eval:Ptr", i32 } %t52, i32 %t50, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i32 } %t54, ptr %rv
  br label %ret
bb12:
  %t56 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 0
  %t57 = load i64, ptr %t56, !tbaa !24
  store i64 %t57, ptr %l33, !tbaa !24
  %t58 = getelementptr %"compiler/eval:Ptr", ptr %l6, i32 0, i32 1
  %t59 = load i64, ptr %t58, !tbaa !24
  store i64 %t59, ptr %l34, !tbaa !24
  %t60 = load i64, ptr %l3, !tbaa !24
  store i64 %t60, ptr %l35, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l4, !tbaa !23
  %t65 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t61, i32 %t62)
  store i64 %t65, ptr %l38
  br label %bb13
bb13:
  %t66 = load i64, ptr %l35, !tbaa !24
  %t67 = load i64, ptr %l38, !tbaa !24
  %t68 = mul i64 %t66, %t67
  %t69 = load i64, ptr %l34, !tbaa !24
  %t71 = add i64 %t69, %t68
  %t72 = load i64, ptr %l33, !tbaa !24
  %t74 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t72, i64 %t71)
  store %"compiler/eval:Ptr" %t74, ptr %l41
  br label %bb14
bb14:
  %t75 = load i32, ptr %l4, !tbaa !23
  %t76 = load %"compiler/eval:Ptr", ptr %l41
  %t77 = insertvalue { %"compiler/eval:Ptr", i32 } undef, %"compiler/eval:Ptr" %t76, 0
  %t79 = insertvalue { %"compiler/eval:Ptr", i32 } %t77, i32 %t75, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i32 } %t79, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/eval:Ptr", i32 }, ptr %rv
  ret { %"compiler/eval:Ptr", i32 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexternCall(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Call" %a2, i64 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/mir:Call"
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca ptr
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca { %"compiler/eval:Ptr", i32 }
  %l10 = alloca { i64, ptr }
  %l14 = alloca { i64, ptr }
  %l15 = alloca i32
  %l18 = alloca ptr
  %l20 = alloca i1
  %l26 = alloca { i64, [4 x i64] }
  %l28 = alloca ptr
  %l29 = alloca i64
  %l30 = alloca { i64, [7 x i64] }
  %l31 = alloca %"compiler/mir:Range"
  %l32 = alloca %"compiler/mir:Range"
  %l33 = alloca i64
  %l34 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i32
  %l41 = alloca i1
  %l42 = alloca i64
  %l48 = alloca { %"compiler/eval:Ptr", i32 }
  %l57 = alloca i1
  %s0 = alloca %olang.scope
  %t37 = alloca { i64, [7 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Call" %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 34
  %t4 = load i64, ptr %l3, !tbaa !24
  %t7 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, { i64, ptr } } %t7, 1
  %t9 = extractvalue { i32, { i64, ptr } } %t7, 0
  store i32 %t9, ptr %l15
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, ptr } %t8, ptr %l14
  br label %bb1
bb1:
  %t12 = load { i64, ptr }, ptr %l14, !tbaa !27
  store { i64, ptr } %t12, ptr %l10, !tbaa !27
  br label %bb4
bb2:
  br label %bb3
bb3:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d2, i32 0, i32 1) }, ptr %l10, !tbaa !27
  br label %bb4
bb4:
  %t13 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t13, ptr %l5, !tbaa !27
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t14, i64 %t15)
  store ptr %t18, ptr %l18
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l18, !tbaa !29
  store ptr %t19, ptr %l6, !tbaa !29
  %t20 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d3, i32 0, i32 1) })
  store i1 %t22, ptr %l20
  br label %bb6
bb6:
  %t23 = load i1, ptr %l20, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l6, !tbaa !29
  %t26 = getelementptr %"compiler/mir:Fn", ptr %t24, i32 0, i32 11
  %t27 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 1
  %t28 = getelementptr %"compiler/mir:Range", ptr %t27, i32 0, i32 0
  %t29 = load i32, ptr %t28, !tbaa !23
  %t31 = sext i32 %t29 to i64
  %t33 = add i64 %t31, 1
  %t36 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t26, i64 %t33)
  store { i64, [4 x i64] } %t36, ptr %l26
  br label %bb9
bb8:
  br label %bb15
bb9:
  store { i64, [7 x i64] } zeroinitializer, ptr %t37
  %t38 = getelementptr { i64, [7 x i64] }, ptr %t37, i32 0, i32 0
  store i64 2, ptr %t38
  %t39 = load { i64, [4 x i64] }, ptr %l26
  %t40 = insertvalue { { i64, [4 x i64] } } undef, { i64, [4 x i64] } %t39, 0
  %t41 = getelementptr { i64, [7 x i64] }, ptr %t37, i32 0, i32 1
  store { { i64, [4 x i64] } } %t40, ptr %t41
  %t42 = load { i64, [7 x i64] }, ptr %t37
  %t44 = load ptr, ptr %l0, !tbaa !29
  store ptr %t44, ptr %l28, !tbaa !29
  %t45 = load i64, ptr %l1, !tbaa !24
  store i64 %t45, ptr %l29, !tbaa !24
  store { i64, [7 x i64] } %t42, ptr %l30
  %t47 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t47, ptr %l31
  %t48 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  store %"compiler/mir:Range" %t48, ptr %l32
  %t49 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  store i64 %t49, ptr %l33, !tbaa !24
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i64, ptr %l1, !tbaa !24
  %t52 = load %"compiler/mir:Call", ptr %l2
  %t56 = call { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallIndex(ptr %v0, ptr %t50, i64 %t51, %"compiler/mir:Call" %t52)
  %t57 = extractvalue { i32, i64 } %t56, 1
  %t58 = extractvalue { i32, i64 } %t56, 0
  store i32 %t58, ptr %l39
  %t59 = icmp ne i32 %t58, 0
  br i1 %t59, label %bb11, label %ok.60, !prof !99
ok.60:
  store i64 %t57, ptr %l38
  br label %bb10
bb10:
  %t61 = load i64, ptr %l38, !tbaa !24
  store i64 %t61, ptr %l34, !tbaa !24
  br label %bb13
bb11:
  %t62 = load i32, ptr %l39, !tbaa !23
  %t63 = ashr i32 %t62, 16
  %t65 = icmp eq i32 %t63, 1
  store i1 %t65, ptr %l41, !tbaa !21
  br label %bb12
bb12:
  store i64 0, ptr %l34, !tbaa !24
  br label %bb13
bb13:
  %t66 = load ptr, ptr %l28, !tbaa !29
  %t67 = load i64, ptr %l29, !tbaa !24
  %t68 = load { i64, [7 x i64] }, ptr %l30
  %t69 = load %"compiler/mir:Range", ptr %l31
  %t70 = load %"compiler/mir:Range", ptr %l32
  %t71 = load i64, ptr %l33, !tbaa !24
  %t72 = load i64, ptr %l34, !tbaa !24
  %t73 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %t66, i64 %t67, { i64, [7 x i64] } %t68, %"compiler/mir:Range" %t69, %"compiler/mir:Range" %t70, i64 %t71, i64 %t72)
  store i64 %t73, ptr %l42
  br label %bb14
bb14:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb15:
  %t74 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t74, ptr %l8
  %t76 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 4
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb16, label %bb17
bb16:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t80 = load i64, ptr %l1, !tbaa !24
  %t81 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 3
  %t82 = load %"compiler/mir:Lvalue", ptr %t81
  %t86 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t79, i64 %t80, %"compiler/mir:Lvalue" %t82)
  store { %"compiler/eval:Ptr", i32 } %t86, ptr %l48
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t87 = load { %"compiler/eval:Ptr", i32 }, ptr %l48
  store { %"compiler/eval:Ptr", i32 } %t87, ptr %l9
  %t88 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l9, i32 0, i32 0
  %t89 = load %"compiler/eval:Ptr", ptr %t88
  store %"compiler/eval:Ptr" %t89, ptr %l8
  br label %bb19
bb19:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l3, !tbaa !24
  %t95 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 1
  %t96 = load %"compiler/mir:Range", ptr %t95
  %t97 = load %"compiler/eval:Ptr", ptr %l8
  %t98 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 4
  %t99 = load i1, ptr %t98, !tbaa !21
  %t107 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallExtern(ptr %v0, ptr %t91, i64 %t92, i64 %t93, i32 %a4, %"compiler/mir:Range" %t96, %"compiler/eval:Ptr" %t97, i1 %t99)
  store i1 %t107, ptr %l57
  br label %bb20
bb20:
  %t108 = load i1, ptr %l57, !tbaa !21
  br i1 %t108, label %bb21, label %bb22
bb21:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i64, ptr %l1, !tbaa !24
  %t111 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 5
  %t112 = load i32, ptr %t111, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t109, i64 %t110, i32 %t112)
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, ptr %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca %"compiler/mir:Lvalue"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l22 = alloca i1
  %l28 = alloca i64
  %l32 = alloca { i64, ptr }
  %l36 = alloca { i64, ptr }
  %l41 = alloca { i64, ptr }
  %l51 = alloca i64
  %l54 = alloca i1
  %l55 = alloca ptr
  %l59 = alloca %"compiler/mir:Local"
  %l61 = alloca i1
  %l65 = alloca ptr
  %l69 = alloca %"compiler/mir:Local"
  %l71 = alloca i64
  %l75 = alloca %"compiler/mir:Local"
  %l79 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
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
  br label %bb9
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
  store i32 65536, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l8, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l6, !tbaa !23
  %t25 = load i64, ptr %l7, !tbaa !24
  %t29 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %t23, i32 %t24, i64 %t25)
  store i64 %t29, ptr %l28
  br label %bb8
bb8:
  %t30 = load i64, ptr %l28, !tbaa !24
  %t31 = load i32, ptr %l6, !tbaa !23
  %t33 = sext i32 %t31 to i64
  %t35 = load ptr, ptr %l3, !tbaa !29
  %t37 = getelementptr %"compiler/eval:cfn", ptr %t35, i32 0, i32 13
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l32, !tbaa !27
  %t39 = load i64, ptr %l4, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i64, ptr %t44, i64 %t39
  store i64 %t40, ptr %t45, !tbaa !34
  %t46 = load ptr, ptr %l3, !tbaa !29
  %t48 = getelementptr %"compiler/eval:cfn", ptr %t46, i32 0, i32 13
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l36, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t50, 1
  %t56 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t57 = load ptr, ptr %t56, !tbaa !27
  %t58 = getelementptr i64, ptr %t57, i64 %t52
  store i64 %t30, ptr %t58, !tbaa !34
  %t59 = load ptr, ptr %l3, !tbaa !29
  %t61 = getelementptr %"compiler/eval:cfn", ptr %t59, i32 0, i32 13
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l41, !tbaa !27
  %t63 = load i64, ptr %l5, !tbaa !24
  %t67 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t68 = load ptr, ptr %t67, !tbaa !27
  %t69 = getelementptr i64, ptr %t68, i64 %t63
  store i64 %t33, ptr %t69, !tbaa !34
  br label %bb33
bb9:
  %t70 = load { i64, [4 x i64] }, ptr %l2
  %t72 = extractvalue { i64, [4 x i64] } %t70, 0
  %t73 = icmp eq i64 %t72, 1
  br i1 %t73, label %bb10, label %bb11
bb10:
  %t75 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t76 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t75, i32 0, i32 0
  %t77 = load %"compiler/mir:Lvalue", ptr %t76
  store %"compiler/mir:Lvalue" %t77, ptr %l11
  br label %bb12
bb11:
  br label %bb28
bb12:
  %t79 = getelementptr %"compiler/mir:Lvalue", ptr %l11, i32 0, i32 1
  %t80 = getelementptr %"compiler/mir:Range", ptr %t79, i32 0, i32 1
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = icmp ne i32 %t81, 0
  br i1 %t83, label %bb13, label %bb14
bb13:
  store i32 65536, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t86 = load %"compiler/mir:Lvalue", ptr %l11
  %t88 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t86)
  store i64 %t88, ptr %l51
  br label %bb16
bb16:
  %t89 = load i64, ptr %l51, !tbaa !24
  store i64 %t89, ptr %l12, !tbaa !24
  %t90 = load i64, ptr %l12, !tbaa !24
  %t92 = icmp slt i64 %t90, 0
  br i1 %t92, label %bb17, label %bb18
bb17:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb21
bb18:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l55, !tbaa !29
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr %"compiler/mir:Fn", ptr %t95, i32 0, i32 7
  %t98 = load i64, ptr %l12, !tbaa !24
  %t101 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t97, i64 %t98)
  store %"compiler/mir:Local" %t101, ptr %l59
  br label %bb19
bb19:
  %t102 = getelementptr %"compiler/mir:Local", ptr %l59, i32 0, i32 2
  %t103 = load i32, ptr %t102, !tbaa !23
  %t104 = load ptr, ptr %l55, !tbaa !29
  %t106 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t104, i32 %t103)
  store i1 %t106, ptr %l61
  br label %bb20
bb20:
  %t107 = load i1, ptr %l61, !tbaa !21
  %t108 = xor i1 %t107, true
  store i1 %t108, ptr %l54, !tbaa !21
  br label %bb21
bb21:
  %t110 = load i1, ptr %l54, !tbaa !21
  br i1 %t110, label %bb22, label %bb23
bb22:
  store i32 65536, ptr %rv
  br label %ret
bb23:
  br label %bb24
bb24:
  %t112 = load i64, ptr %l12, !tbaa !24
  store i64 %t112, ptr %l13, !tbaa !24
  %t114 = load ptr, ptr %l0, !tbaa !29
  store ptr %t114, ptr %l65, !tbaa !29
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/mir:Fn", ptr %t115, i32 0, i32 7
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t117, i64 %t118)
  store %"compiler/mir:Local" %t121, ptr %l69
  br label %bb25
bb25:
  %t122 = getelementptr %"compiler/mir:Local", ptr %l69, i32 0, i32 2
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load ptr, ptr %l65, !tbaa !29
  %t126 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t124, i32 %t123)
  store i64 %t126, ptr %l71
  br label %bb26
bb26:
  %t127 = load i64, ptr %l71, !tbaa !24
  store i64 %t127, ptr %l14, !tbaa !24
  %t128 = load ptr, ptr %l1, !tbaa !29
  %t130 = getelementptr %"compiler/mir:Fn", ptr %t128, i32 0, i32 7
  %t131 = load i64, ptr %l12, !tbaa !24
  %t134 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t130, i64 %t131)
  store %"compiler/mir:Local" %t134, ptr %l75
  br label %bb27
bb27:
  %t135 = getelementptr %"compiler/mir:Local", ptr %l75, i32 0, i32 2
  %t136 = load i32, ptr %t135, !tbaa !23
  %t138 = sext i32 %t136 to i64
  %t140 = load ptr, ptr %l3, !tbaa !29
  %t142 = getelementptr %"compiler/eval:cfn", ptr %t140, i32 0, i32 13
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l79, !tbaa !27
  %t144 = load i64, ptr %l4, !tbaa !24
  %t145 = load i64, ptr %l13, !tbaa !24
  %t148 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t149 = load ptr, ptr %t148, !tbaa !27
  %t150 = getelementptr i64, ptr %t149, i64 %t144
  store i64 %t145, ptr %t150, !tbaa !34
  %t151 = load ptr, ptr %l3, !tbaa !29
  %t153 = getelementptr %"compiler/eval:cfn", ptr %t151, i32 0, i32 13
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l83, !tbaa !27
  %t155 = load i64, ptr %l4, !tbaa !24
  %t157 = add i64 %t155, 1
  %t158 = load i64, ptr %l14, !tbaa !24
  %t161 = getelementptr { i64, ptr }, ptr %l83, i32 0, i32 1
  %t162 = load ptr, ptr %t161, !tbaa !27
  %t163 = getelementptr i64, ptr %t162, i64 %t157
  store i64 %t158, ptr %t163, !tbaa !34
  %t164 = load ptr, ptr %l3, !tbaa !29
  %t166 = getelementptr %"compiler/eval:cfn", ptr %t164, i32 0, i32 13
  %t167 = load { i64, ptr }, ptr %t166, !tbaa !27
  store { i64, ptr } %t167, ptr %l88, !tbaa !27
  %t168 = load i64, ptr %l5, !tbaa !24
  %t172 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t173 = load ptr, ptr %t172, !tbaa !27
  %t174 = getelementptr i64, ptr %t173, i64 %t168
  store i64 %t138, ptr %t174, !tbaa !34
  br label %bb33
bb28:
  br i1 true, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb32
bb31:
  store i32 65536, ptr %rv
  br label %ret
bb32:
  call void @__olang_check_failed(ptr @olang_loc_e07540d555d7dc03_f134256d7232b767)
  unreachable
bb33:
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatValue(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l22 = alloca i64
  %l28 = alloca { i64, ptr }
  %l32 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t1, ptr %l6, !tbaa !27
  %t2 = load i64, ptr %l3, !tbaa !24
  %t4 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t5 = load ptr, ptr %t4, !tbaa !27
  %t6 = getelementptr i64, ptr %t5, i64 %t2
  %t7 = load i64, ptr %t6, !tbaa !34
  store i64 %t7, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = add i64 %t14, 1
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = load i64, ptr %l4, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t26, ptr %l18, !tbaa !27
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = add i64 %t27, 1
  %t31 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = getelementptr i64, ptr %t32, i64 %t29
  %t34 = load i64, ptr %t33, !tbaa !34
  %t39 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalAt(ptr %v0, ptr %t23, i64 %a1, i64 %t25, i64 %t34, i1 false)
  store i64 %t39, ptr %l22
  br label %bb4
bb4:
  %t40 = load i64, ptr %l22, !tbaa !24
  store i64 %t40, ptr %l5, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t43 = icmp slt i64 %t41, 0
  br i1 %t43, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l5, !tbaa !24
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t48, ptr %l28, !tbaa !27
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = add i64 %t49, 1
  %t53 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr i64, ptr %t54, i64 %t51
  %t56 = load i64, ptr %t55, !tbaa !34
  %t60 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t46, i64 %t47, i64 %t56)
  store i64 %t60, ptr %l32
  br label %bb8
bb8:
  %t61 = load i64, ptr %l32, !tbaa !24
  store i64 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToElem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [1 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca i64
  %l13 = alloca { i64, [4 x i64] }
  %l14 = alloca i64
  %l19 = alloca i64
  %l22 = alloca i64
  %l29 = alloca { i64, [1 x i64] }
  %l36 = alloca ptr
  %l40 = alloca %"compiler/mir:Local"
  %l42 = alloca i32
  %l45 = alloca i1
  %l47 = alloca i1
  %l50 = alloca i64
  %l53 = alloca i64
  %l57 = alloca i64
  %l66 = alloca i1
  %l81 = alloca i32
  %l84 = alloca { i64, ptr }
  %l90 = alloca i64
  %l93 = alloca ptr
  %l97 = alloca %"compiler/mir:Local"
  %l99 = alloca i1
  %l106 = alloca { i64, ptr }
  %l110 = alloca { i64, ptr }
  %l115 = alloca { i64, ptr }
  %l120 = alloca { i64, ptr }
  %l127 = alloca %"compiler/mir:Local"
  %l133 = alloca %"compiler/mir:Local"
  %l137 = alloca { i64, ptr }
  %l142 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  store { i64, [15 x i64] } %a3, ptr %l3
  store ptr %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load %"compiler/mir:Lvalue", ptr %l2
  %t3 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %t1)
  store i64 %t3, ptr %l22
  br label %bb1
bb1:
  %t4 = load i64, ptr %l22, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t9 = load ptr, ptr %l1, !tbaa !29
  %t11 = getelementptr %"compiler/mir:Fn", ptr %t9, i32 0, i32 10
  %t12 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t13 = getelementptr %"compiler/mir:Range", ptr %t12, i32 0, i32 0
  %t14 = load i32, ptr %t13, !tbaa !23
  %t16 = sext i32 %t14 to i64
  %t19 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t11, i64 %t16)
  store { i64, [1 x i64] } %t19, ptr %l29
  br label %bb5
bb5:
  %t20 = load { i64, [1 x i64] }, ptr %l29
  store { i64, [1 x i64] } %t20, ptr %l7
  %t21 = load { i64, [1 x i64] }, ptr %l7
  %t23 = extractvalue { i64, [1 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  %t26 = xor i1 %t24, true
  br i1 %t26, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t28 = getelementptr { i64, [1 x i64] }, ptr %l7, i32 0, i32 1
  %t29 = getelementptr { i32 }, ptr %t28, i32 0, i32 0
  %t30 = load i32, ptr %t29
  %t34 = sext i32 %t30 to i64
  store i64 %t34, ptr %l9, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l36, !tbaa !29
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr %"compiler/mir:Fn", ptr %t37, i32 0, i32 7
  %t40 = load i64, ptr %l6, !tbaa !24
  %t43 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t39, i64 %t40)
  store %"compiler/mir:Local" %t43, ptr %l40
  br label %bb9
bb9:
  %t44 = getelementptr %"compiler/mir:Local", ptr %l40, i32 0, i32 2
  %t45 = load i32, ptr %t44, !tbaa !23
  %t46 = load ptr, ptr %l36, !tbaa !29
  %t48 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t46, i32 %t45)
  store i32 %t48, ptr %l42
  br label %bb10
bb10:
  %t49 = load i32, ptr %l42, !tbaa !23
  store i32 %t49, ptr %l10, !tbaa !23
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l10, !tbaa !23
  %t54 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t54, ptr %l45
  br label %bb11
bb11:
  %t55 = load i1, ptr %l45, !tbaa !21
  %t56 = xor i1 %t55, true
  br i1 %t56, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l47, !tbaa !21
  br label %bb16
bb13:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i32, ptr %l10, !tbaa !23
  %t62 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t58, i32 %t59)
  store i64 %t62, ptr %l50
  br label %bb14
bb14:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load i32, ptr %l10, !tbaa !23
  %t67 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t63, i32 %t64)
  store i64 %t67, ptr %l53
  br label %bb15
bb15:
  %t68 = load i64, ptr %l50, !tbaa !24
  %t69 = load i64, ptr %l53, !tbaa !24
  %t70 = icmp ne i64 %t68, %t69
  store i1 %t70, ptr %l47, !tbaa !21
  br label %bb16
bb16:
  %t72 = load i1, ptr %l47, !tbaa !21
  br i1 %t72, label %bb17, label %bb18
bb17:
  br label %ret
bb18:
  br label %bb19
bb19:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l10, !tbaa !23
  %t77 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t73, i32 %t74)
  store i64 %t77, ptr %l57
  br label %bb20
bb20:
  %t78 = load i64, ptr %l57, !tbaa !24
  store i64 %t78, ptr %l11, !tbaa !24
  %t79 = load { i64, [15 x i64] }, ptr %l3
  %t81 = extractvalue { i64, [15 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 0
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t86 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t87 = getelementptr { { i64, [4 x i64] } }, ptr %t86, i32 0, i32 0
  %t88 = load { i64, [4 x i64] }, ptr %t87
  store { i64, [4 x i64] } %t88, ptr %l13
  %t92 = load { i64, [4 x i64] }, ptr %l13
  %t94 = extractvalue { i64, [4 x i64] } %t92, 0
  %t95 = icmp eq i64 %t94, 2
  %t97 = xor i1 %t95, true
  br i1 %t97, label %bb24, label %bb25
bb24:
  %t99 = load { i64, [4 x i64] }, ptr %l13
  %t101 = extractvalue { i64, [4 x i64] } %t99, 0
  %t102 = icmp eq i64 %t101, 1
  %t104 = xor i1 %t102, true
  store i1 %t104, ptr %l66, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb26
bb26:
  %t106 = load i1, ptr %l66, !tbaa !21
  br i1 %t106, label %bb27, label %bb28
bb27:
  br label %ret
bb28:
  br label %bb29
bb29:
  %t108 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t111 = mul i64 %a5, %t108
  store i64 %t111, ptr %l14, !tbaa !24
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load ptr, ptr %l1, !tbaa !29
  %t115 = load { i64, [4 x i64] }, ptr %l13
  %t116 = load ptr, ptr %l4, !tbaa !29
  %t117 = load i64, ptr %l14, !tbaa !24
  %t119 = add i64 %t117, 3
  %t120 = load i64, ptr %l14, !tbaa !24
  %t122 = add i64 %t120, 9
  %t129 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatOperand(ptr %v0, ptr %v1, ptr %v2, ptr %t113, ptr %t114, { i64, [4 x i64] } %t115, ptr %t116, i64 %t119, i64 %t122)
  store i32 %t129, ptr %l81
  %t130 = icmp ne i32 %t129, 0
  br i1 %t130, label %bb31, label %ok.131, !prof !99
ok.131:
  br label %bb30
bb30:
  br label %bb33
bb31:
  br label %bb32
bb32:
  br label %ret
bb33:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t133 = load ptr, ptr %l4, !tbaa !29
  %t135 = getelementptr %"compiler/eval:cfn", ptr %t133, i32 0, i32 13
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l84, !tbaa !27
  %t137 = load i64, ptr %l14, !tbaa !24
  %t139 = add i64 %t137, 9
  %t141 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t142 = load ptr, ptr %t141, !tbaa !27
  %t143 = getelementptr i64, ptr %t142, i64 %t139
  %t144 = load i64, ptr %t143, !tbaa !34
  %t146 = trunc i64 %t144 to i32
  %t150 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t132, i32 %t146)
  store i64 %t150, ptr %l90
  br label %bb34
bb34:
  %t151 = load i64, ptr %l11, !tbaa !24
  %t152 = load i64, ptr %l90, !tbaa !24
  %t154 = icmp ne i64 %t152, %t151
  br i1 %t154, label %bb35, label %bb36
bb35:
  br label %ret
bb36:
  br label %bb37
bb37:
  %t156 = load ptr, ptr %l0, !tbaa !29
  store ptr %t156, ptr %l93, !tbaa !29
  %t157 = load ptr, ptr %l1, !tbaa !29
  %t159 = getelementptr %"compiler/mir:Fn", ptr %t157, i32 0, i32 7
  %t160 = load i64, ptr %l9, !tbaa !24
  %t163 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t159, i64 %t160)
  store %"compiler/mir:Local" %t163, ptr %l97
  br label %bb38
bb38:
  %t164 = getelementptr %"compiler/mir:Local", ptr %l97, i32 0, i32 2
  %t165 = load i32, ptr %t164, !tbaa !23
  %t166 = load ptr, ptr %l93, !tbaa !29
  %t168 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t166, i32 %t165)
  store i1 %t168, ptr %l99
  br label %bb39
bb39:
  %t169 = load i1, ptr %l99, !tbaa !21
  %t170 = xor i1 %t169, true
  br i1 %t170, label %bb40, label %bb41
bb40:
  br label %ret
bb41:
  br label %bb42
bb42:
  %t172 = load i64, ptr @G_2ecompiler_2feval_2efStore, !tbaa !24
  %t174 = load i64, ptr %l6, !tbaa !24
  %t176 = load i64, ptr %l11, !tbaa !24
  %t178 = load i64, ptr %l9, !tbaa !24
  %t180 = load ptr, ptr %l4, !tbaa !29
  %t182 = getelementptr %"compiler/eval:cfn", ptr %t180, i32 0, i32 13
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  store { i64, ptr } %t183, ptr %l106, !tbaa !27
  %t184 = load i64, ptr %l14, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l106, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i64, ptr %t189, i64 %t184
  store i64 %t172, ptr %t190, !tbaa !34
  %t191 = load ptr, ptr %l4, !tbaa !29
  %t193 = getelementptr %"compiler/eval:cfn", ptr %t191, i32 0, i32 13
  %t194 = load { i64, ptr }, ptr %t193, !tbaa !27
  store { i64, ptr } %t194, ptr %l110, !tbaa !27
  %t195 = load i64, ptr %l14, !tbaa !24
  %t197 = add i64 %t195, 1
  %t201 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t202 = load ptr, ptr %t201, !tbaa !27
  %t203 = getelementptr i64, ptr %t202, i64 %t197
  store i64 %t174, ptr %t203, !tbaa !34
  %t204 = load ptr, ptr %l4, !tbaa !29
  %t206 = getelementptr %"compiler/eval:cfn", ptr %t204, i32 0, i32 13
  %t207 = load { i64, ptr }, ptr %t206, !tbaa !27
  store { i64, ptr } %t207, ptr %l115, !tbaa !27
  %t208 = load i64, ptr %l14, !tbaa !24
  %t210 = add i64 %t208, 2
  %t214 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr i64, ptr %t215, i64 %t210
  store i64 %t176, ptr %t216, !tbaa !34
  %t217 = load ptr, ptr %l4, !tbaa !29
  %t219 = getelementptr %"compiler/eval:cfn", ptr %t217, i32 0, i32 13
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l120, !tbaa !27
  %t221 = load i64, ptr %l14, !tbaa !24
  %t223 = add i64 %t221, 5
  %t227 = getelementptr { i64, ptr }, ptr %l120, i32 0, i32 1
  %t228 = load ptr, ptr %t227, !tbaa !27
  %t229 = getelementptr i64, ptr %t228, i64 %t223
  store i64 %t178, ptr %t229, !tbaa !34
  %t230 = load ptr, ptr %l1, !tbaa !29
  %t232 = getelementptr %"compiler/mir:Fn", ptr %t230, i32 0, i32 7
  %t233 = load i64, ptr %l6, !tbaa !24
  %t236 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t232, i64 %t233)
  store %"compiler/mir:Local" %t236, ptr %l127
  br label %bb43
bb43:
  %t237 = getelementptr %"compiler/mir:Local", ptr %l127, i32 0, i32 2
  %t238 = load i32, ptr %t237, !tbaa !23
  %t240 = sext i32 %t238 to i64
  store i64 %t240, ptr %l19, !tbaa !24
  %t242 = load ptr, ptr %l1, !tbaa !29
  %t244 = getelementptr %"compiler/mir:Fn", ptr %t242, i32 0, i32 7
  %t245 = load i64, ptr %l9, !tbaa !24
  %t248 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t244, i64 %t245)
  store %"compiler/mir:Local" %t248, ptr %l133
  br label %bb44
bb44:
  %t249 = getelementptr %"compiler/mir:Local", ptr %l133, i32 0, i32 2
  %t250 = load i32, ptr %t249, !tbaa !23
  %t252 = sext i32 %t250 to i64
  %t254 = load ptr, ptr %l4, !tbaa !29
  %t256 = getelementptr %"compiler/eval:cfn", ptr %t254, i32 0, i32 13
  %t257 = load { i64, ptr }, ptr %t256, !tbaa !27
  store { i64, ptr } %t257, ptr %l137, !tbaa !27
  %t258 = load i64, ptr %l14, !tbaa !24
  %t260 = add i64 %t258, 7
  %t261 = load i64, ptr %l19, !tbaa !24
  %t264 = getelementptr { i64, ptr }, ptr %l137, i32 0, i32 1
  %t265 = load ptr, ptr %t264, !tbaa !27
  %t266 = getelementptr i64, ptr %t265, i64 %t260
  store i64 %t261, ptr %t266, !tbaa !34
  %t267 = load ptr, ptr %l4, !tbaa !29
  %t269 = getelementptr %"compiler/eval:cfn", ptr %t267, i32 0, i32 13
  %t270 = load { i64, ptr }, ptr %t269, !tbaa !27
  store { i64, ptr } %t270, ptr %l142, !tbaa !27
  %t271 = load i64, ptr %l14, !tbaa !24
  %t273 = add i64 %t271, 8
  %t277 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t278 = load ptr, ptr %t277, !tbaa !27
  %t279 = getelementptr i64, ptr %t278, i64 %t273
  store i64 %t252, ptr %t279, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l12 = alloca { i64, [4 x i64] }
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca %"compiler/mir:Range"
  %l17 = alloca i64
  %l20 = alloca i1
  %l21 = alloca ptr
  %l25 = alloca %"compiler/mir:Local"
  %l27 = alloca i1
  %l32 = alloca ptr
  %l36 = alloca %"compiler/mir:Local"
  %l38 = alloca i64
  %l44 = alloca %"compiler/mir:Local"
  %l48 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l58 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [15 x i64] } %a3, ptr %l3
  store ptr %a4, ptr %l4
  store i64 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a2)
  store i64 %t3, ptr %l17
  br label %bb1
bb1:
  %t4 = load i64, ptr %l17, !tbaa !24
  store i64 %t4, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l20, !tbaa !21
  br label %bb6
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l21, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 7
  %t13 = load i64, ptr %l6, !tbaa !24
  %t16 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t12, i64 %t13)
  store %"compiler/mir:Local" %t16, ptr %l25
  br label %bb4
bb4:
  %t17 = getelementptr %"compiler/mir:Local", ptr %l25, i32 0, i32 2
  %t18 = load i32, ptr %t17, !tbaa !23
  %t19 = load ptr, ptr %l21, !tbaa !29
  %t21 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t19, i32 %t18)
  store i1 %t21, ptr %l27
  br label %bb5
bb5:
  %t22 = load i1, ptr %l27, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l20, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l20, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t30 = mul i64 %t26, %t27
  store i64 %t30, ptr %l7, !tbaa !24
  %t32 = load ptr, ptr %l0, !tbaa !29
  store ptr %t32, ptr %l32, !tbaa !29
  %t33 = load ptr, ptr %l1, !tbaa !29
  %t35 = getelementptr %"compiler/mir:Fn", ptr %t33, i32 0, i32 7
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t35, i64 %t36)
  store %"compiler/mir:Local" %t39, ptr %l36
  br label %bb10
bb10:
  %t40 = getelementptr %"compiler/mir:Local", ptr %l36, i32 0, i32 2
  %t41 = load i32, ptr %t40, !tbaa !23
  %t42 = load ptr, ptr %l32, !tbaa !29
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t42, i32 %t41)
  store i64 %t44, ptr %l38
  br label %bb11
bb11:
  %t45 = load i64, ptr %l38, !tbaa !24
  store i64 %t45, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l6, !tbaa !24
  store i64 %t46, ptr %l9, !tbaa !24
  %t48 = load i64, ptr %l8, !tbaa !24
  store i64 %t48, ptr %l10, !tbaa !24
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t52 = getelementptr %"compiler/mir:Fn", ptr %t50, i32 0, i32 7
  %t53 = load i64, ptr %l6, !tbaa !24
  %t56 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t52, i64 %t53)
  store %"compiler/mir:Local" %t56, ptr %l44
  br label %bb12
bb12:
  %t57 = getelementptr %"compiler/mir:Local", ptr %l44, i32 0, i32 2
  %t58 = load i32, ptr %t57, !tbaa !23
  %t60 = sext i32 %t58 to i64
  %t62 = load ptr, ptr %l4, !tbaa !29
  %t64 = getelementptr %"compiler/eval:cfn", ptr %t62, i32 0, i32 13
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l48, !tbaa !27
  %t66 = load i64, ptr %l7, !tbaa !24
  %t68 = add i64 %t66, 1
  %t69 = load i64, ptr %l9, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr i64, ptr %t73, i64 %t68
  store i64 %t69, ptr %t74, !tbaa !34
  %t75 = load ptr, ptr %l4, !tbaa !29
  %t77 = getelementptr %"compiler/eval:cfn", ptr %t75, i32 0, i32 13
  %t78 = load { i64, ptr }, ptr %t77, !tbaa !27
  store { i64, ptr } %t78, ptr %l53, !tbaa !27
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = add i64 %t79, 2
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t81
  store i64 %t82, ptr %t87, !tbaa !34
  %t88 = load ptr, ptr %l4, !tbaa !29
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t88, i32 0, i32 13
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  store { i64, ptr } %t91, ptr %l58, !tbaa !27
  %t92 = load i64, ptr %l7, !tbaa !24
  %t94 = add i64 %t92, 9
  %t98 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t99 = load ptr, ptr %t98, !tbaa !27
  %t100 = getelementptr i64, ptr %t99, i64 %t94
  store i64 %t60, ptr %t100, !tbaa !34
  %t101 = load { i64, [15 x i64] }, ptr %l3
  %t103 = extractvalue { i64, [15 x i64] } %t101, 0
  %t104 = icmp eq i64 %t103, 0
  br i1 %t104, label %bb13, label %bb14
bb13:
  %t106 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t107 = getelementptr { { i64, [4 x i64] } }, ptr %t106, i32 0, i32 0
  %t108 = load { i64, [4 x i64] }, ptr %t107
  store { i64, [4 x i64] } %t108, ptr %l12
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t110 = load ptr, ptr %l0, !tbaa !29
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t112 = load { i64, [4 x i64] }, ptr %l12
  %t113 = load i64, ptr %l8, !tbaa !24
  %t114 = load ptr, ptr %l4, !tbaa !29
  %t115 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenUse(ptr %v0, ptr %v1, ptr %v2, ptr %t110, ptr %t111, { i64, [4 x i64] } %t112, i64 %t113, ptr %t114, i64 %t115)
  br label %bb16
bb16:
  br label %bb27
bb17:
  %t122 = load { i64, [15 x i64] }, ptr %l3
  %t124 = extractvalue { i64, [15 x i64] } %t122, 0
  %t125 = icmp eq i64 %t124, 3
  br i1 %t125, label %bb18, label %bb19
bb18:
  %t127 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t128 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t127, i32 0, i32 0
  %t129 = load i32, ptr %t128, !range !{i32 0, i32 51}
  store i32 %t129, ptr %l13
  %t131 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t132 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t131, i32 0, i32 1
  %t133 = load i32, ptr %t132
  store i32 %t133, ptr %l14, !tbaa !23
  %t135 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t136 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t135, i32 0, i32 2
  %t137 = load %"compiler/mir:Range", ptr %t136
  store %"compiler/mir:Range" %t137, ptr %l15
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l1, !tbaa !29
  %t141 = load i32, ptr %l13, !range !{i32 0, i32 51}
  %t142 = load i32, ptr %l14, !tbaa !23
  %t143 = load %"compiler/mir:Range", ptr %l15
  %t144 = load i64, ptr %l8, !tbaa !24
  %t145 = load ptr, ptr %l4, !tbaa !29
  %t146 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenPrim(ptr %v0, ptr %v1, ptr %v2, ptr %t139, ptr %t140, i32 %t141, i32 %t142, %"compiler/mir:Range" %t143, i64 %t144, ptr %t145, i64 %t146)
  br label %bb21
bb21:
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_f109e7d1d9d4095f_6bdbe89eeb68f2bb)
  unreachable
bb27:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshDrops(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/eval:genRec"
  %l3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { { i64, ptr }, i64 }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l22 = alloca ptr
  %l25 = alloca i64
  %l27 = alloca i1
  %l32 = alloca i64
  %l38 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l63 = alloca i64
  %l65 = alloca ptr
  %l69 = alloca i32
  %l71 = alloca %"compiler/mir:Local"
  %l77 = alloca { { i64, ptr }, i64 }
  %l81 = alloca i64
  %l85 = alloca i64
  %l88 = alloca i64
  %l110 = alloca i1
  %l111 = alloca i1
  %l116 = alloca i1
  %l118 = alloca ptr
  %l119 = alloca i64
  %l121 = alloca i32
  %l127 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l2, ptr %a2, i64 280, i1 false)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t4 = getelementptr %"compiler/eval:genRec", ptr %l2, i32 0, i32 1
  %t5 = load i64, ptr %t4, !tbaa !24
  %t8 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t5)
  store ptr %t8, ptr %l22
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l22, !tbaa !29
  store ptr %t9, ptr %l3, !tbaa !29
  %t10 = load ptr, ptr %l3, !tbaa !29
  %t12 = getelementptr %"compiler/mir:Fn", ptr %t10, i32 0, i32 5
  %t14 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t12)
  store i64 %t14, ptr %l25
  br label %bb2
bb2:
  %t15 = load i64, ptr %l25, !tbaa !24
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb5
bb4:
  %t18 = getelementptr %"compiler/eval:genRec", ptr %l2, i32 0, i32 4
  %t19 = getelementptr %"compiler/eval:Ptr", ptr %t18, i32 0, i32 0
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l27, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l27, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t25 = load ptr, ptr %l3, !tbaa !29
  %t27 = getelementptr %"compiler/mir:Fn", ptr %t25, i32 0, i32 5
  %t29 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t27)
  store i64 %t29, ptr %l32
  br label %bb9
bb9:
  %t30 = load i64, ptr %l32, !tbaa !24
  %t31 = icmp sge i64 %t30, 0
  br i1 %t31, label %bb10, label %bb11
bb10:
  %t33 = load i64, ptr %l32, !tbaa !24
  %t34 = icmp sle i64 %t33, 2305843009213693951
  br i1 %t34, label %bb12, label %bb13
bb11:
  call void @__olang_check_failed(ptr @olang_loc_8152b1e065150220_eadb27ce8ca90b2c)
  unreachable
bb12:
  %t36 = load i64, ptr %l32, !tbaa !24
  %t37 = mul i64 %t36, 4
  %t38 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t42 = load ptr, ptr %l3, !tbaa !29
  %t44 = getelementptr %"compiler/mir:Fn", ptr %t42, i32 0, i32 5
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t44)
  store i64 %t46, ptr %l38
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_8152b1e065150220_eadb27ce8ca90b2c)
  unreachable
bb14:
  %t47 = load i64, ptr %l38, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t48 = load i64, ptr %l6, !tbaa !24
  %t49 = load i64, ptr %l5, !tbaa !24
  %t52 = icmp sgt i64 %t48, %t49
  br i1 %t52, label %bb15, label %bb16
bb15:
  %t54 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp sgt i64 %t54, 0
  br i1 %t56, label %bb17, label %bb18
bb16:
  store i64 0, ptr %l42, !tbaa !24
  br label %bb20
bb17:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = sub i64 %t58, %t59
  %t63 = load i64, ptr %l7, !tbaa !24
  %t66 = add i64 %t62, %t63
  %t68 = sub i64 %t66, 1
  %t69 = load i64, ptr %l7, !tbaa !24
  %t72 = sdiv i64 %t68, %t69
  store i64 %t72, ptr %l45, !tbaa !24
  br label %bb19
bb18:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb19
bb19:
  %t74 = load i64, ptr %l45, !tbaa !24
  store i64 %t74, ptr %l42, !tbaa !24
  br label %bb20
bb20:
  %t75 = load i64, ptr %l42, !tbaa !24
  store i64 %t75, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t76 = load i64, ptr %l9, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = icmp slt i64 %t76, %t77
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb22, label %bb23
bb22:
  br label %bb28
bb23:
  br label %bb24
bb24:
  %t84 = load i64, ptr %l5, !tbaa !24
  %t85 = load i64, ptr %l9, !tbaa !24
  %t86 = load i64, ptr %l7, !tbaa !24
  %t89 = mul i64 %t85, %t86
  %t92 = add i64 %t84, %t89
  store i64 %t92, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  store i64 %t94, ptr %l63, !tbaa !24
  %t95 = load ptr, ptr %l3, !tbaa !29
  %t97 = getelementptr %"compiler/mir:Fn", ptr %t95, i32 0, i32 7
  store ptr %t97, ptr %l65, !tbaa !29
  %t98 = load ptr, ptr %l3, !tbaa !29
  %t100 = getelementptr %"compiler/mir:Fn", ptr %t98, i32 0, i32 5
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t100, i64 %t101)
  store i32 %t104, ptr %l69
  br label %bb25
bb25:
  %t105 = load i32, ptr %l69, !tbaa !23
  %t106 = sext i32 %t105 to i64
  %t107 = load ptr, ptr %l65, !tbaa !29
  %t109 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %t107, i64 %t106)
  store %"compiler/mir:Local" %t109, ptr %l71
  br label %bb26
bb26:
  %t110 = getelementptr %"compiler/mir:Local", ptr %l71, i32 0, i32 2
  %t111 = load i32, ptr %t110, !tbaa !23
  %t113 = load i64, ptr %l63, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i32, ptr %t115, i64 %t113
  store i32 %t111, ptr %t116, !tbaa !33
  br label %bb27
bb27:
  %t117 = load i64, ptr %l9, !tbaa !24
  %t119 = add i64 %t117, 1
  store i64 %t119, ptr %l9, !tbaa !24
  br label %bb21
bb28:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t125 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t121, { i64, ptr } %t122)
  store { { i64, ptr }, i64 } %t125, ptr %l77
  br label %bb29
bb29:
  %t126 = load { { i64, ptr }, i64 }, ptr %l77
  store { { i64, ptr }, i64 } %t126, ptr %l11
  %t127 = getelementptr { { i64, ptr }, i64 }, ptr %l11, i32 0, i32 0
  %t128 = load { i64, ptr }, ptr %t127, !tbaa !27
  store { i64, ptr } %t128, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t130 = load ptr, ptr %l3, !tbaa !29
  %t132 = getelementptr %"compiler/mir:Fn", ptr %t130, i32 0, i32 5
  %t134 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t132)
  store i64 %t134, ptr %l81
  br label %bb30
bb30:
  %t135 = load i64, ptr %l81, !tbaa !24
  store i64 %t135, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t136 = load i64, ptr %l14, !tbaa !24
  %t137 = load i64, ptr %l13, !tbaa !24
  %t140 = icmp sgt i64 %t136, %t137
  br i1 %t140, label %bb31, label %bb32
bb31:
  %t142 = load i64, ptr %l15, !tbaa !24
  %t144 = icmp sgt i64 %t142, 0
  br i1 %t144, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l85, !tbaa !24
  br label %bb36
bb33:
  %t146 = load i64, ptr %l14, !tbaa !24
  %t147 = load i64, ptr %l13, !tbaa !24
  %t150 = sub i64 %t146, %t147
  %t151 = load i64, ptr %l15, !tbaa !24
  %t154 = add i64 %t150, %t151
  %t156 = sub i64 %t154, 1
  %t157 = load i64, ptr %l15, !tbaa !24
  %t160 = sdiv i64 %t156, %t157
  store i64 %t160, ptr %l88, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l88, !tbaa !24
  br label %bb35
bb35:
  %t162 = load i64, ptr %l88, !tbaa !24
  store i64 %t162, ptr %l85, !tbaa !24
  br label %bb36
bb36:
  %t163 = load i64, ptr %l85, !tbaa !24
  store i64 %t163, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb37
bb37:
  store %olang.scope zeroinitializer, ptr %s6
  %t164 = load i64, ptr %l17, !tbaa !24
  %t165 = load i64, ptr %l16, !tbaa !24
  %t168 = icmp slt i64 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb38, label %bb39
bb38:
  call void @__olang_scope_close(ptr %s6)
  br label %bb55
bb39:
  br label %bb40
bb40:
  %t172 = load i64, ptr %l13, !tbaa !24
  %t173 = load i64, ptr %l17, !tbaa !24
  %t174 = load i64, ptr %l15, !tbaa !24
  %t177 = mul i64 %t173, %t174
  %t180 = add i64 %t172, %t177
  store i64 %t180, ptr %l18, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/eval:Machine", ptr %t182, i32 0, i32 0
  %t185 = load ptr, ptr %t184, !tbaa !29
  %t186 = load i64, ptr %l18, !tbaa !24
  %t188 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t189 = load ptr, ptr %t188, !tbaa !27
  %t190 = getelementptr i32, ptr %t189, i64 %t186
  %t191 = load i32, ptr %t190, !tbaa !33
  %t194 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %t185, i32 %t191)
  store i1 %t194, ptr %l110
  br label %bb41
bb41:
  %t195 = load i1, ptr %l110, !tbaa !21
  br i1 %t195, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb45
bb43:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr %"compiler/eval:Machine", ptr %t196, i32 0, i32 0
  %t199 = load ptr, ptr %t198, !tbaa !29
  %t200 = load i64, ptr %l18, !tbaa !24
  %t202 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t203 = load ptr, ptr %t202, !tbaa !27
  %t204 = getelementptr i32, ptr %t203, i64 %t200
  %t205 = load i32, ptr %t204, !tbaa !33
  %t208 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %t199, i32 %t205)
  store i1 %t208, ptr %l116
  br label %bb44
bb44:
  %t209 = load i1, ptr %l116, !tbaa !21
  %t210 = xor i1 %t209, true
  store i1 %t210, ptr %l111, !tbaa !21
  br label %bb45
bb45:
  %t212 = load i1, ptr %l111, !tbaa !21
  br i1 %t212, label %bb46, label %bb47
bb46:
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb47:
  br label %bb48
bb48:
  %t213 = load ptr, ptr %l0, !tbaa !29
  store ptr %t213, ptr %l118, !tbaa !29
  store i64 %a1, ptr %l119, !tbaa !24
  %t215 = load i64, ptr %l18, !tbaa !24
  %t217 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t218 = load ptr, ptr %t217, !tbaa !27
  %t219 = getelementptr i32, ptr %t218, i64 %t215
  %t220 = load i32, ptr %t219, !tbaa !33
  store i32 %t220, ptr %l121, !tbaa !23
  %t221 = getelementptr %"compiler/eval:genRec", ptr %l2, i32 0, i32 4
  %t222 = getelementptr %"compiler/eval:Ptr", ptr %t221, i32 0, i32 0
  %t223 = load i64, ptr %t222, !tbaa !24
  %t224 = getelementptr %"compiler/eval:genRec", ptr %l2, i32 0, i32 4
  %t225 = getelementptr %"compiler/eval:Ptr", ptr %t224, i32 0, i32 1
  %t226 = load i64, ptr %t225, !tbaa !24
  %t227 = load i64, ptr %l18, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr i64, ptr %t230, i64 %t227
  %t232 = load i64, ptr %t231, !tbaa !34
  %t235 = add i64 %t226, %t232
  %t238 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s6, i64 %t223, i64 %t235)
  store %"compiler/eval:Ptr" %t238, ptr %l127
  br label %bb49
bb49:
  %t239 = load ptr, ptr %l118, !tbaa !29
  %t240 = load i64, ptr %l119, !tbaa !24
  %t241 = load i32, ptr %l121, !tbaa !23
  %t242 = load %"compiler/eval:Ptr", ptr %l127
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %t239, i64 %t240, i32 %t241, %"compiler/eval:Ptr" %t242)
  br label %bb50
bb50:
  %t243 = load ptr, ptr %l0, !tbaa !29
  %t245 = getelementptr %"compiler/eval:Machine", ptr %t243, i32 0, i32 22
  %t246 = load i1, ptr %t245, !tbaa !21
  br i1 %t246, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s6)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb52:
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s6)
  br label %bb54
bb54:
  %t248 = load i64, ptr %l17, !tbaa !24
  %t250 = add i64 %t248, 1
  store i64 %t250, ptr %l17, !tbaa !24
  br label %bb37
bb55:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %a0, double %a1, i32 %a2) #0 {
entry:
  %l1 = alloca double
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i64
  %rv = alloca i64
  store double %a1, ptr %l1
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
  %t14 = load double, ptr %l1, !tbaa !26
  %t16 = fptrunc double %t14 to half
  %t18 = bitcast half %t16 to i16
  %t19 = call i16 asm "", "=r,0"(i16 %t18)
  %t21 = zext i16 %t19 to i64
  store i64 %t21, ptr %l8, !tbaa !24
  br label %bb18
bb5:
  %t23 = load i32, ptr %l3, !tbaa !23
  %t25 = icmp eq i32 %t23, 12
  br i1 %t25, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t27 = load double, ptr %l1, !tbaa !26
  %t29 = fptrunc double %t27 to bfloat
  %t31 = bitcast bfloat %t29 to i16
  %t32 = call i16 asm "", "=r,0"(i16 %t31)
  %t34 = zext i16 %t32 to i64
  store i64 %t34, ptr %l8, !tbaa !24
  br label %bb18
bb9:
  %t36 = load i32, ptr %l3, !tbaa !23
  %t38 = icmp eq i32 %t36, 13
  br i1 %t38, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t40 = load double, ptr %l1, !tbaa !26
  %t42 = fptrunc double %t40 to float
  %t44 = bitcast float %t42 to i32
  %t46 = zext i32 %t44 to i64
  store i64 %t46, ptr %l8, !tbaa !24
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t48 = load double, ptr %l1, !tbaa !26
  %t50 = bitcast double %t48 to i64
  store i64 %t50, ptr %l8, !tbaa !24
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_463be9bfcfc802eb_383f1498b2d4337)
  unreachable
bb18:
  %t53 = load i64, ptr %l8, !tbaa !24
  store i64 %t53, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenIndex(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca { { i64, ptr }, i64 }
  %l14 = alloca i64
  %l20 = alloca i64
  %l24 = alloca i64
  %l27 = alloca i64
  %l45 = alloca i64
  %l47 = alloca ptr
  %l51 = alloca i32
  %l53 = alloca %"compiler/mir:Local"
  %l59 = alloca { { i64, ptr }, i64 }
  %l61 = alloca ptr
  %l62 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l71 = alloca %"compiler/eval:Ptr"
  %l72 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 5
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t3)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
  %t7 = icmp sge i64 %t6, 0
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load i64, ptr %l14, !tbaa !24
  %t10 = icmp sle i64 %t9, 2305843009213693951
  br i1 %t10, label %bb4, label %bb5
bb3:
  call void @__olang_check_failed(ptr @olang_loc_9c073bf56b8103e8_f70ded813690f4)
  unreachable
bb4:
  %t12 = load i64, ptr %l14, !tbaa !24
  %t13 = mul i64 %t12, 4
  %t14 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t13)
  %t15 = insertvalue { i64, ptr } undef, i64 %t12, 0
  %t16 = insertvalue { i64, ptr } %t15, ptr %t14, 1
  store { i64, ptr } %t16, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t18 = load ptr, ptr %l1, !tbaa !29
  %t20 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 5
  %t22 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t20)
  store i64 %t22, ptr %l20
  br label %bb6
bb5:
  call void @__olang_check_failed(ptr @olang_loc_9c073bf56b8103e8_f70ded813690f4)
  unreachable
bb6:
  %t23 = load i64, ptr %l20, !tbaa !24
  store i64 %t23, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t25 = load i64, ptr %l4, !tbaa !24
  %t28 = icmp sgt i64 %t24, %t25
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t32 = icmp sgt i64 %t30, 0
  br i1 %t32, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb12
bb9:
  %t34 = load i64, ptr %l5, !tbaa !24
  %t35 = load i64, ptr %l4, !tbaa !24
  %t38 = sub i64 %t34, %t35
  %t39 = load i64, ptr %l6, !tbaa !24
  %t42 = add i64 %t38, %t39
  %t44 = sub i64 %t42, 1
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = sdiv i64 %t44, %t45
  store i64 %t48, ptr %l27, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l27, !tbaa !24
  br label %bb11
bb11:
  %t50 = load i64, ptr %l27, !tbaa !24
  store i64 %t50, ptr %l24, !tbaa !24
  br label %bb12
bb12:
  %t51 = load i64, ptr %l24, !tbaa !24
  store i64 %t51, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb13
bb13:
  %t52 = load i64, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l7, !tbaa !24
  %t56 = icmp slt i64 %t52, %t53
  %t58 = xor i1 %t56, true
  br i1 %t58, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  br label %bb16
bb16:
  %t60 = load i64, ptr %l4, !tbaa !24
  %t61 = load i64, ptr %l8, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = mul i64 %t61, %t62
  %t68 = add i64 %t60, %t65
  store i64 %t68, ptr %l9, !tbaa !24
  %t70 = load i64, ptr %l9, !tbaa !24
  store i64 %t70, ptr %l45, !tbaa !24
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr %"compiler/mir:Fn", ptr %t71, i32 0, i32 7
  store ptr %t73, ptr %l47, !tbaa !29
  %t74 = load ptr, ptr %l1, !tbaa !29
  %t76 = getelementptr %"compiler/mir:Fn", ptr %t74, i32 0, i32 5
  %t77 = load i64, ptr %l9, !tbaa !24
  %t80 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t76, i64 %t77)
  store i32 %t80, ptr %l51
  br label %bb17
bb17:
  %t81 = load i32, ptr %l51, !tbaa !23
  %t82 = sext i32 %t81 to i64
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t85 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t83, i64 %t82)
  store %"compiler/mir:Local" %t85, ptr %l53
  br label %bb18
bb18:
  %t86 = getelementptr %"compiler/mir:Local", ptr %l53, i32 0, i32 2
  %t87 = load i32, ptr %t86, !tbaa !23
  %t89 = load i64, ptr %l45, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l3, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr i32, ptr %t91, i64 %t89
  store i32 %t87, ptr %t92, !tbaa !33
  br label %bb19
bb19:
  %t93 = load i64, ptr %l8, !tbaa !24
  %t95 = add i64 %t93, 1
  store i64 %t95, ptr %l8, !tbaa !24
  br label %bb13
bb20:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t101 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %s0, ptr %s0, ptr %t97, { i64, ptr } %t98)
  store { { i64, ptr }, i64 } %t101, ptr %l59
  br label %bb21
bb21:
  %t102 = load { { i64, ptr }, i64 }, ptr %l59
  store { { i64, ptr }, i64 } %t102, ptr %l10
  %t103 = getelementptr { { i64, ptr }, i64 }, ptr %l10, i32 0, i32 1
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = load ptr, ptr %l0, !tbaa !29
  store ptr %t106, ptr %l61, !tbaa !29
  %t107 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t108 = load i64, ptr %t107, !tbaa !24
  store i64 %t108, ptr %l62, !tbaa !24
  %t109 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t110 = load i64, ptr %t109, !tbaa !24
  %t114 = add i64 %t110, %t104
  store i64 %t114, ptr %l65, !tbaa !24
  %t115 = load ptr, ptr %l1, !tbaa !29
  %t117 = getelementptr %"compiler/mir:Fn", ptr %t115, i32 0, i32 5
  %t119 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t117)
  store i64 %t119, ptr %l68
  br label %bb22
bb22:
  %t120 = load i64, ptr %l68, !tbaa !24
  %t121 = mul i64 8, %t120
  %t122 = load i64, ptr %l65, !tbaa !24
  %t124 = add i64 %t122, %t121
  %t125 = load i64, ptr %l62, !tbaa !24
  %t127 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t125, i64 %t124)
  store %"compiler/eval:Ptr" %t127, ptr %l71
  br label %bb23
bb23:
  %t128 = load ptr, ptr %l61, !tbaa !29
  %t129 = load %"compiler/eval:Ptr", ptr %l71
  %t130 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t128, %"compiler/eval:Ptr" %t129, i64 8)
  store i64 %t130, ptr %l72
  br label %bb24
bb24:
  call void @__olang_scope_close(ptr %s0)
  %t131 = load i64, ptr %l72, !tbaa !24
  store i64 %t131, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenLive(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i1
  %l15 = alloca { i64, ptr }
  %l20 = alloca i1
  %l22 = alloca { i64, ptr }
  %l26 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t6 = and i64 %t2, %t3
  store i64 %t6, ptr %l2, !tbaa !24
  %t8 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = icmp ne i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 50
  %t17 = load i64, ptr %t16, !tbaa !24
  %t20 = icmp slt i64 %t13, %t17
  store i1 %t20, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t22 = load i1, ptr %l8, !tbaa !21
  br i1 %t22, label %bb4, label %bb5
bb4:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 49
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l15, !tbaa !27
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr %"compiler/eval:alloc", ptr %t30, i64 %t27
  %t32 = getelementptr %"compiler/eval:alloc", ptr %t31, i32 0, i32 4
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t37 = icmp ne i64 %t33, %t34
  store i1 %t37, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t39 = load i1, ptr %l13, !tbaa !21
  br i1 %t39, label %bb7, label %bb8
bb7:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 49
  %t43 = load { i64, ptr }, ptr %t42, !tbaa !27
  store { i64, ptr } %t43, ptr %l22, !tbaa !27
  %t44 = load i64, ptr %l2, !tbaa !24
  %t46 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr %"compiler/eval:alloc", ptr %t47, i64 %t44
  %t49 = getelementptr %"compiler/eval:alloc", ptr %t48, i32 0, i32 3
  %t50 = load i64, ptr %t49, !tbaa !24
  %t51 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t52 = load i64, ptr %t51, !tbaa !24
  %t53 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t53, ptr %l26, !tbaa !24
  %t55 = load i64, ptr %l26, !tbaa !24
  %t56 = load i64, ptr %l26, !tbaa !24
  %t57 = ashr i64 %t52, %t56
  %t60 = icmp eq i64 %t50, %t57
  store i1 %t60, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t62 = load i1, ptr %l20, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenOver(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [7 x i64] } %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l6 = alloca %"compiler/mir:Call"
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i32
  %l14 = alloca i64
  %l17 = alloca ptr
  %l21 = alloca %"compiler/mir:Call"
  %l26 = alloca i64
  %l30 = alloca ptr
  %l34 = alloca ptr
  %l38 = alloca ptr
  %l41 = alloca i32
  %l43 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca i32
  %l56 = alloca i64
  %l57 = alloca ptr
  %l61 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t2 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t5 = icmp ne i64 %a4, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t7)
  store i64 %t9, ptr %l14
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t14 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t10, i64 %t11)
  store ptr %t14, ptr %l17
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l17, !tbaa !29
  %t17 = getelementptr %"compiler/mir:Fn", ptr %t15, i32 0, i32 14
  %t21 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %t17, i64 %a5)
  store %"compiler/mir:Call" %t21, ptr %l21
  br label %bb6
bb6:
  %t22 = load %"compiler/mir:Call", ptr %l21
  store %"compiler/mir:Call" %t22, ptr %l6
  %t23 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 7
  %t24 = load i32, ptr %t23, !tbaa !23
  %t25 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t28 = icmp eq i32 %t24, %t25
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t30)
  store i64 %t32, ptr %l26
  br label %bb9
bb8:
  br label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 25
  %t36 = load i64, ptr %l2, !tbaa !24
  %t39 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s0, ptr %t35, i64 %t36)
  store ptr %t39, ptr %l30
  br label %bb11
bb11:
  %t40 = load ptr, ptr %l30, !tbaa !29
  %t42 = getelementptr %"compiler/mir:Fn", ptr %t40, i32 0, i32 26
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l7, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  store ptr %t48, ptr %l34, !tbaa !29
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 25
  %t52 = load i64, ptr %l2, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l38
  br label %bb12
bb12:
  %t56 = load ptr, ptr %l38, !tbaa !29
  %t58 = getelementptr %"compiler/mir:Fn", ptr %t56, i32 0, i32 1
  %t59 = load i32, ptr %t58, !tbaa !23
  %t60 = load ptr, ptr %l34, !tbaa !29
  %t62 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t60, i32 %t59)
  store i32 %t62, ptr %l41
  br label %bb13
bb13:
  %t63 = load i32, ptr %l41, !tbaa !23
  store i32 %t63, ptr %l8, !tbaa !23
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 0
  %t67 = load ptr, ptr %t66, !tbaa !29
  store ptr %t67, ptr %l43, !tbaa !29
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t74 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %t68, i64 %t69, { i64, [7 x i64] } %a3)
  store i32 %t74, ptr %l47
  br label %bb14
bb14:
  %t75 = load ptr, ptr %l43, !tbaa !29
  %t76 = load i32, ptr %l47, !tbaa !23
  %t77 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t75, i32 %t76)
  store i32 %t77, ptr %l48
  br label %bb15
bb15:
  %t78 = load i32, ptr %l48, !tbaa !23
  store i32 %t78, ptr %l9, !tbaa !23
  %t79 = load i32, ptr %l8, !tbaa !23
  %t80 = load i32, ptr %l9, !tbaa !23
  %t83 = icmp ne i32 %t79, %t80
  br i1 %t83, label %bb16, label %bb17
bb16:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t86 = load i64, ptr %l7, !tbaa !24
  %t87 = load i32, ptr %l8, !tbaa !23
  %t88 = load i32, ptr %l9, !tbaa !23
  %t93 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %t85, i64 %t86, i32 %t87, i32 %t88)
  store i64 %t93, ptr %l56
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t94 = load i64, ptr %l56, !tbaa !24
  store i64 %t94, ptr %l7, !tbaa !24
  br label %bb19
bb19:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l57, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load i64, ptr %l1, !tbaa !24
  %t98 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 6
  %t99 = load i32, ptr %t98, !tbaa !23
  %t103 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t96, i64 %t97, i32 %t99)
  store %"compiler/eval:Ptr" %t103, ptr %l61
  br label %bb20
bb20:
  %t104 = load i64, ptr %l7, !tbaa !24
  %t105 = load ptr, ptr %l57, !tbaa !29
  %t106 = load %"compiler/eval:Ptr", ptr %l61
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t105, %"compiler/eval:Ptr" %t106, i64 4, i64 %t104)
  br label %bb21
bb21:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l1, !tbaa !24
  %t110 = getelementptr %"compiler/mir:Call", ptr %l6, i32 0, i32 7
  %t111 = load i32, ptr %t110, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t108, i64 %t109, i32 %t111)
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintToFloat(ptr %v0, ptr %a0, i64 %a1, i1 %a2, i32 %a3) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i64
  %l9 = alloca i32
  %l13 = alloca i64
  %l36 = alloca i64
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a3)
  store i32 %t8, ptr %l9
  br label %bb1
bb1:
  %t9 = load i32, ptr %l9, !tbaa !23
  store i32 %t9, ptr %l4, !tbaa !23
  br i1 %a2, label %bb2, label %bb3
bb2:
  %t12 = load i64, ptr %l1, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !65
  %t15 = load i32, ptr %l4, !tbaa !23
  %t17 = icmp eq i32 %t15, 11
  br i1 %t17, label %bb4, label %bb5
bb3:
  br label %bb21
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t19 = load i64, ptr %l5, !tbaa !65
  %t21 = uitofp i64 %t19 to double
  %t22 = call double @llvm.arithmetic.fence.f64(double %t21)
  %t23 = fptrunc double %t22 to half
  %t25 = bitcast half %t23 to i16
  %t26 = call i16 asm "", "=r,0"(i16 %t25)
  %t28 = zext i16 %t26 to i64
  store i64 %t28, ptr %l13, !tbaa !24
  br label %bb20
bb7:
  %t30 = load i32, ptr %l4, !tbaa !23
  %t32 = icmp eq i32 %t30, 12
  br i1 %t32, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t34 = load i64, ptr %l5, !tbaa !65
  %t36 = call bfloat @__olang_int_bf16(i64 %t34, i1 false)
  %t38 = bitcast bfloat %t36 to i16
  %t39 = call i16 asm "", "=r,0"(i16 %t38)
  %t41 = zext i16 %t39 to i64
  store i64 %t41, ptr %l13, !tbaa !24
  br label %bb20
bb11:
  %t43 = load i32, ptr %l4, !tbaa !23
  %t45 = icmp eq i32 %t43, 13
  br i1 %t45, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t47 = load i64, ptr %l5, !tbaa !65
  %t49 = uitofp i64 %t47 to float
  %t51 = bitcast float %t49 to i32
  %t53 = zext i32 %t51 to i64
  store i64 %t53, ptr %l13, !tbaa !24
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t55 = load i64, ptr %l5, !tbaa !65
  %t57 = uitofp i64 %t55 to double
  %t59 = bitcast double %t57 to i64
  store i64 %t59, ptr %l13, !tbaa !24
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_20cdf2bac11b5657_20b8fcdfbd19fb1b)
  unreachable
bb20:
  %t62 = load i64, ptr %l13, !tbaa !24
  store i64 %t62, ptr %rv
  br label %ret
bb21:
  %t63 = load i32, ptr %l4, !tbaa !23
  %t65 = icmp eq i32 %t63, 11
  br i1 %t65, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t67 = load i64, ptr %l1, !tbaa !24
  %t69 = sitofp i64 %t67 to double
  %t70 = call double @llvm.arithmetic.fence.f64(double %t69)
  %t71 = fptrunc double %t70 to half
  %t73 = bitcast half %t71 to i16
  %t74 = call i16 asm "", "=r,0"(i16 %t73)
  %t76 = zext i16 %t74 to i64
  store i64 %t76, ptr %l36, !tbaa !24
  br label %bb38
bb25:
  %t78 = load i32, ptr %l4, !tbaa !23
  %t80 = icmp eq i32 %t78, 12
  br i1 %t80, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  %t82 = load i64, ptr %l1, !tbaa !24
  %t84 = icmp slt i64 %t82, 0
  %t85 = sub i64 0, %t82
  %t86 = select i1 %t84, i64 %t85, i64 %t82
  %t87 = call bfloat @__olang_int_bf16(i64 %t86, i1 %t84)
  %t89 = bitcast bfloat %t87 to i16
  %t90 = call i16 asm "", "=r,0"(i16 %t89)
  %t92 = zext i16 %t90 to i64
  store i64 %t92, ptr %l36, !tbaa !24
  br label %bb38
bb29:
  %t94 = load i32, ptr %l4, !tbaa !23
  %t96 = icmp eq i32 %t94, 13
  br i1 %t96, label %bb30, label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb33
bb32:
  %t98 = load i64, ptr %l1, !tbaa !24
  %t100 = sitofp i64 %t98 to float
  %t102 = bitcast float %t100 to i32
  %t104 = zext i32 %t102 to i64
  store i64 %t104, ptr %l36, !tbaa !24
  br label %bb38
bb33:
  br i1 true, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb37
bb36:
  %t106 = load i64, ptr %l1, !tbaa !24
  %t108 = sitofp i64 %t106 to double
  %t110 = bitcast double %t108 to i64
  store i64 %t110, ptr %l36, !tbaa !24
  br label %bb38
bb37:
  call void @__olang_check_failed(ptr @olang_loc_3dd741f2ac40c2b6_e435d9fa661ce11a)
  unreachable
bb38:
  %t113 = load i64, ptr %l36, !tbaa !24
  store i64 %t113, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l11 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l20 = alloca i1
  %l23 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t9 = icmp sge i64 %t7, 64
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l1, !tbaa !24
  store i64 %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load i64, ptr %l1, !tbaa !24
  store i64 %t13, ptr %l11, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = call i64 @compiler_2feval_2ebmask(i64 %t14)
  store i64 %t16, ptr %l13
  br label %bb5
bb5:
  %t17 = load i64, ptr %l11, !tbaa !24
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = and i64 %t17, %t18
  store i64 %t19, ptr %l4, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l2, !tbaa !23
  %t25 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l17
  br label %bb6
bb6:
  %t26 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t27 = load i64, ptr %l17, !tbaa !24
  %t29 = icmp eq i64 %t27, %t26
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = sub i64 %t32, 1
  store i64 %t34, ptr %l23, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = load i64, ptr %l23, !tbaa !24
  %t38 = ashr i64 %t31, %t37
  %t40 = and i64 %t38, 1
  %t42 = icmp eq i64 %t40, 1
  store i1 %t42, ptr %l20, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb9
bb9:
  %t44 = load i1, ptr %l20, !tbaa !21
  br i1 %t44, label %bb10, label %bb11
bb10:
  %t45 = load i64, ptr %l4, !tbaa !24
  store i64 %t45, ptr %l27, !tbaa !24
  %t46 = load i64, ptr %l3, !tbaa !24
  %t48 = call i64 @compiler_2feval_2ebmask(i64 %t46)
  store i64 %t48, ptr %l29
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t49 = load i64, ptr %l29, !tbaa !24
  %t50 = xor i64 %t49, -1
  %t51 = load i64, ptr %l27, !tbaa !24
  %t53 = or i64 %t51, %t50
  store i64 %t53, ptr %rv
  br label %ret
bb13:
  %t55 = load i64, ptr %l4, !tbaa !24
  store i64 %t55, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l8 = alloca i1
  %l9 = alloca i64
  %l12 = alloca i64
  %l14 = alloca i1
  %l18 = alloca %"compiler/eval:scope"
  %l20 = alloca i1
  %l24 = alloca %"compiler/eval:scope"
  %l27 = alloca i64
  %rv = alloca i1
  %t26 = alloca %"compiler/eval:scope", align 8
  %t37 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = icmp ne i64 %t7, 0
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l2, !tbaa !24
  store i64 %t11, ptr %l9, !tbaa !24
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 52
  %t16 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t14)
  store i64 %t16, ptr %l12
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb4
bb3:
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = load i64, ptr %l12, !tbaa !24
  %t19 = icmp slt i64 %t17, %t18
  store i1 %t19, ptr %l8, !tbaa !21
  br label %bb4
bb4:
  %t21 = load i1, ptr %l8, !tbaa !21
  br i1 %t21, label %bb5, label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 52
  %t25 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t26, ptr %v0, ptr %t24, i64 %t25)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t26, i64 152, i1 false)
  br label %bb7
bb6:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb8
bb7:
  %t29 = getelementptr %"compiler/eval:scope", ptr %l18, i32 0, i32 1
  %t30 = load i1, ptr %t29, !tbaa !21
  store i1 %t30, ptr %l14, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l14, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 52
  %t36 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t37, ptr %v0, ptr %t35, i64 %t36)
  call void @llvm.memmove.p0.p0.i64(ptr %l24, ptr %t37, i64 152, i1 false)
  br label %bb11
bb10:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb12
bb11:
  %t40 = getelementptr %"compiler/eval:scope", ptr %l24, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t43, ptr %l27, !tbaa !24
  %t45 = load i64, ptr %l27, !tbaa !24
  %t46 = load i64, ptr %l27, !tbaa !24
  %t47 = ashr i64 %t42, %t46
  %t50 = icmp eq i64 %t41, %t47
  store i1 %t50, ptr %l20, !tbaa !21
  br label %bb12
bb12:
  %t52 = load i1, ptr %l20, !tbaa !21
  store i1 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l12 = alloca i1
  %l17 = alloca ptr
  %l23 = alloca i1
  %l29 = alloca i1
  %l31 = alloca i1
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l53 = alloca { i64, ptr }
  %l55 = alloca { i64, ptr }
  %l59 = alloca { i64, ptr }
  %l64 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l81 = alloca i64
  %l87 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l99 = alloca { i64, ptr }
  %l101 = alloca { i64, ptr }
  %l108 = alloca i1
  %l110 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l119 = alloca { i64, ptr }
  %l126 = alloca { i64, ptr }
  %l134 = alloca { i64, ptr }
  %l135 = alloca i64
  %l143 = alloca i1
  %l144 = alloca { i64, ptr }
  %l150 = alloca ptr
  %l156 = alloca i1
  %l162 = alloca i1
  %l164 = alloca i1
  %l175 = alloca { i64, ptr }
  %l177 = alloca { i64, ptr }
  %l181 = alloca { i64, ptr }
  %l183 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  br label %bb1
bb1:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 59
  %t4 = load i64, ptr %t3, !tbaa !24
  %t8 = icmp sgt i64 %t4, %a1
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 22
  %t13 = load i1, ptr %t12, !tbaa !21
  %t15 = xor i1 %t13, true
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb4
bb3:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t17 = load i1, ptr %l12, !tbaa !21
  %t18 = xor i1 %t17, true
  br i1 %t18, label %bb5, label %bb6
bb5:
  br label %bb65
bb6:
  br label %bb7
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l17, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 14
  %t23 = load i64, ptr %t22, !tbaa !24
  %t25 = add i64 %t23, 1
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 14
  store i64 %t25, ptr %t28, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 2
  %t32 = load i64, ptr %t31, !tbaa !24
  %t34 = icmp sge i64 %t32, 0
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/eval:Machine", ptr %t36, i32 0, i32 14
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 2
  %t43 = load i64, ptr %t42, !tbaa !24
  %t46 = icmp sgt i64 %t39, %t43
  store i1 %t46, ptr %l23, !tbaa !21
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  %t48 = load i1, ptr %l23, !tbaa !21
  br i1 %t48, label %bb11, label %bb12
bb11:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverBudget(ptr %v0, ptr %t49)
  store i1 %t51, ptr %l31
  br label %bb13
bb12:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb14
bb13:
  %t52 = load i1, ptr %l31, !tbaa !21
  store i1 %t52, ptr %l29, !tbaa !21
  br label %bb14
bb14:
  %t53 = load i1, ptr %l29, !tbaa !21
  br i1 %t53, label %bb15, label %bb16
bb15:
  br label %ret
bb16:
  br label %bb17
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/eval:Machine", ptr %t54, i32 0, i32 59
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = sub i64 %t57, 1
  store i64 %t59, ptr %l2, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 62
  %t65 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t63)
  store i64 %t65, ptr %l37
  br label %bb18
bb18:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 58
  %t69 = load { i64, ptr }, ptr %t68, !tbaa !27
  store { i64, ptr } %t69, ptr %l39, !tbaa !27
  %t70 = load i64, ptr %l2, !tbaa !24
  %t72 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = getelementptr %"compiler/eval:frame", ptr %t73, i64 %t70
  %t75 = getelementptr %"compiler/eval:frame", ptr %t74, i32 0, i32 9
  %t76 = load i64, ptr %t75, !tbaa !24
  %t77 = load i64, ptr %l37, !tbaa !24
  %t79 = icmp sgt i64 %t77, %t76
  br i1 %t79, label %bb19, label %bb20
bb19:
  %t81 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %t81)
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb64
bb22:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t83, i32 0, i32 58
  %t86 = load { i64, ptr }, ptr %t85, !tbaa !27
  store { i64, ptr } %t86, ptr %l45, !tbaa !27
  %t87 = load i64, ptr %l2, !tbaa !24
  %t89 = getelementptr { i64, ptr }, ptr %l45, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr %"compiler/eval:frame", ptr %t90, i64 %t87
  %t92 = getelementptr %"compiler/eval:frame", ptr %t91, i32 0, i32 0
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l3, !tbaa !24
  %t95 = load ptr, ptr %l0, !tbaa !29
  %t97 = getelementptr %"compiler/eval:Machine", ptr %t95, i32 0, i32 58
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l49, !tbaa !27
  %t99 = load i64, ptr %l2, !tbaa !24
  %t101 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t102 = load ptr, ptr %t101, !tbaa !27
  %t103 = getelementptr %"compiler/eval:frame", ptr %t102, i64 %t99
  %t104 = getelementptr %"compiler/eval:frame", ptr %t103, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  store i64 %t105, ptr %l4, !tbaa !24
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t109 = getelementptr %"compiler/eval:Machine", ptr %t107, i32 0, i32 26
  %t110 = load { i64, ptr }, ptr %t109, !tbaa !27
  store { i64, ptr } %t110, ptr %l53, !tbaa !27
  %t111 = load i64, ptr %l3, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr %"compiler/eval:cfn", ptr %t114, i64 %t111
  %t116 = getelementptr %"compiler/eval:cfn", ptr %t115, i32 0, i32 8
  %t117 = load { i64, ptr }, ptr %t116, !tbaa !27
  store { i64, ptr } %t117, ptr %l55, !tbaa !27
  %t118 = load i64, ptr %l4, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l55, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i64, ptr %t121, i64 %t118
  %t123 = load i64, ptr %t122, !tbaa !34
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t126 = getelementptr %"compiler/eval:Machine", ptr %t124, i32 0, i32 58
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  store { i64, ptr } %t127, ptr %l59, !tbaa !27
  %t128 = load i64, ptr %l2, !tbaa !24
  %t130 = getelementptr { i64, ptr }, ptr %l59, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr %"compiler/eval:frame", ptr %t131, i64 %t128
  %t133 = getelementptr %"compiler/eval:frame", ptr %t132, i32 0, i32 2
  %t134 = load i64, ptr %t133, !tbaa !24
  %t137 = add i64 %t123, %t134
  store i64 %t137, ptr %l5, !tbaa !24
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t141 = getelementptr %"compiler/eval:Machine", ptr %t139, i32 0, i32 58
  %t142 = load { i64, ptr }, ptr %t141, !tbaa !27
  store { i64, ptr } %t142, ptr %l64, !tbaa !27
  %t143 = load i64, ptr %l2, !tbaa !24
  %t145 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t146 = load ptr, ptr %t145, !tbaa !27
  %t147 = getelementptr %"compiler/eval:frame", ptr %t146, i64 %t143
  %t148 = getelementptr %"compiler/eval:frame", ptr %t147, i32 0, i32 10
  %t149 = load i1, ptr %t148, !tbaa !21
  br i1 %t149, label %bb23, label %bb24
bb23:
  %t151 = load ptr, ptr %l0, !tbaa !29
  %t153 = getelementptr %"compiler/eval:Machine", ptr %t151, i32 0, i32 58
  %t154 = load { i64, ptr }, ptr %t153, !tbaa !27
  store { i64, ptr } %t154, ptr %l68, !tbaa !27
  %t155 = load i64, ptr %l2, !tbaa !24
  %t157 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t158 = load ptr, ptr %t157, !tbaa !27
  %t159 = getelementptr %"compiler/eval:frame", ptr %t158, i64 %t155
  %t160 = getelementptr %"compiler/eval:frame", ptr %t159, i32 0, i32 10
  store i1 false, ptr %t160, !tbaa !21
  %t161 = load i64, ptr %l5, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 26
  %t165 = load { i64, ptr }, ptr %t164, !tbaa !27
  store { i64, ptr } %t165, ptr %l72, !tbaa !27
  %t166 = load i64, ptr %l3, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr %"compiler/eval:cfn", ptr %t169, i64 %t166
  %t171 = getelementptr %"compiler/eval:cfn", ptr %t170, i32 0, i32 8
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  store { i64, ptr } %t172, ptr %l74, !tbaa !27
  %t173 = load i64, ptr %l4, !tbaa !24
  %t175 = add i64 %t173, 1
  %t177 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t178 = load ptr, ptr %t177, !tbaa !27
  %t179 = getelementptr i64, ptr %t178, i64 %t175
  %t180 = load i64, ptr %t179, !tbaa !34
  %t183 = icmp slt i64 %t161, %t180
  br i1 %t183, label %bb25, label %bb26
bb24:
  br label %bb29
bb25:
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/eval:Machine", ptr %t185, i32 0, i32 58
  %t188 = load { i64, ptr }, ptr %t187, !tbaa !27
  store { i64, ptr } %t188, ptr %l80, !tbaa !27
  %t189 = load i64, ptr %l2, !tbaa !24
  store i64 %t189, ptr %l81, !tbaa !24
  %t190 = load i64, ptr %l81, !tbaa !24
  %t191 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t192 = load ptr, ptr %t191, !tbaa !27
  %t193 = getelementptr %"compiler/eval:frame", ptr %t192, i64 %t190
  %t194 = getelementptr %"compiler/eval:frame", ptr %t193, i32 0, i32 2
  %t195 = load i64, ptr %t194, !tbaa !24
  %t197 = add i64 %t195, 1
  %t199 = load i64, ptr %l81, !tbaa !24
  %t200 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t201 = load ptr, ptr %t200, !tbaa !27
  %t202 = getelementptr %"compiler/eval:frame", ptr %t201, i64 %t199
  %t203 = getelementptr %"compiler/eval:frame", ptr %t202, i32 0, i32 2
  store i64 %t197, ptr %t203, !tbaa !24
  br label %bb28
bb26:
  %t204 = load ptr, ptr %l0, !tbaa !29
  %t205 = load i64, ptr %l2, !tbaa !24
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t208 = getelementptr %"compiler/eval:Machine", ptr %t206, i32 0, i32 26
  %t209 = load { i64, ptr }, ptr %t208, !tbaa !27
  store { i64, ptr } %t209, ptr %l87, !tbaa !27
  %t210 = load i64, ptr %l3, !tbaa !24
  %t212 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t213 = load ptr, ptr %t212, !tbaa !27
  %t214 = getelementptr %"compiler/eval:cfn", ptr %t213, i64 %t210
  %t215 = getelementptr %"compiler/eval:cfn", ptr %t214, i32 0, i32 9
  %t216 = load { i64, ptr }, ptr %t215, !tbaa !27
  store { i64, ptr } %t216, ptr %l89, !tbaa !27
  %t217 = load i64, ptr %l4, !tbaa !24
  %t219 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t220 = load ptr, ptr %t219, !tbaa !27
  %t221 = getelementptr { i64, [8 x i64] }, ptr %t220, i64 %t217
  %t222 = load { i64, [8 x i64] }, ptr %t221
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/eval:Machine", ptr %t223, i32 0, i32 26
  %t226 = load { i64, ptr }, ptr %t225, !tbaa !27
  store { i64, ptr } %t226, ptr %l93, !tbaa !27
  %t227 = load i64, ptr %l3, !tbaa !24
  %t229 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t230 = load ptr, ptr %t229, !tbaa !27
  %t231 = getelementptr %"compiler/eval:cfn", ptr %t230, i64 %t227
  %t232 = getelementptr %"compiler/eval:cfn", ptr %t231, i32 0, i32 11
  %t233 = load { i64, ptr }, ptr %t232, !tbaa !27
  store { i64, ptr } %t233, ptr %l95, !tbaa !27
  %t234 = load i64, ptr %l4, !tbaa !24
  %t236 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t237 = load ptr, ptr %t236, !tbaa !27
  %t238 = getelementptr i1, ptr %t237, i64 %t234
  %t239 = load i1, ptr %t238, !tbaa !31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eterm(ptr %v0, ptr %t204, i64 %t205, { i64, [8 x i64] } %t222, i1 %t239)
  br label %bb27
bb27:
  br label %bb28
bb28:
  br label %bb64
bb29:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t246 = getelementptr %"compiler/eval:Machine", ptr %t244, i32 0, i32 26
  %t247 = load { i64, ptr }, ptr %t246, !tbaa !27
  store { i64, ptr } %t247, ptr %l99, !tbaa !27
  %t248 = load i64, ptr %l3, !tbaa !24
  %t250 = getelementptr { i64, ptr }, ptr %l99, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !27
  %t252 = getelementptr %"compiler/eval:cfn", ptr %t251, i64 %t248
  %t253 = getelementptr %"compiler/eval:cfn", ptr %t252, i32 0, i32 8
  %t254 = load { i64, ptr }, ptr %t253, !tbaa !27
  store { i64, ptr } %t254, ptr %l101, !tbaa !27
  %t255 = load i64, ptr %l4, !tbaa !24
  %t257 = add i64 %t255, 1
  %t259 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t260 = load ptr, ptr %t259, !tbaa !27
  %t261 = getelementptr i64, ptr %t260, i64 %t257
  %t262 = load i64, ptr %t261, !tbaa !34
  store i64 %t262, ptr %l6, !tbaa !24
  %t264 = load i64, ptr %l5, !tbaa !24
  %t265 = load i64, ptr %l6, !tbaa !24
  %t268 = icmp slt i64 %t264, %t265
  br i1 %t268, label %bb30, label %bb31
bb30:
  %t270 = load ptr, ptr %l0, !tbaa !29
  %t272 = getelementptr %"compiler/eval:Machine", ptr %t270, i32 0, i32 26
  %t273 = load { i64, ptr }, ptr %t272, !tbaa !27
  store { i64, ptr } %t273, ptr %l110, !tbaa !27
  %t274 = load i64, ptr %l3, !tbaa !24
  %t276 = getelementptr { i64, ptr }, ptr %l110, i32 0, i32 1
  %t277 = load ptr, ptr %t276, !tbaa !27
  %t278 = getelementptr %"compiler/eval:cfn", ptr %t277, i64 %t274
  %t279 = getelementptr %"compiler/eval:cfn", ptr %t278, i32 0, i32 13
  %t280 = load { i64, ptr }, ptr %t279, !tbaa !27
  store { i64, ptr } %t280, ptr %l112, !tbaa !27
  %t281 = load i64, ptr %l5, !tbaa !24
  %t282 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t285 = mul i64 %t281, %t282
  %t287 = getelementptr { i64, ptr }, ptr %l112, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i64, ptr %t288, i64 %t285
  %t290 = load i64, ptr %t289, !tbaa !34
  %t292 = icmp ne i64 %t290, 0
  store i1 %t292, ptr %l108, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l108, !tbaa !21
  br label %bb32
bb32:
  %t294 = load i1, ptr %l108, !tbaa !21
  br i1 %t294, label %bb33, label %bb34
bb33:
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t297 = getelementptr %"compiler/eval:Machine", ptr %t295, i32 0, i32 26
  %t298 = load { i64, ptr }, ptr %t297, !tbaa !27
  store { i64, ptr } %t298, ptr %l119, !tbaa !27
  %t299 = load i64, ptr %l3, !tbaa !24
  %t301 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t302 = load ptr, ptr %t301, !tbaa !27
  %t303 = getelementptr %"compiler/eval:cfn", ptr %t302, i64 %t299
  %t304 = getelementptr %"compiler/eval:cfn", ptr %t303, i32 0, i32 13
  %t305 = load { i64, ptr }, ptr %t304, !tbaa !27
  store { i64, ptr } %t305, ptr %l7, !tbaa !27
  br label %bb35
bb34:
  br label %bb58
bb35:
  %t307 = load ptr, ptr %l0, !tbaa !29
  %t308 = load i64, ptr %l2, !tbaa !24
  %t309 = load i64, ptr %l3, !tbaa !24
  %t310 = load i64, ptr %l5, !tbaa !24
  %t311 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t311, ptr %l126, !tbaa !27
  %t312 = load i64, ptr %l5, !tbaa !24
  %t313 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t316 = mul i64 %t312, %t313
  %t318 = getelementptr { i64, ptr }, ptr %l126, i32 0, i32 1
  %t319 = load ptr, ptr %t318, !tbaa !27
  %t320 = getelementptr i64, ptr %t319, i64 %t316
  %t321 = load i64, ptr %t320, !tbaa !34
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %t307, i64 %t308, i64 %t309, i64 %t310, i64 %t321)
  br label %bb36
bb36:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 22
  %t330 = load i1, ptr %t329, !tbaa !21
  br i1 %t330, label %bb37, label %bb38
bb37:
  br label %ret
bb38:
  br label %bb39
bb39:
  %t332 = load ptr, ptr %l0, !tbaa !29
  %t334 = getelementptr %"compiler/eval:Machine", ptr %t332, i32 0, i32 58
  %t335 = load { i64, ptr }, ptr %t334, !tbaa !27
  store { i64, ptr } %t335, ptr %l134, !tbaa !27
  %t336 = load i64, ptr %l2, !tbaa !24
  store i64 %t336, ptr %l135, !tbaa !24
  %t337 = load i64, ptr %l135, !tbaa !24
  %t338 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t339 = load ptr, ptr %t338, !tbaa !27
  %t340 = getelementptr %"compiler/eval:frame", ptr %t339, i64 %t337
  %t341 = getelementptr %"compiler/eval:frame", ptr %t340, i32 0, i32 2
  %t342 = load i64, ptr %t341, !tbaa !24
  %t344 = add i64 %t342, 1
  %t346 = load i64, ptr %l135, !tbaa !24
  %t347 = getelementptr { i64, ptr }, ptr %l134, i32 0, i32 1
  %t348 = load ptr, ptr %t347, !tbaa !27
  %t349 = getelementptr %"compiler/eval:frame", ptr %t348, i64 %t346
  %t350 = getelementptr %"compiler/eval:frame", ptr %t349, i32 0, i32 2
  store i64 %t344, ptr %t350, !tbaa !24
  %t351 = load i64, ptr %l5, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l5, !tbaa !24
  %t355 = load i64, ptr %l5, !tbaa !24
  %t356 = load i64, ptr %l6, !tbaa !24
  %t359 = icmp sge i64 %t355, %t356
  br i1 %t359, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l143, !tbaa !21
  br label %bb42
bb41:
  %t361 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t361, ptr %l144, !tbaa !27
  %t362 = load i64, ptr %l5, !tbaa !24
  %t363 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t366 = mul i64 %t362, %t363
  %t368 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t369 = load ptr, ptr %t368, !tbaa !27
  %t370 = getelementptr i64, ptr %t369, i64 %t366
  %t371 = load i64, ptr %t370, !tbaa !34
  %t373 = icmp eq i64 %t371, 0
  store i1 %t373, ptr %l143, !tbaa !21
  br label %bb42
bb42:
  %t375 = load i1, ptr %l143, !tbaa !21
  br i1 %t375, label %bb43, label %bb44
bb43:
  br label %bb57
bb44:
  br label %bb45
bb45:
  %t376 = load ptr, ptr %l0, !tbaa !29
  store ptr %t376, ptr %l150, !tbaa !29
  %t377 = load ptr, ptr %l150, !tbaa !29
  %t378 = getelementptr %"compiler/eval:Machine", ptr %t377, i32 0, i32 14
  %t379 = load i64, ptr %t378, !tbaa !24
  %t381 = add i64 %t379, 1
  %t383 = load ptr, ptr %l150, !tbaa !29
  %t384 = getelementptr %"compiler/eval:Machine", ptr %t383, i32 0, i32 14
  store i64 %t381, ptr %t384, !tbaa !24
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/eval:Machine", ptr %t385, i32 0, i32 2
  %t388 = load i64, ptr %t387, !tbaa !24
  %t390 = icmp sge i64 %t388, 0
  br i1 %t390, label %bb46, label %bb47
bb46:
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 14
  %t395 = load i64, ptr %t394, !tbaa !24
  %t396 = load ptr, ptr %l0, !tbaa !29
  %t398 = getelementptr %"compiler/eval:Machine", ptr %t396, i32 0, i32 2
  %t399 = load i64, ptr %t398, !tbaa !24
  %t402 = icmp sgt i64 %t395, %t399
  store i1 %t402, ptr %l156, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb48
bb48:
  %t404 = load i1, ptr %l156, !tbaa !21
  br i1 %t404, label %bb49, label %bb50
bb49:
  %t405 = load ptr, ptr %l0, !tbaa !29
  %t407 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverBudget(ptr %v0, ptr %t405)
  store i1 %t407, ptr %l164
  br label %bb51
bb50:
  store i1 false, ptr %l162, !tbaa !21
  br label %bb52
bb51:
  %t408 = load i1, ptr %l164, !tbaa !21
  store i1 %t408, ptr %l162, !tbaa !21
  br label %bb52
bb52:
  %t409 = load i1, ptr %l162, !tbaa !21
  br i1 %t409, label %bb53, label %bb54
bb53:
  br label %ret
bb54:
  br label %bb55
bb55:
  br label %bb56
bb56:
  br label %bb35
bb57:
  br label %bb64
bb58:
  %t410 = load i64, ptr %l5, !tbaa !24
  %t411 = load i64, ptr %l6, !tbaa !24
  %t414 = icmp slt i64 %t410, %t411
  br i1 %t414, label %bb59, label %bb60
bb59:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load i64, ptr %l2, !tbaa !24
  %t418 = load i64, ptr %l3, !tbaa !24
  %t419 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estmtAt(ptr %v0, ptr %t416, i64 %t417, i64 %t418, i64 %t419)
  br label %bb61
bb60:
  %t424 = load ptr, ptr %l0, !tbaa !29
  %t425 = load i64, ptr %l2, !tbaa !24
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t428 = getelementptr %"compiler/eval:Machine", ptr %t426, i32 0, i32 26
  %t429 = load { i64, ptr }, ptr %t428, !tbaa !27
  store { i64, ptr } %t429, ptr %l175, !tbaa !27
  %t430 = load i64, ptr %l3, !tbaa !24
  %t432 = getelementptr { i64, ptr }, ptr %l175, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = getelementptr %"compiler/eval:cfn", ptr %t433, i64 %t430
  %t435 = getelementptr %"compiler/eval:cfn", ptr %t434, i32 0, i32 9
  %t436 = load { i64, ptr }, ptr %t435, !tbaa !27
  store { i64, ptr } %t436, ptr %l177, !tbaa !27
  %t437 = load i64, ptr %l4, !tbaa !24
  %t439 = getelementptr { i64, ptr }, ptr %l177, i32 0, i32 1
  %t440 = load ptr, ptr %t439, !tbaa !27
  %t441 = getelementptr { i64, [8 x i64] }, ptr %t440, i64 %t437
  %t442 = load { i64, [8 x i64] }, ptr %t441
  %t443 = load ptr, ptr %l0, !tbaa !29
  %t445 = getelementptr %"compiler/eval:Machine", ptr %t443, i32 0, i32 26
  %t446 = load { i64, ptr }, ptr %t445, !tbaa !27
  store { i64, ptr } %t446, ptr %l181, !tbaa !27
  %t447 = load i64, ptr %l3, !tbaa !24
  %t449 = getelementptr { i64, ptr }, ptr %l181, i32 0, i32 1
  %t450 = load ptr, ptr %t449, !tbaa !27
  %t451 = getelementptr %"compiler/eval:cfn", ptr %t450, i64 %t447
  %t452 = getelementptr %"compiler/eval:cfn", ptr %t451, i32 0, i32 11
  %t453 = load { i64, ptr }, ptr %t452, !tbaa !27
  store { i64, ptr } %t453, ptr %l183, !tbaa !27
  %t454 = load i64, ptr %l4, !tbaa !24
  %t456 = getelementptr { i64, ptr }, ptr %l183, i32 0, i32 1
  %t457 = load ptr, ptr %t456, !tbaa !27
  %t458 = getelementptr i1, ptr %t457, i64 %t454
  %t459 = load i1, ptr %t458, !tbaa !31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eterm(ptr %v0, ptr %t424, i64 %t425, { i64, [8 x i64] } %t442, i1 %t459)
  br label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  br label %bb1
bb65:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enamedShape(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l6 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l22 = alloca i64
  %rv = alloca i64
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  %t7 = load ptr, ptr %l2, !tbaa !29
  %t8 = load i32, ptr %l1, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l9
  br label %bb1
bb1:
  %t12 = load ptr, ptr %l6, !tbaa !29
  %t13 = load i32, ptr %l9, !tbaa !23
  %t14 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t14, ptr %l10
  br label %bb2
bb2:
  %t15 = load i32, ptr %l10, !range !{i32 0, i32 6}
  store i32 %t15, ptr %l3
  %t16 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t18 = trunc i64 0 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  store i64 %t21, ptr %l11, !tbaa !24
  br label %bb24
bb6:
  %t23 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t25 = trunc i64 1 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb15
bb9:
  %t28 = load ptr, ptr %l2, !tbaa !29
  store ptr %t28, ptr %l17, !tbaa !29
  %t29 = load ptr, ptr %l2, !tbaa !29
  %t30 = load i32, ptr %l1, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t29, i32 %t30)
  store i32 %t33, ptr %l20
  br label %bb10
bb10:
  %t34 = load ptr, ptr %l17, !tbaa !29
  %t35 = load i32, ptr %l20, !tbaa !23
  %t36 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t34, i32 %t35)
  store i1 %t36, ptr %l21
  br label %bb11
bb11:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb12, label %bb13
bb12:
  %t38 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  store i64 %t38, ptr %l22, !tbaa !24
  br label %bb14
bb13:
  %t40 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t40, ptr %l22, !tbaa !24
  br label %bb14
bb14:
  %t42 = load i64, ptr %l22, !tbaa !24
  store i64 %t42, ptr %l11, !tbaa !24
  br label %bb24
bb15:
  %t43 = load i32, ptr %l3, !range !{i32 0, i32 6}
  %t45 = trunc i64 2 to i32
  %t46 = icmp eq i32 %t43, %t45
  br i1 %t46, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t48 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t48, ptr %l11, !tbaa !24
  br label %bb24
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  %t50 = load i64, ptr @G_2ecompiler_2feval_2evNone, !tbaa !24
  store i64 %t50, ptr %l11, !tbaa !24
  br label %bb24
bb23:
  call void @__olang_check_failed(ptr @olang_loc_3ad4fb4c50638c0b_118ff119db9b3957)
  unreachable
bb24:
  %t52 = load i64, ptr %l11, !tbaa !24
  store i64 %t52, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:scope"
  %l21 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l27 = alloca i64
  %l31 = alloca %"compiler/eval:scope"
  %l53 = alloca %"compiler/eval:scope"
  %l55 = alloca i64
  %rv = alloca i64
  %t20 = alloca %"compiler/eval:scope", align 8
  %t82 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 53
  %t5 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t3)
  %t6 = extractvalue { i32, i64 } %t5, 1
  %t7 = extractvalue { i32, i64 } %t5, 0
  store i32 %t7, ptr %l25
  %t8 = icmp ne i32 %t7, 0
  br i1 %t8, label %bb2, label %ok.9, !prof !99
ok.9:
  store i64 %t6, ptr %l24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l24, !tbaa !24
  store i64 %t10, ptr %l21, !tbaa !24
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScopeSlot(ptr %v0, ptr %t11)
  store i64 %t13, ptr %l27
  br label %bb4
bb4:
  %t14 = load i64, ptr %l27, !tbaa !24
  store i64 %t14, ptr %l21, !tbaa !24
  br label %bb5
bb5:
  %t15 = load i64, ptr %l21, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 52
  %t19 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t20, ptr %v0, ptr %t18, i64 %t19)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %t20, i64 152, i1 false)
  br label %bb6
bb6:
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l31, i64 152, i1 false)
  %t27 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 1
  store i1 true, ptr %t27, !tbaa !21
  %t30 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 2
  store i64 %a1, ptr %t30, !tbaa !24
  %t33 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 3
  store i64 0, ptr %t33, !tbaa !24
  %t36 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 4
  store i64 -1, ptr %t36, !tbaa !24
  %t39 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 5
  store i64 0, ptr %t39, !tbaa !24
  %t42 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 6
  store i64 0, ptr %t42, !tbaa !24
  %t45 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 7
  store i64 0, ptr %t45, !tbaa !24
  %t48 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 8
  store i64 0, ptr %t48, !tbaa !24
  %t51 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 9
  store i64 0, ptr %t51, !tbaa !24
  %t54 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 10
  store i64 -1, ptr %t54, !tbaa !24
  %t57 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 11
  store i64 -1, ptr %t57, !tbaa !24
  %t60 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 12
  store i64 0, ptr %t60, !tbaa !24
  %t63 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 14
  store i64 0, ptr %t63, !tbaa !24
  %t66 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 16
  store i64 0, ptr %t66, !tbaa !24
  %t69 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 17
  store i64 -1, ptr %t69, !tbaa !24
  %t72 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 18
  store i1 false, ptr %t72, !tbaa !21
  %t75 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 19
  store i1 false, ptr %t75, !tbaa !21
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/eval:Machine", ptr %t76, i32 0, i32 52
  %t79 = load i64, ptr %l2, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %l3, i64 152, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t82, ptr %l53, i64 152, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t78, i64 %t79, ptr %t82)
  br label %bb7
bb7:
  %t83 = getelementptr %"compiler/eval:scope", ptr %l3, i32 0, i32 0
  %t84 = load i64, ptr %t83, !tbaa !24
  %t85 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t85, ptr %l55, !tbaa !24
  %t87 = load i64, ptr %l55, !tbaa !24
  %t88 = load i64, ptr %l55, !tbaa !24
  %t89 = shl i64 %t84, %t88
  %t90 = load i64, ptr %l2, !tbaa !24
  %t93 = or i64 %t89, %t90
  store i64 %t93, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScopeSlot(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca %"compiler/eval:scope"
  %l6 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i64
  %t4 = alloca %"compiler/eval:scope", align 8
  %t6 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 52
  store ptr %t3, ptr %l2, !tbaa !29
  call void @compiler_2feval_3ascope_2ector(ptr %t4, ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t4, i64 152, i1 false)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l2, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t6, ptr %l3, i64 152, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ePush_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t5, ptr %t6)
  br label %bb2
bb2:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 52
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t9)
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i64
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i1
  %l27 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l43 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %t1, i32 %t2, i1 false)
  store i1 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i1, ptr %l9, !tbaa !21
  br i1 %t6, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l1, !tbaa !23
  %t12 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t8, i32 %t9)
  store i64 %t12, ptr %l13
  br label %bb5
bb5:
  %t13 = load i64, ptr %l13, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t18 = icmp eq i64 %t14, %t15
  br i1 %t18, label %bb6, label %bb7
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  store ptr %t20, ptr %l17, !tbaa !29
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l20
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i32, ptr %l20, !tbaa !23
  %t28 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t26, i32 %t27)
  store i1 %t28, ptr %l21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l21, !tbaa !21
  store i1 %t29, ptr %rv
  br label %ret
bb10:
  %t30 = load i64, ptr %l2, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t34 = icmp ne i64 %t30, %t31
  br i1 %t34, label %bb11, label %bb12
bb11:
  store i1 false, ptr %rv
  br label %ret
bb12:
  br label %bb13
bb13:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l27, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l30
  br label %bb14
bb14:
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = load i32, ptr %l30, !tbaa !23
  %t48 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t46, i32 %t47)
  store { i64, ptr } %t48, ptr %l31
  br label %bb15
bb15:
  %t49 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t49, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t50 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t52 = extractvalue { i64, ptr } %t50, 0
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb16
bb16:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t58 = icmp slt i64 %t54, %t55
  %t60 = xor i1 %t58, true
  br i1 %t60, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  br label %bb19
bb19:
  %t62 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t62, ptr %l38, !tbaa !27
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t66 = load ptr, ptr %t65, !tbaa !27
  %t67 = getelementptr i32, ptr %t66, i64 %t63
  %t68 = load i32, ptr %t67, !tbaa !33
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t74 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumbersOnly(ptr %v0, ptr %t70, i32 %t68)
  store i1 %t74, ptr %l43
  br label %bb20
bb20:
  %t75 = load i1, ptr %l43, !tbaa !21
  %t76 = xor i1 %t75, true
  br i1 %t76, label %bb21, label %bb22
bb21:
  store i1 false, ptr %rv
  br label %ret
bb22:
  br label %bb23
bb23:
  br label %bb24
bb24:
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb16
bb25:
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l14 = alloca i32
  %l16 = alloca ptr
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca %"compiler/eval:Ptr"
  %l24 = alloca %"compiler/eval:Ptr"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t1, i32 %a2)
  store i32 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i32, ptr %l6, !tbaa !23
  store i32 %t6, ptr %l3, !tbaa !23
  %t7 = load i32, ptr %l3, !tbaa !23
  %t8 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t11 = icmp ne i32 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  %t17 = load i32, ptr %l3, !tbaa !23
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t16, i32 %t17)
  store i32 %t20, ptr %l14
  br label %bb4
bb3:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb5
bb4:
  %t21 = load i32, ptr %l14, !tbaa !23
  %t22 = icmp eq i32 %t21, 0
  store i1 %t22, ptr %l10, !tbaa !21
  br label %bb5
bb5:
  %t24 = load i1, ptr %l10, !tbaa !21
  br i1 %t24, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l16, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t27 = load i64, ptr %t26, !tbaa !24
  %t28 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t29 = load i64, ptr %t28, !tbaa !24
  %t31 = add i64 %t29, 8
  %t34 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t27, i64 %t31)
  store %"compiler/eval:Ptr" %t34, ptr %l20
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t35 = load ptr, ptr %l16, !tbaa !29
  %t36 = load %"compiler/eval:Ptr", ptr %l20
  %t37 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t35, %"compiler/eval:Ptr" %t36)
  store %"compiler/eval:Ptr" %t37, ptr %l21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s1)
  %t38 = load %"compiler/eval:Ptr", ptr %l21
  store %"compiler/eval:Ptr" %t38, ptr %rv
  br label %ret
bb10:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t40 = load %"compiler/eval:Ptr", ptr %l1
  %t43 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t39, %"compiler/eval:Ptr" %t40)
  store %"compiler/eval:Ptr" %t43, ptr %l24
  br label %bb11
bb11:
  %t44 = load %"compiler/eval:Ptr", ptr %l24
  store %"compiler/eval:Ptr" %t44, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca ptr
  %l9 = alloca %"compiler/eval:Ptr"
  %l13 = alloca i32
  %l14 = alloca %"compiler/eval:Ptr"
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l2
  %t7 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3, i64 1)
  store %"compiler/eval:Ptr" %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load %"compiler/eval:Ptr", ptr %l7
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  store %"compiler/eval:Ptr" %t8, ptr %l9
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t13 = load { i64, [4 x i64] }, ptr %l2
  %t17 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t11, i64 %t12, { i64, [4 x i64] } %t13)
  store i32 %t17, ptr %l13
  br label %bb2
bb2:
  %t18 = load ptr, ptr %l8, !tbaa !29
  %t19 = load %"compiler/eval:Ptr", ptr %l9
  %t20 = load i32, ptr %l13, !tbaa !23
  %t21 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %t18, %"compiler/eval:Ptr" %t19, i32 %t20)
  store %"compiler/eval:Ptr" %t21, ptr %l14
  br label %bb3
bb3:
  %t22 = load %"compiler/eval:Ptr", ptr %l14
  store %"compiler/eval:Ptr" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca { i64, i64 }
  %l12 = alloca { i64, i64 }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca { i64, i64 }
  %l17 = alloca i64
  %l18 = alloca { i64, i64 }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, i64 }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i1
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, i64 }
  %l28 = alloca i64
  %l29 = alloca i64
  %l30 = alloca { i64, i64 }
  %l31 = alloca { i64, i64 }
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca { i64, i64, i64, i64 }
  %l36 = alloca i64
  %l37 = alloca { i64, i64 }
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca { i64, i64 }
  %l41 = alloca { i64, i64 }
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca { i64, i64 }
  %l48 = alloca { i64, [4 x i64] }
  %l52 = alloca i32
  %l55 = alloca i64
  %l57 = alloca ptr
  %l61 = alloca i32
  %l62 = alloca i1
  %l68 = alloca i64
  %l71 = alloca ptr
  %l75 = alloca i64
  %l77 = alloca double
  %l80 = alloca i1
  %l85 = alloca { i64, i64 }
  %l88 = alloca i64
  %l89 = alloca i64
  %l92 = alloca i64
  %l95 = alloca i1
  %l97 = alloca ptr
  %l101 = alloca i32
  %l102 = alloca i1
  %l106 = alloca i1
  %l111 = alloca { i64, i64 }
  %l120 = alloca i1
  %l124 = alloca { i64, i64 }
  %l130 = alloca i1
  %l134 = alloca ptr
  %l135 = alloca i64
  %l139 = alloca { i64, [4 x i64] }
  %l140 = alloca { i64, i64 }
  %l146 = alloca { i64, i64 }
  %l150 = alloca i1
  %l154 = alloca i1
  %l158 = alloca i1
  %l161 = alloca i1
  %l167 = alloca i1
  %l176 = alloca i1
  %l181 = alloca { i64, i64 }
  %l187 = alloca i1
  %l192 = alloca { i64, i64 }
  %l197 = alloca i1
  %l200 = alloca i1
  %l203 = alloca i1
  %l211 = alloca { i64, i64 }
  %l218 = alloca { i64, i64, i64, i64 }
  %l224 = alloca i1
  %l231 = alloca { i64, i64 }
  %l237 = alloca { i64, i64 }
  %l244 = alloca i64
  %l250 = alloca { i64, i64 }
  %l259 = alloca { i64, i64 }
  %l268 = alloca i1
  %l278 = alloca i64
  %l284 = alloca i64
  %l293 = alloca i1
  %l304 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load %"compiler/mir:Range", ptr %l4
  %t7 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Range" %t3, i64 0)
  store { i64, [4 x i64] } %t7, ptr %l48
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l48
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l5
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l52
  br label %bb2
bb2:
  %t16 = load i32, ptr %l52, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t17, i32 %t18)
  store i64 %t21, ptr %l55
  br label %bb3
bb3:
  %t22 = load i64, ptr %l55, !tbaa !24
  store i64 %t22, ptr %l7, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  store ptr %t26, ptr %l57, !tbaa !29
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 0
  %t30 = load ptr, ptr %t29, !tbaa !29
  %t31 = load i32, ptr %l3, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l61
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l57, !tbaa !29
  %t36 = load i32, ptr %l61, !tbaa !23
  %t37 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t35, i32 %t36)
  store i1 %t37, ptr %l62
  br label %bb5
bb5:
  %t38 = load i1, ptr %l62, !tbaa !21
  %t39 = xor i1 %t38, true
  store i1 %t39, ptr %l8, !tbaa !21
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t43 = trunc i64 20 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l6, !tbaa !23
  %t50 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l68
  br label %bb8
bb7:
  br label %bb23
bb8:
  %t51 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t52 = load i64, ptr %l68, !tbaa !24
  %t54 = icmp eq i64 %t52, %t51
  br i1 %t54, label %bb9, label %bb10
bb9:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l71, !tbaa !29
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load { i64, [4 x i64] }, ptr %l5
  %t63 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t57, i64 %t58, { i64, [4 x i64] } %t59)
  store i64 %t63, ptr %l75
  br label %bb11
bb10:
  br label %bb14
bb11:
  %t64 = load i32, ptr %l6, !tbaa !23
  %t65 = load ptr, ptr %l71, !tbaa !29
  %t66 = load i64, ptr %l75, !tbaa !24
  %t68 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t65, i64 %t66, i32 %t64)
  store double %t68, ptr %l77
  br label %bb12
bb12:
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load i1, ptr %l8, !tbaa !21
  %t71 = load double, ptr %l77, !tbaa !26
  %t74 = call i1 @compiler_2feval_2efloatFits(double %t71, i64 %t69, i1 %t70)
  store i1 %t74, ptr %l80
  br label %bb13
bb13:
  %t75 = load i1, ptr %l80, !tbaa !21
  %t76 = xor i1 %t75, true
  store i1 %t76, ptr %rv
  br label %ret
bb14:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i64, ptr %l1, !tbaa !24
  %t80 = load { i64, [4 x i64] }, ptr %l5
  %t84 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t78, i64 %t79, { i64, [4 x i64] } %t80)
  store { i64, i64 } %t84, ptr %l85
  br label %bb15
bb15:
  %t85 = load { i64, i64 }, ptr %l85
  store { i64, i64 } %t85, ptr %l9
  %t86 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 0
  %t87 = load i64, ptr %t86, !tbaa !24
  %t89 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t87, ptr %l88, !tbaa !24
  store i64 %t90, ptr %l89, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l6, !tbaa !23
  %t98 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t94, i32 %t95)
  store i64 %t98, ptr %l92
  br label %bb16
bb16:
  %t99 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t100 = load i64, ptr %l92, !tbaa !24
  %t102 = icmp ne i64 %t100, %t99
  br i1 %t102, label %bb17, label %bb18
bb17:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/eval:Machine", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  store ptr %t107, ptr %l97, !tbaa !29
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 0
  %t111 = load ptr, ptr %t110, !tbaa !29
  %t112 = load i32, ptr %l6, !tbaa !23
  %t115 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l101
  br label %bb19
bb18:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb21
bb19:
  %t116 = load ptr, ptr %l97, !tbaa !29
  %t117 = load i32, ptr %l101, !tbaa !23
  %t118 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t116, i32 %t117)
  store i1 %t118, ptr %l102
  br label %bb20
bb20:
  %t119 = load i1, ptr %l102, !tbaa !21
  %t120 = xor i1 %t119, true
  store i1 %t120, ptr %l95, !tbaa !21
  br label %bb21
bb21:
  %t122 = load i64, ptr %l7, !tbaa !24
  %t123 = load i1, ptr %l8, !tbaa !21
  %t124 = load i64, ptr %l88, !tbaa !24
  %t125 = load i64, ptr %l89, !tbaa !24
  %t126 = load i1, ptr %l95, !tbaa !21
  %t129 = call i1 @compiler_2feval_2efits128(i64 %t124, i64 %t125, i1 %t126, i64 %t122, i1 %t123)
  store i1 %t129, ptr %l106
  br label %bb22
bb22:
  %t130 = load i1, ptr %l106, !tbaa !21
  %t131 = xor i1 %t130, true
  store i1 %t131, ptr %rv
  br label %ret
bb23:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t134 = load i64, ptr %l1, !tbaa !24
  %t135 = load { i64, [4 x i64] }, ptr %l5
  %t139 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t133, i64 %t134, { i64, [4 x i64] } %t135)
  store { i64, i64 } %t139, ptr %l111
  br label %bb24
bb24:
  %t140 = load { i64, i64 }, ptr %l111
  store { i64, i64 } %t140, ptr %l12
  %t141 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 0
  %t142 = load i64, ptr %t141, !tbaa !24
  store i64 %t142, ptr %l13, !tbaa !24
  %t144 = getelementptr { i64, i64 }, ptr %l12, i32 0, i32 1
  %t145 = load i64, ptr %t144, !tbaa !24
  store i64 %t145, ptr %l14, !tbaa !24
  %t147 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t149 = trunc i64 0 to i32
  %t150 = icmp eq i32 %t147, %t149
  br i1 %t150, label %bb25, label %bb26
bb25:
  %t152 = load i1, ptr %l8, !tbaa !21
  %t154 = xor i1 %t152, true
  br i1 %t154, label %bb27, label %bb28
bb26:
  br label %bb37
bb27:
  %t156 = load i64, ptr %l13, !tbaa !24
  %t158 = icmp ne i64 %t156, 0
  br i1 %t158, label %bb29, label %bb30
bb28:
  br label %bb32
bb29:
  store i1 true, ptr %l120, !tbaa !21
  br label %bb31
bb30:
  %t160 = load i64, ptr %l14, !tbaa !24
  %t162 = icmp ne i64 %t160, 0
  store i1 %t162, ptr %l120, !tbaa !21
  br label %bb31
bb31:
  %t164 = load i1, ptr %l120, !tbaa !21
  store i1 %t164, ptr %rv
  br label %ret
bb32:
  %t165 = load i64, ptr %l7, !tbaa !24
  %t167 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t165)
  store { i64, i64 } %t167, ptr %l124
  br label %bb33
bb33:
  %t168 = load { i64, i64 }, ptr %l124
  store { i64, i64 } %t168, ptr %l15
  %t169 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 0
  %t170 = load i64, ptr %t169, !tbaa !24
  %t172 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 1
  %t173 = load i64, ptr %t172, !tbaa !24
  store i64 %t173, ptr %l17, !tbaa !24
  %t175 = load i64, ptr %l13, !tbaa !24
  %t179 = icmp eq i64 %t175, %t170
  br i1 %t179, label %bb34, label %bb35
bb34:
  %t181 = load i64, ptr %l14, !tbaa !24
  %t182 = load i64, ptr %l17, !tbaa !24
  %t185 = icmp eq i64 %t181, %t182
  store i1 %t185, ptr %l130, !tbaa !21
  br label %bb36
bb35:
  store i1 false, ptr %l130, !tbaa !21
  br label %bb36
bb36:
  %t187 = load i1, ptr %l130, !tbaa !21
  store i1 %t187, ptr %rv
  br label %ret
bb37:
  %t188 = load ptr, ptr %l0, !tbaa !29
  store ptr %t188, ptr %l134, !tbaa !29
  %t189 = load i64, ptr %l1, !tbaa !24
  store i64 %t189, ptr %l135, !tbaa !24
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load i64, ptr %l1, !tbaa !24
  %t192 = load %"compiler/mir:Range", ptr %l4
  %t196 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t190, i64 %t191, %"compiler/mir:Range" %t192, i64 1)
  store { i64, [4 x i64] } %t196, ptr %l139
  br label %bb38
bb38:
  %t197 = load ptr, ptr %l134, !tbaa !29
  %t198 = load i64, ptr %l135, !tbaa !24
  %t199 = load { i64, [4 x i64] }, ptr %l139
  %t200 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t197, i64 %t198, { i64, [4 x i64] } %t199)
  store { i64, i64 } %t200, ptr %l140
  br label %bb39
bb39:
  %t201 = load { i64, i64 }, ptr %l140
  store { i64, i64 } %t201, ptr %l18
  %t202 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 0
  %t203 = load i64, ptr %t202, !tbaa !24
  store i64 %t203, ptr %l19, !tbaa !24
  %t205 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 1
  %t206 = load i64, ptr %t205, !tbaa !24
  store i64 %t206, ptr %l20, !tbaa !24
  %t208 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t210 = trunc i64 6 to i32
  %t211 = icmp eq i32 %t208, %t210
  br i1 %t211, label %bb40, label %bb41
bb40:
  %t213 = load i64, ptr %l7, !tbaa !24
  %t215 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t213)
  store { i64, i64 } %t215, ptr %l146
  br label %bb42
bb41:
  br label %bb55
bb42:
  %t216 = load { i64, i64 }, ptr %l146
  store { i64, i64 } %t216, ptr %l21
  %t217 = getelementptr { i64, i64 }, ptr %l21, i32 0, i32 0
  %t218 = load i64, ptr %t217, !tbaa !24
  store i64 %t218, ptr %l22, !tbaa !24
  %t220 = getelementptr { i64, i64 }, ptr %l21, i32 0, i32 1
  %t221 = load i64, ptr %t220, !tbaa !24
  store i64 %t221, ptr %l23, !tbaa !24
  %t223 = load i1, ptr %l8, !tbaa !21
  br i1 %t223, label %bb43, label %bb44
bb43:
  %t225 = load i64, ptr %l13, !tbaa !24
  %t226 = load i64, ptr %l22, !tbaa !24
  %t229 = icmp eq i64 %t225, %t226
  store i1 %t229, ptr %l150, !tbaa !21
  br label %bb45
bb44:
  store i1 false, ptr %l150, !tbaa !21
  br label %bb45
bb45:
  %t231 = load i1, ptr %l150, !tbaa !21
  br i1 %t231, label %bb46, label %bb47
bb46:
  %t232 = load i64, ptr %l14, !tbaa !24
  %t233 = load i64, ptr %l23, !tbaa !24
  %t236 = icmp eq i64 %t232, %t233
  store i1 %t236, ptr %l154, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l154, !tbaa !21
  br label %bb48
bb48:
  %t238 = load i1, ptr %l154, !tbaa !21
  br i1 %t238, label %bb49, label %bb50
bb49:
  %t239 = load i64, ptr %l19, !tbaa !24
  %t241 = icmp eq i64 %t239, -1
  store i1 %t241, ptr %l158, !tbaa !21
  br label %bb51
bb50:
  store i1 false, ptr %l158, !tbaa !21
  br label %bb51
bb51:
  %t243 = load i1, ptr %l158, !tbaa !21
  br i1 %t243, label %bb52, label %bb53
bb52:
  %t244 = load i64, ptr %l20, !tbaa !24
  %t246 = icmp eq i64 %t244, -1
  store i1 %t246, ptr %l161, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l161, !tbaa !21
  br label %bb54
bb54:
  %t248 = load i1, ptr %l161, !tbaa !21
  store i1 %t248, ptr %rv
  br label %ret
bb55:
  %t249 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t251 = trunc i64 5 to i32
  %t252 = icmp eq i32 %t249, %t251
  br i1 %t252, label %bb56, label %bb57
bb56:
  %t254 = load i1, ptr %l8, !tbaa !21
  br i1 %t254, label %bb58, label %bb59
bb57:
  br label %bb101
bb58:
  %t256 = load i64, ptr %l14, !tbaa !24
  %t258 = icmp slt i64 %t256, 0
  %t259 = load i64, ptr %l20, !tbaa !24
  %t261 = icmp slt i64 %t259, 0
  %t264 = icmp ne i1 %t258, %t261
  store i1 %t264, ptr %l167, !tbaa !21
  br label %bb60
bb59:
  store i1 false, ptr %l167, !tbaa !21
  br label %bb60
bb60:
  %t266 = load i1, ptr %l167, !tbaa !21
  store i1 %t266, ptr %l24, !tbaa !21
  %t267 = load i64, ptr %l13, !tbaa !24
  store i64 %t267, ptr %l25, !tbaa !24
  %t269 = load i64, ptr %l14, !tbaa !24
  store i64 %t269, ptr %l26, !tbaa !24
  %t271 = load i1, ptr %l8, !tbaa !21
  br i1 %t271, label %bb61, label %bb62
bb61:
  %t273 = load i64, ptr %l14, !tbaa !24
  %t275 = icmp slt i64 %t273, 0
  store i1 %t275, ptr %l176, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb63
bb63:
  %t277 = load i1, ptr %l176, !tbaa !21
  br i1 %t277, label %bb64, label %bb65
bb64:
  %t278 = load i64, ptr %l13, !tbaa !24
  %t279 = load i64, ptr %l14, !tbaa !24
  %t282 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t278, i64 %t279)
  store { i64, i64 } %t282, ptr %l181
  br label %bb66
bb65:
  br label %bb67
bb66:
  %t283 = load { i64, i64 }, ptr %l181
  store { i64, i64 } %t283, ptr %l27
  %t284 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 0
  %t285 = load i64, ptr %t284, !tbaa !24
  store i64 %t285, ptr %l25, !tbaa !24
  %t287 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 1
  %t288 = load i64, ptr %t287, !tbaa !24
  store i64 %t288, ptr %l26, !tbaa !24
  br label %bb67
bb67:
  %t290 = load i64, ptr %l19, !tbaa !24
  store i64 %t290, ptr %l28, !tbaa !24
  %t292 = load i64, ptr %l20, !tbaa !24
  store i64 %t292, ptr %l29, !tbaa !24
  %t294 = load i1, ptr %l8, !tbaa !21
  br i1 %t294, label %bb68, label %bb69
bb68:
  %t296 = load i64, ptr %l20, !tbaa !24
  %t298 = icmp slt i64 %t296, 0
  store i1 %t298, ptr %l187, !tbaa !21
  br label %bb70
bb69:
  store i1 false, ptr %l187, !tbaa !21
  br label %bb70
bb70:
  %t300 = load i1, ptr %l187, !tbaa !21
  br i1 %t300, label %bb71, label %bb72
bb71:
  %t301 = load i64, ptr %l19, !tbaa !24
  %t302 = load i64, ptr %l20, !tbaa !24
  %t305 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t301, i64 %t302)
  store { i64, i64 } %t305, ptr %l192
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t306 = load { i64, i64 }, ptr %l192
  store { i64, i64 } %t306, ptr %l30
  %t307 = getelementptr { i64, i64 }, ptr %l30, i32 0, i32 0
  %t308 = load i64, ptr %t307, !tbaa !24
  store i64 %t308, ptr %l28, !tbaa !24
  %t310 = getelementptr { i64, i64 }, ptr %l30, i32 0, i32 1
  %t311 = load i64, ptr %t310, !tbaa !24
  store i64 %t311, ptr %l29, !tbaa !24
  br label %bb74
bb74:
  %t313 = load i64, ptr %l25, !tbaa !24
  %t315 = icmp eq i64 %t313, 0
  br i1 %t315, label %bb75, label %bb76
bb75:
  %t317 = load i64, ptr %l26, !tbaa !24
  %t319 = icmp eq i64 %t317, 0
  store i1 %t319, ptr %l197, !tbaa !21
  br label %bb77
bb76:
  store i1 false, ptr %l197, !tbaa !21
  br label %bb77
bb77:
  %t321 = load i1, ptr %l197, !tbaa !21
  br i1 %t321, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l200, !tbaa !21
  br label %bb83
bb79:
  %t322 = load i64, ptr %l28, !tbaa !24
  %t324 = icmp eq i64 %t322, 0
  br i1 %t324, label %bb80, label %bb81
bb80:
  %t326 = load i64, ptr %l29, !tbaa !24
  %t328 = icmp eq i64 %t326, 0
  store i1 %t328, ptr %l203, !tbaa !21
  br label %bb82
bb81:
  store i1 false, ptr %l203, !tbaa !21
  br label %bb82
bb82:
  %t330 = load i1, ptr %l203, !tbaa !21
  store i1 %t330, ptr %l200, !tbaa !21
  br label %bb83
bb83:
  %t331 = load i1, ptr %l200, !tbaa !21
  br i1 %t331, label %bb84, label %bb85
bb84:
  store i1 false, ptr %rv
  br label %ret
bb85:
  br label %bb86
bb86:
  %t333 = load i64, ptr %l25, !tbaa !24
  %t334 = load i64, ptr %l26, !tbaa !24
  %t335 = load i64, ptr %l28, !tbaa !24
  %t336 = load i64, ptr %l29, !tbaa !24
  %t341 = call { i64, i64 } @compiler_2feval_2emul128(i64 %t333, i64 %t334, i64 %t335, i64 %t336)
  store { i64, i64 } %t341, ptr %l211
  br label %bb87
bb87:
  %t342 = load { i64, i64 }, ptr %l211
  store { i64, i64 } %t342, ptr %l31
  %t343 = getelementptr { i64, i64 }, ptr %l31, i32 0, i32 0
  %t344 = load i64, ptr %t343, !tbaa !24
  store i64 %t344, ptr %l32, !tbaa !24
  %t346 = getelementptr { i64, i64 }, ptr %l31, i32 0, i32 1
  %t347 = load i64, ptr %t346, !tbaa !24
  store i64 %t347, ptr %l33, !tbaa !24
  %t349 = load i64, ptr %l32, !tbaa !24
  %t350 = load i64, ptr %l33, !tbaa !24
  %t351 = load i64, ptr %l25, !tbaa !24
  %t352 = load i64, ptr %l26, !tbaa !24
  %t357 = call { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %t349, i64 %t350, i64 %t351, i64 %t352)
  store { i64, i64, i64, i64 } %t357, ptr %l218
  br label %bb88
bb88:
  %t358 = load { i64, i64, i64, i64 }, ptr %l218
  store { i64, i64, i64, i64 } %t358, ptr %l34
  %t359 = getelementptr { i64, i64, i64, i64 }, ptr %l34, i32 0, i32 0
  %t360 = load i64, ptr %t359, !tbaa !24
  %t362 = getelementptr { i64, i64, i64, i64 }, ptr %l34, i32 0, i32 1
  %t363 = load i64, ptr %t362, !tbaa !24
  store i64 %t363, ptr %l36, !tbaa !24
  %t366 = load i64, ptr %l28, !tbaa !24
  %t369 = icmp ne i64 %t360, %t366
  br i1 %t369, label %bb89, label %bb90
bb89:
  store i1 true, ptr %l224, !tbaa !21
  br label %bb91
bb90:
  %t371 = load i64, ptr %l36, !tbaa !24
  %t372 = load i64, ptr %l29, !tbaa !24
  %t375 = icmp ne i64 %t371, %t372
  store i1 %t375, ptr %l224, !tbaa !21
  br label %bb91
bb91:
  %t377 = load i1, ptr %l224, !tbaa !21
  br i1 %t377, label %bb92, label %bb93
bb92:
  store i1 true, ptr %rv
  br label %ret
bb93:
  br label %bb94
bb94:
  %t379 = load i64, ptr %l7, !tbaa !24
  %t380 = load i1, ptr %l8, !tbaa !21
  %t383 = call { i64, i64 } @compiler_2feval_2ewideMax(i64 %t379, i1 %t380)
  store { i64, i64 } %t383, ptr %l231
  br label %bb95
bb95:
  %t384 = load { i64, i64 }, ptr %l231
  store { i64, i64 } %t384, ptr %l37
  %t385 = getelementptr { i64, i64 }, ptr %l37, i32 0, i32 0
  %t386 = load i64, ptr %t385, !tbaa !24
  store i64 %t386, ptr %l38, !tbaa !24
  %t388 = getelementptr { i64, i64 }, ptr %l37, i32 0, i32 1
  %t389 = load i64, ptr %t388, !tbaa !24
  store i64 %t389, ptr %l39, !tbaa !24
  %t391 = load i1, ptr %l24, !tbaa !21
  br i1 %t391, label %bb96, label %bb97
bb96:
  %t393 = load i64, ptr %l38, !tbaa !24
  %t394 = load i64, ptr %l39, !tbaa !24
  %t397 = call { i64, i64 } @compiler_2feval_2eadd128(i64 %t393, i64 %t394, i64 1, i64 0)
  store { i64, i64 } %t397, ptr %l237
  br label %bb98
bb97:
  br label %bb99
bb98:
  %t398 = load { i64, i64 }, ptr %l237
  store { i64, i64 } %t398, ptr %l40
  %t399 = getelementptr { i64, i64 }, ptr %l40, i32 0, i32 0
  %t400 = load i64, ptr %t399, !tbaa !24
  store i64 %t400, ptr %l38, !tbaa !24
  %t402 = getelementptr { i64, i64 }, ptr %l40, i32 0, i32 1
  %t403 = load i64, ptr %t402, !tbaa !24
  store i64 %t403, ptr %l39, !tbaa !24
  br label %bb99
bb99:
  %t405 = load i64, ptr %l32, !tbaa !24
  %t406 = load i64, ptr %l33, !tbaa !24
  %t407 = load i64, ptr %l38, !tbaa !24
  %t408 = load i64, ptr %l39, !tbaa !24
  %t413 = call i64 @compiler_2feval_2ecmp128(i64 %t405, i64 %t406, i64 %t407, i64 %t408, i1 false)
  store i64 %t413, ptr %l244
  br label %bb100
bb100:
  %t414 = load i64, ptr %l244, !tbaa !24
  %t415 = icmp sgt i64 %t414, 0
  store i1 %t415, ptr %rv
  br label %ret
bb101:
  %t417 = load i64, ptr %l13, !tbaa !24
  %t418 = load i64, ptr %l14, !tbaa !24
  %t419 = load i64, ptr %l19, !tbaa !24
  %t420 = load i64, ptr %l20, !tbaa !24
  %t425 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t417, i64 %t418, i64 %t419, i64 %t420)
  store { i64, i64 } %t425, ptr %l250
  br label %bb102
bb102:
  %t426 = load { i64, i64 }, ptr %l250
  store { i64, i64 } %t426, ptr %l41
  %t427 = getelementptr { i64, i64 }, ptr %l41, i32 0, i32 0
  %t428 = load i64, ptr %t427, !tbaa !24
  store i64 %t428, ptr %l42, !tbaa !24
  %t430 = getelementptr { i64, i64 }, ptr %l41, i32 0, i32 1
  %t431 = load i64, ptr %t430, !tbaa !24
  store i64 %t431, ptr %l43, !tbaa !24
  %t433 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t435 = trunc i64 3 to i32
  %t436 = icmp eq i32 %t433, %t435
  br i1 %t436, label %bb103, label %bb104
bb103:
  %t438 = load i64, ptr %l13, !tbaa !24
  %t439 = load i64, ptr %l14, !tbaa !24
  %t440 = load i64, ptr %l19, !tbaa !24
  %t441 = load i64, ptr %l20, !tbaa !24
  %t446 = call { i64, i64 } @compiler_2feval_2eadd128(i64 %t438, i64 %t439, i64 %t440, i64 %t441)
  store { i64, i64 } %t446, ptr %l259
  br label %bb105
bb104:
  br label %bb106
bb105:
  %t447 = load { i64, i64 }, ptr %l259
  store { i64, i64 } %t447, ptr %l44
  %t448 = getelementptr { i64, i64 }, ptr %l44, i32 0, i32 0
  %t449 = load i64, ptr %t448, !tbaa !24
  store i64 %t449, ptr %l42, !tbaa !24
  %t451 = getelementptr { i64, i64 }, ptr %l44, i32 0, i32 1
  %t452 = load i64, ptr %t451, !tbaa !24
  store i64 %t452, ptr %l43, !tbaa !24
  br label %bb106
bb106:
  %t454 = load i64, ptr %l7, !tbaa !24
  %t456 = icmp slt i64 %t454, 128
  br i1 %t456, label %bb107, label %bb108
bb107:
  %t458 = load i64, ptr %l42, !tbaa !24
  %t459 = load i64, ptr %l43, !tbaa !24
  %t460 = load i64, ptr %l7, !tbaa !24
  %t461 = load i1, ptr %l8, !tbaa !21
  %t466 = call i1 @compiler_2feval_2efits128(i64 %t458, i64 %t459, i1 true, i64 %t460, i1 %t461)
  store i1 %t466, ptr %l268
  br label %bb109
bb108:
  br label %bb110
bb109:
  %t467 = load i1, ptr %l268, !tbaa !21
  %t468 = xor i1 %t467, true
  store i1 %t468, ptr %rv
  br label %ret
bb110:
  %t470 = load i1, ptr %l8, !tbaa !21
  %t472 = xor i1 %t470, true
  br i1 %t472, label %bb111, label %bb112
bb111:
  %t474 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t476 = trunc i64 3 to i32
  %t477 = icmp eq i32 %t474, %t476
  br i1 %t477, label %bb113, label %bb114
bb112:
  br label %bb118
bb113:
  %t479 = load i64, ptr %l42, !tbaa !24
  %t480 = load i64, ptr %l43, !tbaa !24
  %t481 = load i64, ptr %l13, !tbaa !24
  %t482 = load i64, ptr %l14, !tbaa !24
  %t487 = call i64 @compiler_2feval_2ecmp128(i64 %t479, i64 %t480, i64 %t481, i64 %t482, i1 false)
  store i64 %t487, ptr %l278
  br label %bb115
bb114:
  br label %bb116
bb115:
  %t488 = load i64, ptr %l278, !tbaa !24
  %t489 = icmp slt i64 %t488, 0
  store i1 %t489, ptr %rv
  br label %ret
bb116:
  %t491 = load i64, ptr %l13, !tbaa !24
  %t492 = load i64, ptr %l14, !tbaa !24
  %t493 = load i64, ptr %l19, !tbaa !24
  %t494 = load i64, ptr %l20, !tbaa !24
  %t499 = call i64 @compiler_2feval_2ecmp128(i64 %t491, i64 %t492, i64 %t493, i64 %t494, i1 false)
  store i64 %t499, ptr %l284
  br label %bb117
bb117:
  %t500 = load i64, ptr %l284, !tbaa !24
  %t501 = icmp slt i64 %t500, 0
  store i1 %t501, ptr %rv
  br label %ret
bb118:
  %t503 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t505 = trunc i64 3 to i32
  %t506 = icmp eq i32 %t503, %t505
  br i1 %t506, label %bb119, label %bb120
bb119:
  %t508 = load i64, ptr %l14, !tbaa !24
  %t510 = icmp slt i64 %t508, 0
  %t511 = load i64, ptr %l20, !tbaa !24
  %t513 = icmp slt i64 %t511, 0
  %t516 = icmp eq i1 %t510, %t513
  br i1 %t516, label %bb121, label %bb122
bb120:
  br label %bb124
bb121:
  %t518 = load i64, ptr %l43, !tbaa !24
  %t520 = icmp slt i64 %t518, 0
  %t521 = load i64, ptr %l14, !tbaa !24
  %t523 = icmp slt i64 %t521, 0
  %t526 = icmp ne i1 %t520, %t523
  store i1 %t526, ptr %l293, !tbaa !21
  br label %bb123
bb122:
  store i1 false, ptr %l293, !tbaa !21
  br label %bb123
bb123:
  %t528 = load i1, ptr %l293, !tbaa !21
  store i1 %t528, ptr %rv
  br label %ret
bb124:
  %t529 = load i64, ptr %l14, !tbaa !24
  %t531 = icmp slt i64 %t529, 0
  %t532 = load i64, ptr %l20, !tbaa !24
  %t534 = icmp slt i64 %t532, 0
  %t537 = icmp ne i1 %t531, %t534
  br i1 %t537, label %bb125, label %bb126
bb125:
  %t539 = load i64, ptr %l43, !tbaa !24
  %t541 = icmp slt i64 %t539, 0
  %t542 = load i64, ptr %l14, !tbaa !24
  %t544 = icmp slt i64 %t542, 0
  %t547 = icmp ne i1 %t541, %t544
  store i1 %t547, ptr %l304, !tbaa !21
  br label %bb127
bb126:
  store i1 false, ptr %l304, !tbaa !21
  br label %bb127
bb127:
  %t549 = load i1, ptr %l304, !tbaa !21
  store i1 %t549, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i32
  %l13 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i32
  %l23 = alloca i1
  %l26 = alloca i64
  %l30 = alloca { i64, ptr }
  %l38 = alloca { i64, ptr }
  %l55 = alloca i64
  %s2 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load i32, ptr %l12, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 74
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t12, i32 %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l18
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb3, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l17
  br label %bb2
bb2:
  %t21 = load i64, ptr %l17, !tbaa !24
  store i64 %t21, ptr %l13, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t25 = icmp slt i64 %t23, 0
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l3, !tbaa !23
  %t31 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t27, i32 %t28)
  store i1 %t31, ptr %l23
  br label %bb8
bb7:
  br label %bb19
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 75
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t34)
  store i64 %t36, ptr %l26
  br label %bb9
bb9:
  %t37 = load i64, ptr %l26, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  store %olang.scope zeroinitializer, ptr %s2
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t42 = load i32, ptr %l3, !tbaa !23
  %t45 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %s2, ptr %t41, i32 %t42)
  store { i64, ptr } %t45, ptr %l30
  br label %bb10
bb10:
  %t46 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t47 = extractvalue { i64, ptr } %t46, 0
  %t48 = extractvalue { i64, ptr } %t46, 1
  %t49 = mul i64 %t47, 8
  %t50 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t49)
  call void @llvm.memcpy.p0.p0.i64(ptr %t50, ptr %t48, i64 %t49, i1 false)
  %t51 = insertvalue { i64, ptr } undef, i64 %t47, 0
  %t52 = insertvalue { i64, ptr } %t51, ptr %t50, 1
  store { i64, ptr } %t52, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t56 = extractvalue { i64, ptr } %t54, 0
  store i64 %t56, ptr %l7, !tbaa !24
  br label %bb11
bb11:
  %t58 = load i64, ptr %l6, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t62 = icmp slt i64 %t58, %t59
  %t64 = xor i1 %t62, true
  br i1 %t64, label %bb12, label %bb13
bb12:
  br label %bb17
bb13:
  br label %bb14
bb14:
  %t66 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t66, ptr %l38, !tbaa !27
  %t67 = load i64, ptr %l6, !tbaa !24
  %t69 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t70 = load ptr, ptr %t69, !tbaa !27
  %t71 = getelementptr i64, ptr %t70, i64 %t67
  %t72 = load i64, ptr %t71, !tbaa !34
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 75
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t76, i64 %t72)
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l6, !tbaa !24
  br label %bb11
bb17:
  call void @__olang_scope_close(ptr %s2)
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 74
  %t87 = load i32, ptr %l3, !tbaa !23
  %t88 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t86, i32 %t87, i64 %t88)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 75
  %t95 = load i64, ptr %l4, !tbaa !24
  %t99 = add i64 %t95, %a2
  %t102 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t94, i64 %t99)
  store i64 %t102, ptr %l55
  br label %bb20
bb20:
  %t103 = load i64, ptr %l55, !tbaa !24
  store i64 %t103, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceReady(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:global"
  %l13 = alloca i64
  %l15 = alloca ptr
  %l18 = alloca %"compiler/eval:gkey"
  %l19 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i1
  %l32 = alloca %"compiler/eval:global"
  %l34 = alloca i1
  %l42 = alloca i1
  %l50 = alloca ptr
  %l55 = alloca i1
  %l56 = alloca { i64, ptr }
  %l64 = alloca i1
  %s1 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l3
  %t4 = load { i64, [2 x i64] }, ptr %l3
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 2
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t10 = getelementptr { i64, i32, i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t14 = getelementptr { i64, i32, i32 }, ptr %t13, i32 0, i32 1
  %t15 = load i32, ptr %t14
  store i32 %t15, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  br label %bb53
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 43
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i32, ptr %l5, !tbaa !23
  %t24 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s1, i64 %t20, i32 %t21)
  store %"compiler/eval:gkey" %t24, ptr %l18
  br label %bb4
bb4:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load %"compiler/eval:gkey", ptr %l18
  %t27 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t25, %"compiler/eval:gkey" %t26)
  %t28 = extractvalue { i32, i64 } %t27, 1
  %t29 = extractvalue { i32, i64 } %t27, 0
  store i32 %t29, ptr %l20
  %t30 = icmp ne i32 %t29, 0
  br i1 %t30, label %bb6, label %ok.31, !prof !99
ok.31:
  store i64 %t28, ptr %l19
  br label %bb5
bb5:
  %t32 = load i64, ptr %l19, !tbaa !24
  store i64 %t32, ptr %l13, !tbaa !24
  br label %bb8
bb6:
  br label %bb7
bb7:
  store i64 -1, ptr %l13, !tbaa !24
  br label %bb8
bb8:
  %t33 = load i64, ptr %l13, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t36 = icmp slt i64 %t34, 0
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t38 = load i64, ptr %l6, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 73
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp eq i64 %t38, %t42
  store i1 %t45, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l23, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 42
  %t52 = load i64, ptr %l6, !tbaa !24
  %t55 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t51, i64 %t52)
  store %"compiler/eval:global" %t55, ptr %l32
  br label %bb15
bb15:
  %t56 = load %"compiler/eval:global", ptr %l32
  store %"compiler/eval:global" %t56, ptr %l7
  %t57 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 5
  %t58 = load i1, ptr %t57, !tbaa !21
  br i1 %t58, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l34, !tbaa !21
  br label %bb18
bb17:
  %t60 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 6
  %t61 = load i1, ptr %t60, !tbaa !21
  store i1 %t61, ptr %l34, !tbaa !21
  br label %bb18
bb18:
  %t63 = load i1, ptr %l34, !tbaa !21
  br i1 %t63, label %bb19, label %bb20
bb19:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 23
  store i1 true, ptr %t66, !tbaa !21
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 1
  %t70 = load i32, ptr %t69, !range !{i32 0, i32 2}
  %t72 = trunc i64 1 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t75 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 4
  %t76 = load i64, ptr %t75, !tbaa !24
  %t78 = icmp ne i64 %t76, 0
  br i1 %t78, label %bb24, label %bb25
bb23:
  br label %bb31
bb24:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb26
bb25:
  %t80 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 2
  %t81 = load i64, ptr %t80, !tbaa !24
  %t83 = icmp slt i64 %t81, 0
  store i1 %t83, ptr %l42, !tbaa !21
  br label %bb26
bb26:
  %t85 = load i1, ptr %l42, !tbaa !21
  br i1 %t85, label %bb27, label %bb28
bb27:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb28:
  br label %bb29
bb29:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t88 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %t87, i64 %t88)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb31:
  %t92 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 1
  %t93 = load i1, ptr %t92, !tbaa !21
  br i1 %t93, label %bb32, label %bb33
bb32:
  %t95 = load ptr, ptr %l0, !tbaa !29
  store ptr %t95, ptr %l50, !tbaa !29
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = load i64, ptr %l4, !tbaa !24
  %t99 = load i32, ptr %l5, !tbaa !23
  %t104 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewritesAfter(ptr %v0, ptr %t96, i64 %a1, i64 %t98, i32 %t99)
  store i1 %t104, ptr %l55
  br label %bb34
bb33:
  br label %bb39
bb34:
  %t105 = load i1, ptr %l55, !tbaa !21
  br i1 %t105, label %bb35, label %bb36
bb35:
  %t106 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar, !tbaa !27
  store { i64, ptr } %t106, ptr %l56, !tbaa !27
  br label %bb37
bb36:
  %t108 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMutableGlobal, !tbaa !27
  store { i64, ptr } %t108, ptr %l56, !tbaa !27
  br label %bb37
bb37:
  %t110 = load ptr, ptr @__olang_prog_scope
  %t111 = load ptr, ptr %l50, !tbaa !29
  %t112 = load { i64, ptr }, ptr %l56, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t110, ptr %t111, { i64, ptr } %t112)
  br label %bb38
bb38:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb39:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 0
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = trunc i64 %t116 to i32
  %t122 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t114, i32 %t118)
  store i1 %t122, ptr %l64
  br label %bb40
bb40:
  %t123 = load i1, ptr %l64, !tbaa !21
  br i1 %t123, label %bb41, label %bb42
bb41:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyChangeable, !tbaa !27
  %t126 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t126, ptr %t124, { i64, ptr } %t125)
  br label %bb43
bb42:
  br label %bb44
bb43:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb44:
  %t130 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 4
  %t131 = load i64, ptr %t130, !tbaa !24
  %t133 = icmp eq i64 %t131, 2
  br i1 %t133, label %bb45, label %bb46
bb45:
  call void @__olang_scope_close(ptr %s1)
  store i1 true, ptr %rv
  br label %ret
bb46:
  br label %bb47
bb47:
  %t136 = getelementptr %"compiler/eval:global", ptr %l7, i32 0, i32 4
  %t137 = load i64, ptr %t136, !tbaa !24
  %t139 = icmp eq i64 %t137, 1
  br i1 %t139, label %bb48, label %bb49
bb48:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyCycle, !tbaa !27
  %t143 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t143, ptr %t141, { i64, ptr } %t142)
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb51:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l6, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %t147, i64 %t148)
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s1)
  store i1 false, ptr %rv
  br label %ret
bb53:
  br i1 true, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  store i1 true, ptr %rv
  br label %ret
bb57:
  call void @__olang_check_failed(ptr @olang_loc_a7714af53687ff6b_1e8ca3031727412f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca i64
  %l15 = alloca ptr
  %l16 = alloca %"compiler/eval:Ptr"
  %l19 = alloca i64
  %l20 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l7, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load %"compiler/eval:Ptr", ptr %l1
  %t13 = load i32, ptr %l2, !tbaa !23
  %t14 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrWide(ptr %v0, ptr %t11, %"compiler/eval:Ptr" %t12, i32 %t13, i64 %t14, i64 %a4)
  br label %bb4
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  store ptr %t21, ptr %l15, !tbaa !29
  %t22 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t22, ptr %l16
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t23, i32 %t24)
  store i64 %t27, ptr %l19
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t28 = load i64, ptr %l3, !tbaa !24
  store i64 %t28, ptr %l20, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l2, !tbaa !23
  %t33 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t29, i32 %t30)
  store i64 %t33, ptr %l23
  br label %bb6
bb6:
  %t34 = load i64, ptr %l23, !tbaa !24
  %t35 = call i64 @compiler_2feval_2ebmask(i64 %t34)
  store i64 %t35, ptr %l24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l20, !tbaa !24
  %t37 = load i64, ptr %l24, !tbaa !24
  %t38 = and i64 %t36, %t37
  %t39 = load ptr, ptr %l15, !tbaa !29
  %t40 = load %"compiler/eval:Ptr", ptr %l16
  %t41 = load i64, ptr %l19, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t39, %"compiler/eval:Ptr" %t40, i64 %t41, i64 %t38)
  br label %bb8
bb8:
  br label %bb9
bb9:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l7 = alloca i64
  %l14 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l2, !tbaa !24
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 %t3, i1 false)
  store i64 %t7, ptr %l7
  br label %bb1
bb1:
  %t8 = load i64, ptr %l7, !tbaa !24
  store i64 %t8, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i64 0, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l2, !tbaa !24
  %t20 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t14, i64 %t15, i64 %t16)
  store i64 %t20, ptr %l14
  br label %bb5
bb5:
  %t21 = load i64, ptr %l14, !tbaa !24
  store i64 %t21, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i64
  %l13 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l25 = alloca i1
  %l33 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 8, i1 false)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp slt i64 %t7, 0
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l2, !tbaa !24
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t13, i64 %t14, i64 8)
  store i64 %t17, ptr %l13
  br label %bb5
bb5:
  %t18 = load i64, ptr %l13, !tbaa !24
  store i64 %t18, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = srem i64 %t19, 8
  %t23 = icmp eq i64 %t21, 0
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 46
  %t28 = load { i64, ptr }, ptr %t27, !tbaa !27
  store { i64, ptr } %t28, ptr %l19, !tbaa !27
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = sdiv i64 %t29, 8
  %t33 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t34 = load ptr, ptr %t33, !tbaa !27
  %t35 = getelementptr i64, ptr %t34, i64 %t31
  %t36 = load i64, ptr %t35, !tbaa !34
  store i64 %t36, ptr %l17, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb8
bb8:
  %t38 = load i64, ptr %l17, !tbaa !24
  store i64 %t38, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = icmp eq i64 %t39, 0
  br i1 %t41, label %bb9, label %bb10
bb9:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = icmp ne i64 %t43, 0
  store i1 %t45, ptr %l25, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l25, !tbaa !21
  br label %bb11
bb11:
  %t47 = load i1, ptr %l25, !tbaa !21
  br i1 %t47, label %bb12, label %bb13
bb12:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t50 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t50, ptr %t48, { i64, ptr } %t49)
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t53 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t53, ptr %rv
  br label %ret
bb15:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l3, !tbaa !24
  %t59 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t55, i64 %t56)
  store %"compiler/eval:Ptr" %t59, ptr %l33
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s0)
  %t60 = load %"compiler/eval:Ptr", ptr %l33
  store %"compiler/eval:Ptr" %t60, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l12 = alloca i1
  %l16 = alloca { i64, ptr }
  %l24 = alloca { i64, ptr }
  %l28 = alloca i64
  %l29 = alloca i64
  %l32 = alloca i64
  %l37 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l48 = alloca { i64, ptr }
  %l51 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = ashr i64 %t1, 3
  store i64 %t3, ptr %l3, !tbaa !24
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = and i64 %t5, 7
  store i64 %t7, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb1, label %bb2
bb1:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = icmp eq i64 %t13, 8
  store i1 %t15, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l12, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 45
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l16, !tbaa !27
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t25 = load ptr, ptr %t24, !tbaa !27
  %t26 = getelementptr i64, ptr %t25, i64 %t22
  %t27 = load i64, ptr %t26, !tbaa !34
  store i64 %t27, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l2, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = icmp sle i64 %t33, 8
  br i1 %t35, label %bb7, label %bb8
bb7:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 45
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l24, !tbaa !27
  %t41 = load i64, ptr %l3, !tbaa !24
  %t43 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = getelementptr i64, ptr %t44, i64 %t41
  %t46 = load i64, ptr %t45, !tbaa !34
  %t47 = load i64, ptr %l4, !tbaa !24
  %t49 = mul i64 8, %t47
  store i64 %t49, ptr %l28, !tbaa !24
  %t51 = load i64, ptr %l28, !tbaa !24
  %t52 = load i64, ptr %l28, !tbaa !24
  %t53 = ashr i64 %t46, %t52
  store i64 %t53, ptr %l29, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i64, ptr %l2, !tbaa !24
  %t58 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t54, i64 %t55)
  store i64 %t58, ptr %l32
  br label %bb9
bb8:
  br label %bb10
bb9:
  %t59 = load i64, ptr %l29, !tbaa !24
  %t60 = load i64, ptr %l32, !tbaa !24
  %t61 = and i64 %t59, %t60
  store i64 %t61, ptr %rv
  br label %ret
bb10:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = sub i64 8, %t63
  store i64 %t65, ptr %l5, !tbaa !24
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 45
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l37, !tbaa !27
  %t71 = load i64, ptr %l3, !tbaa !24
  %t73 = getelementptr { i64, ptr }, ptr %l37, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t71
  %t76 = load i64, ptr %t75, !tbaa !34
  %t77 = load i64, ptr %l4, !tbaa !24
  %t79 = mul i64 8, %t77
  store i64 %t79, ptr %l41, !tbaa !24
  %t81 = load i64, ptr %l41, !tbaa !24
  %t82 = load i64, ptr %l41, !tbaa !24
  %t83 = ashr i64 %t76, %t82
  store i64 %t83, ptr %l42, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load i64, ptr %l5, !tbaa !24
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t84, i64 %t85)
  store i64 %t88, ptr %l45
  br label %bb11
bb11:
  %t89 = load i64, ptr %l42, !tbaa !24
  %t90 = load i64, ptr %l45, !tbaa !24
  %t91 = and i64 %t89, %t90
  store i64 %t91, ptr %l46, !tbaa !24
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 45
  %t95 = load { i64, ptr }, ptr %t94, !tbaa !27
  store { i64, ptr } %t95, ptr %l48, !tbaa !27
  %t96 = load i64, ptr %l3, !tbaa !24
  %t98 = add i64 %t96, 1
  %t100 = getelementptr { i64, ptr }, ptr %l48, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t98
  %t103 = load i64, ptr %t102, !tbaa !34
  store i64 %t103, ptr %l51, !tbaa !24
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i64, ptr %l2, !tbaa !24
  %t106 = load i64, ptr %l5, !tbaa !24
  %t109 = sub i64 %t105, %t106
  %t112 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t104, i64 %t109)
  store i64 %t112, ptr %l56
  br label %bb12
bb12:
  %t113 = load i64, ptr %l51, !tbaa !24
  %t114 = load i64, ptr %l56, !tbaa !24
  %t115 = and i64 %t113, %t114
  %t116 = load i64, ptr %l5, !tbaa !24
  %t118 = mul i64 8, %t116
  store i64 %t118, ptr %l59, !tbaa !24
  %t120 = load i64, ptr %l59, !tbaa !24
  %t121 = load i64, ptr %l59, !tbaa !24
  %t122 = shl i64 %t115, %t121
  %t123 = load i64, ptr %l46, !tbaa !24
  %t125 = or i64 %t123, %t122
  store i64 %t125, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHomeOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l10 = alloca %"compiler/eval:scope"
  %l18 = alloca %"compiler/eval:scope"
  %l22 = alloca i1
  %l25 = alloca i1
  %l27 = alloca i1
  %l33 = alloca %"compiler/eval:scope"
  %rv = alloca i64
  %t11 = alloca %"compiler/eval:scope", align 8
  %t27 = alloca %"compiler/eval:scope", align 8
  %t54 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 %a1, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t5 = getelementptr %"compiler/eval:Machine", ptr %t3, i32 0, i32 52
  %t6 = load i64, ptr %l2, !tbaa !24
  %t7 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t10 = and i64 %t6, %t7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t5, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t11, i64 152, i1 false)
  br label %bb2
bb2:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l10, i32 0, i32 19
  %t15 = load i1, ptr %t14, !tbaa !21
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb19
bb4:
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 52
  %t22 = load i64, ptr %l2, !tbaa !24
  %t23 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t26 = and i64 %t22, %t23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t27, ptr %v0, ptr %t21, i64 %t26)
  call void @llvm.memmove.p0.p0.i64(ptr %l18, ptr %t27, i64 152, i1 false)
  br label %bb6
bb6:
  %t30 = getelementptr %"compiler/eval:scope", ptr %l18, i32 0, i32 5
  %t31 = load i64, ptr %t30, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t35 = icmp eq i64 %t33, 0
  br i1 %t35, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb10
bb8:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l3, !tbaa !24
  %t41 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t37, i64 %t38)
  store i1 %t41, ptr %l25
  br label %bb9
bb9:
  %t42 = load i1, ptr %l25, !tbaa !21
  %t43 = xor i1 %t42, true
  store i1 %t43, ptr %l22, !tbaa !21
  br label %bb10
bb10:
  %t45 = load i1, ptr %l22, !tbaa !21
  br i1 %t45, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb14
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 52
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t53 = and i64 %t49, %t50
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t54, ptr %v0, ptr %t48, i64 %t53)
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %t54, i64 152, i1 false)
  br label %bb13
bb13:
  %t57 = getelementptr %"compiler/eval:scope", ptr %l33, i32 0, i32 2
  %t58 = load i64, ptr %t57, !tbaa !24
  %t59 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t62 = icmp ne i64 %t58, %t59
  store i1 %t62, ptr %l27, !tbaa !21
  br label %bb14
bb14:
  %t64 = load i1, ptr %l27, !tbaa !21
  br i1 %t64, label %bb15, label %bb16
bb15:
  %t65 = load i64, ptr %l2, !tbaa !24
  store i64 %t65, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t67 = load i64, ptr %l3, !tbaa !24
  store i64 %t67, ptr %l2, !tbaa !24
  br label %bb18
bb18:
  br label %bb1
bb19:
  %t69 = load i64, ptr %l2, !tbaa !24
  store i64 %t69, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l3 = alloca i64
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l20 = alloca i64
  %l25 = alloca { i64, ptr }
  %l30 = alloca i1
  %l32 = alloca i1
  %l38 = alloca %"compiler/eval:scope"
  %rv = alloca i64
  %t75 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t9 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t12 = and i64 %t8, %t9
  store i64 %t12, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 50
  %t18 = load i64, ptr %t17, !tbaa !24
  %t21 = icmp sge i64 %t14, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 49
  %t26 = load { i64, ptr }, ptr %t25, !tbaa !27
  store { i64, ptr } %t26, ptr %l16, !tbaa !27
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr %"compiler/eval:alloc", ptr %t30, i64 %t27
  %t32 = getelementptr %"compiler/eval:alloc", ptr %t31, i32 0, i32 3
  %t33 = load i64, ptr %t32, !tbaa !24
  %t34 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t35 = load i64, ptr %t34, !tbaa !24
  %t36 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t36, ptr %l20, !tbaa !24
  %t38 = load i64, ptr %l20, !tbaa !24
  %t39 = load i64, ptr %l20, !tbaa !24
  %t40 = ashr i64 %t35, %t39
  %t43 = icmp ne i64 %t33, %t40
  store i1 %t43, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t45 = load i1, ptr %l14, !tbaa !21
  br i1 %t45, label %bb7, label %bb8
bb7:
  store i64 0, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 49
  %t50 = load { i64, ptr }, ptr %t49, !tbaa !27
  store { i64, ptr } %t50, ptr %l25, !tbaa !27
  %t51 = load i64, ptr %l2, !tbaa !24
  %t53 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t54 = load ptr, ptr %t53, !tbaa !27
  %t55 = getelementptr %"compiler/eval:alloc", ptr %t54, i64 %t51
  %t56 = getelementptr %"compiler/eval:alloc", ptr %t55, i32 0, i32 5
  %t57 = load i64, ptr %t56, !tbaa !24
  store i64 %t57, ptr %l3, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i64, ptr %l3, !tbaa !24
  %t63 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t59, i64 %t60)
  store i1 %t63, ptr %l30
  br label %bb10
bb10:
  %t64 = load i1, ptr %l30, !tbaa !21
  %t65 = xor i1 %t64, true
  br i1 %t65, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb14
bb12:
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 52
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t74 = and i64 %t70, %t71
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t75, ptr %v0, ptr %t69, i64 %t74)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t75, i64 152, i1 false)
  br label %bb13
bb13:
  %t78 = getelementptr %"compiler/eval:scope", ptr %l38, i32 0, i32 2
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t83 = icmp ne i64 %t79, %t80
  store i1 %t83, ptr %l32, !tbaa !21
  br label %bb14
bb14:
  %t85 = load i1, ptr %l32, !tbaa !21
  br i1 %t85, label %bb15, label %bb16
bb15:
  store i64 0, ptr %rv
  br label %ret
bb16:
  br label %bb17
bb17:
  %t87 = load i64, ptr %l3, !tbaa !24
  store i64 %t87, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunCleanups(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [5 x i64] }
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l35 = alloca i64
  %l39 = alloca i1
  %l43 = alloca i64
  %l50 = alloca i64
  %l63 = alloca { i64, ptr }
  %l68 = alloca { i64, ptr }
  %l72 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %t141 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 20
  %t4 = load { i64, [5 x i64] }, ptr %t3
  store { i64, [5 x i64] } %t4, ptr %l2
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 92
  %t9 = load i64, ptr %t8, !tbaa !24
  store i64 %t9, ptr %l3, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 93
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l4
  br label %bb1
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 59
  %t19 = load i64, ptr %t18, !tbaa !24
  %t23 = icmp sgt i64 %t19, %a1
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb2, label %bb3
bb2:
  br label %bb33
bb3:
  br label %bb4
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t29 = getelementptr %"compiler/eval:Machine", ptr %t27, i32 0, i32 59
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = sub i64 %t30, 1
  store i64 %t32, ptr %l5, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 66
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t36)
  store i64 %t38, ptr %l35
  br label %bb5
bb5:
  %t39 = load i64, ptr %l35, !tbaa !24
  %t40 = sub i64 %t39, 1
  store i64 %t40, ptr %l6, !tbaa !24
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = icmp slt i64 %t42, 0
  br i1 %t44, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l39, !tbaa !21
  br label %bb9
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 66
  %t49 = load i64, ptr %l6, !tbaa !24
  %t52 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t48, i64 %t49)
  store i64 %t52, ptr %l43
  br label %bb8
bb8:
  %t53 = load i64, ptr %l5, !tbaa !24
  %t54 = load i64, ptr %l43, !tbaa !24
  %t56 = icmp ne i64 %t54, %t53
  store i1 %t56, ptr %l39, !tbaa !21
  br label %bb9
bb9:
  %t58 = load i1, ptr %l39, !tbaa !21
  br i1 %t58, label %bb10, label %bb11
bb10:
  %t59 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %t59)
  br label %bb12
bb11:
  br label %bb13
bb12:
  br label %bb32
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 68
  %t64 = load i64, ptr %l6, !tbaa !24
  %t67 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t63, i64 %t64)
  store i64 %t67, ptr %l50
  br label %bb14
bb14:
  %t68 = load i64, ptr %l50, !tbaa !24
  store i64 %t68, ptr %l7, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 66
  %t72 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t71, i64 %t72)
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l0, !tbaa !29
  %t77 = getelementptr %"compiler/eval:Machine", ptr %t75, i32 0, i32 67
  %t78 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t77, i64 %t78)
  br label %bb16
bb16:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/eval:Machine", ptr %t81, i32 0, i32 68
  %t84 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t83, i64 %t84)
  br label %bb17
bb17:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 62
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 58
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l63, !tbaa !27
  %t94 = load i64, ptr %l5, !tbaa !24
  %t96 = getelementptr { i64, ptr }, ptr %l63, i32 0, i32 1
  %t97 = load ptr, ptr %t96, !tbaa !27
  %t98 = getelementptr %"compiler/eval:frame", ptr %t97, i64 %t94
  %t99 = getelementptr %"compiler/eval:frame", ptr %t98, i32 0, i32 9
  %t100 = load i64, ptr %t99, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t89, i64 %t100)
  br label %bb18
bb18:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/eval:Machine", ptr %t105, i32 0, i32 58
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l68, !tbaa !27
  %t109 = load i64, ptr %l5, !tbaa !24
  %t113 = getelementptr { i64, ptr }, ptr %l68, i32 0, i32 1
  %t114 = load ptr, ptr %t113, !tbaa !27
  %t115 = getelementptr %"compiler/eval:frame", ptr %t114, i64 %t109
  %t116 = getelementptr %"compiler/eval:frame", ptr %t115, i32 0, i32 1
  store i64 %t103, ptr %t116, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 58
  %t120 = load { i64, ptr }, ptr %t119, !tbaa !27
  store { i64, ptr } %t120, ptr %l72, !tbaa !27
  %t121 = load i64, ptr %l5, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l72, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr %"compiler/eval:frame", ptr %t126, i64 %t121
  %t128 = getelementptr %"compiler/eval:frame", ptr %t127, i32 0, i32 2
  store i64 0, ptr %t128, !tbaa !24
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 58
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l76, !tbaa !27
  %t133 = load i64, ptr %l5, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr %"compiler/eval:frame", ptr %t138, i64 %t133
  %t140 = getelementptr %"compiler/eval:frame", ptr %t139, i32 0, i32 10
  store i1 false, ptr %t140, !tbaa !21
  store { i64, [5 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [5 x i64] }, ptr %t141, i32 0, i32 0
  store i64 0, ptr %t142
  %t143 = load { i64, [5 x i64] }, ptr %t141
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr %"compiler/eval:Machine", ptr %t145, i32 0, i32 22
  store i1 false, ptr %t149, !tbaa !21
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t150, i32 0, i32 69
  store i1 false, ptr %t154, !tbaa !21
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/eval:Machine", ptr %t155, i32 0, i32 20
  store { i64, [5 x i64] } %t143, ptr %t159
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t160, i64 %t161)
  br label %bb19
bb19:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr %"compiler/eval:Machine", ptr %t164, i32 0, i32 69
  %t167 = load i1, ptr %t166, !tbaa !21
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb20, label %bb21
bb20:
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/eval:Machine", ptr %t171, i32 0, i32 20
  %t174 = load { i64, [5 x i64] }, ptr %t173
  %t178 = extractvalue { i64, [5 x i64] } %t174, 0
  %t179 = icmp eq i64 %t178, 2
  br i1 %t179, label %bb22, label %bb23
bb21:
  br label %bb31
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr %"compiler/eval:Machine", ptr %t181, i32 0, i32 20
  %t184 = load { i64, [5 x i64] }, ptr %t183
  store { i64, [5 x i64] } %t184, ptr %l2
  br label %bb33
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  call void @__olang_check_failed(ptr @olang_loc_26a77dbb944b4c43_3cbd97c51474f5af)
  unreachable
bb30:
  br label %bb31
bb31:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Machine", ptr %t186, i32 0, i32 69
  store i1 false, ptr %t188, !tbaa !21
  br label %bb32
bb32:
  br label %bb1
bb33:
  %t189 = load { i64, [5 x i64] }, ptr %l2
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/eval:Machine", ptr %t191, i32 0, i32 22
  store i1 true, ptr %t195, !tbaa !21
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/eval:Machine", ptr %t196, i32 0, i32 20
  store { i64, [5 x i64] } %t189, ptr %t200
  %t201 = load i64, ptr %l3, !tbaa !24
  %t203 = load %"compiler/source:Span", ptr %l4
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 92
  store i64 %t201, ptr %t209, !tbaa !24
  %t210 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t210, i32 0, i32 93
  store %"compiler/source:Span" %t203, ptr %t214
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/eval:Ptr" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, [2 x i64] }
  %l18 = alloca { i64, [2 x i64] }
  %l19 = alloca i32
  %l22 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i32
  %l33 = alloca i64
  %l39 = alloca ptr
  %l42 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca ptr
  %l46 = alloca i64
  %l49 = alloca i32
  %l50 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i64
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l86 = alloca i64
  %l90 = alloca { i64, [1 x i64] }
  %l93 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 37
  %t7 = call { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Ha5986096190b27059e1b255ecbd90571(ptr %v0, ptr %t3, i32 %a2)
  %t8 = extractvalue { i32, { i64, [2 x i64] } } %t7, 1
  %t9 = extractvalue { i32, { i64, [2 x i64] } } %t7, 0
  store i32 %t9, ptr %l19
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { i64, [2 x i64] } %t8, ptr %l18
  br label %bb1
bb1:
  %t12 = load { i64, [2 x i64] }, ptr %l18
  store { i64, [2 x i64] } %t12, ptr %l14
  br label %bb5
bb2:
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t15 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t15, ptr %t13, { i64, ptr } %t14)
  br label %bb4
bb4:
  br label %ret
bb5:
  %t18 = load { i64, [2 x i64] }, ptr %l14
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 30
  %t25 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t21, { i64, [2 x i64] } %t18)
  %t26 = extractvalue { i32, i64 } %t25, 1
  %t27 = extractvalue { i32, i64 } %t25, 0
  store i32 %t27, ptr %l27
  %t28 = icmp ne i32 %t27, 0
  br i1 %t28, label %bb7, label %ok.29, !prof !99
ok.29:
  store i64 %t26, ptr %l26
  br label %bb6
bb6:
  %t30 = load i64, ptr %l26, !tbaa !24
  store i64 %t30, ptr %l22, !tbaa !24
  br label %bb10
bb7:
  br label %bb8
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t33 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t33, ptr %t31, { i64, ptr } %t32)
  br label %bb9
bb9:
  br label %ret
bb10:
  %t36 = load i64, ptr %l22, !tbaa !24
  store i64 %t36, ptr %l5, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i64, ptr %l5, !tbaa !24
  %t39 = load i64, ptr @G_2ecompiler_2feval_2erDtor, !tbaa !24
  %t43 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t37, i64 %t38, i64 %t39, i64 0)
  store i64 %t43, ptr %l33
  br label %bb11
bb11:
  %t44 = load i64, ptr %l33, !tbaa !24
  store i64 %t44, ptr %l6, !tbaa !24
  %t45 = load i64, ptr %l6, !tbaa !24
  %t47 = icmp slt i64 %t45, 0
  br i1 %t47, label %bb12, label %bb13
bb12:
  br label %ret
bb13:
  br label %bb14
bb14:
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 25
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t51, i64 %t52)
  store ptr %t55, ptr %l39
  br label %bb15
bb15:
  %t56 = load ptr, ptr %l39, !tbaa !29
  store ptr %t56, ptr %l7, !tbaa !29
  %t57 = load ptr, ptr %l7, !tbaa !29
  %t59 = getelementptr %"compiler/mir:Fn", ptr %t57, i32 0, i32 4
  %t61 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t59)
  store i64 %t61, ptr %l42
  br label %bb16
bb16:
  %t62 = load i64, ptr %l42, !tbaa !24
  %t63 = icmp sgt i64 %t62, 0
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  store ptr %t65, ptr %l44, !tbaa !29
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l45, !tbaa !29
  %t67 = load i64, ptr %l6, !tbaa !24
  store i64 %t67, ptr %l46, !tbaa !24
  %t68 = load ptr, ptr %l7, !tbaa !29
  %t70 = getelementptr %"compiler/mir:Fn", ptr %t68, i32 0, i32 4
  %t72 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t70, i64 0)
  store i32 %t72, ptr %l49
  br label %bb19
bb18:
  br label %bb22
bb19:
  %t73 = load ptr, ptr %l45, !tbaa !29
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = load i32, ptr %l49, !tbaa !23
  %t76 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t73, i64 %t74, i32 %t75)
  store %"compiler/eval:Ptr" %t76, ptr %l50
  br label %bb20
bb20:
  %t78 = load ptr, ptr %l44, !tbaa !29
  %t79 = load %"compiler/eval:Ptr", ptr %l50
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t78, %"compiler/eval:Ptr" %t79, %"compiler/eval:Ptr" %a3)
  br label %bb21
bb21:
  br label %bb22
bb22:
  store i64 0, ptr %l8, !tbaa !24
  %t81 = load ptr, ptr %l7, !tbaa !29
  %t83 = getelementptr %"compiler/mir:Fn", ptr %t81, i32 0, i32 6
  %t85 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t83)
  store i64 %t85, ptr %l54
  br label %bb23
bb23:
  %t86 = load i64, ptr %l54, !tbaa !24
  store i64 %t86, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t87 = load i64, ptr %l9, !tbaa !24
  %t88 = load i64, ptr %l8, !tbaa !24
  %t91 = icmp sgt i64 %t87, %t88
  br i1 %t91, label %bb24, label %bb25
bb24:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = icmp sgt i64 %t93, 0
  br i1 %t95, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l58, !tbaa !24
  br label %bb29
bb26:
  %t97 = load i64, ptr %l9, !tbaa !24
  %t98 = load i64, ptr %l8, !tbaa !24
  %t101 = sub i64 %t97, %t98
  %t102 = load i64, ptr %l10, !tbaa !24
  %t105 = add i64 %t101, %t102
  %t107 = sub i64 %t105, 1
  %t108 = load i64, ptr %l10, !tbaa !24
  %t111 = sdiv i64 %t107, %t108
  store i64 %t111, ptr %l61, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb28
bb28:
  %t113 = load i64, ptr %l61, !tbaa !24
  store i64 %t113, ptr %l58, !tbaa !24
  br label %bb29
bb29:
  %t114 = load i64, ptr %l58, !tbaa !24
  store i64 %t114, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb30
bb30:
  %t115 = load i64, ptr %l12, !tbaa !24
  %t116 = load i64, ptr %l11, !tbaa !24
  %t119 = icmp slt i64 %t115, %t116
  %t121 = xor i1 %t119, true
  br i1 %t121, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  br label %bb33
bb33:
  %t123 = load i64, ptr %l8, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t125 = load i64, ptr %l10, !tbaa !24
  %t128 = mul i64 %t124, %t125
  %t131 = add i64 %t123, %t128
  store i64 %t131, ptr %l13, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 60
  %t136 = load { i64, ptr }, ptr %t135, !tbaa !27
  store { i64, ptr } %t136, ptr %l80, !tbaa !27
  %t137 = load ptr, ptr %l0, !tbaa !29
  %t139 = getelementptr %"compiler/eval:Machine", ptr %t137, i32 0, i32 58
  %t140 = load { i64, ptr }, ptr %t139, !tbaa !27
  store { i64, ptr } %t140, ptr %l82, !tbaa !27
  %t141 = load i64, ptr %l6, !tbaa !24
  %t143 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr %"compiler/eval:frame", ptr %t144, i64 %t141
  %t146 = getelementptr %"compiler/eval:frame", ptr %t145, i32 0, i32 5
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = load i64, ptr %l13, !tbaa !24
  %t151 = add i64 %t147, %t148
  store i64 %t151, ptr %l86, !tbaa !24
  %t152 = load ptr, ptr %l7, !tbaa !29
  %t154 = getelementptr %"compiler/mir:Fn", ptr %t152, i32 0, i32 6
  %t155 = load i64, ptr %l13, !tbaa !24
  %t158 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t154, i64 %t155)
  store { i64, [1 x i64] } %t158, ptr %l90
  br label %bb34
bb34:
  %t159 = load { i64, [1 x i64] }, ptr %l90
  %t161 = extractvalue { i64, [1 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 5
  br i1 %t162, label %bb35, label %bb36
bb35:
  store i64 0, ptr %l93, !tbaa !24
  br label %bb37
bb36:
  store i64 %a1, ptr %l93, !tbaa !24
  br label %bb37
bb37:
  %t166 = load i64, ptr %l93, !tbaa !24
  %t167 = load i64, ptr %l86, !tbaa !24
  %t168 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t169 = load ptr, ptr %t168, !tbaa !27
  %t170 = getelementptr i64, ptr %t169, i64 %t167
  store i64 %t166, ptr %t170, !tbaa !34
  br label %bb38
bb38:
  %t171 = load i64, ptr %l12, !tbaa !24
  %t173 = add i64 %t171, 1
  store i64 %t173, ptr %l12, !tbaa !24
  br label %bb30
bb39:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eruntimeFn(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, %"compiler/mir:Range" %a3, i32 %a4, %"compiler/eval:Ptr" %a5, i1 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, ptr }
  %l8 = alloca { ptr, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca { i64, ptr }
  %l20 = alloca [3 x i64]
  %l21 = alloca [24 x i8]
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l41 = alloca i8
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l48 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, ptr }
  %l57 = alloca i64
  %l58 = alloca %"std/prelude/text:StringBuilder"
  %l59 = alloca i64
  %l60 = alloca i64
  %l61 = alloca i64
  %l62 = alloca i64
  %l63 = alloca i64
  %l65 = alloca i32
  %l68 = alloca ptr
  %l73 = alloca i1
  %l76 = alloca i64
  %l78 = alloca i1
  %l79 = alloca ptr
  %l80 = alloca i64
  %l82 = alloca { i64, [4 x i64] }
  %l83 = alloca i64
  %l86 = alloca i1
  %l87 = alloca i64
  %l90 = alloca i64
  %l95 = alloca { i64, ptr }
  %l97 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l127 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i64
  %l136 = alloca { i64, [4 x i64] }
  %l137 = alloca { i64, ptr }
  %l138 = alloca ptr
  %l139 = alloca i64
  %l141 = alloca { i64, [4 x i64] }
  %l142 = alloca i64
  %l146 = alloca i1
  %l147 = alloca ptr
  %l148 = alloca i64
  %l150 = alloca { i64, [4 x i64] }
  %l151 = alloca i64
  %l154 = alloca ptr
  %l155 = alloca i64
  %l157 = alloca { i64, [4 x i64] }
  %l158 = alloca { i64, ptr }
  %l162 = alloca i64
  %l163 = alloca ptr
  %l164 = alloca i64
  %l166 = alloca { i64, [4 x i64] }
  %l171 = alloca i1
  %l176 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i64
  %l181 = alloca { i64, [4 x i64] }
  %l182 = alloca { i64, ptr }
  %l186 = alloca i32
  %l191 = alloca i64
  %l194 = alloca i64
  %l218 = alloca i64
  %l224 = alloca ptr
  %l225 = alloca i64
  %l227 = alloca { i64, [4 x i64] }
  %l231 = alloca i1
  %l233 = alloca i1
  %l234 = alloca ptr
  %l235 = alloca i64
  %l237 = alloca { i64, [4 x i64] }
  %l238 = alloca i64
  %l241 = alloca ptr
  %l242 = alloca i64
  %l244 = alloca { i64, [4 x i64] }
  %l245 = alloca { i64, ptr }
  %l247 = alloca i1
  %l248 = alloca i64
  %l253 = alloca i64
  %l258 = alloca i64
  %l259 = alloca ptr
  %l260 = alloca i64
  %l262 = alloca { i64, [4 x i64] }
  %l267 = alloca i1
  %l268 = alloca ptr
  %l269 = alloca i64
  %l271 = alloca { i64, [4 x i64] }
  %l272 = alloca { i64, ptr }
  %l273 = alloca ptr
  %l274 = alloca i64
  %l276 = alloca { i64, [4 x i64] }
  %l277 = alloca i64
  %l278 = alloca ptr
  %l279 = alloca i64
  %l281 = alloca { i64, [4 x i64] }
  %l282 = alloca i64
  %l283 = alloca i32
  %l284 = alloca ptr
  %l285 = alloca i64
  %l287 = alloca { i64, [4 x i64] }
  %l288 = alloca i64
  %l289 = alloca i32
  %l290 = alloca ptr
  %l291 = alloca i64
  %l293 = alloca { i64, [4 x i64] }
  %l294 = alloca i64
  %l295 = alloca i32
  %l296 = alloca ptr
  %l297 = alloca i64
  %l299 = alloca { i64, [4 x i64] }
  %l300 = alloca { i64, ptr }
  %l301 = alloca i32
  %l304 = alloca i1
  %l305 = alloca ptr
  %l306 = alloca i64
  %l308 = alloca { i64, [4 x i64] }
  %l309 = alloca { i64, ptr }
  %l310 = alloca ptr
  %l311 = alloca i64
  %l313 = alloca { i64, [4 x i64] }
  %l314 = alloca { i64, ptr }
  %l315 = alloca ptr
  %l316 = alloca i64
  %l318 = alloca { i64, [4 x i64] }
  %l319 = alloca i64
  %l320 = alloca ptr
  %l321 = alloca i64
  %l323 = alloca { i64, [4 x i64] }
  %l324 = alloca i64
  %l325 = alloca i32
  %l326 = alloca ptr
  %l327 = alloca i64
  %l329 = alloca { i64, [4 x i64] }
  %l330 = alloca i64
  %l331 = alloca i32
  %l332 = alloca ptr
  %l333 = alloca i64
  %l335 = alloca { i64, [4 x i64] }
  %l336 = alloca i64
  %l337 = alloca i32
  %l338 = alloca ptr
  %l339 = alloca i64
  %l341 = alloca { i64, [4 x i64] }
  %l342 = alloca { i64, ptr }
  %l343 = alloca i32
  %l346 = alloca i1
  %l347 = alloca ptr
  %l348 = alloca i64
  %l350 = alloca { i64, [4 x i64] }
  %l351 = alloca { i64, ptr }
  %l352 = alloca ptr
  %l353 = alloca i64
  %l355 = alloca { i64, [4 x i64] }
  %l356 = alloca { i64, ptr }
  %l357 = alloca ptr
  %l358 = alloca i64
  %l360 = alloca { i64, [4 x i64] }
  %l361 = alloca i64
  %l362 = alloca i32
  %l365 = alloca i1
  %l366 = alloca ptr
  %l367 = alloca i64
  %l369 = alloca { i64, [4 x i64] }
  %l370 = alloca { i64, ptr }
  %l372 = alloca i32
  %l374 = alloca ptr
  %l375 = alloca i64
  %l377 = alloca { i64, [4 x i64] }
  %l382 = alloca i1
  %l384 = alloca i1
  %l385 = alloca ptr
  %l386 = alloca i64
  %l388 = alloca { i64, [4 x i64] }
  %l389 = alloca { i64, ptr }
  %l392 = alloca i64
  %l401 = alloca i64
  %l404 = alloca i64
  %l433 = alloca i64
  %l438 = alloca ptr
  %l439 = alloca i64
  %l441 = alloca { i64, [4 x i64] }
  %l442 = alloca { i64, ptr }
  %l443 = alloca ptr
  %l444 = alloca i64
  %l446 = alloca { i64, [4 x i64] }
  %l447 = alloca { i64, ptr }
  %l448 = alloca ptr
  %l449 = alloca i64
  %l451 = alloca { i64, [4 x i64] }
  %l452 = alloca i64
  %l455 = alloca i1
  %l456 = alloca i64
  %l457 = alloca { i64, ptr }
  %l458 = alloca { i64, ptr }
  %l459 = alloca { i64, ptr }
  %l460 = alloca i8
  %l461 = alloca ptr
  %l462 = alloca i64
  %l464 = alloca { i64, [4 x i64] }
  %l465 = alloca i64
  %l466 = alloca i64
  %l472 = alloca i64
  %l479 = alloca i64
  %l482 = alloca i64
  %l507 = alloca i64
  %l513 = alloca ptr
  %l514 = alloca i64
  %l516 = alloca { i64, [4 x i64] }
  %l521 = alloca i1
  %l522 = alloca ptr
  %l523 = alloca i64
  %l525 = alloca { i64, [4 x i64] }
  %l526 = alloca { i64, ptr }
  %l527 = alloca ptr
  %l528 = alloca i64
  %l530 = alloca { i64, [4 x i64] }
  %l531 = alloca { i64, ptr }
  %l532 = alloca ptr
  %l533 = alloca i64
  %l535 = alloca { i64, [4 x i64] }
  %l536 = alloca i64
  %l538 = alloca i32
  %l541 = alloca i1
  %l542 = alloca ptr
  %l543 = alloca i64
  %l545 = alloca { i64, [4 x i64] }
  %l546 = alloca { i64, ptr }
  %l547 = alloca ptr
  %l548 = alloca i64
  %l550 = alloca { i64, [4 x i64] }
  %l551 = alloca { i64, ptr }
  %l552 = alloca ptr
  %l553 = alloca i64
  %l555 = alloca { i64, [4 x i64] }
  %l556 = alloca i64
  %l557 = alloca i8
  %l558 = alloca ptr
  %l559 = alloca i64
  %l561 = alloca { i64, [4 x i64] }
  %l562 = alloca i64
  %l563 = alloca i32
  %l566 = alloca i1
  %l568 = alloca i1
  %l570 = alloca i1
  %l571 = alloca { i64, ptr }
  %l577 = alloca i1
  %l580 = alloca i64
  %l588 = alloca i64
  %l591 = alloca i64
  %l610 = alloca { i64, ptr }
  %l616 = alloca ptr
  %l617 = alloca i64
  %l619 = alloca { i64, [4 x i64] }
  %l620 = alloca { i64, ptr }
  %l621 = alloca ptr
  %l622 = alloca i64
  %l624 = alloca { i64, [4 x i64] }
  %l625 = alloca i64
  %l629 = alloca i1
  %l631 = alloca i1
  %l633 = alloca i1
  %l635 = alloca i1
  %l637 = alloca i1
  %l639 = alloca i1
  %l641 = alloca i1
  %l644 = alloca i1
  %l648 = alloca ptr
  %l649 = alloca i64
  %l651 = alloca { i64, [4 x i64] }
  %l652 = alloca { i64, ptr }
  %l653 = alloca ptr
  %l654 = alloca i64
  %l656 = alloca { i64, [4 x i64] }
  %l657 = alloca i64
  %l658 = alloca %"std/prelude/text:StringBuilder"
  %l663 = alloca i64
  %l666 = alloca i64
  %l693 = alloca { i64, ptr }
  %l702 = alloca i1
  %l704 = alloca i1
  %l706 = alloca i1
  %l708 = alloca i1
  %l710 = alloca i1
  %l712 = alloca ptr
  %l713 = alloca i32
  %l717 = alloca i32
  %l719 = alloca i1
  %l723 = alloca ptr
  %l724 = alloca %"compiler/eval:Ptr"
  %l727 = alloca i64
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  %s10 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %s26 = alloca %olang.scope
  %s27 = alloca %olang.scope
  %s28 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s39 = alloca %olang.scope
  %rv = alloca i1
  %t11 = alloca { ptr, %"compiler/mir:Range", ptr }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t5 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t1, i64 %t2)
  store ptr %t5, ptr %l68
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l68, !tbaa !29
  %t9 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr null, i32 1
  %t10 = ptrtoint ptr %t9 to i64
  %t12 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %t11, i32 0, i32 0
  store ptr %t6, ptr %t12, !tbaa !28
  %t14 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %t11, i32 0, i32 1
  store %"compiler/mir:Range" %a3, ptr %t14, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t16 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %t11, i32 0, i32 2
  store ptr %v0, ptr %t16, !tbaa !28
  %t17 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_4, 0
  %t18 = insertvalue { ptr, ptr } %t17, ptr %t11, 1
  store { ptr, ptr } %t18, ptr %l8
  store i64 0, ptr %l9, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d5, i32 0, i32 1) })
  store i1 %t22, ptr %l73
  br label %bb2
bb2:
  %t23 = load i1, ptr %l73, !tbaa !21
  br i1 %t23, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 82
  %t28 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t26)
  store i64 %t28, ptr %l76
  br label %bb6
bb6:
  %t29 = load i64, ptr %l76, !tbaa !24
  store i64 %t29, ptr %l9, !tbaa !24
  br label %bb343
bb7:
  %t30 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t32 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t30, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d6, i32 0, i32 1) })
  store i1 %t32, ptr %l78
  br label %bb8
bb8:
  %t33 = load i1, ptr %l78, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb40
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l79, !tbaa !29
  %t35 = load i64, ptr %l1, !tbaa !24
  store i64 %t35, ptr %l80, !tbaa !24
  %t36 = load { ptr, ptr }, ptr %l8
  %t38 = extractvalue { ptr, ptr } %t36, 0
  %t39 = extractvalue { ptr, ptr } %t36, 1
  %t40 = call { i64, [4 x i64] } %t38(ptr %t39, i64 0)
  store { i64, [4 x i64] } %t40, ptr %l82
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l79, !tbaa !29
  %t42 = load i64, ptr %l80, !tbaa !24
  %t43 = load { i64, [4 x i64] }, ptr %l82
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t41, i64 %t42, { i64, [4 x i64] } %t43)
  store i64 %t44, ptr %l83
  br label %bb13
bb13:
  %t45 = load i64, ptr %l83, !tbaa !24
  store i64 %t45, ptr %l10, !tbaa !24
  %t46 = load i64, ptr %l10, !tbaa !24
  %t48 = icmp slt i64 %t46, 0
  br i1 %t48, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l86, !tbaa !21
  br label %bb17
bb15:
  %t50 = load i64, ptr %l10, !tbaa !24
  store i64 %t50, ptr %l87, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/eval:Machine", ptr %t51, i32 0, i32 82
  %t55 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %t53)
  store i64 %t55, ptr %l90
  br label %bb16
bb16:
  %t56 = load i64, ptr %l87, !tbaa !24
  %t57 = load i64, ptr %l90, !tbaa !24
  %t58 = icmp sge i64 %t56, %t57
  store i1 %t58, ptr %l86, !tbaa !21
  br label %bb17
bb17:
  %t60 = load i1, ptr %l86, !tbaa !21
  br i1 %t60, label %bb18, label %bb19
bb18:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb39
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 82
  %t64 = load i64, ptr %l10, !tbaa !24
  %t67 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v0, ptr %t63, i64 %t64)
  store { i64, ptr } %t67, ptr %l95
  br label %bb20
bb20:
  %t68 = load { i64, ptr }, ptr %l95, !tbaa !27
  store { i64, ptr } %t68, ptr %l11, !tbaa !27
  %t69 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t69, 0
  store i64 %t71, ptr %l97, !tbaa !24
  %t72 = load i64, ptr %l97, !tbaa !24
  %t73 = icmp sge i64 %t72, 0
  br i1 %t73, label %bb21, label %bb22
bb21:
  %t75 = load i64, ptr %l97, !tbaa !24
  %t76 = mul i64 %t75, 1
  %t77 = call ptr @__olang_scope_alloc_zeroed(ptr %s4, i64 %t76)
  %t78 = insertvalue { i64, ptr } undef, i64 %t75, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  store { i64, ptr } %t79, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t81 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t83 = extractvalue { i64, ptr } %t81, 0
  store i64 %t83, ptr %l14, !tbaa !24
  store i64 1, ptr %l15, !tbaa !24
  %t85 = load i64, ptr %l14, !tbaa !24
  %t86 = load i64, ptr %l13, !tbaa !24
  %t89 = icmp sgt i64 %t85, %t86
  br i1 %t89, label %bb23, label %bb24
bb22:
  call void @__olang_check_failed(ptr @olang_loc_7289625dc306da68_1bb592dfdbe27504)
  unreachable
bb23:
  %t91 = load i64, ptr %l15, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  br i1 %t93, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb28
bb25:
  %t95 = load i64, ptr %l14, !tbaa !24
  %t96 = load i64, ptr %l13, !tbaa !24
  %t99 = sub i64 %t95, %t96
  %t100 = load i64, ptr %l15, !tbaa !24
  %t103 = add i64 %t99, %t100
  %t105 = sub i64 %t103, 1
  %t106 = load i64, ptr %l15, !tbaa !24
  %t109 = sdiv i64 %t105, %t106
  store i64 %t109, ptr %l108, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l108, !tbaa !24
  store i64 %t111, ptr %l105, !tbaa !24
  br label %bb28
bb28:
  %t112 = load i64, ptr %l105, !tbaa !24
  store i64 %t112, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  br label %bb29
bb29:
  %t113 = load i64, ptr %l17, !tbaa !24
  %t114 = load i64, ptr %l16, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb30, label %bb31
bb30:
  br label %bb34
bb31:
  br label %bb32
bb32:
  %t121 = load i64, ptr %l13, !tbaa !24
  %t122 = load i64, ptr %l17, !tbaa !24
  %t123 = load i64, ptr %l15, !tbaa !24
  %t126 = mul i64 %t122, %t123
  %t129 = add i64 %t121, %t126
  store i64 %t129, ptr %l18, !tbaa !24
  %t131 = load i64, ptr %l18, !tbaa !24
  %t132 = load { i64, ptr }, ptr %l11, !tbaa !27
  store { i64, ptr } %t132, ptr %l127, !tbaa !27
  %t133 = load i64, ptr %l18, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l127, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i8, ptr %t136, i64 %t133
  %t138 = load i8, ptr %t137, !tbaa !32
  %t142 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t143 = load ptr, ptr %t142, !tbaa !27
  %t144 = getelementptr i8, ptr %t143, i64 %t131
  store i8 %t138, ptr %t144, !tbaa !32
  br label %bb33
bb33:
  %t145 = load i64, ptr %l17, !tbaa !24
  %t147 = add i64 %t145, 1
  store i64 %t147, ptr %l17, !tbaa !24
  br label %bb29
bb34:
  %t149 = load ptr, ptr %l0, !tbaa !29
  store ptr %t149, ptr %l133, !tbaa !29
  %t150 = load i64, ptr %l1, !tbaa !24
  store i64 %t150, ptr %l134, !tbaa !24
  %t151 = load { ptr, ptr }, ptr %l8
  %t153 = extractvalue { ptr, ptr } %t151, 0
  %t154 = extractvalue { ptr, ptr } %t151, 1
  %t155 = call { i64, [4 x i64] } %t153(ptr %t154, i64 1)
  store { i64, [4 x i64] } %t155, ptr %l136
  br label %bb35
bb35:
  %t156 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t156, ptr %l137, !tbaa !27
  %t157 = load ptr, ptr %l0, !tbaa !29
  store ptr %t157, ptr %l138, !tbaa !29
  %t158 = load i64, ptr %l1, !tbaa !24
  store i64 %t158, ptr %l139, !tbaa !24
  %t159 = load { ptr, ptr }, ptr %l8
  %t161 = extractvalue { ptr, ptr } %t159, 0
  %t162 = extractvalue { ptr, ptr } %t159, 1
  %t163 = call { i64, [4 x i64] } %t161(ptr %t162, i64 2)
  store { i64, [4 x i64] } %t163, ptr %l141
  br label %bb36
bb36:
  %t164 = load ptr, ptr %l138, !tbaa !29
  %t165 = load i64, ptr %l139, !tbaa !24
  %t166 = load { i64, [4 x i64] }, ptr %l141
  %t167 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t164, i64 %t165, { i64, [4 x i64] } %t166)
  store i64 %t167, ptr %l142
  br label %bb37
bb37:
  %t168 = load ptr, ptr %l133, !tbaa !29
  %t169 = load i64, ptr %l134, !tbaa !24
  %t170 = load { i64, [4 x i64] }, ptr %l136
  %t171 = load { i64, ptr }, ptr %l137, !tbaa !27
  %t172 = load i64, ptr %l142, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s4, ptr %t168, i64 %t169, { i64, [4 x i64] } %t170, { i64, ptr } %t171, i64 %t172)
  br label %bb38
bb38:
  %t173 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t175 = extractvalue { i64, ptr } %t173, 0
  store i64 %t175, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s4)
  br label %bb39
bb39:
  br label %bb343
bb40:
  %t177 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t179 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t177, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t179, ptr %l146
  br label %bb41
bb41:
  %t180 = load i1, ptr %l146, !tbaa !21
  br i1 %t180, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb54
bb44:
  store %olang.scope zeroinitializer, ptr %s8
  %t181 = load ptr, ptr %l0, !tbaa !29
  store ptr %t181, ptr %l147, !tbaa !29
  %t182 = load i64, ptr %l1, !tbaa !24
  store i64 %t182, ptr %l148, !tbaa !24
  %t183 = load { ptr, ptr }, ptr %l8
  %t185 = extractvalue { ptr, ptr } %t183, 0
  %t186 = extractvalue { ptr, ptr } %t183, 1
  %t187 = call { i64, [4 x i64] } %t185(ptr %t186, i64 2)
  store { i64, [4 x i64] } %t187, ptr %l150
  br label %bb45
bb45:
  %t188 = load ptr, ptr %l147, !tbaa !29
  %t189 = load i64, ptr %l148, !tbaa !24
  %t190 = load { i64, [4 x i64] }, ptr %l150
  %t191 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t188, i64 %t189, { i64, [4 x i64] } %t190)
  store i64 %t191, ptr %l151
  br label %bb46
bb46:
  %t192 = load i64, ptr %l151, !tbaa !24
  %t193 = icmp sge i64 %t192, 0
  br i1 %t193, label %bb47, label %bb48
bb47:
  %t195 = load i64, ptr %l151, !tbaa !24
  %t196 = mul i64 %t195, 1
  %t197 = call ptr @__olang_scope_alloc_zeroed(ptr %s8, i64 %t196)
  %t198 = insertvalue { i64, ptr } undef, i64 %t195, 0
  %t199 = insertvalue { i64, ptr } %t198, ptr %t197, 1
  store { i64, ptr } %t199, ptr %l19, !tbaa !27
  %t201 = load ptr, ptr %l0, !tbaa !29
  store ptr %t201, ptr %l154, !tbaa !29
  %t202 = load i64, ptr %l1, !tbaa !24
  store i64 %t202, ptr %l155, !tbaa !24
  %t203 = load { ptr, ptr }, ptr %l8
  %t205 = extractvalue { ptr, ptr } %t203, 0
  %t206 = extractvalue { ptr, ptr } %t203, 1
  %t207 = call { i64, [4 x i64] } %t205(ptr %t206, i64 0)
  store { i64, [4 x i64] } %t207, ptr %l157
  br label %bb49
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d526727003b18a55_2e4fcca09321f611)
  unreachable
bb49:
  %t208 = load ptr, ptr %l154, !tbaa !29
  %t209 = load i64, ptr %l155, !tbaa !24
  %t210 = load { i64, [4 x i64] }, ptr %l157
  %t211 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s8, ptr %t208, i64 %t209, { i64, [4 x i64] } %t210)
  store { i64, ptr } %t211, ptr %l158
  br label %bb50
bb50:
  %t212 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t213 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t215 = extractvalue { i64, ptr } %t213, 0
  %t216 = load { i64, ptr }, ptr %l158, !tbaa !27
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = extractvalue { i64, ptr } %t216, 0
  %t220 = extractvalue { i64, ptr } %t212, 1
  %t221 = extractvalue { i64, ptr } %t212, 0
  %t223 = call i64 @__olang_env(ptr %t217, ptr %t220, i64 %t215)
  store i64 %t223, ptr %l162
  br label %bb51
bb51:
  %t224 = load i64, ptr %l162, !tbaa !24
  store i64 %t224, ptr %l9, !tbaa !24
  %t225 = load ptr, ptr %l0, !tbaa !29
  store ptr %t225, ptr %l163, !tbaa !29
  %t226 = load i64, ptr %l1, !tbaa !24
  store i64 %t226, ptr %l164, !tbaa !24
  %t227 = load { ptr, ptr }, ptr %l8
  %t229 = extractvalue { ptr, ptr } %t227, 0
  %t230 = extractvalue { ptr, ptr } %t227, 1
  %t231 = call { i64, [4 x i64] } %t229(ptr %t230, i64 1)
  store { i64, [4 x i64] } %t231, ptr %l166
  br label %bb52
bb52:
  %t232 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t233 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t235 = extractvalue { i64, ptr } %t233, 0
  %t236 = load ptr, ptr %l163, !tbaa !29
  %t237 = load i64, ptr %l164, !tbaa !24
  %t238 = load { i64, [4 x i64] }, ptr %l166
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s8, ptr %t236, i64 %t237, { i64, [4 x i64] } %t238, { i64, ptr } %t232, i64 %t235)
  br label %bb53
bb53:
  call void @__olang_scope_close(ptr %s8)
  br label %bb343
bb54:
  %t241 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t243 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t241, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t243, ptr %l171
  br label %bb55
bb55:
  %t244 = load i1, ptr %l171, !tbaa !21
  br i1 %t244, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  %t245 = load ptr, ptr %l0, !tbaa !29
  %t247 = getelementptr %"compiler/eval:Machine", ptr %t245, i32 0, i32 94
  %t248 = load i32, ptr %t247, !tbaa !23
  %t250 = sext i32 %t248 to i64
  store i64 %t250, ptr %l9, !tbaa !24
  br label %bb343
bb59:
  %t252 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t254 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t252, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d9, i32 0, i32 1) })
  store i1 %t254, ptr %l176
  br label %bb60
bb60:
  %t255 = load i1, ptr %l176, !tbaa !21
  br i1 %t255, label %bb61, label %bb62
bb61:
  br label %bb63
bb62:
  br label %bb81
bb63:
  store %olang.scope zeroinitializer, ptr %s10
  %t256 = insertvalue [3 x i64] undef, i64 0, 0
  %t257 = insertvalue [3 x i64] %t256, i64 0, 1
  %t258 = insertvalue [3 x i64] %t257, i64 0, 2
  store [3 x i64] %t258, ptr %l20
  %t260 = load ptr, ptr %l0, !tbaa !29
  store ptr %t260, ptr %l178, !tbaa !29
  %t261 = load i64, ptr %l1, !tbaa !24
  store i64 %t261, ptr %l179, !tbaa !24
  %t262 = load { ptr, ptr }, ptr %l8
  %t264 = extractvalue { ptr, ptr } %t262, 0
  %t265 = extractvalue { ptr, ptr } %t262, 1
  %t266 = call { i64, [4 x i64] } %t264(ptr %t265, i64 0)
  store { i64, [4 x i64] } %t266, ptr %l181
  br label %bb64
bb64:
  %t267 = load ptr, ptr %l178, !tbaa !29
  %t268 = load i64, ptr %l179, !tbaa !24
  %t269 = load { i64, [4 x i64] }, ptr %l181
  %t270 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s10, ptr %t267, i64 %t268, { i64, [4 x i64] } %t269)
  store { i64, ptr } %t270, ptr %l182
  br label %bb65
bb65:
  %t272 = insertvalue { i64, ptr } undef, i64 3, 0
  %t273 = insertvalue { i64, ptr } %t272, ptr %l20, 1
  %t275 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = extractvalue { i64, ptr } %t275, 0
  %t279 = extractvalue { i64, ptr } %t273, 1
  %t280 = extractvalue { i64, ptr } %t273, 0
  %t281 = call i32 @__olang_stat(ptr %t276, ptr %t279)
  store i32 %t281, ptr %l186
  br label %bb66
bb66:
  %t282 = load i32, ptr %l186, !tbaa !23
  %t283 = sext i32 %t282 to i64
  store i64 %t283, ptr %l9, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  store i64 24, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t285 = load i64, ptr %l23, !tbaa !24
  %t286 = load i64, ptr %l22, !tbaa !24
  %t289 = icmp sgt i64 %t285, %t286
  br i1 %t289, label %bb67, label %bb68
bb67:
  %t291 = load i64, ptr %l24, !tbaa !24
  %t293 = icmp sgt i64 %t291, 0
  br i1 %t293, label %bb69, label %bb70
bb68:
  store i64 0, ptr %l191, !tbaa !24
  br label %bb72
bb69:
  %t295 = load i64, ptr %l23, !tbaa !24
  %t296 = load i64, ptr %l22, !tbaa !24
  %t299 = sub i64 %t295, %t296
  %t300 = load i64, ptr %l24, !tbaa !24
  %t303 = add i64 %t299, %t300
  %t305 = sub i64 %t303, 1
  %t306 = load i64, ptr %l24, !tbaa !24
  %t309 = sdiv i64 %t305, %t306
  store i64 %t309, ptr %l194, !tbaa !24
  br label %bb71
bb70:
  store i64 0, ptr %l194, !tbaa !24
  br label %bb71
bb71:
  %t311 = load i64, ptr %l194, !tbaa !24
  store i64 %t311, ptr %l191, !tbaa !24
  br label %bb72
bb72:
  %t312 = load i64, ptr %l191, !tbaa !24
  store i64 %t312, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb73
bb73:
  %t313 = load i64, ptr %l26, !tbaa !24
  %t314 = load i64, ptr %l25, !tbaa !24
  %t317 = icmp slt i64 %t313, %t314
  %t319 = xor i1 %t317, true
  br i1 %t319, label %bb74, label %bb75
bb74:
  br label %bb78
bb75:
  br label %bb76
bb76:
  %t321 = load i64, ptr %l22, !tbaa !24
  %t322 = load i64, ptr %l26, !tbaa !24
  %t323 = load i64, ptr %l24, !tbaa !24
  %t326 = mul i64 %t322, %t323
  %t329 = add i64 %t321, %t326
  store i64 %t329, ptr %l27, !tbaa !24
  %t331 = load i64, ptr %l27, !tbaa !24
  %t332 = load i64, ptr %l27, !tbaa !24
  %t334 = sdiv i64 %t332, 8
  %t336 = getelementptr [3 x i64], ptr %l20, i64 0, i64 %t334
  %t337 = load i64, ptr %t336, !tbaa !34
  %t338 = load i64, ptr %l27, !tbaa !24
  %t340 = srem i64 %t338, 8
  %t342 = mul i64 8, %t340
  store i64 %t342, ptr %l218, !tbaa !24
  %t344 = load i64, ptr %l218, !tbaa !24
  %t345 = load i64, ptr %l218, !tbaa !24
  %t346 = ashr i64 %t337, %t345
  %t348 = and i64 %t346, 255
  %t350 = trunc i64 %t348 to i8
  %t353 = getelementptr [24 x i8], ptr %l21, i64 0, i64 %t331
  store i8 %t350, ptr %t353, !tbaa !32
  br label %bb77
bb77:
  %t354 = load i64, ptr %l26, !tbaa !24
  %t356 = add i64 %t354, 1
  store i64 %t356, ptr %l26, !tbaa !24
  br label %bb73
bb78:
  %t358 = load ptr, ptr %l0, !tbaa !29
  store ptr %t358, ptr %l224, !tbaa !29
  %t359 = load i64, ptr %l1, !tbaa !24
  store i64 %t359, ptr %l225, !tbaa !24
  %t360 = load { ptr, ptr }, ptr %l8
  %t362 = extractvalue { ptr, ptr } %t360, 0
  %t363 = extractvalue { ptr, ptr } %t360, 1
  %t364 = call { i64, [4 x i64] } %t362(ptr %t363, i64 1)
  store { i64, [4 x i64] } %t364, ptr %l227
  br label %bb79
bb79:
  %t366 = insertvalue { i64, ptr } undef, i64 24, 0
  %t367 = insertvalue { i64, ptr } %t366, ptr %l21, 1
  %t368 = load ptr, ptr %l224, !tbaa !29
  %t369 = load i64, ptr %l225, !tbaa !24
  %t370 = load { i64, [4 x i64] }, ptr %l227
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s10, ptr %t368, i64 %t369, { i64, [4 x i64] } %t370, { i64, ptr } %t367, i64 24)
  br label %bb80
bb80:
  call void @__olang_scope_close(ptr %s10)
  br label %bb343
bb81:
  %t372 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t374 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t372, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d10, i32 0, i32 1) })
  store i1 %t374, ptr %l231
  br label %bb82
bb82:
  %t375 = load i1, ptr %l231, !tbaa !21
  br i1 %t375, label %bb83, label %bb84
bb83:
  br label %bb88
bb84:
  %t376 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t378 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t376, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d11, i32 0, i32 1) })
  store i1 %t378, ptr %l233
  br label %bb85
bb85:
  %t379 = load i1, ptr %l233, !tbaa !21
  br i1 %t379, label %bb86, label %bb87
bb86:
  br label %bb88
bb87:
  br label %bb103
bb88:
  store %olang.scope zeroinitializer, ptr %s14
  %t380 = load ptr, ptr %l0, !tbaa !29
  store ptr %t380, ptr %l234, !tbaa !29
  %t381 = load i64, ptr %l1, !tbaa !24
  store i64 %t381, ptr %l235, !tbaa !24
  %t382 = load { ptr, ptr }, ptr %l8
  %t384 = extractvalue { ptr, ptr } %t382, 0
  %t385 = extractvalue { ptr, ptr } %t382, 1
  %t386 = call { i64, [4 x i64] } %t384(ptr %t385, i64 2)
  store { i64, [4 x i64] } %t386, ptr %l237
  br label %bb89
bb89:
  %t387 = load ptr, ptr %l234, !tbaa !29
  %t388 = load i64, ptr %l235, !tbaa !24
  %t389 = load { i64, [4 x i64] }, ptr %l237
  %t390 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t387, i64 %t388, { i64, [4 x i64] } %t389)
  store i64 %t390, ptr %l238
  br label %bb90
bb90:
  %t391 = load i64, ptr %l238, !tbaa !24
  %t392 = icmp sge i64 %t391, 0
  br i1 %t392, label %bb91, label %bb92
bb91:
  %t394 = load i64, ptr %l238, !tbaa !24
  %t395 = mul i64 %t394, 1
  %t396 = call ptr @__olang_scope_alloc_zeroed(ptr %s14, i64 %t395)
  %t397 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t396, 1
  store { i64, ptr } %t398, ptr %l28, !tbaa !27
  %t400 = load ptr, ptr %l0, !tbaa !29
  store ptr %t400, ptr %l241, !tbaa !29
  %t401 = load i64, ptr %l1, !tbaa !24
  store i64 %t401, ptr %l242, !tbaa !24
  %t402 = load { ptr, ptr }, ptr %l8
  %t404 = extractvalue { ptr, ptr } %t402, 0
  %t405 = extractvalue { ptr, ptr } %t402, 1
  %t406 = call { i64, [4 x i64] } %t404(ptr %t405, i64 0)
  store { i64, [4 x i64] } %t406, ptr %l244
  br label %bb93
bb92:
  call void @__olang_check_failed(ptr @olang_loc_1269d295d9d04536_be9a6b7fb42413f2)
  unreachable
bb93:
  %t407 = load ptr, ptr %l241, !tbaa !29
  %t408 = load i64, ptr %l242, !tbaa !24
  %t409 = load { i64, [4 x i64] }, ptr %l244
  %t410 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s14, ptr %t407, i64 %t408, { i64, [4 x i64] } %t409)
  store { i64, ptr } %t410, ptr %l245
  br label %bb94
bb94:
  %t411 = load { i64, ptr }, ptr %l245, !tbaa !27
  store { i64, ptr } %t411, ptr %l29, !tbaa !27
  %t412 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t414 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s14, { i64, ptr } %t412, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t414, ptr %l247
  br label %bb95
bb95:
  %t415 = load i1, ptr %l247, !tbaa !21
  br i1 %t415, label %bb96, label %bb97
bb96:
  %t416 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t417 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t418 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t420 = extractvalue { i64, ptr } %t418, 0
  %t422 = extractvalue { i64, ptr } %t416, 1
  %t423 = extractvalue { i64, ptr } %t416, 0
  %t425 = extractvalue { i64, ptr } %t417, 1
  %t426 = extractvalue { i64, ptr } %t417, 0
  %t428 = call i64 @__olang_dir(ptr %t422, ptr %t425, i64 %t420)
  store i64 %t428, ptr %l253
  br label %bb98
bb97:
  %t429 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t430 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t431 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t433 = extractvalue { i64, ptr } %t431, 0
  %t435 = extractvalue { i64, ptr } %t429, 1
  %t436 = extractvalue { i64, ptr } %t429, 0
  %t438 = extractvalue { i64, ptr } %t430, 1
  %t439 = extractvalue { i64, ptr } %t430, 0
  %t441 = call i64 @__olang_realpath(ptr %t435, ptr %t438, i64 %t433)
  store i64 %t441, ptr %l258
  br label %bb99
bb98:
  %t442 = load i64, ptr %l253, !tbaa !24
  store i64 %t442, ptr %l248, !tbaa !24
  br label %bb100
bb99:
  %t443 = load i64, ptr %l258, !tbaa !24
  store i64 %t443, ptr %l248, !tbaa !24
  br label %bb100
bb100:
  %t444 = load i64, ptr %l248, !tbaa !24
  store i64 %t444, ptr %l9, !tbaa !24
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l259, !tbaa !29
  %t446 = load i64, ptr %l1, !tbaa !24
  store i64 %t446, ptr %l260, !tbaa !24
  %t447 = load { ptr, ptr }, ptr %l8
  %t449 = extractvalue { ptr, ptr } %t447, 0
  %t450 = extractvalue { ptr, ptr } %t447, 1
  %t451 = call { i64, [4 x i64] } %t449(ptr %t450, i64 1)
  store { i64, [4 x i64] } %t451, ptr %l262
  br label %bb101
bb101:
  %t452 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t453 = load { i64, ptr }, ptr %l28, !tbaa !27
  %t455 = extractvalue { i64, ptr } %t453, 0
  %t456 = load ptr, ptr %l259, !tbaa !29
  %t457 = load i64, ptr %l260, !tbaa !24
  %t458 = load { i64, [4 x i64] }, ptr %l262
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s14, ptr %t456, i64 %t457, { i64, [4 x i64] } %t458, { i64, ptr } %t452, i64 %t455)
  br label %bb102
bb102:
  call void @__olang_scope_close(ptr %s14)
  br label %bb343
bb103:
  %t461 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t463 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t461, { i64, ptr } { i64 13, ptr getelementptr inbounds (<{ i64, [13 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t463, ptr %l267
  br label %bb104
bb104:
  %t464 = load i1, ptr %l267, !tbaa !21
  br i1 %t464, label %bb105, label %bb106
bb105:
  br label %bb107
bb106:
  br label %bb121
bb107:
  store %olang.scope zeroinitializer, ptr %s15
  %t465 = load ptr, ptr %l0, !tbaa !29
  store ptr %t465, ptr %l268, !tbaa !29
  %t466 = load i64, ptr %l1, !tbaa !24
  store i64 %t466, ptr %l269, !tbaa !24
  %t467 = load { ptr, ptr }, ptr %l8
  %t469 = extractvalue { ptr, ptr } %t467, 0
  %t470 = extractvalue { ptr, ptr } %t467, 1
  %t471 = call { i64, [4 x i64] } %t469(ptr %t470, i64 0)
  store { i64, [4 x i64] } %t471, ptr %l271
  br label %bb108
bb108:
  %t472 = load ptr, ptr %l268, !tbaa !29
  %t473 = load i64, ptr %l269, !tbaa !24
  %t474 = load { i64, [4 x i64] }, ptr %l271
  %t475 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s15, ptr %t472, i64 %t473, { i64, [4 x i64] } %t474)
  store { i64, ptr } %t475, ptr %l272
  br label %bb109
bb109:
  %t476 = load ptr, ptr %l0, !tbaa !29
  store ptr %t476, ptr %l273, !tbaa !29
  %t477 = load i64, ptr %l1, !tbaa !24
  store i64 %t477, ptr %l274, !tbaa !24
  %t478 = load { ptr, ptr }, ptr %l8
  %t480 = extractvalue { ptr, ptr } %t478, 0
  %t481 = extractvalue { ptr, ptr } %t478, 1
  %t482 = call { i64, [4 x i64] } %t480(ptr %t481, i64 1)
  store { i64, [4 x i64] } %t482, ptr %l276
  br label %bb110
bb110:
  %t483 = load ptr, ptr %l273, !tbaa !29
  %t484 = load i64, ptr %l274, !tbaa !24
  %t485 = load { i64, [4 x i64] }, ptr %l276
  %t486 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t483, i64 %t484, { i64, [4 x i64] } %t485)
  store i64 %t486, ptr %l277
  br label %bb111
bb111:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l278, !tbaa !29
  %t488 = load i64, ptr %l1, !tbaa !24
  store i64 %t488, ptr %l279, !tbaa !24
  %t489 = load { ptr, ptr }, ptr %l8
  %t491 = extractvalue { ptr, ptr } %t489, 0
  %t492 = extractvalue { ptr, ptr } %t489, 1
  %t493 = call { i64, [4 x i64] } %t491(ptr %t492, i64 2)
  store { i64, [4 x i64] } %t493, ptr %l281
  br label %bb112
bb112:
  %t494 = load ptr, ptr %l278, !tbaa !29
  %t495 = load i64, ptr %l279, !tbaa !24
  %t496 = load { i64, [4 x i64] }, ptr %l281
  %t497 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t494, i64 %t495, { i64, [4 x i64] } %t496)
  store i64 %t497, ptr %l282
  br label %bb113
bb113:
  %t498 = load i64, ptr %l282, !tbaa !24
  %t499 = trunc i64 %t498 to i32
  store i32 %t499, ptr %l283, !tbaa !23
  %t500 = load ptr, ptr %l0, !tbaa !29
  store ptr %t500, ptr %l284, !tbaa !29
  %t501 = load i64, ptr %l1, !tbaa !24
  store i64 %t501, ptr %l285, !tbaa !24
  %t502 = load { ptr, ptr }, ptr %l8
  %t504 = extractvalue { ptr, ptr } %t502, 0
  %t505 = extractvalue { ptr, ptr } %t502, 1
  %t506 = call { i64, [4 x i64] } %t504(ptr %t505, i64 3)
  store { i64, [4 x i64] } %t506, ptr %l287
  br label %bb114
bb114:
  %t507 = load ptr, ptr %l284, !tbaa !29
  %t508 = load i64, ptr %l285, !tbaa !24
  %t509 = load { i64, [4 x i64] }, ptr %l287
  %t510 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t507, i64 %t508, { i64, [4 x i64] } %t509)
  store i64 %t510, ptr %l288
  br label %bb115
bb115:
  %t511 = load i64, ptr %l288, !tbaa !24
  %t512 = trunc i64 %t511 to i32
  store i32 %t512, ptr %l289, !tbaa !23
  %t513 = load ptr, ptr %l0, !tbaa !29
  store ptr %t513, ptr %l290, !tbaa !29
  %t514 = load i64, ptr %l1, !tbaa !24
  store i64 %t514, ptr %l291, !tbaa !24
  %t515 = load { ptr, ptr }, ptr %l8
  %t517 = extractvalue { ptr, ptr } %t515, 0
  %t518 = extractvalue { ptr, ptr } %t515, 1
  %t519 = call { i64, [4 x i64] } %t517(ptr %t518, i64 4)
  store { i64, [4 x i64] } %t519, ptr %l293
  br label %bb116
bb116:
  %t520 = load ptr, ptr %l290, !tbaa !29
  %t521 = load i64, ptr %l291, !tbaa !24
  %t522 = load { i64, [4 x i64] }, ptr %l293
  %t523 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t520, i64 %t521, { i64, [4 x i64] } %t522)
  store i64 %t523, ptr %l294
  br label %bb117
bb117:
  %t524 = load i64, ptr %l294, !tbaa !24
  %t525 = trunc i64 %t524 to i32
  store i32 %t525, ptr %l295, !tbaa !23
  %t526 = load ptr, ptr %l0, !tbaa !29
  store ptr %t526, ptr %l296, !tbaa !29
  %t527 = load i64, ptr %l1, !tbaa !24
  store i64 %t527, ptr %l297, !tbaa !24
  %t528 = load { ptr, ptr }, ptr %l8
  %t530 = extractvalue { ptr, ptr } %t528, 0
  %t531 = extractvalue { ptr, ptr } %t528, 1
  %t532 = call { i64, [4 x i64] } %t530(ptr %t531, i64 5)
  store { i64, [4 x i64] } %t532, ptr %l299
  br label %bb118
bb118:
  %t533 = load ptr, ptr %l296, !tbaa !29
  %t534 = load i64, ptr %l297, !tbaa !24
  %t535 = load { i64, [4 x i64] }, ptr %l299
  %t536 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s15, ptr %t533, i64 %t534, { i64, [4 x i64] } %t535)
  store { i64, ptr } %t536, ptr %l300
  br label %bb119
bb119:
  %t537 = load { i64, ptr }, ptr %l272, !tbaa !27
  %t538 = extractvalue { i64, ptr } %t537, 1
  %t539 = extractvalue { i64, ptr } %t537, 0
  %t540 = load i64, ptr %l277, !tbaa !24
  %t541 = load i32, ptr %l283, !tbaa !23
  %t542 = load i32, ptr %l289, !tbaa !23
  %t543 = load i32, ptr %l295, !tbaa !23
  %t544 = load { i64, ptr }, ptr %l300, !tbaa !27
  %t545 = extractvalue { i64, ptr } %t544, 1
  %t546 = extractvalue { i64, ptr } %t544, 0
  %t547 = call i32 @__olang_spawn(ptr %t538, i64 %t540, i32 %t541, i32 %t542, i32 %t543, ptr %t545)
  store i32 %t547, ptr %l301
  br label %bb120
bb120:
  %t548 = load i32, ptr %l301, !tbaa !23
  %t549 = sext i32 %t548 to i64
  store i64 %t549, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s15)
  br label %bb343
bb121:
  %t551 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t553 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t551, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t553, ptr %l304
  br label %bb122
bb122:
  %t554 = load i1, ptr %l304, !tbaa !21
  br i1 %t554, label %bb123, label %bb124
bb123:
  br label %bb125
bb124:
  br label %bb141
bb125:
  store %olang.scope zeroinitializer, ptr %s16
  %t555 = load ptr, ptr %l0, !tbaa !29
  store ptr %t555, ptr %l305, !tbaa !29
  %t556 = load i64, ptr %l1, !tbaa !24
  store i64 %t556, ptr %l306, !tbaa !24
  %t557 = load { ptr, ptr }, ptr %l8
  %t559 = extractvalue { ptr, ptr } %t557, 0
  %t560 = extractvalue { ptr, ptr } %t557, 1
  %t561 = call { i64, [4 x i64] } %t559(ptr %t560, i64 0)
  store { i64, [4 x i64] } %t561, ptr %l308
  br label %bb126
bb126:
  %t562 = load ptr, ptr %l305, !tbaa !29
  %t563 = load i64, ptr %l306, !tbaa !24
  %t564 = load { i64, [4 x i64] }, ptr %l308
  %t565 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s16, ptr %t562, i64 %t563, { i64, [4 x i64] } %t564)
  store { i64, ptr } %t565, ptr %l309
  br label %bb127
bb127:
  %t566 = load ptr, ptr %l0, !tbaa !29
  store ptr %t566, ptr %l310, !tbaa !29
  %t567 = load i64, ptr %l1, !tbaa !24
  store i64 %t567, ptr %l311, !tbaa !24
  %t568 = load { ptr, ptr }, ptr %l8
  %t570 = extractvalue { ptr, ptr } %t568, 0
  %t571 = extractvalue { ptr, ptr } %t568, 1
  %t572 = call { i64, [4 x i64] } %t570(ptr %t571, i64 1)
  store { i64, [4 x i64] } %t572, ptr %l313
  br label %bb128
bb128:
  %t573 = load ptr, ptr %l310, !tbaa !29
  %t574 = load i64, ptr %l311, !tbaa !24
  %t575 = load { i64, [4 x i64] }, ptr %l313
  %t576 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s16, ptr %t573, i64 %t574, { i64, [4 x i64] } %t575)
  store { i64, ptr } %t576, ptr %l314
  br label %bb129
bb129:
  %t577 = load ptr, ptr %l0, !tbaa !29
  store ptr %t577, ptr %l315, !tbaa !29
  %t578 = load i64, ptr %l1, !tbaa !24
  store i64 %t578, ptr %l316, !tbaa !24
  %t579 = load { ptr, ptr }, ptr %l8
  %t581 = extractvalue { ptr, ptr } %t579, 0
  %t582 = extractvalue { ptr, ptr } %t579, 1
  %t583 = call { i64, [4 x i64] } %t581(ptr %t582, i64 2)
  store { i64, [4 x i64] } %t583, ptr %l318
  br label %bb130
bb130:
  %t584 = load ptr, ptr %l315, !tbaa !29
  %t585 = load i64, ptr %l316, !tbaa !24
  %t586 = load { i64, [4 x i64] }, ptr %l318
  %t587 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t584, i64 %t585, { i64, [4 x i64] } %t586)
  store i64 %t587, ptr %l319
  br label %bb131
bb131:
  %t588 = load ptr, ptr %l0, !tbaa !29
  store ptr %t588, ptr %l320, !tbaa !29
  %t589 = load i64, ptr %l1, !tbaa !24
  store i64 %t589, ptr %l321, !tbaa !24
  %t590 = load { ptr, ptr }, ptr %l8
  %t592 = extractvalue { ptr, ptr } %t590, 0
  %t593 = extractvalue { ptr, ptr } %t590, 1
  %t594 = call { i64, [4 x i64] } %t592(ptr %t593, i64 3)
  store { i64, [4 x i64] } %t594, ptr %l323
  br label %bb132
bb132:
  %t595 = load ptr, ptr %l320, !tbaa !29
  %t596 = load i64, ptr %l321, !tbaa !24
  %t597 = load { i64, [4 x i64] }, ptr %l323
  %t598 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t595, i64 %t596, { i64, [4 x i64] } %t597)
  store i64 %t598, ptr %l324
  br label %bb133
bb133:
  %t599 = load i64, ptr %l324, !tbaa !24
  %t600 = trunc i64 %t599 to i32
  store i32 %t600, ptr %l325, !tbaa !23
  %t601 = load ptr, ptr %l0, !tbaa !29
  store ptr %t601, ptr %l326, !tbaa !29
  %t602 = load i64, ptr %l1, !tbaa !24
  store i64 %t602, ptr %l327, !tbaa !24
  %t603 = load { ptr, ptr }, ptr %l8
  %t605 = extractvalue { ptr, ptr } %t603, 0
  %t606 = extractvalue { ptr, ptr } %t603, 1
  %t607 = call { i64, [4 x i64] } %t605(ptr %t606, i64 4)
  store { i64, [4 x i64] } %t607, ptr %l329
  br label %bb134
bb134:
  %t608 = load ptr, ptr %l326, !tbaa !29
  %t609 = load i64, ptr %l327, !tbaa !24
  %t610 = load { i64, [4 x i64] }, ptr %l329
  %t611 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t608, i64 %t609, { i64, [4 x i64] } %t610)
  store i64 %t611, ptr %l330
  br label %bb135
bb135:
  %t612 = load i64, ptr %l330, !tbaa !24
  %t613 = trunc i64 %t612 to i32
  store i32 %t613, ptr %l331, !tbaa !23
  %t614 = load ptr, ptr %l0, !tbaa !29
  store ptr %t614, ptr %l332, !tbaa !29
  %t615 = load i64, ptr %l1, !tbaa !24
  store i64 %t615, ptr %l333, !tbaa !24
  %t616 = load { ptr, ptr }, ptr %l8
  %t618 = extractvalue { ptr, ptr } %t616, 0
  %t619 = extractvalue { ptr, ptr } %t616, 1
  %t620 = call { i64, [4 x i64] } %t618(ptr %t619, i64 5)
  store { i64, [4 x i64] } %t620, ptr %l335
  br label %bb136
bb136:
  %t621 = load ptr, ptr %l332, !tbaa !29
  %t622 = load i64, ptr %l333, !tbaa !24
  %t623 = load { i64, [4 x i64] }, ptr %l335
  %t624 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t621, i64 %t622, { i64, [4 x i64] } %t623)
  store i64 %t624, ptr %l336
  br label %bb137
bb137:
  %t625 = load i64, ptr %l336, !tbaa !24
  %t626 = trunc i64 %t625 to i32
  store i32 %t626, ptr %l337, !tbaa !23
  %t627 = load ptr, ptr %l0, !tbaa !29
  store ptr %t627, ptr %l338, !tbaa !29
  %t628 = load i64, ptr %l1, !tbaa !24
  store i64 %t628, ptr %l339, !tbaa !24
  %t629 = load { ptr, ptr }, ptr %l8
  %t631 = extractvalue { ptr, ptr } %t629, 0
  %t632 = extractvalue { ptr, ptr } %t629, 1
  %t633 = call { i64, [4 x i64] } %t631(ptr %t632, i64 6)
  store { i64, [4 x i64] } %t633, ptr %l341
  br label %bb138
bb138:
  %t634 = load ptr, ptr %l338, !tbaa !29
  %t635 = load i64, ptr %l339, !tbaa !24
  %t636 = load { i64, [4 x i64] }, ptr %l341
  %t637 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s16, ptr %t634, i64 %t635, { i64, [4 x i64] } %t636)
  store { i64, ptr } %t637, ptr %l342
  br label %bb139
bb139:
  %t638 = load { i64, ptr }, ptr %l309, !tbaa !27
  %t639 = extractvalue { i64, ptr } %t638, 1
  %t640 = extractvalue { i64, ptr } %t638, 0
  %t641 = load { i64, ptr }, ptr %l314, !tbaa !27
  %t642 = extractvalue { i64, ptr } %t641, 1
  %t643 = extractvalue { i64, ptr } %t641, 0
  %t644 = load i64, ptr %l319, !tbaa !24
  %t645 = load i32, ptr %l325, !tbaa !23
  %t646 = load i32, ptr %l331, !tbaa !23
  %t647 = load i32, ptr %l337, !tbaa !23
  %t648 = load { i64, ptr }, ptr %l342, !tbaa !27
  %t649 = extractvalue { i64, ptr } %t648, 1
  %t650 = extractvalue { i64, ptr } %t648, 0
  %t651 = call i32 @__olang_spawn_as(ptr %t639, ptr %t642, i64 %t644, i32 %t645, i32 %t646, i32 %t647, ptr %t649)
  store i32 %t651, ptr %l343
  br label %bb140
bb140:
  %t652 = load i32, ptr %l343, !tbaa !23
  %t653 = sext i32 %t652 to i64
  store i64 %t653, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s16)
  br label %bb343
bb141:
  %t655 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t657 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t655, { i64, ptr } { i64 12, ptr getelementptr inbounds (<{ i64, [12 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t657, ptr %l346
  br label %bb142
bb142:
  %t658 = load i1, ptr %l346, !tbaa !21
  br i1 %t658, label %bb143, label %bb144
bb143:
  br label %bb145
bb144:
  br label %bb153
bb145:
  store %olang.scope zeroinitializer, ptr %s17
  %t659 = load ptr, ptr %l0, !tbaa !29
  store ptr %t659, ptr %l347, !tbaa !29
  %t660 = load i64, ptr %l1, !tbaa !24
  store i64 %t660, ptr %l348, !tbaa !24
  %t661 = load { ptr, ptr }, ptr %l8
  %t663 = extractvalue { ptr, ptr } %t661, 0
  %t664 = extractvalue { ptr, ptr } %t661, 1
  %t665 = call { i64, [4 x i64] } %t663(ptr %t664, i64 0)
  store { i64, [4 x i64] } %t665, ptr %l350
  br label %bb146
bb146:
  %t666 = load ptr, ptr %l347, !tbaa !29
  %t667 = load i64, ptr %l348, !tbaa !24
  %t668 = load { i64, [4 x i64] }, ptr %l350
  %t669 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s17, ptr %t666, i64 %t667, { i64, [4 x i64] } %t668)
  store { i64, ptr } %t669, ptr %l351
  br label %bb147
bb147:
  %t670 = load ptr, ptr %l0, !tbaa !29
  store ptr %t670, ptr %l352, !tbaa !29
  %t671 = load i64, ptr %l1, !tbaa !24
  store i64 %t671, ptr %l353, !tbaa !24
  %t672 = load { ptr, ptr }, ptr %l8
  %t674 = extractvalue { ptr, ptr } %t672, 0
  %t675 = extractvalue { ptr, ptr } %t672, 1
  %t676 = call { i64, [4 x i64] } %t674(ptr %t675, i64 1)
  store { i64, [4 x i64] } %t676, ptr %l355
  br label %bb148
bb148:
  %t677 = load ptr, ptr %l352, !tbaa !29
  %t678 = load i64, ptr %l353, !tbaa !24
  %t679 = load { i64, [4 x i64] }, ptr %l355
  %t680 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s17, ptr %t677, i64 %t678, { i64, [4 x i64] } %t679)
  store { i64, ptr } %t680, ptr %l356
  br label %bb149
bb149:
  %t681 = load ptr, ptr %l0, !tbaa !29
  store ptr %t681, ptr %l357, !tbaa !29
  %t682 = load i64, ptr %l1, !tbaa !24
  store i64 %t682, ptr %l358, !tbaa !24
  %t683 = load { ptr, ptr }, ptr %l8
  %t685 = extractvalue { ptr, ptr } %t683, 0
  %t686 = extractvalue { ptr, ptr } %t683, 1
  %t687 = call { i64, [4 x i64] } %t685(ptr %t686, i64 2)
  store { i64, [4 x i64] } %t687, ptr %l360
  br label %bb150
bb150:
  %t688 = load ptr, ptr %l357, !tbaa !29
  %t689 = load i64, ptr %l358, !tbaa !24
  %t690 = load { i64, [4 x i64] }, ptr %l360
  %t691 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t688, i64 %t689, { i64, [4 x i64] } %t690)
  store i64 %t691, ptr %l361
  br label %bb151
bb151:
  %t692 = load { i64, ptr }, ptr %l351, !tbaa !27
  %t693 = extractvalue { i64, ptr } %t692, 1
  %t694 = extractvalue { i64, ptr } %t692, 0
  %t695 = load { i64, ptr }, ptr %l356, !tbaa !27
  %t696 = extractvalue { i64, ptr } %t695, 1
  %t697 = extractvalue { i64, ptr } %t695, 0
  %t698 = load i64, ptr %l361, !tbaa !24
  %t699 = call i32 @__olang_exec(ptr %t693, ptr %t696, i64 %t698)
  store i32 %t699, ptr %l362
  br label %bb152
bb152:
  %t700 = load i32, ptr %l362, !tbaa !23
  %t701 = sext i32 %t700 to i64
  store i64 %t701, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s17)
  br label %bb343
bb153:
  %t703 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t705 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t703, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t705, ptr %l365
  br label %bb154
bb154:
  %t706 = load i1, ptr %l365, !tbaa !21
  br i1 %t706, label %bb155, label %bb156
bb155:
  br label %bb157
bb156:
  br label %bb163
bb157:
  store %olang.scope zeroinitializer, ptr %s18
  %t707 = load ptr, ptr %l0, !tbaa !29
  store ptr %t707, ptr %l366, !tbaa !29
  %t708 = load i64, ptr %l1, !tbaa !24
  store i64 %t708, ptr %l367, !tbaa !24
  %t709 = load { ptr, ptr }, ptr %l8
  %t711 = extractvalue { ptr, ptr } %t709, 0
  %t712 = extractvalue { ptr, ptr } %t709, 1
  %t713 = call { i64, [4 x i64] } %t711(ptr %t712, i64 0)
  store { i64, [4 x i64] } %t713, ptr %l369
  br label %bb158
bb158:
  %t714 = load ptr, ptr %l366, !tbaa !29
  %t715 = load i64, ptr %l367, !tbaa !24
  %t716 = load { i64, [4 x i64] }, ptr %l369
  %t717 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s18, ptr %t714, i64 %t715, { i64, [4 x i64] } %t716)
  store { i64, ptr } %t717, ptr %l370
  br label %bb159
bb159:
  %t718 = load { i64, ptr }, ptr %l370, !tbaa !27
  store { i64, ptr } %t718, ptr %l30, !tbaa !27
  %t719 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t721 = extractvalue { i64, ptr } %t719, 1
  %t722 = extractvalue { i64, ptr } %t719, 0
  %t723 = call i32 @__olang_mkdtemp(ptr %t721)
  store i32 %t723, ptr %l372
  br label %bb160
bb160:
  %t724 = load i32, ptr %l372, !tbaa !23
  %t725 = sext i32 %t724 to i64
  store i64 %t725, ptr %l9, !tbaa !24
  %t727 = load ptr, ptr %l0, !tbaa !29
  store ptr %t727, ptr %l374, !tbaa !29
  %t728 = load i64, ptr %l1, !tbaa !24
  store i64 %t728, ptr %l375, !tbaa !24
  %t729 = load { ptr, ptr }, ptr %l8
  %t731 = extractvalue { ptr, ptr } %t729, 0
  %t732 = extractvalue { ptr, ptr } %t729, 1
  %t733 = call { i64, [4 x i64] } %t731(ptr %t732, i64 0)
  store { i64, [4 x i64] } %t733, ptr %l377
  br label %bb161
bb161:
  %t734 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t735 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t737 = extractvalue { i64, ptr } %t735, 0
  %t738 = load ptr, ptr %l374, !tbaa !29
  %t739 = load i64, ptr %l375, !tbaa !24
  %t740 = load { i64, [4 x i64] }, ptr %l377
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s18, ptr %t738, i64 %t739, { i64, [4 x i64] } %t740, { i64, ptr } %t734, i64 %t737)
  br label %bb162
bb162:
  call void @__olang_scope_close(ptr %s18)
  br label %bb343
bb163:
  %t743 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t745 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t743, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t745, ptr %l382
  br label %bb164
bb164:
  %t746 = load i1, ptr %l382, !tbaa !21
  br i1 %t746, label %bb165, label %bb166
bb165:
  br label %bb170
bb166:
  %t747 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t749 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t747, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d18, i32 0, i32 1) })
  store i1 %t749, ptr %l384
  br label %bb167
bb167:
  %t750 = load i1, ptr %l384, !tbaa !21
  br i1 %t750, label %bb168, label %bb169
bb168:
  br label %bb170
bb169:
  br label %bb217
bb170:
  store %olang.scope zeroinitializer, ptr %s19
  %t751 = load ptr, ptr %l0, !tbaa !29
  store ptr %t751, ptr %l385, !tbaa !29
  %t752 = load i64, ptr %l1, !tbaa !24
  store i64 %t752, ptr %l386, !tbaa !24
  %t753 = load { ptr, ptr }, ptr %l8
  %t755 = extractvalue { ptr, ptr } %t753, 0
  %t756 = extractvalue { ptr, ptr } %t753, 1
  %t757 = call { i64, [4 x i64] } %t755(ptr %t756, i64 2)
  store { i64, [4 x i64] } %t757, ptr %l388
  br label %bb171
bb171:
  %t758 = load ptr, ptr %l385, !tbaa !29
  %t759 = load i64, ptr %l386, !tbaa !24
  %t760 = load { i64, [4 x i64] }, ptr %l388
  %t761 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s19, ptr %t758, i64 %t759, { i64, [4 x i64] } %t760)
  store { i64, ptr } %t761, ptr %l389
  br label %bb172
bb172:
  %t762 = load { i64, ptr }, ptr %l389, !tbaa !27
  store { i64, ptr } %t762, ptr %l31, !tbaa !27
  %t763 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t765 = extractvalue { i64, ptr } %t763, 0
  %t767 = sdiv i64 %t765, 8
  store i64 %t767, ptr %l392, !tbaa !24
  %t768 = load i64, ptr %l392, !tbaa !24
  %t769 = icmp sge i64 %t768, 0
  br i1 %t769, label %bb173, label %bb174
bb173:
  %t771 = load i64, ptr %l392, !tbaa !24
  %t772 = icmp sle i64 %t771, 1152921504606846975
  br i1 %t772, label %bb175, label %bb176
bb174:
  call void @__olang_check_failed(ptr @olang_loc_d5c4bb6f444265cb_1686743ce9a847e7)
  unreachable
bb175:
  %t774 = load i64, ptr %l392, !tbaa !24
  %t775 = mul i64 %t774, 8
  %t776 = call ptr @__olang_scope_alloc_zeroed(ptr %s19, i64 %t775)
  %t777 = insertvalue { i64, ptr } undef, i64 %t774, 0
  %t778 = insertvalue { i64, ptr } %t777, ptr %t776, 1
  store { i64, ptr } %t778, ptr %l32, !tbaa !27
  store i64 0, ptr %l33, !tbaa !24
  %t780 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t782 = extractvalue { i64, ptr } %t780, 0
  store i64 %t782, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t784 = load i64, ptr %l34, !tbaa !24
  %t785 = load i64, ptr %l33, !tbaa !24
  %t788 = icmp sgt i64 %t784, %t785
  br i1 %t788, label %bb177, label %bb178
bb176:
  call void @__olang_check_failed(ptr @olang_loc_d5c4bb6f444265cb_1686743ce9a847e7)
  unreachable
bb177:
  %t790 = load i64, ptr %l35, !tbaa !24
  %t792 = icmp sgt i64 %t790, 0
  br i1 %t792, label %bb179, label %bb180
bb178:
  store i64 0, ptr %l401, !tbaa !24
  br label %bb182
bb179:
  %t794 = load i64, ptr %l34, !tbaa !24
  %t795 = load i64, ptr %l33, !tbaa !24
  %t798 = sub i64 %t794, %t795
  %t799 = load i64, ptr %l35, !tbaa !24
  %t802 = add i64 %t798, %t799
  %t804 = sub i64 %t802, 1
  %t805 = load i64, ptr %l35, !tbaa !24
  %t808 = sdiv i64 %t804, %t805
  store i64 %t808, ptr %l404, !tbaa !24
  br label %bb181
bb180:
  store i64 0, ptr %l404, !tbaa !24
  br label %bb181
bb181:
  %t810 = load i64, ptr %l404, !tbaa !24
  store i64 %t810, ptr %l401, !tbaa !24
  br label %bb182
bb182:
  %t811 = load i64, ptr %l401, !tbaa !24
  store i64 %t811, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb183
bb183:
  %t812 = load i64, ptr %l37, !tbaa !24
  %t813 = load i64, ptr %l36, !tbaa !24
  %t816 = icmp slt i64 %t812, %t813
  %t818 = xor i1 %t816, true
  br i1 %t818, label %bb184, label %bb185
bb184:
  br label %bb188
bb185:
  br label %bb186
bb186:
  %t820 = load i64, ptr %l33, !tbaa !24
  %t821 = load i64, ptr %l37, !tbaa !24
  %t822 = load i64, ptr %l35, !tbaa !24
  %t825 = mul i64 %t821, %t822
  %t828 = add i64 %t820, %t825
  store i64 %t828, ptr %l38, !tbaa !24
  %t830 = load i64, ptr %l38, !tbaa !24
  %t832 = sdiv i64 %t830, 8
  %t833 = load i64, ptr %l38, !tbaa !24
  %t835 = sdiv i64 %t833, 8
  %t837 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t838 = load ptr, ptr %t837, !tbaa !27
  %t839 = getelementptr i64, ptr %t838, i64 %t835
  %t840 = load i64, ptr %t839, !tbaa !85
  %t841 = load i64, ptr %l38, !tbaa !24
  %t843 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t844 = load ptr, ptr %t843, !tbaa !27
  %t845 = getelementptr i8, ptr %t844, i64 %t841
  %t846 = load i8, ptr %t845, !tbaa !32
  %t848 = zext i8 %t846 to i64
  %t849 = load i64, ptr %l38, !tbaa !24
  %t851 = srem i64 %t849, 8
  %t853 = mul i64 8, %t851
  store i64 %t853, ptr %l433, !tbaa !65
  %t856 = load i64, ptr %l433, !tbaa !65
  %t857 = load i64, ptr %l433, !tbaa !65
  %t858 = shl i64 %t848, %t857
  %t861 = or i64 %t840, %t858
  %t864 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t865 = load ptr, ptr %t864, !tbaa !27
  %t866 = getelementptr i64, ptr %t865, i64 %t832
  store i64 %t861, ptr %t866, !tbaa !85
  br label %bb187
bb187:
  %t867 = load i64, ptr %l37, !tbaa !24
  %t869 = add i64 %t867, 1
  store i64 %t869, ptr %l37, !tbaa !24
  br label %bb183
bb188:
  %t871 = load ptr, ptr %l0, !tbaa !29
  store ptr %t871, ptr %l438, !tbaa !29
  %t872 = load i64, ptr %l1, !tbaa !24
  store i64 %t872, ptr %l439, !tbaa !24
  %t873 = load { ptr, ptr }, ptr %l8
  %t875 = extractvalue { ptr, ptr } %t873, 0
  %t876 = extractvalue { ptr, ptr } %t873, 1
  %t877 = call { i64, [4 x i64] } %t875(ptr %t876, i64 0)
  store { i64, [4 x i64] } %t877, ptr %l441
  br label %bb189
bb189:
  %t878 = load ptr, ptr %l438, !tbaa !29
  %t879 = load i64, ptr %l439, !tbaa !24
  %t880 = load { i64, [4 x i64] }, ptr %l441
  %t881 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s19, ptr %t878, i64 %t879, { i64, [4 x i64] } %t880)
  store { i64, ptr } %t881, ptr %l442
  br label %bb190
bb190:
  %t882 = load { i64, ptr }, ptr %l442, !tbaa !27
  store { i64, ptr } %t882, ptr %l39, !tbaa !27
  %t883 = load ptr, ptr %l0, !tbaa !29
  store ptr %t883, ptr %l443, !tbaa !29
  %t884 = load i64, ptr %l1, !tbaa !24
  store i64 %t884, ptr %l444, !tbaa !24
  %t885 = load { ptr, ptr }, ptr %l8
  %t887 = extractvalue { ptr, ptr } %t885, 0
  %t888 = extractvalue { ptr, ptr } %t885, 1
  %t889 = call { i64, [4 x i64] } %t887(ptr %t888, i64 1)
  store { i64, [4 x i64] } %t889, ptr %l446
  br label %bb191
bb191:
  %t890 = load ptr, ptr %l443, !tbaa !29
  %t891 = load i64, ptr %l444, !tbaa !24
  %t892 = load { i64, [4 x i64] }, ptr %l446
  %t893 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s19, ptr %t890, i64 %t891, { i64, [4 x i64] } %t892)
  store { i64, ptr } %t893, ptr %l447
  br label %bb192
bb192:
  %t894 = load { i64, ptr }, ptr %l447, !tbaa !27
  store { i64, ptr } %t894, ptr %l40, !tbaa !27
  %t895 = load ptr, ptr %l0, !tbaa !29
  store ptr %t895, ptr %l448, !tbaa !29
  %t896 = load i64, ptr %l1, !tbaa !24
  store i64 %t896, ptr %l449, !tbaa !24
  %t897 = load { ptr, ptr }, ptr %l8
  %t899 = extractvalue { ptr, ptr } %t897, 0
  %t900 = extractvalue { ptr, ptr } %t897, 1
  %t901 = call { i64, [4 x i64] } %t899(ptr %t900, i64 3)
  store { i64, [4 x i64] } %t901, ptr %l451
  br label %bb193
bb193:
  %t902 = load ptr, ptr %l448, !tbaa !29
  %t903 = load i64, ptr %l449, !tbaa !24
  %t904 = load { i64, [4 x i64] }, ptr %l451
  %t905 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t902, i64 %t903, { i64, [4 x i64] } %t904)
  store i64 %t905, ptr %l452
  br label %bb194
bb194:
  %t906 = load i64, ptr %l452, !tbaa !24
  %t907 = trunc i64 %t906 to i8
  store i8 %t907, ptr %l41, !tbaa !22
  %t909 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t911 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s19, { i64, ptr } %t909, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d19, i32 0, i32 1) })
  store i1 %t911, ptr %l455
  br label %bb195
bb195:
  %t912 = load i1, ptr %l455, !tbaa !21
  br i1 %t912, label %bb196, label %bb197
bb196:
  %t913 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t913, ptr %l457, !tbaa !27
  %t914 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t914, ptr %l458, !tbaa !27
  %t915 = load { i64, ptr }, ptr %l32, !tbaa !27
  store { i64, ptr } %t915, ptr %l459, !tbaa !27
  %t916 = load i8, ptr %l41, !tbaa !22
  store i8 %t916, ptr %l460, !tbaa !22
  %t917 = load ptr, ptr %l0, !tbaa !29
  store ptr %t917, ptr %l461, !tbaa !29
  %t918 = load i64, ptr %l1, !tbaa !24
  store i64 %t918, ptr %l462, !tbaa !24
  %t919 = load { ptr, ptr }, ptr %l8
  %t921 = extractvalue { ptr, ptr } %t919, 0
  %t922 = extractvalue { ptr, ptr } %t919, 1
  %t923 = call { i64, [4 x i64] } %t921(ptr %t922, i64 4)
  store { i64, [4 x i64] } %t923, ptr %l464
  br label %bb198
bb197:
  %t924 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t925 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t926 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t927 = load i8, ptr %l41, !tbaa !22
  %t929 = extractvalue { i64, ptr } %t924, 1
  %t930 = extractvalue { i64, ptr } %t924, 0
  %t932 = extractvalue { i64, ptr } %t925, 1
  %t933 = extractvalue { i64, ptr } %t925, 0
  %t935 = extractvalue { i64, ptr } %t926, 1
  %t936 = extractvalue { i64, ptr } %t926, 0
  %t938 = call i64 @__olang_dyncall(ptr %t929, ptr %t932, ptr %t935, i8 zeroext %t927)
  store i64 %t938, ptr %l472
  br label %bb201
bb198:
  %t939 = load ptr, ptr %l461, !tbaa !29
  %t940 = load i64, ptr %l462, !tbaa !24
  %t941 = load { i64, [4 x i64] }, ptr %l464
  %t942 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t939, i64 %t940, { i64, [4 x i64] } %t941)
  store i64 %t942, ptr %l465
  br label %bb199
bb199:
  %t943 = load { i64, ptr }, ptr %l457, !tbaa !27
  %t944 = extractvalue { i64, ptr } %t943, 1
  %t945 = extractvalue { i64, ptr } %t943, 0
  %t946 = load { i64, ptr }, ptr %l458, !tbaa !27
  %t947 = extractvalue { i64, ptr } %t946, 1
  %t948 = extractvalue { i64, ptr } %t946, 0
  %t949 = load { i64, ptr }, ptr %l459, !tbaa !27
  %t950 = extractvalue { i64, ptr } %t949, 1
  %t951 = extractvalue { i64, ptr } %t949, 0
  %t952 = load i8, ptr %l460, !tbaa !22
  %t953 = load i64, ptr %l465, !tbaa !24
  %t954 = call i64 @__olang_dyncall_var(ptr %t944, ptr %t947, ptr %t950, i8 zeroext %t952, i64 %t953)
  store i64 %t954, ptr %l466
  br label %bb200
bb200:
  %t955 = load i64, ptr %l466, !tbaa !65
  store i64 %t955, ptr %l456, !tbaa !24
  br label %bb202
bb201:
  %t957 = load i64, ptr %l472, !tbaa !65
  store i64 %t957, ptr %l456, !tbaa !24
  br label %bb202
bb202:
  %t959 = load i64, ptr %l456, !tbaa !24
  store i64 %t959, ptr %l9, !tbaa !24
  store i64 0, ptr %l42, !tbaa !24
  %t960 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t962 = extractvalue { i64, ptr } %t960, 0
  store i64 %t962, ptr %l43, !tbaa !24
  store i64 1, ptr %l44, !tbaa !24
  %t964 = load i64, ptr %l43, !tbaa !24
  %t965 = load i64, ptr %l42, !tbaa !24
  %t968 = icmp sgt i64 %t964, %t965
  br i1 %t968, label %bb203, label %bb204
bb203:
  %t970 = load i64, ptr %l44, !tbaa !24
  %t972 = icmp sgt i64 %t970, 0
  br i1 %t972, label %bb205, label %bb206
bb204:
  store i64 0, ptr %l479, !tbaa !24
  br label %bb208
bb205:
  %t974 = load i64, ptr %l43, !tbaa !24
  %t975 = load i64, ptr %l42, !tbaa !24
  %t978 = sub i64 %t974, %t975
  %t979 = load i64, ptr %l44, !tbaa !24
  %t982 = add i64 %t978, %t979
  %t984 = sub i64 %t982, 1
  %t985 = load i64, ptr %l44, !tbaa !24
  %t988 = sdiv i64 %t984, %t985
  store i64 %t988, ptr %l482, !tbaa !24
  br label %bb207
bb206:
  store i64 0, ptr %l482, !tbaa !24
  br label %bb207
bb207:
  %t990 = load i64, ptr %l482, !tbaa !24
  store i64 %t990, ptr %l479, !tbaa !24
  br label %bb208
bb208:
  %t991 = load i64, ptr %l479, !tbaa !24
  store i64 %t991, ptr %l45, !tbaa !24
  store i64 0, ptr %l46, !tbaa !24
  br label %bb209
bb209:
  %t992 = load i64, ptr %l46, !tbaa !24
  %t993 = load i64, ptr %l45, !tbaa !24
  %t996 = icmp slt i64 %t992, %t993
  %t998 = xor i1 %t996, true
  br i1 %t998, label %bb210, label %bb211
bb210:
  br label %bb214
bb211:
  br label %bb212
bb212:
  %t1000 = load i64, ptr %l42, !tbaa !24
  %t1001 = load i64, ptr %l46, !tbaa !24
  %t1002 = load i64, ptr %l44, !tbaa !24
  %t1005 = mul i64 %t1001, %t1002
  %t1008 = add i64 %t1000, %t1005
  store i64 %t1008, ptr %l47, !tbaa !24
  %t1010 = load i64, ptr %l47, !tbaa !24
  %t1011 = load i64, ptr %l47, !tbaa !24
  %t1013 = sdiv i64 %t1011, 8
  %t1015 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t1016 = load ptr, ptr %t1015, !tbaa !27
  %t1017 = getelementptr i64, ptr %t1016, i64 %t1013
  %t1018 = load i64, ptr %t1017, !tbaa !85
  %t1019 = load i64, ptr %l47, !tbaa !24
  %t1021 = srem i64 %t1019, 8
  %t1023 = mul i64 8, %t1021
  store i64 %t1023, ptr %l507, !tbaa !65
  %t1026 = load i64, ptr %l507, !tbaa !65
  %t1027 = load i64, ptr %l507, !tbaa !65
  %t1028 = lshr i64 %t1018, %t1027
  %t1030 = and i64 %t1028, 255
  %t1032 = trunc i64 %t1030 to i8
  %t1035 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t1036 = load ptr, ptr %t1035, !tbaa !27
  %t1037 = getelementptr i8, ptr %t1036, i64 %t1010
  store i8 %t1032, ptr %t1037, !tbaa !32
  br label %bb213
bb213:
  %t1038 = load i64, ptr %l46, !tbaa !24
  %t1040 = add i64 %t1038, 1
  store i64 %t1040, ptr %l46, !tbaa !24
  br label %bb209
bb214:
  %t1042 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1042, ptr %l513, !tbaa !29
  %t1043 = load i64, ptr %l1, !tbaa !24
  store i64 %t1043, ptr %l514, !tbaa !24
  %t1044 = load { ptr, ptr }, ptr %l8
  %t1046 = extractvalue { ptr, ptr } %t1044, 0
  %t1047 = extractvalue { ptr, ptr } %t1044, 1
  %t1048 = call { i64, [4 x i64] } %t1046(ptr %t1047, i64 2)
  store { i64, [4 x i64] } %t1048, ptr %l516
  br label %bb215
bb215:
  %t1049 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1050 = load { i64, ptr }, ptr %l31, !tbaa !27
  %t1052 = extractvalue { i64, ptr } %t1050, 0
  %t1053 = load ptr, ptr %l513, !tbaa !29
  %t1054 = load i64, ptr %l514, !tbaa !24
  %t1055 = load { i64, [4 x i64] }, ptr %l516
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s19, ptr %t1053, i64 %t1054, { i64, [4 x i64] } %t1055, { i64, ptr } %t1049, i64 %t1052)
  br label %bb216
bb216:
  call void @__olang_scope_close(ptr %s19)
  br label %bb343
bb217:
  %t1058 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1060 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1058, { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d20, i32 0, i32 1) })
  store i1 %t1060, ptr %l521
  br label %bb218
bb218:
  %t1061 = load i1, ptr %l521, !tbaa !21
  br i1 %t1061, label %bb219, label %bb220
bb219:
  br label %bb221
bb220:
  br label %bb229
bb221:
  store %olang.scope zeroinitializer, ptr %s26
  %t1062 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1062, ptr %l522, !tbaa !29
  %t1063 = load i64, ptr %l1, !tbaa !24
  store i64 %t1063, ptr %l523, !tbaa !24
  %t1064 = load { ptr, ptr }, ptr %l8
  %t1066 = extractvalue { ptr, ptr } %t1064, 0
  %t1067 = extractvalue { ptr, ptr } %t1064, 1
  %t1068 = call { i64, [4 x i64] } %t1066(ptr %t1067, i64 0)
  store { i64, [4 x i64] } %t1068, ptr %l525
  br label %bb222
bb222:
  %t1069 = load ptr, ptr %l522, !tbaa !29
  %t1070 = load i64, ptr %l523, !tbaa !24
  %t1071 = load { i64, [4 x i64] }, ptr %l525
  %t1072 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s26, ptr %t1069, i64 %t1070, { i64, [4 x i64] } %t1071)
  store { i64, ptr } %t1072, ptr %l526
  br label %bb223
bb223:
  %t1073 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1073, ptr %l527, !tbaa !29
  %t1074 = load i64, ptr %l1, !tbaa !24
  store i64 %t1074, ptr %l528, !tbaa !24
  %t1075 = load { ptr, ptr }, ptr %l8
  %t1077 = extractvalue { ptr, ptr } %t1075, 0
  %t1078 = extractvalue { ptr, ptr } %t1075, 1
  %t1079 = call { i64, [4 x i64] } %t1077(ptr %t1078, i64 1)
  store { i64, [4 x i64] } %t1079, ptr %l530
  br label %bb224
bb224:
  %t1080 = load ptr, ptr %l527, !tbaa !29
  %t1081 = load i64, ptr %l528, !tbaa !24
  %t1082 = load { i64, [4 x i64] }, ptr %l530
  %t1083 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s26, ptr %t1080, i64 %t1081, { i64, [4 x i64] } %t1082)
  store { i64, ptr } %t1083, ptr %l531
  br label %bb225
bb225:
  %t1084 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1084, ptr %l532, !tbaa !29
  %t1085 = load i64, ptr %l1, !tbaa !24
  store i64 %t1085, ptr %l533, !tbaa !24
  %t1086 = load { ptr, ptr }, ptr %l8
  %t1088 = extractvalue { ptr, ptr } %t1086, 0
  %t1089 = extractvalue { ptr, ptr } %t1086, 1
  %t1090 = call { i64, [4 x i64] } %t1088(ptr %t1089, i64 2)
  store { i64, [4 x i64] } %t1090, ptr %l535
  br label %bb226
bb226:
  %t1091 = load ptr, ptr %l532, !tbaa !29
  %t1092 = load i64, ptr %l533, !tbaa !24
  %t1093 = load { i64, [4 x i64] }, ptr %l535
  %t1094 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1091, i64 %t1092, { i64, [4 x i64] } %t1093)
  store i64 %t1094, ptr %l536
  br label %bb227
bb227:
  %t1095 = load i64, ptr %l536, !tbaa !24
  %t1096 = trunc i64 %t1095 to i8
  %t1097 = load { i64, ptr }, ptr %l526, !tbaa !27
  %t1098 = extractvalue { i64, ptr } %t1097, 1
  %t1099 = extractvalue { i64, ptr } %t1097, 0
  %t1100 = load { i64, ptr }, ptr %l531, !tbaa !27
  %t1101 = extractvalue { i64, ptr } %t1100, 1
  %t1102 = extractvalue { i64, ptr } %t1100, 0
  %t1104 = call i32 @__olang_dyncall_check(ptr %t1098, ptr %t1101, i8 zeroext %t1096)
  store i32 %t1104, ptr %l538
  br label %bb228
bb228:
  %t1105 = load i32, ptr %l538, !tbaa !23
  %t1106 = sext i32 %t1105 to i64
  store i64 %t1106, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s26)
  br label %bb343
bb229:
  %t1108 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1110 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1108, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d21, i32 0, i32 1) })
  store i1 %t1110, ptr %l541
  br label %bb230
bb230:
  %t1111 = load i1, ptr %l541, !tbaa !21
  br i1 %t1111, label %bb231, label %bb232
bb231:
  br label %bb233
bb232:
  br label %bb243
bb233:
  store %olang.scope zeroinitializer, ptr %s27
  %t1112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1112, ptr %l542, !tbaa !29
  %t1113 = load i64, ptr %l1, !tbaa !24
  store i64 %t1113, ptr %l543, !tbaa !24
  %t1114 = load { ptr, ptr }, ptr %l8
  %t1116 = extractvalue { ptr, ptr } %t1114, 0
  %t1117 = extractvalue { ptr, ptr } %t1114, 1
  %t1118 = call { i64, [4 x i64] } %t1116(ptr %t1117, i64 0)
  store { i64, [4 x i64] } %t1118, ptr %l545
  br label %bb234
bb234:
  %t1119 = load ptr, ptr %l542, !tbaa !29
  %t1120 = load i64, ptr %l543, !tbaa !24
  %t1121 = load { i64, [4 x i64] }, ptr %l545
  %t1122 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s27, ptr %t1119, i64 %t1120, { i64, [4 x i64] } %t1121)
  store { i64, ptr } %t1122, ptr %l546
  br label %bb235
bb235:
  %t1123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1123, ptr %l547, !tbaa !29
  %t1124 = load i64, ptr %l1, !tbaa !24
  store i64 %t1124, ptr %l548, !tbaa !24
  %t1125 = load { ptr, ptr }, ptr %l8
  %t1127 = extractvalue { ptr, ptr } %t1125, 0
  %t1128 = extractvalue { ptr, ptr } %t1125, 1
  %t1129 = call { i64, [4 x i64] } %t1127(ptr %t1128, i64 1)
  store { i64, [4 x i64] } %t1129, ptr %l550
  br label %bb236
bb236:
  %t1130 = load ptr, ptr %l547, !tbaa !29
  %t1131 = load i64, ptr %l548, !tbaa !24
  %t1132 = load { i64, [4 x i64] }, ptr %l550
  %t1133 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s27, ptr %t1130, i64 %t1131, { i64, [4 x i64] } %t1132)
  store { i64, ptr } %t1133, ptr %l551
  br label %bb237
bb237:
  %t1134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1134, ptr %l552, !tbaa !29
  %t1135 = load i64, ptr %l1, !tbaa !24
  store i64 %t1135, ptr %l553, !tbaa !24
  %t1136 = load { ptr, ptr }, ptr %l8
  %t1138 = extractvalue { ptr, ptr } %t1136, 0
  %t1139 = extractvalue { ptr, ptr } %t1136, 1
  %t1140 = call { i64, [4 x i64] } %t1138(ptr %t1139, i64 2)
  store { i64, [4 x i64] } %t1140, ptr %l555
  br label %bb238
bb238:
  %t1141 = load ptr, ptr %l552, !tbaa !29
  %t1142 = load i64, ptr %l553, !tbaa !24
  %t1143 = load { i64, [4 x i64] }, ptr %l555
  %t1144 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1141, i64 %t1142, { i64, [4 x i64] } %t1143)
  store i64 %t1144, ptr %l556
  br label %bb239
bb239:
  %t1145 = load i64, ptr %l556, !tbaa !24
  %t1146 = trunc i64 %t1145 to i8
  store i8 %t1146, ptr %l557, !tbaa !22
  %t1147 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1147, ptr %l558, !tbaa !29
  %t1148 = load i64, ptr %l1, !tbaa !24
  store i64 %t1148, ptr %l559, !tbaa !24
  %t1149 = load { ptr, ptr }, ptr %l8
  %t1151 = extractvalue { ptr, ptr } %t1149, 0
  %t1152 = extractvalue { ptr, ptr } %t1149, 1
  %t1153 = call { i64, [4 x i64] } %t1151(ptr %t1152, i64 3)
  store { i64, [4 x i64] } %t1153, ptr %l561
  br label %bb240
bb240:
  %t1154 = load ptr, ptr %l558, !tbaa !29
  %t1155 = load i64, ptr %l559, !tbaa !24
  %t1156 = load { i64, [4 x i64] }, ptr %l561
  %t1157 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1154, i64 %t1155, { i64, [4 x i64] } %t1156)
  store i64 %t1157, ptr %l562
  br label %bb241
bb241:
  %t1158 = load { i64, ptr }, ptr %l546, !tbaa !27
  %t1159 = extractvalue { i64, ptr } %t1158, 1
  %t1160 = extractvalue { i64, ptr } %t1158, 0
  %t1161 = load { i64, ptr }, ptr %l551, !tbaa !27
  %t1162 = extractvalue { i64, ptr } %t1161, 1
  %t1163 = extractvalue { i64, ptr } %t1161, 0
  %t1164 = load i8, ptr %l557, !tbaa !22
  %t1165 = load i64, ptr %l562, !tbaa !24
  %t1166 = call i32 @__olang_dyncall_var_check(ptr %t1159, ptr %t1162, i8 zeroext %t1164, i64 %t1165)
  store i32 %t1166, ptr %l563
  br label %bb242
bb242:
  %t1167 = load i32, ptr %l563, !tbaa !23
  %t1168 = sext i32 %t1167 to i64
  store i64 %t1168, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s27)
  br label %bb343
bb243:
  %t1170 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1172 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1170, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d22, i32 0, i32 1) })
  store i1 %t1172, ptr %l566
  br label %bb244
bb244:
  %t1173 = load i1, ptr %l566, !tbaa !21
  br i1 %t1173, label %bb245, label %bb246
bb245:
  br label %bb250
bb246:
  %t1174 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1176 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1174, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d23, i32 0, i32 1) })
  store i1 %t1176, ptr %l568
  br label %bb247
bb247:
  %t1177 = load i1, ptr %l568, !tbaa !21
  br i1 %t1177, label %bb248, label %bb249
bb248:
  br label %bb250
bb249:
  br label %bb277
bb250:
  store %olang.scope zeroinitializer, ptr %s28
  %t1178 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1180 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s28, { i64, ptr } %t1178, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d24, i32 0, i32 1) })
  store i1 %t1180, ptr %l570
  br label %bb251
bb251:
  %t1181 = load i1, ptr %l570, !tbaa !21
  br i1 %t1181, label %bb252, label %bb253
bb252:
  %t1182 = load ptr, ptr %l0, !tbaa !29
  %t1184 = getelementptr %"compiler/eval:Machine", ptr %t1182, i32 0, i32 84
  %t1185 = load { i64, ptr }, ptr %t1184, !tbaa !27
  store { i64, ptr } %t1185, ptr %l571, !tbaa !27
  br label %bb254
bb253:
  %t1187 = load ptr, ptr %l0, !tbaa !29
  %t1189 = getelementptr %"compiler/eval:Machine", ptr %t1187, i32 0, i32 83
  %t1190 = load { i64, ptr }, ptr %t1189, !tbaa !27
  store { i64, ptr } %t1190, ptr %l571, !tbaa !27
  br label %bb254
bb254:
  %t1192 = load { i64, ptr }, ptr %l571, !tbaa !27
  store { i64, ptr } %t1192, ptr %l48, !tbaa !27
  store i64 -1, ptr %l9, !tbaa !24
  %t1193 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1195 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s28, { i64, ptr } %t1193, { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d25, i32 0, i32 1) })
  store i1 %t1195, ptr %l577
  br label %bb255
bb255:
  %t1196 = load i1, ptr %l577, !tbaa !21
  %t1197 = xor i1 %t1196, true
  br i1 %t1197, label %bb256, label %bb257
bb256:
  store %olang.scope zeroinitializer, ptr %s29
  %t1199 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1201 = extractvalue { i64, ptr } %t1199, 0
  store i64 %t1201, ptr %l580, !tbaa !24
  %t1202 = load i64, ptr %l580, !tbaa !24
  %t1203 = icmp sge i64 %t1202, 0
  br i1 %t1203, label %bb258, label %bb259
bb257:
  br label %bb276
bb258:
  %t1205 = load i64, ptr %l580, !tbaa !24
  %t1206 = mul i64 %t1205, 1
  %t1207 = call ptr @__olang_scope_alloc_zeroed(ptr %s29, i64 %t1206)
  %t1208 = insertvalue { i64, ptr } undef, i64 %t1205, 0
  %t1209 = insertvalue { i64, ptr } %t1208, ptr %t1207, 1
  store { i64, ptr } %t1209, ptr %l49, !tbaa !27
  store i64 0, ptr %l50, !tbaa !24
  %t1211 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1213 = extractvalue { i64, ptr } %t1211, 0
  store i64 %t1213, ptr %l51, !tbaa !24
  store i64 1, ptr %l52, !tbaa !24
  %t1215 = load i64, ptr %l51, !tbaa !24
  %t1216 = load i64, ptr %l50, !tbaa !24
  %t1219 = icmp sgt i64 %t1215, %t1216
  br i1 %t1219, label %bb260, label %bb261
bb259:
  call void @__olang_check_failed(ptr @olang_loc_72e3b80bf5d68934_41b0c6a64027e678)
  unreachable
bb260:
  %t1221 = load i64, ptr %l52, !tbaa !24
  %t1223 = icmp sgt i64 %t1221, 0
  br i1 %t1223, label %bb262, label %bb263
bb261:
  store i64 0, ptr %l588, !tbaa !24
  br label %bb265
bb262:
  %t1225 = load i64, ptr %l51, !tbaa !24
  %t1226 = load i64, ptr %l50, !tbaa !24
  %t1229 = sub i64 %t1225, %t1226
  %t1230 = load i64, ptr %l52, !tbaa !24
  %t1233 = add i64 %t1229, %t1230
  %t1235 = sub i64 %t1233, 1
  %t1236 = load i64, ptr %l52, !tbaa !24
  %t1239 = sdiv i64 %t1235, %t1236
  store i64 %t1239, ptr %l591, !tbaa !24
  br label %bb264
bb263:
  store i64 0, ptr %l591, !tbaa !24
  br label %bb264
bb264:
  %t1241 = load i64, ptr %l591, !tbaa !24
  store i64 %t1241, ptr %l588, !tbaa !24
  br label %bb265
bb265:
  %t1242 = load i64, ptr %l588, !tbaa !24
  store i64 %t1242, ptr %l53, !tbaa !24
  store i64 0, ptr %l54, !tbaa !24
  br label %bb266
bb266:
  %t1243 = load i64, ptr %l54, !tbaa !24
  %t1244 = load i64, ptr %l53, !tbaa !24
  %t1247 = icmp slt i64 %t1243, %t1244
  %t1249 = xor i1 %t1247, true
  br i1 %t1249, label %bb267, label %bb268
bb267:
  br label %bb271
bb268:
  br label %bb269
bb269:
  %t1251 = load i64, ptr %l50, !tbaa !24
  %t1252 = load i64, ptr %l54, !tbaa !24
  %t1253 = load i64, ptr %l52, !tbaa !24
  %t1256 = mul i64 %t1252, %t1253
  %t1259 = add i64 %t1251, %t1256
  store i64 %t1259, ptr %l55, !tbaa !24
  %t1261 = load i64, ptr %l55, !tbaa !24
  %t1262 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t1262, ptr %l610, !tbaa !27
  %t1263 = load i64, ptr %l55, !tbaa !24
  %t1265 = getelementptr { i64, ptr }, ptr %l610, i32 0, i32 1
  %t1266 = load ptr, ptr %t1265, !tbaa !27
  %t1267 = getelementptr i8, ptr %t1266, i64 %t1263
  %t1268 = load i8, ptr %t1267, !tbaa !32
  %t1272 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t1273 = load ptr, ptr %t1272, !tbaa !27
  %t1274 = getelementptr i8, ptr %t1273, i64 %t1261
  store i8 %t1268, ptr %t1274, !tbaa !32
  br label %bb270
bb270:
  %t1275 = load i64, ptr %l54, !tbaa !24
  %t1277 = add i64 %t1275, 1
  store i64 %t1277, ptr %l54, !tbaa !24
  br label %bb266
bb271:
  %t1279 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1279, ptr %l616, !tbaa !29
  %t1280 = load i64, ptr %l1, !tbaa !24
  store i64 %t1280, ptr %l617, !tbaa !24
  %t1281 = load { ptr, ptr }, ptr %l8
  %t1283 = extractvalue { ptr, ptr } %t1281, 0
  %t1284 = extractvalue { ptr, ptr } %t1281, 1
  %t1285 = call { i64, [4 x i64] } %t1283(ptr %t1284, i64 0)
  store { i64, [4 x i64] } %t1285, ptr %l619
  br label %bb272
bb272:
  %t1286 = load { i64, ptr }, ptr %l49, !tbaa !27
  store { i64, ptr } %t1286, ptr %l620, !tbaa !27
  %t1287 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1287, ptr %l621, !tbaa !29
  %t1288 = load i64, ptr %l1, !tbaa !24
  store i64 %t1288, ptr %l622, !tbaa !24
  %t1289 = load { ptr, ptr }, ptr %l8
  %t1291 = extractvalue { ptr, ptr } %t1289, 0
  %t1292 = extractvalue { ptr, ptr } %t1289, 1
  %t1293 = call { i64, [4 x i64] } %t1291(ptr %t1292, i64 1)
  store { i64, [4 x i64] } %t1293, ptr %l624
  br label %bb273
bb273:
  %t1294 = load ptr, ptr %l621, !tbaa !29
  %t1295 = load i64, ptr %l622, !tbaa !24
  %t1296 = load { i64, [4 x i64] }, ptr %l624
  %t1297 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1294, i64 %t1295, { i64, [4 x i64] } %t1296)
  store i64 %t1297, ptr %l625
  br label %bb274
bb274:
  %t1298 = load ptr, ptr %l616, !tbaa !29
  %t1299 = load i64, ptr %l617, !tbaa !24
  %t1300 = load { i64, [4 x i64] }, ptr %l619
  %t1301 = load { i64, ptr }, ptr %l620, !tbaa !27
  %t1302 = load i64, ptr %l625, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %s29, ptr %t1298, i64 %t1299, { i64, [4 x i64] } %t1300, { i64, ptr } %t1301, i64 %t1302)
  br label %bb275
bb275:
  %t1303 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t1305 = extractvalue { i64, ptr } %t1303, 0
  store i64 %t1305, ptr %l9, !tbaa !24
  call void @__olang_scope_close(ptr %s29)
  br label %bb276
bb276:
  call void @__olang_scope_close(ptr %s28)
  br label %bb343
bb277:
  %t1307 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1309 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1307, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d26, i32 0, i32 1) })
  store i1 %t1309, ptr %l629
  br label %bb278
bb278:
  %t1310 = load i1, ptr %l629, !tbaa !21
  br i1 %t1310, label %bb279, label %bb280
bb279:
  br label %bb281
bb280:
  br label %bb282
bb281:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb343
bb282:
  %t1311 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1313 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1311, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d27, i32 0, i32 1) })
  store i1 %t1313, ptr %l631
  br label %bb283
bb283:
  %t1314 = load i1, ptr %l631, !tbaa !21
  br i1 %t1314, label %bb284, label %bb285
bb284:
  br label %bb292
bb285:
  %t1315 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1317 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1315, { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d28, i32 0, i32 1) })
  store i1 %t1317, ptr %l633
  br label %bb286
bb286:
  %t1318 = load i1, ptr %l633, !tbaa !21
  br i1 %t1318, label %bb287, label %bb288
bb287:
  br label %bb292
bb288:
  %t1319 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1321 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1319, { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d29, i32 0, i32 1) })
  store i1 %t1321, ptr %l635
  br label %bb289
bb289:
  %t1322 = load i1, ptr %l635, !tbaa !21
  br i1 %t1322, label %bb290, label %bb291
bb290:
  br label %bb292
bb291:
  br label %bb293
bb292:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb343
bb293:
  %t1323 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1325 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1323, { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d30, i32 0, i32 1) })
  store i1 %t1325, ptr %l637
  br label %bb294
bb294:
  %t1326 = load i1, ptr %l637, !tbaa !21
  br i1 %t1326, label %bb295, label %bb296
bb295:
  br label %bb297
bb296:
  br label %bb298
bb297:
  store i64 -1, ptr %l9, !tbaa !24
  br label %bb343
bb298:
  %t1327 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1329 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1327, { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d31, i32 0, i32 1) })
  store i1 %t1329, ptr %l639
  br label %bb299
bb299:
  %t1330 = load i1, ptr %l639, !tbaa !21
  br i1 %t1330, label %bb300, label %bb301
bb300:
  br label %bb302
bb301:
  br label %bb303
bb302:
  br label %bb343
bb303:
  %t1331 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1333 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1331, { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d32, i32 0, i32 1) })
  store i1 %t1333, ptr %l641
  br label %bb304
bb304:
  %t1334 = load i1, ptr %l641, !tbaa !21
  br i1 %t1334, label %bb305, label %bb306
bb305:
  br label %bb307
bb306:
  br label %bb308
bb307:
  %t1335 = load ptr, ptr %l0, !tbaa !29
  %t1337 = getelementptr %"compiler/eval:Machine", ptr %t1335, i32 0, i32 85
  store i1 true, ptr %t1337, !tbaa !21
  br label %bb343
bb308:
  %t1338 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1340 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1338, { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d33, i32 0, i32 1) })
  store i1 %t1340, ptr %l644
  br label %bb309
bb309:
  %t1341 = load i1, ptr %l644, !tbaa !21
  br i1 %t1341, label %bb310, label %bb311
bb310:
  br label %bb312
bb311:
  br label %bb337
bb312:
  %t1342 = load ptr, ptr %l0, !tbaa !29
  %t1344 = getelementptr %"compiler/eval:Machine", ptr %t1342, i32 0, i32 1
  %t1345 = load i32, ptr %t1344, !range !{i32 0, i32 2}
  %t1347 = trunc i64 1 to i32
  %t1348 = icmp eq i32 %t1345, %t1347
  br i1 %t1348, label %bb313, label %bb314
bb313:
  store %olang.scope zeroinitializer, ptr %s39
  %t1350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1350, ptr %l648, !tbaa !29
  %t1351 = load i64, ptr %l1, !tbaa !24
  store i64 %t1351, ptr %l649, !tbaa !24
  %t1352 = load { ptr, ptr }, ptr %l8
  %t1354 = extractvalue { ptr, ptr } %t1352, 0
  %t1355 = extractvalue { ptr, ptr } %t1352, 1
  %t1356 = call { i64, [4 x i64] } %t1354(ptr %t1355, i64 0)
  store { i64, [4 x i64] } %t1356, ptr %l651
  br label %bb315
bb314:
  br label %bb336
bb315:
  %t1357 = load ptr, ptr %l648, !tbaa !29
  %t1358 = load i64, ptr %l649, !tbaa !24
  %t1359 = load { i64, [4 x i64] }, ptr %l651
  %t1360 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %s39, ptr %t1357, i64 %t1358, { i64, [4 x i64] } %t1359)
  store { i64, ptr } %t1360, ptr %l652
  br label %bb316
bb316:
  %t1361 = load { i64, ptr }, ptr %l652, !tbaa !27
  store { i64, ptr } %t1361, ptr %l56, !tbaa !27
  %t1362 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1362, ptr %l653, !tbaa !29
  %t1363 = load i64, ptr %l1, !tbaa !24
  store i64 %t1363, ptr %l654, !tbaa !24
  %t1364 = load { ptr, ptr }, ptr %l8
  %t1366 = extractvalue { ptr, ptr } %t1364, 0
  %t1367 = extractvalue { ptr, ptr } %t1364, 1
  %t1368 = call { i64, [4 x i64] } %t1366(ptr %t1367, i64 1)
  store { i64, [4 x i64] } %t1368, ptr %l656
  br label %bb317
bb317:
  %t1369 = load ptr, ptr %l653, !tbaa !29
  %t1370 = load i64, ptr %l654, !tbaa !24
  %t1371 = load { i64, [4 x i64] }, ptr %l656
  %t1372 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %t1369, i64 %t1370, { i64, [4 x i64] } %t1371)
  store i64 %t1372, ptr %l657
  br label %bb318
bb318:
  %t1373 = load i64, ptr %l657, !tbaa !24
  store i64 %t1373, ptr %l57, !tbaa !24
  %t1374 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s39)
  store %"std/prelude/text:StringBuilder" %t1374, ptr %l658
  br label %bb319
bb319:
  %t1375 = load %"std/prelude/text:StringBuilder", ptr %l658
  store %"std/prelude/text:StringBuilder" %t1375, ptr %l58
  store i64 0, ptr %l59, !tbaa !24
  %t1376 = load i64, ptr %l57, !tbaa !24
  store i64 %t1376, ptr %l60, !tbaa !24
  store i64 1, ptr %l61, !tbaa !24
  %t1378 = load i64, ptr %l60, !tbaa !24
  %t1379 = load i64, ptr %l59, !tbaa !24
  %t1382 = icmp sgt i64 %t1378, %t1379
  br i1 %t1382, label %bb320, label %bb321
bb320:
  %t1384 = load i64, ptr %l61, !tbaa !24
  %t1386 = icmp sgt i64 %t1384, 0
  br i1 %t1386, label %bb322, label %bb323
bb321:
  store i64 0, ptr %l663, !tbaa !24
  br label %bb325
bb322:
  %t1388 = load i64, ptr %l60, !tbaa !24
  %t1389 = load i64, ptr %l59, !tbaa !24
  %t1392 = sub i64 %t1388, %t1389
  %t1393 = load i64, ptr %l61, !tbaa !24
  %t1396 = add i64 %t1392, %t1393
  %t1398 = sub i64 %t1396, 1
  %t1399 = load i64, ptr %l61, !tbaa !24
  %t1402 = sdiv i64 %t1398, %t1399
  store i64 %t1402, ptr %l666, !tbaa !24
  br label %bb324
bb323:
  store i64 0, ptr %l666, !tbaa !24
  br label %bb324
bb324:
  %t1404 = load i64, ptr %l666, !tbaa !24
  store i64 %t1404, ptr %l663, !tbaa !24
  br label %bb325
bb325:
  %t1405 = load i64, ptr %l663, !tbaa !24
  store i64 %t1405, ptr %l62, !tbaa !24
  store i64 0, ptr %l63, !tbaa !24
  br label %bb326
bb326:
  %t1406 = load i64, ptr %l63, !tbaa !24
  %t1407 = load i64, ptr %l62, !tbaa !24
  %t1410 = icmp slt i64 %t1406, %t1407
  %t1412 = xor i1 %t1410, true
  br i1 %t1412, label %bb327, label %bb328
bb327:
  br label %bb332
bb328:
  br label %bb329
bb329:
  %t1414 = load i64, ptr %l59, !tbaa !24
  %t1415 = load i64, ptr %l63, !tbaa !24
  %t1416 = load i64, ptr %l61, !tbaa !24
  %t1419 = mul i64 %t1415, %t1416
  %t1422 = add i64 %t1414, %t1419
  %t1426 = getelementptr { i64, ptr }, ptr %l56, i32 0, i32 1
  %t1427 = load ptr, ptr %t1426, !tbaa !27
  %t1428 = getelementptr i8, ptr %t1427, i64 %t1422
  %t1429 = load i8, ptr %t1428, !tbaa !32
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s39, ptr %l58, i8 %t1429)
  br label %bb330
bb330:
  br label %bb331
bb331:
  %t1433 = load i64, ptr %l63, !tbaa !24
  %t1435 = add i64 %t1433, 1
  store i64 %t1435, ptr %l63, !tbaa !24
  br label %bb326
bb332:
  %t1437 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eInterpCrash, !tbaa !27
  %t1438 = load ptr, ptr @__olang_prog_scope
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s39, ptr %t1438, ptr %l58, { i64, ptr } %t1437)
  br label %bb333
bb333:
  %t1442 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s39, ptr %s39, ptr %l58)
  store { i64, ptr } %t1442, ptr %l693
  br label %bb334
bb334:
  %t1443 = load { i64, ptr }, ptr %l693, !tbaa !27
  %t1444 = extractvalue { i64, ptr } %t1443, 0
  %t1445 = extractvalue { i64, ptr } %t1443, 1
  %t1446 = mul i64 %t1444, 1
  %t1447 = call ptr @__olang_scope_alloc(ptr %s39, i64 %t1446)
  call void @llvm.memcpy.p0.p0.i64(ptr %t1447, ptr %t1445, i64 %t1446, i1 false)
  %t1448 = insertvalue { i64, ptr } undef, i64 %t1444, 0
  %t1449 = insertvalue { i64, ptr } %t1448, ptr %t1447, 1
  call void @std_2fos_2eOnCrash(ptr %s39, { i64, ptr } %t1449)
  br label %bb335
bb335:
  call void @__olang_scope_close(ptr %s39)
  br label %bb336
bb336:
  br label %bb343
bb337:
  br i1 true, label %bb338, label %bb339
bb338:
  br label %bb340
bb339:
  br label %bb342
bb340:
  %t1451 = load ptr, ptr %l0, !tbaa !29
  %t1452 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyFfiFind, !tbaa !27
  %t1453 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1453, ptr %t1451, { i64, ptr } %t1452)
  br label %bb341
bb341:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb342:
  call void @__olang_check_failed(ptr @olang_loc_a18e8c5cba1eb19a_a9626f5dd72b6766)
  unreachable
bb343:
  %t1457 = load ptr, ptr %l0, !tbaa !29
  %t1459 = getelementptr %"compiler/eval:Machine", ptr %t1457, i32 0, i32 22
  %t1460 = load i1, ptr %t1459, !tbaa !21
  br i1 %t1460, label %bb344, label %bb345
bb344:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb345:
  br label %bb346
bb346:
  %t1463 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1465 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1463, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d34, i32 0, i32 1) })
  store i1 %t1465, ptr %l702
  br label %bb347
bb347:
  %t1466 = load i1, ptr %l702, !tbaa !21
  %t1467 = xor i1 %t1466, true
  br i1 %t1467, label %bb348, label %bb349
bb348:
  %t1469 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1471 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1469, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d35, i32 0, i32 1) })
  store i1 %t1471, ptr %l706
  br label %bb350
bb349:
  store i1 false, ptr %l704, !tbaa !21
  br label %bb351
bb350:
  %t1472 = load i1, ptr %l706, !tbaa !21
  %t1473 = xor i1 %t1472, true
  store i1 %t1473, ptr %l704, !tbaa !21
  br label %bb351
bb351:
  %t1475 = load i1, ptr %l704, !tbaa !21
  br i1 %t1475, label %bb352, label %bb353
bb352:
  %t1476 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1478 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1476, { i64, ptr } { i64 11, ptr getelementptr inbounds (<{ i64, [11 x i8] }>, ptr @.d36, i32 0, i32 1) })
  store i1 %t1478, ptr %l710
  br label %bb354
bb353:
  store i1 false, ptr %l708, !tbaa !21
  br label %bb355
bb354:
  %t1479 = load i1, ptr %l710, !tbaa !21
  %t1480 = xor i1 %t1479, true
  store i1 %t1480, ptr %l708, !tbaa !21
  br label %bb355
bb355:
  %t1482 = load i1, ptr %l708, !tbaa !21
  br i1 %t1482, label %bb356, label %bb357
bb356:
  %t1483 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1483, ptr %l712, !tbaa !29
  %t1484 = call i32 @__olang_err()
  store i32 %t1484, ptr %l713
  br label %bb358
bb357:
  br label %bb359
bb358:
  %t1485 = load i32, ptr %l713, !tbaa !23
  %t1486 = load ptr, ptr %l712, !tbaa !29
  %t1487 = getelementptr %"compiler/eval:Machine", ptr %t1486, i32 0, i32 94
  store i32 %t1485, ptr %t1487, !tbaa !23
  br label %bb359
bb359:
  %t1488 = load ptr, ptr %l0, !tbaa !29
  %t1490 = getelementptr %"compiler/eval:Machine", ptr %t1488, i32 0, i32 0
  %t1491 = load ptr, ptr %t1490, !tbaa !29
  %t1495 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %t1491, i32 %a4)
  store i32 %t1495, ptr %l717
  br label %bb360
bb360:
  %t1496 = load i32, ptr %l717, !tbaa !23
  store i32 %t1496, ptr %l65, !tbaa !23
  br i1 %a6, label %bb361, label %bb362
bb361:
  %t1499 = load i32, ptr %l65, !tbaa !23
  %t1500 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t1503 = icmp ne i32 %t1499, %t1500
  store i1 %t1503, ptr %l719, !tbaa !21
  br label %bb363
bb362:
  store i1 false, ptr %l719, !tbaa !21
  br label %bb363
bb363:
  %t1505 = load i1, ptr %l719, !tbaa !21
  br i1 %t1505, label %bb364, label %bb365
bb364:
  %t1506 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1506, ptr %l723, !tbaa !29
  store %"compiler/eval:Ptr" %a5, ptr %l724
  %t1508 = load ptr, ptr %l0, !tbaa !29
  %t1509 = load i32, ptr %l65, !tbaa !23
  %t1512 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t1508, i32 %t1509)
  store i64 %t1512, ptr %l727
  br label %bb366
bb365:
  br label %bb368
bb366:
  %t1513 = load i64, ptr %l9, !tbaa !24
  %t1514 = load ptr, ptr %l723, !tbaa !29
  %t1515 = load %"compiler/eval:Ptr", ptr %l724
  %t1516 = load i64, ptr %l727, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1514, %"compiler/eval:Ptr" %t1515, i64 %t1516, i64 %t1513)
  br label %bb367
bb367:
  br label %bb368
bb368:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshapeOf(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i1
  %l12 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i64
  %l45 = alloca i64
  %l47 = alloca i64
  %l51 = alloca i64
  %l53 = alloca i64
  %l73 = alloca ptr
  %l76 = alloca i32
  %l77 = alloca i1
  %l78 = alloca i64
  %l88 = alloca i32
  %l90 = alloca i64
  %l100 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca i1
  %l105 = alloca i64
  %l112 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i32, ptr %l1, !tbaa !23
  %t10 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t6, i32 %t7)
  store i1 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i32, ptr %l1, !tbaa !23
  %t15 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t11, i32 %t12)
  store i32 %t15, ptr %l12
  br label %bb2
bb2:
  %t16 = load i32, ptr %l12, !tbaa !23
  store i32 %t16, ptr %l3, !tbaa !23
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t18 = load i32, ptr %l3, !tbaa !23
  %t21 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t21, ptr %l15
  br label %bb3
bb3:
  %t22 = load i32, ptr %l15, !range !{i32 0, i32 33}
  store i32 %t22, ptr %l4
  %t23 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t25 = trunc i64 1 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t28 = load i64, ptr @G_2ecompiler_2feval_2evVoid, !tbaa !24
  store i64 %t28, ptr %l16, !tbaa !24
  br label %bb107
bb7:
  %t30 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t32 = trunc i64 2 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t35 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  store i64 %t35, ptr %l16, !tbaa !24
  br label %bb107
bb11:
  %t37 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t39 = trunc i64 3 to i32
  %t40 = icmp eq i32 %t37, %t39
  br i1 %t40, label %bb12, label %bb13
bb12:
  br label %bb20
bb13:
  %t42 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t44 = trunc i64 4 to i32
  %t45 = icmp eq i32 %t42, %t44
  br i1 %t45, label %bb14, label %bb15
bb14:
  br label %bb20
bb15:
  %t47 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t49 = trunc i64 5 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb16, label %bb17
bb16:
  br label %bb20
bb17:
  %t52 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t54 = trunc i64 6 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t57 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  store i64 %t57, ptr %l16, !tbaa !24
  br label %bb107
bb21:
  %t59 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t61 = trunc i64 7 to i32
  %t62 = icmp eq i32 %t59, %t61
  br i1 %t62, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  %t64 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t66 = trunc i64 8 to i32
  %t67 = icmp eq i32 %t64, %t66
  br i1 %t67, label %bb24, label %bb25
bb24:
  br label %bb30
bb25:
  %t69 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t71 = trunc i64 9 to i32
  %t72 = icmp eq i32 %t69, %t71
  br i1 %t72, label %bb26, label %bb27
bb26:
  br label %bb30
bb27:
  %t74 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t76 = trunc i64 10 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t79 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  store i64 %t79, ptr %l16, !tbaa !24
  br label %bb107
bb31:
  %t81 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t83 = trunc i64 31 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb43
bb34:
  %t86 = load ptr, ptr %l2, !tbaa !29
  %t87 = load i32, ptr %l3, !tbaa !23
  %t90 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %t86, i32 %t87)
  store i64 %t90, ptr %l45
  br label %bb35
bb35:
  %t91 = load i64, ptr %l45, !tbaa !24
  %t92 = icmp sgt i64 %t91, 64
  br i1 %t92, label %bb36, label %bb37
bb36:
  %t94 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  store i64 %t94, ptr %l47, !tbaa !24
  br label %bb42
bb37:
  %t96 = load ptr, ptr %l2, !tbaa !29
  %t97 = load i32, ptr %l3, !tbaa !23
  %t100 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %t96, i32 %t97)
  store i64 %t100, ptr %l51
  br label %bb38
bb38:
  %t101 = load i64, ptr %l51, !tbaa !24
  %t102 = icmp eq i64 %t101, 1
  br i1 %t102, label %bb39, label %bb40
bb39:
  %t104 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  store i64 %t104, ptr %l53, !tbaa !24
  br label %bb41
bb40:
  %t106 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  store i64 %t106, ptr %l53, !tbaa !24
  br label %bb41
bb41:
  %t108 = load i64, ptr %l53, !tbaa !24
  store i64 %t108, ptr %l47, !tbaa !24
  br label %bb42
bb42:
  %t109 = load i64, ptr %l47, !tbaa !24
  store i64 %t109, ptr %l16, !tbaa !24
  br label %bb107
bb43:
  %t110 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t112 = trunc i64 11 to i32
  %t113 = icmp eq i32 %t110, %t112
  br i1 %t113, label %bb44, label %bb45
bb44:
  br label %bb52
bb45:
  %t115 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t117 = trunc i64 12 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  %t120 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t122 = trunc i64 13 to i32
  %t123 = icmp eq i32 %t120, %t122
  br i1 %t123, label %bb48, label %bb49
bb48:
  br label %bb52
bb49:
  %t125 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t127 = trunc i64 14 to i32
  %t128 = icmp eq i32 %t125, %t127
  br i1 %t128, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  %t130 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  store i64 %t130, ptr %l16, !tbaa !24
  br label %bb107
bb53:
  %t132 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t134 = trunc i64 15 to i32
  %t135 = icmp eq i32 %t132, %t134
  br i1 %t135, label %bb54, label %bb55
bb54:
  br label %bb56
bb55:
  br label %bb57
bb56:
  %t137 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  store i64 %t137, ptr %l16, !tbaa !24
  br label %bb107
bb57:
  %t139 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t141 = trunc i64 16 to i32
  %t142 = icmp eq i32 %t139, %t141
  br i1 %t142, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  %t144 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t144, ptr %l16, !tbaa !24
  br label %bb107
bb61:
  %t146 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t148 = trunc i64 20 to i32
  %t149 = icmp eq i32 %t146, %t148
  br i1 %t149, label %bb62, label %bb63
bb62:
  br label %bb64
bb63:
  br label %bb70
bb64:
  %t151 = load ptr, ptr %l0, !tbaa !29
  store ptr %t151, ptr %l73, !tbaa !29
  %t152 = load ptr, ptr %l2, !tbaa !29
  %t153 = load i32, ptr %l3, !tbaa !23
  %t156 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t152, i32 %t153)
  store i32 %t156, ptr %l76
  br label %bb65
bb65:
  %t157 = load ptr, ptr %l73, !tbaa !29
  %t158 = load i32, ptr %l76, !tbaa !23
  %t159 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %t157, i32 %t158)
  store i1 %t159, ptr %l77
  br label %bb66
bb66:
  %t160 = load i1, ptr %l77, !tbaa !21
  br i1 %t160, label %bb67, label %bb68
bb67:
  %t161 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  store i64 %t161, ptr %l78, !tbaa !24
  br label %bb69
bb68:
  %t163 = load i64, ptr @G_2ecompiler_2feval_2evPtr, !tbaa !24
  store i64 %t163, ptr %l78, !tbaa !24
  br label %bb69
bb69:
  %t165 = load i64, ptr %l78, !tbaa !24
  store i64 %t165, ptr %l16, !tbaa !24
  br label %bb107
bb70:
  %t166 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t168 = trunc i64 21 to i32
  %t169 = icmp eq i32 %t166, %t168
  br i1 %t169, label %bb71, label %bb72
bb71:
  br label %bb73
bb72:
  br label %bb74
bb73:
  %t171 = load i64, ptr @G_2ecompiler_2feval_2evFunc, !tbaa !24
  store i64 %t171, ptr %l16, !tbaa !24
  br label %bb107
bb74:
  %t173 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t175 = trunc i64 19 to i32
  %t176 = icmp eq i32 %t173, %t175
  br i1 %t176, label %bb75, label %bb76
bb75:
  br label %bb77
bb76:
  br label %bb82
bb77:
  %t178 = load ptr, ptr %l2, !tbaa !29
  %t179 = load i32, ptr %l3, !tbaa !23
  %t182 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t178, i32 %t179)
  store i32 %t182, ptr %l88
  br label %bb78
bb78:
  %t183 = load i32, ptr %l88, !tbaa !23
  %t184 = icmp eq i32 %t183, 0
  br i1 %t184, label %bb79, label %bb80
bb79:
  %t186 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  store i64 %t186, ptr %l90, !tbaa !24
  br label %bb81
bb80:
  %t188 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  store i64 %t188, ptr %l90, !tbaa !24
  br label %bb81
bb81:
  %t190 = load i64, ptr %l90, !tbaa !24
  store i64 %t190, ptr %l16, !tbaa !24
  br label %bb107
bb82:
  %t191 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t193 = trunc i64 22 to i32
  %t194 = icmp eq i32 %t191, %t193
  br i1 %t194, label %bb83, label %bb84
bb83:
  br label %bb87
bb84:
  %t196 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t198 = trunc i64 23 to i32
  %t199 = icmp eq i32 %t196, %t198
  br i1 %t199, label %bb85, label %bb86
bb85:
  br label %bb87
bb86:
  br label %bb88
bb87:
  %t201 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  store i64 %t201, ptr %l16, !tbaa !24
  br label %bb107
bb88:
  %t203 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t205 = trunc i64 24 to i32
  %t206 = icmp eq i32 %t203, %t205
  br i1 %t206, label %bb89, label %bb90
bb89:
  br label %bb91
bb90:
  br label %bb97
bb91:
  %t208 = load ptr, ptr %l2, !tbaa !29
  store ptr %t208, ptr %l100, !tbaa !29
  %t209 = load ptr, ptr %l2, !tbaa !29
  %t210 = load i32, ptr %l3, !tbaa !23
  %t213 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t209, i32 %t210)
  store i32 %t213, ptr %l103
  br label %bb92
bb92:
  %t214 = load ptr, ptr %l100, !tbaa !29
  %t215 = load i32, ptr %l103, !tbaa !23
  %t216 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %t214, i32 %t215)
  store i1 %t216, ptr %l104
  br label %bb93
bb93:
  %t217 = load i1, ptr %l104, !tbaa !21
  br i1 %t217, label %bb94, label %bb95
bb94:
  %t218 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  store i64 %t218, ptr %l105, !tbaa !24
  br label %bb96
bb95:
  %t220 = load i64, ptr @G_2ecompiler_2feval_2evOrd, !tbaa !24
  store i64 %t220, ptr %l105, !tbaa !24
  br label %bb96
bb96:
  %t222 = load i64, ptr %l105, !tbaa !24
  store i64 %t222, ptr %l16, !tbaa !24
  br label %bb107
bb97:
  %t223 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t225 = trunc i64 18 to i32
  %t226 = icmp eq i32 %t223, %t225
  br i1 %t226, label %bb98, label %bb99
bb98:
  br label %bb100
bb99:
  br label %bb102
bb100:
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t229 = load i32, ptr %l3, !tbaa !23
  %t232 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enamedShape(ptr %v0, ptr %t228, i32 %t229)
  store i64 %t232, ptr %l112
  br label %bb101
bb101:
  %t233 = load i64, ptr %l112, !tbaa !24
  store i64 %t233, ptr %l16, !tbaa !24
  br label %bb107
bb102:
  br i1 true, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  %t234 = load i64, ptr @G_2ecompiler_2feval_2evNone, !tbaa !24
  store i64 %t234, ptr %l16, !tbaa !24
  br label %bb107
bb106:
  call void @__olang_check_failed(ptr @olang_loc_5b67d157b70117f_cddce93e80c09b93)
  unreachable
bb107:
  %t236 = load i64, ptr %l16, !tbaa !24
  store i64 %t236, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2esuspend(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/mir:Range" %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca %"compiler/mir:Range"
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:frame"
  %l8 = alloca %"compiler/eval:genRec"
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
  %l22 = alloca ptr
  %l23 = alloca i64
  %l24 = alloca i32
  %l25 = alloca i32
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l30 = alloca { i64, [1 x i64] }
  %l31 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca i64
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l46 = alloca i64
  %l53 = alloca { i64, ptr }
  %l55 = alloca %"compiler/eval:frame"
  %l61 = alloca %"compiler/eval:genRec"
  %l63 = alloca %"compiler/eval:genRec"
  %l72 = alloca i64
  %l75 = alloca { i64, ptr }
  %l84 = alloca i64
  %l87 = alloca i64
  %l114 = alloca i64
  %l117 = alloca i64
  %l141 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l159 = alloca i32
  %l162 = alloca i32
  %l187 = alloca { i64, [1 x i64] }
  %l195 = alloca { i64, ptr }
  %l215 = alloca %"compiler/eval:frame"
  %l222 = alloca i64
  %l226 = alloca i64
  %l229 = alloca i64
  %l250 = alloca i64
  %l253 = alloca ptr
  %l257 = alloca i64
  %l258 = alloca ptr
  %l262 = alloca i64
  %l266 = alloca ptr
  %l267 = alloca i64
  %l268 = alloca %"compiler/eval:genRec"
  %l270 = alloca %"compiler/eval:genRec"
  %l273 = alloca %"compiler/eval:frame"
  %s0 = alloca %olang.scope
  %t52 = alloca %"compiler/eval:genRec", align 8
  %t55 = alloca %"compiler/eval:genRec", align 8
  %t485 = alloca %"compiler/eval:genRec", align 8
  %t489 = alloca %"compiler/eval:genRec", align 8
  %t494 = alloca %"compiler/eval:frame", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l39, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 18
  %t11 = load i32, ptr %t10, !tbaa !23
  %t13 = sext i32 %t11 to i64
  store i64 %t13, ptr %l6, !tbaa !24
  %t15 = load i64, ptr %l6, !tbaa !24
  %t17 = icmp slt i64 %t15, 0
  br i1 %t17, label %bb1, label %bb2
bb1:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t19)
  store i64 %t21, ptr %l46
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %t22, i64 %t23, { i64, [4 x i64] } %a2)
  br label %bb5
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Machine", ptr %t28, i32 0, i32 22
  %t31 = load i1, ptr %t30, !tbaa !21
  br i1 %t31, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  br label %bb8
bb8:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 58
  %t36 = load { i64, ptr }, ptr %t35, !tbaa !27
  store { i64, ptr } %t36, ptr %l53, !tbaa !27
  %t37 = load i64, ptr %l1, !tbaa !24
  %t39 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr %"compiler/eval:frame", ptr %t40, i64 %t37
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t41, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l55, i64 136, i1 false)
  %t44 = sext i32 %a3 to i64
  %t46 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 1
  store i64 %t44, ptr %t46, !tbaa !24
  %t47 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 2
  store i64 0, ptr %t47, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 63
  %t51 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t52, ptr %v0, ptr %v0, ptr %t50, i64 %t51)
  call void @llvm.memmove.p0.p0.i64(ptr %l61, ptr %t52, i64 280, i1 false)
  br label %bb9
bb9:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t55, ptr %s0, ptr %l61)
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %t55, i64 280, i1 false)
  br label %bb10
bb10:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l63, i64 280, i1 false)
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 61
  %t60 = load i64, ptr %t59, !tbaa !24
  %t61 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 3
  %t62 = load i64, ptr %t61, !tbaa !24
  %t65 = sub i64 %t60, %t62
  store i64 %t65, ptr %l9, !tbaa !24
  %t67 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t68 = load i64, ptr %t67, !tbaa !24
  %t70 = icmp slt i64 %t68, 0
  br i1 %t70, label %bb11, label %bb12
bb11:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr %"compiler/eval:Machine", ptr %t72, i32 0, i32 65
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t74)
  store i64 %t76, ptr %l72
  br label %bb13
bb12:
  br label %bb27
bb13:
  %t77 = load i64, ptr %l72, !tbaa !24
  %t78 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  store i64 %t77, ptr %t78, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t79 = load i64, ptr %l9, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 26
  %t83 = load { i64, ptr }, ptr %t82, !tbaa !27
  store { i64, ptr } %t83, ptr %l75, !tbaa !27
  %t84 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 0
  %t85 = load i64, ptr %t84, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr %"compiler/eval:cfn", ptr %t88, i64 %t85
  %t90 = getelementptr %"compiler/eval:cfn", ptr %t89, i32 0, i32 2
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t93 = extractvalue { i64, ptr } %t91, 0
  %t96 = add i64 %t79, %t93
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t100 = load i64, ptr %l11, !tbaa !24
  %t101 = load i64, ptr %l10, !tbaa !24
  %t104 = icmp sgt i64 %t100, %t101
  br i1 %t104, label %bb14, label %bb15
bb14:
  %t106 = load i64, ptr %l12, !tbaa !24
  %t108 = icmp sgt i64 %t106, 0
  br i1 %t108, label %bb16, label %bb17
bb15:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb19
bb16:
  %t110 = load i64, ptr %l11, !tbaa !24
  %t111 = load i64, ptr %l10, !tbaa !24
  %t114 = sub i64 %t110, %t111
  %t115 = load i64, ptr %l12, !tbaa !24
  %t118 = add i64 %t114, %t115
  %t120 = sub i64 %t118, 1
  %t121 = load i64, ptr %l12, !tbaa !24
  %t124 = sdiv i64 %t120, %t121
  store i64 %t124, ptr %l87, !tbaa !24
  br label %bb18
bb17:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb18
bb18:
  %t126 = load i64, ptr %l87, !tbaa !24
  store i64 %t126, ptr %l84, !tbaa !24
  br label %bb19
bb19:
  %t127 = load i64, ptr %l84, !tbaa !24
  store i64 %t127, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb20
bb20:
  %t128 = load i64, ptr %l14, !tbaa !24
  %t129 = load i64, ptr %l13, !tbaa !24
  %t132 = icmp slt i64 %t128, %t129
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb21, label %bb22
bb21:
  br label %bb26
bb22:
  br label %bb23
bb23:
  %t136 = load i64, ptr %l10, !tbaa !24
  %t137 = load i64, ptr %l14, !tbaa !24
  %t138 = load i64, ptr %l12, !tbaa !24
  %t141 = mul i64 %t137, %t138
  %t144 = add i64 %t136, %t141
  store i64 %t144, ptr %l15, !tbaa !24
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/eval:Machine", ptr %t146, i32 0, i32 65
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t148, i64 0)
  br label %bb24
bb24:
  br label %bb25
bb25:
  %t150 = load i64, ptr %l14, !tbaa !24
  %t152 = add i64 %t150, 1
  store i64 %t152, ptr %l14, !tbaa !24
  br label %bb20
bb26:
  br label %bb27
bb27:
  %t154 = load i64, ptr %l9, !tbaa !24
  %t156 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 9
  store i64 %t154, ptr %t156, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  %t157 = load i64, ptr %l9, !tbaa !24
  store i64 %t157, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t159 = load i64, ptr %l17, !tbaa !24
  %t160 = load i64, ptr %l16, !tbaa !24
  %t163 = icmp sgt i64 %t159, %t160
  br i1 %t163, label %bb28, label %bb29
bb28:
  %t165 = load i64, ptr %l18, !tbaa !24
  %t167 = icmp sgt i64 %t165, 0
  br i1 %t167, label %bb30, label %bb31
bb29:
  store i64 0, ptr %l114, !tbaa !24
  br label %bb33
bb30:
  %t169 = load i64, ptr %l17, !tbaa !24
  %t170 = load i64, ptr %l16, !tbaa !24
  %t173 = sub i64 %t169, %t170
  %t174 = load i64, ptr %l18, !tbaa !24
  %t177 = add i64 %t173, %t174
  %t179 = sub i64 %t177, 1
  %t180 = load i64, ptr %l18, !tbaa !24
  %t183 = sdiv i64 %t179, %t180
  store i64 %t183, ptr %l117, !tbaa !24
  br label %bb32
bb31:
  store i64 0, ptr %l117, !tbaa !24
  br label %bb32
bb32:
  %t185 = load i64, ptr %l117, !tbaa !24
  store i64 %t185, ptr %l114, !tbaa !24
  br label %bb33
bb33:
  %t186 = load i64, ptr %l114, !tbaa !24
  store i64 %t186, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb34
bb34:
  %t187 = load i64, ptr %l20, !tbaa !24
  %t188 = load i64, ptr %l19, !tbaa !24
  %t191 = icmp slt i64 %t187, %t188
  %t193 = xor i1 %t191, true
  br i1 %t193, label %bb35, label %bb36
bb35:
  br label %bb40
bb36:
  br label %bb37
bb37:
  %t195 = load i64, ptr %l16, !tbaa !24
  %t196 = load i64, ptr %l20, !tbaa !24
  %t197 = load i64, ptr %l18, !tbaa !24
  %t200 = mul i64 %t196, %t197
  %t203 = add i64 %t195, %t200
  store i64 %t203, ptr %l21, !tbaa !24
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 65
  %t208 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = load i64, ptr %l21, !tbaa !24
  %t213 = add i64 %t209, %t210
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t216 = getelementptr %"compiler/eval:Machine", ptr %t214, i32 0, i32 60
  %t217 = load { i64, ptr }, ptr %t216, !tbaa !27
  store { i64, ptr } %t217, ptr %l141, !tbaa !27
  %t218 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 3
  %t219 = load i64, ptr %t218, !tbaa !24
  %t220 = load i64, ptr %l21, !tbaa !24
  %t223 = add i64 %t219, %t220
  %t225 = getelementptr { i64, ptr }, ptr %l141, i32 0, i32 1
  %t226 = load ptr, ptr %t225, !tbaa !27
  %t227 = getelementptr i64, ptr %t226, i64 %t223
  %t228 = load i64, ptr %t227, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t207, i64 %t213, i64 %t228)
  br label %bb38
bb38:
  br label %bb39
bb39:
  %t232 = load i64, ptr %l20, !tbaa !24
  %t234 = add i64 %t232, 1
  store i64 %t234, ptr %l20, !tbaa !24
  br label %bb34
bb40:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Machine", ptr %t236, i32 0, i32 25
  %t239 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 0
  %t240 = load i64, ptr %t239, !tbaa !24
  %t243 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t238, i64 %t240)
  store ptr %t243, ptr %l151
  br label %bb41
bb41:
  %t244 = load ptr, ptr %l151, !tbaa !29
  store ptr %t244, ptr %l22, !tbaa !29
  %t245 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t246 = load i64, ptr %t245, !tbaa !24
  %t247 = load i64, ptr %l9, !tbaa !24
  %t250 = add i64 %t246, %t247
  store i64 %t250, ptr %l23, !tbaa !24
  store i32 0, ptr %l24, !tbaa !23
  %t252 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t253 = load i32, ptr %t252, !tbaa !23
  store i32 %t253, ptr %l25, !tbaa !23
  store i32 1, ptr %l26, !tbaa !23
  %t255 = load i32, ptr %l25, !tbaa !23
  %t256 = load i32, ptr %l24, !tbaa !23
  %t259 = icmp sgt i32 %t255, %t256
  br i1 %t259, label %bb42, label %bb43
bb42:
  %t261 = load i32, ptr %l26, !tbaa !23
  %t263 = icmp sgt i32 %t261, 0
  br i1 %t263, label %bb44, label %bb45
bb43:
  store i32 0, ptr %l159, !tbaa !23
  br label %bb47
bb44:
  %t265 = load i32, ptr %l25, !tbaa !23
  %t266 = load i32, ptr %l24, !tbaa !23
  %t269 = sub i32 %t265, %t266
  %t270 = load i32, ptr %l26, !tbaa !23
  %t273 = add i32 %t269, %t270
  %t275 = sub i32 %t273, 1
  %t276 = load i32, ptr %l26, !tbaa !23
  %t279 = sdiv i32 %t275, %t276
  store i32 %t279, ptr %l162, !tbaa !23
  br label %bb46
bb45:
  store i32 0, ptr %l162, !tbaa !23
  br label %bb46
bb46:
  %t281 = load i32, ptr %l162, !tbaa !23
  store i32 %t281, ptr %l159, !tbaa !23
  br label %bb47
bb47:
  %t282 = load i32, ptr %l159, !tbaa !23
  store i32 %t282, ptr %l27, !tbaa !23
  store i32 0, ptr %l28, !tbaa !23
  br label %bb48
bb48:
  %t283 = load i32, ptr %l28, !tbaa !23
  %t284 = load i32, ptr %l27, !tbaa !23
  %t287 = icmp slt i32 %t283, %t284
  %t289 = xor i1 %t287, true
  br i1 %t289, label %bb49, label %bb50
bb49:
  br label %bb64
bb50:
  br label %bb51
bb51:
  %t291 = load i32, ptr %l24, !tbaa !23
  %t292 = load i32, ptr %l28, !tbaa !23
  %t293 = load i32, ptr %l26, !tbaa !23
  %t296 = mul i32 %t292, %t293
  %t299 = add i32 %t291, %t296
  %t301 = load ptr, ptr %l22, !tbaa !29
  %t303 = getelementptr %"compiler/mir:Fn", ptr %t301, i32 0, i32 12
  %t304 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t305 = load i32, ptr %t304, !tbaa !23
  %t307 = sext i32 %t305 to i64
  %t310 = sext i32 %t299 to i64
  %t313 = add i64 %t307, %t310
  %t316 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t303, i64 %t313)
  store { i64, [1 x i64] } %t316, ptr %l187
  br label %bb52
bb52:
  %t317 = load { i64, [1 x i64] }, ptr %l187
  store { i64, [1 x i64] } %t317, ptr %l30
  %t318 = load { i64, [1 x i64] }, ptr %l30
  %t320 = extractvalue { i64, [1 x i64] } %t318, 0
  %t321 = icmp eq i64 %t320, 0
  br i1 %t321, label %bb53, label %bb54
bb53:
  %t323 = getelementptr { i64, [1 x i64] }, ptr %l30, i32 0, i32 1
  %t324 = getelementptr { i32 }, ptr %t323, i32 0, i32 0
  %t325 = load i32, ptr %t324
  store i32 %t325, ptr %l31, !tbaa !23
  br label %bb55
bb54:
  br label %bb57
bb55:
  %t327 = load ptr, ptr %l0, !tbaa !29
  %t329 = getelementptr %"compiler/eval:Machine", ptr %t327, i32 0, i32 65
  %t330 = load i64, ptr %l23, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t331, i32 0, i32 60
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  store { i64, ptr } %t334, ptr %l195, !tbaa !27
  %t335 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 4
  %t336 = load i64, ptr %t335, !tbaa !24
  %t337 = load i32, ptr %l31, !tbaa !23
  %t339 = sext i32 %t337 to i64
  %t342 = add i64 %t336, %t339
  %t344 = getelementptr { i64, ptr }, ptr %l195, i32 0, i32 1
  %t345 = load ptr, ptr %t344, !tbaa !27
  %t346 = getelementptr i64, ptr %t345, i64 %t342
  %t347 = load i64, ptr %t346, !tbaa !34
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t329, i64 %t330, i64 %t347)
  br label %bb56
bb56:
  %t351 = load i64, ptr %l23, !tbaa !24
  %t353 = add i64 %t351, 1
  store i64 %t353, ptr %l23, !tbaa !24
  br label %bb62
bb57:
  br i1 true, label %bb58, label %bb59
bb58:
  br label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  call void @__olang_check_failed(ptr @olang_loc_77ec49cd2ef2b53_f798fa63e9acfcff)
  unreachable
bb62:
  br label %bb63
bb63:
  %t355 = load i32, ptr %l28, !tbaa !23
  %t357 = add i32 %t355, 1
  store i32 %t357, ptr %l28, !tbaa !23
  br label %bb48
bb64:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr %"compiler/eval:Machine", ptr %t359, i32 0, i32 65
  %t362 = load i64, ptr %l23, !tbaa !24
  %t363 = getelementptr %"compiler/eval:frame", ptr %l7, i32 0, i32 6
  %t364 = load i64, ptr %t363, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t361, i64 %t362, i64 %t364)
  br label %bb65
bb65:
  %t368 = load i64, ptr %l23, !tbaa !24
  %t370 = add i64 %t368, 1
  %t371 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 8
  %t372 = load i64, ptr %t371, !tbaa !24
  %t373 = load i64, ptr %l9, !tbaa !24
  %t376 = add i64 %t372, %t373
  %t379 = sub i64 %t370, %t376
  %t381 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 10
  store i64 %t379, ptr %t381, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l215, ptr %l7, i64 136, i1 false)
  %t382 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 2
  call void @llvm.memmove.p0.p0.i64(ptr %t382, ptr %l215, i64 136, i1 false)
  %t385 = sext i32 %a5 to i64
  %t387 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 3
  store i64 %t385, ptr %t387, !tbaa !24
  %t388 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %s0, ptr %t388)
  br label %bb66
bb66:
  %t390 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %s0, ptr %t390)
  br label %bb67
bb67:
  store i64 0, ptr %l32, !tbaa !24
  %t392 = load ptr, ptr %l0, !tbaa !29
  %t394 = getelementptr %"compiler/eval:Machine", ptr %t392, i32 0, i32 66
  %t396 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t394)
  store i64 %t396, ptr %l222
  br label %bb68
bb68:
  %t397 = load i64, ptr %l222, !tbaa !24
  store i64 %t397, ptr %l33, !tbaa !24
  store i64 1, ptr %l34, !tbaa !24
  %t398 = load i64, ptr %l33, !tbaa !24
  %t399 = load i64, ptr %l32, !tbaa !24
  %t402 = icmp sgt i64 %t398, %t399
  br i1 %t402, label %bb69, label %bb70
bb69:
  %t404 = load i64, ptr %l34, !tbaa !24
  %t406 = icmp sgt i64 %t404, 0
  br i1 %t406, label %bb71, label %bb72
bb70:
  store i64 0, ptr %l226, !tbaa !24
  br label %bb74
bb71:
  %t408 = load i64, ptr %l33, !tbaa !24
  %t409 = load i64, ptr %l32, !tbaa !24
  %t412 = sub i64 %t408, %t409
  %t413 = load i64, ptr %l34, !tbaa !24
  %t416 = add i64 %t412, %t413
  %t418 = sub i64 %t416, 1
  %t419 = load i64, ptr %l34, !tbaa !24
  %t422 = sdiv i64 %t418, %t419
  store i64 %t422, ptr %l229, !tbaa !24
  br label %bb73
bb72:
  store i64 0, ptr %l229, !tbaa !24
  br label %bb73
bb73:
  %t424 = load i64, ptr %l229, !tbaa !24
  store i64 %t424, ptr %l226, !tbaa !24
  br label %bb74
bb74:
  %t425 = load i64, ptr %l226, !tbaa !24
  store i64 %t425, ptr %l35, !tbaa !24
  store i64 0, ptr %l36, !tbaa !24
  br label %bb75
bb75:
  %t426 = load i64, ptr %l36, !tbaa !24
  %t427 = load i64, ptr %l35, !tbaa !24
  %t430 = icmp slt i64 %t426, %t427
  %t432 = xor i1 %t430, true
  br i1 %t432, label %bb76, label %bb77
bb76:
  br label %bb88
bb77:
  br label %bb78
bb78:
  %t434 = load i64, ptr %l32, !tbaa !24
  %t435 = load i64, ptr %l36, !tbaa !24
  %t436 = load i64, ptr %l34, !tbaa !24
  %t439 = mul i64 %t435, %t436
  %t442 = add i64 %t434, %t439
  store i64 %t442, ptr %l37, !tbaa !24
  %t444 = load ptr, ptr %l0, !tbaa !29
  %t446 = getelementptr %"compiler/eval:Machine", ptr %t444, i32 0, i32 66
  %t447 = load i64, ptr %l37, !tbaa !24
  %t450 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t446, i64 %t447)
  store i64 %t450, ptr %l250
  br label %bb79
bb79:
  %t451 = load i64, ptr %l1, !tbaa !24
  %t452 = load i64, ptr %l250, !tbaa !24
  %t454 = icmp ne i64 %t452, %t451
  br i1 %t454, label %bb80, label %bb81
bb80:
  br label %bb87
bb81:
  br label %bb82
bb82:
  %t456 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 6
  store ptr %t456, ptr %l253, !tbaa !29
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t459 = getelementptr %"compiler/eval:Machine", ptr %t457, i32 0, i32 67
  %t460 = load i64, ptr %l37, !tbaa !24
  %t463 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t459, i64 %t460)
  store i64 %t463, ptr %l257
  br label %bb83
bb83:
  %t464 = load ptr, ptr %l253, !tbaa !29
  %t465 = load i64, ptr %l257, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t464, i64 %t465)
  br label %bb84
bb84:
  %t466 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 7
  store ptr %t466, ptr %l258, !tbaa !29
  %t467 = load ptr, ptr %l0, !tbaa !29
  %t469 = getelementptr %"compiler/eval:Machine", ptr %t467, i32 0, i32 68
  %t470 = load i64, ptr %l37, !tbaa !24
  %t473 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t469, i64 %t470)
  store i64 %t473, ptr %l262
  br label %bb85
bb85:
  %t474 = load ptr, ptr %l258, !tbaa !29
  %t475 = load i64, ptr %l262, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %t474, i64 %t475)
  br label %bb86
bb86:
  br label %bb87
bb87:
  %t476 = load i64, ptr %l36, !tbaa !24
  %t478 = add i64 %t476, 1
  store i64 %t478, ptr %l36, !tbaa !24
  br label %bb75
bb88:
  %t480 = getelementptr %"compiler/eval:genRec", ptr %l8, i32 0, i32 0
  store i64 1, ptr %t480, !tbaa !24
  %t481 = load ptr, ptr %l0, !tbaa !29
  %t483 = getelementptr %"compiler/eval:Machine", ptr %t481, i32 0, i32 63
  store ptr %t483, ptr %l266, !tbaa !29
  %t484 = load i64, ptr %l6, !tbaa !24
  store i64 %t484, ptr %l267, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l268, ptr %l8, i64 280, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t485, ptr %s0, ptr %l268)
  call void @llvm.memmove.p0.p0.i64(ptr %l270, ptr %t485, i64 280, i1 false)
  br label %bb89
bb89:
  %t487 = load ptr, ptr %l266, !tbaa !29
  %t488 = load i64, ptr %l267, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %t489, ptr %l270, i64 280, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eSetAt_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %s0, ptr %t487, i64 %t488, ptr %t489)
  br label %bb90
bb90:
  %t490 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %t490)
  br label %bb91
bb91:
  %t492 = load ptr, ptr %l0, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l273, ptr %l7, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t494, ptr %l273, i64 136, i1 false)
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %t492, ptr %t494)
  br label %bb92
bb92:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etable(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i32
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i32
  %l21 = alloca %"compiler/eval:Ptr"
  %l22 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca i32
  %l31 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i32
  %l46 = alloca %"compiler/eval:Ptr"
  %l47 = alloca ptr
  %l48 = alloca %"compiler/eval:Ptr"
  %l51 = alloca %"compiler/eval:Ptr"
  %l57 = alloca i64
  %l60 = alloca i64
  %l78 = alloca ptr
  %l83 = alloca %"compiler/eval:Ptr"
  %l85 = alloca { i64, ptr }
  %l88 = alloca %"compiler/eval:Ptr"
  %s1 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 40
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %t4)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l17
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l16
  br label %bb1
bb1:
  %t12 = load i64, ptr %l16, !tbaa !24
  store i64 %t12, ptr %l12, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l12, !tbaa !24
  store i64 %t13, ptr %l2, !tbaa !24
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp ne i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store %olang.scope zeroinitializer, ptr %s1
  %t18 = load i64, ptr %l2, !tbaa !24
  %t20 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t18, i64 0)
  store %"compiler/eval:Ptr" %t20, ptr %l21
  br label %bb7
bb6:
  br label %bb8
bb7:
  call void @__olang_scope_close(ptr %s1)
  %t21 = load %"compiler/eval:Ptr", ptr %l21
  store %"compiler/eval:Ptr" %t21, ptr %rv
  br label %ret
bb8:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 39
  %t25 = load i64, ptr %l1, !tbaa !24
  %t28 = call { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6a636ae5a18dc9bdacf7dd1692df3f31(ptr %v0, ptr %v0, ptr %t24, i64 %t25)
  %t29 = extractvalue { i32, { i64, ptr } } %t28, 1
  %t30 = extractvalue { i32, { i64, ptr } } %t28, 0
  store i32 %t30, ptr %l27
  %t31 = icmp ne i32 %t30, 0
  br i1 %t31, label %bb10, label %ok.32, !prof !99
ok.32:
  store { i64, ptr } %t29, ptr %l26
  br label %bb9
bb9:
  %t33 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t33, ptr %l22, !tbaa !27
  br label %bb13
bb10:
  br label %bb11
bb11:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t36 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t36, ptr %t34, { i64, ptr } %t35)
  br label %bb12
bb12:
  %t39 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t39, ptr %rv
  br label %ret
bb13:
  %t41 = load { i64, ptr }, ptr %l22, !tbaa !27
  store { i64, ptr } %t41, ptr %l3, !tbaa !27
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 38
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = call { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %t44, i64 %t45)
  %t49 = extractvalue { i32, i32 } %t48, 1
  %t50 = extractvalue { i32, i32 } %t48, 0
  store i32 %t50, ptr %l36
  %t51 = icmp ne i32 %t50, 0
  br i1 %t51, label %bb15, label %ok.52, !prof !99
ok.52:
  store i32 %t49, ptr %l35
  br label %bb14
bb14:
  %t53 = load i32, ptr %l35, !tbaa !23
  store i32 %t53, ptr %l31, !tbaa !23
  br label %bb17
bb15:
  br label %bb16
bb16:
  %t54 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t54, ptr %l31, !tbaa !23
  br label %bb17
bb17:
  %t56 = load i32, ptr %l31, !tbaa !23
  store i32 %t56, ptr %l4, !tbaa !23
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t60 = extractvalue { i64, ptr } %t58, 0
  %t62 = add i64 %t60, 1
  %t64 = mul i64 8, %t62
  %t65 = load i64, ptr @G_2ecompiler_2feval_2eaData, !tbaa !24
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 70
  %t69 = load i64, ptr %t68, !tbaa !24
  %t74 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t57, i64 %t64, i64 %t65, i64 %t69)
  store %"compiler/eval:Ptr" %t74, ptr %l46
  br label %bb18
bb18:
  %t75 = load %"compiler/eval:Ptr", ptr %l46
  store %"compiler/eval:Ptr" %t75, ptr %l5
  %t76 = load ptr, ptr %l0, !tbaa !29
  store ptr %t76, ptr %l47, !tbaa !29
  %t77 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t77, ptr %l48
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t79 = load i32, ptr %l4, !tbaa !23
  %t82 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %t78, i32 %t79)
  store %"compiler/eval:Ptr" %t82, ptr %l51
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l47, !tbaa !29
  %t84 = load %"compiler/eval:Ptr", ptr %l48
  %t85 = load %"compiler/eval:Ptr", ptr %l51
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t83, %"compiler/eval:Ptr" %t84, %"compiler/eval:Ptr" %t85)
  br label %bb20
bb20:
  store i64 0, ptr %l6, !tbaa !24
  %t86 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t88 = extractvalue { i64, ptr } %t86, 0
  store i64 %t88, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t90 = load i64, ptr %l7, !tbaa !24
  %t91 = load i64, ptr %l6, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb21, label %bb22
bb21:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb23, label %bb24
bb22:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb26
bb23:
  %t100 = load i64, ptr %l7, !tbaa !24
  %t101 = load i64, ptr %l6, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l8, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l60, !tbaa !24
  br label %bb25
bb24:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb25
bb25:
  %t116 = load i64, ptr %l60, !tbaa !24
  store i64 %t116, ptr %l57, !tbaa !24
  br label %bb26
bb26:
  %t117 = load i64, ptr %l57, !tbaa !24
  store i64 %t117, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb27
bb27:
  store %olang.scope zeroinitializer, ptr %s4
  %t118 = load i64, ptr %l10, !tbaa !24
  %t119 = load i64, ptr %l9, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s4)
  br label %bb35
bb29:
  br label %bb30
bb30:
  %t126 = load i64, ptr %l6, !tbaa !24
  %t127 = load i64, ptr %l10, !tbaa !24
  %t128 = load i64, ptr %l8, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  store i64 %t134, ptr %l11, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  store ptr %t136, ptr %l78, !tbaa !29
  %t137 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t138 = load i64, ptr %t137, !tbaa !24
  %t139 = load i64, ptr %l11, !tbaa !24
  %t141 = add i64 %t139, 1
  %t143 = mul i64 8, %t141
  %t146 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t138, i64 %t143)
  store %"compiler/eval:Ptr" %t146, ptr %l83
  br label %bb31
bb31:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t148, ptr %l85, !tbaa !27
  %t149 = load i64, ptr %l11, !tbaa !24
  %t151 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr { i64, [2 x i64] }, ptr %t152, i64 %t149
  %t154 = load { i64, [2 x i64] }, ptr %t153
  %t157 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodePtr(ptr %v0, ptr %t147, { i64, [2 x i64] } %t154)
  store %"compiler/eval:Ptr" %t157, ptr %l88
  br label %bb32
bb32:
  %t158 = load ptr, ptr %l78, !tbaa !29
  %t159 = load %"compiler/eval:Ptr", ptr %l83
  %t160 = load %"compiler/eval:Ptr", ptr %l88
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t158, %"compiler/eval:Ptr" %t159, %"compiler/eval:Ptr" %t160)
  br label %bb33
bb33:
  call void @__olang_scope_close(ptr %s4)
  br label %bb34
bb34:
  %t161 = load i64, ptr %l10, !tbaa !24
  %t163 = add i64 %t161, 1
  store i64 %t163, ptr %l10, !tbaa !24
  br label %bb27
bb35:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/eval:Machine", ptr %t165, i32 0, i32 40
  %t168 = load i64, ptr %l1, !tbaa !24
  %t169 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t170 = load i64, ptr %t169, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t167, i64 %t168, i64 %t170)
  br label %bb36
bb36:
  %t174 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t174, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etail(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Call" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/mir:Call"
  %l3 = alloca %"compiler/eval:frame"
  %l4 = alloca i64
  %l5 = alloca %"compiler/eval:frame"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l14 = alloca { i64, ptr }
  %l16 = alloca %"compiler/eval:frame"
  %l24 = alloca i64
  %l30 = alloca { i64, ptr }
  %l32 = alloca %"compiler/eval:frame"
  %l43 = alloca i64
  %l46 = alloca i64
  %l65 = alloca { i64, ptr }
  %l70 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca %"compiler/eval:frame"
  %l92 = alloca ptr
  %l95 = alloca ptr
  %l100 = alloca { i64, ptr }
  %l103 = alloca ptr
  %l108 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Call" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l14, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %t9, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %l16, i64 136, i1 false)
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 0
  %t13 = load { i64, [7 x i64] }, ptr %t12
  %t14 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 1
  %t15 = load %"compiler/mir:Range", ptr %t14
  %t16 = getelementptr %"compiler/mir:Call", ptr %l2, i32 0, i32 2
  %t17 = load %"compiler/mir:Range", ptr %t16
  %t18 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 7
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 8
  %t21 = load i64, ptr %t20, !tbaa !24
  %t29 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %t10, i64 %t11, { i64, [7 x i64] } %t13, %"compiler/mir:Range" %t15, %"compiler/mir:Range" %t17, i64 %t19, i64 %t21)
  store i64 %t29, ptr %l24
  br label %bb1
bb1:
  %t30 = load i64, ptr %l24, !tbaa !24
  store i64 %t30, ptr %l4, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = icmp slt i64 %t31, 0
  br i1 %t33, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %t35, i64 %t36)
  br label %bb5
bb5:
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 58
  %t42 = load { i64, ptr }, ptr %t41, !tbaa !27
  store { i64, ptr } %t42, ptr %l30, !tbaa !27
  %t43 = load i64, ptr %l4, !tbaa !24
  %t45 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/eval:frame", ptr %t46, i64 %t43
  call void @llvm.memmove.p0.p0.i64(ptr %l32, ptr %t47, i64 136, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l5, ptr %l32, i64 136, i1 false)
  %t48 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  %t50 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 3
  %t51 = load i64, ptr %t50, !tbaa !24
  %t54 = sub i64 %t49, %t51
  store i64 %t54, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 61
  %t59 = load i64, ptr %t58, !tbaa !24
  %t60 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 3
  %t61 = load i64, ptr %t60, !tbaa !24
  %t64 = sub i64 %t59, %t61
  store i64 %t64, ptr %l8, !tbaa !24
  store i64 1, ptr %l9, !tbaa !24
  %t66 = load i64, ptr %l8, !tbaa !24
  %t67 = load i64, ptr %l7, !tbaa !24
  %t70 = icmp sgt i64 %t66, %t67
  br i1 %t70, label %bb6, label %bb7
bb6:
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = icmp sgt i64 %t72, 0
  br i1 %t74, label %bb8, label %bb9
bb7:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb11
bb8:
  %t76 = load i64, ptr %l8, !tbaa !24
  %t77 = load i64, ptr %l7, !tbaa !24
  %t80 = sub i64 %t76, %t77
  %t81 = load i64, ptr %l9, !tbaa !24
  %t84 = add i64 %t80, %t81
  %t86 = sub i64 %t84, 1
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = sdiv i64 %t86, %t87
  store i64 %t90, ptr %l46, !tbaa !24
  br label %bb10
bb9:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb10
bb10:
  %t92 = load i64, ptr %l46, !tbaa !24
  store i64 %t92, ptr %l43, !tbaa !24
  br label %bb11
bb11:
  %t93 = load i64, ptr %l43, !tbaa !24
  store i64 %t93, ptr %l10, !tbaa !24
  store i64 0, ptr %l11, !tbaa !24
  br label %bb12
bb12:
  %t94 = load i64, ptr %l11, !tbaa !24
  %t95 = load i64, ptr %l10, !tbaa !24
  %t98 = icmp slt i64 %t94, %t95
  %t100 = xor i1 %t98, true
  br i1 %t100, label %bb13, label %bb14
bb13:
  br label %bb17
bb14:
  br label %bb15
bb15:
  %t102 = load i64, ptr %l7, !tbaa !24
  %t103 = load i64, ptr %l11, !tbaa !24
  %t104 = load i64, ptr %l9, !tbaa !24
  %t107 = mul i64 %t103, %t104
  %t110 = add i64 %t102, %t107
  store i64 %t110, ptr %l12, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t114 = getelementptr %"compiler/eval:Machine", ptr %t112, i32 0, i32 60
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l65, !tbaa !27
  %t116 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 3
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = add i64 %t117, %t118
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 60
  %t125 = load { i64, ptr }, ptr %t124, !tbaa !27
  store { i64, ptr } %t125, ptr %l70, !tbaa !27
  %t126 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 3
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load i64, ptr %l12, !tbaa !24
  %t131 = add i64 %t127, %t128
  %t133 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t134 = load ptr, ptr %t133, !tbaa !27
  %t135 = getelementptr i64, ptr %t134, i64 %t131
  %t136 = load i64, ptr %t135, !tbaa !34
  %t139 = getelementptr { i64, ptr }, ptr %l65, i32 0, i32 1
  %t140 = load ptr, ptr %t139, !tbaa !27
  %t141 = getelementptr i64, ptr %t140, i64 %t121
  store i64 %t136, ptr %t141, !tbaa !34
  br label %bb16
bb16:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t144 = add i64 %t142, 1
  store i64 %t144, ptr %l11, !tbaa !24
  br label %bb12
bb17:
  %t146 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 3
  %t147 = load i64, ptr %t146, !tbaa !24
  %t148 = load i64, ptr %l6, !tbaa !24
  %t151 = sub i64 %t147, %t148
  %t153 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 3
  store i64 %t151, ptr %t153, !tbaa !24
  %t154 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 4
  %t155 = load i64, ptr %t154, !tbaa !24
  %t156 = load i64, ptr %l6, !tbaa !24
  %t159 = sub i64 %t155, %t156
  %t161 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 4
  store i64 %t159, ptr %t161, !tbaa !24
  %t162 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 5
  %t163 = load i64, ptr %t162, !tbaa !24
  %t164 = load i64, ptr %l6, !tbaa !24
  %t167 = sub i64 %t163, %t164
  %t169 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 5
  store i64 %t167, ptr %t169, !tbaa !24
  %t170 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 9
  %t171 = load i64, ptr %t170, !tbaa !24
  %t173 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 9
  store i64 %t171, ptr %t173, !tbaa !24
  %t174 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 19
  %t175 = load i64, ptr %t174, !tbaa !24
  %t177 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 19
  store i64 %t175, ptr %t177, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t178, i32 0, i32 58
  %t181 = load { i64, ptr }, ptr %t180, !tbaa !27
  store { i64, ptr } %t181, ptr %l89, !tbaa !27
  %t182 = load i64, ptr %l1, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l91, ptr %l5, i64 136, i1 false)
  %t184 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t185 = load ptr, ptr %t184, !tbaa !27
  %t186 = getelementptr %"compiler/eval:frame", ptr %t185, i64 %t182
  call void @llvm.memmove.p0.p0.i64(ptr %t186, ptr %l91, i64 136, i1 false)
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l92, !tbaa !29
  %t188 = load ptr, ptr %l92, !tbaa !29
  %t189 = getelementptr %"compiler/eval:Machine", ptr %t188, i32 0, i32 59
  %t190 = load i64, ptr %t189, !tbaa !24
  %t192 = sub i64 %t190, 1
  %t194 = load ptr, ptr %l92, !tbaa !29
  %t195 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 59
  store i64 %t192, ptr %t195, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l95, !tbaa !29
  %t197 = load ptr, ptr %l95, !tbaa !29
  %t198 = getelementptr %"compiler/eval:Machine", ptr %t197, i32 0, i32 61
  %t199 = load i64, ptr %t198, !tbaa !24
  %t200 = load i64, ptr %l6, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t205 = load ptr, ptr %l95, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 61
  store i64 %t203, ptr %t206, !tbaa !24
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t207, i32 0, i32 26
  %t210 = load { i64, ptr }, ptr %t209, !tbaa !27
  store { i64, ptr } %t210, ptr %l100, !tbaa !27
  %t211 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 0
  %t212 = load i64, ptr %t211, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l100, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr %"compiler/eval:cfn", ptr %t215, i64 %t212
  %t217 = getelementptr %"compiler/eval:cfn", ptr %t216, i32 0, i32 17
  %t218 = load i1, ptr %t217, !tbaa !21
  br i1 %t218, label %bb18, label %bb19
bb18:
  %t220 = load ptr, ptr %l0, !tbaa !29
  store ptr %t220, ptr %l103, !tbaa !29
  %t221 = load ptr, ptr %l103, !tbaa !29
  %t222 = getelementptr %"compiler/eval:Machine", ptr %t221, i32 0, i32 11
  %t223 = load i64, ptr %t222, !tbaa !24
  %t225 = sub i64 %t223, 1
  %t227 = load ptr, ptr %l103, !tbaa !29
  %t228 = getelementptr %"compiler/eval:Machine", ptr %t227, i32 0, i32 11
  store i64 %t225, ptr %t228, !tbaa !24
  br label %bb20
bb19:
  br label %bb20
bb20:
  %t229 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 6
  %t231 = load i64, ptr %t230, !tbaa !24
  %t234 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t229, i64 %t231)
  store i1 %t234, ptr %l108
  br label %bb21
bb21:
  %t235 = load i1, ptr %l108, !tbaa !21
  br i1 %t235, label %bb22, label %bb23
bb22:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Machine", ptr %t236, i32 0, i32 62
  %t239 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 6
  %t240 = load i64, ptr %t239, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t238, i64 %t240)
  br label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb25
bb25:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eterm(ptr %v0, ptr %a0, i64 %a1, { i64, [8 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [8 x i64] }
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { i64, [4 x i64] }
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca { i64, [4 x i64] }
  %l10 = alloca %"compiler/mir:Range"
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca %"compiler/source:Span"
  %l14 = alloca i32
  %l15 = alloca %"compiler/source:Span"
  %l16 = alloca { i64, [4 x i64] }
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca i32
  %l19 = alloca %"compiler/mir:Call"
  %l20 = alloca %"compiler/source:Span"
  %l21 = alloca { i64, [4 x i64] }
  %l22 = alloca i32
  %l23 = alloca %"compiler/mir:Range"
  %l24 = alloca i32
  %l25 = alloca %"compiler/source:Span"
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, [4 x i64] }
  %l29 = alloca i64
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca i32
  %l36 = alloca i32
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca { i64, [4 x i64] }
  %l41 = alloca { i64, ptr }
  %l47 = alloca i64
  %l60 = alloca i1
  %l64 = alloca i1
  %l66 = alloca ptr
  %l67 = alloca i64
  %l71 = alloca i64
  %l73 = alloca i32
  %l82 = alloca i1
  %l86 = alloca i1
  %l94 = alloca i32
  %l119 = alloca { i64, ptr }
  %l123 = alloca i1
  %l125 = alloca i1
  %l129 = alloca i1
  %l142 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l149 = alloca i1
  %l150 = alloca ptr
  %l151 = alloca i64
  %l155 = alloca ptr
  %l157 = alloca i1
  %l173 = alloca i1
  %l177 = alloca i1
  %l202 = alloca { i64, ptr }
  %l206 = alloca i1
  %l208 = alloca { i64, ptr }
  %l213 = alloca { i64, ptr }
  %l220 = alloca ptr
  %l224 = alloca { i64, ptr }
  %l233 = alloca { i64, ptr }
  %l236 = alloca i64
  %l238 = alloca { i64, ptr }
  %l241 = alloca ptr
  %l245 = alloca i64
  %l247 = alloca i64
  %l279 = alloca { i64, ptr }
  %t360 = alloca { i64, [4 x i64] }, align 8
  %t504 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [8 x i64] } %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l41, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l4, !tbaa !24
  %t13 = load { i64, [8 x i64] }, ptr %l2
  %t15 = extractvalue { i64, [8 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l47
  br label %bb4
bb4:
  br label %bb135
bb5:
  %t21 = load { i64, [8 x i64] }, ptr %l2
  %t23 = extractvalue { i64, [8 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t27 = getelementptr { i32 }, ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l5, !tbaa !23
  br label %bb8
bb7:
  br label %bb10
bb8:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load i64, ptr %l1, !tbaa !24
  %t32 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t30, i64 %t31, i32 %t32)
  br label %bb9
bb9:
  br label %bb135
bb10:
  %t36 = load { i64, [8 x i64] }, ptr %l2
  %t38 = extractvalue { i64, [8 x i64] } %t36, 0
  %t39 = icmp eq i64 %t38, 2
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t41 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t42 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t41, i32 0, i32 0
  %t43 = load { i64, [4 x i64] }, ptr %t42
  store { i64, [4 x i64] } %t43, ptr %l6
  %t45 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t46 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t45, i32 0, i32 1
  %t47 = load i32, ptr %t46
  store i32 %t47, ptr %l7, !tbaa !23
  %t49 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t50 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t49, i32 0, i32 2
  %t51 = load i32, ptr %t50
  store i32 %t51, ptr %l8, !tbaa !23
  br label %bb13
bb12:
  br label %bb26
bb13:
  %t53 = load i1, ptr %l3, !tbaa !21
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load { i64, [4 x i64] }, ptr %l6
  %t61 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t55, i64 %t56, { i64, [4 x i64] } %t57)
  store i1 %t61, ptr %l64
  br label %bb16
bb15:
  store i1 false, ptr %l60, !tbaa !21
  br label %bb17
bb16:
  %t62 = load i1, ptr %l64, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l60, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l60, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l66, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  store i64 %t67, ptr %l67, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load { i64, [4 x i64] }, ptr %l6
  %t74 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t68, i64 %t69, { i64, [4 x i64] } %t70)
  store i64 %t74, ptr %l71
  br label %bb21
bb21:
  %t75 = load i64, ptr %l71, !tbaa !24
  %t76 = icmp ne i64 %t75, 0
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t78 = load i32, ptr %l7, !tbaa !23
  store i32 %t78, ptr %l73, !tbaa !23
  br label %bb24
bb23:
  %t80 = load i32, ptr %l8, !tbaa !23
  store i32 %t80, ptr %l73, !tbaa !23
  br label %bb24
bb24:
  %t82 = load ptr, ptr %l66, !tbaa !29
  %t83 = load i64, ptr %l67, !tbaa !24
  %t84 = load i32, ptr %l73, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t82, i64 %t83, i32 %t84)
  br label %bb25
bb25:
  br label %bb135
bb26:
  %t85 = load { i64, [8 x i64] }, ptr %l2
  %t87 = extractvalue { i64, [8 x i64] } %t85, 0
  %t88 = icmp eq i64 %t87, 3
  br i1 %t88, label %bb27, label %bb28
bb27:
  %t90 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t91 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t90, i32 0, i32 0
  %t92 = load { i64, [4 x i64] }, ptr %t91
  store { i64, [4 x i64] } %t92, ptr %l9
  %t94 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t95 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t94, i32 0, i32 1
  %t96 = load %"compiler/mir:Range", ptr %t95
  store %"compiler/mir:Range" %t96, ptr %l10
  %t98 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t99 = getelementptr { { i64, [4 x i64] }, %"compiler/mir:Range", i32 }, ptr %t98, i32 0, i32 2
  %t100 = load i32, ptr %t99
  store i32 %t100, ptr %l11, !tbaa !23
  br label %bb29
bb28:
  br label %bb42
bb29:
  %t102 = load i1, ptr %l3, !tbaa !21
  br i1 %t102, label %bb30, label %bb31
bb30:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load i64, ptr %l1, !tbaa !24
  %t106 = load { i64, [4 x i64] }, ptr %l9
  %t110 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t104, i64 %t105, { i64, [4 x i64] } %t106)
  store i1 %t110, ptr %l86
  br label %bb32
bb31:
  store i1 false, ptr %l82, !tbaa !21
  br label %bb33
bb32:
  %t111 = load i1, ptr %l86, !tbaa !21
  %t112 = xor i1 %t111, true
  store i1 %t112, ptr %l82, !tbaa !21
  br label %bb33
bb33:
  %t114 = load i1, ptr %l82, !tbaa !21
  br i1 %t114, label %bb34, label %bb35
bb34:
  br label %ret
bb35:
  br label %bb36
bb36:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t116 = load i64, ptr %l1, !tbaa !24
  %t117 = load i64, ptr %l4, !tbaa !24
  %t118 = load { i64, [4 x i64] }, ptr %l9
  %t119 = load %"compiler/mir:Range", ptr %l10
  %t120 = load i32, ptr %l11, !tbaa !23
  %t127 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eswitchTo(ptr %v0, ptr %t115, i64 %t116, i64 %t117, { i64, [4 x i64] } %t118, %"compiler/mir:Range" %t119, i32 %t120)
  store i32 %t127, ptr %l94
  br label %bb37
bb37:
  %t128 = load i32, ptr %l94, !tbaa !23
  store i32 %t128, ptr %l12, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 22
  %t132 = load i1, ptr %t131, !tbaa !21
  %t134 = xor i1 %t132, true
  br i1 %t134, label %bb38, label %bb39
bb38:
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t137 = load i64, ptr %l1, !tbaa !24
  %t138 = load i32, ptr %l12, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t136, i64 %t137, i32 %t138)
  br label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb41
bb41:
  br label %bb135
bb42:
  %t142 = load { i64, [8 x i64] }, ptr %l2
  %t144 = extractvalue { i64, [8 x i64] } %t142, 0
  %t145 = icmp eq i64 %t144, 4
  br i1 %t145, label %bb43, label %bb44
bb43:
  %t147 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", i32 }, ptr %t147, i32 0, i32 0
  %t149 = load %"compiler/source:Span", ptr %t148
  store %"compiler/source:Span" %t149, ptr %l13
  %t151 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", i32 }, ptr %t151, i32 0, i32 1
  %t153 = load i32, ptr %t152
  store i32 %t153, ptr %l14, !tbaa !23
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l1, !tbaa !24
  %t157 = load i64, ptr %l4, !tbaa !24
  %t158 = load %"compiler/source:Span", ptr %l13
  %t159 = load i32, ptr %l14, !tbaa !23
  %t160 = load i1, ptr %l3, !tbaa !21
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallTerm(ptr %v0, ptr %t155, i64 %t156, i64 %t157, %"compiler/source:Span" %t158, i32 %t159, i1 %t160)
  br label %bb46
bb46:
  br label %bb135
bb47:
  %t167 = load { i64, [8 x i64] }, ptr %l2
  %t169 = extractvalue { i64, [8 x i64] } %t167, 0
  %t170 = icmp eq i64 %t169, 5
  br i1 %t170, label %bb48, label %bb49
bb48:
  %t172 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t173 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t172, i32 0, i32 0
  %t174 = load %"compiler/source:Span", ptr %t173
  store %"compiler/source:Span" %t174, ptr %l15
  %t176 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t177 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t176, i32 0, i32 1
  %t178 = load { i64, [4 x i64] }, ptr %t177
  store { i64, [4 x i64] } %t178, ptr %l16
  br label %bb50
bb49:
  br label %bb63
bb50:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i64, ptr %l4, !tbaa !24
  %t182 = load %"compiler/source:Span", ptr %l15
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t180, i64 %t181, %"compiler/source:Span" %t182)
  br label %bb51
bb51:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Machine", ptr %t186, i32 0, i32 58
  %t189 = load { i64, ptr }, ptr %t188, !tbaa !27
  store { i64, ptr } %t189, ptr %l119, !tbaa !27
  %t190 = load i64, ptr %l1, !tbaa !24
  %t192 = getelementptr { i64, ptr }, ptr %l119, i32 0, i32 1
  %t193 = load ptr, ptr %t192, !tbaa !27
  %t194 = getelementptr %"compiler/eval:frame", ptr %t193, i64 %t190
  %t195 = getelementptr %"compiler/eval:frame", ptr %t194, i32 0, i32 11
  %t196 = load i1, ptr %t195, !tbaa !21
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb52, label %bb53
bb52:
  %t200 = load i1, ptr %l3, !tbaa !21
  store i1 %t200, ptr %l123, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l123, !tbaa !21
  br label %bb54
bb54:
  %t202 = load i1, ptr %l123, !tbaa !21
  br i1 %t202, label %bb55, label %bb56
bb55:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l1, !tbaa !24
  %t205 = load { i64, [4 x i64] }, ptr %l16
  %t209 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t203, i64 %t204, { i64, [4 x i64] } %t205)
  store i1 %t209, ptr %l129
  br label %bb57
bb56:
  store i1 false, ptr %l125, !tbaa !21
  br label %bb58
bb57:
  %t210 = load i1, ptr %l129, !tbaa !21
  %t211 = xor i1 %t210, true
  store i1 %t211, ptr %l125, !tbaa !21
  br label %bb58
bb58:
  %t213 = load i1, ptr %l125, !tbaa !21
  br i1 %t213, label %bb59, label %bb60
bb59:
  br label %ret
bb60:
  br label %bb61
bb61:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i64, ptr %l1, !tbaa !24
  %t216 = load { i64, [4 x i64] }, ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %t214, i64 %t215, i1 false, { i64, [4 x i64] } %t216, i64 0)
  br label %bb62
bb62:
  br label %bb135
bb63:
  %t220 = load { i64, [8 x i64] }, ptr %l2
  %t222 = extractvalue { i64, [8 x i64] } %t220, 0
  %t223 = icmp eq i64 %t222, 6
  br i1 %t223, label %bb64, label %bb65
bb64:
  %t225 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t226 = getelementptr { %"compiler/source:Span", i32 }, ptr %t225, i32 0, i32 0
  %t227 = load %"compiler/source:Span", ptr %t226
  store %"compiler/source:Span" %t227, ptr %l17
  %t229 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t230 = getelementptr { %"compiler/source:Span", i32 }, ptr %t229, i32 0, i32 1
  %t231 = load i32, ptr %t230
  store i32 %t231, ptr %l18, !tbaa !23
  br label %bb66
bb65:
  br label %bb77
bb66:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t234 = load i64, ptr %l4, !tbaa !24
  %t235 = load %"compiler/source:Span", ptr %l17
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t233, i64 %t234, %"compiler/source:Span" %t235)
  br label %bb67
bb67:
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/eval:Machine", ptr %t239, i32 0, i32 26
  %t242 = load { i64, ptr }, ptr %t241, !tbaa !27
  store { i64, ptr } %t242, ptr %l142, !tbaa !27
  %t243 = load i64, ptr %l4, !tbaa !24
  %t245 = getelementptr { i64, ptr }, ptr %l142, i32 0, i32 1
  %t246 = load ptr, ptr %t245, !tbaa !27
  %t247 = getelementptr %"compiler/eval:cfn", ptr %t246, i64 %t243
  %t248 = getelementptr %"compiler/eval:cfn", ptr %t247, i32 0, i32 5
  %t249 = load { i64, ptr }, ptr %t248, !tbaa !27
  store { i64, ptr } %t249, ptr %l144, !tbaa !27
  %t250 = load i32, ptr %l18, !tbaa !23
  %t252 = sext i32 %t250 to i64
  %t254 = getelementptr { i64, ptr }, ptr %l144, i32 0, i32 1
  %t255 = load ptr, ptr %t254, !tbaa !27
  %t256 = getelementptr %"compiler/mir:Call", ptr %t255, i64 %t252
  %t257 = load %"compiler/mir:Call", ptr %t256
  store %"compiler/mir:Call" %t257, ptr %l19
  %t259 = load i1, ptr %l3, !tbaa !21
  br i1 %t259, label %bb68, label %bb69
bb68:
  %t261 = load ptr, ptr %l0, !tbaa !29
  store ptr %t261, ptr %l150, !tbaa !29
  %t262 = load i64, ptr %l1, !tbaa !24
  store i64 %t262, ptr %l151, !tbaa !24
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t265 = getelementptr %"compiler/eval:Machine", ptr %t263, i32 0, i32 25
  %t266 = load i64, ptr %l4, !tbaa !24
  %t269 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t265, i64 %t266)
  store ptr %t269, ptr %l155
  br label %bb70
bb69:
  store i1 false, ptr %l149, !tbaa !21
  br label %bb72
bb70:
  %t270 = getelementptr %"compiler/mir:Call", ptr %l19, i32 0, i32 1
  %t271 = load %"compiler/mir:Range", ptr %t270
  %t272 = load ptr, ptr %l150, !tbaa !29
  %t273 = load i64, ptr %l151, !tbaa !24
  %t274 = load ptr, ptr %l155, !tbaa !29
  %t276 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v0, ptr %t272, i64 %t273, ptr %t274, %"compiler/mir:Range" %t271)
  store i1 %t276, ptr %l157
  br label %bb71
bb71:
  %t277 = load i1, ptr %l157, !tbaa !21
  %t278 = xor i1 %t277, true
  store i1 %t278, ptr %l149, !tbaa !21
  br label %bb72
bb72:
  %t280 = load i1, ptr %l149, !tbaa !21
  br i1 %t280, label %bb73, label %bb74
bb73:
  br label %ret
bb74:
  br label %bb75
bb75:
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t282 = load i64, ptr %l1, !tbaa !24
  %t283 = load %"compiler/mir:Call", ptr %l19
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etail(ptr %v0, ptr %t281, i64 %t282, %"compiler/mir:Call" %t283)
  br label %bb76
bb76:
  br label %bb135
bb77:
  %t287 = load { i64, [8 x i64] }, ptr %l2
  %t289 = extractvalue { i64, [8 x i64] } %t287, 0
  %t290 = icmp eq i64 %t289, 11
  br i1 %t290, label %bb78, label %bb79
bb78:
  %t292 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t293 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t292, i32 0, i32 0
  %t294 = load %"compiler/source:Span", ptr %t293
  store %"compiler/source:Span" %t294, ptr %l20
  %t296 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t297 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t296, i32 0, i32 1
  %t298 = load { i64, [4 x i64] }, ptr %t297
  store { i64, [4 x i64] } %t298, ptr %l21
  %t300 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t301 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t300, i32 0, i32 2
  %t302 = load i32, ptr %t301
  store i32 %t302, ptr %l22, !tbaa !23
  %t304 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t305 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t304, i32 0, i32 3
  %t306 = load %"compiler/mir:Range", ptr %t305
  store %"compiler/mir:Range" %t306, ptr %l23
  %t308 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t308, i32 0, i32 4
  %t310 = load i32, ptr %t309
  store i32 %t310, ptr %l24, !tbaa !23
  br label %bb80
bb79:
  br label %bb90
bb80:
  %t312 = load ptr, ptr %l0, !tbaa !29
  %t313 = load i64, ptr %l4, !tbaa !24
  %t314 = load %"compiler/source:Span", ptr %l20
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t312, i64 %t313, %"compiler/source:Span" %t314)
  br label %bb81
bb81:
  %t318 = load i1, ptr %l3, !tbaa !21
  br i1 %t318, label %bb82, label %bb83
bb82:
  %t320 = load ptr, ptr %l0, !tbaa !29
  %t321 = load i64, ptr %l1, !tbaa !24
  %t322 = load { i64, [4 x i64] }, ptr %l21
  %t326 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t320, i64 %t321, { i64, [4 x i64] } %t322)
  store i1 %t326, ptr %l177
  br label %bb84
bb83:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb85
bb84:
  %t327 = load i1, ptr %l177, !tbaa !21
  %t328 = xor i1 %t327, true
  store i1 %t328, ptr %l173, !tbaa !21
  br label %bb85
bb85:
  %t330 = load i1, ptr %l173, !tbaa !21
  br i1 %t330, label %bb86, label %bb87
bb86:
  br label %ret
bb87:
  br label %bb88
bb88:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t332 = load i64, ptr %l1, !tbaa !24
  %t333 = load { i64, [4 x i64] }, ptr %l21
  %t334 = load i32, ptr %l22, !tbaa !23
  %t335 = load %"compiler/mir:Range", ptr %l23
  %t336 = load i32, ptr %l24, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2esuspend(ptr %v0, ptr %t331, i64 %t332, { i64, [4 x i64] } %t333, i32 %t334, %"compiler/mir:Range" %t335, i32 %t336)
  br label %bb89
bb89:
  br label %bb135
bb90:
  %t343 = load { i64, [8 x i64] }, ptr %l2
  %t345 = extractvalue { i64, [8 x i64] } %t343, 0
  %t346 = icmp eq i64 %t345, 12
  br i1 %t346, label %bb91, label %bb92
bb91:
  %t348 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t349 = getelementptr { %"compiler/source:Span" }, ptr %t348, i32 0, i32 0
  %t350 = load %"compiler/source:Span", ptr %t349
  store %"compiler/source:Span" %t350, ptr %l25
  br label %bb93
bb92:
  br label %bb96
bb93:
  %t352 = load ptr, ptr %l0, !tbaa !29
  %t353 = load i64, ptr %l4, !tbaa !24
  %t354 = load %"compiler/source:Span", ptr %l25
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t352, i64 %t353, %"compiler/source:Span" %t354)
  br label %bb94
bb94:
  %t358 = load ptr, ptr %l0, !tbaa !29
  %t359 = load i64, ptr %l1, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t360
  %t361 = getelementptr { i64, [4 x i64] }, ptr %t360, i32 0, i32 0
  store i64 0, ptr %t361
  %t362 = load { i64, [4 x i64] }, ptr %t360
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %t358, i64 %t359, i1 false, { i64, [4 x i64] } %t362, i64 0)
  br label %bb95
bb95:
  br label %bb135
bb96:
  %t366 = load { i64, [8 x i64] }, ptr %l2
  %t368 = extractvalue { i64, [8 x i64] } %t366, 0
  %t369 = icmp eq i64 %t368, 7
  br i1 %t369, label %bb97, label %bb98
bb97:
  %t371 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t371, i32 0, i32 0
  %t373 = load %"compiler/source:Span", ptr %t372
  store %"compiler/source:Span" %t373, ptr %l26
  %t375 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t376 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t375, i32 0, i32 1
  %t377 = load { i64, [4 x i64] }, ptr %t376
  store { i64, [4 x i64] } %t377, ptr %l27
  br label %bb99
bb98:
  br label %bb118
bb99:
  %t379 = load ptr, ptr %l0, !tbaa !29
  %t380 = load i64, ptr %l4, !tbaa !24
  %t381 = load %"compiler/source:Span", ptr %l26
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t379, i64 %t380, %"compiler/source:Span" %t381)
  br label %bb100
bb100:
  %t385 = load ptr, ptr %l0, !tbaa !29
  %t387 = getelementptr %"compiler/eval:Machine", ptr %t385, i32 0, i32 58
  %t388 = load { i64, ptr }, ptr %t387, !tbaa !27
  store { i64, ptr } %t388, ptr %l202, !tbaa !27
  %t389 = load i64, ptr %l1, !tbaa !24
  %t391 = getelementptr { i64, ptr }, ptr %l202, i32 0, i32 1
  %t392 = load ptr, ptr %t391, !tbaa !27
  %t393 = getelementptr %"compiler/eval:frame", ptr %t392, i64 %t389
  %t394 = getelementptr %"compiler/eval:frame", ptr %t393, i32 0, i32 11
  %t395 = load i1, ptr %t394, !tbaa !21
  %t397 = xor i1 %t395, true
  br i1 %t397, label %bb101, label %bb102
bb101:
  %t399 = load ptr, ptr %l0, !tbaa !29
  %t401 = getelementptr %"compiler/eval:Machine", ptr %t399, i32 0, i32 58
  %t402 = load { i64, ptr }, ptr %t401, !tbaa !27
  store { i64, ptr } %t402, ptr %l208, !tbaa !27
  %t403 = load i64, ptr %l1, !tbaa !24
  %t405 = getelementptr { i64, ptr }, ptr %l208, i32 0, i32 1
  %t406 = load ptr, ptr %t405, !tbaa !27
  %t407 = getelementptr %"compiler/eval:frame", ptr %t406, i64 %t403
  %t408 = getelementptr %"compiler/eval:frame", ptr %t407, i32 0, i32 18
  %t409 = load i32, ptr %t408, !tbaa !23
  %t411 = icmp sge i32 %t409, 0
  store i1 %t411, ptr %l206, !tbaa !21
  br label %bb103
bb102:
  store i1 false, ptr %l206, !tbaa !21
  br label %bb103
bb103:
  %t413 = load i1, ptr %l206, !tbaa !21
  br i1 %t413, label %bb104, label %bb105
bb104:
  %t414 = load ptr, ptr %l0, !tbaa !29
  %t416 = getelementptr %"compiler/eval:Machine", ptr %t414, i32 0, i32 58
  %t417 = load { i64, ptr }, ptr %t416, !tbaa !27
  store { i64, ptr } %t417, ptr %l213, !tbaa !27
  %t418 = load i64, ptr %l1, !tbaa !24
  %t420 = getelementptr { i64, ptr }, ptr %l213, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !27
  %t422 = getelementptr %"compiler/eval:frame", ptr %t421, i64 %t418
  %t423 = getelementptr %"compiler/eval:frame", ptr %t422, i32 0, i32 18
  %t424 = load i32, ptr %t423, !tbaa !23
  %t426 = sext i32 %t424 to i64
  store i64 3, ptr %l29, !tbaa !24
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t430 = getelementptr %"compiler/eval:Machine", ptr %t428, i32 0, i32 63
  %t434 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t430, i64 %t426)
  store ptr %t434, ptr %l220
  br label %bb106
bb105:
  br label %bb107
bb106:
  %t435 = load ptr, ptr %l220, !tbaa !29
  %t437 = load i64, ptr %l29, !tbaa !24
  %t440 = getelementptr %"compiler/eval:genRec", ptr %t435, i32 0, i32 0
  store i64 %t437, ptr %t440, !tbaa !24
  br label %bb107
bb107:
  %t441 = load ptr, ptr %l0, !tbaa !29
  %t443 = getelementptr %"compiler/eval:Machine", ptr %t441, i32 0, i32 58
  %t444 = load { i64, ptr }, ptr %t443, !tbaa !27
  store { i64, ptr } %t444, ptr %l224, !tbaa !27
  %t445 = load i64, ptr %l1, !tbaa !24
  %t447 = getelementptr { i64, ptr }, ptr %l224, i32 0, i32 1
  %t448 = load ptr, ptr %t447, !tbaa !27
  %t449 = getelementptr %"compiler/eval:frame", ptr %t448, i64 %t445
  %t450 = getelementptr %"compiler/eval:frame", ptr %t449, i32 0, i32 11
  %t451 = load i1, ptr %t450, !tbaa !21
  %t453 = xor i1 %t451, true
  br i1 %t453, label %bb108, label %bb109
bb108:
  %t455 = load ptr, ptr %l0, !tbaa !29
  %t456 = load i64, ptr %l1, !tbaa !24
  %t457 = load i64, ptr %l4, !tbaa !24
  %t458 = load %"compiler/source:Span", ptr %l26
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %t455, i64 %t456, i64 %t457, %"compiler/source:Span" %t458)
  br label %bb110
bb109:
  br label %bb111
bb110:
  br label %bb111
bb111:
  %t463 = load ptr, ptr %l0, !tbaa !29
  %t465 = getelementptr %"compiler/eval:Machine", ptr %t463, i32 0, i32 58
  %t466 = load { i64, ptr }, ptr %t465, !tbaa !27
  store { i64, ptr } %t466, ptr %l233, !tbaa !27
  %t467 = load i64, ptr %l1, !tbaa !24
  %t469 = getelementptr { i64, ptr }, ptr %l233, i32 0, i32 1
  %t470 = load ptr, ptr %t469, !tbaa !27
  %t471 = getelementptr %"compiler/eval:frame", ptr %t470, i64 %t467
  %t472 = getelementptr %"compiler/eval:frame", ptr %t471, i32 0, i32 11
  %t473 = load i1, ptr %t472, !tbaa !21
  br i1 %t473, label %bb112, label %bb113
bb112:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr %"compiler/eval:Machine", ptr %t475, i32 0, i32 58
  %t478 = load { i64, ptr }, ptr %t477, !tbaa !27
  store { i64, ptr } %t478, ptr %l238, !tbaa !27
  %t479 = load i64, ptr %l1, !tbaa !24
  %t481 = getelementptr { i64, ptr }, ptr %l238, i32 0, i32 1
  %t482 = load ptr, ptr %t481, !tbaa !27
  %t483 = getelementptr %"compiler/eval:frame", ptr %t482, i64 %t479
  %t484 = getelementptr %"compiler/eval:frame", ptr %t483, i32 0, i32 13
  %t485 = load i64, ptr %t484, !tbaa !24
  store i64 %t485, ptr %l236, !tbaa !24
  br label %bb116
bb113:
  %t487 = load ptr, ptr %l0, !tbaa !29
  store ptr %t487, ptr %l241, !tbaa !29
  %t488 = load ptr, ptr %l0, !tbaa !29
  %t489 = load i64, ptr %l1, !tbaa !24
  %t490 = load { i64, [4 x i64] }, ptr %l27
  %t494 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t488, i64 %t489, { i64, [4 x i64] } %t490)
  store i64 %t494, ptr %l245
  br label %bb114
bb114:
  %t495 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t496 = load ptr, ptr %l241, !tbaa !29
  %t497 = load i64, ptr %l245, !tbaa !24
  %t499 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t496, i64 %t497, i32 %t495)
  store i64 %t499, ptr %l247
  br label %bb115
bb115:
  %t500 = load i64, ptr %l247, !tbaa !24
  store i64 %t500, ptr %l236, !tbaa !24
  br label %bb116
bb116:
  %t501 = load i64, ptr %l236, !tbaa !24
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load i64, ptr %l1, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t504
  %t505 = getelementptr { i64, [4 x i64] }, ptr %t504, i32 0, i32 0
  store i64 0, ptr %t505
  %t506 = load { i64, [4 x i64] }, ptr %t504
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %t502, i64 %t503, i1 true, { i64, [4 x i64] } %t506, i64 %t501)
  br label %bb117
bb117:
  br label %bb135
bb118:
  %t512 = load { i64, [8 x i64] }, ptr %l2
  %t514 = extractvalue { i64, [8 x i64] } %t512, 0
  %t515 = icmp eq i64 %t514, 8
  br i1 %t515, label %bb119, label %bb120
bb119:
  %t517 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t518 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t517, i32 0, i32 0
  %t519 = load %"compiler/source:Span", ptr %t518
  store %"compiler/source:Span" %t519, ptr %l32
  %t521 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t522 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t521, i32 0, i32 1
  %t523 = load i32, ptr %t522
  store i32 %t523, ptr %l33, !tbaa !23
  %t525 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t526 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t525, i32 0, i32 2
  %t527 = load i32, ptr %t526
  store i32 %t527, ptr %l34, !tbaa !23
  %t529 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t530 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t529, i32 0, i32 3
  %t531 = load i32, ptr %t530
  store i32 %t531, ptr %l35, !tbaa !23
  %t533 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t534 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t533, i32 0, i32 4
  %t535 = load i32, ptr %t534
  store i32 %t535, ptr %l36, !tbaa !23
  br label %bb121
bb120:
  br label %bb124
bb121:
  %t537 = load ptr, ptr %l0, !tbaa !29
  %t538 = load i64, ptr %l4, !tbaa !24
  %t539 = load %"compiler/source:Span", ptr %l32
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t537, i64 %t538, %"compiler/source:Span" %t539)
  br label %bb122
bb122:
  %t543 = load ptr, ptr %l0, !tbaa !29
  %t544 = load i64, ptr %l1, !tbaa !24
  %t545 = load i32, ptr %l33, !tbaa !23
  %t546 = load i32, ptr %l34, !tbaa !23
  %t547 = load i32, ptr %l35, !tbaa !23
  %t548 = load i32, ptr %l36, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewait(ptr %v0, ptr %t543, i64 %t544, i32 %t545, i32 %t546, i32 %t547, i32 %t548)
  br label %bb123
bb123:
  br label %bb135
bb124:
  %t555 = load { i64, [8 x i64] }, ptr %l2
  %t557 = extractvalue { i64, [8 x i64] } %t555, 0
  %t558 = icmp eq i64 %t557, 9
  br i1 %t558, label %bb125, label %bb126
bb125:
  %t560 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t561 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t560, i32 0, i32 0
  %t562 = load %"compiler/source:Span", ptr %t561
  store %"compiler/source:Span" %t562, ptr %l37
  %t564 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t565 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t564, i32 0, i32 1
  %t566 = load i32, ptr %t565, !range !{i32 0, i32 20}
  store i32 %t566, ptr %l38
  %t568 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t569 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t568, i32 0, i32 2
  %t570 = load { i64, [4 x i64] }, ptr %t569
  store { i64, [4 x i64] } %t570, ptr %l39
  br label %bb127
bb126:
  br label %bb130
bb127:
  %t572 = load ptr, ptr %l0, !tbaa !29
  %t573 = load i64, ptr %l4, !tbaa !24
  %t574 = load %"compiler/source:Span", ptr %l37
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t572, i64 %t573, %"compiler/source:Span" %t574)
  br label %bb128
bb128:
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t579 = load i64, ptr %l1, !tbaa !24
  %t580 = load ptr, ptr %l0, !tbaa !29
  %t582 = getelementptr %"compiler/eval:Machine", ptr %t580, i32 0, i32 26
  %t583 = load { i64, ptr }, ptr %t582, !tbaa !27
  store { i64, ptr } %t583, ptr %l279, !tbaa !27
  %t584 = load i64, ptr %l4, !tbaa !24
  %t586 = getelementptr { i64, ptr }, ptr %l279, i32 0, i32 1
  %t587 = load ptr, ptr %t586, !tbaa !27
  %t588 = getelementptr %"compiler/eval:cfn", ptr %t587, i64 %t584
  %t589 = getelementptr %"compiler/eval:cfn", ptr %t588, i32 0, i32 0
  %t590 = load i64, ptr %t589, !tbaa !24
  %t591 = load %"compiler/source:Span", ptr %l37
  %t592 = load i32, ptr %l38, !range !{i32 0, i32 20}
  %t593 = load { i64, [4 x i64] }, ptr %l39
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %t578, i64 %t579, i64 %t590, %"compiler/source:Span" %t591, i32 %t592, { i64, [4 x i64] } %t593)
  br label %bb129
bb129:
  br label %bb135
bb130:
  %t600 = load { i64, [8 x i64] }, ptr %l2
  %t602 = extractvalue { i64, [8 x i64] } %t600, 0
  %t603 = icmp eq i64 %t602, 10
  br i1 %t603, label %bb131, label %bb132
bb131:
  br label %bb133
bb132:
  br label %bb134
bb133:
  %t605 = load ptr, ptr %l0, !tbaa !29
  %t607 = getelementptr %"compiler/eval:Machine", ptr %t605, i32 0, i32 69
  store i1 true, ptr %t607, !tbaa !21
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = getelementptr %"compiler/eval:Machine", ptr %t608, i32 0, i32 22
  store i1 true, ptr %t610, !tbaa !21
  br label %bb135
bb134:
  call void @__olang_check_failed(ptr @olang_loc_f83a50064779c123_fa52c016159405ff)
  unreachable
bb135:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l22 = alloca i64
  %l25 = alloca i64
  %l44 = alloca { i64, ptr }
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = sdiv i64 %t5, 8
  store i64 %t7, ptr %l3, !tbaa !24
  %t9 = load i64, ptr %l1, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  %t13 = add i64 %t9, %t10
  %t15 = sub i64 %t13, 1
  %t17 = sdiv i64 %t15, 8
  %t19 = add i64 %t17, 1
  store i64 %t19, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp sgt i64 %t21, %t22
  br i1 %t25, label %bb4, label %bb5
bb4:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t29 = icmp sgt i64 %t27, 0
  br i1 %t29, label %bb6, label %bb7
bb5:
  store i64 0, ptr %l22, !tbaa !24
  br label %bb9
bb6:
  %t31 = load i64, ptr %l4, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = sub i64 %t31, %t32
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = add i64 %t35, %t36
  %t41 = sub i64 %t39, 1
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = sdiv i64 %t41, %t42
  store i64 %t45, ptr %l25, !tbaa !24
  br label %bb8
bb7:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb8
bb8:
  %t47 = load i64, ptr %l25, !tbaa !24
  store i64 %t47, ptr %l22, !tbaa !24
  br label %bb9
bb9:
  %t48 = load i64, ptr %l22, !tbaa !24
  store i64 %t48, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb10
bb10:
  %t49 = load i64, ptr %l7, !tbaa !24
  %t50 = load i64, ptr %l6, !tbaa !24
  %t53 = icmp slt i64 %t49, %t50
  %t55 = xor i1 %t53, true
  br i1 %t55, label %bb11, label %bb12
bb11:
  br label %bb15
bb12:
  br label %bb13
bb13:
  %t57 = load i64, ptr %l3, !tbaa !24
  %t58 = load i64, ptr %l7, !tbaa !24
  %t59 = load i64, ptr %l5, !tbaa !24
  %t62 = mul i64 %t58, %t59
  %t65 = add i64 %t57, %t62
  %t69 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 46
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l44, !tbaa !27
  %t73 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t74 = load ptr, ptr %t73, !tbaa !27
  %t75 = getelementptr i64, ptr %t74, i64 %t65
  store i64 0, ptr %t75, !tbaa !34
  br label %bb14
bb14:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t78 = add i64 %t76, 1
  store i64 %t78, ptr %l7, !tbaa !24
  br label %bb10
bb15:
  br label %ret
ret:
  ret void
}

define dso_local { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyStmt(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [21 x i64] } %a2) #0 {
entry:
  %l2 = alloca { i64, [21 x i64] }
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/mir:Lvalue"
  %l5 = alloca { i64, [15 x i64] }
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca { i64, [1 x i64] }
  %l8 = alloca { i64, [21 x i64] }
  %l14 = alloca i1
  %l18 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l25 = alloca i1
  %l29 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l30 = alloca { i64, ptr }
  %l31 = alloca i64
  %l32 = alloca { i64, ptr }
  %l33 = alloca { i64, [21 x i64] }
  %l43 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, %"compiler/source:Span" }
  store { i64, [21 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l2, i64 176, i1 false)
  %t1 = load { i64, [21 x i64] }, ptr %l8
  %t2 = extractvalue { i64, [21 x i64] } %t1, 0
  %t3 = icmp eq i64 %t2, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t6 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t5, i32 0, i32 0
  %t7 = load %"compiler/source:Span", ptr %t6
  store %"compiler/source:Span" %t7, ptr %l3
  %t9 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t10 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t9, i32 0, i32 1
  %t11 = load %"compiler/mir:Lvalue", ptr %t10
  store %"compiler/mir:Lvalue" %t11, ptr %l4
  %t13 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t14 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t13, i32 0, i32 2
  %t15 = load { i64, [15 x i64] }, ptr %t14
  store { i64, [15 x i64] } %t15, ptr %l5
  br label %bb3
bb2:
  br label %bb12
bb3:
  %t17 = load %"compiler/mir:Lvalue", ptr %l4
  %t19 = call i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %t17)
  store i1 %t19, ptr %l14
  br label %bb4
bb4:
  %t20 = load i1, ptr %l14, !tbaa !21
  br i1 %t20, label %bb5, label %bb6
bb5:
  %t21 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobalVar, !tbaa !27
  %t23 = load %"compiler/source:Span", ptr %l3
  %t25 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t21, 0
  %t27 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t25, %"compiler/source:Span" %t23, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t27, ptr %l18
  %t28 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l18, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  store { i64, ptr } %t29, ptr %l19, !tbaa !27
  %t30 = load { i64, ptr }, ptr %l19, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t30, 0
  store i64 %t31, ptr %l20, !tbaa !24
  %t32 = load i64, ptr %l20, !tbaa !24
  %t33 = mul i64 %t32, 1
  %t34 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t33)
  %t35 = insertvalue { i64, ptr } undef, i64 %t32, 0
  %t36 = insertvalue { i64, ptr } %t35, ptr %t34, 1
  store { i64, ptr } %t36, ptr %l21, !tbaa !27
  %t37 = getelementptr { i64, ptr }, ptr %l21, i32 0, i32 1
  %t38 = load ptr, ptr %t37, !tbaa !27
  %t39 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = load i64, ptr %l20, !tbaa !24
  %t42 = mul i64 %t41, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t38, ptr %t40, i64 %t42, i1 false)
  %t43 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t44 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l18, i32 0, i32 0
  store { i64, ptr } %t43, ptr %t44, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t45 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l18
  store { { i64, ptr }, %"compiler/source:Span" } %t45, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t48 = load { i64, [15 x i64] }, ptr %l5
  %t52 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereadsMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [15 x i64] } %t48)
  store i1 %t52, ptr %l25
  br label %bb8
bb8:
  %t53 = load i1, ptr %l25, !tbaa !21
  br i1 %t53, label %bb9, label %bb10
bb9:
  %t54 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyMutableGlobal, !tbaa !27
  %t56 = load %"compiler/source:Span", ptr %l3
  %t58 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t54, 0
  %t60 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t58, %"compiler/source:Span" %t56, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t60, ptr %l29
  %t61 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l29, i32 0, i32 0
  %t62 = load { i64, ptr }, ptr %t61, !tbaa !27
  store { i64, ptr } %t62, ptr %l30, !tbaa !27
  %t63 = load { i64, ptr }, ptr %l30, !tbaa !27
  %t64 = extractvalue { i64, ptr } %t63, 0
  store i64 %t64, ptr %l31, !tbaa !24
  %t65 = load i64, ptr %l31, !tbaa !24
  %t66 = mul i64 %t65, 1
  %t67 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t66)
  %t68 = insertvalue { i64, ptr } undef, i64 %t65, 0
  %t69 = insertvalue { i64, ptr } %t68, ptr %t67, 1
  store { i64, ptr } %t69, ptr %l32, !tbaa !27
  %t70 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t71 = load ptr, ptr %t70, !tbaa !27
  %t72 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t73 = load ptr, ptr %t72, !tbaa !27
  %t74 = load i64, ptr %l31, !tbaa !24
  %t75 = mul i64 %t74, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t71, ptr %t73, i64 %t75, i1 false)
  %t76 = load { i64, ptr }, ptr %l32, !tbaa !27
  %t77 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l29, i32 0, i32 0
  store { i64, ptr } %t76, ptr %t77, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t78 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l29
  store { { i64, ptr }, %"compiler/source:Span" } %t78, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb24
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %l2, i64 176, i1 false)
  %t79 = load { i64, [21 x i64] }, ptr %l33
  %t80 = extractvalue { i64, [21 x i64] } %t79, 0
  %t81 = icmp eq i64 %t80, 5
  br i1 %t81, label %bb13, label %bb14
bb13:
  %t83 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t84 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t83, i32 0, i32 0
  %t85 = load %"compiler/source:Span", ptr %t84
  store %"compiler/source:Span" %t85, ptr %l6
  %t87 = getelementptr { i64, [21 x i64] }, ptr %l2, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", { i64, [1 x i64] }, i32, { i64, [4 x i64] } }, ptr %t87, i32 0, i32 1
  %t89 = load { i64, [1 x i64] }, ptr %t88
  store { i64, [1 x i64] } %t89, ptr %l7
  br label %bb15
bb14:
  br label %bb19
bb15:
  %t91 = load { i64, [1 x i64] }, ptr %l7
  %t93 = extractvalue { i64, [1 x i64] } %t91, 0
  %t94 = icmp eq i64 %t93, 2
  %t96 = xor i1 %t94, true
  br i1 %t96, label %bb16, label %bb17
bb16:
  %t98 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyDestructor, !tbaa !27
  %t100 = load %"compiler/source:Span", ptr %l6
  %t102 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t98, 0
  %t104 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t102, %"compiler/source:Span" %t100, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t104, ptr %l43
  %t105 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l43, i32 0, i32 0
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l44, !tbaa !27
  %t107 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t108 = extractvalue { i64, ptr } %t107, 0
  store i64 %t108, ptr %l45, !tbaa !24
  %t109 = load i64, ptr %l45, !tbaa !24
  %t110 = mul i64 %t109, 1
  %t111 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t110)
  %t112 = insertvalue { i64, ptr } undef, i64 %t109, 0
  %t113 = insertvalue { i64, ptr } %t112, ptr %t111, 1
  store { i64, ptr } %t113, ptr %l46, !tbaa !27
  %t114 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t117 = load ptr, ptr %t116, !tbaa !27
  %t118 = load i64, ptr %l45, !tbaa !24
  %t119 = mul i64 %t118, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t115, ptr %t117, i64 %t119, i1 false)
  %t120 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t121 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l43, i32 0, i32 0
  store { i64, ptr } %t120, ptr %t121, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t122 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l43
  store { { i64, ptr }, %"compiler/source:Span" } %t122, ptr %rv
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
  call void @__olang_check_failed(ptr @olang_loc_14e567516c3eb5fb_1379a201658fd827)
  unreachable
bb24:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d37, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t123, ptr %l48, !tbaa !27
  %t124 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t124, ptr %l49
  br label %bb25
bb25:
  %t125 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t126 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t125, 0
  %t127 = load %"compiler/source:Span", ptr %l49
  %t128 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t126, %"compiler/source:Span" %t127, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t128, ptr %l50
  %t129 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l50, i32 0, i32 0
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l51, !tbaa !27
  %t131 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t132 = extractvalue { i64, ptr } %t131, 0
  store i64 %t132, ptr %l52, !tbaa !24
  %t133 = load i64, ptr %l52, !tbaa !24
  %t134 = mul i64 %t133, 1
  %t135 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t134)
  %t136 = insertvalue { i64, ptr } undef, i64 %t133, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t135, 1
  store { i64, ptr } %t137, ptr %l53, !tbaa !27
  %t138 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t139 = load ptr, ptr %t138, !tbaa !27
  %t140 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t141 = load ptr, ptr %t140, !tbaa !27
  %t142 = load i64, ptr %l52, !tbaa !24
  %t143 = mul i64 %t142, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t139, ptr %t141, i64 %t143, i1 false)
  %t144 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t145 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l50, i32 0, i32 0
  store { i64, ptr } %t144, ptr %t145, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t146 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l50
  store { { i64, ptr }, %"compiler/source:Span" } %t146, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyTerm(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, { i64, [8 x i64] } %a2, ptr %a3, ptr %a4) #0 {
entry:
  %l2 = alloca { i64, [8 x i64] }
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca %"compiler/source:Span"
  %l8 = alloca i32
  %l15 = alloca i1
  %l21 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l22 = alloca { i64, ptr }
  %l23 = alloca i64
  %l24 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l38 = alloca %"compiler/mir:Call"
  %l43 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l44 = alloca { i64, ptr }
  %l45 = alloca i64
  %l46 = alloca { i64, ptr }
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca %"compiler/source:Span"
  %l50 = alloca { { i64, ptr }, %"compiler/source:Span" }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca { { i64, ptr }, %"compiler/source:Span" }
  store { i64, [8 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, [8 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [8 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 9
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/source:Span", ptr %t7
  store %"compiler/source:Span" %t8, ptr %l5
  %t10 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t11 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t10, i32 0, i32 1
  %t12 = load i32, ptr %t11, !range !{i32 0, i32 20}
  store i32 %t12, ptr %l6
  br label %bb3
bb2:
  br label %bb10
bb3:
  %t14 = load i32, ptr %l6, !range !{i32 0, i32 20}
  %t16 = trunc i64 0 to i32
  %t17 = icmp eq i32 %t14, %t16
  br i1 %t17, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l15, !tbaa !21
  br label %bb6
bb5:
  %t19 = load i32, ptr %l6, !range !{i32 0, i32 20}
  %t21 = trunc i64 1 to i32
  %t22 = icmp eq i32 %t19, %t21
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l15, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyEnds, !tbaa !27
  %t27 = load %"compiler/source:Span", ptr %l5
  %t29 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t25, 0
  %t31 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t29, %"compiler/source:Span" %t27, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t31, ptr %l21
  %t32 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l21, i32 0, i32 0
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l22, !tbaa !27
  %t34 = load { i64, ptr }, ptr %l22, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t34, 0
  store i64 %t35, ptr %l23, !tbaa !24
  %t36 = load i64, ptr %l23, !tbaa !24
  %t37 = mul i64 %t36, 1
  %t38 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t37)
  %t39 = insertvalue { i64, ptr } undef, i64 %t36, 0
  %t40 = insertvalue { i64, ptr } %t39, ptr %t38, 1
  store { i64, ptr } %t40, ptr %l24, !tbaa !27
  %t41 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t42 = load ptr, ptr %t41, !tbaa !27
  %t43 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t44 = load ptr, ptr %t43, !tbaa !27
  %t45 = load i64, ptr %l23, !tbaa !24
  %t46 = mul i64 %t45, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t42, ptr %t44, i64 %t46, i1 false)
  %t47 = load { i64, ptr }, ptr %l24, !tbaa !27
  %t48 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l21, i32 0, i32 0
  store { i64, ptr } %t47, ptr %t48, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t49 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l21
  store { { i64, ptr }, %"compiler/source:Span" } %t49, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  br label %bb23
bb10:
  %t50 = load { i64, [8 x i64] }, ptr %l2
  %t52 = extractvalue { i64, [8 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 4
  br i1 %t53, label %bb11, label %bb12
bb11:
  %t55 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t56 = getelementptr { %"compiler/source:Span", i32 }, ptr %t55, i32 0, i32 0
  %t57 = load %"compiler/source:Span", ptr %t56
  store %"compiler/source:Span" %t57, ptr %l7
  %t59 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t60 = getelementptr { %"compiler/source:Span", i32 }, ptr %t59, i32 0, i32 1
  %t61 = load i32, ptr %t60
  store i32 %t61, ptr %l8, !tbaa !23
  br label %bb15
bb12:
  %t63 = load { i64, [8 x i64] }, ptr %l2
  %t65 = extractvalue { i64, [8 x i64] } %t63, 0
  %t66 = icmp eq i64 %t65, 6
  br i1 %t66, label %bb13, label %bb14
bb13:
  %t68 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t69 = getelementptr { %"compiler/source:Span", i32 }, ptr %t68, i32 0, i32 0
  %t70 = load %"compiler/source:Span", ptr %t69
  store %"compiler/source:Span" %t70, ptr %l7
  %t72 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", i32 }, ptr %t72, i32 0, i32 1
  %t74 = load i32, ptr %t73
  store i32 %t74, ptr %l8, !tbaa !23
  br label %bb15
bb14:
  br label %bb18
bb15:
  store ptr %a0, ptr %l33, !tbaa !29
  %t79 = getelementptr %"compiler/mir:Fn", ptr %a1, i32 0, i32 14
  %t80 = load i32, ptr %l8, !tbaa !23
  %t82 = sext i32 %t80 to i64
  %t85 = call %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v1, ptr %t79, i64 %t82)
  store %"compiler/mir:Call" %t85, ptr %l38
  br label %bb16
bb16:
  %t86 = getelementptr %"compiler/mir:Call", ptr %l38, i32 0, i32 0
  %t87 = load { i64, [7 x i64] }, ptr %t86
  %t88 = load %"compiler/source:Span", ptr %l7
  %t91 = load ptr, ptr %l33, !tbaa !29
  %t96 = call { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyCall(ptr %v0, ptr %v2, ptr %v3, ptr %v4, ptr %t91, { i64, [7 x i64] } %t87, %"compiler/source:Span" %t88, ptr %a3, ptr %a4)
  store { { i64, ptr }, %"compiler/source:Span" } %t96, ptr %l43
  br label %bb17
bb17:
  %t97 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l43, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97, !tbaa !27
  store { i64, ptr } %t98, ptr %l44, !tbaa !27
  %t99 = load { i64, ptr }, ptr %l44, !tbaa !27
  %t100 = extractvalue { i64, ptr } %t99, 0
  store i64 %t100, ptr %l45, !tbaa !24
  %t101 = load i64, ptr %l45, !tbaa !24
  %t102 = mul i64 %t101, 1
  %t103 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t102)
  %t104 = insertvalue { i64, ptr } undef, i64 %t101, 0
  %t105 = insertvalue { i64, ptr } %t104, ptr %t103, 1
  store { i64, ptr } %t105, ptr %l46, !tbaa !27
  %t106 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t107 = load ptr, ptr %t106, !tbaa !27
  %t108 = getelementptr { i64, ptr }, ptr %l44, i32 0, i32 1
  %t109 = load ptr, ptr %t108, !tbaa !27
  %t110 = load i64, ptr %l45, !tbaa !24
  %t111 = mul i64 %t110, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t107, ptr %t109, i64 %t111, i1 false)
  %t112 = load { i64, ptr }, ptr %l46, !tbaa !27
  %t113 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l43, i32 0, i32 0
  store { i64, ptr } %t112, ptr %t113, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t114 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l43
  store { { i64, ptr }, %"compiler/source:Span" } %t114, ptr %rv
  br label %ret
bb18:
  br i1 true, label %bb19, label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb23
bb22:
  call void @__olang_check_failed(ptr @olang_loc_86c25f3ef178583f_f0c157887637479b)
  unreachable
bb23:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d38, i32 0, i32 1) }, ptr %l47, !tbaa !27
  %t115 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t115, ptr %l48, !tbaa !27
  %t116 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %s0, i32 0, i32 0)
  store %"compiler/source:Span" %t116, ptr %l49
  br label %bb24
bb24:
  %t117 = load { i64, ptr }, ptr %l48, !tbaa !27
  %t118 = insertvalue { { i64, ptr }, %"compiler/source:Span" } undef, { i64, ptr } %t117, 0
  %t119 = load %"compiler/source:Span", ptr %l49
  %t120 = insertvalue { { i64, ptr }, %"compiler/source:Span" } %t118, %"compiler/source:Span" %t119, 1
  store { { i64, ptr }, %"compiler/source:Span" } %t120, ptr %l50
  %t121 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l50, i32 0, i32 0
  %t122 = load { i64, ptr }, ptr %t121, !tbaa !27
  store { i64, ptr } %t122, ptr %l51, !tbaa !27
  %t123 = load { i64, ptr }, ptr %l51, !tbaa !27
  %t124 = extractvalue { i64, ptr } %t123, 0
  store i64 %t124, ptr %l52, !tbaa !24
  %t125 = load i64, ptr %l52, !tbaa !24
  %t126 = mul i64 %t125, 1
  %t127 = call ptr @__olang_scope_alloc(ptr %v4, i64 %t126)
  %t128 = insertvalue { i64, ptr } undef, i64 %t125, 0
  %t129 = insertvalue { i64, ptr } %t128, ptr %t127, 1
  store { i64, ptr } %t129, ptr %l53, !tbaa !27
  %t130 = getelementptr { i64, ptr }, ptr %l53, i32 0, i32 1
  %t131 = load ptr, ptr %t130, !tbaa !27
  %t132 = getelementptr { i64, ptr }, ptr %l51, i32 0, i32 1
  %t133 = load ptr, ptr %t132, !tbaa !27
  %t134 = load i64, ptr %l52, !tbaa !24
  %t135 = mul i64 %t134, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t131, ptr %t133, i64 %t135, i1 false)
  %t136 = load { i64, ptr }, ptr %l53, !tbaa !27
  %t137 = getelementptr { { i64, ptr }, %"compiler/source:Span" }, ptr %l50, i32 0, i32 0
  store { i64, ptr } %t136, ptr %t137, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t138 = load { { i64, ptr }, %"compiler/source:Span" }, ptr %l50
  store { { i64, ptr }, %"compiler/source:Span" } %t138, ptr %rv
  br label %ret
ret:
  %rr = load { { i64, ptr }, %"compiler/source:Span" }, ptr %rv
  ret { { i64, ptr }, %"compiler/source:Span" } %rr
}

define dso_local { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i32
  %l13 = alloca i64
  %l23 = alloca { i64, i64 }
  %l24 = alloca ptr
  %l28 = alloca %"compiler/eval:Ptr"
  %l30 = alloca { i64, i64 }
  %l31 = alloca ptr
  %l35 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i64
  %l46 = alloca i64
  %l49 = alloca i64
  %l52 = alloca i64
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l2
  %t7 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3)
  store i32 %t7, ptr %l10
  br label %bb1
bb1:
  %t8 = load i32, ptr %l10, !tbaa !23
  store i32 %t8, ptr %l3, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i32, ptr %l3, !tbaa !23
  %t13 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t9, i32 %t10)
  store i64 %t13, ptr %l13
  br label %bb2
bb2:
  %t14 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t15 = load i64, ptr %l13, !tbaa !24
  %t17 = icmp eq i64 %t15, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load { i64, [4 x i64] }, ptr %l2
  %t21 = extractvalue { i64, [4 x i64] } %t19, 0
  %t22 = icmp eq i64 %t21, 2
  br i1 %t22, label %bb5, label %bb6
bb4:
  br label %bb16
bb5:
  %t24 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t25 = getelementptr { i32, i64 }, ptr %t24, i32 0, i32 0
  %t26 = load i32, ptr %t25
  store i32 %t26, ptr %l4, !tbaa !23
  %t28 = getelementptr { i64, [4 x i64] }, ptr %l2, i32 0, i32 1
  %t29 = getelementptr { i32, i64 }, ptr %t28, i32 0, i32 1
  %t30 = load i64, ptr %t29
  store i64 %t30, ptr %l5, !tbaa !24
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t34 = load i64, ptr %l5, !tbaa !24
  %t38 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %t32, i32 %t33, i64 %t34)
  store { i64, i64 } %t38, ptr %l23
  br label %bb8
bb8:
  %t39 = load { i64, i64 }, ptr %l23
  store { i64, i64 } %t39, ptr %rv
  br label %ret
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  store ptr %t40, ptr %l24, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l1, !tbaa !24
  %t43 = load { i64, [4 x i64] }, ptr %l2
  %t47 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t41, i64 %t42, { i64, [4 x i64] } %t43, i64 1)
  store %"compiler/eval:Ptr" %t47, ptr %l28
  br label %bb13
bb13:
  %t48 = load i32, ptr %l3, !tbaa !23
  %t49 = load ptr, ptr %l24, !tbaa !29
  %t50 = load %"compiler/eval:Ptr", ptr %l28
  %t52 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2erdWide(ptr %v0, ptr %t49, %"compiler/eval:Ptr" %t50, i32 %t48)
  store { i64, i64 } %t52, ptr %l30
  br label %bb14
bb14:
  %t53 = load { i64, i64 }, ptr %l30
  store { i64, i64 } %t53, ptr %rv
  br label %ret
bb15:
  call void @__olang_check_failed(ptr @olang_loc_2742cef73dca1807_235d65ef4c242d83)
  unreachable
bb16:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l31, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load { i64, [4 x i64] }, ptr %l2
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t55, i64 %t56, { i64, [4 x i64] } %t57)
  store i64 %t61, ptr %l35
  br label %bb17
bb17:
  %t62 = load i32, ptr %l3, !tbaa !23
  %t63 = load ptr, ptr %l31, !tbaa !29
  %t64 = load i64, ptr %l35, !tbaa !24
  %t66 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t63, i64 %t64, i32 %t62)
  store i64 %t66, ptr %l37
  br label %bb18
bb18:
  %t67 = load i64, ptr %l37, !tbaa !24
  store i64 %t67, ptr %l6, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i32, ptr %l3, !tbaa !23
  %t72 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t68, i32 %t69)
  store i64 %t72, ptr %l40
  br label %bb19
bb19:
  %t73 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t74 = load i64, ptr %l40, !tbaa !24
  %t76 = icmp eq i64 %t74, %t73
  br i1 %t76, label %bb20, label %bb21
bb20:
  %t78 = load i64, ptr %l6, !tbaa !24
  %t80 = and i64 %t78, 1
  %t82 = insertvalue { i64, i64 } undef, i64 %t80, 0
  %t83 = insertvalue { i64, i64 } %t82, i64 0, 1
  store { i64, i64 } %t83, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  %t85 = load i64, ptr %l6, !tbaa !24
  store i64 %t85, ptr %l46, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load i32, ptr %l3, !tbaa !23
  %t90 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t86, i32 %t87)
  store i64 %t90, ptr %l49
  br label %bb23
bb23:
  %t91 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t92 = load i64, ptr %l49, !tbaa !24
  %t94 = icmp eq i64 %t92, %t91
  br i1 %t94, label %bb24, label %bb25
bb24:
  store i64 0, ptr %l52, !tbaa !24
  br label %bb26
bb25:
  %t96 = load i64, ptr %l6, !tbaa !24
  %t98 = ashr i64 %t96, 63
  store i64 %t98, ptr %l52, !tbaa !24
  br label %bb26
bb26:
  %t100 = load i64, ptr %l46, !tbaa !24
  %t101 = insertvalue { i64, i64 } undef, i64 %t100, 0
  %t102 = load i64, ptr %l52, !tbaa !24
  %t103 = insertvalue { i64, i64 } %t101, i64 %t102, 1
  store { i64, i64 } %t103, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideToFloat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i1 %a3, i32 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l4 = alloca i32
  %l5 = alloca i1
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l10 = alloca { i64, i64 }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca { i64, i64 }
  %l14 = alloca double
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l22 = alloca i1
  %l30 = alloca { i64, i64 }
  %l37 = alloca i64
  %l43 = alloca { i64, i64 }
  %l49 = alloca { i64, i64 }
  %l54 = alloca i1
  %l59 = alloca ptr
  %l63 = alloca i64
  %l65 = alloca double
  %l70 = alloca i64
  %l73 = alloca i64
  %l101 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a3, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  store i1 %t5, ptr %l22, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l22, !tbaa !21
  br label %bb3
bb3:
  %t7 = load i1, ptr %l22, !tbaa !21
  store i1 %t7, ptr %l5, !tbaa !21
  %t8 = load i64, ptr %l1, !tbaa !24
  store i64 %t8, ptr %l6, !tbaa !24
  %t10 = load i64, ptr %l2, !tbaa !24
  store i64 %t10, ptr %l7, !tbaa !24
  %t12 = load i1, ptr %l5, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l1, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  %t18 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t14, i64 %t15)
  store { i64, i64 } %t18, ptr %l30
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t19 = load { i64, i64 }, ptr %l30
  store { i64, i64 } %t19, ptr %l8
  %t20 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l6, !tbaa !24
  %t23 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  store i64 0, ptr %l9, !tbaa !24
  %t26 = load i64, ptr %l7, !tbaa !24
  %t28 = icmp ne i64 %t26, 0
  br i1 %t28, label %bb8, label %bb9
bb8:
  %t30 = load i64, ptr %l6, !tbaa !24
  %t31 = load i64, ptr %l7, !tbaa !24
  %t34 = call i64 @compiler_2feval_2elz128(i64 %t30, i64 %t31, i64 128)
  store i64 %t34, ptr %l37
  br label %bb10
bb9:
  br label %bb19
bb10:
  %t35 = load i64, ptr %l37, !tbaa !24
  %t36 = sub i64 128, %t35
  %t38 = sub i64 %t36, 63
  store i64 %t38, ptr %l9, !tbaa !24
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t42 = load i64, ptr %l9, !tbaa !24
  %t46 = call { i64, i64 } @compiler_2feval_2eextend128(i64 %t40, i64 %t41, i64 %t42, i1 false)
  store { i64, i64 } %t46, ptr %l43
  br label %bb11
bb11:
  %t47 = load { i64, i64 }, ptr %l43
  store { i64, i64 } %t47, ptr %l10
  %t48 = getelementptr { i64, i64 }, ptr %l10, i32 0, i32 0
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l11, !tbaa !24
  %t51 = getelementptr { i64, i64 }, ptr %l10, i32 0, i32 1
  %t52 = load i64, ptr %t51, !tbaa !24
  store i64 %t52, ptr %l12, !tbaa !24
  %t54 = load i64, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l7, !tbaa !24
  %t56 = load i64, ptr %l9, !tbaa !24
  %t60 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t54, i64 %t55, i64 %t56, i1 false)
  store { i64, i64 } %t60, ptr %l49
  br label %bb12
bb12:
  %t61 = load { i64, i64 }, ptr %l49
  store { i64, i64 } %t61, ptr %l13
  %t62 = getelementptr { i64, i64 }, ptr %l13, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  %t65 = getelementptr { i64, i64 }, ptr %l13, i32 0, i32 1
  %t66 = load i64, ptr %t65, !tbaa !24
  store i64 %t66, ptr %l7, !tbaa !24
  %t68 = load i64, ptr %l11, !tbaa !24
  %t70 = icmp ne i64 %t68, 0
  br i1 %t70, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb15
bb14:
  %t72 = load i64, ptr %l12, !tbaa !24
  %t74 = icmp ne i64 %t72, 0
  store i1 %t74, ptr %l54, !tbaa !21
  br label %bb15
bb15:
  %t76 = load i1, ptr %l54, !tbaa !21
  br i1 %t76, label %bb16, label %bb17
bb16:
  %t77 = load i64, ptr %l6, !tbaa !24
  %t79 = or i64 %t77, 1
  store i64 %t79, ptr %l6, !tbaa !24
  br label %bb18
bb17:
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t81 = load ptr, ptr %l0, !tbaa !29
  store ptr %t81, ptr %l59, !tbaa !29
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i32, ptr %l4, !tbaa !23
  %t88 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintToFloat(ptr %v0, ptr %t82, i64 %t83, i1 true, i32 %t84)
  store i64 %t88, ptr %l63
  br label %bb20
bb20:
  %t89 = load i32, ptr %l4, !tbaa !23
  %t90 = load ptr, ptr %l59, !tbaa !29
  %t91 = load i64, ptr %l63, !tbaa !24
  %t93 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t90, i64 %t91, i32 %t89)
  store double %t93, ptr %l65
  br label %bb21
bb21:
  %t94 = load double, ptr %l65, !tbaa !26
  store double %t94, ptr %l14, !tbaa !26
  store i64 0, ptr %l15, !tbaa !24
  %t95 = load i64, ptr %l9, !tbaa !24
  store i64 %t95, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t97 = load i64, ptr %l16, !tbaa !24
  %t98 = load i64, ptr %l15, !tbaa !24
  %t101 = icmp sgt i64 %t97, %t98
  br i1 %t101, label %bb22, label %bb23
bb22:
  %t103 = load i64, ptr %l17, !tbaa !24
  %t105 = icmp sgt i64 %t103, 0
  br i1 %t105, label %bb24, label %bb25
bb23:
  store i64 0, ptr %l70, !tbaa !24
  br label %bb27
bb24:
  %t107 = load i64, ptr %l16, !tbaa !24
  %t108 = load i64, ptr %l15, !tbaa !24
  %t111 = sub i64 %t107, %t108
  %t112 = load i64, ptr %l17, !tbaa !24
  %t115 = add i64 %t111, %t112
  %t117 = sub i64 %t115, 1
  %t118 = load i64, ptr %l17, !tbaa !24
  %t121 = sdiv i64 %t117, %t118
  store i64 %t121, ptr %l73, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb26
bb26:
  %t123 = load i64, ptr %l73, !tbaa !24
  store i64 %t123, ptr %l70, !tbaa !24
  br label %bb27
bb27:
  %t124 = load i64, ptr %l70, !tbaa !24
  store i64 %t124, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb28
bb28:
  %t125 = load i64, ptr %l19, !tbaa !24
  %t126 = load i64, ptr %l18, !tbaa !24
  %t129 = icmp slt i64 %t125, %t126
  %t131 = xor i1 %t129, true
  br i1 %t131, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  br label %bb31
bb31:
  %t133 = load i64, ptr %l15, !tbaa !24
  %t134 = load i64, ptr %l19, !tbaa !24
  %t135 = load i64, ptr %l17, !tbaa !24
  %t138 = mul i64 %t134, %t135
  %t141 = add i64 %t133, %t138
  store i64 %t141, ptr %l20, !tbaa !24
  %t143 = load double, ptr %l14, !tbaa !26
  %t145 = fmul double %t143, 0x4000000000000000
  store double %t145, ptr %l14, !tbaa !26
  br label %bb32
bb32:
  %t147 = load i64, ptr %l19, !tbaa !24
  %t149 = add i64 %t147, 1
  store i64 %t149, ptr %l19, !tbaa !24
  br label %bb28
bb33:
  %t151 = load i1, ptr %l5, !tbaa !21
  br i1 %t151, label %bb34, label %bb35
bb34:
  %t153 = load double, ptr %l14, !tbaa !26
  %t155 = fneg double %t153
  store double %t155, ptr %l14, !tbaa !26
  br label %bb36
bb35:
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load double, ptr %l14, !tbaa !26
  %t159 = load i32, ptr %l4, !tbaa !23
  %t163 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %t157, double %t158, i32 %t159)
  store i64 %t163, ptr %l101
  br label %bb37
bb37:
  %t164 = load i64, ptr %l101, !tbaa !24
  store i64 %t164, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l23 = alloca i64
  %l26 = alloca i1
  %l28 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 29
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 29
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  store { i64, ptr } %t19, ptr %l13, !tbaa !27
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l13, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 %t20
  %t25 = load i64, ptr %t24, !tbaa !34
  %t27 = icmp sge i64 %t25, 0
  store i1 %t27, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t29 = load i1, ptr %l11, !tbaa !21
  br i1 %t29, label %bb4, label %bb5
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 29
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l18, !tbaa !27
  %t34 = load i64, ptr %l2, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr i64, ptr %t37, i64 %t34
  %t39 = load i64, ptr %t38, !tbaa !34
  store i64 %t39, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i32, ptr %l1, !tbaa !23
  %t45 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidthOf(ptr %v0, ptr %t41, i32 %t42)
  store i64 %t45, ptr %l23
  br label %bb7
bb7:
  %t46 = load i64, ptr %l23, !tbaa !24
  store i64 %t46, ptr %l3, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i32, ptr %l1, !tbaa !23
  %t51 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %t47, i32 %t48)
  store i1 %t51, ptr %l26
  br label %bb8
bb8:
  %t52 = load i1, ptr %l26, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 29
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l28, !tbaa !27
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i64, ptr %t62, i64 %t57
  store i64 %t58, ptr %t63, !tbaa !34
  br label %bb11
bb10:
  br label %bb11
bb11:
  %t64 = load i64, ptr %l3, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrWide(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l5 = alloca i64
  %l8 = alloca i64
  %l12 = alloca ptr
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i64
  %l20 = alloca i64
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l8
  br label %bb1
bb1:
  %t6 = load i64, ptr %l8, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load %"compiler/eval:Ptr", ptr %l1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t7, %"compiler/eval:Ptr" %t8, i64 8, i64 %a3)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  store ptr %t13, ptr %l12, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t15 = load i64, ptr %t14, !tbaa !24
  %t16 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t17 = load i64, ptr %t16, !tbaa !24
  %t19 = add i64 %t17, 8
  %t22 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t15, i64 %t19)
  store %"compiler/eval:Ptr" %t22, ptr %l16
  br label %bb3
bb3:
  store i64 %a4, ptr %l17, !tbaa !24
  %t24 = load i64, ptr %l5, !tbaa !24
  %t26 = sub i64 %t24, 64
  %t28 = call i64 @compiler_2feval_2ebmask(i64 %t26)
  store i64 %t28, ptr %l20
  br label %bb4
bb4:
  %t29 = load i64, ptr %l17, !tbaa !24
  %t30 = load i64, ptr %l20, !tbaa !24
  %t31 = and i64 %t29, %t30
  %t32 = load ptr, ptr %l12, !tbaa !29
  %t33 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t32, %"compiler/eval:Ptr" %t33, i64 8, i64 %t31)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteItem(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [1 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l16 = alloca ptr
  %l17 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i64
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca %"compiler/eval:Ptr"
  %l30 = alloca i32
  %l35 = alloca i64
  %l38 = alloca i32
  %l39 = alloca ptr
  %l40 = alloca i64
  %l43 = alloca i64
  %l48 = alloca %"compiler/eval:Ptr"
  %l58 = alloca { i64, ptr }
  %l68 = alloca ptr
  %l69 = alloca i64
  %l70 = alloca i64
  %l74 = alloca i64
  %l76 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load { i64, [1 x i64] }, ptr %l4
  %t9 = extractvalue { i64, [1 x i64] } %t7, 0
  %t10 = icmp eq i64 %t9, 0
  br i1 %t10, label %bb2, label %bb3
bb2:
  %t12 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t13 = getelementptr { i64 }, ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13
  store i64 %t14, ptr %l6, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l16, !tbaa !29
  %t17 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t17, ptr %l17
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l20
  br label %bb4
bb3:
  br label %bb6
bb4:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = load %"compiler/eval:Ptr", ptr %l17
  %t26 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t24, %"compiler/eval:Ptr" %t25, i64 %t26, i64 %t23)
  br label %bb5
bb5:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb6:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t29 = load i64, ptr @G_2ecompiler_2feval_2evFixed, !tbaa !24
  %t32 = icmp eq i64 %t28, %t29
  br i1 %t32, label %bb7, label %bb8
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l25, !tbaa !29
  %t35 = load ptr, ptr %l1, !tbaa !29
  store ptr %t35, ptr %l26, !tbaa !29
  %t36 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t36, ptr %l27
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l3, !tbaa !23
  %t41 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l30
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t42 = load { i64, [1 x i64] }, ptr %l4
  %t43 = load ptr, ptr %l25, !tbaa !29
  %t44 = load ptr, ptr %l26, !tbaa !29
  %t45 = load %"compiler/eval:Ptr", ptr %l27
  %t46 = load i32, ptr %l30, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteElems(ptr %v0, ptr %v1, ptr %t43, ptr %t44, %"compiler/eval:Ptr" %t45, i32 %t46, { i64, [1 x i64] } %t42)
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
bb11:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t50 = load { i64, [1 x i64] }, ptr %l4
  %t54 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econstLen(ptr %v0, ptr %v1, ptr %t48, ptr %t49, { i64, [1 x i64] } %t50)
  store i64 %t54, ptr %l35
  br label %bb12
bb12:
  %t55 = load i64, ptr %l35, !tbaa !24
  store i64 %t55, ptr %l7, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i32, ptr %l3, !tbaa !23
  %t60 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l38
  br label %bb13
bb13:
  %t61 = load i32, ptr %l38, !tbaa !23
  store i32 %t61, ptr %l8, !tbaa !23
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l39, !tbaa !29
  %t63 = load i64, ptr %l7, !tbaa !24
  store i64 %t63, ptr %l40, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i32, ptr %l8, !tbaa !23
  %t68 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t64, i32 %t65)
  store i64 %t68, ptr %l43
  br label %bb14
bb14:
  %t69 = load i64, ptr %l40, !tbaa !24
  %t70 = load i64, ptr %l43, !tbaa !24
  %t71 = mul i64 %t69, %t70
  %t72 = load i64, ptr @G_2ecompiler_2feval_2eaData, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 70
  %t76 = load i64, ptr %t75, !tbaa !24
  %t77 = load ptr, ptr %l39, !tbaa !29
  %t81 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t77, i64 %t71, i64 %t72, i64 %t76)
  store %"compiler/eval:Ptr" %t81, ptr %l48
  br label %bb15
bb15:
  %t82 = load %"compiler/eval:Ptr", ptr %l48
  store %"compiler/eval:Ptr" %t82, ptr %l9
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t83, i32 0, i32 22
  %t86 = load i1, ptr %t85, !tbaa !21
  br i1 %t86, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i32 65536, ptr %rv
  br label %ret
bb17:
  br label %bb18
bb18:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load ptr, ptr %l1, !tbaa !29
  %t91 = load %"compiler/eval:Ptr", ptr %l9
  %t92 = load i32, ptr %l8, !tbaa !23
  %t93 = load { i64, [1 x i64] }, ptr %l4
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteElems(ptr %v0, ptr %v1, ptr %t89, ptr %t90, %"compiler/eval:Ptr" %t91, i32 %t92, { i64, [1 x i64] } %t93)
  br label %bb19
bb19:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 49
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l58, !tbaa !27
  %t103 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 0
  %t104 = load i64, ptr %t103, !tbaa !24
  %t105 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t108 = and i64 %t104, %t105
  %t110 = getelementptr { i64, ptr }, ptr %l58, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr %"compiler/eval:alloc", ptr %t111, i64 %t108
  %t113 = getelementptr %"compiler/eval:alloc", ptr %t112, i32 0, i32 13
  store i1 true, ptr %t113, !tbaa !21
  %t114 = load i64, ptr %l5, !tbaa !24
  %t115 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t118 = icmp eq i64 %t114, %t115
  br i1 %t118, label %bb20, label %bb21
bb20:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load %"compiler/eval:Ptr", ptr %l2
  %t122 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t120, %"compiler/eval:Ptr" %t121, i64 8, i64 %t122)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t126 = load ptr, ptr %l0, !tbaa !29
  store ptr %t126, ptr %l68, !tbaa !29
  %t127 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t128 = load i64, ptr %t127, !tbaa !24
  store i64 %t128, ptr %l69, !tbaa !24
  %t129 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t130 = load i64, ptr %t129, !tbaa !24
  store i64 %t130, ptr %l70, !tbaa !24
  %t131 = load i64, ptr %l5, !tbaa !24
  %t132 = load i64, ptr @G_2ecompiler_2feval_2evPair, !tbaa !24
  %t135 = icmp eq i64 %t131, %t132
  br i1 %t135, label %bb24, label %bb25
bb24:
  store i64 8, ptr %l74, !tbaa !24
  br label %bb26
bb25:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb26
bb26:
  %t137 = load i64, ptr %l70, !tbaa !24
  %t138 = load i64, ptr %l74, !tbaa !24
  %t139 = add i64 %t137, %t138
  %t140 = load i64, ptr %l69, !tbaa !24
  %t142 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t140, i64 %t139)
  store %"compiler/eval:Ptr" %t142, ptr %l76
  br label %bb27
bb27:
  %t143 = load %"compiler/eval:Ptr", ptr %l9
  %t144 = load ptr, ptr %l68, !tbaa !29
  %t145 = load %"compiler/eval:Ptr", ptr %l76
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t144, %"compiler/eval:Ptr" %t145, %"compiler/eval:Ptr" %t143)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  store i32 0, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l10 = alloca i64
  %l19 = alloca i1
  %l38 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp sle i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = load i64, ptr %l2, !tbaa !24
  %t11 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t5, %"compiler/eval:Ptr" %a1, i64 %t7, i1 true)
  store i64 %t11, ptr %l10
  br label %bb4
bb4:
  %t12 = load i64, ptr %l10, !tbaa !24
  store i64 %t12, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = icmp slt i64 %t13, 0
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %ret
bb6:
  br label %bb7
bb7:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l3, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %t17, i64 %t18, i64 %t19)
  br label %bb8
bb8:
  store i64 0, ptr %l4, !tbaa !24
  br label %bb9
bb9:
  %t23 = load i64, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = icmp slt i64 %t23, %t24
  br i1 %t27, label %bb10, label %bb11
bb10:
  %t29 = load i64, ptr %l3, !tbaa !24
  %t30 = load i64, ptr %l4, !tbaa !24
  %t33 = add i64 %t29, %t30
  %t35 = srem i64 %t33, 8
  %t37 = icmp ne i64 %t35, 0
  store i1 %t37, ptr %l19, !tbaa !21
  br label %bb12
bb11:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb12
bb12:
  %t39 = load i1, ptr %l19, !tbaa !21
  %t40 = xor i1 %t39, true
  br i1 %t40, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = add i64 %t43, %t44
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t42, i64 %t47, i64 1, i64 0)
  br label %bb16
bb16:
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = add i64 %t50, 1
  store i64 %t52, ptr %l4, !tbaa !24
  br label %bb17
bb17:
  br label %bb9
bb18:
  br label %bb19
bb19:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = add i64 %t54, 8
  %t57 = load i64, ptr %l2, !tbaa !24
  %t60 = icmp sle i64 %t56, %t57
  %t62 = xor i1 %t60, true
  br i1 %t62, label %bb20, label %bb21
bb20:
  br label %bb24
bb21:
  br label %bb22
bb22:
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 45
  %t67 = load { i64, ptr }, ptr %t66, !tbaa !27
  store { i64, ptr } %t67, ptr %l38, !tbaa !27
  %t68 = load i64, ptr %l3, !tbaa !24
  %t69 = load i64, ptr %l4, !tbaa !24
  %t72 = add i64 %t68, %t69
  %t74 = sdiv i64 %t72, 8
  %t76 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i64, ptr %t77, i64 %t74
  store i64 0, ptr %t78, !tbaa !34
  %t79 = load i64, ptr %l4, !tbaa !24
  %t81 = add i64 %t79, 8
  store i64 %t81, ptr %l4, !tbaa !24
  br label %bb23
bb23:
  br label %bb19
bb24:
  %t83 = load i64, ptr %l4, !tbaa !24
  %t84 = load i64, ptr %l2, !tbaa !24
  %t87 = icmp slt i64 %t83, %t84
  br i1 %t87, label %bb25, label %bb26
bb25:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l3, !tbaa !24
  %t91 = load i64, ptr %l4, !tbaa !24
  %t94 = add i64 %t90, %t91
  %t95 = load i64, ptr %l2, !tbaa !24
  %t96 = load i64, ptr %l4, !tbaa !24
  %t99 = sub i64 %t95, %t96
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t89, i64 %t94, i64 %t99, i64 0)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aSnapshot_2eClear(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Snapshot", ptr %t1, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t3)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Snapshot", ptr %t5, i32 0, i32 1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t7)
  br label %bb2
bb2:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Snapshot", ptr %t9, i32 0, i32 2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %v0, ptr %t11)
  br label %bb3
bb3:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Snapshot", ptr %t13, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t15)
  br label %bb4
bb4:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Snapshot", ptr %t17, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t19)
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Snapshot", ptr %t21, i32 0, i32 5
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t23)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aSnapshot_2edrop(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %lp3 = alloca ptr
  %l4 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l5 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l12 = alloca i64
  %l14 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9"
  %l18 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l20 = alloca %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0"
  %l21 = alloca i32
  %l23 = alloca i1
  %l30 = alloca ptr
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Snapshot", ptr %t1, i32 0, i32 1
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t3, i64 %t4)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Snapshot", ptr %t7, i32 0, i32 0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t9, i64 %a2)
  br label %bb2
bb2:
  %t13 = ptrtoint ptr %v0 to i64
  store i64 %t13, ptr %l12, !tbaa !24
  %t14 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e5
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = call ptr @__olang_region_make(ptr %v0)
  %t17 = ptrtoint ptr %t16 to i64
  store i64 %t17, ptr %l12, !tbaa !24
  br label %bb4
bb4:
  %t18 = load i64, ptr %l12
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t19)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t20, ptr %l14
  br label %bb5
bb5:
  %t21 = load i64, ptr %l12
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = call ptr @__olang_scope_alloc_a(ptr %t22, i64 72, i64 8)
  store ptr %t23, ptr %lp3
  %t24 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l14
  %t25 = load ptr, ptr %lp3
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t24, ptr %t25
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Snapshot", ptr %t26, i32 0, i32 5
  %t30 = call %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v0, ptr %t28)
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t30, ptr %l17
  br label %bb6
bb6:
  %t31 = load %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9", ptr %l17
  store %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" %t31, ptr %l4
  br label %bb7
bb7:
  %t33 = call { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %l4)
  %t34 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t33, 1
  %t35 = extractvalue { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } %t33, 0
  store i32 %t35, ptr %l21
  %t36 = icmp ne i32 %t35, 0
  br i1 %t36, label %bb9, label %ok.37, !prof !99
ok.37:
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t34, ptr %l20
  br label %bb8
bb8:
  %t38 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l20
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t38, ptr %l18
  br label %bb11
bb9:
  %t39 = load i32, ptr %l21, !tbaa !23
  %t40 = ashr i32 %t39, 16
  %t42 = icmp eq i32 %t40, 1
  store i1 %t42, ptr %l23, !tbaa !21
  br label %bb10
bb10:
  br label %bb17
bb11:
  %t43 = load %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l18
  store %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" %t43, ptr %l5
  %t44 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l5, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  %t46 = load i64, ptr %l1, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  br i1 %t49, label %bb12, label %bb13
bb12:
  %t51 = load ptr, ptr %lp3
  %t52 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l5, i32 0, i32 0
  %t53 = load i64, ptr %t52, !tbaa !24
  %t54 = getelementptr %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0", ptr %l5, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  %t56 = load i64, ptr %l12
  %t57 = inttoptr i64 %t56 to ptr
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %t57, ptr %t51, i64 %t53, i64 %t55)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  br label %bb7
bb17:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l30, !tbaa !29
  %t62 = load ptr, ptr %lp3
  %t63 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t62
  %t64 = load ptr, ptr %l30, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Snapshot", ptr %t64, i32 0, i32 5
  %t66 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t65
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t66, ptr %l32
  %t68 = load ptr, ptr %l30, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Snapshot", ptr %t68, i32 0, i32 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t63, ptr %t69
  %t70 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e5
  br i1 %t70, label %bb18, label %bb19
bb18:
  %t72 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32, i32 0, i32 2
  %t73 = load { i64, ptr }, ptr %t72
  %t74 = extractvalue { i64, ptr } %t73, 1
  %t75 = call ptr @__olang_region_or(ptr %t74, ptr null)
  %t76 = call ptr @__olang_region_home(ptr %t75)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32, i32 0, i32 1
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = call ptr @__olang_region_home(ptr %t82)
  %t84 = icmp ne ptr %t83, null
  %t85 = select i1 %t84, ptr %t83, ptr %t78
  %t86 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32, i32 0, i32 0
  %t87 = load { i64, ptr }, ptr %t86
  %t88 = extractvalue { i64, ptr } %t87, 1
  %t89 = call ptr @__olang_region_or(ptr %t88, ptr null)
  %t90 = call ptr @__olang_region_home(ptr %t89)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr %t85
  call void @__olang_region_drop(ptr %t92)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" zeroinitializer, ptr %l32
  br label %bb19
bb19:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecountBits128(i1 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l46 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 %a3, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t3 = load i64, ptr %l6, !tbaa !24
  %t4 = load i64, ptr %l5, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l7, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l6, !tbaa !24
  %t14 = load i64, ptr %l5, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l7, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l7, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l19, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l19, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l16, !tbaa !24
  store i64 %t30, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l9, !tbaa !24
  %t32 = load i64, ptr %l8, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  br label %bb21
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t40 = load i64, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l7, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l10, !tbaa !24
  %t49 = load i64, ptr %l10, !tbaa !24
  %t51 = icmp sge i64 %t49, 64
  br i1 %t51, label %bb11, label %bb12
bb11:
  %t54 = load i64, ptr %l10, !tbaa !24
  %t56 = sub i64 %t54, 64
  store i64 %t56, ptr %l42, !tbaa !24
  %t58 = load i64, ptr %l42, !tbaa !24
  %t59 = load i64, ptr %l42, !tbaa !24
  %t60 = ashr i64 %a2, %t59
  %t62 = and i64 %t60, 1
  store i64 %t62, ptr %l39, !tbaa !24
  br label %bb13
bb12:
  %t65 = load i64, ptr %l10, !tbaa !24
  store i64 %t65, ptr %l46, !tbaa !24
  %t67 = load i64, ptr %l46, !tbaa !24
  %t68 = load i64, ptr %l46, !tbaa !24
  %t69 = ashr i64 %a1, %t68
  %t71 = and i64 %t69, 1
  store i64 %t71, ptr %l39, !tbaa !24
  br label %bb13
bb13:
  %t73 = load i64, ptr %l39, !tbaa !24
  store i64 %t73, ptr %l11, !tbaa !24
  br i1 %a0, label %bb14, label %bb15
bb14:
  %t76 = load i64, ptr %l4, !tbaa !24
  %t77 = load i64, ptr %l11, !tbaa !24
  %t80 = add i64 %t76, %t77
  store i64 %t80, ptr %l4, !tbaa !24
  br label %bb19
bb15:
  %t82 = load i64, ptr %l11, !tbaa !24
  %t84 = icmp eq i64 %t82, 1
  br i1 %t84, label %bb16, label %bb17
bb16:
  br label %bb21
bb17:
  %t86 = load i64, ptr %l4, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l4, !tbaa !24
  br label %bb18
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t90 = load i64, ptr %l9, !tbaa !24
  %t92 = add i64 %t90, 1
  store i64 %t92, ptr %l9, !tbaa !24
  br label %bb7
bb21:
  %t94 = load i64, ptr %l4, !tbaa !24
  store i64 %t94, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2efailFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca i32
  %lp5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l10 = alloca i32
  %l11 = alloca ptr
  %l12 = alloca i64
  %l13 = alloca ptr
  %l16 = alloca i32
  %l19 = alloca i32
  %l20 = alloca %"compiler/mir:Fn"
  %l24 = alloca i32
  %l26 = alloca i32
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca i32
  %l32 = alloca i64
  %l33 = alloca i32
  %l34 = alloca i32
  %l35 = alloca { i64, [4 x i64] }
  %l38 = alloca ptr
  %l39 = alloca i32
  %l41 = alloca %"compiler/mir:Lvalue"
  %l50 = alloca { i64, [21 x i64] }
  %l63 = alloca { i64, [21 x i64] }
  %l65 = alloca ptr
  %l66 = alloca i32
  %l67 = alloca %"compiler/source:Span"
  %l68 = alloca { i64, [4 x i64] }
  %l70 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t20 = alloca %"compiler/mir:Fn", align 8
  %t50 = alloca { i64, [4 x i64] }, align 8
  %t69 = alloca { i64, [4 x i64] }, align 8
  %t77 = alloca { i64, [8 x i64] }, align 8
  %t94 = alloca { i64, [21 x i64] }, align 8
  %t110 = alloca { i64, [4 x i64] }, align 8
  %t118 = alloca { i64, [8 x i64] }, align 8
  %t133 = alloca { i64, [21 x i64] }, align 8
  %t148 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d39, i32 0, i32 1) })
  store i32 %t3, ptr %l10
  br label %bb1
bb1:
  %t4 = load i32, ptr %l10, !tbaa !23
  store i32 %t4, ptr %l4, !tbaa !23
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l11, !tbaa !29
  store i64 %a1, ptr %l12, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l13, !tbaa !29
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t9 = load i32, ptr %l4, !tbaa !23
  %t12 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t8, i32 %t9)
  store i32 %t12, ptr %l16
  br label %bb2
bb2:
  %t13 = load i32, ptr %l4, !tbaa !23
  %t15 = load ptr, ptr %l13, !tbaa !29
  %t16 = load i32, ptr %l16, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t15, i32 %t16, i32 %t13, i32 %a2, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t19, ptr %l19
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l11, !tbaa !29
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = load i32, ptr %l19, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t20, ptr %v0, ptr %v1, ptr %t21, i64 %t22, i32 %t23)
  call void @llvm.memmove.p0.p0.i64(ptr %l20, ptr %t20, i64 800, i1 false)
  br label %bb4
bb4:
  %t24 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t24, ptr %lp5
  %t25 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %t25, ptr %l20, i64 800, i1 false)
  %t26 = load ptr, ptr %lp5
  %t27 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t28 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t32 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t26, i32 %t27, %"compiler/source:Span" %t28)
  store i32 %t32, ptr %l24
  br label %bb5
bb5:
  %t33 = load i32, ptr %l24, !tbaa !23
  store i32 %t33, ptr %l6, !tbaa !23
  %t34 = load ptr, ptr %lp5
  %t36 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t34)
  store i32 %t36, ptr %l26
  br label %bb6
bb6:
  %t37 = load i32, ptr %l26, !tbaa !23
  store i32 %t37, ptr %l7, !tbaa !23
  %t38 = load ptr, ptr %lp5
  %t40 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t38)
  store i32 %t40, ptr %l28
  br label %bb7
bb7:
  %t41 = load i32, ptr %l28, !tbaa !23
  store i32 %t41, ptr %l8, !tbaa !23
  %t42 = load ptr, ptr %lp5
  store ptr %t42, ptr %l29, !tbaa !29
  %t43 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t43, ptr %l30, !tbaa !23
  %t44 = load i32, ptr %l6, !tbaa !23
  %t46 = sext i32 %t44 to i64
  store i64 %t46, ptr %l32, !tbaa !24
  store i32 15, ptr %l33
  %t47 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  store i32 %t47, ptr %l34, !tbaa !23
  %t48 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t48, ptr %l35
  br label %bb8
bb8:
  %t49 = load i32, ptr %l4, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t50
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 0
  store i64 2, ptr %t51
  %t53 = insertvalue { i32, i64 } undef, i32 %t49, 0
  %t54 = insertvalue { i32, i64 } %t53, i64 0, 1
  %t55 = getelementptr { i64, [4 x i64] }, ptr %t50, i32 0, i32 1
  store { i32, i64 } %t54, ptr %t55
  %t56 = load { i64, [4 x i64] }, ptr %t50
  %t57 = load ptr, ptr %l29, !tbaa !29
  %t58 = load i32, ptr %l30, !tbaa !23
  %t59 = load i64, ptr %l32, !tbaa !24
  %t60 = load i32, ptr %l33, !range !{i32 0, i32 51}
  %t61 = load i32, ptr %l34, !tbaa !23
  %t62 = load { i64, [4 x i64] }, ptr %l35
  call void @compiler_2feval_2etprim(ptr %v1, ptr %t57, i32 %t58, i64 %t59, i32 %t60, i32 %t61, { i64, [4 x i64] } %t62, { i64, [4 x i64] } %t56)
  br label %bb9
bb9:
  %t64 = load ptr, ptr %lp5
  store ptr %t64, ptr %l38, !tbaa !29
  %t65 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t65, ptr %l39, !tbaa !23
  %t66 = load i32, ptr %l6, !tbaa !23
  %t68 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t66)
  store %"compiler/mir:Lvalue" %t68, ptr %l41
  br label %bb10
bb10:
  store { i64, [4 x i64] } zeroinitializer, ptr %t69
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 0
  store i64 1, ptr %t70
  %t71 = load %"compiler/mir:Lvalue", ptr %l41
  %t72 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t71, 0
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t69, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t72, ptr %t73
  %t74 = load { i64, [4 x i64] }, ptr %t69
  %t75 = load i32, ptr %l7, !tbaa !23
  %t76 = load i32, ptr %l8, !tbaa !23
  store { i64, [8 x i64] } zeroinitializer, ptr %t77
  %t78 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 0
  store i64 2, ptr %t78
  %t80 = insertvalue { { i64, [4 x i64] }, i32, i32 } undef, { i64, [4 x i64] } %t74, 0
  %t82 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t80, i32 %t75, 1
  %t84 = insertvalue { { i64, [4 x i64] }, i32, i32 } %t82, i32 %t76, 2
  %t85 = getelementptr { i64, [8 x i64] }, ptr %t77, i32 0, i32 1
  store { { i64, [4 x i64] }, i32, i32 } %t84, ptr %t85
  %t86 = load { i64, [8 x i64] }, ptr %t77
  %t87 = load ptr, ptr %l38, !tbaa !29
  %t88 = load i32, ptr %l39, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t87, i32 %t88, { i64, [8 x i64] } %t86)
  br label %bb11
bb11:
  %t90 = load ptr, ptr %lp5
  %t91 = load i32, ptr %l7, !tbaa !23
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
  store { i64, [21 x i64] } %t101, ptr %l50
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t90, i32 %t91, ptr %l50)
  br label %bb12
bb12:
  %t105 = load ptr, ptr %lp5
  %t106 = load i32, ptr %l7, !tbaa !23
  %t107 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t108 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  store { i64, [4 x i64] } zeroinitializer, ptr %t110
  %t111 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 0
  store i64 2, ptr %t111
  %t113 = insertvalue { i32, i64 } undef, i32 %t108, 0
  %t115 = insertvalue { i32, i64 } %t113, i64 %a3, 1
  %t116 = getelementptr { i64, [4 x i64] }, ptr %t110, i32 0, i32 1
  store { i32, i64 } %t115, ptr %t116
  %t117 = load { i64, [4 x i64] }, ptr %t110
  store { i64, [8 x i64] } zeroinitializer, ptr %t118
  %t119 = getelementptr { i64, [8 x i64] }, ptr %t118, i32 0, i32 0
  store i64 7, ptr %t119
  %t121 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t107, 0
  %t123 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t121, { i64, [4 x i64] } %t117, 1
  %t124 = getelementptr { i64, [8 x i64] }, ptr %t118, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t123, ptr %t124
  %t125 = load { i64, [8 x i64] }, ptr %t118
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t105, i32 %t106, { i64, [8 x i64] } %t125)
  br label %bb13
bb13:
  %t129 = load ptr, ptr %lp5
  %t130 = load i32, ptr %l8, !tbaa !23
  %t131 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t132 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t133
  %t134 = getelementptr { i64, [21 x i64] }, ptr %t133, i32 0, i32 0
  store i64 4, ptr %t134
  %t136 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t131, 0
  %t138 = insertvalue { %"compiler/source:Span", i32 } %t136, i32 %t132, 1
  %t139 = getelementptr { i64, [21 x i64] }, ptr %t133, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t138, ptr %t139
  %t140 = load { i64, [21 x i64] }, ptr %t133
  store { i64, [21 x i64] } %t140, ptr %l63
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t129, i32 %t130, ptr %l63)
  br label %bb14
bb14:
  %t144 = load ptr, ptr %lp5
  store ptr %t144, ptr %l65, !tbaa !29
  %t145 = load i32, ptr %l8, !tbaa !23
  store i32 %t145, ptr %l66, !tbaa !23
  %t146 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t146, ptr %l67
  %t147 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t147, ptr %l68
  br label %bb15
bb15:
  store { i64, [8 x i64] } zeroinitializer, ptr %t148
  %t149 = getelementptr { i64, [8 x i64] }, ptr %t148, i32 0, i32 0
  store i64 5, ptr %t149
  %t150 = load %"compiler/source:Span", ptr %l67
  %t151 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t150, 0
  %t152 = load { i64, [4 x i64] }, ptr %l68
  %t153 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t151, { i64, [4 x i64] } %t152, 1
  %t154 = getelementptr { i64, [8 x i64] }, ptr %t148, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t153, ptr %t154
  %t155 = load { i64, [8 x i64] }, ptr %t148
  %t156 = load ptr, ptr %l65, !tbaa !29
  %t157 = load i32, ptr %l66, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t156, i32 %t157, { i64, [8 x i64] } %t155)
  br label %bb16
bb16:
  %t159 = load ptr, ptr %lp5
  call void @llvm.memmove.p0.p0.i64(ptr %l70, ptr %t159, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l70, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2efitsBits(i64 %a0, i1 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i1
  %l7 = alloca i1
  %l10 = alloca i1
  %l16 = alloca i1
  %l17 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i64
  %l24 = alloca i64
  %l30 = alloca i1
  %l33 = alloca i1
  %l34 = alloca i64
  %l36 = alloca i64
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a1, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp sgt i64 %t3, 64
  br i1 %t5, label %bb3, label %bb4
bb2:
  br label %bb9
bb3:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb8
bb4:
  %t7 = load i1, ptr %l3, !tbaa !21
  %t9 = xor i1 %t7, true
  br i1 %t9, label %bb5, label %bb6
bb5:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t13 = icmp eq i64 %t11, 64
  store i1 %t13, ptr %l10, !tbaa !21
  br label %bb7
bb6:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb7
bb7:
  %t15 = load i1, ptr %l10, !tbaa !21
  store i1 %t15, ptr %l7, !tbaa !21
  br label %bb8
bb8:
  %t16 = load i1, ptr %l7, !tbaa !21
  store i1 %t16, ptr %rv
  br label %ret
bb9:
  %t17 = load i1, ptr %l3, !tbaa !21
  br i1 %t17, label %bb10, label %bb11
bb10:
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = icmp sge i64 %t19, 64
  br i1 %t21, label %bb12, label %bb13
bb11:
  br label %bb20
bb12:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb19
bb13:
  %t23 = load i64, ptr %l0, !tbaa !24
  store i64 %t23, ptr %l17, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t26 = call i64 @compiler_2feval_2eminBits(i64 %t24)
  store i64 %t26, ptr %l19
  br label %bb14
bb14:
  %t27 = load i64, ptr %l17, !tbaa !24
  %t28 = load i64, ptr %l19, !tbaa !24
  %t29 = icmp sge i64 %t27, %t28
  br i1 %t29, label %bb15, label %bb16
bb15:
  %t31 = load i64, ptr %l0, !tbaa !24
  store i64 %t31, ptr %l22, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t34 = call i64 @compiler_2feval_2eminBits(i64 %t32)
  store i64 %t34, ptr %l24
  br label %bb17
bb16:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb18
bb17:
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = add i64 %t35, 1
  %t38 = sub i64 0, %t36
  %t39 = load i64, ptr %l22, !tbaa !24
  %t41 = icmp sle i64 %t39, %t38
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb18
bb18:
  %t43 = load i1, ptr %l21, !tbaa !21
  store i1 %t43, ptr %l16, !tbaa !21
  br label %bb19
bb19:
  %t44 = load i1, ptr %l16, !tbaa !21
  store i1 %t44, ptr %rv
  br label %ret
bb20:
  %t45 = load i64, ptr %l0, !tbaa !24
  %t47 = icmp sge i64 %t45, 0
  br i1 %t47, label %bb21, label %bb22
bb21:
  %t49 = load i64, ptr %l2, !tbaa !24
  %t51 = icmp sge i64 %t49, 63
  br i1 %t51, label %bb23, label %bb24
bb22:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb27
bb23:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb26
bb24:
  %t53 = load i64, ptr %l0, !tbaa !24
  store i64 %t53, ptr %l34, !tbaa !24
  %t54 = load i64, ptr %l2, !tbaa !24
  %t56 = call i64 @compiler_2feval_2ebmask(i64 %t54)
  store i64 %t56, ptr %l36
  br label %bb25
bb25:
  %t57 = load i64, ptr %l34, !tbaa !24
  %t58 = load i64, ptr %l36, !tbaa !24
  %t59 = icmp sle i64 %t57, %t58
  store i1 %t59, ptr %l33, !tbaa !21
  br label %bb26
bb26:
  %t61 = load i1, ptr %l33, !tbaa !21
  store i1 %t61, ptr %l30, !tbaa !21
  br label %bb27
bb27:
  %t62 = load i1, ptr %l30, !tbaa !21
  store i1 %t62, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2eflatOp(i32 %a0) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i1
  %rv = alloca i1
  store i32 %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb39
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t8 = trunc i64 1 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb39
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t13 = trunc i64 2 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb39
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t18 = trunc i64 3 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb39
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t23 = trunc i64 4 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb39
bb10:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t28 = trunc i64 5 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb39
bb12:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t33 = trunc i64 6 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb39
bb14:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t38 = trunc i64 7 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb15, label %bb16
bb15:
  br label %bb39
bb16:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t43 = trunc i64 8 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb17, label %bb18
bb17:
  br label %bb39
bb18:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t48 = trunc i64 9 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb19, label %bb20
bb19:
  br label %bb39
bb20:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t53 = trunc i64 10 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb21, label %bb22
bb21:
  br label %bb39
bb22:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t58 = trunc i64 11 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb23, label %bb24
bb23:
  br label %bb39
bb24:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t63 = trunc i64 12 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb25, label %bb26
bb25:
  br label %bb39
bb26:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t68 = trunc i64 13 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb27, label %bb28
bb27:
  br label %bb39
bb28:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t73 = trunc i64 14 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb29, label %bb30
bb29:
  br label %bb39
bb30:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t78 = trunc i64 15 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  %t81 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t83 = trunc i64 16 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t88 = trunc i64 17 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t93 = trunc i64 18 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_67473c0be830e037_6373d6aa11f96063)
  unreachable
bb45:
  %t96 = load i1, ptr %l1, !tbaa !21
  store i1 %t96, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2efloatFits(double %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca double
  %l1 = alloca i64
  %l3 = alloca double
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l48 = alloca i1
  %l55 = alloca i1
  %l65 = alloca i1
  %rv = alloca i1
  store double %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store double 0x3ff0000000000000, ptr %l3, !tbaa !26
  store i64 0, ptr %l4, !tbaa !24
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = sub i64 %t1, 1
  store i64 %t3, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t5 = load i64, ptr %l5, !tbaa !24
  %t6 = load i64, ptr %l4, !tbaa !24
  %t9 = icmp sgt i64 %t5, %t6
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = load i64, ptr %l6, !tbaa !24
  %t13 = icmp sgt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb6
bb3:
  %t15 = load i64, ptr %l5, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = sub i64 %t15, %t16
  %t20 = load i64, ptr %l6, !tbaa !24
  %t23 = add i64 %t19, %t20
  %t25 = sub i64 %t23, 1
  %t26 = load i64, ptr %l6, !tbaa !24
  %t29 = sdiv i64 %t25, %t26
  store i64 %t29, ptr %l18, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb5
bb5:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l15, !tbaa !24
  br label %bb6
bb6:
  %t32 = load i64, ptr %l15, !tbaa !24
  store i64 %t32, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  %t33 = load i64, ptr %l8, !tbaa !24
  %t34 = load i64, ptr %l7, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  br label %bb10
bb10:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l8, !tbaa !24
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = mul i64 %t42, %t43
  %t49 = add i64 %t41, %t46
  store i64 %t49, ptr %l9, !tbaa !24
  %t51 = load double, ptr %l3, !tbaa !26
  %t53 = fmul double %t51, 0x4000000000000000
  store double %t53, ptr %l3, !tbaa !26
  br label %bb11
bb11:
  %t55 = load i64, ptr %l8, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l8, !tbaa !24
  br label %bb7
bb12:
  %t59 = load double, ptr %l0, !tbaa !26
  %t60 = load double, ptr %l0, !tbaa !26
  %t63 = fcmp une double %t59, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  store i1 false, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  %t68 = xor i1 %a2, true
  br i1 %t68, label %bb16, label %bb17
bb16:
  %t70 = load double, ptr %l0, !tbaa !26
  %t72 = fcmp ogt double %t70, 0xbff0000000000000
  br i1 %t72, label %bb18, label %bb19
bb17:
  br label %bb21
bb18:
  %t74 = load double, ptr %l0, !tbaa !26
  %t75 = load double, ptr %l3, !tbaa !26
  %t77 = fmul double 0x4000000000000000, %t75
  %t80 = fcmp olt double %t74, %t77
  store i1 %t80, ptr %l48, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l48, !tbaa !21
  br label %bb20
bb20:
  %t82 = load i1, ptr %l48, !tbaa !21
  store i1 %t82, ptr %rv
  br label %ret
bb21:
  %t83 = load i64, ptr %l1, !tbaa !24
  %t85 = icmp sgt i64 %t83, 53
  br i1 %t85, label %bb22, label %bb23
bb22:
  %t87 = load double, ptr %l0, !tbaa !26
  %t88 = load double, ptr %l3, !tbaa !26
  %t90 = fneg double %t88
  %t93 = fcmp oge double %t87, %t90
  store i1 %t93, ptr %l55, !tbaa !21
  br label %bb24
bb23:
  %t95 = load double, ptr %l0, !tbaa !26
  %t96 = load double, ptr %l3, !tbaa !26
  %t98 = fneg double %t96
  %t100 = fsub double %t98, 0x3ff0000000000000
  %t103 = fcmp ogt double %t95, %t100
  store i1 %t103, ptr %l55, !tbaa !21
  br label %bb24
bb24:
  %t105 = load i1, ptr %l55, !tbaa !21
  br i1 %t105, label %bb25, label %bb26
bb25:
  %t106 = load double, ptr %l0, !tbaa !26
  %t107 = load double, ptr %l3, !tbaa !26
  %t110 = fcmp olt double %t106, %t107
  store i1 %t110, ptr %l65, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb27
bb27:
  %t112 = load i1, ptr %l65, !tbaa !21
  store i1 %t112, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2feval_2egplace(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i32
  %l4 = alloca i32
  %l7 = alloca %"compiler/mir:Lvalue"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/mir:Lvalue"
  %t5 = alloca { i64, [2 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  store i32 %a1, ptr %l2, !tbaa !23
  %t4 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %a0, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d40, i32 0, i32 1) })
  store i32 %t4, ptr %l4
  br label %bb1
bb1:
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 2, ptr %t6
  %t7 = insertvalue { i64, i32, i32 } undef, i64 7, 0
  %t8 = load i32, ptr %l2, !tbaa !23
  %t9 = insertvalue { i64, i32, i32 } %t7, i32 %t8, 1
  %t10 = load i32, ptr %l4, !tbaa !23
  %t11 = insertvalue { i64, i32, i32 } %t9, i32 %t10, 2
  %t12 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i64, i32, i32 } %t11, ptr %t12
  %t13 = load { i64, [2 x i64] }, ptr %t5
  %t14 = load %"compiler/mir:Range", ptr @G_2ecompiler_2fmir_2eEmpty
  %t17 = call %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %s0, { i64, [2 x i64] } %t13, %"compiler/mir:Range" %t14)
  store %"compiler/mir:Lvalue" %t17, ptr %l7
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  %t18 = load %"compiler/mir:Lvalue", ptr %l7
  store %"compiler/mir:Lvalue" %t18, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local void @compiler_2feval_2enfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t10 = alloca %"compiler/mir:Fn", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l2, !tbaa !29
  store i64 %a1, ptr %l3, !tbaa !24
  %t3 = load ptr, ptr %l0, !tbaa !29
  store ptr %t3, ptr %l4, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t4, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d41, i32 0, i32 1) })
  store i32 %t6, ptr %l6
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t8 = load i32, ptr %l6, !tbaa !23
  %t9 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t7, i32 0, i32 %t8, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t9, ptr %l7
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l2, !tbaa !29
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i32, ptr %l7, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t10, ptr %v0, ptr %v1, ptr %t11, i64 %t12, i32 %t13)
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %t10, i64 800, i1 false)
  br label %bb3
bb3:
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l8, i64 800, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %a0) #0 {
entry:
  %l0 = alloca { i64, [4 x i64] }
  %l1 = alloca %"compiler/mir:Lvalue"
  %l2 = alloca i1
  %l7 = alloca i1
  %rv = alloca i1
  store { i64, [4 x i64] } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [4 x i64] }, ptr %l0
  %t3 = extractvalue { i64, [4 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 1
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [4 x i64] }, ptr %l0, i32 0, i32 1
  %t7 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t6, i32 0, i32 0
  %t8 = load %"compiler/mir:Lvalue", ptr %t7
  store %"compiler/mir:Lvalue" %t8, ptr %l1
  br label %bb3
bb2:
  br label %bb5
bb3:
  %t10 = load %"compiler/mir:Lvalue", ptr %l1
  %t12 = call i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %t10)
  store i1 %t12, ptr %l7
  br label %bb4
bb4:
  %t13 = load i1, ptr %l7, !tbaa !21
  store i1 %t13, ptr %l2, !tbaa !21
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i1 false, ptr %l2, !tbaa !21
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_a1e0d3359bcb436b_ac2861f14772b5df)
  unreachable
bb10:
  %t14 = load i1, ptr %l2, !tbaa !21
  store i1 %t14, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1) #0 {
entry:
  %l1 = alloca %"compiler/mir:Range"
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l12 = alloca i32
  %l15 = alloca i32
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca i1
  %rv = alloca i1
  store %"compiler/mir:Range" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store i32 0, ptr %l2, !tbaa !23
  %t1 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 1
  %t2 = load i32, ptr %t1, !tbaa !23
  store i32 %t2, ptr %l3, !tbaa !23
  store i32 1, ptr %l4, !tbaa !23
  %t4 = load i32, ptr %l3, !tbaa !23
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = icmp sgt i32 %t4, %t5
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i32, ptr %l4, !tbaa !23
  %t12 = icmp sgt i32 %t10, 0
  br i1 %t12, label %bb3, label %bb4
bb2:
  store i32 0, ptr %l12, !tbaa !23
  br label %bb6
bb3:
  %t14 = load i32, ptr %l3, !tbaa !23
  %t15 = load i32, ptr %l2, !tbaa !23
  %t18 = sub i32 %t14, %t15
  %t19 = load i32, ptr %l4, !tbaa !23
  %t22 = add i32 %t18, %t19
  %t24 = sub i32 %t22, 1
  %t25 = load i32, ptr %l4, !tbaa !23
  %t28 = sdiv i32 %t24, %t25
  store i32 %t28, ptr %l15, !tbaa !23
  br label %bb5
bb4:
  store i32 0, ptr %l15, !tbaa !23
  br label %bb5
bb5:
  %t30 = load i32, ptr %l15, !tbaa !23
  store i32 %t30, ptr %l12, !tbaa !23
  br label %bb6
bb6:
  %t31 = load i32, ptr %l12, !tbaa !23
  store i32 %t31, ptr %l5, !tbaa !23
  store i32 0, ptr %l6, !tbaa !23
  br label %bb7
bb7:
  %t32 = load i32, ptr %l6, !tbaa !23
  %t33 = load i32, ptr %l5, !tbaa !23
  %t36 = icmp slt i32 %t32, %t33
  %t38 = xor i1 %t36, true
  br i1 %t38, label %bb8, label %bb9
bb8:
  br label %bb17
bb9:
  br label %bb10
bb10:
  %t40 = load i32, ptr %l2, !tbaa !23
  %t41 = load i32, ptr %l6, !tbaa !23
  %t42 = load i32, ptr %l4, !tbaa !23
  %t45 = mul i32 %t41, %t42
  %t48 = add i32 %t40, %t45
  %t52 = getelementptr %"compiler/mir:Fn", ptr %a0, i32 0, i32 11
  %t53 = getelementptr %"compiler/mir:Range", ptr %l1, i32 0, i32 0
  %t54 = load i32, ptr %t53, !tbaa !23
  %t56 = sext i32 %t54 to i64
  %t59 = sext i32 %t48 to i64
  %t62 = add i64 %t56, %t59
  %t65 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t52, i64 %t62)
  store { i64, [4 x i64] } %t65, ptr %l40
  br label %bb11
bb11:
  %t66 = load { i64, [4 x i64] }, ptr %l40
  %t67 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t66)
  store i1 %t67, ptr %l41
  br label %bb12
bb12:
  %t68 = load i1, ptr %l41, !tbaa !21
  br i1 %t68, label %bb13, label %bb14
bb13:
  store i1 true, ptr %rv
  br label %ret
bb14:
  br label %bb15
bb15:
  br label %bb16
bb16:
  %t70 = load i32, ptr %l6, !tbaa !23
  %t72 = add i32 %t70, 1
  store i32 %t72, ptr %l6, !tbaa !23
  br label %bb7
bb17:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2eshr128(i64 %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i64
  %l15 = alloca i64
  %l24 = alloca i64
  %l31 = alloca i64
  %l36 = alloca i64
  %l42 = alloca i64
  %l49 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l0, !tbaa !24
  %t6 = load i64, ptr %l1, !tbaa !24
  %t8 = insertvalue { i64, i64 } undef, i64 %t5, 0
  %t10 = insertvalue { i64, i64 } %t8, i64 %t6, 1
  store { i64, i64 } %t10, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t12 = load i64, ptr %l2, !tbaa !24
  %t14 = icmp sge i64 %t12, 64
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i1, ptr %l3, !tbaa !21
  br i1 %t16, label %bb6, label %bb7
bb5:
  br label %bb9
bb6:
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t19, 64
  store i64 %t21, ptr %l15, !tbaa !24
  %t23 = load i64, ptr %l15, !tbaa !24
  %t24 = load i64, ptr %l15, !tbaa !24
  %t25 = ashr i64 %t18, %t24
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = ashr i64 %t26, 63
  %t30 = insertvalue { i64, i64 } undef, i64 %t25, 0
  %t32 = insertvalue { i64, i64 } %t30, i64 %t28, 1
  store { i64, i64 } %t32, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = load i64, ptr %l2, !tbaa !24
  %t38 = sub i64 %t36, 64
  store i64 %t38, ptr %l24, !tbaa !65
  %t41 = load i64, ptr %l24, !tbaa !65
  %t42 = load i64, ptr %l24, !tbaa !65
  %t43 = lshr i64 %t34, %t42
  %t46 = insertvalue { i64, i64 } undef, i64 %t43, 0
  %t47 = insertvalue { i64, i64 } %t46, i64 0, 1
  store { i64, i64 } %t47, ptr %rv
  br label %ret
bb9:
  %t49 = load i64, ptr %l0, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  store i64 %t51, ptr %l31, !tbaa !65
  %t54 = load i64, ptr %l31, !tbaa !65
  %t55 = load i64, ptr %l31, !tbaa !65
  %t56 = lshr i64 %t49, %t55
  %t58 = load i64, ptr %l1, !tbaa !24
  %t59 = load i64, ptr %l2, !tbaa !24
  %t61 = sub i64 64, %t59
  store i64 %t61, ptr %l36, !tbaa !24
  %t63 = load i64, ptr %l36, !tbaa !24
  %t64 = load i64, ptr %l36, !tbaa !24
  %t65 = shl i64 %t58, %t64
  %t68 = or i64 %t56, %t65
  store i64 %t68, ptr %l4, !tbaa !24
  %t70 = load i1, ptr %l3, !tbaa !21
  br i1 %t70, label %bb10, label %bb11
bb10:
  %t72 = load i64, ptr %l4, !tbaa !24
  %t73 = load i64, ptr %l1, !tbaa !24
  %t74 = load i64, ptr %l2, !tbaa !24
  store i64 %t74, ptr %l42, !tbaa !24
  %t76 = load i64, ptr %l42, !tbaa !24
  %t77 = load i64, ptr %l42, !tbaa !24
  %t78 = ashr i64 %t73, %t77
  %t80 = insertvalue { i64, i64 } undef, i64 %t72, 0
  %t82 = insertvalue { i64, i64 } %t80, i64 %t78, 1
  store { i64, i64 } %t82, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t84 = load i64, ptr %l4, !tbaa !24
  %t85 = load i64, ptr %l1, !tbaa !24
  %t87 = load i64, ptr %l2, !tbaa !24
  store i64 %t87, ptr %l49, !tbaa !65
  %t90 = load i64, ptr %l49, !tbaa !65
  %t91 = load i64, ptr %l49, !tbaa !65
  %t92 = lshr i64 %t85, %t91
  %t95 = insertvalue { i64, i64 } undef, i64 %t84, 0
  %t97 = insertvalue { i64, i64 } %t95, i64 %t92, 1
  store { i64, i64 } %t97, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0) #0 {
entry:
  %l4 = alloca %"compiler/mir:Lvalue"
  %rv = alloca %"compiler/mir:Lvalue"
  br label %start
start:
  br label %bb0
bb0:
  %t3 = trunc i64 %a0 to i32
  %t6 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t3)
  store %"compiler/mir:Lvalue" %t6, ptr %l4
  br label %bb1
bb1:
  %t7 = load %"compiler/mir:Lvalue", ptr %l4
  store %"compiler/mir:Lvalue" %t7, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:Lvalue", ptr %rv
  ret %"compiler/mir:Lvalue" %rr
}

define dso_local { i64, ptr } @compiler_2feval_2ewideText(ptr %v0, i64 %a0, i64 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca { i64, i64 }
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca { i64, i64, i64, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l14 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca { i64, ptr }
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l29 = alloca i1
  %l37 = alloca { i64, i64 }
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca { i64, i64, i64, i64 }
  %l56 = alloca %"std/prelude/text:StringBuilder"
  %l65 = alloca i64
  %l69 = alloca i64
  %l72 = alloca i64
  %l90 = alloca ptr
  %l92 = alloca i64
  %l96 = alloca i64
  %l105 = alloca i64
  %l108 = alloca i64
  %l134 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  store i1 %t5, ptr %l29, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l29, !tbaa !21
  br label %bb3
bb3:
  %t7 = load i1, ptr %l29, !tbaa !21
  store i1 %t7, ptr %l3, !tbaa !21
  %t8 = load i64, ptr %l0, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t10 = load i64, ptr %l1, !tbaa !24
  store i64 %t10, ptr %l5, !tbaa !24
  %t12 = load i1, ptr %l3, !tbaa !21
  br i1 %t12, label %bb4, label %bb5
bb4:
  %t14 = load i64, ptr %l0, !tbaa !24
  %t15 = load i64, ptr %l1, !tbaa !24
  %t18 = call { i64, i64 } @compiler_2feval_2eneg128(i64 %t14, i64 %t15)
  store { i64, i64 } %t18, ptr %l37
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t19 = load { i64, i64 }, ptr %l37
  store { i64, i64 } %t19, ptr %l6
  %t20 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t21 = load i64, ptr %t20, !tbaa !24
  store i64 %t21, ptr %l4, !tbaa !24
  %t23 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t24 = load i64, ptr %t23, !tbaa !24
  store i64 %t24, ptr %l5, !tbaa !24
  br label %bb7
bb7:
  %t26 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t26, ptr %l40
  br label %bb8
bb8:
  %t27 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l7
  br label %bb9
bb9:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp ne i64 %t28, 0
  %t32 = xor i1 %t30, true
  br i1 %t32, label %bb10, label %bb11
bb10:
  br label %bb16
bb11:
  br label %bb12
bb12:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t35 = load i64, ptr %l5, !tbaa !24
  %t38 = call { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %t34, i64 %t35, i64 1000000000000000000, i64 0)
  store { i64, i64, i64, i64 } %t38, ptr %l46
  br label %bb13
bb13:
  %t39 = load { i64, i64, i64, i64 }, ptr %l46
  store { i64, i64, i64, i64 } %t39, ptr %l8
  %t40 = getelementptr { i64, i64, i64, i64 }, ptr %l8, i32 0, i32 0
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l9, !tbaa !24
  %t43 = getelementptr { i64, i64, i64, i64 }, ptr %l8, i32 0, i32 1
  %t44 = load i64, ptr %t43, !tbaa !24
  store i64 %t44, ptr %l10, !tbaa !24
  %t46 = getelementptr { i64, i64, i64, i64 }, ptr %l8, i32 0, i32 2
  %t47 = load i64, ptr %t46, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %s0, ptr %l7, i64 %t47)
  br label %bb14
bb14:
  %t52 = load i64, ptr %l9, !tbaa !24
  %t54 = load i64, ptr %l10, !tbaa !24
  store i64 %t52, ptr %l4, !tbaa !24
  store i64 %t54, ptr %l5, !tbaa !24
  br label %bb15
bb15:
  br label %bb9
bb16:
  %t60 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t60, ptr %l56
  br label %bb17
bb17:
  %t61 = load %"std/prelude/text:StringBuilder", ptr %l56
  store %"std/prelude/text:StringBuilder" %t61, ptr %l14
  %t62 = load i1, ptr %l3, !tbaa !21
  br i1 %t62, label %bb18, label %bb19
bb18:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l14, i8 45)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t65 = load i64, ptr %l4, !tbaa !24
  %t68 = call i64 @__olang_fmt_u64(ptr null, i64 %t65)
  %t69 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t68)
  %t70 = call i64 @__olang_fmt_u64(ptr %t69, i64 %t65)
  %t71 = insertvalue { i64, ptr } undef, i64 %t68, 0
  %t72 = insertvalue { i64, ptr } %t71, ptr %t69, 1
  %t74 = extractvalue { i64, ptr } %t72, 0
  %t75 = extractvalue { i64, ptr } %t72, 1
  %t76 = mul i64 %t74, 1
  %t77 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t76)
  call void @llvm.memcpy.p0.p0.i64(ptr %t77, ptr %t75, i64 %t76, i1 false)
  %t78 = insertvalue { i64, ptr } undef, i64 %t74, 0
  %t79 = insertvalue { i64, ptr } %t78, ptr %t77, 1
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s0, ptr %l14, { i64, ptr } %t79)
  br label %bb22
bb22:
  store i64 0, ptr %l15, !tbaa !24
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t83, ptr %l65
  br label %bb23
bb23:
  %t84 = load i64, ptr %l65, !tbaa !24
  store i64 %t84, ptr %l16, !tbaa !24
  store i64 1, ptr %l17, !tbaa !24
  %t85 = load i64, ptr %l16, !tbaa !24
  %t86 = load i64, ptr %l15, !tbaa !24
  %t89 = icmp sgt i64 %t85, %t86
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load i64, ptr %l17, !tbaa !24
  %t93 = icmp sgt i64 %t91, 0
  br i1 %t93, label %bb26, label %bb27
bb25:
  store i64 0, ptr %l69, !tbaa !24
  br label %bb29
bb26:
  %t95 = load i64, ptr %l16, !tbaa !24
  %t96 = load i64, ptr %l15, !tbaa !24
  %t99 = sub i64 %t95, %t96
  %t100 = load i64, ptr %l17, !tbaa !24
  %t103 = add i64 %t99, %t100
  %t105 = sub i64 %t103, 1
  %t106 = load i64, ptr %l17, !tbaa !24
  %t109 = sdiv i64 %t105, %t106
  store i64 %t109, ptr %l72, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l72, !tbaa !24
  br label %bb28
bb28:
  %t111 = load i64, ptr %l72, !tbaa !24
  store i64 %t111, ptr %l69, !tbaa !24
  br label %bb29
bb29:
  %t112 = load i64, ptr %l69, !tbaa !24
  store i64 %t112, ptr %l18, !tbaa !24
  store i64 0, ptr %l19, !tbaa !24
  br label %bb30
bb30:
  store %olang.scope zeroinitializer, ptr %s6
  %t113 = load i64, ptr %l19, !tbaa !24
  %t114 = load i64, ptr %l18, !tbaa !24
  %t117 = icmp slt i64 %t113, %t114
  %t119 = xor i1 %t117, true
  br i1 %t119, label %bb31, label %bb32
bb31:
  call void @__olang_scope_close(ptr %s6)
  br label %bb51
bb32:
  br label %bb33
bb33:
  %t121 = load i64, ptr %l15, !tbaa !24
  %t122 = load i64, ptr %l19, !tbaa !24
  %t123 = load i64, ptr %l17, !tbaa !24
  %t126 = mul i64 %t122, %t123
  %t129 = add i64 %t121, %t126
  store i64 %t129, ptr %l20, !tbaa !24
  store ptr %l7, ptr %l90, !tbaa !29
  %t132 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l7)
  store i64 %t132, ptr %l92
  br label %bb34
bb34:
  %t133 = load i64, ptr %l92, !tbaa !24
  %t134 = sub i64 %t133, 1
  %t135 = load i64, ptr %l20, !tbaa !24
  %t138 = sub i64 %t134, %t135
  %t139 = load ptr, ptr %l90, !tbaa !29
  %t141 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %t139, i64 %t138)
  store i64 %t141, ptr %l96
  br label %bb35
bb35:
  %t142 = load i64, ptr %l96, !tbaa !24
  %t144 = call i64 @__olang_fmt_u64(ptr null, i64 %t142)
  %t145 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t144)
  %t146 = call i64 @__olang_fmt_u64(ptr %t145, i64 %t142)
  %t147 = insertvalue { i64, ptr } undef, i64 %t144, 0
  %t148 = insertvalue { i64, ptr } %t147, ptr %t145, 1
  store { i64, ptr } %t148, ptr %l21, !tbaa !27
  store i64 0, ptr %l22, !tbaa !24
  %t150 = load { i64, ptr }, ptr %l21, !tbaa !27
  %t152 = extractvalue { i64, ptr } %t150, 0
  %t154 = sub i64 18, %t152
  store i64 %t154, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t156 = load i64, ptr %l23, !tbaa !24
  %t157 = load i64, ptr %l22, !tbaa !24
  %t160 = icmp sgt i64 %t156, %t157
  br i1 %t160, label %bb36, label %bb37
bb36:
  %t162 = load i64, ptr %l24, !tbaa !24
  %t164 = icmp sgt i64 %t162, 0
  br i1 %t164, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l105, !tbaa !24
  br label %bb41
bb38:
  %t166 = load i64, ptr %l23, !tbaa !24
  %t167 = load i64, ptr %l22, !tbaa !24
  %t170 = sub i64 %t166, %t167
  %t171 = load i64, ptr %l24, !tbaa !24
  %t174 = add i64 %t170, %t171
  %t176 = sub i64 %t174, 1
  %t177 = load i64, ptr %l24, !tbaa !24
  %t180 = sdiv i64 %t176, %t177
  store i64 %t180, ptr %l108, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l108, !tbaa !24
  br label %bb40
bb40:
  %t182 = load i64, ptr %l108, !tbaa !24
  store i64 %t182, ptr %l105, !tbaa !24
  br label %bb41
bb41:
  %t183 = load i64, ptr %l105, !tbaa !24
  store i64 %t183, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb42
bb42:
  %t184 = load i64, ptr %l26, !tbaa !24
  %t185 = load i64, ptr %l25, !tbaa !24
  %t188 = icmp slt i64 %t184, %t185
  %t190 = xor i1 %t188, true
  br i1 %t190, label %bb43, label %bb44
bb43:
  br label %bb48
bb44:
  br label %bb45
bb45:
  %t192 = load i64, ptr %l22, !tbaa !24
  %t193 = load i64, ptr %l26, !tbaa !24
  %t194 = load i64, ptr %l24, !tbaa !24
  %t197 = mul i64 %t193, %t194
  %t200 = add i64 %t192, %t197
  store i64 %t200, ptr %l27, !tbaa !24
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l14, i8 48)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t203 = load i64, ptr %l26, !tbaa !24
  %t205 = add i64 %t203, 1
  store i64 %t205, ptr %l26, !tbaa !24
  br label %bb42
bb48:
  %t207 = load { i64, ptr }, ptr %l21, !tbaa !27
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s6, ptr %l14, { i64, ptr } %t207)
  br label %bb49
bb49:
  call void @__olang_scope_close(ptr %s6)
  br label %bb50
bb50:
  %t210 = load i64, ptr %l19, !tbaa !24
  %t212 = add i64 %t210, 1
  store i64 %t212, ptr %l19, !tbaa !24
  br label %bb30
bb51:
  %t215 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v0, ptr %l14)
  store { i64, ptr } %t215, ptr %l134
  br label %bb52
bb52:
  call void @__olang_scope_close(ptr %s0)
  %t216 = load { i64, ptr }, ptr %l134, !tbaa !27
  store { i64, ptr } %t216, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local %"compiler/eval:Image" @compiler_2feval_3aImage_2ector(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca i64
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/eval:Image"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l3, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l3
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l5
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l3
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = call ptr @__olang_region_home(ptr %t16)
  %t18 = icmp ne ptr %t17, null
  %t19 = select i1 %t18, ptr %t17, ptr null
  %t20 = icmp eq ptr %t19, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t20)
  br label %bb5
bb5:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l7, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l7
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l9
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aImage_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l7
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9, i32 0, i32 0
  %t35 = load { i64, ptr }, ptr %t34
  %t36 = extractvalue { i64, ptr } %t35, 1
  %t37 = call ptr @__olang_region_or(ptr %t36, ptr null)
  %t38 = call ptr @__olang_region_home(ptr %t37)
  %t39 = icmp ne ptr %t38, null
  %t40 = select i1 %t39, ptr %t38, ptr null
  %t41 = icmp eq ptr %t40, %t33
  call void @__olang_region_settle(ptr %t33, i1 %t41)
  br label %bb10
bb10:
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  %t44 = insertvalue %"compiler/eval:Image" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, 0
  %t46 = insertvalue %"compiler/eval:Image" %t44, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, 1
  %t48 = insertvalue %"compiler/eval:Image" %t46, i1 false, 2
  store %"compiler/eval:Image" %t48, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Image", ptr %rv
  ret %"compiler/eval:Image" %rr
}

define dso_local void @compiler_2feval_3aMachine_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca { ptr, ptr }
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"compiler/mir:GenInfo"
  %l8 = alloca i1
  %l9 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i1
  %l19 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l20 = alloca %"compiler/eval:Ptr"
  %l21 = alloca i32
  %l22 = alloca { i64, [5 x i64] }
  %l23 = alloca i64
  %l24 = alloca i1
  %l25 = alloca i1
  %l26 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l27 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l32 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l45 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l46 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca { i64, ptr }
  %l51 = alloca { i64, ptr }
  %l52 = alloca i64
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l58 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l59 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l63 = alloca i64
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l71 = alloca i1
  %l72 = alloca i64
  %l73 = alloca i64
  %l74 = alloca { i64, ptr }
  %l75 = alloca i64
  %l76 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l77 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l78 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l79 = alloca i64
  %l80 = alloca %"compiler/source:Span"
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca i64
  %l83 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l84 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l85 = alloca { i64, ptr }
  %l86 = alloca { i64, ptr }
  %l87 = alloca i1
  %l88 = alloca i1
  %l89 = alloca i1
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca i64
  %l93 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l94 = alloca i64
  %l99 = alloca i64
  %l101 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l103 = alloca i64
  %l105 = alloca %"compiler/mir:GenInfo"
  %l107 = alloca i64
  %l109 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l111 = alloca i64
  %l113 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l115 = alloca i64
  %l117 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l119 = alloca i64
  %l121 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l123 = alloca i64
  %l125 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l130 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l131 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l132 = alloca %"compiler/eval:cfn"
  %l134 = alloca %"compiler/eval:cfn"
  %l138 = alloca i64
  %l143 = alloca i64
  %l148 = alloca i64
  %l153 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l154 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l155 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l156 = alloca i64
  %l158 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l160 = alloca i64
  %l162 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l164 = alloca i64
  %l166 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l168 = alloca i64
  %l170 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l172 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l173 = alloca i64
  %l175 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l177 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l178 = alloca i64
  %l180 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l182 = alloca i64
  %l184 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l186 = alloca i64
  %l188 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l190 = alloca i64
  %l192 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l194 = alloca i64
  %l196 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l198 = alloca i64
  %l203 = alloca i64
  %l208 = alloca i64
  %l213 = alloca i64
  %l215 = alloca %"compiler/eval:alloc"
  %l217 = alloca %"compiler/eval:alloc"
  %l221 = alloca i64
  %l223 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l225 = alloca i64
  %l227 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca i64
  %l231 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l233 = alloca i64
  %l235 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l237 = alloca i64
  %l239 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l241 = alloca i64
  %l243 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l245 = alloca i64
  %l247 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l249 = alloca i64
  %l251 = alloca %"compiler/eval:frame"
  %l253 = alloca %"compiler/eval:frame"
  %l257 = alloca i64
  %l262 = alloca i64
  %l264 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l266 = alloca i64
  %l268 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l270 = alloca i64
  %l272 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l274 = alloca i64
  %l276 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l278 = alloca i64
  %l280 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l282 = alloca i64
  %l284 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l286 = alloca i64
  %l288 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l290 = alloca i64
  %l295 = alloca i64
  %l297 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l299 = alloca i64
  %l301 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l303 = alloca i64
  %l305 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l307 = alloca %"compiler/source:Span"
  %l308 = alloca i64
  %l310 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l312 = alloca i64
  %l314 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l316 = alloca i64
  %l318 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l320 = alloca i64
  %l322 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l324 = alloca i64
  %l326 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l328 = alloca i64
  %l330 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l332 = alloca %"compiler/source:Span"
  %l333 = alloca %"compiler/eval:Machine"
  %t31 = alloca %"compiler/mir:GenInfo", align 8
  %t376 = alloca { i64, [5 x i64] }, align 8
  %t386 = alloca %"compiler/eval:cfn", align 8
  %t393 = alloca i64
  %t417 = alloca i64
  %t441 = alloca i64
  %t465 = alloca i64
  %t874 = alloca i64
  %t1039 = alloca %"compiler/eval:frame", align 8
  %t1048 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i32 %a1, ptr %l3
  store i64 20000000, ptr %l4, !tbaa !24
  store { ptr, ptr } zeroinitializer, ptr %l5
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l99, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l99, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l99
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l101
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l99
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = call ptr @__olang_region_home(ptr %t20)
  %t22 = icmp ne ptr %t21, null
  %t23 = select i1 %t22, ptr %t21, ptr null
  %t24 = icmp eq ptr %t23, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t24)
  br label %bb5
bb5:
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l101
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l6
  %t26 = ptrtoint ptr %v1 to i64
  store i64 %t26, ptr %l103, !tbaa !24
  %t27 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e5
  br i1 %t27, label %bb6, label %bb7
bb6:
  %t29 = call ptr @__olang_region_make(ptr %v1)
  %t30 = ptrtoint ptr %t29 to i64
  store i64 %t30, ptr %l103, !tbaa !24
  br label %bb7
bb7:
  %t32 = load i64, ptr %l103
  %t33 = inttoptr i64 %t32 to ptr
  call void @compiler_2fmir_3aGenInfo_2ector(ptr %t31, ptr %t33)
  call void @llvm.memmove.p0.p0.i64(ptr %l105, ptr %t31, i64 632, i1 false)
  br label %bb8
bb8:
  %t34 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e5
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l103
  %t37 = inttoptr i64 %t36 to ptr
  %t38 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 11
  %t39 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t38, i32 0, i32 2
  %t40 = load { i64, ptr }, ptr %t39
  %t41 = extractvalue { i64, ptr } %t40, 1
  %t42 = call ptr @__olang_region_or(ptr %t41, ptr null)
  %t43 = call ptr @__olang_region_home(ptr %t42)
  %t44 = icmp ne ptr %t43, null
  %t45 = select i1 %t44, ptr %t43, ptr null
  %t46 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 11
  %t47 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t46, i32 0, i32 1
  %t48 = load { i64, ptr }, ptr %t47
  %t49 = extractvalue { i64, ptr } %t48, 1
  %t50 = call ptr @__olang_region_or(ptr %t49, ptr null)
  %t51 = call ptr @__olang_region_home(ptr %t50)
  %t52 = icmp ne ptr %t51, null
  %t53 = select i1 %t52, ptr %t51, ptr %t45
  %t54 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 11
  %t55 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t54, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = call ptr @__olang_region_home(ptr %t58)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr %t53
  %t62 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 9
  %t63 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t62, i32 0, i32 2
  %t64 = load { i64, ptr }, ptr %t63
  %t65 = extractvalue { i64, ptr } %t64, 1
  %t66 = call ptr @__olang_region_or(ptr %t65, ptr null)
  %t67 = call ptr @__olang_region_home(ptr %t66)
  %t68 = icmp ne ptr %t67, null
  %t69 = select i1 %t68, ptr %t67, ptr %t61
  %t70 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 9
  %t71 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t70, i32 0, i32 1
  %t72 = load { i64, ptr }, ptr %t71
  %t73 = extractvalue { i64, ptr } %t72, 1
  %t74 = call ptr @__olang_region_or(ptr %t73, ptr null)
  %t75 = call ptr @__olang_region_home(ptr %t74)
  %t76 = icmp ne ptr %t75, null
  %t77 = select i1 %t76, ptr %t75, ptr %t69
  %t78 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 9
  %t79 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t78, i32 0, i32 0
  %t80 = load { i64, ptr }, ptr %t79
  %t81 = extractvalue { i64, ptr } %t80, 1
  %t82 = call ptr @__olang_region_or(ptr %t81, ptr null)
  %t83 = call ptr @__olang_region_home(ptr %t82)
  %t84 = icmp ne ptr %t83, null
  %t85 = select i1 %t84, ptr %t83, ptr %t77
  %t86 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 7
  %t87 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t86, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = call ptr @__olang_region_home(ptr %t90)
  %t92 = icmp ne ptr %t91, null
  %t93 = select i1 %t92, ptr %t91, ptr %t85
  %t94 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 7
  %t95 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t94, i32 0, i32 1
  %t96 = load { i64, ptr }, ptr %t95
  %t97 = extractvalue { i64, ptr } %t96, 1
  %t98 = call ptr @__olang_region_or(ptr %t97, ptr null)
  %t99 = call ptr @__olang_region_home(ptr %t98)
  %t100 = icmp ne ptr %t99, null
  %t101 = select i1 %t100, ptr %t99, ptr %t93
  %t102 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 7
  %t103 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t102, i32 0, i32 0
  %t104 = load { i64, ptr }, ptr %t103
  %t105 = extractvalue { i64, ptr } %t104, 1
  %t106 = call ptr @__olang_region_or(ptr %t105, ptr null)
  %t107 = call ptr @__olang_region_home(ptr %t106)
  %t108 = icmp ne ptr %t107, null
  %t109 = select i1 %t108, ptr %t107, ptr %t101
  %t110 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 5
  %t111 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t110, i32 0, i32 0
  %t112 = load { i64, ptr }, ptr %t111
  %t113 = extractvalue { i64, ptr } %t112, 1
  %t114 = call ptr @__olang_region_or(ptr %t113, ptr null)
  %t115 = call ptr @__olang_region_home(ptr %t114)
  %t116 = icmp ne ptr %t115, null
  %t117 = select i1 %t116, ptr %t115, ptr %t109
  %t118 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 4
  %t119 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t118, i32 0, i32 2
  %t120 = load { i64, ptr }, ptr %t119
  %t121 = extractvalue { i64, ptr } %t120, 1
  %t122 = call ptr @__olang_region_or(ptr %t121, ptr null)
  %t123 = call ptr @__olang_region_home(ptr %t122)
  %t124 = icmp ne ptr %t123, null
  %t125 = select i1 %t124, ptr %t123, ptr %t117
  %t126 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 4
  %t127 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t126, i32 0, i32 1
  %t128 = load { i64, ptr }, ptr %t127
  %t129 = extractvalue { i64, ptr } %t128, 1
  %t130 = call ptr @__olang_region_or(ptr %t129, ptr null)
  %t131 = call ptr @__olang_region_home(ptr %t130)
  %t132 = icmp ne ptr %t131, null
  %t133 = select i1 %t132, ptr %t131, ptr %t125
  %t134 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 4
  %t135 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t134, i32 0, i32 0
  %t136 = load { i64, ptr }, ptr %t135
  %t137 = extractvalue { i64, ptr } %t136, 1
  %t138 = call ptr @__olang_region_or(ptr %t137, ptr null)
  %t139 = call ptr @__olang_region_home(ptr %t138)
  %t140 = icmp ne ptr %t139, null
  %t141 = select i1 %t140, ptr %t139, ptr %t133
  %t142 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 3
  %t143 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t142, i32 0, i32 2
  %t144 = load { i64, ptr }, ptr %t143
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr null)
  %t147 = call ptr @__olang_region_home(ptr %t146)
  %t148 = icmp ne ptr %t147, null
  %t149 = select i1 %t148, ptr %t147, ptr %t141
  %t150 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 3
  %t151 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t150, i32 0, i32 1
  %t152 = load { i64, ptr }, ptr %t151
  %t153 = extractvalue { i64, ptr } %t152, 1
  %t154 = call ptr @__olang_region_or(ptr %t153, ptr null)
  %t155 = call ptr @__olang_region_home(ptr %t154)
  %t156 = icmp ne ptr %t155, null
  %t157 = select i1 %t156, ptr %t155, ptr %t149
  %t158 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 3
  %t159 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t158, i32 0, i32 0
  %t160 = load { i64, ptr }, ptr %t159
  %t161 = extractvalue { i64, ptr } %t160, 1
  %t162 = call ptr @__olang_region_or(ptr %t161, ptr null)
  %t163 = call ptr @__olang_region_home(ptr %t162)
  %t164 = icmp ne ptr %t163, null
  %t165 = select i1 %t164, ptr %t163, ptr %t157
  %t166 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 2
  %t167 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t166, i32 0, i32 2
  %t168 = load { i64, ptr }, ptr %t167
  %t169 = extractvalue { i64, ptr } %t168, 1
  %t170 = call ptr @__olang_region_or(ptr %t169, ptr null)
  %t171 = call ptr @__olang_region_home(ptr %t170)
  %t172 = icmp ne ptr %t171, null
  %t173 = select i1 %t172, ptr %t171, ptr %t165
  %t174 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 2
  %t175 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t174, i32 0, i32 1
  %t176 = load { i64, ptr }, ptr %t175
  %t177 = extractvalue { i64, ptr } %t176, 1
  %t178 = call ptr @__olang_region_or(ptr %t177, ptr null)
  %t179 = call ptr @__olang_region_home(ptr %t178)
  %t180 = icmp ne ptr %t179, null
  %t181 = select i1 %t180, ptr %t179, ptr %t173
  %t182 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 2
  %t183 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t182, i32 0, i32 0
  %t184 = load { i64, ptr }, ptr %t183
  %t185 = extractvalue { i64, ptr } %t184, 1
  %t186 = call ptr @__olang_region_or(ptr %t185, ptr null)
  %t187 = call ptr @__olang_region_home(ptr %t186)
  %t188 = icmp ne ptr %t187, null
  %t189 = select i1 %t188, ptr %t187, ptr %t181
  %t190 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 1
  %t191 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t190, i32 0, i32 2
  %t192 = load { i64, ptr }, ptr %t191
  %t193 = extractvalue { i64, ptr } %t192, 1
  %t194 = call ptr @__olang_region_or(ptr %t193, ptr null)
  %t195 = call ptr @__olang_region_home(ptr %t194)
  %t196 = icmp ne ptr %t195, null
  %t197 = select i1 %t196, ptr %t195, ptr %t189
  %t198 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 1
  %t199 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t198, i32 0, i32 1
  %t200 = load { i64, ptr }, ptr %t199
  %t201 = extractvalue { i64, ptr } %t200, 1
  %t202 = call ptr @__olang_region_or(ptr %t201, ptr null)
  %t203 = call ptr @__olang_region_home(ptr %t202)
  %t204 = icmp ne ptr %t203, null
  %t205 = select i1 %t204, ptr %t203, ptr %t197
  %t206 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 1
  %t207 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t206, i32 0, i32 0
  %t208 = load { i64, ptr }, ptr %t207
  %t209 = extractvalue { i64, ptr } %t208, 1
  %t210 = call ptr @__olang_region_or(ptr %t209, ptr null)
  %t211 = call ptr @__olang_region_home(ptr %t210)
  %t212 = icmp ne ptr %t211, null
  %t213 = select i1 %t212, ptr %t211, ptr %t205
  %t214 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 0
  %t215 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t214, i32 0, i32 2
  %t216 = load { i64, ptr }, ptr %t215
  %t217 = extractvalue { i64, ptr } %t216, 1
  %t218 = call ptr @__olang_region_or(ptr %t217, ptr null)
  %t219 = call ptr @__olang_region_home(ptr %t218)
  %t220 = icmp ne ptr %t219, null
  %t221 = select i1 %t220, ptr %t219, ptr %t213
  %t222 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 0
  %t223 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t222, i32 0, i32 1
  %t224 = load { i64, ptr }, ptr %t223
  %t225 = extractvalue { i64, ptr } %t224, 1
  %t226 = call ptr @__olang_region_or(ptr %t225, ptr null)
  %t227 = call ptr @__olang_region_home(ptr %t226)
  %t228 = icmp ne ptr %t227, null
  %t229 = select i1 %t228, ptr %t227, ptr %t221
  %t230 = getelementptr %"compiler/mir:GenInfo", ptr %l105, i32 0, i32 0
  %t231 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t230, i32 0, i32 0
  %t232 = load { i64, ptr }, ptr %t231
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = call ptr @__olang_region_or(ptr %t233, ptr null)
  %t235 = call ptr @__olang_region_home(ptr %t234)
  %t236 = icmp ne ptr %t235, null
  %t237 = select i1 %t236, ptr %t235, ptr %t229
  %t238 = icmp eq ptr %t237, %t37
  call void @__olang_region_settle(ptr %t37, i1 %t238)
  br label %bb10
bb10:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l105, i64 632, i1 false)
  store i1 false, ptr %l8, !tbaa !21
  %t239 = ptrtoint ptr %v1 to i64
  store i64 %t239, ptr %l107, !tbaa !24
  %t240 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e7
  br i1 %t240, label %bb11, label %bb12
bb11:
  %t242 = call ptr @__olang_region_make(ptr %v1)
  %t243 = ptrtoint ptr %t242 to i64
  store i64 %t243, ptr %l107, !tbaa !24
  br label %bb12
bb12:
  %t244 = load i64, ptr %l107
  %t245 = inttoptr i64 %t244 to ptr
  %t246 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e(ptr %t245)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t246, ptr %l109
  br label %bb13
bb13:
  %t247 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e7
  br i1 %t247, label %bb14, label %bb15
bb14:
  %t249 = load i64, ptr %l107
  %t250 = inttoptr i64 %t249 to ptr
  %t251 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109, i32 0, i32 2
  %t252 = load { i64, ptr }, ptr %t251
  %t253 = extractvalue { i64, ptr } %t252, 1
  %t254 = call ptr @__olang_region_or(ptr %t253, ptr null)
  %t255 = call ptr @__olang_region_home(ptr %t254)
  %t256 = icmp ne ptr %t255, null
  %t257 = select i1 %t256, ptr %t255, ptr null
  %t258 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109, i32 0, i32 1
  %t259 = load { i64, ptr }, ptr %t258
  %t260 = extractvalue { i64, ptr } %t259, 1
  %t261 = call ptr @__olang_region_or(ptr %t260, ptr null)
  %t262 = call ptr @__olang_region_home(ptr %t261)
  %t263 = icmp ne ptr %t262, null
  %t264 = select i1 %t263, ptr %t262, ptr %t257
  %t265 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109, i32 0, i32 0
  %t266 = load { i64, ptr }, ptr %t265
  %t267 = extractvalue { i64, ptr } %t266, 1
  %t268 = call ptr @__olang_region_or(ptr %t267, ptr null)
  %t269 = call ptr @__olang_region_home(ptr %t268)
  %t270 = icmp ne ptr %t269, null
  %t271 = select i1 %t270, ptr %t269, ptr %t264
  %t272 = icmp eq ptr %t271, %t250
  call void @__olang_region_settle(ptr %t250, i1 %t272)
  br label %bb15
bb15:
  %t273 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l109
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t273, ptr %l9
  %t274 = ptrtoint ptr %v1 to i64
  store i64 %t274, ptr %l111, !tbaa !24
  %t275 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e8
  br i1 %t275, label %bb16, label %bb17
bb16:
  %t277 = call ptr @__olang_region_make(ptr %v1)
  %t278 = ptrtoint ptr %t277 to i64
  store i64 %t278, ptr %l111, !tbaa !24
  br label %bb17
bb17:
  %t279 = load i64, ptr %l111
  %t280 = inttoptr i64 %t279 to ptr
  %t281 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %t280, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l113
  br label %bb18
bb18:
  %t282 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e8
  br i1 %t282, label %bb19, label %bb20
bb19:
  %t284 = load i64, ptr %l111
  %t285 = inttoptr i64 %t284 to ptr
  %t286 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113, i32 0, i32 0
  %t287 = load { i64, ptr }, ptr %t286
  %t288 = extractvalue { i64, ptr } %t287, 1
  %t289 = call ptr @__olang_region_or(ptr %t288, ptr null)
  %t290 = call ptr @__olang_region_home(ptr %t289)
  %t291 = icmp ne ptr %t290, null
  %t292 = select i1 %t291, ptr %t290, ptr null
  %t293 = icmp eq ptr %t292, %t285
  call void @__olang_region_settle(ptr %t285, i1 %t293)
  br label %bb20
bb20:
  %t294 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l113
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t294, ptr %l10
  store i64 268435456, ptr %l11, !tbaa !24
  store i64 2000, ptr %l12, !tbaa !24
  store i64 0, ptr %l13, !tbaa !24
  %t295 = ptrtoint ptr %v1 to i64
  store i64 %t295, ptr %l115, !tbaa !24
  %t296 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e12
  br i1 %t296, label %bb21, label %bb22
bb21:
  %t298 = call ptr @__olang_region_make(ptr %v1)
  %t299 = ptrtoint ptr %t298 to i64
  store i64 %t299, ptr %l115, !tbaa !24
  br label %bb22
bb22:
  %t300 = load i64, ptr %l115
  %t301 = inttoptr i64 %t300 to ptr
  %t302 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t301, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t302, ptr %l117
  br label %bb23
bb23:
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e12
  br i1 %t303, label %bb24, label %bb25
bb24:
  %t305 = load i64, ptr %l115
  %t306 = inttoptr i64 %t305 to ptr
  %t307 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117, i32 0, i32 0
  %t308 = load { i64, ptr }, ptr %t307
  %t309 = extractvalue { i64, ptr } %t308, 1
  %t310 = call ptr @__olang_region_or(ptr %t309, ptr null)
  %t311 = call ptr @__olang_region_home(ptr %t310)
  %t312 = icmp ne ptr %t311, null
  %t313 = select i1 %t312, ptr %t311, ptr null
  %t314 = icmp eq ptr %t313, %t306
  call void @__olang_region_settle(ptr %t306, i1 %t314)
  br label %bb25
bb25:
  %t315 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l117
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t315, ptr %l14
  %t316 = ptrtoint ptr %v1 to i64
  store i64 %t316, ptr %l119, !tbaa !24
  %t317 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e13
  br i1 %t317, label %bb26, label %bb27
bb26:
  %t319 = call ptr @__olang_region_make(ptr %v1)
  %t320 = ptrtoint ptr %t319 to i64
  store i64 %t320, ptr %l119, !tbaa !24
  br label %bb27
bb27:
  %t321 = load i64, ptr %l119
  %t322 = inttoptr i64 %t321 to ptr
  %t323 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %t322, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t323, ptr %l121
  br label %bb28
bb28:
  %t324 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e13
  br i1 %t324, label %bb29, label %bb30
bb29:
  %t326 = load i64, ptr %l119
  %t327 = inttoptr i64 %t326 to ptr
  %t328 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l121, i32 0, i32 0
  %t329 = load { i64, ptr }, ptr %t328
  %t330 = extractvalue { i64, ptr } %t329, 1
  %t331 = call ptr @__olang_region_or(ptr %t330, ptr null)
  %t332 = call ptr @__olang_region_home(ptr %t331)
  %t333 = icmp ne ptr %t332, null
  %t334 = select i1 %t333, ptr %t332, ptr null
  %t335 = icmp eq ptr %t334, %t327
  call void @__olang_region_settle(ptr %t327, i1 %t335)
  br label %bb30
bb30:
  %t336 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l121
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t336, ptr %l15
  store i64 0, ptr %l16, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  store i1 false, ptr %l18, !tbaa !21
  %t337 = ptrtoint ptr %v1 to i64
  store i64 %t337, ptr %l123, !tbaa !24
  %t338 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e17
  br i1 %t338, label %bb31, label %bb32
bb31:
  %t340 = call ptr @__olang_region_make(ptr %v1)
  %t341 = ptrtoint ptr %t340 to i64
  store i64 %t341, ptr %l123, !tbaa !24
  br label %bb32
bb32:
  %t342 = load i64, ptr %l123
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t343)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t344, ptr %l125
  br label %bb33
bb33:
  %t345 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e17
  br i1 %t345, label %bb34, label %bb35
bb34:
  %t347 = load i64, ptr %l123
  %t348 = inttoptr i64 %t347 to ptr
  %t349 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l125, i32 0, i32 2
  %t350 = load { i64, ptr }, ptr %t349
  %t351 = extractvalue { i64, ptr } %t350, 1
  %t352 = call ptr @__olang_region_or(ptr %t351, ptr null)
  %t353 = call ptr @__olang_region_home(ptr %t352)
  %t354 = icmp ne ptr %t353, null
  %t355 = select i1 %t354, ptr %t353, ptr null
  %t356 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l125, i32 0, i32 1
  %t357 = load { i64, ptr }, ptr %t356
  %t358 = extractvalue { i64, ptr } %t357, 1
  %t359 = call ptr @__olang_region_or(ptr %t358, ptr null)
  %t360 = call ptr @__olang_region_home(ptr %t359)
  %t361 = icmp ne ptr %t360, null
  %t362 = select i1 %t361, ptr %t360, ptr %t355
  %t363 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l125, i32 0, i32 0
  %t364 = load { i64, ptr }, ptr %t363
  %t365 = extractvalue { i64, ptr } %t364, 1
  %t366 = call ptr @__olang_region_or(ptr %t365, ptr null)
  %t367 = call ptr @__olang_region_home(ptr %t366)
  %t368 = icmp ne ptr %t367, null
  %t369 = select i1 %t368, ptr %t367, ptr %t362
  %t370 = icmp eq ptr %t369, %t348
  call void @__olang_region_settle(ptr %t348, i1 %t370)
  br label %bb35
bb35:
  %t371 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l125
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t371, ptr %l19
  %t372 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t372, ptr %l20
  %t374 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t374, ptr %l21, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t376
  %t377 = getelementptr { i64, [5 x i64] }, ptr %t376, i32 0, i32 0
  store i64 0, ptr %t377
  %t378 = load { i64, [5 x i64] }, ptr %t376
  store { i64, [5 x i64] } %t378, ptr %l22
  store i64 -1, ptr %l23, !tbaa !24
  store i1 false, ptr %l24, !tbaa !21
  store i1 false, ptr %l25, !tbaa !21
  %t380 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t380, ptr %l130
  br label %bb36
bb36:
  %t381 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l130
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t381, ptr %l26
  %t382 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t382, ptr %l131
  br label %bb37
bb37:
  %t383 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l131
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t383, ptr %l27
  call void @llvm.memset.p0.i64(ptr %l132, i8 0, i64 264, i1 false)
  %t384 = icmp sgt i64 64, 0
  br i1 %t384, label %bb38, label %bb39
bb38:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3acfn(ptr %t386, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l134, ptr %t386, i64 264, i1 false)
  br label %bb40
bb39:
  %t387 = icmp sge i64 64, 0
  br i1 %t387, label %bb41, label %bb42
bb40:
  call void @llvm.memmove.p0.p0.i64(ptr %l132, ptr %l134, i64 264, i1 false)
  br label %bb39
bb41:
  %t389 = icmp sle i64 64, 34937015291116575
  br i1 %t389, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_cc08951c194f6b90_8a6bb4cf02ef6404)
  unreachable
bb43:
  %t391 = mul i64 64, 264
  %t392 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t391)
  store i64 0, ptr %t393
  br label %fill.394
fill.394:
  %t397 = load i64, ptr %t393
  %t398 = icmp slt i64 %t397, 64
  br i1 %t398, label %fillb.395, label %filld.396
fillb.395:
  %t399 = getelementptr %"compiler/eval:cfn", ptr %t392, i64 %t397
  call void @llvm.memmove.p0.p0.i64(ptr %t399, ptr %l132, i64 264, i1 false)
  %t400 = add i64 %t397, 1
  store i64 %t400, ptr %t393
  br label %fill.394
filld.396:
  %t401 = insertvalue { i64, ptr } undef, i64 64, 0
  %t402 = insertvalue { i64, ptr } %t401, ptr %t392, 1
  store { i64, ptr } %t402, ptr %l28, !tbaa !27
  %t404 = ptrtoint ptr %v1 to i64
  store i64 %t404, ptr %l138, !tbaa !24
  %t405 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e27
  br i1 %t405, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_cc08951c194f6b90_8a6bb4cf02ef6404)
  unreachable
bb45:
  %t407 = call ptr @__olang_region_make(ptr %v1)
  %t408 = ptrtoint ptr %t407 to i64
  store i64 %t408, ptr %l138, !tbaa !24
  br label %bb46
bb46:
  %t409 = icmp sge i64 1024, 0
  br i1 %t409, label %bb47, label %bb48
bb47:
  %t411 = icmp sle i64 1024, 1152921504606846975
  br i1 %t411, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_dae68cb4e78893bd_9d05ee8fba2ee511)
  unreachable
bb49:
  %t413 = mul i64 1024, 8
  %t414 = load i64, ptr %l138
  %t415 = inttoptr i64 %t414 to ptr
  %t416 = call ptr @__olang_scope_alloc(ptr %t415, i64 %t413)
  store i64 0, ptr %t417
  br label %fill.418
fill.418:
  %t421 = load i64, ptr %t417
  %t422 = icmp slt i64 %t421, 1024
  br i1 %t422, label %fillb.419, label %filld.420
fillb.419:
  %t423 = getelementptr i64, ptr %t416, i64 %t421
  store i64 -1, ptr %t423
  %t424 = add i64 %t421, 1
  store i64 %t424, ptr %t417
  br label %fill.418
filld.420:
  %t425 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t426 = insertvalue { i64, ptr } %t425, ptr %t416, 1
  store { i64, ptr } %t426, ptr %l29, !tbaa !27
  %t428 = ptrtoint ptr %v1 to i64
  store i64 %t428, ptr %l143, !tbaa !24
  %t429 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e28
  br i1 %t429, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_dae68cb4e78893bd_9d05ee8fba2ee511)
  unreachable
bb51:
  %t431 = call ptr @__olang_region_make(ptr %v1)
  %t432 = ptrtoint ptr %t431 to i64
  store i64 %t432, ptr %l143, !tbaa !24
  br label %bb52
bb52:
  %t433 = icmp sge i64 1024, 0
  br i1 %t433, label %bb53, label %bb54
bb53:
  %t435 = icmp sle i64 1024, 1152921504606846975
  br i1 %t435, label %bb55, label %bb56
bb54:
  call void @__olang_check_failed(ptr @olang_loc_345703ed03c4ae7e_2d508d6edb3102f2)
  unreachable
bb55:
  %t437 = mul i64 1024, 8
  %t438 = load i64, ptr %l143
  %t439 = inttoptr i64 %t438 to ptr
  %t440 = call ptr @__olang_scope_alloc(ptr %t439, i64 %t437)
  store i64 0, ptr %t441
  br label %fill.442
fill.442:
  %t445 = load i64, ptr %t441
  %t446 = icmp slt i64 %t445, 1024
  br i1 %t446, label %fillb.443, label %filld.444
fillb.443:
  %t447 = getelementptr i64, ptr %t440, i64 %t445
  store i64 -1, ptr %t447
  %t448 = add i64 %t445, 1
  store i64 %t448, ptr %t441
  br label %fill.442
filld.444:
  %t449 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t450 = insertvalue { i64, ptr } %t449, ptr %t440, 1
  store { i64, ptr } %t450, ptr %l30, !tbaa !27
  %t452 = ptrtoint ptr %v1 to i64
  store i64 %t452, ptr %l148, !tbaa !24
  %t453 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e29
  br i1 %t453, label %bb57, label %bb58
bb56:
  call void @__olang_check_failed(ptr @olang_loc_345703ed03c4ae7e_2d508d6edb3102f2)
  unreachable
bb57:
  %t455 = call ptr @__olang_region_make(ptr %v1)
  %t456 = ptrtoint ptr %t455 to i64
  store i64 %t456, ptr %l148, !tbaa !24
  br label %bb58
bb58:
  %t457 = icmp sge i64 1024, 0
  br i1 %t457, label %bb59, label %bb60
bb59:
  %t459 = icmp sle i64 1024, 1152921504606846975
  br i1 %t459, label %bb61, label %bb62
bb60:
  call void @__olang_check_failed(ptr @olang_loc_956eea0cec0303b3_853c962c10b536e7)
  unreachable
bb61:
  %t461 = mul i64 1024, 8
  %t462 = load i64, ptr %l148
  %t463 = inttoptr i64 %t462 to ptr
  %t464 = call ptr @__olang_scope_alloc(ptr %t463, i64 %t461)
  store i64 0, ptr %t465
  br label %fill.466
fill.466:
  %t469 = load i64, ptr %t465
  %t470 = icmp slt i64 %t469, 1024
  br i1 %t470, label %fillb.467, label %filld.468
fillb.467:
  %t471 = getelementptr i64, ptr %t464, i64 %t469
  store i64 -1, ptr %t471
  %t472 = add i64 %t469, 1
  store i64 %t472, ptr %t465
  br label %fill.466
filld.468:
  %t473 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t474 = insertvalue { i64, ptr } %t473, ptr %t464, 1
  store { i64, ptr } %t474, ptr %l31, !tbaa !27
  %t476 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t476, ptr %l153
  br label %bb63
bb62:
  call void @__olang_check_failed(ptr @olang_loc_956eea0cec0303b3_853c962c10b536e7)
  unreachable
bb63:
  %t477 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l153
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t477, ptr %l32
  %t478 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t478, ptr %l154
  br label %bb64
bb64:
  %t479 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l154
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t479, ptr %l33
  %t480 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t480, ptr %l155
  br label %bb65
bb65:
  %t481 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t481, ptr %l34
  %t482 = ptrtoint ptr %v1 to i64
  store i64 %t482, ptr %l156, !tbaa !24
  %t483 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e33
  br i1 %t483, label %bb66, label %bb67
bb66:
  %t485 = call ptr @__olang_region_make(ptr %v1)
  %t486 = ptrtoint ptr %t485 to i64
  store i64 %t486, ptr %l156, !tbaa !24
  br label %bb67
bb67:
  %t487 = load i64, ptr %l156
  %t488 = inttoptr i64 %t487 to ptr
  %t489 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t488, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t489, ptr %l158
  br label %bb68
bb68:
  %t490 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e33
  br i1 %t490, label %bb69, label %bb70
bb69:
  %t492 = load i64, ptr %l156
  %t493 = inttoptr i64 %t492 to ptr
  %t494 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l158, i32 0, i32 0
  %t495 = load { i64, ptr }, ptr %t494
  %t496 = extractvalue { i64, ptr } %t495, 1
  %t497 = call ptr @__olang_region_or(ptr %t496, ptr null)
  %t498 = call ptr @__olang_region_home(ptr %t497)
  %t499 = icmp ne ptr %t498, null
  %t500 = select i1 %t499, ptr %t498, ptr null
  %t501 = icmp eq ptr %t500, %t493
  call void @__olang_region_settle(ptr %t493, i1 %t501)
  br label %bb70
bb70:
  %t502 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l158
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t502, ptr %l35
  %t503 = ptrtoint ptr %v1 to i64
  store i64 %t503, ptr %l160, !tbaa !24
  %t504 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e34
  br i1 %t504, label %bb71, label %bb72
bb71:
  %t506 = call ptr @__olang_region_make(ptr %v1)
  %t507 = ptrtoint ptr %t506 to i64
  store i64 %t507, ptr %l160, !tbaa !24
  br label %bb72
bb72:
  %t508 = load i64, ptr %l160
  %t509 = inttoptr i64 %t508 to ptr
  %t510 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %t509)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t510, ptr %l162
  br label %bb73
bb73:
  %t511 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e34
  br i1 %t511, label %bb74, label %bb75
bb74:
  %t513 = load i64, ptr %l160
  %t514 = inttoptr i64 %t513 to ptr
  %t515 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162, i32 0, i32 2
  %t516 = load { i64, ptr }, ptr %t515
  %t517 = extractvalue { i64, ptr } %t516, 1
  %t518 = call ptr @__olang_region_or(ptr %t517, ptr null)
  %t519 = call ptr @__olang_region_home(ptr %t518)
  %t520 = icmp ne ptr %t519, null
  %t521 = select i1 %t520, ptr %t519, ptr null
  %t522 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162, i32 0, i32 1
  %t523 = load { i64, ptr }, ptr %t522
  %t524 = extractvalue { i64, ptr } %t523, 1
  %t525 = call ptr @__olang_region_or(ptr %t524, ptr null)
  %t526 = call ptr @__olang_region_home(ptr %t525)
  %t527 = icmp ne ptr %t526, null
  %t528 = select i1 %t527, ptr %t526, ptr %t521
  %t529 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162, i32 0, i32 0
  %t530 = load { i64, ptr }, ptr %t529
  %t531 = extractvalue { i64, ptr } %t530, 1
  %t532 = call ptr @__olang_region_or(ptr %t531, ptr null)
  %t533 = call ptr @__olang_region_home(ptr %t532)
  %t534 = icmp ne ptr %t533, null
  %t535 = select i1 %t534, ptr %t533, ptr %t528
  %t536 = icmp eq ptr %t535, %t514
  call void @__olang_region_settle(ptr %t514, i1 %t536)
  br label %bb75
bb75:
  %t537 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l162
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t537, ptr %l36
  %t538 = ptrtoint ptr %v1 to i64
  store i64 %t538, ptr %l164, !tbaa !24
  %t539 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e35
  br i1 %t539, label %bb76, label %bb77
bb76:
  %t541 = call ptr @__olang_region_make(ptr %v1)
  %t542 = ptrtoint ptr %t541 to i64
  store i64 %t542, ptr %l164, !tbaa !24
  br label %bb77
bb77:
  %t543 = load i64, ptr %l164
  %t544 = inttoptr i64 %t543 to ptr
  %t545 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t544)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t545, ptr %l166
  br label %bb78
bb78:
  %t546 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e35
  br i1 %t546, label %bb79, label %bb80
bb79:
  %t548 = load i64, ptr %l164
  %t549 = inttoptr i64 %t548 to ptr
  %t550 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l166, i32 0, i32 2
  %t551 = load { i64, ptr }, ptr %t550
  %t552 = extractvalue { i64, ptr } %t551, 1
  %t553 = call ptr @__olang_region_or(ptr %t552, ptr null)
  %t554 = call ptr @__olang_region_home(ptr %t553)
  %t555 = icmp ne ptr %t554, null
  %t556 = select i1 %t555, ptr %t554, ptr null
  %t557 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l166, i32 0, i32 1
  %t558 = load { i64, ptr }, ptr %t557
  %t559 = extractvalue { i64, ptr } %t558, 1
  %t560 = call ptr @__olang_region_or(ptr %t559, ptr null)
  %t561 = call ptr @__olang_region_home(ptr %t560)
  %t562 = icmp ne ptr %t561, null
  %t563 = select i1 %t562, ptr %t561, ptr %t556
  %t564 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l166, i32 0, i32 0
  %t565 = load { i64, ptr }, ptr %t564
  %t566 = extractvalue { i64, ptr } %t565, 1
  %t567 = call ptr @__olang_region_or(ptr %t566, ptr null)
  %t568 = call ptr @__olang_region_home(ptr %t567)
  %t569 = icmp ne ptr %t568, null
  %t570 = select i1 %t569, ptr %t568, ptr %t563
  %t571 = icmp eq ptr %t570, %t549
  call void @__olang_region_settle(ptr %t549, i1 %t571)
  br label %bb80
bb80:
  %t572 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l166
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t572, ptr %l37
  %t573 = ptrtoint ptr %v1 to i64
  store i64 %t573, ptr %l168, !tbaa !24
  %t574 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e36
  br i1 %t574, label %bb81, label %bb82
bb81:
  %t576 = call ptr @__olang_region_make(ptr %v1)
  %t577 = ptrtoint ptr %t576 to i64
  store i64 %t577, ptr %l168, !tbaa !24
  br label %bb82
bb82:
  %t578 = load i64, ptr %l168
  %t579 = inttoptr i64 %t578 to ptr
  %t580 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t579)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t580, ptr %l170
  br label %bb83
bb83:
  %t581 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e36
  br i1 %t581, label %bb84, label %bb85
bb84:
  %t583 = load i64, ptr %l168
  %t584 = inttoptr i64 %t583 to ptr
  %t585 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l170, i32 0, i32 2
  %t586 = load { i64, ptr }, ptr %t585
  %t587 = extractvalue { i64, ptr } %t586, 1
  %t588 = call ptr @__olang_region_or(ptr %t587, ptr null)
  %t589 = call ptr @__olang_region_home(ptr %t588)
  %t590 = icmp ne ptr %t589, null
  %t591 = select i1 %t590, ptr %t589, ptr null
  %t592 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l170, i32 0, i32 1
  %t593 = load { i64, ptr }, ptr %t592
  %t594 = extractvalue { i64, ptr } %t593, 1
  %t595 = call ptr @__olang_region_or(ptr %t594, ptr null)
  %t596 = call ptr @__olang_region_home(ptr %t595)
  %t597 = icmp ne ptr %t596, null
  %t598 = select i1 %t597, ptr %t596, ptr %t591
  %t599 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l170, i32 0, i32 0
  %t600 = load { i64, ptr }, ptr %t599
  %t601 = extractvalue { i64, ptr } %t600, 1
  %t602 = call ptr @__olang_region_or(ptr %t601, ptr null)
  %t603 = call ptr @__olang_region_home(ptr %t602)
  %t604 = icmp ne ptr %t603, null
  %t605 = select i1 %t604, ptr %t603, ptr %t598
  %t606 = icmp eq ptr %t605, %t584
  call void @__olang_region_settle(ptr %t584, i1 %t606)
  br label %bb85
bb85:
  %t607 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l170
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t607, ptr %l38
  %t608 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2fmir_3aFnKey_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t608, ptr %l172
  br label %bb86
bb86:
  %t609 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l172
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t609, ptr %l39
  %t610 = ptrtoint ptr %v1 to i64
  store i64 %t610, ptr %l173, !tbaa !24
  %t611 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e38
  br i1 %t611, label %bb87, label %bb88
bb87:
  %t613 = call ptr @__olang_region_make(ptr %v1)
  %t614 = ptrtoint ptr %t613 to i64
  store i64 %t614, ptr %l173, !tbaa !24
  br label %bb88
bb88:
  %t615 = load i64, ptr %l173
  %t616 = inttoptr i64 %t615 to ptr
  %t617 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e(ptr %t616)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t617, ptr %l175
  br label %bb89
bb89:
  %t618 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e38
  br i1 %t618, label %bb90, label %bb91
bb90:
  %t620 = load i64, ptr %l173
  %t621 = inttoptr i64 %t620 to ptr
  %t622 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 2
  %t623 = load { i64, ptr }, ptr %t622
  %t624 = extractvalue { i64, ptr } %t623, 1
  %t625 = call ptr @__olang_region_or(ptr %t624, ptr null)
  %t626 = call ptr @__olang_region_home(ptr %t625)
  %t627 = icmp ne ptr %t626, null
  %t628 = select i1 %t627, ptr %t626, ptr null
  %t629 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 1
  %t630 = load { i64, ptr }, ptr %t629
  %t631 = extractvalue { i64, ptr } %t630, 1
  %t632 = call ptr @__olang_region_or(ptr %t631, ptr null)
  %t633 = call ptr @__olang_region_home(ptr %t632)
  %t634 = icmp ne ptr %t633, null
  %t635 = select i1 %t634, ptr %t633, ptr %t628
  %t636 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175, i32 0, i32 0
  %t637 = load { i64, ptr }, ptr %t636
  %t638 = extractvalue { i64, ptr } %t637, 1
  %t639 = call ptr @__olang_region_or(ptr %t638, ptr null)
  %t640 = call ptr @__olang_region_home(ptr %t639)
  %t641 = icmp ne ptr %t640, null
  %t642 = select i1 %t641, ptr %t640, ptr %t635
  %t643 = icmp eq ptr %t642, %t621
  call void @__olang_region_settle(ptr %t621, i1 %t643)
  br label %bb91
bb91:
  %t644 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l175
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t644, ptr %l40
  %t645 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKey_3e_26_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t645, ptr %l177
  br label %bb92
bb92:
  %t646 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l177
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t646, ptr %l41
  %t647 = ptrtoint ptr %v1 to i64
  store i64 %t647, ptr %l178, !tbaa !24
  %t648 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e40
  br i1 %t648, label %bb93, label %bb94
bb93:
  %t650 = call ptr @__olang_region_make(ptr %v1)
  %t651 = ptrtoint ptr %t650 to i64
  store i64 %t651, ptr %l178, !tbaa !24
  br label %bb94
bb94:
  %t652 = load i64, ptr %l178
  %t653 = inttoptr i64 %t652 to ptr
  %t654 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t653)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t654, ptr %l180
  br label %bb95
bb95:
  %t655 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e40
  br i1 %t655, label %bb96, label %bb97
bb96:
  %t657 = load i64, ptr %l178
  %t658 = inttoptr i64 %t657 to ptr
  %t659 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l180, i32 0, i32 2
  %t660 = load { i64, ptr }, ptr %t659
  %t661 = extractvalue { i64, ptr } %t660, 1
  %t662 = call ptr @__olang_region_or(ptr %t661, ptr null)
  %t663 = call ptr @__olang_region_home(ptr %t662)
  %t664 = icmp ne ptr %t663, null
  %t665 = select i1 %t664, ptr %t663, ptr null
  %t666 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l180, i32 0, i32 1
  %t667 = load { i64, ptr }, ptr %t666
  %t668 = extractvalue { i64, ptr } %t667, 1
  %t669 = call ptr @__olang_region_or(ptr %t668, ptr null)
  %t670 = call ptr @__olang_region_home(ptr %t669)
  %t671 = icmp ne ptr %t670, null
  %t672 = select i1 %t671, ptr %t670, ptr %t665
  %t673 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l180, i32 0, i32 0
  %t674 = load { i64, ptr }, ptr %t673
  %t675 = extractvalue { i64, ptr } %t674, 1
  %t676 = call ptr @__olang_region_or(ptr %t675, ptr null)
  %t677 = call ptr @__olang_region_home(ptr %t676)
  %t678 = icmp ne ptr %t677, null
  %t679 = select i1 %t678, ptr %t677, ptr %t672
  %t680 = icmp eq ptr %t679, %t658
  call void @__olang_region_settle(ptr %t658, i1 %t680)
  br label %bb97
bb97:
  %t681 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l180
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t681, ptr %l42
  %t682 = ptrtoint ptr %v1 to i64
  store i64 %t682, ptr %l182, !tbaa !24
  %t683 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e41
  br i1 %t683, label %bb98, label %bb99
bb98:
  %t685 = call ptr @__olang_region_make(ptr %v1)
  %t686 = ptrtoint ptr %t685 to i64
  store i64 %t686, ptr %l182, !tbaa !24
  br label %bb99
bb99:
  %t687 = load i64, ptr %l182
  %t688 = inttoptr i64 %t687 to ptr
  %t689 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t688)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t689, ptr %l184
  br label %bb100
bb100:
  %t690 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e41
  br i1 %t690, label %bb101, label %bb102
bb101:
  %t692 = load i64, ptr %l182
  %t693 = inttoptr i64 %t692 to ptr
  %t694 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 2
  %t695 = load { i64, ptr }, ptr %t694
  %t696 = extractvalue { i64, ptr } %t695, 1
  %t697 = call ptr @__olang_region_or(ptr %t696, ptr null)
  %t698 = call ptr @__olang_region_home(ptr %t697)
  %t699 = icmp ne ptr %t698, null
  %t700 = select i1 %t699, ptr %t698, ptr null
  %t701 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 1
  %t702 = load { i64, ptr }, ptr %t701
  %t703 = extractvalue { i64, ptr } %t702, 1
  %t704 = call ptr @__olang_region_or(ptr %t703, ptr null)
  %t705 = call ptr @__olang_region_home(ptr %t704)
  %t706 = icmp ne ptr %t705, null
  %t707 = select i1 %t706, ptr %t705, ptr %t700
  %t708 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184, i32 0, i32 0
  %t709 = load { i64, ptr }, ptr %t708
  %t710 = extractvalue { i64, ptr } %t709, 1
  %t711 = call ptr @__olang_region_or(ptr %t710, ptr null)
  %t712 = call ptr @__olang_region_home(ptr %t711)
  %t713 = icmp ne ptr %t712, null
  %t714 = select i1 %t713, ptr %t712, ptr %t707
  %t715 = icmp eq ptr %t714, %t693
  call void @__olang_region_settle(ptr %t693, i1 %t715)
  br label %bb102
bb102:
  %t716 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l184
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t716, ptr %l43
  %t717 = ptrtoint ptr %v1 to i64
  store i64 %t717, ptr %l186, !tbaa !24
  %t718 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e42
  br i1 %t718, label %bb103, label %bb104
bb103:
  %t720 = call ptr @__olang_region_make(ptr %v1)
  %t721 = ptrtoint ptr %t720 to i64
  store i64 %t721, ptr %l186, !tbaa !24
  br label %bb104
bb104:
  %t722 = load i64, ptr %l186
  %t723 = inttoptr i64 %t722 to ptr
  %t724 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ector(ptr %t723, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t724, ptr %l188
  br label %bb105
bb105:
  %t725 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e42
  br i1 %t725, label %bb106, label %bb107
bb106:
  %t727 = load i64, ptr %l186
  %t728 = inttoptr i64 %t727 to ptr
  %t729 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188, i32 0, i32 0
  %t730 = load { i64, ptr }, ptr %t729
  %t731 = extractvalue { i64, ptr } %t730, 1
  %t732 = call ptr @__olang_region_or(ptr %t731, ptr null)
  %t733 = call ptr @__olang_region_home(ptr %t732)
  %t734 = icmp ne ptr %t733, null
  %t735 = select i1 %t734, ptr %t733, ptr null
  %t736 = icmp eq ptr %t735, %t728
  call void @__olang_region_settle(ptr %t728, i1 %t736)
  br label %bb107
bb107:
  %t737 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l188
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t737, ptr %l44
  %t738 = ptrtoint ptr %v1 to i64
  store i64 %t738, ptr %l190, !tbaa !24
  %t739 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e43
  br i1 %t739, label %bb108, label %bb109
bb108:
  %t741 = call ptr @__olang_region_make(ptr %v1)
  %t742 = ptrtoint ptr %t741 to i64
  store i64 %t742, ptr %l190, !tbaa !24
  br label %bb109
bb109:
  %t743 = load i64, ptr %l190
  %t744 = inttoptr i64 %t743 to ptr
  %t745 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e(ptr %t744)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t745, ptr %l192
  br label %bb110
bb110:
  %t746 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e43
  br i1 %t746, label %bb111, label %bb112
bb111:
  %t748 = load i64, ptr %l190
  %t749 = inttoptr i64 %t748 to ptr
  %t750 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 2
  %t751 = load { i64, ptr }, ptr %t750
  %t752 = extractvalue { i64, ptr } %t751, 1
  %t753 = call ptr @__olang_region_or(ptr %t752, ptr null)
  %t754 = call ptr @__olang_region_home(ptr %t753)
  %t755 = icmp ne ptr %t754, null
  %t756 = select i1 %t755, ptr %t754, ptr null
  %t757 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 1
  %t758 = load { i64, ptr }, ptr %t757
  %t759 = extractvalue { i64, ptr } %t758, 1
  %t760 = call ptr @__olang_region_or(ptr %t759, ptr null)
  %t761 = call ptr @__olang_region_home(ptr %t760)
  %t762 = icmp ne ptr %t761, null
  %t763 = select i1 %t762, ptr %t761, ptr %t756
  %t764 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192, i32 0, i32 0
  %t765 = load { i64, ptr }, ptr %t764
  %t766 = extractvalue { i64, ptr } %t765, 1
  %t767 = call ptr @__olang_region_or(ptr %t766, ptr null)
  %t768 = call ptr @__olang_region_home(ptr %t767)
  %t769 = icmp ne ptr %t768, null
  %t770 = select i1 %t769, ptr %t768, ptr %t763
  %t771 = icmp eq ptr %t770, %t749
  call void @__olang_region_settle(ptr %t749, i1 %t771)
  br label %bb112
bb112:
  %t772 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l192
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t772, ptr %l45
  %t773 = ptrtoint ptr %v1 to i64
  store i64 %t773, ptr %l194, !tbaa !24
  %t774 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e44
  br i1 %t774, label %bb113, label %bb114
bb113:
  %t776 = call ptr @__olang_region_make(ptr %v1)
  %t777 = ptrtoint ptr %t776 to i64
  store i64 %t777, ptr %l194, !tbaa !24
  br label %bb114
bb114:
  %t778 = load i64, ptr %l194
  %t779 = inttoptr i64 %t778 to ptr
  %t780 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e(ptr %t779)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t780, ptr %l196
  br label %bb115
bb115:
  %t781 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e44
  br i1 %t781, label %bb116, label %bb117
bb116:
  %t783 = load i64, ptr %l194
  %t784 = inttoptr i64 %t783 to ptr
  %t785 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196, i32 0, i32 2
  %t786 = load { i64, ptr }, ptr %t785
  %t787 = extractvalue { i64, ptr } %t786, 1
  %t788 = call ptr @__olang_region_or(ptr %t787, ptr null)
  %t789 = call ptr @__olang_region_home(ptr %t788)
  %t790 = icmp ne ptr %t789, null
  %t791 = select i1 %t790, ptr %t789, ptr null
  %t792 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196, i32 0, i32 1
  %t793 = load { i64, ptr }, ptr %t792
  %t794 = extractvalue { i64, ptr } %t793, 1
  %t795 = call ptr @__olang_region_or(ptr %t794, ptr null)
  %t796 = call ptr @__olang_region_home(ptr %t795)
  %t797 = icmp ne ptr %t796, null
  %t798 = select i1 %t797, ptr %t796, ptr %t791
  %t799 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196, i32 0, i32 0
  %t800 = load { i64, ptr }, ptr %t799
  %t801 = extractvalue { i64, ptr } %t800, 1
  %t802 = call ptr @__olang_region_or(ptr %t801, ptr null)
  %t803 = call ptr @__olang_region_home(ptr %t802)
  %t804 = icmp ne ptr %t803, null
  %t805 = select i1 %t804, ptr %t803, ptr %t798
  %t806 = icmp eq ptr %t805, %t784
  call void @__olang_region_settle(ptr %t784, i1 %t806)
  br label %bb117
bb117:
  %t807 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l196
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t807, ptr %l46
  %t808 = ptrtoint ptr %v1 to i64
  store i64 %t808, ptr %l198, !tbaa !24
  %t809 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e45
  br i1 %t809, label %bb118, label %bb119
bb118:
  %t811 = call ptr @__olang_region_make(ptr %v1)
  %t812 = ptrtoint ptr %t811 to i64
  store i64 %t812, ptr %l198, !tbaa !24
  br label %bb119
bb119:
  %t813 = icmp sge i64 8192, 0
  br i1 %t813, label %bb120, label %bb121
bb120:
  %t815 = icmp sle i64 8192, 1152921504606846975
  br i1 %t815, label %bb122, label %bb123
bb121:
  call void @__olang_check_failed(ptr @olang_loc_f8d056d05e46945c_b066e8956734d578)
  unreachable
bb122:
  %t817 = mul i64 8192, 8
  %t818 = load i64, ptr %l198
  %t819 = inttoptr i64 %t818 to ptr
  %t820 = call ptr @__olang_scope_alloc_zeroed(ptr %t819, i64 %t817)
  %t821 = insertvalue { i64, ptr } undef, i64 8192, 0
  %t822 = insertvalue { i64, ptr } %t821, ptr %t820, 1
  store { i64, ptr } %t822, ptr %l47, !tbaa !27
  %t824 = ptrtoint ptr %v1 to i64
  store i64 %t824, ptr %l203, !tbaa !24
  %t825 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e46
  br i1 %t825, label %bb124, label %bb125
bb123:
  call void @__olang_check_failed(ptr @olang_loc_f8d056d05e46945c_b066e8956734d578)
  unreachable
bb124:
  %t827 = call ptr @__olang_region_make(ptr %v1)
  %t828 = ptrtoint ptr %t827 to i64
  store i64 %t828, ptr %l203, !tbaa !24
  br label %bb125
bb125:
  %t829 = icmp sge i64 8192, 0
  br i1 %t829, label %bb126, label %bb127
bb126:
  %t831 = icmp sle i64 8192, 1152921504606846975
  br i1 %t831, label %bb128, label %bb129
bb127:
  call void @__olang_check_failed(ptr @olang_loc_d51e19176d62df29_641578e9eb8755e5)
  unreachable
bb128:
  %t833 = mul i64 8192, 8
  %t834 = load i64, ptr %l203
  %t835 = inttoptr i64 %t834 to ptr
  %t836 = call ptr @__olang_scope_alloc_zeroed(ptr %t835, i64 %t833)
  %t837 = insertvalue { i64, ptr } undef, i64 8192, 0
  %t838 = insertvalue { i64, ptr } %t837, ptr %t836, 1
  store { i64, ptr } %t838, ptr %l48, !tbaa !27
  store i64 8, ptr %l49, !tbaa !24
  %t840 = ptrtoint ptr %v1 to i64
  store i64 %t840, ptr %l208, !tbaa !24
  %t841 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e48
  br i1 %t841, label %bb130, label %bb131
bb129:
  call void @__olang_check_failed(ptr @olang_loc_d51e19176d62df29_641578e9eb8755e5)
  unreachable
bb130:
  %t843 = call ptr @__olang_region_make(ptr %v1)
  %t844 = ptrtoint ptr %t843 to i64
  store i64 %t844, ptr %l208, !tbaa !24
  br label %bb131
bb131:
  %t845 = icmp sge i64 64, 0
  br i1 %t845, label %bb132, label %bb133
bb132:
  %t847 = icmp sle i64 64, 1152921504606846975
  br i1 %t847, label %bb134, label %bb135
bb133:
  call void @__olang_check_failed(ptr @olang_loc_311cf37c7f5d32ea_160682b5288055c6)
  unreachable
bb134:
  %t849 = mul i64 64, 8
  %t850 = load i64, ptr %l208
  %t851 = inttoptr i64 %t850 to ptr
  %t852 = call ptr @__olang_scope_alloc_zeroed(ptr %t851, i64 %t849)
  %t853 = insertvalue { i64, ptr } undef, i64 64, 0
  %t854 = insertvalue { i64, ptr } %t853, ptr %t852, 1
  store { i64, ptr } %t854, ptr %l50, !tbaa !27
  %t856 = ptrtoint ptr %v1 to i64
  store i64 %t856, ptr %l213, !tbaa !24
  %t857 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e49
  br i1 %t857, label %bb136, label %bb137
bb135:
  call void @__olang_check_failed(ptr @olang_loc_311cf37c7f5d32ea_160682b5288055c6)
  unreachable
bb136:
  %t859 = call ptr @__olang_region_make(ptr %v1)
  %t860 = ptrtoint ptr %t859 to i64
  store i64 %t860, ptr %l213, !tbaa !24
  br label %bb137
bb137:
  store %"compiler/eval:alloc" zeroinitializer, ptr %l215
  %t861 = icmp sgt i64 1024, 0
  br i1 %t861, label %bb138, label %bb139
bb138:
  %t863 = call %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc()
  store %"compiler/eval:alloc" %t863, ptr %l217
  br label %bb140
bb139:
  %t864 = icmp sge i64 1024, 0
  br i1 %t864, label %bb141, label %bb142
bb140:
  %t866 = load %"compiler/eval:alloc", ptr %l217
  store %"compiler/eval:alloc" %t866, ptr %l215
  br label %bb139
bb141:
  %t867 = icmp sle i64 1024, 72057594037927935
  br i1 %t867, label %bb143, label %bb144
bb142:
  call void @__olang_check_failed(ptr @olang_loc_e738991863bfbdbf_25eece77a9bcd95b)
  unreachable
bb143:
  %t869 = mul i64 1024, 128
  %t870 = load i64, ptr %l213
  %t871 = inttoptr i64 %t870 to ptr
  %t872 = call ptr @__olang_scope_alloc(ptr %t871, i64 %t869)
  %t873 = load %"compiler/eval:alloc", ptr %l215
  store i64 0, ptr %t874
  br label %fill.875
fill.875:
  %t878 = load i64, ptr %t874
  %t879 = icmp slt i64 %t878, 1024
  br i1 %t879, label %fillb.876, label %filld.877
fillb.876:
  %t880 = getelementptr %"compiler/eval:alloc", ptr %t872, i64 %t878
  store %"compiler/eval:alloc" %t873, ptr %t880
  %t881 = add i64 %t878, 1
  store i64 %t881, ptr %t874
  br label %fill.875
filld.877:
  %t882 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t883 = insertvalue { i64, ptr } %t882, ptr %t872, 1
  store { i64, ptr } %t883, ptr %l51, !tbaa !27
  store i64 1, ptr %l52, !tbaa !24
  %t885 = ptrtoint ptr %v1 to i64
  store i64 %t885, ptr %l221, !tbaa !24
  %t886 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e51
  br i1 %t886, label %bb145, label %bb146
bb144:
  call void @__olang_check_failed(ptr @olang_loc_e738991863bfbdbf_25eece77a9bcd95b)
  unreachable
bb145:
  %t888 = call ptr @__olang_region_make(ptr %v1)
  %t889 = ptrtoint ptr %t888 to i64
  store i64 %t889, ptr %l221, !tbaa !24
  br label %bb146
bb146:
  %t890 = load i64, ptr %l221
  %t891 = inttoptr i64 %t890 to ptr
  %t892 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t891, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t892, ptr %l223
  br label %bb147
bb147:
  %t893 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e51
  br i1 %t893, label %bb148, label %bb149
bb148:
  %t895 = load i64, ptr %l221
  %t896 = inttoptr i64 %t895 to ptr
  %t897 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l223, i32 0, i32 0
  %t898 = load { i64, ptr }, ptr %t897
  %t899 = extractvalue { i64, ptr } %t898, 1
  %t900 = call ptr @__olang_region_or(ptr %t899, ptr null)
  %t901 = call ptr @__olang_region_home(ptr %t900)
  %t902 = icmp ne ptr %t901, null
  %t903 = select i1 %t902, ptr %t901, ptr null
  %t904 = icmp eq ptr %t903, %t896
  call void @__olang_region_settle(ptr %t896, i1 %t904)
  br label %bb149
bb149:
  %t905 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l223
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t905, ptr %l53
  %t906 = ptrtoint ptr %v1 to i64
  store i64 %t906, ptr %l225, !tbaa !24
  %t907 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e52
  br i1 %t907, label %bb150, label %bb151
bb150:
  %t909 = call ptr @__olang_region_make(ptr %v1)
  %t910 = ptrtoint ptr %t909 to i64
  store i64 %t910, ptr %l225, !tbaa !24
  br label %bb151
bb151:
  %t911 = load i64, ptr %l225
  %t912 = inttoptr i64 %t911 to ptr
  %t913 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ector(ptr %t912, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t913, ptr %l227
  br label %bb152
bb152:
  %t914 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e52
  br i1 %t914, label %bb153, label %bb154
bb153:
  %t916 = load i64, ptr %l225
  %t917 = inttoptr i64 %t916 to ptr
  %t918 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227, i32 0, i32 0
  %t919 = load { i64, ptr }, ptr %t918
  %t920 = extractvalue { i64, ptr } %t919, 1
  %t921 = call ptr @__olang_region_or(ptr %t920, ptr null)
  %t922 = call ptr @__olang_region_home(ptr %t921)
  %t923 = icmp ne ptr %t922, null
  %t924 = select i1 %t923, ptr %t922, ptr null
  %t925 = icmp eq ptr %t924, %t917
  call void @__olang_region_settle(ptr %t917, i1 %t925)
  br label %bb154
bb154:
  %t926 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l227
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t926, ptr %l54
  %t927 = ptrtoint ptr %v1 to i64
  store i64 %t927, ptr %l229, !tbaa !24
  %t928 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e53
  br i1 %t928, label %bb155, label %bb156
bb155:
  %t930 = call ptr @__olang_region_make(ptr %v1)
  %t931 = ptrtoint ptr %t930 to i64
  store i64 %t931, ptr %l229, !tbaa !24
  br label %bb156
bb156:
  %t932 = load i64, ptr %l229
  %t933 = inttoptr i64 %t932 to ptr
  %t934 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t933, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t934, ptr %l231
  br label %bb157
bb157:
  %t935 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e53
  br i1 %t935, label %bb158, label %bb159
bb158:
  %t937 = load i64, ptr %l229
  %t938 = inttoptr i64 %t937 to ptr
  %t939 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l231, i32 0, i32 0
  %t940 = load { i64, ptr }, ptr %t939
  %t941 = extractvalue { i64, ptr } %t940, 1
  %t942 = call ptr @__olang_region_or(ptr %t941, ptr null)
  %t943 = call ptr @__olang_region_home(ptr %t942)
  %t944 = icmp ne ptr %t943, null
  %t945 = select i1 %t944, ptr %t943, ptr null
  %t946 = icmp eq ptr %t945, %t938
  call void @__olang_region_settle(ptr %t938, i1 %t946)
  br label %bb159
bb159:
  %t947 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l231
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t947, ptr %l55
  %t948 = ptrtoint ptr %v1 to i64
  store i64 %t948, ptr %l233, !tbaa !24
  %t949 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e54
  br i1 %t949, label %bb160, label %bb161
bb160:
  %t951 = call ptr @__olang_region_make(ptr %v1)
  %t952 = ptrtoint ptr %t951 to i64
  store i64 %t952, ptr %l233, !tbaa !24
  br label %bb161
bb161:
  %t953 = load i64, ptr %l233
  %t954 = inttoptr i64 %t953 to ptr
  %t955 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2ector(ptr %t954, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t955, ptr %l235
  br label %bb162
bb162:
  %t956 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e54
  br i1 %t956, label %bb163, label %bb164
bb163:
  %t958 = load i64, ptr %l233
  %t959 = inttoptr i64 %t958 to ptr
  %t960 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l235, i32 0, i32 0
  %t961 = load { i64, ptr }, ptr %t960
  %t962 = extractvalue { i64, ptr } %t961, 1
  %t963 = call ptr @__olang_region_or(ptr %t962, ptr null)
  %t964 = call ptr @__olang_region_home(ptr %t963)
  %t965 = icmp ne ptr %t964, null
  %t966 = select i1 %t965, ptr %t964, ptr null
  %t967 = icmp eq ptr %t966, %t959
  call void @__olang_region_settle(ptr %t959, i1 %t967)
  br label %bb164
bb164:
  %t968 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l235
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t968, ptr %l56
  %t969 = ptrtoint ptr %v1 to i64
  store i64 %t969, ptr %l237, !tbaa !24
  %t970 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
  br i1 %t970, label %bb165, label %bb166
bb165:
  %t972 = call ptr @__olang_region_make(ptr %v1)
  %t973 = ptrtoint ptr %t972 to i64
  store i64 %t973, ptr %l237, !tbaa !24
  br label %bb166
bb166:
  %t974 = load i64, ptr %l237
  %t975 = inttoptr i64 %t974 to ptr
  %t976 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t975, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t976, ptr %l239
  br label %bb167
bb167:
  %t977 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
  br i1 %t977, label %bb168, label %bb169
bb168:
  %t979 = load i64, ptr %l237
  %t980 = inttoptr i64 %t979 to ptr
  %t981 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l239, i32 0, i32 0
  %t982 = load { i64, ptr }, ptr %t981
  %t983 = extractvalue { i64, ptr } %t982, 1
  %t984 = call ptr @__olang_region_or(ptr %t983, ptr null)
  %t985 = call ptr @__olang_region_home(ptr %t984)
  %t986 = icmp ne ptr %t985, null
  %t987 = select i1 %t986, ptr %t985, ptr null
  %t988 = icmp eq ptr %t987, %t980
  call void @__olang_region_settle(ptr %t980, i1 %t988)
  br label %bb169
bb169:
  %t989 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l239
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t989, ptr %l57
  %t990 = ptrtoint ptr %v1 to i64
  store i64 %t990, ptr %l241, !tbaa !24
  %t991 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e56
  br i1 %t991, label %bb170, label %bb171
bb170:
  %t993 = call ptr @__olang_region_make(ptr %v1)
  %t994 = ptrtoint ptr %t993 to i64
  store i64 %t994, ptr %l241, !tbaa !24
  br label %bb171
bb171:
  %t995 = load i64, ptr %l241
  %t996 = inttoptr i64 %t995 to ptr
  %t997 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2ector(ptr %t996, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t997, ptr %l243
  br label %bb172
bb172:
  %t998 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e56
  br i1 %t998, label %bb173, label %bb174
bb173:
  %t1000 = load i64, ptr %l241
  %t1001 = inttoptr i64 %t1000 to ptr
  %t1002 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l243, i32 0, i32 0
  %t1003 = load { i64, ptr }, ptr %t1002
  %t1004 = extractvalue { i64, ptr } %t1003, 1
  %t1005 = call ptr @__olang_region_or(ptr %t1004, ptr null)
  %t1006 = call ptr @__olang_region_home(ptr %t1005)
  %t1007 = icmp ne ptr %t1006, null
  %t1008 = select i1 %t1007, ptr %t1006, ptr null
  %t1009 = icmp eq ptr %t1008, %t1001
  call void @__olang_region_settle(ptr %t1001, i1 %t1009)
  br label %bb174
bb174:
  %t1010 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l243
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1010, ptr %l58
  %t1011 = ptrtoint ptr %v1 to i64
  store i64 %t1011, ptr %l245, !tbaa !24
  %t1012 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
  br i1 %t1012, label %bb175, label %bb176
bb175:
  %t1014 = call ptr @__olang_region_make(ptr %v1)
  %t1015 = ptrtoint ptr %t1014 to i64
  store i64 %t1015, ptr %l245, !tbaa !24
  br label %bb176
bb176:
  %t1016 = load i64, ptr %l245
  %t1017 = inttoptr i64 %t1016 to ptr
  %t1018 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1017, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1018, ptr %l247
  br label %bb177
bb177:
  %t1019 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
  br i1 %t1019, label %bb178, label %bb179
bb178:
  %t1021 = load i64, ptr %l245
  %t1022 = inttoptr i64 %t1021 to ptr
  %t1023 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l247, i32 0, i32 0
  %t1024 = load { i64, ptr }, ptr %t1023
  %t1025 = extractvalue { i64, ptr } %t1024, 1
  %t1026 = call ptr @__olang_region_or(ptr %t1025, ptr null)
  %t1027 = call ptr @__olang_region_home(ptr %t1026)
  %t1028 = icmp ne ptr %t1027, null
  %t1029 = select i1 %t1028, ptr %t1027, ptr null
  %t1030 = icmp eq ptr %t1029, %t1022
  call void @__olang_region_settle(ptr %t1022, i1 %t1030)
  br label %bb179
bb179:
  %t1031 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l247
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1031, ptr %l59
  %t1032 = ptrtoint ptr %v1 to i64
  store i64 %t1032, ptr %l249, !tbaa !24
  %t1033 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e58
  br i1 %t1033, label %bb180, label %bb181
bb180:
  %t1035 = call ptr @__olang_region_make(ptr %v1)
  %t1036 = ptrtoint ptr %t1035 to i64
  store i64 %t1036, ptr %l249, !tbaa !24
  br label %bb181
bb181:
  call void @llvm.memset.p0.i64(ptr %l251, i8 0, i64 136, i1 false)
  %t1037 = icmp sgt i64 64, 0
  br i1 %t1037, label %bb182, label %bb183
bb182:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %t1039)
  call void @llvm.memmove.p0.p0.i64(ptr %l253, ptr %t1039, i64 136, i1 false)
  br label %bb184
bb183:
  %t1040 = icmp sge i64 64, 0
  br i1 %t1040, label %bb185, label %bb186
bb184:
  call void @llvm.memmove.p0.p0.i64(ptr %l251, ptr %l253, i64 136, i1 false)
  br label %bb183
bb185:
  %t1042 = icmp sle i64 64, 67818912035696880
  br i1 %t1042, label %bb187, label %bb188
bb186:
  call void @__olang_check_failed(ptr @olang_loc_64487eeb593bd358_be690252b210c97c)
  unreachable
bb187:
  %t1044 = mul i64 64, 136
  %t1045 = load i64, ptr %l249
  %t1046 = inttoptr i64 %t1045 to ptr
  %t1047 = call ptr @__olang_scope_alloc(ptr %t1046, i64 %t1044)
  store i64 0, ptr %t1048
  br label %fill.1049
fill.1049:
  %t1052 = load i64, ptr %t1048
  %t1053 = icmp slt i64 %t1052, 64
  br i1 %t1053, label %fillb.1050, label %filld.1051
fillb.1050:
  %t1054 = getelementptr %"compiler/eval:frame", ptr %t1047, i64 %t1052
  call void @llvm.memmove.p0.p0.i64(ptr %t1054, ptr %l251, i64 136, i1 false)
  %t1055 = add i64 %t1052, 1
  store i64 %t1055, ptr %t1048
  br label %fill.1049
filld.1051:
  %t1056 = insertvalue { i64, ptr } undef, i64 64, 0
  %t1057 = insertvalue { i64, ptr } %t1056, ptr %t1047, 1
  store { i64, ptr } %t1057, ptr %l60, !tbaa !27
  store i64 0, ptr %l61, !tbaa !24
  %t1059 = ptrtoint ptr %v1 to i64
  store i64 %t1059, ptr %l257, !tbaa !24
  %t1060 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t1060, label %bb189, label %bb190
bb188:
  call void @__olang_check_failed(ptr @olang_loc_64487eeb593bd358_be690252b210c97c)
  unreachable
bb189:
  %t1062 = call ptr @__olang_region_make(ptr %v1)
  %t1063 = ptrtoint ptr %t1062 to i64
  store i64 %t1063, ptr %l257, !tbaa !24
  br label %bb190
bb190:
  %t1064 = icmp sge i64 1024, 0
  br i1 %t1064, label %bb191, label %bb192
bb191:
  %t1066 = icmp sle i64 1024, 1152921504606846975
  br i1 %t1066, label %bb193, label %bb194
bb192:
  call void @__olang_check_failed(ptr @olang_loc_d6ff74f701ada4c5_c582616f4398d5c9)
  unreachable
bb193:
  %t1068 = mul i64 1024, 8
  %t1069 = load i64, ptr %l257
  %t1070 = inttoptr i64 %t1069 to ptr
  %t1071 = call ptr @__olang_scope_alloc_zeroed(ptr %t1070, i64 %t1068)
  %t1072 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t1073 = insertvalue { i64, ptr } %t1072, ptr %t1071, 1
  store { i64, ptr } %t1073, ptr %l62, !tbaa !27
  store i64 0, ptr %l63, !tbaa !24
  %t1075 = ptrtoint ptr %v1 to i64
  store i64 %t1075, ptr %l262, !tbaa !24
  %t1076 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e62
  br i1 %t1076, label %bb195, label %bb196
bb194:
  call void @__olang_check_failed(ptr @olang_loc_d6ff74f701ada4c5_c582616f4398d5c9)
  unreachable
bb195:
  %t1078 = call ptr @__olang_region_make(ptr %v1)
  %t1079 = ptrtoint ptr %t1078 to i64
  store i64 %t1079, ptr %l262, !tbaa !24
  br label %bb196
bb196:
  %t1080 = load i64, ptr %l262
  %t1081 = inttoptr i64 %t1080 to ptr
  %t1082 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1081, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1082, ptr %l264
  br label %bb197
bb197:
  %t1083 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e62
  br i1 %t1083, label %bb198, label %bb199
bb198:
  %t1085 = load i64, ptr %l262
  %t1086 = inttoptr i64 %t1085 to ptr
  %t1087 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l264, i32 0, i32 0
  %t1088 = load { i64, ptr }, ptr %t1087
  %t1089 = extractvalue { i64, ptr } %t1088, 1
  %t1090 = call ptr @__olang_region_or(ptr %t1089, ptr null)
  %t1091 = call ptr @__olang_region_home(ptr %t1090)
  %t1092 = icmp ne ptr %t1091, null
  %t1093 = select i1 %t1092, ptr %t1091, ptr null
  %t1094 = icmp eq ptr %t1093, %t1086
  call void @__olang_region_settle(ptr %t1086, i1 %t1094)
  br label %bb199
bb199:
  %t1095 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l264
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1095, ptr %l64
  %t1096 = ptrtoint ptr %v1 to i64
  store i64 %t1096, ptr %l266, !tbaa !24
  %t1097 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e63
  br i1 %t1097, label %bb200, label %bb201
bb200:
  %t1099 = call ptr @__olang_region_make(ptr %v1)
  %t1100 = ptrtoint ptr %t1099 to i64
  store i64 %t1100, ptr %l266, !tbaa !24
  br label %bb201
bb201:
  %t1101 = load i64, ptr %l266
  %t1102 = inttoptr i64 %t1101 to ptr
  %t1103 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2ector(ptr %t1102, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1103, ptr %l268
  br label %bb202
bb202:
  %t1104 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e63
  br i1 %t1104, label %bb203, label %bb204
bb203:
  %t1106 = load i64, ptr %l266
  %t1107 = inttoptr i64 %t1106 to ptr
  %t1108 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l268, i32 0, i32 0
  %t1109 = load { i64, ptr }, ptr %t1108
  %t1110 = extractvalue { i64, ptr } %t1109, 1
  %t1111 = call ptr @__olang_region_or(ptr %t1110, ptr null)
  %t1112 = call ptr @__olang_region_home(ptr %t1111)
  %t1113 = icmp ne ptr %t1112, null
  %t1114 = select i1 %t1113, ptr %t1112, ptr null
  %t1115 = icmp eq ptr %t1114, %t1107
  call void @__olang_region_settle(ptr %t1107, i1 %t1115)
  br label %bb204
bb204:
  %t1116 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l268
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1116, ptr %l65
  %t1117 = ptrtoint ptr %v1 to i64
  store i64 %t1117, ptr %l270, !tbaa !24
  %t1118 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e64
  br i1 %t1118, label %bb205, label %bb206
bb205:
  %t1120 = call ptr @__olang_region_make(ptr %v1)
  %t1121 = ptrtoint ptr %t1120 to i64
  store i64 %t1121, ptr %l270, !tbaa !24
  br label %bb206
bb206:
  %t1122 = load i64, ptr %l270
  %t1123 = inttoptr i64 %t1122 to ptr
  %t1124 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t1123)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1124, ptr %l272
  br label %bb207
bb207:
  %t1125 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e64
  br i1 %t1125, label %bb208, label %bb209
bb208:
  %t1127 = load i64, ptr %l270
  %t1128 = inttoptr i64 %t1127 to ptr
  %t1129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l272, i32 0, i32 2
  %t1130 = load { i64, ptr }, ptr %t1129
  %t1131 = extractvalue { i64, ptr } %t1130, 1
  %t1132 = call ptr @__olang_region_or(ptr %t1131, ptr null)
  %t1133 = call ptr @__olang_region_home(ptr %t1132)
  %t1134 = icmp ne ptr %t1133, null
  %t1135 = select i1 %t1134, ptr %t1133, ptr null
  %t1136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l272, i32 0, i32 1
  %t1137 = load { i64, ptr }, ptr %t1136
  %t1138 = extractvalue { i64, ptr } %t1137, 1
  %t1139 = call ptr @__olang_region_or(ptr %t1138, ptr null)
  %t1140 = call ptr @__olang_region_home(ptr %t1139)
  %t1141 = icmp ne ptr %t1140, null
  %t1142 = select i1 %t1141, ptr %t1140, ptr %t1135
  %t1143 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l272, i32 0, i32 0
  %t1144 = load { i64, ptr }, ptr %t1143
  %t1145 = extractvalue { i64, ptr } %t1144, 1
  %t1146 = call ptr @__olang_region_or(ptr %t1145, ptr null)
  %t1147 = call ptr @__olang_region_home(ptr %t1146)
  %t1148 = icmp ne ptr %t1147, null
  %t1149 = select i1 %t1148, ptr %t1147, ptr %t1142
  %t1150 = icmp eq ptr %t1149, %t1128
  call void @__olang_region_settle(ptr %t1128, i1 %t1150)
  br label %bb209
bb209:
  %t1151 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l272
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1151, ptr %l66
  %t1152 = ptrtoint ptr %v1 to i64
  store i64 %t1152, ptr %l274, !tbaa !24
  %t1153 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e65
  br i1 %t1153, label %bb210, label %bb211
bb210:
  %t1155 = call ptr @__olang_region_make(ptr %v1)
  %t1156 = ptrtoint ptr %t1155 to i64
  store i64 %t1156, ptr %l274, !tbaa !24
  br label %bb211
bb211:
  %t1157 = load i64, ptr %l274
  %t1158 = inttoptr i64 %t1157 to ptr
  %t1159 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1158, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1159, ptr %l276
  br label %bb212
bb212:
  %t1160 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e65
  br i1 %t1160, label %bb213, label %bb214
bb213:
  %t1162 = load i64, ptr %l274
  %t1163 = inttoptr i64 %t1162 to ptr
  %t1164 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l276, i32 0, i32 0
  %t1165 = load { i64, ptr }, ptr %t1164
  %t1166 = extractvalue { i64, ptr } %t1165, 1
  %t1167 = call ptr @__olang_region_or(ptr %t1166, ptr null)
  %t1168 = call ptr @__olang_region_home(ptr %t1167)
  %t1169 = icmp ne ptr %t1168, null
  %t1170 = select i1 %t1169, ptr %t1168, ptr null
  %t1171 = icmp eq ptr %t1170, %t1163
  call void @__olang_region_settle(ptr %t1163, i1 %t1171)
  br label %bb214
bb214:
  %t1172 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l276
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1172, ptr %l67
  %t1173 = ptrtoint ptr %v1 to i64
  store i64 %t1173, ptr %l278, !tbaa !24
  %t1174 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e66
  br i1 %t1174, label %bb215, label %bb216
bb215:
  %t1176 = call ptr @__olang_region_make(ptr %v1)
  %t1177 = ptrtoint ptr %t1176 to i64
  store i64 %t1177, ptr %l278, !tbaa !24
  br label %bb216
bb216:
  %t1178 = load i64, ptr %l278
  %t1179 = inttoptr i64 %t1178 to ptr
  %t1180 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1179, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1180, ptr %l280
  br label %bb217
bb217:
  %t1181 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e66
  br i1 %t1181, label %bb218, label %bb219
bb218:
  %t1183 = load i64, ptr %l278
  %t1184 = inttoptr i64 %t1183 to ptr
  %t1185 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l280, i32 0, i32 0
  %t1186 = load { i64, ptr }, ptr %t1185
  %t1187 = extractvalue { i64, ptr } %t1186, 1
  %t1188 = call ptr @__olang_region_or(ptr %t1187, ptr null)
  %t1189 = call ptr @__olang_region_home(ptr %t1188)
  %t1190 = icmp ne ptr %t1189, null
  %t1191 = select i1 %t1190, ptr %t1189, ptr null
  %t1192 = icmp eq ptr %t1191, %t1184
  call void @__olang_region_settle(ptr %t1184, i1 %t1192)
  br label %bb219
bb219:
  %t1193 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l280
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1193, ptr %l68
  %t1194 = ptrtoint ptr %v1 to i64
  store i64 %t1194, ptr %l282, !tbaa !24
  %t1195 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e67
  br i1 %t1195, label %bb220, label %bb221
bb220:
  %t1197 = call ptr @__olang_region_make(ptr %v1)
  %t1198 = ptrtoint ptr %t1197 to i64
  store i64 %t1198, ptr %l282, !tbaa !24
  br label %bb221
bb221:
  %t1199 = load i64, ptr %l282
  %t1200 = inttoptr i64 %t1199 to ptr
  %t1201 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1200, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1201, ptr %l284
  br label %bb222
bb222:
  %t1202 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e67
  br i1 %t1202, label %bb223, label %bb224
bb223:
  %t1204 = load i64, ptr %l282
  %t1205 = inttoptr i64 %t1204 to ptr
  %t1206 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l284, i32 0, i32 0
  %t1207 = load { i64, ptr }, ptr %t1206
  %t1208 = extractvalue { i64, ptr } %t1207, 1
  %t1209 = call ptr @__olang_region_or(ptr %t1208, ptr null)
  %t1210 = call ptr @__olang_region_home(ptr %t1209)
  %t1211 = icmp ne ptr %t1210, null
  %t1212 = select i1 %t1211, ptr %t1210, ptr null
  %t1213 = icmp eq ptr %t1212, %t1205
  call void @__olang_region_settle(ptr %t1205, i1 %t1213)
  br label %bb224
bb224:
  %t1214 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l284
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1214, ptr %l69
  %t1215 = ptrtoint ptr %v1 to i64
  store i64 %t1215, ptr %l286, !tbaa !24
  %t1216 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e68
  br i1 %t1216, label %bb225, label %bb226
bb225:
  %t1218 = call ptr @__olang_region_make(ptr %v1)
  %t1219 = ptrtoint ptr %t1218 to i64
  store i64 %t1219, ptr %l286, !tbaa !24
  br label %bb226
bb226:
  %t1220 = load i64, ptr %l286
  %t1221 = inttoptr i64 %t1220 to ptr
  %t1222 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1221, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1222, ptr %l288
  br label %bb227
bb227:
  %t1223 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e68
  br i1 %t1223, label %bb228, label %bb229
bb228:
  %t1225 = load i64, ptr %l286
  %t1226 = inttoptr i64 %t1225 to ptr
  %t1227 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l288, i32 0, i32 0
  %t1228 = load { i64, ptr }, ptr %t1227
  %t1229 = extractvalue { i64, ptr } %t1228, 1
  %t1230 = call ptr @__olang_region_or(ptr %t1229, ptr null)
  %t1231 = call ptr @__olang_region_home(ptr %t1230)
  %t1232 = icmp ne ptr %t1231, null
  %t1233 = select i1 %t1232, ptr %t1231, ptr null
  %t1234 = icmp eq ptr %t1233, %t1226
  call void @__olang_region_settle(ptr %t1226, i1 %t1234)
  br label %bb229
bb229:
  %t1235 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l288
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1235, ptr %l70
  store i1 false, ptr %l71, !tbaa !21
  store i64 0, ptr %l72, !tbaa !24
  store i64 0, ptr %l73, !tbaa !24
  %t1236 = ptrtoint ptr %v1 to i64
  store i64 %t1236, ptr %l290, !tbaa !24
  %t1237 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e72
  br i1 %t1237, label %bb230, label %bb231
bb230:
  %t1239 = call ptr @__olang_region_make(ptr %v1)
  %t1240 = ptrtoint ptr %t1239 to i64
  store i64 %t1240, ptr %l290, !tbaa !24
  br label %bb231
bb231:
  %t1241 = icmp sge i64 3, 0
  br i1 %t1241, label %bb232, label %bb233
bb232:
  %t1243 = icmp sle i64 3, 1152921504606846975
  br i1 %t1243, label %bb234, label %bb235
bb233:
  call void @__olang_check_failed(ptr @olang_loc_d7598e698fcd0229_1ca32a5a713fdca5)
  unreachable
bb234:
  %t1245 = mul i64 3, 8
  %t1246 = load i64, ptr %l290
  %t1247 = inttoptr i64 %t1246 to ptr
  %t1248 = call ptr @__olang_scope_alloc_zeroed(ptr %t1247, i64 %t1245)
  %t1249 = insertvalue { i64, ptr } undef, i64 3, 0
  %t1250 = insertvalue { i64, ptr } %t1249, ptr %t1248, 1
  store { i64, ptr } %t1250, ptr %l74, !tbaa !27
  store i64 -1, ptr %l75, !tbaa !24
  %t1252 = ptrtoint ptr %v1 to i64
  store i64 %t1252, ptr %l295, !tbaa !24
  %t1253 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e74
  br i1 %t1253, label %bb236, label %bb237
bb235:
  call void @__olang_check_failed(ptr @olang_loc_d7598e698fcd0229_1ca32a5a713fdca5)
  unreachable
bb236:
  %t1255 = call ptr @__olang_region_make(ptr %v1)
  %t1256 = ptrtoint ptr %t1255 to i64
  store i64 %t1256, ptr %l295, !tbaa !24
  br label %bb237
bb237:
  %t1257 = load i64, ptr %l295
  %t1258 = inttoptr i64 %t1257 to ptr
  %t1259 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t1258)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1259, ptr %l297
  br label %bb238
bb238:
  %t1260 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e74
  br i1 %t1260, label %bb239, label %bb240
bb239:
  %t1262 = load i64, ptr %l295
  %t1263 = inttoptr i64 %t1262 to ptr
  %t1264 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 2
  %t1265 = load { i64, ptr }, ptr %t1264
  %t1266 = extractvalue { i64, ptr } %t1265, 1
  %t1267 = call ptr @__olang_region_or(ptr %t1266, ptr null)
  %t1268 = call ptr @__olang_region_home(ptr %t1267)
  %t1269 = icmp ne ptr %t1268, null
  %t1270 = select i1 %t1269, ptr %t1268, ptr null
  %t1271 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 1
  %t1272 = load { i64, ptr }, ptr %t1271
  %t1273 = extractvalue { i64, ptr } %t1272, 1
  %t1274 = call ptr @__olang_region_or(ptr %t1273, ptr null)
  %t1275 = call ptr @__olang_region_home(ptr %t1274)
  %t1276 = icmp ne ptr %t1275, null
  %t1277 = select i1 %t1276, ptr %t1275, ptr %t1270
  %t1278 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297, i32 0, i32 0
  %t1279 = load { i64, ptr }, ptr %t1278
  %t1280 = extractvalue { i64, ptr } %t1279, 1
  %t1281 = call ptr @__olang_region_or(ptr %t1280, ptr null)
  %t1282 = call ptr @__olang_region_home(ptr %t1281)
  %t1283 = icmp ne ptr %t1282, null
  %t1284 = select i1 %t1283, ptr %t1282, ptr %t1277
  %t1285 = icmp eq ptr %t1284, %t1263
  call void @__olang_region_settle(ptr %t1263, i1 %t1285)
  br label %bb240
bb240:
  %t1286 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l297
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1286, ptr %l76
  %t1287 = ptrtoint ptr %v1 to i64
  store i64 %t1287, ptr %l299, !tbaa !24
  %t1288 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e75
  br i1 %t1288, label %bb241, label %bb242
bb241:
  %t1290 = call ptr @__olang_region_make(ptr %v1)
  %t1291 = ptrtoint ptr %t1290 to i64
  store i64 %t1291, ptr %l299, !tbaa !24
  br label %bb242
bb242:
  %t1292 = load i64, ptr %l299
  %t1293 = inttoptr i64 %t1292 to ptr
  %t1294 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1293, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1294, ptr %l301
  br label %bb243
bb243:
  %t1295 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e75
  br i1 %t1295, label %bb244, label %bb245
bb244:
  %t1297 = load i64, ptr %l299
  %t1298 = inttoptr i64 %t1297 to ptr
  %t1299 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l301, i32 0, i32 0
  %t1300 = load { i64, ptr }, ptr %t1299
  %t1301 = extractvalue { i64, ptr } %t1300, 1
  %t1302 = call ptr @__olang_region_or(ptr %t1301, ptr null)
  %t1303 = call ptr @__olang_region_home(ptr %t1302)
  %t1304 = icmp ne ptr %t1303, null
  %t1305 = select i1 %t1304, ptr %t1303, ptr null
  %t1306 = icmp eq ptr %t1305, %t1298
  call void @__olang_region_settle(ptr %t1298, i1 %t1306)
  br label %bb245
bb245:
  %t1307 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l301
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1307, ptr %l77
  %t1308 = ptrtoint ptr %v1 to i64
  store i64 %t1308, ptr %l303, !tbaa !24
  %t1309 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e76
  br i1 %t1309, label %bb246, label %bb247
bb246:
  %t1311 = call ptr @__olang_region_make(ptr %v1)
  %t1312 = ptrtoint ptr %t1311 to i64
  store i64 %t1312, ptr %l303, !tbaa !24
  br label %bb247
bb247:
  %t1313 = load i64, ptr %l303
  %t1314 = inttoptr i64 %t1313 to ptr
  %t1315 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t1314)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1315, ptr %l305
  br label %bb248
bb248:
  %t1316 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e76
  br i1 %t1316, label %bb249, label %bb250
bb249:
  %t1318 = load i64, ptr %l303
  %t1319 = inttoptr i64 %t1318 to ptr
  %t1320 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l305, i32 0, i32 2
  %t1321 = load { i64, ptr }, ptr %t1320
  %t1322 = extractvalue { i64, ptr } %t1321, 1
  %t1323 = call ptr @__olang_region_or(ptr %t1322, ptr null)
  %t1324 = call ptr @__olang_region_home(ptr %t1323)
  %t1325 = icmp ne ptr %t1324, null
  %t1326 = select i1 %t1325, ptr %t1324, ptr null
  %t1327 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l305, i32 0, i32 1
  %t1328 = load { i64, ptr }, ptr %t1327
  %t1329 = extractvalue { i64, ptr } %t1328, 1
  %t1330 = call ptr @__olang_region_or(ptr %t1329, ptr null)
  %t1331 = call ptr @__olang_region_home(ptr %t1330)
  %t1332 = icmp ne ptr %t1331, null
  %t1333 = select i1 %t1332, ptr %t1331, ptr %t1326
  %t1334 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l305, i32 0, i32 0
  %t1335 = load { i64, ptr }, ptr %t1334
  %t1336 = extractvalue { i64, ptr } %t1335, 1
  %t1337 = call ptr @__olang_region_or(ptr %t1336, ptr null)
  %t1338 = call ptr @__olang_region_home(ptr %t1337)
  %t1339 = icmp ne ptr %t1338, null
  %t1340 = select i1 %t1339, ptr %t1338, ptr %t1333
  %t1341 = icmp eq ptr %t1340, %t1319
  call void @__olang_region_settle(ptr %t1319, i1 %t1341)
  br label %bb250
bb250:
  %t1342 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l305
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1342, ptr %l78
  store i64 0, ptr %l79, !tbaa !24
  %t1343 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t1343, ptr %l307
  br label %bb251
bb251:
  %t1344 = load %"compiler/source:Span", ptr %l307
  store %"compiler/source:Span" %t1344, ptr %l80
  %t1345 = ptrtoint ptr %v1 to i64
  store i64 %t1345, ptr %l308, !tbaa !24
  %t1346 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e79
  br i1 %t1346, label %bb252, label %bb253
bb252:
  %t1348 = call ptr @__olang_region_make(ptr %v1)
  %t1349 = ptrtoint ptr %t1348 to i64
  store i64 %t1349, ptr %l308, !tbaa !24
  br label %bb253
bb253:
  %t1350 = load i64, ptr %l308
  %t1351 = inttoptr i64 %t1350 to ptr
  %t1352 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_3e_2ector(ptr %t1351, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1352, ptr %l310
  br label %bb254
bb254:
  %t1353 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e79
  br i1 %t1353, label %bb255, label %bb256
bb255:
  %t1355 = load i64, ptr %l308
  %t1356 = inttoptr i64 %t1355 to ptr
  %t1357 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l310, i32 0, i32 0
  %t1358 = load { i64, ptr }, ptr %t1357
  %t1359 = extractvalue { i64, ptr } %t1358, 1
  %t1360 = call ptr @__olang_region_or(ptr %t1359, ptr null)
  %t1361 = call ptr @__olang_region_home(ptr %t1360)
  %t1362 = icmp ne ptr %t1361, null
  %t1363 = select i1 %t1362, ptr %t1361, ptr null
  %t1364 = icmp eq ptr %t1363, %t1356
  call void @__olang_region_settle(ptr %t1356, i1 %t1364)
  br label %bb256
bb256:
  %t1365 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l310
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1365, ptr %l81
  store i64 -1, ptr %l82, !tbaa !24
  %t1366 = ptrtoint ptr %v1 to i64
  store i64 %t1366, ptr %l312, !tbaa !24
  %t1367 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e81
  br i1 %t1367, label %bb257, label %bb258
bb257:
  %t1369 = call ptr @__olang_region_make(ptr %v1)
  %t1370 = ptrtoint ptr %t1369 to i64
  store i64 %t1370, ptr %l312, !tbaa !24
  br label %bb258
bb258:
  %t1371 = load i64, ptr %l312
  %t1372 = inttoptr i64 %t1371 to ptr
  %t1373 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1372)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1373, ptr %l314
  br label %bb259
bb259:
  %t1374 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e81
  br i1 %t1374, label %bb260, label %bb261
bb260:
  %t1376 = load i64, ptr %l312
  %t1377 = inttoptr i64 %t1376 to ptr
  %t1378 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l314, i32 0, i32 2
  %t1379 = load { i64, ptr }, ptr %t1378
  %t1380 = extractvalue { i64, ptr } %t1379, 1
  %t1381 = call ptr @__olang_region_or(ptr %t1380, ptr null)
  %t1382 = call ptr @__olang_region_home(ptr %t1381)
  %t1383 = icmp ne ptr %t1382, null
  %t1384 = select i1 %t1383, ptr %t1382, ptr null
  %t1385 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l314, i32 0, i32 1
  %t1386 = load { i64, ptr }, ptr %t1385
  %t1387 = extractvalue { i64, ptr } %t1386, 1
  %t1388 = call ptr @__olang_region_or(ptr %t1387, ptr null)
  %t1389 = call ptr @__olang_region_home(ptr %t1388)
  %t1390 = icmp ne ptr %t1389, null
  %t1391 = select i1 %t1390, ptr %t1389, ptr %t1384
  %t1392 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l314, i32 0, i32 0
  %t1393 = load { i64, ptr }, ptr %t1392
  %t1394 = extractvalue { i64, ptr } %t1393, 1
  %t1395 = call ptr @__olang_region_or(ptr %t1394, ptr null)
  %t1396 = call ptr @__olang_region_home(ptr %t1395)
  %t1397 = icmp ne ptr %t1396, null
  %t1398 = select i1 %t1397, ptr %t1396, ptr %t1391
  %t1399 = icmp eq ptr %t1398, %t1377
  call void @__olang_region_settle(ptr %t1377, i1 %t1399)
  br label %bb261
bb261:
  %t1400 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l314
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1400, ptr %l83
  %t1401 = ptrtoint ptr %v1 to i64
  store i64 %t1401, ptr %l316, !tbaa !24
  %t1402 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e82
  br i1 %t1402, label %bb262, label %bb263
bb262:
  %t1404 = call ptr @__olang_region_make(ptr %v1)
  %t1405 = ptrtoint ptr %t1404 to i64
  store i64 %t1405, ptr %l316, !tbaa !24
  br label %bb263
bb263:
  %t1406 = load i64, ptr %l316
  %t1407 = inttoptr i64 %t1406 to ptr
  %t1408 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t1407, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1408, ptr %l318
  br label %bb264
bb264:
  %t1409 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e82
  br i1 %t1409, label %bb265, label %bb266
bb265:
  %t1411 = load i64, ptr %l316
  %t1412 = inttoptr i64 %t1411 to ptr
  %t1413 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l318, i32 0, i32 0
  %t1414 = load { i64, ptr }, ptr %t1413
  %t1415 = extractvalue { i64, ptr } %t1414, 1
  %t1416 = call ptr @__olang_region_or(ptr %t1415, ptr null)
  %t1417 = call ptr @__olang_region_home(ptr %t1416)
  %t1418 = icmp ne ptr %t1417, null
  %t1419 = select i1 %t1418, ptr %t1417, ptr null
  %t1420 = icmp eq ptr %t1419, %t1412
  call void @__olang_region_settle(ptr %t1412, i1 %t1420)
  br label %bb266
bb266:
  %t1421 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l318
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1421, ptr %l84
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d42, i32 0, i32 1) }, ptr %l85, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d43, i32 0, i32 1) }, ptr %l86, !tbaa !27
  store i1 false, ptr %l87, !tbaa !21
  store i1 false, ptr %l88, !tbaa !21
  store i1 false, ptr %l89, !tbaa !21
  %t1422 = ptrtoint ptr %v1 to i64
  store i64 %t1422, ptr %l320, !tbaa !24
  %t1423 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e88
  br i1 %t1423, label %bb267, label %bb268
bb267:
  %t1425 = call ptr @__olang_region_make(ptr %v1)
  %t1426 = ptrtoint ptr %t1425 to i64
  store i64 %t1426, ptr %l320, !tbaa !24
  br label %bb268
bb268:
  %t1427 = load i64, ptr %l320
  %t1428 = inttoptr i64 %t1427 to ptr
  %t1429 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1428, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1429, ptr %l322
  br label %bb269
bb269:
  %t1430 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e88
  br i1 %t1430, label %bb270, label %bb271
bb270:
  %t1432 = load i64, ptr %l320
  %t1433 = inttoptr i64 %t1432 to ptr
  %t1434 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l322, i32 0, i32 0
  %t1435 = load { i64, ptr }, ptr %t1434
  %t1436 = extractvalue { i64, ptr } %t1435, 1
  %t1437 = call ptr @__olang_region_or(ptr %t1436, ptr null)
  %t1438 = call ptr @__olang_region_home(ptr %t1437)
  %t1439 = icmp ne ptr %t1438, null
  %t1440 = select i1 %t1439, ptr %t1438, ptr null
  %t1441 = icmp eq ptr %t1440, %t1433
  call void @__olang_region_settle(ptr %t1433, i1 %t1441)
  br label %bb271
bb271:
  %t1442 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l322
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1442, ptr %l90
  %t1443 = ptrtoint ptr %v1 to i64
  store i64 %t1443, ptr %l324, !tbaa !24
  %t1444 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e89
  br i1 %t1444, label %bb272, label %bb273
bb272:
  %t1446 = call ptr @__olang_region_make(ptr %v1)
  %t1447 = ptrtoint ptr %t1446 to i64
  store i64 %t1447, ptr %l324, !tbaa !24
  br label %bb273
bb273:
  %t1448 = load i64, ptr %l324
  %t1449 = inttoptr i64 %t1448 to ptr
  %t1450 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t1449, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1450, ptr %l326
  br label %bb274
bb274:
  %t1451 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e89
  br i1 %t1451, label %bb275, label %bb276
bb275:
  %t1453 = load i64, ptr %l324
  %t1454 = inttoptr i64 %t1453 to ptr
  %t1455 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l326, i32 0, i32 0
  %t1456 = load { i64, ptr }, ptr %t1455
  %t1457 = extractvalue { i64, ptr } %t1456, 1
  %t1458 = call ptr @__olang_region_or(ptr %t1457, ptr null)
  %t1459 = call ptr @__olang_region_home(ptr %t1458)
  %t1460 = icmp ne ptr %t1459, null
  %t1461 = select i1 %t1460, ptr %t1459, ptr null
  %t1462 = icmp eq ptr %t1461, %t1454
  call void @__olang_region_settle(ptr %t1454, i1 %t1462)
  br label %bb276
bb276:
  %t1463 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l326
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1463, ptr %l91
  store i64 0, ptr %l92, !tbaa !24
  %t1464 = ptrtoint ptr %v1 to i64
  store i64 %t1464, ptr %l328, !tbaa !24
  %t1465 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e91
  br i1 %t1465, label %bb277, label %bb278
bb277:
  %t1467 = call ptr @__olang_region_make(ptr %v1)
  %t1468 = ptrtoint ptr %t1467 to i64
  store i64 %t1468, ptr %l328, !tbaa !24
  br label %bb278
bb278:
  %t1469 = load i64, ptr %l328
  %t1470 = inttoptr i64 %t1469 to ptr
  %t1471 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1470, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1471, ptr %l330
  br label %bb279
bb279:
  %t1472 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e91
  br i1 %t1472, label %bb280, label %bb281
bb280:
  %t1474 = load i64, ptr %l328
  %t1475 = inttoptr i64 %t1474 to ptr
  %t1476 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l330, i32 0, i32 0
  %t1477 = load { i64, ptr }, ptr %t1476
  %t1478 = extractvalue { i64, ptr } %t1477, 1
  %t1479 = call ptr @__olang_region_or(ptr %t1478, ptr null)
  %t1480 = call ptr @__olang_region_home(ptr %t1479)
  %t1481 = icmp ne ptr %t1480, null
  %t1482 = select i1 %t1481, ptr %t1480, ptr null
  %t1483 = icmp eq ptr %t1482, %t1475
  call void @__olang_region_settle(ptr %t1475, i1 %t1483)
  br label %bb281
bb281:
  %t1484 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l330
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1484, ptr %l93
  store i64 -1, ptr %l94, !tbaa !24
  %t1485 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t1485, ptr %l332
  br label %bb282
bb282:
  %t1486 = load %"compiler/source:Span", ptr %l332
  %t1487 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 0
  %t1488 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1488, ptr %t1487, !tbaa !29
  %t1489 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 1
  %t1490 = load i32, ptr %l3, !range !{i32 0, i32 2}
  store i32 %t1490, ptr %t1489
  %t1491 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 2
  %t1492 = load i64, ptr %l4, !tbaa !24
  store i64 %t1492, ptr %t1491, !tbaa !24
  %t1493 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 3
  %t1494 = load { ptr, ptr }, ptr %l5
  store { ptr, ptr } %t1494, ptr %t1493
  %t1495 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 4
  %t1496 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1496, ptr %t1495
  %t1497 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 5
  call void @llvm.memmove.p0.p0.i64(ptr %t1497, ptr %l7, i64 632, i1 false)
  %t1498 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 6
  %t1499 = load i1, ptr %l8, !tbaa !21
  store i1 %t1499, ptr %t1498, !tbaa !21
  %t1500 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 7
  %t1501 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l9
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1501, ptr %t1500
  %t1502 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 8
  %t1503 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1503, ptr %t1502
  %t1504 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 9
  %t1505 = load i64, ptr %l11, !tbaa !24
  store i64 %t1505, ptr %t1504, !tbaa !24
  %t1506 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 10
  %t1507 = load i64, ptr %l12, !tbaa !24
  store i64 %t1507, ptr %t1506, !tbaa !24
  %t1508 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 11
  %t1509 = load i64, ptr %l13, !tbaa !24
  store i64 %t1509, ptr %t1508, !tbaa !24
  %t1510 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 12
  %t1511 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1511, ptr %t1510
  %t1512 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 13
  %t1513 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1513, ptr %t1512
  %t1514 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 14
  %t1515 = load i64, ptr %l16, !tbaa !24
  store i64 %t1515, ptr %t1514, !tbaa !24
  %t1516 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 15
  %t1517 = load i64, ptr %l17, !tbaa !24
  store i64 %t1517, ptr %t1516, !tbaa !24
  %t1518 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 16
  %t1519 = load i1, ptr %l18, !tbaa !21
  store i1 %t1519, ptr %t1518, !tbaa !21
  %t1520 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 17
  %t1521 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l19
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1521, ptr %t1520
  %t1522 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 18
  %t1523 = load %"compiler/eval:Ptr", ptr %l20
  store %"compiler/eval:Ptr" %t1523, ptr %t1522
  %t1524 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 19
  %t1525 = load i32, ptr %l21, !tbaa !23
  store i32 %t1525, ptr %t1524, !tbaa !23
  %t1526 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 20
  %t1527 = load { i64, [5 x i64] }, ptr %l22
  store { i64, [5 x i64] } %t1527, ptr %t1526
  %t1528 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 21
  %t1529 = load i64, ptr %l23, !tbaa !24
  store i64 %t1529, ptr %t1528, !tbaa !24
  %t1530 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 22
  %t1531 = load i1, ptr %l24, !tbaa !21
  store i1 %t1531, ptr %t1530, !tbaa !21
  %t1532 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 23
  %t1533 = load i1, ptr %l25, !tbaa !21
  store i1 %t1533, ptr %t1532, !tbaa !21
  %t1534 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 24
  %t1535 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l26
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1535, ptr %t1534
  %t1536 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 25
  %t1537 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l27
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1537, ptr %t1536
  %t1538 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 26
  %t1539 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t1539, ptr %t1538, !tbaa !27
  %t1540 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 27
  %t1541 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t1541, ptr %t1540, !tbaa !27
  %t1542 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 28
  %t1543 = load { i64, ptr }, ptr %l30, !tbaa !27
  store { i64, ptr } %t1543, ptr %t1542, !tbaa !27
  %t1544 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 29
  %t1545 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t1545, ptr %t1544, !tbaa !27
  %t1546 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 30
  %t1547 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l32
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1547, ptr %t1546
  %t1548 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 31
  %t1549 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1549, ptr %t1548
  %t1550 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 32
  %t1551 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1551, ptr %t1550
  %t1552 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 33
  %t1553 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l35
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1553, ptr %t1552
  %t1554 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 34
  %t1555 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1555, ptr %t1554
  %t1556 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 35
  %t1557 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1557, ptr %t1556
  %t1558 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 36
  %t1559 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1559, ptr %t1558
  %t1560 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 37
  %t1561 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1561, ptr %t1560
  %t1562 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 38
  %t1563 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1563, ptr %t1562
  %t1564 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 39
  %t1565 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l41
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1565, ptr %t1564
  %t1566 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 40
  %t1567 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1567, ptr %t1566
  %t1568 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 41
  %t1569 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1569, ptr %t1568
  %t1570 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 42
  %t1571 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l44
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1571, ptr %t1570
  %t1572 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 43
  %t1573 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l45
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1573, ptr %t1572
  %t1574 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 44
  %t1575 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1575, ptr %t1574
  %t1576 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 45
  %t1577 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t1577, ptr %t1576, !tbaa !27
  %t1578 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 46
  %t1579 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t1579, ptr %t1578, !tbaa !27
  %t1580 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 47
  %t1581 = load i64, ptr %l49, !tbaa !24
  store i64 %t1581, ptr %t1580, !tbaa !24
  %t1582 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 48
  %t1583 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t1583, ptr %t1582, !tbaa !27
  %t1584 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 49
  %t1585 = load { i64, ptr }, ptr %l51, !tbaa !27
  store { i64, ptr } %t1585, ptr %t1584, !tbaa !27
  %t1586 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 50
  %t1587 = load i64, ptr %l52, !tbaa !24
  store i64 %t1587, ptr %t1586, !tbaa !24
  %t1588 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 51
  %t1589 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1589, ptr %t1588
  %t1590 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 52
  %t1591 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1591, ptr %t1590
  %t1592 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 53
  %t1593 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1593, ptr %t1592
  %t1594 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 54
  %t1595 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1595, ptr %t1594
  %t1596 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 55
  %t1597 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l57
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1597, ptr %t1596
  %t1598 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 56
  %t1599 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l58
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1599, ptr %t1598
  %t1600 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 57
  %t1601 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l59
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1601, ptr %t1600
  %t1602 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 58
  %t1603 = load { i64, ptr }, ptr %l60, !tbaa !27
  store { i64, ptr } %t1603, ptr %t1602, !tbaa !27
  %t1604 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 59
  %t1605 = load i64, ptr %l61, !tbaa !24
  store i64 %t1605, ptr %t1604, !tbaa !24
  %t1606 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 60
  %t1607 = load { i64, ptr }, ptr %l62, !tbaa !27
  store { i64, ptr } %t1607, ptr %t1606, !tbaa !27
  %t1608 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 61
  %t1609 = load i64, ptr %l63, !tbaa !24
  store i64 %t1609, ptr %t1608, !tbaa !24
  %t1610 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 62
  %t1611 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1611, ptr %t1610
  %t1612 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 63
  %t1613 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1613, ptr %t1612
  %t1614 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 64
  %t1615 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l66
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1615, ptr %t1614
  %t1616 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 65
  %t1617 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1617, ptr %t1616
  %t1618 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 66
  %t1619 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1619, ptr %t1618
  %t1620 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 67
  %t1621 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1621, ptr %t1620
  %t1622 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 68
  %t1623 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1623, ptr %t1622
  %t1624 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 69
  %t1625 = load i1, ptr %l71, !tbaa !21
  store i1 %t1625, ptr %t1624, !tbaa !21
  %t1626 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 70
  %t1627 = load i64, ptr %l72, !tbaa !24
  store i64 %t1627, ptr %t1626, !tbaa !24
  %t1628 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 71
  %t1629 = load i64, ptr %l73, !tbaa !24
  store i64 %t1629, ptr %t1628, !tbaa !24
  %t1630 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 72
  %t1631 = load { i64, ptr }, ptr %l74, !tbaa !27
  store { i64, ptr } %t1631, ptr %t1630, !tbaa !27
  %t1632 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 73
  %t1633 = load i64, ptr %l75, !tbaa !24
  store i64 %t1633, ptr %t1632, !tbaa !24
  %t1634 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 74
  %t1635 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l76
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1635, ptr %t1634
  %t1636 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 75
  %t1637 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l77
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1637, ptr %t1636
  %t1638 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 76
  %t1639 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l78
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1639, ptr %t1638
  %t1640 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 77
  %t1641 = load i64, ptr %l79, !tbaa !24
  store i64 %t1641, ptr %t1640, !tbaa !24
  %t1642 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 78
  %t1643 = load %"compiler/source:Span", ptr %l80
  store %"compiler/source:Span" %t1643, ptr %t1642
  %t1644 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 79
  %t1645 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1645, ptr %t1644
  %t1646 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 80
  %t1647 = load i64, ptr %l82, !tbaa !24
  store i64 %t1647, ptr %t1646, !tbaa !24
  %t1648 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 81
  %t1649 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l83
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1649, ptr %t1648
  %t1650 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 82
  %t1651 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l84
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1651, ptr %t1650
  %t1652 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 83
  %t1653 = load { i64, ptr }, ptr %l85, !tbaa !27
  store { i64, ptr } %t1653, ptr %t1652, !tbaa !27
  %t1654 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 84
  %t1655 = load { i64, ptr }, ptr %l86, !tbaa !27
  store { i64, ptr } %t1655, ptr %t1654, !tbaa !27
  %t1656 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 85
  %t1657 = load i1, ptr %l87, !tbaa !21
  store i1 %t1657, ptr %t1656, !tbaa !21
  %t1658 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 86
  %t1659 = load i1, ptr %l88, !tbaa !21
  store i1 %t1659, ptr %t1658, !tbaa !21
  %t1660 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 87
  %t1661 = load i1, ptr %l89, !tbaa !21
  store i1 %t1661, ptr %t1660, !tbaa !21
  %t1662 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 88
  %t1663 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1663, ptr %t1662
  %t1664 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 89
  %t1665 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l91
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1665, ptr %t1664
  %t1666 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 90
  %t1667 = load i64, ptr %l92, !tbaa !24
  store i64 %t1667, ptr %t1666, !tbaa !24
  %t1668 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 91
  %t1669 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l93
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1669, ptr %t1668
  %t1670 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 92
  %t1671 = load i64, ptr %l94, !tbaa !24
  store i64 %t1671, ptr %t1670, !tbaa !24
  %t1672 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 93
  store %"compiler/source:Span" %t1486, ptr %t1672
  %t1674 = getelementptr %"compiler/eval:Machine", ptr %l333, i32 0, i32 94
  store i32 0, ptr %t1674, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l333, i64 3384, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:alloc" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:alloc" %t2, i64 0, 1
  %t6 = insertvalue %"compiler/eval:alloc" %t4, i64 0, 2
  %t8 = insertvalue %"compiler/eval:alloc" %t6, i64 0, 3
  %t10 = insertvalue %"compiler/eval:alloc" %t8, i64 0, 4
  %t12 = insertvalue %"compiler/eval:alloc" %t10, i64 0, 5
  %t14 = insertvalue %"compiler/eval:alloc" %t12, i64 0, 6
  %t16 = insertvalue %"compiler/eval:alloc" %t14, i64 0, 7
  %t18 = insertvalue %"compiler/eval:alloc" %t16, i64 -1, 8
  %t20 = insertvalue %"compiler/eval:alloc" %t18, i64 -1, 9
  %t22 = insertvalue %"compiler/eval:alloc" %t20, i64 0, 10
  %t24 = insertvalue %"compiler/eval:alloc" %t22, i32 0, 11
  %t26 = insertvalue %"compiler/eval:alloc" %t24, i64 -1, 12
  %t28 = insertvalue %"compiler/eval:alloc" %t26, i1 false, 13
  %t30 = insertvalue %"compiler/eval:alloc" %t28, i64 -1, 14
  %t32 = insertvalue %"compiler/eval:alloc" %t30, i1 false, 15
  store %"compiler/eval:alloc" %t32, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

define dso_local void @compiler_2feval_3acfn_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l19 = alloca %"compiler/eval:cfn"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 0
  store i64 0, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 1
  store { i64, ptr } zeroinitializer, ptr %t3, !tbaa !27
  %t5 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 2
  store { i64, ptr } zeroinitializer, ptr %t5, !tbaa !27
  %t7 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 3
  store { i64, ptr } zeroinitializer, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 4
  store { i64, ptr } zeroinitializer, ptr %t9, !tbaa !27
  %t11 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 5
  store { i64, ptr } zeroinitializer, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 6
  store { i64, ptr } zeroinitializer, ptr %t13, !tbaa !27
  %t15 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 7
  store { i64, ptr } zeroinitializer, ptr %t15, !tbaa !27
  %t17 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 8
  store { i64, ptr } zeroinitializer, ptr %t17, !tbaa !27
  %t19 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 9
  store { i64, ptr } zeroinitializer, ptr %t19, !tbaa !27
  %t21 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 10
  store { i64, ptr } zeroinitializer, ptr %t21, !tbaa !27
  %t23 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 11
  store { i64, ptr } zeroinitializer, ptr %t23, !tbaa !27
  %t25 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 12
  store { i64, ptr } zeroinitializer, ptr %t25, !tbaa !27
  %t27 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 13
  store { i64, ptr } zeroinitializer, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 14
  store { i64, ptr } zeroinitializer, ptr %t29, !tbaa !27
  %t31 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 15
  store i64 0, ptr %t31, !tbaa !24
  %t33 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 16
  store i1 false, ptr %t33, !tbaa !21
  %t35 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 17
  store i1 false, ptr %t35, !tbaa !21
  %t37 = getelementptr %"compiler/eval:cfn", ptr %l19, i32 0, i32 18
  store { i64, ptr } zeroinitializer, ptr %t37, !tbaa !27
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l19, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l20 = alloca %"compiler/eval:frame"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 0
  store i64 0, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 1
  store i64 0, ptr %t3, !tbaa !24
  %t5 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 2
  store i64 0, ptr %t5, !tbaa !24
  %t7 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 3
  store i64 0, ptr %t7, !tbaa !24
  %t9 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 4
  store i64 0, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 5
  store i64 0, ptr %t11, !tbaa !24
  %t13 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 6
  store i64 0, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 7
  store i64 0, ptr %t15, !tbaa !24
  %t17 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 8
  store i64 0, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 9
  store i64 0, ptr %t19, !tbaa !24
  %t21 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 10
  store i1 false, ptr %t21, !tbaa !21
  %t23 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 11
  store i1 false, ptr %t23, !tbaa !21
  %t25 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 12
  store i1 false, ptr %t25, !tbaa !21
  %t27 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 13
  store i64 0, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 14
  store i64 -1, ptr %t29, !tbaa !24
  %t31 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 15
  store i1 false, ptr %t31, !tbaa !21
  %t33 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 16
  store i64 -1, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 17
  store i32 0, ptr %t35, !tbaa !23
  %t37 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 18
  store i32 -1, ptr %t37, !tbaa !23
  %t39 = getelementptr %"compiler/eval:frame", ptr %l20, i32 0, i32 19
  store i64 0, ptr %t39, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 136, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:task" @compiler_2feval_3atask_2ector(ptr %v0) #0 {
entry:
  %rv = alloca %"compiler/eval:task"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = insertvalue %"compiler/eval:task" undef, i64 0, 0
  %t4 = insertvalue %"compiler/eval:task" %t2, i64 0, 1
  %t6 = insertvalue %"compiler/eval:task" %t4, i64 0, 2
  %t8 = insertvalue %"compiler/eval:task" %t6, i64 -1, 3
  %t10 = insertvalue %"compiler/eval:task" %t8, i64 0, 4
  store %"compiler/eval:task" %t10, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:task", ptr %rv
  ret %"compiler/eval:task" %rr
}

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
@__olang_prog_scope = external thread_local(initialexec) global ptr
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

declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
@.d0 = private constant <{ i64, [14 x i8] }> <{ i64 0, [14 x i8] c"__olang_bench_" }>, align 8
@.d1 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"__olang_" }>, align 8
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare i32 @__olang_err()
define linkonce_odr void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %out, ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/eval:genRec"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a0, i64 280, i1 false)
  %t2 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 6
  %t4 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t2)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l3
  br label %bb1
bb1:
  %t5 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t6 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t5, ptr %t6
  %t7 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 7
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %v0, ptr %t7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l5
  br label %bb2
bb2:
  %t10 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t11 = getelementptr %"compiler/eval:genRec", ptr %l1, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t10, ptr %t11
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l1, i64 280, i1 false)
  br label %ret
ret:
  ret void
}

@olang_2esole_2ecompiler_2feval_3acfn_2e6 = weak hidden constant i1 false
declare void @__olang_region_release(ptr) noinline
define linkonce_odr %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:BasicBlock"
  %l3 = alloca %"compiler/mir:StmtList"
  %rv = alloca %"compiler/mir:BasicBlock"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:BasicBlock", ptr %a0
  store %"compiler/mir:BasicBlock" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  %t5 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %t3)
  store %"compiler/mir:StmtList" %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load %"compiler/mir:StmtList", ptr %l3
  %t7 = getelementptr %"compiler/mir:BasicBlock", ptr %l1, i32 0, i32 0
  store %"compiler/mir:StmtList" %t6, ptr %t7
  %t8 = load %"compiler/mir:BasicBlock", ptr %l1
  store %"compiler/mir:BasicBlock" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:BasicBlock", ptr %rv
  ret %"compiler/mir:BasicBlock" %rr
}

@olang_2esole_2ecompiler_2feval_3acfn_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e12 = weak hidden constant i1 false
@.d2 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d3 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_run_on_stack" }>, align 8
declare double @llvm.arithmetic.fence.f64(double)
declare bfloat @__olang_int_bf16(i64, i1)
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
define internal { i64, [4 x i64] } @olang_lambda_4(ptr %env, i64 %a0) #0 {
entry:
  %l2 = alloca %"compiler/mir:Range"
  %l9 = alloca { i64, [4 x i64] }
  %rv = alloca { i64, [4 x i64] }
  %cp0 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  %cp1 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %env, i32 0, i32 1
  %cv1 = load %"compiler/mir:Range", ptr %cp1, !tbaa !28
  store %"compiler/mir:Range" %cv1, ptr %l2
  %vq0 = getelementptr { ptr, %"compiler/mir:Range", ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:Fn", ptr %cv0, i32 0, i32 11
  %t4 = getelementptr %"compiler/mir:Range", ptr %l2, i32 0, i32 0
  %t5 = load i32, ptr %t4, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t11 = add i64 %t7, %a0
  %t14 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %vc0, ptr %t3, i64 %t11)
  store { i64, [4 x i64] } %t14, ptr %l9
  br label %bb1
bb1:
  %t15 = load { i64, [4 x i64] }, ptr %l9
  store { i64, [4 x i64] } %t15, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
}

@.d5 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_arg_count" }>, align 8
@.d6 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_arg" }>, align 8
@.d7 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_env" }>, align 8
declare i64 @__olang_env(ptr, ptr, i64)
@.d8 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_err" }>, align 8
@.d9 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_stat" }>, align 8
declare i32 @__olang_stat(ptr, ptr)
@.d10 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_dir" }>, align 8
@.d11 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_realpath" }>, align 8
@.d12 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_dir" }>, align 8
declare i64 @__olang_dir(ptr, ptr, i64)
declare i64 @__olang_realpath(ptr, ptr, i64)
@.d13 = private constant <{ i64, [13 x i8] }> <{ i64 0, [13 x i8] c"__olang_spawn" }>, align 8
declare i32 @__olang_spawn(ptr, i64, i32, i32, i32, ptr)
@.d14 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_spawn_as" }>, align 8
declare i32 @__olang_spawn_as(ptr, ptr, i64, i32, i32, i32, ptr)
@.d15 = private constant <{ i64, [12 x i8] }> <{ i64 0, [12 x i8] c"__olang_exec" }>, align 8
declare i32 @__olang_exec(ptr, ptr, i64)
@.d16 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_mkdtemp" }>, align 8
declare i32 @__olang_mkdtemp(ptr)
@.d17 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"__olang_dyncall" }>, align 8
@.d18 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_dyncall_var" }>, align 8
@.d19 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_dyncall_var" }>, align 8
declare i64 @__olang_dyncall(ptr, ptr, ptr, i8 zeroext)
declare i64 @__olang_dyncall_var(ptr, ptr, ptr, i8 zeroext, i64)
@.d20 = private constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"__olang_dyncall_check" }>, align 8
declare i32 @__olang_dyncall_check(ptr, ptr, i8 zeroext)
@.d21 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"__olang_dyncall_var_check" }>, align 8
declare i32 @__olang_dyncall_var_check(ptr, ptr, i8 zeroext, i64)
@.d22 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_test_running" }>, align 8
@.d23 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_test_source" }>, align 8
@.d24 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_test_running" }>, align 8
@.d25 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d26 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_fuzz_input" }>, align 8
@.d27 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_bench_on" }>, align 8
@.d28 = private constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"__olang_bench_allocs_made" }>, align 8
@.d29 = private constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"__olang_bench_bytes_made" }>, align 8
@.d30 = private constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"__olang_bench_instructions" }>, align 8
@.d31 = private constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"__olang_bench_keep" }>, align 8
@.d32 = private constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"__olang_test_detach" }>, align 8
@.d33 = private constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"__olang_on_crash" }>, align 8
@.d34 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_err" }>, align 8
@.d35 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"__olang_arg_count" }>, align 8
@.d36 = private constant <{ i64, [11 x i8] }> <{ i64 0, [11 x i8] c"__olang_arg" }>, align 8
@.d37 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d38 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feval_3aSnapshot_2e5 = weak hidden constant i1 false
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

declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_drop(ptr) noinline
@.d39 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d40 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d41 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
@olang_2esole_2ecompiler_2feval_3aImage_2e0 = weak hidden constant i1 false
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feval_3aImage_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e13 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e17 = weak hidden constant i1 false
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e27 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e28 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e29 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e33 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e34 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e35 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e36 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2fmir_3aFnKey_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2fmir_3aFnKey_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e38 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
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

define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKey_3e_26_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKey_3e_26_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e40 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e41 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e42 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e43 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e44 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e46 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e49 = weak hidden constant i1 false
define linkonce_odr %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc() #0 {
entry:
  %l0 = alloca %"compiler/eval:alloc"
  %rv = alloca %"compiler/eval:alloc"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr @__olang_prog_scope
  %t2 = call %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %t1)
  store %"compiler/eval:alloc" %t2, ptr %l0
  br label %bb1
bb1:
  %t3 = load %"compiler/eval:alloc", ptr %l0
  store %"compiler/eval:alloc" %t3, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:alloc", ptr %rv
  ret %"compiler/eval:alloc" %rr
}

@olang_2esole_2ecompiler_2feval_3aMachine_2e51 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e52 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e53 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e54 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e55 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e56 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e57 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e58 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e60 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e62 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e63 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e64 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e65 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e66 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e67 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e68 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e72 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e74 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e75 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e76 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e79 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e81 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e82 = weak hidden constant i1 false
@.d42 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d43 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feval_3aMachine_2e88 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e89 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e91 = weak hidden constant i1 false
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

define linkonce_odr %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"compiler/mir:StmtList"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %rv = alloca %"compiler/mir:StmtList"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"compiler/mir:StmtList", ptr %a0
  store %"compiler/mir:StmtList" %t2, ptr %l1
  %t3 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l2, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t5, 0
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = mul i64 %t7, 176
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 176
  call void @llvm.memmove.p0.p0.i64(ptr %t13, ptr %t15, i64 %t17, i1 false)
  %t18 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t19 = getelementptr %"compiler/mir:StmtList", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = load %"compiler/mir:StmtList", ptr %l1
  store %"compiler/mir:StmtList" %t20, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/mir:StmtList", ptr %rv
  ret %"compiler/mir:StmtList" %rr
}

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
declare i1 @compiler_2feval_2eult64(i64 %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a07810e0cbb459c4_651f13a6a529fa18 = external constant [0 x i8]
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eaFree = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2erRequest = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %v0, i64 %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2elayoutOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1, ptr %a2, ptr %a3)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2egDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H5dd47b74e50a5f91c0bc89c15be27e45(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunlinkReg(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyNull = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@olang_loc_7b1287020d5a411f_7f0f28d70ecde84b = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyNaNSignal = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyNaNOp = external constant <{ [8 x i8], ptr }>
declare ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eResult(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eMathExtern(ptr %v0, { i64, ptr } %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eStartsWith(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2feval_2eWhyExtern = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewaitsForTask(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eforeignRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
@G_2ecompiler_2feval_2eWhyFfiPass = external constant <{ [8 x i8], ptr }>
@olang_loc_8455ed81fb66a668_e2c955a612231684 = external constant [0 x i8]
@olang_loc_e6f2fd943c115655_f5638f66c9629791 = external constant [0 x i8]
@olang_loc_24365dba12301136_85ae2e45ea64b572 = external constant [0 x i8]
@olang_loc_e79146937ca231cb_dd9a37031fe8e967 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiKind(ptr %v0, ptr %a0, i32 %a1)
declare i8 @std_2fffi_2eCode(i32 %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@G_2ecompiler_2feval_2evInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evPair = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
declare i8 @std_2fffi_2eArrayOf(i32 %a0)
declare i64 @std_2fffi_2eWordsFor(i64 %a0)
@G_2ecompiler_2feval_2evPtr = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtrOrBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
@G_2ecompiler_2feval_2eForeignId = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
@olang_loc_84b043302e365534_8c4896c766887f8 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekindWidth(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare { i32, i64 } @std_2fffi_2eCall(ptr %v0, ptr %v1, ptr %v2, { i64, ptr } %a0, { i64, ptr } %a1, { i64, ptr } %a2, i8 %a3, i64 %a4)
@G_2ecompiler_2feval_2eWhyFfiFind = external constant <{ [8 x i8], ptr }>
@olang_loc_40e1a1a182bd943_2fb0eb1e2dc82487 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/mir:Range" %a3)
@G_2ecompiler_2feval_2erCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4, i64 %a5, i64 %a6)
@olang_loc_4f5be22e13685bb3_572e44e2203c77cf = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyNullCall = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eaCode = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eAnySlotBase = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@olang_loc_bde43f50f3dd47_4bb44709ac02dbdb = external constant [0 x i8]
@olang_loc_467821a0171adcef_9f7d024fdb995773 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2feval_2erDtor = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erestoreGen(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edisown(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_6be2223409a54017_8087911232ed0aeb = external constant [0 x i8]
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eToArray_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eToArra_H6fd2d5f022de1d6918789edb46830007(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eToArray_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eToArray_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eToArray_3ccompiler_2fmir_3aCase_3e(ptr %v0, ptr %v1, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %a0)
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %a0)
@olang_loc_241753625ba0fed0_6f3de102ac38e444 = external constant [0 x i8]
@olang_loc_dff38e562927abfd_2c5e94ab37a21251 = external constant [0 x i8]
@G_2ecompiler_2feval_2efastStride = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
@olang_loc_f974da260d2147be_261330901ffea532 = external constant [0 x i8]
@olang_loc_d12e80ad37c716f3_175b69241b7dc127 = external constant [0 x i8]
declare %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v0, i32 %a0, i32 %a1)
@olang_loc_b7a31071d3fea69c_48dc013a177eb8 = external constant [0 x i8]
@olang_loc_3b5c2c57d838d869_14cf45850b137925 = external constant [0 x i8]
@olang_loc_8cc95a5d9353ea2a_915fe4a94e905706 = external constant [0 x i8]
@olang_loc_82df08a25f1b1bff_dd8fde79650f209b = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2estmtNamesGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatten(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4)
declare i1 @compiler_2feval_2etermNamesGlobal(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
@olang_loc_1d233abf61feac98_d906727ad02ddbc = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArrayValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyOutside = external constant <{ [8 x i8], ptr }>
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a0)
@olang_loc_e07540d555d7dc03_f134256d7232b767 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2efStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenUse(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, { i64, [4 x i64] } %a2, i64 %a3, ptr %a4, i64 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenPrim(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4, i64 %a5, ptr %a6, i64 %a7)
@olang_loc_f109e7d1d9d4095f_6bdbe89eeb68f2bb = external constant [0 x i8]
@olang_loc_8152b1e065150220_eadb27ce8ca90b2c = external constant [0 x i8]
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_463be9bfcfc802eb_383f1498b2d4337 = external constant [0 x i8]
@olang_loc_9c073bf56b8103e8_f70ded813690f4 = external constant [0 x i8]
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
@olang_loc_20cdf2bac11b5657_20b8fcdfbd19fb1b = external constant [0 x i8]
@olang_loc_3dd741f2ac40c2b6_e435d9fa661ce11a = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverBudget(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflat(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estmtAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evAgg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eHasPayload(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evEnum = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evOrd = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evNone = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0C\00\00\00\00\00\00\00" }>, align 8
@olang_loc_3ad4fb4c50638c0b_118ff119db9b3957 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2feval_3ascope_2ector(ptr %out, ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ePush_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, ptr %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i1 @compiler_2feval_2efits128(i64 %a0, i64 %a1, i1 %a2, i64 %a3, i1 %a4)
declare { i64, i64 } @compiler_2feval_2ewideMin(i64 %a0)
declare { i64, i64 } @compiler_2feval_2eneg128(i64 %a0, i64 %a1)
declare { i64, i64 } @compiler_2feval_2emul128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1)
declare i64 @compiler_2feval_2ecmp128(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4)
declare { i64, i64 } @compiler_2feval_2esub128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewritesAfter(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3)
@G_2ecompiler_2feval_2eWhyWritesGlobalVar = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyMutableGlobal = external constant <{ [8 x i8], ptr }>
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyChangeable = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyCycle = external constant <{ [8 x i8], ptr }>
@olang_loc_a7714af53687ff6b_1e8ca3031727412f = external constant [0 x i8]
@G_2ecompiler_2feval_2evWide = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_26a77dbb944b4c43_3cbd97c51474f5af = external constant [0 x i8]
declare { i32, { i64, [2 x i64] } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Ha5986096190b27059e1b255ecbd90571(ptr %v0, ptr %a0, i32 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H858b244a7d569c0419567613de7e1b7d(ptr %v0, ptr %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintArg(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_7289625dc306da68_1bb592dfdbe27504 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, { i64, ptr } %a3, i64 %a4)
@olang_loc_d526727003b18a55_2e4fcca09321f611 = external constant [0 x i8]
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2ebytesOf(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@olang_loc_1269d295d9d04536_be9a6b7fb42413f2 = external constant [0 x i8]
@olang_loc_d5c4bb6f444265cb_1686743ce9a847e7 = external constant [0 x i8]
@olang_loc_72e3b80bf5d68934_41b0c6a64027e678 = external constant [0 x i8]
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
@G_2ecompiler_2feval_2eInterpCrash = external constant <{ [8 x i8], ptr }>
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare void @std_2fos_2eOnCrash(ptr %v0, { i64, ptr } %a0)
@olang_loc_a18e8c5cba1eb19a_a9626f5dd72b6766 = external constant [0 x i8]
@G_2ecompiler_2feval_2evVoid = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eA(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eB(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFunc = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\07\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5b67d157b70117f_cddce93e80c09b93 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_77ec49cd2ef2b53_f798fa63e9acfcff = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eSetAt_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %a0, ptr %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6a636ae5a18dc9bdacf7dd1692df3f31(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eaData = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodePtr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eswitchTo(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, %"compiler/mir:Range" %a4, i32 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %a0, i64 %a1, i1 %a2, { i64, [4 x i64] } %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewait(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i32 %a4, { i64, [4 x i64] } %a5)
@olang_loc_f83a50064779c123_fa52c016159405ff = external constant [0 x i8]
declare i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereadsMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [15 x i64] } %a2)
@G_2ecompiler_2feval_2eWhyDestructor = external constant <{ [8 x i8], ptr }>
@olang_loc_14e567516c3eb5fb_1379a201658fd827 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyEnds = external constant <{ [8 x i8], ptr }>
declare { { i64, ptr }, %"compiler/source:Span" } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewhyCall(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, [7 x i64] } %a1, %"compiler/source:Span" %a2, ptr %a3, ptr %a4)
@olang_loc_86c25f3ef178583f_f0c157887637479b = external constant [0 x i8]
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2erdWide(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
@olang_loc_2742cef73dca1807_235d65ef4c242d83 = external constant [0 x i8]
declare i64 @compiler_2feval_2elz128(i64 %a0, i64 %a1, i64 %a2)
declare { i64, i64 } @compiler_2feval_2eextend128(i64 %a0, i64 %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidthOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteElems(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H075fcab2d197e70ad987ab163aa86164(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare %"std/prelude/map:MapIter.bf5835bb10600fe6a7fc1da14a6360d9" @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eIter_3cI64_2c_20I64_3e(ptr %v0, ptr %v1, ptr %a0)
declare { i32, %"std/prelude/map:MapEntry.e476b05c61172463a7c240e364dbb6d0" } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMapIter_3cI64_2c_20I64_3e_2eNext_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
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
declare i64 @compiler_2feval_2eminBits(i64 %a0)
@olang_loc_67473c0be830e037_6373d6aa11f96063 = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @compiler_2fmir_3aLvalue_2ector(ptr %v0, { i64, [2 x i64] } %a0, %"compiler/mir:Range" %a1)
@olang_loc_a1e0d3359bcb436b_ac2861f14772b5df = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aBlob_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fmir_3aGenInfo_2ector(ptr %out, ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_cc08951c194f6b90_8a6bb4cf02ef6404 = external constant [0 x i8]
@olang_loc_dae68cb4e78893bd_9d05ee8fba2ee511 = external constant [0 x i8]
@olang_loc_345703ed03c4ae7e_2d508d6edb3102f2 = external constant [0 x i8]
@olang_loc_956eea0cec0303b3_853c962c10b536e7 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_f8d056d05e46945c_b066e8956734d578 = external constant [0 x i8]
@olang_loc_d51e19176d62df29_641578e9eb8755e5 = external constant [0 x i8]
@olang_loc_311cf37c7f5d32ea_160682b5288055c6 = external constant [0 x i8]
@olang_loc_e738991863bfbdbf_25eece77a9bcd95b = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_64487eeb593bd358_be690252b210c97c = external constant [0 x i8]
@olang_loc_d6ff74f701ada4c5_c582616f4398d5c9 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_d7598e698fcd0229_1ca32a5a713fdca5 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2fmir_3aFnKey_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKey_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_2ector(ptr %v0)

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
