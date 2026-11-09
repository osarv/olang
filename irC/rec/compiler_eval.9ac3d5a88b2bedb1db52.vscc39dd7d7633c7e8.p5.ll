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
%"compiler/eval:Machine" = type { ptr, i32, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64 }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:Blob" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineDestructor(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 34
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Haf69023555548e8239d9db5dde4c25f9(ptr %v0, ptr %t3, i32 %a1, { i64, [2 x i64] } %a2)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eTraceLen(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 85
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  %t7 = sdiv i64 %t6, 4
  store i64 %t7, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 23
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 55
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %a0, i64 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l0, !tbaa !29
  %t4 = getelementptr %"compiler/eval:Machine", ptr %t2, i32 0, i32 23
  %t5 = load { i64, ptr }, ptr %t4, !tbaa !27
  store { i64, ptr } %t5, ptr %l5, !tbaa !27
  %t8 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t9 = load ptr, ptr %t8, !tbaa !27
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i64 %a1
  %t11 = getelementptr %"compiler/eval:cfn", ptr %t10, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 74
  store i64 %t12, ptr %t15, !tbaa !24
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 75
  store %"compiler/source:Span" %a2, ptr %t20
  br label %ret
ret:
  ret void
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 23
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l6, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 55
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
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 55
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecaseHolds(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca { i64, i64 }
  %l8 = alloca i64
  %l11 = alloca i64
  %l22 = alloca { i64, i64 }
  %l28 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l11, !tbaa !24
  %t9 = icmp ne i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  %t11 = load i64, ptr %l2, !tbaa !24
  %t15 = and i64 %t11, %a5
  %t16 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp eq i64 %t15, %t16
  store i1 %t19, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t23 = load i64, ptr %l2, !tbaa !24
  %t27 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %t21, i32 %t22, i64 %t23)
  store { i64, i64 } %t27, ptr %l22
  br label %bb5
bb5:
  %t28 = load { i64, i64 }, ptr %l22
  store { i64, i64 } %t28, ptr %l6
  %t29 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t30 = load i64, ptr %t29, !tbaa !24
  %t32 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t33 = load i64, ptr %t32, !tbaa !24
  store i64 %t33, ptr %l8, !tbaa !24
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = icmp eq i64 %t30, %t36
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = load i64, ptr %l8, !tbaa !24
  %t45 = icmp eq i64 %t41, %a4
  store i1 %t45, ptr %l28, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l28, !tbaa !21
  br label %bb8
bb8:
  %t47 = load i1, ptr %l28, !tbaa !21
  store i1 %t47, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseNow(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l17 = alloca %"compiler/eval:scope"
  %l20 = alloca i1
  %l28 = alloca %"compiler/eval:scope"
  %l34 = alloca %"compiler/eval:task"
  %l39 = alloca ptr
  %l45 = alloca %"compiler/eval:scope"
  %l52 = alloca ptr
  %l73 = alloca i64
  %l75 = alloca { i64, ptr }
  %l79 = alloca i1
  %t11 = alloca %"compiler/eval:scope", align 8
  %t33 = alloca %"compiler/eval:scope", align 8
  %t68 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l2, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %t1, %t2
  store i64 %t5, ptr %l3, !tbaa !24
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 49
  %t10 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l17, ptr %t11, i64 144, i1 false)
  br label %bb2
bb2:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l17, i32 0, i32 10
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 19
  %t22 = load i1, ptr %t21, !tbaa !21
  %t24 = xor i1 %t22, true
  store i1 %t24, ptr %l20, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l20, !tbaa !21
  br label %bb5
bb5:
  %t26 = load i1, ptr %l20, !tbaa !21
  %t27 = xor i1 %t26, true
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %bb23
bb7:
  br label %bb8
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 49
  %t32 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t33, ptr %v0, ptr %t31, i64 %t32)
  call void @llvm.memmove.p0.p0.i64(ptr %l28, ptr %t33, i64 144, i1 false)
  br label %bb9
bb9:
  %t36 = getelementptr %"compiler/eval:scope", ptr %l28, i32 0, i32 10
  %t37 = load i64, ptr %t36, !tbaa !24
  store i64 %t37, ptr %l4, !tbaa !24
  %t39 = load i64, ptr %l3, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 53
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/eval:task" %t47, ptr %l34
  br label %bb10
bb10:
  %t48 = getelementptr %"compiler/eval:task", ptr %l34, i32 0, i32 3
  %t49 = load i64, ptr %t48, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  %t51 = load ptr, ptr %l0, !tbaa !29
  %t53 = getelementptr %"compiler/eval:Machine", ptr %t51, i32 0, i32 49
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t53, i64 %t54)
  store ptr %t57, ptr %l39
  br label %bb11
bb11:
  %t58 = load ptr, ptr %l39, !tbaa !29
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = getelementptr %"compiler/eval:scope", ptr %t58, i32 0, i32 10
  store i64 %t60, ptr %t63, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 49
  %t67 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t68, ptr %v0, ptr %t66, i64 %t67)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t68, i64 144, i1 false)
  br label %bb12
bb12:
  %t71 = getelementptr %"compiler/eval:scope", ptr %l45, i32 0, i32 10
  %t72 = load i64, ptr %t71, !tbaa !24
  %t74 = icmp slt i64 %t72, 0
  br i1 %t74, label %bb13, label %bb14
bb13:
  %t76 = load i64, ptr %l3, !tbaa !24
  store i64 -1, ptr %l9, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 49
  %t84 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t80, i64 %t76)
  store ptr %t84, ptr %l52
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t85 = load ptr, ptr %l52, !tbaa !29
  %t87 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr %"compiler/eval:scope", ptr %t85, i32 0, i32 11
  store i64 %t87, ptr %t90, !tbaa !24
  br label %bb16
bb16:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l1, !tbaa !24
  %t93 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %t91, i64 %t92, i64 %t93)
  br label %bb17
bb17:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 56
  %t100 = load i64, ptr %t99, !tbaa !24
  %t101 = load i64, ptr %l1, !tbaa !24
  %t103 = add i64 %t101, 1
  %t106 = icmp sgt i64 %t100, %t103
  br i1 %t106, label %bb18, label %bb19
bb18:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i64, ptr %l1, !tbaa !24
  %t111 = add i64 %t109, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t108, i64 %t111)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  br label %bb1
bb23:
  %t114 = load ptr, ptr %l0, !tbaa !29
  %t116 = getelementptr %"compiler/eval:Machine", ptr %t114, i32 0, i32 19
  %t117 = load i1, ptr %t116, !tbaa !21
  br i1 %t117, label %bb24, label %bb25
bb24:
  br label %ret
bb25:
  br label %bb26
bb26:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 59
  %t122 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t121, i64 %t122)
  br label %bb27
bb27:
  br label %bb28
bb28:
  %t125 = load ptr, ptr %l0, !tbaa !29
  %t127 = getelementptr %"compiler/eval:Machine", ptr %t125, i32 0, i32 59
  %t129 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t127)
  store i64 %t129, ptr %l73
  br label %bb29
bb29:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/eval:Machine", ptr %t130, i32 0, i32 55
  %t133 = load { i64, ptr }, ptr %t132, !tbaa !27
  store { i64, ptr } %t133, ptr %l75, !tbaa !27
  %t134 = load i64, ptr %l1, !tbaa !24
  %t136 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr %"compiler/eval:frame", ptr %t137, i64 %t134
  %t139 = getelementptr %"compiler/eval:frame", ptr %t138, i32 0, i32 9
  %t140 = load i64, ptr %t139, !tbaa !24
  %t141 = load i64, ptr %l73, !tbaa !24
  %t143 = icmp sgt i64 %t141, %t140
  br i1 %t143, label %bb30, label %bb31
bb30:
  %t145 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/eval:Machine", ptr %t145, i32 0, i32 19
  %t148 = load i1, ptr %t147, !tbaa !21
  %t150 = xor i1 %t148, true
  store i1 %t150, ptr %l79, !tbaa !21
  br label %bb32
bb31:
  store i1 false, ptr %l79, !tbaa !21
  br label %bb32
bb32:
  %t152 = load i1, ptr %l79, !tbaa !21
  %t153 = xor i1 %t152, true
  br i1 %t153, label %bb33, label %bb34
bb33:
  br label %bb42
bb34:
  br label %bb35
bb35:
  %t155 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %t155)
  br label %bb36
bb36:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/eval:Machine", ptr %t157, i32 0, i32 56
  %t160 = load i64, ptr %t159, !tbaa !24
  %t161 = load i64, ptr %l1, !tbaa !24
  %t163 = add i64 %t161, 1
  %t166 = icmp sgt i64 %t160, %t163
  br i1 %t166, label %bb37, label %bb38
bb37:
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t169 = load i64, ptr %l1, !tbaa !24
  %t171 = add i64 %t169, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t168, i64 %t171)
  br label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb40
bb40:
  br label %bb41
bb41:
  br label %bb28
bb42:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edecode(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
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
  %l86 = alloca i64
  %l92 = alloca i64
  %l93 = alloca i64
  %l97 = alloca i64
  %l99 = alloca i64
  %l102 = alloca { i64, ptr }
  %l106 = alloca i64
  %l107 = alloca i64
  %l111 = alloca i64
  %l115 = alloca { i64, ptr }
  %l117 = alloca i64
  %l118 = alloca i32
  %l122 = alloca i64
  %l124 = alloca i64
  %l125 = alloca %"compiler/source:Span"
  %l129 = alloca { i64, ptr }
  %l131 = alloca i64
  %l134 = alloca i64
  %l138 = alloca { i64, ptr }
  %l140 = alloca i64
  %l144 = alloca i64
  %l146 = alloca i64
  %l149 = alloca { i64, ptr }
  %l155 = alloca i64
  %l158 = alloca i64
  %l179 = alloca ptr
  %l180 = alloca { i64, ptr }
  %l185 = alloca i64
  %l187 = alloca i64
  %l192 = alloca { i64, [21 x i64] }
  %l193 = alloca { i64, ptr }
  %l195 = alloca { i64, [21 x i64] }
  %l196 = alloca { i64, ptr }
  %l197 = alloca i64
  %l200 = alloca i1
  %l201 = alloca { i64, ptr }
  %l214 = alloca { i64, ptr }
  %l218 = alloca { i64, ptr }
  %l219 = alloca i64
  %l223 = alloca i1
  %l226 = alloca { i64, ptr }
  %l229 = alloca i64
  %l233 = alloca i64
  %l236 = alloca { i64, ptr }
  %l240 = alloca i64
  %l244 = alloca i64
  %l247 = alloca i64
  %l265 = alloca { i64, ptr }
  %l266 = alloca i64
  %l267 = alloca ptr
  %l269 = alloca ptr
  %l273 = alloca i32
  %l275 = alloca %"compiler/mir:Local"
  %l277 = alloca i1
  %l278 = alloca i1
  %l279 = alloca ptr
  %l281 = alloca ptr
  %l285 = alloca i32
  %l286 = alloca i1
  %l289 = alloca %"compiler/eval:cfn"
  %s7 = alloca %olang.scope
  %t1 = alloca %"compiler/eval:cfn", align 8
  %t243 = alloca i64
  %t277 = alloca i64
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
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 264, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %t3, ptr %l28, i64 264, i1 false)
  %t4 = load ptr, ptr %l1, !tbaa !29
  %t6 = getelementptr %"compiler/mir:Fn", ptr %t4, i32 0, i32 2
  %t7 = load i64, ptr %t6, !tbaa !24
  %t9 = load ptr, ptr %lp2
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i32 0, i32 0
  store i64 %t7, ptr %t10, !tbaa !24
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/mir:Fn", ptr %t11, i32 0, i32 7
  %t15 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eToArray_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %v2, ptr %t13)
  store { i64, ptr } %t15, ptr %l33
  br label %bb2
bb2:
  %t16 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t17 = load ptr, ptr %lp2
  %t18 = getelementptr %"compiler/eval:cfn", ptr %t17, i32 0, i32 1
  store { i64, ptr } %t16, ptr %t18, !tbaa !27
  %t19 = load ptr, ptr %l1, !tbaa !29
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t19, i32 0, i32 8
  %t23 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeInfo_3e_2eToArra_H6fd2d5f022de1d6918789edb46830007(ptr %v1, ptr %v2, ptr %t21)
  store { i64, ptr } %t23, ptr %l36
  br label %bb3
bb3:
  %t24 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t25 = load ptr, ptr %lp2
  %t26 = getelementptr %"compiler/eval:cfn", ptr %t25, i32 0, i32 2
  store { i64, ptr } %t24, ptr %t26, !tbaa !27
  %t27 = load ptr, ptr %l1, !tbaa !29
  %t29 = getelementptr %"compiler/mir:Fn", ptr %t27, i32 0, i32 10
  %t31 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eToArray_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %v2, ptr %t29)
  store { i64, ptr } %t31, ptr %l39
  br label %bb4
bb4:
  %t32 = load { i64, ptr }, ptr %l39, !tbaa !27
  %t33 = load ptr, ptr %lp2
  %t34 = getelementptr %"compiler/eval:cfn", ptr %t33, i32 0, i32 3
  store { i64, ptr } %t32, ptr %t34, !tbaa !27
  %t35 = load ptr, ptr %l1, !tbaa !29
  %t37 = getelementptr %"compiler/mir:Fn", ptr %t35, i32 0, i32 11
  %t39 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eToArray_3ccompiler_2fmir_3aOperand_3e(ptr %v1, ptr %v2, ptr %t37)
  store { i64, ptr } %t39, ptr %l42
  br label %bb5
bb5:
  %t40 = load { i64, ptr }, ptr %l42, !tbaa !27
  %t41 = load ptr, ptr %lp2
  %t42 = getelementptr %"compiler/eval:cfn", ptr %t41, i32 0, i32 4
  store { i64, ptr } %t40, ptr %t42, !tbaa !27
  %t43 = load ptr, ptr %l1, !tbaa !29
  %t45 = getelementptr %"compiler/mir:Fn", ptr %t43, i32 0, i32 14
  %t47 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eToArray_3ccompiler_2fmir_3aCall_3e(ptr %v1, ptr %v2, ptr %t45)
  store { i64, ptr } %t47, ptr %l45
  br label %bb6
bb6:
  %t48 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t49 = load ptr, ptr %lp2
  %t50 = getelementptr %"compiler/eval:cfn", ptr %t49, i32 0, i32 5
  store { i64, ptr } %t48, ptr %t50, !tbaa !27
  %t51 = ptrtoint ptr %v2 to i64
  store i64 %t51, ptr %l46, !tbaa !24
  %t52 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e6
  br i1 %t52, label %bb7, label %bb8
bb7:
  %t54 = call ptr @__olang_region_make(ptr %v2)
  %t55 = ptrtoint ptr %t54 to i64
  store i64 %t55, ptr %l46, !tbaa !24
  br label %bb8
bb8:
  %t56 = load ptr, ptr %l1, !tbaa !29
  %t58 = getelementptr %"compiler/mir:Fn", ptr %t56, i32 0, i32 15
  %t59 = load i64, ptr %l46
  %t60 = inttoptr i64 %t59 to ptr
  %t62 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCase_3e_2eToArray_3ccompiler_2fmir_3aCase_3e(ptr %v1, ptr %t60, ptr %t58)
  store { i64, ptr } %t62, ptr %l50
  br label %bb9
bb9:
  %t63 = load ptr, ptr %lp2
  %t64 = getelementptr %"compiler/eval:cfn", ptr %t63, i32 0, i32 6
  %t65 = load { i64, ptr }, ptr %t64, !tbaa !27
  store { i64, ptr } %t65, ptr %l51, !tbaa !27
  %t66 = load { i64, ptr }, ptr %l50, !tbaa !27
  %t67 = load ptr, ptr %lp2
  %t68 = getelementptr %"compiler/eval:cfn", ptr %t67, i32 0, i32 6
  store { i64, ptr } %t66, ptr %t68, !tbaa !27
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e6
  br i1 %t69, label %bb10, label %bb11
bb10:
  %t71 = load { i64, ptr }, ptr %l51
  %t72 = extractvalue { i64, ptr } %t71, 1
  call void @__olang_region_release(ptr %t72)
  store { i64, ptr } zeroinitializer, ptr %l51
  br label %bb11
bb11:
  store i64 0, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/mir:Fn", ptr %t73, i32 0, i32 9
  %t77 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %t75)
  store i64 %t77, ptr %l55
  br label %bb12
bb12:
  %t78 = load i64, ptr %l55, !tbaa !24
  store i64 %t78, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t79 = load i64, ptr %l5, !tbaa !24
  %t80 = load i64, ptr %l4, !tbaa !24
  %t83 = icmp sgt i64 %t79, %t80
  br i1 %t83, label %bb13, label %bb14
bb13:
  %t85 = load i64, ptr %l6, !tbaa !24
  %t87 = icmp sgt i64 %t85, 0
  br i1 %t87, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb18
bb15:
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load i64, ptr %l4, !tbaa !24
  %t93 = sub i64 %t89, %t90
  %t94 = load i64, ptr %l6, !tbaa !24
  %t97 = add i64 %t93, %t94
  %t99 = sub i64 %t97, 1
  %t100 = load i64, ptr %l6, !tbaa !24
  %t103 = sdiv i64 %t99, %t100
  store i64 %t103, ptr %l62, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb17
bb17:
  %t105 = load i64, ptr %l62, !tbaa !24
  store i64 %t105, ptr %l59, !tbaa !24
  br label %bb18
bb18:
  %t106 = load i64, ptr %l59, !tbaa !24
  store i64 %t106, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb19
bb19:
  %t107 = load i64, ptr %l8, !tbaa !24
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  %t113 = xor i1 %t111, true
  br i1 %t113, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  br label %bb22
bb22:
  %t115 = load i64, ptr %l4, !tbaa !24
  %t116 = load i64, ptr %l8, !tbaa !24
  %t117 = load i64, ptr %l6, !tbaa !24
  %t120 = mul i64 %t116, %t117
  %t123 = add i64 %t115, %t120
  %t125 = load i64, ptr %l3, !tbaa !24
  store i64 %t125, ptr %l80, !tbaa !24
  %t126 = load ptr, ptr %l1, !tbaa !29
  %t128 = getelementptr %"compiler/mir:Fn", ptr %t126, i32 0, i32 9
  %t132 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %v1, ptr %t128, i64 %t123)
  store %"compiler/mir:BasicBlock" %t132, ptr %l84
  br label %bb23
bb23:
  %t133 = getelementptr %"compiler/mir:BasicBlock", ptr %l84, i32 0, i32 0
  %t135 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v1, ptr %t133)
  store i64 %t135, ptr %l86
  br label %bb24
bb24:
  %t136 = load i64, ptr %l80, !tbaa !24
  %t137 = load i64, ptr %l86, !tbaa !24
  %t138 = add i64 %t136, %t137
  store i64 %t138, ptr %l3, !tbaa !24
  br label %bb25
bb25:
  %t140 = load i64, ptr %l8, !tbaa !24
  %t142 = add i64 %t140, 1
  store i64 %t142, ptr %l8, !tbaa !24
  br label %bb19
bb26:
  %t144 = load ptr, ptr %l1, !tbaa !29
  %t146 = getelementptr %"compiler/mir:Fn", ptr %t144, i32 0, i32 9
  %t148 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eLen_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %t146)
  store i64 %t148, ptr %l92
  br label %bb27
bb27:
  %t149 = load i64, ptr %l92, !tbaa !24
  store i64 %t149, ptr %l10, !tbaa !24
  %t150 = load i64, ptr %l3, !tbaa !24
  store i64 %t150, ptr %l93, !tbaa !24
  %t151 = load i64, ptr %l93, !tbaa !24
  %t152 = icmp sge i64 %t151, 0
  br i1 %t152, label %bb28, label %bb29
bb28:
  %t154 = load i64, ptr %l93, !tbaa !24
  %t155 = icmp sle i64 %t154, 52405522936674862
  br i1 %t155, label %bb30, label %bb31
bb29:
  call void @__olang_check_failed(ptr @olang_loc_241753625ba0fed0_6f3de102ac38e444)
  unreachable
bb30:
  %t157 = load i64, ptr %l93, !tbaa !24
  %t158 = mul i64 %t157, 176
  %t159 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t158)
  %t160 = insertvalue { i64, ptr } undef, i64 %t157, 0
  %t161 = insertvalue { i64, ptr } %t160, ptr %t159, 1
  %t163 = load ptr, ptr %lp2
  %t164 = getelementptr %"compiler/eval:cfn", ptr %t163, i32 0, i32 7
  store { i64, ptr } %t161, ptr %t164, !tbaa !27
  %t165 = ptrtoint ptr %v2 to i64
  store i64 %t165, ptr %l97, !tbaa !24
  %t166 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e10
  br i1 %t166, label %bb32, label %bb33
bb31:
  call void @__olang_check_failed(ptr @olang_loc_241753625ba0fed0_6f3de102ac38e444)
  unreachable
bb32:
  %t168 = call ptr @__olang_region_make(ptr %v2)
  %t169 = ptrtoint ptr %t168 to i64
  store i64 %t169, ptr %l97, !tbaa !24
  br label %bb33
bb33:
  %t170 = load i64, ptr %l3, !tbaa !24
  store i64 %t170, ptr %l99, !tbaa !24
  %t171 = load i64, ptr %l99, !tbaa !24
  %t172 = icmp sge i64 %t171, 0
  br i1 %t172, label %bb34, label %bb35
bb34:
  %t174 = load i64, ptr %l99, !tbaa !24
  %t175 = mul i64 %t174, 1
  %t176 = load i64, ptr %l97
  %t177 = inttoptr i64 %t176 to ptr
  %t178 = call ptr @__olang_scope_alloc_zeroed(ptr %t177, i64 %t175)
  %t179 = insertvalue { i64, ptr } undef, i64 %t174, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t178, 1
  %t181 = load ptr, ptr %lp2
  %t182 = getelementptr %"compiler/eval:cfn", ptr %t181, i32 0, i32 10
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  store { i64, ptr } %t183, ptr %l102, !tbaa !27
  %t185 = load ptr, ptr %lp2
  %t186 = getelementptr %"compiler/eval:cfn", ptr %t185, i32 0, i32 10
  store { i64, ptr } %t180, ptr %t186, !tbaa !27
  %t187 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e10
  br i1 %t187, label %bb36, label %bb37
bb35:
  call void @__olang_check_failed(ptr @olang_loc_dff38e562927abfd_2c5e94ab37a21251)
  unreachable
bb36:
  %t189 = load { i64, ptr }, ptr %l102
  %t190 = extractvalue { i64, ptr } %t189, 1
  call void @__olang_region_release(ptr %t190)
  store { i64, ptr } zeroinitializer, ptr %l102
  br label %bb37
bb37:
  %t191 = load ptr, ptr %l1, !tbaa !29
  %t193 = getelementptr %"compiler/mir:Fn", ptr %t191, i32 0, i32 6
  %t195 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v1, ptr %t193)
  store i64 %t195, ptr %l106
  br label %bb38
bb38:
  %t196 = load i64, ptr %l106, !tbaa !24
  %t197 = load ptr, ptr %lp2
  %t198 = getelementptr %"compiler/eval:cfn", ptr %t197, i32 0, i32 15
  store i64 %t196, ptr %t198, !tbaa !24
  %t199 = ptrtoint ptr %v2 to i64
  store i64 %t199, ptr %l107, !tbaa !24
  %t200 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e13
  br i1 %t200, label %bb39, label %bb40
bb39:
  %t202 = call ptr @__olang_region_make(ptr %v2)
  %t203 = ptrtoint ptr %t202 to i64
  store i64 %t203, ptr %l107, !tbaa !24
  br label %bb40
bb40:
  %t204 = load i64, ptr %l3, !tbaa !24
  %t205 = load i64, ptr @G_2ecompiler_2feval_2efastStride, !tbaa !24
  %t208 = mul i64 %t204, %t205
  store i64 %t208, ptr %l111, !tbaa !24
  %t209 = load i64, ptr %l111, !tbaa !24
  %t210 = icmp sge i64 %t209, 0
  br i1 %t210, label %bb41, label %bb42
bb41:
  %t212 = load i64, ptr %l111, !tbaa !24
  %t213 = icmp sle i64 %t212, 1152921504606846975
  br i1 %t213, label %bb43, label %bb44
bb42:
  call void @__olang_check_failed(ptr @olang_loc_f974da260d2147be_261330901ffea532)
  unreachable
bb43:
  %t215 = load i64, ptr %l111, !tbaa !24
  %t216 = mul i64 %t215, 8
  %t217 = load i64, ptr %l107
  %t218 = inttoptr i64 %t217 to ptr
  %t219 = call ptr @__olang_scope_alloc_zeroed(ptr %t218, i64 %t216)
  %t220 = insertvalue { i64, ptr } undef, i64 %t215, 0
  %t221 = insertvalue { i64, ptr } %t220, ptr %t219, 1
  %t222 = load ptr, ptr %lp2
  %t223 = getelementptr %"compiler/eval:cfn", ptr %t222, i32 0, i32 13
  %t224 = load { i64, ptr }, ptr %t223, !tbaa !27
  store { i64, ptr } %t224, ptr %l115, !tbaa !27
  %t226 = load ptr, ptr %lp2
  %t227 = getelementptr %"compiler/eval:cfn", ptr %t226, i32 0, i32 13
  store { i64, ptr } %t221, ptr %t227, !tbaa !27
  %t228 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e13
  br i1 %t228, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_f974da260d2147be_261330901ffea532)
  unreachable
bb45:
  %t230 = load { i64, ptr }, ptr %l115
  %t231 = extractvalue { i64, ptr } %t230, 1
  call void @__olang_region_release(ptr %t231)
  store { i64, ptr } zeroinitializer, ptr %l115
  br label %bb46
bb46:
  %t232 = load i64, ptr %l3, !tbaa !24
  store i64 %t232, ptr %l117, !tbaa !24
  store i32 3, ptr %l118
  %t233 = load i64, ptr %l117, !tbaa !24
  %t234 = icmp sge i64 %t233, 0
  br i1 %t234, label %bb47, label %bb48
bb47:
  %t236 = load i64, ptr %l117, !tbaa !24
  %t237 = icmp sle i64 %t236, 2305843009213693951
  br i1 %t237, label %bb49, label %bb50
bb48:
  call void @__olang_check_failed(ptr @olang_loc_d12e80ad37c716f3_175b69241b7dc127)
  unreachable
bb49:
  %t239 = load i64, ptr %l117, !tbaa !24
  %t240 = mul i64 %t239, 4
  %t241 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t240)
  %t242 = load i32, ptr %l118, !range !{i32 0, i32 52}
  store i64 0, ptr %t243
  br label %fill.244
fill.244:
  %t247 = load i64, ptr %t243
  %t248 = icmp slt i64 %t247, %t239
  br i1 %t248, label %fillb.245, label %filld.246
fillb.245:
  %t249 = getelementptr i32, ptr %t241, i64 %t247
  store i32 %t242, ptr %t249
  %t250 = add i64 %t247, 1
  store i64 %t250, ptr %t243
  br label %fill.244
filld.246:
  %t251 = insertvalue { i64, ptr } undef, i64 %t239, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t241, 1
  %t254 = load ptr, ptr %lp2
  %t255 = getelementptr %"compiler/eval:cfn", ptr %t254, i32 0, i32 14
  store { i64, ptr } %t252, ptr %t255, !tbaa !27
  %t256 = ptrtoint ptr %v2 to i64
  store i64 %t256, ptr %l122, !tbaa !24
  %t257 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e18
  br i1 %t257, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_d12e80ad37c716f3_175b69241b7dc127)
  unreachable
bb51:
  %t259 = call ptr @__olang_region_make(ptr %v2)
  %t260 = ptrtoint ptr %t259 to i64
  store i64 %t260, ptr %l122, !tbaa !24
  br label %bb52
bb52:
  %t261 = load i64, ptr %l3, !tbaa !24
  store i64 %t261, ptr %l124, !tbaa !24
  %t262 = load i64, ptr %l122
  %t263 = inttoptr i64 %t262 to ptr
  %t264 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %t263, i32 0, i32 0)
  store %"compiler/source:Span" %t264, ptr %l125
  br label %bb53
bb53:
  %t265 = load i64, ptr %l124, !tbaa !24
  %t266 = icmp sge i64 %t265, 0
  br i1 %t266, label %bb54, label %bb55
bb54:
  %t268 = load i64, ptr %l124, !tbaa !24
  %t269 = icmp sle i64 %t268, 1152921504606846975
  br i1 %t269, label %bb56, label %bb57
bb55:
  call void @__olang_check_failed(ptr @olang_loc_b7a31071d3fea69c_48dc013a177eb8)
  unreachable
bb56:
  %t271 = load i64, ptr %l124, !tbaa !24
  %t272 = mul i64 %t271, 8
  %t273 = load i64, ptr %l122
  %t274 = inttoptr i64 %t273 to ptr
  %t275 = call ptr @__olang_scope_alloc(ptr %t274, i64 %t272)
  %t276 = load %"compiler/source:Span", ptr %l125
  store i64 0, ptr %t277
  br label %fill.278
fill.278:
  %t281 = load i64, ptr %t277
  %t282 = icmp slt i64 %t281, %t271
  br i1 %t282, label %fillb.279, label %filld.280
fillb.279:
  %t283 = getelementptr %"compiler/source:Span", ptr %t275, i64 %t281
  store %"compiler/source:Span" %t276, ptr %t283
  %t284 = add i64 %t281, 1
  store i64 %t284, ptr %t277
  br label %fill.278
filld.280:
  %t285 = insertvalue { i64, ptr } undef, i64 %t271, 0
  %t286 = insertvalue { i64, ptr } %t285, ptr %t275, 1
  %t287 = load ptr, ptr %lp2
  %t288 = getelementptr %"compiler/eval:cfn", ptr %t287, i32 0, i32 18
  %t289 = load { i64, ptr }, ptr %t288, !tbaa !27
  store { i64, ptr } %t289, ptr %l129, !tbaa !27
  %t291 = load ptr, ptr %lp2
  %t292 = getelementptr %"compiler/eval:cfn", ptr %t291, i32 0, i32 18
  store { i64, ptr } %t286, ptr %t292, !tbaa !27
  %t293 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e18
  br i1 %t293, label %bb58, label %bb59
bb57:
  call void @__olang_check_failed(ptr @olang_loc_b7a31071d3fea69c_48dc013a177eb8)
  unreachable
bb58:
  %t295 = load { i64, ptr }, ptr %l129
  %t296 = extractvalue { i64, ptr } %t295, 1
  call void @__olang_region_release(ptr %t296)
  store { i64, ptr } zeroinitializer, ptr %l129
  br label %bb59
bb59:
  %t297 = ptrtoint ptr %v2 to i64
  store i64 %t297, ptr %l131, !tbaa !24
  %t298 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e8
  br i1 %t298, label %bb60, label %bb61
bb60:
  %t300 = call ptr @__olang_region_make(ptr %v2)
  %t301 = ptrtoint ptr %t300 to i64
  store i64 %t301, ptr %l131, !tbaa !24
  br label %bb61
bb61:
  %t302 = load i64, ptr %l10, !tbaa !24
  %t304 = add i64 %t302, 1
  store i64 %t304, ptr %l134, !tbaa !24
  %t305 = load i64, ptr %l134, !tbaa !24
  %t306 = icmp sge i64 %t305, 0
  br i1 %t306, label %bb62, label %bb63
bb62:
  %t308 = load i64, ptr %l134, !tbaa !24
  %t309 = icmp sle i64 %t308, 1152921504606846975
  br i1 %t309, label %bb64, label %bb65
bb63:
  call void @__olang_check_failed(ptr @olang_loc_3b5c2c57d838d869_14cf45850b137925)
  unreachable
bb64:
  %t311 = load i64, ptr %l134, !tbaa !24
  %t312 = mul i64 %t311, 8
  %t313 = load i64, ptr %l131
  %t314 = inttoptr i64 %t313 to ptr
  %t315 = call ptr @__olang_scope_alloc_zeroed(ptr %t314, i64 %t312)
  %t316 = insertvalue { i64, ptr } undef, i64 %t311, 0
  %t317 = insertvalue { i64, ptr } %t316, ptr %t315, 1
  %t318 = load ptr, ptr %lp2
  %t319 = getelementptr %"compiler/eval:cfn", ptr %t318, i32 0, i32 8
  %t320 = load { i64, ptr }, ptr %t319, !tbaa !27
  store { i64, ptr } %t320, ptr %l138, !tbaa !27
  %t322 = load ptr, ptr %lp2
  %t323 = getelementptr %"compiler/eval:cfn", ptr %t322, i32 0, i32 8
  store { i64, ptr } %t317, ptr %t323, !tbaa !27
  %t324 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e8
  br i1 %t324, label %bb66, label %bb67
bb65:
  call void @__olang_check_failed(ptr @olang_loc_3b5c2c57d838d869_14cf45850b137925)
  unreachable
bb66:
  %t326 = load { i64, ptr }, ptr %l138
  %t327 = extractvalue { i64, ptr } %t326, 1
  call void @__olang_region_release(ptr %t327)
  store { i64, ptr } zeroinitializer, ptr %l138
  br label %bb67
bb67:
  %t328 = load i64, ptr %l10, !tbaa !24
  store i64 %t328, ptr %l140, !tbaa !24
  %t329 = load i64, ptr %l140, !tbaa !24
  %t330 = icmp sge i64 %t329, 0
  br i1 %t330, label %bb68, label %bb69
bb68:
  %t332 = load i64, ptr %l140, !tbaa !24
  %t333 = icmp sle i64 %t332, 128102389400760775
  br i1 %t333, label %bb70, label %bb71
bb69:
  call void @__olang_check_failed(ptr @olang_loc_8cc95a5d9353ea2a_915fe4a94e905706)
  unreachable
bb70:
  %t335 = load i64, ptr %l140, !tbaa !24
  %t336 = mul i64 %t335, 72
  %t337 = call ptr @__olang_scope_alloc_zeroed(ptr %v2, i64 %t336)
  %t338 = insertvalue { i64, ptr } undef, i64 %t335, 0
  %t339 = insertvalue { i64, ptr } %t338, ptr %t337, 1
  %t341 = load ptr, ptr %lp2
  %t342 = getelementptr %"compiler/eval:cfn", ptr %t341, i32 0, i32 9
  store { i64, ptr } %t339, ptr %t342, !tbaa !27
  %t343 = ptrtoint ptr %v2 to i64
  store i64 %t343, ptr %l144, !tbaa !24
  %t344 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e11
  br i1 %t344, label %bb72, label %bb73
bb71:
  call void @__olang_check_failed(ptr @olang_loc_8cc95a5d9353ea2a_915fe4a94e905706)
  unreachable
bb72:
  %t346 = call ptr @__olang_region_make(ptr %v2)
  %t347 = ptrtoint ptr %t346 to i64
  store i64 %t347, ptr %l144, !tbaa !24
  br label %bb73
bb73:
  %t348 = load i64, ptr %l10, !tbaa !24
  store i64 %t348, ptr %l146, !tbaa !24
  %t349 = load i64, ptr %l146, !tbaa !24
  %t350 = icmp sge i64 %t349, 0
  br i1 %t350, label %bb74, label %bb75
bb74:
  %t352 = load i64, ptr %l146, !tbaa !24
  %t353 = mul i64 %t352, 1
  %t354 = load i64, ptr %l144
  %t355 = inttoptr i64 %t354 to ptr
  %t356 = call ptr @__olang_scope_alloc_zeroed(ptr %t355, i64 %t353)
  %t357 = insertvalue { i64, ptr } undef, i64 %t352, 0
  %t358 = insertvalue { i64, ptr } %t357, ptr %t356, 1
  %t359 = load ptr, ptr %lp2
  %t360 = getelementptr %"compiler/eval:cfn", ptr %t359, i32 0, i32 11
  %t361 = load { i64, ptr }, ptr %t360, !tbaa !27
  store { i64, ptr } %t361, ptr %l149, !tbaa !27
  %t363 = load ptr, ptr %lp2
  %t364 = getelementptr %"compiler/eval:cfn", ptr %t363, i32 0, i32 11
  store { i64, ptr } %t358, ptr %t364, !tbaa !27
  %t365 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e11
  br i1 %t365, label %bb76, label %bb77
bb75:
  call void @__olang_check_failed(ptr @olang_loc_82df08a25f1b1bff_dd8fde79650f209b)
  unreachable
bb76:
  %t367 = load { i64, ptr }, ptr %l149
  %t368 = extractvalue { i64, ptr } %t367, 1
  call void @__olang_region_release(ptr %t368)
  store { i64, ptr } zeroinitializer, ptr %l149
  br label %bb77
bb77:
  store i64 0, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t369 = load i64, ptr %l10, !tbaa !24
  store i64 %t369, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t371 = load i64, ptr %l13, !tbaa !24
  %t372 = load i64, ptr %l12, !tbaa !24
  %t375 = icmp sgt i64 %t371, %t372
  br i1 %t375, label %bb78, label %bb79
bb78:
  %t377 = load i64, ptr %l14, !tbaa !24
  %t379 = icmp sgt i64 %t377, 0
  br i1 %t379, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l155, !tbaa !24
  br label %bb83
bb80:
  %t381 = load i64, ptr %l13, !tbaa !24
  %t382 = load i64, ptr %l12, !tbaa !24
  %t385 = sub i64 %t381, %t382
  %t386 = load i64, ptr %l14, !tbaa !24
  %t389 = add i64 %t385, %t386
  %t391 = sub i64 %t389, 1
  %t392 = load i64, ptr %l14, !tbaa !24
  %t395 = sdiv i64 %t391, %t392
  store i64 %t395, ptr %l158, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l158, !tbaa !24
  br label %bb82
bb82:
  %t397 = load i64, ptr %l158, !tbaa !24
  store i64 %t397, ptr %l155, !tbaa !24
  br label %bb83
bb83:
  %t398 = load i64, ptr %l155, !tbaa !24
  store i64 %t398, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb84
bb84:
  %t399 = load i64, ptr %l16, !tbaa !24
  %t400 = load i64, ptr %l15, !tbaa !24
  %t403 = icmp slt i64 %t399, %t400
  %t405 = xor i1 %t403, true
  br i1 %t405, label %bb85, label %bb86
bb85:
  br label %bb104
bb86:
  br label %bb87
bb87:
  %t407 = load i64, ptr %l12, !tbaa !24
  %t408 = load i64, ptr %l16, !tbaa !24
  %t409 = load i64, ptr %l14, !tbaa !24
  %t412 = mul i64 %t408, %t409
  %t415 = add i64 %t407, %t412
  store i64 %t415, ptr %l17, !tbaa !24
  %t417 = load ptr, ptr %l1, !tbaa !29
  %t419 = getelementptr %"compiler/mir:Fn", ptr %t417, i32 0, i32 9
  %t420 = load i64, ptr %l17, !tbaa !24
  %t423 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v1, ptr %v1, ptr %t419, i64 %t420)
  store ptr %t423, ptr %l179
  br label %bb88
bb88:
  %t424 = load ptr, ptr %l179, !tbaa !29
  store ptr %t424, ptr %l18, !tbaa !29
  %t425 = load ptr, ptr %lp2
  %t426 = getelementptr %"compiler/eval:cfn", ptr %t425, i32 0, i32 8
  %t427 = load { i64, ptr }, ptr %t426, !tbaa !27
  store { i64, ptr } %t427, ptr %l180, !tbaa !27
  %t428 = load i64, ptr %l17, !tbaa !24
  %t429 = load i64, ptr %l11, !tbaa !24
  %t432 = getelementptr { i64, ptr }, ptr %l180, i32 0, i32 1
  %t433 = load ptr, ptr %t432, !tbaa !27
  %t434 = getelementptr i64, ptr %t433, i64 %t428
  store i64 %t429, ptr %t434, !tbaa !34
  %t435 = load ptr, ptr %l18, !tbaa !29
  %t437 = getelementptr %"compiler/mir:BasicBlock", ptr %t435, i32 0, i32 0
  store ptr %t437, ptr %l19, !tbaa !29
  store i64 0, ptr %l20, !tbaa !24
  br label %bb89
bb89:
  store %olang.scope zeroinitializer, ptr %s7
  %t439 = load i64, ptr %l20, !tbaa !24
  store i64 %t439, ptr %l185, !tbaa !24
  %t440 = load ptr, ptr %l19, !tbaa !29
  %t442 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v1, ptr %t440)
  store i64 %t442, ptr %l187
  br label %bb90
bb90:
  %t443 = load i64, ptr %l185, !tbaa !24
  %t444 = load i64, ptr %l187, !tbaa !24
  %t445 = icmp slt i64 %t443, %t444
  %t447 = xor i1 %t445, true
  br i1 %t447, label %bb91, label %bb92
bb91:
  call void @__olang_scope_close(ptr %s7)
  br label %bb101
bb92:
  br label %bb93
bb93:
  %t449 = load ptr, ptr %l19, !tbaa !29
  %t450 = load i64, ptr %l20, !tbaa !24
  %t453 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v1, ptr %t449, i64 %t450)
  store { i64, [21 x i64] } %t453, ptr %l192
  br label %bb94
bb94:
  call void @llvm.memmove.p0.p0.i64(ptr %l21, ptr %l192, i64 176, i1 false)
  %t454 = load ptr, ptr %lp2
  %t455 = getelementptr %"compiler/eval:cfn", ptr %t454, i32 0, i32 7
  %t456 = load { i64, ptr }, ptr %t455, !tbaa !27
  store { i64, ptr } %t456, ptr %l193, !tbaa !27
  %t457 = load i64, ptr %l11, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l195, ptr %l21, i64 176, i1 false)
  %t459 = getelementptr { i64, ptr }, ptr %l193, i32 0, i32 1
  %t460 = load ptr, ptr %t459, !tbaa !27
  %t461 = getelementptr { i64, [21 x i64] }, ptr %t460, i64 %t457
  call void @llvm.memmove.p0.p0.i64(ptr %t461, ptr %l195, i64 176, i1 false)
  %t462 = load ptr, ptr %lp2
  %t463 = getelementptr %"compiler/eval:cfn", ptr %t462, i32 0, i32 10
  %t464 = load { i64, ptr }, ptr %t463, !tbaa !27
  store { i64, ptr } %t464, ptr %l196, !tbaa !27
  %t465 = load i64, ptr %l11, !tbaa !24
  store i64 %t465, ptr %l197, !tbaa !24
  %t466 = load ptr, ptr %l1, !tbaa !29
  %t469 = call i1 @compiler_2feval_2estmtNamesGlobal(ptr %v1, ptr %s7, ptr %t466, ptr %l21)
  store i1 %t469, ptr %l200
  br label %bb95
bb95:
  %t470 = load i1, ptr %l200, !tbaa !21
  %t471 = load i64, ptr %l197, !tbaa !24
  %t472 = getelementptr { i64, ptr }, ptr %l196, i32 0, i32 1
  %t473 = load ptr, ptr %t472, !tbaa !27
  %t474 = getelementptr i1, ptr %t473, i64 %t471
  store i1 %t470, ptr %t474, !tbaa !31
  %t475 = load ptr, ptr %lp2
  %t476 = getelementptr %"compiler/eval:cfn", ptr %t475, i32 0, i32 10
  %t477 = load { i64, ptr }, ptr %t476, !tbaa !27
  store { i64, ptr } %t477, ptr %l201, !tbaa !27
  %t478 = load i64, ptr %l11, !tbaa !24
  %t480 = getelementptr { i64, ptr }, ptr %l201, i32 0, i32 1
  %t481 = load ptr, ptr %t480, !tbaa !27
  %t482 = getelementptr i1, ptr %t481, i64 %t478
  %t483 = load i1, ptr %t482, !tbaa !31
  %t485 = xor i1 %t483, true
  br i1 %t485, label %bb96, label %bb97
bb96:
  %t487 = load ptr, ptr %l0, !tbaa !29
  %t488 = load ptr, ptr %l1, !tbaa !29
  %t489 = load ptr, ptr %lp2
  %t490 = load i64, ptr %l11, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatten(ptr %v0, ptr %v1, ptr %s7, ptr %v2, ptr %t487, ptr %t488, ptr %l21, ptr %t489, i64 %t490)
  br label %bb98
bb97:
  br label %bb99
bb98:
  br label %bb99
bb99:
  %t496 = load i64, ptr %l11, !tbaa !24
  %t498 = add i64 %t496, 1
  store i64 %t498, ptr %l11, !tbaa !24
  call void @__olang_scope_close(ptr %s7)
  br label %bb100
bb100:
  %t500 = load i64, ptr %l20, !tbaa !24
  %t502 = add i64 %t500, 1
  store i64 %t502, ptr %l20, !tbaa !24
  br label %bb89
bb101:
  %t504 = load ptr, ptr %lp2
  %t505 = getelementptr %"compiler/eval:cfn", ptr %t504, i32 0, i32 9
  %t506 = load { i64, ptr }, ptr %t505, !tbaa !27
  store { i64, ptr } %t506, ptr %l214, !tbaa !27
  %t507 = load i64, ptr %l17, !tbaa !24
  %t508 = load ptr, ptr %l18, !tbaa !29
  %t510 = getelementptr %"compiler/mir:BasicBlock", ptr %t508, i32 0, i32 1
  %t511 = load { i64, [8 x i64] }, ptr %t510
  %t514 = getelementptr { i64, ptr }, ptr %l214, i32 0, i32 1
  %t515 = load ptr, ptr %t514, !tbaa !27
  %t516 = getelementptr { i64, [8 x i64] }, ptr %t515, i64 %t507
  store { i64, [8 x i64] } %t511, ptr %t516
  %t517 = load ptr, ptr %lp2
  %t518 = getelementptr %"compiler/eval:cfn", ptr %t517, i32 0, i32 11
  %t519 = load { i64, ptr }, ptr %t518, !tbaa !27
  store { i64, ptr } %t519, ptr %l218, !tbaa !27
  %t520 = load i64, ptr %l17, !tbaa !24
  store i64 %t520, ptr %l219, !tbaa !24
  %t521 = load ptr, ptr %l1, !tbaa !29
  %t522 = load ptr, ptr %l18, !tbaa !29
  %t524 = getelementptr %"compiler/mir:BasicBlock", ptr %t522, i32 0, i32 1
  %t525 = load { i64, [8 x i64] }, ptr %t524
  %t528 = call i1 @compiler_2feval_2etermNamesGlobal(ptr %v1, ptr %t521, { i64, [8 x i64] } %t525)
  store i1 %t528, ptr %l223
  br label %bb102
bb102:
  %t529 = load i1, ptr %l223, !tbaa !21
  %t530 = load i64, ptr %l219, !tbaa !24
  %t531 = getelementptr { i64, ptr }, ptr %l218, i32 0, i32 1
  %t532 = load ptr, ptr %t531, !tbaa !27
  %t533 = getelementptr i1, ptr %t532, i64 %t530
  store i1 %t529, ptr %t533, !tbaa !31
  br label %bb103
bb103:
  %t534 = load i64, ptr %l16, !tbaa !24
  %t536 = add i64 %t534, 1
  store i64 %t536, ptr %l16, !tbaa !24
  br label %bb84
bb104:
  %t538 = load ptr, ptr %lp2
  %t539 = getelementptr %"compiler/eval:cfn", ptr %t538, i32 0, i32 8
  %t540 = load { i64, ptr }, ptr %t539, !tbaa !27
  store { i64, ptr } %t540, ptr %l226, !tbaa !27
  %t541 = load i64, ptr %l10, !tbaa !24
  %t542 = load i64, ptr %l11, !tbaa !24
  %t545 = getelementptr { i64, ptr }, ptr %l226, i32 0, i32 1
  %t546 = load ptr, ptr %t545, !tbaa !27
  %t547 = getelementptr i64, ptr %t546, i64 %t541
  store i64 %t542, ptr %t547, !tbaa !34
  %t548 = ptrtoint ptr %v2 to i64
  store i64 %t548, ptr %l229, !tbaa !24
  %t549 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e12
  br i1 %t549, label %bb105, label %bb106
bb105:
  %t551 = call ptr @__olang_region_make(ptr %v2)
  %t552 = ptrtoint ptr %t551 to i64
  store i64 %t552, ptr %l229, !tbaa !24
  br label %bb106
bb106:
  %t553 = load ptr, ptr %l1, !tbaa !29
  %t555 = getelementptr %"compiler/mir:Fn", ptr %t553, i32 0, i32 4
  %t557 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t555)
  store i64 %t557, ptr %l233
  br label %bb107
bb107:
  %t558 = load i64, ptr %l233, !tbaa !24
  %t559 = icmp sge i64 %t558, 0
  br i1 %t559, label %bb108, label %bb109
bb108:
  %t561 = load i64, ptr %l233, !tbaa !24
  %t562 = mul i64 %t561, 1
  %t563 = load i64, ptr %l229
  %t564 = inttoptr i64 %t563 to ptr
  %t565 = call ptr @__olang_scope_alloc_zeroed(ptr %t564, i64 %t562)
  %t566 = insertvalue { i64, ptr } undef, i64 %t561, 0
  %t567 = insertvalue { i64, ptr } %t566, ptr %t565, 1
  %t568 = load ptr, ptr %lp2
  %t569 = getelementptr %"compiler/eval:cfn", ptr %t568, i32 0, i32 12
  %t570 = load { i64, ptr }, ptr %t569, !tbaa !27
  store { i64, ptr } %t570, ptr %l236, !tbaa !27
  %t572 = load ptr, ptr %lp2
  %t573 = getelementptr %"compiler/eval:cfn", ptr %t572, i32 0, i32 12
  store { i64, ptr } %t567, ptr %t573, !tbaa !27
  %t574 = load i1, ptr @olang_2esole_2ecompiler_2feval_3acfn_2e12
  br i1 %t574, label %bb110, label %bb111
bb109:
  call void @__olang_check_failed(ptr @olang_loc_1d233abf61feac98_d906727ad02ddbc)
  unreachable
bb110:
  %t576 = load { i64, ptr }, ptr %l236
  %t577 = extractvalue { i64, ptr } %t576, 1
  call void @__olang_region_release(ptr %t577)
  store { i64, ptr } zeroinitializer, ptr %l236
  br label %bb111
bb111:
  store i64 0, ptr %l22, !tbaa !24
  %t578 = load ptr, ptr %l1, !tbaa !29
  %t580 = getelementptr %"compiler/mir:Fn", ptr %t578, i32 0, i32 4
  %t582 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t580)
  store i64 %t582, ptr %l240
  br label %bb112
bb112:
  %t583 = load i64, ptr %l240, !tbaa !24
  store i64 %t583, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t584 = load i64, ptr %l23, !tbaa !24
  %t585 = load i64, ptr %l22, !tbaa !24
  %t588 = icmp sgt i64 %t584, %t585
  br i1 %t588, label %bb113, label %bb114
bb113:
  %t590 = load i64, ptr %l24, !tbaa !24
  %t592 = icmp sgt i64 %t590, 0
  br i1 %t592, label %bb115, label %bb116
bb114:
  store i64 0, ptr %l244, !tbaa !24
  br label %bb118
bb115:
  %t594 = load i64, ptr %l23, !tbaa !24
  %t595 = load i64, ptr %l22, !tbaa !24
  %t598 = sub i64 %t594, %t595
  %t599 = load i64, ptr %l24, !tbaa !24
  %t602 = add i64 %t598, %t599
  %t604 = sub i64 %t602, 1
  %t605 = load i64, ptr %l24, !tbaa !24
  %t608 = sdiv i64 %t604, %t605
  store i64 %t608, ptr %l247, !tbaa !24
  br label %bb117
bb116:
  store i64 0, ptr %l247, !tbaa !24
  br label %bb117
bb117:
  %t610 = load i64, ptr %l247, !tbaa !24
  store i64 %t610, ptr %l244, !tbaa !24
  br label %bb118
bb118:
  %t611 = load i64, ptr %l244, !tbaa !24
  store i64 %t611, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb119
bb119:
  %t612 = load i64, ptr %l26, !tbaa !24
  %t613 = load i64, ptr %l25, !tbaa !24
  %t616 = icmp slt i64 %t612, %t613
  %t618 = xor i1 %t616, true
  br i1 %t618, label %bb120, label %bb121
bb120:
  br label %bb132
bb121:
  br label %bb122
bb122:
  %t620 = load i64, ptr %l22, !tbaa !24
  %t621 = load i64, ptr %l26, !tbaa !24
  %t622 = load i64, ptr %l24, !tbaa !24
  %t625 = mul i64 %t621, %t622
  %t628 = add i64 %t620, %t625
  store i64 %t628, ptr %l27, !tbaa !24
  %t630 = load ptr, ptr %lp2
  %t631 = getelementptr %"compiler/eval:cfn", ptr %t630, i32 0, i32 12
  %t632 = load { i64, ptr }, ptr %t631, !tbaa !27
  store { i64, ptr } %t632, ptr %l265, !tbaa !27
  %t633 = load i64, ptr %l27, !tbaa !24
  store i64 %t633, ptr %l266, !tbaa !24
  %t634 = load ptr, ptr %l0, !tbaa !29
  store ptr %t634, ptr %l267, !tbaa !29
  %t635 = load ptr, ptr %l1, !tbaa !29
  %t637 = getelementptr %"compiler/mir:Fn", ptr %t635, i32 0, i32 7
  store ptr %t637, ptr %l269, !tbaa !29
  %t638 = load ptr, ptr %l1, !tbaa !29
  %t640 = getelementptr %"compiler/mir:Fn", ptr %t638, i32 0, i32 4
  %t641 = load i64, ptr %l27, !tbaa !24
  %t644 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t640, i64 %t641)
  store i32 %t644, ptr %l273
  br label %bb123
bb123:
  %t645 = load i32, ptr %l273, !tbaa !23
  %t646 = sext i32 %t645 to i64
  %t647 = load ptr, ptr %l269, !tbaa !29
  %t649 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t647, i64 %t646)
  store %"compiler/mir:Local" %t649, ptr %l275
  br label %bb124
bb124:
  %t650 = getelementptr %"compiler/mir:Local", ptr %l275, i32 0, i32 2
  %t651 = load i32, ptr %t650, !tbaa !23
  %t652 = load ptr, ptr %l267, !tbaa !29
  %t654 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArrayValue(ptr %v0, ptr %t652, i32 %t651)
  store i1 %t654, ptr %l277
  br label %bb125
bb125:
  %t655 = load i1, ptr %l277, !tbaa !21
  br i1 %t655, label %bb126, label %bb127
bb126:
  %t656 = load ptr, ptr %l1, !tbaa !29
  store ptr %t656, ptr %l279, !tbaa !29
  %t657 = load ptr, ptr %l0, !tbaa !29
  %t659 = getelementptr %"compiler/eval:Machine", ptr %t657, i32 0, i32 0
  %t660 = load ptr, ptr %t659, !tbaa !29
  store ptr %t660, ptr %l281, !tbaa !29
  %t661 = load ptr, ptr %l1, !tbaa !29
  %t663 = getelementptr %"compiler/mir:Fn", ptr %t661, i32 0, i32 4
  %t664 = load i64, ptr %l27, !tbaa !24
  %t667 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v1, ptr %t663, i64 %t664)
  store i32 %t667, ptr %l285
  br label %bb128
bb127:
  store i1 false, ptr %l278, !tbaa !21
  br label %bb130
bb128:
  %t668 = load ptr, ptr %l279, !tbaa !29
  %t669 = load ptr, ptr %l281, !tbaa !29
  %t670 = load i32, ptr %l285, !tbaa !23
  %t671 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v1, ptr %v0, ptr %t668, ptr %t669, i32 %t670)
  store i1 %t671, ptr %l286
  br label %bb129
bb129:
  %t672 = load i1, ptr %l286, !tbaa !21
  store i1 %t672, ptr %l278, !tbaa !21
  br label %bb130
bb130:
  %t673 = load i1, ptr %l278, !tbaa !21
  %t674 = load i64, ptr %l266, !tbaa !24
  %t675 = getelementptr { i64, ptr }, ptr %l265, i32 0, i32 1
  %t676 = load ptr, ptr %t675, !tbaa !27
  %t677 = getelementptr i1, ptr %t676, i64 %t674
  store i1 %t673, ptr %t677, !tbaa !31
  br label %bb131
bb131:
  %t678 = load i64, ptr %l26, !tbaa !24
  %t680 = add i64 %t678, 1
  store i64 %t680, ptr %l26, !tbaa !24
  br label %bb119
bb132:
  %t682 = load ptr, ptr %lp2
  call void @llvm.memmove.p0.p0.i64(ptr %l289, ptr %t682, i64 264, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l289, i64 264, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edisown(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l14 = alloca i64
  %l22 = alloca %"compiler/eval:scope"
  %l26 = alloca i1
  %l29 = alloca i1
  %l37 = alloca %"compiler/eval:scope"
  %l45 = alloca %"compiler/eval:scope"
  %l50 = alloca ptr
  %l56 = alloca %"compiler/eval:scope"
  %l66 = alloca %"compiler/eval:scope"
  %l77 = alloca %"compiler/eval:scope"
  %l82 = alloca ptr
  %l90 = alloca ptr
  %t11 = alloca %"compiler/eval:scope", align 8
  %t40 = alloca %"compiler/eval:scope", align 8
  %t56 = alloca %"compiler/eval:scope", align 8
  %t63 = alloca %"compiler/eval:scope", align 8
  %t99 = alloca %"compiler/eval:scope", align 8
  %t121 = alloca %"compiler/eval:scope", align 8
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
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 49
  %t10 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l22, ptr %t11, i64 144, i1 false)
  br label %bb1
bb1:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l22, i32 0, i32 5
  %t15 = load i64, ptr %t14, !tbaa !24
  store i64 %t15, ptr %l3, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  %t19 = icmp eq i64 %t17, 0
  br i1 %t19, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb5
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i64, ptr %l3, !tbaa !24
  %t25 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t21, i64 %t22)
  store i1 %t25, ptr %l29
  br label %bb4
bb4:
  %t26 = load i1, ptr %l29, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l26, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load i64, ptr %l3, !tbaa !24
  %t31 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t34 = and i64 %t30, %t31
  store i64 %t34, ptr %l4, !tbaa !24
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/eval:Machine", ptr %t36, i32 0, i32 49
  %t39 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t40, ptr %v0, ptr %t38, i64 %t39)
  call void @llvm.memmove.p0.p0.i64(ptr %l37, ptr %t40, i64 144, i1 false)
  br label %bb9
bb9:
  %t43 = getelementptr %"compiler/eval:scope", ptr %l37, i32 0, i32 6
  %t44 = load i64, ptr %t43, !tbaa !24
  %t45 = load i64, ptr %l1, !tbaa !24
  %t48 = icmp eq i64 %t44, %t45
  br i1 %t48, label %bb10, label %bb11
bb10:
  %t50 = load i64, ptr %l4, !tbaa !24
  store i64 %t50, ptr %l5, !tbaa !24
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 49
  %t55 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t56, ptr %v0, ptr %t54, i64 %t55)
  call void @llvm.memmove.p0.p0.i64(ptr %l45, ptr %t56, i64 144, i1 false)
  br label %bb12
bb11:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t59, i32 0, i32 49
  %t62 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t63, ptr %v0, ptr %t61, i64 %t62)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t63, i64 144, i1 false)
  br label %bb14
bb12:
  %t66 = getelementptr %"compiler/eval:scope", ptr %l45, i32 0, i32 7
  %t67 = load i64, ptr %t66, !tbaa !24
  store i64 %t67, ptr %l6, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 49
  %t72 = load i64, ptr %l5, !tbaa !24
  %t75 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t71, i64 %t72)
  store ptr %t75, ptr %l50
  br label %bb13
bb13:
  %t76 = load ptr, ptr %l50, !tbaa !29
  %t78 = load i64, ptr %l6, !tbaa !24
  %t81 = getelementptr %"compiler/eval:scope", ptr %t76, i32 0, i32 6
  store i64 %t78, ptr %t81, !tbaa !24
  br label %bb27
bb14:
  %t82 = getelementptr %"compiler/eval:scope", ptr %l56, i32 0, i32 6
  %t83 = load i64, ptr %t82, !tbaa !24
  store i64 %t83, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t85 = load i64, ptr %l8, !tbaa !24
  %t87 = icmp ne i64 %t85, 0
  %t89 = xor i1 %t87, true
  br i1 %t89, label %bb16, label %bb17
bb16:
  br label %bb26
bb17:
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t91, i32 0, i32 49
  %t94 = load i64, ptr %l8, !tbaa !24
  %t95 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t98 = and i64 %t94, %t95
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t99, ptr %v0, ptr %t93, i64 %t98)
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t99, i64 144, i1 false)
  br label %bb19
bb19:
  %t102 = getelementptr %"compiler/eval:scope", ptr %l66, i32 0, i32 7
  %t103 = load i64, ptr %t102, !tbaa !24
  store i64 %t103, ptr %l9, !tbaa !24
  %t105 = load i64, ptr %l9, !tbaa !24
  %t106 = load i64, ptr %l1, !tbaa !24
  %t109 = icmp eq i64 %t105, %t106
  br i1 %t109, label %bb20, label %bb21
bb20:
  %t111 = load i64, ptr %l8, !tbaa !24
  %t112 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t115 = and i64 %t111, %t112
  store i64 %t115, ptr %l10, !tbaa !24
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 49
  %t120 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t121, ptr %v0, ptr %t119, i64 %t120)
  call void @llvm.memmove.p0.p0.i64(ptr %l77, ptr %t121, i64 144, i1 false)
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t124 = getelementptr %"compiler/eval:scope", ptr %l77, i32 0, i32 7
  %t125 = load i64, ptr %t124, !tbaa !24
  store i64 %t125, ptr %l11, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 49
  %t130 = load i64, ptr %l10, !tbaa !24
  %t133 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t129, i64 %t130)
  store ptr %t133, ptr %l82
  br label %bb23
bb23:
  %t134 = load ptr, ptr %l82, !tbaa !29
  %t136 = load i64, ptr %l11, !tbaa !24
  %t139 = getelementptr %"compiler/eval:scope", ptr %t134, i32 0, i32 7
  store i64 %t136, ptr %t139, !tbaa !24
  br label %bb26
bb24:
  %t140 = load i64, ptr %l9, !tbaa !24
  store i64 %t140, ptr %l8, !tbaa !24
  br label %bb25
bb25:
  br label %bb15
bb26:
  br label %bb27
bb27:
  %t142 = load i64, ptr %l2, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t146 = getelementptr %"compiler/eval:Machine", ptr %t144, i32 0, i32 49
  %t150 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t146, i64 %t142)
  store ptr %t150, ptr %l90
  br label %bb28
bb28:
  %t151 = load ptr, ptr %l90, !tbaa !29
  %t153 = load i64, ptr %l14, !tbaa !24
  %t156 = getelementptr %"compiler/eval:scope", ptr %t151, i32 0, i32 5
  store i64 %t153, ptr %t156, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropOwnDefers(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l5 = alloca i64
  %l8 = alloca i1
  %l13 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 63
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  store i64 %t6, ptr %l2, !tbaa !24
  br label %bb2
bb2:
  %t7 = load i64, ptr %l2, !tbaa !24
  %t9 = icmp sgt i64 %t7, 0
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 63
  %t14 = load i64, ptr %l2, !tbaa !24
  %t16 = sub i64 %t14, 1
  %t19 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t13, i64 %t16)
  store i64 %t19, ptr %l13
  br label %bb5
bb4:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb6
bb5:
  %t21 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp sge i64 %t21, %a1
  store i1 %t23, ptr %l8, !tbaa !21
  br label %bb6
bb6:
  %t25 = load i1, ptr %l8, !tbaa !21
  %t26 = xor i1 %t25, true
  br i1 %t26, label %bb7, label %bb8
bb7:
  br label %bb11
bb8:
  br label %bb9
bb9:
  %t28 = load i64, ptr %l2, !tbaa !24
  %t30 = sub i64 %t28, 1
  store i64 %t30, ptr %l2, !tbaa !24
  br label %bb10
bb10:
  br label %bb2
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 63
  %t35 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t34, i64 %t35)
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 64
  %t41 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t40, i64 %t41)
  br label %bb13
bb13:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/eval:Machine", ptr %t44, i32 0, i32 65
  %t47 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %t46, i64 %t47)
  br label %bb14
bb14:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2edropWork(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l2 = alloca i64
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [21 x i64] }
  %l8 = alloca { i64, [8 x i64] }
  %l9 = alloca i32
  %l13 = alloca ptr
  %l20 = alloca ptr
  %l23 = alloca i64
  %l25 = alloca i64
  %l30 = alloca { i64, [21 x i64] }
  %l31 = alloca { i64, [21 x i64] }
  %l33 = alloca { i64, [21 x i64] }
  %l35 = alloca { i64, [21 x i64] }
  %l42 = alloca i64
  %rv = alloca i1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 22
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %a1)
  store ptr %t7, ptr %l13
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l13, !tbaa !29
  store ptr %t8, ptr %l3, !tbaa !29
  br label %bb2
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb45
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l3, !tbaa !29
  %t17 = getelementptr %"compiler/mir:Fn", ptr %t15, i32 0, i32 9
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eRef_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t17, i64 %t18)
  store ptr %t21, ptr %l20
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l20, !tbaa !29
  store ptr %t22, ptr %l4, !tbaa !29
  %t23 = load ptr, ptr %l4, !tbaa !29
  %t25 = getelementptr %"compiler/mir:BasicBlock", ptr %t23, i32 0, i32 0
  store ptr %t25, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l6, !tbaa !24
  store i64 %t27, ptr %l23, !tbaa !24
  %t28 = load ptr, ptr %l5, !tbaa !29
  %t30 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %v0, ptr %t28)
  store i64 %t30, ptr %l25
  br label %bb8
bb8:
  %t31 = load i64, ptr %l23, !tbaa !24
  %t32 = load i64, ptr %l25, !tbaa !24
  %t33 = icmp slt i64 %t31, %t32
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb9, label %bb10
bb9:
  br label %bb27
bb10:
  br label %bb11
bb11:
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %v0, ptr %t37, i64 %t38)
  store { i64, [21 x i64] } %t41, ptr %l30
  br label %bb12
bb12:
  call void @llvm.memmove.p0.p0.i64(ptr %l7, ptr %l30, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l31, ptr %l7, i64 176, i1 false)
  %t42 = load { i64, [21 x i64] }, ptr %l31
  %t43 = extractvalue { i64, [21 x i64] } %t42, 0
  %t44 = icmp eq i64 %t43, 4
  br i1 %t44, label %bb13, label %bb14
bb13:
  br label %bb19
bb14:
  call void @llvm.memmove.p0.p0.i64(ptr %l33, ptr %l7, i64 176, i1 false)
  %t46 = load { i64, [21 x i64] }, ptr %l33
  %t47 = extractvalue { i64, [21 x i64] } %t46, 0
  %t48 = icmp eq i64 %t47, 2
  br i1 %t48, label %bb15, label %bb16
bb15:
  br label %bb19
bb16:
  call void @llvm.memmove.p0.p0.i64(ptr %l35, ptr %l7, i64 176, i1 false)
  %t50 = load { i64, [21 x i64] }, ptr %l35
  %t51 = extractvalue { i64, [21 x i64] } %t50, 0
  %t52 = icmp eq i64 %t51, 15
  br i1 %t52, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb25
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  store i1 true, ptr %rv
  br label %ret
bb24:
  call void @__olang_check_failed(ptr @olang_loc_8eca6dc2e728fddd_b862a3b547c92c71)
  unreachable
bb25:
  br label %bb26
bb26:
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = add i64 %t55, 1
  store i64 %t57, ptr %l6, !tbaa !24
  br label %bb7
bb27:
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/mir:BasicBlock", ptr %t59, i32 0, i32 1
  %t62 = load { i64, [8 x i64] }, ptr %t61
  store { i64, [8 x i64] } %t62, ptr %l8
  %t64 = load { i64, [8 x i64] }, ptr %l8
  %t66 = extractvalue { i64, [8 x i64] } %t64, 0
  %t67 = icmp eq i64 %t66, 1
  br i1 %t67, label %bb28, label %bb29
bb28:
  %t69 = getelementptr { i64, [8 x i64] }, ptr %l8, i32 0, i32 1
  %t70 = getelementptr { i32 }, ptr %t69, i32 0, i32 0
  %t71 = load i32, ptr %t70
  store i32 %t71, ptr %l9, !tbaa !23
  br label %bb30
bb29:
  br label %bb31
bb30:
  %t73 = load i32, ptr %l9, !tbaa !23
  %t75 = sext i32 %t73 to i64
  store i64 %t75, ptr %l42, !tbaa !24
  br label %bb40
bb31:
  %t77 = load { i64, [8 x i64] }, ptr %l8
  %t79 = extractvalue { i64, [8 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 12
  br i1 %t80, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store i64 -1, ptr %l42, !tbaa !24
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i64 -2, ptr %l42, !tbaa !24
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_82023e8b3f4d7b2c_b53e56899aeca860)
  unreachable
bb40:
  %t82 = load i64, ptr %l42, !tbaa !24
  store i64 %t82, ptr %l2, !tbaa !24
  %t83 = load i64, ptr %l2, !tbaa !24
  %t85 = icmp eq i64 %t83, -2
  br i1 %t85, label %bb41, label %bb42
bb41:
  store i1 true, ptr %rv
  br label %ret
bb42:
  br label %bb43
bb43:
  br label %bb44
bb44:
  br label %bb2
bb45:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 31
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
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l10, !tbaa !27
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
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d1, i32 0, i32 1) })
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflatten(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2, ptr %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/mir:Lvalue"
  %l7 = alloca { i64, [15 x i64] }
  %l8 = alloca ptr
  %l9 = alloca i1
  %l19 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  store ptr %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1, ptr %l8, !tbaa !29
  store i1 false, ptr %l9, !tbaa !21
  %t2 = load ptr, ptr %l8, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l8, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 16}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l2, !tbaa !29
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l5
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t18 = getelementptr { i64, [21 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t18, i32 0, i32 1
  %t20 = load %"compiler/mir:Lvalue", ptr %t19
  store %"compiler/mir:Lvalue" %t20, ptr %l6
  %t22 = load ptr, ptr %l2, !tbaa !29
  %t24 = getelementptr { i64, [21 x i64] }, ptr %t22, i32 0, i32 1
  %t25 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t24, i32 0, i32 2
  %t26 = load { i64, [15 x i64] }, ptr %t25
  store { i64, [15 x i64] } %t26, ptr %l7
  br label %bb5
bb4:
  br label %bb14
bb5:
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/eval:cfn", ptr %t28, i32 0, i32 18
  %t31 = load { i64, ptr }, ptr %t30, !tbaa !27
  store { i64, ptr } %t31, ptr %l19, !tbaa !27
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load %"compiler/source:Span", ptr %l5
  %t36 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/source:Span", ptr %t37, i64 %t32
  store %"compiler/source:Span" %t33, ptr %t38
  %t39 = getelementptr %"compiler/mir:Lvalue", ptr %l6, i32 0, i32 1
  %t40 = getelementptr %"compiler/mir:Range", ptr %t39, i32 0, i32 1
  %t41 = load i32, ptr %t40, !tbaa !23
  %t43 = icmp eq i32 %t41, 0
  br i1 %t43, label %bb6, label %bb7
bb6:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t47 = load %"compiler/mir:Lvalue", ptr %l6
  %t48 = load { i64, [15 x i64] }, ptr %l7
  %t49 = load ptr, ptr %l3, !tbaa !29
  %t50 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToLocal(ptr %v0, ptr %v1, ptr %v3, ptr %t45, ptr %t46, %"compiler/mir:Lvalue" %t47, { i64, [15 x i64] } %t48, ptr %t49, i64 %t50)
  br label %bb8
bb7:
  %t57 = getelementptr %"compiler/mir:Lvalue", ptr %l6, i32 0, i32 1
  %t58 = getelementptr %"compiler/mir:Range", ptr %t57, i32 0, i32 1
  %t59 = load i32, ptr %t58, !tbaa !23
  %t61 = icmp eq i32 %t59, 1
  br i1 %t61, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l1, !tbaa !29
  %t65 = load %"compiler/mir:Lvalue", ptr %l6
  %t66 = load { i64, [15 x i64] }, ptr %l7
  %t67 = load ptr, ptr %l3, !tbaa !29
  %t68 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToElem(ptr %v0, ptr %v1, ptr %v3, ptr %t63, ptr %t64, %"compiler/mir:Lvalue" %t65, { i64, [15 x i64] } %t66, ptr %t67, i64 %t68)
  br label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb12
bb12:
  br label %bb13
bb13:
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_2c3649ec7760d571_b360c53de5a7362d)
  unreachable
bb19:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenLoad(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, i64 %a3, i64 %a4, ptr %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca { i64, [1 x i64] }
  %l9 = alloca i64
  %l10 = alloca i32
  %l14 = alloca i64
  %l20 = alloca { i64, [1 x i64] }
  %l27 = alloca ptr
  %l31 = alloca %"compiler/mir:Local"
  %l33 = alloca i32
  %l36 = alloca i1
  %l38 = alloca i1
  %l41 = alloca i64
  %l44 = alloca i1
  %l47 = alloca i64
  %l50 = alloca ptr
  %l54 = alloca %"compiler/mir:Local"
  %l56 = alloca i1
  %l62 = alloca { i64, ptr }
  %l66 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l78 = alloca %"compiler/mir:Local"
  %l84 = alloca %"compiler/mir:Local"
  %l88 = alloca { i64, ptr }
  %l93 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i64 %a4, ptr %l4
  store ptr %a5, ptr %l5
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/mir:Fn", ptr %t1, i32 0, i32 10
  %t4 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t5 = getelementptr %"compiler/mir:Range", ptr %t4, i32 0, i32 0
  %t6 = load i32, ptr %t5, !tbaa !23
  %t8 = sext i32 %t6 to i64
  %t11 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v1, ptr %t3, i64 %t8)
  store { i64, [1 x i64] } %t11, ptr %l20
  br label %bb1
bb1:
  %t12 = load { i64, [1 x i64] }, ptr %l20
  store { i64, [1 x i64] } %t12, ptr %l7
  %t13 = load { i64, [1 x i64] }, ptr %l7
  %t15 = extractvalue { i64, [1 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 1
  %t18 = xor i1 %t16, true
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = getelementptr { i64, [1 x i64] }, ptr %l7, i32 0, i32 1
  %t21 = getelementptr { i32 }, ptr %t20, i32 0, i32 0
  %t22 = load i32, ptr %t21
  %t26 = sext i32 %t22 to i64
  store i64 %t26, ptr %l9, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  store ptr %t28, ptr %l27, !tbaa !29
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr %"compiler/mir:Fn", ptr %t29, i32 0, i32 7
  %t32 = load i64, ptr %l3, !tbaa !24
  %t35 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t31, i64 %t32)
  store %"compiler/mir:Local" %t35, ptr %l31
  br label %bb5
bb5:
  %t36 = getelementptr %"compiler/mir:Local", ptr %l31, i32 0, i32 2
  %t37 = load i32, ptr %t36, !tbaa !23
  %t38 = load ptr, ptr %l27, !tbaa !29
  %t40 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t38, i32 %t37)
  store i32 %t40, ptr %l33
  br label %bb6
bb6:
  %t41 = load i32, ptr %l33, !tbaa !23
  store i32 %t41, ptr %l10, !tbaa !23
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l10, !tbaa !23
  %t46 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t42, i32 %t43)
  store i1 %t46, ptr %l36
  br label %bb7
bb7:
  %t47 = load i1, ptr %l36, !tbaa !21
  %t48 = xor i1 %t47, true
  br i1 %t48, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb11
bb9:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t51 = load i32, ptr %l10, !tbaa !23
  %t54 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t50, i32 %t51)
  store i64 %t54, ptr %l41
  br label %bb10
bb10:
  %t55 = load i64, ptr %l4, !tbaa !24
  %t56 = load i64, ptr %l41, !tbaa !24
  %t58 = icmp ne i64 %t56, %t55
  store i1 %t58, ptr %l38, !tbaa !21
  br label %bb11
bb11:
  %t60 = load i1, ptr %l38, !tbaa !21
  br i1 %t60, label %bb12, label %bb13
bb12:
  store i1 true, ptr %l44, !tbaa !21
  br label %bb15
bb13:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l10, !tbaa !23
  %t65 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t61, i32 %t62)
  store i64 %t65, ptr %l47
  br label %bb14
bb14:
  %t66 = load i64, ptr %l4, !tbaa !24
  %t67 = load i64, ptr %l47, !tbaa !24
  %t69 = icmp ne i64 %t67, %t66
  store i1 %t69, ptr %l44, !tbaa !21
  br label %bb15
bb15:
  %t71 = load i1, ptr %l44, !tbaa !21
  br i1 %t71, label %bb16, label %bb17
bb16:
  br label %ret
bb17:
  br label %bb18
bb18:
  %t72 = load ptr, ptr %l0, !tbaa !29
  store ptr %t72, ptr %l50, !tbaa !29
  %t73 = load ptr, ptr %l1, !tbaa !29
  %t75 = getelementptr %"compiler/mir:Fn", ptr %t73, i32 0, i32 7
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t75, i64 %t76)
  store %"compiler/mir:Local" %t79, ptr %l54
  br label %bb19
bb19:
  %t80 = getelementptr %"compiler/mir:Local", ptr %l54, i32 0, i32 2
  %t81 = load i32, ptr %t80, !tbaa !23
  %t82 = load ptr, ptr %l50, !tbaa !29
  %t84 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %t82, i32 %t81)
  store i1 %t84, ptr %l56
  br label %bb20
bb20:
  %t85 = load i1, ptr %l56, !tbaa !21
  %t86 = xor i1 %t85, true
  br i1 %t86, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t88 = load i64, ptr @G_2ecompiler_2feval_2efLoad, !tbaa !24
  %t90 = load i64, ptr %l3, !tbaa !24
  %t92 = load i64, ptr %l9, !tbaa !24
  %t94 = load ptr, ptr %l5, !tbaa !29
  %t96 = getelementptr %"compiler/eval:cfn", ptr %t94, i32 0, i32 13
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l62, !tbaa !27
  %t98 = load i64, ptr %l6, !tbaa !24
  %t102 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t103 = load ptr, ptr %t102, !tbaa !27
  %t104 = getelementptr i64, ptr %t103, i64 %t98
  store i64 %t88, ptr %t104, !tbaa !34
  %t105 = load ptr, ptr %l5, !tbaa !29
  %t107 = getelementptr %"compiler/eval:cfn", ptr %t105, i32 0, i32 13
  %t108 = load { i64, ptr }, ptr %t107, !tbaa !27
  store { i64, ptr } %t108, ptr %l66, !tbaa !27
  %t109 = load i64, ptr %l6, !tbaa !24
  %t111 = add i64 %t109, 3
  %t115 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i64, ptr %t116, i64 %t111
  store i64 %t90, ptr %t117, !tbaa !34
  %t118 = load ptr, ptr %l5, !tbaa !29
  %t120 = getelementptr %"compiler/eval:cfn", ptr %t118, i32 0, i32 13
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l71, !tbaa !27
  %t122 = load i64, ptr %l6, !tbaa !24
  %t124 = add i64 %t122, 5
  %t128 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t129 = load ptr, ptr %t128, !tbaa !27
  %t130 = getelementptr i64, ptr %t129, i64 %t124
  store i64 %t92, ptr %t130, !tbaa !34
  %t131 = load ptr, ptr %l1, !tbaa !29
  %t133 = getelementptr %"compiler/mir:Fn", ptr %t131, i32 0, i32 7
  %t134 = load i64, ptr %l3, !tbaa !24
  %t137 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t133, i64 %t134)
  store %"compiler/mir:Local" %t137, ptr %l78
  br label %bb24
bb24:
  %t138 = getelementptr %"compiler/mir:Local", ptr %l78, i32 0, i32 2
  %t139 = load i32, ptr %t138, !tbaa !23
  %t141 = sext i32 %t139 to i64
  store i64 %t141, ptr %l14, !tbaa !24
  %t143 = load ptr, ptr %l1, !tbaa !29
  %t145 = getelementptr %"compiler/mir:Fn", ptr %t143, i32 0, i32 7
  %t146 = load i64, ptr %l9, !tbaa !24
  %t149 = call %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v1, ptr %t145, i64 %t146)
  store %"compiler/mir:Local" %t149, ptr %l84
  br label %bb25
bb25:
  %t150 = getelementptr %"compiler/mir:Local", ptr %l84, i32 0, i32 2
  %t151 = load i32, ptr %t150, !tbaa !23
  %t153 = sext i32 %t151 to i64
  %t155 = load ptr, ptr %l5, !tbaa !29
  %t157 = getelementptr %"compiler/eval:cfn", ptr %t155, i32 0, i32 13
  %t158 = load { i64, ptr }, ptr %t157, !tbaa !27
  store { i64, ptr } %t158, ptr %l88, !tbaa !27
  %t159 = load i64, ptr %l6, !tbaa !24
  %t161 = add i64 %t159, 7
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t166 = load ptr, ptr %t165, !tbaa !27
  %t167 = getelementptr i64, ptr %t166, i64 %t161
  store i64 %t162, ptr %t167, !tbaa !34
  %t168 = load ptr, ptr %l5, !tbaa !29
  %t170 = getelementptr %"compiler/eval:cfn", ptr %t168, i32 0, i32 13
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l93, !tbaa !27
  %t172 = load i64, ptr %l6, !tbaa !24
  %t174 = add i64 %t172, 8
  %t178 = getelementptr { i64, ptr }, ptr %l93, i32 0, i32 1
  %t179 = load ptr, ptr %t178, !tbaa !27
  %t180 = getelementptr i64, ptr %t179, i64 %t174
  store i64 %t153, ptr %t180, !tbaa !34
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
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
  %t245 = getelementptr %"compiler/eval:Machine", ptr %t243, i32 0, i32 19
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

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2egenNew(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, { i64, [4 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:Ptr"
  %l10 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l17 = alloca i64
  %l19 = alloca ptr
  %l22 = alloca i64
  %l27 = alloca %"compiler/eval:Ptr"
  %l34 = alloca { i64, ptr }
  %l40 = alloca { i64, ptr }
  %l45 = alloca ptr
  %l49 = alloca %"compiler/eval:Ptr"
  %l55 = alloca %"compiler/eval:scope"
  %l59 = alloca i64
  %l62 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  %t97 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l3, !tbaa !23
  %t8 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %t4, i32 %t5)
  store i64 %t8, ptr %l14
  br label %bb1
bb1:
  %t9 = load i64, ptr %l14, !tbaa !24
  store i64 %t9, ptr %l5, !tbaa !24
  %t10 = load i64, ptr %l5, !tbaa !24
  %t12 = icmp sle i64 %t10, 8
  br i1 %t12, label %bb2, label %bb3
bb2:
  store i64 8, ptr %l17, !tbaa !24
  br label %bb4
bb3:
  %t14 = load i64, ptr %l5, !tbaa !24
  store i64 %t14, ptr %l17, !tbaa !24
  br label %bb4
bb4:
  %t16 = load i64, ptr %l17, !tbaa !24
  store i64 %t16, ptr %l6, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  store ptr %t17, ptr %l19, !tbaa !29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l22
  br label %bb5
bb5:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l22, !tbaa !24
  %t26 = add i64 %t24, %t23
  %t27 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t28 = load i64, ptr %l2, !tbaa !24
  %t29 = load ptr, ptr %l19, !tbaa !29
  %t33 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t29, i64 %t26, i64 %t27, i64 %t28)
  store %"compiler/eval:Ptr" %t33, ptr %l27
  br label %bb6
bb6:
  %t34 = load %"compiler/eval:Ptr", ptr %l27
  store %"compiler/eval:Ptr" %t34, ptr %l7
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 19
  %t38 = load i1, ptr %t37, !tbaa !21
  br i1 %t38, label %bb7, label %bb8
bb7:
  %t40 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t40, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t42 = load i64, ptr %l6, !tbaa !24
  %t44 = load i32, ptr %l3, !tbaa !23
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/eval:Machine", ptr %t46, i32 0, i32 46
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l34, !tbaa !27
  %t50 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t51 = load i64, ptr %t50, !tbaa !24
  %t52 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t55 = and i64 %t51, %t52
  %t59 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:alloc", ptr %t60, i64 %t55
  %t62 = getelementptr %"compiler/eval:alloc", ptr %t61, i32 0, i32 10
  store i64 %t42, ptr %t62, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 46
  %t66 = load { i64, ptr }, ptr %t65, !tbaa !27
  store { i64, ptr } %t66, ptr %l40, !tbaa !27
  %t67 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t68 = load i64, ptr %t67, !tbaa !24
  %t69 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t72 = and i64 %t68, %t69
  %t76 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr %"compiler/eval:alloc", ptr %t77, i64 %t72
  %t79 = getelementptr %"compiler/eval:alloc", ptr %t78, i32 0, i32 11
  store i32 %t44, ptr %t79, !tbaa !23
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l45, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t82 = load i64, ptr %t81, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t85 = sub i64 %t83, 8
  %t88 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t82, i64 %t85)
  store %"compiler/eval:Ptr" %t88, ptr %l49
  br label %bb10
bb10:
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t91 = getelementptr %"compiler/eval:Machine", ptr %t89, i32 0, i32 49
  %t92 = load i64, ptr %l2, !tbaa !24
  %t93 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t96 = and i64 %t92, %t93
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t97, ptr %v0, ptr %t91, i64 %t96)
  call void @llvm.memmove.p0.p0.i64(ptr %l55, ptr %t97, i64 144, i1 false)
  br label %bb11
bb11:
  %t100 = getelementptr %"compiler/eval:scope", ptr %l55, i32 0, i32 2
  %t101 = load i64, ptr %t100, !tbaa !24
  %t102 = load i64, ptr @G_2ecompiler_2feval_2esStore, !tbaa !24
  %t105 = icmp eq i64 %t101, %t102
  br i1 %t105, label %bb12, label %bb13
bb12:
  store i64 196609, ptr %l59, !tbaa !24
  br label %bb14
bb13:
  store i64 1, ptr %l59, !tbaa !24
  br label %bb14
bb14:
  %t107 = load ptr, ptr %l45, !tbaa !29
  %t108 = load %"compiler/eval:Ptr", ptr %l49
  %t109 = load i64, ptr %l59, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t107, %"compiler/eval:Ptr" %t108, i64 8, i64 %t109)
  br label %bb15
bb15:
  %t110 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t111 = load i64, ptr %t110, !tbaa !24
  %t112 = load i64, ptr %l6, !tbaa !24
  %t115 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t111, i64 %t112)
  store %"compiler/eval:Ptr" %t115, ptr %l62
  br label %bb16
bb16:
  %t116 = load %"compiler/eval:Ptr", ptr %l62
  store %"compiler/eval:Ptr" %t116, ptr %l10
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = load %"compiler/eval:Ptr", ptr %l10
  %t120 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t117, i64 %a1, %"compiler/eval:Ptr" %t119, i32 %t120, { i64, [4 x i64] } %a4)
  br label %bb17
bb17:
  %t127 = load %"compiler/eval:Ptr", ptr %l10
  call void @__olang_scope_close(ptr %s0)
  store %"compiler/eval:Ptr" %t127, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
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
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 22
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
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 22
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholderCheck(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { ptr, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"compiler/eval:alloc"
  %l10 = alloca %"compiler/eval:Ptr"
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca ptr
  %l19 = alloca i64
  %l20 = alloca %"compiler/eval:global"
  %l30 = alloca i64
  %l33 = alloca i64
  %l52 = alloca { i64, ptr }
  %l58 = alloca i1
  %l61 = alloca i1
  %l65 = alloca i64
  %l70 = alloca %"compiler/eval:Ptr"
  %l79 = alloca i64
  %l84 = alloca i64
  %l87 = alloca i64
  %l105 = alloca ptr
  %l110 = alloca %"compiler/eval:Ptr"
  %l119 = alloca i64
  %l121 = alloca i64
  %l126 = alloca %"compiler/eval:global"
  %l129 = alloca i1
  %l132 = alloca ptr
  %l134 = alloca %"compiler/eval:Ptr"
  %l151 = alloca i32
  %l153 = alloca i1
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 5
  store i1 false, ptr %t3, !tbaa !21
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr null, i32 1
  %t7 = ptrtoint ptr %t6 to i64
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t7, i64 8)
  %t9 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %t8, i32 0, i32 0
  store %"compiler/eval:Ptr" %a1, ptr %t9, !tbaa !28
  %t11 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %t8, i32 0, i32 1
  store ptr %t5, ptr %t11, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t13 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %t8, i32 0, i32 2
  store ptr %v0, ptr %t13, !tbaa !28
  %t14 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_2, 0
  %t15 = insertvalue { ptr, ptr } %t14, ptr %t8, 1
  store { ptr, ptr } %t15, ptr %l2
  store i64 1, ptr %l3, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 47
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t22 = load i64, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb1, label %bb2
bb1:
  %t28 = load i64, ptr %l5, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l30, !tbaa !24
  br label %bb6
bb3:
  %t32 = load i64, ptr %l4, !tbaa !24
  %t33 = load i64, ptr %l3, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l5, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l5, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l33, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb5
bb5:
  %t48 = load i64, ptr %l33, !tbaa !24
  store i64 %t48, ptr %l30, !tbaa !24
  br label %bb6
bb6:
  %t49 = load i64, ptr %l30, !tbaa !24
  store i64 %t49, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t50 = load i64, ptr %l7, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb41
bb9:
  br label %bb10
bb10:
  %t58 = load i64, ptr %l3, !tbaa !24
  %t59 = load i64, ptr %l7, !tbaa !24
  %t60 = load i64, ptr %l5, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l8, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 46
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l52, !tbaa !27
  %t72 = load i64, ptr %l8, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l52, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/eval:alloc", ptr %t75, i64 %t72
  %t77 = load %"compiler/eval:alloc", ptr %t76
  store %"compiler/eval:alloc" %t77, ptr %l9
  %t79 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 4
  %t80 = load i64, ptr %t79, !tbaa !24
  %t81 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t84 = icmp ne i64 %t80, %t81
  br i1 %t84, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb13
bb12:
  %t86 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t87 = load i32, ptr %t86, !tbaa !23
  %t89 = icmp eq i32 %t87, 0
  store i1 %t89, ptr %l58, !tbaa !21
  br label %bb13
bb13:
  %t91 = load i1, ptr %l58, !tbaa !21
  br i1 %t91, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb16
bb15:
  %t92 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 9
  %t93 = load i64, ptr %t92, !tbaa !24
  %t95 = icmp sge i64 %t93, 0
  store i1 %t95, ptr %l61, !tbaa !21
  br label %bb16
bb16:
  %t97 = load i1, ptr %l61, !tbaa !21
  br i1 %t97, label %bb17, label %bb18
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb18:
  br label %bb19
bb19:
  %t98 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 3
  %t99 = load i64, ptr %t98, !tbaa !24
  %t100 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t100, ptr %l65, !tbaa !24
  %t102 = load i64, ptr %l65, !tbaa !24
  %t103 = load i64, ptr %l65, !tbaa !24
  %t104 = shl i64 %t99, %t103
  %t105 = load i64, ptr %l8, !tbaa !24
  %t108 = or i64 %t104, %t105
  %t109 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 10
  %t110 = load i64, ptr %t109, !tbaa !24
  %t113 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t108, i64 %t110)
  store %"compiler/eval:Ptr" %t113, ptr %l70
  br label %bb20
bb20:
  %t114 = load %"compiler/eval:Ptr", ptr %l70
  store %"compiler/eval:Ptr" %t114, ptr %l10
  %t115 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 12
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb21, label %bb22
bb21:
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t121 = load %"compiler/eval:Ptr", ptr %l10
  %t122 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t123 = load i32, ptr %t122, !tbaa !23
  %t124 = load { ptr, ptr }, ptr %l2
  %t129 = extractvalue { ptr, ptr } %t124, 0
  %t130 = extractvalue { ptr, ptr } %t124, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t120, %"compiler/eval:Ptr" %t121, i32 %t123, i1 false, ptr %t129, ptr %t130)
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb24:
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t132 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t133 = load i32, ptr %t132, !tbaa !23
  %t136 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t131, i32 %t133)
  store i64 %t136, ptr %l79
  br label %bb25
bb25:
  %t137 = load i64, ptr %l79, !tbaa !24
  store i64 %t137, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t138 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 12
  %t139 = load i64, ptr %t138, !tbaa !24
  store i64 %t139, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t141 = load i64, ptr %l13, !tbaa !24
  %t142 = load i64, ptr %l12, !tbaa !24
  %t145 = icmp sgt i64 %t141, %t142
  br i1 %t145, label %bb26, label %bb27
bb26:
  %t147 = load i64, ptr %l14, !tbaa !24
  %t149 = icmp sgt i64 %t147, 0
  br i1 %t149, label %bb28, label %bb29
bb27:
  store i64 0, ptr %l84, !tbaa !24
  br label %bb31
bb28:
  %t151 = load i64, ptr %l13, !tbaa !24
  %t152 = load i64, ptr %l12, !tbaa !24
  %t155 = sub i64 %t151, %t152
  %t156 = load i64, ptr %l14, !tbaa !24
  %t159 = add i64 %t155, %t156
  %t161 = sub i64 %t159, 1
  %t162 = load i64, ptr %l14, !tbaa !24
  %t165 = sdiv i64 %t161, %t162
  store i64 %t165, ptr %l87, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb30
bb30:
  %t167 = load i64, ptr %l87, !tbaa !24
  store i64 %t167, ptr %l84, !tbaa !24
  br label %bb31
bb31:
  %t168 = load i64, ptr %l84, !tbaa !24
  store i64 %t168, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb32
bb32:
  store %olang.scope zeroinitializer, ptr %s6
  %t169 = load i64, ptr %l16, !tbaa !24
  %t170 = load i64, ptr %l15, !tbaa !24
  %t173 = icmp slt i64 %t169, %t170
  %t175 = xor i1 %t173, true
  br i1 %t175, label %bb33, label %bb34
bb33:
  call void @__olang_scope_close(ptr %s6)
  br label %bb39
bb34:
  br label %bb35
bb35:
  %t177 = load i64, ptr %l12, !tbaa !24
  %t178 = load i64, ptr %l16, !tbaa !24
  %t179 = load i64, ptr %l14, !tbaa !24
  %t182 = mul i64 %t178, %t179
  %t185 = add i64 %t177, %t182
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l105, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Ptr", ptr %l10, i32 0, i32 0
  %t189 = load i64, ptr %t188, !tbaa !24
  %t191 = load i64, ptr %l11, !tbaa !24
  %t194 = mul i64 %t185, %t191
  %t197 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s6, i64 %t189, i64 %t194)
  store %"compiler/eval:Ptr" %t197, ptr %l110
  br label %bb36
bb36:
  %t198 = getelementptr %"compiler/eval:alloc", ptr %l9, i32 0, i32 11
  %t199 = load i32, ptr %t198, !tbaa !23
  %t200 = load { ptr, ptr }, ptr %l2
  %t201 = load ptr, ptr %l105, !tbaa !29
  %t202 = load %"compiler/eval:Ptr", ptr %l110
  %t205 = extractvalue { ptr, ptr } %t200, 0
  %t206 = extractvalue { ptr, ptr } %t200, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t201, %"compiler/eval:Ptr" %t202, i32 %t199, i1 false, ptr %t205, ptr %t206)
  br label %bb37
bb37:
  call void @__olang_scope_close(ptr %s6)
  br label %bb38
bb38:
  %t207 = load i64, ptr %l16, !tbaa !24
  %t209 = add i64 %t207, 1
  store i64 %t209, ptr %l16, !tbaa !24
  br label %bb32
bb39:
  call void @__olang_scope_close(ptr %s2)
  br label %bb40
bb40:
  %t211 = load i64, ptr %l7, !tbaa !24
  %t213 = add i64 %t211, 1
  store i64 %t213, ptr %l7, !tbaa !24
  br label %bb7
bb41:
  %t215 = load ptr, ptr %l0, !tbaa !29
  %t217 = getelementptr %"compiler/eval:Machine", ptr %t215, i32 0, i32 39
  store ptr %t217, ptr %l18, !tbaa !29
  store i64 0, ptr %l19, !tbaa !24
  br label %bb42
bb42:
  %t219 = load i64, ptr %l19, !tbaa !24
  store i64 %t219, ptr %l119, !tbaa !24
  %t220 = load ptr, ptr %l18, !tbaa !29
  %t222 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t220)
  store i64 %t222, ptr %l121
  br label %bb43
bb43:
  %t223 = load i64, ptr %l119, !tbaa !24
  %t224 = load i64, ptr %l121, !tbaa !24
  %t225 = icmp slt i64 %t223, %t224
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb44, label %bb45
bb44:
  br label %bb57
bb45:
  br label %bb46
bb46:
  %t229 = load ptr, ptr %l18, !tbaa !29
  %t230 = load i64, ptr %l19, !tbaa !24
  %t233 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t229, i64 %t230)
  store %"compiler/eval:global" %t233, ptr %l126
  br label %bb47
bb47:
  %t234 = load %"compiler/eval:global", ptr %l126
  store %"compiler/eval:global" %t234, ptr %l20
  %t235 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 4
  %t236 = load i64, ptr %t235, !tbaa !24
  %t238 = icmp eq i64 %t236, 2
  br i1 %t238, label %bb48, label %bb49
bb48:
  %t240 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 3
  %t241 = load i64, ptr %t240, !tbaa !24
  %t243 = icmp ne i64 %t241, 0
  store i1 %t243, ptr %l129, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l129, !tbaa !21
  br label %bb50
bb50:
  %t245 = load i1, ptr %l129, !tbaa !21
  br i1 %t245, label %bb51, label %bb52
bb51:
  store %olang.scope zeroinitializer, ptr %s11
  %t246 = load ptr, ptr %l0, !tbaa !29
  store ptr %t246, ptr %l132, !tbaa !29
  %t247 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 3
  %t248 = load i64, ptr %t247, !tbaa !24
  %t250 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t248, i64 0)
  store %"compiler/eval:Ptr" %t250, ptr %l134
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t251 = getelementptr %"compiler/eval:global", ptr %l20, i32 0, i32 0
  %t252 = load i64, ptr %t251, !tbaa !24
  %t254 = trunc i64 %t252 to i32
  %t256 = load { ptr, ptr }, ptr %l2
  %t257 = load ptr, ptr %l132, !tbaa !29
  %t258 = load %"compiler/eval:Ptr", ptr %l134
  %t261 = extractvalue { ptr, ptr } %t256, 0
  %t262 = extractvalue { ptr, ptr } %t256, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t257, %"compiler/eval:Ptr" %t258, i32 %t254, i1 false, ptr %t261, ptr %t262)
  br label %bb54
bb54:
  call void @__olang_scope_close(ptr %s11)
  br label %bb55
bb55:
  br label %bb56
bb56:
  %t263 = load i64, ptr %l19, !tbaa !24
  %t265 = add i64 %t263, 1
  store i64 %t265, ptr %l19, !tbaa !24
  br label %bb42
bb57:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t269 = getelementptr %"compiler/eval:Machine", ptr %t267, i32 0, i32 5
  %t270 = load i1, ptr %t269, !tbaa !21
  %t272 = xor i1 %t270, true
  br i1 %t272, label %bb58, label %bb59
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb59:
  br label %bb60
bb60:
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t276 = getelementptr %"compiler/eval:Machine", ptr %t274, i32 0, i32 74
  %t277 = load i64, ptr %t276, !tbaa !24
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t280 = getelementptr %"compiler/eval:Machine", ptr %t278, i32 0, i32 75
  %t281 = getelementptr %"compiler/source:Span", ptr %t280, i32 0, i32 0
  %t282 = load i32, ptr %t281, !tbaa !23
  %t283 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyHolderMissed, !tbaa !27
  %t284 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t285 = extractvalue { i64, ptr } { i64 37, ptr getelementptr inbounds (<{ i64, [37 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t287 = call i64 @__olang_fmt_i64(ptr null, i64 %t277)
  %t288 = add i64 %t285, %t287
  %t289 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t290 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t291 = add i64 %t288, %t290
  %t293 = sext i32 %t282 to i64
  %t294 = call i64 @__olang_fmt_i64(ptr null, i64 %t293)
  %t295 = add i64 %t291, %t294
  %t296 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t297 = extractvalue { i64, ptr } { i64 2, ptr getelementptr inbounds (<{ i64, [2 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t298 = add i64 %t295, %t297
  %t300 = extractvalue { i64, ptr } %t283, 1
  %t301 = extractvalue { i64, ptr } %t283, 0
  %t302 = add i64 %t298, %t301
  %t303 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t304 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t305 = add i64 %t302, %t304
  %t306 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t305)
  call void @olang_textcopy(ptr %t306, ptr %t284, i64 %t285)
  %t307 = getelementptr i8, ptr %t306, i64 %t285
  %t308 = call i64 @__olang_fmt_i64(ptr %t307, i64 %t277)
  %t309 = getelementptr i8, ptr %t307, i64 %t287
  call void @olang_textcopy(ptr %t309, ptr %t289, i64 %t290)
  %t310 = getelementptr i8, ptr %t309, i64 %t290
  %t311 = call i64 @__olang_fmt_i64(ptr %t310, i64 %t293)
  %t312 = getelementptr i8, ptr %t310, i64 %t294
  call void @olang_textcopy(ptr %t312, ptr %t296, i64 %t297)
  %t313 = getelementptr i8, ptr %t312, i64 %t297
  call void @olang_textcopy(ptr %t313, ptr %t300, i64 %t301)
  %t314 = getelementptr i8, ptr %t313, i64 %t301
  call void @olang_textcopy(ptr %t314, ptr %t303, i64 %t304)
  %t315 = insertvalue { i64, ptr } undef, i64 %t305, 0
  %t316 = insertvalue { i64, ptr } %t315, ptr %t306, 1
  %t318 = extractvalue { i64, ptr } %t316, 0
  %t319 = extractvalue { i64, ptr } %t316, 1
  %t320 = mul i64 %t318, 1
  %t321 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t320)
  call void @llvm.memcpy.p0.p0.i64(ptr %t321, ptr %t319, i64 %t320, i1 false)
  %t322 = insertvalue { i64, ptr } undef, i64 %t318, 0
  %t323 = insertvalue { i64, ptr } %t322, ptr %t321, 1
  %t325 = call i32 @std_2fio_2ePrintErr(ptr %s0, { i64, ptr } %t323)
  store i32 %t325, ptr %l151
  %t326 = icmp ne i32 %t325, 0
  br i1 %t326, label %bb62, label %ok.327, !prof !99
ok.327:
  br label %bb61
bb61:
  br label %bb66
bb62:
  %t328 = load i32, ptr %l151, !tbaa !23
  %t329 = ashr i32 %t328, 16
  %t331 = icmp eq i32 %t329, 1
  store i1 %t331, ptr %l153, !tbaa !21
  %t332 = load i32, ptr %l151, !tbaa !23
  %t333 = ashr i32 %t332, 16
  %t335 = icmp eq i32 %t333, 1
  br i1 %t335, label %bb63, label %bb64
bb63:
  call void @__olang_errpay_pop()
  br label %bb64
bb64:
  br label %bb65
bb65:
  br label %bb66
bb66:
  call void @std_2fos_2eExit(i32 70)
  unreachable
bb67:
  call void @__olang_check_failed(ptr @olang_loc_c0f012afc32ce5a5_1c35e5c4f1b6a4c9)
  unreachable
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalAt(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/eval:alloc"
  %l9 = alloca { i64, ptr }
  %l11 = alloca { i64, ptr }
  %l27 = alloca i1
  %l32 = alloca ptr
  %l34 = alloca %"compiler/eval:Ptr"
  %l37 = alloca i64
  %l39 = alloca { i64, ptr }
  %l45 = alloca i1
  %l48 = alloca i64
  %l51 = alloca i1
  %l55 = alloca ptr
  %l57 = alloca %"compiler/eval:Ptr"
  %l60 = alloca i64
  %l62 = alloca i1
  %l64 = alloca i1
  %l67 = alloca i1
  %l72 = alloca i1
  %l76 = alloca i1
  %l80 = alloca %"compiler/eval:global"
  %l83 = alloca ptr
  %l85 = alloca %"compiler/eval:Ptr"
  %l88 = alloca i64
  %s2 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 57
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l9, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 55
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l11, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %a1
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 3
  %t15 = load i64, ptr %t14, !tbaa !24
  %t19 = add i64 %t15, %a2
  %t21 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr i64, ptr %t22, i64 %t19
  %t24 = load i64, ptr %t23, !tbaa !34
  store i64 %t24, ptr %l5, !tbaa !24
  %t26 = load i64, ptr %l5, !tbaa !24
  %t28 = icmp eq i64 %t26, 0
  br i1 %t28, label %bb1, label %bb2
bb1:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t32 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t32, ptr %t30, { i64, ptr } %t31)
  br label %bb3
bb2:
  br label %bb4
bb3:
  store i64 -1, ptr %rv
  br label %ret
bb4:
  %t36 = load i64, ptr %l5, !tbaa !24
  %t37 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t40 = and i64 %t36, %t37
  store i64 %t40, ptr %l6, !tbaa !24
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 19
  %t45 = load i1, ptr %t44, !tbaa !21
  br i1 %t45, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l27, !tbaa !21
  br label %bb7
bb6:
  %t47 = load i64, ptr %l6, !tbaa !24
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/eval:Machine", ptr %t48, i32 0, i32 47
  %t51 = load i64, ptr %t50, !tbaa !24
  %t54 = icmp sge i64 %t47, %t51
  store i1 %t54, ptr %l27, !tbaa !21
  br label %bb7
bb7:
  %t56 = load i1, ptr %l27, !tbaa !21
  br i1 %t56, label %bb8, label %bb9
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t57 = load ptr, ptr %l0, !tbaa !29
  store ptr %t57, ptr %l32, !tbaa !29
  %t58 = load i64, ptr %l5, !tbaa !24
  %t60 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t58, i64 0)
  store %"compiler/eval:Ptr" %t60, ptr %l34
  br label %bb10
bb9:
  br label %bb12
bb10:
  %t61 = load i64, ptr %l3, !tbaa !24
  %t62 = load i1, ptr %l4, !tbaa !21
  %t63 = load ptr, ptr %l32, !tbaa !29
  %t64 = load %"compiler/eval:Ptr", ptr %l34
  %t67 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t63, %"compiler/eval:Ptr" %t64, i64 %t61, i1 %t62)
  store i64 %t67, ptr %l37
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s2)
  %t68 = load i64, ptr %l37, !tbaa !24
  store i64 %t68, ptr %rv
  br label %ret
bb12:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 46
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l39, !tbaa !27
  %t73 = load i64, ptr %l6, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l39, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr %"compiler/eval:alloc", ptr %t76, i64 %t73
  %t78 = load %"compiler/eval:alloc", ptr %t77
  store %"compiler/eval:alloc" %t78, ptr %l7
  %t80 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 4
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t85 = icmp eq i64 %t81, %t82
  br i1 %t85, label %bb13, label %bb14
bb13:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb15
bb14:
  %t87 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 3
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = load i64, ptr %l5, !tbaa !24
  %t90 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t90, ptr %l48, !tbaa !24
  %t92 = load i64, ptr %l48, !tbaa !24
  %t93 = load i64, ptr %l48, !tbaa !24
  %t94 = ashr i64 %t89, %t93
  %t97 = icmp ne i64 %t88, %t94
  store i1 %t97, ptr %l45, !tbaa !21
  br label %bb15
bb15:
  %t99 = load i1, ptr %l45, !tbaa !21
  br i1 %t99, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb18
bb17:
  %t100 = load i64, ptr %l3, !tbaa !24
  %t101 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 1
  %t102 = load i64, ptr %t101, !tbaa !24
  %t105 = icmp sgt i64 %t100, %t102
  store i1 %t105, ptr %l51, !tbaa !21
  br label %bb18
bb18:
  %t107 = load i1, ptr %l51, !tbaa !21
  br i1 %t107, label %bb19, label %bb20
bb19:
  store %olang.scope zeroinitializer, ptr %s3
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l55, !tbaa !29
  %t109 = load i64, ptr %l5, !tbaa !24
  %t111 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t109, i64 0)
  store %"compiler/eval:Ptr" %t111, ptr %l57
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t112 = load i64, ptr %l3, !tbaa !24
  %t113 = load i1, ptr %l4, !tbaa !21
  %t114 = load ptr, ptr %l55, !tbaa !29
  %t115 = load %"compiler/eval:Ptr", ptr %l57
  %t118 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t114, %"compiler/eval:Ptr" %t115, i64 %t112, i1 %t113)
  store i64 %t118, ptr %l60
  br label %bb22
bb22:
  call void @__olang_scope_close(ptr %s3)
  %t119 = load i64, ptr %l60, !tbaa !24
  store i64 %t119, ptr %rv
  br label %ret
bb23:
  %t120 = load i1, ptr %l4, !tbaa !21
  br i1 %t120, label %bb24, label %bb25
bb24:
  %t122 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 13
  %t123 = load i1, ptr %t122, !tbaa !21
  br i1 %t123, label %bb26, label %bb27
bb25:
  store i1 false, ptr %l62, !tbaa !21
  br label %bb39
bb26:
  store i1 true, ptr %l64, !tbaa !21
  br label %bb38
bb27:
  %t125 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 8
  %t126 = load i64, ptr %t125, !tbaa !24
  %t128 = icmp sge i64 %t126, 0
  br i1 %t128, label %bb28, label %bb29
bb28:
  %t130 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 8
  %t131 = load i64, ptr %t130, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 70
  %t135 = load i64, ptr %t134, !tbaa !24
  %t138 = icmp ne i64 %t131, %t135
  store i1 %t138, ptr %l67, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l67, !tbaa !21
  br label %bb30
bb30:
  %t140 = load i1, ptr %l67, !tbaa !21
  br i1 %t140, label %bb31, label %bb32
bb31:
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 1
  %t144 = load i32, ptr %t143, !range !{i32 0, i32 2}
  %t146 = trunc i64 0 to i32
  %t147 = icmp eq i32 %t144, %t146
  br i1 %t147, label %bb33, label %bb34
bb32:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb37
bb33:
  store i1 true, ptr %l76, !tbaa !21
  br label %bb36
bb34:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/eval:Machine", ptr %t149, i32 0, i32 39
  %t152 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 8
  %t153 = load i64, ptr %t152, !tbaa !24
  %t156 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t151, i64 %t153)
  store %"compiler/eval:global" %t156, ptr %l80
  br label %bb35
bb35:
  %t157 = getelementptr %"compiler/eval:global", ptr %l80, i32 0, i32 1
  %t158 = load i1, ptr %t157, !tbaa !21
  %t160 = xor i1 %t158, true
  store i1 %t160, ptr %l76, !tbaa !21
  br label %bb36
bb36:
  %t162 = load i1, ptr %l76, !tbaa !21
  store i1 %t162, ptr %l72, !tbaa !21
  br label %bb37
bb37:
  %t163 = load i1, ptr %l72, !tbaa !21
  store i1 %t163, ptr %l64, !tbaa !21
  br label %bb38
bb38:
  %t164 = load i1, ptr %l64, !tbaa !21
  store i1 %t164, ptr %l62, !tbaa !21
  br label %bb39
bb39:
  %t165 = load i1, ptr %l62, !tbaa !21
  br i1 %t165, label %bb40, label %bb41
bb40:
  store %olang.scope zeroinitializer, ptr %s4
  %t166 = load ptr, ptr %l0, !tbaa !29
  store ptr %t166, ptr %l83, !tbaa !29
  %t167 = load i64, ptr %l5, !tbaa !24
  %t169 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t167, i64 0)
  store %"compiler/eval:Ptr" %t169, ptr %l85
  br label %bb42
bb41:
  br label %bb44
bb42:
  %t170 = load i64, ptr %l3, !tbaa !24
  %t171 = load i1, ptr %l4, !tbaa !21
  %t172 = load ptr, ptr %l83, !tbaa !29
  %t173 = load %"compiler/eval:Ptr", ptr %l85
  %t176 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t172, %"compiler/eval:Ptr" %t173, i64 %t170, i1 %t171)
  store i64 %t176, ptr %l88
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s4)
  %t177 = load i64, ptr %l88, !tbaa !24
  store i64 %t177, ptr %rv
  br label %ret
bb44:
  %t178 = getelementptr %"compiler/eval:alloc", ptr %l7, i32 0, i32 0
  %t179 = load i64, ptr %t178, !tbaa !24
  store i64 %t179, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eownParams(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca %"compiler/eval:Ptr"
  %l17 = alloca { i64, ptr }
  %l25 = alloca i64
  %l28 = alloca i64
  %l46 = alloca { i64, ptr }
  %l53 = alloca ptr
  %l57 = alloca i32
  %l61 = alloca %"compiler/eval:Ptr"
  %l64 = alloca i64
  %l67 = alloca i1
  %l70 = alloca ptr
  %l74 = alloca %"compiler/eval:Ptr"
  %l75 = alloca %"compiler/eval:Ptr"
  %l76 = alloca i64
  %l77 = alloca ptr
  %l80 = alloca { i64, ptr }
  %l82 = alloca { i64, ptr }
  %l86 = alloca i32
  %l87 = alloca i64
  %l94 = alloca %"compiler/eval:Ptr"
  %l99 = alloca ptr
  %l103 = alloca %"compiler/eval:Ptr"
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 23
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l17, !tbaa !27
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:cfn", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:cfn", ptr %t9, i32 0, i32 12
  %t11 = load { i64, ptr }, ptr %t10, !tbaa !27
  store { i64, ptr } %t11, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t13 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  store i64 %t15, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t17 = load i64, ptr %l5, !tbaa !24
  %t18 = load i64, ptr %l4, !tbaa !24
  %t21 = icmp sgt i64 %t17, %t18
  br i1 %t21, label %bb1, label %bb2
bb1:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t25 = icmp sgt i64 %t23, 0
  br i1 %t25, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l25, !tbaa !24
  br label %bb6
bb3:
  %t27 = load i64, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t31 = sub i64 %t27, %t28
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = add i64 %t31, %t32
  %t37 = sub i64 %t35, 1
  %t38 = load i64, ptr %l6, !tbaa !24
  %t41 = sdiv i64 %t37, %t38
  store i64 %t41, ptr %l28, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb5
bb5:
  %t43 = load i64, ptr %l28, !tbaa !24
  store i64 %t43, ptr %l25, !tbaa !24
  br label %bb6
bb6:
  %t44 = load i64, ptr %l25, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t45 = load i64, ptr %l8, !tbaa !24
  %t46 = load i64, ptr %l7, !tbaa !24
  %t49 = icmp slt i64 %t45, %t46
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb33
bb9:
  br label %bb10
bb10:
  %t53 = load i64, ptr %l4, !tbaa !24
  %t54 = load i64, ptr %l8, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  %t58 = mul i64 %t54, %t55
  %t61 = add i64 %t53, %t58
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t63, ptr %l46, !tbaa !27
  %t64 = load i64, ptr %l9, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l46, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i1, ptr %t67, i64 %t64
  %t69 = load i1, ptr %t68, !tbaa !31
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb11, label %bb12
bb11:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb12:
  br label %bb13
bb13:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 22
  %t76 = load i64, ptr %l2, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l53
  br label %bb14
bb14:
  %t80 = load ptr, ptr %l53, !tbaa !29
  %t82 = getelementptr %"compiler/mir:Fn", ptr %t80, i32 0, i32 4
  %t83 = load i64, ptr %l9, !tbaa !24
  %t86 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %t82, i64 %t83)
  store i32 %t86, ptr %l57
  br label %bb15
bb15:
  %t87 = load i32, ptr %l57, !tbaa !23
  store i32 %t87, ptr %l10, !tbaa !23
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i32, ptr %l10, !tbaa !23
  %t94 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t88, i64 %a1, i32 %t90)
  store %"compiler/eval:Ptr" %t94, ptr %l61
  br label %bb16
bb16:
  %t95 = load %"compiler/eval:Ptr", ptr %l61
  store %"compiler/eval:Ptr" %t95, ptr %l11
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t97 = load %"compiler/eval:Ptr", ptr %l11
  %t100 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t96, %"compiler/eval:Ptr" %t97, i64 8)
  store i64 %t100, ptr %l64
  br label %bb17
bb17:
  %t101 = load i64, ptr %l64, !tbaa !24
  store i64 %t101, ptr %l12, !tbaa !24
  %t102 = load i64, ptr %l12, !tbaa !24
  %t104 = icmp sle i64 %t102, 0
  br i1 %t104, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb20
bb19:
  %t106 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/eval:Machine", ptr %t106, i32 0, i32 19
  %t109 = load i1, ptr %t108, !tbaa !21
  store i1 %t109, ptr %l67, !tbaa !21
  br label %bb20
bb20:
  %t111 = load i1, ptr %l67, !tbaa !21
  br i1 %t111, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb22:
  br label %bb23
bb23:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l70, !tbaa !29
  %t113 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = add i64 %t116, 8
  %t121 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t114, i64 %t118)
  store %"compiler/eval:Ptr" %t121, ptr %l74
  br label %bb24
bb24:
  %t122 = load ptr, ptr %l70, !tbaa !29
  %t123 = load %"compiler/eval:Ptr", ptr %l74
  %t124 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t122, %"compiler/eval:Ptr" %t123)
  store %"compiler/eval:Ptr" %t124, ptr %l75
  br label %bb25
bb25:
  %t125 = load %"compiler/eval:Ptr", ptr %l75
  store %"compiler/eval:Ptr" %t125, ptr %l13
  %t126 = load i64, ptr %l12, !tbaa !24
  store i64 %t126, ptr %l76, !tbaa !24
  %t127 = load ptr, ptr %l0, !tbaa !29
  store ptr %t127, ptr %l77, !tbaa !29
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 23
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l80, !tbaa !27
  %t133 = load i64, ptr %l2, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr %"compiler/eval:cfn", ptr %t136, i64 %t133
  %t138 = getelementptr %"compiler/eval:cfn", ptr %t137, i32 0, i32 1
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l82, !tbaa !27
  %t140 = load i32, ptr %l10, !tbaa !23
  %t142 = sext i32 %t140 to i64
  %t144 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t145 = load ptr, ptr %t144, !tbaa !27
  %t146 = getelementptr %"compiler/mir:Local", ptr %t145, i64 %t142
  %t147 = getelementptr %"compiler/mir:Local", ptr %t146, i32 0, i32 2
  %t148 = load i32, ptr %t147, !tbaa !23
  %t151 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t128, i32 %t148)
  store i32 %t151, ptr %l86
  br label %bb26
bb26:
  %t152 = load ptr, ptr %l77, !tbaa !29
  %t153 = load i32, ptr %l86, !tbaa !23
  %t154 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t152, i32 %t153)
  store i64 %t154, ptr %l87
  br label %bb27
bb27:
  %t155 = load i64, ptr %l76, !tbaa !24
  %t156 = load i64, ptr %l87, !tbaa !24
  %t157 = mul i64 %t155, %t156
  store i64 %t157, ptr %l14, !tbaa !24
  %t159 = load ptr, ptr %l0, !tbaa !29
  %t160 = load i64, ptr %l14, !tbaa !24
  %t161 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 67
  %t165 = load i64, ptr %t164, !tbaa !24
  %t170 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t159, i64 %t160, i64 %t161, i64 %t165)
  store %"compiler/eval:Ptr" %t170, ptr %l94
  br label %bb28
bb28:
  %t171 = load %"compiler/eval:Ptr", ptr %l94
  store %"compiler/eval:Ptr" %t171, ptr %l15
  %t172 = load ptr, ptr %l0, !tbaa !29
  %t173 = load %"compiler/eval:Ptr", ptr %l15
  %t174 = load %"compiler/eval:Ptr", ptr %l13
  %t175 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t172, %"compiler/eval:Ptr" %t173, %"compiler/eval:Ptr" %t174, i64 %t175)
  br label %bb29
bb29:
  %t180 = load ptr, ptr %l0, !tbaa !29
  store ptr %t180, ptr %l99, !tbaa !29
  %t181 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t182 = load i64, ptr %t181, !tbaa !24
  %t183 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t184 = load i64, ptr %t183, !tbaa !24
  %t186 = add i64 %t184, 8
  %t189 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t182, i64 %t186)
  store %"compiler/eval:Ptr" %t189, ptr %l103
  br label %bb30
bb30:
  %t190 = load %"compiler/eval:Ptr", ptr %l15
  %t191 = load ptr, ptr %l99, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l103
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, %"compiler/eval:Ptr" %t190)
  br label %bb31
bb31:
  call void @__olang_scope_close(ptr %s2)
  br label %bb32
bb32:
  %t194 = load i64, ptr %l8, !tbaa !24
  %t196 = add i64 %t194, 1
  store i64 %t196, ptr %l8, !tbaa !24
  br label %bb7
bb33:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputBytes(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, { i64, ptr } %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca { i64, [4 x i64] }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i32
  %l6 = alloca { %"compiler/eval:Ptr", i64 }
  %l7 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l20 = alloca i32
  %l21 = alloca ptr
  %l25 = alloca %"compiler/eval:Ptr"
  %l27 = alloca { %"compiler/eval:Ptr", i64 }
  %l32 = alloca i1
  %l34 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca i64
  %l60 = alloca i64
  %l63 = alloca i64
  %l81 = alloca ptr
  %l86 = alloca %"compiler/eval:Ptr"
  %l87 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a2, ptr %l2
  store { i64, ptr } %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l2
  %t7 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3)
  store i32 %t7, ptr %l20
  br label %bb1
bb1:
  %t8 = load i32, ptr %l20, !tbaa !23
  store i32 %t8, ptr %l5, !tbaa !23
  %t9 = load ptr, ptr %l0, !tbaa !29
  store ptr %t9, ptr %l21, !tbaa !29
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load i64, ptr %l1, !tbaa !24
  %t12 = load { i64, [4 x i64] }, ptr %l2
  %t16 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t10, i64 %t11, { i64, [4 x i64] } %t12, i64 1)
  store %"compiler/eval:Ptr" %t16, ptr %l25
  br label %bb2
bb2:
  %t17 = load i32, ptr %l5, !tbaa !23
  %t18 = load ptr, ptr %l21, !tbaa !29
  %t19 = load %"compiler/eval:Ptr", ptr %l25
  %t21 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t18, %"compiler/eval:Ptr" %t19, i32 %t17)
  store { %"compiler/eval:Ptr", i64 } %t21, ptr %l27
  br label %bb3
bb3:
  %t22 = load { %"compiler/eval:Ptr", i64 }, ptr %l27
  store { %"compiler/eval:Ptr", i64 } %t22, ptr %l6
  %t23 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l6, i32 0, i32 0
  %t24 = load %"compiler/eval:Ptr", ptr %t23
  store %"compiler/eval:Ptr" %t24, ptr %l7
  %t26 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l6, i32 0, i32 1
  %t27 = load i64, ptr %t26, !tbaa !24
  store i64 %t27, ptr %l8, !tbaa !24
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 19
  %t32 = load i1, ptr %t31, !tbaa !21
  br i1 %t32, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l32, !tbaa !21
  br label %bb6
bb5:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Machine", ptr %t34, i32 0, i32 46
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l34, !tbaa !27
  %t38 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t39 = load i64, ptr %t38, !tbaa !24
  %t40 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t43 = and i64 %t39, %t40
  %t45 = getelementptr { i64, ptr }, ptr %l34, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/eval:alloc", ptr %t46, i64 %t43
  %t48 = getelementptr %"compiler/eval:alloc", ptr %t47, i32 0, i32 13
  %t49 = load i1, ptr %t48, !tbaa !21
  store i1 %t49, ptr %l32, !tbaa !21
  br label %bb6
bb6:
  %t51 = load i1, ptr %l32, !tbaa !21
  br i1 %t51, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t52 = load i64, ptr %l8, !tbaa !24
  store i64 %t52, ptr %l39, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  store ptr %t53, ptr %l40, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load i32, ptr %l5, !tbaa !23
  %t58 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t54, i32 %t55)
  store i32 %t58, ptr %l43
  br label %bb10
bb10:
  %t59 = load ptr, ptr %l40, !tbaa !29
  %t60 = load i32, ptr %l43, !tbaa !23
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t61, ptr %l44
  br label %bb11
bb11:
  %t62 = load i64, ptr %l39, !tbaa !24
  %t63 = load i64, ptr %l44, !tbaa !24
  %t64 = mul i64 %t62, %t63
  store i64 %t64, ptr %l9, !tbaa !24
  %t66 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t68 = extractvalue { i64, ptr } %t66, 0
  store i64 %t68, ptr %l10, !tbaa !24
  %t70 = load i64, ptr %l4, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = icmp slt i64 %t70, %t71
  br i1 %t74, label %bb12, label %bb13
bb12:
  %t76 = load i64, ptr %l4, !tbaa !24
  store i64 %t76, ptr %l10, !tbaa !24
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t78 = load i64, ptr %l9, !tbaa !24
  %t79 = load i64, ptr %l10, !tbaa !24
  %t82 = icmp slt i64 %t78, %t79
  br i1 %t82, label %bb15, label %bb16
bb15:
  %t84 = load i64, ptr %l9, !tbaa !24
  store i64 %t84, ptr %l10, !tbaa !24
  br label %bb17
bb16:
  br label %bb17
bb17:
  store i64 0, ptr %l11, !tbaa !24
  %t86 = load i64, ptr %l10, !tbaa !24
  store i64 %t86, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t88 = load i64, ptr %l12, !tbaa !24
  %t89 = load i64, ptr %l11, !tbaa !24
  %t92 = icmp sgt i64 %t88, %t89
  br i1 %t92, label %bb18, label %bb19
bb18:
  %t94 = load i64, ptr %l13, !tbaa !24
  %t96 = icmp sgt i64 %t94, 0
  br i1 %t96, label %bb20, label %bb21
bb19:
  store i64 0, ptr %l60, !tbaa !24
  br label %bb23
bb20:
  %t98 = load i64, ptr %l12, !tbaa !24
  %t99 = load i64, ptr %l11, !tbaa !24
  %t102 = sub i64 %t98, %t99
  %t103 = load i64, ptr %l13, !tbaa !24
  %t106 = add i64 %t102, %t103
  %t108 = sub i64 %t106, 1
  %t109 = load i64, ptr %l13, !tbaa !24
  %t112 = sdiv i64 %t108, %t109
  store i64 %t112, ptr %l63, !tbaa !24
  br label %bb22
bb21:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb22
bb22:
  %t114 = load i64, ptr %l63, !tbaa !24
  store i64 %t114, ptr %l60, !tbaa !24
  br label %bb23
bb23:
  %t115 = load i64, ptr %l60, !tbaa !24
  store i64 %t115, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb24
bb24:
  store %olang.scope zeroinitializer, ptr %s5
  %t116 = load i64, ptr %l15, !tbaa !24
  %t117 = load i64, ptr %l14, !tbaa !24
  %t120 = icmp slt i64 %t116, %t117
  %t122 = xor i1 %t120, true
  br i1 %t122, label %bb25, label %bb26
bb25:
  call void @__olang_scope_close(ptr %s5)
  br label %bb31
bb26:
  br label %bb27
bb27:
  %t124 = load i64, ptr %l11, !tbaa !24
  %t125 = load i64, ptr %l15, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t129 = mul i64 %t125, %t126
  %t132 = add i64 %t124, %t129
  store i64 %t132, ptr %l16, !tbaa !24
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l81, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 0
  %t136 = load i64, ptr %t135, !tbaa !24
  %t137 = getelementptr %"compiler/eval:Ptr", ptr %l7, i32 0, i32 1
  %t138 = load i64, ptr %t137, !tbaa !24
  %t139 = load i64, ptr %l16, !tbaa !24
  %t142 = add i64 %t138, %t139
  %t145 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t136, i64 %t142)
  store %"compiler/eval:Ptr" %t145, ptr %l86
  br label %bb28
bb28:
  %t146 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t146, ptr %l87, !tbaa !27
  %t147 = load i64, ptr %l16, !tbaa !24
  %t149 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t150 = load ptr, ptr %t149, !tbaa !27
  %t151 = getelementptr i8, ptr %t150, i64 %t147
  %t152 = load i8, ptr %t151, !tbaa !32
  %t154 = zext i8 %t152 to i64
  %t155 = load ptr, ptr %l81, !tbaa !29
  %t156 = load %"compiler/eval:Ptr", ptr %l86
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t155, %"compiler/eval:Ptr" %t156, i64 1, i64 %t154)
  br label %bb29
bb29:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb30:
  %t158 = load i64, ptr %l15, !tbaa !24
  %t160 = add i64 %t158, 1
  store i64 %t160, ptr %l15, !tbaa !24
  br label %bb24
bb31:
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputLimit(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i1 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca i1
  %l6 = alloca { i64, i64 }
  %l9 = alloca { i64, i64 }
  %l15 = alloca { i64, i64 }
  %l25 = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a5, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l3, !tbaa !24
  %t4 = load i1, ptr %l4, !tbaa !21
  %t7 = call { i64, i64 } @compiler_2feval_2ewideMax(i64 %t3, i1 %t4)
  store { i64, i64 } %t7, ptr %l15
  br label %bb3
bb2:
  %t8 = load i1, ptr %l4, !tbaa !21
  br i1 %t8, label %bb5, label %bb6
bb3:
  %t10 = load { i64, i64 }, ptr %l15
  store { i64, i64 } %t10, ptr %l6
  %t11 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 0
  %t12 = load i64, ptr %t11, !tbaa !24
  %t14 = getelementptr { i64, i64 }, ptr %l6, i32 0, i32 1
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load %"compiler/eval:Ptr", ptr %l1
  %t19 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t17, %"compiler/eval:Ptr" %t18, i32 %t19, i64 %t12, i64 %t15)
  br label %bb4
bb4:
  br label %bb11
bb5:
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t27)
  store { i64, i64 } %t29, ptr %l25
  br label %bb7
bb6:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load %"compiler/eval:Ptr", ptr %l1
  %t32 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t30, %"compiler/eval:Ptr" %t31, i32 %t32, i64 0, i64 0)
  br label %bb9
bb7:
  %t36 = load { i64, i64 }, ptr %l25
  store { i64, i64 } %t36, ptr %l9
  %t37 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 0
  %t38 = load i64, ptr %t37, !tbaa !24
  %t40 = getelementptr { i64, i64 }, ptr %l9, i32 0, i32 1
  %t41 = load i64, ptr %t40, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t44 = load %"compiler/eval:Ptr", ptr %l1
  %t45 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t43, %"compiler/eval:Ptr" %t44, i32 %t45, i64 %t38, i64 %t41)
  br label %bb8
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  br label %ret
ret:
  ret void
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
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 43
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
  %t20 = getelementptr %"compiler/eval:Machine", ptr %t18, i32 0, i32 42
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
  %t39 = getelementptr %"compiler/eval:Machine", ptr %t37, i32 0, i32 42
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
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 42
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
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 42
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l13 = alloca { i64, ptr }
  %l19 = alloca i1
  %l30 = alloca { i64, ptr }
  %l35 = alloca i64
  %rv = alloca i64
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
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  %t13 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t9, i32 %a2)
  store { i64, ptr } %t13, ptr %l13
  br label %bb4
bb4:
  %t14 = load { i64, ptr }, ptr %l13, !tbaa !27
  store { i64, ptr } %t14, ptr %l4, !tbaa !27
  %t15 = load i64, ptr %l1, !tbaa !24
  %t17 = ashr i64 %t15, 16
  %t19 = sub i64 %t17, 1
  store i64 %t19, ptr %l5, !tbaa !24
  %t21 = load i64, ptr %l5, !tbaa !24
  %t23 = icmp slt i64 %t21, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i64, ptr %l5, !tbaa !24
  %t26 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t28 = extractvalue { i64, ptr } %t26, 0
  %t31 = icmp sge i64 %t25, %t28
  store i1 %t31, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t33 = load i1, ptr %l19, !tbaa !21
  br i1 %t33, label %bb8, label %bb9
bb8:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t35 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t36 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t36, ptr %t34, { i64, ptr } %t35)
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 0, ptr %rv
  br label %ret
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 0
  %t43 = load ptr, ptr %t42, !tbaa !29
  %t45 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t45, ptr %l30, !tbaa !27
  %t46 = load i64, ptr %l5, !tbaa !24
  %t48 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = getelementptr i32, ptr %t49, i64 %t46
  %t51 = load i32, ptr %t50, !tbaa !33
  %t52 = load i64, ptr %l1, !tbaa !24
  %t54 = and i64 %t52, 65535
  %t59 = call i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %t43, i32 %a3, i32 %t51, i64 %t54)
  store i64 %t59, ptr %l35
  br label %bb12
bb12:
  %t60 = load i64, ptr %l35, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = icmp slt i64 %t61, 0
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t66 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t67 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t67, ptr %t65, { i64, ptr } %t66)
  br label %bb15
bb14:
  br label %bb16
bb15:
  store i64 0, ptr %rv
  br label %ret
bb16:
  %t71 = load i64, ptr %l6, !tbaa !24
  store i64 %t71, ptr %rv
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
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 47
  %t18 = load i64, ptr %t17, !tbaa !24
  %t21 = icmp sge i64 %t14, %t18
  br i1 %t21, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 46
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
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 46
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
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 49
  %t70 = load i64, ptr %l3, !tbaa !24
  %t71 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t74 = and i64 %t70, %t71
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t75, ptr %v0, ptr %t69, i64 %t74)
  call void @llvm.memmove.p0.p0.i64(ptr %l38, ptr %t75, i64 144, i1 false)
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eslice(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, { i64, [4 x i64] } %a4, { i64, [4 x i64] } %a5, i32 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca { i64, [4 x i64] }
  %l7 = alloca { %"compiler/eval:Ptr", i32 }
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i32
  %l10 = alloca { %"compiler/eval:Ptr", i64 }
  %l11 = alloca %"compiler/eval:Ptr"
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca %"compiler/eval:Ptr"
  %l17 = alloca i32
  %l21 = alloca { %"compiler/eval:Ptr", i32 }
  %l29 = alloca { %"compiler/eval:Ptr", i64 }
  %l32 = alloca ptr
  %l36 = alloca i64
  %l40 = alloca i32
  %l41 = alloca i64
  %l42 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca i32
  %l51 = alloca i64
  %l56 = alloca i1
  %l60 = alloca i1
  %l66 = alloca ptr
  %l69 = alloca i32
  %l70 = alloca i64
  %l74 = alloca i1
  %l77 = alloca %"compiler/eval:Ptr"
  %l84 = alloca %"compiler/eval:Ptr"
  %l89 = alloca i32
  %l93 = alloca i32
  %l96 = alloca i1
  %l98 = alloca ptr
  %l100 = alloca ptr
  %l104 = alloca i32
  %l105 = alloca i32
  %l106 = alloca i32
  %l116 = alloca ptr
  %l120 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store { i64, [4 x i64] } %a4, ptr %l4
  store { i64, [4 x i64] } %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Lvalue" %a3)
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l21
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l21
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l7
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l8
  %t12 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l7, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l9, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 19
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/eval:Ptr", ptr %l8
  %t22 = load i32, ptr %l9, !tbaa !23
  %t26 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t20, %"compiler/eval:Ptr" %t21, i32 %t22)
  store { %"compiler/eval:Ptr", i64 } %t26, ptr %l29
  br label %bb5
bb5:
  %t27 = load { %"compiler/eval:Ptr", i64 }, ptr %l29
  store { %"compiler/eval:Ptr", i64 } %t27, ptr %l10
  %t28 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 0
  %t29 = load %"compiler/eval:Ptr", ptr %t28
  store %"compiler/eval:Ptr" %t29, ptr %l11
  %t31 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l10, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  store i64 %t32, ptr %l12, !tbaa !24
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l32, !tbaa !29
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t37 = load { i64, [4 x i64] }, ptr %l4
  %t41 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t35, i64 %t36, { i64, [4 x i64] } %t37)
  store i64 %t41, ptr %l36
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i64, ptr %l1, !tbaa !24
  %t44 = load { i64, [4 x i64] }, ptr %l4
  %t48 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t42, i64 %t43, { i64, [4 x i64] } %t44)
  store i32 %t48, ptr %l40
  br label %bb7
bb7:
  %t49 = load ptr, ptr %l32, !tbaa !29
  %t50 = load i64, ptr %l36, !tbaa !24
  %t51 = load i32, ptr %l40, !tbaa !23
  %t52 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t49, i64 %t50, i32 %t51)
  store i64 %t52, ptr %l41
  br label %bb8
bb8:
  %t53 = load i64, ptr %l41, !tbaa !24
  store i64 %t53, ptr %l13, !tbaa !24
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l42, !tbaa !29
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l1, !tbaa !24
  %t57 = load { i64, [4 x i64] }, ptr %l5
  %t61 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t55, i64 %t56, { i64, [4 x i64] } %t57)
  store i64 %t61, ptr %l46
  br label %bb9
bb9:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  %t64 = load { i64, [4 x i64] }, ptr %l5
  %t68 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t62, i64 %t63, { i64, [4 x i64] } %t64)
  store i32 %t68, ptr %l50
  br label %bb10
bb10:
  %t69 = load ptr, ptr %l42, !tbaa !29
  %t70 = load i64, ptr %l46, !tbaa !24
  %t71 = load i32, ptr %l50, !tbaa !23
  %t72 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t69, i64 %t70, i32 %t71)
  store i64 %t72, ptr %l51
  br label %bb11
bb11:
  %t73 = load i64, ptr %l51, !tbaa !24
  store i64 %t73, ptr %l14, !tbaa !24
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 19
  %t77 = load i1, ptr %t76, !tbaa !21
  br i1 %t77, label %bb12, label %bb13
bb12:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb13:
  br label %bb14
bb14:
  %t79 = load i64, ptr %l13, !tbaa !24
  %t81 = icmp slt i64 %t79, 0
  br i1 %t81, label %bb15, label %bb16
bb15:
  store i1 true, ptr %l56, !tbaa !21
  br label %bb17
bb16:
  %t83 = load i64, ptr %l13, !tbaa !24
  %t84 = load i64, ptr %l14, !tbaa !24
  %t87 = icmp sgt i64 %t83, %t84
  store i1 %t87, ptr %l56, !tbaa !21
  br label %bb17
bb17:
  %t89 = load i1, ptr %l56, !tbaa !21
  br i1 %t89, label %bb18, label %bb19
bb18:
  store i1 true, ptr %l60, !tbaa !21
  br label %bb20
bb19:
  %t90 = load i64, ptr %l14, !tbaa !24
  %t91 = load i64, ptr %l12, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  store i1 %t94, ptr %l60, !tbaa !21
  br label %bb20
bb20:
  %t96 = load i1, ptr %l60, !tbaa !21
  br i1 %t96, label %bb21, label %bb22
bb21:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyOutside, !tbaa !27
  %t99 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t99, ptr %t97, { i64, ptr } %t98)
  br label %bb23
bb22:
  br label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l66, !tbaa !29
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t104 = load i32, ptr %l9, !tbaa !23
  %t107 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t103, i32 %t104)
  store i32 %t107, ptr %l69
  br label %bb25
bb25:
  %t108 = load ptr, ptr %l66, !tbaa !29
  %t109 = load i32, ptr %l69, !tbaa !23
  %t110 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t108, i32 %t109)
  store i64 %t110, ptr %l70
  br label %bb26
bb26:
  %t111 = load i64, ptr %l70, !tbaa !24
  store i64 %t111, ptr %l15, !tbaa !24
  %t112 = load i64, ptr %l14, !tbaa !24
  %t113 = load i64, ptr %l13, !tbaa !24
  %t116 = icmp sgt i64 %t112, %t113
  br i1 %t116, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l74, !tbaa !21
  br label %bb29
bb28:
  %t118 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t119 = load i64, ptr %t118, !tbaa !24
  %t121 = icmp ne i64 %t119, 0
  store i1 %t121, ptr %l74, !tbaa !21
  br label %bb29
bb29:
  %t123 = load i1, ptr %l74, !tbaa !21
  br i1 %t123, label %bb30, label %bb31
bb30:
  %t124 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 0
  %t125 = load i64, ptr %t124, !tbaa !24
  %t126 = getelementptr %"compiler/eval:Ptr", ptr %l11, i32 0, i32 1
  %t127 = load i64, ptr %t126, !tbaa !24
  %t128 = load i64, ptr %l13, !tbaa !24
  %t129 = load i64, ptr %l15, !tbaa !24
  %t132 = mul i64 %t128, %t129
  %t135 = add i64 %t127, %t132
  %t138 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t125, i64 %t135)
  store %"compiler/eval:Ptr" %t138, ptr %l84
  br label %bb32
bb31:
  %t139 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t139, ptr %l77
  br label %bb33
bb32:
  %t141 = load %"compiler/eval:Ptr", ptr %l84
  store %"compiler/eval:Ptr" %t141, ptr %l77
  br label %bb33
bb33:
  %t142 = load %"compiler/eval:Ptr", ptr %l77
  store %"compiler/eval:Ptr" %t142, ptr %l16
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr %"compiler/eval:Machine", ptr %t143, i32 0, i32 0
  %t146 = load ptr, ptr %t145, !tbaa !29
  %t150 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t146, i32 %a6)
  store i32 %t150, ptr %l89
  br label %bb34
bb34:
  %t151 = load i32, ptr %l89, !tbaa !23
  store i32 %t151, ptr %l17, !tbaa !23
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 0
  %t155 = load ptr, ptr %t154, !tbaa !29
  %t156 = load i32, ptr %l17, !tbaa !23
  %t159 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t155, i32 %t156)
  store i32 %t159, ptr %l93
  br label %bb35
bb35:
  %t160 = load i32, ptr %l93, !range !{i32 0, i32 33}
  %t162 = trunc i64 20 to i32
  %t163 = icmp eq i32 %t160, %t162
  br i1 %t163, label %bb36, label %bb37
bb36:
  %t165 = load ptr, ptr %l0, !tbaa !29
  %t167 = getelementptr %"compiler/eval:Machine", ptr %t165, i32 0, i32 0
  %t168 = load ptr, ptr %t167, !tbaa !29
  store ptr %t168, ptr %l98, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/eval:Machine", ptr %t169, i32 0, i32 0
  %t172 = load ptr, ptr %t171, !tbaa !29
  store ptr %t172, ptr %l100, !tbaa !29
  %t173 = load ptr, ptr %l0, !tbaa !29
  %t175 = getelementptr %"compiler/eval:Machine", ptr %t173, i32 0, i32 0
  %t176 = load ptr, ptr %t175, !tbaa !29
  %t177 = load i32, ptr %l17, !tbaa !23
  %t180 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t176, i32 %t177)
  store i32 %t180, ptr %l104
  br label %bb38
bb37:
  store i1 false, ptr %l96, !tbaa !21
  br label %bb41
bb38:
  %t181 = load ptr, ptr %l100, !tbaa !29
  %t182 = load i32, ptr %l104, !tbaa !23
  %t183 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t181, i32 %t182)
  store i32 %t183, ptr %l105
  br label %bb39
bb39:
  %t184 = load ptr, ptr %l98, !tbaa !29
  %t185 = load i32, ptr %l105, !tbaa !23
  %t186 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t184, i32 %t185)
  store i32 %t186, ptr %l106
  br label %bb40
bb40:
  %t187 = load i32, ptr %l106, !tbaa !23
  %t188 = icmp ne i32 %t187, 0
  store i1 %t188, ptr %l96, !tbaa !21
  br label %bb41
bb41:
  %t190 = load i1, ptr %l96, !tbaa !21
  br i1 %t190, label %bb42, label %bb43
bb42:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l2
  %t193 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, %"compiler/eval:Ptr" %t193)
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb45:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load %"compiler/eval:Ptr", ptr %l2
  %t199 = load i64, ptr %l14, !tbaa !24
  %t200 = load i64, ptr %l13, !tbaa !24
  %t203 = sub i64 %t199, %t200
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t197, %"compiler/eval:Ptr" %t198, i64 8, i64 %t203)
  br label %bb46
bb46:
  %t207 = load ptr, ptr %l0, !tbaa !29
  store ptr %t207, ptr %l116, !tbaa !29
  %t208 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t211 = load i64, ptr %t210, !tbaa !24
  %t213 = add i64 %t211, 8
  %t216 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t209, i64 %t213)
  store %"compiler/eval:Ptr" %t216, ptr %l120
  br label %bb47
bb47:
  %t217 = load %"compiler/eval:Ptr", ptr %l16
  %t218 = load ptr, ptr %l116, !tbaa !29
  %t219 = load %"compiler/eval:Ptr", ptr %l120
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t218, %"compiler/eval:Ptr" %t219, %"compiler/eval:Ptr" %t217)
  br label %bb48
bb48:
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 37
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
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 36
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
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 35
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
  %t68 = getelementptr %"compiler/eval:Machine", ptr %t66, i32 0, i32 67
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
  %t167 = getelementptr %"compiler/eval:Machine", ptr %t165, i32 0, i32 37
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
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
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 55
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
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 58
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
  %t114 = getelementptr %"compiler/eval:Machine", ptr %t112, i32 0, i32 57
  %t115 = load { i64, ptr }, ptr %t114, !tbaa !27
  store { i64, ptr } %t115, ptr %l65, !tbaa !27
  %t116 = getelementptr %"compiler/eval:frame", ptr %l3, i32 0, i32 3
  %t117 = load i64, ptr %t116, !tbaa !24
  %t118 = load i64, ptr %l12, !tbaa !24
  %t121 = add i64 %t117, %t118
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 57
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
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t178, i32 0, i32 55
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
  %t189 = getelementptr %"compiler/eval:Machine", ptr %t188, i32 0, i32 56
  %t190 = load i64, ptr %t189, !tbaa !24
  %t192 = sub i64 %t190, 1
  %t194 = load ptr, ptr %l92, !tbaa !29
  %t195 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 56
  store i64 %t192, ptr %t195, !tbaa !24
  %t196 = load ptr, ptr %l0, !tbaa !29
  store ptr %t196, ptr %l95, !tbaa !29
  %t197 = load ptr, ptr %l95, !tbaa !29
  %t198 = getelementptr %"compiler/eval:Machine", ptr %t197, i32 0, i32 58
  %t199 = load i64, ptr %t198, !tbaa !24
  %t200 = load i64, ptr %l6, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t205 = load ptr, ptr %l95, !tbaa !29
  %t206 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 58
  store i64 %t203, ptr %t206, !tbaa !24
  %t207 = load ptr, ptr %l0, !tbaa !29
  %t209 = getelementptr %"compiler/eval:Machine", ptr %t207, i32 0, i32 23
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
  %t222 = getelementptr %"compiler/eval:Machine", ptr %t221, i32 0, i32 8
  %t223 = load i64, ptr %t222, !tbaa !24
  %t225 = sub i64 %t223, 1
  %t227 = load ptr, ptr %l103, !tbaa !29
  %t228 = getelementptr %"compiler/eval:Machine", ptr %t227, i32 0, i32 8
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
  %t238 = getelementptr %"compiler/eval:Machine", ptr %t236, i32 0, i32 59
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
  %l15 = alloca %"compiler/mir:Call"
  %l16 = alloca { i64, [7 x i64] }
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l20 = alloca i64
  %l21 = alloca %"compiler/source:Span"
  %l22 = alloca { i64, [4 x i64] }
  %l23 = alloca %"compiler/source:Span"
  %l24 = alloca i32
  %l25 = alloca %"compiler/mir:Call"
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca { i64, [4 x i64] }
  %l28 = alloca i32
  %l29 = alloca %"compiler/mir:Range"
  %l30 = alloca i32
  %l31 = alloca %"compiler/source:Span"
  %l32 = alloca %"compiler/source:Span"
  %l33 = alloca { i64, [4 x i64] }
  %l35 = alloca i64
  %l38 = alloca %"compiler/source:Span"
  %l39 = alloca i32
  %l40 = alloca i32
  %l41 = alloca i32
  %l42 = alloca i32
  %l43 = alloca %"compiler/source:Span"
  %l44 = alloca i32
  %l45 = alloca { i64, [4 x i64] }
  %l47 = alloca { i64, ptr }
  %l53 = alloca i64
  %l66 = alloca i1
  %l70 = alloca i1
  %l72 = alloca ptr
  %l73 = alloca i64
  %l77 = alloca i64
  %l79 = alloca i32
  %l88 = alloca i1
  %l92 = alloca i1
  %l100 = alloca i32
  %l115 = alloca { i64, ptr }
  %l117 = alloca { i64, ptr }
  %l122 = alloca i1
  %l123 = alloca ptr
  %l124 = alloca i64
  %l128 = alloca ptr
  %l130 = alloca i1
  %l147 = alloca { i64, %"compiler/eval:Ptr", i64 }
  %l153 = alloca ptr
  %l154 = alloca i64
  %l155 = alloca %"compiler/mir:Call"
  %l156 = alloca i64
  %l160 = alloca i32
  %l169 = alloca i64
  %l178 = alloca i64
  %l187 = alloca { i64, ptr }
  %l191 = alloca i1
  %l193 = alloca i1
  %l197 = alloca i1
  %l210 = alloca { i64, ptr }
  %l212 = alloca { i64, ptr }
  %l217 = alloca i1
  %l218 = alloca ptr
  %l219 = alloca i64
  %l223 = alloca ptr
  %l225 = alloca i1
  %l241 = alloca i1
  %l245 = alloca i1
  %l270 = alloca { i64, ptr }
  %l274 = alloca i1
  %l276 = alloca { i64, ptr }
  %l281 = alloca { i64, ptr }
  %l288 = alloca ptr
  %l292 = alloca { i64, ptr }
  %l301 = alloca { i64, ptr }
  %l304 = alloca i64
  %l306 = alloca { i64, ptr }
  %l309 = alloca ptr
  %l313 = alloca i64
  %l315 = alloca i64
  %l347 = alloca { i64, ptr }
  %t505 = alloca { i64, [4 x i64] }, align 8
  %t649 = alloca { i64, [4 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [8 x i64] } %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 55
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l47, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l47, i32 0, i32 1
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
  store i64 %t20, ptr %l53
  br label %bb4
bb4:
  br label %bb168
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
  br label %bb168
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
  store i1 %t61, ptr %l70
  br label %bb16
bb15:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb17
bb16:
  %t62 = load i1, ptr %l70, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l66, !tbaa !21
  br label %bb17
bb17:
  %t65 = load i1, ptr %l66, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  br label %ret
bb19:
  br label %bb20
bb20:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l72, !tbaa !29
  %t67 = load i64, ptr %l1, !tbaa !24
  store i64 %t67, ptr %l73, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load { i64, [4 x i64] }, ptr %l6
  %t74 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t68, i64 %t69, { i64, [4 x i64] } %t70)
  store i64 %t74, ptr %l77
  br label %bb21
bb21:
  %t75 = load i64, ptr %l77, !tbaa !24
  %t76 = icmp ne i64 %t75, 0
  br i1 %t76, label %bb22, label %bb23
bb22:
  %t78 = load i32, ptr %l7, !tbaa !23
  store i32 %t78, ptr %l79, !tbaa !23
  br label %bb24
bb23:
  %t80 = load i32, ptr %l8, !tbaa !23
  store i32 %t80, ptr %l79, !tbaa !23
  br label %bb24
bb24:
  %t82 = load ptr, ptr %l72, !tbaa !29
  %t83 = load i64, ptr %l73, !tbaa !24
  %t84 = load i32, ptr %l79, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t82, i64 %t83, i32 %t84)
  br label %bb25
bb25:
  br label %bb168
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
  store i1 %t110, ptr %l92
  br label %bb32
bb31:
  store i1 false, ptr %l88, !tbaa !21
  br label %bb33
bb32:
  %t111 = load i1, ptr %l92, !tbaa !21
  %t112 = xor i1 %t111, true
  store i1 %t112, ptr %l88, !tbaa !21
  br label %bb33
bb33:
  %t114 = load i1, ptr %l88, !tbaa !21
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
  store i32 %t127, ptr %l100
  br label %bb37
bb37:
  %t128 = load i32, ptr %l100, !tbaa !23
  store i32 %t128, ptr %l12, !tbaa !23
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 19
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
  br label %bb168
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
  br label %bb80
bb45:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t156 = load i64, ptr %l4, !tbaa !24
  %t157 = load %"compiler/source:Span", ptr %l13
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t155, i64 %t156, %"compiler/source:Span" %t157)
  br label %bb46
bb46:
  %t161 = load ptr, ptr %l0, !tbaa !29
  %t163 = getelementptr %"compiler/eval:Machine", ptr %t161, i32 0, i32 23
  %t164 = load { i64, ptr }, ptr %t163, !tbaa !27
  store { i64, ptr } %t164, ptr %l115, !tbaa !27
  %t165 = load i64, ptr %l4, !tbaa !24
  %t167 = getelementptr { i64, ptr }, ptr %l115, i32 0, i32 1
  %t168 = load ptr, ptr %t167, !tbaa !27
  %t169 = getelementptr %"compiler/eval:cfn", ptr %t168, i64 %t165
  %t170 = getelementptr %"compiler/eval:cfn", ptr %t169, i32 0, i32 5
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l117, !tbaa !27
  %t172 = load i32, ptr %l14, !tbaa !23
  %t174 = sext i32 %t172 to i64
  %t176 = getelementptr { i64, ptr }, ptr %l117, i32 0, i32 1
  %t177 = load ptr, ptr %t176, !tbaa !27
  %t178 = getelementptr %"compiler/mir:Call", ptr %t177, i64 %t174
  %t179 = load %"compiler/mir:Call", ptr %t178
  store %"compiler/mir:Call" %t179, ptr %l15
  %t181 = load i1, ptr %l3, !tbaa !21
  br i1 %t181, label %bb47, label %bb48
bb47:
  %t183 = load ptr, ptr %l0, !tbaa !29
  store ptr %t183, ptr %l123, !tbaa !29
  %t184 = load i64, ptr %l1, !tbaa !24
  store i64 %t184, ptr %l124, !tbaa !24
  %t185 = load ptr, ptr %l0, !tbaa !29
  %t187 = getelementptr %"compiler/eval:Machine", ptr %t185, i32 0, i32 22
  %t188 = load i64, ptr %l4, !tbaa !24
  %t191 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t187, i64 %t188)
  store ptr %t191, ptr %l128
  br label %bb49
bb48:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb51
bb49:
  %t192 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 1
  %t193 = load %"compiler/mir:Range", ptr %t192
  %t194 = load ptr, ptr %l123, !tbaa !29
  %t195 = load i64, ptr %l124, !tbaa !24
  %t196 = load ptr, ptr %l128, !tbaa !29
  %t198 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v0, ptr %t194, i64 %t195, ptr %t196, %"compiler/mir:Range" %t193)
  store i1 %t198, ptr %l130
  br label %bb50
bb50:
  %t199 = load i1, ptr %l130, !tbaa !21
  %t200 = xor i1 %t199, true
  store i1 %t200, ptr %l122, !tbaa !21
  br label %bb51
bb51:
  %t202 = load i1, ptr %l122, !tbaa !21
  br i1 %t202, label %bb52, label %bb53
bb52:
  br label %ret
bb53:
  br label %bb54
bb54:
  %t203 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t204 = load { i64, [7 x i64] }, ptr %t203
  store { i64, [7 x i64] } %t204, ptr %l16
  %t206 = load { i64, [7 x i64] }, ptr %l16
  %t208 = extractvalue { i64, [7 x i64] } %t206, 0
  %t209 = icmp eq i64 %t208, 1
  br i1 %t209, label %bb55, label %bb56
bb55:
  %t211 = getelementptr { i64, [7 x i64] }, ptr %l16, i32 0, i32 1
  %t212 = getelementptr { i64, i32 }, ptr %t211, i32 0, i32 0
  %t213 = load i64, ptr %t212
  store i64 %t213, ptr %l17, !tbaa !24
  %t215 = getelementptr { i64, [7 x i64] }, ptr %l16, i32 0, i32 1
  %t216 = getelementptr { i64, i32 }, ptr %t215, i32 0, i32 1
  %t217 = load i32, ptr %t216
  store i32 %t217, ptr %l18, !tbaa !23
  br label %bb57
bb56:
  br label %bb59
bb57:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i64, ptr %l1, !tbaa !24
  %t221 = load %"compiler/mir:Call", ptr %l15
  %t222 = load i64, ptr %l17, !tbaa !24
  %t223 = load i32, ptr %l18, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexternCall(ptr %v0, ptr %t219, i64 %t220, %"compiler/mir:Call" %t221, i64 %t222, i32 %t223)
  br label %bb58
bb58:
  br label %bb79
bb59:
  %t229 = load { i64, [7 x i64] }, ptr %l16
  %t231 = extractvalue { i64, [7 x i64] } %t229, 0
  %t232 = icmp eq i64 %t231, 2
  br i1 %t232, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb73
bb62:
  %t234 = load ptr, ptr %l0, !tbaa !29
  %t235 = load i64, ptr %l1, !tbaa !24
  %t236 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t237 = load { i64, [7 x i64] }, ptr %t236
  %t241 = call { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %t234, i64 %t235, { i64, [7 x i64] } %t237)
  store { i64, %"compiler/eval:Ptr", i64 } %t241, ptr %l147
  br label %bb63
bb63:
  %t242 = load { i64, %"compiler/eval:Ptr", i64 }, ptr %l147
  store { i64, %"compiler/eval:Ptr", i64 } %t242, ptr %l19
  %t243 = getelementptr { i64, %"compiler/eval:Ptr", i64 }, ptr %l19, i32 0, i32 2
  %t244 = load i64, ptr %t243, !tbaa !24
  store i64 %t244, ptr %l20, !tbaa !24
  %t246 = load ptr, ptr %l0, !tbaa !29
  %t248 = getelementptr %"compiler/eval:Machine", ptr %t246, i32 0, i32 19
  %t249 = load i1, ptr %t248, !tbaa !21
  br i1 %t249, label %bb64, label %bb65
bb64:
  br label %ret
bb65:
  br label %bb66
bb66:
  %t251 = load i64, ptr %l20, !tbaa !24
  %t253 = icmp sge i64 %t251, 0
  br i1 %t253, label %bb67, label %bb68
bb67:
  %t255 = load ptr, ptr %l0, !tbaa !29
  store ptr %t255, ptr %l153, !tbaa !29
  %t256 = load i64, ptr %l1, !tbaa !24
  store i64 %t256, ptr %l154, !tbaa !24
  %t257 = load %"compiler/mir:Call", ptr %l15
  store %"compiler/mir:Call" %t257, ptr %l155
  %t258 = load i64, ptr %l20, !tbaa !24
  store i64 %t258, ptr %l156, !tbaa !24
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i64, ptr %l1, !tbaa !24
  %t261 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t262 = load { i64, [7 x i64] }, ptr %t261
  %t266 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %t259, i64 %t260, { i64, [7 x i64] } %t262)
  store i32 %t266, ptr %l160
  br label %bb69
bb68:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load i64, ptr %l1, !tbaa !24
  %t269 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t270 = load { i64, [7 x i64] }, ptr %t269
  %t271 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 1
  %t272 = load %"compiler/mir:Range", ptr %t271
  %t273 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 2
  %t274 = load %"compiler/mir:Range", ptr %t273
  %t275 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t276 = load i32, ptr %l14, !tbaa !23
  %t278 = sext i32 %t276 to i64
  %t286 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %t267, i64 %t268, { i64, [7 x i64] } %t270, %"compiler/mir:Range" %t272, %"compiler/mir:Range" %t274, i64 %t275, i64 %t278)
  store i64 %t286, ptr %l169
  br label %bb71
bb69:
  %t287 = load ptr, ptr %l153, !tbaa !29
  %t288 = load i64, ptr %l154, !tbaa !24
  %t289 = load %"compiler/mir:Call", ptr %l155
  %t290 = load i64, ptr %l156, !tbaa !24
  %t291 = load i32, ptr %l160, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexternCall(ptr %v0, ptr %t287, i64 %t288, %"compiler/mir:Call" %t289, i64 %t290, i32 %t291)
  br label %bb70
bb70:
  br label %bb72
bb71:
  br label %bb72
bb72:
  br label %bb79
bb73:
  br i1 true, label %bb74, label %bb75
bb74:
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t293 = load i64, ptr %l1, !tbaa !24
  %t294 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 0
  %t295 = load { i64, [7 x i64] }, ptr %t294
  %t296 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 1
  %t297 = load %"compiler/mir:Range", ptr %t296
  %t298 = getelementptr %"compiler/mir:Call", ptr %l15, i32 0, i32 2
  %t299 = load %"compiler/mir:Range", ptr %t298
  %t300 = load i64, ptr @G_2ecompiler_2feval_2erCall, !tbaa !24
  %t301 = load i32, ptr %l14, !tbaa !23
  %t303 = sext i32 %t301 to i64
  %t311 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %t292, i64 %t293, { i64, [7 x i64] } %t295, %"compiler/mir:Range" %t297, %"compiler/mir:Range" %t299, i64 %t300, i64 %t303)
  store i64 %t311, ptr %l178
  br label %bb77
bb77:
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_f83a50064779c123_fa52c016159405ff)
  unreachable
bb79:
  br label %bb168
bb80:
  %t312 = load { i64, [8 x i64] }, ptr %l2
  %t314 = extractvalue { i64, [8 x i64] } %t312, 0
  %t315 = icmp eq i64 %t314, 5
  br i1 %t315, label %bb81, label %bb82
bb81:
  %t317 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t318 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t317, i32 0, i32 0
  %t319 = load %"compiler/source:Span", ptr %t318
  store %"compiler/source:Span" %t319, ptr %l21
  %t321 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t322 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t321, i32 0, i32 1
  %t323 = load { i64, [4 x i64] }, ptr %t322
  store { i64, [4 x i64] } %t323, ptr %l22
  br label %bb83
bb82:
  br label %bb96
bb83:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t326 = load i64, ptr %l4, !tbaa !24
  %t327 = load %"compiler/source:Span", ptr %l21
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t325, i64 %t326, %"compiler/source:Span" %t327)
  br label %bb84
bb84:
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t333 = getelementptr %"compiler/eval:Machine", ptr %t331, i32 0, i32 55
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  store { i64, ptr } %t334, ptr %l187, !tbaa !27
  %t335 = load i64, ptr %l1, !tbaa !24
  %t337 = getelementptr { i64, ptr }, ptr %l187, i32 0, i32 1
  %t338 = load ptr, ptr %t337, !tbaa !27
  %t339 = getelementptr %"compiler/eval:frame", ptr %t338, i64 %t335
  %t340 = getelementptr %"compiler/eval:frame", ptr %t339, i32 0, i32 11
  %t341 = load i1, ptr %t340, !tbaa !21
  %t343 = xor i1 %t341, true
  br i1 %t343, label %bb85, label %bb86
bb85:
  %t345 = load i1, ptr %l3, !tbaa !21
  store i1 %t345, ptr %l191, !tbaa !21
  br label %bb87
bb86:
  store i1 false, ptr %l191, !tbaa !21
  br label %bb87
bb87:
  %t347 = load i1, ptr %l191, !tbaa !21
  br i1 %t347, label %bb88, label %bb89
bb88:
  %t348 = load ptr, ptr %l0, !tbaa !29
  %t349 = load i64, ptr %l1, !tbaa !24
  %t350 = load { i64, [4 x i64] }, ptr %l22
  %t354 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t348, i64 %t349, { i64, [4 x i64] } %t350)
  store i1 %t354, ptr %l197
  br label %bb90
bb89:
  store i1 false, ptr %l193, !tbaa !21
  br label %bb91
bb90:
  %t355 = load i1, ptr %l197, !tbaa !21
  %t356 = xor i1 %t355, true
  store i1 %t356, ptr %l193, !tbaa !21
  br label %bb91
bb91:
  %t358 = load i1, ptr %l193, !tbaa !21
  br i1 %t358, label %bb92, label %bb93
bb92:
  br label %ret
bb93:
  br label %bb94
bb94:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t360 = load i64, ptr %l1, !tbaa !24
  %t361 = load { i64, [4 x i64] }, ptr %l22
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %t359, i64 %t360, i1 false, { i64, [4 x i64] } %t361, i64 0)
  br label %bb95
bb95:
  br label %bb168
bb96:
  %t365 = load { i64, [8 x i64] }, ptr %l2
  %t367 = extractvalue { i64, [8 x i64] } %t365, 0
  %t368 = icmp eq i64 %t367, 6
  br i1 %t368, label %bb97, label %bb98
bb97:
  %t370 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t371 = getelementptr { %"compiler/source:Span", i32 }, ptr %t370, i32 0, i32 0
  %t372 = load %"compiler/source:Span", ptr %t371
  store %"compiler/source:Span" %t372, ptr %l23
  %t374 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t375 = getelementptr { %"compiler/source:Span", i32 }, ptr %t374, i32 0, i32 1
  %t376 = load i32, ptr %t375
  store i32 %t376, ptr %l24, !tbaa !23
  br label %bb99
bb98:
  br label %bb110
bb99:
  %t378 = load ptr, ptr %l0, !tbaa !29
  %t379 = load i64, ptr %l4, !tbaa !24
  %t380 = load %"compiler/source:Span", ptr %l23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t378, i64 %t379, %"compiler/source:Span" %t380)
  br label %bb100
bb100:
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t386 = getelementptr %"compiler/eval:Machine", ptr %t384, i32 0, i32 23
  %t387 = load { i64, ptr }, ptr %t386, !tbaa !27
  store { i64, ptr } %t387, ptr %l210, !tbaa !27
  %t388 = load i64, ptr %l4, !tbaa !24
  %t390 = getelementptr { i64, ptr }, ptr %l210, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !27
  %t392 = getelementptr %"compiler/eval:cfn", ptr %t391, i64 %t388
  %t393 = getelementptr %"compiler/eval:cfn", ptr %t392, i32 0, i32 5
  %t394 = load { i64, ptr }, ptr %t393, !tbaa !27
  store { i64, ptr } %t394, ptr %l212, !tbaa !27
  %t395 = load i32, ptr %l24, !tbaa !23
  %t397 = sext i32 %t395 to i64
  %t399 = getelementptr { i64, ptr }, ptr %l212, i32 0, i32 1
  %t400 = load ptr, ptr %t399, !tbaa !27
  %t401 = getelementptr %"compiler/mir:Call", ptr %t400, i64 %t397
  %t402 = load %"compiler/mir:Call", ptr %t401
  store %"compiler/mir:Call" %t402, ptr %l25
  %t404 = load i1, ptr %l3, !tbaa !21
  br i1 %t404, label %bb101, label %bb102
bb101:
  %t406 = load ptr, ptr %l0, !tbaa !29
  store ptr %t406, ptr %l218, !tbaa !29
  %t407 = load i64, ptr %l1, !tbaa !24
  store i64 %t407, ptr %l219, !tbaa !24
  %t408 = load ptr, ptr %l0, !tbaa !29
  %t410 = getelementptr %"compiler/eval:Machine", ptr %t408, i32 0, i32 22
  %t411 = load i64, ptr %l4, !tbaa !24
  %t414 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t410, i64 %t411)
  store ptr %t414, ptr %l223
  br label %bb103
bb102:
  store i1 false, ptr %l217, !tbaa !21
  br label %bb105
bb103:
  %t415 = getelementptr %"compiler/mir:Call", ptr %l25, i32 0, i32 1
  %t416 = load %"compiler/mir:Range", ptr %t415
  %t417 = load ptr, ptr %l218, !tbaa !29
  %t418 = load i64, ptr %l219, !tbaa !24
  %t419 = load ptr, ptr %l223, !tbaa !29
  %t421 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v0, ptr %t417, i64 %t418, ptr %t419, %"compiler/mir:Range" %t416)
  store i1 %t421, ptr %l225
  br label %bb104
bb104:
  %t422 = load i1, ptr %l225, !tbaa !21
  %t423 = xor i1 %t422, true
  store i1 %t423, ptr %l217, !tbaa !21
  br label %bb105
bb105:
  %t425 = load i1, ptr %l217, !tbaa !21
  br i1 %t425, label %bb106, label %bb107
bb106:
  br label %ret
bb107:
  br label %bb108
bb108:
  %t426 = load ptr, ptr %l0, !tbaa !29
  %t427 = load i64, ptr %l1, !tbaa !24
  %t428 = load %"compiler/mir:Call", ptr %l25
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etail(ptr %v0, ptr %t426, i64 %t427, %"compiler/mir:Call" %t428)
  br label %bb109
bb109:
  br label %bb168
bb110:
  %t432 = load { i64, [8 x i64] }, ptr %l2
  %t434 = extractvalue { i64, [8 x i64] } %t432, 0
  %t435 = icmp eq i64 %t434, 11
  br i1 %t435, label %bb111, label %bb112
bb111:
  %t437 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t438 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t437, i32 0, i32 0
  %t439 = load %"compiler/source:Span", ptr %t438
  store %"compiler/source:Span" %t439, ptr %l26
  %t441 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t442 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t441, i32 0, i32 1
  %t443 = load { i64, [4 x i64] }, ptr %t442
  store { i64, [4 x i64] } %t443, ptr %l27
  %t445 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t446 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t445, i32 0, i32 2
  %t447 = load i32, ptr %t446
  store i32 %t447, ptr %l28, !tbaa !23
  %t449 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t450 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t449, i32 0, i32 3
  %t451 = load %"compiler/mir:Range", ptr %t450
  store %"compiler/mir:Range" %t451, ptr %l29
  %t453 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t454 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] }, i32, %"compiler/mir:Range", i32 }, ptr %t453, i32 0, i32 4
  %t455 = load i32, ptr %t454
  store i32 %t455, ptr %l30, !tbaa !23
  br label %bb113
bb112:
  br label %bb123
bb113:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load i64, ptr %l4, !tbaa !24
  %t459 = load %"compiler/source:Span", ptr %l26
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t457, i64 %t458, %"compiler/source:Span" %t459)
  br label %bb114
bb114:
  %t463 = load i1, ptr %l3, !tbaa !21
  br i1 %t463, label %bb115, label %bb116
bb115:
  %t465 = load ptr, ptr %l0, !tbaa !29
  %t466 = load i64, ptr %l1, !tbaa !24
  %t467 = load { i64, [4 x i64] }, ptr %l27
  %t471 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %t465, i64 %t466, { i64, [4 x i64] } %t467)
  store i1 %t471, ptr %l245
  br label %bb117
bb116:
  store i1 false, ptr %l241, !tbaa !21
  br label %bb118
bb117:
  %t472 = load i1, ptr %l245, !tbaa !21
  %t473 = xor i1 %t472, true
  store i1 %t473, ptr %l241, !tbaa !21
  br label %bb118
bb118:
  %t475 = load i1, ptr %l241, !tbaa !21
  br i1 %t475, label %bb119, label %bb120
bb119:
  br label %ret
bb120:
  br label %bb121
bb121:
  %t476 = load ptr, ptr %l0, !tbaa !29
  %t477 = load i64, ptr %l1, !tbaa !24
  %t478 = load { i64, [4 x i64] }, ptr %l27
  %t479 = load i32, ptr %l28, !tbaa !23
  %t480 = load %"compiler/mir:Range", ptr %l29
  %t481 = load i32, ptr %l30, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2esuspend(ptr %v0, ptr %t476, i64 %t477, { i64, [4 x i64] } %t478, i32 %t479, %"compiler/mir:Range" %t480, i32 %t481)
  br label %bb122
bb122:
  br label %bb168
bb123:
  %t488 = load { i64, [8 x i64] }, ptr %l2
  %t490 = extractvalue { i64, [8 x i64] } %t488, 0
  %t491 = icmp eq i64 %t490, 12
  br i1 %t491, label %bb124, label %bb125
bb124:
  %t493 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t494 = getelementptr { %"compiler/source:Span" }, ptr %t493, i32 0, i32 0
  %t495 = load %"compiler/source:Span", ptr %t494
  store %"compiler/source:Span" %t495, ptr %l31
  br label %bb126
bb125:
  br label %bb129
bb126:
  %t497 = load ptr, ptr %l0, !tbaa !29
  %t498 = load i64, ptr %l4, !tbaa !24
  %t499 = load %"compiler/source:Span", ptr %l31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t497, i64 %t498, %"compiler/source:Span" %t499)
  br label %bb127
bb127:
  %t503 = load ptr, ptr %l0, !tbaa !29
  %t504 = load i64, ptr %l1, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t505
  %t506 = getelementptr { i64, [4 x i64] }, ptr %t505, i32 0, i32 0
  store i64 0, ptr %t506
  %t507 = load { i64, [4 x i64] }, ptr %t505
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %t503, i64 %t504, i1 false, { i64, [4 x i64] } %t507, i64 0)
  br label %bb128
bb128:
  br label %bb168
bb129:
  %t511 = load { i64, [8 x i64] }, ptr %l2
  %t513 = extractvalue { i64, [8 x i64] } %t511, 0
  %t514 = icmp eq i64 %t513, 7
  br i1 %t514, label %bb130, label %bb131
bb130:
  %t516 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t517 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t516, i32 0, i32 0
  %t518 = load %"compiler/source:Span", ptr %t517
  store %"compiler/source:Span" %t518, ptr %l32
  %t520 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t521 = getelementptr { %"compiler/source:Span", { i64, [4 x i64] } }, ptr %t520, i32 0, i32 1
  %t522 = load { i64, [4 x i64] }, ptr %t521
  store { i64, [4 x i64] } %t522, ptr %l33
  br label %bb132
bb131:
  br label %bb151
bb132:
  %t524 = load ptr, ptr %l0, !tbaa !29
  %t525 = load i64, ptr %l4, !tbaa !24
  %t526 = load %"compiler/source:Span", ptr %l32
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t524, i64 %t525, %"compiler/source:Span" %t526)
  br label %bb133
bb133:
  %t530 = load ptr, ptr %l0, !tbaa !29
  %t532 = getelementptr %"compiler/eval:Machine", ptr %t530, i32 0, i32 55
  %t533 = load { i64, ptr }, ptr %t532, !tbaa !27
  store { i64, ptr } %t533, ptr %l270, !tbaa !27
  %t534 = load i64, ptr %l1, !tbaa !24
  %t536 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t537 = load ptr, ptr %t536, !tbaa !27
  %t538 = getelementptr %"compiler/eval:frame", ptr %t537, i64 %t534
  %t539 = getelementptr %"compiler/eval:frame", ptr %t538, i32 0, i32 11
  %t540 = load i1, ptr %t539, !tbaa !21
  %t542 = xor i1 %t540, true
  br i1 %t542, label %bb134, label %bb135
bb134:
  %t544 = load ptr, ptr %l0, !tbaa !29
  %t546 = getelementptr %"compiler/eval:Machine", ptr %t544, i32 0, i32 55
  %t547 = load { i64, ptr }, ptr %t546, !tbaa !27
  store { i64, ptr } %t547, ptr %l276, !tbaa !27
  %t548 = load i64, ptr %l1, !tbaa !24
  %t550 = getelementptr { i64, ptr }, ptr %l276, i32 0, i32 1
  %t551 = load ptr, ptr %t550, !tbaa !27
  %t552 = getelementptr %"compiler/eval:frame", ptr %t551, i64 %t548
  %t553 = getelementptr %"compiler/eval:frame", ptr %t552, i32 0, i32 18
  %t554 = load i32, ptr %t553, !tbaa !23
  %t556 = icmp sge i32 %t554, 0
  store i1 %t556, ptr %l274, !tbaa !21
  br label %bb136
bb135:
  store i1 false, ptr %l274, !tbaa !21
  br label %bb136
bb136:
  %t558 = load i1, ptr %l274, !tbaa !21
  br i1 %t558, label %bb137, label %bb138
bb137:
  %t559 = load ptr, ptr %l0, !tbaa !29
  %t561 = getelementptr %"compiler/eval:Machine", ptr %t559, i32 0, i32 55
  %t562 = load { i64, ptr }, ptr %t561, !tbaa !27
  store { i64, ptr } %t562, ptr %l281, !tbaa !27
  %t563 = load i64, ptr %l1, !tbaa !24
  %t565 = getelementptr { i64, ptr }, ptr %l281, i32 0, i32 1
  %t566 = load ptr, ptr %t565, !tbaa !27
  %t567 = getelementptr %"compiler/eval:frame", ptr %t566, i64 %t563
  %t568 = getelementptr %"compiler/eval:frame", ptr %t567, i32 0, i32 18
  %t569 = load i32, ptr %t568, !tbaa !23
  %t571 = sext i32 %t569 to i64
  store i64 3, ptr %l35, !tbaa !24
  %t573 = load ptr, ptr %l0, !tbaa !29
  %t575 = getelementptr %"compiler/eval:Machine", ptr %t573, i32 0, i32 60
  %t579 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t575, i64 %t571)
  store ptr %t579, ptr %l288
  br label %bb139
bb138:
  br label %bb140
bb139:
  %t580 = load ptr, ptr %l288, !tbaa !29
  %t582 = load i64, ptr %l35, !tbaa !24
  %t585 = getelementptr %"compiler/eval:genRec", ptr %t580, i32 0, i32 0
  store i64 %t582, ptr %t585, !tbaa !24
  br label %bb140
bb140:
  %t586 = load ptr, ptr %l0, !tbaa !29
  %t588 = getelementptr %"compiler/eval:Machine", ptr %t586, i32 0, i32 55
  %t589 = load { i64, ptr }, ptr %t588, !tbaa !27
  store { i64, ptr } %t589, ptr %l292, !tbaa !27
  %t590 = load i64, ptr %l1, !tbaa !24
  %t592 = getelementptr { i64, ptr }, ptr %l292, i32 0, i32 1
  %t593 = load ptr, ptr %t592, !tbaa !27
  %t594 = getelementptr %"compiler/eval:frame", ptr %t593, i64 %t590
  %t595 = getelementptr %"compiler/eval:frame", ptr %t594, i32 0, i32 11
  %t596 = load i1, ptr %t595, !tbaa !21
  %t598 = xor i1 %t596, true
  br i1 %t598, label %bb141, label %bb142
bb141:
  %t600 = load ptr, ptr %l0, !tbaa !29
  %t601 = load i64, ptr %l1, !tbaa !24
  %t602 = load i64, ptr %l4, !tbaa !24
  %t603 = load %"compiler/source:Span", ptr %l32
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %t600, i64 %t601, i64 %t602, %"compiler/source:Span" %t603)
  br label %bb143
bb142:
  br label %bb144
bb143:
  br label %bb144
bb144:
  %t608 = load ptr, ptr %l0, !tbaa !29
  %t610 = getelementptr %"compiler/eval:Machine", ptr %t608, i32 0, i32 55
  %t611 = load { i64, ptr }, ptr %t610, !tbaa !27
  store { i64, ptr } %t611, ptr %l301, !tbaa !27
  %t612 = load i64, ptr %l1, !tbaa !24
  %t614 = getelementptr { i64, ptr }, ptr %l301, i32 0, i32 1
  %t615 = load ptr, ptr %t614, !tbaa !27
  %t616 = getelementptr %"compiler/eval:frame", ptr %t615, i64 %t612
  %t617 = getelementptr %"compiler/eval:frame", ptr %t616, i32 0, i32 11
  %t618 = load i1, ptr %t617, !tbaa !21
  br i1 %t618, label %bb145, label %bb146
bb145:
  %t620 = load ptr, ptr %l0, !tbaa !29
  %t622 = getelementptr %"compiler/eval:Machine", ptr %t620, i32 0, i32 55
  %t623 = load { i64, ptr }, ptr %t622, !tbaa !27
  store { i64, ptr } %t623, ptr %l306, !tbaa !27
  %t624 = load i64, ptr %l1, !tbaa !24
  %t626 = getelementptr { i64, ptr }, ptr %l306, i32 0, i32 1
  %t627 = load ptr, ptr %t626, !tbaa !27
  %t628 = getelementptr %"compiler/eval:frame", ptr %t627, i64 %t624
  %t629 = getelementptr %"compiler/eval:frame", ptr %t628, i32 0, i32 13
  %t630 = load i64, ptr %t629, !tbaa !24
  store i64 %t630, ptr %l304, !tbaa !24
  br label %bb149
bb146:
  %t632 = load ptr, ptr %l0, !tbaa !29
  store ptr %t632, ptr %l309, !tbaa !29
  %t633 = load ptr, ptr %l0, !tbaa !29
  %t634 = load i64, ptr %l1, !tbaa !24
  %t635 = load { i64, [4 x i64] }, ptr %l33
  %t639 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t633, i64 %t634, { i64, [4 x i64] } %t635)
  store i64 %t639, ptr %l313
  br label %bb147
bb147:
  %t640 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t641 = load ptr, ptr %l309, !tbaa !29
  %t642 = load i64, ptr %l313, !tbaa !24
  %t644 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t641, i64 %t642, i32 %t640)
  store i64 %t644, ptr %l315
  br label %bb148
bb148:
  %t645 = load i64, ptr %l315, !tbaa !24
  store i64 %t645, ptr %l304, !tbaa !24
  br label %bb149
bb149:
  %t646 = load i64, ptr %l304, !tbaa !24
  %t647 = load ptr, ptr %l0, !tbaa !29
  %t648 = load i64, ptr %l1, !tbaa !24
  store { i64, [4 x i64] } zeroinitializer, ptr %t649
  %t650 = getelementptr { i64, [4 x i64] }, ptr %t649, i32 0, i32 0
  store i64 0, ptr %t650
  %t651 = load { i64, [4 x i64] }, ptr %t649
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %t647, i64 %t648, i1 true, { i64, [4 x i64] } %t651, i64 %t646)
  br label %bb150
bb150:
  br label %bb168
bb151:
  %t657 = load { i64, [8 x i64] }, ptr %l2
  %t659 = extractvalue { i64, [8 x i64] } %t657, 0
  %t660 = icmp eq i64 %t659, 8
  br i1 %t660, label %bb152, label %bb153
bb152:
  %t662 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t663 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t662, i32 0, i32 0
  %t664 = load %"compiler/source:Span", ptr %t663
  store %"compiler/source:Span" %t664, ptr %l38
  %t666 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t667 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t666, i32 0, i32 1
  %t668 = load i32, ptr %t667
  store i32 %t668, ptr %l39, !tbaa !23
  %t670 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t671 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t670, i32 0, i32 2
  %t672 = load i32, ptr %t671
  store i32 %t672, ptr %l40, !tbaa !23
  %t674 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t675 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t674, i32 0, i32 3
  %t676 = load i32, ptr %t675
  store i32 %t676, ptr %l41, !tbaa !23
  %t678 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t679 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t678, i32 0, i32 4
  %t680 = load i32, ptr %t679
  store i32 %t680, ptr %l42, !tbaa !23
  br label %bb154
bb153:
  br label %bb157
bb154:
  %t682 = load ptr, ptr %l0, !tbaa !29
  %t683 = load i64, ptr %l4, !tbaa !24
  %t684 = load %"compiler/source:Span", ptr %l38
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t682, i64 %t683, %"compiler/source:Span" %t684)
  br label %bb155
bb155:
  %t688 = load ptr, ptr %l0, !tbaa !29
  %t689 = load i64, ptr %l1, !tbaa !24
  %t690 = load i32, ptr %l39, !tbaa !23
  %t691 = load i32, ptr %l40, !tbaa !23
  %t692 = load i32, ptr %l41, !tbaa !23
  %t693 = load i32, ptr %l42, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewait(ptr %v0, ptr %t688, i64 %t689, i32 %t690, i32 %t691, i32 %t692, i32 %t693)
  br label %bb156
bb156:
  br label %bb168
bb157:
  %t700 = load { i64, [8 x i64] }, ptr %l2
  %t702 = extractvalue { i64, [8 x i64] } %t700, 0
  %t703 = icmp eq i64 %t702, 9
  br i1 %t703, label %bb158, label %bb159
bb158:
  %t705 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t706 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t705, i32 0, i32 0
  %t707 = load %"compiler/source:Span", ptr %t706
  store %"compiler/source:Span" %t707, ptr %l43
  %t709 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t710 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t709, i32 0, i32 1
  %t711 = load i32, ptr %t710, !range !{i32 0, i32 16}
  store i32 %t711, ptr %l44
  %t713 = getelementptr { i64, [8 x i64] }, ptr %l2, i32 0, i32 1
  %t714 = getelementptr { %"compiler/source:Span", i32, { i64, [4 x i64] } }, ptr %t713, i32 0, i32 2
  %t715 = load { i64, [4 x i64] }, ptr %t714
  store { i64, [4 x i64] } %t715, ptr %l45
  br label %bb160
bb159:
  br label %bb163
bb160:
  %t717 = load ptr, ptr %l0, !tbaa !29
  %t718 = load i64, ptr %l4, !tbaa !24
  %t719 = load %"compiler/source:Span", ptr %l43
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eatK(ptr %v0, ptr %t717, i64 %t718, %"compiler/source:Span" %t719)
  br label %bb161
bb161:
  %t723 = load ptr, ptr %l0, !tbaa !29
  %t724 = load i64, ptr %l1, !tbaa !24
  %t725 = load ptr, ptr %l0, !tbaa !29
  %t727 = getelementptr %"compiler/eval:Machine", ptr %t725, i32 0, i32 23
  %t728 = load { i64, ptr }, ptr %t727, !tbaa !27
  store { i64, ptr } %t728, ptr %l347, !tbaa !27
  %t729 = load i64, ptr %l4, !tbaa !24
  %t731 = getelementptr { i64, ptr }, ptr %l347, i32 0, i32 1
  %t732 = load ptr, ptr %t731, !tbaa !27
  %t733 = getelementptr %"compiler/eval:cfn", ptr %t732, i64 %t729
  %t734 = getelementptr %"compiler/eval:cfn", ptr %t733, i32 0, i32 0
  %t735 = load i64, ptr %t734, !tbaa !24
  %t736 = load %"compiler/source:Span", ptr %l43
  %t737 = load i32, ptr %l44, !range !{i32 0, i32 16}
  %t738 = load { i64, [4 x i64] }, ptr %l45
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %t723, i64 %t724, i64 %t735, %"compiler/source:Span" %t736, i32 %t737, { i64, [4 x i64] } %t738)
  br label %bb162
bb162:
  br label %bb168
bb163:
  %t745 = load { i64, [8 x i64] }, ptr %l2
  %t747 = extractvalue { i64, [8 x i64] } %t745, 0
  %t748 = icmp eq i64 %t747, 10
  br i1 %t748, label %bb164, label %bb165
bb164:
  br label %bb166
bb165:
  br label %bb167
bb166:
  %t750 = load ptr, ptr %l0, !tbaa !29
  %t752 = getelementptr %"compiler/eval:Machine", ptr %t750, i32 0, i32 66
  store i1 true, ptr %t752, !tbaa !21
  %t753 = load ptr, ptr %l0, !tbaa !29
  %t755 = getelementptr %"compiler/eval:Machine", ptr %t753, i32 0, i32 19
  store i1 true, ptr %t755, !tbaa !21
  br label %bb168
bb167:
  call void @__olang_check_failed(ptr @olang_loc_44d04288ad1da022_22f50395241cffe)
  unreachable
bb168:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, %"compiler/eval:Ptr" %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca %"compiler/eval:Ptr"
  %l4 = alloca i64
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
  %l17 = alloca i64
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l27 = alloca i32
  %l31 = alloca i32
  %l37 = alloca i32
  %l41 = alloca i64
  %l43 = alloca ptr
  %l47 = alloca i32
  %l48 = alloca i64
  %l52 = alloca i64
  %l55 = alloca i64
  %l73 = alloca ptr
  %l74 = alloca i64
  %l75 = alloca i64
  %l76 = alloca i64
  %l79 = alloca i64
  %l82 = alloca %"compiler/eval:Ptr"
  %l95 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca %"compiler/eval:Ptr"
  %l100 = alloca i64
  %l104 = alloca { i64, ptr }
  %l108 = alloca i32
  %l111 = alloca i1
  %l121 = alloca %"compiler/eval:Ptr"
  %l131 = alloca i64
  %l137 = alloca i64
  %l140 = alloca i64
  %l158 = alloca { i64, ptr }
  %l160 = alloca i64
  %l162 = alloca i64
  %s0 = alloca %olang.scope
  %s3 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store %"compiler/eval:Ptr" %a3, ptr %l3
  store i64 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a2)
  store i32 %t8, ptr %l27
  br label %bb1
bb1:
  %t9 = load i32, ptr %l27, !tbaa !23
  store i32 %t9, ptr %l5, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l5, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l31
  br label %bb2
bb2:
  %t18 = load i32, ptr %l31, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l5, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l37
  br label %bb5
bb4:
  br label %bb24
bb5:
  %t31 = load i32, ptr %l37, !tbaa !23
  store i32 %t31, ptr %l6, !tbaa !23
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 0
  %t35 = load ptr, ptr %t34, !tbaa !29
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %t35, i32 %t36)
  store i64 %t39, ptr %l41
  br label %bb6
bb6:
  %t40 = load i64, ptr %l41, !tbaa !24
  store i64 %t40, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 0
  %t44 = load ptr, ptr %t43, !tbaa !29
  store ptr %t44, ptr %l43, !tbaa !29
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 0
  %t48 = load ptr, ptr %t47, !tbaa !29
  %t49 = load i32, ptr %l5, !tbaa !23
  %t52 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t48, i32 %t49)
  store i32 %t52, ptr %l47
  br label %bb7
bb7:
  %t53 = load ptr, ptr %l43, !tbaa !29
  %t54 = load i32, ptr %l47, !tbaa !23
  %t55 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t53, i32 %t54)
  store i64 %t55, ptr %l48
  br label %bb8
bb8:
  %t56 = load i64, ptr %l48, !tbaa !24
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
  store i64 0, ptr %l52, !tbaa !24
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
  store i64 %t81, ptr %l55, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l55, !tbaa !24
  br label %bb13
bb13:
  %t83 = load i64, ptr %l55, !tbaa !24
  store i64 %t83, ptr %l52, !tbaa !24
  br label %bb14
bb14:
  %t84 = load i64, ptr %l52, !tbaa !24
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
  store ptr %t103, ptr %l73, !tbaa !29
  %t104 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t105 = load i64, ptr %t104, !tbaa !24
  store i64 %t105, ptr %l74, !tbaa !24
  %t106 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t107 = load i64, ptr %t106, !tbaa !24
  store i64 %t107, ptr %l75, !tbaa !24
  %t108 = load i64, ptr %l13, !tbaa !24
  store i64 %t108, ptr %l76, !tbaa !24
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load i32, ptr %l6, !tbaa !23
  %t113 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t109, i32 %t110)
  store i64 %t113, ptr %l79
  br label %bb19
bb19:
  %t114 = load i64, ptr %l76, !tbaa !24
  %t115 = load i64, ptr %l79, !tbaa !24
  %t116 = mul i64 %t114, %t115
  %t117 = load i64, ptr %l75, !tbaa !24
  %t119 = add i64 %t117, %t116
  %t120 = load i64, ptr %l74, !tbaa !24
  %t122 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s3, i64 %t120, i64 %t119)
  store %"compiler/eval:Ptr" %t122, ptr %l82
  br label %bb20
bb20:
  %t123 = load i32, ptr %l6, !tbaa !23
  %t124 = load %"compiler/eval:Ptr", ptr %l3
  %t125 = load i64, ptr %l4, !tbaa !24
  %t126 = load i64, ptr %l13, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t130 = mul i64 %t126, %t127
  %t133 = add i64 %t125, %t130
  %t134 = load ptr, ptr %l73, !tbaa !29
  %t135 = load %"compiler/eval:Ptr", ptr %l82
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunpackInto(ptr %v0, ptr %t134, %"compiler/eval:Ptr" %t135, i32 %t123, %"compiler/eval:Ptr" %t124, i64 %t133)
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
  store i64 %t150, ptr %l95
  br label %bb25
bb25:
  %t151 = load i64, ptr %l95, !tbaa !24
  store i64 %t151, ptr %l14, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  store ptr %t152, ptr %l96, !tbaa !29
  %t153 = load %"compiler/eval:Ptr", ptr %l1
  store %"compiler/eval:Ptr" %t153, ptr %l97
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t155 = load i32, ptr %l5, !tbaa !23
  %t158 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t154, i32 %t155)
  store i64 %t158, ptr %l100
  br label %bb26
bb26:
  %t159 = load ptr, ptr %l96, !tbaa !29
  %t160 = load %"compiler/eval:Ptr", ptr %l97
  %t161 = load i64, ptr %l100, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t159, %"compiler/eval:Ptr" %t160, i64 %t161)
  br label %bb27
bb27:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 0
  %t165 = load ptr, ptr %t164, !tbaa !29
  %t166 = load i32, ptr %l5, !tbaa !23
  %t169 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %s0, ptr %t165, i32 %t166)
  store { i64, ptr } %t169, ptr %l104
  br label %bb28
bb28:
  %t170 = load { i64, ptr }, ptr %l104, !tbaa !27
  store { i64, ptr } %t170, ptr %l15, !tbaa !27
  %t171 = load ptr, ptr %l0, !tbaa !29
  %t173 = getelementptr %"compiler/eval:Machine", ptr %t171, i32 0, i32 0
  %t174 = load ptr, ptr %t173, !tbaa !29
  %t175 = load i32, ptr %l5, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l108
  br label %bb29
bb29:
  %t179 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t180 = load i32, ptr %l108, !tbaa !23
  %t182 = icmp eq i32 %t180, %t179
  br i1 %t182, label %bb30, label %bb31
bb30:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb32
bb31:
  %t184 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t186 = extractvalue { i64, ptr } %t184, 0
  %t188 = icmp eq i64 %t186, 0
  store i1 %t188, ptr %l111, !tbaa !21
  br label %bb32
bb32:
  %t190 = load i1, ptr %l111, !tbaa !21
  br i1 %t190, label %bb33, label %bb34
bb33:
  %t191 = load ptr, ptr %l0, !tbaa !29
  %t192 = load %"compiler/eval:Ptr", ptr %l1
  %t193 = load %"compiler/eval:Ptr", ptr %l3
  %t194 = load i64, ptr %l4, !tbaa !24
  %t195 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t191, %"compiler/eval:Ptr" %t192, i64 0, %"compiler/eval:Ptr" %t193, i64 %t194, i64 %t195)
  br label %bb35
bb34:
  br label %bb36
bb35:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb36:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t201, i64 3, i64 8)
  store %"compiler/eval:Ptr" %t203, ptr %l121
  br label %bb37
bb37:
  %t204 = load %"compiler/eval:Ptr", ptr %l121
  store %"compiler/eval:Ptr" %t204, ptr %l16
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load %"compiler/eval:Ptr", ptr %l16
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t205, %"compiler/eval:Ptr" %t206, i64 8)
  br label %bb38
bb38:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load %"compiler/eval:Ptr", ptr %l16
  %t211 = load %"compiler/eval:Ptr", ptr %l3
  %t212 = load i64, ptr %l4, !tbaa !24
  %t213 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %t209, %"compiler/eval:Ptr" %t210, i64 0, %"compiler/eval:Ptr" %t211, i64 %t212, i64 %t213)
  br label %bb39
bb39:
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load %"compiler/eval:Ptr", ptr %l16
  %t223 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t219, %"compiler/eval:Ptr" %t220, i64 8)
  store i64 %t223, ptr %l131
  br label %bb40
bb40:
  %t224 = load i64, ptr %l131, !tbaa !24
  store i64 %t224, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  %t225 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t227 = extractvalue { i64, ptr } %t225, 0
  store i64 %t227, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t229 = load i64, ptr %l19, !tbaa !24
  %t230 = load i64, ptr %l18, !tbaa !24
  %t233 = icmp sgt i64 %t229, %t230
  br i1 %t233, label %bb41, label %bb42
bb41:
  %t235 = load i64, ptr %l20, !tbaa !24
  %t237 = icmp sgt i64 %t235, 0
  br i1 %t237, label %bb43, label %bb44
bb42:
  store i64 0, ptr %l137, !tbaa !24
  br label %bb46
bb43:
  %t239 = load i64, ptr %l19, !tbaa !24
  %t240 = load i64, ptr %l18, !tbaa !24
  %t243 = sub i64 %t239, %t240
  %t244 = load i64, ptr %l20, !tbaa !24
  %t247 = add i64 %t243, %t244
  %t249 = sub i64 %t247, 1
  %t250 = load i64, ptr %l20, !tbaa !24
  %t253 = sdiv i64 %t249, %t250
  store i64 %t253, ptr %l140, !tbaa !24
  br label %bb45
bb44:
  store i64 0, ptr %l140, !tbaa !24
  br label %bb45
bb45:
  %t255 = load i64, ptr %l140, !tbaa !24
  store i64 %t255, ptr %l137, !tbaa !24
  br label %bb46
bb46:
  %t256 = load i64, ptr %l137, !tbaa !24
  store i64 %t256, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb47
bb47:
  %t257 = load i64, ptr %l22, !tbaa !24
  %t258 = load i64, ptr %l21, !tbaa !24
  %t261 = icmp slt i64 %t257, %t258
  %t263 = xor i1 %t261, true
  br i1 %t263, label %bb48, label %bb49
bb48:
  br label %bb57
bb49:
  br label %bb50
bb50:
  %t265 = load i64, ptr %l18, !tbaa !24
  %t266 = load i64, ptr %l22, !tbaa !24
  %t267 = load i64, ptr %l20, !tbaa !24
  %t270 = mul i64 %t266, %t267
  %t273 = add i64 %t265, %t270
  store i64 %t273, ptr %l23, !tbaa !24
  %t275 = load { i64, ptr }, ptr %l15, !tbaa !27
  store { i64, ptr } %t275, ptr %l158, !tbaa !27
  %t276 = load i64, ptr %l23, !tbaa !24
  %t278 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t279 = load ptr, ptr %t278, !tbaa !27
  %t280 = getelementptr i64, ptr %t279, i64 %t276
  %t281 = load i64, ptr %t280, !tbaa !34
  store i64 %t281, ptr %l160, !tbaa !24
  %t282 = load i64, ptr %l14, !tbaa !24
  %t284 = call i64 @compiler_2feval_2ebmask(i64 %t282)
  store i64 %t284, ptr %l162
  br label %bb51
bb51:
  %t285 = load i64, ptr %l160, !tbaa !24
  %t286 = load i64, ptr %l162, !tbaa !24
  %t287 = and i64 %t285, %t286
  %t288 = load i64, ptr %l17, !tbaa !24
  %t291 = icmp eq i64 %t287, %t288
  br i1 %t291, label %bb52, label %bb53
bb52:
  %t293 = load ptr, ptr %l0, !tbaa !29
  %t294 = load %"compiler/eval:Ptr", ptr %l1
  %t295 = load i64, ptr %l23, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t293, %"compiler/eval:Ptr" %t294, i64 4, i64 %t295)
  br label %bb54
bb53:
  br label %bb55
bb54:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb55:
  br label %bb56
bb56:
  %t299 = load i64, ptr %l22, !tbaa !24
  %t301 = add i64 %t299, 1
  store i64 %t301, ptr %l22, !tbaa !24
  br label %bb47
bb57:
  %t303 = load ptr, ptr %l0, !tbaa !29
  %t304 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t305 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t305, ptr %t303, { i64, ptr } %t304)
  br label %bb58
bb58:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewaitsForTask(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca { i64, ptr }
  %l2 = alloca i1
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i1
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca %"compiler/eval:task"
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l25 = alloca { i64, [21 x i64] }
  %l26 = alloca %"compiler/source:Span"
  %l27 = alloca i32
  %l30 = alloca i32
  %l31 = alloca i32
  %l35 = alloca i1
  %l38 = alloca i1
  %l40 = alloca i1
  %l48 = alloca i64
  %l51 = alloca i64
  %l70 = alloca { i64, ptr }
  %l76 = alloca { i64, ptr }
  %l83 = alloca i64
  %l87 = alloca i64
  %l90 = alloca i64
  %l111 = alloca %"compiler/eval:scope"
  %l113 = alloca i1
  %l117 = alloca %"compiler/eval:scope"
  %l124 = alloca i1
  %l127 = alloca i1
  %l137 = alloca %"compiler/eval:task"
  %l139 = alloca { i64, ptr }
  %l147 = alloca i64
  %l150 = alloca i64
  %l168 = alloca { i64, ptr }
  %l170 = alloca { i64, [21 x i64] }
  %l171 = alloca { i64, [21 x i64] }
  %l173 = alloca i1
  %l185 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i1
  %t156 = alloca %"compiler/eval:scope", align 8
  %t166 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d7, i32 0, i32 1) })
  store i1 %t3, ptr %l35
  br label %bb1
bb1:
  %t4 = load i1, ptr %l35, !tbaa !21
  store i1 %t4, ptr %l2, !tbaa !21
  %t5 = load i1, ptr %l2, !tbaa !21
  %t7 = xor i1 %t5, true
  br i1 %t7, label %bb2, label %bb3
bb2:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v1, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d8, i32 0, i32 1) })
  store i1 %t11, ptr %l40
  br label %bb4
bb3:
  store i1 false, ptr %l38, !tbaa !21
  br label %bb5
bb4:
  %t12 = load i1, ptr %l40, !tbaa !21
  %t13 = xor i1 %t12, true
  store i1 %t13, ptr %l38, !tbaa !21
  br label %bb5
bb5:
  %t15 = load i1, ptr %l38, !tbaa !21
  br i1 %t15, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i64 -1, ptr %l3, !tbaa !24
  store i64 0, ptr %l4, !tbaa !24
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 56
  %t20 = load i64, ptr %t19, !tbaa !24
  store i64 %t20, ptr %l5, !tbaa !24
  store i64 1, ptr %l6, !tbaa !24
  %t22 = load i64, ptr %l5, !tbaa !24
  %t23 = load i64, ptr %l4, !tbaa !24
  %t26 = icmp sgt i64 %t22, %t23
  br i1 %t26, label %bb9, label %bb10
bb9:
  %t28 = load i64, ptr %l6, !tbaa !24
  %t30 = icmp sgt i64 %t28, 0
  br i1 %t30, label %bb11, label %bb12
bb10:
  store i64 0, ptr %l48, !tbaa !24
  br label %bb14
bb11:
  %t32 = load i64, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sub i64 %t32, %t33
  %t37 = load i64, ptr %l6, !tbaa !24
  %t40 = add i64 %t36, %t37
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l6, !tbaa !24
  %t46 = sdiv i64 %t42, %t43
  store i64 %t46, ptr %l51, !tbaa !24
  br label %bb13
bb12:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb13
bb13:
  %t48 = load i64, ptr %l51, !tbaa !24
  store i64 %t48, ptr %l48, !tbaa !24
  br label %bb14
bb14:
  %t49 = load i64, ptr %l48, !tbaa !24
  store i64 %t49, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  br label %bb15
bb15:
  %t50 = load i64, ptr %l8, !tbaa !24
  %t51 = load i64, ptr %l7, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb16, label %bb17
bb16:
  br label %bb23
bb17:
  br label %bb18
bb18:
  %t58 = load i64, ptr %l4, !tbaa !24
  %t59 = load i64, ptr %l8, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t63 = mul i64 %t59, %t60
  %t66 = add i64 %t58, %t63
  store i64 %t66, ptr %l9, !tbaa !24
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t70 = getelementptr %"compiler/eval:Machine", ptr %t68, i32 0, i32 55
  %t71 = load { i64, ptr }, ptr %t70, !tbaa !27
  store { i64, ptr } %t71, ptr %l70, !tbaa !27
  %t72 = load i64, ptr %l9, !tbaa !24
  %t74 = getelementptr { i64, ptr }, ptr %l70, i32 0, i32 1
  %t75 = load ptr, ptr %t74, !tbaa !27
  %t76 = getelementptr %"compiler/eval:frame", ptr %t75, i64 %t72
  %t77 = getelementptr %"compiler/eval:frame", ptr %t76, i32 0, i32 7
  %t78 = load i64, ptr %t77, !tbaa !24
  %t79 = load i64, ptr @G_2ecompiler_2feval_2erTask, !tbaa !24
  %t82 = icmp eq i64 %t78, %t79
  br i1 %t82, label %bb19, label %bb20
bb19:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 55
  %t87 = load { i64, ptr }, ptr %t86, !tbaa !27
  store { i64, ptr } %t87, ptr %l76, !tbaa !27
  %t88 = load i64, ptr %l9, !tbaa !24
  %t90 = getelementptr { i64, ptr }, ptr %l76, i32 0, i32 1
  %t91 = load ptr, ptr %t90, !tbaa !27
  %t92 = getelementptr %"compiler/eval:frame", ptr %t91, i64 %t88
  %t93 = getelementptr %"compiler/eval:frame", ptr %t92, i32 0, i32 8
  %t94 = load i64, ptr %t93, !tbaa !24
  store i64 %t94, ptr %l3, !tbaa !24
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb22
bb22:
  %t96 = load i64, ptr %l8, !tbaa !24
  %t98 = add i64 %t96, 1
  store i64 %t98, ptr %l8, !tbaa !24
  br label %bb15
bb23:
  store i1 false, ptr %l10, !tbaa !21
  store i64 1, ptr %l11, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 49
  %t104 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t102)
  store i64 %t104, ptr %l83
  br label %bb24
bb24:
  %t105 = load i64, ptr %l83, !tbaa !24
  store i64 %t105, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l12, !tbaa !24
  %t107 = load i64, ptr %l11, !tbaa !24
  %t110 = icmp sgt i64 %t106, %t107
  br i1 %t110, label %bb25, label %bb26
bb25:
  %t112 = load i64, ptr %l13, !tbaa !24
  %t114 = icmp sgt i64 %t112, 0
  br i1 %t114, label %bb27, label %bb28
bb26:
  store i64 0, ptr %l87, !tbaa !24
  br label %bb30
bb27:
  %t116 = load i64, ptr %l12, !tbaa !24
  %t117 = load i64, ptr %l11, !tbaa !24
  %t120 = sub i64 %t116, %t117
  %t121 = load i64, ptr %l13, !tbaa !24
  %t124 = add i64 %t120, %t121
  %t126 = sub i64 %t124, 1
  %t127 = load i64, ptr %l13, !tbaa !24
  %t130 = sdiv i64 %t126, %t127
  store i64 %t130, ptr %l90, !tbaa !24
  br label %bb29
bb28:
  store i64 0, ptr %l90, !tbaa !24
  br label %bb29
bb29:
  %t132 = load i64, ptr %l90, !tbaa !24
  store i64 %t132, ptr %l87, !tbaa !24
  br label %bb30
bb30:
  %t133 = load i64, ptr %l87, !tbaa !24
  store i64 %t133, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb31
bb31:
  %t134 = load i64, ptr %l15, !tbaa !24
  %t135 = load i64, ptr %l14, !tbaa !24
  %t138 = icmp slt i64 %t134, %t135
  %t140 = xor i1 %t138, true
  br i1 %t140, label %bb32, label %bb33
bb32:
  br label %bb44
bb33:
  br label %bb34
bb34:
  %t142 = load i64, ptr %l11, !tbaa !24
  %t143 = load i64, ptr %l15, !tbaa !24
  %t144 = load i64, ptr %l13, !tbaa !24
  %t147 = mul i64 %t143, %t144
  %t150 = add i64 %t142, %t147
  store i64 %t150, ptr %l16, !tbaa !24
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 49
  %t155 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t156, ptr %v0, ptr %t154, i64 %t155)
  call void @llvm.memmove.p0.p0.i64(ptr %l111, ptr %t156, i64 144, i1 false)
  br label %bb35
bb35:
  %t159 = getelementptr %"compiler/eval:scope", ptr %l111, i32 0, i32 1
  %t160 = load i1, ptr %t159, !tbaa !21
  br i1 %t160, label %bb36, label %bb37
bb36:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/eval:Machine", ptr %t162, i32 0, i32 49
  %t165 = load i64, ptr %l16, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t166, ptr %v0, ptr %t164, i64 %t165)
  call void @llvm.memmove.p0.p0.i64(ptr %l117, ptr %t166, i64 144, i1 false)
  br label %bb38
bb37:
  store i1 false, ptr %l113, !tbaa !21
  br label %bb39
bb38:
  %t169 = getelementptr %"compiler/eval:scope", ptr %l117, i32 0, i32 10
  %t170 = load i64, ptr %t169, !tbaa !24
  %t172 = icmp sge i64 %t170, 0
  store i1 %t172, ptr %l113, !tbaa !21
  br label %bb39
bb39:
  %t174 = load i1, ptr %l113, !tbaa !21
  br i1 %t174, label %bb40, label %bb41
bb40:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb42
bb41:
  br label %bb42
bb42:
  br label %bb43
bb43:
  %t175 = load i64, ptr %l15, !tbaa !24
  %t177 = add i64 %t175, 1
  store i64 %t177, ptr %l15, !tbaa !24
  br label %bb31
bb44:
  %t179 = load i1, ptr %l2, !tbaa !21
  %t181 = xor i1 %t179, true
  br i1 %t181, label %bb45, label %bb46
bb45:
  %t183 = load i1, ptr %l10, !tbaa !21
  %t185 = xor i1 %t183, true
  store i1 %t185, ptr %l124, !tbaa !21
  br label %bb47
bb46:
  store i1 false, ptr %l124, !tbaa !21
  br label %bb47
bb47:
  %t187 = load i1, ptr %l124, !tbaa !21
  br i1 %t187, label %bb48, label %bb49
bb48:
  %t188 = load i64, ptr %l3, !tbaa !24
  %t190 = icmp slt i64 %t188, 0
  store i1 %t190, ptr %l127, !tbaa !21
  br label %bb50
bb49:
  store i1 false, ptr %l127, !tbaa !21
  br label %bb50
bb50:
  %t192 = load i1, ptr %l127, !tbaa !21
  br i1 %t192, label %bb51, label %bb52
bb51:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb52:
  br label %bb53
bb53:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 89
  store i64 -1, ptr %t196, !tbaa !24
  %t197 = load i64, ptr %l3, !tbaa !24
  %t199 = icmp sge i64 %t197, 0
  br i1 %t199, label %bb54, label %bb55
bb54:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/eval:Machine", ptr %t201, i32 0, i32 53
  %t204 = load i64, ptr %l3, !tbaa !24
  %t207 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t203, i64 %t204)
  store %"compiler/eval:task" %t207, ptr %l137
  br label %bb56
bb55:
  br label %bb75
bb56:
  %t208 = load %"compiler/eval:task", ptr %l137
  store %"compiler/eval:task" %t208, ptr %l17
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/eval:Machine", ptr %t209, i32 0, i32 23
  %t212 = load { i64, ptr }, ptr %t211, !tbaa !27
  store { i64, ptr } %t212, ptr %l139, !tbaa !27
  %t213 = getelementptr %"compiler/eval:task", ptr %l17, i32 0, i32 0
  %t214 = load i64, ptr %t213, !tbaa !24
  %t216 = getelementptr { i64, ptr }, ptr %l139, i32 0, i32 1
  %t217 = load ptr, ptr %t216, !tbaa !27
  %t218 = getelementptr %"compiler/eval:cfn", ptr %t217, i64 %t214
  %t219 = getelementptr %"compiler/eval:cfn", ptr %t218, i32 0, i32 7
  %t220 = load { i64, ptr }, ptr %t219, !tbaa !27
  store { i64, ptr } %t220, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t222 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t224 = extractvalue { i64, ptr } %t222, 0
  store i64 %t224, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t226 = load i64, ptr %l20, !tbaa !24
  %t227 = load i64, ptr %l19, !tbaa !24
  %t230 = icmp sgt i64 %t226, %t227
  br i1 %t230, label %bb57, label %bb58
bb57:
  %t232 = load i64, ptr %l21, !tbaa !24
  %t234 = icmp sgt i64 %t232, 0
  br i1 %t234, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l147, !tbaa !24
  br label %bb62
bb59:
  %t236 = load i64, ptr %l20, !tbaa !24
  %t237 = load i64, ptr %l19, !tbaa !24
  %t240 = sub i64 %t236, %t237
  %t241 = load i64, ptr %l21, !tbaa !24
  %t244 = add i64 %t240, %t241
  %t246 = sub i64 %t244, 1
  %t247 = load i64, ptr %l21, !tbaa !24
  %t250 = sdiv i64 %t246, %t247
  store i64 %t250, ptr %l150, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l150, !tbaa !24
  br label %bb61
bb61:
  %t252 = load i64, ptr %l150, !tbaa !24
  store i64 %t252, ptr %l147, !tbaa !24
  br label %bb62
bb62:
  %t253 = load i64, ptr %l147, !tbaa !24
  store i64 %t253, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb63
bb63:
  %t254 = load i64, ptr %l23, !tbaa !24
  %t255 = load i64, ptr %l22, !tbaa !24
  %t258 = icmp slt i64 %t254, %t255
  %t260 = xor i1 %t258, true
  br i1 %t260, label %bb64, label %bb65
bb64:
  br label %bb74
bb65:
  br label %bb66
bb66:
  %t262 = load i64, ptr %l19, !tbaa !24
  %t263 = load i64, ptr %l23, !tbaa !24
  %t264 = load i64, ptr %l21, !tbaa !24
  %t267 = mul i64 %t263, %t264
  %t270 = add i64 %t262, %t267
  %t272 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t272, ptr %l168, !tbaa !27
  %t275 = getelementptr { i64, ptr }, ptr %l168, i32 0, i32 1
  %t276 = load ptr, ptr %t275, !tbaa !27
  %t277 = getelementptr { i64, [21 x i64] }, ptr %t276, i64 %t270
  call void @llvm.memmove.p0.p0.i64(ptr %l170, ptr %t277, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l25, ptr %l170, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l171, ptr %l25, i64 176, i1 false)
  %t278 = load { i64, [21 x i64] }, ptr %l171
  %t279 = extractvalue { i64, [21 x i64] } %t278, 0
  %t280 = icmp eq i64 %t279, 10
  br i1 %t280, label %bb67, label %bb68
bb67:
  %t282 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t283 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t282, i32 0, i32 0
  %t284 = load %"compiler/source:Span", ptr %t283
  store %"compiler/source:Span" %t284, ptr %l26
  %t286 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t287 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t286, i32 0, i32 1
  %t288 = load i32, ptr %t287
  store i32 %t288, ptr %l27, !tbaa !23
  %t290 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t291 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t290, i32 0, i32 2
  %t292 = load i32, ptr %t291
  %t296 = sext i32 %t292 to i64
  %t297 = getelementptr %"compiler/eval:task", ptr %l17, i32 0, i32 1
  %t298 = load i64, ptr %t297, !tbaa !24
  %t301 = icmp eq i64 %t296, %t298
  store i1 %t301, ptr %l173, !tbaa !21
  br label %bb69
bb68:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb69
bb69:
  %t303 = load i1, ptr %l173, !tbaa !21
  br i1 %t303, label %bb70, label %bb71
bb70:
  %t304 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t305 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t304, i32 0, i32 0
  %t306 = load %"compiler/source:Span", ptr %t305
  %t308 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t309 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t308, i32 0, i32 1
  %t310 = load i32, ptr %t309
  store i32 %t310, ptr %l30, !tbaa !23
  %t312 = getelementptr { i64, [21 x i64] }, ptr %l25, i32 0, i32 1
  %t313 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t312, i32 0, i32 2
  %t314 = load i32, ptr %t313
  store i32 %t314, ptr %l31, !tbaa !23
  %t316 = load ptr, ptr %l0, !tbaa !29
  %t318 = getelementptr %"compiler/eval:Machine", ptr %t316, i32 0, i32 23
  %t319 = load { i64, ptr }, ptr %t318, !tbaa !27
  store { i64, ptr } %t319, ptr %l185, !tbaa !27
  %t320 = getelementptr %"compiler/eval:task", ptr %l17, i32 0, i32 0
  %t321 = load i64, ptr %t320, !tbaa !24
  %t323 = getelementptr { i64, ptr }, ptr %l185, i32 0, i32 1
  %t324 = load ptr, ptr %t323, !tbaa !27
  %t325 = getelementptr %"compiler/eval:cfn", ptr %t324, i64 %t321
  %t326 = getelementptr %"compiler/eval:cfn", ptr %t325, i32 0, i32 0
  %t327 = load i64, ptr %t326, !tbaa !24
  %t331 = load ptr, ptr %l0, !tbaa !29
  %t335 = getelementptr %"compiler/eval:Machine", ptr %t331, i32 0, i32 89
  store i64 %t327, ptr %t335, !tbaa !24
  %t336 = load ptr, ptr %l0, !tbaa !29
  %t340 = getelementptr %"compiler/eval:Machine", ptr %t336, i32 0, i32 90
  store %"compiler/source:Span" %t306, ptr %t340
  br label %bb72
bb71:
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t341 = load i64, ptr %l23, !tbaa !24
  %t343 = add i64 %t341, 1
  store i64 %t343, ptr %l23, !tbaa !24
  br label %bb63
bb74:
  br label %bb75
bb75:
  %t345 = load ptr, ptr %l0, !tbaa !29
  %t346 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWaits, !tbaa !27
  %t347 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t347, ptr %t345, { i64, ptr } %t346)
  br label %bb76
bb76:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOp(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca %"compiler/mir:Range"
  %l4 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l12 = alloca i64
  %l20 = alloca i32
  %l23 = alloca i32
  %l41 = alloca ptr
  %l42 = alloca ptr
  %l43 = alloca i64
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca i32
  %l51 = alloca i64
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/mir:Range" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %a2)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t7 = load i64, ptr %l12, !tbaa !24
  %t9 = icmp eq i64 %t7, %t6
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  store i32 0, ptr %l4, !tbaa !23
  %t12 = getelementptr %"compiler/mir:Range", ptr %l3, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l5, !tbaa !23
  store i32 1, ptr %l6, !tbaa !23
  %t15 = load i32, ptr %l5, !tbaa !23
  %t16 = load i32, ptr %l4, !tbaa !23
  %t19 = icmp sgt i32 %t15, %t16
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t21 = load i32, ptr %l6, !tbaa !23
  %t23 = icmp sgt i32 %t21, 0
  br i1 %t23, label %bb7, label %bb8
bb6:
  store i32 0, ptr %l20, !tbaa !23
  br label %bb10
bb7:
  %t25 = load i32, ptr %l5, !tbaa !23
  %t26 = load i32, ptr %l4, !tbaa !23
  %t29 = sub i32 %t25, %t26
  %t30 = load i32, ptr %l6, !tbaa !23
  %t33 = add i32 %t29, %t30
  %t35 = sub i32 %t33, 1
  %t36 = load i32, ptr %l6, !tbaa !23
  %t39 = sdiv i32 %t35, %t36
  store i32 %t39, ptr %l23, !tbaa !23
  br label %bb9
bb8:
  store i32 0, ptr %l23, !tbaa !23
  br label %bb9
bb9:
  %t41 = load i32, ptr %l23, !tbaa !23
  store i32 %t41, ptr %l20, !tbaa !23
  br label %bb10
bb10:
  %t42 = load i32, ptr %l20, !tbaa !23
  store i32 %t42, ptr %l7, !tbaa !23
  store i32 0, ptr %l8, !tbaa !23
  br label %bb11
bb11:
  %t43 = load i32, ptr %l8, !tbaa !23
  %t44 = load i32, ptr %l7, !tbaa !23
  %t47 = icmp slt i32 %t43, %t44
  %t49 = xor i1 %t47, true
  br i1 %t49, label %bb12, label %bb13
bb12:
  br label %bb22
bb13:
  br label %bb14
bb14:
  %t51 = load i32, ptr %l4, !tbaa !23
  %t52 = load i32, ptr %l8, !tbaa !23
  %t53 = load i32, ptr %l6, !tbaa !23
  %t56 = mul i32 %t52, %t53
  %t59 = add i32 %t51, %t56
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l41, !tbaa !29
  %t62 = load ptr, ptr %l0, !tbaa !29
  store ptr %t62, ptr %l42, !tbaa !29
  %t63 = load i64, ptr %l1, !tbaa !24
  store i64 %t63, ptr %l43, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t65 = load i64, ptr %l1, !tbaa !24
  %t66 = load %"compiler/mir:Range", ptr %l3
  %t69 = sext i32 %t59 to i64
  %t74 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t64, i64 %t65, %"compiler/mir:Range" %t66, i64 %t69)
  store { i64, [4 x i64] } %t74, ptr %l49
  br label %bb15
bb15:
  %t75 = load ptr, ptr %l42, !tbaa !29
  %t76 = load i64, ptr %l43, !tbaa !24
  %t77 = load { i64, [4 x i64] }, ptr %l49
  %t78 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t75, i64 %t76, { i64, [4 x i64] } %t77)
  store i32 %t78, ptr %l50
  br label %bb16
bb16:
  %t79 = load ptr, ptr %l41, !tbaa !29
  %t80 = load i32, ptr %l50, !tbaa !23
  %t81 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t79, i32 %t80)
  store i64 %t81, ptr %l51
  br label %bb17
bb17:
  %t82 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t83 = load i64, ptr %l51, !tbaa !24
  %t85 = icmp eq i64 %t83, %t82
  br i1 %t85, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  br label %bb21
bb21:
  %t88 = load i32, ptr %l8, !tbaa !23
  %t90 = add i32 %t88, 1
  store i32 %t90, ptr %l8, !tbaa !23
  br label %bb11
bb22:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 67
  %t76 = load i64, ptr %t75, !tbaa !24
  %t77 = load ptr, ptr %l39, !tbaa !29
  %t81 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t77, i64 %t71, i64 %t72, i64 %t76)
  store %"compiler/eval:Ptr" %t81, ptr %l48
  br label %bb15
bb15:
  %t82 = load %"compiler/eval:Ptr", ptr %l48
  store %"compiler/eval:Ptr" %t82, ptr %l9
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/eval:Machine", ptr %t83, i32 0, i32 19
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
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 46
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewritesAfter(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l5 = alloca %"compiler/mir:StmtList"
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca { i64, [21 x i64] }
  %l9 = alloca %"compiler/source:Span"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l16 = alloca { i64, [21 x i64] }
  %l17 = alloca %"compiler/source:Span"
  %l18 = alloca %"compiler/mir:Lvalue"
  %l19 = alloca { i64, [2 x i64] }
  %l20 = alloca i64
  %l21 = alloca i32
  %l25 = alloca { i64, ptr }
  %l28 = alloca ptr
  %l32 = alloca { i64, ptr }
  %l35 = alloca %"compiler/mir:BasicBlock"
  %l37 = alloca %"compiler/mir:BasicBlock"
  %l38 = alloca %"compiler/mir:StmtList"
  %l40 = alloca %"compiler/mir:StmtList"
  %l42 = alloca { i64, ptr }
  %l45 = alloca i64
  %l47 = alloca i64
  %l52 = alloca { i64, [21 x i64] }
  %l53 = alloca { i64, [21 x i64] }
  %l61 = alloca i64
  %l65 = alloca i64
  %l68 = alloca i64
  %l88 = alloca { i64, [21 x i64] }
  %l89 = alloca { i64, [21 x i64] }
  %l105 = alloca i1
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 55
  %t7 = load { i64, ptr }, ptr %t6, !tbaa !27
  store { i64, ptr } %t7, ptr %l25, !tbaa !27
  %t8 = load i64, ptr %l1, !tbaa !24
  %t10 = getelementptr { i64, ptr }, ptr %l25, i32 0, i32 1
  %t11 = load ptr, ptr %t10, !tbaa !27
  %t12 = getelementptr %"compiler/eval:frame", ptr %t11, i64 %t8
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i32 0, i32 0
  %t14 = load i64, ptr %t13, !tbaa !24
  %t17 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t3, i64 %t14)
  store ptr %t17, ptr %l28
  br label %bb1
bb1:
  %t18 = load ptr, ptr %l28, !tbaa !29
  %t21 = getelementptr %"compiler/mir:Fn", ptr %t18, i32 0, i32 9
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 55
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l32, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t29 = load ptr, ptr %t28, !tbaa !27
  %t30 = getelementptr %"compiler/eval:frame", ptr %t29, i64 %t26
  %t31 = getelementptr %"compiler/eval:frame", ptr %t30, i32 0, i32 1
  %t32 = load i64, ptr %t31, !tbaa !24
  %t35 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v0, ptr %t21, i64 %t32)
  store %"compiler/mir:BasicBlock" %t35, ptr %l35
  br label %bb2
bb2:
  %t37 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %v0, ptr %l35)
  store %"compiler/mir:BasicBlock" %t37, ptr %l37
  br label %bb3
bb3:
  %t38 = getelementptr %"compiler/mir:BasicBlock", ptr %l37, i32 0, i32 0
  %t39 = load %"compiler/mir:StmtList", ptr %t38
  store %"compiler/mir:StmtList" %t39, ptr %l38
  %t41 = call %"compiler/mir:StmtList" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aStmtList(ptr %s0, ptr %l38)
  store %"compiler/mir:StmtList" %t41, ptr %l40
  br label %bb4
bb4:
  %t42 = load %"compiler/mir:StmtList", ptr %l40
  store %"compiler/mir:StmtList" %t42, ptr %l5
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 55
  %t46 = load { i64, ptr }, ptr %t45, !tbaa !27
  store { i64, ptr } %t46, ptr %l42, !tbaa !27
  %t47 = load i64, ptr %l1, !tbaa !24
  %t49 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t50 = load ptr, ptr %t49, !tbaa !27
  %t51 = getelementptr %"compiler/eval:frame", ptr %t50, i64 %t47
  %t52 = getelementptr %"compiler/eval:frame", ptr %t51, i32 0, i32 2
  %t53 = load i64, ptr %t52, !tbaa !24
  store i64 %t53, ptr %l6, !tbaa !24
  %t55 = load i64, ptr %l6, !tbaa !24
  store i64 %t55, ptr %l45, !tbaa !24
  %t57 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s0, ptr %l5)
  store i64 %t57, ptr %l47
  br label %bb5
bb5:
  %t58 = load i64, ptr %l45, !tbaa !24
  %t59 = load i64, ptr %l47, !tbaa !24
  %t60 = icmp sge i64 %t58, %t59
  br i1 %t60, label %bb6, label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  store i32 -1, ptr %l7, !tbaa !23
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s0, ptr %l5, i64 %t63)
  store { i64, [21 x i64] } %t66, ptr %l52
  br label %bb9
bb9:
  call void @llvm.memmove.p0.p0.i64(ptr %l8, ptr %l52, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %l8, i64 176, i1 false)
  %t67 = load { i64, [21 x i64] }, ptr %l53
  %t68 = extractvalue { i64, [21 x i64] } %t67, 0
  %t69 = icmp eq i64 %t68, 0
  br i1 %t69, label %bb10, label %bb11
bb10:
  %t71 = getelementptr { i64, [21 x i64] }, ptr %l8, i32 0, i32 1
  %t72 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/source:Span", ptr %t72
  store %"compiler/source:Span" %t73, ptr %l9
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t75 = getelementptr %"compiler/source:Span", ptr %l9, i32 0, i32 0
  %t76 = load i32, ptr %t75, !tbaa !23
  store i32 %t76, ptr %l7, !tbaa !23
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb17:
  call void @__olang_check_failed(ptr @olang_loc_4d14e07bfe4410cd_6dafb030c3a12d39)
  unreachable
bb18:
  %t79 = load i64, ptr %l6, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l10, !tbaa !24
  %t84 = call i64 @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eLen(ptr %s0, ptr %l5)
  store i64 %t84, ptr %l61
  br label %bb19
bb19:
  %t85 = load i64, ptr %l61, !tbaa !24
  store i64 %t85, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t86 = load i64, ptr %l11, !tbaa !24
  %t87 = load i64, ptr %l10, !tbaa !24
  %t90 = icmp sgt i64 %t86, %t87
  br i1 %t90, label %bb20, label %bb21
bb20:
  %t92 = load i64, ptr %l12, !tbaa !24
  %t94 = icmp sgt i64 %t92, 0
  br i1 %t94, label %bb22, label %bb23
bb21:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb25
bb22:
  %t96 = load i64, ptr %l11, !tbaa !24
  %t97 = load i64, ptr %l10, !tbaa !24
  %t100 = sub i64 %t96, %t97
  %t101 = load i64, ptr %l12, !tbaa !24
  %t104 = add i64 %t100, %t101
  %t106 = sub i64 %t104, 1
  %t107 = load i64, ptr %l12, !tbaa !24
  %t110 = sdiv i64 %t106, %t107
  store i64 %t110, ptr %l68, !tbaa !24
  br label %bb24
bb23:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb24
bb24:
  %t112 = load i64, ptr %l68, !tbaa !24
  store i64 %t112, ptr %l65, !tbaa !24
  br label %bb25
bb25:
  %t113 = load i64, ptr %l65, !tbaa !24
  store i64 %t113, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb26
bb26:
  %t114 = load i64, ptr %l14, !tbaa !24
  %t115 = load i64, ptr %l13, !tbaa !24
  %t118 = icmp slt i64 %t114, %t115
  %t120 = xor i1 %t118, true
  br i1 %t120, label %bb27, label %bb28
bb27:
  br label %bb59
bb28:
  br label %bb29
bb29:
  %t122 = load i64, ptr %l10, !tbaa !24
  %t123 = load i64, ptr %l14, !tbaa !24
  %t124 = load i64, ptr %l12, !tbaa !24
  %t127 = mul i64 %t123, %t124
  %t130 = add i64 %t122, %t127
  %t135 = call { i64, [21 x i64] } @compiler_2fmir_2ecompiler_2fmir_3aStmtList_2eAt(ptr %s0, ptr %l5, i64 %t130)
  store { i64, [21 x i64] } %t135, ptr %l88
  br label %bb30
bb30:
  call void @llvm.memmove.p0.p0.i64(ptr %l16, ptr %l88, i64 176, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %l89, ptr %l16, i64 176, i1 false)
  %t136 = load { i64, [21 x i64] }, ptr %l89
  %t137 = extractvalue { i64, [21 x i64] } %t136, 0
  %t138 = icmp eq i64 %t137, 0
  br i1 %t138, label %bb31, label %bb32
bb31:
  %t140 = getelementptr { i64, [21 x i64] }, ptr %l16, i32 0, i32 1
  %t141 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t140, i32 0, i32 0
  %t142 = load %"compiler/source:Span", ptr %t141
  store %"compiler/source:Span" %t142, ptr %l17
  %t144 = getelementptr { i64, [21 x i64] }, ptr %l16, i32 0, i32 1
  %t145 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t144, i32 0, i32 1
  %t146 = load %"compiler/mir:Lvalue", ptr %t145
  store %"compiler/mir:Lvalue" %t146, ptr %l18
  br label %bb33
bb32:
  br label %bb52
bb33:
  %t148 = getelementptr %"compiler/source:Span", ptr %l17, i32 0, i32 0
  %t149 = load i32, ptr %t148, !tbaa !23
  %t150 = load i32, ptr %l7, !tbaa !23
  %t153 = icmp ne i32 %t149, %t150
  br i1 %t153, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb35:
  br label %bb36
bb36:
  %t156 = getelementptr %"compiler/mir:Lvalue", ptr %l18, i32 0, i32 0
  %t157 = load { i64, [2 x i64] }, ptr %t156
  store { i64, [2 x i64] } %t157, ptr %l19
  %t159 = load { i64, [2 x i64] }, ptr %l19
  %t161 = extractvalue { i64, [2 x i64] } %t159, 0
  %t162 = icmp eq i64 %t161, 2
  br i1 %t162, label %bb37, label %bb38
bb37:
  %t164 = getelementptr { i64, [2 x i64] }, ptr %l19, i32 0, i32 1
  %t165 = getelementptr { i64, i32, i32 }, ptr %t164, i32 0, i32 0
  %t166 = load i64, ptr %t165
  store i64 %t166, ptr %l20, !tbaa !24
  %t168 = getelementptr { i64, [2 x i64] }, ptr %l19, i32 0, i32 1
  %t169 = getelementptr { i64, i32, i32 }, ptr %t168, i32 0, i32 1
  %t170 = load i32, ptr %t169
  store i32 %t170, ptr %l21, !tbaa !23
  br label %bb39
bb38:
  br label %bb46
bb39:
  %t172 = load i64, ptr %l20, !tbaa !24
  %t176 = icmp eq i64 %t172, %a2
  br i1 %t176, label %bb40, label %bb41
bb40:
  %t178 = load i32, ptr %l21, !tbaa !23
  %t182 = icmp eq i32 %t178, %a3
  store i1 %t182, ptr %l105, !tbaa !21
  br label %bb42
bb41:
  store i1 false, ptr %l105, !tbaa !21
  br label %bb42
bb42:
  %t184 = load i1, ptr %l105, !tbaa !21
  br i1 %t184, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  store i1 true, ptr %rv
  br label %ret
bb44:
  br label %bb45
bb45:
  br label %bb51
bb46:
  br i1 true, label %bb47, label %bb48
bb47:
  br label %bb49
bb48:
  br label %bb50
bb49:
  br label %bb51
bb50:
  call void @__olang_check_failed(ptr @olang_loc_9c829c68892d289c_3e4192d6cd213d68)
  unreachable
bb51:
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
bb56:
  call void @__olang_check_failed(ptr @olang_loc_ddb187b0a77b9dd7_fe6fb794d8e15443)
  unreachable
bb57:
  br label %bb58
bb58:
  %t187 = load i64, ptr %l14, !tbaa !24
  %t189 = add i64 %t187, 1
  store i64 %t189, ptr %l14, !tbaa !24
  br label %bb26
bb59:
  call void @__olang_scope_close(ptr %s0)
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t66 = getelementptr %"compiler/eval:Machine", ptr %t64, i32 0, i32 42
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
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t3 = trunc i64 0 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb39
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t8 = trunc i64 1 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb39
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t13 = trunc i64 2 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb39
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t18 = trunc i64 3 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb39
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t23 = trunc i64 4 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb39
bb10:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t28 = trunc i64 5 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb39
bb12:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t33 = trunc i64 6 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb39
bb14:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t38 = trunc i64 7 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb15, label %bb16
bb15:
  br label %bb39
bb16:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t43 = trunc i64 8 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb17, label %bb18
bb17:
  br label %bb39
bb18:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t48 = trunc i64 9 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb19, label %bb20
bb19:
  br label %bb39
bb20:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t53 = trunc i64 10 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb21, label %bb22
bb21:
  br label %bb39
bb22:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t58 = trunc i64 11 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb23, label %bb24
bb23:
  br label %bb39
bb24:
  %t61 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t63 = trunc i64 12 to i32
  %t64 = icmp eq i32 %t61, %t63
  br i1 %t64, label %bb25, label %bb26
bb25:
  br label %bb39
bb26:
  %t66 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t68 = trunc i64 13 to i32
  %t69 = icmp eq i32 %t66, %t68
  br i1 %t69, label %bb27, label %bb28
bb27:
  br label %bb39
bb28:
  %t71 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t73 = trunc i64 14 to i32
  %t74 = icmp eq i32 %t71, %t73
  br i1 %t74, label %bb29, label %bb30
bb29:
  br label %bb39
bb30:
  %t76 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t78 = trunc i64 15 to i32
  %t79 = icmp eq i32 %t76, %t78
  br i1 %t79, label %bb31, label %bb32
bb31:
  br label %bb39
bb32:
  %t81 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t83 = trunc i64 16 to i32
  %t84 = icmp eq i32 %t81, %t83
  br i1 %t84, label %bb33, label %bb34
bb33:
  br label %bb39
bb34:
  %t86 = load i32, ptr %l0, !range !{i32 0, i32 52}
  %t88 = trunc i64 17 to i32
  %t89 = icmp eq i32 %t86, %t88
  br i1 %t89, label %bb35, label %bb36
bb35:
  br label %bb39
bb36:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 52}
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
  %t6 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t4, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d9, i32 0, i32 1) })
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

define dso_local { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l25 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
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
  %t16 = load i64, ptr %l0, !tbaa !24
  %t17 = load i64, ptr %l2, !tbaa !24
  %t19 = sub i64 %t17, 64
  store i64 %t19, ptr %l12, !tbaa !24
  %t21 = load i64, ptr %l12, !tbaa !24
  %t22 = load i64, ptr %l12, !tbaa !24
  %t23 = shl i64 %t16, %t22
  %t24 = insertvalue { i64, i64 } undef, i64 0, 0
  %t26 = insertvalue { i64, i64 } %t24, i64 %t23, 1
  store { i64, i64 } %t26, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t28 = load i64, ptr %l0, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  store i64 %t29, ptr %l16, !tbaa !24
  %t31 = load i64, ptr %l16, !tbaa !24
  %t32 = load i64, ptr %l16, !tbaa !24
  %t33 = shl i64 %t28, %t32
  %t34 = load i64, ptr %l1, !tbaa !24
  %t35 = load i64, ptr %l2, !tbaa !24
  store i64 %t35, ptr %l19, !tbaa !24
  %t37 = load i64, ptr %l19, !tbaa !24
  %t38 = load i64, ptr %l19, !tbaa !24
  %t39 = shl i64 %t34, %t38
  %t40 = load i64, ptr %l0, !tbaa !24
  %t42 = load i64, ptr %l2, !tbaa !24
  %t44 = sub i64 64, %t42
  store i64 %t44, ptr %l25, !tbaa !65
  %t47 = load i64, ptr %l25, !tbaa !65
  %t48 = load i64, ptr %l25, !tbaa !65
  %t49 = lshr i64 %t40, %t48
  %t53 = or i64 %t39, %t49
  %t55 = insertvalue { i64, i64 } undef, i64 %t33, 0
  %t57 = insertvalue { i64, i64 } %t55, i64 %t53, 1
  store { i64, i64 } %t57, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i32 @compiler_2feval_2etdecl(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i32 %a2, { i64, ptr } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l5 = alloca ptr
  %l6 = alloca i64
  %l11 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i64
  %l17 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  %t2 = ptrtoint ptr %v0 to i64
  store i64 %t2, ptr %l6, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t7, 1
  %t12 = extractvalue { i64, ptr } %t7, 0
  %t13 = add i64 %t9, %t12
  %t14 = load i64, ptr %l6
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t8, i64 %t9)
  %t17 = getelementptr i8, ptr %t16, i64 %t9
  call void @olang_textcopy(ptr %t17, ptr %t11, i64 %t12)
  %t18 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t16, 1
  %t21 = load i64, ptr %l6
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l5, !tbaa !29
  %t31 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v0, ptr %t29, { i64, ptr } %t28)
  store i64 %t31, ptr %l11
  br label %bb3
bb3:
  %t32 = load i64, ptr %l11, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l12, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l13, !tbaa !29
  store i64 %t32, ptr %l14, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t40 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v2, ptr %a1, { i64, ptr } %t37)
  store i32 %t40, ptr %l17
  br label %bb4
bb4:
  %t42 = load ptr, ptr %l13, !tbaa !29
  %t43 = load i64, ptr %l14, !tbaa !24
  %t44 = load i32, ptr %l17, !tbaa !23
  %t46 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v3, ptr %t42, i64 %t43, i32 %t44, i32 %a2, i32 0)
  store i32 %t46, ptr %l19
  br label %bb5
bb5:
  %t47 = load ptr, ptr %l12, !tbaa !29
  %t48 = load i32, ptr %l19, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t47, i32 %t48, i32 0)
  store i32 %t49, ptr %l20
  br label %bb6
bb6:
  %t50 = load i32, ptr %l20, !tbaa !23
  store i32 %t50, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %lp3 = alloca ptr
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l14 = alloca %"compiler/mir:Fn"
  %l15 = alloca ptr
  %l18 = alloca i32
  %l19 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l32 = alloca i32
  %l39 = alloca i32
  %l41 = alloca i32
  %l46 = alloca { i64, [21 x i64] }
  %l48 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t5 = alloca { i64, [2 x i64] }, align 8
  %t13 = alloca %"compiler/mir:Fn", align 8
  %t75 = alloca { i64, [21 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = trunc i64 %a1 to i32
  store { i64, [2 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t8 = insertvalue { i32 } undef, i32 %t3, 0
  %t9 = getelementptr { i64, [2 x i64] }, ptr %t5, i32 0, i32 1
  store { i32 } %t8, ptr %t9
  %t10 = load { i64, [2 x i64] }, ptr %t5
  %t11 = load i32, ptr %l2, !tbaa !23
  %t12 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  call void @compiler_2fmir_3aFn_2ector(ptr %t13, ptr %v1, { i64, [2 x i64] } %t10, i32 %t11, i64 0, %"compiler/source:Span" %t12)
  call void @llvm.memmove.p0.p0.i64(ptr %l14, ptr %t13, i64 800, i1 false)
  br label %bb1
bb1:
  %t17 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t17, ptr %lp3
  %t18 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %t18, ptr %l14, i64 800, i1 false)
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l15, !tbaa !29
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load i32, ptr %l2, !tbaa !23
  %t24 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %t20, i32 %t21)
  store i32 %t24, ptr %l18
  br label %bb2
bb2:
  %t25 = load ptr, ptr %l15, !tbaa !29
  %t26 = load i32, ptr %l18, !tbaa !23
  %t27 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t25, i32 %t26)
  store { i64, ptr } %t27, ptr %l19
  br label %bb3
bb3:
  %t28 = load { i64, ptr }, ptr %l19, !tbaa !27
  store { i64, ptr } %t28, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t29 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l6, !tbaa !24
  br label %bb4
bb4:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr %l6, !tbaa !24
  %t37 = icmp slt i64 %t33, %t34
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb5, label %bb6
bb5:
  br label %bb10
bb6:
  br label %bb7
bb7:
  %t41 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t41, ptr %l26, !tbaa !27
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t45 = load ptr, ptr %t44, !tbaa !27
  %t46 = getelementptr i32, ptr %t45, i64 %t42
  %t47 = load i32, ptr %t46, !tbaa !33
  %t49 = load ptr, ptr %lp3
  %t50 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t55 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v1, ptr %t49, i32 0, %"compiler/source:Span" %t50, i32 %t47)
  store i32 %t55, ptr %l32
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t56 = load i64, ptr %l5, !tbaa !24
  %t58 = add i64 %t56, 1
  store i64 %t58, ptr %l5, !tbaa !24
  br label %bb4
bb10:
  %t60 = load ptr, ptr %lp3
  %t61 = load i32, ptr @G_2ecompiler_2fmir_2eNoScope, !tbaa !23
  %t62 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t67 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v1, ptr %t60, i32 0, i32 %t61, i32 0, %"compiler/source:Span" %t62, i32 0)
  store i32 %t67, ptr %l39
  br label %bb11
bb11:
  %t68 = load ptr, ptr %lp3
  %t70 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v1, ptr %t68)
  store i32 %t70, ptr %l41
  br label %bb12
bb12:
  %t71 = load ptr, ptr %lp3
  %t72 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t73 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t74 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t75
  %t76 = getelementptr { i64, [21 x i64] }, ptr %t75, i32 0, i32 0
  store i64 3, ptr %t76
  %t78 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t73, 0
  %t80 = insertvalue { %"compiler/source:Span", i32 } %t78, i32 %t74, 1
  %t81 = getelementptr { i64, [21 x i64] }, ptr %t75, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t80, ptr %t81
  %t82 = load { i64, [21 x i64] }, ptr %t75
  store { i64, [21 x i64] } %t82, ptr %l46
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t71, i32 %t72, ptr %l46)
  br label %bb13
bb13:
  %t86 = load ptr, ptr %lp3
  call void @llvm.memmove.p0.p0.i64(ptr %l48, ptr %t86, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l48, i64 800, i1 false)
  br label %ret
ret:
  ret void
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

define dso_local void @compiler_2feval_3aBlob_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca i64
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca i64
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca i64
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i64
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca i64
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca i64
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca i64
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"compiler/eval:Blob"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l10, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l10, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l10
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l12
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l10
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l0
  store i64 8, ptr %l1, !tbaa !24
  store i1 false, ptr %l2, !tbaa !21
  %t21 = ptrtoint ptr %v0 to i64
  store i64 %t21, ptr %l14, !tbaa !24
  %t22 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e3
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = call ptr @__olang_region_make(ptr %v0)
  %t25 = ptrtoint ptr %t24 to i64
  store i64 %t25, ptr %l14, !tbaa !24
  br label %bb7
bb7:
  %t26 = load i64, ptr %l14
  %t27 = inttoptr i64 %t26 to ptr
  %t28 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t27, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t28, ptr %l16
  br label %bb8
bb8:
  %t29 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e3
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = load i64, ptr %l14
  %t32 = inttoptr i64 %t31 to ptr
  %t33 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t34 = load { i64, ptr }, ptr %t33
  %t35 = extractvalue { i64, ptr } %t34, 1
  %t36 = call ptr @__olang_region_or(ptr %t35, ptr null)
  %t37 = icmp ne ptr %t36, null
  %t38 = select i1 %t37, ptr %t36, ptr null
  %t39 = icmp eq ptr %t38, %t32
  call void @__olang_region_settle(ptr %t32, i1 %t39)
  br label %bb10
bb10:
  %t40 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t40, ptr %l3
  %t41 = ptrtoint ptr %v0 to i64
  store i64 %t41, ptr %l18, !tbaa !24
  %t42 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e4
  br i1 %t42, label %bb11, label %bb12
bb11:
  %t44 = call ptr @__olang_region_make(ptr %v0)
  %t45 = ptrtoint ptr %t44 to i64
  store i64 %t45, ptr %l18, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l18
  %t47 = inttoptr i64 %t46 to ptr
  %t48 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t47, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t48, ptr %l20
  br label %bb13
bb13:
  %t49 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e4
  br i1 %t49, label %bb14, label %bb15
bb14:
  %t51 = load i64, ptr %l18
  %t52 = inttoptr i64 %t51 to ptr
  %t53 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t54 = load { i64, ptr }, ptr %t53
  %t55 = extractvalue { i64, ptr } %t54, 1
  %t56 = call ptr @__olang_region_or(ptr %t55, ptr null)
  %t57 = icmp ne ptr %t56, null
  %t58 = select i1 %t57, ptr %t56, ptr null
  %t59 = icmp eq ptr %t58, %t52
  call void @__olang_region_settle(ptr %t52, i1 %t59)
  br label %bb15
bb15:
  %t60 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l4
  %t61 = ptrtoint ptr %v0 to i64
  store i64 %t61, ptr %l22, !tbaa !24
  %t62 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e5
  br i1 %t62, label %bb16, label %bb17
bb16:
  %t64 = call ptr @__olang_region_make(ptr %v0)
  %t65 = ptrtoint ptr %t64 to i64
  store i64 %t65, ptr %l22, !tbaa !24
  br label %bb17
bb17:
  %t66 = load i64, ptr %l22
  %t67 = inttoptr i64 %t66 to ptr
  %t68 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t67, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t68, ptr %l24
  br label %bb18
bb18:
  %t69 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e5
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t71 = load i64, ptr %l22
  %t72 = inttoptr i64 %t71 to ptr
  %t73 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr null
  %t79 = icmp eq ptr %t78, %t72
  call void @__olang_region_settle(ptr %t72, i1 %t79)
  br label %bb20
bb20:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %l5
  %t81 = ptrtoint ptr %v0 to i64
  store i64 %t81, ptr %l26, !tbaa !24
  %t82 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e6
  br i1 %t82, label %bb21, label %bb22
bb21:
  %t84 = call ptr @__olang_region_make(ptr %v0)
  %t85 = ptrtoint ptr %t84 to i64
  store i64 %t85, ptr %l26, !tbaa !24
  br label %bb22
bb22:
  %t86 = load i64, ptr %l26
  %t87 = inttoptr i64 %t86 to ptr
  %t88 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t87, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t88, ptr %l28
  br label %bb23
bb23:
  %t89 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e6
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load i64, ptr %l26
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28, i32 0, i32 0
  %t94 = load { i64, ptr }, ptr %t93
  %t95 = extractvalue { i64, ptr } %t94, 1
  %t96 = call ptr @__olang_region_or(ptr %t95, ptr null)
  %t97 = icmp ne ptr %t96, null
  %t98 = select i1 %t97, ptr %t96, ptr null
  %t99 = icmp eq ptr %t98, %t92
  call void @__olang_region_settle(ptr %t92, i1 %t99)
  br label %bb25
bb25:
  %t100 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l28
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t100, ptr %l6
  %t101 = ptrtoint ptr %v0 to i64
  store i64 %t101, ptr %l30, !tbaa !24
  %t102 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e7
  br i1 %t102, label %bb26, label %bb27
bb26:
  %t104 = call ptr @__olang_region_make(ptr %v0)
  %t105 = ptrtoint ptr %t104 to i64
  store i64 %t105, ptr %l30, !tbaa !24
  br label %bb27
bb27:
  %t106 = load i64, ptr %l30
  %t107 = inttoptr i64 %t106 to ptr
  %t108 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t107, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t108, ptr %l32
  br label %bb28
bb28:
  %t109 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e7
  br i1 %t109, label %bb29, label %bb30
bb29:
  %t111 = load i64, ptr %l30
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32, i32 0, i32 0
  %t114 = load { i64, ptr }, ptr %t113
  %t115 = extractvalue { i64, ptr } %t114, 1
  %t116 = call ptr @__olang_region_or(ptr %t115, ptr null)
  %t117 = icmp ne ptr %t116, null
  %t118 = select i1 %t117, ptr %t116, ptr null
  %t119 = icmp eq ptr %t118, %t112
  call void @__olang_region_settle(ptr %t112, i1 %t119)
  br label %bb30
bb30:
  %t120 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t120, ptr %l7
  %t121 = ptrtoint ptr %v0 to i64
  store i64 %t121, ptr %l34, !tbaa !24
  %t122 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e8
  br i1 %t122, label %bb31, label %bb32
bb31:
  %t124 = call ptr @__olang_region_make(ptr %v0)
  %t125 = ptrtoint ptr %t124 to i64
  store i64 %t125, ptr %l34, !tbaa !24
  br label %bb32
bb32:
  %t126 = load i64, ptr %l34
  %t127 = inttoptr i64 %t126 to ptr
  %t128 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %t127, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t128, ptr %l36
  br label %bb33
bb33:
  %t129 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e8
  br i1 %t129, label %bb34, label %bb35
bb34:
  %t131 = load i64, ptr %l34
  %t132 = inttoptr i64 %t131 to ptr
  %t133 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36, i32 0, i32 0
  %t134 = load { i64, ptr }, ptr %t133
  %t135 = extractvalue { i64, ptr } %t134, 1
  %t136 = call ptr @__olang_region_or(ptr %t135, ptr null)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr null
  %t139 = icmp eq ptr %t138, %t132
  call void @__olang_region_settle(ptr %t132, i1 %t139)
  br label %bb35
bb35:
  %t140 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l36
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t140, ptr %l8
  %t141 = ptrtoint ptr %v0 to i64
  store i64 %t141, ptr %l38, !tbaa !24
  %t142 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e9
  br i1 %t142, label %bb36, label %bb37
bb36:
  %t144 = call ptr @__olang_region_make(ptr %v0)
  %t145 = ptrtoint ptr %t144 to i64
  store i64 %t145, ptr %l38, !tbaa !24
  br label %bb37
bb37:
  %t146 = load i64, ptr %l38
  %t147 = inttoptr i64 %t146 to ptr
  %t148 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t147, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %l40
  br label %bb38
bb38:
  %t149 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aBlob_2e9
  br i1 %t149, label %bb39, label %bb40
bb39:
  %t151 = load i64, ptr %l38
  %t152 = inttoptr i64 %t151 to ptr
  %t153 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40, i32 0, i32 0
  %t154 = load { i64, ptr }, ptr %t153
  %t155 = extractvalue { i64, ptr } %t154, 1
  %t156 = call ptr @__olang_region_or(ptr %t155, ptr null)
  %t157 = icmp ne ptr %t156, null
  %t158 = select i1 %t157, ptr %t156, ptr null
  %t159 = icmp eq ptr %t158, %t152
  call void @__olang_region_settle(ptr %t152, i1 %t159)
  br label %bb40
bb40:
  %t160 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l40
  %t161 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 0
  %t162 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t162, ptr %t161
  %t163 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 1
  %t164 = load i64, ptr %l1, !tbaa !24
  store i64 %t164, ptr %t163, !tbaa !24
  %t165 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 2
  %t166 = load i1, ptr %l2, !tbaa !21
  store i1 %t166, ptr %t165, !tbaa !21
  %t167 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 3
  %t168 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t168, ptr %t167
  %t169 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 4
  %t170 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t170, ptr %t169
  %t171 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 5
  %t172 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t172, ptr %t171
  %t173 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 6
  %t174 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t174, ptr %t173
  %t175 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 7
  %t176 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t176, ptr %t175
  %t177 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 8
  %t178 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t178, ptr %t177
  %t179 = getelementptr %"compiler/eval:Blob", ptr %l42, i32 0, i32 9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t160, ptr %t179
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l42, i64 272, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_3aMachine_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"compiler/mir:GenInfo"
  %l7 = alloca i1
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l12 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i1
  %l16 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l17 = alloca %"compiler/eval:Ptr"
  %l18 = alloca i32
  %l19 = alloca { i64, [5 x i64] }
  %l20 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i1
  %l23 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l27 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  %l29 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l33 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l34 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l35 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l36 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l37 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l38 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l39 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l40 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l43 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l44 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l46 = alloca i64
  %l47 = alloca { i64, ptr }
  %l48 = alloca { i64, ptr }
  %l49 = alloca i64
  %l50 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l51 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l53 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l54 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l59 = alloca { i64, ptr }
  %l60 = alloca i64
  %l61 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l63 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l64 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l65 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l67 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i1
  %l69 = alloca i64
  %l70 = alloca i64
  %l71 = alloca { i64, ptr }
  %l72 = alloca i64
  %l73 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l75 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l76 = alloca i64
  %l77 = alloca %"compiler/source:Span"
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l79 = alloca i64
  %l80 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l81 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l82 = alloca { i64, ptr }
  %l83 = alloca { i64, ptr }
  %l84 = alloca i1
  %l85 = alloca i1
  %l86 = alloca i1
  %l87 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l89 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l91 = alloca i64
  %l96 = alloca i64
  %l98 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l100 = alloca i64
  %l102 = alloca %"compiler/mir:GenInfo"
  %l104 = alloca i64
  %l106 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l108 = alloca i64
  %l110 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l112 = alloca i64
  %l114 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l119 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l120 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l121 = alloca %"compiler/eval:cfn"
  %l123 = alloca %"compiler/eval:cfn"
  %l127 = alloca i64
  %l132 = alloca i64
  %l137 = alloca i64
  %l142 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l143 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l144 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l145 = alloca i64
  %l147 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l149 = alloca i64
  %l151 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l153 = alloca i64
  %l155 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l157 = alloca i64
  %l159 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l161 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l162 = alloca i64
  %l164 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l166 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l167 = alloca i64
  %l169 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l171 = alloca i64
  %l173 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l175 = alloca i64
  %l177 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l179 = alloca i64
  %l181 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l183 = alloca i64
  %l185 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l187 = alloca i64
  %l192 = alloca i64
  %l197 = alloca i64
  %l202 = alloca i64
  %l204 = alloca %"compiler/eval:alloc"
  %l206 = alloca %"compiler/eval:alloc"
  %l210 = alloca i64
  %l212 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l214 = alloca i64
  %l216 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l218 = alloca i64
  %l220 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l222 = alloca i64
  %l224 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l226 = alloca i64
  %l228 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l230 = alloca i64
  %l232 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l234 = alloca i64
  %l236 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l238 = alloca i64
  %l240 = alloca %"compiler/eval:frame"
  %l242 = alloca %"compiler/eval:frame"
  %l246 = alloca i64
  %l251 = alloca i64
  %l253 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l255 = alloca i64
  %l257 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l259 = alloca i64
  %l261 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l263 = alloca i64
  %l265 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l267 = alloca i64
  %l269 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l271 = alloca i64
  %l273 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l275 = alloca i64
  %l277 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l279 = alloca i64
  %l284 = alloca i64
  %l286 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l288 = alloca i64
  %l290 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l292 = alloca i64
  %l294 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l296 = alloca %"compiler/source:Span"
  %l297 = alloca i64
  %l299 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l301 = alloca i64
  %l303 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l305 = alloca i64
  %l307 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l309 = alloca i64
  %l311 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l313 = alloca i64
  %l315 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l317 = alloca i64
  %l319 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l321 = alloca %"compiler/source:Span"
  %l322 = alloca %"compiler/eval:Machine"
  %t30 = alloca %"compiler/mir:GenInfo", align 8
  %t226 = alloca { i64, [5 x i64] }, align 8
  %t236 = alloca %"compiler/eval:cfn", align 8
  %t243 = alloca i64
  %t267 = alloca i64
  %t291 = alloca i64
  %t315 = alloca i64
  %t698 = alloca i64
  %t856 = alloca %"compiler/eval:frame", align 8
  %t865 = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  store i32 %a1, ptr %l3
  store i64 20000000, ptr %l4, !tbaa !24
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l96, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e3
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l96, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l96
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l98
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e3
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l96
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l98
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l5
  %t25 = ptrtoint ptr %v1 to i64
  store i64 %t25, ptr %l100, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v1)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l100, !tbaa !24
  br label %bb7
bb7:
  %t31 = load i64, ptr %l100
  %t32 = inttoptr i64 %t31 to ptr
  call void @compiler_2fmir_3aGenInfo_2ector(ptr %t30, ptr %t32)
  call void @llvm.memmove.p0.p0.i64(ptr %l102, ptr %t30, i64 400, i1 false)
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e4
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l100
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 5
  %t38 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t37, i32 0, i32 0
  %t39 = load { i64, ptr }, ptr %t38
  %t40 = extractvalue { i64, ptr } %t39, 1
  %t41 = call ptr @__olang_region_or(ptr %t40, ptr null)
  %t42 = icmp ne ptr %t41, null
  %t43 = select i1 %t42, ptr %t41, ptr null
  %t44 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 4
  %t45 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t44, i32 0, i32 2
  %t46 = load { i64, ptr }, ptr %t45
  %t47 = extractvalue { i64, ptr } %t46, 1
  %t48 = call ptr @__olang_region_or(ptr %t47, ptr null)
  %t49 = icmp ne ptr %t48, null
  %t50 = select i1 %t49, ptr %t48, ptr %t43
  %t51 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 4
  %t52 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t51, i32 0, i32 1
  %t53 = load { i64, ptr }, ptr %t52
  %t54 = extractvalue { i64, ptr } %t53, 1
  %t55 = call ptr @__olang_region_or(ptr %t54, ptr null)
  %t56 = icmp ne ptr %t55, null
  %t57 = select i1 %t56, ptr %t55, ptr %t50
  %t58 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 4
  %t59 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t58, i32 0, i32 0
  %t60 = load { i64, ptr }, ptr %t59
  %t61 = extractvalue { i64, ptr } %t60, 1
  %t62 = call ptr @__olang_region_or(ptr %t61, ptr null)
  %t63 = icmp ne ptr %t62, null
  %t64 = select i1 %t63, ptr %t62, ptr %t57
  %t65 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 3
  %t66 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t65, i32 0, i32 2
  %t67 = load { i64, ptr }, ptr %t66
  %t68 = extractvalue { i64, ptr } %t67, 1
  %t69 = call ptr @__olang_region_or(ptr %t68, ptr null)
  %t70 = icmp ne ptr %t69, null
  %t71 = select i1 %t70, ptr %t69, ptr %t64
  %t72 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 3
  %t73 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t72, i32 0, i32 1
  %t74 = load { i64, ptr }, ptr %t73
  %t75 = extractvalue { i64, ptr } %t74, 1
  %t76 = call ptr @__olang_region_or(ptr %t75, ptr null)
  %t77 = icmp ne ptr %t76, null
  %t78 = select i1 %t77, ptr %t76, ptr %t71
  %t79 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 3
  %t80 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t79, i32 0, i32 0
  %t81 = load { i64, ptr }, ptr %t80
  %t82 = extractvalue { i64, ptr } %t81, 1
  %t83 = call ptr @__olang_region_or(ptr %t82, ptr null)
  %t84 = icmp ne ptr %t83, null
  %t85 = select i1 %t84, ptr %t83, ptr %t78
  %t86 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 2
  %t87 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t86, i32 0, i32 2
  %t88 = load { i64, ptr }, ptr %t87
  %t89 = extractvalue { i64, ptr } %t88, 1
  %t90 = call ptr @__olang_region_or(ptr %t89, ptr null)
  %t91 = icmp ne ptr %t90, null
  %t92 = select i1 %t91, ptr %t90, ptr %t85
  %t93 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 2
  %t94 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t93, i32 0, i32 1
  %t95 = load { i64, ptr }, ptr %t94
  %t96 = extractvalue { i64, ptr } %t95, 1
  %t97 = call ptr @__olang_region_or(ptr %t96, ptr null)
  %t98 = icmp ne ptr %t97, null
  %t99 = select i1 %t98, ptr %t97, ptr %t92
  %t100 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 2
  %t101 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t100, i32 0, i32 0
  %t102 = load { i64, ptr }, ptr %t101
  %t103 = extractvalue { i64, ptr } %t102, 1
  %t104 = call ptr @__olang_region_or(ptr %t103, ptr null)
  %t105 = icmp ne ptr %t104, null
  %t106 = select i1 %t105, ptr %t104, ptr %t99
  %t107 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 1
  %t108 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t107, i32 0, i32 2
  %t109 = load { i64, ptr }, ptr %t108
  %t110 = extractvalue { i64, ptr } %t109, 1
  %t111 = call ptr @__olang_region_or(ptr %t110, ptr null)
  %t112 = icmp ne ptr %t111, null
  %t113 = select i1 %t112, ptr %t111, ptr %t106
  %t114 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 1
  %t115 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t114, i32 0, i32 1
  %t116 = load { i64, ptr }, ptr %t115
  %t117 = extractvalue { i64, ptr } %t116, 1
  %t118 = call ptr @__olang_region_or(ptr %t117, ptr null)
  %t119 = icmp ne ptr %t118, null
  %t120 = select i1 %t119, ptr %t118, ptr %t113
  %t121 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 1
  %t122 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t121, i32 0, i32 0
  %t123 = load { i64, ptr }, ptr %t122
  %t124 = extractvalue { i64, ptr } %t123, 1
  %t125 = call ptr @__olang_region_or(ptr %t124, ptr null)
  %t126 = icmp ne ptr %t125, null
  %t127 = select i1 %t126, ptr %t125, ptr %t120
  %t128 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 0
  %t129 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t128, i32 0, i32 2
  %t130 = load { i64, ptr }, ptr %t129
  %t131 = extractvalue { i64, ptr } %t130, 1
  %t132 = call ptr @__olang_region_or(ptr %t131, ptr null)
  %t133 = icmp ne ptr %t132, null
  %t134 = select i1 %t133, ptr %t132, ptr %t127
  %t135 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 0
  %t136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t135, i32 0, i32 1
  %t137 = load { i64, ptr }, ptr %t136
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = call ptr @__olang_region_or(ptr %t138, ptr null)
  %t140 = icmp ne ptr %t139, null
  %t141 = select i1 %t140, ptr %t139, ptr %t134
  %t142 = getelementptr %"compiler/mir:GenInfo", ptr %l102, i32 0, i32 0
  %t143 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t142, i32 0, i32 0
  %t144 = load { i64, ptr }, ptr %t143
  %t145 = extractvalue { i64, ptr } %t144, 1
  %t146 = call ptr @__olang_region_or(ptr %t145, ptr null)
  %t147 = icmp ne ptr %t146, null
  %t148 = select i1 %t147, ptr %t146, ptr %t141
  %t149 = icmp eq ptr %t148, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t149)
  br label %bb10
bb10:
  call void @llvm.memmove.p0.p0.i64(ptr %l6, ptr %l102, i64 400, i1 false)
  store i1 false, ptr %l7, !tbaa !21
  store i64 268435456, ptr %l8, !tbaa !24
  store i64 2000, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t150 = ptrtoint ptr %v1 to i64
  store i64 %t150, ptr %l104, !tbaa !24
  %t151 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e9
  br i1 %t151, label %bb11, label %bb12
bb11:
  %t153 = call ptr @__olang_region_make(ptr %v1)
  %t154 = ptrtoint ptr %t153 to i64
  store i64 %t154, ptr %l104, !tbaa !24
  br label %bb12
bb12:
  %t155 = load i64, ptr %l104
  %t156 = inttoptr i64 %t155 to ptr
  %t157 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t156, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t157, ptr %l106
  br label %bb13
bb13:
  %t158 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e9
  br i1 %t158, label %bb14, label %bb15
bb14:
  %t160 = load i64, ptr %l104
  %t161 = inttoptr i64 %t160 to ptr
  %t162 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = icmp ne ptr %t165, null
  %t167 = select i1 %t166, ptr %t165, ptr null
  %t168 = icmp eq ptr %t167, %t161
  call void @__olang_region_settle(ptr %t161, i1 %t168)
  br label %bb15
bb15:
  %t169 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l106
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t169, ptr %l11
  %t170 = ptrtoint ptr %v1 to i64
  store i64 %t170, ptr %l108, !tbaa !24
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e10
  br i1 %t171, label %bb16, label %bb17
bb16:
  %t173 = call ptr @__olang_region_make(ptr %v1)
  %t174 = ptrtoint ptr %t173 to i64
  store i64 %t174, ptr %l108, !tbaa !24
  br label %bb17
bb17:
  %t175 = load i64, ptr %l108
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %t176, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t177, ptr %l110
  br label %bb18
bb18:
  %t178 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e10
  br i1 %t178, label %bb19, label %bb20
bb19:
  %t180 = load i64, ptr %l108
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110, i32 0, i32 0
  %t183 = load { i64, ptr }, ptr %t182
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = call ptr @__olang_region_or(ptr %t184, ptr null)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  %t188 = icmp eq ptr %t187, %t181
  call void @__olang_region_settle(ptr %t181, i1 %t188)
  br label %bb20
bb20:
  %t189 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l110
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t189, ptr %l12
  store i64 0, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  store i1 false, ptr %l15, !tbaa !21
  %t190 = ptrtoint ptr %v1 to i64
  store i64 %t190, ptr %l112, !tbaa !24
  %t191 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e14
  br i1 %t191, label %bb21, label %bb22
bb21:
  %t193 = call ptr @__olang_region_make(ptr %v1)
  %t194 = ptrtoint ptr %t193 to i64
  store i64 %t194, ptr %l112, !tbaa !24
  br label %bb22
bb22:
  %t195 = load i64, ptr %l112
  %t196 = inttoptr i64 %t195 to ptr
  %t197 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t196)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t197, ptr %l114
  br label %bb23
bb23:
  %t198 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e14
  br i1 %t198, label %bb24, label %bb25
bb24:
  %t200 = load i64, ptr %l112
  %t201 = inttoptr i64 %t200 to ptr
  %t202 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114, i32 0, i32 2
  %t203 = load { i64, ptr }, ptr %t202
  %t204 = extractvalue { i64, ptr } %t203, 1
  %t205 = call ptr @__olang_region_or(ptr %t204, ptr null)
  %t206 = icmp ne ptr %t205, null
  %t207 = select i1 %t206, ptr %t205, ptr null
  %t208 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114, i32 0, i32 1
  %t209 = load { i64, ptr }, ptr %t208
  %t210 = extractvalue { i64, ptr } %t209, 1
  %t211 = call ptr @__olang_region_or(ptr %t210, ptr null)
  %t212 = icmp ne ptr %t211, null
  %t213 = select i1 %t212, ptr %t211, ptr %t207
  %t214 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr %t213
  %t220 = icmp eq ptr %t219, %t201
  call void @__olang_region_settle(ptr %t201, i1 %t220)
  br label %bb25
bb25:
  %t221 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l114
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t221, ptr %l16
  %t222 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t222, ptr %l17
  %t224 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  store i32 %t224, ptr %l18, !tbaa !23
  store { i64, [5 x i64] } zeroinitializer, ptr %t226
  %t227 = getelementptr { i64, [5 x i64] }, ptr %t226, i32 0, i32 0
  store i64 0, ptr %t227
  %t228 = load { i64, [5 x i64] }, ptr %t226
  store { i64, [5 x i64] } %t228, ptr %l19
  store i64 -1, ptr %l20, !tbaa !24
  store i1 false, ptr %l21, !tbaa !21
  store i1 false, ptr %l22, !tbaa !21
  %t230 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t230, ptr %l119
  br label %bb26
bb26:
  %t231 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l119
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t231, ptr %l23
  %t232 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t232, ptr %l120
  br label %bb27
bb27:
  %t233 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l120
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t233, ptr %l24
  call void @llvm.memset.p0.i64(ptr %l121, i8 0, i64 264, i1 false)
  %t234 = icmp sgt i64 64, 0
  br i1 %t234, label %bb28, label %bb29
bb28:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3acfn(ptr %t236, ptr %v1)
  call void @llvm.memmove.p0.p0.i64(ptr %l123, ptr %t236, i64 264, i1 false)
  br label %bb30
bb29:
  %t237 = icmp sge i64 64, 0
  br i1 %t237, label %bb31, label %bb32
bb30:
  call void @llvm.memmove.p0.p0.i64(ptr %l121, ptr %l123, i64 264, i1 false)
  br label %bb29
bb31:
  %t239 = icmp sle i64 64, 34937015291116575
  br i1 %t239, label %bb33, label %bb34
bb32:
  call void @__olang_check_failed(ptr @olang_loc_cc08951c194f6b90_8a6bb4cf02ef6404)
  unreachable
bb33:
  %t241 = mul i64 64, 264
  %t242 = call ptr @__olang_scope_alloc(ptr %v1, i64 %t241)
  store i64 0, ptr %t243
  br label %fill.244
fill.244:
  %t247 = load i64, ptr %t243
  %t248 = icmp slt i64 %t247, 64
  br i1 %t248, label %fillb.245, label %filld.246
fillb.245:
  %t249 = getelementptr %"compiler/eval:cfn", ptr %t242, i64 %t247
  call void @llvm.memmove.p0.p0.i64(ptr %t249, ptr %l121, i64 264, i1 false)
  %t250 = add i64 %t247, 1
  store i64 %t250, ptr %t243
  br label %fill.244
filld.246:
  %t251 = insertvalue { i64, ptr } undef, i64 64, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t242, 1
  store { i64, ptr } %t252, ptr %l25, !tbaa !27
  %t254 = ptrtoint ptr %v1 to i64
  store i64 %t254, ptr %l127, !tbaa !24
  %t255 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e24
  br i1 %t255, label %bb35, label %bb36
bb34:
  call void @__olang_check_failed(ptr @olang_loc_cc08951c194f6b90_8a6bb4cf02ef6404)
  unreachable
bb35:
  %t257 = call ptr @__olang_region_make(ptr %v1)
  %t258 = ptrtoint ptr %t257 to i64
  store i64 %t258, ptr %l127, !tbaa !24
  br label %bb36
bb36:
  %t259 = icmp sge i64 1024, 0
  br i1 %t259, label %bb37, label %bb38
bb37:
  %t261 = icmp sle i64 1024, 1152921504606846975
  br i1 %t261, label %bb39, label %bb40
bb38:
  call void @__olang_check_failed(ptr @olang_loc_dae68cb4e78893bd_9d05ee8fba2ee511)
  unreachable
bb39:
  %t263 = mul i64 1024, 8
  %t264 = load i64, ptr %l127
  %t265 = inttoptr i64 %t264 to ptr
  %t266 = call ptr @__olang_scope_alloc(ptr %t265, i64 %t263)
  store i64 0, ptr %t267
  br label %fill.268
fill.268:
  %t271 = load i64, ptr %t267
  %t272 = icmp slt i64 %t271, 1024
  br i1 %t272, label %fillb.269, label %filld.270
fillb.269:
  %t273 = getelementptr i64, ptr %t266, i64 %t271
  store i64 -1, ptr %t273
  %t274 = add i64 %t271, 1
  store i64 %t274, ptr %t267
  br label %fill.268
filld.270:
  %t275 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t276 = insertvalue { i64, ptr } %t275, ptr %t266, 1
  store { i64, ptr } %t276, ptr %l26, !tbaa !27
  %t278 = ptrtoint ptr %v1 to i64
  store i64 %t278, ptr %l132, !tbaa !24
  %t279 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e25
  br i1 %t279, label %bb41, label %bb42
bb40:
  call void @__olang_check_failed(ptr @olang_loc_dae68cb4e78893bd_9d05ee8fba2ee511)
  unreachable
bb41:
  %t281 = call ptr @__olang_region_make(ptr %v1)
  %t282 = ptrtoint ptr %t281 to i64
  store i64 %t282, ptr %l132, !tbaa !24
  br label %bb42
bb42:
  %t283 = icmp sge i64 1024, 0
  br i1 %t283, label %bb43, label %bb44
bb43:
  %t285 = icmp sle i64 1024, 1152921504606846975
  br i1 %t285, label %bb45, label %bb46
bb44:
  call void @__olang_check_failed(ptr @olang_loc_345703ed03c4ae7e_2d508d6edb3102f2)
  unreachable
bb45:
  %t287 = mul i64 1024, 8
  %t288 = load i64, ptr %l132
  %t289 = inttoptr i64 %t288 to ptr
  %t290 = call ptr @__olang_scope_alloc(ptr %t289, i64 %t287)
  store i64 0, ptr %t291
  br label %fill.292
fill.292:
  %t295 = load i64, ptr %t291
  %t296 = icmp slt i64 %t295, 1024
  br i1 %t296, label %fillb.293, label %filld.294
fillb.293:
  %t297 = getelementptr i64, ptr %t290, i64 %t295
  store i64 -1, ptr %t297
  %t298 = add i64 %t295, 1
  store i64 %t298, ptr %t291
  br label %fill.292
filld.294:
  %t299 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t300 = insertvalue { i64, ptr } %t299, ptr %t290, 1
  store { i64, ptr } %t300, ptr %l27, !tbaa !27
  %t302 = ptrtoint ptr %v1 to i64
  store i64 %t302, ptr %l137, !tbaa !24
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e26
  br i1 %t303, label %bb47, label %bb48
bb46:
  call void @__olang_check_failed(ptr @olang_loc_345703ed03c4ae7e_2d508d6edb3102f2)
  unreachable
bb47:
  %t305 = call ptr @__olang_region_make(ptr %v1)
  %t306 = ptrtoint ptr %t305 to i64
  store i64 %t306, ptr %l137, !tbaa !24
  br label %bb48
bb48:
  %t307 = icmp sge i64 1024, 0
  br i1 %t307, label %bb49, label %bb50
bb49:
  %t309 = icmp sle i64 1024, 1152921504606846975
  br i1 %t309, label %bb51, label %bb52
bb50:
  call void @__olang_check_failed(ptr @olang_loc_956eea0cec0303b3_853c962c10b536e7)
  unreachable
bb51:
  %t311 = mul i64 1024, 8
  %t312 = load i64, ptr %l137
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = call ptr @__olang_scope_alloc(ptr %t313, i64 %t311)
  store i64 0, ptr %t315
  br label %fill.316
fill.316:
  %t319 = load i64, ptr %t315
  %t320 = icmp slt i64 %t319, 1024
  br i1 %t320, label %fillb.317, label %filld.318
fillb.317:
  %t321 = getelementptr i64, ptr %t314, i64 %t319
  store i64 -1, ptr %t321
  %t322 = add i64 %t319, 1
  store i64 %t322, ptr %t315
  br label %fill.316
filld.318:
  %t323 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t324 = insertvalue { i64, ptr } %t323, ptr %t314, 1
  store { i64, ptr } %t324, ptr %l28, !tbaa !27
  %t326 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t326, ptr %l142
  br label %bb53
bb52:
  call void @__olang_check_failed(ptr @olang_loc_956eea0cec0303b3_853c962c10b536e7)
  unreachable
bb53:
  %t327 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l142
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t327, ptr %l29
  %t328 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t328, ptr %l143
  br label %bb54
bb54:
  %t329 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l143
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t329, ptr %l30
  %t330 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t330, ptr %l144
  br label %bb55
bb55:
  %t331 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l144
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t331, ptr %l31
  %t332 = ptrtoint ptr %v1 to i64
  store i64 %t332, ptr %l145, !tbaa !24
  %t333 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e30
  br i1 %t333, label %bb56, label %bb57
bb56:
  %t335 = call ptr @__olang_region_make(ptr %v1)
  %t336 = ptrtoint ptr %t335 to i64
  store i64 %t336, ptr %l145, !tbaa !24
  br label %bb57
bb57:
  %t337 = load i64, ptr %l145
  %t338 = inttoptr i64 %t337 to ptr
  %t339 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t338, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t339, ptr %l147
  br label %bb58
bb58:
  %t340 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e30
  br i1 %t340, label %bb59, label %bb60
bb59:
  %t342 = load i64, ptr %l145
  %t343 = inttoptr i64 %t342 to ptr
  %t344 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147, i32 0, i32 0
  %t345 = load { i64, ptr }, ptr %t344
  %t346 = extractvalue { i64, ptr } %t345, 1
  %t347 = call ptr @__olang_region_or(ptr %t346, ptr null)
  %t348 = icmp ne ptr %t347, null
  %t349 = select i1 %t348, ptr %t347, ptr null
  %t350 = icmp eq ptr %t349, %t343
  call void @__olang_region_settle(ptr %t343, i1 %t350)
  br label %bb60
bb60:
  %t351 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l147
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t351, ptr %l32
  %t352 = ptrtoint ptr %v1 to i64
  store i64 %t352, ptr %l149, !tbaa !24
  %t353 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e31
  br i1 %t353, label %bb61, label %bb62
bb61:
  %t355 = call ptr @__olang_region_make(ptr %v1)
  %t356 = ptrtoint ptr %t355 to i64
  store i64 %t356, ptr %l149, !tbaa !24
  br label %bb62
bb62:
  %t357 = load i64, ptr %l149
  %t358 = inttoptr i64 %t357 to ptr
  %t359 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e(ptr %t358)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t359, ptr %l151
  br label %bb63
bb63:
  %t360 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e31
  br i1 %t360, label %bb64, label %bb65
bb64:
  %t362 = load i64, ptr %l149
  %t363 = inttoptr i64 %t362 to ptr
  %t364 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 2
  %t365 = load { i64, ptr }, ptr %t364
  %t366 = extractvalue { i64, ptr } %t365, 1
  %t367 = call ptr @__olang_region_or(ptr %t366, ptr null)
  %t368 = icmp ne ptr %t367, null
  %t369 = select i1 %t368, ptr %t367, ptr null
  %t370 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 1
  %t371 = load { i64, ptr }, ptr %t370
  %t372 = extractvalue { i64, ptr } %t371, 1
  %t373 = call ptr @__olang_region_or(ptr %t372, ptr null)
  %t374 = icmp ne ptr %t373, null
  %t375 = select i1 %t374, ptr %t373, ptr %t369
  %t376 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151, i32 0, i32 0
  %t377 = load { i64, ptr }, ptr %t376
  %t378 = extractvalue { i64, ptr } %t377, 1
  %t379 = call ptr @__olang_region_or(ptr %t378, ptr null)
  %t380 = icmp ne ptr %t379, null
  %t381 = select i1 %t380, ptr %t379, ptr %t375
  %t382 = icmp eq ptr %t381, %t363
  call void @__olang_region_settle(ptr %t363, i1 %t382)
  br label %bb65
bb65:
  %t383 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l151
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t383, ptr %l33
  %t384 = ptrtoint ptr %v1 to i64
  store i64 %t384, ptr %l153, !tbaa !24
  %t385 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e32
  br i1 %t385, label %bb66, label %bb67
bb66:
  %t387 = call ptr @__olang_region_make(ptr %v1)
  %t388 = ptrtoint ptr %t387 to i64
  store i64 %t388, ptr %l153, !tbaa !24
  br label %bb67
bb67:
  %t389 = load i64, ptr %l153
  %t390 = inttoptr i64 %t389 to ptr
  %t391 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t390)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t391, ptr %l155
  br label %bb68
bb68:
  %t392 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e32
  br i1 %t392, label %bb69, label %bb70
bb69:
  %t394 = load i64, ptr %l153
  %t395 = inttoptr i64 %t394 to ptr
  %t396 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 2
  %t397 = load { i64, ptr }, ptr %t396
  %t398 = extractvalue { i64, ptr } %t397, 1
  %t399 = call ptr @__olang_region_or(ptr %t398, ptr null)
  %t400 = icmp ne ptr %t399, null
  %t401 = select i1 %t400, ptr %t399, ptr null
  %t402 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 1
  %t403 = load { i64, ptr }, ptr %t402
  %t404 = extractvalue { i64, ptr } %t403, 1
  %t405 = call ptr @__olang_region_or(ptr %t404, ptr null)
  %t406 = icmp ne ptr %t405, null
  %t407 = select i1 %t406, ptr %t405, ptr %t401
  %t408 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155, i32 0, i32 0
  %t409 = load { i64, ptr }, ptr %t408
  %t410 = extractvalue { i64, ptr } %t409, 1
  %t411 = call ptr @__olang_region_or(ptr %t410, ptr null)
  %t412 = icmp ne ptr %t411, null
  %t413 = select i1 %t412, ptr %t411, ptr %t407
  %t414 = icmp eq ptr %t413, %t395
  call void @__olang_region_settle(ptr %t395, i1 %t414)
  br label %bb70
bb70:
  %t415 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l155
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t415, ptr %l34
  %t416 = ptrtoint ptr %v1 to i64
  store i64 %t416, ptr %l157, !tbaa !24
  %t417 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e33
  br i1 %t417, label %bb71, label %bb72
bb71:
  %t419 = call ptr @__olang_region_make(ptr %v1)
  %t420 = ptrtoint ptr %t419 to i64
  store i64 %t420, ptr %l157, !tbaa !24
  br label %bb72
bb72:
  %t421 = load i64, ptr %l157
  %t422 = inttoptr i64 %t421 to ptr
  %t423 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t422)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t423, ptr %l159
  br label %bb73
bb73:
  %t424 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e33
  br i1 %t424, label %bb74, label %bb75
bb74:
  %t426 = load i64, ptr %l157
  %t427 = inttoptr i64 %t426 to ptr
  %t428 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159, i32 0, i32 2
  %t429 = load { i64, ptr }, ptr %t428
  %t430 = extractvalue { i64, ptr } %t429, 1
  %t431 = call ptr @__olang_region_or(ptr %t430, ptr null)
  %t432 = icmp ne ptr %t431, null
  %t433 = select i1 %t432, ptr %t431, ptr null
  %t434 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159, i32 0, i32 1
  %t435 = load { i64, ptr }, ptr %t434
  %t436 = extractvalue { i64, ptr } %t435, 1
  %t437 = call ptr @__olang_region_or(ptr %t436, ptr null)
  %t438 = icmp ne ptr %t437, null
  %t439 = select i1 %t438, ptr %t437, ptr %t433
  %t440 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159, i32 0, i32 0
  %t441 = load { i64, ptr }, ptr %t440
  %t442 = extractvalue { i64, ptr } %t441, 1
  %t443 = call ptr @__olang_region_or(ptr %t442, ptr null)
  %t444 = icmp ne ptr %t443, null
  %t445 = select i1 %t444, ptr %t443, ptr %t439
  %t446 = icmp eq ptr %t445, %t427
  call void @__olang_region_settle(ptr %t427, i1 %t446)
  br label %bb75
bb75:
  %t447 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l159
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t447, ptr %l35
  %t448 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2fmir_3aFnKey_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t448, ptr %l161
  br label %bb76
bb76:
  %t449 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l161
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t449, ptr %l36
  %t450 = ptrtoint ptr %v1 to i64
  store i64 %t450, ptr %l162, !tbaa !24
  %t451 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e35
  br i1 %t451, label %bb77, label %bb78
bb77:
  %t453 = call ptr @__olang_region_make(ptr %v1)
  %t454 = ptrtoint ptr %t453 to i64
  store i64 %t454, ptr %l162, !tbaa !24
  br label %bb78
bb78:
  %t455 = load i64, ptr %l162
  %t456 = inttoptr i64 %t455 to ptr
  %t457 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e(ptr %t456)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t457, ptr %l164
  br label %bb79
bb79:
  %t458 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e35
  br i1 %t458, label %bb80, label %bb81
bb80:
  %t460 = load i64, ptr %l162
  %t461 = inttoptr i64 %t460 to ptr
  %t462 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l164, i32 0, i32 2
  %t463 = load { i64, ptr }, ptr %t462
  %t464 = extractvalue { i64, ptr } %t463, 1
  %t465 = call ptr @__olang_region_or(ptr %t464, ptr null)
  %t466 = icmp ne ptr %t465, null
  %t467 = select i1 %t466, ptr %t465, ptr null
  %t468 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l164, i32 0, i32 1
  %t469 = load { i64, ptr }, ptr %t468
  %t470 = extractvalue { i64, ptr } %t469, 1
  %t471 = call ptr @__olang_region_or(ptr %t470, ptr null)
  %t472 = icmp ne ptr %t471, null
  %t473 = select i1 %t472, ptr %t471, ptr %t467
  %t474 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l164, i32 0, i32 0
  %t475 = load { i64, ptr }, ptr %t474
  %t476 = extractvalue { i64, ptr } %t475, 1
  %t477 = call ptr @__olang_region_or(ptr %t476, ptr null)
  %t478 = icmp ne ptr %t477, null
  %t479 = select i1 %t478, ptr %t477, ptr %t473
  %t480 = icmp eq ptr %t479, %t461
  call void @__olang_region_settle(ptr %t461, i1 %t480)
  br label %bb81
bb81:
  %t481 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l164
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t481, ptr %l37
  %t482 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKey_3e_26_3e(ptr %v1)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t482, ptr %l166
  br label %bb82
bb82:
  %t483 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l166
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t483, ptr %l38
  %t484 = ptrtoint ptr %v1 to i64
  store i64 %t484, ptr %l167, !tbaa !24
  %t485 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e37
  br i1 %t485, label %bb83, label %bb84
bb83:
  %t487 = call ptr @__olang_region_make(ptr %v1)
  %t488 = ptrtoint ptr %t487 to i64
  store i64 %t488, ptr %l167, !tbaa !24
  br label %bb84
bb84:
  %t489 = load i64, ptr %l167
  %t490 = inttoptr i64 %t489 to ptr
  %t491 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t490)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t491, ptr %l169
  br label %bb85
bb85:
  %t492 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e37
  br i1 %t492, label %bb86, label %bb87
bb86:
  %t494 = load i64, ptr %l167
  %t495 = inttoptr i64 %t494 to ptr
  %t496 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169, i32 0, i32 2
  %t497 = load { i64, ptr }, ptr %t496
  %t498 = extractvalue { i64, ptr } %t497, 1
  %t499 = call ptr @__olang_region_or(ptr %t498, ptr null)
  %t500 = icmp ne ptr %t499, null
  %t501 = select i1 %t500, ptr %t499, ptr null
  %t502 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169, i32 0, i32 1
  %t503 = load { i64, ptr }, ptr %t502
  %t504 = extractvalue { i64, ptr } %t503, 1
  %t505 = call ptr @__olang_region_or(ptr %t504, ptr null)
  %t506 = icmp ne ptr %t505, null
  %t507 = select i1 %t506, ptr %t505, ptr %t501
  %t508 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169, i32 0, i32 0
  %t509 = load { i64, ptr }, ptr %t508
  %t510 = extractvalue { i64, ptr } %t509, 1
  %t511 = call ptr @__olang_region_or(ptr %t510, ptr null)
  %t512 = icmp ne ptr %t511, null
  %t513 = select i1 %t512, ptr %t511, ptr %t507
  %t514 = icmp eq ptr %t513, %t495
  call void @__olang_region_settle(ptr %t495, i1 %t514)
  br label %bb87
bb87:
  %t515 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l169
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t515, ptr %l39
  %t516 = ptrtoint ptr %v1 to i64
  store i64 %t516, ptr %l171, !tbaa !24
  %t517 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e38
  br i1 %t517, label %bb88, label %bb89
bb88:
  %t519 = call ptr @__olang_region_make(ptr %v1)
  %t520 = ptrtoint ptr %t519 to i64
  store i64 %t520, ptr %l171, !tbaa !24
  br label %bb89
bb89:
  %t521 = load i64, ptr %l171
  %t522 = inttoptr i64 %t521 to ptr
  %t523 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t522)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t523, ptr %l173
  br label %bb90
bb90:
  %t524 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e38
  br i1 %t524, label %bb91, label %bb92
bb91:
  %t526 = load i64, ptr %l171
  %t527 = inttoptr i64 %t526 to ptr
  %t528 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173, i32 0, i32 2
  %t529 = load { i64, ptr }, ptr %t528
  %t530 = extractvalue { i64, ptr } %t529, 1
  %t531 = call ptr @__olang_region_or(ptr %t530, ptr null)
  %t532 = icmp ne ptr %t531, null
  %t533 = select i1 %t532, ptr %t531, ptr null
  %t534 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173, i32 0, i32 1
  %t535 = load { i64, ptr }, ptr %t534
  %t536 = extractvalue { i64, ptr } %t535, 1
  %t537 = call ptr @__olang_region_or(ptr %t536, ptr null)
  %t538 = icmp ne ptr %t537, null
  %t539 = select i1 %t538, ptr %t537, ptr %t533
  %t540 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173, i32 0, i32 0
  %t541 = load { i64, ptr }, ptr %t540
  %t542 = extractvalue { i64, ptr } %t541, 1
  %t543 = call ptr @__olang_region_or(ptr %t542, ptr null)
  %t544 = icmp ne ptr %t543, null
  %t545 = select i1 %t544, ptr %t543, ptr %t539
  %t546 = icmp eq ptr %t545, %t527
  call void @__olang_region_settle(ptr %t527, i1 %t546)
  br label %bb92
bb92:
  %t547 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l173
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t547, ptr %l40
  %t548 = ptrtoint ptr %v1 to i64
  store i64 %t548, ptr %l175, !tbaa !24
  %t549 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e39
  br i1 %t549, label %bb93, label %bb94
bb93:
  %t551 = call ptr @__olang_region_make(ptr %v1)
  %t552 = ptrtoint ptr %t551 to i64
  store i64 %t552, ptr %l175, !tbaa !24
  br label %bb94
bb94:
  %t553 = load i64, ptr %l175
  %t554 = inttoptr i64 %t553 to ptr
  %t555 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2ector(ptr %t554, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t555, ptr %l177
  br label %bb95
bb95:
  %t556 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e39
  br i1 %t556, label %bb96, label %bb97
bb96:
  %t558 = load i64, ptr %l175
  %t559 = inttoptr i64 %t558 to ptr
  %t560 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177, i32 0, i32 0
  %t561 = load { i64, ptr }, ptr %t560
  %t562 = extractvalue { i64, ptr } %t561, 1
  %t563 = call ptr @__olang_region_or(ptr %t562, ptr null)
  %t564 = icmp ne ptr %t563, null
  %t565 = select i1 %t564, ptr %t563, ptr null
  %t566 = icmp eq ptr %t565, %t559
  call void @__olang_region_settle(ptr %t559, i1 %t566)
  br label %bb97
bb97:
  %t567 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l177
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t567, ptr %l41
  %t568 = ptrtoint ptr %v1 to i64
  store i64 %t568, ptr %l179, !tbaa !24
  %t569 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e40
  br i1 %t569, label %bb98, label %bb99
bb98:
  %t571 = call ptr @__olang_region_make(ptr %v1)
  %t572 = ptrtoint ptr %t571 to i64
  store i64 %t572, ptr %l179, !tbaa !24
  br label %bb99
bb99:
  %t573 = load i64, ptr %l179
  %t574 = inttoptr i64 %t573 to ptr
  %t575 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e(ptr %t574)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t575, ptr %l181
  br label %bb100
bb100:
  %t576 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e40
  br i1 %t576, label %bb101, label %bb102
bb101:
  %t578 = load i64, ptr %l179
  %t579 = inttoptr i64 %t578 to ptr
  %t580 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181, i32 0, i32 2
  %t581 = load { i64, ptr }, ptr %t580
  %t582 = extractvalue { i64, ptr } %t581, 1
  %t583 = call ptr @__olang_region_or(ptr %t582, ptr null)
  %t584 = icmp ne ptr %t583, null
  %t585 = select i1 %t584, ptr %t583, ptr null
  %t586 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181, i32 0, i32 1
  %t587 = load { i64, ptr }, ptr %t586
  %t588 = extractvalue { i64, ptr } %t587, 1
  %t589 = call ptr @__olang_region_or(ptr %t588, ptr null)
  %t590 = icmp ne ptr %t589, null
  %t591 = select i1 %t590, ptr %t589, ptr %t585
  %t592 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181, i32 0, i32 0
  %t593 = load { i64, ptr }, ptr %t592
  %t594 = extractvalue { i64, ptr } %t593, 1
  %t595 = call ptr @__olang_region_or(ptr %t594, ptr null)
  %t596 = icmp ne ptr %t595, null
  %t597 = select i1 %t596, ptr %t595, ptr %t591
  %t598 = icmp eq ptr %t597, %t579
  call void @__olang_region_settle(ptr %t579, i1 %t598)
  br label %bb102
bb102:
  %t599 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l181
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t599, ptr %l42
  %t600 = ptrtoint ptr %v1 to i64
  store i64 %t600, ptr %l183, !tbaa !24
  %t601 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e41
  br i1 %t601, label %bb103, label %bb104
bb103:
  %t603 = call ptr @__olang_region_make(ptr %v1)
  %t604 = ptrtoint ptr %t603 to i64
  store i64 %t604, ptr %l183, !tbaa !24
  br label %bb104
bb104:
  %t605 = load i64, ptr %l183
  %t606 = inttoptr i64 %t605 to ptr
  %t607 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e(ptr %t606)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t607, ptr %l185
  br label %bb105
bb105:
  %t608 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e41
  br i1 %t608, label %bb106, label %bb107
bb106:
  %t610 = load i64, ptr %l183
  %t611 = inttoptr i64 %t610 to ptr
  %t612 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185, i32 0, i32 2
  %t613 = load { i64, ptr }, ptr %t612
  %t614 = extractvalue { i64, ptr } %t613, 1
  %t615 = call ptr @__olang_region_or(ptr %t614, ptr null)
  %t616 = icmp ne ptr %t615, null
  %t617 = select i1 %t616, ptr %t615, ptr null
  %t618 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185, i32 0, i32 1
  %t619 = load { i64, ptr }, ptr %t618
  %t620 = extractvalue { i64, ptr } %t619, 1
  %t621 = call ptr @__olang_region_or(ptr %t620, ptr null)
  %t622 = icmp ne ptr %t621, null
  %t623 = select i1 %t622, ptr %t621, ptr %t617
  %t624 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185, i32 0, i32 0
  %t625 = load { i64, ptr }, ptr %t624
  %t626 = extractvalue { i64, ptr } %t625, 1
  %t627 = call ptr @__olang_region_or(ptr %t626, ptr null)
  %t628 = icmp ne ptr %t627, null
  %t629 = select i1 %t628, ptr %t627, ptr %t623
  %t630 = icmp eq ptr %t629, %t611
  call void @__olang_region_settle(ptr %t611, i1 %t630)
  br label %bb107
bb107:
  %t631 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l185
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t631, ptr %l43
  %t632 = ptrtoint ptr %v1 to i64
  store i64 %t632, ptr %l187, !tbaa !24
  %t633 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e42
  br i1 %t633, label %bb108, label %bb109
bb108:
  %t635 = call ptr @__olang_region_make(ptr %v1)
  %t636 = ptrtoint ptr %t635 to i64
  store i64 %t636, ptr %l187, !tbaa !24
  br label %bb109
bb109:
  %t637 = icmp sge i64 8192, 0
  br i1 %t637, label %bb110, label %bb111
bb110:
  %t639 = icmp sle i64 8192, 1152921504606846975
  br i1 %t639, label %bb112, label %bb113
bb111:
  call void @__olang_check_failed(ptr @olang_loc_f8d056d05e46945c_b066e8956734d578)
  unreachable
bb112:
  %t641 = mul i64 8192, 8
  %t642 = load i64, ptr %l187
  %t643 = inttoptr i64 %t642 to ptr
  %t644 = call ptr @__olang_scope_alloc_zeroed(ptr %t643, i64 %t641)
  %t645 = insertvalue { i64, ptr } undef, i64 8192, 0
  %t646 = insertvalue { i64, ptr } %t645, ptr %t644, 1
  store { i64, ptr } %t646, ptr %l44, !tbaa !27
  %t648 = ptrtoint ptr %v1 to i64
  store i64 %t648, ptr %l192, !tbaa !24
  %t649 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e43
  br i1 %t649, label %bb114, label %bb115
bb113:
  call void @__olang_check_failed(ptr @olang_loc_f8d056d05e46945c_b066e8956734d578)
  unreachable
bb114:
  %t651 = call ptr @__olang_region_make(ptr %v1)
  %t652 = ptrtoint ptr %t651 to i64
  store i64 %t652, ptr %l192, !tbaa !24
  br label %bb115
bb115:
  %t653 = icmp sge i64 8192, 0
  br i1 %t653, label %bb116, label %bb117
bb116:
  %t655 = icmp sle i64 8192, 1152921504606846975
  br i1 %t655, label %bb118, label %bb119
bb117:
  call void @__olang_check_failed(ptr @olang_loc_d51e19176d62df29_641578e9eb8755e5)
  unreachable
bb118:
  %t657 = mul i64 8192, 8
  %t658 = load i64, ptr %l192
  %t659 = inttoptr i64 %t658 to ptr
  %t660 = call ptr @__olang_scope_alloc_zeroed(ptr %t659, i64 %t657)
  %t661 = insertvalue { i64, ptr } undef, i64 8192, 0
  %t662 = insertvalue { i64, ptr } %t661, ptr %t660, 1
  store { i64, ptr } %t662, ptr %l45, !tbaa !27
  store i64 8, ptr %l46, !tbaa !24
  %t664 = ptrtoint ptr %v1 to i64
  store i64 %t664, ptr %l197, !tbaa !24
  %t665 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e45
  br i1 %t665, label %bb120, label %bb121
bb119:
  call void @__olang_check_failed(ptr @olang_loc_d51e19176d62df29_641578e9eb8755e5)
  unreachable
bb120:
  %t667 = call ptr @__olang_region_make(ptr %v1)
  %t668 = ptrtoint ptr %t667 to i64
  store i64 %t668, ptr %l197, !tbaa !24
  br label %bb121
bb121:
  %t669 = icmp sge i64 64, 0
  br i1 %t669, label %bb122, label %bb123
bb122:
  %t671 = icmp sle i64 64, 1152921504606846975
  br i1 %t671, label %bb124, label %bb125
bb123:
  call void @__olang_check_failed(ptr @olang_loc_311cf37c7f5d32ea_160682b5288055c6)
  unreachable
bb124:
  %t673 = mul i64 64, 8
  %t674 = load i64, ptr %l197
  %t675 = inttoptr i64 %t674 to ptr
  %t676 = call ptr @__olang_scope_alloc_zeroed(ptr %t675, i64 %t673)
  %t677 = insertvalue { i64, ptr } undef, i64 64, 0
  %t678 = insertvalue { i64, ptr } %t677, ptr %t676, 1
  store { i64, ptr } %t678, ptr %l47, !tbaa !27
  %t680 = ptrtoint ptr %v1 to i64
  store i64 %t680, ptr %l202, !tbaa !24
  %t681 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e46
  br i1 %t681, label %bb126, label %bb127
bb125:
  call void @__olang_check_failed(ptr @olang_loc_311cf37c7f5d32ea_160682b5288055c6)
  unreachable
bb126:
  %t683 = call ptr @__olang_region_make(ptr %v1)
  %t684 = ptrtoint ptr %t683 to i64
  store i64 %t684, ptr %l202, !tbaa !24
  br label %bb127
bb127:
  store %"compiler/eval:alloc" zeroinitializer, ptr %l204
  %t685 = icmp sgt i64 1024, 0
  br i1 %t685, label %bb128, label %bb129
bb128:
  %t687 = call %"compiler/eval:alloc" @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aalloc()
  store %"compiler/eval:alloc" %t687, ptr %l206
  br label %bb130
bb129:
  %t688 = icmp sge i64 1024, 0
  br i1 %t688, label %bb131, label %bb132
bb130:
  %t690 = load %"compiler/eval:alloc", ptr %l206
  store %"compiler/eval:alloc" %t690, ptr %l204
  br label %bb129
bb131:
  %t691 = icmp sle i64 1024, 72057594037927935
  br i1 %t691, label %bb133, label %bb134
bb132:
  call void @__olang_check_failed(ptr @olang_loc_e738991863bfbdbf_25eece77a9bcd95b)
  unreachable
bb133:
  %t693 = mul i64 1024, 128
  %t694 = load i64, ptr %l202
  %t695 = inttoptr i64 %t694 to ptr
  %t696 = call ptr @__olang_scope_alloc(ptr %t695, i64 %t693)
  %t697 = load %"compiler/eval:alloc", ptr %l204
  store i64 0, ptr %t698
  br label %fill.699
fill.699:
  %t702 = load i64, ptr %t698
  %t703 = icmp slt i64 %t702, 1024
  br i1 %t703, label %fillb.700, label %filld.701
fillb.700:
  %t704 = getelementptr %"compiler/eval:alloc", ptr %t696, i64 %t702
  store %"compiler/eval:alloc" %t697, ptr %t704
  %t705 = add i64 %t702, 1
  store i64 %t705, ptr %t698
  br label %fill.699
filld.701:
  %t706 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t707 = insertvalue { i64, ptr } %t706, ptr %t696, 1
  store { i64, ptr } %t707, ptr %l48, !tbaa !27
  store i64 1, ptr %l49, !tbaa !24
  %t709 = ptrtoint ptr %v1 to i64
  store i64 %t709, ptr %l210, !tbaa !24
  %t710 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e48
  br i1 %t710, label %bb135, label %bb136
bb134:
  call void @__olang_check_failed(ptr @olang_loc_e738991863bfbdbf_25eece77a9bcd95b)
  unreachable
bb135:
  %t712 = call ptr @__olang_region_make(ptr %v1)
  %t713 = ptrtoint ptr %t712 to i64
  store i64 %t713, ptr %l210, !tbaa !24
  br label %bb136
bb136:
  %t714 = load i64, ptr %l210
  %t715 = inttoptr i64 %t714 to ptr
  %t716 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t715, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t716, ptr %l212
  br label %bb137
bb137:
  %t717 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e48
  br i1 %t717, label %bb138, label %bb139
bb138:
  %t719 = load i64, ptr %l210
  %t720 = inttoptr i64 %t719 to ptr
  %t721 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212, i32 0, i32 0
  %t722 = load { i64, ptr }, ptr %t721
  %t723 = extractvalue { i64, ptr } %t722, 1
  %t724 = call ptr @__olang_region_or(ptr %t723, ptr null)
  %t725 = icmp ne ptr %t724, null
  %t726 = select i1 %t725, ptr %t724, ptr null
  %t727 = icmp eq ptr %t726, %t720
  call void @__olang_region_settle(ptr %t720, i1 %t727)
  br label %bb139
bb139:
  %t728 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l212
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t728, ptr %l50
  %t729 = ptrtoint ptr %v1 to i64
  store i64 %t729, ptr %l214, !tbaa !24
  %t730 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e49
  br i1 %t730, label %bb140, label %bb141
bb140:
  %t732 = call ptr @__olang_region_make(ptr %v1)
  %t733 = ptrtoint ptr %t732 to i64
  store i64 %t733, ptr %l214, !tbaa !24
  br label %bb141
bb141:
  %t734 = load i64, ptr %l214
  %t735 = inttoptr i64 %t734 to ptr
  %t736 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2ector(ptr %t735, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t736, ptr %l216
  br label %bb142
bb142:
  %t737 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e49
  br i1 %t737, label %bb143, label %bb144
bb143:
  %t739 = load i64, ptr %l214
  %t740 = inttoptr i64 %t739 to ptr
  %t741 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l216, i32 0, i32 0
  %t742 = load { i64, ptr }, ptr %t741
  %t743 = extractvalue { i64, ptr } %t742, 1
  %t744 = call ptr @__olang_region_or(ptr %t743, ptr null)
  %t745 = icmp ne ptr %t744, null
  %t746 = select i1 %t745, ptr %t744, ptr null
  %t747 = icmp eq ptr %t746, %t740
  call void @__olang_region_settle(ptr %t740, i1 %t747)
  br label %bb144
bb144:
  %t748 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l216
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t748, ptr %l51
  %t749 = ptrtoint ptr %v1 to i64
  store i64 %t749, ptr %l218, !tbaa !24
  %t750 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e50
  br i1 %t750, label %bb145, label %bb146
bb145:
  %t752 = call ptr @__olang_region_make(ptr %v1)
  %t753 = ptrtoint ptr %t752 to i64
  store i64 %t753, ptr %l218, !tbaa !24
  br label %bb146
bb146:
  %t754 = load i64, ptr %l218
  %t755 = inttoptr i64 %t754 to ptr
  %t756 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t755, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t756, ptr %l220
  br label %bb147
bb147:
  %t757 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e50
  br i1 %t757, label %bb148, label %bb149
bb148:
  %t759 = load i64, ptr %l218
  %t760 = inttoptr i64 %t759 to ptr
  %t761 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l220, i32 0, i32 0
  %t762 = load { i64, ptr }, ptr %t761
  %t763 = extractvalue { i64, ptr } %t762, 1
  %t764 = call ptr @__olang_region_or(ptr %t763, ptr null)
  %t765 = icmp ne ptr %t764, null
  %t766 = select i1 %t765, ptr %t764, ptr null
  %t767 = icmp eq ptr %t766, %t760
  call void @__olang_region_settle(ptr %t760, i1 %t767)
  br label %bb149
bb149:
  %t768 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l220
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t768, ptr %l52
  %t769 = ptrtoint ptr %v1 to i64
  store i64 %t769, ptr %l222, !tbaa !24
  %t770 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e51
  br i1 %t770, label %bb150, label %bb151
bb150:
  %t772 = call ptr @__olang_region_make(ptr %v1)
  %t773 = ptrtoint ptr %t772 to i64
  store i64 %t773, ptr %l222, !tbaa !24
  br label %bb151
bb151:
  %t774 = load i64, ptr %l222
  %t775 = inttoptr i64 %t774 to ptr
  %t776 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2ector(ptr %t775, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t776, ptr %l224
  br label %bb152
bb152:
  %t777 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e51
  br i1 %t777, label %bb153, label %bb154
bb153:
  %t779 = load i64, ptr %l222
  %t780 = inttoptr i64 %t779 to ptr
  %t781 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224, i32 0, i32 0
  %t782 = load { i64, ptr }, ptr %t781
  %t783 = extractvalue { i64, ptr } %t782, 1
  %t784 = call ptr @__olang_region_or(ptr %t783, ptr null)
  %t785 = icmp ne ptr %t784, null
  %t786 = select i1 %t785, ptr %t784, ptr null
  %t787 = icmp eq ptr %t786, %t780
  call void @__olang_region_settle(ptr %t780, i1 %t787)
  br label %bb154
bb154:
  %t788 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l224
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t788, ptr %l53
  %t789 = ptrtoint ptr %v1 to i64
  store i64 %t789, ptr %l226, !tbaa !24
  %t790 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e52
  br i1 %t790, label %bb155, label %bb156
bb155:
  %t792 = call ptr @__olang_region_make(ptr %v1)
  %t793 = ptrtoint ptr %t792 to i64
  store i64 %t793, ptr %l226, !tbaa !24
  br label %bb156
bb156:
  %t794 = load i64, ptr %l226
  %t795 = inttoptr i64 %t794 to ptr
  %t796 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t795, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t796, ptr %l228
  br label %bb157
bb157:
  %t797 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e52
  br i1 %t797, label %bb158, label %bb159
bb158:
  %t799 = load i64, ptr %l226
  %t800 = inttoptr i64 %t799 to ptr
  %t801 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l228, i32 0, i32 0
  %t802 = load { i64, ptr }, ptr %t801
  %t803 = extractvalue { i64, ptr } %t802, 1
  %t804 = call ptr @__olang_region_or(ptr %t803, ptr null)
  %t805 = icmp ne ptr %t804, null
  %t806 = select i1 %t805, ptr %t804, ptr null
  %t807 = icmp eq ptr %t806, %t800
  call void @__olang_region_settle(ptr %t800, i1 %t807)
  br label %bb159
bb159:
  %t808 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l228
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t808, ptr %l54
  %t809 = ptrtoint ptr %v1 to i64
  store i64 %t809, ptr %l230, !tbaa !24
  %t810 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e53
  br i1 %t810, label %bb160, label %bb161
bb160:
  %t812 = call ptr @__olang_region_make(ptr %v1)
  %t813 = ptrtoint ptr %t812 to i64
  store i64 %t813, ptr %l230, !tbaa !24
  br label %bb161
bb161:
  %t814 = load i64, ptr %l230
  %t815 = inttoptr i64 %t814 to ptr
  %t816 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2ector(ptr %t815, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t816, ptr %l232
  br label %bb162
bb162:
  %t817 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e53
  br i1 %t817, label %bb163, label %bb164
bb163:
  %t819 = load i64, ptr %l230
  %t820 = inttoptr i64 %t819 to ptr
  %t821 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l232, i32 0, i32 0
  %t822 = load { i64, ptr }, ptr %t821
  %t823 = extractvalue { i64, ptr } %t822, 1
  %t824 = call ptr @__olang_region_or(ptr %t823, ptr null)
  %t825 = icmp ne ptr %t824, null
  %t826 = select i1 %t825, ptr %t824, ptr null
  %t827 = icmp eq ptr %t826, %t820
  call void @__olang_region_settle(ptr %t820, i1 %t827)
  br label %bb164
bb164:
  %t828 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l232
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t828, ptr %l55
  %t829 = ptrtoint ptr %v1 to i64
  store i64 %t829, ptr %l234, !tbaa !24
  %t830 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e54
  br i1 %t830, label %bb165, label %bb166
bb165:
  %t832 = call ptr @__olang_region_make(ptr %v1)
  %t833 = ptrtoint ptr %t832 to i64
  store i64 %t833, ptr %l234, !tbaa !24
  br label %bb166
bb166:
  %t834 = load i64, ptr %l234
  %t835 = inttoptr i64 %t834 to ptr
  %t836 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t835, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t836, ptr %l236
  br label %bb167
bb167:
  %t837 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e54
  br i1 %t837, label %bb168, label %bb169
bb168:
  %t839 = load i64, ptr %l234
  %t840 = inttoptr i64 %t839 to ptr
  %t841 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l236, i32 0, i32 0
  %t842 = load { i64, ptr }, ptr %t841
  %t843 = extractvalue { i64, ptr } %t842, 1
  %t844 = call ptr @__olang_region_or(ptr %t843, ptr null)
  %t845 = icmp ne ptr %t844, null
  %t846 = select i1 %t845, ptr %t844, ptr null
  %t847 = icmp eq ptr %t846, %t840
  call void @__olang_region_settle(ptr %t840, i1 %t847)
  br label %bb169
bb169:
  %t848 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l236
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t848, ptr %l56
  %t849 = ptrtoint ptr %v1 to i64
  store i64 %t849, ptr %l238, !tbaa !24
  %t850 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e55
  br i1 %t850, label %bb170, label %bb171
bb170:
  %t852 = call ptr @__olang_region_make(ptr %v1)
  %t853 = ptrtoint ptr %t852 to i64
  store i64 %t853, ptr %l238, !tbaa !24
  br label %bb171
bb171:
  call void @llvm.memset.p0.i64(ptr %l240, i8 0, i64 136, i1 false)
  %t854 = icmp sgt i64 64, 0
  br i1 %t854, label %bb172, label %bb173
bb172:
  call void @olang_2emir_2eHelperKind_2eZero_2ecompiler_2feval_3aframe(ptr %t856)
  call void @llvm.memmove.p0.p0.i64(ptr %l242, ptr %t856, i64 136, i1 false)
  br label %bb174
bb173:
  %t857 = icmp sge i64 64, 0
  br i1 %t857, label %bb175, label %bb176
bb174:
  call void @llvm.memmove.p0.p0.i64(ptr %l240, ptr %l242, i64 136, i1 false)
  br label %bb173
bb175:
  %t859 = icmp sle i64 64, 67818912035696880
  br i1 %t859, label %bb177, label %bb178
bb176:
  call void @__olang_check_failed(ptr @olang_loc_64487eeb593bd358_be690252b210c97c)
  unreachable
bb177:
  %t861 = mul i64 64, 136
  %t862 = load i64, ptr %l238
  %t863 = inttoptr i64 %t862 to ptr
  %t864 = call ptr @__olang_scope_alloc(ptr %t863, i64 %t861)
  store i64 0, ptr %t865
  br label %fill.866
fill.866:
  %t869 = load i64, ptr %t865
  %t870 = icmp slt i64 %t869, 64
  br i1 %t870, label %fillb.867, label %filld.868
fillb.867:
  %t871 = getelementptr %"compiler/eval:frame", ptr %t864, i64 %t869
  call void @llvm.memmove.p0.p0.i64(ptr %t871, ptr %l240, i64 136, i1 false)
  %t872 = add i64 %t869, 1
  store i64 %t872, ptr %t865
  br label %fill.866
filld.868:
  %t873 = insertvalue { i64, ptr } undef, i64 64, 0
  %t874 = insertvalue { i64, ptr } %t873, ptr %t864, 1
  store { i64, ptr } %t874, ptr %l57, !tbaa !27
  store i64 0, ptr %l58, !tbaa !24
  %t876 = ptrtoint ptr %v1 to i64
  store i64 %t876, ptr %l246, !tbaa !24
  %t877 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e57
  br i1 %t877, label %bb179, label %bb180
bb178:
  call void @__olang_check_failed(ptr @olang_loc_64487eeb593bd358_be690252b210c97c)
  unreachable
bb179:
  %t879 = call ptr @__olang_region_make(ptr %v1)
  %t880 = ptrtoint ptr %t879 to i64
  store i64 %t880, ptr %l246, !tbaa !24
  br label %bb180
bb180:
  %t881 = icmp sge i64 1024, 0
  br i1 %t881, label %bb181, label %bb182
bb181:
  %t883 = icmp sle i64 1024, 1152921504606846975
  br i1 %t883, label %bb183, label %bb184
bb182:
  call void @__olang_check_failed(ptr @olang_loc_d6ff74f701ada4c5_c582616f4398d5c9)
  unreachable
bb183:
  %t885 = mul i64 1024, 8
  %t886 = load i64, ptr %l246
  %t887 = inttoptr i64 %t886 to ptr
  %t888 = call ptr @__olang_scope_alloc_zeroed(ptr %t887, i64 %t885)
  %t889 = insertvalue { i64, ptr } undef, i64 1024, 0
  %t890 = insertvalue { i64, ptr } %t889, ptr %t888, 1
  store { i64, ptr } %t890, ptr %l59, !tbaa !27
  store i64 0, ptr %l60, !tbaa !24
  %t892 = ptrtoint ptr %v1 to i64
  store i64 %t892, ptr %l251, !tbaa !24
  %t893 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e59
  br i1 %t893, label %bb185, label %bb186
bb184:
  call void @__olang_check_failed(ptr @olang_loc_d6ff74f701ada4c5_c582616f4398d5c9)
  unreachable
bb185:
  %t895 = call ptr @__olang_region_make(ptr %v1)
  %t896 = ptrtoint ptr %t895 to i64
  store i64 %t896, ptr %l251, !tbaa !24
  br label %bb186
bb186:
  %t897 = load i64, ptr %l251
  %t898 = inttoptr i64 %t897 to ptr
  %t899 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t898, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t899, ptr %l253
  br label %bb187
bb187:
  %t900 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e59
  br i1 %t900, label %bb188, label %bb189
bb188:
  %t902 = load i64, ptr %l251
  %t903 = inttoptr i64 %t902 to ptr
  %t904 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l253, i32 0, i32 0
  %t905 = load { i64, ptr }, ptr %t904
  %t906 = extractvalue { i64, ptr } %t905, 1
  %t907 = call ptr @__olang_region_or(ptr %t906, ptr null)
  %t908 = icmp ne ptr %t907, null
  %t909 = select i1 %t908, ptr %t907, ptr null
  %t910 = icmp eq ptr %t909, %t903
  call void @__olang_region_settle(ptr %t903, i1 %t910)
  br label %bb189
bb189:
  %t911 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l253
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t911, ptr %l61
  %t912 = ptrtoint ptr %v1 to i64
  store i64 %t912, ptr %l255, !tbaa !24
  %t913 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t913, label %bb190, label %bb191
bb190:
  %t915 = call ptr @__olang_region_make(ptr %v1)
  %t916 = ptrtoint ptr %t915 to i64
  store i64 %t916, ptr %l255, !tbaa !24
  br label %bb191
bb191:
  %t917 = load i64, ptr %l255
  %t918 = inttoptr i64 %t917 to ptr
  %t919 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2ector(ptr %t918, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t919, ptr %l257
  br label %bb192
bb192:
  %t920 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e60
  br i1 %t920, label %bb193, label %bb194
bb193:
  %t922 = load i64, ptr %l255
  %t923 = inttoptr i64 %t922 to ptr
  %t924 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257, i32 0, i32 0
  %t925 = load { i64, ptr }, ptr %t924
  %t926 = extractvalue { i64, ptr } %t925, 1
  %t927 = call ptr @__olang_region_or(ptr %t926, ptr null)
  %t928 = icmp ne ptr %t927, null
  %t929 = select i1 %t928, ptr %t927, ptr null
  %t930 = icmp eq ptr %t929, %t923
  call void @__olang_region_settle(ptr %t923, i1 %t930)
  br label %bb194
bb194:
  %t931 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l257
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t931, ptr %l62
  %t932 = ptrtoint ptr %v1 to i64
  store i64 %t932, ptr %l259, !tbaa !24
  %t933 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e61
  br i1 %t933, label %bb195, label %bb196
bb195:
  %t935 = call ptr @__olang_region_make(ptr %v1)
  %t936 = ptrtoint ptr %t935 to i64
  store i64 %t936, ptr %l259, !tbaa !24
  br label %bb196
bb196:
  %t937 = load i64, ptr %l259
  %t938 = inttoptr i64 %t937 to ptr
  %t939 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t938)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t939, ptr %l261
  br label %bb197
bb197:
  %t940 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e61
  br i1 %t940, label %bb198, label %bb199
bb198:
  %t942 = load i64, ptr %l259
  %t943 = inttoptr i64 %t942 to ptr
  %t944 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l261, i32 0, i32 2
  %t945 = load { i64, ptr }, ptr %t944
  %t946 = extractvalue { i64, ptr } %t945, 1
  %t947 = call ptr @__olang_region_or(ptr %t946, ptr null)
  %t948 = icmp ne ptr %t947, null
  %t949 = select i1 %t948, ptr %t947, ptr null
  %t950 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l261, i32 0, i32 1
  %t951 = load { i64, ptr }, ptr %t950
  %t952 = extractvalue { i64, ptr } %t951, 1
  %t953 = call ptr @__olang_region_or(ptr %t952, ptr null)
  %t954 = icmp ne ptr %t953, null
  %t955 = select i1 %t954, ptr %t953, ptr %t949
  %t956 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l261, i32 0, i32 0
  %t957 = load { i64, ptr }, ptr %t956
  %t958 = extractvalue { i64, ptr } %t957, 1
  %t959 = call ptr @__olang_region_or(ptr %t958, ptr null)
  %t960 = icmp ne ptr %t959, null
  %t961 = select i1 %t960, ptr %t959, ptr %t955
  %t962 = icmp eq ptr %t961, %t943
  call void @__olang_region_settle(ptr %t943, i1 %t962)
  br label %bb199
bb199:
  %t963 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l261
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t963, ptr %l63
  %t964 = ptrtoint ptr %v1 to i64
  store i64 %t964, ptr %l263, !tbaa !24
  %t965 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e62
  br i1 %t965, label %bb200, label %bb201
bb200:
  %t967 = call ptr @__olang_region_make(ptr %v1)
  %t968 = ptrtoint ptr %t967 to i64
  store i64 %t968, ptr %l263, !tbaa !24
  br label %bb201
bb201:
  %t969 = load i64, ptr %l263
  %t970 = inttoptr i64 %t969 to ptr
  %t971 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t970, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t971, ptr %l265
  br label %bb202
bb202:
  %t972 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e62
  br i1 %t972, label %bb203, label %bb204
bb203:
  %t974 = load i64, ptr %l263
  %t975 = inttoptr i64 %t974 to ptr
  %t976 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l265, i32 0, i32 0
  %t977 = load { i64, ptr }, ptr %t976
  %t978 = extractvalue { i64, ptr } %t977, 1
  %t979 = call ptr @__olang_region_or(ptr %t978, ptr null)
  %t980 = icmp ne ptr %t979, null
  %t981 = select i1 %t980, ptr %t979, ptr null
  %t982 = icmp eq ptr %t981, %t975
  call void @__olang_region_settle(ptr %t975, i1 %t982)
  br label %bb204
bb204:
  %t983 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l265
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t983, ptr %l64
  %t984 = ptrtoint ptr %v1 to i64
  store i64 %t984, ptr %l267, !tbaa !24
  %t985 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e63
  br i1 %t985, label %bb205, label %bb206
bb205:
  %t987 = call ptr @__olang_region_make(ptr %v1)
  %t988 = ptrtoint ptr %t987 to i64
  store i64 %t988, ptr %l267, !tbaa !24
  br label %bb206
bb206:
  %t989 = load i64, ptr %l267
  %t990 = inttoptr i64 %t989 to ptr
  %t991 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t990, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t991, ptr %l269
  br label %bb207
bb207:
  %t992 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e63
  br i1 %t992, label %bb208, label %bb209
bb208:
  %t994 = load i64, ptr %l267
  %t995 = inttoptr i64 %t994 to ptr
  %t996 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269, i32 0, i32 0
  %t997 = load { i64, ptr }, ptr %t996
  %t998 = extractvalue { i64, ptr } %t997, 1
  %t999 = call ptr @__olang_region_or(ptr %t998, ptr null)
  %t1000 = icmp ne ptr %t999, null
  %t1001 = select i1 %t1000, ptr %t999, ptr null
  %t1002 = icmp eq ptr %t1001, %t995
  call void @__olang_region_settle(ptr %t995, i1 %t1002)
  br label %bb209
bb209:
  %t1003 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l269
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1003, ptr %l65
  %t1004 = ptrtoint ptr %v1 to i64
  store i64 %t1004, ptr %l271, !tbaa !24
  %t1005 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e64
  br i1 %t1005, label %bb210, label %bb211
bb210:
  %t1007 = call ptr @__olang_region_make(ptr %v1)
  %t1008 = ptrtoint ptr %t1007 to i64
  store i64 %t1008, ptr %l271, !tbaa !24
  br label %bb211
bb211:
  %t1009 = load i64, ptr %l271
  %t1010 = inttoptr i64 %t1009 to ptr
  %t1011 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1010, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1011, ptr %l273
  br label %bb212
bb212:
  %t1012 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e64
  br i1 %t1012, label %bb213, label %bb214
bb213:
  %t1014 = load i64, ptr %l271
  %t1015 = inttoptr i64 %t1014 to ptr
  %t1016 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l273, i32 0, i32 0
  %t1017 = load { i64, ptr }, ptr %t1016
  %t1018 = extractvalue { i64, ptr } %t1017, 1
  %t1019 = call ptr @__olang_region_or(ptr %t1018, ptr null)
  %t1020 = icmp ne ptr %t1019, null
  %t1021 = select i1 %t1020, ptr %t1019, ptr null
  %t1022 = icmp eq ptr %t1021, %t1015
  call void @__olang_region_settle(ptr %t1015, i1 %t1022)
  br label %bb214
bb214:
  %t1023 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l273
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1023, ptr %l66
  %t1024 = ptrtoint ptr %v1 to i64
  store i64 %t1024, ptr %l275, !tbaa !24
  %t1025 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e65
  br i1 %t1025, label %bb215, label %bb216
bb215:
  %t1027 = call ptr @__olang_region_make(ptr %v1)
  %t1028 = ptrtoint ptr %t1027 to i64
  store i64 %t1028, ptr %l275, !tbaa !24
  br label %bb216
bb216:
  %t1029 = load i64, ptr %l275
  %t1030 = inttoptr i64 %t1029 to ptr
  %t1031 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1030, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1031, ptr %l277
  br label %bb217
bb217:
  %t1032 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e65
  br i1 %t1032, label %bb218, label %bb219
bb218:
  %t1034 = load i64, ptr %l275
  %t1035 = inttoptr i64 %t1034 to ptr
  %t1036 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l277, i32 0, i32 0
  %t1037 = load { i64, ptr }, ptr %t1036
  %t1038 = extractvalue { i64, ptr } %t1037, 1
  %t1039 = call ptr @__olang_region_or(ptr %t1038, ptr null)
  %t1040 = icmp ne ptr %t1039, null
  %t1041 = select i1 %t1040, ptr %t1039, ptr null
  %t1042 = icmp eq ptr %t1041, %t1035
  call void @__olang_region_settle(ptr %t1035, i1 %t1042)
  br label %bb219
bb219:
  %t1043 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l277
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1043, ptr %l67
  store i1 false, ptr %l68, !tbaa !21
  store i64 0, ptr %l69, !tbaa !24
  store i64 0, ptr %l70, !tbaa !24
  %t1044 = ptrtoint ptr %v1 to i64
  store i64 %t1044, ptr %l279, !tbaa !24
  %t1045 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e69
  br i1 %t1045, label %bb220, label %bb221
bb220:
  %t1047 = call ptr @__olang_region_make(ptr %v1)
  %t1048 = ptrtoint ptr %t1047 to i64
  store i64 %t1048, ptr %l279, !tbaa !24
  br label %bb221
bb221:
  %t1049 = icmp sge i64 3, 0
  br i1 %t1049, label %bb222, label %bb223
bb222:
  %t1051 = icmp sle i64 3, 1152921504606846975
  br i1 %t1051, label %bb224, label %bb225
bb223:
  call void @__olang_check_failed(ptr @olang_loc_d7598e698fcd0229_1ca32a5a713fdca5)
  unreachable
bb224:
  %t1053 = mul i64 3, 8
  %t1054 = load i64, ptr %l279
  %t1055 = inttoptr i64 %t1054 to ptr
  %t1056 = call ptr @__olang_scope_alloc_zeroed(ptr %t1055, i64 %t1053)
  %t1057 = insertvalue { i64, ptr } undef, i64 3, 0
  %t1058 = insertvalue { i64, ptr } %t1057, ptr %t1056, 1
  store { i64, ptr } %t1058, ptr %l71, !tbaa !27
  store i64 -1, ptr %l72, !tbaa !24
  %t1060 = ptrtoint ptr %v1 to i64
  store i64 %t1060, ptr %l284, !tbaa !24
  %t1061 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e71
  br i1 %t1061, label %bb226, label %bb227
bb225:
  call void @__olang_check_failed(ptr @olang_loc_d7598e698fcd0229_1ca32a5a713fdca5)
  unreachable
bb226:
  %t1063 = call ptr @__olang_region_make(ptr %v1)
  %t1064 = ptrtoint ptr %t1063 to i64
  store i64 %t1064, ptr %l284, !tbaa !24
  br label %bb227
bb227:
  %t1065 = load i64, ptr %l284
  %t1066 = inttoptr i64 %t1065 to ptr
  %t1067 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e(ptr %t1066)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1067, ptr %l286
  br label %bb228
bb228:
  %t1068 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e71
  br i1 %t1068, label %bb229, label %bb230
bb229:
  %t1070 = load i64, ptr %l284
  %t1071 = inttoptr i64 %t1070 to ptr
  %t1072 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286, i32 0, i32 2
  %t1073 = load { i64, ptr }, ptr %t1072
  %t1074 = extractvalue { i64, ptr } %t1073, 1
  %t1075 = call ptr @__olang_region_or(ptr %t1074, ptr null)
  %t1076 = icmp ne ptr %t1075, null
  %t1077 = select i1 %t1076, ptr %t1075, ptr null
  %t1078 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286, i32 0, i32 1
  %t1079 = load { i64, ptr }, ptr %t1078
  %t1080 = extractvalue { i64, ptr } %t1079, 1
  %t1081 = call ptr @__olang_region_or(ptr %t1080, ptr null)
  %t1082 = icmp ne ptr %t1081, null
  %t1083 = select i1 %t1082, ptr %t1081, ptr %t1077
  %t1084 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286, i32 0, i32 0
  %t1085 = load { i64, ptr }, ptr %t1084
  %t1086 = extractvalue { i64, ptr } %t1085, 1
  %t1087 = call ptr @__olang_region_or(ptr %t1086, ptr null)
  %t1088 = icmp ne ptr %t1087, null
  %t1089 = select i1 %t1088, ptr %t1087, ptr %t1083
  %t1090 = icmp eq ptr %t1089, %t1071
  call void @__olang_region_settle(ptr %t1071, i1 %t1090)
  br label %bb230
bb230:
  %t1091 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l286
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1091, ptr %l73
  %t1092 = ptrtoint ptr %v1 to i64
  store i64 %t1092, ptr %l288, !tbaa !24
  %t1093 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e72
  br i1 %t1093, label %bb231, label %bb232
bb231:
  %t1095 = call ptr @__olang_region_make(ptr %v1)
  %t1096 = ptrtoint ptr %t1095 to i64
  store i64 %t1096, ptr %l288, !tbaa !24
  br label %bb232
bb232:
  %t1097 = load i64, ptr %l288
  %t1098 = inttoptr i64 %t1097 to ptr
  %t1099 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1098, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1099, ptr %l290
  br label %bb233
bb233:
  %t1100 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e72
  br i1 %t1100, label %bb234, label %bb235
bb234:
  %t1102 = load i64, ptr %l288
  %t1103 = inttoptr i64 %t1102 to ptr
  %t1104 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l290, i32 0, i32 0
  %t1105 = load { i64, ptr }, ptr %t1104
  %t1106 = extractvalue { i64, ptr } %t1105, 1
  %t1107 = call ptr @__olang_region_or(ptr %t1106, ptr null)
  %t1108 = icmp ne ptr %t1107, null
  %t1109 = select i1 %t1108, ptr %t1107, ptr null
  %t1110 = icmp eq ptr %t1109, %t1103
  call void @__olang_region_settle(ptr %t1103, i1 %t1110)
  br label %bb235
bb235:
  %t1111 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l290
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1111, ptr %l74
  %t1112 = ptrtoint ptr %v1 to i64
  store i64 %t1112, ptr %l292, !tbaa !24
  %t1113 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e73
  br i1 %t1113, label %bb236, label %bb237
bb236:
  %t1115 = call ptr @__olang_region_make(ptr %v1)
  %t1116 = ptrtoint ptr %t1115 to i64
  store i64 %t1116, ptr %l292, !tbaa !24
  br label %bb237
bb237:
  %t1117 = load i64, ptr %l292
  %t1118 = inttoptr i64 %t1117 to ptr
  %t1119 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e(ptr %t1118)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1119, ptr %l294
  br label %bb238
bb238:
  %t1120 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e73
  br i1 %t1120, label %bb239, label %bb240
bb239:
  %t1122 = load i64, ptr %l292
  %t1123 = inttoptr i64 %t1122 to ptr
  %t1124 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l294, i32 0, i32 2
  %t1125 = load { i64, ptr }, ptr %t1124
  %t1126 = extractvalue { i64, ptr } %t1125, 1
  %t1127 = call ptr @__olang_region_or(ptr %t1126, ptr null)
  %t1128 = icmp ne ptr %t1127, null
  %t1129 = select i1 %t1128, ptr %t1127, ptr null
  %t1130 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l294, i32 0, i32 1
  %t1131 = load { i64, ptr }, ptr %t1130
  %t1132 = extractvalue { i64, ptr } %t1131, 1
  %t1133 = call ptr @__olang_region_or(ptr %t1132, ptr null)
  %t1134 = icmp ne ptr %t1133, null
  %t1135 = select i1 %t1134, ptr %t1133, ptr %t1129
  %t1136 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l294, i32 0, i32 0
  %t1137 = load { i64, ptr }, ptr %t1136
  %t1138 = extractvalue { i64, ptr } %t1137, 1
  %t1139 = call ptr @__olang_region_or(ptr %t1138, ptr null)
  %t1140 = icmp ne ptr %t1139, null
  %t1141 = select i1 %t1140, ptr %t1139, ptr %t1135
  %t1142 = icmp eq ptr %t1141, %t1123
  call void @__olang_region_settle(ptr %t1123, i1 %t1142)
  br label %bb240
bb240:
  %t1143 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l294
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1143, ptr %l75
  store i64 0, ptr %l76, !tbaa !24
  %t1144 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t1144, ptr %l296
  br label %bb241
bb241:
  %t1145 = load %"compiler/source:Span", ptr %l296
  store %"compiler/source:Span" %t1145, ptr %l77
  %t1146 = ptrtoint ptr %v1 to i64
  store i64 %t1146, ptr %l297, !tbaa !24
  %t1147 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e76
  br i1 %t1147, label %bb242, label %bb243
bb242:
  %t1149 = call ptr @__olang_region_make(ptr %v1)
  %t1150 = ptrtoint ptr %t1149 to i64
  store i64 %t1150, ptr %l297, !tbaa !24
  br label %bb243
bb243:
  %t1151 = load i64, ptr %l297
  %t1152 = inttoptr i64 %t1151 to ptr
  %t1153 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fpair_3aPair_3cI64_2c_20compiler_2fsource_3aSpan_3e_3e_2ector(ptr %t1152, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1153, ptr %l299
  br label %bb244
bb244:
  %t1154 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e76
  br i1 %t1154, label %bb245, label %bb246
bb245:
  %t1156 = load i64, ptr %l297
  %t1157 = inttoptr i64 %t1156 to ptr
  %t1158 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l299, i32 0, i32 0
  %t1159 = load { i64, ptr }, ptr %t1158
  %t1160 = extractvalue { i64, ptr } %t1159, 1
  %t1161 = call ptr @__olang_region_or(ptr %t1160, ptr null)
  %t1162 = icmp ne ptr %t1161, null
  %t1163 = select i1 %t1162, ptr %t1161, ptr null
  %t1164 = icmp eq ptr %t1163, %t1157
  call void @__olang_region_settle(ptr %t1157, i1 %t1164)
  br label %bb246
bb246:
  %t1165 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l299
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1165, ptr %l78
  store i64 -1, ptr %l79, !tbaa !24
  %t1166 = ptrtoint ptr %v1 to i64
  store i64 %t1166, ptr %l301, !tbaa !24
  %t1167 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e78
  br i1 %t1167, label %bb247, label %bb248
bb247:
  %t1169 = call ptr @__olang_region_make(ptr %v1)
  %t1170 = ptrtoint ptr %t1169 to i64
  store i64 %t1170, ptr %l301, !tbaa !24
  br label %bb248
bb248:
  %t1171 = load i64, ptr %l301
  %t1172 = inttoptr i64 %t1171 to ptr
  %t1173 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %t1172)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1173, ptr %l303
  br label %bb249
bb249:
  %t1174 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e78
  br i1 %t1174, label %bb250, label %bb251
bb250:
  %t1176 = load i64, ptr %l301
  %t1177 = inttoptr i64 %t1176 to ptr
  %t1178 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l303, i32 0, i32 2
  %t1179 = load { i64, ptr }, ptr %t1178
  %t1180 = extractvalue { i64, ptr } %t1179, 1
  %t1181 = call ptr @__olang_region_or(ptr %t1180, ptr null)
  %t1182 = icmp ne ptr %t1181, null
  %t1183 = select i1 %t1182, ptr %t1181, ptr null
  %t1184 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l303, i32 0, i32 1
  %t1185 = load { i64, ptr }, ptr %t1184
  %t1186 = extractvalue { i64, ptr } %t1185, 1
  %t1187 = call ptr @__olang_region_or(ptr %t1186, ptr null)
  %t1188 = icmp ne ptr %t1187, null
  %t1189 = select i1 %t1188, ptr %t1187, ptr %t1183
  %t1190 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l303, i32 0, i32 0
  %t1191 = load { i64, ptr }, ptr %t1190
  %t1192 = extractvalue { i64, ptr } %t1191, 1
  %t1193 = call ptr @__olang_region_or(ptr %t1192, ptr null)
  %t1194 = icmp ne ptr %t1193, null
  %t1195 = select i1 %t1194, ptr %t1193, ptr %t1189
  %t1196 = icmp eq ptr %t1195, %t1177
  call void @__olang_region_settle(ptr %t1177, i1 %t1196)
  br label %bb251
bb251:
  %t1197 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l303
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1197, ptr %l80
  %t1198 = ptrtoint ptr %v1 to i64
  store i64 %t1198, ptr %l305, !tbaa !24
  %t1199 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e79
  br i1 %t1199, label %bb252, label %bb253
bb252:
  %t1201 = call ptr @__olang_region_make(ptr %v1)
  %t1202 = ptrtoint ptr %t1201 to i64
  store i64 %t1202, ptr %l305, !tbaa !24
  br label %bb253
bb253:
  %t1203 = load i64, ptr %l305
  %t1204 = inttoptr i64 %t1203 to ptr
  %t1205 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t1204, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1205, ptr %l307
  br label %bb254
bb254:
  %t1206 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e79
  br i1 %t1206, label %bb255, label %bb256
bb255:
  %t1208 = load i64, ptr %l305
  %t1209 = inttoptr i64 %t1208 to ptr
  %t1210 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l307, i32 0, i32 0
  %t1211 = load { i64, ptr }, ptr %t1210
  %t1212 = extractvalue { i64, ptr } %t1211, 1
  %t1213 = call ptr @__olang_region_or(ptr %t1212, ptr null)
  %t1214 = icmp ne ptr %t1213, null
  %t1215 = select i1 %t1214, ptr %t1213, ptr null
  %t1216 = icmp eq ptr %t1215, %t1209
  call void @__olang_region_settle(ptr %t1209, i1 %t1216)
  br label %bb256
bb256:
  %t1217 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l307
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1217, ptr %l81
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d11, i32 0, i32 1) }, ptr %l82, !tbaa !27
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d12, i32 0, i32 1) }, ptr %l83, !tbaa !27
  store i1 false, ptr %l84, !tbaa !21
  store i1 false, ptr %l85, !tbaa !21
  store i1 false, ptr %l86, !tbaa !21
  %t1218 = ptrtoint ptr %v1 to i64
  store i64 %t1218, ptr %l309, !tbaa !24
  %t1219 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e85
  br i1 %t1219, label %bb257, label %bb258
bb257:
  %t1221 = call ptr @__olang_region_make(ptr %v1)
  %t1222 = ptrtoint ptr %t1221 to i64
  store i64 %t1222, ptr %l309, !tbaa !24
  br label %bb258
bb258:
  %t1223 = load i64, ptr %l309
  %t1224 = inttoptr i64 %t1223 to ptr
  %t1225 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1224, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1225, ptr %l311
  br label %bb259
bb259:
  %t1226 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e85
  br i1 %t1226, label %bb260, label %bb261
bb260:
  %t1228 = load i64, ptr %l309
  %t1229 = inttoptr i64 %t1228 to ptr
  %t1230 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l311, i32 0, i32 0
  %t1231 = load { i64, ptr }, ptr %t1230
  %t1232 = extractvalue { i64, ptr } %t1231, 1
  %t1233 = call ptr @__olang_region_or(ptr %t1232, ptr null)
  %t1234 = icmp ne ptr %t1233, null
  %t1235 = select i1 %t1234, ptr %t1233, ptr null
  %t1236 = icmp eq ptr %t1235, %t1229
  call void @__olang_region_settle(ptr %t1229, i1 %t1236)
  br label %bb261
bb261:
  %t1237 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l311
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1237, ptr %l87
  %t1238 = ptrtoint ptr %v1 to i64
  store i64 %t1238, ptr %l313, !tbaa !24
  %t1239 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e86
  br i1 %t1239, label %bb262, label %bb263
bb262:
  %t1241 = call ptr @__olang_region_make(ptr %v1)
  %t1242 = ptrtoint ptr %t1241 to i64
  store i64 %t1242, ptr %l313, !tbaa !24
  br label %bb263
bb263:
  %t1243 = load i64, ptr %l313
  %t1244 = inttoptr i64 %t1243 to ptr
  %t1245 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t1244, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1245, ptr %l315
  br label %bb264
bb264:
  %t1246 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e86
  br i1 %t1246, label %bb265, label %bb266
bb265:
  %t1248 = load i64, ptr %l313
  %t1249 = inttoptr i64 %t1248 to ptr
  %t1250 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l315, i32 0, i32 0
  %t1251 = load { i64, ptr }, ptr %t1250
  %t1252 = extractvalue { i64, ptr } %t1251, 1
  %t1253 = call ptr @__olang_region_or(ptr %t1252, ptr null)
  %t1254 = icmp ne ptr %t1253, null
  %t1255 = select i1 %t1254, ptr %t1253, ptr null
  %t1256 = icmp eq ptr %t1255, %t1249
  call void @__olang_region_settle(ptr %t1249, i1 %t1256)
  br label %bb266
bb266:
  %t1257 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l315
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1257, ptr %l88
  store i64 0, ptr %l89, !tbaa !24
  %t1258 = ptrtoint ptr %v1 to i64
  store i64 %t1258, ptr %l317, !tbaa !24
  %t1259 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e88
  br i1 %t1259, label %bb267, label %bb268
bb267:
  %t1261 = call ptr @__olang_region_make(ptr %v1)
  %t1262 = ptrtoint ptr %t1261 to i64
  store i64 %t1262, ptr %l317, !tbaa !24
  br label %bb268
bb268:
  %t1263 = load i64, ptr %l317
  %t1264 = inttoptr i64 %t1263 to ptr
  %t1265 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t1264, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1265, ptr %l319
  br label %bb269
bb269:
  %t1266 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aMachine_2e88
  br i1 %t1266, label %bb270, label %bb271
bb270:
  %t1268 = load i64, ptr %l317
  %t1269 = inttoptr i64 %t1268 to ptr
  %t1270 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l319, i32 0, i32 0
  %t1271 = load { i64, ptr }, ptr %t1270
  %t1272 = extractvalue { i64, ptr } %t1271, 1
  %t1273 = call ptr @__olang_region_or(ptr %t1272, ptr null)
  %t1274 = icmp ne ptr %t1273, null
  %t1275 = select i1 %t1274, ptr %t1273, ptr null
  %t1276 = icmp eq ptr %t1275, %t1269
  call void @__olang_region_settle(ptr %t1269, i1 %t1276)
  br label %bb271
bb271:
  %t1277 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l319
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1277, ptr %l90
  store i64 -1, ptr %l91, !tbaa !24
  %t1278 = call %"compiler/source:Span" @compiler_2fsource_3aSpan_2ector(ptr %v1, i32 0, i32 0)
  store %"compiler/source:Span" %t1278, ptr %l321
  br label %bb272
bb272:
  %t1279 = load %"compiler/source:Span", ptr %l321
  %t1280 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 0
  %t1281 = load ptr, ptr %l2, !tbaa !29
  store ptr %t1281, ptr %t1280, !tbaa !29
  %t1282 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 1
  %t1283 = load i32, ptr %l3, !range !{i32 0, i32 2}
  store i32 %t1283, ptr %t1282
  %t1284 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 2
  %t1285 = load i64, ptr %l4, !tbaa !24
  store i64 %t1285, ptr %t1284, !tbaa !24
  %t1286 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 3
  %t1287 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1287, ptr %t1286
  %t1288 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 4
  call void @llvm.memmove.p0.p0.i64(ptr %t1288, ptr %l6, i64 400, i1 false)
  %t1289 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 5
  %t1290 = load i1, ptr %l7, !tbaa !21
  store i1 %t1290, ptr %t1289, !tbaa !21
  %t1291 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 6
  %t1292 = load i64, ptr %l8, !tbaa !24
  store i64 %t1292, ptr %t1291, !tbaa !24
  %t1293 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 7
  %t1294 = load i64, ptr %l9, !tbaa !24
  store i64 %t1294, ptr %t1293, !tbaa !24
  %t1295 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 8
  %t1296 = load i64, ptr %l10, !tbaa !24
  store i64 %t1296, ptr %t1295, !tbaa !24
  %t1297 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 9
  %t1298 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1298, ptr %t1297
  %t1299 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 10
  %t1300 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1300, ptr %t1299
  %t1301 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 11
  %t1302 = load i64, ptr %l13, !tbaa !24
  store i64 %t1302, ptr %t1301, !tbaa !24
  %t1303 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 12
  %t1304 = load i64, ptr %l14, !tbaa !24
  store i64 %t1304, ptr %t1303, !tbaa !24
  %t1305 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 13
  %t1306 = load i1, ptr %l15, !tbaa !21
  store i1 %t1306, ptr %t1305, !tbaa !21
  %t1307 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 14
  %t1308 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l16
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1308, ptr %t1307
  %t1309 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 15
  %t1310 = load %"compiler/eval:Ptr", ptr %l17
  store %"compiler/eval:Ptr" %t1310, ptr %t1309
  %t1311 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 16
  %t1312 = load i32, ptr %l18, !tbaa !23
  store i32 %t1312, ptr %t1311, !tbaa !23
  %t1313 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 17
  %t1314 = load { i64, [5 x i64] }, ptr %l19
  store { i64, [5 x i64] } %t1314, ptr %t1313
  %t1315 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 18
  %t1316 = load i64, ptr %l20, !tbaa !24
  store i64 %t1316, ptr %t1315, !tbaa !24
  %t1317 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 19
  %t1318 = load i1, ptr %l21, !tbaa !21
  store i1 %t1318, ptr %t1317, !tbaa !21
  %t1319 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 20
  %t1320 = load i1, ptr %l22, !tbaa !21
  store i1 %t1320, ptr %t1319, !tbaa !21
  %t1321 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 21
  %t1322 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l23
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1322, ptr %t1321
  %t1323 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 22
  %t1324 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1324, ptr %t1323
  %t1325 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 23
  %t1326 = load { i64, ptr }, ptr %l25, !tbaa !27
  store { i64, ptr } %t1326, ptr %t1325, !tbaa !27
  %t1327 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 24
  %t1328 = load { i64, ptr }, ptr %l26, !tbaa !27
  store { i64, ptr } %t1328, ptr %t1327, !tbaa !27
  %t1329 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 25
  %t1330 = load { i64, ptr }, ptr %l27, !tbaa !27
  store { i64, ptr } %t1330, ptr %t1329, !tbaa !27
  %t1331 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 26
  %t1332 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t1332, ptr %t1331, !tbaa !27
  %t1333 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 27
  %t1334 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l29
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1334, ptr %t1333
  %t1335 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 28
  %t1336 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1336, ptr %t1335
  %t1337 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 29
  %t1338 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l31
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1338, ptr %t1337
  %t1339 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 30
  %t1340 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l32
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1340, ptr %t1339
  %t1341 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 31
  %t1342 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l33
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1342, ptr %t1341
  %t1343 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 32
  %t1344 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l34
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1344, ptr %t1343
  %t1345 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 33
  %t1346 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l35
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1346, ptr %t1345
  %t1347 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 34
  %t1348 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l36
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1348, ptr %t1347
  %t1349 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 35
  %t1350 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l37
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1350, ptr %t1349
  %t1351 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 36
  %t1352 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l38
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1352, ptr %t1351
  %t1353 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 37
  %t1354 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l39
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1354, ptr %t1353
  %t1355 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 38
  %t1356 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l40
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1356, ptr %t1355
  %t1357 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 39
  %t1358 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1358, ptr %t1357
  %t1359 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 40
  %t1360 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l42
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1360, ptr %t1359
  %t1361 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 41
  %t1362 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l43
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1362, ptr %t1361
  %t1363 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 42
  %t1364 = load { i64, ptr }, ptr %l44, !tbaa !27
  store { i64, ptr } %t1364, ptr %t1363, !tbaa !27
  %t1365 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 43
  %t1366 = load { i64, ptr }, ptr %l45, !tbaa !27
  store { i64, ptr } %t1366, ptr %t1365, !tbaa !27
  %t1367 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 44
  %t1368 = load i64, ptr %l46, !tbaa !24
  store i64 %t1368, ptr %t1367, !tbaa !24
  %t1369 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 45
  %t1370 = load { i64, ptr }, ptr %l47, !tbaa !27
  store { i64, ptr } %t1370, ptr %t1369, !tbaa !27
  %t1371 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 46
  %t1372 = load { i64, ptr }, ptr %l48, !tbaa !27
  store { i64, ptr } %t1372, ptr %t1371, !tbaa !27
  %t1373 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 47
  %t1374 = load i64, ptr %l49, !tbaa !24
  store i64 %t1374, ptr %t1373, !tbaa !24
  %t1375 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 48
  %t1376 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l50
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1376, ptr %t1375
  %t1377 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 49
  %t1378 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l51
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1378, ptr %t1377
  %t1379 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 50
  %t1380 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1380, ptr %t1379
  %t1381 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 51
  %t1382 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l53
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1382, ptr %t1381
  %t1383 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 52
  %t1384 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l54
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1384, ptr %t1383
  %t1385 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 53
  %t1386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1386, ptr %t1385
  %t1387 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 54
  %t1388 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l56
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1388, ptr %t1387
  %t1389 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 55
  %t1390 = load { i64, ptr }, ptr %l57, !tbaa !27
  store { i64, ptr } %t1390, ptr %t1389, !tbaa !27
  %t1391 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 56
  %t1392 = load i64, ptr %l58, !tbaa !24
  store i64 %t1392, ptr %t1391, !tbaa !24
  %t1393 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 57
  %t1394 = load { i64, ptr }, ptr %l59, !tbaa !27
  store { i64, ptr } %t1394, ptr %t1393, !tbaa !27
  %t1395 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 58
  %t1396 = load i64, ptr %l60, !tbaa !24
  store i64 %t1396, ptr %t1395, !tbaa !24
  %t1397 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 59
  %t1398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l61
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1398, ptr %t1397
  %t1399 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 60
  %t1400 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1400, ptr %t1399
  %t1401 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 61
  %t1402 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l63
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1402, ptr %t1401
  %t1403 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 62
  %t1404 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l64
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1404, ptr %t1403
  %t1405 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 63
  %t1406 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l65
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1406, ptr %t1405
  %t1407 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 64
  %t1408 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1408, ptr %t1407
  %t1409 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 65
  %t1410 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l67
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1410, ptr %t1409
  %t1411 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 66
  %t1412 = load i1, ptr %l68, !tbaa !21
  store i1 %t1412, ptr %t1411, !tbaa !21
  %t1413 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 67
  %t1414 = load i64, ptr %l69, !tbaa !24
  store i64 %t1414, ptr %t1413, !tbaa !24
  %t1415 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 68
  %t1416 = load i64, ptr %l70, !tbaa !24
  store i64 %t1416, ptr %t1415, !tbaa !24
  %t1417 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 69
  %t1418 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t1418, ptr %t1417, !tbaa !27
  %t1419 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 70
  %t1420 = load i64, ptr %l72, !tbaa !24
  store i64 %t1420, ptr %t1419, !tbaa !24
  %t1421 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 71
  %t1422 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l73
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1422, ptr %t1421
  %t1423 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 72
  %t1424 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1424, ptr %t1423
  %t1425 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 73
  %t1426 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l75
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1426, ptr %t1425
  %t1427 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 74
  %t1428 = load i64, ptr %l76, !tbaa !24
  store i64 %t1428, ptr %t1427, !tbaa !24
  %t1429 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 75
  %t1430 = load %"compiler/source:Span", ptr %l77
  store %"compiler/source:Span" %t1430, ptr %t1429
  %t1431 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 76
  %t1432 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1432, ptr %t1431
  %t1433 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 77
  %t1434 = load i64, ptr %l79, !tbaa !24
  store i64 %t1434, ptr %t1433, !tbaa !24
  %t1435 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 78
  %t1436 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l80
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t1436, ptr %t1435
  %t1437 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 79
  %t1438 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l81
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1438, ptr %t1437
  %t1439 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 80
  %t1440 = load { i64, ptr }, ptr %l82, !tbaa !27
  store { i64, ptr } %t1440, ptr %t1439, !tbaa !27
  %t1441 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 81
  %t1442 = load { i64, ptr }, ptr %l83, !tbaa !27
  store { i64, ptr } %t1442, ptr %t1441, !tbaa !27
  %t1443 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 82
  %t1444 = load i1, ptr %l84, !tbaa !21
  store i1 %t1444, ptr %t1443, !tbaa !21
  %t1445 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 83
  %t1446 = load i1, ptr %l85, !tbaa !21
  store i1 %t1446, ptr %t1445, !tbaa !21
  %t1447 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 84
  %t1448 = load i1, ptr %l86, !tbaa !21
  store i1 %t1448, ptr %t1447, !tbaa !21
  %t1449 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 85
  %t1450 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l87
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1450, ptr %t1449
  %t1451 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 86
  %t1452 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l88
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1452, ptr %t1451
  %t1453 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 87
  %t1454 = load i64, ptr %l89, !tbaa !24
  store i64 %t1454, ptr %t1453, !tbaa !24
  %t1455 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 88
  %t1456 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1456, ptr %t1455
  %t1457 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 89
  %t1458 = load i64, ptr %l91, !tbaa !24
  store i64 %t1458, ptr %t1457, !tbaa !24
  %t1459 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 90
  store %"compiler/source:Span" %t1279, ptr %t1459
  %t1461 = getelementptr %"compiler/eval:Machine", ptr %l322, i32 0, i32 91
  store i32 0, ptr %t1461, !tbaa !23
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l322, i64 3032, i1 false)
  br label %ret
ret:
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
@olang_2esole_2ecompiler_2feval_3acfn_2e6 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare void @__olang_region_release(ptr) noinline
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@olang_2esole_2ecompiler_2feval_3acfn_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e13 = weak hidden constant i1 false
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
@olang_2esole_2ecompiler_2feval_3acfn_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3acfn_2e11 = weak hidden constant i1 false
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
@olang_2esole_2ecompiler_2feval_3acfn_2e12 = weak hidden constant i1 false
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d1 = private constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"__olang_run_on_stack" }>, align 8
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
define internal void @olang_lambda_2(ptr %env, %"compiler/eval:Ptr" %a0) #0 {
entry:
  %l0 = alloca %"compiler/eval:Ptr"
  %l1 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i1
  store %"compiler/eval:Ptr" %a0, ptr %l0
  %cp0 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load %"compiler/eval:Ptr", ptr %cp0, !tbaa !28
  store %"compiler/eval:Ptr" %cv0, ptr %l1
  %cp1 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load ptr, ptr %cp1, !tbaa !28
  %vq0 = getelementptr { %"compiler/eval:Ptr", ptr, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t4 = load i64, ptr %t3, !tbaa !24
  %t7 = icmp eq i64 %t2, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 1
  %t10 = load i64, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t12 = load i64, ptr %t11, !tbaa !24
  %t15 = icmp eq i64 %t10, %t12
  store i1 %t15, ptr %l6, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l6, !tbaa !21
  br label %bb3
bb3:
  %t17 = load i1, ptr %l6, !tbaa !21
  br i1 %t17, label %bb4, label %bb5
bb4:
  %t20 = getelementptr %"compiler/eval:Machine", ptr %cv1, i32 0, i32 5
  store i1 true, ptr %t20, !tbaa !21
  br label %bb6
bb5:
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

@.d3 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: internal compiler error: file " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d4 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d5 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
declare void @__olang_errpay_pop()
@__olang_prog_scope = external thread_local(initialexec) global ptr
@.d7 = private constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"pthread_cond_wait" }>, align 8
@.d8 = private constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"pthread_cond_timedwait" }>, align 8
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

@.d9 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
@.d10 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"eval_test_" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
@olang_2esole_2ecompiler_2feval_3aBlob_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feval_3aBlob_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e8 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aBlob_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e9 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e14 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e24 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e25 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e26 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e30 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e31 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e32 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e33 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e35 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e37 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e38 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e39 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e40 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e41 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e42 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e43 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e45 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e46 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e48 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e49 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e50 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e51 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e52 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e53 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e54 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e57 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e59 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e60 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e61 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e62 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e63 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e64 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e65 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e69 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e71 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e72 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e73 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3aMachine_2e76 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e78 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e79 = weak hidden constant i1 false
@.d11 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d12 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@olang_2esole_2ecompiler_2feval_3aMachine_2e85 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e86 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aMachine_2e88 = weak hidden constant i1 false
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
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compile_Haf69023555548e8239d9db5dde4c25f9(ptr %v0, ptr %a0, i32 %a1, { i64, [2 x i64] } %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_40e1a1a182bd943_2fb0eb1e2dc82487 = external constant [0 x i8]
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evWide = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideConst(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estepClose(ptr %v0, ptr %a0)
declare void @compiler_2feval_3acfn_2ector(ptr %out, ptr %v0)
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
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
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
declare i1 @compiler_2feval_2etermNamesGlobal(ptr %v0, ptr %a0, { i64, [8 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eLen_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0)
@olang_loc_1d233abf61feac98_d906727ad02ddbc = external constant [0 x i8]
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocalId_3e_2eAt_3ccompiler_2fmir_3aLocalId_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArrayValue(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eWritesInto(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eTruncate_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_8eca6dc2e728fddd_b862a3b547c92c71 = external constant [0 x i8]
@olang_loc_82023e8b3f4d7b2c_b53e56899aeca860 = external constant [0 x i8]
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_He9bc6cfad7ef603960b4717f3121b8e8(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eEmpty = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2erCall = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eenter(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2, %"compiler/mir:Range" %a3, %"compiler/mir:Range" %a4, i64 %a5, i64 %a6)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallExtern(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i32 %a3, %"compiler/mir:Range" %a4, %"compiler/eval:Ptr" %a5, i1 %a6)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToLocal(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenToElem(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3, ptr %a4, i64 %a5)
@olang_loc_2c3649ec7760d571_b360c53de5a7362d = external constant [0 x i8]
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aProj_3e_2eAt_3ccompiler_2fmir_3aProj_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2efLoad = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
@olang_loc_8152b1e065150220_eadb27ce8ca90b2c = external constant [0 x i8]
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2epack(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNeedsDrop(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunDtor(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/eval:Ptr" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_463be9bfcfc802eb_383f1498b2d4337 = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@G_2ecompiler_2feval_2esStore = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecalleeType(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i1 %a3, ptr %a4c, ptr %a4e)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyHolderMissed = external constant <{ [8 x i8], ptr }>
declare i32 @std_2fio_2ePrintErr(ptr %v0, { i64, ptr } %a0)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_c0f012afc32ce5a5_1c35e5c4f1b6a4c9 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyClosed = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3)
@G_2ecompiler_2feval_2eaFree = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1)
declare { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1)
declare { i64, i64 } @compiler_2feval_2ewideMin(i64 %a0)
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i64 @compiler_2fmir_2eErrorCode(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i64 %a3)
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2feval_2eWhyOutside = external constant <{ [8 x i8], ptr }>
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i32, { i64, ptr } } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKe_H6a636ae5a18dc9bdacf7dd1692df3f31(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare { i32, i32 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e__H9861f6f09602cf23d49075e82ac9429b(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eaData = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %a0, i32 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodePtr(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoperandReady(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eswitchTo(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, %"compiler/mir:Range" %a4, i32 %a5)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeReady(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/mir:Range" %a3)
declare { i64, %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ecallee(ptr %v0, ptr %a0, i64 %a1, { i64, [7 x i64] } %a2)
@olang_loc_f83a50064779c123_fa52c016159405ff = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eleave(ptr %v0, ptr %a0, i64 %a1, i1 %a2, { i64, [4 x i64] } %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2esuspend(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i32 %a3, %"compiler/mir:Range" %a4, i32 %a5)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2etraced(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewait(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i32 %a4, { i64, [4 x i64] } %a5)
@olang_loc_44d04288ad1da022_22f50395241cffe = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePackedBits(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawBits(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRawType(ptr %v0, ptr %a0, i32 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, %"compiler/eval:Ptr" %a3, i64 %a4, i64 %a5)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2feval_2erTask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eWhyWaits = external constant <{ [8 x i8], ptr }>
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2erdWide(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
@olang_loc_2742cef73dca1807_235d65ef4c242d83 = external constant [0 x i8]
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteElems(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [1 x i64] } %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econstLen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2)
@G_2ecompiler_2feval_2evPair = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\06\00\00\00\00\00\00\00" }>, align 8
@olang_loc_4d14e07bfe4410cd_6dafb030c3a12d39 = external constant [0 x i8]
@olang_loc_9c829c68892d289c_3e4192d6cd213d68 = external constant [0 x i8]
@olang_loc_ddb187b0a77b9dd7_fe6fb794d8e15443 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_67473c0be830e037_6373d6aa11f96063 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %a0)
@olang_loc_a1e0d3359bcb436b_ac2861f14772b5df = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2feval_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2fmir_3aFn_2ector(ptr %out, ptr %v0, { i64, [2 x i64] } %a0, i32 %a1, i64 %a2, %"compiler/source:Span" %a3)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParams(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddParam(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2, i32 %a3)
@G_2ecompiler_2fmir_2eNoScope = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddScope(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, %"compiler/source:Span" %a4, i32 %a5)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eB0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eS0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v0, ptr %v1, ptr %a0, i32 %a1, ptr %a2)
declare { i64, i64 } @compiler_2feval_2eneg128(i64 %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cU8_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aNameId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2fmir_3aGenInfo_2ector(ptr %out, ptr %v0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %v0, i64 %a0)
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
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
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20Bool_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20compiler_2fmir_3aFnKey_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20compiler_2ftypes_3aTypeId_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20Array_3ccompiler_2fmir_3aFnKey_3e_26_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2ector(ptr %v0)
declare %"compiler/eval:alloc" @compiler_2feval_3aalloc_2ector(ptr %v0)
declare void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0)
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

attributes #0 = { null_pointer_is_valid "target-cpu"="sapphirerapids" "target-features"="+64bit,+adx,+aes,+amx-bf16,+amx-int8,+amx-tile,+avx,+avx2,-avx512bf16,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512fp16,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+avxvnni,+bmi,+bmi2,+cldemote,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+evex512,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+movdir64b,+movdiri,+pclmul,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+rtm,+sahf,+serialize,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+tsxldtrk,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-complex,-amx-fp16,-avx10.1-256,-avx10.1-512,-avx512er,-avx512pf,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnniint16,-avxvnniint8,-clzero,-cmpccxadd,-enqcmd,-fma4,-hreset,-kl,-lwp,-mwaitx,-pconfig,-pku,-prefetchi,-prefetchwt1,-ptwrite,-raoint,-rdpru,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-uintr,-usermsr,-waitpkg,-widekl,-xop" "prefer-vector-width"="512" nounwind }
