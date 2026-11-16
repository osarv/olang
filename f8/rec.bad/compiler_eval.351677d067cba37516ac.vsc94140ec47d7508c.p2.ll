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
%"compiler/eval:Machine" = type { ptr, i32, i64, { ptr, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"compiler/mir:GenInfo", i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"compiler/eval:Ptr", i32, { i64, [5 x i64] }, i64, i1, i1, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", { i64, ptr }, { i64, ptr }, i64, { i64, ptr }, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, i64, { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, i64, { i64, ptr }, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, i1, i1, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"compiler/source:Span", i32 }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"compiler/mir:GenInfo" = type { %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/eval:Ptr" = type { i64, i64 }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/eval:gkey" = type { i64, i32 }
%"compiler/eval:global" = type { i64, i1, i64, i64, i64, i1, i1, i1 }
%"compiler/eval:Snapshot" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/mir:Range" = type { i32, i32 }
%"compiler/mir:Lvalue" = type { { i64, [2 x i64] }, %"compiler/mir:Range" }
%"compiler/eval:scope" = type { i64, i1, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i64, i64, i1, i1 }
%"compiler/eval:alloc" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i32, i64, i1, i64, i1 }
%"compiler/eval:dkey" = type { i64, i32, i32, i32, i32, i64 }
%"compiler/mir:Fn" = type { { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/eval:reg" = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%"compiler/eval:task" = type { i64, i64, i64, i64, i64 }
%"compiler/mir:Local" = type { i32, %"compiler/source:Span", i32, i32, { i64, [1 x i64] } }
%"compiler/eval:cfn" = type { i64, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i1, i1, { i64, ptr } }
%"compiler/eval:frame" = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i1, i1, i1, i64, i64, i1, i64, i32, i32, i64 }
%"compiler/mir:Task" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/source:Span", %"compiler/mir:Range" }
%"compiler/mir:TaskClause" = type { %"compiler/mir:Range", i1, { i64, [4 x i64] } }
%"compiler/mir:Case" = type { i64, i32 }
%"compiler/typed:Item" = type { i32, i64 }
%"compiler/mir:BasicBlock" = type { %"compiler/mir:StmtList", { i64, [8 x i64] } }
%"compiler/mir:StmtList" = type { { i64, ptr }, i64 }
%"compiler/eval:genRec" = type { i64, i64, %"compiler/eval:frame", i64, %"compiler/eval:Ptr", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, i64, i64 }
%"compiler/mir:Call" = type { { i64, [7 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range", %"compiler/mir:Lvalue", i1, i32, i32, i32 }
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eAllocations(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 50
  %t4 = load i64, ptr %t3, !tbaa !24
  store i64 %t4, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eBuildGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca i1
  %l7 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca %"compiler/eval:gkey"
  %l13 = alloca i64
  %l14 = alloca i32
  %l21 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 43
  store ptr %t3, ptr %l9, !tbaa !29
  %t8 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load %"compiler/eval:gkey", ptr %l12
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t9, %"compiler/eval:gkey" %t10)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l14
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l13
  br label %bb2
bb2:
  %t16 = load i64, ptr %l13, !tbaa !24
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l7, !tbaa !24
  store i64 %t17, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t20 = icmp sge i64 %t18, 0
  br i1 %t20, label %bb6, label %bb7
bb6:
  %t22 = load i64, ptr %l3, !tbaa !24
  store i1 true, ptr %l5, !tbaa !21
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 42
  %t30 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t26, i64 %t22)
  store ptr %t30, ptr %l21
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t31 = load ptr, ptr %l21, !tbaa !29
  %t33 = load i1, ptr %l5, !tbaa !21
  %t36 = getelementptr %"compiler/eval:global", ptr %t31, i32 0, i32 5
  store i1 %t33, ptr %t36, !tbaa !21
  br label %bb9
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eDefineExtern(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 34
  %t4 = load i64, ptr %l1, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %t3, i64 %t4, { i64, ptr } %a2)
  br label %bb1
bb1:
  %t9 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 35
  %t16 = load i64, ptr %l1, !tbaa !24
  %t17 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t15, i64 %t16, i64 %t17)
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

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eInitGlobal(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l9 = alloca i64
  %l11 = alloca ptr
  %l14 = alloca %"compiler/eval:gkey"
  %l15 = alloca i64
  %l16 = alloca i32
  %l24 = alloca %"compiler/eval:global"
  %s0 = alloca %olang.scope
  %rv = alloca { i64, [5 x i64] }
  %t5 = alloca { i64, [5 x i64] }, align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  store i1 false, ptr %t3, !tbaa !21
  %t4 = load ptr, ptr %l0, !tbaa !29
  store { i64, [5 x i64] } zeroinitializer, ptr %t5
  %t6 = getelementptr { i64, [5 x i64] }, ptr %t5, i32 0, i32 0
  store i64 0, ptr %t6
  %t7 = load { i64, [5 x i64] }, ptr %t5
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t4, i32 0, i32 20
  store { i64, [5 x i64] } %t7, ptr %t10
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 14
  store i64 0, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 43
  store ptr %t16, ptr %l11, !tbaa !29
  %t21 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t21, ptr %l14
  br label %bb1
bb1:
  %t22 = load ptr, ptr %l11, !tbaa !29
  %t23 = load %"compiler/eval:gkey", ptr %l14
  %t24 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t22, %"compiler/eval:gkey" %t23)
  %t25 = extractvalue { i32, i64 } %t24, 1
  %t26 = extractvalue { i32, i64 } %t24, 0
  store i32 %t26, ptr %l16
  %t27 = icmp ne i32 %t26, 0
  br i1 %t27, label %bb3, label %ok.28, !prof !99
ok.28:
  store i64 %t25, ptr %l15
  br label %bb2
bb2:
  %t29 = load i64, ptr %l15, !tbaa !24
  store i64 %t29, ptr %l9, !tbaa !24
  br label %bb6
bb3:
  br label %bb4
bb4:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t32 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t32, ptr %t30, { i64, ptr } %t31)
  br label %bb5
bb5:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 20
  %t38 = load { i64, [5 x i64] }, ptr %t37
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t38, ptr %rv
  br label %ret
bb6:
  %t40 = load i64, ptr %l9, !tbaa !24
  store i64 %t40, ptr %l3, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t43 = getelementptr %"compiler/eval:Machine", ptr %t41, i32 0, i32 42
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t43, i64 %t44)
  store %"compiler/eval:global" %t47, ptr %l24
  br label %bb7
bb7:
  %t48 = getelementptr %"compiler/eval:global", ptr %l24, i32 0, i32 4
  %t49 = load i64, ptr %t48, !tbaa !24
  %t51 = icmp ne i64 %t49, 2
  br i1 %t51, label %bb8, label %bb9
bb8:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 59
  %t56 = load i64, ptr %t55, !tbaa !24
  store i64 %t56, ptr %l4, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load i64, ptr %l3, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartGlobal(ptr %v0, ptr %t58, i64 %t59)
  br label %bb10
bb9:
  br label %bb13
bb10:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t63 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %t62, i64 %t63)
  br label %bb11
bb11:
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t67 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunwind(ptr %v0, ptr %t66, i64 %t67)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/eval:Machine", ptr %t70, i32 0, i32 20
  %t73 = load { i64, [5 x i64] }, ptr %t72
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t73, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eMain(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca [0 x i64]
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l8 = alloca { i64, [5 x i64] }
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
  %t33 = load { i64, [5 x i64] }, ptr %l24
  store { i64, [5 x i64] } %t33, ptr %l8
  %t34 = load { i64, [5 x i64] }, ptr %l8
  %t36 = extractvalue { i64, [5 x i64] } %t34, 0
  %t37 = icmp eq i64 %t36, 0
  %t39 = xor i1 %t37, true
  br i1 %t39, label %bb6, label %bb7
bb6:
  %t41 = load { i64, [5 x i64] }, ptr %l8
  call void @__olang_scope_close(ptr %s0)
  store { i64, [5 x i64] } %t41, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t43 = load i64, ptr %l5, !tbaa !24
  %t45 = add i64 %t43, 1
  store i64 %t45, ptr %l5, !tbaa !24
  br label %bb1
bb10:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t50 = insertvalue { i64, ptr } undef, i64 0, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %l3, 1
  %t55 = call { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %s0, ptr %v2, ptr %t47, { i64, [2 x i64] } %a2, { i64, ptr } %t51)
  store { i64, [5 x i64] } %t55, ptr %l35
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t56 = load { i64, [5 x i64] }, ptr %l35
  store { i64, [5 x i64] } %t56, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [5 x i64] }, ptr %rv
  ret { i64, [5 x i64] } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eMarkSet(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l5 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l12 = alloca %"compiler/eval:gkey"
  %l13 = alloca i64
  %l14 = alloca i32
  %l19 = alloca ptr
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 43
  store ptr %t3, ptr %l9, !tbaa !29
  %t8 = call %"compiler/eval:gkey" @compiler_2feval_3agkey_2ector(ptr %s0, i64 %a1, i32 %a2)
  store %"compiler/eval:gkey" %t8, ptr %l12
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l9, !tbaa !29
  %t10 = load %"compiler/eval:gkey", ptr %l12
  %t11 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %t9, %"compiler/eval:gkey" %t10)
  %t12 = extractvalue { i32, i64 } %t11, 1
  %t13 = extractvalue { i32, i64 } %t11, 0
  store i32 %t13, ptr %l14
  %t14 = icmp ne i32 %t13, 0
  br i1 %t14, label %bb3, label %ok.15, !prof !99
ok.15:
  store i64 %t12, ptr %l13
  br label %bb2
bb2:
  %t16 = load i64, ptr %l13, !tbaa !24
  store i64 %t16, ptr %l7, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb5:
  %t17 = load i64, ptr %l7, !tbaa !24
  store i64 2, ptr %l5, !tbaa !24
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 42
  %t26 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v0, ptr %t22, i64 %t17)
  store ptr %t26, ptr %l19
  br label %bb6
bb6:
  %t27 = load ptr, ptr %l19, !tbaa !29
  %t29 = load i64, ptr %l5, !tbaa !24
  %t32 = getelementptr %"compiler/eval:global", ptr %t27, i32 0, i32 4
  store i64 %t29, ptr %t32, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eSave(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, ptr %a3) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca { %"compiler/eval:Ptr", i32 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca { %"compiler/eval:Ptr", i32 }
  %l16 = alloca { %"compiler/eval:Ptr", i32 }
  %l17 = alloca i32
  %l22 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l30 = alloca i64
  %l31 = alloca i32
  %l33 = alloca i1
  %l38 = alloca i32
  %l42 = alloca i64
  %l45 = alloca i64
  %l51 = alloca i64
  %l56 = alloca i32
  %l58 = alloca i1
  %l63 = alloca i32
  %rv = alloca { i32, i64 }
  store ptr %a0, ptr %l0
  store ptr %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t7 = call { i32, { %"compiler/eval:Ptr", i32 } } @compiler_2feval_2ecompiler_2feval_3aMachine_2eGlobalAt(ptr %v0, ptr %t1, i64 %a1, i32 %a2)
  %t8 = extractvalue { i32, { %"compiler/eval:Ptr", i32 } } %t7, 1
  %t9 = extractvalue { i32, { %"compiler/eval:Ptr", i32 } } %t7, 0
  store i32 %t9, ptr %l17
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l16
  br label %bb1
bb1:
  %t12 = load { %"compiler/eval:Ptr", i32 }, ptr %l16
  store { %"compiler/eval:Ptr", i32 } %t12, ptr %l12
  br label %bb3
bb2:
  %t13 = load i32, ptr %l17, !tbaa !23
  %t14 = lshr i32 %t13, 16
  %t15 = and i32 %t13, 65535
  %t16 = icmp eq i32 %t14, 1
  %t17 = select i1 %t16, i32 1, i32 0
  %t18 = icmp eq i32 %t13, 0
  %t19 = shl i32 %t17, 16
  %t20 = or i32 %t19, %t15
  %t21 = select i1 %t18, i32 0, i32 %t20
  %t23 = insertvalue { i32, i64 } zeroinitializer, i32 %t21, 0
  store { i32, i64 } %t23, ptr %rv
  br label %ret
bb3:
  %t24 = load { %"compiler/eval:Ptr", i32 }, ptr %l12
  store { %"compiler/eval:Ptr", i32 } %t24, ptr %l4
  %t25 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l4, i32 0, i32 0
  %t26 = load %"compiler/eval:Ptr", ptr %t25
  store %"compiler/eval:Ptr" %t26, ptr %l5
  %t28 = load ptr, ptr %l3, !tbaa !29
  %t30 = getelementptr %"compiler/eval:Snapshot", ptr %t28, i32 0, i32 1
  %t32 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t30)
  store i64 %t32, ptr %l22
  br label %bb4
bb4:
  %t33 = load i64, ptr %l22, !tbaa !24
  store i64 %t33, ptr %l6, !tbaa !24
  %t34 = load ptr, ptr %l3, !tbaa !29
  %t36 = getelementptr %"compiler/eval:Snapshot", ptr %t34, i32 0, i32 0
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t36)
  store i64 %t38, ptr %l25
  br label %bb5
bb5:
  %t39 = load i64, ptr %l25, !tbaa !24
  store i64 %t39, ptr %l7, !tbaa !24
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t42 = load i64, ptr %t41, !tbaa !24
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t47 = call { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveAlloc(ptr %v0, ptr %v1, ptr %t40, i64 %t42, ptr %t43, i1 true)
  %t48 = extractvalue { i32, i64 } %t47, 1
  %t49 = extractvalue { i32, i64 } %t47, 0
  store i32 %t49, ptr %l31
  %t50 = icmp ne i32 %t49, 0
  br i1 %t50, label %bb7, label %ok.51, !prof !99
ok.51:
  store i64 %t48, ptr %l30
  br label %bb6
bb6:
  %t52 = load i64, ptr %l30, !tbaa !24
  store i64 %t52, ptr %l26, !tbaa !24
  br label %bb12
bb7:
  %t53 = load i32, ptr %l31, !tbaa !23
  %t54 = ashr i32 %t53, 16
  %t56 = icmp eq i32 %t54, 1
  store i1 %t56, ptr %l33, !tbaa !21
  %t57 = load i32, ptr %l31, !tbaa !23
  %t58 = lshr i32 %t57, 16
  %t59 = and i32 %t57, 65535
  %t60 = icmp eq i32 %t58, 1
  %t61 = select i1 %t60, i32 1, i32 0
  %t62 = icmp eq i32 %t57, 0
  %t63 = shl i32 %t61, 16
  %t64 = or i32 %t63, %t59
  %t65 = select i1 %t62, i32 0, i32 %t64
  store i32 %t65, ptr %l8, !tbaa !23
  br label %bb8
bb8:
  %t66 = load ptr, ptr %l3, !tbaa !29
  %t67 = load i64, ptr %l6, !tbaa !24
  %t68 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aSnapshot_2edrop(ptr %v1, ptr %t66, i64 %t67, i64 %t68)
  br label %bb9
bb9:
  %t72 = load i32, ptr %l8, !tbaa !23
  store i32 %t72, ptr %l38, !tbaa !23
  %t74 = load i32, ptr %l38, !tbaa !23
  %t75 = icmp ne i32 %t74, 0
  br i1 %t75, label %bb10, label %bb11
bb10:
  %t77 = load i32, ptr %l38, !tbaa !23
  %t78 = lshr i32 %t77, 16
  %t79 = and i32 %t77, 65535
  %t80 = icmp eq i32 %t78, 1
  %t81 = select i1 %t80, i32 1, i32 0
  %t82 = icmp eq i32 %t77, 0
  %t83 = shl i32 %t81, 16
  %t84 = or i32 %t83, %t79
  %t85 = select i1 %t82, i32 0, i32 %t84
  %t87 = insertvalue { i32, i64 } zeroinitializer, i32 %t85, 0
  store { i32, i64 } %t87, ptr %rv
  br label %ret
bb11:
  call void @__olang_check_failed(ptr @olang_loc_e7a4fa5689cb83c4_e9f49c5f7d359a08)
  unreachable
bb12:
  %t88 = load i64, ptr %l26, !tbaa !24
  store i64 %t88, ptr %l9, !tbaa !24
  %t89 = load i64, ptr %l6, !tbaa !24
  store i64 %t89, ptr %l10, !tbaa !24
  br label %bb13
bb13:
  %t91 = load i64, ptr %l10, !tbaa !24
  store i64 %t91, ptr %l42, !tbaa !24
  %t92 = load ptr, ptr %l3, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Snapshot", ptr %t92, i32 0, i32 1
  %t96 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t94)
  store i64 %t96, ptr %l45
  br label %bb14
bb14:
  %t97 = load i64, ptr %l42, !tbaa !24
  %t98 = load i64, ptr %l45, !tbaa !24
  %t99 = icmp slt i64 %t97, %t98
  %t101 = xor i1 %t99, true
  br i1 %t101, label %bb15, label %bb16
bb15:
  br label %bb30
bb16:
  br label %bb17
bb17:
  %t103 = load ptr, ptr %l3, !tbaa !29
  %t105 = getelementptr %"compiler/eval:Snapshot", ptr %t103, i32 0, i32 1
  %t106 = load i64, ptr %l10, !tbaa !24
  %t109 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t105, i64 %t106)
  store i64 %t109, ptr %l51
  br label %bb18
bb18:
  %t110 = load i64, ptr %l51, !tbaa !24
  %t111 = icmp slt i64 %t110, 0
  br i1 %t111, label %bb19, label %bb20
bb19:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l10, !tbaa !24
  %t115 = load ptr, ptr %l3, !tbaa !29
  %t119 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveWords(ptr %v0, ptr %v1, ptr %t113, i64 %t114, ptr %t115)
  store i32 %t119, ptr %l56
  %t120 = icmp ne i32 %t119, 0
  br i1 %t120, label %bb22, label %ok.121, !prof !99
ok.121:
  br label %bb21
bb20:
  br label %bb28
bb21:
  br label %bb27
bb22:
  %t122 = load i32, ptr %l56, !tbaa !23
  %t123 = ashr i32 %t122, 16
  %t125 = icmp eq i32 %t123, 1
  store i1 %t125, ptr %l58, !tbaa !21
  %t126 = load i32, ptr %l56, !tbaa !23
  %t127 = lshr i32 %t126, 16
  %t128 = and i32 %t126, 65535
  %t129 = icmp eq i32 %t127, 1
  %t130 = select i1 %t129, i32 1, i32 0
  %t131 = icmp eq i32 %t126, 0
  %t132 = shl i32 %t130, 16
  %t133 = or i32 %t132, %t128
  %t134 = select i1 %t131, i32 0, i32 %t133
  store i32 %t134, ptr %l11, !tbaa !23
  br label %bb23
bb23:
  %t135 = load ptr, ptr %l3, !tbaa !29
  %t136 = load i64, ptr %l6, !tbaa !24
  %t137 = load i64, ptr %l7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aSnapshot_2edrop(ptr %v1, ptr %t135, i64 %t136, i64 %t137)
  br label %bb24
bb24:
  %t141 = load i32, ptr %l11, !tbaa !23
  store i32 %t141, ptr %l63, !tbaa !23
  %t143 = load i32, ptr %l63, !tbaa !23
  %t144 = icmp ne i32 %t143, 0
  br i1 %t144, label %bb25, label %bb26
bb25:
  %t146 = load i32, ptr %l63, !tbaa !23
  %t147 = lshr i32 %t146, 16
  %t148 = and i32 %t146, 65535
  %t149 = icmp eq i32 %t147, 1
  %t150 = select i1 %t149, i32 1, i32 0
  %t151 = icmp eq i32 %t146, 0
  %t152 = shl i32 %t150, 16
  %t153 = or i32 %t152, %t148
  %t154 = select i1 %t151, i32 0, i32 %t153
  %t156 = insertvalue { i32, i64 } zeroinitializer, i32 %t154, 0
  store { i32, i64 } %t156, ptr %rv
  br label %ret
bb26:
  call void @__olang_check_failed(ptr @olang_loc_75b3dda1da275889_df5a5485a99f3eed)
  unreachable
bb27:
  br label %bb28
bb28:
  %t157 = load i64, ptr %l10, !tbaa !24
  %t159 = add i64 %t157, 1
  store i64 %t159, ptr %l10, !tbaa !24
  br label %bb29
bb29:
  br label %bb13
bb30:
  %t161 = load i64, ptr %l9, !tbaa !24
  %t163 = insertvalue { i32, i64 } zeroinitializer, i64 %t161, 1
  store { i32, i64 } %t163, ptr %rv
  br label %ret
ret:
  %rr = load { i32, i64 }, ptr %rv
  ret { i32, i64 } %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eScopeSlots(ptr %v0, ptr %a0) #0 {
entry:
  %l3 = alloca i64
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 52
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load i64, ptr %l3, !tbaa !24
  store i64 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 88
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
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 89
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eanchorRegion(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i1
  %l5 = alloca ptr
  %l6 = alloca i64
  %l8 = alloca %"compiler/eval:Ptr"
  %l9 = alloca i32
  %l10 = alloca { i64, ptr }
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca i1
  %l26 = alloca ptr
  %l31 = alloca i64
  %l33 = alloca i64
  %l38 = alloca { i64, ptr }
  %l39 = alloca i64
  %l40 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %l53 = alloca i64
  %l54 = alloca i64
  %l58 = alloca i64
  %l60 = alloca %"compiler/eval:Ptr"
  %l64 = alloca i32
  %l67 = alloca ptr
  %l71 = alloca %"compiler/eval:Ptr"
  %l72 = alloca i64
  %l79 = alloca i64
  %l82 = alloca i64
  %s0 = alloca %olang.scope
  %s1 = alloca %olang.scope
  %s3 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l2, !tbaa !23
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %s0, ptr %t4, i32 %t5)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l18
  br label %bb1
bb1:
  %t9 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l3
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l22
  br label %bb2
bb2:
  %t18 = load i1, ptr %l22, !tbaa !21
  %t19 = xor i1 %t18, true
  store i1 %t19, ptr %l4, !tbaa !21
  %t21 = load i1, ptr %l4, !tbaa !21
  %t23 = xor i1 %t21, true
  br i1 %t23, label %bb3, label %bb4
bb3:
  store %olang.scope zeroinitializer, ptr %s1
  store ptr %l3, ptr %l26, !tbaa !29
  %t25 = icmp sge i64 0, 0
  br i1 %t25, label %bb5, label %bb6
bb4:
  br label %bb10
bb5:
  %t27 = icmp sle i64 0, 1152921504606846975
  br i1 %t27, label %bb7, label %bb8
bb6:
  call void @__olang_check_failed(ptr @olang_loc_1af190ed0f8ad609_3dab539ded9f1c85)
  unreachable
bb7:
  %t29 = mul i64 0, 8
  %t30 = insertvalue { i64, ptr } undef, i64 0, 0
  %t31 = insertvalue { i64, ptr } %t30, ptr getelementptr (i8, ptr @__olang_empty_array, i64 64), 1
  %t32 = load ptr, ptr %l26, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %s0, ptr %t32, { i64, ptr } %t31)
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_1af190ed0f8ad609_3dab539ded9f1c85)
  unreachable
bb9:
  call void @__olang_scope_close(ptr %s1)
  br label %bb10
bb10:
  store ptr %l3, ptr %l5, !tbaa !29
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  store %olang.scope zeroinitializer, ptr %s3
  %t35 = load i64, ptr %l6, !tbaa !24
  store i64 %t35, ptr %l31, !tbaa !24
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t38 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %s0, ptr %t36)
  store i64 %t38, ptr %l33
  br label %bb12
bb12:
  %t39 = load i64, ptr %l31, !tbaa !24
  %t40 = load i64, ptr %l33, !tbaa !24
  %t41 = icmp slt i64 %t39, %t40
  %t43 = xor i1 %t41, true
  br i1 %t43, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s3)
  br label %bb39
bb14:
  br label %bb15
bb15:
  %t45 = load ptr, ptr %l5, !tbaa !29
  %t46 = load i64, ptr %l6, !tbaa !24
  %t49 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %s0, ptr %s3, ptr %t45, i64 %t46)
  store { i64, ptr } %t49, ptr %l38
  br label %bb16
bb16:
  %t50 = load { i64, ptr }, ptr %l38, !tbaa !27
  %t51 = extractvalue { i64, ptr } %t50, 0
  store i64 %t51, ptr %l39, !tbaa !24
  %t52 = load i64, ptr %l39, !tbaa !24
  %t53 = mul i64 %t52, 8
  %t54 = call ptr @__olang_scope_alloc(ptr %s3, i64 %t53)
  %t55 = insertvalue { i64, ptr } undef, i64 %t52, 0
  %t56 = insertvalue { i64, ptr } %t55, ptr %t54, 1
  store { i64, ptr } %t56, ptr %l40, !tbaa !27
  %t57 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = load i64, ptr %l39, !tbaa !24
  %t62 = mul i64 %t61, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t58, ptr %t60, i64 %t62, i1 false)
  %t63 = load { i64, ptr }, ptr %l40, !tbaa !27
  store %"compiler/eval:Ptr" %a1, ptr %l8
  %t66 = load i32, ptr %l2, !tbaa !23
  store i32 %t66, ptr %l9, !tbaa !23
  store { i64, ptr } %t63, ptr %l10, !tbaa !27
  store i64 0, ptr %l11, !tbaa !24
  %t70 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t72 = extractvalue { i64, ptr } %t70, 0
  store i64 %t72, ptr %l12, !tbaa !24
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s5
  %t74 = load i64, ptr %l11, !tbaa !24
  %t75 = load i64, ptr %l12, !tbaa !24
  %t78 = icmp slt i64 %t74, %t75
  %t80 = xor i1 %t78, true
  br i1 %t80, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s5)
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t82 = load { i64, ptr }, ptr %l10, !tbaa !27
  store { i64, ptr } %t82, ptr %l50, !tbaa !27
  %t83 = load i64, ptr %l11, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t83
  %t88 = load i64, ptr %t87, !tbaa !34
  store i64 %t88, ptr %l13, !tbaa !24
  %t90 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 0
  %t91 = load i64, ptr %t90, !tbaa !24
  store i64 %t91, ptr %l53, !tbaa !24
  %t92 = getelementptr %"compiler/eval:Ptr", ptr %l8, i32 0, i32 1
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l54, !tbaa !24
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t95 = load i32, ptr %l9, !tbaa !23
  %t96 = load i64, ptr %l13, !tbaa !24
  %t100 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t94, i32 %t95, i64 %t96)
  store i64 %t100, ptr %l58
  br label %bb21
bb21:
  %t101 = load i64, ptr %l54, !tbaa !24
  %t102 = load i64, ptr %l58, !tbaa !24
  %t103 = add i64 %t101, %t102
  %t104 = load i64, ptr %l53, !tbaa !24
  %t106 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t104, i64 %t103)
  store %"compiler/eval:Ptr" %t106, ptr %l60
  br label %bb22
bb22:
  %t107 = load %"compiler/eval:Ptr", ptr %l60
  store %"compiler/eval:Ptr" %t107, ptr %l8
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t109 = load i32, ptr %l9, !tbaa !23
  %t110 = load i64, ptr %l13, !tbaa !24
  %t114 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t108, i32 %t109, i64 %t110)
  store i32 %t114, ptr %l64
  br label %bb23
bb23:
  %t115 = load i32, ptr %l64, !tbaa !23
  store i32 %t115, ptr %l9, !tbaa !23
  call void @__olang_scope_close(ptr %s5)
  br label %bb24
bb24:
  %t116 = load i64, ptr %l11, !tbaa !24
  %t118 = add i64 %t116, 1
  store i64 %t118, ptr %l11, !tbaa !24
  br label %bb17
bb25:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l67, !tbaa !29
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t122 = load %"compiler/eval:Ptr", ptr %l8
  %t123 = load i32, ptr %l9, !tbaa !23
  %t127 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %t121, %"compiler/eval:Ptr" %t122, i32 %t123)
  store %"compiler/eval:Ptr" %t127, ptr %l71
  br label %bb26
bb26:
  %t128 = load ptr, ptr %l67, !tbaa !29
  %t129 = load %"compiler/eval:Ptr", ptr %l71
  %t130 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %t128, %"compiler/eval:Ptr" %t129)
  store i64 %t130, ptr %l72
  br label %bb27
bb27:
  %t131 = load i64, ptr %l72, !tbaa !24
  store i64 %t131, ptr %l14, !tbaa !24
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr %"compiler/eval:Machine", ptr %t132, i32 0, i32 22
  %t135 = load i1, ptr %t134, !tbaa !21
  br i1 %t135, label %bb28, label %bb29
bb28:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
bb29:
  br label %bb30
bb30:
  %t138 = load i64, ptr %l14, !tbaa !24
  %t140 = icmp ne i64 %t138, 0
  br i1 %t140, label %bb31, label %bb32
bb31:
  %t142 = load i1, ptr %l4, !tbaa !21
  br i1 %t142, label %bb33, label %bb34
bb32:
  br label %bb37
bb33:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load i64, ptr %l14, !tbaa !24
  %t148 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHomeOf(ptr %v0, ptr %t144, i64 %t145)
  store i64 %t148, ptr %l82
  br label %bb35
bb34:
  %t149 = load i64, ptr %l14, !tbaa !24
  store i64 %t149, ptr %l79, !tbaa !24
  br label %bb36
bb35:
  %t151 = load i64, ptr %l82, !tbaa !24
  store i64 %t151, ptr %l79, !tbaa !24
  br label %bb36
bb36:
  call void @__olang_scope_close(ptr %s3)
  call void @__olang_scope_close(ptr %s0)
  %t152 = load i64, ptr %l79, !tbaa !24
  store i64 %t152, ptr %rv
  br label %ret
bb37:
  call void @__olang_scope_close(ptr %s3)
  br label %bb38
bb38:
  %t153 = load i64, ptr %l6, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l6, !tbaa !24
  br label %bb11
bb39:
  call void @__olang_scope_close(ptr %s0)
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eassign(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2, { i64, [15 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca { %"compiler/eval:Ptr", i32 }
  %l5 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i32
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca %"compiler/mir:Lvalue"
  %l9 = alloca i32
  %l10 = alloca %"compiler/mir:Lvalue"
  %l11 = alloca { %"compiler/eval:Ptr", i32 }
  %l12 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i64
  %l15 = alloca %"compiler/eval:Ptr"
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca %"compiler/mir:Range"
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i64
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca %"compiler/mir:Range"
  %l25 = alloca %"compiler/mir:Lvalue"
  %l26 = alloca { %"compiler/eval:Ptr", i32 }
  %l29 = alloca i32
  %l30 = alloca i64
  %l31 = alloca %"compiler/mir:Range"
  %l32 = alloca { i64, [1 x i64] }
  %l33 = alloca { i64, [4 x i64] }
  %l34 = alloca i32
  %l35 = alloca { i64, [1 x i64] }
  %l36 = alloca i32
  %l37 = alloca { i64, [4 x i64] }
  %l38 = alloca { i64, [4 x i64] }
  %l39 = alloca %"compiler/mir:Lvalue"
  %l40 = alloca { i64, [4 x i64] }
  %l41 = alloca { i64, [4 x i64] }
  %l42 = alloca i32
  %l43 = alloca { i64, [2 x i64] }
  %l44 = alloca { i64, [1 x i64] }
  %l45 = alloca %"compiler/mir:Range"
  %l46 = alloca { i64, [4 x i64] }
  %l47 = alloca i32
  %l48 = alloca i32
  %l49 = alloca { i64, [1 x i64] }
  %l50 = alloca { i64, [1 x i64] }
  %l51 = alloca { i64, [1 x i64] }
  %l52 = alloca i64
  %l53 = alloca i64
  %l55 = alloca i1
  %l58 = alloca i1
  %l60 = alloca { i64, [4 x i64] }
  %l61 = alloca { i64, [1 x i64] }
  %l62 = alloca i64
  %l63 = alloca { i64, [4 x i64] }
  %l64 = alloca { i64, [1 x i64] }
  %l65 = alloca { i64, [4 x i64] }
  %l66 = alloca i64
  %l67 = alloca { i64, [1 x i64] }
  %l68 = alloca i64
  %l69 = alloca i64
  %l70 = alloca %"compiler/mir:Lvalue"
  %l71 = alloca { i64, [4 x i64] }
  %l75 = alloca { %"compiler/eval:Ptr", i32 }
  %l103 = alloca { %"compiler/eval:Ptr", i32 }
  %l108 = alloca i64
  %l111 = alloca %"compiler/eval:Ptr"
  %l130 = alloca i1
  %l140 = alloca i1
  %l143 = alloca i32
  %l146 = alloca ptr
  %l147 = alloca i64
  %l148 = alloca %"compiler/eval:Ptr"
  %l152 = alloca { i64, [4 x i64] }
  %l156 = alloca i1
  %l158 = alloca ptr
  %l162 = alloca i32
  %l163 = alloca i32
  %l166 = alloca ptr
  %l167 = alloca i64
  %l168 = alloca %"compiler/eval:Ptr"
  %l169 = alloca i32
  %l173 = alloca { i64, [4 x i64] }
  %l176 = alloca i1
  %l178 = alloca ptr
  %l182 = alloca i32
  %l183 = alloca i32
  %l186 = alloca ptr
  %l187 = alloca i64
  %l188 = alloca %"compiler/eval:Ptr"
  %l189 = alloca i32
  %l193 = alloca { i64, [4 x i64] }
  %l196 = alloca i1
  %l199 = alloca i64
  %l202 = alloca i1
  %l205 = alloca i64
  %l208 = alloca ptr
  %l209 = alloca i64
  %l210 = alloca %"compiler/eval:Ptr"
  %l211 = alloca i32
  %l215 = alloca { i64, [4 x i64] }
  %l218 = alloca ptr
  %l219 = alloca ptr
  %l220 = alloca i64
  %l224 = alloca { i64, [4 x i64] }
  %l225 = alloca %"compiler/eval:Ptr"
  %l226 = alloca %"compiler/eval:Ptr"
  %l227 = alloca ptr
  %l228 = alloca i64
  %l232 = alloca { i64, [4 x i64] }
  %l233 = alloca i64
  %l237 = alloca ptr
  %l241 = alloca %"compiler/eval:Ptr"
  %l244 = alloca %"compiler/eval:Ptr"
  %l248 = alloca %"compiler/eval:Ptr"
  %l251 = alloca ptr
  %l252 = alloca %"compiler/eval:Ptr"
  %l253 = alloca ptr
  %l254 = alloca ptr
  %l255 = alloca i64
  %l259 = alloca { i64, [4 x i64] }
  %l260 = alloca %"compiler/eval:Ptr"
  %l261 = alloca %"compiler/eval:Ptr"
  %l263 = alloca i1
  %l274 = alloca i1
  %l281 = alloca ptr
  %l282 = alloca %"compiler/eval:Ptr"
  %l285 = alloca i64
  %l291 = alloca i64
  %l301 = alloca i1
  %l302 = alloca i1
  %l308 = alloca i1
  %l314 = alloca i1
  %l315 = alloca ptr
  %l316 = alloca %"compiler/eval:Ptr"
  %l318 = alloca i64
  %l325 = alloca { %"compiler/eval:Ptr", i32 }
  %l328 = alloca ptr
  %l329 = alloca %"compiler/eval:Ptr"
  %l333 = alloca i64
  %l398 = alloca ptr
  %l399 = alloca %"compiler/eval:Ptr"
  %l400 = alloca ptr
  %l401 = alloca ptr
  %l405 = alloca i64
  %l407 = alloca i64
  %l410 = alloca i64
  %l432 = alloca i64
  %l437 = alloca i64
  %l446 = alloca ptr
  %l457 = alloca ptr
  %l467 = alloca ptr
  %l471 = alloca %"compiler/eval:Ptr"
  %l472 = alloca i64
  %l478 = alloca i64
  %l485 = alloca ptr
  %l486 = alloca %"compiler/eval:Ptr"
  %l487 = alloca ptr
  %l491 = alloca %"compiler/eval:Ptr"
  %l492 = alloca i64
  %l500 = alloca i64
  %l505 = alloca i64
  %l508 = alloca ptr
  %l512 = alloca %"compiler/eval:Ptr"
  %l513 = alloca i64
  %l520 = alloca ptr
  %l521 = alloca %"compiler/eval:Ptr"
  %l525 = alloca i64
  %l529 = alloca ptr
  %l530 = alloca %"compiler/eval:Ptr"
  %l533 = alloca i1
  %l534 = alloca i64
  %l537 = alloca i64
  %l539 = alloca i1
  %l543 = alloca i1
  %l544 = alloca i64
  %l549 = alloca i64
  %l563 = alloca i64
  %l567 = alloca ptr
  %l568 = alloca %"compiler/eval:Ptr"
  %l570 = alloca ptr
  %l573 = alloca i64
  %l575 = alloca %"compiler/eval:Ptr"
  %s11 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [15 x i64] } %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t1, i64 %t2, %"compiler/mir:Lvalue" %a2)
  store { %"compiler/eval:Ptr", i32 } %t7, ptr %l75
  br label %bb1
bb1:
  %t8 = load { %"compiler/eval:Ptr", i32 }, ptr %l75
  store { %"compiler/eval:Ptr", i32 } %t8, ptr %l4
  %t9 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l4, i32 0, i32 0
  %t10 = load %"compiler/eval:Ptr", ptr %t9
  store %"compiler/eval:Ptr" %t10, ptr %l5
  %t12 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l4, i32 0, i32 1
  %t13 = load i32, ptr %t12, !tbaa !23
  store i32 %t13, ptr %l6, !tbaa !23
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 22
  %t18 = load i1, ptr %t17, !tbaa !21
  br i1 %t18, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t20 = load { i64, [15 x i64] }, ptr %l3
  %t22 = extractvalue { i64, [15 x i64] } %t20, 0
  %t23 = icmp eq i64 %t22, 0
  br i1 %t23, label %bb5, label %bb6
bb5:
  %t25 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t26 = getelementptr { { i64, [4 x i64] } }, ptr %t25, i32 0, i32 0
  %t27 = load { i64, [4 x i64] }, ptr %t26
  store { i64, [4 x i64] } %t27, ptr %l7
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i64, ptr %l1, !tbaa !24
  %t31 = load %"compiler/eval:Ptr", ptr %l5
  %t32 = load i32, ptr %l6, !tbaa !23
  %t33 = load { i64, [4 x i64] }, ptr %l7
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t29, i64 %t30, %"compiler/eval:Ptr" %t31, i32 %t32, { i64, [4 x i64] } %t33)
  br label %bb8
bb8:
  br label %bb272
bb9:
  %t39 = load { i64, [15 x i64] }, ptr %l3
  %t41 = extractvalue { i64, [15 x i64] } %t39, 0
  %t42 = icmp eq i64 %t41, 1
  br i1 %t42, label %bb10, label %bb11
bb10:
  %t44 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t45 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t44, i32 0, i32 0
  %t46 = load %"compiler/mir:Lvalue", ptr %t45
  store %"compiler/mir:Lvalue" %t46, ptr %l8
  %t48 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t49 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t48, i32 0, i32 1
  %t50 = load i32, ptr %t49
  store i32 %t50, ptr %l9, !tbaa !23
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load i64, ptr %l1, !tbaa !24
  %t54 = load %"compiler/eval:Ptr", ptr %l5
  %t55 = load %"compiler/mir:Lvalue", ptr %l8
  %t56 = load i32, ptr %l9, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eref(ptr %v0, ptr %t52, i64 %t53, %"compiler/eval:Ptr" %t54, %"compiler/mir:Lvalue" %t55, i32 %t56)
  br label %bb13
bb13:
  br label %bb272
bb14:
  %t62 = load { i64, [15 x i64] }, ptr %l3
  %t64 = extractvalue { i64, [15 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 2
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t68 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t67, i32 0, i32 0
  %t69 = load %"compiler/mir:Lvalue", ptr %t68
  store %"compiler/mir:Lvalue" %t69, ptr %l10
  br label %bb17
bb16:
  br label %bb24
bb17:
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = load %"compiler/mir:Lvalue", ptr %l10
  %t77 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t71, i64 %t72, %"compiler/mir:Lvalue" %t73)
  store { %"compiler/eval:Ptr", i32 } %t77, ptr %l103
  br label %bb18
bb18:
  %t78 = load { %"compiler/eval:Ptr", i32 }, ptr %l103
  store { %"compiler/eval:Ptr", i32 } %t78, ptr %l11
  %t79 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l11, i32 0, i32 0
  %t80 = load %"compiler/eval:Ptr", ptr %t79
  store %"compiler/eval:Ptr" %t80, ptr %l12
  %t82 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l11, i32 0, i32 1
  %t83 = load i32, ptr %t82, !tbaa !23
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t89 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t85, i32 %t83)
  store i64 %t89, ptr %l108
  br label %bb19
bb19:
  %t90 = load i64, ptr %l108, !tbaa !24
  store i64 %t90, ptr %l14, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l14, !tbaa !24
  %t95 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %t91, i64 0, i64 %t92)
  store %"compiler/eval:Ptr" %t95, ptr %l111
  br label %bb20
bb20:
  %t96 = load %"compiler/eval:Ptr", ptr %l111
  store %"compiler/eval:Ptr" %t96, ptr %l15
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = load %"compiler/eval:Ptr", ptr %l15
  %t99 = load %"compiler/eval:Ptr", ptr %l12
  %t100 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t97, %"compiler/eval:Ptr" %t98, %"compiler/eval:Ptr" %t99, i64 %t100)
  br label %bb21
bb21:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load %"compiler/eval:Ptr", ptr %l12
  %t107 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %t105, %"compiler/eval:Ptr" %t106, i64 %t107)
  br label %bb22
bb22:
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load %"compiler/eval:Ptr", ptr %l5
  %t113 = load %"compiler/eval:Ptr", ptr %l15
  %t114 = load i64, ptr %l14, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopy(ptr %v0, ptr %t111, %"compiler/eval:Ptr" %t112, %"compiler/eval:Ptr" %t113, i64 %t114)
  br label %bb23
bb23:
  br label %bb272
bb24:
  %t119 = load { i64, [15 x i64] }, ptr %l3
  %t121 = extractvalue { i64, [15 x i64] } %t119, 0
  %t122 = icmp eq i64 %t121, 3
  br i1 %t122, label %bb25, label %bb26
bb25:
  %t124 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t125 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t124, i32 0, i32 0
  %t126 = load i32, ptr %t125, !range !{i32 0, i32 51}
  store i32 %t126, ptr %l16
  %t128 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t129 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t128, i32 0, i32 1
  %t130 = load i32, ptr %t129
  store i32 %t130, ptr %l17, !tbaa !23
  %t132 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t133 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t132, i32 0, i32 2
  %t134 = load %"compiler/mir:Range", ptr %t133
  store %"compiler/mir:Range" %t134, ptr %l18
  br label %bb27
bb26:
  br label %bb112
bb27:
  %t136 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t138 = trunc i64 39 to i32
  %t139 = icmp eq i32 %t136, %t138
  br i1 %t139, label %bb28, label %bb29
bb28:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb30
bb29:
  %t141 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t143 = trunc i64 40 to i32
  %t144 = icmp eq i32 %t141, %t143
  store i1 %t144, ptr %l130, !tbaa !21
  br label %bb30
bb30:
  %t146 = load i1, ptr %l130, !tbaa !21
  br i1 %t146, label %bb31, label %bb32
bb31:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l1, !tbaa !24
  %t149 = load %"compiler/eval:Ptr", ptr %l5
  %t150 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t151 = load %"compiler/mir:Range", ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackedOp(ptr %v0, ptr %t147, i64 %t148, %"compiler/eval:Ptr" %t149, i32 %t150, %"compiler/mir:Range" %t151)
  br label %bb33
bb32:
  br label %bb34
bb33:
  br label %ret
bb34:
  %t157 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t159 = trunc i64 20 to i32
  %t160 = icmp eq i32 %t157, %t159
  br i1 %t160, label %bb35, label %bb36
bb35:
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t163 = load i32, ptr %l17, !tbaa !23
  %t166 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %t162, i32 %t163)
  store i32 %t166, ptr %l143
  br label %bb37
bb36:
  store i1 false, ptr %l140, !tbaa !21
  br label %bb38
bb37:
  %t167 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  %t168 = load i32, ptr %l143, !tbaa !23
  %t170 = icmp ne i32 %t168, %t167
  store i1 %t170, ptr %l140, !tbaa !21
  br label %bb38
bb38:
  %t172 = load i1, ptr %l140, !tbaa !21
  br i1 %t172, label %bb39, label %bb40
bb39:
  %t173 = load ptr, ptr %l0, !tbaa !29
  store ptr %t173, ptr %l146, !tbaa !29
  %t174 = load i64, ptr %l1, !tbaa !24
  store i64 %t174, ptr %l147, !tbaa !24
  %t175 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t175, ptr %l148
  %t176 = load ptr, ptr %l0, !tbaa !29
  %t177 = load i64, ptr %l1, !tbaa !24
  %t178 = load %"compiler/mir:Range", ptr %l18
  %t182 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t176, i64 %t177, %"compiler/mir:Range" %t178, i64 0)
  store { i64, [4 x i64] } %t182, ptr %l152
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t183 = load i32, ptr %l17, !tbaa !23
  %t184 = load ptr, ptr %l146, !tbaa !29
  %t185 = load i64, ptr %l147, !tbaa !24
  %t186 = load %"compiler/eval:Ptr", ptr %l148
  %t187 = load { i64, [4 x i64] }, ptr %l152
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2econvertArray(ptr %v0, ptr %t184, i64 %t185, %"compiler/eval:Ptr" %t186, { i64, [4 x i64] } %t187, i32 %t183)
  br label %bb42
bb42:
  br label %ret
bb43:
  %t189 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t191 = trunc i64 20 to i32
  %t192 = icmp eq i32 %t189, %t191
  br i1 %t192, label %bb44, label %bb45
bb44:
  %t194 = load ptr, ptr %l0, !tbaa !29
  %t196 = getelementptr %"compiler/eval:Machine", ptr %t194, i32 0, i32 0
  %t197 = load ptr, ptr %t196, !tbaa !29
  store ptr %t197, ptr %l158, !tbaa !29
  %t198 = load ptr, ptr %l0, !tbaa !29
  %t200 = getelementptr %"compiler/eval:Machine", ptr %t198, i32 0, i32 0
  %t201 = load ptr, ptr %t200, !tbaa !29
  %t202 = load i32, ptr %l17, !tbaa !23
  %t205 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t201, i32 %t202)
  store i32 %t205, ptr %l162
  br label %bb46
bb45:
  store i1 false, ptr %l156, !tbaa !21
  br label %bb48
bb46:
  %t206 = load ptr, ptr %l158, !tbaa !29
  %t207 = load i32, ptr %l162, !tbaa !23
  %t208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t206, i32 %t207)
  store i32 %t208, ptr %l163
  br label %bb47
bb47:
  %t209 = load i32, ptr %l163, !range !{i32 0, i32 33}
  %t211 = trunc i64 20 to i32
  %t212 = icmp eq i32 %t209, %t211
  store i1 %t212, ptr %l156, !tbaa !21
  br label %bb48
bb48:
  %t214 = load i1, ptr %l156, !tbaa !21
  br i1 %t214, label %bb49, label %bb50
bb49:
  %t215 = load ptr, ptr %l0, !tbaa !29
  store ptr %t215, ptr %l166, !tbaa !29
  %t216 = load i64, ptr %l1, !tbaa !24
  store i64 %t216, ptr %l167, !tbaa !24
  %t217 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t217, ptr %l168
  %t218 = load i32, ptr %l17, !tbaa !23
  store i32 %t218, ptr %l169, !tbaa !23
  %t219 = load ptr, ptr %l0, !tbaa !29
  %t220 = load i64, ptr %l1, !tbaa !24
  %t221 = load %"compiler/mir:Range", ptr %l18
  %t225 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t219, i64 %t220, %"compiler/mir:Range" %t221, i64 0)
  store { i64, [4 x i64] } %t225, ptr %l173
  br label %bb51
bb50:
  br label %bb53
bb51:
  %t226 = load ptr, ptr %l166, !tbaa !29
  %t227 = load i64, ptr %l167, !tbaa !24
  %t228 = load %"compiler/eval:Ptr", ptr %l168
  %t229 = load i32, ptr %l169, !tbaa !23
  %t230 = load { i64, [4 x i64] }, ptr %l173
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t226, i64 %t227, %"compiler/eval:Ptr" %t228, i32 %t229, { i64, [4 x i64] } %t230)
  br label %bb52
bb52:
  br label %ret
bb53:
  %t231 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t233 = trunc i64 20 to i32
  %t234 = icmp eq i32 %t231, %t233
  br i1 %t234, label %bb54, label %bb55
bb54:
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Machine", ptr %t236, i32 0, i32 0
  %t239 = load ptr, ptr %t238, !tbaa !29
  store ptr %t239, ptr %l178, !tbaa !29
  %t240 = load ptr, ptr %l0, !tbaa !29
  %t242 = getelementptr %"compiler/eval:Machine", ptr %t240, i32 0, i32 0
  %t243 = load ptr, ptr %t242, !tbaa !29
  %t244 = load i32, ptr %l17, !tbaa !23
  %t247 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t243, i32 %t244)
  store i32 %t247, ptr %l182
  br label %bb56
bb55:
  store i1 false, ptr %l176, !tbaa !21
  br label %bb58
bb56:
  %t248 = load ptr, ptr %l178, !tbaa !29
  %t249 = load i32, ptr %l182, !tbaa !23
  %t250 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t248, i32 %t249)
  store i32 %t250, ptr %l183
  br label %bb57
bb57:
  %t251 = load i32, ptr %l183, !range !{i32 0, i32 33}
  %t253 = trunc i64 21 to i32
  %t254 = icmp eq i32 %t251, %t253
  store i1 %t254, ptr %l176, !tbaa !21
  br label %bb58
bb58:
  %t256 = load i1, ptr %l176, !tbaa !21
  br i1 %t256, label %bb59, label %bb60
bb59:
  %t257 = load ptr, ptr %l0, !tbaa !29
  store ptr %t257, ptr %l186, !tbaa !29
  %t258 = load i64, ptr %l1, !tbaa !24
  store i64 %t258, ptr %l187, !tbaa !24
  %t259 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t259, ptr %l188
  %t260 = load i32, ptr %l17, !tbaa !23
  store i32 %t260, ptr %l189, !tbaa !23
  %t261 = load ptr, ptr %l0, !tbaa !29
  %t262 = load i64, ptr %l1, !tbaa !24
  %t263 = load %"compiler/mir:Range", ptr %l18
  %t267 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t261, i64 %t262, %"compiler/mir:Range" %t263, i64 0)
  store { i64, [4 x i64] } %t267, ptr %l193
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t268 = load ptr, ptr %l186, !tbaa !29
  %t269 = load i64, ptr %l187, !tbaa !24
  %t270 = load %"compiler/eval:Ptr", ptr %l188
  %t271 = load i32, ptr %l189, !tbaa !23
  %t272 = load { i64, [4 x i64] }, ptr %l193
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t268, i64 %t269, %"compiler/eval:Ptr" %t270, i32 %t271, { i64, [4 x i64] } %t272)
  br label %bb62
bb62:
  br label %ret
bb63:
  %t273 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t275 = trunc i64 20 to i32
  %t276 = icmp eq i32 %t273, %t275
  br i1 %t276, label %bb64, label %bb65
bb64:
  %t278 = load ptr, ptr %l0, !tbaa !29
  %t279 = load i32, ptr %l17, !tbaa !23
  %t282 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t278, i32 %t279)
  store i64 %t282, ptr %l199
  br label %bb66
bb65:
  store i1 false, ptr %l196, !tbaa !21
  br label %bb71
bb66:
  %t283 = load i64, ptr @G_2ecompiler_2feval_2evAgg, !tbaa !24
  %t284 = load i64, ptr %l199, !tbaa !24
  %t286 = icmp eq i64 %t284, %t283
  br i1 %t286, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l202, !tbaa !21
  br label %bb70
bb68:
  %t288 = load ptr, ptr %l0, !tbaa !29
  %t289 = load i32, ptr %l17, !tbaa !23
  %t292 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t288, i32 %t289)
  store i64 %t292, ptr %l205
  br label %bb69
bb69:
  %t293 = load i64, ptr @G_2ecompiler_2feval_2evEnum, !tbaa !24
  %t294 = load i64, ptr %l205, !tbaa !24
  %t296 = icmp eq i64 %t294, %t293
  store i1 %t296, ptr %l202, !tbaa !21
  br label %bb70
bb70:
  %t298 = load i1, ptr %l202, !tbaa !21
  store i1 %t298, ptr %l196, !tbaa !21
  br label %bb71
bb71:
  %t299 = load i1, ptr %l196, !tbaa !21
  br i1 %t299, label %bb72, label %bb73
bb72:
  %t300 = load ptr, ptr %l0, !tbaa !29
  store ptr %t300, ptr %l208, !tbaa !29
  %t301 = load i64, ptr %l1, !tbaa !24
  store i64 %t301, ptr %l209, !tbaa !24
  %t302 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t302, ptr %l210
  %t303 = load i32, ptr %l17, !tbaa !23
  store i32 %t303, ptr %l211, !tbaa !23
  %t304 = load ptr, ptr %l0, !tbaa !29
  %t305 = load i64, ptr %l1, !tbaa !24
  %t306 = load %"compiler/mir:Range", ptr %l18
  %t310 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t304, i64 %t305, %"compiler/mir:Range" %t306, i64 0)
  store { i64, [4 x i64] } %t310, ptr %l215
  br label %bb74
bb73:
  br label %bb76
bb74:
  %t311 = load ptr, ptr %l208, !tbaa !29
  %t312 = load i64, ptr %l209, !tbaa !24
  %t313 = load %"compiler/eval:Ptr", ptr %l210
  %t314 = load i32, ptr %l211, !tbaa !23
  %t315 = load { i64, [4 x i64] }, ptr %l215
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t311, i64 %t312, %"compiler/eval:Ptr" %t313, i32 %t314, { i64, [4 x i64] } %t315)
  br label %bb75
bb75:
  br label %ret
bb76:
  %t316 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t318 = trunc i64 41 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb77, label %bb78
bb77:
  store %olang.scope zeroinitializer, ptr %s11
  %t321 = load ptr, ptr %l0, !tbaa !29
  store ptr %t321, ptr %l218, !tbaa !29
  %t322 = load ptr, ptr %l0, !tbaa !29
  store ptr %t322, ptr %l219, !tbaa !29
  %t323 = load i64, ptr %l1, !tbaa !24
  store i64 %t323, ptr %l220, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t325 = load i64, ptr %l1, !tbaa !24
  %t326 = load %"compiler/mir:Range", ptr %l18
  %t330 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t324, i64 %t325, %"compiler/mir:Range" %t326, i64 0)
  store { i64, [4 x i64] } %t330, ptr %l224
  br label %bb79
bb78:
  br label %bb91
bb79:
  %t331 = load ptr, ptr %l219, !tbaa !29
  %t332 = load i64, ptr %l220, !tbaa !24
  %t333 = load { i64, [4 x i64] }, ptr %l224
  %t334 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t331, i64 %t332, { i64, [4 x i64] } %t333, i64 1)
  store %"compiler/eval:Ptr" %t334, ptr %l225
  br label %bb80
bb80:
  %t335 = load ptr, ptr %l218, !tbaa !29
  %t336 = load %"compiler/eval:Ptr", ptr %l225
  %t337 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t335, %"compiler/eval:Ptr" %t336)
  store %"compiler/eval:Ptr" %t337, ptr %l226
  br label %bb81
bb81:
  %t338 = load %"compiler/eval:Ptr", ptr %l226
  store %"compiler/eval:Ptr" %t338, ptr %l19
  %t339 = load ptr, ptr %l0, !tbaa !29
  store ptr %t339, ptr %l227, !tbaa !29
  %t340 = load i64, ptr %l1, !tbaa !24
  store i64 %t340, ptr %l228, !tbaa !24
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t342 = load i64, ptr %l1, !tbaa !24
  %t343 = load %"compiler/mir:Range", ptr %l18
  %t347 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t341, i64 %t342, %"compiler/mir:Range" %t343, i64 1)
  store { i64, [4 x i64] } %t347, ptr %l232
  br label %bb82
bb82:
  %t348 = load ptr, ptr %l227, !tbaa !29
  %t349 = load i64, ptr %l228, !tbaa !24
  %t350 = load { i64, [4 x i64] }, ptr %l232
  %t351 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t348, i64 %t349, { i64, [4 x i64] } %t350)
  store i64 %t351, ptr %l233
  br label %bb83
bb83:
  %t352 = load i64, ptr %l233, !tbaa !24
  store i64 %t352, ptr %l20, !tbaa !24
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load %"compiler/eval:Ptr", ptr %l5
  %t355 = load %"compiler/eval:Ptr", ptr %l19
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t353, %"compiler/eval:Ptr" %t354, %"compiler/eval:Ptr" %t355)
  br label %bb84
bb84:
  %t359 = load ptr, ptr %l0, !tbaa !29
  store ptr %t359, ptr %l237, !tbaa !29
  %t360 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 0
  %t361 = load i64, ptr %t360, !tbaa !24
  %t362 = getelementptr %"compiler/eval:Ptr", ptr %l5, i32 0, i32 1
  %t363 = load i64, ptr %t362, !tbaa !24
  %t365 = add i64 %t363, 8
  %t368 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t361, i64 %t365)
  store %"compiler/eval:Ptr" %t368, ptr %l241
  br label %bb85
bb85:
  %t369 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t370 = load i64, ptr %t369, !tbaa !24
  %t372 = icmp eq i64 %t370, 0
  br i1 %t372, label %bb86, label %bb87
bb86:
  %t374 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t374, ptr %l244
  br label %bb89
bb87:
  %t376 = load ptr, ptr %l0, !tbaa !29
  %t377 = load i64, ptr %l20, !tbaa !24
  %t380 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etable(ptr %v0, ptr %t376, i64 %t377)
  store %"compiler/eval:Ptr" %t380, ptr %l248
  br label %bb88
bb88:
  %t381 = load %"compiler/eval:Ptr", ptr %l248
  store %"compiler/eval:Ptr" %t381, ptr %l244
  br label %bb89
bb89:
  %t382 = load ptr, ptr %l237, !tbaa !29
  %t383 = load %"compiler/eval:Ptr", ptr %l241
  %t384 = load %"compiler/eval:Ptr", ptr %l244
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t382, %"compiler/eval:Ptr" %t383, %"compiler/eval:Ptr" %t384)
  br label %bb90
bb90:
  call void @__olang_scope_close(ptr %s11)
  br label %ret
bb91:
  %t385 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t387 = trunc i64 42 to i32
  %t388 = icmp eq i32 %t385, %t387
  br i1 %t388, label %bb92, label %bb93
bb92:
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l251, !tbaa !29
  %t391 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t391, ptr %l252
  %t392 = load ptr, ptr %l0, !tbaa !29
  store ptr %t392, ptr %l253, !tbaa !29
  %t393 = load ptr, ptr %l0, !tbaa !29
  store ptr %t393, ptr %l254, !tbaa !29
  %t394 = load i64, ptr %l1, !tbaa !24
  store i64 %t394, ptr %l255, !tbaa !24
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t396 = load i64, ptr %l1, !tbaa !24
  %t397 = load %"compiler/mir:Range", ptr %l18
  %t401 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t395, i64 %t396, %"compiler/mir:Range" %t397, i64 0)
  store { i64, [4 x i64] } %t401, ptr %l259
  br label %bb94
bb93:
  br label %bb98
bb94:
  %t402 = load ptr, ptr %l254, !tbaa !29
  %t403 = load i64, ptr %l255, !tbaa !24
  %t404 = load { i64, [4 x i64] }, ptr %l259
  %t405 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t402, i64 %t403, { i64, [4 x i64] } %t404, i64 1)
  store %"compiler/eval:Ptr" %t405, ptr %l260
  br label %bb95
bb95:
  %t406 = load ptr, ptr %l253, !tbaa !29
  %t407 = load %"compiler/eval:Ptr", ptr %l260
  %t408 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t406, %"compiler/eval:Ptr" %t407)
  store %"compiler/eval:Ptr" %t408, ptr %l261
  br label %bb96
bb96:
  %t409 = load ptr, ptr %l251, !tbaa !29
  %t410 = load %"compiler/eval:Ptr", ptr %l252
  %t411 = load %"compiler/eval:Ptr", ptr %l261
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t409, %"compiler/eval:Ptr" %t410, %"compiler/eval:Ptr" %t411)
  br label %bb97
bb97:
  br label %ret
bb98:
  %t412 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t414 = call i1 @compiler_2feval_2esatOp(i32 %t412)
  store i1 %t414, ptr %l263
  br label %bb99
bb99:
  %t415 = load i1, ptr %l263, !tbaa !21
  br i1 %t415, label %bb100, label %bb101
bb100:
  %t416 = load ptr, ptr %l0, !tbaa !29
  %t417 = load i64, ptr %l1, !tbaa !24
  %t418 = load %"compiler/eval:Ptr", ptr %l5
  %t419 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t420 = load i32, ptr %l17, !tbaa !23
  %t421 = load %"compiler/mir:Range", ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2esaturate(ptr %v0, ptr %t416, i64 %t417, %"compiler/eval:Ptr" %t418, i32 %t419, i32 %t420, %"compiler/mir:Range" %t421)
  br label %bb102
bb101:
  br label %bb103
bb102:
  br label %ret
bb103:
  %t428 = load ptr, ptr %l0, !tbaa !29
  %t429 = load i64, ptr %l1, !tbaa !24
  %t430 = load i32, ptr %l17, !tbaa !23
  %t431 = load %"compiler/mir:Range", ptr %l18
  %t436 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOp(ptr %v0, ptr %t428, i64 %t429, i32 %t430, %"compiler/mir:Range" %t431)
  store i1 %t436, ptr %l274
  br label %bb104
bb104:
  %t437 = load i1, ptr %l274, !tbaa !21
  br i1 %t437, label %bb105, label %bb106
bb105:
  %t438 = load ptr, ptr %l0, !tbaa !29
  %t439 = load i64, ptr %l1, !tbaa !24
  %t440 = load %"compiler/eval:Ptr", ptr %l5
  %t441 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t442 = load i32, ptr %l17, !tbaa !23
  %t443 = load %"compiler/mir:Range", ptr %l18
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eprimWide(ptr %v0, ptr %t438, i64 %t439, %"compiler/eval:Ptr" %t440, i32 %t441, i32 %t442, %"compiler/mir:Range" %t443)
  br label %bb107
bb106:
  br label %bb108
bb107:
  br label %ret
bb108:
  %t450 = load ptr, ptr %l0, !tbaa !29
  store ptr %t450, ptr %l281, !tbaa !29
  %t451 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t451, ptr %l282
  %t452 = load ptr, ptr %l0, !tbaa !29
  %t453 = load i32, ptr %l17, !tbaa !23
  %t456 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t452, i32 %t453)
  store i64 %t456, ptr %l285
  br label %bb109
bb109:
  %t457 = load ptr, ptr %l0, !tbaa !29
  %t458 = load i64, ptr %l1, !tbaa !24
  %t459 = load i32, ptr %l16, !range !{i32 0, i32 51}
  %t460 = load i32, ptr %l17, !tbaa !23
  %t461 = load %"compiler/mir:Range", ptr %l18
  %t467 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eprim(ptr %v0, ptr %t457, i64 %t458, i32 %t459, i32 %t460, %"compiler/mir:Range" %t461)
  store i64 %t467, ptr %l291
  br label %bb110
bb110:
  %t468 = load ptr, ptr %l281, !tbaa !29
  %t469 = load %"compiler/eval:Ptr", ptr %l282
  %t470 = load i64, ptr %l285, !tbaa !24
  %t471 = load i64, ptr %l291, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t468, %"compiler/eval:Ptr" %t469, i64 %t470, i64 %t471)
  br label %bb111
bb111:
  br label %bb272
bb112:
  %t472 = load { i64, [15 x i64] }, ptr %l3
  %t474 = extractvalue { i64, [15 x i64] } %t472, 0
  %t475 = icmp eq i64 %t474, 4
  br i1 %t475, label %bb113, label %bb114
bb113:
  %t477 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t478 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t477, i32 0, i32 0
  %t479 = load i32, ptr %t478, !range !{i32 0, i32 51}
  store i32 %t479, ptr %l21
  %t481 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t482 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t481, i32 0, i32 1
  %t483 = load i32, ptr %t482
  store i32 %t483, ptr %l22, !tbaa !23
  %t485 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t486 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t485, i32 0, i32 2
  %t487 = load %"compiler/mir:Range", ptr %t486
  store %"compiler/mir:Range" %t487, ptr %l23
  br label %bb115
bb114:
  br label %bb126
bb115:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t490 = load i64, ptr %l1, !tbaa !24
  %t491 = load i32, ptr %l22, !tbaa !23
  %t492 = load %"compiler/mir:Range", ptr %l23
  %t497 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOp(ptr %v0, ptr %t489, i64 %t490, i32 %t491, %"compiler/mir:Range" %t492)
  store i1 %t497, ptr %l301
  br label %bb116
bb116:
  %t498 = load i1, ptr %l301, !tbaa !21
  br i1 %t498, label %bb117, label %bb118
bb117:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t500 = load i64, ptr %l1, !tbaa !24
  %t501 = load i32, ptr %l21, !range !{i32 0, i32 51}
  %t502 = load i32, ptr %l22, !tbaa !23
  %t503 = load %"compiler/mir:Range", ptr %l23
  %t509 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %t499, i64 %t500, i32 %t501, i32 %t502, %"compiler/mir:Range" %t503)
  store i1 %t509, ptr %l308
  br label %bb119
bb118:
  %t510 = load ptr, ptr %l0, !tbaa !29
  %t511 = load i64, ptr %l1, !tbaa !24
  %t512 = load i32, ptr %l21, !range !{i32 0, i32 51}
  %t513 = load i32, ptr %l22, !tbaa !23
  %t514 = load %"compiler/mir:Range", ptr %l23
  %t520 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflows(ptr %v0, ptr %t510, i64 %t511, i32 %t512, i32 %t513, %"compiler/mir:Range" %t514)
  store i1 %t520, ptr %l314
  br label %bb120
bb119:
  %t521 = load i1, ptr %l308, !tbaa !21
  store i1 %t521, ptr %l302, !tbaa !21
  br label %bb121
bb120:
  %t522 = load i1, ptr %l314, !tbaa !21
  store i1 %t522, ptr %l302, !tbaa !21
  br label %bb121
bb121:
  %t523 = load i1, ptr %l302, !tbaa !21
  %t524 = load ptr, ptr %l0, !tbaa !29
  store ptr %t524, ptr %l315, !tbaa !29
  %t525 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t525, ptr %l316
  br i1 %t523, label %bb122, label %bb123
bb122:
  store i64 1, ptr %l318, !tbaa !24
  br label %bb124
bb123:
  store i64 0, ptr %l318, !tbaa !24
  br label %bb124
bb124:
  %t528 = load ptr, ptr %l315, !tbaa !29
  %t529 = load %"compiler/eval:Ptr", ptr %l316
  %t530 = load i64, ptr %l318, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t528, %"compiler/eval:Ptr" %t529, i64 1, i64 %t530)
  br label %bb125
bb125:
  br label %bb272
bb126:
  %t531 = load { i64, [15 x i64] }, ptr %l3
  %t533 = extractvalue { i64, [15 x i64] } %t531, 0
  %t534 = icmp eq i64 %t533, 5
  br i1 %t534, label %bb127, label %bb128
bb127:
  %t536 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t537 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t536, i32 0, i32 0
  %t538 = load %"compiler/mir:Lvalue", ptr %t537
  store %"compiler/mir:Lvalue" %t538, ptr %l25
  br label %bb129
bb128:
  br label %bb133
bb129:
  %t540 = load ptr, ptr %l0, !tbaa !29
  %t541 = load i64, ptr %l1, !tbaa !24
  %t542 = load %"compiler/mir:Lvalue", ptr %l25
  %t546 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t540, i64 %t541, %"compiler/mir:Lvalue" %t542)
  store { %"compiler/eval:Ptr", i32 } %t546, ptr %l325
  br label %bb130
bb130:
  %t547 = load { %"compiler/eval:Ptr", i32 }, ptr %l325
  store { %"compiler/eval:Ptr", i32 } %t547, ptr %l26
  %t548 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l26, i32 0, i32 0
  %t549 = load %"compiler/eval:Ptr", ptr %t548
  %t551 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l26, i32 0, i32 1
  %t552 = load i32, ptr %t551, !tbaa !23
  %t554 = load ptr, ptr %l0, !tbaa !29
  store ptr %t554, ptr %l328, !tbaa !29
  %t555 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t555, ptr %l329
  %t556 = load ptr, ptr %l0, !tbaa !29
  %t562 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %t556, %"compiler/eval:Ptr" %t549, i32 %t552)
  store i64 %t562, ptr %l333
  br label %bb131
bb131:
  %t563 = load ptr, ptr %l328, !tbaa !29
  %t564 = load %"compiler/eval:Ptr", ptr %l329
  %t565 = load i64, ptr %l333, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t563, %"compiler/eval:Ptr" %t564, i64 8, i64 %t565)
  br label %bb132
bb132:
  br label %bb272
bb133:
  %t566 = load { i64, [15 x i64] }, ptr %l3
  %t568 = extractvalue { i64, [15 x i64] } %t566, 0
  %t569 = icmp eq i64 %t568, 6
  br i1 %t569, label %bb134, label %bb135
bb134:
  %t571 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t572 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t571, i32 0, i32 0
  %t573 = load i32, ptr %t572
  store i32 %t573, ptr %l29, !tbaa !23
  %t575 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t576 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t575, i32 0, i32 1
  %t577 = load i64, ptr %t576
  store i64 %t577, ptr %l30, !tbaa !24
  %t579 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t580 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t579, i32 0, i32 2
  %t581 = load %"compiler/mir:Range", ptr %t580
  store %"compiler/mir:Range" %t581, ptr %l31
  br label %bb136
bb135:
  br label %bb138
bb136:
  %t583 = load ptr, ptr %l0, !tbaa !29
  %t584 = load i64, ptr %l1, !tbaa !24
  %t585 = load %"compiler/eval:Ptr", ptr %l5
  %t586 = load i32, ptr %l29, !tbaa !23
  %t587 = load i64, ptr %l30, !tbaa !24
  %t588 = load %"compiler/mir:Range", ptr %l31
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eaggregate(ptr %v0, ptr %t583, i64 %t584, %"compiler/eval:Ptr" %t585, i32 %t586, i64 %t587, %"compiler/mir:Range" %t588)
  br label %bb137
bb137:
  br label %bb272
bb138:
  %t595 = load { i64, [15 x i64] }, ptr %l3
  %t597 = extractvalue { i64, [15 x i64] } %t595, 0
  %t598 = icmp eq i64 %t597, 7
  br i1 %t598, label %bb139, label %bb140
bb139:
  %t600 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t601 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t600, i32 0, i32 0
  %t602 = load { i64, [1 x i64] }, ptr %t601
  store { i64, [1 x i64] } %t602, ptr %l32
  %t604 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t605 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t604, i32 0, i32 1
  %t606 = load { i64, [4 x i64] }, ptr %t605
  store { i64, [4 x i64] } %t606, ptr %l33
  %t608 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t609 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t608, i32 0, i32 2
  %t610 = load i32, ptr %t609
  store i32 %t610, ptr %l34, !tbaa !23
  br label %bb141
bb140:
  br label %bb143
bb141:
  %t612 = load ptr, ptr %l0, !tbaa !29
  %t613 = load i64, ptr %l1, !tbaa !24
  %t614 = load %"compiler/eval:Ptr", ptr %l5
  %t615 = load { i64, [1 x i64] }, ptr %l32
  %t616 = load { i64, [4 x i64] }, ptr %l33
  %t617 = load i32, ptr %l34, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRef(ptr %v0, ptr %t612, i64 %t613, %"compiler/eval:Ptr" %t614, { i64, [1 x i64] } %t615, { i64, [4 x i64] } %t616, i32 %t617)
  br label %bb142
bb142:
  br label %bb272
bb143:
  %t624 = load { i64, [15 x i64] }, ptr %l3
  %t626 = extractvalue { i64, [15 x i64] } %t624, 0
  %t627 = icmp eq i64 %t626, 8
  br i1 %t627, label %bb144, label %bb145
bb144:
  %t629 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t630 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t629, i32 0, i32 0
  %t631 = load { i64, [1 x i64] }, ptr %t630
  store { i64, [1 x i64] } %t631, ptr %l35
  %t633 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t634 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t633, i32 0, i32 1
  %t635 = load i32, ptr %t634
  store i32 %t635, ptr %l36, !tbaa !23
  %t637 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t638 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t637, i32 0, i32 2
  %t639 = load { i64, [4 x i64] }, ptr %t638
  store { i64, [4 x i64] } %t639, ptr %l37
  %t641 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t642 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t641, i32 0, i32 3
  %t643 = load { i64, [4 x i64] }, ptr %t642
  store { i64, [4 x i64] } %t643, ptr %l38
  br label %bb146
bb145:
  br label %bb148
bb146:
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t646 = load i64, ptr %l1, !tbaa !24
  %t647 = load %"compiler/eval:Ptr", ptr %l5
  %t648 = load { i64, [1 x i64] }, ptr %l35
  %t649 = load i32, ptr %l36, !tbaa !23
  %t650 = load { i64, [4 x i64] }, ptr %l37
  %t651 = load { i64, [4 x i64] }, ptr %l38
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewArray(ptr %v0, ptr %t645, i64 %t646, %"compiler/eval:Ptr" %t647, { i64, [1 x i64] } %t648, i32 %t649, { i64, [4 x i64] } %t650, { i64, [4 x i64] } %t651)
  br label %bb147
bb147:
  br label %bb272
bb148:
  %t659 = load { i64, [15 x i64] }, ptr %l3
  %t661 = extractvalue { i64, [15 x i64] } %t659, 0
  %t662 = icmp eq i64 %t661, 9
  br i1 %t662, label %bb149, label %bb150
bb149:
  %t664 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t665 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t664, i32 0, i32 0
  %t666 = load %"compiler/mir:Lvalue", ptr %t665
  store %"compiler/mir:Lvalue" %t666, ptr %l39
  %t668 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t669 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t668, i32 0, i32 1
  %t670 = load { i64, [4 x i64] }, ptr %t669
  store { i64, [4 x i64] } %t670, ptr %l40
  %t672 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t673 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t672, i32 0, i32 2
  %t674 = load { i64, [4 x i64] }, ptr %t673
  store { i64, [4 x i64] } %t674, ptr %l41
  %t676 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t677 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t676, i32 0, i32 3
  %t678 = load i32, ptr %t677
  store i32 %t678, ptr %l42, !tbaa !23
  br label %bb151
bb150:
  br label %bb153
bb151:
  %t680 = load ptr, ptr %l0, !tbaa !29
  %t681 = load i64, ptr %l1, !tbaa !24
  %t682 = load %"compiler/eval:Ptr", ptr %l5
  %t683 = load %"compiler/mir:Lvalue", ptr %l39
  %t684 = load { i64, [4 x i64] }, ptr %l40
  %t685 = load { i64, [4 x i64] }, ptr %l41
  %t686 = load i32, ptr %l42, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eslice(ptr %v0, ptr %t680, i64 %t681, %"compiler/eval:Ptr" %t682, %"compiler/mir:Lvalue" %t683, { i64, [4 x i64] } %t684, { i64, [4 x i64] } %t685, i32 %t686)
  br label %bb152
bb152:
  br label %bb272
bb153:
  %t694 = load { i64, [15 x i64] }, ptr %l3
  %t696 = extractvalue { i64, [15 x i64] } %t694, 0
  %t697 = icmp eq i64 %t696, 10
  br i1 %t697, label %bb154, label %bb155
bb154:
  %t699 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t700 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t699, i32 0, i32 0
  %t701 = load { i64, [2 x i64] }, ptr %t700
  store { i64, [2 x i64] } %t701, ptr %l43
  %t703 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t704 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t703, i32 0, i32 2
  %t705 = load { i64, [1 x i64] }, ptr %t704
  store { i64, [1 x i64] } %t705, ptr %l44
  %t707 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t708 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t707, i32 0, i32 3
  %t709 = load %"compiler/mir:Range", ptr %t708
  store %"compiler/mir:Range" %t709, ptr %l45
  br label %bb156
bb155:
  br label %bb158
bb156:
  %t711 = load ptr, ptr %l0, !tbaa !29
  %t712 = load i64, ptr %l1, !tbaa !24
  %t713 = load %"compiler/eval:Ptr", ptr %l5
  %t714 = load { i64, [2 x i64] }, ptr %l43
  %t715 = load { i64, [1 x i64] }, ptr %l44
  %t716 = load %"compiler/mir:Range", ptr %l45
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eclosure(ptr %v0, ptr %t711, i64 %t712, %"compiler/eval:Ptr" %t713, { i64, [2 x i64] } %t714, { i64, [1 x i64] } %t715, %"compiler/mir:Range" %t716)
  br label %bb157
bb157:
  br label %bb272
bb158:
  %t723 = load { i64, [15 x i64] }, ptr %l3
  %t725 = extractvalue { i64, [15 x i64] } %t723, 0
  %t726 = icmp eq i64 %t725, 11
  br i1 %t726, label %bb159, label %bb160
bb159:
  %t728 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t729 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t728, i32 0, i32 0
  %t730 = load { i64, [4 x i64] }, ptr %t729
  store { i64, [4 x i64] } %t730, ptr %l46
  %t732 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t733 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t732, i32 0, i32 1
  %t734 = load i32, ptr %t733
  store i32 %t734, ptr %l47, !tbaa !23
  %t736 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t737 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t736, i32 0, i32 2
  %t738 = load i32, ptr %t737
  store i32 %t738, ptr %l48, !tbaa !23
  br label %bb161
bb160:
  br label %bb166
bb161:
  %t740 = load ptr, ptr %l0, !tbaa !29
  store ptr %t740, ptr %l398, !tbaa !29
  %t741 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t741, ptr %l399
  %t742 = load ptr, ptr %l0, !tbaa !29
  store ptr %t742, ptr %l400, !tbaa !29
  %t743 = load ptr, ptr %l0, !tbaa !29
  store ptr %t743, ptr %l401, !tbaa !29
  %t744 = load ptr, ptr %l0, !tbaa !29
  %t745 = load i64, ptr %l1, !tbaa !24
  %t746 = load { i64, [4 x i64] }, ptr %l46
  %t750 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t744, i64 %t745, { i64, [4 x i64] } %t746)
  store i64 %t750, ptr %l405
  br label %bb162
bb162:
  %t751 = load i32, ptr @G_2ecompiler_2fmir_2eI32T, !tbaa !23
  %t752 = load ptr, ptr %l401, !tbaa !29
  %t753 = load i64, ptr %l405, !tbaa !24
  %t755 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t752, i64 %t753, i32 %t751)
  store i64 %t755, ptr %l407
  br label %bb163
bb163:
  %t756 = load i32, ptr %l47, !tbaa !23
  %t757 = load i32, ptr %l48, !tbaa !23
  %t758 = load ptr, ptr %l400, !tbaa !29
  %t759 = load i64, ptr %l407, !tbaa !24
  %t762 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %t758, i64 %t759, i32 %t756, i32 %t757)
  store i64 %t762, ptr %l410
  br label %bb164
bb164:
  %t763 = load ptr, ptr %l398, !tbaa !29
  %t764 = load %"compiler/eval:Ptr", ptr %l399
  %t765 = load i64, ptr %l410, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t763, %"compiler/eval:Ptr" %t764, i64 4, i64 %t765)
  br label %bb165
bb165:
  br label %bb272
bb166:
  %t766 = load { i64, [15 x i64] }, ptr %l3
  %t768 = extractvalue { i64, [15 x i64] } %t766, 0
  %t769 = icmp eq i64 %t768, 12
  br i1 %t769, label %bb167, label %bb168
bb167:
  %t771 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t772 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t771, i32 0, i32 0
  %t773 = load { i64, [1 x i64] }, ptr %t772
  store { i64, [1 x i64] } %t773, ptr %l49
  %t775 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t776 = getelementptr { { i64, [1 x i64] }, { i64, [1 x i64] }, i32 }, ptr %t775, i32 0, i32 1
  %t777 = load { i64, [1 x i64] }, ptr %t776
  store { i64, [1 x i64] } %t777, ptr %l50
  br label %bb169
bb168:
  br label %bb171
bb169:
  %t779 = load ptr, ptr %l0, !tbaa !29
  %t780 = load i64, ptr %l1, !tbaa !24
  %t781 = load %"compiler/eval:Ptr", ptr %l5
  %t782 = load { i64, [1 x i64] }, ptr %l49
  %t783 = load { i64, [1 x i64] }, ptr %l50
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2etext(ptr %v0, ptr %t779, i64 %t780, %"compiler/eval:Ptr" %t781, { i64, [1 x i64] } %t782, { i64, [1 x i64] } %t783)
  br label %bb170
bb170:
  br label %bb272
bb171:
  %t789 = load { i64, [15 x i64] }, ptr %l3
  %t791 = extractvalue { i64, [15 x i64] } %t789, 0
  %t792 = icmp eq i64 %t791, 13
  br i1 %t792, label %bb172, label %bb173
bb172:
  %t794 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t795 = getelementptr { { i64, [1 x i64] } }, ptr %t794, i32 0, i32 0
  %t796 = load { i64, [1 x i64] }, ptr %t795
  store { i64, [1 x i64] } %t796, ptr %l51
  br label %bb178
bb173:
  %t798 = load { i64, [15 x i64] }, ptr %l3
  %t800 = extractvalue { i64, [15 x i64] } %t798, 0
  %t801 = icmp eq i64 %t800, 14
  br i1 %t801, label %bb174, label %bb175
bb174:
  %t803 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t804 = getelementptr { { i64, [1 x i64] } }, ptr %t803, i32 0, i32 0
  %t805 = load { i64, [1 x i64] }, ptr %t804
  store { i64, [1 x i64] } %t805, ptr %l51
  br label %bb178
bb175:
  %t807 = load { i64, [15 x i64] }, ptr %l3
  %t809 = extractvalue { i64, [15 x i64] } %t807, 0
  %t810 = icmp eq i64 %t809, 15
  br i1 %t810, label %bb176, label %bb177
bb176:
  %t812 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t813 = getelementptr { { i64, [1 x i64] } }, ptr %t812, i32 0, i32 0
  %t814 = load { i64, [1 x i64] }, ptr %t813
  store { i64, [1 x i64] } %t814, ptr %l51
  br label %bb178
bb177:
  br label %bb187
bb178:
  %t816 = load ptr, ptr %l0, !tbaa !29
  %t817 = load i64, ptr %l1, !tbaa !24
  %t818 = load { i64, [1 x i64] }, ptr %l51
  %t822 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %t816, i64 %t817, { i64, [1 x i64] } %t818)
  store i64 %t822, ptr %l432
  br label %bb179
bb179:
  %t823 = load i64, ptr %l432, !tbaa !24
  store i64 %t823, ptr %l52, !tbaa !24
  %t824 = load ptr, ptr %l0, !tbaa !29
  %t826 = getelementptr %"compiler/eval:Machine", ptr %t824, i32 0, i32 22
  %t827 = load i1, ptr %t826, !tbaa !21
  br i1 %t827, label %bb180, label %bb181
bb180:
  br label %ret
bb181:
  br label %bb182
bb182:
  %t829 = load ptr, ptr %l0, !tbaa !29
  %t830 = load i64, ptr %l52, !tbaa !24
  %t833 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregion(ptr %v0, ptr %t829, i64 %t830)
  store i64 %t833, ptr %l437
  br label %bb183
bb183:
  %t834 = load i64, ptr %l437, !tbaa !24
  store i64 %t834, ptr %l53, !tbaa !24
  %t835 = load i64, ptr %l53, !tbaa !24
  %t836 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t839 = and i64 %t835, %t836
  %t841 = load { i64, [15 x i64] }, ptr %l3
  %t843 = extractvalue { i64, [15 x i64] } %t841, 0
  %t844 = icmp eq i64 %t843, 15
  store i1 %t844, ptr %l55, !tbaa !21
  %t846 = load ptr, ptr %l0, !tbaa !29
  %t848 = getelementptr %"compiler/eval:Machine", ptr %t846, i32 0, i32 52
  %t852 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t848, i64 %t839)
  store ptr %t852, ptr %l446
  br label %bb184
bb184:
  %t853 = load ptr, ptr %l446, !tbaa !29
  %t855 = load i1, ptr %l55, !tbaa !21
  %t858 = getelementptr %"compiler/eval:scope", ptr %t853, i32 0, i32 18
  store i1 %t855, ptr %t858, !tbaa !21
  %t859 = load i64, ptr %l53, !tbaa !24
  %t860 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t863 = and i64 %t859, %t860
  %t865 = load { i64, [15 x i64] }, ptr %l3
  %t867 = extractvalue { i64, [15 x i64] } %t865, 0
  %t868 = icmp eq i64 %t867, 14
  store i1 %t868, ptr %l58, !tbaa !21
  %t870 = load ptr, ptr %l0, !tbaa !29
  %t872 = getelementptr %"compiler/eval:Machine", ptr %t870, i32 0, i32 52
  %t876 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t872, i64 %t863)
  store ptr %t876, ptr %l457
  br label %bb185
bb185:
  %t877 = load ptr, ptr %l457, !tbaa !29
  %t879 = load i1, ptr %l58, !tbaa !21
  %t882 = getelementptr %"compiler/eval:scope", ptr %t877, i32 0, i32 19
  store i1 %t879, ptr %t882, !tbaa !21
  %t883 = load ptr, ptr %l0, !tbaa !29
  %t884 = load %"compiler/eval:Ptr", ptr %l5
  %t885 = load i64, ptr %l53, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t883, %"compiler/eval:Ptr" %t884, i64 8, i64 %t885)
  br label %bb186
bb186:
  br label %bb272
bb187:
  %t889 = load { i64, [15 x i64] }, ptr %l3
  %t891 = extractvalue { i64, [15 x i64] } %t889, 0
  %t892 = icmp eq i64 %t891, 16
  br i1 %t892, label %bb188, label %bb189
bb188:
  %t894 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t895 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t894, i32 0, i32 0
  %t896 = load { i64, [4 x i64] }, ptr %t895
  store { i64, [4 x i64] } %t896, ptr %l60
  %t898 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t899 = getelementptr { { i64, [4 x i64] }, { i64, [1 x i64] } }, ptr %t898, i32 0, i32 1
  %t900 = load { i64, [1 x i64] }, ptr %t899
  store { i64, [1 x i64] } %t900, ptr %l61
  br label %bb190
bb189:
  br label %bb198
bb190:
  %t902 = load ptr, ptr %l0, !tbaa !29
  store ptr %t902, ptr %l467, !tbaa !29
  %t903 = load ptr, ptr %l0, !tbaa !29
  %t904 = load i64, ptr %l1, !tbaa !24
  %t905 = load { i64, [4 x i64] }, ptr %l60
  %t909 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %t903, i64 %t904, { i64, [4 x i64] } %t905)
  store %"compiler/eval:Ptr" %t909, ptr %l471
  br label %bb191
bb191:
  %t910 = load ptr, ptr %l467, !tbaa !29
  %t911 = load %"compiler/eval:Ptr", ptr %l471
  %t912 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %t910, %"compiler/eval:Ptr" %t911)
  store i64 %t912, ptr %l472
  br label %bb192
bb192:
  %t913 = load i64, ptr %l472, !tbaa !24
  store i64 %t913, ptr %l62, !tbaa !24
  %t914 = load i64, ptr %l62, !tbaa !24
  %t916 = icmp eq i64 %t914, 0
  br i1 %t916, label %bb193, label %bb194
bb193:
  %t918 = load ptr, ptr %l0, !tbaa !29
  %t919 = load i64, ptr %l1, !tbaa !24
  %t920 = load { i64, [1 x i64] }, ptr %l61
  %t924 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t918, i64 %t919, { i64, [1 x i64] } %t920)
  store i64 %t924, ptr %l478
  br label %bb195
bb194:
  br label %bb196
bb195:
  %t925 = load i64, ptr %l478, !tbaa !24
  store i64 %t925, ptr %l62, !tbaa !24
  br label %bb196
bb196:
  %t926 = load ptr, ptr %l0, !tbaa !29
  %t927 = load %"compiler/eval:Ptr", ptr %l5
  %t928 = load i64, ptr %l62, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t926, %"compiler/eval:Ptr" %t927, i64 8, i64 %t928)
  br label %bb197
bb197:
  br label %bb272
bb198:
  %t932 = load { i64, [15 x i64] }, ptr %l3
  %t934 = extractvalue { i64, [15 x i64] } %t932, 0
  %t935 = icmp eq i64 %t934, 17
  br i1 %t935, label %bb199, label %bb200
bb199:
  %t937 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t938 = getelementptr { { i64, [4 x i64] } }, ptr %t937, i32 0, i32 0
  %t939 = load { i64, [4 x i64] }, ptr %t938
  store { i64, [4 x i64] } %t939, ptr %l63
  br label %bb201
bb200:
  br label %bb205
bb201:
  %t941 = load ptr, ptr %l0, !tbaa !29
  store ptr %t941, ptr %l485, !tbaa !29
  %t942 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t942, ptr %l486
  %t943 = load ptr, ptr %l0, !tbaa !29
  store ptr %t943, ptr %l487, !tbaa !29
  %t944 = load ptr, ptr %l0, !tbaa !29
  %t945 = load i64, ptr %l1, !tbaa !24
  %t946 = load { i64, [4 x i64] }, ptr %l63
  %t950 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %t944, i64 %t945, { i64, [4 x i64] } %t946)
  store %"compiler/eval:Ptr" %t950, ptr %l491
  br label %bb202
bb202:
  %t951 = load ptr, ptr %l487, !tbaa !29
  %t952 = load %"compiler/eval:Ptr", ptr %l491
  %t953 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %t951, %"compiler/eval:Ptr" %t952)
  store i64 %t953, ptr %l492
  br label %bb203
bb203:
  %t954 = load ptr, ptr %l485, !tbaa !29
  %t955 = load %"compiler/eval:Ptr", ptr %l486
  %t956 = load i64, ptr %l492, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t954, %"compiler/eval:Ptr" %t955, i64 8, i64 %t956)
  br label %bb204
bb204:
  br label %bb272
bb205:
  %t957 = load { i64, [15 x i64] }, ptr %l3
  %t959 = extractvalue { i64, [15 x i64] } %t957, 0
  %t960 = icmp eq i64 %t959, 18
  br i1 %t960, label %bb206, label %bb207
bb206:
  %t962 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t963 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t962, i32 0, i32 0
  %t964 = load { i64, [1 x i64] }, ptr %t963
  store { i64, [1 x i64] } %t964, ptr %l64
  %t966 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t967 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] } }, ptr %t966, i32 0, i32 1
  %t968 = load { i64, [4 x i64] }, ptr %t967
  store { i64, [4 x i64] } %t968, ptr %l65
  br label %bb208
bb207:
  br label %bb219
bb208:
  %t970 = load ptr, ptr %l0, !tbaa !29
  %t971 = load i64, ptr %l1, !tbaa !24
  %t972 = load { i64, [1 x i64] }, ptr %l64
  %t976 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t970, i64 %t971, { i64, [1 x i64] } %t972)
  store i64 %t976, ptr %l500
  br label %bb209
bb209:
  %t977 = load i64, ptr %l500, !tbaa !24
  store i64 %t977, ptr %l66, !tbaa !24
  %t978 = load i64, ptr %l66, !tbaa !24
  %t980 = icmp eq i64 %t978, 0
  br i1 %t980, label %bb210, label %bb211
bb210:
  %t982 = load { i64, [4 x i64] }, ptr %l65
  %t984 = extractvalue { i64, [4 x i64] } %t982, 0
  %t985 = icmp eq i64 %t984, 0
  br i1 %t985, label %bb212, label %bb213
bb211:
  br label %bb217
bb212:
  %t987 = load ptr, ptr %l0, !tbaa !29
  %t989 = getelementptr %"compiler/eval:Machine", ptr %t987, i32 0, i32 70
  %t990 = load i64, ptr %t989, !tbaa !24
  store i64 %t990, ptr %l505, !tbaa !24
  br label %bb216
bb213:
  %t992 = load ptr, ptr %l0, !tbaa !29
  store ptr %t992, ptr %l508, !tbaa !29
  %t993 = load ptr, ptr %l0, !tbaa !29
  %t994 = load i64, ptr %l1, !tbaa !24
  %t995 = load { i64, [4 x i64] }, ptr %l65
  %t999 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %t993, i64 %t994, { i64, [4 x i64] } %t995)
  store %"compiler/eval:Ptr" %t999, ptr %l512
  br label %bb214
bb214:
  %t1000 = load ptr, ptr %l508, !tbaa !29
  %t1001 = load %"compiler/eval:Ptr", ptr %l512
  %t1002 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %t1000, %"compiler/eval:Ptr" %t1001)
  store i64 %t1002, ptr %l513
  br label %bb215
bb215:
  %t1003 = load i64, ptr %l513, !tbaa !24
  store i64 %t1003, ptr %l505, !tbaa !24
  br label %bb216
bb216:
  %t1004 = load i64, ptr %l505, !tbaa !24
  store i64 %t1004, ptr %l66, !tbaa !24
  br label %bb217
bb217:
  %t1005 = load ptr, ptr %l0, !tbaa !29
  %t1006 = load %"compiler/eval:Ptr", ptr %l5
  %t1007 = load i64, ptr %l66, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1005, %"compiler/eval:Ptr" %t1006, i64 8, i64 %t1007)
  br label %bb218
bb218:
  br label %bb272
bb219:
  %t1011 = load { i64, [15 x i64] }, ptr %l3
  %t1013 = extractvalue { i64, [15 x i64] } %t1011, 0
  %t1014 = icmp eq i64 %t1013, 20
  br i1 %t1014, label %bb220, label %bb221
bb220:
  %t1016 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1017 = getelementptr { { i64, [1 x i64] } }, ptr %t1016, i32 0, i32 0
  %t1018 = load { i64, [1 x i64] }, ptr %t1017
  store { i64, [1 x i64] } %t1018, ptr %l67
  br label %bb222
bb221:
  br label %bb225
bb222:
  %t1020 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1020, ptr %l520, !tbaa !29
  %t1021 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1021, ptr %l521
  %t1022 = load ptr, ptr %l0, !tbaa !29
  %t1023 = load i64, ptr %l1, !tbaa !24
  %t1024 = load { i64, [1 x i64] }, ptr %l67
  %t1028 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t1022, i64 %t1023, { i64, [1 x i64] } %t1024)
  store i64 %t1028, ptr %l525
  br label %bb223
bb223:
  %t1029 = load ptr, ptr %l520, !tbaa !29
  %t1030 = load %"compiler/eval:Ptr", ptr %l521
  %t1031 = load i64, ptr %l525, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1029, %"compiler/eval:Ptr" %t1030, i64 8, i64 %t1031)
  br label %bb224
bb224:
  br label %bb272
bb225:
  %t1032 = load { i64, [15 x i64] }, ptr %l3
  %t1034 = extractvalue { i64, [15 x i64] } %t1032, 0
  %t1035 = icmp eq i64 %t1034, 19
  br i1 %t1035, label %bb226, label %bb227
bb226:
  %t1037 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1038 = getelementptr { i64 }, ptr %t1037, i32 0, i32 0
  %t1039 = load i64, ptr %t1038
  store i64 %t1039, ptr %l68, !tbaa !24
  br label %bb228
bb227:
  br label %bb241
bb228:
  %t1041 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1041, ptr %l529, !tbaa !29
  %t1042 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1042, ptr %l530
  %t1043 = load i64, ptr %l68, !tbaa !24
  %t1045 = icmp sge i64 %t1043, 0
  br i1 %t1045, label %bb229, label %bb230
bb229:
  %t1047 = load i64, ptr %l68, !tbaa !24
  store i64 %t1047, ptr %l534, !tbaa !24
  %t1048 = load ptr, ptr %l0, !tbaa !29
  %t1050 = getelementptr %"compiler/eval:Machine", ptr %t1048, i32 0, i32 4
  %t1052 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t1050)
  store i64 %t1052, ptr %l537
  br label %bb231
bb230:
  store i1 false, ptr %l533, !tbaa !21
  br label %bb232
bb231:
  %t1053 = load i64, ptr %l534, !tbaa !24
  %t1054 = load i64, ptr %l537, !tbaa !24
  %t1055 = icmp slt i64 %t1053, %t1054
  store i1 %t1055, ptr %l533, !tbaa !21
  br label %bb232
bb232:
  %t1057 = load i1, ptr %l533, !tbaa !21
  br i1 %t1057, label %bb233, label %bb234
bb233:
  %t1058 = load ptr, ptr %l0, !tbaa !29
  %t1060 = getelementptr %"compiler/eval:Machine", ptr %t1058, i32 0, i32 4
  %t1061 = load i64, ptr %l68, !tbaa !24
  %t1064 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t1060, i64 %t1061)
  store i1 %t1064, ptr %l543
  br label %bb235
bb234:
  store i1 false, ptr %l539, !tbaa !21
  br label %bb236
bb235:
  %t1065 = load i1, ptr %l543, !tbaa !21
  store i1 %t1065, ptr %l539, !tbaa !21
  br label %bb236
bb236:
  %t1066 = load i1, ptr %l539, !tbaa !21
  br i1 %t1066, label %bb237, label %bb238
bb237:
  store i64 1, ptr %l544, !tbaa !24
  br label %bb239
bb238:
  store i64 0, ptr %l544, !tbaa !24
  br label %bb239
bb239:
  %t1067 = load ptr, ptr %l529, !tbaa !29
  %t1068 = load %"compiler/eval:Ptr", ptr %l530
  %t1069 = load i64, ptr %l544, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1067, %"compiler/eval:Ptr" %t1068, i64 1, i64 %t1069)
  br label %bb240
bb240:
  br label %bb272
bb241:
  %t1070 = load { i64, [15 x i64] }, ptr %l3
  %t1072 = extractvalue { i64, [15 x i64] } %t1070, 0
  %t1073 = icmp eq i64 %t1072, 21
  br i1 %t1073, label %bb242, label %bb243
bb242:
  br label %bb244
bb243:
  br label %bb249
bb244:
  %t1075 = load ptr, ptr %l0, !tbaa !29
  %t1076 = load i64, ptr @G_2ecompiler_2feval_2esRegion, !tbaa !24
  %t1079 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %t1075, i64 %t1076)
  store i64 %t1079, ptr %l549
  br label %bb245
bb245:
  %t1080 = load i64, ptr %l549, !tbaa !24
  store i64 %t1080, ptr %l69, !tbaa !24
  %t1081 = load ptr, ptr %l0, !tbaa !29
  %t1083 = getelementptr %"compiler/eval:Machine", ptr %t1081, i32 0, i32 12
  %t1084 = load i64, ptr %l69, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t1083, i64 %t1084)
  br label %bb246
bb246:
  %t1087 = load ptr, ptr %l0, !tbaa !29
  %t1089 = getelementptr %"compiler/eval:Machine", ptr %t1087, i32 0, i32 13
  %t1090 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1089, %"compiler/eval:Ptr" %t1090)
  br label %bb247
bb247:
  %t1093 = load ptr, ptr %l0, !tbaa !29
  %t1094 = load %"compiler/eval:Ptr", ptr %l5
  %t1095 = load i64, ptr %l69, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t1093, %"compiler/eval:Ptr" %t1094, i64 8, i64 %t1095)
  br label %bb248
bb248:
  br label %bb272
bb249:
  %t1099 = load { i64, [15 x i64] }, ptr %l3
  %t1101 = extractvalue { i64, [15 x i64] } %t1099, 0
  %t1102 = icmp eq i64 %t1101, 22
  br i1 %t1102, label %bb250, label %bb251
bb250:
  br label %bb252
bb251:
  br label %bb261
bb252:
  %t1104 = load ptr, ptr %l0, !tbaa !29
  %t1106 = getelementptr %"compiler/eval:Machine", ptr %t1104, i32 0, i32 13
  %t1108 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1106)
  store i64 %t1108, ptr %l563
  br label %bb253
bb253:
  %t1109 = load i64, ptr %l563, !tbaa !24
  %t1110 = icmp eq i64 %t1109, 0
  br i1 %t1110, label %bb254, label %bb255
bb254:
  %t1112 = load ptr, ptr %l0, !tbaa !29
  %t1113 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t1114 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t1114, ptr %t1112, { i64, ptr } %t1113)
  br label %bb256
bb255:
  br label %bb257
bb256:
  br label %ret
bb257:
  %t1117 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1117, ptr %l567, !tbaa !29
  %t1118 = load %"compiler/eval:Ptr", ptr %l5
  store %"compiler/eval:Ptr" %t1118, ptr %l568
  %t1119 = load ptr, ptr %l0, !tbaa !29
  %t1121 = getelementptr %"compiler/eval:Machine", ptr %t1119, i32 0, i32 13
  store ptr %t1121, ptr %l570, !tbaa !29
  %t1122 = load ptr, ptr %l0, !tbaa !29
  %t1124 = getelementptr %"compiler/eval:Machine", ptr %t1122, i32 0, i32 13
  %t1126 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1124)
  store i64 %t1126, ptr %l573
  br label %bb258
bb258:
  %t1127 = load i64, ptr %l573, !tbaa !24
  %t1128 = sub i64 %t1127, 1
  %t1129 = load ptr, ptr %l570, !tbaa !29
  %t1131 = call %"compiler/eval:Ptr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t1129, i64 %t1128)
  store %"compiler/eval:Ptr" %t1131, ptr %l575
  br label %bb259
bb259:
  %t1132 = load ptr, ptr %l567, !tbaa !29
  %t1133 = load %"compiler/eval:Ptr", ptr %l568
  %t1134 = load %"compiler/eval:Ptr", ptr %l575
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t1132, %"compiler/eval:Ptr" %t1133, %"compiler/eval:Ptr" %t1134)
  br label %bb260
bb260:
  br label %bb272
bb261:
  %t1135 = load { i64, [15 x i64] }, ptr %l3
  %t1137 = extractvalue { i64, [15 x i64] } %t1135, 0
  %t1138 = icmp eq i64 %t1137, 23
  br i1 %t1138, label %bb262, label %bb263
bb262:
  %t1140 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1141 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t1140, i32 0, i32 0
  %t1142 = load %"compiler/mir:Lvalue", ptr %t1141
  store %"compiler/mir:Lvalue" %t1142, ptr %l70
  br label %bb264
bb263:
  br label %bb266
bb264:
  %t1144 = load ptr, ptr %l0, !tbaa !29
  %t1145 = load i64, ptr %l1, !tbaa !24
  %t1146 = load %"compiler/eval:Ptr", ptr %l5
  %t1147 = load %"compiler/mir:Lvalue", ptr %l70
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eweakRead(ptr %v0, ptr %t1144, i64 %t1145, %"compiler/eval:Ptr" %t1146, %"compiler/mir:Lvalue" %t1147)
  br label %bb265
bb265:
  br label %bb272
bb266:
  %t1152 = load { i64, [15 x i64] }, ptr %l3
  %t1154 = extractvalue { i64, [15 x i64] } %t1152, 0
  %t1155 = icmp eq i64 %t1154, 24
  br i1 %t1155, label %bb267, label %bb268
bb267:
  %t1157 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t1158 = getelementptr { { i64, [4 x i64] } }, ptr %t1157, i32 0, i32 0
  %t1159 = load { i64, [4 x i64] }, ptr %t1158
  store { i64, [4 x i64] } %t1159, ptr %l71
  br label %bb269
bb268:
  br label %bb271
bb269:
  %t1161 = load ptr, ptr %l0, !tbaa !29
  %t1162 = load i64, ptr %l1, !tbaa !24
  %t1163 = load %"compiler/eval:Ptr", ptr %l5
  %t1164 = load i32, ptr %l6, !tbaa !23
  %t1165 = load { i64, [4 x i64] }, ptr %l71
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t1161, i64 %t1162, %"compiler/eval:Ptr" %t1163, i32 %t1164, { i64, [4 x i64] } %t1165)
  br label %bb270
bb270:
  br label %bb272
bb271:
  call void @__olang_check_failed(ptr @olang_loc_140721f2aee0298e_beee5014d741f7d2)
  unreachable
bb272:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i64
  %l4 = alloca i64
  %l5 = alloca %"compiler/eval:global"
  %l31 = alloca { i64, ptr }
  %l36 = alloca i1
  %l38 = alloca { i64, ptr }
  %l42 = alloca i64
  %l47 = alloca i1
  %l51 = alloca i1
  %l58 = alloca i1
  %l61 = alloca i1
  %l66 = alloca { i64, ptr }
  %l74 = alloca { i64, ptr }
  %l80 = alloca { i64, ptr }
  %l88 = alloca { i64, ptr }
  %l95 = alloca { i64, ptr }
  %l99 = alloca i1
  %l101 = alloca { i64, ptr }
  %l116 = alloca { i64, ptr }
  %l119 = alloca %"compiler/eval:global"
  %l122 = alloca i1
  %l132 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = icmp eq i64 %t8, 0
  br i1 %t10, label %bb4, label %bb5
bb4:
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t13 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNull, !tbaa !27
  %t14 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t14, ptr %t12, { i64, ptr } %t13)
  br label %bb6
bb5:
  br label %bb7
bb6:
  store i64 -1, ptr %rv
  br label %ret
bb7:
  %t18 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t19 = load i64, ptr %t18, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2feval_2eForeignId, !tbaa !24
  %t23 = icmp eq i64 %t19, %t20
  br i1 %t23, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyForeign, !tbaa !27
  %t27 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t27, ptr %t25, { i64, ptr } %t26)
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i64 -1, ptr %rv
  br label %ret
bb11:
  %t31 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t32 = load i64, ptr %t31, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t36 = and i64 %t32, %t33
  store i64 %t36, ptr %l4, !tbaa !24
  %t38 = load i64, ptr %l4, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/eval:Machine", ptr %t39, i32 0, i32 50
  %t42 = load i64, ptr %t41, !tbaa !24
  %t45 = icmp sge i64 %t38, %t42
  br i1 %t45, label %bb12, label %bb13
bb12:
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t49 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t49, ptr %t47, { i64, ptr } %t48)
  br label %bb14
bb13:
  br label %bb15
bb14:
  store i64 -1, ptr %rv
  br label %ret
bb15:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 49
  %t56 = load { i64, ptr }, ptr %t55, !tbaa !27
  store { i64, ptr } %t56, ptr %l31, !tbaa !27
  %t57 = load i64, ptr %l4, !tbaa !24
  %t59 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t60 = load ptr, ptr %t59, !tbaa !27
  %t61 = getelementptr %"compiler/eval:alloc", ptr %t60, i64 %t57
  %t62 = getelementptr %"compiler/eval:alloc", ptr %t61, i32 0, i32 4
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = load i64, ptr @G_2ecompiler_2feval_2eaFree, !tbaa !24
  %t67 = icmp eq i64 %t63, %t64
  br i1 %t67, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l36, !tbaa !21
  br label %bb18
bb17:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/eval:Machine", ptr %t69, i32 0, i32 49
  %t72 = load { i64, ptr }, ptr %t71, !tbaa !27
  store { i64, ptr } %t72, ptr %l38, !tbaa !27
  %t73 = load i64, ptr %l4, !tbaa !24
  %t75 = getelementptr { i64, ptr }, ptr %l38, i32 0, i32 1
  %t76 = load ptr, ptr %t75, !tbaa !27
  %t77 = getelementptr %"compiler/eval:alloc", ptr %t76, i64 %t73
  %t78 = getelementptr %"compiler/eval:alloc", ptr %t77, i32 0, i32 3
  %t79 = load i64, ptr %t78, !tbaa !24
  %t80 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t82, ptr %l42, !tbaa !24
  %t84 = load i64, ptr %l42, !tbaa !24
  %t85 = load i64, ptr %l42, !tbaa !24
  %t86 = ashr i64 %t81, %t85
  %t89 = icmp ne i64 %t79, %t86
  store i1 %t89, ptr %l36, !tbaa !21
  br label %bb18
bb18:
  %t91 = load i1, ptr %l36, !tbaa !21
  br i1 %t91, label %bb19, label %bb20
bb19:
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/eval:Machine", ptr %t92, i32 0, i32 16
  %t95 = load i1, ptr %t94, !tbaa !21
  br i1 %t95, label %bb21, label %bb22
bb20:
  br label %bb30
bb21:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 17
  %t100 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t101 = load i64, ptr %t100, !tbaa !24
  %t104 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %t99, i64 %t101)
  store i1 %t104, ptr %l51
  br label %bb23
bb22:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb24
bb23:
  %t105 = load i1, ptr %l51, !tbaa !21
  store i1 %t105, ptr %l47, !tbaa !21
  br label %bb24
bb24:
  %t106 = load i1, ptr %l47, !tbaa !21
  br i1 %t106, label %bb25, label %bb26
bb25:
  %t107 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreedEarly(ptr %v0, ptr %t107)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t110 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t111 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t111, ptr %t109, { i64, ptr } %t110)
  br label %bb29
bb29:
  store i64 -1, ptr %rv
  br label %ret
bb30:
  %t115 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t118 = icmp slt i64 %t116, 0
  br i1 %t118, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb33
bb32:
  %t120 = load i64, ptr %l2, !tbaa !24
  %t122 = icmp slt i64 %t120, 0
  store i1 %t122, ptr %l58, !tbaa !21
  br label %bb33
bb33:
  %t124 = load i1, ptr %l58, !tbaa !21
  br i1 %t124, label %bb34, label %bb35
bb34:
  store i1 true, ptr %l61, !tbaa !21
  br label %bb36
bb35:
  %t125 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t126 = load i64, ptr %t125, !tbaa !24
  %t127 = load i64, ptr %l2, !tbaa !24
  %t130 = add i64 %t126, %t127
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/eval:Machine", ptr %t131, i32 0, i32 49
  %t134 = load { i64, ptr }, ptr %t133, !tbaa !27
  store { i64, ptr } %t134, ptr %l66, !tbaa !27
  %t135 = load i64, ptr %l4, !tbaa !24
  %t137 = getelementptr { i64, ptr }, ptr %l66, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr %"compiler/eval:alloc", ptr %t138, i64 %t135
  %t140 = getelementptr %"compiler/eval:alloc", ptr %t139, i32 0, i32 1
  %t141 = load i64, ptr %t140, !tbaa !24
  %t144 = icmp sgt i64 %t130, %t141
  store i1 %t144, ptr %l61, !tbaa !21
  br label %bb36
bb36:
  %t146 = load i1, ptr %l61, !tbaa !21
  br i1 %t146, label %bb37, label %bb38
bb37:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyBeyond, !tbaa !27
  %t149 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t149, ptr %t147, { i64, ptr } %t148)
  br label %bb39
bb38:
  br label %bb40
bb39:
  store i64 -1, ptr %rv
  br label %ret
bb40:
  %t153 = load ptr, ptr %l0, !tbaa !29
  %t155 = getelementptr %"compiler/eval:Machine", ptr %t153, i32 0, i32 49
  %t156 = load { i64, ptr }, ptr %t155, !tbaa !27
  store { i64, ptr } %t156, ptr %l74, !tbaa !27
  %t157 = load i64, ptr %l4, !tbaa !24
  %t159 = getelementptr { i64, ptr }, ptr %l74, i32 0, i32 1
  %t160 = load ptr, ptr %t159, !tbaa !27
  %t161 = getelementptr %"compiler/eval:alloc", ptr %t160, i64 %t157
  %t162 = getelementptr %"compiler/eval:alloc", ptr %t161, i32 0, i32 9
  %t163 = load i64, ptr %t162, !tbaa !24
  %t165 = icmp sge i64 %t163, 0
  br i1 %t165, label %bb41, label %bb42
bb41:
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load ptr, ptr %l0, !tbaa !29
  %t170 = getelementptr %"compiler/eval:Machine", ptr %t168, i32 0, i32 49
  %t171 = load { i64, ptr }, ptr %t170, !tbaa !27
  store { i64, ptr } %t171, ptr %l80, !tbaa !27
  %t172 = load i64, ptr %l4, !tbaa !24
  %t174 = getelementptr { i64, ptr }, ptr %l80, i32 0, i32 1
  %t175 = load ptr, ptr %t174, !tbaa !27
  %t176 = getelementptr %"compiler/eval:alloc", ptr %t175, i64 %t172
  %t177 = getelementptr %"compiler/eval:alloc", ptr %t176, i32 0, i32 9
  %t178 = load i64, ptr %t177, !tbaa !24
  %t181 = getelementptr %"compiler/eval:Machine", ptr %t167, i32 0, i32 80
  store i64 %t178, ptr %t181, !tbaa !24
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t183 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyStale, !tbaa !27
  %t184 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t184, ptr %t182, { i64, ptr } %t183)
  br label %bb43
bb42:
  br label %bb44
bb43:
  store i64 -1, ptr %rv
  br label %ret
bb44:
  br i1 %a3, label %bb45, label %bb46
bb45:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t192 = getelementptr %"compiler/eval:Machine", ptr %t190, i32 0, i32 49
  %t193 = load { i64, ptr }, ptr %t192, !tbaa !27
  store { i64, ptr } %t193, ptr %l88, !tbaa !27
  %t194 = load i64, ptr %l4, !tbaa !24
  %t196 = getelementptr { i64, ptr }, ptr %l88, i32 0, i32 1
  %t197 = load ptr, ptr %t196, !tbaa !27
  %t198 = getelementptr %"compiler/eval:alloc", ptr %t197, i64 %t194
  %t199 = getelementptr %"compiler/eval:alloc", ptr %t198, i32 0, i32 13
  %t200 = load i1, ptr %t199, !tbaa !21
  br i1 %t200, label %bb47, label %bb48
bb46:
  br label %bb69
bb47:
  %t202 = load ptr, ptr %l0, !tbaa !29
  %t203 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyReadOnly, !tbaa !27
  %t204 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t204, ptr %t202, { i64, ptr } %t203)
  br label %bb49
bb48:
  br label %bb50
bb49:
  store i64 -1, ptr %rv
  br label %ret
bb50:
  %t208 = load ptr, ptr %l0, !tbaa !29
  %t210 = getelementptr %"compiler/eval:Machine", ptr %t208, i32 0, i32 49
  %t211 = load { i64, ptr }, ptr %t210, !tbaa !27
  store { i64, ptr } %t211, ptr %l95, !tbaa !27
  %t212 = load i64, ptr %l4, !tbaa !24
  %t214 = getelementptr { i64, ptr }, ptr %l95, i32 0, i32 1
  %t215 = load ptr, ptr %t214, !tbaa !27
  %t216 = getelementptr %"compiler/eval:alloc", ptr %t215, i64 %t212
  %t217 = getelementptr %"compiler/eval:alloc", ptr %t216, i32 0, i32 8
  %t218 = load i64, ptr %t217, !tbaa !24
  %t220 = icmp sge i64 %t218, 0
  br i1 %t220, label %bb51, label %bb52
bb51:
  %t222 = load ptr, ptr %l0, !tbaa !29
  %t224 = getelementptr %"compiler/eval:Machine", ptr %t222, i32 0, i32 49
  %t225 = load { i64, ptr }, ptr %t224, !tbaa !27
  store { i64, ptr } %t225, ptr %l101, !tbaa !27
  %t226 = load i64, ptr %l4, !tbaa !24
  %t228 = getelementptr { i64, ptr }, ptr %l101, i32 0, i32 1
  %t229 = load ptr, ptr %t228, !tbaa !27
  %t230 = getelementptr %"compiler/eval:alloc", ptr %t229, i64 %t226
  %t231 = getelementptr %"compiler/eval:alloc", ptr %t230, i32 0, i32 8
  %t232 = load i64, ptr %t231, !tbaa !24
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t233, i32 0, i32 73
  %t236 = load i64, ptr %t235, !tbaa !24
  %t239 = icmp ne i64 %t232, %t236
  store i1 %t239, ptr %l99, !tbaa !21
  br label %bb53
bb52:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb53
bb53:
  %t241 = load i1, ptr %l99, !tbaa !21
  br i1 %t241, label %bb54, label %bb55
bb54:
  %t242 = load ptr, ptr %l0, !tbaa !29
  %t244 = getelementptr %"compiler/eval:Machine", ptr %t242, i32 0, i32 1
  %t245 = load i32, ptr %t244, !range !{i32 0, i32 2}
  %t247 = trunc i64 0 to i32
  %t248 = icmp eq i32 %t245, %t247
  br i1 %t248, label %bb56, label %bb57
bb55:
  br label %bb68
bb56:
  %t250 = load ptr, ptr %l0, !tbaa !29
  %t251 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyWritesGlobal, !tbaa !27
  %t252 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t252, ptr %t250, { i64, ptr } %t251)
  br label %bb58
bb57:
  br label %bb59
bb58:
  store i64 -1, ptr %rv
  br label %ret
bb59:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr %"compiler/eval:Machine", ptr %t256, i32 0, i32 42
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t261 = getelementptr %"compiler/eval:Machine", ptr %t259, i32 0, i32 49
  %t262 = load { i64, ptr }, ptr %t261, !tbaa !27
  store { i64, ptr } %t262, ptr %l116, !tbaa !27
  %t263 = load i64, ptr %l4, !tbaa !24
  %t265 = getelementptr { i64, ptr }, ptr %l116, i32 0, i32 1
  %t266 = load ptr, ptr %t265, !tbaa !27
  %t267 = getelementptr %"compiler/eval:alloc", ptr %t266, i64 %t263
  %t268 = getelementptr %"compiler/eval:alloc", ptr %t267, i32 0, i32 8
  %t269 = load i64, ptr %t268, !tbaa !24
  %t272 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t258, i64 %t269)
  store %"compiler/eval:global" %t272, ptr %l119
  br label %bb60
bb60:
  %t273 = load %"compiler/eval:global", ptr %l119
  store %"compiler/eval:global" %t273, ptr %l5
  %t274 = getelementptr %"compiler/eval:global", ptr %l5, i32 0, i32 1
  %t275 = load i1, ptr %t274, !tbaa !21
  %t277 = xor i1 %t275, true
  br i1 %t277, label %bb61, label %bb62
bb61:
  %t279 = getelementptr %"compiler/eval:global", ptr %l5, i32 0, i32 3
  %t280 = load i64, ptr %t279, !tbaa !24
  %t281 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t284 = and i64 %t280, %t281
  %t285 = load i64, ptr %l4, !tbaa !24
  %t288 = icmp eq i64 %t284, %t285
  store i1 %t288, ptr %l122, !tbaa !21
  br label %bb63
bb62:
  store i1 false, ptr %l122, !tbaa !21
  br label %bb63
bb63:
  %t290 = load i1, ptr %l122, !tbaa !21
  br i1 %t290, label %bb64, label %bb65
bb64:
  %t291 = load ptr, ptr %l0, !tbaa !29
  %t292 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyReadOnly, !tbaa !27
  %t293 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t293, ptr %t291, { i64, ptr } %t292)
  br label %bb66
bb65:
  br label %bb67
bb66:
  store i64 -1, ptr %rv
  br label %ret
bb67:
  br label %bb68
bb68:
  br label %bb69
bb69:
  %t297 = load ptr, ptr %l0, !tbaa !29
  %t299 = getelementptr %"compiler/eval:Machine", ptr %t297, i32 0, i32 49
  %t300 = load { i64, ptr }, ptr %t299, !tbaa !27
  store { i64, ptr } %t300, ptr %l132, !tbaa !27
  %t301 = load i64, ptr %l4, !tbaa !24
  %t303 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t304 = load ptr, ptr %t303, !tbaa !27
  %t305 = getelementptr %"compiler/eval:alloc", ptr %t304, i64 %t301
  %t306 = getelementptr %"compiler/eval:alloc", ptr %t305, i32 0, i32 0
  %t307 = load i64, ptr %t306, !tbaa !24
  %t308 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t309 = load i64, ptr %t308, !tbaa !24
  %t312 = add i64 %t307, %t309
  store i64 %t312, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 22
  %t52 = load i1, ptr %t51, !tbaa !21
  br i1 %t52, label %bb8, label %bb9
bb8:
  store i64 0, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  %t55 = load i32, ptr %l2, !range !{i32 0, i32 51}
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
  %t62 = load i32, ptr %l2, !range !{i32 0, i32 51}
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
  %t87 = load i32, ptr %l2, !range !{i32 0, i32 51}
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
  %t124 = load i32, ptr %l2, !range !{i32 0, i32 51}
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecanonBits(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i1
  %l14 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
  %l24 = alloca i64
  %l25 = alloca ptr
  %l28 = alloca i64
  %l29 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l1, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l6
  br label %bb1
bb1:
  %t6 = load i64, ptr %l6, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load i64, ptr %l3, !tbaa !24
  %t8 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t11 = icmp eq i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l10, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  store i1 %t17, ptr %l10, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l10, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  %t20 = load i64, ptr %l2, !tbaa !24
  store i64 %t20, ptr %l14, !tbaa !24
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l1, !tbaa !23
  %t25 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t21, i32 %t22)
  store i64 %t25, ptr %l17
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t26 = load i64, ptr %l17, !tbaa !24
  %t27 = call i64 @compiler_2feval_2ebmask(i64 %t26)
  store i64 %t27, ptr %l18
  br label %bb8
bb8:
  %t28 = load i64, ptr %l14, !tbaa !24
  %t29 = load i64, ptr %l18, !tbaa !24
  %t30 = and i64 %t28, %t29
  store i64 %t30, ptr %rv
  br label %ret
bb9:
  %t32 = load i64, ptr %l3, !tbaa !24
  %t33 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t36 = icmp eq i64 %t32, %t33
  br i1 %t36, label %bb10, label %bb11
bb10:
  %t38 = load i64, ptr %l2, !tbaa !24
  store i64 %t38, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t40 = load i64, ptr %l2, !tbaa !24
  store i64 %t40, ptr %l24, !tbaa !24
  %t41 = load ptr, ptr %l0, !tbaa !29
  store ptr %t41, ptr %l25, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l1, !tbaa !23
  %t46 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t42, i32 %t43)
  store i64 %t46, ptr %l28
  br label %bb13
bb13:
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = load i64, ptr %l28, !tbaa !24
  %t49 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t47, i64 %t48)
  store i64 %t49, ptr %l29
  br label %bb14
bb14:
  %t50 = load i64, ptr %l24, !tbaa !24
  %t51 = load i64, ptr %l29, !tbaa !24
  %t52 = and i64 %t50, %t51
  store i64 %t52, ptr %rv
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 32
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
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 32
  store ptr %t22, ptr %l13, !tbaa !29
  %t23 = load { i64, [2 x i64] }, ptr %l1
  store { i64, [2 x i64] } %t23, ptr %l14
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 31
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
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 31
  %t35 = load { i64, [2 x i64] }, ptr %l1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t34, { i64, [2 x i64] } %t35)
  br label %bb10
bb10:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 33
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t40, i64 0)
  br label %bb11
bb11:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 31
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econvert(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i1
  %l9 = alloca double
  %l12 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l34 = alloca i64
  %l38 = alloca i1
  %l42 = alloca i1
  %l49 = alloca i64
  %l53 = alloca i1
  %l56 = alloca i64
  %l58 = alloca i1
  %l68 = alloca i64
  %l69 = alloca i64
  %l71 = alloca i64
  %l77 = alloca i64
  %l81 = alloca double
  %l88 = alloca i64
  %l94 = alloca i1
  %l102 = alloca i1
  %l109 = alloca i64
  %l111 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l2, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l12
  br label %bb1
bb1:
  %t6 = load i64, ptr %l12, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l15
  br label %bb2
bb2:
  %t12 = load i64, ptr %l15, !tbaa !24
  store i64 %t12, ptr %l5, !tbaa !24
  %t13 = load i64, ptr %l5, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t17 = icmp ne i64 %t13, %t14
  br i1 %t17, label %bb3, label %bb4
bb3:
  %t19 = load i64, ptr %l5, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t23 = icmp ne i64 %t19, %t20
  store i1 %t23, ptr %l19, !tbaa !21
  br label %bb5
bb4:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l19, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t26 = load i64, ptr %l5, !tbaa !24
  %t27 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t30 = icmp ne i64 %t26, %t27
  store i1 %t30, ptr %l23, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l23, !tbaa !21
  br i1 %t32, label %bb9, label %bb10
bb9:
  %t33 = load i64, ptr %l5, !tbaa !24
  %t34 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t37 = icmp ne i64 %t33, %t34
  store i1 %t37, ptr %l27, !tbaa !21
  br label %bb11
bb10:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb11
bb11:
  %t39 = load i1, ptr %l27, !tbaa !21
  br i1 %t39, label %bb12, label %bb13
bb12:
  %t40 = load i64, ptr %l1, !tbaa !24
  store i64 %t40, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load i32, ptr %l3, !tbaa !23
  %t46 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t42, i32 %t43)
  store i64 %t46, ptr %l34
  br label %bb15
bb15:
  %t47 = load i64, ptr %l34, !tbaa !24
  store i64 %t47, ptr %l6, !tbaa !24
  %t48 = load i64, ptr %l4, !tbaa !24
  %t49 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t52 = icmp eq i64 %t48, %t49
  br i1 %t52, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb18
bb17:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t55 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t58 = icmp eq i64 %t54, %t55
  store i1 %t58, ptr %l38, !tbaa !21
  br label %bb18
bb18:
  %t60 = load i1, ptr %l38, !tbaa !21
  br i1 %t60, label %bb19, label %bb20
bb19:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb21
bb20:
  %t61 = load i64, ptr %l4, !tbaa !24
  %t62 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t65 = icmp eq i64 %t61, %t62
  store i1 %t65, ptr %l42, !tbaa !21
  br label %bb21
bb21:
  %t67 = load i1, ptr %l42, !tbaa !21
  br i1 %t67, label %bb22, label %bb23
bb22:
  %t68 = load ptr, ptr %l0, !tbaa !29
  %t69 = load i64, ptr %l1, !tbaa !24
  %t70 = load i32, ptr %l2, !tbaa !23
  %t74 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t68, i64 %t69, i32 %t70)
  store i64 %t74, ptr %l49
  br label %bb24
bb23:
  br label %bb37
bb24:
  %t75 = load i64, ptr %l49, !tbaa !24
  store i64 %t75, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l4, !tbaa !24
  %t77 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t80 = icmp eq i64 %t76, %t77
  br i1 %t80, label %bb25, label %bb26
bb25:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load i32, ptr %l2, !tbaa !23
  %t86 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t82, i32 %t83)
  store i64 %t86, ptr %l56
  br label %bb27
bb26:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb28
bb27:
  %t87 = load i64, ptr %l56, !tbaa !24
  %t88 = icmp eq i64 %t87, 64
  store i1 %t88, ptr %l53, !tbaa !21
  br label %bb28
bb28:
  %t90 = load i1, ptr %l53, !tbaa !21
  br i1 %t90, label %bb29, label %bb30
bb29:
  %t91 = load i64, ptr %l7, !tbaa !24
  %t93 = icmp slt i64 %t91, 0
  store i1 %t93, ptr %l58, !tbaa !21
  br label %bb31
bb30:
  store i1 false, ptr %l58, !tbaa !21
  br label %bb31
bb31:
  %t95 = load i1, ptr %l58, !tbaa !21
  store i1 %t95, ptr %l8, !tbaa !21
  %t96 = load i64, ptr %l5, !tbaa !24
  %t97 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t100 = icmp eq i64 %t96, %t97
  br i1 %t100, label %bb32, label %bb33
bb32:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i1, ptr %l8, !tbaa !21
  %t105 = load i32, ptr %l3, !tbaa !23
  %t110 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintToFloat(ptr %v0, ptr %t102, i64 %t103, i1 %t104, i32 %t105)
  store i64 %t110, ptr %l68
  br label %bb34
bb33:
  br label %bb35
bb34:
  %t111 = load i64, ptr %l68, !tbaa !24
  store i64 %t111, ptr %rv
  br label %ret
bb35:
  %t112 = load i64, ptr %l7, !tbaa !24
  store i64 %t112, ptr %l69, !tbaa !24
  %t113 = load i64, ptr %l6, !tbaa !24
  %t115 = call i64 @compiler_2feval_2ebmask(i64 %t113)
  store i64 %t115, ptr %l71
  br label %bb36
bb36:
  %t116 = load i64, ptr %l69, !tbaa !24
  %t117 = load i64, ptr %l71, !tbaa !24
  %t118 = and i64 %t116, %t117
  store i64 %t118, ptr %rv
  br label %ret
bb37:
  %t120 = load i64, ptr %l4, !tbaa !24
  %t121 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t124 = icmp ne i64 %t120, %t121
  br i1 %t124, label %bb38, label %bb39
bb38:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t128 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t126)
  store i64 %t128, ptr %l77
  br label %bb40
bb39:
  br label %bb41
bb40:
  %t129 = load i64, ptr %l77, !tbaa !24
  store i64 %t129, ptr %rv
  br label %ret
bb41:
  %t130 = load ptr, ptr %l0, !tbaa !29
  %t131 = load i64, ptr %l1, !tbaa !24
  %t132 = load i32, ptr %l2, !tbaa !23
  %t136 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t130, i64 %t131, i32 %t132)
  store double %t136, ptr %l81
  br label %bb42
bb42:
  %t137 = load double, ptr %l81, !tbaa !26
  store double %t137, ptr %l9, !tbaa !26
  %t138 = load i64, ptr %l5, !tbaa !24
  %t139 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t142 = icmp eq i64 %t138, %t139
  br i1 %t142, label %bb43, label %bb44
bb43:
  %t144 = load ptr, ptr %l0, !tbaa !29
  %t145 = load double, ptr %l9, !tbaa !26
  %t146 = load i32, ptr %l3, !tbaa !23
  %t150 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %t144, double %t145, i32 %t146)
  store i64 %t150, ptr %l88
  br label %bb45
bb44:
  br label %bb46
bb45:
  %t151 = load i64, ptr %l88, !tbaa !24
  store i64 %t151, ptr %rv
  br label %ret
bb46:
  %t152 = load double, ptr %l9, !tbaa !26
  %t153 = load i64, ptr %l6, !tbaa !24
  %t154 = load i64, ptr %l5, !tbaa !24
  %t155 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t158 = icmp eq i64 %t154, %t155
  %t162 = call i1 @compiler_2feval_2efloatFits(double %t152, i64 %t153, i1 %t158)
  store i1 %t162, ptr %l94
  br label %bb47
bb47:
  %t163 = load i1, ptr %l94, !tbaa !21
  %t164 = xor i1 %t163, true
  br i1 %t164, label %bb48, label %bb49
bb48:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t167 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyConvert, !tbaa !27
  %t168 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t168, ptr %t166, { i64, ptr } %t167)
  br label %bb50
bb49:
  br label %bb51
bb50:
  store i64 0, ptr %rv
  br label %ret
bb51:
  %t172 = load i64, ptr %l5, !tbaa !24
  %t173 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t176 = icmp eq i64 %t172, %t173
  br i1 %t176, label %bb52, label %bb53
bb52:
  %t178 = load i64, ptr %l6, !tbaa !24
  %t180 = icmp eq i64 %t178, 64
  store i1 %t180, ptr %l102, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l102, !tbaa !21
  br label %bb54
bb54:
  %t182 = load i1, ptr %l102, !tbaa !21
  br i1 %t182, label %bb55, label %bb56
bb55:
  %t183 = load double, ptr %l9, !tbaa !26
  %t185 = fptoui double %t183 to i64
  store i64 %t185, ptr %rv
  br label %ret
bb56:
  br label %bb57
bb57:
  %t188 = load double, ptr %l9, !tbaa !26
  %t190 = fptosi double %t188 to i64
  store i64 %t190, ptr %l109, !tbaa !24
  %t191 = load i64, ptr %l6, !tbaa !24
  %t193 = call i64 @compiler_2feval_2ebmask(i64 %t191)
  store i64 %t193, ptr %l111
  br label %bb58
bb58:
  %t194 = load i64, ptr %l109, !tbaa !24
  %t195 = load i64, ptr %l111, !tbaa !24
  %t196 = and i64 %t194, %t195
  store i64 %t196, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecopyBits(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, %"compiler/eval:Ptr" %a3, i64 %a4, i64 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l3 = alloca %"compiler/eval:Ptr"
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i64
  %l23 = alloca i64
  %l47 = alloca ptr
  %l53 = alloca %"compiler/eval:Ptr"
  %l54 = alloca i64
  %l56 = alloca i64
  %l64 = alloca %"compiler/eval:Ptr"
  %l65 = alloca ptr
  %l66 = alloca %"compiler/eval:Ptr"
  %l69 = alloca i64
  %l71 = alloca i64
  %l77 = alloca i64
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store %"compiler/eval:Ptr" %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l6, !tbaa !24
  store i64 %a5, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t3 = load i64, ptr %l7, !tbaa !24
  %t4 = load i64, ptr %l6, !tbaa !24
  %t7 = icmp sgt i64 %t3, %t4
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = load i64, ptr %l8, !tbaa !24
  %t11 = icmp sgt i64 %t9, 0
  br i1 %t11, label %bb3, label %bb4
bb2:
  store i64 0, ptr %l20, !tbaa !24
  br label %bb6
bb3:
  %t13 = load i64, ptr %l7, !tbaa !24
  %t14 = load i64, ptr %l6, !tbaa !24
  %t17 = sub i64 %t13, %t14
  %t18 = load i64, ptr %l8, !tbaa !24
  %t21 = add i64 %t17, %t18
  %t23 = sub i64 %t21, 1
  %t24 = load i64, ptr %l8, !tbaa !24
  %t27 = sdiv i64 %t23, %t24
  store i64 %t27, ptr %l23, !tbaa !24
  br label %bb5
bb4:
  store i64 0, ptr %l23, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l23, !tbaa !24
  store i64 %t29, ptr %l20, !tbaa !24
  br label %bb6
bb6:
  %t30 = load i64, ptr %l20, !tbaa !24
  store i64 %t30, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  store %olang.scope zeroinitializer, ptr %s2
  %t31 = load i64, ptr %l10, !tbaa !24
  %t32 = load i64, ptr %l9, !tbaa !24
  %t35 = icmp slt i64 %t31, %t32
  %t37 = xor i1 %t35, true
  br i1 %t37, label %bb8, label %bb9
bb8:
  call void @__olang_scope_close(ptr %s2)
  br label %bb20
bb9:
  br label %bb10
bb10:
  %t39 = load i64, ptr %l6, !tbaa !24
  %t40 = load i64, ptr %l10, !tbaa !24
  %t41 = load i64, ptr %l8, !tbaa !24
  %t44 = mul i64 %t40, %t41
  %t47 = add i64 %t39, %t44
  store i64 %t47, ptr %l11, !tbaa !24
  %t50 = load i64, ptr %l11, !tbaa !24
  %t53 = add i64 %a4, %t50
  store i64 %t53, ptr %l12, !tbaa !24
  %t56 = load i64, ptr %l11, !tbaa !24
  %t59 = add i64 %a2, %t56
  store i64 %t59, ptr %l13, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l47, !tbaa !29
  %t62 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 0
  %t63 = load i64, ptr %t62, !tbaa !24
  %t64 = getelementptr %"compiler/eval:Ptr", ptr %l3, i32 0, i32 1
  %t65 = load i64, ptr %t64, !tbaa !24
  %t66 = load i64, ptr %l12, !tbaa !24
  %t68 = sdiv i64 %t66, 8
  %t71 = add i64 %t65, %t68
  %t74 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t63, i64 %t71)
  store %"compiler/eval:Ptr" %t74, ptr %l53
  br label %bb11
bb11:
  %t75 = load ptr, ptr %l47, !tbaa !29
  %t76 = load %"compiler/eval:Ptr", ptr %l53
  %t77 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t75, %"compiler/eval:Ptr" %t76, i64 1)
  store i64 %t77, ptr %l54
  br label %bb12
bb12:
  %t78 = load i64, ptr %l12, !tbaa !24
  %t80 = srem i64 %t78, 8
  store i64 %t80, ptr %l56, !tbaa !24
  %t81 = load i64, ptr %l54, !tbaa !24
  %t82 = load i64, ptr %l56, !tbaa !24
  %t83 = load i64, ptr %l56, !tbaa !24
  %t84 = ashr i64 %t81, %t83
  %t86 = and i64 %t84, 1
  store i64 %t86, ptr %l14, !tbaa !24
  %t88 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t89 = load i64, ptr %t88, !tbaa !24
  %t90 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t91 = load i64, ptr %t90, !tbaa !24
  %t92 = load i64, ptr %l13, !tbaa !24
  %t94 = sdiv i64 %t92, 8
  %t97 = add i64 %t91, %t94
  %t100 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s2, i64 %t89, i64 %t97)
  store %"compiler/eval:Ptr" %t100, ptr %l64
  br label %bb13
bb13:
  %t101 = load %"compiler/eval:Ptr", ptr %l64
  store %"compiler/eval:Ptr" %t101, ptr %l15
  %t102 = load ptr, ptr %l0, !tbaa !29
  store ptr %t102, ptr %l65, !tbaa !29
  %t103 = load %"compiler/eval:Ptr", ptr %l15
  store %"compiler/eval:Ptr" %t103, ptr %l66
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load %"compiler/eval:Ptr", ptr %l15
  %t108 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t104, %"compiler/eval:Ptr" %t105, i64 1)
  store i64 %t108, ptr %l69
  br label %bb14
bb14:
  %t109 = load i64, ptr %l13, !tbaa !24
  %t111 = srem i64 %t109, 8
  store i64 %t111, ptr %l71, !tbaa !24
  %t112 = load i64, ptr %l71, !tbaa !24
  %t113 = load i64, ptr %l71, !tbaa !24
  %t114 = shl i64 1, %t113
  %t116 = xor i64 %t114, -1
  %t117 = load i64, ptr %l69, !tbaa !24
  %t119 = and i64 %t117, %t116
  %t120 = load i64, ptr %l14, !tbaa !24
  %t121 = load i64, ptr %l13, !tbaa !24
  %t123 = srem i64 %t121, 8
  store i64 %t123, ptr %l77, !tbaa !24
  %t125 = load i64, ptr %l77, !tbaa !24
  %t126 = load i64, ptr %l77, !tbaa !24
  %t127 = shl i64 %t120, %t126
  %t130 = or i64 %t119, %t127
  %t131 = load ptr, ptr %l65, !tbaa !29
  %t132 = load %"compiler/eval:Ptr", ptr %l66
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t131, %"compiler/eval:Ptr" %t132, i64 1, i64 %t130)
  br label %bb15
bb15:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr %"compiler/eval:Machine", ptr %t134, i32 0, i32 22
  %t137 = load i1, ptr %t136, !tbaa !21
  br i1 %t137, label %bb16, label %bb17
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb17:
  br label %bb18
bb18:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb19:
  %t139 = load i64, ptr %l10, !tbaa !24
  %t141 = add i64 %t139, 1
  store i64 %t141, ptr %l10, !tbaa !24
  br label %bb7
bb20:
  br label %ret
ret:
  ret void
}

define dso_local { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2edataFor(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i32 %a3, i64 %a4, %"compiler/source:Span" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l5 = alloca %"compiler/source:Span"
  %l7 = alloca %"compiler/eval:dkey"
  %l8 = alloca i64
  %l9 = alloca { i64, [1 x i64] }
  %l10 = alloca i64
  %l11 = alloca i32
  %l12 = alloca %"compiler/eval:Ptr"
  %l16 = alloca i64
  %l23 = alloca %"compiler/eval:dkey"
  %l24 = alloca i64
  %l28 = alloca i64
  %l29 = alloca i32
  %l34 = alloca { i64, [1 x i64] }
  %l38 = alloca i64
  %l43 = alloca i32
  %l44 = alloca ptr
  %l45 = alloca i64
  %l48 = alloca i64
  %l53 = alloca %"compiler/eval:Ptr"
  %l64 = alloca { i64, ptr }
  %l69 = alloca { i64, ptr }
  %l79 = alloca %"compiler/eval:Ptr"
  %s0 = alloca %olang.scope
  %rv = alloca { %"compiler/eval:Ptr", i64 }
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store i32 %a2, ptr %l2
  store i32 %a3, ptr %l3
  store %"compiler/source:Span" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/mir:Fn", ptr %t2, i32 0, i32 0
  %t5 = load { i64, [2 x i64] }, ptr %t4
  %t8 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecodeIndex(ptr %v0, ptr %t1, { i64, [2 x i64] } %t5)
  store i64 %t8, ptr %l16
  br label %bb1
bb1:
  %t9 = load i64, ptr %l16, !tbaa !24
  %t11 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t12 = load i32, ptr %t11, !tbaa !23
  %t13 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 1
  %t14 = load i32, ptr %t13, !tbaa !23
  %t15 = load i32, ptr %l2, !tbaa !23
  %t16 = load i32, ptr %l3, !tbaa !23
  %t24 = call %"compiler/eval:dkey" @compiler_2feval_3adkey_2ector(ptr %s0, i64 %a4, i32 %t12, i32 %t14, i32 %t15, i32 %t16, i64 %t9)
  store %"compiler/eval:dkey" %t24, ptr %l23
  br label %bb2
bb2:
  %t25 = load %"compiler/eval:dkey", ptr %l23
  store %"compiler/eval:dkey" %t25, ptr %l7
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/eval:Machine", ptr %t26, i32 0, i32 44
  %t29 = load %"compiler/eval:dkey", ptr %l7
  %t32 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2eG_H537d495038c4cf6799e621bee696b05f(ptr %v0, ptr %t28, %"compiler/eval:dkey" %t29)
  %t33 = extractvalue { i32, i64 } %t32, 1
  %t34 = extractvalue { i32, i64 } %t32, 0
  store i32 %t34, ptr %l29
  %t35 = icmp ne i32 %t34, 0
  br i1 %t35, label %bb4, label %ok.36, !prof !99
ok.36:
  store i64 %t33, ptr %l28
  br label %bb3
bb3:
  %t37 = load i64, ptr %l28, !tbaa !24
  store i64 %t37, ptr %l24, !tbaa !24
  br label %bb6
bb4:
  br label %bb5
bb5:
  store i64 0, ptr %l24, !tbaa !24
  br label %bb6
bb6:
  %t38 = load i64, ptr %l24, !tbaa !24
  store i64 %t38, ptr %l8, !tbaa !24
  %t39 = load ptr, ptr %l1, !tbaa !29
  %t41 = getelementptr %"compiler/mir:Fn", ptr %t39, i32 0, i32 19
  %t42 = load i32, ptr %l3, !tbaa !23
  %t44 = sext i32 %t42 to i64
  %t47 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v1, ptr %t41, i64 %t44)
  store { i64, [1 x i64] } %t47, ptr %l34
  br label %bb7
bb7:
  %t48 = load { i64, [1 x i64] }, ptr %l34
  store { i64, [1 x i64] } %t48, ptr %l9
  %t49 = load ptr, ptr %l0, !tbaa !29
  %t50 = load ptr, ptr %l1, !tbaa !29
  %t51 = load { i64, [1 x i64] }, ptr %l9
  %t55 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econstLen(ptr %v0, ptr %v1, ptr %t49, ptr %t50, { i64, [1 x i64] } %t51)
  store i64 %t55, ptr %l38
  br label %bb8
bb8:
  %t56 = load i64, ptr %l38, !tbaa !24
  store i64 %t56, ptr %l10, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t59 = icmp eq i64 %t57, 0
  br i1 %t59, label %bb9, label %bb10
bb9:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i32, ptr %l2, !tbaa !23
  %t65 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t61, i32 %t62)
  store i32 %t65, ptr %l43
  br label %bb11
bb10:
  br label %bb19
bb11:
  %t66 = load i32, ptr %l43, !tbaa !23
  store i32 %t66, ptr %l11, !tbaa !23
  %t67 = load ptr, ptr %l0, !tbaa !29
  store ptr %t67, ptr %l44, !tbaa !29
  %t68 = load i64, ptr %l10, !tbaa !24
  store i64 %t68, ptr %l45, !tbaa !24
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i32, ptr %l11, !tbaa !23
  %t73 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t69, i32 %t70)
  store i64 %t73, ptr %l48
  br label %bb12
bb12:
  %t74 = load i64, ptr %l45, !tbaa !24
  %t75 = load i64, ptr %l48, !tbaa !24
  %t76 = mul i64 %t74, %t75
  %t77 = load i64, ptr @G_2ecompiler_2feval_2eaData, !tbaa !24
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 70
  %t81 = load i64, ptr %t80, !tbaa !24
  %t82 = load ptr, ptr %l44, !tbaa !29
  %t86 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t82, i64 %t76, i64 %t77, i64 %t81)
  store %"compiler/eval:Ptr" %t86, ptr %l53
  br label %bb13
bb13:
  %t87 = load %"compiler/eval:Ptr", ptr %l53
  store %"compiler/eval:Ptr" %t87, ptr %l12
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/eval:Machine", ptr %t88, i32 0, i32 22
  %t91 = load i1, ptr %t90, !tbaa !21
  br i1 %t91, label %bb14, label %bb15
bb14:
  %t93 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  %t95 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t93, 0
  %t96 = insertvalue { %"compiler/eval:Ptr", i64 } %t95, i64 0, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t96, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t100 = load %"compiler/eval:Ptr", ptr %l12
  %t101 = load i32, ptr %l11, !tbaa !23
  %t102 = load { i64, [1 x i64] }, ptr %l9
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteElems(ptr %v0, ptr %v1, ptr %t98, ptr %t99, %"compiler/eval:Ptr" %t100, i32 %t101, { i64, [1 x i64] } %t102)
  br label %bb17
bb17:
  %t108 = load ptr, ptr %l0, !tbaa !29
  %t110 = getelementptr %"compiler/eval:Machine", ptr %t108, i32 0, i32 49
  %t111 = load { i64, ptr }, ptr %t110, !tbaa !27
  store { i64, ptr } %t111, ptr %l64, !tbaa !27
  %t112 = getelementptr %"compiler/eval:Ptr", ptr %l12, i32 0, i32 0
  %t113 = load i64, ptr %t112, !tbaa !24
  %t114 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t117 = and i64 %t113, %t114
  %t119 = getelementptr { i64, ptr }, ptr %l64, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr %"compiler/eval:alloc", ptr %t120, i64 %t117
  %t122 = getelementptr %"compiler/eval:alloc", ptr %t121, i32 0, i32 13
  store i1 true, ptr %t122, !tbaa !21
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t125 = getelementptr %"compiler/eval:Machine", ptr %t123, i32 0, i32 49
  %t126 = load { i64, ptr }, ptr %t125, !tbaa !27
  store { i64, ptr } %t126, ptr %l69, !tbaa !27
  %t127 = getelementptr %"compiler/eval:Ptr", ptr %l12, i32 0, i32 0
  %t128 = load i64, ptr %t127, !tbaa !24
  %t129 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t132 = and i64 %t128, %t129
  %t134 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t135 = load ptr, ptr %t134, !tbaa !27
  %t136 = getelementptr %"compiler/eval:alloc", ptr %t135, i64 %t132
  %t137 = getelementptr %"compiler/eval:alloc", ptr %t136, i32 0, i32 8
  store i64 -1, ptr %t137, !tbaa !24
  %t138 = getelementptr %"compiler/eval:Ptr", ptr %l12, i32 0, i32 0
  %t139 = load i64, ptr %t138, !tbaa !24
  store i64 %t139, ptr %l8, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t143 = getelementptr %"compiler/eval:Machine", ptr %t141, i32 0, i32 44
  %t144 = load %"compiler/eval:dkey", ptr %l7
  %t145 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2eP_H91b95c77ac9fc5702101e9e6061f40cd(ptr %v0, ptr %t143, %"compiler/eval:dkey" %t144, i64 %t145)
  br label %bb18
bb18:
  br label %bb19
bb19:
  %t149 = load i64, ptr %l8, !tbaa !24
  %t151 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t149, i64 0)
  store %"compiler/eval:Ptr" %t151, ptr %l79
  br label %bb20
bb20:
  %t152 = load i64, ptr %l10, !tbaa !24
  %t153 = load %"compiler/eval:Ptr", ptr %l79
  %t154 = insertvalue { %"compiler/eval:Ptr", i64 } undef, %"compiler/eval:Ptr" %t153, 0
  %t156 = insertvalue { %"compiler/eval:Ptr", i64 } %t154, i64 %t152, 1
  call void @__olang_scope_close(ptr %s0)
  store { %"compiler/eval:Ptr", i64 } %t156, ptr %rv
  br label %ret
ret:
  %rr = load { %"compiler/eval:Ptr", i64 }, ptr %rv
  ret { %"compiler/eval:Ptr", i64 } %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropScope(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l11 = alloca i64
  %l12 = alloca %"compiler/eval:scope"
  %l19 = alloca %"compiler/eval:scope"
  %l26 = alloca %"compiler/eval:scope"
  %l32 = alloca %"compiler/eval:reg"
  %l37 = alloca ptr
  %l46 = alloca %"compiler/eval:scope"
  %l53 = alloca %"compiler/eval:scope"
  %l59 = alloca %"compiler/eval:task"
  %l64 = alloca ptr
  %l72 = alloca i1
  %l76 = alloca %"compiler/eval:scope"
  %l81 = alloca %"compiler/eval:scope"
  %l89 = alloca { i64, ptr }
  %l92 = alloca i64
  %l97 = alloca { i64, ptr }
  %l103 = alloca %"compiler/eval:scope"
  %l107 = alloca ptr
  %l111 = alloca %"compiler/eval:scope"
  %l116 = alloca %"compiler/eval:scope"
  %l123 = alloca %"compiler/eval:scope"
  %t11 = alloca %"compiler/eval:scope", align 8
  %t25 = alloca %"compiler/eval:scope", align 8
  %t66 = alloca %"compiler/eval:scope", align 8
  %t80 = alloca %"compiler/eval:scope", align 8
  %t126 = alloca %"compiler/eval:scope", align 8
  %t137 = alloca %"compiler/eval:scope", align 8
  %t190 = alloca %"compiler/eval:scope", align 8
  %t205 = alloca %"compiler/eval:scope", align 8
  %t216 = alloca %"compiler/eval:scope", align 8
  %t236 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t5 = and i64 %a1, %t2
  store i64 %t5, ptr %l2, !tbaa !24
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 52
  %t10 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t11, ptr %v0, ptr %t9, i64 %t10)
  call void @llvm.memmove.p0.p0.i64(ptr %l19, ptr %t11, i64 152, i1 false)
  br label %bb2
bb2:
  %t14 = getelementptr %"compiler/eval:scope", ptr %l19, i32 0, i32 4
  %t15 = load i64, ptr %t14, !tbaa !24
  %t17 = icmp sge i64 %t15, 0
  %t19 = xor i1 %t17, true
  br i1 %t19, label %bb3, label %bb4
bb3:
  br label %bb11
bb4:
  br label %bb5
bb5:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 52
  %t24 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t25, ptr %v0, ptr %t23, i64 %t24)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t25, i64 152, i1 false)
  br label %bb6
bb6:
  %t28 = getelementptr %"compiler/eval:scope", ptr %l26, i32 0, i32 4
  %t29 = load i64, ptr %t28, !tbaa !24
  store i64 %t29, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l2, !tbaa !24
  store i64 %t31, ptr %l4, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 54
  %t36 = load i64, ptr %l3, !tbaa !24
  %t39 = call %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %t35, i64 %t36)
  store %"compiler/eval:reg" %t39, ptr %l32
  br label %bb7
bb7:
  %t40 = getelementptr %"compiler/eval:reg", ptr %l32, i32 0, i32 4
  %t41 = load i64, ptr %t40, !tbaa !24
  store i64 %t41, ptr %l5, !tbaa !24
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/eval:Machine", ptr %t43, i32 0, i32 52
  %t46 = load i64, ptr %l4, !tbaa !24
  %t49 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t45, i64 %t46)
  store ptr %t49, ptr %l37
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l37, !tbaa !29
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = getelementptr %"compiler/eval:scope", ptr %t50, i32 0, i32 4
  store i64 %t52, ptr %t55, !tbaa !24
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/eval:Machine", ptr %t56, i32 0, i32 55
  %t59 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t58, i64 %t59)
  br label %bb9
bb9:
  br label %bb10
bb10:
  br label %bb1
bb11:
  br label %bb12
bb12:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 52
  %t65 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t66, ptr %v0, ptr %t64, i64 %t65)
  call void @llvm.memmove.p0.p0.i64(ptr %l46, ptr %t66, i64 152, i1 false)
  br label %bb13
bb13:
  %t69 = getelementptr %"compiler/eval:scope", ptr %l46, i32 0, i32 10
  %t70 = load i64, ptr %t69, !tbaa !24
  %t72 = icmp sge i64 %t70, 0
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb14, label %bb15
bb14:
  br label %bb22
bb15:
  br label %bb16
bb16:
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/eval:Machine", ptr %t76, i32 0, i32 52
  %t79 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t80, ptr %v0, ptr %t78, i64 %t79)
  call void @llvm.memmove.p0.p0.i64(ptr %l53, ptr %t80, i64 152, i1 false)
  br label %bb17
bb17:
  %t83 = getelementptr %"compiler/eval:scope", ptr %l53, i32 0, i32 10
  %t84 = load i64, ptr %t83, !tbaa !24
  store i64 %t84, ptr %l7, !tbaa !24
  %t86 = load i64, ptr %l2, !tbaa !24
  store i64 %t86, ptr %l8, !tbaa !24
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/eval:Machine", ptr %t88, i32 0, i32 56
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t90, i64 %t91)
  store %"compiler/eval:task" %t94, ptr %l59
  br label %bb18
bb18:
  %t95 = getelementptr %"compiler/eval:task", ptr %l59, i32 0, i32 3
  %t96 = load i64, ptr %t95, !tbaa !24
  store i64 %t96, ptr %l9, !tbaa !24
  %t98 = load ptr, ptr %l0, !tbaa !29
  %t100 = getelementptr %"compiler/eval:Machine", ptr %t98, i32 0, i32 52
  %t101 = load i64, ptr %l8, !tbaa !24
  %t104 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t100, i64 %t101)
  store ptr %t104, ptr %l64
  br label %bb19
bb19:
  %t105 = load ptr, ptr %l64, !tbaa !29
  %t107 = load i64, ptr %l9, !tbaa !24
  %t110 = getelementptr %"compiler/eval:scope", ptr %t105, i32 0, i32 10
  store i64 %t107, ptr %t110, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/eval:Machine", ptr %t111, i32 0, i32 57
  %t114 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t113, i64 %t114)
  br label %bb20
bb20:
  br label %bb21
bb21:
  br label %bb12
bb22:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr %"compiler/eval:Machine", ptr %t117, i32 0, i32 16
  %t120 = load i1, ptr %t119, !tbaa !21
  br i1 %t120, label %bb23, label %bb24
bb23:
  %t122 = load ptr, ptr %l0, !tbaa !29
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 52
  %t125 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t126, ptr %v0, ptr %t124, i64 %t125)
  call void @llvm.memmove.p0.p0.i64(ptr %l76, ptr %t126, i64 152, i1 false)
  br label %bb25
bb24:
  store i1 false, ptr %l72, !tbaa !21
  br label %bb26
bb25:
  %t129 = getelementptr %"compiler/eval:scope", ptr %l76, i32 0, i32 15
  %t130 = load i1, ptr %t129, !tbaa !21
  store i1 %t130, ptr %l72, !tbaa !21
  br label %bb26
bb26:
  %t132 = load i1, ptr %l72, !tbaa !21
  br i1 %t132, label %bb27, label %bb28
bb27:
  %t133 = load ptr, ptr %l0, !tbaa !29
  %t135 = getelementptr %"compiler/eval:Machine", ptr %t133, i32 0, i32 52
  %t136 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t137, ptr %v0, ptr %t135, i64 %t136)
  call void @llvm.memmove.p0.p0.i64(ptr %l81, ptr %t137, i64 152, i1 false)
  br label %bb29
bb28:
  br label %bb37
bb29:
  %t140 = getelementptr %"compiler/eval:scope", ptr %l81, i32 0, i32 3
  %t141 = load i64, ptr %t140, !tbaa !24
  store i64 %t141, ptr %l11, !tbaa !24
  br label %bb30
bb30:
  %t143 = load i64, ptr %l11, !tbaa !24
  %t145 = icmp ne i64 %t143, 0
  %t147 = xor i1 %t145, true
  br i1 %t147, label %bb31, label %bb32
bb31:
  br label %bb36
bb32:
  br label %bb33
bb33:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr %"compiler/eval:Machine", ptr %t149, i32 0, i32 17
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 49
  %t155 = load { i64, ptr }, ptr %t154, !tbaa !27
  store { i64, ptr } %t155, ptr %l89, !tbaa !27
  %t156 = load i64, ptr %l11, !tbaa !24
  %t158 = getelementptr { i64, ptr }, ptr %l89, i32 0, i32 1
  %t159 = load ptr, ptr %t158, !tbaa !27
  %t160 = getelementptr %"compiler/eval:alloc", ptr %t159, i64 %t156
  %t161 = getelementptr %"compiler/eval:alloc", ptr %t160, i32 0, i32 3
  %t162 = load i64, ptr %t161, !tbaa !24
  %t163 = load i64, ptr @G_2ecompiler_2feval_2eslotBits, !tbaa !24
  store i64 %t163, ptr %l92, !tbaa !24
  %t165 = load i64, ptr %l92, !tbaa !24
  %t166 = load i64, ptr %l92, !tbaa !24
  %t167 = shl i64 %t162, %t166
  %t168 = load i64, ptr %l11, !tbaa !24
  %t171 = or i64 %t167, %t168
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t151, i64 %t171, i1 true)
  br label %bb34
bb34:
  br label %bb35
bb35:
  %t174 = load ptr, ptr %l0, !tbaa !29
  %t176 = getelementptr %"compiler/eval:Machine", ptr %t174, i32 0, i32 49
  %t177 = load { i64, ptr }, ptr %t176, !tbaa !27
  store { i64, ptr } %t177, ptr %l97, !tbaa !27
  %t178 = load i64, ptr %l11, !tbaa !24
  %t180 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t181 = load ptr, ptr %t180, !tbaa !27
  %t182 = getelementptr %"compiler/eval:alloc", ptr %t181, i64 %t178
  %t183 = getelementptr %"compiler/eval:alloc", ptr %t182, i32 0, i32 7
  %t184 = load i64, ptr %t183, !tbaa !24
  store i64 %t184, ptr %l11, !tbaa !24
  br label %bb30
bb36:
  br label %bb37
bb37:
  br label %bb38
bb38:
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t188 = getelementptr %"compiler/eval:Machine", ptr %t186, i32 0, i32 52
  %t189 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t190, ptr %v0, ptr %t188, i64 %t189)
  call void @llvm.memmove.p0.p0.i64(ptr %l103, ptr %t190, i64 152, i1 false)
  br label %bb39
bb39:
  %t193 = getelementptr %"compiler/eval:scope", ptr %l103, i32 0, i32 3
  %t194 = load i64, ptr %t193, !tbaa !24
  %t196 = icmp ne i64 %t194, 0
  %t198 = xor i1 %t196, true
  br i1 %t198, label %bb40, label %bb41
bb40:
  br label %bb46
bb41:
  br label %bb42
bb42:
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l107, !tbaa !29
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/eval:Machine", ptr %t201, i32 0, i32 52
  %t204 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t205, ptr %v0, ptr %t203, i64 %t204)
  call void @llvm.memmove.p0.p0.i64(ptr %l111, ptr %t205, i64 152, i1 false)
  br label %bb43
bb43:
  %t208 = getelementptr %"compiler/eval:scope", ptr %l111, i32 0, i32 3
  %t209 = load i64, ptr %t208, !tbaa !24
  %t210 = load ptr, ptr %l107, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t210, i64 %t209)
  br label %bb44
bb44:
  br label %bb45
bb45:
  br label %bb38
bb46:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/eval:Machine", ptr %t212, i32 0, i32 52
  %t215 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t216, ptr %v0, ptr %t214, i64 %t215)
  call void @llvm.memmove.p0.p0.i64(ptr %l116, ptr %t216, i64 152, i1 false)
  br label %bb47
bb47:
  call void @llvm.memmove.p0.p0.i64(ptr %l12, ptr %l116, i64 152, i1 false)
  %t219 = getelementptr %"compiler/eval:scope", ptr %l12, i32 0, i32 1
  store i1 false, ptr %t219, !tbaa !21
  %t220 = getelementptr %"compiler/eval:scope", ptr %l12, i32 0, i32 15
  store i1 false, ptr %t220, !tbaa !21
  %t221 = getelementptr %"compiler/eval:scope", ptr %l12, i32 0, i32 0
  %t222 = load i64, ptr %t221, !tbaa !24
  %t224 = add i64 %t222, 1
  %t226 = and i64 %t224, 274877906943
  %t228 = getelementptr %"compiler/eval:scope", ptr %l12, i32 0, i32 0
  store i64 %t226, ptr %t228, !tbaa !24
  %t229 = getelementptr %"compiler/eval:scope", ptr %l12, i32 0, i32 11
  store i64 -1, ptr %t229, !tbaa !24
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t232 = getelementptr %"compiler/eval:Machine", ptr %t230, i32 0, i32 52
  %t233 = load i64, ptr %l2, !tbaa !24
  call void @llvm.memmove.p0.p0.i64(ptr %l123, ptr %l12, i64 152, i1 false)
  call void @llvm.memmove.p0.p0.i64(ptr %t236, ptr %l123, i64 152, i1 false)
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %t232, i64 %t233, ptr %t236)
  br label %bb48
bb48:
  %t237 = load ptr, ptr %l0, !tbaa !29
  %t239 = getelementptr %"compiler/eval:Machine", ptr %t237, i32 0, i32 53
  %t240 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t239, i64 %t240)
  br label %bb49
bb49:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2effiScalar(ptr %v0, ptr %a0, i32 %a1, i1 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l7 = alloca i32
  %l11 = alloca i1
  %l12 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l22 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load i32, ptr %l7, !tbaa !23
  store i32 %t9, ptr %l3, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l3, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l11
  br label %bb2
bb2:
  %t18 = load i1, ptr %l11, !tbaa !21
  br i1 %t18, label %bb3, label %bb4
bb3:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb5
bb4:
  %t19 = load i32, ptr %l3, !tbaa !23
  %t20 = load i32, ptr @G_2ecompiler_2ftypes_2eBoolT, !tbaa !23
  %t23 = icmp eq i32 %t19, %t20
  store i1 %t23, ptr %l12, !tbaa !21
  br label %bb5
bb5:
  %t25 = load i1, ptr %l12, !tbaa !21
  br i1 %t25, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb14
bb7:
  br i1 %a2, label %bb8, label %bb9
bb8:
  %t28 = load i32, ptr %l3, !tbaa !23
  %t29 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t32 = icmp eq i32 %t28, %t29
  br i1 %t32, label %bb10, label %bb11
bb9:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb13
bb10:
  store i1 true, ptr %l22, !tbaa !21
  br label %bb12
bb11:
  %t34 = load i32, ptr %l3, !tbaa !23
  %t35 = load i32, ptr @G_2ecompiler_2ftypes_2eNoreturnT, !tbaa !23
  %t38 = icmp eq i32 %t34, %t35
  store i1 %t38, ptr %l22, !tbaa !21
  br label %bb12
bb12:
  %t40 = load i1, ptr %l22, !tbaa !21
  store i1 %t40, ptr %l18, !tbaa !21
  br label %bb13
bb13:
  %t41 = load i1, ptr %l18, !tbaa !21
  store i1 %t41, ptr %l16, !tbaa !21
  br label %bb14
bb14:
  %t42 = load i1, ptr %l16, !tbaa !21
  store i1 %t42, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efixedLen(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l5 = alloca ptr
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l3, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 0
  %t8 = load ptr, ptr %t7, !tbaa !29
  store ptr %t8, ptr %l5, !tbaa !29
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/eval:Machine", ptr %t9, i32 0, i32 0
  %t12 = load ptr, ptr %t11, !tbaa !29
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t12, i32 %a1)
  store i32 %t16, ptr %l9
  br label %bb1
bb1:
  %t17 = load ptr, ptr %l5, !tbaa !29
  %t18 = load i32, ptr %l9, !tbaa !23
  %t19 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t17, i32 %t18)
  store i32 %t19, ptr %l10
  br label %bb2
bb2:
  %t20 = load ptr, ptr %l3, !tbaa !29
  %t21 = load i32, ptr %l10, !tbaa !23
  %t22 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %t20, i32 %t21)
  store i64 %t22, ptr %l11
  br label %bb3
bb3:
  %t23 = load i64, ptr %l11, !tbaa !24
  store i64 %t23, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t1 = load i32, ptr %l1, !range !{i32 0, i32 51}
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
  %t12 = load i32, ptr %l1, !range !{i32 0, i32 51}
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
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 51}
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
  %t34 = load i32, ptr %l1, !range !{i32 0, i32 51}
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
  %t45 = load i32, ptr %l1, !range !{i32 0, i32 51}
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
  %t56 = load i32, ptr %l1, !range !{i32 0, i32 51}
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
  %t68 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t70 = trunc i64 13 to i32
  %t71 = icmp eq i32 %t68, %t70
  br i1 %t71, label %bb30, label %bb31
bb30:
  br label %bb42
bb31:
  %t73 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t75 = trunc i64 14 to i32
  %t76 = icmp eq i32 %t73, %t75
  br i1 %t76, label %bb32, label %bb33
bb32:
  br label %bb42
bb33:
  %t78 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t80 = trunc i64 15 to i32
  %t81 = icmp eq i32 %t78, %t80
  br i1 %t81, label %bb34, label %bb35
bb34:
  br label %bb42
bb35:
  %t83 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t85 = trunc i64 16 to i32
  %t86 = icmp eq i32 %t83, %t85
  br i1 %t86, label %bb36, label %bb37
bb36:
  br label %bb42
bb37:
  %t88 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t90 = trunc i64 17 to i32
  %t91 = icmp eq i32 %t88, %t90
  br i1 %t91, label %bb38, label %bb39
bb38:
  br label %bb42
bb39:
  %t93 = load i32, ptr %l1, !range !{i32 0, i32 51}
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

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eforeignRef(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i32
  %l17 = alloca ptr
  %l20 = alloca i32
  %l21 = alloca i32
  %l24 = alloca i32
  %l27 = alloca i1
  %l28 = alloca ptr
  %l31 = alloca i32
  %l32 = alloca i32
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/eval:Machine", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l2, !tbaa !29
  %t6 = load ptr, ptr %l2, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a1)
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l12
  br label %bb2
bb2:
  %t17 = load i32, ptr %l12, !range !{i32 0, i32 33}
  %t19 = trunc i64 20 to i32
  %t20 = icmp eq i32 %t17, %t19
  %t22 = xor i1 %t20, true
  br i1 %t22, label %bb3, label %bb4
bb3:
  store i1 false, ptr %rv
  br label %ret
bb4:
  br label %bb5
bb5:
  %t25 = load ptr, ptr %l2, !tbaa !29
  store ptr %t25, ptr %l17, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t27 = load i32, ptr %l3, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l20
  br label %bb6
bb6:
  %t31 = load ptr, ptr %l17, !tbaa !29
  %t32 = load i32, ptr %l20, !tbaa !23
  %t33 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t31, i32 %t32)
  store i32 %t33, ptr %l21
  br label %bb7
bb7:
  %t34 = load i32, ptr %l21, !tbaa !23
  store i32 %t34, ptr %l4, !tbaa !23
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t36 = load i32, ptr %l4, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l24
  br label %bb8
bb8:
  %t40 = load i32, ptr %l24, !range !{i32 0, i32 33}
  %t42 = trunc i64 18 to i32
  %t43 = icmp eq i32 %t40, %t42
  br i1 %t43, label %bb9, label %bb10
bb9:
  %t45 = load ptr, ptr %l2, !tbaa !29
  store ptr %t45, ptr %l28, !tbaa !29
  %t46 = load ptr, ptr %l2, !tbaa !29
  %t47 = load i32, ptr %l4, !tbaa !23
  %t50 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t46, i32 %t47)
  store i32 %t50, ptr %l31
  br label %bb11
bb10:
  store i1 false, ptr %l27, !tbaa !21
  br label %bb13
bb11:
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = load i32, ptr %l31, !tbaa !23
  %t53 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t51, i32 %t52)
  store i32 %t53, ptr %l32
  br label %bb12
bb12:
  %t54 = load i32, ptr %l32, !range !{i32 0, i32 6}
  %t56 = trunc i64 5 to i32
  %t57 = icmp eq i32 %t54, %t56
  store i1 %t57, ptr %l27, !tbaa !21
  br label %bb13
bb13:
  %t59 = load i1, ptr %l27, !tbaa !21
  store i1 %t59, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreedEarly(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i32
  %l9 = alloca i1
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 77
  %t4 = load i64, ptr %t3, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 78
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
  %t45 = call i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %t43)
  store i32 %t45, ptr %l7
  %t46 = icmp ne i32 %t45, 0
  br i1 %t46, label %bb2, label %ok.47, !prof !99
ok.47:
  br label %bb1
bb1:
  br label %bb6
bb2:
  %t48 = load i32, ptr %l7, !tbaa !23
  %t49 = ashr i32 %t48, 16
  %t51 = icmp eq i32 %t49, 1
  store i1 %t51, ptr %l9, !tbaa !21
  %t52 = load i32, ptr %l7, !tbaa !23
  %t53 = ashr i32 %t52, 16
  %t55 = icmp eq i32 %t53, 1
  br i1 %t55, label %bb3, label %bb4
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i1 %a3, ptr %a4c, ptr %a4e) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l4 = alloca { ptr, ptr }
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l18 = alloca { i64, ptr }
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i32
  %l30 = alloca i32
  %l33 = alloca i1
  %l38 = alloca i1
  %l42 = alloca i32
  %l45 = alloca { ptr, ptr }
  %l48 = alloca %"compiler/eval:Ptr"
  %l53 = alloca i32
  %l55 = alloca i1
  %l61 = alloca { %"compiler/eval:Ptr", i64 }
  %l64 = alloca ptr
  %l67 = alloca i32
  %l68 = alloca i64
  %l73 = alloca i64
  %l76 = alloca i64
  %l94 = alloca ptr
  %l101 = alloca %"compiler/eval:Ptr"
  %l104 = alloca i32
  %l110 = alloca i1
  %l111 = alloca ptr
  %l114 = alloca i32
  %l115 = alloca { i64, ptr }
  %l121 = alloca i64
  %l124 = alloca i64
  %l147 = alloca i1
  %l149 = alloca ptr
  %l150 = alloca i64
  %l151 = alloca i64
  %l155 = alloca i64
  %l157 = alloca %"compiler/eval:Ptr"
  %l158 = alloca { i64, ptr }
  %l166 = alloca i1
  %l168 = alloca ptr
  %l169 = alloca i32
  %l172 = alloca i64
  %l173 = alloca i32
  %l176 = alloca ptr
  %l180 = alloca %"compiler/eval:Ptr"
  %s6 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  %pf4 = insertvalue { ptr, ptr } undef, ptr %a4c, 0
  %pg4 = insertvalue { ptr, ptr } %pf4, ptr %a4e, 1
  store { ptr, ptr } %pg4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l5, !tbaa !29
  %t6 = load ptr, ptr %l5, !tbaa !29
  %t10 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t6, i32 %a2)
  store i32 %t10, ptr %l30
  br label %bb1
bb1:
  %t11 = load i32, ptr %l30, !tbaa !23
  store i32 %t11, ptr %l6, !tbaa !23
  %t12 = load ptr, ptr %l0, !tbaa !29
  %t14 = getelementptr %"compiler/eval:Machine", ptr %t12, i32 0, i32 22
  %t15 = load i1, ptr %t14, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb5
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 5
  %t20 = load ptr, ptr %l5, !tbaa !29
  %t21 = load i32, ptr %l6, !tbaa !23
  %t25 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v0, ptr %t19, ptr %t20, i32 %t21)
  store i1 %t25, ptr %l38
  br label %bb4
bb4:
  %t26 = load i1, ptr %l38, !tbaa !21
  %t27 = xor i1 %t26, true
  store i1 %t27, ptr %l33, !tbaa !21
  br label %bb5
bb5:
  %t29 = load i1, ptr %l33, !tbaa !21
  br i1 %t29, label %bb6, label %bb7
bb6:
  br label %ret
bb7:
  br label %bb8
bb8:
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t31 = load i32, ptr %l6, !tbaa !23
  %t34 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t30, i32 %t31)
  store i32 %t34, ptr %l42
  br label %bb9
bb9:
  %t35 = load i32, ptr %l42, !range !{i32 0, i32 33}
  store i32 %t35, ptr %l7
  %t36 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t38 = trunc i64 20 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb10, label %bb11
bb10:
  %t41 = load { ptr, ptr }, ptr %l4
  store { ptr, ptr } %t41, ptr %l45
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load %"compiler/eval:Ptr", ptr %l1
  %t46 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t42, %"compiler/eval:Ptr" %t43)
  store %"compiler/eval:Ptr" %t46, ptr %l48
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t47 = load { ptr, ptr }, ptr %l45
  %t48 = extractvalue { ptr, ptr } %t47, 0
  %t49 = extractvalue { ptr, ptr } %t47, 1
  %t50 = load %"compiler/eval:Ptr", ptr %l48
  call void %t48(ptr %t49, %"compiler/eval:Ptr" %t50)
  br label %bb13
bb13:
  br label %ret
bb14:
  %t51 = load i32, ptr %l7, !range !{i32 0, i32 33}
  %t53 = trunc i64 19 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t57 = load i32, ptr %l6, !tbaa !23
  %t60 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t56, i32 %t57)
  store i32 %t60, ptr %l53
  br label %bb17
bb16:
  br label %bb42
bb17:
  %t61 = load i32, ptr %l53, !tbaa !23
  %t62 = icmp eq i32 %t61, 0
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t66 = xor i1 %a3, true
  store i1 %t66, ptr %l55, !tbaa !21
  br label %bb20
bb19:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb20
bb20:
  %t68 = load i1, ptr %l55, !tbaa !21
  br i1 %t68, label %bb21, label %bb22
bb21:
  br label %ret
bb22:
  br label %bb23
bb23:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load %"compiler/eval:Ptr", ptr %l1
  %t71 = load i32, ptr %l6, !tbaa !23
  %t75 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t69, %"compiler/eval:Ptr" %t70, i32 %t71)
  store { %"compiler/eval:Ptr", i64 } %t75, ptr %l61
  br label %bb24
bb24:
  %t76 = load { %"compiler/eval:Ptr", i64 }, ptr %l61
  store { %"compiler/eval:Ptr", i64 } %t76, ptr %l8
  %t77 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t78 = load %"compiler/eval:Ptr", ptr %t77
  store %"compiler/eval:Ptr" %t78, ptr %l9
  %t80 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t81 = load i64, ptr %t80, !tbaa !24
  store i64 %t81, ptr %l10, !tbaa !24
  %t83 = load ptr, ptr %l0, !tbaa !29
  store ptr %t83, ptr %l64, !tbaa !29
  %t84 = load ptr, ptr %l5, !tbaa !29
  %t85 = load i32, ptr %l6, !tbaa !23
  %t88 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t84, i32 %t85)
  store i32 %t88, ptr %l67
  br label %bb25
bb25:
  %t89 = load ptr, ptr %l64, !tbaa !29
  %t90 = load i32, ptr %l67, !tbaa !23
  %t91 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t89, i32 %t90)
  store i64 %t91, ptr %l68
  br label %bb26
bb26:
  %t92 = load i64, ptr %l68, !tbaa !24
  store i64 %t92, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  store i64 %t93, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t95 = load i64, ptr %l13, !tbaa !24
  %t96 = load i64, ptr %l12, !tbaa !24
  %t99 = icmp sgt i64 %t95, %t96
  br i1 %t99, label %bb27, label %bb28
bb27:
  %t101 = load i64, ptr %l14, !tbaa !24
  %t103 = icmp sgt i64 %t101, 0
  br i1 %t103, label %bb29, label %bb30
bb28:
  store i64 0, ptr %l73, !tbaa !24
  br label %bb32
bb29:
  %t105 = load i64, ptr %l13, !tbaa !24
  %t106 = load i64, ptr %l12, !tbaa !24
  %t109 = sub i64 %t105, %t106
  %t110 = load i64, ptr %l14, !tbaa !24
  %t113 = add i64 %t109, %t110
  %t115 = sub i64 %t113, 1
  %t116 = load i64, ptr %l14, !tbaa !24
  %t119 = sdiv i64 %t115, %t116
  store i64 %t119, ptr %l76, !tbaa !24
  br label %bb31
bb30:
  store i64 0, ptr %l76, !tbaa !24
  br label %bb31
bb31:
  %t121 = load i64, ptr %l76, !tbaa !24
  store i64 %t121, ptr %l73, !tbaa !24
  br label %bb32
bb32:
  %t122 = load i64, ptr %l73, !tbaa !24
  store i64 %t122, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb33
bb33:
  store %olang.scope zeroinitializer, ptr %s6
  %t123 = load i64, ptr %l16, !tbaa !24
  %t124 = load i64, ptr %l15, !tbaa !24
  %t127 = icmp slt i64 %t123, %t124
  %t129 = xor i1 %t127, true
  br i1 %t129, label %bb34, label %bb35
bb34:
  call void @__olang_scope_close(ptr %s6)
  br label %bb41
bb35:
  br label %bb36
bb36:
  %t131 = load i64, ptr %l12, !tbaa !24
  %t132 = load i64, ptr %l16, !tbaa !24
  %t133 = load i64, ptr %l14, !tbaa !24
  %t136 = mul i64 %t132, %t133
  %t139 = add i64 %t131, %t136
  %t141 = load ptr, ptr %l0, !tbaa !29
  store ptr %t141, ptr %l94, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 0
  %t143 = load i64, ptr %t142, !tbaa !24
  %t144 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 1
  %t145 = load i64, ptr %t144, !tbaa !24
  %t147 = load i64, ptr %l11, !tbaa !24
  %t150 = mul i64 %t139, %t147
  %t153 = add i64 %t145, %t150
  %t156 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s6, i64 %t143, i64 %t153)
  store %"compiler/eval:Ptr" %t156, ptr %l101
  br label %bb37
bb37:
  %t157 = load ptr, ptr %l5, !tbaa !29
  %t158 = load i32, ptr %l6, !tbaa !23
  %t161 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t157, i32 %t158)
  store i32 %t161, ptr %l104
  br label %bb38
bb38:
  %t162 = load { ptr, ptr }, ptr %l4
  %t163 = load ptr, ptr %l94, !tbaa !29
  %t164 = load %"compiler/eval:Ptr", ptr %l101
  %t165 = load i32, ptr %l104, !tbaa !23
  %t167 = extractvalue { ptr, ptr } %t162, 0
  %t168 = extractvalue { ptr, ptr } %t162, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v1, ptr %t163, %"compiler/eval:Ptr" %t164, i32 %t165, i1 false, ptr %t167, ptr %t168)
  br label %bb39
bb39:
  call void @__olang_scope_close(ptr %s6)
  br label %bb40
bb40:
  %t169 = load i64, ptr %l16, !tbaa !24
  %t171 = add i64 %t169, 1
  store i64 %t171, ptr %l16, !tbaa !24
  br label %bb33
bb41:
  br label %ret
bb42:
  %t173 = load ptr, ptr %l5, !tbaa !29
  %t174 = load i32, ptr %l6, !tbaa !23
  %t177 = call i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %t173, i32 %t174)
  store i1 %t177, ptr %l110
  br label %bb43
bb43:
  %t178 = load i1, ptr %l110, !tbaa !21
  br i1 %t178, label %bb44, label %bb45
bb44:
  %t179 = load ptr, ptr %l5, !tbaa !29
  store ptr %t179, ptr %l111, !tbaa !29
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t181 = load i32, ptr %l6, !tbaa !23
  %t184 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %t180, i32 %t181)
  store i32 %t184, ptr %l114
  br label %bb46
bb45:
  br label %bb67
bb46:
  %t185 = load ptr, ptr %l111, !tbaa !29
  %t186 = load i32, ptr %l114, !tbaa !23
  %t187 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t185, i32 %t186)
  store { i64, ptr } %t187, ptr %l115
  br label %bb47
bb47:
  %t188 = load { i64, ptr }, ptr %l115, !tbaa !27
  store { i64, ptr } %t188, ptr %l18, !tbaa !27
  store i64 0, ptr %l19, !tbaa !24
  %t189 = load { i64, ptr }, ptr %l18, !tbaa !27
  %t191 = extractvalue { i64, ptr } %t189, 0
  store i64 %t191, ptr %l20, !tbaa !24
  store i64 1, ptr %l21, !tbaa !24
  %t193 = load i64, ptr %l20, !tbaa !24
  %t194 = load i64, ptr %l19, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb48, label %bb49
bb48:
  %t199 = load i64, ptr %l21, !tbaa !24
  %t201 = icmp sgt i64 %t199, 0
  br i1 %t201, label %bb50, label %bb51
bb49:
  store i64 0, ptr %l121, !tbaa !24
  br label %bb53
bb50:
  %t203 = load i64, ptr %l20, !tbaa !24
  %t204 = load i64, ptr %l19, !tbaa !24
  %t207 = sub i64 %t203, %t204
  %t208 = load i64, ptr %l21, !tbaa !24
  %t211 = add i64 %t207, %t208
  %t213 = sub i64 %t211, 1
  %t214 = load i64, ptr %l21, !tbaa !24
  %t217 = sdiv i64 %t213, %t214
  store i64 %t217, ptr %l124, !tbaa !24
  br label %bb52
bb51:
  store i64 0, ptr %l124, !tbaa !24
  br label %bb52
bb52:
  %t219 = load i64, ptr %l124, !tbaa !24
  store i64 %t219, ptr %l121, !tbaa !24
  br label %bb53
bb53:
  %t220 = load i64, ptr %l121, !tbaa !24
  store i64 %t220, ptr %l22, !tbaa !24
  store i64 0, ptr %l23, !tbaa !24
  br label %bb54
bb54:
  %t221 = load i64, ptr %l23, !tbaa !24
  %t222 = load i64, ptr %l22, !tbaa !24
  %t225 = icmp slt i64 %t221, %t222
  %t227 = xor i1 %t225, true
  br i1 %t227, label %bb55, label %bb56
bb55:
  br label %bb66
bb56:
  br label %bb57
bb57:
  %t229 = load i64, ptr %l19, !tbaa !24
  %t230 = load i64, ptr %l23, !tbaa !24
  %t231 = load i64, ptr %l21, !tbaa !24
  %t234 = mul i64 %t230, %t231
  %t237 = add i64 %t229, %t234
  store i64 %t237, ptr %l24, !tbaa !24
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t241 = getelementptr %"compiler/eval:Machine", ptr %t239, i32 0, i32 5
  %t242 = load ptr, ptr %l5, !tbaa !29
  %t243 = load i32, ptr %l6, !tbaa !23
  %t244 = load i64, ptr %l24, !tbaa !24
  %t249 = call i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v0, ptr %t241, ptr %t242, i32 %t243, i64 %t244)
  store i1 %t249, ptr %l147
  br label %bb58
bb58:
  %t250 = load i1, ptr %l147, !tbaa !21
  %t251 = xor i1 %t250, true
  br i1 %t251, label %bb59, label %bb60
bb59:
  store %olang.scope zeroinitializer, ptr %s11
  %t253 = load ptr, ptr %l0, !tbaa !29
  store ptr %t253, ptr %l149, !tbaa !29
  %t254 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t255 = load i64, ptr %t254, !tbaa !24
  store i64 %t255, ptr %l150, !tbaa !24
  %t256 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t257 = load i64, ptr %t256, !tbaa !24
  store i64 %t257, ptr %l151, !tbaa !24
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load i32, ptr %l6, !tbaa !23
  %t260 = load i64, ptr %l24, !tbaa !24
  %t264 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %t258, i32 %t259, i64 %t260)
  store i64 %t264, ptr %l155
  br label %bb61
bb60:
  br label %bb64
bb61:
  %t265 = load i64, ptr %l151, !tbaa !24
  %t266 = load i64, ptr %l155, !tbaa !24
  %t267 = add i64 %t265, %t266
  %t268 = load i64, ptr %l150, !tbaa !24
  %t270 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t268, i64 %t267)
  store %"compiler/eval:Ptr" %t270, ptr %l157
  br label %bb62
bb62:
  %t271 = load { i64, ptr }, ptr %l18, !tbaa !27
  store { i64, ptr } %t271, ptr %l158, !tbaa !27
  %t272 = load i64, ptr %l24, !tbaa !24
  %t274 = getelementptr { i64, ptr }, ptr %l158, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i32, ptr %t275, i64 %t272
  %t277 = load i32, ptr %t276, !tbaa !33
  %t278 = load { ptr, ptr }, ptr %l4
  %t279 = load ptr, ptr %l149, !tbaa !29
  %t280 = load %"compiler/eval:Ptr", ptr %l157
  %t283 = extractvalue { ptr, ptr } %t278, 0
  %t284 = extractvalue { ptr, ptr } %t278, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v1, ptr %t279, %"compiler/eval:Ptr" %t280, i32 %t277, i1 false, ptr %t283, ptr %t284)
  br label %bb63
bb63:
  call void @__olang_scope_close(ptr %s11)
  br label %bb64
bb64:
  br label %bb65
bb65:
  %t285 = load i64, ptr %l23, !tbaa !24
  %t287 = add i64 %t285, 1
  store i64 %t287, ptr %l23, !tbaa !24
  br label %bb54
bb66:
  br label %ret
bb67:
  %t289 = load ptr, ptr %l5, !tbaa !29
  %t290 = load i32, ptr %l6, !tbaa !23
  %t293 = call i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %t289, i32 %t290)
  store i1 %t293, ptr %l166
  br label %bb68
bb68:
  %t294 = load i1, ptr %l166, !tbaa !21
  %t295 = xor i1 %t294, true
  br i1 %t295, label %bb69, label %bb70
bb69:
  br label %ret
bb70:
  br label %bb71
bb71:
  %t297 = load ptr, ptr %l0, !tbaa !29
  store ptr %t297, ptr %l168, !tbaa !29
  %t298 = load i32, ptr %l6, !tbaa !23
  store i32 %t298, ptr %l169, !tbaa !23
  %t299 = load ptr, ptr %l0, !tbaa !29
  %t300 = load %"compiler/eval:Ptr", ptr %l1
  %t303 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t299, %"compiler/eval:Ptr" %t300, i64 8)
  store i64 %t303, ptr %l172
  br label %bb72
bb72:
  %t304 = load ptr, ptr %l168, !tbaa !29
  %t305 = load i32, ptr %l169, !tbaa !23
  %t306 = load i64, ptr %l172, !tbaa !24
  %t307 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %t304, i32 %t305, i64 %t306)
  store i32 %t307, ptr %l173
  br label %bb73
bb73:
  %t308 = load i32, ptr %l173, !tbaa !23
  store i32 %t308, ptr %l25, !tbaa !23
  %t309 = load i32, ptr %l25, !tbaa !23
  %t311 = icmp ne i32 %t309, 0
  br i1 %t311, label %bb74, label %bb75
bb74:
  store %olang.scope zeroinitializer, ptr %s14
  %t313 = load ptr, ptr %l0, !tbaa !29
  store ptr %t313, ptr %l176, !tbaa !29
  %t314 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t315 = load i64, ptr %t314, !tbaa !24
  %t316 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t317 = load i64, ptr %t316, !tbaa !24
  %t319 = add i64 %t317, 8
  %t322 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s14, i64 %t315, i64 %t319)
  store %"compiler/eval:Ptr" %t322, ptr %l180
  br label %bb76
bb75:
  br label %bb78
bb76:
  %t323 = load i32, ptr %l25, !tbaa !23
  %t324 = load { ptr, ptr }, ptr %l4
  %t325 = load ptr, ptr %l176, !tbaa !29
  %t326 = load %"compiler/eval:Ptr", ptr %l180
  %t329 = extractvalue { ptr, ptr } %t324, 0
  %t330 = extractvalue { ptr, ptr } %t324, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v1, ptr %t325, %"compiler/eval:Ptr" %t326, i32 %t323, i1 false, ptr %t329, ptr %t330)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s14)
  br label %bb78
bb78:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholders(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t4 = load ptr, ptr %l0, !tbaa !29
  %t6 = getelementptr { ptr, i64, ptr }, ptr null, i32 1
  %t7 = ptrtoint ptr %t6 to i64
  %t8 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t7, i64 8)
  %t9 = getelementptr { ptr, i64, ptr }, ptr %t8, i32 0, i32 0
  store ptr %t4, ptr %t9, !tbaa !28
  %t11 = getelementptr { ptr, i64, ptr }, ptr %t8, i32 0, i32 1
  store i64 %a3, ptr %t11, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t13 = getelementptr { ptr, i64, ptr }, ptr %t8, i32 0, i32 2
  store ptr %v0, ptr %t13, !tbaa !28
  %t14 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_5, 0
  %t15 = insertvalue { ptr, ptr } %t14, ptr %t8, 1
  %t20 = extractvalue { ptr, ptr } %t15, 0
  %t21 = extractvalue { ptr, ptr } %t15, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i32 %a2, i1 true, ptr %t20, ptr %t21)
  br label %bb1
bb1:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i1
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
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
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %t5)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = load i1, ptr %l10, !tbaa !21
  br i1 %t18, label %bb3, label %bb4
bb3:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/eval:Machine", ptr %t19, i32 0, i32 0
  %t22 = load ptr, ptr %t21, !tbaa !29
  %t23 = load i32, ptr %l2, !tbaa !23
  %t26 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %t22, i32 %t23)
  store i64 %t26, ptr %l15
  br label %bb5
bb4:
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i32, ptr %l1, !tbaa !23
  %t31 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t27, i32 %t28)
  store i64 %t31, ptr %l18
  br label %bb6
bb5:
  %t32 = load i64, ptr %l15, !tbaa !24
  store i64 %t32, ptr %l11, !tbaa !24
  br label %bb7
bb6:
  %t33 = load i64, ptr %l18, !tbaa !24
  %t34 = mul i64 8, %t33
  store i64 %t34, ptr %l11, !tbaa !24
  br label %bb7
bb7:
  %t36 = load i64, ptr %l11, !tbaa !24
  store i64 %t36, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2einitFrame(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca { i64, ptr }
  %l14 = alloca i1
  %l16 = alloca { i64, ptr }
  %l26 = alloca { i64, ptr }
  %l29 = alloca ptr
  %l32 = alloca i64
  %l34 = alloca i64
  %l39 = alloca { i64, [1 x i64] }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l6, !tbaa !27
  %t5 = load i64, ptr %l1, !tbaa !24
  %t7 = getelementptr { i64, ptr }, ptr %l6, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %t5
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 7
  %t11 = load i64, ptr %t10, !tbaa !24
  %t12 = load i64, ptr @G_2ecompiler_2feval_2erGlobal, !tbaa !24
  %t15 = icmp eq i64 %t11, %t12
  br i1 %t15, label %bb1, label %bb2
bb1:
  store i1 true, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t18 = load i64, ptr %l1, !tbaa !24
  %t20 = icmp eq i64 %t18, 0
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb6
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 58
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l16, !tbaa !27
  %t26 = load i64, ptr %l1, !tbaa !24
  %t28 = sub i64 %t26, 1
  %t30 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr %"compiler/eval:frame", ptr %t31, i64 %t28
  %t33 = getelementptr %"compiler/eval:frame", ptr %t32, i32 0, i32 7
  %t34 = load i64, ptr %t33, !tbaa !24
  %t35 = load i64, ptr @G_2ecompiler_2feval_2erGlobal, !tbaa !24
  %t38 = icmp ne i64 %t34, %t35
  store i1 %t38, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t40 = load i1, ptr %l14, !tbaa !21
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i1 false, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 25
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/eval:Machine", ptr %t45, i32 0, i32 58
  %t48 = load { i64, ptr }, ptr %t47, !tbaa !27
  store { i64, ptr } %t48, ptr %l26, !tbaa !27
  %t49 = load i64, ptr %l1, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr %"compiler/eval:frame", ptr %t52, i64 %t49
  %t54 = getelementptr %"compiler/eval:frame", ptr %t53, i32 0, i32 0
  %t55 = load i64, ptr %t54, !tbaa !24
  %t58 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t44, i64 %t55)
  store ptr %t58, ptr %l29
  br label %bb10
bb10:
  %t59 = load ptr, ptr %l29, !tbaa !29
  %t61 = getelementptr %"compiler/mir:Fn", ptr %t59, i32 0, i32 6
  store ptr %t61, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l3, !tbaa !24
  store i64 %t63, ptr %l32, !tbaa !24
  %t64 = load ptr, ptr %l2, !tbaa !29
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l34
  br label %bb12
bb12:
  %t67 = load i64, ptr %l32, !tbaa !24
  %t68 = load i64, ptr %l34, !tbaa !24
  %t69 = icmp slt i64 %t67, %t68
  %t71 = xor i1 %t69, true
  br i1 %t71, label %bb13, label %bb14
bb13:
  br label %bb27
bb14:
  br label %bb15
bb15:
  %t73 = load ptr, ptr %l2, !tbaa !29
  %t74 = load i64, ptr %l3, !tbaa !24
  %t77 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t73, i64 %t74)
  store { i64, [1 x i64] } %t77, ptr %l39
  br label %bb16
bb16:
  %t78 = load { i64, [1 x i64] }, ptr %l39
  %t81 = extractvalue { i64, [1 x i64] } %t78, 0
  %t82 = icmp eq i64 %t81, 2
  br i1 %t82, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  store i1 true, ptr %rv
  br label %ret
bb20:
  br i1 true, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_a8aea866c7f3b59a_8137d523407c73ee)
  unreachable
bb25:
  br label %bb26
bb26:
  %t85 = load i64, ptr %l3, !tbaa !24
  %t87 = add i64 %t85, 1
  store i64 %t87, ptr %l3, !tbaa !24
  br label %bb11
bb27:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
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
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 22
  %t28 = load i1, ptr %t27, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  br label %ret
bb8:
  br label %bb9
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 58
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l20, !tbaa !27
  %t34 = load i64, ptr %l1, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:frame", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:frame", ptr %t38, i32 0, i32 11
  store i1 true, ptr %t39, !tbaa !21
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 58
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
  %t54 = getelementptr %"compiler/eval:Machine", ptr %t52, i32 0, i32 58
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
  %t79 = getelementptr %"compiler/eval:Machine", ptr %t77, i32 0, i32 62
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
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 62
  %t87 = getelementptr %"compiler/eval:frame", ptr %l5, i32 0, i32 6
  %t88 = load i64, ptr %t87, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t86, i64 %t88)
  br label %bb18
bb18:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t91, i32 0, i32 58
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

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2emove(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
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
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l17 = alloca i64
  %l18 = alloca i64
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
  %l45 = alloca i1
  %l64 = alloca i64
  %l67 = alloca i64
  %l86 = alloca { i64, ptr }
  %l91 = alloca { i64, ptr }
  %l97 = alloca { i64, ptr }
  %l102 = alloca { i64, ptr }
  %l111 = alloca ptr
  %l115 = alloca i64
  %l116 = alloca i64
  %l123 = alloca i64
  %l125 = alloca { i64, ptr }
  %l136 = alloca i64
  %l139 = alloca i64
  %l162 = alloca { i64, ptr }
  %l167 = alloca { i64, ptr }
  %l173 = alloca { i64, ptr }
  %l178 = alloca { i64, ptr }
  %l192 = alloca i64
  %l195 = alloca i64
  %l213 = alloca ptr
  %l216 = alloca i64
  %l221 = alloca i64
  %l228 = alloca i64
  %l231 = alloca i64
  %l249 = alloca ptr
  %l255 = alloca i64
  %l263 = alloca i64
  %l277 = alloca i64
  %l280 = alloca i64
  %l299 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load i64, ptr %l1, !tbaa !24
  %t9 = srem i64 %t7, 8
  %t11 = icmp eq i64 %t9, 0
  br i1 %t11, label %bb4, label %bb5
bb4:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t15 = srem i64 %t13, 8
  %t17 = icmp eq i64 %t15, 0
  store i1 %t17, ptr %l45, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l45, !tbaa !21
  br label %bb6
bb6:
  %t19 = load i1, ptr %l45, !tbaa !21
  br i1 %t19, label %bb7, label %bb8
bb7:
  %t20 = load i64, ptr %l3, !tbaa !24
  %t22 = sdiv i64 %t20, 8
  store i64 %t22, ptr %l4, !tbaa !24
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = srem i64 %t24, 8
  store i64 %t26, ptr %l5, !tbaa !24
  %t28 = load i64, ptr %l1, !tbaa !24
  %t30 = sdiv i64 %t28, 8
  store i64 %t30, ptr %l6, !tbaa !24
  %t32 = load i64, ptr %l2, !tbaa !24
  %t34 = sdiv i64 %t32, 8
  store i64 %t34, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l1, !tbaa !24
  %t37 = load i64, ptr %l2, !tbaa !24
  %t40 = icmp slt i64 %t36, %t37
  br i1 %t40, label %bb9, label %bb10
bb8:
  br label %bb44
bb9:
  store i64 0, ptr %l8, !tbaa !24
  %t42 = load i64, ptr %l4, !tbaa !24
  store i64 %t42, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t44 = load i64, ptr %l9, !tbaa !24
  %t45 = load i64, ptr %l8, !tbaa !24
  %t48 = icmp sgt i64 %t44, %t45
  br i1 %t48, label %bb11, label %bb12
bb10:
  br label %bb23
bb11:
  %t50 = load i64, ptr %l10, !tbaa !24
  %t52 = icmp sgt i64 %t50, 0
  br i1 %t52, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb16
bb13:
  %t54 = load i64, ptr %l9, !tbaa !24
  %t55 = load i64, ptr %l8, !tbaa !24
  %t58 = sub i64 %t54, %t55
  %t59 = load i64, ptr %l10, !tbaa !24
  %t62 = add i64 %t58, %t59
  %t64 = sub i64 %t62, 1
  %t65 = load i64, ptr %l10, !tbaa !24
  %t68 = sdiv i64 %t64, %t65
  store i64 %t68, ptr %l67, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb15
bb15:
  %t70 = load i64, ptr %l67, !tbaa !24
  store i64 %t70, ptr %l64, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l64, !tbaa !24
  store i64 %t71, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb17
bb17:
  %t72 = load i64, ptr %l12, !tbaa !24
  %t73 = load i64, ptr %l11, !tbaa !24
  %t76 = icmp slt i64 %t72, %t73
  %t78 = xor i1 %t76, true
  br i1 %t78, label %bb18, label %bb19
bb18:
  br label %bb22
bb19:
  br label %bb20
bb20:
  %t80 = load i64, ptr %l8, !tbaa !24
  %t81 = load i64, ptr %l12, !tbaa !24
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = mul i64 %t81, %t82
  %t88 = add i64 %t80, %t85
  store i64 %t88, ptr %l13, !tbaa !24
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 45
  %t93 = load { i64, ptr }, ptr %t92, !tbaa !27
  store { i64, ptr } %t93, ptr %l86, !tbaa !27
  %t94 = load i64, ptr %l6, !tbaa !24
  %t95 = load i64, ptr %l13, !tbaa !24
  %t98 = add i64 %t94, %t95
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/eval:Machine", ptr %t99, i32 0, i32 45
  %t102 = load { i64, ptr }, ptr %t101, !tbaa !27
  store { i64, ptr } %t102, ptr %l91, !tbaa !27
  %t103 = load i64, ptr %l7, !tbaa !24
  %t104 = load i64, ptr %l13, !tbaa !24
  %t107 = add i64 %t103, %t104
  %t109 = getelementptr { i64, ptr }, ptr %l91, i32 0, i32 1
  %t110 = load ptr, ptr %t109, !tbaa !27
  %t111 = getelementptr i64, ptr %t110, i64 %t107
  %t112 = load i64, ptr %t111, !tbaa !34
  %t115 = getelementptr { i64, ptr }, ptr %l86, i32 0, i32 1
  %t116 = load ptr, ptr %t115, !tbaa !27
  %t117 = getelementptr i64, ptr %t116, i64 %t98
  store i64 %t112, ptr %t117, !tbaa !34
  %t118 = load ptr, ptr %l0, !tbaa !29
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 46
  %t121 = load { i64, ptr }, ptr %t120, !tbaa !27
  store { i64, ptr } %t121, ptr %l97, !tbaa !27
  %t122 = load i64, ptr %l6, !tbaa !24
  %t123 = load i64, ptr %l13, !tbaa !24
  %t126 = add i64 %t122, %t123
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 46
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l102, !tbaa !27
  %t131 = load i64, ptr %l7, !tbaa !24
  %t132 = load i64, ptr %l13, !tbaa !24
  %t135 = add i64 %t131, %t132
  %t137 = getelementptr { i64, ptr }, ptr %l102, i32 0, i32 1
  %t138 = load ptr, ptr %t137, !tbaa !27
  %t139 = getelementptr i64, ptr %t138, i64 %t135
  %t140 = load i64, ptr %t139, !tbaa !34
  %t143 = getelementptr { i64, ptr }, ptr %l97, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr i64, ptr %t144, i64 %t126
  store i64 %t140, ptr %t145, !tbaa !34
  br label %bb21
bb21:
  %t146 = load i64, ptr %l12, !tbaa !24
  %t148 = add i64 %t146, 1
  store i64 %t148, ptr %l12, !tbaa !24
  br label %bb17
bb22:
  br label %bb23
bb23:
  %t150 = load i64, ptr %l5, !tbaa !24
  %t152 = icmp sgt i64 %t150, 0
  br i1 %t152, label %bb24, label %bb25
bb24:
  %t154 = load ptr, ptr %l0, !tbaa !29
  store ptr %t154, ptr %l111, !tbaa !29
  %t155 = load i64, ptr %l1, !tbaa !24
  %t156 = load i64, ptr %l4, !tbaa !24
  %t158 = mul i64 8, %t156
  %t161 = add i64 %t155, %t158
  store i64 %t161, ptr %l115, !tbaa !24
  %t162 = load i64, ptr %l5, !tbaa !24
  store i64 %t162, ptr %l116, !tbaa !24
  %t163 = load ptr, ptr %l0, !tbaa !29
  %t164 = load i64, ptr %l2, !tbaa !24
  %t165 = load i64, ptr %l4, !tbaa !24
  %t167 = mul i64 8, %t165
  %t170 = add i64 %t164, %t167
  %t171 = load i64, ptr %l5, !tbaa !24
  %t175 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t163, i64 %t170, i64 %t171)
  store i64 %t175, ptr %l123
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t176 = load ptr, ptr %l111, !tbaa !29
  %t177 = load i64, ptr %l115, !tbaa !24
  %t178 = load i64, ptr %l116, !tbaa !24
  %t179 = load i64, ptr %l123, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t176, i64 %t177, i64 %t178, i64 %t179)
  br label %bb27
bb27:
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/eval:Machine", ptr %t180, i32 0, i32 46
  %t183 = load { i64, ptr }, ptr %t182, !tbaa !27
  store { i64, ptr } %t183, ptr %l125, !tbaa !27
  %t184 = load i64, ptr %l6, !tbaa !24
  %t185 = load i64, ptr %l4, !tbaa !24
  %t188 = add i64 %t184, %t185
  %t190 = getelementptr { i64, ptr }, ptr %l125, i32 0, i32 1
  %t191 = load ptr, ptr %t190, !tbaa !27
  %t192 = getelementptr i64, ptr %t191, i64 %t188
  store i64 0, ptr %t192, !tbaa !34
  br label %bb28
bb28:
  %t193 = load i64, ptr %l1, !tbaa !24
  %t194 = load i64, ptr %l2, !tbaa !24
  %t197 = icmp sgt i64 %t193, %t194
  br i1 %t197, label %bb29, label %bb30
bb29:
  store i64 0, ptr %l14, !tbaa !24
  %t199 = load i64, ptr %l4, !tbaa !24
  store i64 %t199, ptr %l15, !tbaa !24
  store i64 1, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l15, !tbaa !24
  %t202 = load i64, ptr %l14, !tbaa !24
  %t205 = icmp sgt i64 %t201, %t202
  br i1 %t205, label %bb31, label %bb32
bb30:
  br label %bb43
bb31:
  %t207 = load i64, ptr %l16, !tbaa !24
  %t209 = icmp sgt i64 %t207, 0
  br i1 %t209, label %bb33, label %bb34
bb32:
  store i64 0, ptr %l136, !tbaa !24
  br label %bb36
bb33:
  %t211 = load i64, ptr %l15, !tbaa !24
  %t212 = load i64, ptr %l14, !tbaa !24
  %t215 = sub i64 %t211, %t212
  %t216 = load i64, ptr %l16, !tbaa !24
  %t219 = add i64 %t215, %t216
  %t221 = sub i64 %t219, 1
  %t222 = load i64, ptr %l16, !tbaa !24
  %t225 = sdiv i64 %t221, %t222
  store i64 %t225, ptr %l139, !tbaa !24
  br label %bb35
bb34:
  store i64 0, ptr %l139, !tbaa !24
  br label %bb35
bb35:
  %t227 = load i64, ptr %l139, !tbaa !24
  store i64 %t227, ptr %l136, !tbaa !24
  br label %bb36
bb36:
  %t228 = load i64, ptr %l136, !tbaa !24
  store i64 %t228, ptr %l17, !tbaa !24
  store i64 0, ptr %l18, !tbaa !24
  br label %bb37
bb37:
  %t229 = load i64, ptr %l18, !tbaa !24
  %t230 = load i64, ptr %l17, !tbaa !24
  %t233 = icmp slt i64 %t229, %t230
  %t235 = xor i1 %t233, true
  br i1 %t235, label %bb38, label %bb39
bb38:
  br label %bb42
bb39:
  br label %bb40
bb40:
  %t237 = load i64, ptr %l14, !tbaa !24
  %t238 = load i64, ptr %l18, !tbaa !24
  %t239 = load i64, ptr %l16, !tbaa !24
  %t242 = mul i64 %t238, %t239
  %t245 = add i64 %t237, %t242
  %t247 = load i64, ptr %l4, !tbaa !24
  %t249 = sub i64 %t247, 1
  %t253 = sub i64 %t249, %t245
  store i64 %t253, ptr %l20, !tbaa !24
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/eval:Machine", ptr %t255, i32 0, i32 45
  %t258 = load { i64, ptr }, ptr %t257, !tbaa !27
  store { i64, ptr } %t258, ptr %l162, !tbaa !27
  %t259 = load i64, ptr %l6, !tbaa !24
  %t260 = load i64, ptr %l20, !tbaa !24
  %t263 = add i64 %t259, %t260
  %t264 = load ptr, ptr %l0, !tbaa !29
  %t266 = getelementptr %"compiler/eval:Machine", ptr %t264, i32 0, i32 45
  %t267 = load { i64, ptr }, ptr %t266, !tbaa !27
  store { i64, ptr } %t267, ptr %l167, !tbaa !27
  %t268 = load i64, ptr %l7, !tbaa !24
  %t269 = load i64, ptr %l20, !tbaa !24
  %t272 = add i64 %t268, %t269
  %t274 = getelementptr { i64, ptr }, ptr %l167, i32 0, i32 1
  %t275 = load ptr, ptr %t274, !tbaa !27
  %t276 = getelementptr i64, ptr %t275, i64 %t272
  %t277 = load i64, ptr %t276, !tbaa !34
  %t280 = getelementptr { i64, ptr }, ptr %l162, i32 0, i32 1
  %t281 = load ptr, ptr %t280, !tbaa !27
  %t282 = getelementptr i64, ptr %t281, i64 %t263
  store i64 %t277, ptr %t282, !tbaa !34
  %t283 = load ptr, ptr %l0, !tbaa !29
  %t285 = getelementptr %"compiler/eval:Machine", ptr %t283, i32 0, i32 46
  %t286 = load { i64, ptr }, ptr %t285, !tbaa !27
  store { i64, ptr } %t286, ptr %l173, !tbaa !27
  %t287 = load i64, ptr %l6, !tbaa !24
  %t288 = load i64, ptr %l20, !tbaa !24
  %t291 = add i64 %t287, %t288
  %t292 = load ptr, ptr %l0, !tbaa !29
  %t294 = getelementptr %"compiler/eval:Machine", ptr %t292, i32 0, i32 46
  %t295 = load { i64, ptr }, ptr %t294, !tbaa !27
  store { i64, ptr } %t295, ptr %l178, !tbaa !27
  %t296 = load i64, ptr %l7, !tbaa !24
  %t297 = load i64, ptr %l20, !tbaa !24
  %t300 = add i64 %t296, %t297
  %t302 = getelementptr { i64, ptr }, ptr %l178, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr i64, ptr %t303, i64 %t300
  %t305 = load i64, ptr %t304, !tbaa !34
  %t308 = getelementptr { i64, ptr }, ptr %l173, i32 0, i32 1
  %t309 = load ptr, ptr %t308, !tbaa !27
  %t310 = getelementptr i64, ptr %t309, i64 %t291
  store i64 %t305, ptr %t310, !tbaa !34
  br label %bb41
bb41:
  %t311 = load i64, ptr %l18, !tbaa !24
  %t313 = add i64 %t311, 1
  store i64 %t313, ptr %l18, !tbaa !24
  br label %bb37
bb42:
  br label %bb43
bb43:
  br label %ret
bb44:
  %t315 = load i64, ptr %l1, !tbaa !24
  %t316 = load i64, ptr %l2, !tbaa !24
  %t319 = icmp slt i64 %t315, %t316
  br i1 %t319, label %bb45, label %bb46
bb45:
  store i64 0, ptr %l21, !tbaa !24
  %t321 = load i64, ptr %l3, !tbaa !24
  store i64 %t321, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t323 = load i64, ptr %l22, !tbaa !24
  %t324 = load i64, ptr %l21, !tbaa !24
  %t327 = icmp sgt i64 %t323, %t324
  br i1 %t327, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l27, !tbaa !24
  %t329 = load i64, ptr %l3, !tbaa !24
  store i64 %t329, ptr %l28, !tbaa !24
  store i64 1, ptr %l29, !tbaa !24
  %t331 = load i64, ptr %l28, !tbaa !24
  %t332 = load i64, ptr %l27, !tbaa !24
  %t335 = icmp sgt i64 %t331, %t332
  br i1 %t335, label %bb61, label %bb62
bb47:
  %t337 = load i64, ptr %l23, !tbaa !24
  %t339 = icmp sgt i64 %t337, 0
  br i1 %t339, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l192, !tbaa !24
  br label %bb52
bb49:
  %t341 = load i64, ptr %l22, !tbaa !24
  %t342 = load i64, ptr %l21, !tbaa !24
  %t345 = sub i64 %t341, %t342
  %t346 = load i64, ptr %l23, !tbaa !24
  %t349 = add i64 %t345, %t346
  %t351 = sub i64 %t349, 1
  %t352 = load i64, ptr %l23, !tbaa !24
  %t355 = sdiv i64 %t351, %t352
  store i64 %t355, ptr %l195, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l195, !tbaa !24
  br label %bb51
bb51:
  %t357 = load i64, ptr %l195, !tbaa !24
  store i64 %t357, ptr %l192, !tbaa !24
  br label %bb52
bb52:
  %t358 = load i64, ptr %l192, !tbaa !24
  store i64 %t358, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb53
bb53:
  %t359 = load i64, ptr %l25, !tbaa !24
  %t360 = load i64, ptr %l24, !tbaa !24
  %t363 = icmp slt i64 %t359, %t360
  %t365 = xor i1 %t363, true
  br i1 %t365, label %bb54, label %bb55
bb54:
  br label %bb60
bb55:
  br label %bb56
bb56:
  %t367 = load i64, ptr %l21, !tbaa !24
  %t368 = load i64, ptr %l25, !tbaa !24
  %t369 = load i64, ptr %l23, !tbaa !24
  %t372 = mul i64 %t368, %t369
  %t375 = add i64 %t367, %t372
  store i64 %t375, ptr %l26, !tbaa !24
  %t377 = load ptr, ptr %l0, !tbaa !29
  store ptr %t377, ptr %l213, !tbaa !29
  %t378 = load i64, ptr %l1, !tbaa !24
  %t379 = load i64, ptr %l26, !tbaa !24
  %t382 = add i64 %t378, %t379
  store i64 %t382, ptr %l216, !tbaa !24
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t384 = load i64, ptr %l2, !tbaa !24
  %t385 = load i64, ptr %l26, !tbaa !24
  %t388 = add i64 %t384, %t385
  %t391 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t383, i64 %t388, i64 1)
  store i64 %t391, ptr %l221
  br label %bb57
bb57:
  %t392 = load ptr, ptr %l213, !tbaa !29
  %t393 = load i64, ptr %l216, !tbaa !24
  %t394 = load i64, ptr %l221, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t392, i64 %t393, i64 1, i64 %t394)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t395 = load i64, ptr %l25, !tbaa !24
  %t397 = add i64 %t395, 1
  store i64 %t397, ptr %l25, !tbaa !24
  br label %bb53
bb60:
  br label %bb75
bb61:
  %t399 = load i64, ptr %l29, !tbaa !24
  %t401 = icmp sgt i64 %t399, 0
  br i1 %t401, label %bb63, label %bb64
bb62:
  store i64 0, ptr %l228, !tbaa !24
  br label %bb66
bb63:
  %t403 = load i64, ptr %l28, !tbaa !24
  %t404 = load i64, ptr %l27, !tbaa !24
  %t407 = sub i64 %t403, %t404
  %t408 = load i64, ptr %l29, !tbaa !24
  %t411 = add i64 %t407, %t408
  %t413 = sub i64 %t411, 1
  %t414 = load i64, ptr %l29, !tbaa !24
  %t417 = sdiv i64 %t413, %t414
  store i64 %t417, ptr %l231, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l231, !tbaa !24
  br label %bb65
bb65:
  %t419 = load i64, ptr %l231, !tbaa !24
  store i64 %t419, ptr %l228, !tbaa !24
  br label %bb66
bb66:
  %t420 = load i64, ptr %l228, !tbaa !24
  store i64 %t420, ptr %l30, !tbaa !24
  store i64 0, ptr %l31, !tbaa !24
  br label %bb67
bb67:
  %t421 = load i64, ptr %l31, !tbaa !24
  %t422 = load i64, ptr %l30, !tbaa !24
  %t425 = icmp slt i64 %t421, %t422
  %t427 = xor i1 %t425, true
  br i1 %t427, label %bb68, label %bb69
bb68:
  br label %bb74
bb69:
  br label %bb70
bb70:
  %t429 = load i64, ptr %l27, !tbaa !24
  %t430 = load i64, ptr %l31, !tbaa !24
  %t431 = load i64, ptr %l29, !tbaa !24
  %t434 = mul i64 %t430, %t431
  %t437 = add i64 %t429, %t434
  store i64 %t437, ptr %l32, !tbaa !24
  %t439 = load ptr, ptr %l0, !tbaa !29
  store ptr %t439, ptr %l249, !tbaa !29
  %t440 = load i64, ptr %l1, !tbaa !24
  %t441 = load i64, ptr %l3, !tbaa !24
  %t444 = add i64 %t440, %t441
  %t446 = sub i64 %t444, 1
  %t447 = load i64, ptr %l32, !tbaa !24
  %t450 = sub i64 %t446, %t447
  store i64 %t450, ptr %l255, !tbaa !24
  %t451 = load ptr, ptr %l0, !tbaa !29
  %t452 = load i64, ptr %l2, !tbaa !24
  %t453 = load i64, ptr %l3, !tbaa !24
  %t456 = add i64 %t452, %t453
  %t458 = sub i64 %t456, 1
  %t459 = load i64, ptr %l32, !tbaa !24
  %t462 = sub i64 %t458, %t459
  %t465 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %t451, i64 %t462, i64 1)
  store i64 %t465, ptr %l263
  br label %bb71
bb71:
  %t466 = load ptr, ptr %l249, !tbaa !29
  %t467 = load i64, ptr %l255, !tbaa !24
  %t468 = load i64, ptr %l263, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t466, i64 %t467, i64 1, i64 %t468)
  br label %bb72
bb72:
  br label %bb73
bb73:
  %t469 = load i64, ptr %l31, !tbaa !24
  %t471 = add i64 %t469, 1
  store i64 %t471, ptr %l31, !tbaa !24
  br label %bb67
bb74:
  br label %bb75
bb75:
  %t473 = load i64, ptr %l1, !tbaa !24
  %t475 = sdiv i64 %t473, 8
  store i64 %t475, ptr %l33, !tbaa !24
  %t477 = load i64, ptr %l1, !tbaa !24
  %t478 = load i64, ptr %l3, !tbaa !24
  %t481 = add i64 %t477, %t478
  %t483 = sub i64 %t481, 1
  %t485 = sdiv i64 %t483, 8
  %t487 = add i64 %t485, 1
  store i64 %t487, ptr %l34, !tbaa !24
  store i64 1, ptr %l35, !tbaa !24
  %t489 = load i64, ptr %l34, !tbaa !24
  %t490 = load i64, ptr %l33, !tbaa !24
  %t493 = icmp sgt i64 %t489, %t490
  br i1 %t493, label %bb76, label %bb77
bb76:
  %t495 = load i64, ptr %l35, !tbaa !24
  %t497 = icmp sgt i64 %t495, 0
  br i1 %t497, label %bb78, label %bb79
bb77:
  store i64 0, ptr %l277, !tbaa !24
  br label %bb81
bb78:
  %t499 = load i64, ptr %l34, !tbaa !24
  %t500 = load i64, ptr %l33, !tbaa !24
  %t503 = sub i64 %t499, %t500
  %t504 = load i64, ptr %l35, !tbaa !24
  %t507 = add i64 %t503, %t504
  %t509 = sub i64 %t507, 1
  %t510 = load i64, ptr %l35, !tbaa !24
  %t513 = sdiv i64 %t509, %t510
  store i64 %t513, ptr %l280, !tbaa !24
  br label %bb80
bb79:
  store i64 0, ptr %l280, !tbaa !24
  br label %bb80
bb80:
  %t515 = load i64, ptr %l280, !tbaa !24
  store i64 %t515, ptr %l277, !tbaa !24
  br label %bb81
bb81:
  %t516 = load i64, ptr %l277, !tbaa !24
  store i64 %t516, ptr %l36, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  br label %bb82
bb82:
  %t517 = load i64, ptr %l37, !tbaa !24
  %t518 = load i64, ptr %l36, !tbaa !24
  %t521 = icmp slt i64 %t517, %t518
  %t523 = xor i1 %t521, true
  br i1 %t523, label %bb83, label %bb84
bb83:
  br label %bb87
bb84:
  br label %bb85
bb85:
  %t525 = load i64, ptr %l33, !tbaa !24
  %t526 = load i64, ptr %l37, !tbaa !24
  %t527 = load i64, ptr %l35, !tbaa !24
  %t530 = mul i64 %t526, %t527
  %t533 = add i64 %t525, %t530
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = getelementptr %"compiler/eval:Machine", ptr %t535, i32 0, i32 46
  %t538 = load { i64, ptr }, ptr %t537, !tbaa !27
  store { i64, ptr } %t538, ptr %l299, !tbaa !27
  %t541 = getelementptr { i64, ptr }, ptr %l299, i32 0, i32 1
  %t542 = load ptr, ptr %t541, !tbaa !27
  %t543 = getelementptr i64, ptr %t542, i64 %t533
  store i64 0, ptr %t543, !tbaa !34
  br label %bb86
bb86:
  %t544 = load i64, ptr %l37, !tbaa !24
  %t546 = add i64 %t544, 1
  store i64 %t546, ptr %l37, !tbaa !24
  br label %bb82
bb87:
  br label %ret
ret:
  ret void
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 56
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
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 56
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

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %a0) #0 {
entry:
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNotModelled, !tbaa !27
  %t3 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t3, ptr %a0, { i64, ptr } %t2)
  br label %bb1
bb1:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5, i64 %a6) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i32
  %l6 = alloca i64
  %l15 = alloca i64
  %l19 = alloca i1
  %l29 = alloca i64
  %l33 = alloca i64
  %l56 = alloca i64
  %l62 = alloca i64
  %l68 = alloca i64
  %l74 = alloca i64
  %l80 = alloca i64
  %l82 = alloca i64
  %l84 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store i64 %a6, ptr %l6
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l6, !tbaa !24
  %t2 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t5 = icmp eq i64 %t1, %t2
  br i1 %t5, label %bb1, label %bb2
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t9 = load i64, ptr %l2, !tbaa !24
  %t10 = load i64, ptr %l3, !tbaa !24
  %t11 = load i32, ptr %l4, !tbaa !23
  %t17 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatOp(ptr %v0, ptr %t7, i32 %t8, i64 %t9, i64 %t10, i32 %t11)
  store i64 %t17, ptr %l15
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t18 = load i64, ptr %l15, !tbaa !24
  store i64 %t18, ptr %rv
  br label %ret
bb4:
  %t19 = load i64, ptr %l6, !tbaa !24
  %t20 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t23 = icmp eq i64 %t19, %t20
  br i1 %t23, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb7
bb6:
  %t25 = load i64, ptr %l6, !tbaa !24
  %t26 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t29 = icmp eq i64 %t25, %t26
  store i1 %t29, ptr %l19, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l19, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t34 = load i64, ptr %l2, !tbaa !24
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load i32, ptr %l4, !tbaa !23
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintOp(ptr %v0, ptr %t32, i32 %t33, i64 %t34, i64 %t35, i32 %t36, i32 %a5)
  store i64 %t44, ptr %l29
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t45 = load i64, ptr %l29, !tbaa !24
  store i64 %t45, ptr %rv
  br label %ret
bb11:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr @G_2ecompiler_2feval_2evBool, !tbaa !24
  %t50 = icmp eq i64 %t46, %t47
  br i1 %t50, label %bb12, label %bb13
bb12:
  %t52 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t54 = trunc i64 10 to i32
  %t55 = icmp eq i32 %t52, %t54
  br i1 %t55, label %bb14, label %bb15
bb13:
  br label %bb69
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t57 = load i64, ptr %l2, !tbaa !24
  %t58 = load i64, ptr %l3, !tbaa !24
  %t61 = and i64 %t57, %t58
  store i64 %t61, ptr %l33, !tbaa !24
  br label %bb68
bb17:
  %t63 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t65 = trunc i64 11 to i32
  %t66 = icmp eq i32 %t63, %t65
  br i1 %t66, label %bb18, label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb21
bb20:
  %t68 = load i64, ptr %l2, !tbaa !24
  %t69 = load i64, ptr %l3, !tbaa !24
  %t72 = or i64 %t68, %t69
  store i64 %t72, ptr %l33, !tbaa !24
  br label %bb68
bb21:
  %t74 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t76 = trunc i64 12 to i32
  %t77 = icmp eq i32 %t74, %t76
  br i1 %t77, label %bb22, label %bb23
bb22:
  br label %bb26
bb23:
  %t79 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t81 = trunc i64 14 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t84 = load i64, ptr %l2, !tbaa !24
  %t85 = load i64, ptr %l3, !tbaa !24
  %t88 = xor i64 %t84, %t85
  store i64 %t88, ptr %l33, !tbaa !24
  br label %bb68
bb27:
  %t90 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t92 = trunc i64 13 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb34
bb30:
  %t95 = load i64, ptr %l2, !tbaa !24
  %t96 = load i64, ptr %l3, !tbaa !24
  %t99 = icmp eq i64 %t95, %t96
  br i1 %t99, label %bb31, label %bb32
bb31:
  store i64 1, ptr %l56, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb33
bb33:
  %t101 = load i64, ptr %l56, !tbaa !24
  store i64 %t101, ptr %l33, !tbaa !24
  br label %bb68
bb34:
  %t102 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t104 = trunc i64 15 to i32
  %t105 = icmp eq i32 %t102, %t104
  br i1 %t105, label %bb35, label %bb36
bb35:
  br label %bb37
bb36:
  br label %bb41
bb37:
  %t107 = load i64, ptr %l2, !tbaa !24
  %t108 = load i64, ptr %l3, !tbaa !24
  %t111 = icmp slt i64 %t107, %t108
  br i1 %t111, label %bb38, label %bb39
bb38:
  store i64 1, ptr %l62, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb40
bb40:
  %t113 = load i64, ptr %l62, !tbaa !24
  store i64 %t113, ptr %l33, !tbaa !24
  br label %bb68
bb41:
  %t114 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t116 = trunc i64 16 to i32
  %t117 = icmp eq i32 %t114, %t116
  br i1 %t117, label %bb42, label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb48
bb44:
  %t119 = load i64, ptr %l2, !tbaa !24
  %t120 = load i64, ptr %l3, !tbaa !24
  %t123 = icmp sle i64 %t119, %t120
  br i1 %t123, label %bb45, label %bb46
bb45:
  store i64 1, ptr %l68, !tbaa !24
  br label %bb47
bb46:
  store i64 0, ptr %l68, !tbaa !24
  br label %bb47
bb47:
  %t125 = load i64, ptr %l68, !tbaa !24
  store i64 %t125, ptr %l33, !tbaa !24
  br label %bb68
bb48:
  %t126 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t128 = trunc i64 17 to i32
  %t129 = icmp eq i32 %t126, %t128
  br i1 %t129, label %bb49, label %bb50
bb49:
  br label %bb51
bb50:
  br label %bb55
bb51:
  %t131 = load i64, ptr %l2, !tbaa !24
  %t132 = load i64, ptr %l3, !tbaa !24
  %t135 = icmp sgt i64 %t131, %t132
  br i1 %t135, label %bb52, label %bb53
bb52:
  store i64 1, ptr %l74, !tbaa !24
  br label %bb54
bb53:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb54
bb54:
  %t137 = load i64, ptr %l74, !tbaa !24
  store i64 %t137, ptr %l33, !tbaa !24
  br label %bb68
bb55:
  %t138 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t140 = trunc i64 18 to i32
  %t141 = icmp eq i32 %t138, %t140
  br i1 %t141, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb62
bb58:
  %t143 = load i64, ptr %l2, !tbaa !24
  %t144 = load i64, ptr %l3, !tbaa !24
  %t147 = icmp sge i64 %t143, %t144
  br i1 %t147, label %bb59, label %bb60
bb59:
  store i64 1, ptr %l80, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l80, !tbaa !24
  br label %bb61
bb61:
  %t149 = load i64, ptr %l80, !tbaa !24
  store i64 %t149, ptr %l33, !tbaa !24
  br label %bb68
bb62:
  br i1 true, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb67
bb65:
  %t150 = load ptr, ptr %l0, !tbaa !29
  %t152 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t150)
  store i64 %t152, ptr %l82
  br label %bb66
bb66:
  %t153 = load i64, ptr %l82, !tbaa !24
  store i64 %t153, ptr %l33, !tbaa !24
  br label %bb68
bb67:
  call void @__olang_check_failed(ptr @olang_loc_590198b1bba6f342_437268d8e9153c4e)
  unreachable
bb68:
  %t154 = load i64, ptr %l33, !tbaa !24
  store i64 %t154, ptr %rv
  br label %ret
bb69:
  %t155 = load ptr, ptr %l0, !tbaa !29
  %t157 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enotModelled(ptr %v0, ptr %t155)
  store i64 %t157, ptr %l84
  br label %bb70
bb70:
  %t158 = load i64, ptr %l84, !tbaa !24
  store i64 %t158, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2enumber(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca i64
  %l5 = alloca i64
  %l9 = alloca i1
  %l13 = alloca i1
  %l17 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
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
  store i1 true, ptr %l9, !tbaa !21
  br label %bb4
bb3:
  %t13 = load i64, ptr %l2, !tbaa !24
  %t14 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t17 = icmp eq i64 %t13, %t14
  store i1 %t17, ptr %l9, !tbaa !21
  br label %bb4
bb4:
  %t19 = load i1, ptr %l9, !tbaa !21
  br i1 %t19, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l13, !tbaa !21
  br label %bb7
bb6:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t21 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t24 = icmp eq i64 %t20, %t21
  store i1 %t24, ptr %l13, !tbaa !21
  br label %bb7
bb7:
  %t26 = load i1, ptr %l13, !tbaa !21
  br i1 %t26, label %bb8, label %bb9
bb8:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb10
bb9:
  %t27 = load i64, ptr %l2, !tbaa !24
  %t28 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t31 = icmp eq i64 %t27, %t28
  store i1 %t31, ptr %l17, !tbaa !21
  br label %bb10
bb10:
  %t33 = load i1, ptr %l17, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflows(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca { i64, [4 x i64] }
  %l6 = alloca i32
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l16 = alloca i64
  %l20 = alloca { i64, [4 x i64] }
  %l24 = alloca i32
  %l28 = alloca i64
  %l31 = alloca i64
  %l34 = alloca i64
  %l41 = alloca i64
  %l47 = alloca double
  %l50 = alloca i1
  %l55 = alloca i64
  %l58 = alloca i64
  %l61 = alloca i1
  %l64 = alloca i64
  %l66 = alloca i1
  %l73 = alloca i1
  %l78 = alloca i64
  %l82 = alloca i1
  %l83 = alloca i64
  %l85 = alloca i64
  %l89 = alloca ptr
  %l90 = alloca ptr
  %l91 = alloca i64
  %l95 = alloca { i64, [4 x i64] }
  %l96 = alloca i64
  %l98 = alloca i64
  %l101 = alloca i64
  %l103 = alloca i64
  %l106 = alloca i64
  %l108 = alloca i64
  %l111 = alloca i1
  %l116 = alloca i64
  %l118 = alloca i64
  %l123 = alloca i1
  %l126 = alloca i1
  %l141 = alloca i1
  %l149 = alloca i1
  %l152 = alloca i1
  %l155 = alloca i64
  %l157 = alloca i64
  %l162 = alloca i64
  %l164 = alloca i64
  %l166 = alloca i1
  %l173 = alloca i1
  %l177 = alloca i1
  %l179 = alloca i64
  %l195 = alloca i64
  %l197 = alloca i64
  %l199 = alloca i1
  %l200 = alloca i64
  %l202 = alloca i64
  %l209 = alloca i1
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
  store { i64, [4 x i64] } %t7, ptr %l20
  br label %bb1
bb1:
  %t8 = load { i64, [4 x i64] }, ptr %l20
  store { i64, [4 x i64] } %t8, ptr %l5
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l1, !tbaa !24
  %t11 = load { i64, [4 x i64] }, ptr %l5
  %t15 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t9, i64 %t10, { i64, [4 x i64] } %t11)
  store i32 %t15, ptr %l24
  br label %bb2
bb2:
  %t16 = load i32, ptr %l24, !tbaa !23
  store i32 %t16, ptr %l6, !tbaa !23
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load i64, ptr %l1, !tbaa !24
  %t19 = load { i64, [4 x i64] }, ptr %l5
  %t23 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t17, i64 %t18, { i64, [4 x i64] } %t19)
  store i64 %t23, ptr %l28
  br label %bb3
bb3:
  %t24 = load i64, ptr %l28, !tbaa !24
  store i64 %t24, ptr %l7, !tbaa !24
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load i32, ptr %l3, !tbaa !23
  %t29 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t25, i32 %t26)
  store i64 %t29, ptr %l31
  br label %bb4
bb4:
  %t30 = load i64, ptr %l31, !tbaa !24
  store i64 %t30, ptr %l8, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i32, ptr %l3, !tbaa !23
  %t35 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t31, i32 %t32)
  store i64 %t35, ptr %l34
  br label %bb5
bb5:
  %t36 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t37 = load i64, ptr %l34, !tbaa !24
  %t39 = icmp eq i64 %t37, %t36
  store i1 %t39, ptr %l9, !tbaa !21
  %t41 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t43 = trunc i64 20 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb6, label %bb7
bb6:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l6, !tbaa !23
  %t50 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l41
  br label %bb8
bb7:
  br label %bb24
bb8:
  %t51 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t52 = load i64, ptr %l41, !tbaa !24
  %t54 = icmp eq i64 %t52, %t51
  br i1 %t54, label %bb9, label %bb10
bb9:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l7, !tbaa !24
  %t58 = load i32, ptr %l6, !tbaa !23
  %t62 = call double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %t56, i64 %t57, i32 %t58)
  store double %t62, ptr %l47
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t63 = load i64, ptr %l8, !tbaa !24
  %t64 = load i1, ptr %l9, !tbaa !21
  %t65 = load double, ptr %l47, !tbaa !26
  %t68 = call i1 @compiler_2feval_2efloatFits(double %t65, i64 %t63, i1 %t64)
  store i1 %t68, ptr %l50
  br label %bb12
bb12:
  %t69 = load i1, ptr %l50, !tbaa !21
  %t70 = xor i1 %t69, true
  store i1 %t70, ptr %rv
  br label %ret
bb13:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t73 = load i64, ptr %l7, !tbaa !24
  %t74 = load i32, ptr %l6, !tbaa !23
  %t78 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t72, i64 %t73, i32 %t74)
  store i64 %t78, ptr %l55
  br label %bb14
bb14:
  %t79 = load i64, ptr %l55, !tbaa !24
  store i64 %t79, ptr %l10, !tbaa !24
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t81 = load i32, ptr %l6, !tbaa !23
  %t84 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t80, i32 %t81)
  store i64 %t84, ptr %l58
  br label %bb15
bb15:
  %t85 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t86 = load i64, ptr %l58, !tbaa !24
  %t88 = icmp eq i64 %t86, %t85
  br i1 %t88, label %bb16, label %bb17
bb16:
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t91 = load i32, ptr %l6, !tbaa !23
  %t94 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t90, i32 %t91)
  store i64 %t94, ptr %l64
  br label %bb18
bb17:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb19
bb18:
  %t95 = load i64, ptr %l64, !tbaa !24
  %t96 = icmp eq i64 %t95, 64
  store i1 %t96, ptr %l61, !tbaa !21
  br label %bb19
bb19:
  %t98 = load i1, ptr %l61, !tbaa !21
  br i1 %t98, label %bb20, label %bb21
bb20:
  %t99 = load i64, ptr %l10, !tbaa !24
  %t101 = icmp slt i64 %t99, 0
  store i1 %t101, ptr %l66, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l66, !tbaa !21
  br label %bb22
bb22:
  %t103 = load i1, ptr %l66, !tbaa !21
  %t104 = load i64, ptr %l10, !tbaa !24
  %t106 = load i64, ptr %l8, !tbaa !24
  %t107 = load i1, ptr %l9, !tbaa !21
  %t112 = call i1 @compiler_2feval_2efitsBits(i64 %t104, i1 %t103, i64 %t106, i1 %t107)
  store i1 %t112, ptr %l73
  br label %bb23
bb23:
  %t113 = load i1, ptr %l73, !tbaa !21
  %t114 = xor i1 %t113, true
  store i1 %t114, ptr %rv
  br label %ret
bb24:
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t117 = load i64, ptr %l7, !tbaa !24
  %t118 = load i32, ptr %l3, !tbaa !23
  %t122 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t116, i64 %t117, i32 %t118)
  store i64 %t122, ptr %l78
  br label %bb25
bb25:
  %t123 = load i64, ptr %l78, !tbaa !24
  store i64 %t123, ptr %l12, !tbaa !24
  %t124 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t126 = trunc i64 0 to i32
  %t127 = icmp eq i32 %t124, %t126
  br i1 %t127, label %bb26, label %bb27
bb26:
  %t129 = load i1, ptr %l9, !tbaa !21
  br i1 %t129, label %bb28, label %bb29
bb27:
  br label %bb32
bb28:
  %t131 = load i64, ptr %l12, !tbaa !24
  store i64 %t131, ptr %l83, !tbaa !24
  %t132 = load i64, ptr %l8, !tbaa !24
  %t134 = call i64 @compiler_2feval_2eminBits(i64 %t132)
  store i64 %t134, ptr %l85
  br label %bb30
bb29:
  %t135 = load i64, ptr %l12, !tbaa !24
  %t137 = icmp ne i64 %t135, 0
  store i1 %t137, ptr %l82, !tbaa !21
  br label %bb31
bb30:
  %t139 = load i64, ptr %l83, !tbaa !24
  %t140 = load i64, ptr %l85, !tbaa !24
  %t141 = icmp eq i64 %t139, %t140
  store i1 %t141, ptr %l82, !tbaa !21
  br label %bb31
bb31:
  %t143 = load i1, ptr %l82, !tbaa !21
  store i1 %t143, ptr %rv
  br label %ret
bb32:
  %t144 = load ptr, ptr %l0, !tbaa !29
  store ptr %t144, ptr %l89, !tbaa !29
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l90, !tbaa !29
  %t146 = load i64, ptr %l1, !tbaa !24
  store i64 %t146, ptr %l91, !tbaa !24
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t148 = load i64, ptr %l1, !tbaa !24
  %t149 = load %"compiler/mir:Range", ptr %l4
  %t153 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t147, i64 %t148, %"compiler/mir:Range" %t149, i64 1)
  store { i64, [4 x i64] } %t153, ptr %l95
  br label %bb33
bb33:
  %t154 = load ptr, ptr %l90, !tbaa !29
  %t155 = load i64, ptr %l91, !tbaa !24
  %t156 = load { i64, [4 x i64] }, ptr %l95
  %t157 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t154, i64 %t155, { i64, [4 x i64] } %t156)
  store i64 %t157, ptr %l96
  br label %bb34
bb34:
  %t158 = load i32, ptr %l3, !tbaa !23
  %t159 = load ptr, ptr %l89, !tbaa !29
  %t160 = load i64, ptr %l96, !tbaa !24
  %t162 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t159, i64 %t160, i32 %t158)
  store i64 %t162, ptr %l98
  br label %bb35
bb35:
  %t163 = load i64, ptr %l98, !tbaa !24
  store i64 %t163, ptr %l13, !tbaa !24
  %t164 = load i1, ptr %l9, !tbaa !21
  %t166 = xor i1 %t164, true
  br i1 %t166, label %bb36, label %bb37
bb36:
  %t168 = load i64, ptr %l7, !tbaa !24
  store i64 %t168, ptr %l101, !tbaa !24
  %t169 = load i64, ptr %l8, !tbaa !24
  %t171 = call i64 @compiler_2feval_2ebmask(i64 %t169)
  store i64 %t171, ptr %l103
  br label %bb38
bb37:
  br label %bb74
bb38:
  %t172 = load i64, ptr %l101, !tbaa !24
  %t173 = load i64, ptr %l103, !tbaa !24
  %t174 = and i64 %t172, %t173
  store i64 %t174, ptr %l14, !tbaa !65
  %t177 = load i64, ptr %l13, !tbaa !24
  store i64 %t177, ptr %l106, !tbaa !24
  %t178 = load i64, ptr %l8, !tbaa !24
  %t180 = call i64 @compiler_2feval_2ebmask(i64 %t178)
  store i64 %t180, ptr %l108
  br label %bb39
bb39:
  %t181 = load i64, ptr %l106, !tbaa !24
  %t182 = load i64, ptr %l108, !tbaa !24
  %t183 = and i64 %t181, %t182
  store i64 %t183, ptr %l15, !tbaa !65
  %t186 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t188 = trunc i64 3 to i32
  %t189 = icmp eq i32 %t186, %t188
  br i1 %t189, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb50
bb42:
  %t191 = load i64, ptr %l14, !tbaa !65
  %t192 = load i64, ptr %l15, !tbaa !65
  %t195 = add i64 %t191, %t192
  store i64 %t195, ptr %l116, !tbaa !65
  %t196 = load i64, ptr %l8, !tbaa !24
  %t198 = call i64 @compiler_2feval_2ebmask(i64 %t196)
  store i64 %t198, ptr %l118
  br label %bb43
bb43:
  %t199 = load i64, ptr %l118, !tbaa !24
  %t200 = load i64, ptr %l116, !tbaa !65
  %t202 = and i64 %t200, %t199
  %t203 = load i64, ptr %l14, !tbaa !65
  %t206 = icmp ult i64 %t202, %t203
  br i1 %t206, label %bb44, label %bb45
bb44:
  store i1 true, ptr %l123, !tbaa !21
  br label %bb49
bb45:
  %t208 = load i64, ptr %l8, !tbaa !24
  %t210 = icmp eq i64 %t208, 64
  br i1 %t210, label %bb46, label %bb47
bb46:
  %t212 = load i64, ptr %l14, !tbaa !65
  %t213 = load i64, ptr %l15, !tbaa !65
  %t216 = add i64 %t212, %t213
  %t217 = load i64, ptr %l14, !tbaa !65
  %t220 = icmp ult i64 %t216, %t217
  store i1 %t220, ptr %l126, !tbaa !21
  br label %bb48
bb47:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb48
bb48:
  %t222 = load i1, ptr %l126, !tbaa !21
  store i1 %t222, ptr %l123, !tbaa !21
  br label %bb49
bb49:
  %t223 = load i1, ptr %l123, !tbaa !21
  store i1 %t223, ptr %l111, !tbaa !21
  br label %bb73
bb50:
  %t224 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t226 = trunc i64 4 to i32
  %t227 = icmp eq i32 %t224, %t226
  br i1 %t227, label %bb51, label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t229 = load i64, ptr %l14, !tbaa !65
  %t230 = load i64, ptr %l15, !tbaa !65
  %t233 = icmp ult i64 %t229, %t230
  store i1 %t233, ptr %l111, !tbaa !21
  br label %bb73
bb54:
  %t235 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t237 = trunc i64 5 to i32
  %t238 = icmp eq i32 %t235, %t237
  br i1 %t238, label %bb55, label %bb56
bb55:
  br label %bb57
bb56:
  br label %bb68
bb57:
  %t240 = load i64, ptr %l14, !tbaa !65
  %t242 = icmp ne i64 %t240, 0
  br i1 %t242, label %bb58, label %bb59
bb58:
  %t244 = load i64, ptr %l14, !tbaa !65
  %t245 = load i64, ptr %l15, !tbaa !65
  %t248 = mul i64 %t244, %t245
  %t249 = load i64, ptr %l14, !tbaa !65
  %t252 = udiv i64 %t248, %t249
  %t253 = load i64, ptr %l15, !tbaa !65
  %t256 = icmp ne i64 %t252, %t253
  br i1 %t256, label %bb60, label %bb61
bb59:
  store i1 false, ptr %l141, !tbaa !21
  br label %bb67
bb60:
  store i1 true, ptr %l149, !tbaa !21
  br label %bb66
bb61:
  %t258 = load i64, ptr %l8, !tbaa !24
  %t260 = icmp slt i64 %t258, 64
  br i1 %t260, label %bb62, label %bb63
bb62:
  %t262 = load i64, ptr %l14, !tbaa !65
  %t263 = load i64, ptr %l15, !tbaa !65
  %t266 = mul i64 %t262, %t263
  store i64 %t266, ptr %l155, !tbaa !65
  %t267 = load i64, ptr %l8, !tbaa !24
  %t269 = call i64 @compiler_2feval_2ebmask(i64 %t267)
  store i64 %t269, ptr %l157
  br label %bb64
bb63:
  store i1 false, ptr %l152, !tbaa !21
  br label %bb65
bb64:
  %t270 = load i64, ptr %l157, !tbaa !24
  %t271 = load i64, ptr %l155, !tbaa !65
  %t273 = icmp ugt i64 %t271, %t270
  store i1 %t273, ptr %l152, !tbaa !21
  br label %bb65
bb65:
  %t275 = load i1, ptr %l152, !tbaa !21
  store i1 %t275, ptr %l149, !tbaa !21
  br label %bb66
bb66:
  %t276 = load i1, ptr %l149, !tbaa !21
  store i1 %t276, ptr %l141, !tbaa !21
  br label %bb67
bb67:
  %t277 = load i1, ptr %l141, !tbaa !21
  store i1 %t277, ptr %l111, !tbaa !21
  br label %bb73
bb68:
  br i1 true, label %bb69, label %bb70
bb69:
  br label %bb71
bb70:
  br label %bb72
bb71:
  store i1 false, ptr %l111, !tbaa !21
  br label %bb73
bb72:
  call void @__olang_check_failed(ptr @olang_loc_63a030dc495bebe2_de58b898255fa7b6)
  unreachable
bb73:
  %t278 = load i1, ptr %l111, !tbaa !21
  store i1 %t278, ptr %rv
  br label %ret
bb74:
  %t279 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t281 = trunc i64 6 to i32
  %t282 = icmp eq i32 %t279, %t281
  br i1 %t282, label %bb75, label %bb76
bb75:
  %t284 = load i64, ptr %l12, !tbaa !24
  store i64 %t284, ptr %l162, !tbaa !24
  %t285 = load i64, ptr %l8, !tbaa !24
  %t287 = call i64 @compiler_2feval_2eminBits(i64 %t285)
  store i64 %t287, ptr %l164
  br label %bb77
bb76:
  br label %bb81
bb77:
  %t288 = load i64, ptr %l162, !tbaa !24
  %t289 = load i64, ptr %l164, !tbaa !24
  %t290 = icmp eq i64 %t288, %t289
  br i1 %t290, label %bb78, label %bb79
bb78:
  %t292 = load i64, ptr %l13, !tbaa !24
  %t294 = icmp eq i64 %t292, -1
  store i1 %t294, ptr %l166, !tbaa !21
  br label %bb80
bb79:
  store i1 false, ptr %l166, !tbaa !21
  br label %bb80
bb80:
  %t296 = load i1, ptr %l166, !tbaa !21
  store i1 %t296, ptr %rv
  br label %ret
bb81:
  %t297 = load i64, ptr %l8, !tbaa !24
  %t299 = icmp slt i64 %t297, 64
  br i1 %t299, label %bb82, label %bb83
bb82:
  %t301 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t303 = trunc i64 5 to i32
  %t304 = icmp eq i32 %t301, %t303
  br i1 %t304, label %bb84, label %bb85
bb83:
  br label %bb113
bb84:
  %t306 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t307 = load i64, ptr %l12, !tbaa !24
  %t308 = load i64, ptr %l13, !tbaa !24
  %t312 = call i1 @compiler_2feval_2eoverflows64(i32 %t306, i64 %t307, i64 %t308, i1 true)
  store i1 %t312, ptr %l177
  br label %bb86
bb85:
  store i1 false, ptr %l173, !tbaa !21
  br label %bb87
bb86:
  %t313 = load i1, ptr %l177, !tbaa !21
  store i1 %t313, ptr %l173, !tbaa !21
  br label %bb87
bb87:
  %t314 = load i1, ptr %l173, !tbaa !21
  br i1 %t314, label %bb88, label %bb89
bb88:
  store i1 true, ptr %rv
  br label %ret
bb89:
  br label %bb90
bb90:
  %t316 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t318 = trunc i64 3 to i32
  %t319 = icmp eq i32 %t316, %t318
  br i1 %t319, label %bb91, label %bb92
bb91:
  br label %bb93
bb92:
  br label %bb94
bb93:
  %t321 = load i64, ptr %l12, !tbaa !24
  %t322 = load i64, ptr %l13, !tbaa !24
  %t325 = add i64 %t321, %t322
  store i64 %t325, ptr %l179, !tbaa !24
  br label %bb107
bb94:
  %t327 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t329 = trunc i64 4 to i32
  %t330 = icmp eq i32 %t327, %t329
  br i1 %t330, label %bb95, label %bb96
bb95:
  br label %bb97
bb96:
  br label %bb98
bb97:
  %t332 = load i64, ptr %l12, !tbaa !24
  %t333 = load i64, ptr %l13, !tbaa !24
  %t336 = sub i64 %t332, %t333
  store i64 %t336, ptr %l179, !tbaa !24
  br label %bb107
bb98:
  %t338 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t340 = trunc i64 5 to i32
  %t341 = icmp eq i32 %t338, %t340
  br i1 %t341, label %bb99, label %bb100
bb99:
  br label %bb101
bb100:
  br label %bb102
bb101:
  %t343 = load i64, ptr %l12, !tbaa !24
  %t344 = load i64, ptr %l13, !tbaa !24
  %t347 = mul i64 %t343, %t344
  store i64 %t347, ptr %l179, !tbaa !24
  br label %bb107
bb102:
  br i1 true, label %bb103, label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb106
bb105:
  store i64 0, ptr %l179, !tbaa !24
  br label %bb107
bb106:
  call void @__olang_check_failed(ptr @olang_loc_ffc454b782ecc9e3_c14f69603a3a3b57)
  unreachable
bb107:
  %t349 = load i64, ptr %l179, !tbaa !24
  store i64 %t349, ptr %l16, !tbaa !24
  %t350 = load i64, ptr %l16, !tbaa !24
  store i64 %t350, ptr %l195, !tbaa !24
  %t351 = load i64, ptr %l8, !tbaa !24
  %t353 = call i64 @compiler_2feval_2eminBits(i64 %t351)
  store i64 %t353, ptr %l197
  br label %bb108
bb108:
  %t354 = load i64, ptr %l195, !tbaa !24
  %t355 = load i64, ptr %l197, !tbaa !24
  %t356 = icmp slt i64 %t354, %t355
  br i1 %t356, label %bb109, label %bb110
bb109:
  store i1 true, ptr %l199, !tbaa !21
  br label %bb112
bb110:
  %t358 = load i64, ptr %l16, !tbaa !24
  store i64 %t358, ptr %l200, !tbaa !24
  %t359 = load i64, ptr %l8, !tbaa !24
  %t361 = call i64 @compiler_2feval_2eminBits(i64 %t359)
  store i64 %t361, ptr %l202
  br label %bb111
bb111:
  %t362 = load i64, ptr %l202, !tbaa !24
  %t363 = add i64 %t362, 1
  %t365 = sub i64 0, %t363
  %t366 = load i64, ptr %l200, !tbaa !24
  %t368 = icmp sgt i64 %t366, %t365
  store i1 %t368, ptr %l199, !tbaa !21
  br label %bb112
bb112:
  %t370 = load i1, ptr %l199, !tbaa !21
  store i1 %t370, ptr %rv
  br label %ret
bb113:
  %t371 = load i32, ptr %l2, !range !{i32 0, i32 51}
  %t372 = load i64, ptr %l12, !tbaa !24
  %t373 = load i64, ptr %l13, !tbaa !24
  %t377 = call i1 @compiler_2feval_2eoverflows64(i32 %t371, i64 %t372, i64 %t373, i1 true)
  store i1 %t377, ptr %l209
  br label %bb114
bb114:
  %t378 = load i1, ptr %l209, !tbaa !21
  store i1 %t378, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l2 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l9 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l20 = alloca i32
  %l25 = alloca i32
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
  store i32 %t10, ptr %l9
  br label %bb1
bb1:
  %t11 = load i32, ptr %l9, !tbaa !23
  store i32 %t11, ptr %l3, !tbaa !23
  %t12 = load ptr, ptr %l2, !tbaa !29
  %t13 = load i32, ptr %l3, !tbaa !23
  %t16 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t12, i32 %t13)
  store i32 %t16, ptr %l12
  br label %bb2
bb2:
  %t17 = load i32, ptr %l12, !range !{i32 0, i32 33}
  store i32 %t17, ptr %l4
  %t18 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t20 = trunc i64 22 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  br label %bb7
bb4:
  %t23 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t25 = trunc i64 23 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l2, !tbaa !29
  %t29 = load i32, ptr %l3, !tbaa !23
  %t32 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t28, i32 %t29)
  store i32 %t32, ptr %l20
  br label %bb8
bb8:
  %t33 = load i32, ptr %l20, !tbaa !23
  store i32 %t33, ptr %l13, !tbaa !23
  br label %bb19
bb9:
  %t34 = load i32, ptr %l4, !range !{i32 0, i32 33}
  %t36 = trunc i64 18 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t39 = load ptr, ptr %l2, !tbaa !29
  %t40 = load i32, ptr %l3, !tbaa !23
  %t43 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %t39, i32 %t40)
  store i32 %t43, ptr %l25
  br label %bb13
bb13:
  %t44 = load i32, ptr %l25, !tbaa !23
  store i32 %t44, ptr %l13, !tbaa !23
  br label %bb19
bb14:
  br i1 true, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb18
bb17:
  store i32 0, ptr %l13, !tbaa !23
  br label %bb19
bb18:
  call void @__olang_check_failed(ptr @olang_loc_d4aeb51afef739b6_d573fd1fa5ffe912)
  unreachable
bb19:
  %t45 = load i32, ptr %l13, !tbaa !23
  store i32 %t45, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca { i64, ptr }
  %l9 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l4, !tbaa !29
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t9 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %t5, i32 %a1)
  store i32 %t9, ptr %l7
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load i32, ptr %l7, !tbaa !23
  %t12 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %s0, ptr %t10, i32 %t11)
  store { i64, ptr } %t12, ptr %l8
  br label %bb2
bb2:
  %t13 = load { i64, ptr }, ptr %l8, !tbaa !27
  store { i64, ptr } %t13, ptr %l9, !tbaa !27
  %t16 = getelementptr { i64, ptr }, ptr %l9, i32 0, i32 1
  %t17 = load ptr, ptr %t16, !tbaa !27
  %t18 = getelementptr i32, ptr %t17, i64 %a2
  %t19 = load i32, ptr %t18, !tbaa !33
  call void @__olang_scope_close(ptr %s0)
  store i32 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 12
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
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 12
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
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 13
  store ptr %t24, ptr %l14, !tbaa !29
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 13
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
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
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 26
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
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 43
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
  %t120 = getelementptr %"compiler/eval:Machine", ptr %t118, i32 0, i32 73
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
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 42
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
  %t154 = getelementptr %"compiler/eval:Machine", ptr %t152, i32 0, i32 42
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
  %t223 = getelementptr %"compiler/eval:Machine", ptr %t221, i32 0, i32 22
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
  %t235 = getelementptr %"compiler/eval:Machine", ptr %t233, i32 0, i32 26
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
  %t307 = getelementptr %"compiler/eval:Machine", ptr %t305, i32 0, i32 26
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

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eplaceType(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Lvalue" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca { i64, [2 x i64] }
  %l6 = alloca i32
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l15 = alloca { i64, [1 x i64] }
  %l16 = alloca i64
  %l17 = alloca i64
  %l19 = alloca { i64, ptr }
  %l25 = alloca i32
  %l30 = alloca { i64, ptr }
  %l32 = alloca { i64, ptr }
  %l47 = alloca i32
  %l50 = alloca i32
  %l69 = alloca { i64, ptr }
  %l71 = alloca { i64, ptr }
  %l78 = alloca i32
  %l85 = alloca i32
  %l92 = alloca i32
  %l95 = alloca ptr
  %l98 = alloca i32
  %l99 = alloca i32
  %l106 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store %"compiler/mir:Lvalue" %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 58
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l19, !tbaa !27
  %t7 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t8 = load ptr, ptr %t7, !tbaa !27
  %t9 = getelementptr %"compiler/eval:frame", ptr %t8, i64 %a1
  %t10 = getelementptr %"compiler/eval:frame", ptr %t9, i32 0, i32 0
  %t11 = load i64, ptr %t10, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/eval:Machine", ptr %t13, i32 0, i32 0
  %t16 = load ptr, ptr %t15, !tbaa !29
  store ptr %t16, ptr %l4, !tbaa !29
  %t18 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 0
  %t19 = load { i64, [2 x i64] }, ptr %t18
  store { i64, [2 x i64] } %t19, ptr %l5
  %t21 = load { i64, [2 x i64] }, ptr %l5
  %t23 = extractvalue { i64, [2 x i64] } %t21, 0
  %t24 = icmp eq i64 %t23, 1
  br i1 %t24, label %bb1, label %bb2
bb1:
  %t26 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t27 = getelementptr { i32 }, ptr %t26, i32 0, i32 0
  %t28 = load i32, ptr %t27
  store i32 %t28, ptr %l6, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 26
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l30, !tbaa !27
  %t34 = load i64, ptr %l3, !tbaa !24
  %t36 = getelementptr { i64, ptr }, ptr %l30, i32 0, i32 1
  %t37 = load ptr, ptr %t36, !tbaa !27
  %t38 = getelementptr %"compiler/eval:cfn", ptr %t37, i64 %t34
  %t39 = getelementptr %"compiler/eval:cfn", ptr %t38, i32 0, i32 1
  %t40 = load { i64, ptr }, ptr %t39, !tbaa !27
  store { i64, ptr } %t40, ptr %l32, !tbaa !27
  %t41 = load i32, ptr %l6, !tbaa !23
  %t43 = sext i32 %t41 to i64
  %t45 = getelementptr { i64, ptr }, ptr %l32, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr %"compiler/mir:Local", ptr %t46, i64 %t43
  %t48 = getelementptr %"compiler/mir:Local", ptr %t47, i32 0, i32 2
  %t49 = load i32, ptr %t48, !tbaa !23
  store i32 %t49, ptr %l25, !tbaa !23
  br label %bb13
bb4:
  %t51 = load { i64, [2 x i64] }, ptr %l5
  %t53 = extractvalue { i64, [2 x i64] } %t51, 0
  %t54 = icmp eq i64 %t53, 2
  br i1 %t54, label %bb5, label %bb6
bb5:
  %t56 = getelementptr { i64, [2 x i64] }, ptr %l5, i32 0, i32 1
  %t57 = getelementptr { i64, i32, i32 }, ptr %t56, i32 0, i32 2
  %t58 = load i32, ptr %t57
  store i32 %t58, ptr %l7, !tbaa !23
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t60 = load i32, ptr %l7, !tbaa !23
  store i32 %t60, ptr %l25, !tbaa !23
  br label %bb13
bb8:
  %t62 = load { i64, [2 x i64] }, ptr %l5
  %t64 = extractvalue { i64, [2 x i64] } %t62, 0
  %t65 = icmp eq i64 %t64, 0
  br i1 %t65, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t67 = load i32, ptr @G_2ecompiler_2ftypes_2eUnknownT, !tbaa !23
  store i32 %t67, ptr %l25, !tbaa !23
  br label %bb13
bb12:
  call void @__olang_check_failed(ptr @olang_loc_48067455946c0246_37fc1727e867ffc2)
  unreachable
bb13:
  %t69 = load i32, ptr %l25, !tbaa !23
  store i32 %t69, ptr %l8, !tbaa !23
  store i32 0, ptr %l9, !tbaa !23
  %t70 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t71 = getelementptr %"compiler/mir:Range", ptr %t70, i32 0, i32 1
  %t72 = load i32, ptr %t71, !tbaa !23
  store i32 %t72, ptr %l10, !tbaa !23
  store i32 1, ptr %l11, !tbaa !23
  %t74 = load i32, ptr %l10, !tbaa !23
  %t75 = load i32, ptr %l9, !tbaa !23
  %t78 = icmp sgt i32 %t74, %t75
  br i1 %t78, label %bb14, label %bb15
bb14:
  %t80 = load i32, ptr %l11, !tbaa !23
  %t82 = icmp sgt i32 %t80, 0
  br i1 %t82, label %bb16, label %bb17
bb15:
  store i32 0, ptr %l47, !tbaa !23
  br label %bb19
bb16:
  %t84 = load i32, ptr %l10, !tbaa !23
  %t85 = load i32, ptr %l9, !tbaa !23
  %t88 = sub i32 %t84, %t85
  %t89 = load i32, ptr %l11, !tbaa !23
  %t92 = add i32 %t88, %t89
  %t94 = sub i32 %t92, 1
  %t95 = load i32, ptr %l11, !tbaa !23
  %t98 = sdiv i32 %t94, %t95
  store i32 %t98, ptr %l50, !tbaa !23
  br label %bb18
bb17:
  store i32 0, ptr %l50, !tbaa !23
  br label %bb18
bb18:
  %t100 = load i32, ptr %l50, !tbaa !23
  store i32 %t100, ptr %l47, !tbaa !23
  br label %bb19
bb19:
  %t101 = load i32, ptr %l47, !tbaa !23
  store i32 %t101, ptr %l12, !tbaa !23
  store i32 0, ptr %l13, !tbaa !23
  br label %bb20
bb20:
  %t102 = load i32, ptr %l13, !tbaa !23
  %t103 = load i32, ptr %l12, !tbaa !23
  %t106 = icmp slt i32 %t102, %t103
  %t108 = xor i1 %t106, true
  br i1 %t108, label %bb21, label %bb22
bb21:
  br label %bb49
bb22:
  br label %bb23
bb23:
  %t110 = load i32, ptr %l9, !tbaa !23
  %t111 = load i32, ptr %l13, !tbaa !23
  %t112 = load i32, ptr %l11, !tbaa !23
  %t115 = mul i32 %t111, %t112
  %t118 = add i32 %t110, %t115
  %t120 = load ptr, ptr %l0, !tbaa !29
  %t122 = getelementptr %"compiler/eval:Machine", ptr %t120, i32 0, i32 26
  %t123 = load { i64, ptr }, ptr %t122, !tbaa !27
  store { i64, ptr } %t123, ptr %l69, !tbaa !27
  %t124 = load i64, ptr %l3, !tbaa !24
  %t126 = getelementptr { i64, ptr }, ptr %l69, i32 0, i32 1
  %t127 = load ptr, ptr %t126, !tbaa !27
  %t128 = getelementptr %"compiler/eval:cfn", ptr %t127, i64 %t124
  %t129 = getelementptr %"compiler/eval:cfn", ptr %t128, i32 0, i32 3
  %t130 = load { i64, ptr }, ptr %t129, !tbaa !27
  store { i64, ptr } %t130, ptr %l71, !tbaa !27
  %t131 = getelementptr %"compiler/mir:Lvalue", ptr %l2, i32 0, i32 1
  %t132 = getelementptr %"compiler/mir:Range", ptr %t131, i32 0, i32 0
  %t133 = load i32, ptr %t132, !tbaa !23
  %t135 = sext i32 %t133 to i64
  %t138 = sext i32 %t118 to i64
  %t141 = add i64 %t135, %t138
  %t143 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t144 = load ptr, ptr %t143, !tbaa !27
  %t145 = getelementptr { i64, [1 x i64] }, ptr %t144, i64 %t141
  %t146 = load { i64, [1 x i64] }, ptr %t145
  store { i64, [1 x i64] } %t146, ptr %l15
  %t148 = load { i64, [1 x i64] }, ptr %l15
  %t150 = extractvalue { i64, [1 x i64] } %t148, 0
  %t151 = icmp eq i64 %t150, 0
  br i1 %t151, label %bb24, label %bb25
bb24:
  %t153 = getelementptr { i64, [1 x i64] }, ptr %l15, i32 0, i32 1
  %t154 = getelementptr { i64 }, ptr %t153, i32 0, i32 0
  %t155 = load i64, ptr %t154
  store i64 %t155, ptr %l16, !tbaa !24
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load i32, ptr %l8, !tbaa !23
  %t159 = load i64, ptr %l16, !tbaa !24
  %t163 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartType(ptr %v0, ptr %t157, i32 %t158, i64 %t159)
  store i32 %t163, ptr %l85
  br label %bb27
bb27:
  %t164 = load i32, ptr %l85, !tbaa !23
  store i32 %t164, ptr %l78, !tbaa !23
  br label %bb47
bb28:
  %t165 = load { i64, [1 x i64] }, ptr %l15
  %t167 = extractvalue { i64, [1 x i64] } %t165, 0
  %t168 = icmp eq i64 %t167, 1
  br i1 %t168, label %bb29, label %bb30
bb29:
  br label %bb33
bb30:
  %t170 = load { i64, [1 x i64] }, ptr %l15
  %t172 = extractvalue { i64, [1 x i64] } %t170, 0
  %t173 = icmp eq i64 %t172, 2
  br i1 %t173, label %bb31, label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t175 = load ptr, ptr %l0, !tbaa !29
  %t176 = load i32, ptr %l8, !tbaa !23
  %t179 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %t175, i32 %t176)
  store i32 %t179, ptr %l92
  br label %bb34
bb34:
  %t180 = load i32, ptr %l92, !tbaa !23
  store i32 %t180, ptr %l78, !tbaa !23
  br label %bb47
bb35:
  %t181 = load { i64, [1 x i64] }, ptr %l15
  %t183 = extractvalue { i64, [1 x i64] } %t181, 0
  %t184 = icmp eq i64 %t183, 3
  br i1 %t184, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb41
bb38:
  %t186 = load ptr, ptr %l4, !tbaa !29
  store ptr %t186, ptr %l95, !tbaa !29
  %t187 = load ptr, ptr %l4, !tbaa !29
  %t188 = load i32, ptr %l8, !tbaa !23
  %t191 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t187, i32 %t188)
  store i32 %t191, ptr %l98
  br label %bb39
bb39:
  %t192 = load ptr, ptr %l95, !tbaa !29
  %t193 = load i32, ptr %l98, !tbaa !23
  %t194 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t192, i32 %t193)
  store i32 %t194, ptr %l99
  br label %bb40
bb40:
  %t195 = load i32, ptr %l99, !tbaa !23
  store i32 %t195, ptr %l78, !tbaa !23
  br label %bb47
bb41:
  %t196 = load { i64, [1 x i64] }, ptr %l15
  %t198 = extractvalue { i64, [1 x i64] } %t196, 0
  %t199 = icmp eq i64 %t198, 4
  br i1 %t199, label %bb42, label %bb43
bb42:
  %t201 = getelementptr { i64, [1 x i64] }, ptr %l15, i32 0, i32 1
  %t202 = getelementptr { i64 }, ptr %t201, i32 0, i32 0
  %t203 = load i64, ptr %t202
  store i64 %t203, ptr %l17, !tbaa !24
  br label %bb44
bb43:
  br label %bb46
bb44:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t206 = load i32, ptr %l8, !tbaa !23
  %t207 = load i64, ptr %l17, !tbaa !24
  %t211 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %t205, i32 %t206, i64 %t207)
  store i32 %t211, ptr %l106
  br label %bb45
bb45:
  %t212 = load i32, ptr %l106, !tbaa !23
  store i32 %t212, ptr %l78, !tbaa !23
  br label %bb47
bb46:
  call void @__olang_check_failed(ptr @olang_loc_ed29d0e1fe37827_73f8bd43b4184743)
  unreachable
bb47:
  %t213 = load i32, ptr %l78, !tbaa !23
  store i32 %t213, ptr %l8, !tbaa !23
  br label %bb48
bb48:
  %t214 = load i32, ptr %l13, !tbaa !23
  %t216 = add i32 %t214, 1
  store i32 %t216, ptr %l13, !tbaa !23
  br label %bb20
bb49:
  %t218 = load i32, ptr %l8, !tbaa !23
  store i32 %t218, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2erdWide(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca i32
  %l3 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l12 = alloca %"compiler/eval:Ptr"
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l24 = alloca i1
  %l26 = alloca ptr
  %l30 = alloca i32
  %l31 = alloca i1
  %l33 = alloca { i64, i64 }
  %s0 = alloca %olang.scope
  %rv = alloca { i64, i64 }
  store ptr %a0, ptr %l0
  store %"compiler/eval:Ptr" %a1, ptr %l1
  store i32 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load %"compiler/eval:Ptr", ptr %l1
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %t2, i64 8)
  store i64 %t5, ptr %l7
  br label %bb1
bb1:
  %t6 = load i64, ptr %l7, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  store ptr %t7, ptr %l8, !tbaa !29
  %t8 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 0
  %t9 = load i64, ptr %t8, !tbaa !24
  %t10 = getelementptr %"compiler/eval:Ptr", ptr %l1, i32 0, i32 1
  %t11 = load i64, ptr %t10, !tbaa !24
  %t13 = add i64 %t11, 8
  %t16 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t9, i64 %t13)
  store %"compiler/eval:Ptr" %t16, ptr %l12
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l8, !tbaa !29
  %t18 = load %"compiler/eval:Ptr", ptr %l12
  %t19 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t17, %"compiler/eval:Ptr" %t18, i64 8)
  store i64 %t19, ptr %l13
  br label %bb3
bb3:
  %t20 = load i64, ptr %l13, !tbaa !24
  %t21 = load i64, ptr %l3, !tbaa !24
  store i64 %t21, ptr %l14, !tbaa !24
  store i64 %t20, ptr %l15, !tbaa !24
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load i32, ptr %l2, !tbaa !23
  %t27 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t23, i32 %t24)
  store i64 %t27, ptr %l18
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i32, ptr %l2, !tbaa !23
  %t32 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t28, i32 %t29)
  store i64 %t32, ptr %l21
  br label %bb5
bb5:
  %t33 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t34 = load i64, ptr %l21, !tbaa !24
  %t36 = icmp ne i64 %t34, %t33
  br i1 %t36, label %bb6, label %bb7
bb6:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/eval:Machine", ptr %t38, i32 0, i32 0
  %t41 = load ptr, ptr %t40, !tbaa !29
  store ptr %t41, ptr %l26, !tbaa !29
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 0
  %t45 = load ptr, ptr %t44, !tbaa !29
  %t46 = load i32, ptr %l2, !tbaa !23
  %t49 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t45, i32 %t46)
  store i32 %t49, ptr %l30
  br label %bb8
bb7:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb10
bb8:
  %t50 = load ptr, ptr %l26, !tbaa !29
  %t51 = load i32, ptr %l30, !tbaa !23
  %t52 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t50, i32 %t51)
  store i1 %t52, ptr %l31
  br label %bb9
bb9:
  %t53 = load i1, ptr %l31, !tbaa !21
  %t54 = xor i1 %t53, true
  store i1 %t54, ptr %l24, !tbaa !21
  br label %bb10
bb10:
  %t56 = load i64, ptr %l14, !tbaa !24
  %t57 = load i64, ptr %l15, !tbaa !24
  %t58 = load i64, ptr %l18, !tbaa !24
  %t59 = load i1, ptr %l24, !tbaa !21
  %t60 = call { i64, i64 } @compiler_2feval_2eextend128(i64 %t56, i64 %t57, i64 %t58, i1 %t59)
  store { i64, i64 } %t60, ptr %l33
  br label %bb11
bb11:
  call void @__olang_scope_close(ptr %s0)
  %t61 = load { i64, i64 }, ptr %l33
  store { i64, i64 } %t61, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l4 = alloca i1
  %l5 = alloca i32
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l22 = alloca i1
  %l23 = alloca i1
  %l27 = alloca i1
  %l28 = alloca i32
  %l34 = alloca i32
  %l37 = alloca i32
  %l42 = alloca i64
  %l46 = alloca i1
  %l47 = alloca ptr
  %l50 = alloca i32
  %l51 = alloca i1
  %l54 = alloca ptr
  %l57 = alloca i32
  %l58 = alloca i1
  %l67 = alloca ptr
  %l70 = alloca i32
  %l71 = alloca { i64, ptr }
  %l78 = alloca { i64, ptr }
  %l82 = alloca i1
  %l85 = alloca i1
  %l90 = alloca i32
  %l93 = alloca i1
  %l96 = alloca i32
  %l99 = alloca i1
  %l100 = alloca ptr
  %l103 = alloca i32
  %l104 = alloca i32
  %l109 = alloca i32
  %l112 = alloca i32
  %l115 = alloca i32
  %l118 = alloca i32
  %l121 = alloca { i64, ptr }
  %l128 = alloca { i64, ptr }
  %l134 = alloca i1
  %l137 = alloca i1
  %rv = alloca i1
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
  %t6 = load i32, ptr %l1, !tbaa !23
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/eval:Machine", ptr %t8, i32 0, i32 76
  %t14 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %t10, i32 %t6)
  store i1 %t14, ptr %l22
  br label %bb1
bb1:
  %t15 = load i1, ptr %l22, !tbaa !21
  br i1 %t15, label %bb2, label %bb3
bb2:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 76
  %t19 = load i32, ptr %l1, !tbaa !23
  %t22 = call { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %t18, i32 %t19)
  %t23 = extractvalue { i32, i1 } %t22, 1
  %t24 = extractvalue { i32, i1 } %t22, 0
  store i32 %t24, ptr %l28
  %t25 = icmp ne i32 %t24, 0
  br i1 %t25, label %bb5, label %ok.26, !prof !99
ok.26:
  store i1 %t23, ptr %l27
  br label %bb4
bb3:
  br label %bb8
bb4:
  %t27 = load i1, ptr %l27, !tbaa !21
  store i1 %t27, ptr %l23, !tbaa !21
  br label %bb7
bb5:
  br label %bb6
bb6:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb7
bb7:
  %t28 = load i1, ptr %l23, !tbaa !21
  store i1 %t28, ptr %rv
  br label %ret
bb8:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t31 = getelementptr %"compiler/eval:Machine", ptr %t29, i32 0, i32 76
  %t32 = load i32, ptr %l1, !tbaa !23
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t31, i32 %t32, i1 false)
  br label %bb9
bb9:
  store i1 false, ptr %l4, !tbaa !21
  %t35 = load ptr, ptr %l2, !tbaa !29
  %t36 = load i32, ptr %l1, !tbaa !23
  %t39 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t35, i32 %t36)
  store i32 %t39, ptr %l34
  br label %bb10
bb10:
  %t40 = load i32, ptr %l34, !tbaa !23
  store i32 %t40, ptr %l5, !tbaa !23
  %t41 = load ptr, ptr %l2, !tbaa !29
  %t42 = load i32, ptr %l5, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t41, i32 %t42)
  store i32 %t45, ptr %l37
  br label %bb11
bb11:
  %t46 = load i32, ptr %l37, !range !{i32 0, i32 33}
  store i32 %t46, ptr %l6
  %t47 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t49 = trunc i64 20 to i32
  %t50 = icmp eq i32 %t47, %t49
  br i1 %t50, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb21
bb14:
  %t52 = load ptr, ptr %l2, !tbaa !29
  %t53 = load i32, ptr %l5, !tbaa !23
  %t56 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %t52, i32 %t53)
  store i64 %t56, ptr %l42
  br label %bb15
bb15:
  %t57 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t58 = load i64, ptr %l42, !tbaa !24
  %t60 = and i64 %t58, %t57
  %t62 = icmp ne i64 %t60, 0
  br i1 %t62, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l46, !tbaa !21
  br label %bb20
bb17:
  %t64 = load ptr, ptr %l0, !tbaa !29
  store ptr %t64, ptr %l47, !tbaa !29
  %t65 = load ptr, ptr %l2, !tbaa !29
  %t66 = load i32, ptr %l5, !tbaa !23
  %t69 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %t65, i32 %t66)
  store i32 %t69, ptr %l50
  br label %bb18
bb18:
  %t70 = load ptr, ptr %l47, !tbaa !29
  %t71 = load i32, ptr %l50, !tbaa !23
  %t72 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t70, i32 %t71)
  store i1 %t72, ptr %l51
  br label %bb19
bb19:
  %t73 = load i1, ptr %l51, !tbaa !21
  store i1 %t73, ptr %l46, !tbaa !21
  br label %bb20
bb20:
  %t74 = load i1, ptr %l46, !tbaa !21
  store i1 %t74, ptr %l4, !tbaa !21
  br label %bb87
bb21:
  %t75 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t77 = trunc i64 19 to i32
  %t78 = icmp eq i32 %t75, %t77
  br i1 %t78, label %bb22, label %bb23
bb22:
  br label %bb24
bb23:
  br label %bb27
bb24:
  %t80 = load ptr, ptr %l0, !tbaa !29
  store ptr %t80, ptr %l54, !tbaa !29
  %t81 = load ptr, ptr %l2, !tbaa !29
  %t82 = load i32, ptr %l5, !tbaa !23
  %t85 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %t81, i32 %t82)
  store i32 %t85, ptr %l57
  br label %bb25
bb25:
  %t86 = load ptr, ptr %l54, !tbaa !29
  %t87 = load i32, ptr %l57, !tbaa !23
  %t88 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t86, i32 %t87)
  store i1 %t88, ptr %l58
  br label %bb26
bb26:
  %t89 = load i1, ptr %l58, !tbaa !21
  store i1 %t89, ptr %l4, !tbaa !21
  br label %bb87
bb27:
  %t90 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t92 = trunc i64 22 to i32
  %t93 = icmp eq i32 %t90, %t92
  br i1 %t93, label %bb28, label %bb29
bb28:
  br label %bb36
bb29:
  %t95 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t97 = trunc i64 23 to i32
  %t98 = icmp eq i32 %t95, %t97
  br i1 %t98, label %bb30, label %bb31
bb30:
  br label %bb36
bb31:
  %t100 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t102 = trunc i64 18 to i32
  %t103 = icmp eq i32 %t100, %t102
  br i1 %t103, label %bb32, label %bb33
bb32:
  br label %bb36
bb33:
  %t105 = load i32, ptr %l6, !range !{i32 0, i32 33}
  %t107 = trunc i64 24 to i32
  %t108 = icmp eq i32 %t105, %t107
  br i1 %t108, label %bb34, label %bb35
bb34:
  br label %bb36
bb35:
  br label %bb82
bb36:
  %t110 = load ptr, ptr %l2, !tbaa !29
  store ptr %t110, ptr %l67, !tbaa !29
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t112 = load i32, ptr %l5, !tbaa !23
  %t115 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartList(ptr %v0, ptr %t111, i32 %t112)
  store i32 %t115, ptr %l70
  br label %bb37
bb37:
  %t116 = load ptr, ptr %l67, !tbaa !29
  %t117 = load i32, ptr %l70, !tbaa !23
  %t118 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t116, i32 %t117)
  store { i64, ptr } %t118, ptr %l71
  br label %bb38
bb38:
  %t119 = load { i64, ptr }, ptr %l71, !tbaa !27
  store { i64, ptr } %t119, ptr %l7, !tbaa !27
  store i64 0, ptr %l8, !tbaa !24
  %t120 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t120, 0
  store i64 %t122, ptr %l9, !tbaa !24
  br label %bb39
bb39:
  %t124 = load i64, ptr %l8, !tbaa !24
  %t125 = load i64, ptr %l9, !tbaa !24
  %t128 = icmp slt i64 %t124, %t125
  %t130 = xor i1 %t128, true
  br i1 %t130, label %bb40, label %bb41
bb40:
  br label %bb48
bb41:
  br label %bb42
bb42:
  %t132 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t132, ptr %l78, !tbaa !27
  %t133 = load i64, ptr %l8, !tbaa !24
  %t135 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr i32, ptr %t136, i64 %t133
  %t138 = load i32, ptr %t137, !tbaa !33
  store i32 %t138, ptr %l10, !tbaa !23
  %t140 = load i1, ptr %l4, !tbaa !21
  br i1 %t140, label %bb43, label %bb44
bb43:
  store i1 true, ptr %l82, !tbaa !21
  br label %bb46
bb44:
  %t142 = load ptr, ptr %l0, !tbaa !29
  %t143 = load i32, ptr %l10, !tbaa !23
  %t146 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t142, i32 %t143)
  store i1 %t146, ptr %l85
  br label %bb45
bb45:
  %t147 = load i1, ptr %l85, !tbaa !21
  store i1 %t147, ptr %l82, !tbaa !21
  br label %bb46
bb46:
  %t148 = load i1, ptr %l82, !tbaa !21
  store i1 %t148, ptr %l4, !tbaa !21
  br label %bb47
bb47:
  %t149 = load i64, ptr %l8, !tbaa !24
  %t151 = add i64 %t149, 1
  store i64 %t151, ptr %l8, !tbaa !24
  br label %bb39
bb48:
  %t153 = load ptr, ptr %l2, !tbaa !29
  %t154 = load i32, ptr %l5, !tbaa !23
  %t157 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t153, i32 %t154)
  store i32 %t157, ptr %l90
  br label %bb49
bb49:
  %t158 = load i32, ptr %l90, !range !{i32 0, i32 33}
  %t160 = trunc i64 24 to i32
  %t161 = icmp eq i32 %t158, %t160
  br i1 %t161, label %bb50, label %bb51
bb50:
  store i1 true, ptr %l93, !tbaa !21
  br label %bb58
bb51:
  %t163 = load ptr, ptr %l2, !tbaa !29
  %t164 = load i32, ptr %l5, !tbaa !23
  %t167 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t163, i32 %t164)
  store i32 %t167, ptr %l96
  br label %bb52
bb52:
  %t168 = load i32, ptr %l96, !range !{i32 0, i32 33}
  %t170 = trunc i64 18 to i32
  %t171 = icmp eq i32 %t168, %t170
  br i1 %t171, label %bb53, label %bb54
bb53:
  %t173 = load ptr, ptr %l2, !tbaa !29
  store ptr %t173, ptr %l100, !tbaa !29
  %t174 = load ptr, ptr %l2, !tbaa !29
  %t175 = load i32, ptr %l5, !tbaa !23
  %t178 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %t174, i32 %t175)
  store i32 %t178, ptr %l103
  br label %bb55
bb54:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb57
bb55:
  %t179 = load ptr, ptr %l100, !tbaa !29
  %t180 = load i32, ptr %l103, !tbaa !23
  %t181 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %t179, i32 %t180)
  store i32 %t181, ptr %l104
  br label %bb56
bb56:
  %t182 = load i32, ptr %l104, !range !{i32 0, i32 6}
  %t184 = trunc i64 1 to i32
  %t185 = icmp eq i32 %t182, %t184
  store i1 %t185, ptr %l99, !tbaa !21
  br label %bb57
bb57:
  %t187 = load i1, ptr %l99, !tbaa !21
  store i1 %t187, ptr %l93, !tbaa !21
  br label %bb58
bb58:
  %t188 = load i1, ptr %l93, !tbaa !21
  br i1 %t188, label %bb59, label %bb60
bb59:
  %t189 = load ptr, ptr %l2, !tbaa !29
  %t190 = load i32, ptr %l5, !tbaa !23
  %t193 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t189, i32 %t190)
  store i32 %t193, ptr %l109
  br label %bb61
bb60:
  br label %bb81
bb61:
  %t194 = load i32, ptr %l109, !range !{i32 0, i32 33}
  %t196 = trunc i64 24 to i32
  %t197 = icmp eq i32 %t194, %t196
  br i1 %t197, label %bb62, label %bb63
bb62:
  %t199 = load ptr, ptr %l2, !tbaa !29
  %t200 = load i32, ptr %l5, !tbaa !23
  %t203 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %t199, i32 %t200)
  store i32 %t203, ptr %l115
  br label %bb64
bb63:
  %t204 = load ptr, ptr %l2, !tbaa !29
  %t205 = load i32, ptr %l5, !tbaa !23
  %t208 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %t204, i32 %t205)
  store i32 %t208, ptr %l118
  br label %bb65
bb64:
  %t209 = load i32, ptr %l115, !tbaa !23
  store i32 %t209, ptr %l112, !tbaa !23
  br label %bb66
bb65:
  %t210 = load i32, ptr %l118, !tbaa !23
  store i32 %t210, ptr %l112, !tbaa !23
  br label %bb66
bb66:
  %t211 = load i32, ptr %l112, !tbaa !23
  %t212 = load ptr, ptr %l2, !tbaa !29
  %t216 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t212, i32 %t211)
  store { i64, ptr } %t216, ptr %l121
  br label %bb67
bb67:
  %t217 = load { i64, ptr }, ptr %l121, !tbaa !27
  store { i64, ptr } %t217, ptr %l12, !tbaa !27
  store i64 0, ptr %l13, !tbaa !24
  %t218 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t220 = extractvalue { i64, ptr } %t218, 0
  store i64 %t220, ptr %l14, !tbaa !24
  br label %bb68
bb68:
  %t222 = load i64, ptr %l13, !tbaa !24
  %t223 = load i64, ptr %l14, !tbaa !24
  %t226 = icmp slt i64 %t222, %t223
  %t228 = xor i1 %t226, true
  br i1 %t228, label %bb69, label %bb70
bb69:
  br label %bb80
bb70:
  br label %bb71
bb71:
  %t230 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t230, ptr %l128, !tbaa !27
  %t231 = load i64, ptr %l13, !tbaa !24
  %t233 = getelementptr { i64, ptr }, ptr %l128, i32 0, i32 1
  %t234 = load ptr, ptr %t233, !tbaa !27
  %t235 = getelementptr i32, ptr %t234, i64 %t231
  %t236 = load i32, ptr %t235, !tbaa !33
  store i32 %t236, ptr %l15, !tbaa !23
  %t238 = load i32, ptr %l15, !tbaa !23
  %t240 = icmp ne i32 %t238, 0
  br i1 %t240, label %bb72, label %bb73
bb72:
  %t242 = load i1, ptr %l4, !tbaa !21
  br i1 %t242, label %bb74, label %bb75
bb73:
  br label %bb78
bb74:
  store i1 true, ptr %l134, !tbaa !21
  br label %bb77
bb75:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load i32, ptr %l15, !tbaa !23
  %t248 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereachesWritable(ptr %v0, ptr %t244, i32 %t245)
  store i1 %t248, ptr %l137
  br label %bb76
bb76:
  %t249 = load i1, ptr %l137, !tbaa !21
  store i1 %t249, ptr %l134, !tbaa !21
  br label %bb77
bb77:
  %t250 = load i1, ptr %l134, !tbaa !21
  store i1 %t250, ptr %l4, !tbaa !21
  br label %bb78
bb78:
  br label %bb79
bb79:
  %t251 = load i64, ptr %l13, !tbaa !24
  %t253 = add i64 %t251, 1
  store i64 %t253, ptr %l13, !tbaa !24
  br label %bb68
bb80:
  br label %bb81
bb81:
  br label %bb87
bb82:
  br i1 true, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb86
bb85:
  br label %bb87
bb86:
  call void @__olang_check_failed(ptr @olang_loc_a8af958fc51ac952_dd02768cc282434e)
  unreachable
bb87:
  %t255 = load ptr, ptr %l0, !tbaa !29
  %t257 = getelementptr %"compiler/eval:Machine", ptr %t255, i32 0, i32 76
  %t258 = load i32, ptr %l1, !tbaa !23
  %t259 = load i1, ptr %l4, !tbaa !21
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %t257, i32 %t258, i1 %t259)
  br label %bb88
bb88:
  %t263 = load i1, ptr %l4, !tbaa !21
  store i1 %t263, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ereadsMutable(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [15 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, [15 x i64] }
  %l3 = alloca %"compiler/mir:Lvalue"
  %l4 = alloca %"compiler/mir:Range"
  %l5 = alloca i1
  %l8 = alloca i1
  %l14 = alloca i1
  %l21 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store { i64, [15 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, [15 x i64] }, ptr %l2
  %t3 = extractvalue { i64, [15 x i64] } %t1, 0
  %t4 = icmp eq i64 %t3, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = getelementptr { i64, [15 x i64] }, ptr %l2, i32 0, i32 1
  %t7 = getelementptr { { i64, [4 x i64] } }, ptr %t6, i32 0, i32 0
  %t8 = load { i64, [4 x i64] }, ptr %t7
  %t10 = extractvalue { i64, [4 x i64] } %t8, 0
  %t11 = icmp eq i64 %t10, 1
  store i1 %t11, ptr %l8, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb3
bb3:
  %t13 = load i1, ptr %l8, !tbaa !21
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t14 = getelementptr { i64, [15 x i64] }, ptr %l2, i32 0, i32 1
  %t15 = getelementptr { { i64, [4 x i64] } }, ptr %t14, i32 0, i32 0
  %t16 = getelementptr { i64, [4 x i64] }, ptr %t15, i32 0, i32 1
  %t17 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t16, i32 0, i32 0
  %t18 = load %"compiler/mir:Lvalue", ptr %t17
  store %"compiler/mir:Lvalue" %t18, ptr %l3
  br label %bb6
bb5:
  br label %bb8
bb6:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load %"compiler/mir:Lvalue", ptr %l3
  %t24 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2emutableGlobal(ptr %v0, ptr %t20, %"compiler/mir:Lvalue" %t21)
  store i1 %t24, ptr %l14
  br label %bb7
bb7:
  %t25 = load i1, ptr %l14, !tbaa !21
  store i1 %t25, ptr %l5, !tbaa !21
  br label %bb18
bb8:
  %t26 = load { i64, [15 x i64] }, ptr %l2
  %t28 = extractvalue { i64, [15 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 3
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = getelementptr { i64, [15 x i64] }, ptr %l2, i32 0, i32 1
  %t32 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t31, i32 0, i32 2
  %t33 = load %"compiler/mir:Range", ptr %t32
  store %"compiler/mir:Range" %t33, ptr %l4
  br label %bb11
bb10:
  br label %bb13
bb11:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t37 = load %"compiler/mir:Range", ptr %l4
  %t41 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2erangeMutable(ptr %v0, ptr %v1, ptr %t35, ptr %a1, %"compiler/mir:Range" %t37)
  store i1 %t41, ptr %l21
  br label %bb12
bb12:
  %t42 = load i1, ptr %l21, !tbaa !21
  store i1 %t42, ptr %l5, !tbaa !21
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  store i1 false, ptr %l5, !tbaa !21
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_5132488ea4d5a24a_c872bd4e98b932a6)
  unreachable
bb18:
  %t43 = load i1, ptr %l5, !tbaa !21
  store i1 %t43, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereclaim(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, i32 %a4, %"compiler/mir:Range" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca { i64, [2 x i64] }
  %l7 = alloca i32
  %l8 = alloca i64
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l17 = alloca { i64, [4 x i64] }
  %l18 = alloca %"compiler/eval:Ptr"
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i64
  %l24 = alloca ptr
  %l27 = alloca i64
  %l35 = alloca i1
  %l42 = alloca i1
  %l44 = alloca ptr
  %l48 = alloca %"compiler/eval:Ptr"
  %l49 = alloca %"compiler/eval:Ptr"
  %l52 = alloca i1
  %l55 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l60 = alloca i32
  %l63 = alloca i32
  %l82 = alloca { i64, ptr }
  %l84 = alloca { i64, ptr }
  %l94 = alloca i1
  %l96 = alloca ptr
  %l100 = alloca %"compiler/eval:Ptr"
  %l101 = alloca %"compiler/eval:Ptr"
  %l115 = alloca i64
  %l118 = alloca %"compiler/eval:Ptr"
  %l121 = alloca %"compiler/eval:Ptr"
  %l122 = alloca i32
  %l128 = alloca i1
  %l130 = alloca i1
  %l133 = alloca i64
  %l135 = alloca i1
  %l139 = alloca i1
  %l146 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store %"compiler/mir:Range" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 25
  %t4 = load i64, ptr %l2, !tbaa !24
  %t7 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %s0, ptr %t3, i64 %t4)
  store ptr %t7, ptr %l24
  br label %bb1
bb1:
  %t8 = load ptr, ptr %l24, !tbaa !29
  %t10 = getelementptr %"compiler/mir:Fn", ptr %t8, i32 0, i32 0
  %t11 = load { i64, [2 x i64] }, ptr %t10
  store { i64, [2 x i64] } %t11, ptr %l6
  %t13 = load { i64, [2 x i64] }, ptr %l6
  %t15 = extractvalue { i64, [2 x i64] } %t13, 0
  %t16 = icmp eq i64 %t15, 0
  br i1 %t16, label %bb2, label %bb3
bb2:
  %t18 = getelementptr { i64, [2 x i64] }, ptr %l6, i32 0, i32 1
  %t19 = getelementptr { i32 }, ptr %t18, i32 0, i32 0
  %t20 = load i32, ptr %t19
  store i32 %t20, ptr %l7, !tbaa !23
  br label %bb4
bb3:
  br label %bb5
bb4:
  %t22 = load i32, ptr %l7, !tbaa !23
  %t24 = sext i32 %t22 to i64
  store i64 %t24, ptr %l27, !tbaa !24
  br label %bb10
bb5:
  br i1 true, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  store i64 -1, ptr %l27, !tbaa !24
  br label %bb10
bb9:
  call void @__olang_check_failed(ptr @olang_loc_9194ffe5f5e47ba_f46397cb96638a2e)
  unreachable
bb10:
  %t26 = load i64, ptr %l27, !tbaa !24
  store i64 %t26, ptr %l8, !tbaa !24
  %t27 = load i64, ptr %l8, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l35, !tbaa !21
  br label %bb14
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/eval:Machine", ptr %t31, i32 0, i32 7
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = call i64 @__olang_fmt_i64(ptr null, i64 %t34)
  %t38 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t39 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t40 = add i64 %t37, %t39
  %t42 = sext i32 %a4 to i64
  %t43 = call i64 @__olang_fmt_i64(ptr null, i64 %t42)
  %t44 = add i64 %t40, %t43
  %t45 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t44)
  %t46 = call i64 @__olang_fmt_i64(ptr %t45, i64 %t34)
  %t47 = getelementptr i8, ptr %t45, i64 %t37
  call void @olang_textcopy(ptr %t47, ptr %t38, i64 %t39)
  %t48 = getelementptr i8, ptr %t47, i64 %t39
  %t49 = call i64 @__olang_fmt_i64(ptr %t48, i64 %t42)
  %t50 = insertvalue { i64, ptr } undef, i64 %t44, 0
  %t51 = insertvalue { i64, ptr } %t50, ptr %t45, 1
  %t53 = extractvalue { i64, ptr } %t51, 0
  %t54 = extractvalue { i64, ptr } %t51, 1
  %t55 = mul i64 %t53, 1
  %t56 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t55)
  call void @llvm.memcpy.p0.p0.i64(ptr %t56, ptr %t54, i64 %t55, i1 false)
  %t57 = insertvalue { i64, ptr } undef, i64 %t53, 0
  %t58 = insertvalue { i64, ptr } %t57, ptr %t56, 1
  %t61 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %s0, ptr %t33, { i64, ptr } %t58)
  store i1 %t61, ptr %l42
  br label %bb13
bb13:
  %t62 = load i1, ptr %l42, !tbaa !21
  %t63 = xor i1 %t62, true
  store i1 %t63, ptr %l35, !tbaa !21
  br label %bb14
bb14:
  %t65 = load i1, ptr %l35, !tbaa !21
  br i1 %t65, label %bb15, label %bb16
bb15:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb16:
  br label %bb17
bb17:
  %t66 = load ptr, ptr %l0, !tbaa !29
  store ptr %t66, ptr %l44, !tbaa !29
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t68 = load i64, ptr %l1, !tbaa !24
  %t73 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t67, i64 %t68, { i64, [4 x i64] } %a3, i64 1)
  store %"compiler/eval:Ptr" %t73, ptr %l48
  br label %bb18
bb18:
  %t74 = load ptr, ptr %l44, !tbaa !29
  %t75 = load %"compiler/eval:Ptr", ptr %l48
  %t76 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t74, %"compiler/eval:Ptr" %t75)
  store %"compiler/eval:Ptr" %t76, ptr %l49
  br label %bb19
bb19:
  %t77 = load %"compiler/eval:Ptr", ptr %l49
  store %"compiler/eval:Ptr" %t77, ptr %l9
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 22
  %t81 = load i1, ptr %t80, !tbaa !21
  br i1 %t81, label %bb20, label %bb21
bb20:
  store i1 true, ptr %l52, !tbaa !21
  br label %bb22
bb21:
  %t83 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 0
  %t84 = load i64, ptr %t83, !tbaa !24
  %t86 = icmp eq i64 %t84, 0
  store i1 %t86, ptr %l52, !tbaa !21
  br label %bb22
bb22:
  %t88 = load i1, ptr %l52, !tbaa !21
  br i1 %t88, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb24:
  br label %bb25
bb25:
  %t89 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %s0, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t89, ptr %l55
  br label %bb26
bb26:
  %t90 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l55
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t90, ptr %l10
  store i32 0, ptr %l11, !tbaa !23
  %t91 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 1
  %t92 = load i32, ptr %t91, !tbaa !23
  store i32 %t92, ptr %l12, !tbaa !23
  store i32 1, ptr %l13, !tbaa !23
  %t94 = load i32, ptr %l12, !tbaa !23
  %t95 = load i32, ptr %l11, !tbaa !23
  %t98 = icmp sgt i32 %t94, %t95
  br i1 %t98, label %bb27, label %bb28
bb27:
  %t100 = load i32, ptr %l13, !tbaa !23
  %t102 = icmp sgt i32 %t100, 0
  br i1 %t102, label %bb29, label %bb30
bb28:
  store i32 0, ptr %l60, !tbaa !23
  br label %bb32
bb29:
  %t104 = load i32, ptr %l12, !tbaa !23
  %t105 = load i32, ptr %l11, !tbaa !23
  %t108 = sub i32 %t104, %t105
  %t109 = load i32, ptr %l13, !tbaa !23
  %t112 = add i32 %t108, %t109
  %t114 = sub i32 %t112, 1
  %t115 = load i32, ptr %l13, !tbaa !23
  %t118 = sdiv i32 %t114, %t115
  store i32 %t118, ptr %l63, !tbaa !23
  br label %bb31
bb30:
  store i32 0, ptr %l63, !tbaa !23
  br label %bb31
bb31:
  %t120 = load i32, ptr %l63, !tbaa !23
  store i32 %t120, ptr %l60, !tbaa !23
  br label %bb32
bb32:
  %t121 = load i32, ptr %l60, !tbaa !23
  store i32 %t121, ptr %l14, !tbaa !23
  store i32 0, ptr %l15, !tbaa !23
  br label %bb33
bb33:
  %t122 = load i32, ptr %l15, !tbaa !23
  %t123 = load i32, ptr %l14, !tbaa !23
  %t126 = icmp slt i32 %t122, %t123
  %t128 = xor i1 %t126, true
  br i1 %t128, label %bb34, label %bb35
bb34:
  br label %bb48
bb35:
  br label %bb36
bb36:
  %t130 = load i32, ptr %l11, !tbaa !23
  %t131 = load i32, ptr %l15, !tbaa !23
  %t132 = load i32, ptr %l13, !tbaa !23
  %t135 = mul i32 %t131, %t132
  %t138 = add i32 %t130, %t135
  %t140 = load ptr, ptr %l0, !tbaa !29
  %t142 = getelementptr %"compiler/eval:Machine", ptr %t140, i32 0, i32 26
  %t143 = load { i64, ptr }, ptr %t142, !tbaa !27
  store { i64, ptr } %t143, ptr %l82, !tbaa !27
  %t144 = load i64, ptr %l2, !tbaa !24
  %t146 = getelementptr { i64, ptr }, ptr %l82, i32 0, i32 1
  %t147 = load ptr, ptr %t146, !tbaa !27
  %t148 = getelementptr %"compiler/eval:cfn", ptr %t147, i64 %t144
  %t149 = getelementptr %"compiler/eval:cfn", ptr %t148, i32 0, i32 4
  %t150 = load { i64, ptr }, ptr %t149, !tbaa !27
  store { i64, ptr } %t150, ptr %l84, !tbaa !27
  %t151 = getelementptr %"compiler/mir:Range", ptr %l5, i32 0, i32 0
  %t152 = load i32, ptr %t151, !tbaa !23
  %t154 = sext i32 %t152 to i64
  %t157 = sext i32 %t138 to i64
  %t160 = add i64 %t154, %t157
  %t162 = getelementptr { i64, ptr }, ptr %l84, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !27
  %t164 = getelementptr { i64, [4 x i64] }, ptr %t163, i64 %t160
  %t165 = load { i64, [4 x i64] }, ptr %t164
  store { i64, [4 x i64] } %t165, ptr %l17
  %t167 = load ptr, ptr %l0, !tbaa !29
  %t168 = load i64, ptr %l1, !tbaa !24
  %t169 = load { i64, [4 x i64] }, ptr %l17
  %t173 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenRefOp(ptr %v0, ptr %t167, i64 %t168, { i64, [4 x i64] } %t169)
  store i1 %t173, ptr %l94
  br label %bb37
bb37:
  %t174 = load i1, ptr %l94, !tbaa !21
  %t175 = xor i1 %t174, true
  br i1 %t175, label %bb38, label %bb39
bb38:
  br label %bb47
bb39:
  br label %bb40
bb40:
  %t177 = load ptr, ptr %l0, !tbaa !29
  store ptr %t177, ptr %l96, !tbaa !29
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l1, !tbaa !24
  %t180 = load { i64, [4 x i64] }, ptr %l17
  %t184 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t178, i64 %t179, { i64, [4 x i64] } %t180, i64 1)
  store %"compiler/eval:Ptr" %t184, ptr %l100
  br label %bb41
bb41:
  %t185 = load ptr, ptr %l96, !tbaa !29
  %t186 = load %"compiler/eval:Ptr", ptr %l100
  %t187 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t185, %"compiler/eval:Ptr" %t186)
  store %"compiler/eval:Ptr" %t187, ptr %l101
  br label %bb42
bb42:
  %t188 = load %"compiler/eval:Ptr", ptr %l101
  store %"compiler/eval:Ptr" %t188, ptr %l18
  %t189 = load ptr, ptr %l0, !tbaa !29
  %t191 = getelementptr %"compiler/eval:Machine", ptr %t189, i32 0, i32 22
  %t192 = load i1, ptr %t191, !tbaa !21
  br i1 %t192, label %bb43, label %bb44
bb43:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb44:
  br label %bb45
bb45:
  %t194 = load %"compiler/eval:Ptr", ptr %l18
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %s0, ptr %l10, %"compiler/eval:Ptr" %t194)
  br label %bb46
bb46:
  br label %bb47
bb47:
  %t197 = load i32, ptr %l15, !tbaa !23
  %t199 = add i32 %t197, 1
  store i32 %t199, ptr %l15, !tbaa !23
  br label %bb33
bb48:
  %t201 = load ptr, ptr %l0, !tbaa !29
  %t203 = getelementptr %"compiler/eval:Machine", ptr %t201, i32 0, i32 8
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eClear_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t203)
  br label %bb49
bb49:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 8
  %t208 = load %"compiler/eval:Ptr", ptr %l9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t207, %"compiler/eval:Ptr" %t208)
  br label %bb50
bb50:
  br label %bb51
bb51:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr %"compiler/eval:Machine", ptr %t211, i32 0, i32 8
  %t215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t213)
  store i64 %t215, ptr %l115
  br label %bb52
bb52:
  %t216 = load i64, ptr %l115, !tbaa !24
  %t217 = icmp sgt i64 %t216, 0
  %t219 = xor i1 %t217, true
  br i1 %t219, label %bb53, label %bb54
bb53:
  br label %bb87
bb54:
  br label %bb55
bb55:
  %t221 = load ptr, ptr %l0, !tbaa !29
  %t223 = getelementptr %"compiler/eval:Machine", ptr %t221, i32 0, i32 8
  %t225 = call { i32, %"compiler/eval:Ptr" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePop_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %t223)
  %t226 = extractvalue { i32, %"compiler/eval:Ptr" } %t225, 1
  %t227 = extractvalue { i32, %"compiler/eval:Ptr" } %t225, 0
  store i32 %t227, ptr %l122
  %t228 = icmp ne i32 %t227, 0
  br i1 %t228, label %bb57, label %ok.229, !prof !99
ok.229:
  store %"compiler/eval:Ptr" %t226, ptr %l121
  br label %bb56
bb56:
  %t230 = load %"compiler/eval:Ptr", ptr %l121
  store %"compiler/eval:Ptr" %t230, ptr %l118
  br label %bb64
bb57:
  %t231 = load i32, ptr %l122, !tbaa !23
  %t232 = icmp eq i32 %t231, 65536
  br i1 %t232, label %bb58, label %bb59
bb58:
  call void @__olang_bang_failed_plain(ptr @olang_loc_bbf1272d2dbbb844_d68a0a76eda92190)
  unreachable
bb59:
  %t234 = load i32, ptr %l122, !tbaa !23
  %t235 = icmp eq i32 %t234, 65537
  br i1 %t235, label %bb60, label %bb61
bb60:
  call void @__olang_bang_failed_plain(ptr @olang_loc_68f2e3273b0c13ff_def2be11df69fc2b)
  unreachable
bb61:
  %t237 = load i32, ptr %l122, !tbaa !23
  %t238 = icmp eq i32 %t237, 65538
  br i1 %t238, label %bb62, label %bb63
bb62:
  call void @__olang_bang_failed_plain(ptr @olang_loc_3d1de3bd3de1c4f9_119b8890932091e5)
  unreachable
bb63:
  call void @__olang_bang_failed_plain(ptr @olang_loc_1fd2133d584b20bd_c0a743cadb5dd151)
  unreachable
bb64:
  %t240 = load %"compiler/eval:Ptr", ptr %l118
  store %"compiler/eval:Ptr" %t240, ptr %l19
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t242 = load %"compiler/eval:Ptr", ptr %l19
  %t245 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenLive(ptr %v0, ptr %t241, %"compiler/eval:Ptr" %t242)
  store i1 %t245, ptr %l128
  br label %bb65
bb65:
  %t246 = load i1, ptr %l128, !tbaa !21
  %t247 = xor i1 %t246, true
  br i1 %t247, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l130, !tbaa !21
  br label %bb69
bb67:
  %t249 = load ptr, ptr %l0, !tbaa !29
  %t250 = load %"compiler/eval:Ptr", ptr %l19
  %t253 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %t249, %"compiler/eval:Ptr" %t250)
  store i64 %t253, ptr %l133
  br label %bb68
bb68:
  %t254 = load i64, ptr %l133, !tbaa !24
  %t255 = icmp ne i64 %t254, 0
  store i1 %t255, ptr %l130, !tbaa !21
  br label %bb69
bb69:
  %t257 = load i1, ptr %l130, !tbaa !21
  br i1 %t257, label %bb70, label %bb71
bb70:
  store i1 true, ptr %l135, !tbaa !21
  br label %bb73
bb71:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t259 = load %"compiler/eval:Ptr", ptr %l19
  %t263 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekept(ptr %v0, ptr %s0, ptr %t258, %"compiler/eval:Ptr" %t259, ptr %l10)
  store i1 %t263, ptr %l139
  br label %bb72
bb72:
  %t264 = load i1, ptr %l139, !tbaa !21
  store i1 %t264, ptr %l135, !tbaa !21
  br label %bb73
bb73:
  %t265 = load i1, ptr %l135, !tbaa !21
  br i1 %t265, label %bb74, label %bb75
bb74:
  br label %bb86
bb75:
  br label %bb76
bb76:
  %t266 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t267 = load i64, ptr %t266, !tbaa !24
  %t268 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t271 = and i64 %t267, %t268
  store i64 %t271, ptr %l20, !tbaa !24
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t274 = load %"compiler/eval:Ptr", ptr %l19
  %t275 = load ptr, ptr %l0, !tbaa !29
  %t277 = getelementptr %"compiler/eval:Machine", ptr %t275, i32 0, i32 49
  %t278 = load { i64, ptr }, ptr %t277, !tbaa !27
  store { i64, ptr } %t278, ptr %l146, !tbaa !27
  %t279 = load i64, ptr %l20, !tbaa !24
  %t281 = getelementptr { i64, ptr }, ptr %l146, i32 0, i32 1
  %t282 = load ptr, ptr %t281, !tbaa !27
  %t283 = getelementptr %"compiler/eval:alloc", ptr %t282, i64 %t279
  %t284 = getelementptr %"compiler/eval:alloc", ptr %t283, i32 0, i32 11
  %t285 = load i32, ptr %t284, !tbaa !23
  %t286 = load ptr, ptr %l0, !tbaa !29
  %t287 = getelementptr { ptr, ptr }, ptr null, i32 1
  %t288 = ptrtoint ptr %t287 to i64
  %t289 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 %t288, i64 8)
  %t290 = getelementptr { ptr, ptr }, ptr %t289, i32 0, i32 0
  store ptr %t286, ptr %t290, !tbaa !28
  call void @__olang_scope_escape(ptr %v0)
  %t292 = getelementptr { ptr, ptr }, ptr %t289, i32 0, i32 1
  store ptr %v0, ptr %t292, !tbaa !28
  %t293 = insertvalue { ptr, ptr } undef, ptr @olang_lambda_7, 0
  %t294 = insertvalue { ptr, ptr } %t293, ptr %t289, 1
  %t299 = extractvalue { ptr, ptr } %t294, 0
  %t300 = extractvalue { ptr, ptr } %t294, 1
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2egenWalk(ptr %v0, ptr %v0, ptr %t273, %"compiler/eval:Ptr" %t274, i32 %t285, i1 false, ptr %t299, ptr %t300)
  br label %bb77
bb77:
  %t301 = load ptr, ptr %l0, !tbaa !29
  %t303 = getelementptr %"compiler/eval:Machine", ptr %t301, i32 0, i32 22
  %t304 = load i1, ptr %t303, !tbaa !21
  br i1 %t304, label %bb78, label %bb79
bb78:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb79:
  br label %bb80
bb80:
  %t306 = load ptr, ptr %l0, !tbaa !29
  %t308 = getelementptr %"compiler/eval:Machine", ptr %t306, i32 0, i32 16
  %t309 = load i1, ptr %t308, !tbaa !21
  br i1 %t309, label %bb81, label %bb82
bb81:
  %t311 = load ptr, ptr %l0, !tbaa !29
  %t313 = getelementptr %"compiler/eval:Machine", ptr %t311, i32 0, i32 17
  %t314 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t315 = load i64, ptr %t314, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t313, i64 %t315, i1 true)
  br label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb84
bb84:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load i64, ptr %l20, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t318, i64 %t319)
  br label %bb85
bb85:
  br label %bb86
bb86:
  br label %bb51
bb87:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ertArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l6 = alloca i32
  %l10 = alloca i32
  %l13 = alloca i1
  %l17 = alloca i32
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l6
  br label %bb1
bb1:
  %t9 = load i32, ptr %l6, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 0
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l2, !tbaa !23
  %t17 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t13, i32 %t14)
  store i32 %t17, ptr %l10
  br label %bb2
bb2:
  %t18 = load i32, ptr %l10, !range !{i32 0, i32 33}
  %t20 = trunc i64 19 to i32
  %t21 = icmp eq i32 %t18, %t20
  br i1 %t21, label %bb3, label %bb4
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/eval:Machine", ptr %t23, i32 0, i32 0
  %t26 = load ptr, ptr %t25, !tbaa !29
  %t27 = load i32, ptr %l2, !tbaa !23
  %t30 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t26, i32 %t27)
  store i32 %t30, ptr %l17
  br label %bb5
bb4:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb6
bb5:
  %t31 = load i32, ptr %l17, !tbaa !23
  %t32 = icmp eq i32 %t31, 0
  store i1 %t32, ptr %l13, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l13, !tbaa !21
  store i1 %t34, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2esaturate(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, %"compiler/mir:Range" %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca %"compiler/mir:Range"
  %l6 = alloca i64
  %l7 = alloca i1
  %l8 = alloca { i64, i64 }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, i64 }
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca { i64, i64 }
  %l17 = alloca { i64, i64 }
  %l18 = alloca i64
  %l19 = alloca i64
  %l20 = alloca { i64, i64 }
  %l22 = alloca i64
  %l23 = alloca i32
  %l24 = alloca { i64, i64 }
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca { i64, i64 }
  %l28 = alloca { i64, i64 }
  %l32 = alloca i64
  %l34 = alloca ptr
  %l38 = alloca i32
  %l39 = alloca i1
  %l41 = alloca ptr
  %l42 = alloca i64
  %l46 = alloca { i64, [4 x i64] }
  %l47 = alloca { i64, i64 }
  %l50 = alloca ptr
  %l51 = alloca i64
  %l55 = alloca { i64, [4 x i64] }
  %l56 = alloca { i64, i64 }
  %l65 = alloca i1
  %l68 = alloca i1
  %l75 = alloca { i64, i64 }
  %l82 = alloca { i64, i64 }
  %l89 = alloca { i64, i64 }
  %l95 = alloca i1
  %l104 = alloca ptr
  %l105 = alloca %"compiler/eval:Ptr"
  %l106 = alloca i32
  %l107 = alloca i64
  %l108 = alloca i1
  %l111 = alloca i1
  %l114 = alloca i32
  %l127 = alloca i1
  %l133 = alloca { i64, i64 }
  %l142 = alloca { i64, i64 }
  %l151 = alloca { i64, i64 }
  %l159 = alloca i1
  %l164 = alloca i1
  %l170 = alloca i1
  %l175 = alloca i1
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store %"compiler/mir:Range" %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l4, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l32
  br label %bb1
bb1:
  %t6 = load i64, ptr %l32, !tbaa !24
  store i64 %t6, ptr %l6, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/eval:Machine", ptr %t7, i32 0, i32 0
  %t10 = load ptr, ptr %t9, !tbaa !29
  store ptr %t10, ptr %l34, !tbaa !29
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 0
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t15 = load i32, ptr %l4, !tbaa !23
  %t18 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t14, i32 %t15)
  store i32 %t18, ptr %l38
  br label %bb2
bb2:
  %t19 = load ptr, ptr %l34, !tbaa !29
  %t20 = load i32, ptr %l38, !tbaa !23
  %t21 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %t19, i32 %t20)
  store i1 %t21, ptr %l39
  br label %bb3
bb3:
  %t22 = load i1, ptr %l39, !tbaa !21
  %t23 = xor i1 %t22, true
  store i1 %t23, ptr %l7, !tbaa !21
  %t25 = load ptr, ptr %l0, !tbaa !29
  store ptr %t25, ptr %l41, !tbaa !29
  %t26 = load i64, ptr %l1, !tbaa !24
  store i64 %t26, ptr %l42, !tbaa !24
  %t27 = load ptr, ptr %l0, !tbaa !29
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load %"compiler/mir:Range", ptr %l5
  %t33 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t27, i64 %t28, %"compiler/mir:Range" %t29, i64 0)
  store { i64, [4 x i64] } %t33, ptr %l46
  br label %bb4
bb4:
  %t34 = load ptr, ptr %l41, !tbaa !29
  %t35 = load i64, ptr %l42, !tbaa !24
  %t36 = load { i64, [4 x i64] }, ptr %l46
  %t37 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t34, i64 %t35, { i64, [4 x i64] } %t36)
  store { i64, i64 } %t37, ptr %l47
  br label %bb5
bb5:
  %t38 = load { i64, i64 }, ptr %l47
  store { i64, i64 } %t38, ptr %l8
  %t39 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t40 = load i64, ptr %t39, !tbaa !24
  store i64 %t40, ptr %l9, !tbaa !24
  %t42 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t43 = load i64, ptr %t42, !tbaa !24
  store i64 %t43, ptr %l10, !tbaa !24
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l50, !tbaa !29
  %t46 = load i64, ptr %l1, !tbaa !24
  store i64 %t46, ptr %l51, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t48 = load i64, ptr %l1, !tbaa !24
  %t49 = load %"compiler/mir:Range", ptr %l5
  %t53 = call { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %t47, i64 %t48, %"compiler/mir:Range" %t49, i64 1)
  store { i64, [4 x i64] } %t53, ptr %l55
  br label %bb6
bb6:
  %t54 = load ptr, ptr %l50, !tbaa !29
  %t55 = load i64, ptr %l51, !tbaa !24
  %t56 = load { i64, [4 x i64] }, ptr %l55
  %t57 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t54, i64 %t55, { i64, [4 x i64] } %t56)
  store { i64, i64 } %t57, ptr %l56
  br label %bb7
bb7:
  %t58 = load { i64, i64 }, ptr %l56
  store { i64, i64 } %t58, ptr %l11
  %t59 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 0
  %t60 = load i64, ptr %t59, !tbaa !24
  store i64 %t60, ptr %l12, !tbaa !24
  %t62 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t63 = load i64, ptr %t62, !tbaa !24
  store i64 %t63, ptr %l13, !tbaa !24
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/eval:Machine", ptr %t65, i32 0, i32 22
  %t68 = load i1, ptr %t67, !tbaa !21
  br i1 %t68, label %bb8, label %bb9
bb8:
  br label %ret
bb9:
  br label %bb10
bb10:
  %t70 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t72 = trunc i64 50 to i32
  %t73 = icmp eq i32 %t70, %t72
  br i1 %t73, label %bb11, label %bb12
bb11:
  %t75 = load i64, ptr %l13, !tbaa !24
  %t77 = icmp ne i64 %t75, 0
  br i1 %t77, label %bb13, label %bb14
bb12:
  br label %bb35
bb13:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb16
bb14:
  %t79 = load i64, ptr %l12, !tbaa !24
  %t80 = load i64, ptr %l6, !tbaa !24
  %t83 = call i1 @compiler_2feval_2eult64(i64 %t79, i64 %t80)
  store i1 %t83, ptr %l68
  br label %bb15
bb15:
  %t84 = load i1, ptr %l68, !tbaa !21
  %t85 = xor i1 %t84, true
  store i1 %t85, ptr %l65, !tbaa !21
  br label %bb16
bb16:
  %t87 = load i1, ptr %l65, !tbaa !21
  br i1 %t87, label %bb17, label %bb18
bb17:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t89 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyShift, !tbaa !27
  %t90 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t90, ptr %t88, { i64, ptr } %t89)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %ret
bb20:
  %t93 = load i64, ptr %l9, !tbaa !24
  %t94 = load i64, ptr %l10, !tbaa !24
  %t95 = load i64, ptr %l12, !tbaa !24
  %t99 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t93, i64 %t94, i64 %t95)
  store { i64, i64 } %t99, ptr %l75
  br label %bb21
bb21:
  %t100 = load { i64, i64 }, ptr %l75
  store { i64, i64 } %t100, ptr %l14
  %t101 = getelementptr { i64, i64 }, ptr %l14, i32 0, i32 0
  %t102 = load i64, ptr %t101, !tbaa !24
  %t104 = getelementptr { i64, i64 }, ptr %l14, i32 0, i32 1
  %t105 = load i64, ptr %t104, !tbaa !24
  %t109 = load i64, ptr %l6, !tbaa !24
  %t110 = load i1, ptr %l7, !tbaa !21
  %t115 = call { i64, i64 } @compiler_2feval_2eextend128(i64 %t102, i64 %t105, i64 %t109, i1 %t110)
  store { i64, i64 } %t115, ptr %l82
  br label %bb22
bb22:
  %t116 = load { i64, i64 }, ptr %l82
  store { i64, i64 } %t116, ptr %l17
  %t117 = getelementptr { i64, i64 }, ptr %l17, i32 0, i32 0
  %t118 = load i64, ptr %t117, !tbaa !24
  store i64 %t118, ptr %l18, !tbaa !24
  %t120 = getelementptr { i64, i64 }, ptr %l17, i32 0, i32 1
  %t121 = load i64, ptr %t120, !tbaa !24
  store i64 %t121, ptr %l19, !tbaa !24
  %t123 = load i64, ptr %l18, !tbaa !24
  %t124 = load i64, ptr %l19, !tbaa !24
  %t125 = load i64, ptr %l12, !tbaa !24
  %t126 = load i1, ptr %l7, !tbaa !21
  %t131 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t123, i64 %t124, i64 %t125, i1 %t126)
  store { i64, i64 } %t131, ptr %l89
  br label %bb23
bb23:
  %t132 = load { i64, i64 }, ptr %l89
  store { i64, i64 } %t132, ptr %l20
  %t133 = getelementptr { i64, i64 }, ptr %l20, i32 0, i32 0
  %t134 = load i64, ptr %t133, !tbaa !24
  %t136 = getelementptr { i64, i64 }, ptr %l20, i32 0, i32 1
  %t137 = load i64, ptr %t136, !tbaa !24
  store i64 %t137, ptr %l22, !tbaa !24
  %t140 = load i64, ptr %l9, !tbaa !24
  %t143 = icmp eq i64 %t134, %t140
  br i1 %t143, label %bb24, label %bb25
bb24:
  %t145 = load i64, ptr %l22, !tbaa !24
  %t146 = load i64, ptr %l10, !tbaa !24
  %t149 = icmp eq i64 %t145, %t146
  store i1 %t149, ptr %l95, !tbaa !21
  br label %bb26
bb25:
  store i1 false, ptr %l95, !tbaa !21
  br label %bb26
bb26:
  %t151 = load i1, ptr %l95, !tbaa !21
  br i1 %t151, label %bb27, label %bb28
bb27:
  %t152 = load ptr, ptr %l0, !tbaa !29
  %t153 = load %"compiler/eval:Ptr", ptr %l2
  %t154 = load i32, ptr %l4, !tbaa !23
  %t155 = load i64, ptr %l18, !tbaa !24
  %t156 = load i64, ptr %l19, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t152, %"compiler/eval:Ptr" %t153, i32 %t154, i64 %t155, i64 %t156)
  br label %bb29
bb28:
  br label %bb30
bb29:
  br label %ret
bb30:
  %t162 = load ptr, ptr %l0, !tbaa !29
  store ptr %t162, ptr %l104, !tbaa !29
  %t163 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t163, ptr %l105
  %t164 = load i32, ptr %l4, !tbaa !23
  store i32 %t164, ptr %l106, !tbaa !23
  %t165 = load i64, ptr %l6, !tbaa !24
  store i64 %t165, ptr %l107, !tbaa !24
  %t166 = load i1, ptr %l7, !tbaa !21
  store i1 %t166, ptr %l108, !tbaa !21
  %t167 = load i1, ptr %l7, !tbaa !21
  %t169 = xor i1 %t167, true
  br i1 %t169, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l111, !tbaa !21
  br label %bb33
bb32:
  %t171 = load i64, ptr %l10, !tbaa !24
  %t173 = icmp sge i64 %t171, 0
  store i1 %t173, ptr %l111, !tbaa !21
  br label %bb33
bb33:
  %t175 = load ptr, ptr %l104, !tbaa !29
  %t176 = load %"compiler/eval:Ptr", ptr %l105
  %t177 = load i32, ptr %l106, !tbaa !23
  %t178 = load i64, ptr %l107, !tbaa !24
  %t179 = load i1, ptr %l108, !tbaa !21
  %t180 = load i1, ptr %l111, !tbaa !21
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputLimit(ptr %v0, ptr %t175, %"compiler/eval:Ptr" %t176, i32 %t177, i64 %t178, i1 %t179, i1 %t180)
  br label %bb34
bb34:
  br label %ret
bb35:
  %t181 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t183 = trunc i64 47 to i32
  %t184 = icmp eq i32 %t181, %t183
  br i1 %t184, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i32 3, ptr %l114
  br label %bb48
bb39:
  %t187 = load i32, ptr %l3, !range !{i32 0, i32 51}
  %t189 = trunc i64 48 to i32
  %t190 = icmp eq i32 %t187, %t189
  br i1 %t190, label %bb40, label %bb41
bb40:
  br label %bb42
bb41:
  br label %bb43
bb42:
  store i32 4, ptr %l114
  br label %bb48
bb43:
  br i1 true, label %bb44, label %bb45
bb44:
  br label %bb46
bb45:
  br label %bb47
bb46:
  store i32 5, ptr %l114
  br label %bb48
bb47:
  call void @__olang_check_failed(ptr @olang_loc_29dd04e5370cce06_39cab22b02d0561a)
  unreachable
bb48:
  %t194 = load i32, ptr %l114, !range !{i32 0, i32 51}
  store i32 %t194, ptr %l23
  %t195 = load ptr, ptr %l0, !tbaa !29
  %t196 = load i64, ptr %l1, !tbaa !24
  %t197 = load i32, ptr %l23, !range !{i32 0, i32 51}
  %t198 = load i32, ptr %l4, !tbaa !23
  %t199 = load %"compiler/mir:Range", ptr %l5
  %t205 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %t195, i64 %t196, i32 %t197, i32 %t198, %"compiler/mir:Range" %t199)
  store i1 %t205, ptr %l127
  br label %bb49
bb49:
  %t206 = load i1, ptr %l127, !tbaa !21
  %t207 = xor i1 %t206, true
  br i1 %t207, label %bb50, label %bb51
bb50:
  %t209 = load i64, ptr %l9, !tbaa !24
  %t210 = load i64, ptr %l10, !tbaa !24
  %t211 = load i64, ptr %l12, !tbaa !24
  %t212 = load i64, ptr %l13, !tbaa !24
  %t217 = call { i64, i64 } @compiler_2feval_2emul128(i64 %t209, i64 %t210, i64 %t211, i64 %t212)
  store { i64, i64 } %t217, ptr %l133
  br label %bb52
bb51:
  br label %bb62
bb52:
  %t218 = load { i64, i64 }, ptr %l133
  store { i64, i64 } %t218, ptr %l24
  %t219 = getelementptr { i64, i64 }, ptr %l24, i32 0, i32 0
  %t220 = load i64, ptr %t219, !tbaa !24
  store i64 %t220, ptr %l25, !tbaa !24
  %t222 = getelementptr { i64, i64 }, ptr %l24, i32 0, i32 1
  %t223 = load i64, ptr %t222, !tbaa !24
  store i64 %t223, ptr %l26, !tbaa !24
  %t225 = load i32, ptr %l23, !range !{i32 0, i32 51}
  %t227 = trunc i64 3 to i32
  %t228 = icmp eq i32 %t225, %t227
  br i1 %t228, label %bb53, label %bb54
bb53:
  %t230 = load i64, ptr %l9, !tbaa !24
  %t231 = load i64, ptr %l10, !tbaa !24
  %t232 = load i64, ptr %l12, !tbaa !24
  %t233 = load i64, ptr %l13, !tbaa !24
  %t238 = call { i64, i64 } @compiler_2feval_2eadd128(i64 %t230, i64 %t231, i64 %t232, i64 %t233)
  store { i64, i64 } %t238, ptr %l142
  br label %bb55
bb54:
  br label %bb56
bb55:
  %t239 = load { i64, i64 }, ptr %l142
  store { i64, i64 } %t239, ptr %l27
  %t240 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 0
  %t241 = load i64, ptr %t240, !tbaa !24
  store i64 %t241, ptr %l25, !tbaa !24
  %t243 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 1
  %t244 = load i64, ptr %t243, !tbaa !24
  store i64 %t244, ptr %l26, !tbaa !24
  br label %bb56
bb56:
  %t246 = load i32, ptr %l23, !range !{i32 0, i32 51}
  %t248 = trunc i64 4 to i32
  %t249 = icmp eq i32 %t246, %t248
  br i1 %t249, label %bb57, label %bb58
bb57:
  %t251 = load i64, ptr %l9, !tbaa !24
  %t252 = load i64, ptr %l10, !tbaa !24
  %t253 = load i64, ptr %l12, !tbaa !24
  %t254 = load i64, ptr %l13, !tbaa !24
  %t259 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t251, i64 %t252, i64 %t253, i64 %t254)
  store { i64, i64 } %t259, ptr %l151
  br label %bb59
bb58:
  br label %bb60
bb59:
  %t260 = load { i64, i64 }, ptr %l151
  store { i64, i64 } %t260, ptr %l28
  %t261 = getelementptr { i64, i64 }, ptr %l28, i32 0, i32 0
  %t262 = load i64, ptr %t261, !tbaa !24
  store i64 %t262, ptr %l25, !tbaa !24
  %t264 = getelementptr { i64, i64 }, ptr %l28, i32 0, i32 1
  %t265 = load i64, ptr %t264, !tbaa !24
  store i64 %t265, ptr %l26, !tbaa !24
  br label %bb60
bb60:
  %t267 = load ptr, ptr %l0, !tbaa !29
  %t268 = load %"compiler/eval:Ptr", ptr %l2
  %t269 = load i32, ptr %l4, !tbaa !23
  %t270 = load i64, ptr %l25, !tbaa !24
  %t271 = load i64, ptr %l26, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %t267, %"compiler/eval:Ptr" %t268, i32 %t269, i64 %t270, i64 %t271)
  br label %bb61
bb61:
  br label %ret
bb62:
  %t277 = load i32, ptr %l23, !range !{i32 0, i32 51}
  %t279 = trunc i64 3 to i32
  %t280 = icmp eq i32 %t277, %t279
  br i1 %t280, label %bb63, label %bb64
bb63:
  br label %bb65
bb64:
  br label %bb69
bb65:
  %t282 = load i1, ptr %l7, !tbaa !21
  %t284 = xor i1 %t282, true
  br i1 %t284, label %bb66, label %bb67
bb66:
  store i1 true, ptr %l164, !tbaa !21
  br label %bb68
bb67:
  %t286 = load i64, ptr %l13, !tbaa !24
  %t288 = icmp sge i64 %t286, 0
  store i1 %t288, ptr %l164, !tbaa !21
  br label %bb68
bb68:
  %t290 = load i1, ptr %l164, !tbaa !21
  store i1 %t290, ptr %l159, !tbaa !21
  br label %bb84
bb69:
  %t291 = load i32, ptr %l23, !range !{i32 0, i32 51}
  %t293 = trunc i64 4 to i32
  %t294 = icmp eq i32 %t291, %t293
  br i1 %t294, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb76
bb72:
  %t296 = load i1, ptr %l7, !tbaa !21
  br i1 %t296, label %bb73, label %bb74
bb73:
  %t298 = load i64, ptr %l13, !tbaa !24
  %t300 = icmp slt i64 %t298, 0
  store i1 %t300, ptr %l170, !tbaa !21
  br label %bb75
bb74:
  store i1 false, ptr %l170, !tbaa !21
  br label %bb75
bb75:
  %t302 = load i1, ptr %l170, !tbaa !21
  store i1 %t302, ptr %l159, !tbaa !21
  br label %bb84
bb76:
  br i1 true, label %bb77, label %bb78
bb77:
  br label %bb79
bb78:
  br label %bb83
bb79:
  %t303 = load i1, ptr %l7, !tbaa !21
  %t305 = xor i1 %t303, true
  br i1 %t305, label %bb80, label %bb81
bb80:
  store i1 true, ptr %l175, !tbaa !21
  br label %bb82
bb81:
  %t307 = load i64, ptr %l10, !tbaa !24
  %t309 = icmp slt i64 %t307, 0
  %t310 = load i64, ptr %l13, !tbaa !24
  %t312 = icmp slt i64 %t310, 0
  %t315 = icmp eq i1 %t309, %t312
  store i1 %t315, ptr %l175, !tbaa !21
  br label %bb82
bb82:
  %t317 = load i1, ptr %l175, !tbaa !21
  store i1 %t317, ptr %l159, !tbaa !21
  br label %bb84
bb83:
  call void @__olang_check_failed(ptr @olang_loc_de325288a34cd8e7_764dd51059cd701b)
  unreachable
bb84:
  %t318 = load i1, ptr %l159, !tbaa !21
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t320 = load %"compiler/eval:Ptr", ptr %l2
  %t321 = load i32, ptr %l4, !tbaa !23
  %t322 = load i64, ptr %l6, !tbaa !24
  %t323 = load i1, ptr %l7, !tbaa !21
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputLimit(ptr %v0, ptr %t319, %"compiler/eval:Ptr" %t320, i32 %t321, i64 %t322, i1 %t323, i1 %t318)
  br label %bb85
bb85:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2escratchFor(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca %"compiler/eval:Ptr"
  %l7 = alloca i64
  %l11 = alloca { i64, ptr }
  %l16 = alloca { i64, ptr }
  %l24 = alloca %"compiler/eval:Ptr"
  %l35 = alloca %"compiler/eval:Ptr"
  %l40 = alloca { i64, ptr }
  %l49 = alloca { i64, ptr }
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 71
  %t8 = load i64, ptr %t7, !tbaa !24
  store i64 %t8, ptr %l7, !tbaa !24
  br label %bb3
bb2:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 72
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  store { i64, ptr } %t13, ptr %l11, !tbaa !27
  %t14 = load i64, ptr %l1, !tbaa !24
  %t16 = sub i64 %t14, 1
  %t18 = getelementptr { i64, ptr }, ptr %l11, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i64, ptr %t19, i64 %t16
  %t21 = load i64, ptr %t20, !tbaa !34
  store i64 %t21, ptr %l7, !tbaa !24
  br label %bb3
bb3:
  %t23 = load i64, ptr %l7, !tbaa !24
  store i64 %t23, ptr %l3, !tbaa !24
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/eval:Machine", ptr %t24, i32 0, i32 49
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  store { i64, ptr } %t27, ptr %l16, !tbaa !27
  %t28 = load i64, ptr %l3, !tbaa !24
  %t29 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t32 = and i64 %t28, %t29
  %t34 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t35 = load ptr, ptr %t34, !tbaa !27
  %t36 = getelementptr %"compiler/eval:alloc", ptr %t35, i64 %t32
  %t37 = getelementptr %"compiler/eval:alloc", ptr %t36, i32 0, i32 1
  %t38 = load i64, ptr %t37, !tbaa !24
  %t39 = load i64, ptr %l2, !tbaa !24
  %t42 = icmp sge i64 %t38, %t39
  br i1 %t42, label %bb4, label %bb5
bb4:
  store %olang.scope zeroinitializer, ptr %s1
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t44, i64 0)
  store %"compiler/eval:Ptr" %t46, ptr %l24
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s1)
  %t47 = load %"compiler/eval:Ptr", ptr %l24
  store %"compiler/eval:Ptr" %t47, ptr %rv
  br label %ret
bb7:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t49 = load i64, ptr %l3, !tbaa !24
  %t50 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t53 = and i64 %t49, %t50
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %t48, i64 %t53)
  br label %bb8
bb8:
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load i64, ptr %l2, !tbaa !24
  %t59 = mul i64 %t57, 2
  %t60 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/eval:Machine", ptr %t61, i32 0, i32 70
  %t64 = load i64, ptr %t63, !tbaa !24
  %t69 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t56, i64 %t59, i64 %t60, i64 %t64)
  store %"compiler/eval:Ptr" %t69, ptr %l35
  br label %bb9
bb9:
  %t70 = load %"compiler/eval:Ptr", ptr %l35
  store %"compiler/eval:Ptr" %t70, ptr %l4
  %t71 = load ptr, ptr %l0, !tbaa !29
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 22
  %t74 = load i1, ptr %t73, !tbaa !21
  br i1 %t74, label %bb10, label %bb11
bb10:
  %t76 = load %"compiler/eval:Ptr", ptr @G_2ecompiler_2feval_2eNullPtr
  store %"compiler/eval:Ptr" %t76, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 49
  %t81 = load { i64, ptr }, ptr %t80, !tbaa !27
  store { i64, ptr } %t81, ptr %l40, !tbaa !27
  %t82 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t83 = load i64, ptr %t82, !tbaa !24
  %t84 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t87 = and i64 %t83, %t84
  %t89 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t90 = load ptr, ptr %t89, !tbaa !27
  %t91 = getelementptr %"compiler/eval:alloc", ptr %t90, i64 %t87
  %t92 = getelementptr %"compiler/eval:alloc", ptr %t91, i32 0, i32 8
  store i64 -1, ptr %t92, !tbaa !24
  %t93 = load i64, ptr %l1, !tbaa !24
  %t95 = icmp eq i64 %t93, 0
  br i1 %t95, label %bb13, label %bb14
bb13:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t99 = load i64, ptr %t98, !tbaa !24
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t97, i32 0, i32 71
  store i64 %t99, ptr %t102, !tbaa !24
  br label %bb15
bb14:
  %t103 = load ptr, ptr %l0, !tbaa !29
  %t105 = getelementptr %"compiler/eval:Machine", ptr %t103, i32 0, i32 72
  %t106 = load { i64, ptr }, ptr %t105, !tbaa !27
  store { i64, ptr } %t106, ptr %l49, !tbaa !27
  %t107 = load i64, ptr %l1, !tbaa !24
  %t109 = sub i64 %t107, 1
  %t110 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t111 = load i64, ptr %t110, !tbaa !24
  %t114 = getelementptr { i64, ptr }, ptr %l49, i32 0, i32 1
  %t115 = load ptr, ptr %t114, !tbaa !27
  %t116 = getelementptr i64, ptr %t115, i64 %t109
  store i64 %t111, ptr %t116, !tbaa !34
  br label %bb15
bb15:
  %t117 = load %"compiler/eval:Ptr", ptr %l4
  store %"compiler/eval:Ptr" %t117, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l11 = alloca i1
  %l13 = alloca { i64, ptr }
  %l18 = alloca { i64, ptr }
  %l24 = alloca i64
  %l28 = alloca i1
  %l31 = alloca i1
  %l33 = alloca i64
  %l37 = alloca i64
  %l40 = alloca i1
  %l42 = alloca { i64, ptr }
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
  %t8 = getelementptr %"compiler/eval:Machine", ptr %t6, i32 0, i32 27
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  %t11 = extractvalue { i64, ptr } %t9, 0
  %t14 = icmp slt i64 %t5, %t11
  br i1 %t14, label %bb1, label %bb2
bb1:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t18 = getelementptr %"compiler/eval:Machine", ptr %t16, i32 0, i32 27
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
  %t32 = getelementptr %"compiler/eval:Machine", ptr %t30, i32 0, i32 27
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
  %t41 = load i32, ptr %l1, !tbaa !23
  %t42 = load i32, ptr @G_2ecompiler_2ftypes_2eNullT, !tbaa !23
  %t45 = icmp eq i32 %t41, %t42
  br i1 %t45, label %bb7, label %bb8
bb7:
  store i64 8, ptr %l24, !tbaa !24
  br label %bb17
bb8:
  %t47 = load i32, ptr %l1, !tbaa !23
  %t48 = load i32, ptr @G_2ecompiler_2ftypes_2eVoidT, !tbaa !23
  %t51 = icmp eq i32 %t47, %t48
  br i1 %t51, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l28, !tbaa !21
  br label %bb12
bb10:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load i32, ptr %l1, !tbaa !23
  %t57 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %t53, i32 %t54)
  store i1 %t57, ptr %l31
  br label %bb11
bb11:
  %t58 = load i1, ptr %l31, !tbaa !21
  %t59 = xor i1 %t58, true
  store i1 %t59, ptr %l28, !tbaa !21
  br label %bb12
bb12:
  %t61 = load i1, ptr %l28, !tbaa !21
  br i1 %t61, label %bb13, label %bb14
bb13:
  store i64 0, ptr %l33, !tbaa !24
  br label %bb16
bb14:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 0
  %t65 = load ptr, ptr %t64, !tbaa !29
  %t66 = load i32, ptr %l1, !tbaa !23
  %t69 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %t65, i32 %t66)
  store i64 %t69, ptr %l37
  br label %bb15
bb15:
  %t70 = load i64, ptr %l37, !tbaa !24
  store i64 %t70, ptr %l33, !tbaa !24
  br label %bb16
bb16:
  %t71 = load i64, ptr %l33, !tbaa !24
  store i64 %t71, ptr %l24, !tbaa !24
  br label %bb17
bb17:
  %t72 = load i64, ptr %l24, !tbaa !24
  store i64 %t72, ptr %l3, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i32, ptr %l1, !tbaa !23
  %t77 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %t73, i32 %t74)
  store i1 %t77, ptr %l40
  br label %bb18
bb18:
  %t78 = load i1, ptr %l40, !tbaa !21
  br i1 %t78, label %bb19, label %bb20
bb19:
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Machine", ptr %t79, i32 0, i32 27
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l42, !tbaa !27
  %t83 = load i64, ptr %l2, !tbaa !24
  %t84 = load i64, ptr %l3, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr i64, ptr %t88, i64 %t83
  store i64 %t84, ptr %t89, !tbaa !34
  br label %bb21
bb20:
  br label %bb21
bb21:
  %t90 = load i64, ptr %l3, !tbaa !24
  store i64 %t90, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2espawn(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca ptr
  %l5 = alloca %"compiler/mir:Task"
  %l6 = alloca i64
  %l7 = alloca { { i64, ptr }, i64 }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca %"compiler/eval:Ptr"
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca { i64, [4 x i64] }
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l26 = alloca i64
  %l27 = alloca i64
  %l28 = alloca { %"compiler/eval:Ptr", i32 }
  %l29 = alloca %"compiler/eval:Ptr"
  %l30 = alloca i64
  %l31 = alloca i64
  %l32 = alloca i64
  %l33 = alloca i64
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca { i64, [4 x i64] }
  %l37 = alloca i64
  %l38 = alloca i64
  %l39 = alloca i64
  %l40 = alloca i64
  %l41 = alloca i64
  %l42 = alloca i64
  %l43 = alloca { i64, [7 x i64] }
  %l44 = alloca { i64, [4 x i64] }
  %l45 = alloca i32
  %l46 = alloca i32
  %l47 = alloca i32
  %l48 = alloca i32
  %l49 = alloca i32
  %l50 = alloca i32
  %l51 = alloca { i64, [1 x i64] }
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca %"compiler/eval:task"
  %l59 = alloca i64
  %l68 = alloca ptr
  %l73 = alloca %"compiler/mir:Task"
  %l75 = alloca { i64, ptr }
  %l77 = alloca { i64, ptr }
  %l86 = alloca i1
  %l94 = alloca { { i64, ptr }, i64 }
  %l120 = alloca %"compiler/eval:Ptr"
  %l127 = alloca i32
  %l130 = alloca i32
  %l155 = alloca { i64, [4 x i64] }
  %l156 = alloca ptr
  %l157 = alloca i64
  %l161 = alloca %"compiler/eval:Ptr"
  %l165 = alloca i32
  %l174 = alloca i64
  %l177 = alloca i64
  %l195 = alloca ptr
  %l196 = alloca i64
  %l203 = alloca %"compiler/mir:Lvalue"
  %l204 = alloca { %"compiler/eval:Ptr", i32 }
  %l206 = alloca ptr
  %l212 = alloca %"compiler/eval:Ptr"
  %l224 = alloca i64
  %l227 = alloca i64
  %l251 = alloca %"compiler/mir:TaskClause"
  %l256 = alloca ptr
  %l257 = alloca i64
  %l263 = alloca %"compiler/eval:Ptr"
  %l267 = alloca i32
  %l279 = alloca i64
  %l282 = alloca i64
  %l300 = alloca ptr
  %l306 = alloca %"compiler/eval:Ptr"
  %l307 = alloca ptr
  %l308 = alloca i64
  %l315 = alloca { i64, [1 x i64] }
  %l316 = alloca i64
  %l327 = alloca ptr
  %l328 = alloca i64
  %l331 = alloca %"compiler/eval:Ptr"
  %l335 = alloca i32
  %l343 = alloca i32
  %l346 = alloca i32
  %l371 = alloca { i64, [1 x i64] }
  %l378 = alloca i64
  %l379 = alloca ptr
  %l386 = alloca %"compiler/eval:Ptr"
  %l390 = alloca i64
  %l393 = alloca i64
  %l394 = alloca i32
  %l396 = alloca i64
  %l397 = alloca %"compiler/eval:task"
  %l399 = alloca { i64, ptr }
  %l419 = alloca %"compiler/eval:scope"
  %l425 = alloca %"compiler/eval:scope"
  %l430 = alloca ptr
  %l437 = alloca ptr
  %l444 = alloca ptr
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s19 = alloca %olang.scope
  %t753 = alloca %"compiler/eval:scope", align 8
  %t765 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
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
  store ptr %t6, ptr %l4, !tbaa !29
  %t7 = load ptr, ptr %l4, !tbaa !29
  %t9 = getelementptr %"compiler/mir:Fn", ptr %t7, i32 0, i32 16
  %t10 = load i32, ptr %l3, !tbaa !23
  %t12 = sext i32 %t10 to i64
  %t15 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t9, i64 %t12)
  store %"compiler/mir:Task" %t15, ptr %l73
  br label %bb2
bb2:
  %t16 = load %"compiler/mir:Task", ptr %l73
  store %"compiler/mir:Task" %t16, ptr %l5
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/eval:Machine", ptr %t17, i32 0, i32 60
  %t20 = load { i64, ptr }, ptr %t19, !tbaa !27
  store { i64, ptr } %t20, ptr %l75, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/eval:Machine", ptr %t21, i32 0, i32 58
  %t24 = load { i64, ptr }, ptr %t23, !tbaa !27
  store { i64, ptr } %t24, ptr %l77, !tbaa !27
  %t25 = load i64, ptr %l1, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l77, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr %"compiler/eval:frame", ptr %t28, i64 %t25
  %t30 = getelementptr %"compiler/eval:frame", ptr %t29, i32 0, i32 4
  %t31 = load i64, ptr %t30, !tbaa !24
  %t34 = sext i32 %a2 to i64
  %t37 = add i64 %t31, %t34
  %t39 = getelementptr { i64, ptr }, ptr %l75, i32 0, i32 1
  %t40 = load ptr, ptr %t39, !tbaa !27
  %t41 = getelementptr i64, ptr %t40, i64 %t37
  %t42 = load i64, ptr %t41, !tbaa !34
  store i64 %t42, ptr %l6, !tbaa !24
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i64, ptr %l6, !tbaa !24
  %t48 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t44, i64 %t45)
  store i1 %t48, ptr %l86
  br label %bb3
bb3:
  %t49 = load i1, ptr %l86, !tbaa !21
  %t50 = xor i1 %t49, true
  br i1 %t50, label %bb4, label %bb5
bb4:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t54 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t54, ptr %t52, { i64, ptr } %t53)
  br label %bb6
bb5:
  br label %bb7
bb6:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb7:
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t58 = load ptr, ptr %l4, !tbaa !29
  %t59 = load %"compiler/mir:Task", ptr %l5
  %t60 = load i64, ptr %l1, !tbaa !24
  %t65 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v0, ptr %s0, ptr %t57, ptr %t58, %"compiler/mir:Task" %t59, i64 %t60)
  store { { i64, ptr }, i64 } %t65, ptr %l94
  br label %bb8
bb8:
  %t66 = load { { i64, ptr }, i64 }, ptr %l94
  store { { i64, ptr }, i64 } %t66, ptr %l7
  %t67 = getelementptr { { i64, ptr }, i64 }, ptr %l7, i32 0, i32 0
  %t68 = load { i64, ptr }, ptr %t67, !tbaa !27
  store { i64, ptr } %t68, ptr %l8, !tbaa !27
  %t70 = getelementptr { { i64, ptr }, i64 }, ptr %l7, i32 0, i32 1
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l9, !tbaa !24
  %t73 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 3
  %t74 = getelementptr %"compiler/mir:Range", ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74, !tbaa !23
  %t77 = sext i32 %t75 to i64
  store i64 %t77, ptr %l10, !tbaa !24
  %t79 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 4
  %t80 = getelementptr %"compiler/mir:Range", ptr %t79, i32 0, i32 1
  %t81 = load i32, ptr %t80, !tbaa !23
  %t83 = sext i32 %t81 to i64
  store i64 %t83, ptr %l11, !tbaa !24
  %t85 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 2
  %t86 = getelementptr %"compiler/mir:Range", ptr %t85, i32 0, i32 1
  %t87 = load i32, ptr %t86, !tbaa !23
  %t89 = sext i32 %t87 to i64
  store i64 %t89, ptr %l12, !tbaa !24
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load i64, ptr %l9, !tbaa !24
  %t93 = load i64, ptr %l10, !tbaa !24
  %t95 = mul i64 8, %t93
  %t98 = add i64 %t92, %t95
  %t99 = load i64, ptr %l11, !tbaa !24
  %t101 = mul i64 16, %t99
  %t104 = add i64 %t98, %t101
  %t105 = load i64, ptr %l12, !tbaa !24
  %t107 = mul i64 8, %t105
  %t110 = add i64 %t104, %t107
  %t112 = add i64 %t110, 16
  %t113 = load i64, ptr %l10, !tbaa !24
  %t115 = mul i64 8, %t113
  %t118 = add i64 %t112, %t115
  %t119 = load i64, ptr @G_2ecompiler_2feval_2eaValue, !tbaa !24
  %t120 = load i64, ptr %l6, !tbaa !24
  %t125 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t91, i64 %t118, i64 %t119, i64 %t120)
  store %"compiler/eval:Ptr" %t125, ptr %l120
  br label %bb9
bb9:
  %t126 = load %"compiler/eval:Ptr", ptr %l120
  store %"compiler/eval:Ptr" %t126, ptr %l13
  %t127 = load ptr, ptr %l0, !tbaa !29
  %t129 = getelementptr %"compiler/eval:Machine", ptr %t127, i32 0, i32 22
  %t130 = load i1, ptr %t129, !tbaa !21
  br i1 %t130, label %bb10, label %bb11
bb10:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb11:
  br label %bb12
bb12:
  store i32 0, ptr %l14, !tbaa !23
  %t132 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 1
  %t133 = getelementptr %"compiler/mir:Range", ptr %t132, i32 0, i32 1
  %t134 = load i32, ptr %t133, !tbaa !23
  store i32 %t134, ptr %l15, !tbaa !23
  store i32 1, ptr %l16, !tbaa !23
  %t136 = load i32, ptr %l15, !tbaa !23
  %t137 = load i32, ptr %l14, !tbaa !23
  %t140 = icmp sgt i32 %t136, %t137
  br i1 %t140, label %bb13, label %bb14
bb13:
  %t142 = load i32, ptr %l16, !tbaa !23
  %t144 = icmp sgt i32 %t142, 0
  br i1 %t144, label %bb15, label %bb16
bb14:
  store i32 0, ptr %l127, !tbaa !23
  br label %bb18
bb15:
  %t146 = load i32, ptr %l15, !tbaa !23
  %t147 = load i32, ptr %l14, !tbaa !23
  %t150 = sub i32 %t146, %t147
  %t151 = load i32, ptr %l16, !tbaa !23
  %t154 = add i32 %t150, %t151
  %t156 = sub i32 %t154, 1
  %t157 = load i32, ptr %l16, !tbaa !23
  %t160 = sdiv i32 %t156, %t157
  store i32 %t160, ptr %l130, !tbaa !23
  br label %bb17
bb16:
  store i32 0, ptr %l130, !tbaa !23
  br label %bb17
bb17:
  %t162 = load i32, ptr %l130, !tbaa !23
  store i32 %t162, ptr %l127, !tbaa !23
  br label %bb18
bb18:
  %t163 = load i32, ptr %l127, !tbaa !23
  store i32 %t163, ptr %l17, !tbaa !23
  store i32 0, ptr %l18, !tbaa !23
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s4
  %t164 = load i32, ptr %l18, !tbaa !23
  %t165 = load i32, ptr %l17, !tbaa !23
  %t168 = icmp slt i32 %t164, %t165
  %t170 = xor i1 %t168, true
  br i1 %t170, label %bb20, label %bb21
bb20:
  call void @__olang_scope_close(ptr %s4)
  br label %bb28
bb21:
  br label %bb22
bb22:
  %t172 = load i32, ptr %l14, !tbaa !23
  %t173 = load i32, ptr %l18, !tbaa !23
  %t174 = load i32, ptr %l16, !tbaa !23
  %t177 = mul i32 %t173, %t174
  %t180 = add i32 %t172, %t177
  store i32 %t180, ptr %l19, !tbaa !23
  %t182 = load ptr, ptr %l4, !tbaa !29
  %t184 = getelementptr %"compiler/mir:Fn", ptr %t182, i32 0, i32 11
  %t185 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 1
  %t186 = getelementptr %"compiler/mir:Range", ptr %t185, i32 0, i32 0
  %t187 = load i32, ptr %t186, !tbaa !23
  %t189 = sext i32 %t187 to i64
  %t190 = load i32, ptr %l19, !tbaa !23
  %t192 = sext i32 %t190 to i64
  %t195 = add i64 %t189, %t192
  %t198 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t184, i64 %t195)
  store { i64, [4 x i64] } %t198, ptr %l155
  br label %bb23
bb23:
  %t199 = load { i64, [4 x i64] }, ptr %l155
  store { i64, [4 x i64] } %t199, ptr %l20
  %t200 = load ptr, ptr %l0, !tbaa !29
  store ptr %t200, ptr %l156, !tbaa !29
  %t201 = load i64, ptr %l1, !tbaa !24
  store i64 %t201, ptr %l157, !tbaa !24
  %t202 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t203 = load i64, ptr %t202, !tbaa !24
  %t204 = load i32, ptr %l19, !tbaa !23
  %t206 = sext i32 %t204 to i64
  %t207 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t208 = load ptr, ptr %t207, !tbaa !27
  %t209 = getelementptr i64, ptr %t208, i64 %t206
  %t210 = load i64, ptr %t209, !tbaa !34
  %t213 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t203, i64 %t210)
  store %"compiler/eval:Ptr" %t213, ptr %l161
  br label %bb24
bb24:
  %t214 = load ptr, ptr %l0, !tbaa !29
  %t215 = load i64, ptr %l1, !tbaa !24
  %t216 = load { i64, [4 x i64] }, ptr %l20
  %t220 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t214, i64 %t215, { i64, [4 x i64] } %t216)
  store i32 %t220, ptr %l165
  br label %bb25
bb25:
  %t221 = load { i64, [4 x i64] }, ptr %l20
  %t222 = load ptr, ptr %l156, !tbaa !29
  %t223 = load i64, ptr %l157, !tbaa !24
  %t224 = load %"compiler/eval:Ptr", ptr %l161
  %t225 = load i32, ptr %l165, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t222, i64 %t223, %"compiler/eval:Ptr" %t224, i32 %t225, { i64, [4 x i64] } %t221)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s4)
  br label %bb27
bb27:
  %t227 = load i32, ptr %l18, !tbaa !23
  %t229 = add i32 %t227, 1
  store i32 %t229, ptr %l18, !tbaa !23
  br label %bb19
bb28:
  %t231 = load i64, ptr %l9, !tbaa !24
  store i64 %t231, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  %t233 = load i64, ptr %l10, !tbaa !24
  store i64 %t233, ptr %l23, !tbaa !24
  store i64 1, ptr %l24, !tbaa !24
  %t235 = load i64, ptr %l23, !tbaa !24
  %t236 = load i64, ptr %l22, !tbaa !24
  %t239 = icmp sgt i64 %t235, %t236
  br i1 %t239, label %bb29, label %bb30
bb29:
  %t241 = load i64, ptr %l24, !tbaa !24
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb31, label %bb32
bb30:
  store i64 0, ptr %l174, !tbaa !24
  br label %bb34
bb31:
  %t245 = load i64, ptr %l23, !tbaa !24
  %t246 = load i64, ptr %l22, !tbaa !24
  %t249 = sub i64 %t245, %t246
  %t250 = load i64, ptr %l24, !tbaa !24
  %t253 = add i64 %t249, %t250
  %t255 = sub i64 %t253, 1
  %t256 = load i64, ptr %l24, !tbaa !24
  %t259 = sdiv i64 %t255, %t256
  store i64 %t259, ptr %l177, !tbaa !24
  br label %bb33
bb32:
  store i64 0, ptr %l177, !tbaa !24
  br label %bb33
bb33:
  %t261 = load i64, ptr %l177, !tbaa !24
  store i64 %t261, ptr %l174, !tbaa !24
  br label %bb34
bb34:
  %t262 = load i64, ptr %l174, !tbaa !24
  store i64 %t262, ptr %l25, !tbaa !24
  store i64 0, ptr %l26, !tbaa !24
  br label %bb35
bb35:
  store %olang.scope zeroinitializer, ptr %s7
  %t263 = load i64, ptr %l26, !tbaa !24
  %t264 = load i64, ptr %l25, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb36, label %bb37
bb36:
  call void @__olang_scope_close(ptr %s7)
  br label %bb44
bb37:
  br label %bb38
bb38:
  %t271 = load i64, ptr %l22, !tbaa !24
  %t272 = load i64, ptr %l26, !tbaa !24
  %t273 = load i64, ptr %l24, !tbaa !24
  %t276 = mul i64 %t272, %t273
  %t279 = add i64 %t271, %t276
  store i64 %t279, ptr %l27, !tbaa !24
  %t281 = load ptr, ptr %l0, !tbaa !29
  store ptr %t281, ptr %l195, !tbaa !29
  %t282 = load i64, ptr %l1, !tbaa !24
  store i64 %t282, ptr %l196, !tbaa !24
  %t283 = load ptr, ptr %l4, !tbaa !29
  %t285 = getelementptr %"compiler/mir:Fn", ptr %t283, i32 0, i32 13
  %t286 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 3
  %t287 = getelementptr %"compiler/mir:Range", ptr %t286, i32 0, i32 0
  %t288 = load i32, ptr %t287, !tbaa !23
  %t290 = sext i32 %t288 to i64
  %t291 = load i64, ptr %l27, !tbaa !24
  %t294 = add i64 %t290, %t291
  %t297 = call %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %t285, i64 %t294)
  store %"compiler/mir:Lvalue" %t297, ptr %l203
  br label %bb39
bb39:
  %t298 = load ptr, ptr %l195, !tbaa !29
  %t299 = load i64, ptr %l196, !tbaa !24
  %t300 = load %"compiler/mir:Lvalue", ptr %l203
  %t301 = call { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eplace(ptr %v0, ptr %t298, i64 %t299, %"compiler/mir:Lvalue" %t300)
  store { %"compiler/eval:Ptr", i32 } %t301, ptr %l204
  br label %bb40
bb40:
  %t302 = load { %"compiler/eval:Ptr", i32 }, ptr %l204
  store { %"compiler/eval:Ptr", i32 } %t302, ptr %l28
  %t303 = getelementptr { %"compiler/eval:Ptr", i32 }, ptr %l28, i32 0, i32 0
  %t304 = load %"compiler/eval:Ptr", ptr %t303
  store %"compiler/eval:Ptr" %t304, ptr %l29
  %t306 = load ptr, ptr %l0, !tbaa !29
  store ptr %t306, ptr %l206, !tbaa !29
  %t307 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t308 = load i64, ptr %t307, !tbaa !24
  %t309 = load i64, ptr %l21, !tbaa !24
  %t310 = load i64, ptr %l27, !tbaa !24
  %t312 = mul i64 8, %t310
  %t315 = add i64 %t309, %t312
  %t318 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s7, i64 %t308, i64 %t315)
  store %"compiler/eval:Ptr" %t318, ptr %l212
  br label %bb41
bb41:
  %t319 = load %"compiler/eval:Ptr", ptr %l29
  %t320 = load ptr, ptr %l206, !tbaa !29
  %t321 = load %"compiler/eval:Ptr", ptr %l212
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %t320, %"compiler/eval:Ptr" %t321, %"compiler/eval:Ptr" %t319)
  br label %bb42
bb42:
  call void @__olang_scope_close(ptr %s7)
  br label %bb43
bb43:
  %t323 = load i64, ptr %l26, !tbaa !24
  %t325 = add i64 %t323, 1
  store i64 %t325, ptr %l26, !tbaa !24
  br label %bb35
bb44:
  %t327 = load i64, ptr %l21, !tbaa !24
  %t328 = load i64, ptr %l10, !tbaa !24
  %t330 = mul i64 8, %t328
  %t333 = add i64 %t327, %t330
  store i64 %t333, ptr %l21, !tbaa !24
  store i64 0, ptr %l30, !tbaa !24
  %t335 = load i64, ptr %l11, !tbaa !24
  store i64 %t335, ptr %l31, !tbaa !24
  store i64 1, ptr %l32, !tbaa !24
  %t337 = load i64, ptr %l31, !tbaa !24
  %t338 = load i64, ptr %l30, !tbaa !24
  %t341 = icmp sgt i64 %t337, %t338
  br i1 %t341, label %bb45, label %bb46
bb45:
  %t343 = load i64, ptr %l32, !tbaa !24
  %t345 = icmp sgt i64 %t343, 0
  br i1 %t345, label %bb47, label %bb48
bb46:
  store i64 0, ptr %l224, !tbaa !24
  br label %bb50
bb47:
  %t347 = load i64, ptr %l31, !tbaa !24
  %t348 = load i64, ptr %l30, !tbaa !24
  %t351 = sub i64 %t347, %t348
  %t352 = load i64, ptr %l32, !tbaa !24
  %t355 = add i64 %t351, %t352
  %t357 = sub i64 %t355, 1
  %t358 = load i64, ptr %l32, !tbaa !24
  %t361 = sdiv i64 %t357, %t358
  store i64 %t361, ptr %l227, !tbaa !24
  br label %bb49
bb48:
  store i64 0, ptr %l227, !tbaa !24
  br label %bb49
bb49:
  %t363 = load i64, ptr %l227, !tbaa !24
  store i64 %t363, ptr %l224, !tbaa !24
  br label %bb50
bb50:
  %t364 = load i64, ptr %l224, !tbaa !24
  store i64 %t364, ptr %l33, !tbaa !24
  store i64 0, ptr %l34, !tbaa !24
  br label %bb51
bb51:
  %t365 = load i64, ptr %l34, !tbaa !24
  %t366 = load i64, ptr %l33, !tbaa !24
  %t369 = icmp slt i64 %t365, %t366
  %t371 = xor i1 %t369, true
  br i1 %t371, label %bb52, label %bb53
bb52:
  br label %bb63
bb53:
  br label %bb54
bb54:
  %t373 = load i64, ptr %l30, !tbaa !24
  %t374 = load i64, ptr %l34, !tbaa !24
  %t375 = load i64, ptr %l32, !tbaa !24
  %t378 = mul i64 %t374, %t375
  %t381 = add i64 %t373, %t378
  store i64 %t381, ptr %l35, !tbaa !24
  %t383 = load ptr, ptr %l4, !tbaa !29
  %t385 = getelementptr %"compiler/mir:Fn", ptr %t383, i32 0, i32 17
  %t386 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 4
  %t387 = getelementptr %"compiler/mir:Range", ptr %t386, i32 0, i32 0
  %t388 = load i32, ptr %t387, !tbaa !23
  %t390 = sext i32 %t388 to i64
  %t391 = load i64, ptr %l35, !tbaa !24
  %t394 = add i64 %t390, %t391
  %t397 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t385, i64 %t394)
  store %"compiler/mir:TaskClause" %t397, ptr %l251
  br label %bb55
bb55:
  %t398 = getelementptr %"compiler/mir:TaskClause", ptr %l251, i32 0, i32 2
  %t399 = load { i64, [4 x i64] }, ptr %t398
  store { i64, [4 x i64] } %t399, ptr %l36
  %t401 = load { i64, [4 x i64] }, ptr %l36
  %t403 = extractvalue { i64, [4 x i64] } %t401, 0
  %t404 = icmp eq i64 %t403, 0
  %t406 = xor i1 %t404, true
  br i1 %t406, label %bb56, label %bb57
bb56:
  store %olang.scope zeroinitializer, ptr %s11
  %t408 = load ptr, ptr %l0, !tbaa !29
  store ptr %t408, ptr %l256, !tbaa !29
  %t409 = load i64, ptr %l1, !tbaa !24
  store i64 %t409, ptr %l257, !tbaa !24
  %t410 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t411 = load i64, ptr %t410, !tbaa !24
  %t412 = load i64, ptr %l21, !tbaa !24
  %t413 = load i64, ptr %l35, !tbaa !24
  %t415 = mul i64 16, %t413
  %t418 = add i64 %t412, %t415
  %t421 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t411, i64 %t418)
  store %"compiler/eval:Ptr" %t421, ptr %l263
  br label %bb58
bb57:
  br label %bb61
bb58:
  %t422 = load ptr, ptr %l0, !tbaa !29
  %t423 = load i64, ptr %l1, !tbaa !24
  %t424 = load { i64, [4 x i64] }, ptr %l36
  %t428 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t422, i64 %t423, { i64, [4 x i64] } %t424)
  store i32 %t428, ptr %l267
  br label %bb59
bb59:
  %t429 = load { i64, [4 x i64] }, ptr %l36
  %t430 = load ptr, ptr %l256, !tbaa !29
  %t431 = load i64, ptr %l257, !tbaa !24
  %t432 = load %"compiler/eval:Ptr", ptr %l263
  %t433 = load i32, ptr %l267, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t430, i64 %t431, %"compiler/eval:Ptr" %t432, i32 %t433, { i64, [4 x i64] } %t429)
  br label %bb60
bb60:
  call void @__olang_scope_close(ptr %s11)
  br label %bb61
bb61:
  br label %bb62
bb62:
  %t435 = load i64, ptr %l34, !tbaa !24
  %t437 = add i64 %t435, 1
  store i64 %t437, ptr %l34, !tbaa !24
  br label %bb51
bb63:
  %t439 = load i64, ptr %l21, !tbaa !24
  %t440 = load i64, ptr %l11, !tbaa !24
  %t442 = mul i64 16, %t440
  %t445 = add i64 %t439, %t442
  store i64 %t445, ptr %l21, !tbaa !24
  store i64 0, ptr %l37, !tbaa !24
  %t447 = load i64, ptr %l12, !tbaa !24
  store i64 %t447, ptr %l38, !tbaa !24
  store i64 1, ptr %l39, !tbaa !24
  %t449 = load i64, ptr %l38, !tbaa !24
  %t450 = load i64, ptr %l37, !tbaa !24
  %t453 = icmp sgt i64 %t449, %t450
  br i1 %t453, label %bb64, label %bb65
bb64:
  %t455 = load i64, ptr %l39, !tbaa !24
  %t457 = icmp sgt i64 %t455, 0
  br i1 %t457, label %bb66, label %bb67
bb65:
  store i64 0, ptr %l279, !tbaa !24
  br label %bb69
bb66:
  %t459 = load i64, ptr %l38, !tbaa !24
  %t460 = load i64, ptr %l37, !tbaa !24
  %t463 = sub i64 %t459, %t460
  %t464 = load i64, ptr %l39, !tbaa !24
  %t467 = add i64 %t463, %t464
  %t469 = sub i64 %t467, 1
  %t470 = load i64, ptr %l39, !tbaa !24
  %t473 = sdiv i64 %t469, %t470
  store i64 %t473, ptr %l282, !tbaa !24
  br label %bb68
bb67:
  store i64 0, ptr %l282, !tbaa !24
  br label %bb68
bb68:
  %t475 = load i64, ptr %l282, !tbaa !24
  store i64 %t475, ptr %l279, !tbaa !24
  br label %bb69
bb69:
  %t476 = load i64, ptr %l279, !tbaa !24
  store i64 %t476, ptr %l40, !tbaa !24
  store i64 0, ptr %l41, !tbaa !24
  br label %bb70
bb70:
  store %olang.scope zeroinitializer, ptr %s14
  %t477 = load i64, ptr %l41, !tbaa !24
  %t478 = load i64, ptr %l40, !tbaa !24
  %t481 = icmp slt i64 %t477, %t478
  %t483 = xor i1 %t481, true
  br i1 %t483, label %bb71, label %bb72
bb71:
  call void @__olang_scope_close(ptr %s14)
  br label %bb79
bb72:
  br label %bb73
bb73:
  %t485 = load i64, ptr %l37, !tbaa !24
  %t486 = load i64, ptr %l41, !tbaa !24
  %t487 = load i64, ptr %l39, !tbaa !24
  %t490 = mul i64 %t486, %t487
  %t493 = add i64 %t485, %t490
  store i64 %t493, ptr %l42, !tbaa !24
  %t495 = load ptr, ptr %l0, !tbaa !29
  store ptr %t495, ptr %l300, !tbaa !29
  %t496 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t497 = load i64, ptr %t496, !tbaa !24
  %t498 = load i64, ptr %l21, !tbaa !24
  %t499 = load i64, ptr %l42, !tbaa !24
  %t501 = mul i64 8, %t499
  %t504 = add i64 %t498, %t501
  %t507 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s14, i64 %t497, i64 %t504)
  store %"compiler/eval:Ptr" %t507, ptr %l306
  br label %bb74
bb74:
  %t508 = load ptr, ptr %l0, !tbaa !29
  store ptr %t508, ptr %l307, !tbaa !29
  %t509 = load i64, ptr %l1, !tbaa !24
  store i64 %t509, ptr %l308, !tbaa !24
  %t510 = load ptr, ptr %l4, !tbaa !29
  %t512 = getelementptr %"compiler/mir:Fn", ptr %t510, i32 0, i32 12
  %t513 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 2
  %t514 = getelementptr %"compiler/mir:Range", ptr %t513, i32 0, i32 0
  %t515 = load i32, ptr %t514, !tbaa !23
  %t517 = sext i32 %t515 to i64
  %t518 = load i64, ptr %l42, !tbaa !24
  %t521 = add i64 %t517, %t518
  %t524 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t512, i64 %t521)
  store { i64, [1 x i64] } %t524, ptr %l315
  br label %bb75
bb75:
  %t525 = load ptr, ptr %l307, !tbaa !29
  %t526 = load i64, ptr %l308, !tbaa !24
  %t527 = load { i64, [1 x i64] }, ptr %l315
  %t528 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t525, i64 %t526, { i64, [1 x i64] } %t527)
  store i64 %t528, ptr %l316
  br label %bb76
bb76:
  %t529 = load ptr, ptr %l300, !tbaa !29
  %t530 = load %"compiler/eval:Ptr", ptr %l306
  %t531 = load i64, ptr %l316, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t529, %"compiler/eval:Ptr" %t530, i64 8, i64 %t531)
  br label %bb77
bb77:
  call void @__olang_scope_close(ptr %s14)
  br label %bb78
bb78:
  %t532 = load i64, ptr %l41, !tbaa !24
  %t534 = add i64 %t532, 1
  store i64 %t534, ptr %l41, !tbaa !24
  br label %bb70
bb79:
  %t536 = load i64, ptr %l21, !tbaa !24
  %t537 = load i64, ptr %l12, !tbaa !24
  %t539 = mul i64 8, %t537
  %t542 = add i64 %t536, %t539
  store i64 %t542, ptr %l21, !tbaa !24
  %t544 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 0
  %t545 = load { i64, [7 x i64] }, ptr %t544
  store { i64, [7 x i64] } %t545, ptr %l43
  %t547 = load { i64, [7 x i64] }, ptr %l43
  %t549 = extractvalue { i64, [7 x i64] } %t547, 0
  %t550 = icmp eq i64 %t549, 2
  br i1 %t550, label %bb80, label %bb81
bb80:
  %t552 = getelementptr { i64, [7 x i64] }, ptr %l43, i32 0, i32 1
  %t553 = getelementptr { { i64, [4 x i64] } }, ptr %t552, i32 0, i32 0
  %t554 = load { i64, [4 x i64] }, ptr %t553
  store { i64, [4 x i64] } %t554, ptr %l44
  br label %bb82
bb81:
  br label %bb86
bb82:
  store %olang.scope zeroinitializer, ptr %s16
  %t556 = load ptr, ptr %l0, !tbaa !29
  store ptr %t556, ptr %l327, !tbaa !29
  %t557 = load i64, ptr %l1, !tbaa !24
  store i64 %t557, ptr %l328, !tbaa !24
  %t558 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t559 = load i64, ptr %t558, !tbaa !24
  %t560 = load i64, ptr %l21, !tbaa !24
  %t563 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s16, i64 %t559, i64 %t560)
  store %"compiler/eval:Ptr" %t563, ptr %l331
  br label %bb83
bb83:
  %t564 = load ptr, ptr %l0, !tbaa !29
  %t565 = load i64, ptr %l1, !tbaa !24
  %t566 = load { i64, [4 x i64] }, ptr %l44
  %t570 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t564, i64 %t565, { i64, [4 x i64] } %t566)
  store i32 %t570, ptr %l335
  br label %bb84
bb84:
  %t571 = load { i64, [4 x i64] }, ptr %l44
  %t572 = load ptr, ptr %l327, !tbaa !29
  %t573 = load i64, ptr %l328, !tbaa !24
  %t574 = load %"compiler/eval:Ptr", ptr %l331
  %t575 = load i32, ptr %l335, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %t572, i64 %t573, %"compiler/eval:Ptr" %t574, i32 %t575, { i64, [4 x i64] } %t571)
  br label %bb85
bb85:
  call void @__olang_scope_close(ptr %s16)
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
  call void @__olang_check_failed(ptr @olang_loc_c730e5cddf41927a_cc9c5d5e6e4d10a6)
  unreachable
bb91:
  %t577 = load i64, ptr %l21, !tbaa !24
  %t579 = add i64 %t577, 16
  store i64 %t579, ptr %l21, !tbaa !24
  store i32 0, ptr %l45, !tbaa !23
  %t581 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 7
  %t582 = getelementptr %"compiler/mir:Range", ptr %t581, i32 0, i32 1
  %t583 = load i32, ptr %t582, !tbaa !23
  store i32 %t583, ptr %l46, !tbaa !23
  store i32 1, ptr %l47, !tbaa !23
  %t585 = load i32, ptr %l46, !tbaa !23
  %t586 = load i32, ptr %l45, !tbaa !23
  %t589 = icmp sgt i32 %t585, %t586
  br i1 %t589, label %bb92, label %bb93
bb92:
  %t591 = load i32, ptr %l47, !tbaa !23
  %t593 = icmp sgt i32 %t591, 0
  br i1 %t593, label %bb94, label %bb95
bb93:
  store i32 0, ptr %l343, !tbaa !23
  br label %bb97
bb94:
  %t595 = load i32, ptr %l46, !tbaa !23
  %t596 = load i32, ptr %l45, !tbaa !23
  %t599 = sub i32 %t595, %t596
  %t600 = load i32, ptr %l47, !tbaa !23
  %t603 = add i32 %t599, %t600
  %t605 = sub i32 %t603, 1
  %t606 = load i32, ptr %l47, !tbaa !23
  %t609 = sdiv i32 %t605, %t606
  store i32 %t609, ptr %l346, !tbaa !23
  br label %bb96
bb95:
  store i32 0, ptr %l346, !tbaa !23
  br label %bb96
bb96:
  %t611 = load i32, ptr %l346, !tbaa !23
  store i32 %t611, ptr %l343, !tbaa !23
  br label %bb97
bb97:
  %t612 = load i32, ptr %l343, !tbaa !23
  store i32 %t612, ptr %l48, !tbaa !23
  store i32 0, ptr %l49, !tbaa !23
  br label %bb98
bb98:
  store %olang.scope zeroinitializer, ptr %s19
  %t613 = load i32, ptr %l49, !tbaa !23
  %t614 = load i32, ptr %l48, !tbaa !23
  %t617 = icmp slt i32 %t613, %t614
  %t619 = xor i1 %t617, true
  br i1 %t619, label %bb99, label %bb100
bb99:
  call void @__olang_scope_close(ptr %s19)
  br label %bb110
bb100:
  br label %bb101
bb101:
  %t621 = load i32, ptr %l45, !tbaa !23
  %t622 = load i32, ptr %l49, !tbaa !23
  %t623 = load i32, ptr %l47, !tbaa !23
  %t626 = mul i32 %t622, %t623
  %t629 = add i32 %t621, %t626
  store i32 %t629, ptr %l50, !tbaa !23
  %t631 = load ptr, ptr %l4, !tbaa !29
  %t633 = getelementptr %"compiler/mir:Fn", ptr %t631, i32 0, i32 12
  %t634 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 7
  %t635 = getelementptr %"compiler/mir:Range", ptr %t634, i32 0, i32 0
  %t636 = load i32, ptr %t635, !tbaa !23
  %t638 = sext i32 %t636 to i64
  %t639 = load i32, ptr %l50, !tbaa !23
  %t641 = sext i32 %t639 to i64
  %t644 = add i64 %t638, %t641
  %t647 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %t633, i64 %t644)
  store { i64, [1 x i64] } %t647, ptr %l371
  br label %bb102
bb102:
  %t648 = load { i64, [1 x i64] }, ptr %l371
  store { i64, [1 x i64] } %t648, ptr %l51
  store i64 0, ptr %l52, !tbaa !24
  %t649 = load { i64, [1 x i64] }, ptr %l51
  %t651 = extractvalue { i64, [1 x i64] } %t649, 0
  %t652 = icmp eq i64 %t651, 3
  %t654 = xor i1 %t652, true
  br i1 %t654, label %bb103, label %bb104
bb103:
  %t656 = load ptr, ptr %l0, !tbaa !29
  %t657 = load i64, ptr %l1, !tbaa !24
  %t658 = load { i64, [1 x i64] }, ptr %l51
  %t662 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t656, i64 %t657, { i64, [1 x i64] } %t658)
  store i64 %t662, ptr %l378
  br label %bb105
bb104:
  br label %bb106
bb105:
  %t663 = load i64, ptr %l378, !tbaa !24
  store i64 %t663, ptr %l52, !tbaa !24
  br label %bb106
bb106:
  %t664 = load ptr, ptr %l0, !tbaa !29
  store ptr %t664, ptr %l379, !tbaa !29
  %t665 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t666 = load i64, ptr %t665, !tbaa !24
  %t667 = load i64, ptr %l21, !tbaa !24
  %t668 = load i32, ptr %l50, !tbaa !23
  %t670 = mul i32 8, %t668
  %t672 = sext i32 %t670 to i64
  %t675 = add i64 %t667, %t672
  %t678 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s19, i64 %t666, i64 %t675)
  store %"compiler/eval:Ptr" %t678, ptr %l386
  br label %bb107
bb107:
  %t679 = load i64, ptr %l52, !tbaa !24
  %t680 = load ptr, ptr %l379, !tbaa !29
  %t681 = load %"compiler/eval:Ptr", ptr %l386
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t680, %"compiler/eval:Ptr" %t681, i64 8, i64 %t679)
  br label %bb108
bb108:
  call void @__olang_scope_close(ptr %s19)
  br label %bb109
bb109:
  %t683 = load i32, ptr %l49, !tbaa !23
  %t685 = add i32 %t683, 1
  store i32 %t685, ptr %l49, !tbaa !23
  br label %bb98
bb110:
  %t687 = load ptr, ptr %l0, !tbaa !29
  %t689 = getelementptr %"compiler/eval:Machine", ptr %t687, i32 0, i32 57
  %t691 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t689)
  %t692 = extractvalue { i32, i64 } %t691, 1
  %t693 = extractvalue { i32, i64 } %t691, 0
  store i32 %t693, ptr %l394
  %t694 = icmp ne i32 %t693, 0
  br i1 %t694, label %bb112, label %ok.695, !prof !99
ok.695:
  store i64 %t692, ptr %l393
  br label %bb111
bb111:
  %t696 = load i64, ptr %l393, !tbaa !24
  store i64 %t696, ptr %l390, !tbaa !24
  br label %bb115
bb112:
  br label %bb113
bb113:
  %t697 = load ptr, ptr %l0, !tbaa !29
  %t699 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewTaskSlot(ptr %v0, ptr %t697)
  store i64 %t699, ptr %l396
  br label %bb114
bb114:
  %t700 = load i64, ptr %l396, !tbaa !24
  store i64 %t700, ptr %l390, !tbaa !24
  br label %bb115
bb115:
  %t701 = load i64, ptr %l390, !tbaa !24
  store i64 %t701, ptr %l53, !tbaa !24
  %t702 = call %"compiler/eval:task" @compiler_2feval_3atask_2ector(ptr %s0)
  store %"compiler/eval:task" %t702, ptr %l397
  br label %bb116
bb116:
  %t703 = load %"compiler/eval:task", ptr %l397
  store %"compiler/eval:task" %t703, ptr %l54
  %t704 = load ptr, ptr %l0, !tbaa !29
  %t706 = getelementptr %"compiler/eval:Machine", ptr %t704, i32 0, i32 58
  %t707 = load { i64, ptr }, ptr %t706, !tbaa !27
  store { i64, ptr } %t707, ptr %l399, !tbaa !27
  %t708 = load i64, ptr %l1, !tbaa !24
  %t710 = getelementptr { i64, ptr }, ptr %l399, i32 0, i32 1
  %t711 = load ptr, ptr %t710, !tbaa !27
  %t712 = getelementptr %"compiler/eval:frame", ptr %t711, i64 %t708
  %t713 = getelementptr %"compiler/eval:frame", ptr %t712, i32 0, i32 0
  %t714 = load i64, ptr %t713, !tbaa !24
  %t716 = load i32, ptr %l3, !tbaa !23
  %t718 = sext i32 %t716 to i64
  %t720 = getelementptr %"compiler/eval:Ptr", ptr %l13, i32 0, i32 0
  %t721 = load i64, ptr %t720, !tbaa !24
  %t725 = getelementptr %"compiler/eval:task", ptr %l54, i32 0, i32 0
  store i64 %t714, ptr %t725, !tbaa !24
  %t728 = getelementptr %"compiler/eval:task", ptr %l54, i32 0, i32 1
  store i64 %t718, ptr %t728, !tbaa !24
  %t731 = getelementptr %"compiler/eval:task", ptr %l54, i32 0, i32 2
  store i64 %t721, ptr %t731, !tbaa !24
  %t734 = getelementptr %"compiler/eval:task", ptr %l54, i32 0, i32 3
  store i64 -1, ptr %t734, !tbaa !24
  %t735 = load ptr, ptr %l0, !tbaa !29
  %t737 = getelementptr %"compiler/eval:Machine", ptr %t735, i32 0, i32 56
  %t738 = load i64, ptr %l53, !tbaa !24
  %t739 = load %"compiler/eval:task", ptr %l54
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eSetAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t737, i64 %t738, %"compiler/eval:task" %t739)
  br label %bb117
bb117:
  %t743 = load i64, ptr %l6, !tbaa !24
  %t744 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t747 = and i64 %t743, %t744
  store i64 %t747, ptr %l59, !tbaa !24
  %t749 = load ptr, ptr %l0, !tbaa !29
  %t751 = getelementptr %"compiler/eval:Machine", ptr %t749, i32 0, i32 52
  %t752 = load i64, ptr %l59, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t753, ptr %v0, ptr %t751, i64 %t752)
  call void @llvm.memmove.p0.p0.i64(ptr %l419, ptr %t753, i64 152, i1 false)
  br label %bb118
bb118:
  %t756 = getelementptr %"compiler/eval:scope", ptr %l419, i32 0, i32 11
  %t757 = load i64, ptr %t756, !tbaa !24
  %t759 = icmp sge i64 %t757, 0
  br i1 %t759, label %bb119, label %bb120
bb119:
  %t761 = load ptr, ptr %l0, !tbaa !29
  %t763 = getelementptr %"compiler/eval:Machine", ptr %t761, i32 0, i32 52
  %t764 = load i64, ptr %l59, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t765, ptr %v0, ptr %t763, i64 %t764)
  call void @llvm.memmove.p0.p0.i64(ptr %l425, ptr %t765, i64 152, i1 false)
  br label %bb121
bb120:
  %t768 = load i64, ptr %l59, !tbaa !24
  %t770 = load ptr, ptr %l0, !tbaa !29
  %t772 = getelementptr %"compiler/eval:Machine", ptr %t770, i32 0, i32 52
  %t776 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t772, i64 %t768)
  store ptr %t776, ptr %l437
  br label %bb123
bb121:
  %t777 = getelementptr %"compiler/eval:scope", ptr %l425, i32 0, i32 11
  %t778 = load i64, ptr %t777, !tbaa !24
  %t780 = load ptr, ptr %l0, !tbaa !29
  %t782 = getelementptr %"compiler/eval:Machine", ptr %t780, i32 0, i32 56
  %t786 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eRefMut_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %v0, ptr %t782, i64 %t778)
  store ptr %t786, ptr %l430
  br label %bb122
bb122:
  %t787 = load ptr, ptr %l430, !tbaa !29
  %t789 = load i64, ptr %l53, !tbaa !24
  %t792 = getelementptr %"compiler/eval:task", ptr %t787, i32 0, i32 3
  store i64 %t789, ptr %t792, !tbaa !24
  br label %bb124
bb123:
  %t793 = load ptr, ptr %l437, !tbaa !29
  %t795 = load i64, ptr %l53, !tbaa !24
  %t798 = getelementptr %"compiler/eval:scope", ptr %t793, i32 0, i32 10
  store i64 %t795, ptr %t798, !tbaa !24
  br label %bb124
bb124:
  %t799 = load i64, ptr %l59, !tbaa !24
  %t801 = load ptr, ptr %l0, !tbaa !29
  %t803 = getelementptr %"compiler/eval:Machine", ptr %t801, i32 0, i32 52
  %t807 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t803, i64 %t799)
  store ptr %t807, ptr %l444
  br label %bb125
bb125:
  %t808 = load ptr, ptr %l444, !tbaa !29
  %t810 = load i64, ptr %l53, !tbaa !24
  %t813 = getelementptr %"compiler/eval:scope", ptr %t808, i32 0, i32 11
  store i64 %t810, ptr %t813, !tbaa !24
  call void @__olang_scope_close(ptr %s0)
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 42
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %t3, i64 %t4)
  store %"compiler/eval:global" %t7, ptr %l12
  br label %bb1
bb1:
  %t8 = getelementptr %"compiler/eval:global", ptr %l12, i32 0, i32 2
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/eval:Machine", ptr %t11, i32 0, i32 30
  store ptr %t13, ptr %l16, !tbaa !29
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 31
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
  %t37 = getelementptr %"compiler/eval:Machine", ptr %t35, i32 0, i32 23
  %t38 = load i1, ptr %t37, !tbaa !21
  store i1 %t38, ptr %l4, !tbaa !21
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 23
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
  %t61 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 23
  store i1 %t58, ptr %t61, !tbaa !21
  br label %ret
bb10:
  br label %bb11
bb11:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/eval:Machine", ptr %t62, i32 0, i32 58
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
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 58
  %t77 = load { i64, ptr }, ptr %t76, !tbaa !27
  store { i64, ptr } %t77, ptr %l42, !tbaa !27
  %t78 = load i64, ptr %l5, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Machine", ptr %t79, i32 0, i32 73
  %t82 = load i64, ptr %t81, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l42, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr %"compiler/eval:frame", ptr %t86, i64 %t78
  %t88 = getelementptr %"compiler/eval:frame", ptr %t87, i32 0, i32 14
  store i64 %t82, ptr %t88, !tbaa !24
  %t89 = load ptr, ptr %l0, !tbaa !29
  %t90 = load i64, ptr %l1, !tbaa !24
  %t93 = getelementptr %"compiler/eval:Machine", ptr %t89, i32 0, i32 73
  store i64 %t90, ptr %t93, !tbaa !24
  %t94 = load i64, ptr %l1, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/eval:Machine", ptr %t96, i32 0, i32 42
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

define dso_local i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eswitchTo(ptr %v0, ptr %a0, i64 %a1, i64 %a2, { i64, [4 x i64] } %a3, %"compiler/mir:Range" %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca { i64, [4 x i64] }
  %l4 = alloca %"compiler/mir:Range"
  %l6 = alloca i64
  %l7 = alloca i32
  %l8 = alloca i32
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, i64 }
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca i32
  %l18 = alloca %"compiler/mir:Case"
  %l22 = alloca i64
  %l27 = alloca i32
  %l30 = alloca i64
  %l33 = alloca i1
  %l36 = alloca i64
  %l39 = alloca i64
  %l42 = alloca i64
  %l43 = alloca i64
  %l44 = alloca ptr
  %l47 = alloca i64
  %l48 = alloca i64
  %l51 = alloca i64
  %l57 = alloca { i64, i64 }
  %l63 = alloca i32
  %l66 = alloca i32
  %l85 = alloca { i64, ptr }
  %l87 = alloca { i64, ptr }
  %l100 = alloca i1
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store { i64, [4 x i64] } %a3, ptr %l3
  store %"compiler/mir:Range" %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t3 = load { i64, [4 x i64] }, ptr %l3
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t1, i64 %t2, { i64, [4 x i64] } %t3)
  store i64 %t7, ptr %l22
  br label %bb1
bb1:
  %t8 = load i64, ptr %l22, !tbaa !24
  store i64 %t8, ptr %l6, !tbaa !24
  store i32 %a5, ptr %l7, !tbaa !23
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t12 = load i64, ptr %l1, !tbaa !24
  %t13 = load { i64, [4 x i64] }, ptr %l3
  %t17 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t11, i64 %t12, { i64, [4 x i64] } %t13)
  store i32 %t17, ptr %l27
  br label %bb2
bb2:
  %t18 = load i32, ptr %l27, !tbaa !23
  store i32 %t18, ptr %l8, !tbaa !23
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i32, ptr %l8, !tbaa !23
  %t23 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t19, i32 %t20)
  store i64 %t23, ptr %l30
  br label %bb3
bb3:
  %t24 = load i64, ptr @G_2ecompiler_2feval_2evInt, !tbaa !24
  %t25 = load i64, ptr %l30, !tbaa !24
  %t27 = icmp eq i64 %t25, %t24
  br i1 %t27, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l33, !tbaa !21
  br label %bb7
bb5:
  %t29 = load ptr, ptr %l0, !tbaa !29
  %t30 = load i32, ptr %l8, !tbaa !23
  %t33 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t29, i32 %t30)
  store i64 %t33, ptr %l36
  br label %bb6
bb6:
  %t34 = load i64, ptr @G_2ecompiler_2feval_2evUint, !tbaa !24
  %t35 = load i64, ptr %l36, !tbaa !24
  %t37 = icmp eq i64 %t35, %t34
  store i1 %t37, ptr %l33, !tbaa !21
  br label %bb7
bb7:
  %t39 = load i1, ptr %l33, !tbaa !21
  br i1 %t39, label %bb8, label %bb9
bb8:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load i32, ptr %l8, !tbaa !23
  %t44 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t40, i32 %t41)
  store i64 %t44, ptr %l42
  br label %bb10
bb9:
  %t45 = load ptr, ptr %l0, !tbaa !29
  store ptr %t45, ptr %l44, !tbaa !29
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i32, ptr %l8, !tbaa !23
  %t50 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t46, i32 %t47)
  store i64 %t50, ptr %l47
  br label %bb12
bb10:
  %t51 = load i64, ptr %l42, !tbaa !24
  %t52 = call i64 @compiler_2feval_2ebmask(i64 %t51)
  store i64 %t52, ptr %l43
  br label %bb11
bb11:
  %t53 = load i64, ptr %l43, !tbaa !24
  store i64 %t53, ptr %l39, !tbaa !24
  br label %bb14
bb12:
  %t54 = load ptr, ptr %l44, !tbaa !29
  %t55 = load i64, ptr %l47, !tbaa !24
  %t56 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t54, i64 %t55)
  store i64 %t56, ptr %l48
  br label %bb13
bb13:
  %t57 = load i64, ptr %l48, !tbaa !24
  store i64 %t57, ptr %l39, !tbaa !24
  br label %bb14
bb14:
  %t58 = load i64, ptr %l39, !tbaa !24
  store i64 %t58, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = load i32, ptr %l8, !tbaa !23
  %t63 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t59, i32 %t60)
  store i64 %t63, ptr %l51
  br label %bb15
bb15:
  %t64 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t65 = load i64, ptr %l51, !tbaa !24
  %t67 = icmp eq i64 %t65, %t64
  br i1 %t67, label %bb16, label %bb17
bb16:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load i64, ptr %l1, !tbaa !24
  %t71 = load { i64, [4 x i64] }, ptr %l3
  %t75 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t69, i64 %t70, { i64, [4 x i64] } %t71)
  store { i64, i64 } %t75, ptr %l57
  br label %bb18
bb17:
  br label %bb19
bb18:
  %t76 = load { i64, i64 }, ptr %l57
  store { i64, i64 } %t76, ptr %l11
  %t77 = getelementptr { i64, i64 }, ptr %l11, i32 0, i32 1
  %t78 = load i64, ptr %t77, !tbaa !24
  store i64 %t78, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  store i32 0, ptr %l12, !tbaa !23
  %t80 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 1
  %t81 = load i32, ptr %t80, !tbaa !23
  store i32 %t81, ptr %l13, !tbaa !23
  store i32 1, ptr %l14, !tbaa !23
  %t83 = load i32, ptr %l13, !tbaa !23
  %t84 = load i32, ptr %l12, !tbaa !23
  %t87 = icmp sgt i32 %t83, %t84
  br i1 %t87, label %bb20, label %bb21
bb20:
  %t89 = load i32, ptr %l14, !tbaa !23
  %t91 = icmp sgt i32 %t89, 0
  br i1 %t91, label %bb22, label %bb23
bb21:
  store i32 0, ptr %l63, !tbaa !23
  br label %bb25
bb22:
  %t93 = load i32, ptr %l13, !tbaa !23
  %t94 = load i32, ptr %l12, !tbaa !23
  %t97 = sub i32 %t93, %t94
  %t98 = load i32, ptr %l14, !tbaa !23
  %t101 = add i32 %t97, %t98
  %t103 = sub i32 %t101, 1
  %t104 = load i32, ptr %l14, !tbaa !23
  %t107 = sdiv i32 %t103, %t104
  store i32 %t107, ptr %l66, !tbaa !23
  br label %bb24
bb23:
  store i32 0, ptr %l66, !tbaa !23
  br label %bb24
bb24:
  %t109 = load i32, ptr %l66, !tbaa !23
  store i32 %t109, ptr %l63, !tbaa !23
  br label %bb25
bb25:
  %t110 = load i32, ptr %l63, !tbaa !23
  store i32 %t110, ptr %l15, !tbaa !23
  store i32 0, ptr %l16, !tbaa !23
  br label %bb26
bb26:
  %t111 = load i32, ptr %l16, !tbaa !23
  %t112 = load i32, ptr %l15, !tbaa !23
  %t115 = icmp slt i32 %t111, %t112
  %t117 = xor i1 %t115, true
  br i1 %t117, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t119 = load i32, ptr %l12, !tbaa !23
  %t120 = load i32, ptr %l16, !tbaa !23
  %t121 = load i32, ptr %l14, !tbaa !23
  %t124 = mul i32 %t120, %t121
  %t127 = add i32 %t119, %t124
  %t129 = load ptr, ptr %l0, !tbaa !29
  %t131 = getelementptr %"compiler/eval:Machine", ptr %t129, i32 0, i32 26
  %t132 = load { i64, ptr }, ptr %t131, !tbaa !27
  store { i64, ptr } %t132, ptr %l85, !tbaa !27
  %t135 = getelementptr { i64, ptr }, ptr %l85, i32 0, i32 1
  %t136 = load ptr, ptr %t135, !tbaa !27
  %t137 = getelementptr %"compiler/eval:cfn", ptr %t136, i64 %a2
  %t138 = getelementptr %"compiler/eval:cfn", ptr %t137, i32 0, i32 6
  %t139 = load { i64, ptr }, ptr %t138, !tbaa !27
  store { i64, ptr } %t139, ptr %l87, !tbaa !27
  %t140 = getelementptr %"compiler/mir:Range", ptr %l4, i32 0, i32 0
  %t141 = load i32, ptr %t140, !tbaa !23
  %t143 = sext i32 %t141 to i64
  %t146 = sext i32 %t127 to i64
  %t149 = add i64 %t143, %t146
  %t151 = getelementptr { i64, ptr }, ptr %l87, i32 0, i32 1
  %t152 = load ptr, ptr %t151, !tbaa !27
  %t153 = getelementptr %"compiler/mir:Case", ptr %t152, i64 %t149
  %t154 = load %"compiler/mir:Case", ptr %t153
  store %"compiler/mir:Case" %t154, ptr %l18
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i32, ptr %l8, !tbaa !23
  %t158 = getelementptr %"compiler/mir:Case", ptr %l18, i32 0, i32 0
  %t159 = load i64, ptr %t158, !tbaa !24
  %t160 = load i64, ptr %l6, !tbaa !24
  %t161 = load i64, ptr %l10, !tbaa !24
  %t162 = load i64, ptr %l9, !tbaa !24
  %t169 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecaseHolds(ptr %v0, ptr %t156, i32 %t157, i64 %t159, i64 %t160, i64 %t161, i64 %t162)
  store i1 %t169, ptr %l100
  br label %bb30
bb30:
  %t170 = load i1, ptr %l100, !tbaa !21
  br i1 %t170, label %bb31, label %bb32
bb31:
  %t171 = getelementptr %"compiler/mir:Case", ptr %l18, i32 0, i32 1
  %t172 = load i32, ptr %t171, !tbaa !23
  store i32 %t172, ptr %l7, !tbaa !23
  br label %bb33
bb32:
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t174 = load i32, ptr %l16, !tbaa !23
  %t176 = add i32 %t174, 1
  store i32 %t176, ptr %l16, !tbaa !23
  br label %bb26
bb35:
  %t178 = load i32, ptr %l7, !tbaa !23
  store i32 %t178, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskEnded(ptr %v0, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/eval:frame"
  %l2 = alloca i64
  %l3 = alloca %"compiler/eval:task"
  %l4 = alloca ptr
  %l5 = alloca %"compiler/mir:Task"
  %l6 = alloca i64
  %l7 = alloca { i64, [7 x i64] }
  %l8 = alloca i32
  %l9 = alloca { i64, [4 x i64] }
  %l11 = alloca i32
  %l12 = alloca { i64, ptr }
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i32
  %l16 = alloca { { i64, ptr }, i64 }
  %l17 = alloca i64
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca i32
  %l22 = alloca i32
  %l23 = alloca i32
  %l24 = alloca %"compiler/mir:TaskClause"
  %l25 = alloca i1
  %l26 = alloca i32
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca i32
  %l30 = alloca i32
  %l32 = alloca %"compiler/typed:Item"
  %l33 = alloca %"compiler/eval:Ptr"
  %l34 = alloca %"compiler/eval:Ptr"
  %l35 = alloca %"compiler/eval:Ptr"
  %l36 = alloca i64
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca ptr
  %l41 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i64
  %l45 = alloca i64
  %l46 = alloca i64
  %l47 = alloca i64
  %l49 = alloca { i64, [4 x i64] }
  %l50 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i64
  %l55 = alloca i64
  %l56 = alloca { i64, [4 x i64] }
  %l57 = alloca i64
  %l59 = alloca { i64, [8 x i64] }
  %l60 = alloca i32
  %l62 = alloca i64
  %l63 = alloca i64
  %l64 = alloca i64
  %l67 = alloca i64
  %l77 = alloca %"compiler/eval:task"
  %l81 = alloca ptr
  %l85 = alloca %"compiler/mir:Task"
  %l90 = alloca i32
  %l105 = alloca ptr
  %l109 = alloca i32
  %l110 = alloca i32
  %l114 = alloca i32
  %l118 = alloca { i64, ptr }
  %l126 = alloca i1
  %l131 = alloca i32
  %l132 = alloca { i64, ptr }
  %l140 = alloca { { i64, ptr }, i64 }
  %l146 = alloca i32
  %l149 = alloca i32
  %l174 = alloca %"compiler/mir:TaskClause"
  %l180 = alloca i32
  %l183 = alloca i32
  %l208 = alloca %"compiler/typed:Item"
  %l213 = alloca i1
  %l214 = alloca i1
  %l217 = alloca i1
  %l241 = alloca %"compiler/eval:Ptr"
  %l244 = alloca %"compiler/eval:Ptr"
  %l245 = alloca ptr
  %l249 = alloca %"compiler/eval:Ptr"
  %l250 = alloca %"compiler/eval:Ptr"
  %l253 = alloca i1
  %l255 = alloca { i64, ptr }
  %l264 = alloca i64
  %l266 = alloca ptr
  %l270 = alloca { i64, ptr }
  %l275 = alloca { i64, [2 x i64] }
  %l276 = alloca i64
  %l277 = alloca i32
  %l284 = alloca i64
  %l290 = alloca ptr
  %l293 = alloca i64
  %l295 = alloca i64
  %l300 = alloca { i64, [1 x i64] }
  %l311 = alloca i64
  %l314 = alloca i64
  %l333 = alloca { i64, ptr }
  %l335 = alloca { i64, ptr }
  %l359 = alloca i64
  %l362 = alloca i64
  %l386 = alloca { i64, [4 x i64] }
  %l400 = alloca { i64, [4 x i64] }
  %l420 = alloca ptr
  %l424 = alloca { i64, ptr }
  %l427 = alloca %"compiler/mir:BasicBlock"
  %l429 = alloca %"compiler/mir:BasicBlock"
  %l435 = alloca { i64, ptr }
  %l437 = alloca { i64, ptr }
  %l450 = alloca %"compiler/eval:scope"
  %l454 = alloca ptr
  %l455 = alloca i64
  %l456 = alloca i32
  %l460 = alloca %"compiler/eval:scope"
  %l464 = alloca i64
  %l468 = alloca ptr
  %l476 = alloca ptr
  %s0 = alloca %olang.scope
  %s5 = alloca %olang.scope
  %t630 = alloca { i64, [4 x i64] }, align 8
  %t752 = alloca { i64, [5 x i64] }, align 8
  %t854 = alloca %"compiler/eval:scope", align 8
  %t872 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  call void @llvm.memmove.p0.p0.i64(ptr %l1, ptr %a1, i64 136, i1 false)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 12
  %t2 = load i1, ptr %t1, !tbaa !21
  %t4 = xor i1 %t2, true
  br i1 %t4, label %bb1, label %bb2
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t8 = load i64, ptr %t7, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %t6, i64 %t8)
  br label %bb3
bb2:
  br label %bb4
bb3:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb4:
  %t11 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 8
  %t12 = load i64, ptr %t11, !tbaa !24
  store i64 %t12, ptr %l2, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/eval:Machine", ptr %t14, i32 0, i32 56
  %t17 = load i64, ptr %l2, !tbaa !24
  %t20 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t16, i64 %t17)
  store %"compiler/eval:task" %t20, ptr %l77
  br label %bb5
bb5:
  %t21 = load %"compiler/eval:task", ptr %l77
  store %"compiler/eval:task" %t21, ptr %l3
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/eval:Machine", ptr %t22, i32 0, i32 25
  %t25 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 0
  %t26 = load i64, ptr %t25, !tbaa !24
  %t29 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t24, i64 %t26)
  store ptr %t29, ptr %l81
  br label %bb6
bb6:
  %t30 = load ptr, ptr %l81, !tbaa !29
  store ptr %t30, ptr %l4, !tbaa !29
  %t31 = load ptr, ptr %l4, !tbaa !29
  %t33 = getelementptr %"compiler/mir:Fn", ptr %t31, i32 0, i32 16
  %t34 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 1
  %t35 = load i64, ptr %t34, !tbaa !24
  %t38 = call %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %t33, i64 %t35)
  store %"compiler/mir:Task" %t38, ptr %l85
  br label %bb7
bb7:
  %t39 = load %"compiler/mir:Task", ptr %l85
  store %"compiler/mir:Task" %t39, ptr %l5
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/eval:Machine", ptr %t40, i32 0, i32 59
  %t43 = load i64, ptr %t42, !tbaa !24
  %t45 = sub i64 %t43, 1
  store i64 %t45, ptr %l6, !tbaa !24
  %t47 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 0
  %t48 = load { i64, [7 x i64] }, ptr %t47
  store { i64, [7 x i64] } %t48, ptr %l7
  %t50 = load { i64, [7 x i64] }, ptr %l7
  %t52 = extractvalue { i64, [7 x i64] } %t50, 0
  %t53 = icmp eq i64 %t52, 0
  br i1 %t53, label %bb8, label %bb9
bb8:
  %t55 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t56 = getelementptr { { i64, [2 x i64] }, i32 }, ptr %t55, i32 0, i32 1
  %t57 = load i32, ptr %t56
  store i32 %t57, ptr %l8, !tbaa !23
  br label %bb14
bb9:
  %t59 = load { i64, [7 x i64] }, ptr %l7
  %t61 = extractvalue { i64, [7 x i64] } %t59, 0
  %t62 = icmp eq i64 %t61, 1
  br i1 %t62, label %bb10, label %bb11
bb10:
  %t64 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t65 = getelementptr { i64, i32 }, ptr %t64, i32 0, i32 1
  %t66 = load i32, ptr %t65
  store i32 %t66, ptr %l8, !tbaa !23
  br label %bb14
bb11:
  %t68 = load { i64, [7 x i64] }, ptr %l7
  %t70 = extractvalue { i64, [7 x i64] } %t68, 0
  %t71 = icmp eq i64 %t70, 3
  br i1 %t71, label %bb12, label %bb13
bb12:
  %t73 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t74 = getelementptr { { i64, [4 x i64] }, i64, i32 }, ptr %t73, i32 0, i32 2
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l8, !tbaa !23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t77 = load i32, ptr %l8, !tbaa !23
  store i32 %t77, ptr %l90, !tbaa !23
  br label %bb22
bb15:
  %t79 = load { i64, [7 x i64] }, ptr %l7
  %t81 = extractvalue { i64, [7 x i64] } %t79, 0
  %t82 = icmp eq i64 %t81, 2
  br i1 %t82, label %bb16, label %bb17
bb16:
  %t84 = getelementptr { i64, [7 x i64] }, ptr %l7, i32 0, i32 1
  %t85 = getelementptr { { i64, [4 x i64] } }, ptr %t84, i32 0, i32 0
  %t86 = load { i64, [4 x i64] }, ptr %t85
  store { i64, [4 x i64] } %t86, ptr %l9
  br label %bb18
bb17:
  br label %bb21
bb18:
  %t88 = load ptr, ptr %l0, !tbaa !29
  %t90 = getelementptr %"compiler/eval:Machine", ptr %t88, i32 0, i32 0
  %t91 = load ptr, ptr %t90, !tbaa !29
  store ptr %t91, ptr %l105, !tbaa !29
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t93 = load i64, ptr %l6, !tbaa !24
  %t94 = load { i64, [4 x i64] }, ptr %l9
  %t98 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t92, i64 %t93, { i64, [4 x i64] } %t94)
  store i32 %t98, ptr %l109
  br label %bb19
bb19:
  %t99 = load ptr, ptr %l105, !tbaa !29
  %t100 = load i32, ptr %l109, !tbaa !23
  %t101 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t99, i32 %t100)
  store i32 %t101, ptr %l110
  br label %bb20
bb20:
  %t102 = load i32, ptr %l110, !tbaa !23
  store i32 %t102, ptr %l90, !tbaa !23
  br label %bb22
bb21:
  call void @__olang_check_failed(ptr @olang_loc_da2497658df77092_f2a1f3138ef6e43e)
  unreachable
bb22:
  %t103 = load i32, ptr %l90, !tbaa !23
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t106 = getelementptr %"compiler/eval:Machine", ptr %t104, i32 0, i32 0
  %t107 = load ptr, ptr %t106, !tbaa !29
  %t111 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %t107, i32 %t103)
  store i32 %t111, ptr %l114
  br label %bb23
bb23:
  %t112 = load i32, ptr %l114, !tbaa !23
  store i32 %t112, ptr %l11, !tbaa !23
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t115 = getelementptr %"compiler/eval:Machine", ptr %t113, i32 0, i32 0
  %t116 = load ptr, ptr %t115, !tbaa !29
  %t117 = load i32, ptr %l11, !tbaa !23
  %t120 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t116, i32 %t117)
  store { i64, ptr } %t120, ptr %l118
  br label %bb24
bb24:
  %t121 = load { i64, ptr }, ptr %l118, !tbaa !27
  store { i64, ptr } %t121, ptr %l12, !tbaa !27
  %t122 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t123 = load i64, ptr %t122, !tbaa !24
  %t125 = ashr i64 %t123, 16
  %t127 = sub i64 %t125, 1
  store i64 %t127, ptr %l13, !tbaa !24
  %t129 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t130 = load i64, ptr %t129, !tbaa !24
  %t132 = and i64 %t130, 65535
  store i64 %t132, ptr %l14, !tbaa !24
  %t134 = load i64, ptr %l13, !tbaa !24
  %t136 = icmp sge i64 %t134, 0
  br i1 %t136, label %bb25, label %bb26
bb25:
  %t138 = load i64, ptr %l13, !tbaa !24
  %t139 = load { i64, ptr }, ptr %l12, !tbaa !27
  %t141 = extractvalue { i64, ptr } %t139, 0
  %t144 = icmp slt i64 %t138, %t141
  store i1 %t144, ptr %l126, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l126, !tbaa !21
  br label %bb27
bb27:
  %t146 = load i1, ptr %l126, !tbaa !21
  br i1 %t146, label %bb28, label %bb29
bb28:
  %t147 = load { i64, ptr }, ptr %l12, !tbaa !27
  store { i64, ptr } %t147, ptr %l132, !tbaa !27
  %t148 = load i64, ptr %l13, !tbaa !24
  %t150 = getelementptr { i64, ptr }, ptr %l132, i32 0, i32 1
  %t151 = load ptr, ptr %t150, !tbaa !27
  %t152 = getelementptr i32, ptr %t151, i64 %t148
  %t153 = load i32, ptr %t152, !tbaa !33
  store i32 %t153, ptr %l131, !tbaa !23
  br label %bb30
bb29:
  %t155 = load i32, ptr @G_2ecompiler_2ftypes_2eDefaultErrT, !tbaa !23
  store i32 %t155, ptr %l131, !tbaa !23
  br label %bb30
bb30:
  %t157 = load i32, ptr %l131, !tbaa !23
  store i32 %t157, ptr %l15, !tbaa !23
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t159 = load ptr, ptr %l4, !tbaa !29
  %t160 = load %"compiler/mir:Task", ptr %l5
  %t161 = load i64, ptr %l6, !tbaa !24
  %t166 = call { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v0, ptr %s0, ptr %t158, ptr %t159, %"compiler/mir:Task" %t160, i64 %t161)
  store { { i64, ptr }, i64 } %t166, ptr %l140
  br label %bb31
bb31:
  %t167 = load { { i64, ptr }, i64 }, ptr %l140
  store { { i64, ptr }, i64 } %t167, ptr %l16
  %t168 = getelementptr { { i64, ptr }, i64 }, ptr %l16, i32 0, i32 1
  %t169 = load i64, ptr %t168, !tbaa !24
  store i64 %t169, ptr %l17, !tbaa !24
  store i32 0, ptr %l18, !tbaa !23
  %t171 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 4
  %t172 = getelementptr %"compiler/mir:Range", ptr %t171, i32 0, i32 1
  %t173 = load i32, ptr %t172, !tbaa !23
  store i32 %t173, ptr %l19, !tbaa !23
  store i32 1, ptr %l20, !tbaa !23
  %t175 = load i32, ptr %l19, !tbaa !23
  %t176 = load i32, ptr %l18, !tbaa !23
  %t179 = icmp sgt i32 %t175, %t176
  br i1 %t179, label %bb32, label %bb33
bb32:
  %t181 = load i32, ptr %l20, !tbaa !23
  %t183 = icmp sgt i32 %t181, 0
  br i1 %t183, label %bb34, label %bb35
bb33:
  store i32 0, ptr %l146, !tbaa !23
  br label %bb37
bb34:
  %t185 = load i32, ptr %l19, !tbaa !23
  %t186 = load i32, ptr %l18, !tbaa !23
  %t189 = sub i32 %t185, %t186
  %t190 = load i32, ptr %l20, !tbaa !23
  %t193 = add i32 %t189, %t190
  %t195 = sub i32 %t193, 1
  %t196 = load i32, ptr %l20, !tbaa !23
  %t199 = sdiv i32 %t195, %t196
  store i32 %t199, ptr %l149, !tbaa !23
  br label %bb36
bb35:
  store i32 0, ptr %l149, !tbaa !23
  br label %bb36
bb36:
  %t201 = load i32, ptr %l149, !tbaa !23
  store i32 %t201, ptr %l146, !tbaa !23
  br label %bb37
bb37:
  %t202 = load i32, ptr %l146, !tbaa !23
  store i32 %t202, ptr %l21, !tbaa !23
  store i32 0, ptr %l22, !tbaa !23
  br label %bb38
bb38:
  store %olang.scope zeroinitializer, ptr %s5
  %t203 = load i32, ptr %l22, !tbaa !23
  %t204 = load i32, ptr %l21, !tbaa !23
  %t207 = icmp slt i32 %t203, %t204
  %t209 = xor i1 %t207, true
  br i1 %t209, label %bb39, label %bb40
bb39:
  call void @__olang_scope_close(ptr %s5)
  br label %bb127
bb40:
  br label %bb41
bb41:
  %t211 = load i32, ptr %l18, !tbaa !23
  %t212 = load i32, ptr %l22, !tbaa !23
  %t213 = load i32, ptr %l20, !tbaa !23
  %t216 = mul i32 %t212, %t213
  %t219 = add i32 %t211, %t216
  store i32 %t219, ptr %l23, !tbaa !23
  %t221 = load ptr, ptr %l4, !tbaa !29
  %t223 = getelementptr %"compiler/mir:Fn", ptr %t221, i32 0, i32 17
  %t224 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 4
  %t225 = getelementptr %"compiler/mir:Range", ptr %t224, i32 0, i32 0
  %t226 = load i32, ptr %t225, !tbaa !23
  %t228 = sext i32 %t226 to i64
  %t229 = load i32, ptr %l23, !tbaa !23
  %t231 = sext i32 %t229 to i64
  %t234 = add i64 %t228, %t231
  %t237 = call %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %t223, i64 %t234)
  store %"compiler/mir:TaskClause" %t237, ptr %l174
  br label %bb42
bb42:
  %t238 = load %"compiler/mir:TaskClause", ptr %l174
  store %"compiler/mir:TaskClause" %t238, ptr %l24
  %t239 = getelementptr %"compiler/mir:TaskClause", ptr %l24, i32 0, i32 1
  %t240 = load i1, ptr %t239, !tbaa !21
  store i1 %t240, ptr %l25, !tbaa !21
  store i32 0, ptr %l26, !tbaa !23
  %t242 = getelementptr %"compiler/mir:TaskClause", ptr %l24, i32 0, i32 0
  %t243 = getelementptr %"compiler/mir:Range", ptr %t242, i32 0, i32 1
  %t244 = load i32, ptr %t243, !tbaa !23
  store i32 %t244, ptr %l27, !tbaa !23
  store i32 1, ptr %l28, !tbaa !23
  %t246 = load i32, ptr %l27, !tbaa !23
  %t247 = load i32, ptr %l26, !tbaa !23
  %t250 = icmp sgt i32 %t246, %t247
  br i1 %t250, label %bb43, label %bb44
bb43:
  %t252 = load i32, ptr %l28, !tbaa !23
  %t254 = icmp sgt i32 %t252, 0
  br i1 %t254, label %bb45, label %bb46
bb44:
  store i32 0, ptr %l180, !tbaa !23
  br label %bb48
bb45:
  %t256 = load i32, ptr %l27, !tbaa !23
  %t257 = load i32, ptr %l26, !tbaa !23
  %t260 = sub i32 %t256, %t257
  %t261 = load i32, ptr %l28, !tbaa !23
  %t264 = add i32 %t260, %t261
  %t266 = sub i32 %t264, 1
  %t267 = load i32, ptr %l28, !tbaa !23
  %t270 = sdiv i32 %t266, %t267
  store i32 %t270, ptr %l183, !tbaa !23
  br label %bb47
bb46:
  store i32 0, ptr %l183, !tbaa !23
  br label %bb47
bb47:
  %t272 = load i32, ptr %l183, !tbaa !23
  store i32 %t272, ptr %l180, !tbaa !23
  br label %bb48
bb48:
  %t273 = load i32, ptr %l180, !tbaa !23
  store i32 %t273, ptr %l29, !tbaa !23
  store i32 0, ptr %l30, !tbaa !23
  br label %bb49
bb49:
  %t274 = load i32, ptr %l30, !tbaa !23
  %t275 = load i32, ptr %l29, !tbaa !23
  %t278 = icmp slt i32 %t274, %t275
  %t280 = xor i1 %t278, true
  br i1 %t280, label %bb50, label %bb51
bb50:
  br label %bb65
bb51:
  br label %bb52
bb52:
  %t282 = load i32, ptr %l26, !tbaa !23
  %t283 = load i32, ptr %l30, !tbaa !23
  %t284 = load i32, ptr %l28, !tbaa !23
  %t287 = mul i32 %t283, %t284
  %t290 = add i32 %t282, %t287
  %t292 = load ptr, ptr %l4, !tbaa !29
  %t294 = getelementptr %"compiler/mir:Fn", ptr %t292, i32 0, i32 18
  %t295 = getelementptr %"compiler/mir:TaskClause", ptr %l24, i32 0, i32 0
  %t296 = getelementptr %"compiler/mir:Range", ptr %t295, i32 0, i32 0
  %t297 = load i32, ptr %t296, !tbaa !23
  %t299 = sext i32 %t297 to i64
  %t302 = sext i32 %t290 to i64
  %t305 = add i64 %t299, %t302
  %t308 = call %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %t294, i64 %t305)
  store %"compiler/typed:Item" %t308, ptr %l208
  br label %bb53
bb53:
  %t309 = load %"compiler/typed:Item", ptr %l208
  store %"compiler/typed:Item" %t309, ptr %l32
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/eval:Machine", ptr %t310, i32 0, i32 0
  %t313 = load ptr, ptr %t312, !tbaa !29
  %t314 = getelementptr %"compiler/typed:Item", ptr %l32, i32 0, i32 0
  %t315 = load i32, ptr %t314, !tbaa !23
  %t316 = load i32, ptr %l15, !tbaa !23
  %t320 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t313, i32 %t315, i32 %t316)
  store i1 %t320, ptr %l213
  br label %bb54
bb54:
  %t321 = load i1, ptr %l213, !tbaa !21
  br i1 %t321, label %bb55, label %bb56
bb55:
  %t322 = getelementptr %"compiler/typed:Item", ptr %l32, i32 0, i32 1
  %t323 = load i64, ptr %t322, !tbaa !24
  %t325 = icmp slt i64 %t323, 0
  br i1 %t325, label %bb57, label %bb58
bb56:
  store i1 false, ptr %l214, !tbaa !21
  br label %bb60
bb57:
  store i1 true, ptr %l217, !tbaa !21
  br label %bb59
bb58:
  %t327 = getelementptr %"compiler/typed:Item", ptr %l32, i32 0, i32 1
  %t328 = load i64, ptr %t327, !tbaa !24
  %t329 = load i64, ptr %l14, !tbaa !24
  %t332 = icmp eq i64 %t328, %t329
  store i1 %t332, ptr %l217, !tbaa !21
  br label %bb59
bb59:
  %t334 = load i1, ptr %l217, !tbaa !21
  store i1 %t334, ptr %l214, !tbaa !21
  br label %bb60
bb60:
  %t335 = load i1, ptr %l214, !tbaa !21
  br i1 %t335, label %bb61, label %bb62
bb61:
  store i1 true, ptr %l25, !tbaa !21
  br label %bb63
bb62:
  br label %bb63
bb63:
  br label %bb64
bb64:
  %t336 = load i32, ptr %l30, !tbaa !23
  %t338 = add i32 %t336, 1
  store i32 %t338, ptr %l30, !tbaa !23
  br label %bb49
bb65:
  %t340 = load i1, ptr %l25, !tbaa !21
  %t342 = xor i1 %t340, true
  br i1 %t342, label %bb66, label %bb67
bb66:
  call void @__olang_scope_close(ptr %s5)
  br label %bb126
bb67:
  br label %bb68
bb68:
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t346 = load i64, ptr %t345, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %t344, i64 %t346)
  br label %bb69
bb69:
  %t349 = getelementptr %"compiler/mir:TaskClause", ptr %l24, i32 0, i32 2
  %t350 = load { i64, [4 x i64] }, ptr %t349
  %t352 = extractvalue { i64, [4 x i64] } %t350, 0
  %t353 = icmp eq i64 %t352, 0
  br i1 %t353, label %bb70, label %bb71
bb70:
  %t355 = load ptr, ptr %l0, !tbaa !29
  %t356 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %t355, i64 %t356)
  br label %bb72
bb71:
  br label %bb73
bb72:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb73:
  %t359 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 2
  %t360 = load i64, ptr %t359, !tbaa !24
  %t361 = load i64, ptr %l17, !tbaa !24
  %t362 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 3
  %t363 = getelementptr %"compiler/mir:Range", ptr %t362, i32 0, i32 1
  %t364 = load i32, ptr %t363, !tbaa !23
  %t366 = sext i32 %t364 to i64
  %t368 = mul i64 8, %t366
  %t371 = add i64 %t361, %t368
  %t372 = load i32, ptr %l23, !tbaa !23
  %t374 = mul i32 16, %t372
  %t376 = sext i32 %t374 to i64
  %t379 = add i64 %t371, %t376
  %t382 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t360, i64 %t379)
  store %"compiler/eval:Ptr" %t382, ptr %l241
  br label %bb74
bb74:
  %t383 = load %"compiler/eval:Ptr", ptr %l241
  store %"compiler/eval:Ptr" %t383, ptr %l33
  %t384 = load ptr, ptr %l0, !tbaa !29
  %t385 = load %"compiler/eval:Ptr", ptr %l33
  %t388 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t384, %"compiler/eval:Ptr" %t385)
  store %"compiler/eval:Ptr" %t388, ptr %l244
  br label %bb75
bb75:
  %t389 = load %"compiler/eval:Ptr", ptr %l244
  store %"compiler/eval:Ptr" %t389, ptr %l34
  %t390 = load ptr, ptr %l0, !tbaa !29
  store ptr %t390, ptr %l245, !tbaa !29
  %t391 = getelementptr %"compiler/eval:Ptr", ptr %l33, i32 0, i32 0
  %t392 = load i64, ptr %t391, !tbaa !24
  %t393 = getelementptr %"compiler/eval:Ptr", ptr %l33, i32 0, i32 1
  %t394 = load i64, ptr %t393, !tbaa !24
  %t396 = add i64 %t394, 8
  %t399 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t392, i64 %t396)
  store %"compiler/eval:Ptr" %t399, ptr %l249
  br label %bb76
bb76:
  %t400 = load ptr, ptr %l245, !tbaa !29
  %t401 = load %"compiler/eval:Ptr", ptr %l249
  %t402 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %t400, %"compiler/eval:Ptr" %t401)
  store %"compiler/eval:Ptr" %t402, ptr %l250
  br label %bb77
bb77:
  %t403 = load %"compiler/eval:Ptr", ptr %l250
  store %"compiler/eval:Ptr" %t403, ptr %l35
  %t404 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t405 = load i64, ptr %t404, !tbaa !24
  %t407 = icmp eq i64 %t405, 0
  br i1 %t407, label %bb78, label %bb79
bb78:
  store i1 true, ptr %l253, !tbaa !21
  br label %bb80
bb79:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/eval:Machine", ptr %t409, i32 0, i32 49
  %t412 = load { i64, ptr }, ptr %t411, !tbaa !27
  store { i64, ptr } %t412, ptr %l255, !tbaa !27
  %t413 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t414 = load i64, ptr %t413, !tbaa !24
  %t415 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t418 = and i64 %t414, %t415
  %t420 = getelementptr { i64, ptr }, ptr %l255, i32 0, i32 1
  %t421 = load ptr, ptr %t420, !tbaa !27
  %t422 = getelementptr %"compiler/eval:alloc", ptr %t421, i64 %t418
  %t423 = getelementptr %"compiler/eval:alloc", ptr %t422, i32 0, i32 4
  %t424 = load i64, ptr %t423, !tbaa !24
  %t425 = load i64, ptr @G_2ecompiler_2feval_2eaCode, !tbaa !24
  %t428 = icmp ne i64 %t424, %t425
  store i1 %t428, ptr %l253, !tbaa !21
  br label %bb80
bb80:
  %t430 = load i1, ptr %l253, !tbaa !21
  br i1 %t430, label %bb81, label %bb82
bb81:
  %t431 = load ptr, ptr %l0, !tbaa !29
  %t432 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNullCall, !tbaa !27
  %t433 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t433, ptr %t431, { i64, ptr } %t432)
  br label %bb83
bb82:
  br label %bb84
bb83:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb84:
  %t436 = load ptr, ptr %l0, !tbaa !29
  %t438 = getelementptr %"compiler/eval:Machine", ptr %t436, i32 0, i32 30
  store ptr %t438, ptr %l266, !tbaa !29
  %t439 = load ptr, ptr %l0, !tbaa !29
  %t441 = getelementptr %"compiler/eval:Machine", ptr %t439, i32 0, i32 31
  %t442 = load ptr, ptr %l0, !tbaa !29
  %t444 = getelementptr %"compiler/eval:Machine", ptr %t442, i32 0, i32 49
  %t445 = load { i64, ptr }, ptr %t444, !tbaa !27
  store { i64, ptr } %t445, ptr %l270, !tbaa !27
  %t446 = getelementptr %"compiler/eval:Ptr", ptr %l34, i32 0, i32 0
  %t447 = load i64, ptr %t446, !tbaa !24
  %t448 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t451 = and i64 %t447, %t448
  %t453 = getelementptr { i64, ptr }, ptr %l270, i32 0, i32 1
  %t454 = load ptr, ptr %t453, !tbaa !27
  %t455 = getelementptr %"compiler/eval:alloc", ptr %t454, i64 %t451
  %t456 = getelementptr %"compiler/eval:alloc", ptr %t455, i32 0, i32 14
  %t457 = load i64, ptr %t456, !tbaa !24
  %t460 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %t441, i64 %t457)
  store { i64, [2 x i64] } %t460, ptr %l275
  br label %bb85
bb85:
  %t461 = load ptr, ptr %l266, !tbaa !29
  %t462 = load { i64, [2 x i64] }, ptr %l275
  %t463 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %t461, { i64, [2 x i64] } %t462)
  %t464 = extractvalue { i32, i64 } %t463, 1
  %t465 = extractvalue { i32, i64 } %t463, 0
  store i32 %t465, ptr %l277
  %t466 = icmp ne i32 %t465, 0
  br i1 %t466, label %bb87, label %ok.467, !prof !99
ok.467:
  store i64 %t464, ptr %l276
  br label %bb86
bb86:
  %t468 = load i64, ptr %l276, !tbaa !24
  store i64 %t468, ptr %l264, !tbaa !24
  br label %bb90
bb87:
  br label %bb88
bb88:
  %t469 = load ptr, ptr %l0, !tbaa !29
  %t470 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoBody, !tbaa !27
  %t471 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t471, ptr %t469, { i64, ptr } %t470)
  br label %bb89
bb89:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb90:
  %t474 = load i64, ptr %l264, !tbaa !24
  store i64 %t474, ptr %l36, !tbaa !24
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t476 = load i64, ptr %l36, !tbaa !24
  %t477 = load i64, ptr @G_2ecompiler_2feval_2erClause, !tbaa !24
  %t478 = load i64, ptr %l2, !tbaa !24
  %t483 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %t475, i64 %t476, i64 %t477, i64 %t478)
  store i64 %t483, ptr %l284
  br label %bb91
bb91:
  %t484 = load i64, ptr %l284, !tbaa !24
  store i64 %t484, ptr %l37, !tbaa !24
  %t485 = load i64, ptr %l37, !tbaa !24
  %t487 = icmp slt i64 %t485, 0
  br i1 %t487, label %bb92, label %bb93
bb92:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb93:
  br label %bb94
bb94:
  %t489 = load ptr, ptr %l0, !tbaa !29
  %t491 = getelementptr %"compiler/eval:Machine", ptr %t489, i32 0, i32 25
  %t492 = load i64, ptr %l36, !tbaa !24
  %t495 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v0, ptr %t491, i64 %t492)
  store ptr %t495, ptr %l290
  br label %bb95
bb95:
  %t496 = load ptr, ptr %l290, !tbaa !29
  store ptr %t496, ptr %l38, !tbaa !29
  store i64 0, ptr %l39, !tbaa !24
  %t497 = load ptr, ptr %l38, !tbaa !29
  %t499 = getelementptr %"compiler/mir:Fn", ptr %t497, i32 0, i32 6
  store ptr %t499, ptr %l40, !tbaa !29
  store i64 0, ptr %l41, !tbaa !24
  br label %bb96
bb96:
  %t501 = load i64, ptr %l41, !tbaa !24
  store i64 %t501, ptr %l293, !tbaa !24
  %t502 = load ptr, ptr %l40, !tbaa !29
  %t504 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t502)
  store i64 %t504, ptr %l295
  br label %bb97
bb97:
  %t505 = load i64, ptr %l293, !tbaa !24
  %t506 = load i64, ptr %l295, !tbaa !24
  %t507 = icmp slt i64 %t505, %t506
  %t509 = xor i1 %t507, true
  br i1 %t509, label %bb98, label %bb99
bb98:
  br label %bb112
bb99:
  br label %bb100
bb100:
  %t511 = load ptr, ptr %l40, !tbaa !29
  %t512 = load i64, ptr %l41, !tbaa !24
  %t515 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %t511, i64 %t512)
  store { i64, [1 x i64] } %t515, ptr %l300
  br label %bb101
bb101:
  %t516 = load { i64, [1 x i64] }, ptr %l300
  %t519 = extractvalue { i64, [1 x i64] } %t516, 0
  %t520 = icmp eq i64 %t519, 4
  br i1 %t520, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb105
bb104:
  br label %bb110
bb105:
  br i1 true, label %bb106, label %bb107
bb106:
  br label %bb108
bb107:
  br label %bb109
bb108:
  %t522 = load i64, ptr %l39, !tbaa !24
  %t524 = add i64 %t522, 1
  store i64 %t524, ptr %l39, !tbaa !24
  br label %bb110
bb109:
  call void @__olang_check_failed(ptr @olang_loc_1763d3aa4dbf9a93_91ae1790a76dd73f)
  unreachable
bb110:
  br label %bb111
bb111:
  %t526 = load i64, ptr %l41, !tbaa !24
  %t528 = add i64 %t526, 1
  store i64 %t528, ptr %l41, !tbaa !24
  br label %bb96
bb112:
  store i64 0, ptr %l43, !tbaa !24
  %t530 = load i64, ptr %l39, !tbaa !24
  store i64 %t530, ptr %l44, !tbaa !24
  store i64 1, ptr %l45, !tbaa !24
  %t532 = load i64, ptr %l44, !tbaa !24
  %t533 = load i64, ptr %l43, !tbaa !24
  %t536 = icmp sgt i64 %t532, %t533
  br i1 %t536, label %bb113, label %bb114
bb113:
  %t538 = load i64, ptr %l45, !tbaa !24
  %t540 = icmp sgt i64 %t538, 0
  br i1 %t540, label %bb115, label %bb116
bb114:
  store i64 0, ptr %l311, !tbaa !24
  br label %bb118
bb115:
  %t542 = load i64, ptr %l44, !tbaa !24
  %t543 = load i64, ptr %l43, !tbaa !24
  %t546 = sub i64 %t542, %t543
  %t547 = load i64, ptr %l45, !tbaa !24
  %t550 = add i64 %t546, %t547
  %t552 = sub i64 %t550, 1
  %t553 = load i64, ptr %l45, !tbaa !24
  %t556 = sdiv i64 %t552, %t553
  store i64 %t556, ptr %l314, !tbaa !24
  br label %bb117
bb116:
  store i64 0, ptr %l314, !tbaa !24
  br label %bb117
bb117:
  %t558 = load i64, ptr %l314, !tbaa !24
  store i64 %t558, ptr %l311, !tbaa !24
  br label %bb118
bb118:
  %t559 = load i64, ptr %l311, !tbaa !24
  store i64 %t559, ptr %l46, !tbaa !24
  store i64 0, ptr %l47, !tbaa !24
  br label %bb119
bb119:
  %t560 = load i64, ptr %l47, !tbaa !24
  %t561 = load i64, ptr %l46, !tbaa !24
  %t564 = icmp slt i64 %t560, %t561
  %t566 = xor i1 %t564, true
  br i1 %t566, label %bb120, label %bb121
bb120:
  br label %bb124
bb121:
  br label %bb122
bb122:
  %t568 = load i64, ptr %l43, !tbaa !24
  %t569 = load i64, ptr %l47, !tbaa !24
  %t570 = load i64, ptr %l45, !tbaa !24
  %t573 = mul i64 %t569, %t570
  %t576 = add i64 %t568, %t573
  %t578 = load ptr, ptr %l0, !tbaa !29
  %t580 = getelementptr %"compiler/eval:Machine", ptr %t578, i32 0, i32 60
  %t581 = load { i64, ptr }, ptr %t580, !tbaa !27
  store { i64, ptr } %t581, ptr %l333, !tbaa !27
  %t582 = load ptr, ptr %l0, !tbaa !29
  %t584 = getelementptr %"compiler/eval:Machine", ptr %t582, i32 0, i32 58
  %t585 = load { i64, ptr }, ptr %t584, !tbaa !27
  store { i64, ptr } %t585, ptr %l335, !tbaa !27
  %t586 = load i64, ptr %l37, !tbaa !24
  %t588 = getelementptr { i64, ptr }, ptr %l335, i32 0, i32 1
  %t589 = load ptr, ptr %t588, !tbaa !27
  %t590 = getelementptr %"compiler/eval:frame", ptr %t589, i64 %t586
  %t591 = getelementptr %"compiler/eval:frame", ptr %t590, i32 0, i32 5
  %t592 = load i64, ptr %t591, !tbaa !24
  %t596 = add i64 %t592, %t576
  %t597 = load ptr, ptr %l0, !tbaa !29
  %t599 = getelementptr %"compiler/eval:Machine", ptr %t597, i32 0, i32 70
  %t600 = load i64, ptr %t599, !tbaa !24
  %t603 = getelementptr { i64, ptr }, ptr %l333, i32 0, i32 1
  %t604 = load ptr, ptr %t603, !tbaa !27
  %t605 = getelementptr i64, ptr %t604, i64 %t596
  store i64 %t600, ptr %t605, !tbaa !34
  br label %bb123
bb123:
  %t606 = load i64, ptr %l47, !tbaa !24
  %t608 = add i64 %t606, 1
  store i64 %t608, ptr %l47, !tbaa !24
  br label %bb119
bb124:
  %t610 = load ptr, ptr %l0, !tbaa !29
  %t611 = load i64, ptr %l37, !tbaa !24
  %t612 = load ptr, ptr %l38, !tbaa !29
  %t613 = load %"compiler/eval:Ptr", ptr %l35
  %t614 = load i64, ptr %l39, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v0, ptr %t610, i64 %t611, ptr %t612, %"compiler/eval:Ptr" %t613, i64 %t614)
  br label %bb125
bb125:
  call void @__olang_scope_close(ptr %s5)
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb126:
  %t620 = load i32, ptr %l22, !tbaa !23
  %t622 = add i32 %t620, 1
  store i32 %t622, ptr %l22, !tbaa !23
  br label %bb38
bb127:
  %t624 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 5
  %t625 = getelementptr %"compiler/mir:Range", ptr %t624, i32 0, i32 1
  %t626 = load i32, ptr %t625, !tbaa !23
  %t628 = icmp sgt i32 %t626, 0
  br i1 %t628, label %bb128, label %bb129
bb128:
  store { i64, [4 x i64] } zeroinitializer, ptr %t630
  %t631 = getelementptr { i64, [4 x i64] }, ptr %t630, i32 0, i32 0
  store i64 0, ptr %t631
  %t632 = load { i64, [4 x i64] }, ptr %t630
  store { i64, [4 x i64] } %t632, ptr %l49
  store i64 0, ptr %l50, !tbaa !24
  %t634 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 5
  %t635 = getelementptr %"compiler/mir:Range", ptr %t634, i32 0, i32 1
  %t636 = load i32, ptr %t635, !tbaa !23
  %t638 = sext i32 %t636 to i64
  store i64 %t638, ptr %l51, !tbaa !24
  store i64 2, ptr %l52, !tbaa !24
  %t640 = load i64, ptr %l51, !tbaa !24
  %t641 = load i64, ptr %l50, !tbaa !24
  %t644 = icmp sgt i64 %t640, %t641
  br i1 %t644, label %bb130, label %bb131
bb129:
  br label %bb160
bb130:
  %t646 = load i64, ptr %l52, !tbaa !24
  %t648 = icmp sgt i64 %t646, 0
  br i1 %t648, label %bb132, label %bb133
bb131:
  store i64 0, ptr %l359, !tbaa !24
  br label %bb135
bb132:
  %t650 = load i64, ptr %l51, !tbaa !24
  %t651 = load i64, ptr %l50, !tbaa !24
  %t654 = sub i64 %t650, %t651
  %t655 = load i64, ptr %l52, !tbaa !24
  %t658 = add i64 %t654, %t655
  %t660 = sub i64 %t658, 1
  %t661 = load i64, ptr %l52, !tbaa !24
  %t664 = sdiv i64 %t660, %t661
  store i64 %t664, ptr %l362, !tbaa !24
  br label %bb134
bb133:
  store i64 0, ptr %l362, !tbaa !24
  br label %bb134
bb134:
  %t666 = load i64, ptr %l362, !tbaa !24
  store i64 %t666, ptr %l359, !tbaa !24
  br label %bb135
bb135:
  %t667 = load i64, ptr %l359, !tbaa !24
  store i64 %t667, ptr %l53, !tbaa !24
  store i64 0, ptr %l54, !tbaa !24
  br label %bb136
bb136:
  %t668 = load i64, ptr %l54, !tbaa !24
  %t669 = load i64, ptr %l53, !tbaa !24
  %t672 = icmp slt i64 %t668, %t669
  %t674 = xor i1 %t672, true
  br i1 %t674, label %bb137, label %bb138
bb137:
  br label %bb154
bb138:
  br label %bb139
bb139:
  %t676 = load i64, ptr %l50, !tbaa !24
  %t677 = load i64, ptr %l54, !tbaa !24
  %t678 = load i64, ptr %l52, !tbaa !24
  %t681 = mul i64 %t677, %t678
  %t684 = add i64 %t676, %t681
  store i64 %t684, ptr %l55, !tbaa !24
  %t686 = load ptr, ptr %l4, !tbaa !29
  %t688 = getelementptr %"compiler/mir:Fn", ptr %t686, i32 0, i32 11
  %t689 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 5
  %t690 = getelementptr %"compiler/mir:Range", ptr %t689, i32 0, i32 0
  %t691 = load i32, ptr %t690, !tbaa !23
  %t693 = sext i32 %t691 to i64
  %t694 = load i64, ptr %l55, !tbaa !24
  %t697 = add i64 %t693, %t694
  %t700 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t688, i64 %t697)
  store { i64, [4 x i64] } %t700, ptr %l386
  br label %bb140
bb140:
  %t701 = load { i64, [4 x i64] }, ptr %l386
  store { i64, [4 x i64] } %t701, ptr %l56
  %t702 = load { i64, [4 x i64] }, ptr %l56
  %t704 = extractvalue { i64, [4 x i64] } %t702, 0
  %t705 = icmp eq i64 %t704, 2
  br i1 %t705, label %bb141, label %bb142
bb141:
  %t707 = getelementptr { i64, [4 x i64] }, ptr %l56, i32 0, i32 1
  %t708 = getelementptr { i32, i64 }, ptr %t707, i32 0, i32 1
  %t709 = load i64, ptr %t708
  store i64 %t709, ptr %l57, !tbaa !24
  br label %bb143
bb142:
  br label %bb147
bb143:
  %t711 = load i64, ptr %l57, !tbaa !24
  %t712 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t713 = load i64, ptr %t712, !tbaa !24
  %t716 = icmp eq i64 %t711, %t713
  br i1 %t716, label %bb144, label %bb145
bb144:
  %t718 = load ptr, ptr %l4, !tbaa !29
  %t720 = getelementptr %"compiler/mir:Fn", ptr %t718, i32 0, i32 11
  %t721 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 5
  %t722 = getelementptr %"compiler/mir:Range", ptr %t721, i32 0, i32 0
  %t723 = load i32, ptr %t722, !tbaa !23
  %t725 = sext i32 %t723 to i64
  %t726 = load i64, ptr %l55, !tbaa !24
  %t729 = add i64 %t725, %t726
  %t731 = add i64 %t729, 1
  %t734 = call { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %t720, i64 %t731)
  store { i64, [4 x i64] } %t734, ptr %l400
  br label %bb146
bb145:
  br label %bb147
bb146:
  %t735 = load { i64, [4 x i64] }, ptr %l400
  store { i64, [4 x i64] } %t735, ptr %l49
  br label %bb152
bb147:
  br i1 true, label %bb148, label %bb149
bb148:
  br label %bb150
bb149:
  br label %bb151
bb150:
  br label %bb152
bb151:
  call void @__olang_check_failed(ptr @olang_loc_2ee13faba4731678_f9595c1938ce6204)
  unreachable
bb152:
  br label %bb153
bb153:
  %t736 = load i64, ptr %l54, !tbaa !24
  %t738 = add i64 %t736, 1
  store i64 %t738, ptr %l54, !tbaa !24
  br label %bb136
bb154:
  %t740 = load { i64, [4 x i64] }, ptr %l49
  %t742 = extractvalue { i64, [4 x i64] } %t740, 0
  %t743 = icmp eq i64 %t742, 0
  br i1 %t743, label %bb155, label %bb156
bb155:
  %t745 = load ptr, ptr %l0, !tbaa !29
  %t746 = load ptr, ptr %l4, !tbaa !29
  %t748 = getelementptr %"compiler/mir:Fn", ptr %t746, i32 0, i32 2
  %t749 = load i64, ptr %t748, !tbaa !24
  %t750 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 6
  %t751 = load %"compiler/source:Span", ptr %t750
  store { i64, [5 x i64] } zeroinitializer, ptr %t752
  %t753 = getelementptr { i64, [5 x i64] }, ptr %t752, i32 0, i32 0
  store i64 2, ptr %t753
  %t755 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } undef, i32 14, 0
  %t757 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t755, i64 %t749, 1
  %t759 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t757, %"compiler/source:Span" %t751, 2
  %t760 = insertvalue { i32, i64, %"compiler/source:Span", { i64, ptr } } %t759, { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d8, i32 0, i32 1) }, 3
  %t761 = getelementptr { i64, [5 x i64] }, ptr %t752, i32 0, i32 1
  store { i32, i64, %"compiler/source:Span", { i64, ptr } } %t760, ptr %t761
  %t762 = load { i64, [5 x i64] }, ptr %t752
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v0, ptr %t745, { i64, [5 x i64] } %t762)
  br label %bb157
bb156:
  %t765 = load ptr, ptr %l0, !tbaa !29
  %t766 = load i64, ptr %l6, !tbaa !24
  %t767 = load ptr, ptr %l4, !tbaa !29
  %t769 = getelementptr %"compiler/mir:Fn", ptr %t767, i32 0, i32 2
  %t770 = load i64, ptr %t769, !tbaa !24
  %t771 = getelementptr %"compiler/mir:Task", ptr %l5, i32 0, i32 6
  %t772 = load %"compiler/source:Span", ptr %t771
  %t773 = load { i64, [4 x i64] }, ptr %l49
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %t765, i64 %t766, i64 %t770, %"compiler/source:Span" %t772, i32 14, { i64, [4 x i64] } %t773)
  br label %bb158
bb157:
  br label %bb159
bb158:
  br label %bb159
bb159:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb160:
  %t780 = load ptr, ptr %l0, !tbaa !29
  %t781 = load i64, ptr %l6, !tbaa !24
  %t784 = call ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v0, ptr %t780, i64 %t781)
  store ptr %t784, ptr %l420
  br label %bb161
bb161:
  %t785 = load ptr, ptr %l420, !tbaa !29
  %t788 = getelementptr %"compiler/mir:Fn", ptr %t785, i32 0, i32 9
  %t789 = load ptr, ptr %l0, !tbaa !29
  %t791 = getelementptr %"compiler/eval:Machine", ptr %t789, i32 0, i32 58
  %t792 = load { i64, ptr }, ptr %t791, !tbaa !27
  store { i64, ptr } %t792, ptr %l424, !tbaa !27
  %t793 = load i64, ptr %l6, !tbaa !24
  %t795 = getelementptr { i64, ptr }, ptr %l424, i32 0, i32 1
  %t796 = load ptr, ptr %t795, !tbaa !27
  %t797 = getelementptr %"compiler/eval:frame", ptr %t796, i64 %t793
  %t798 = getelementptr %"compiler/eval:frame", ptr %t797, i32 0, i32 1
  %t799 = load i64, ptr %t798, !tbaa !24
  %t802 = call %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %s0, ptr %t788, i64 %t799)
  store %"compiler/mir:BasicBlock" %t802, ptr %l427
  br label %bb162
bb162:
  %t804 = call %"compiler/mir:BasicBlock" @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2fmir_3aBasicBlock(ptr %s0, ptr %l427)
  store %"compiler/mir:BasicBlock" %t804, ptr %l429
  br label %bb163
bb163:
  %t805 = getelementptr %"compiler/mir:BasicBlock", ptr %l429, i32 0, i32 1
  %t806 = load { i64, [8 x i64] }, ptr %t805
  store { i64, [8 x i64] } %t806, ptr %l59
  %t808 = load { i64, [8 x i64] }, ptr %l59
  %t810 = extractvalue { i64, [8 x i64] } %t808, 0
  %t811 = icmp eq i64 %t810, 8
  br i1 %t811, label %bb164, label %bb165
bb164:
  %t813 = getelementptr { i64, [8 x i64] }, ptr %l59, i32 0, i32 1
  %t814 = getelementptr { %"compiler/source:Span", i32, i32, i32, i32 }, ptr %t813, i32 0, i32 1
  %t815 = load i32, ptr %t814
  store i32 %t815, ptr %l60, !tbaa !23
  br label %bb166
bb165:
  br label %bb176
bb166:
  %t817 = load ptr, ptr %l0, !tbaa !29
  %t819 = getelementptr %"compiler/eval:Machine", ptr %t817, i32 0, i32 60
  %t820 = load { i64, ptr }, ptr %t819, !tbaa !27
  store { i64, ptr } %t820, ptr %l435, !tbaa !27
  %t821 = load ptr, ptr %l0, !tbaa !29
  %t823 = getelementptr %"compiler/eval:Machine", ptr %t821, i32 0, i32 58
  %t824 = load { i64, ptr }, ptr %t823, !tbaa !27
  store { i64, ptr } %t824, ptr %l437, !tbaa !27
  %t825 = load i64, ptr %l6, !tbaa !24
  %t827 = getelementptr { i64, ptr }, ptr %l437, i32 0, i32 1
  %t828 = load ptr, ptr %t827, !tbaa !27
  %t829 = getelementptr %"compiler/eval:frame", ptr %t828, i64 %t825
  %t830 = getelementptr %"compiler/eval:frame", ptr %t829, i32 0, i32 4
  %t831 = load i64, ptr %t830, !tbaa !24
  %t832 = load i32, ptr %l60, !tbaa !23
  %t834 = sext i32 %t832 to i64
  %t837 = add i64 %t831, %t834
  %t839 = getelementptr { i64, ptr }, ptr %l435, i32 0, i32 1
  %t840 = load ptr, ptr %t839, !tbaa !27
  %t841 = getelementptr i64, ptr %t840, i64 %t837
  %t842 = load i64, ptr %t841, !tbaa !34
  %t845 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t848 = and i64 %t842, %t845
  store i64 %t848, ptr %l62, !tbaa !24
  %t850 = load ptr, ptr %l0, !tbaa !29
  %t852 = getelementptr %"compiler/eval:Machine", ptr %t850, i32 0, i32 52
  %t853 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t854, ptr %v0, ptr %t852, i64 %t853)
  call void @llvm.memmove.p0.p0.i64(ptr %l450, ptr %t854, i64 152, i1 false)
  br label %bb167
bb167:
  %t857 = getelementptr %"compiler/eval:scope", ptr %l450, i32 0, i32 12
  %t858 = load i64, ptr %t857, !tbaa !24
  %t860 = icmp eq i64 %t858, 0
  br i1 %t860, label %bb168, label %bb169
bb168:
  %t862 = load i64, ptr %l62, !tbaa !24
  store i64 %t862, ptr %l63, !tbaa !24
  %t864 = load ptr, ptr %l0, !tbaa !29
  store ptr %t864, ptr %l454, !tbaa !29
  %t865 = getelementptr %"compiler/eval:frame", ptr %l1, i32 0, i32 13
  %t866 = load i64, ptr %t865, !tbaa !24
  store i64 %t866, ptr %l455, !tbaa !24
  %t867 = load i32, ptr %l11, !tbaa !23
  store i32 %t867, ptr %l456, !tbaa !23
  %t868 = load ptr, ptr %l0, !tbaa !29
  %t870 = getelementptr %"compiler/eval:Machine", ptr %t868, i32 0, i32 52
  %t871 = load i64, ptr %l62, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t872, ptr %v0, ptr %t870, i64 %t871)
  call void @llvm.memmove.p0.p0.i64(ptr %l460, ptr %t872, i64 152, i1 false)
  br label %bb170
bb169:
  %t875 = load ptr, ptr %l0, !tbaa !29
  %t876 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t877 = load i64, ptr %t876, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %t875, i64 %t877)
  br label %bb174
bb170:
  %t880 = getelementptr %"compiler/eval:scope", ptr %l460, i32 0, i32 14
  %t881 = load i64, ptr %t880, !tbaa !24
  %t883 = trunc i64 %t881 to i32
  %t885 = load ptr, ptr %l454, !tbaa !29
  %t886 = load i64, ptr %l455, !tbaa !24
  %t887 = load i32, ptr %l456, !tbaa !23
  %t889 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %t885, i64 %t886, i32 %t887, i32 %t883)
  store i64 %t889, ptr %l464
  br label %bb171
bb171:
  %t890 = load i64, ptr %l464, !tbaa !24
  store i64 %t890, ptr %l64, !tbaa !24
  %t891 = load ptr, ptr %l0, !tbaa !29
  %t893 = getelementptr %"compiler/eval:Machine", ptr %t891, i32 0, i32 52
  %t894 = load i64, ptr %l63, !tbaa !24
  %t897 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t893, i64 %t894)
  store ptr %t897, ptr %l468
  br label %bb172
bb172:
  %t898 = load ptr, ptr %l468, !tbaa !29
  %t900 = load i64, ptr %l64, !tbaa !24
  %t903 = getelementptr %"compiler/eval:scope", ptr %t898, i32 0, i32 12
  store i64 %t900, ptr %t903, !tbaa !24
  %t904 = load i64, ptr %l62, !tbaa !24
  %t906 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t907 = load i64, ptr %t906, !tbaa !24
  store i64 %t907, ptr %l67, !tbaa !24
  %t909 = load ptr, ptr %l0, !tbaa !29
  %t911 = getelementptr %"compiler/eval:Machine", ptr %t909, i32 0, i32 52
  %t915 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t911, i64 %t904)
  store ptr %t915, ptr %l476
  br label %bb173
bb173:
  %t916 = load ptr, ptr %l476, !tbaa !29
  %t918 = load i64, ptr %l67, !tbaa !24
  %t921 = getelementptr %"compiler/eval:scope", ptr %t916, i32 0, i32 13
  store i64 %t918, ptr %t921, !tbaa !24
  br label %bb175
bb174:
  br label %bb175
bb175:
  br label %bb186
bb176:
  br i1 true, label %bb177, label %bb178
bb177:
  br label %bb179
bb178:
  br label %bb185
bb179:
  %t922 = load ptr, ptr %l0, !tbaa !29
  %t924 = getelementptr %"compiler/eval:Machine", ptr %t922, i32 0, i32 87
  %t925 = load i1, ptr %t924, !tbaa !21
  br i1 %t925, label %bb180, label %bb181
bb180:
  %t927 = load ptr, ptr %l0, !tbaa !29
  %t928 = getelementptr %"compiler/eval:task", ptr %l3, i32 0, i32 4
  %t929 = load i64, ptr %t928, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %t927, i64 %t929)
  br label %bb182
bb181:
  %t932 = load ptr, ptr %l0, !tbaa !29
  %t933 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyNoClause, !tbaa !27
  %t934 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t934, ptr %t932, { i64, ptr } %t933)
  br label %bb183
bb182:
  br label %bb184
bb183:
  br label %bb184
bb184:
  br label %bb186
bb185:
  call void @__olang_check_failed(ptr @olang_loc_295f7f77f101c149_2aa6184739b6cdf5)
  unreachable
bb186:
  %t937 = load ptr, ptr %l0, !tbaa !29
  %t938 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %t937, i64 %t938)
  br label %bb187
bb187:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local double @compiler_2feval_2ecompiler_2feval_3aMachine_2etoF64(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca i32
  %l7 = alloca i32
  %l8 = alloca double
  %rv = alloca double
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
  %t23 = fpext half %t21 to double
  store double %t23, ptr %l8, !tbaa !26
  br label %bb18
bb5:
  %t25 = load i32, ptr %l3, !tbaa !23
  %t27 = icmp eq i32 %t25, 12
  br i1 %t27, label %bb6, label %bb7
bb6:
  br label %bb8
bb7:
  br label %bb9
bb8:
  %t29 = load i64, ptr %l1, !tbaa !24
  %t31 = and i64 %t29, 65535
  %t33 = trunc i64 %t31 to i16
  %t35 = bitcast i16 %t33 to bfloat
  %t37 = bitcast bfloat %t35 to i16
  %t38 = zext i16 %t37 to i32
  %t39 = shl i32 %t38, 16
  %t40 = bitcast i32 %t39 to float
  %t41 = fpext float %t40 to double
  store double %t41, ptr %l8, !tbaa !26
  br label %bb18
bb9:
  %t43 = load i32, ptr %l3, !tbaa !23
  %t45 = icmp eq i32 %t43, 13
  br i1 %t45, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t47 = load i64, ptr %l1, !tbaa !24
  %t49 = and i64 %t47, 4294967295
  %t51 = trunc i64 %t49 to i32
  %t53 = bitcast i32 %t51 to float
  %t55 = fpext float %t53 to double
  store double %t55, ptr %l8, !tbaa !26
  br label %bb18
bb13:
  br i1 true, label %bb14, label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb17
bb16:
  %t57 = load i64, ptr %l1, !tbaa !24
  %t60 = bitcast i64 %t57 to double
  store double %t60, ptr %l8, !tbaa !26
  br label %bb18
bb17:
  call void @__olang_check_failed(ptr @olang_loc_176c1f0c53cca04e_ded73198e701b2e2)
  unreachable
bb18:
  %t62 = load double, ptr %l8, !tbaa !26
  store double %t62, ptr %rv
  br label %ret
ret:
  %rr = load double, ptr %rv
  ret double %rr
}

define dso_local %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etypeid(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i64
  %l4 = alloca %"compiler/eval:Ptr"
  %l8 = alloca i32
  %l9 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i32
  %l18 = alloca %"compiler/eval:Ptr"
  %l23 = alloca %"compiler/eval:Ptr"
  %s1 = alloca %olang.scope
  %rv = alloca %"compiler/eval:Ptr"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t8 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %t4, i32 %a1)
  store i32 %t8, ptr %l8
  br label %bb1
bb1:
  %t9 = load i32, ptr %l8, !tbaa !23
  store i32 %t9, ptr %l2, !tbaa !23
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/eval:Machine", ptr %t10, i32 0, i32 41
  %t13 = load i32, ptr %l2, !tbaa !23
  %t16 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %t12, i32 %t13)
  %t17 = extractvalue { i32, i64 } %t16, 1
  %t18 = extractvalue { i32, i64 } %t16, 0
  store i32 %t18, ptr %l14
  %t19 = icmp ne i32 %t18, 0
  br i1 %t19, label %bb3, label %ok.20, !prof !99
ok.20:
  store i64 %t17, ptr %l13
  br label %bb2
bb2:
  %t21 = load i64, ptr %l13, !tbaa !24
  store i64 %t21, ptr %l9, !tbaa !24
  br label %bb5
bb3:
  br label %bb4
bb4:
  store i64 0, ptr %l9, !tbaa !24
  br label %bb5
bb5:
  %t22 = load i64, ptr %l9, !tbaa !24
  store i64 %t22, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = icmp ne i64 %t23, 0
  br i1 %t25, label %bb6, label %bb7
bb6:
  store %olang.scope zeroinitializer, ptr %s1
  %t27 = load i64, ptr %l3, !tbaa !24
  %t29 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s1, i64 %t27, i64 0)
  store %"compiler/eval:Ptr" %t29, ptr %l18
  br label %bb8
bb7:
  br label %bb9
bb8:
  call void @__olang_scope_close(ptr %s1)
  %t30 = load %"compiler/eval:Ptr", ptr %l18
  store %"compiler/eval:Ptr" %t30, ptr %rv
  br label %ret
bb9:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t32 = load i64, ptr @G_2ecompiler_2feval_2eaData, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr %"compiler/eval:Machine", ptr %t33, i32 0, i32 70
  %t36 = load i64, ptr %t35, !tbaa !24
  %t40 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %t31, i64 8, i64 %t32, i64 %t36)
  store %"compiler/eval:Ptr" %t40, ptr %l23
  br label %bb10
bb10:
  %t41 = load %"compiler/eval:Ptr", ptr %l23
  store %"compiler/eval:Ptr" %t41, ptr %l4
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/eval:Machine", ptr %t42, i32 0, i32 41
  %t45 = load i32, ptr %l2, !tbaa !23
  %t46 = getelementptr %"compiler/eval:Ptr", ptr %l4, i32 0, i32 0
  %t47 = load i64, ptr %t46, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %t44, i32 %t45, i64 %t47)
  br label %bb11
bb11:
  %t51 = load %"compiler/eval:Ptr", ptr %l4
  store %"compiler/eval:Ptr" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/eval:Ptr", ptr %rv
  ret %"compiler/eval:Ptr" %rr
}

define dso_local i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eunary(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i32 %a3, i64 %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i32
  %l5 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l28 = alloca i64
  %l32 = alloca i64
  %l34 = alloca i64
  %l37 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i32 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l9
  br label %bb1
bb1:
  %t6 = load i64, ptr %l9, !tbaa !24
  store i64 %t6, ptr %l5, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l3, !tbaa !23
  %t11 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eibits(ptr %v0, ptr %t7, i32 %t8)
  store i64 %t11, ptr %l12
  br label %bb2
bb2:
  %t12 = load i64, ptr %l12, !tbaa !24
  %t13 = call i64 @compiler_2feval_2ebmask(i64 %t12)
  store i64 %t13, ptr %l13
  br label %bb3
bb3:
  %t14 = load i64, ptr %l13, !tbaa !24
  store i64 %t14, ptr %l6, !tbaa !24
  %t15 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t17 = trunc i64 2 to i32
  %t18 = icmp eq i32 %t15, %t17
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %bb6
bb5:
  br label %bb7
bb6:
  %t20 = load i64, ptr %l2, !tbaa !24
  %t22 = xor i64 %t20, 1
  store i64 %t22, ptr %l14, !tbaa !24
  br label %bb20
bb7:
  %t24 = load i32, ptr %l1, !range !{i32 0, i32 51}
  %t26 = trunc i64 1 to i32
  %t27 = icmp eq i32 %t24, %t26
  br i1 %t27, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t29 = load i64, ptr %l2, !tbaa !24
  %t31 = xor i64 %t29, -1
  %t32 = load i64, ptr %l6, !tbaa !24
  %t35 = and i64 %t31, %t32
  store i64 %t35, ptr %l14, !tbaa !24
  br label %bb20
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb19
bb14:
  %t38 = load i64, ptr @G_2ecompiler_2feval_2evFloat, !tbaa !24
  %t41 = icmp eq i64 %a4, %t38
  br i1 %t41, label %bb15, label %bb16
bb15:
  %t43 = load i64, ptr %l2, !tbaa !24
  %t44 = load i64, ptr %l5, !tbaa !24
  %t46 = mul i64 8, %t44
  %t48 = sub i64 %t46, 1
  store i64 %t48, ptr %l32, !tbaa !24
  %t49 = load i64, ptr %l32, !tbaa !24
  %t50 = load i64, ptr %l32, !tbaa !24
  %t51 = shl i64 1, %t50
  %t54 = xor i64 %t43, %t51
  store i64 %t54, ptr %l34, !tbaa !24
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load i64, ptr %l5, !tbaa !24
  %t59 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %t55, i64 %t56)
  store i64 %t59, ptr %l37
  br label %bb17
bb16:
  %t60 = load i64, ptr %l2, !tbaa !24
  %t62 = sub i64 0, %t60
  %t63 = load i64, ptr %l6, !tbaa !24
  %t66 = and i64 %t62, %t63
  store i64 %t66, ptr %l28, !tbaa !24
  br label %bb18
bb17:
  %t68 = load i64, ptr %l34, !tbaa !24
  %t69 = load i64, ptr %l37, !tbaa !24
  %t70 = and i64 %t68, %t69
  store i64 %t70, ptr %l28, !tbaa !24
  br label %bb18
bb18:
  %t72 = load i64, ptr %l28, !tbaa !24
  store i64 %t72, ptr %l14, !tbaa !24
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_bb58ffa16789d1e6_53f99027aa0e2dd2)
  unreachable
bb20:
  %t73 = load i64, ptr %l14, !tbaa !24
  store i64 %t73, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 54
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
  %t22 = getelementptr %"compiler/eval:Machine", ptr %t20, i32 0, i32 54
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
  %t52 = getelementptr %"compiler/eval:Machine", ptr %t50, i32 0, i32 52
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
  %t76 = getelementptr %"compiler/eval:Machine", ptr %t74, i32 0, i32 54
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
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 22
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
  %t17 = getelementptr %"compiler/eval:Machine", ptr %t15, i32 0, i32 59
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
  %t27 = getelementptr %"compiler/eval:Machine", ptr %t25, i32 0, i32 20
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
  %t51 = getelementptr %"compiler/eval:Machine", ptr %t49, i32 0, i32 86
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
  %t60 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 59
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
  %t73 = getelementptr %"compiler/eval:Machine", ptr %t71, i32 0, i32 73
  %t74 = load i64, ptr %t73, !tbaa !24
  %t76 = icmp sge i64 %t74, 0
  br i1 %t76, label %bb37, label %bb38
bb37:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/eval:Machine", ptr %t78, i32 0, i32 22
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
  %t86 = getelementptr %"compiler/eval:Machine", ptr %t84, i32 0, i32 21
  store i64 -1, ptr %t86, !tbaa !24
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr %"compiler/eval:Machine", ptr %t87, i32 0, i32 31
  store ptr %t89, ptr %l53, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t92 = getelementptr %"compiler/eval:Machine", ptr %t90, i32 0, i32 42
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/eval:Machine", ptr %t93, i32 0, i32 73
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
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t115, i32 0, i32 21
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
  %t124 = getelementptr %"compiler/eval:Machine", ptr %t122, i32 0, i32 42
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
  %t176 = getelementptr %"compiler/eval:Machine", ptr %t174, i32 0, i32 42
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
  %t190 = getelementptr %"compiler/eval:Machine", ptr %t188, i32 0, i32 42
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
  %t207 = getelementptr %"compiler/eval:Machine", ptr %t205, i32 0, i32 73
  store i64 -1, ptr %t207, !tbaa !24
  br label %bb71
bb71:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewait(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4, i32 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l5 = alloca i32
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l13 = alloca i64
  %l15 = alloca i64
  %l17 = alloca i64
  %l20 = alloca { i64, ptr }
  %l22 = alloca { i64, ptr }
  %l31 = alloca i1
  %l41 = alloca %"compiler/eval:scope"
  %l49 = alloca %"compiler/eval:task"
  %l54 = alloca ptr
  %l60 = alloca %"compiler/eval:scope"
  %l67 = alloca ptr
  %l76 = alloca %"compiler/eval:scope"
  %l82 = alloca ptr
  %l87 = alloca i1
  %l91 = alloca ptr
  %l95 = alloca %"compiler/eval:scope"
  %l99 = alloca i1
  %l103 = alloca i1
  %l107 = alloca ptr
  %l111 = alloca %"compiler/eval:Ptr"
  %t51 = alloca %"compiler/eval:scope", align 8
  %t90 = alloca %"compiler/eval:scope", align 8
  %t123 = alloca %"compiler/eval:scope", align 8
  %t160 = alloca %"compiler/eval:scope", align 8
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store i32 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 60
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l20, !tbaa !27
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/eval:Machine", ptr %t5, i32 0, i32 58
  %t8 = load { i64, ptr }, ptr %t7, !tbaa !27
  store { i64, ptr } %t8, ptr %l22, !tbaa !27
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr %"compiler/eval:frame", ptr %t12, i64 %t9
  %t14 = getelementptr %"compiler/eval:frame", ptr %t13, i32 0, i32 4
  %t15 = load i64, ptr %t14, !tbaa !24
  %t18 = sext i32 %a2 to i64
  %t21 = add i64 %t15, %t18
  %t23 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t24 = load ptr, ptr %t23, !tbaa !27
  %t25 = getelementptr i64, ptr %t24, i64 %t21
  %t26 = load i64, ptr %t25, !tbaa !34
  store i64 %t26, ptr %l6, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load i64, ptr %l6, !tbaa !24
  %t32 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t28, i64 %t29)
  store i1 %t32, ptr %l31
  br label %bb1
bb1:
  %t33 = load i1, ptr %l31, !tbaa !21
  %t34 = xor i1 %t33, true
  br i1 %t34, label %bb2, label %bb3
bb2:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t37 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t38 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t38, ptr %t36, { i64, ptr } %t37)
  br label %bb4
bb3:
  br label %bb5
bb4:
  br label %ret
bb5:
  %t41 = load i64, ptr %l6, !tbaa !24
  %t42 = load i64, ptr @G_2ecompiler_2feval_2eslotMask, !tbaa !24
  %t45 = and i64 %t41, %t42
  store i64 %t45, ptr %l7, !tbaa !24
  %t47 = load ptr, ptr %l0, !tbaa !29
  %t49 = getelementptr %"compiler/eval:Machine", ptr %t47, i32 0, i32 52
  %t50 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t51, ptr %v0, ptr %t49, i64 %t50)
  call void @llvm.memmove.p0.p0.i64(ptr %l41, ptr %t51, i64 152, i1 false)
  br label %bb6
bb6:
  %t54 = getelementptr %"compiler/eval:scope", ptr %l41, i32 0, i32 10
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l8, !tbaa !24
  %t57 = load i64, ptr %l8, !tbaa !24
  %t59 = icmp sge i64 %t57, 0
  br i1 %t59, label %bb7, label %bb8
bb7:
  %t61 = load i64, ptr %l7, !tbaa !24
  store i64 %t61, ptr %l9, !tbaa !24
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr %"compiler/eval:Machine", ptr %t63, i32 0, i32 56
  %t66 = load i64, ptr %l8, !tbaa !24
  %t69 = call %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %t65, i64 %t66)
  store %"compiler/eval:task" %t69, ptr %l49
  br label %bb9
bb8:
  br label %bb17
bb9:
  %t70 = getelementptr %"compiler/eval:task", ptr %l49, i32 0, i32 3
  %t71 = load i64, ptr %t70, !tbaa !24
  store i64 %t71, ptr %l10, !tbaa !24
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/eval:Machine", ptr %t73, i32 0, i32 52
  %t76 = load i64, ptr %l9, !tbaa !24
  %t79 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t75, i64 %t76)
  store ptr %t79, ptr %l54
  br label %bb10
bb10:
  %t80 = load ptr, ptr %l54, !tbaa !29
  %t82 = load i64, ptr %l10, !tbaa !24
  %t85 = getelementptr %"compiler/eval:scope", ptr %t80, i32 0, i32 10
  store i64 %t82, ptr %t85, !tbaa !24
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t88 = getelementptr %"compiler/eval:Machine", ptr %t86, i32 0, i32 52
  %t89 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t90, ptr %v0, ptr %t88, i64 %t89)
  call void @llvm.memmove.p0.p0.i64(ptr %l60, ptr %t90, i64 152, i1 false)
  br label %bb11
bb11:
  %t93 = getelementptr %"compiler/eval:scope", ptr %l60, i32 0, i32 10
  %t94 = load i64, ptr %t93, !tbaa !24
  %t96 = icmp slt i64 %t94, 0
  br i1 %t96, label %bb12, label %bb13
bb12:
  %t98 = load i64, ptr %l7, !tbaa !24
  store i64 -1, ptr %l13, !tbaa !24
  %t100 = load ptr, ptr %l0, !tbaa !29
  %t102 = getelementptr %"compiler/eval:Machine", ptr %t100, i32 0, i32 52
  %t106 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t102, i64 %t98)
  store ptr %t106, ptr %l67
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t107 = load ptr, ptr %l67, !tbaa !29
  %t109 = load i64, ptr %l13, !tbaa !24
  %t112 = getelementptr %"compiler/eval:scope", ptr %t107, i32 0, i32 11
  store i64 %t109, ptr %t112, !tbaa !24
  br label %bb15
bb15:
  %t113 = load ptr, ptr %l0, !tbaa !29
  %t114 = load i64, ptr %l1, !tbaa !24
  %t115 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %t113, i64 %t114, i64 %t115)
  br label %bb16
bb16:
  br label %ret
bb17:
  %t119 = load ptr, ptr %l0, !tbaa !29
  %t121 = getelementptr %"compiler/eval:Machine", ptr %t119, i32 0, i32 52
  %t122 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t123, ptr %v0, ptr %t121, i64 %t122)
  call void @llvm.memmove.p0.p0.i64(ptr %l76, ptr %t123, i64 152, i1 false)
  br label %bb18
bb18:
  %t126 = getelementptr %"compiler/eval:scope", ptr %l76, i32 0, i32 12
  %t127 = load i64, ptr %t126, !tbaa !24
  store i64 %t127, ptr %l15, !tbaa !24
  %t129 = load i64, ptr %l7, !tbaa !24
  store i64 0, ptr %l17, !tbaa !24
  %t131 = load ptr, ptr %l0, !tbaa !29
  %t133 = getelementptr %"compiler/eval:Machine", ptr %t131, i32 0, i32 52
  %t137 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v0, ptr %t133, i64 %t129)
  store ptr %t137, ptr %l82
  br label %bb19
bb19:
  %t138 = load ptr, ptr %l82, !tbaa !29
  %t140 = load i64, ptr %l17, !tbaa !24
  %t143 = getelementptr %"compiler/eval:scope", ptr %t138, i32 0, i32 12
  store i64 %t140, ptr %t143, !tbaa !24
  %t144 = load i64, ptr %l15, !tbaa !24
  %t146 = icmp ne i64 %t144, 0
  br i1 %t146, label %bb20, label %bb21
bb20:
  %t148 = load i32, ptr %l5, !tbaa !23
  %t149 = load i32, ptr %l3, !tbaa !23
  %t152 = icmp eq i32 %t148, %t149
  store i1 %t152, ptr %l87, !tbaa !21
  br label %bb22
bb21:
  store i1 false, ptr %l87, !tbaa !21
  br label %bb22
bb22:
  %t154 = load i1, ptr %l87, !tbaa !21
  br i1 %t154, label %bb23, label %bb24
bb23:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l91, !tbaa !29
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t158 = getelementptr %"compiler/eval:Machine", ptr %t156, i32 0, i32 52
  %t159 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %t160, ptr %v0, ptr %t158, i64 %t159)
  call void @llvm.memmove.p0.p0.i64(ptr %l95, ptr %t160, i64 152, i1 false)
  br label %bb25
bb24:
  br label %bb27
bb25:
  %t163 = getelementptr %"compiler/eval:scope", ptr %l95, i32 0, i32 13
  %t164 = load i64, ptr %t163, !tbaa !24
  %t165 = load ptr, ptr %l91, !tbaa !29
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2epayDrop(ptr %v0, ptr %t165, i64 %t164)
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t167 = load i64, ptr %l15, !tbaa !24
  %t169 = icmp ne i64 %t167, 0
  br i1 %t169, label %bb28, label %bb29
bb28:
  %t171 = load i32, ptr %l5, !tbaa !23
  %t172 = load i32, ptr @G_2ecompiler_2fmir_2eNoBlock, !tbaa !23
  %t175 = icmp ne i32 %t171, %t172
  store i1 %t175, ptr %l99, !tbaa !21
  br label %bb30
bb29:
  store i1 false, ptr %l99, !tbaa !21
  br label %bb30
bb30:
  %t177 = load i1, ptr %l99, !tbaa !21
  br i1 %t177, label %bb31, label %bb32
bb31:
  %t178 = load i32, ptr %l5, !tbaa !23
  %t179 = load i32, ptr %l3, !tbaa !23
  %t182 = icmp ne i32 %t178, %t179
  store i1 %t182, ptr %l103, !tbaa !21
  br label %bb33
bb32:
  store i1 false, ptr %l103, !tbaa !21
  br label %bb33
bb33:
  %t184 = load i1, ptr %l103, !tbaa !21
  br i1 %t184, label %bb34, label %bb35
bb34:
  %t185 = load ptr, ptr %l0, !tbaa !29
  store ptr %t185, ptr %l107, !tbaa !29
  %t186 = load ptr, ptr %l0, !tbaa !29
  %t187 = load i64, ptr %l1, !tbaa !24
  %t192 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %t186, i64 %t187, i32 %a4)
  store %"compiler/eval:Ptr" %t192, ptr %l111
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t193 = load i64, ptr %l15, !tbaa !24
  %t194 = load ptr, ptr %l107, !tbaa !29
  %t195 = load %"compiler/eval:Ptr", ptr %l111
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t194, %"compiler/eval:Ptr" %t195, i64 4, i64 %t193)
  br label %bb37
bb37:
  %t197 = load ptr, ptr %l0, !tbaa !29
  %t198 = load i64, ptr %l1, !tbaa !24
  %t199 = load i64, ptr @G_2ecompiler_2feval_2etJoin, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2efailedHere(ptr %v0, ptr %t197, i64 %t198, i64 %t199)
  br label %bb38
bb38:
  %t203 = load ptr, ptr %l0, !tbaa !29
  %t204 = load i64, ptr %l1, !tbaa !24
  %t205 = load i32, ptr %l5, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t203, i64 %t204, i32 %t205)
  br label %bb39
bb39:
  br label %ret
bb40:
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t210 = load i64, ptr %l1, !tbaa !24
  %t211 = load i32, ptr %l3, !tbaa !23
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %t209, i64 %t210, i32 %t211)
  br label %bb41
bb41:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewalksLetGo(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i1
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca i1
  %l11 = alloca %"compiler/eval:genRec"
  %l14 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l42 = alloca %"compiler/eval:genRec"
  %l44 = alloca %"compiler/eval:genRec"
  %l50 = alloca ptr
  %l56 = alloca %"compiler/eval:genRec"
  %l58 = alloca %"compiler/eval:genRec"
  %l61 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca %"compiler/eval:genRec"
  %l65 = alloca %"compiler/eval:genRec"
  %l66 = alloca i1
  %l67 = alloca i1
  %l70 = alloca i1
  %l74 = alloca i1
  %s2 = alloca %olang.scope
  %rv = alloca i1
  %t57 = alloca %"compiler/eval:genRec", align 8
  %t60 = alloca %"compiler/eval:genRec", align 8
  %t84 = alloca %"compiler/eval:genRec", align 8
  %t87 = alloca %"compiler/eval:genRec", align 8
  %t95 = alloca %"compiler/eval:genRec", align 8
  %t98 = alloca %"compiler/eval:genRec", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i1 false, ptr %l1, !tbaa !21
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/eval:Machine", ptr %t1, i32 0, i32 63
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eLen_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l14
  br label %bb1
bb1:
  %t6 = load i64, ptr %l14, !tbaa !24
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
  store i64 0, ptr %l18, !tbaa !24
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
  store i64 %t31, ptr %l21, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l21, !tbaa !24
  store i64 %t33, ptr %l18, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l18, !tbaa !24
  store i64 %t34, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb36
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
  %t55 = getelementptr %"compiler/eval:Machine", ptr %t53, i32 0, i32 63
  %t56 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t57, ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  call void @llvm.memmove.p0.p0.i64(ptr %l42, ptr %t57, i64 280, i1 false)
  br label %bb12
bb12:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t60, ptr %s2, ptr %l42)
  call void @llvm.memmove.p0.p0.i64(ptr %l44, ptr %t60, i64 280, i1 false)
  br label %bb13
bb13:
  %t62 = getelementptr %"compiler/eval:genRec", ptr %l44, i32 0, i32 5
  %t63 = load i1, ptr %t62, !tbaa !21
  br i1 %t63, label %bb14, label %bb15
bb14:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb15:
  br label %bb16
bb16:
  %t65 = load i64, ptr %l7, !tbaa !24
  store i1 true, ptr %l9, !tbaa !21
  %t67 = load ptr, ptr %l0, !tbaa !29
  %t69 = getelementptr %"compiler/eval:Machine", ptr %t67, i32 0, i32 63
  %t73 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v0, ptr %t69, i64 %t65)
  store ptr %t73, ptr %l50
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l50, !tbaa !29
  %t76 = load i1, ptr %l9, !tbaa !21
  %t79 = getelementptr %"compiler/eval:genRec", ptr %t74, i32 0, i32 5
  store i1 %t76, ptr %t79, !tbaa !21
  %t80 = load ptr, ptr %l0, !tbaa !29
  %t82 = getelementptr %"compiler/eval:Machine", ptr %t80, i32 0, i32 63
  %t83 = load i64, ptr %l7, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %t84, ptr %v0, ptr %v0, ptr %t82, i64 %t83)
  call void @llvm.memmove.p0.p0.i64(ptr %l56, ptr %t84, i64 280, i1 false)
  br label %bb18
bb18:
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t87, ptr %s2, ptr %l56)
  call void @llvm.memmove.p0.p0.i64(ptr %l58, ptr %t87, i64 280, i1 false)
  br label %bb19
bb19:
  call void @llvm.memmove.p0.p0.i64(ptr %l11, ptr %l58, i64 280, i1 false)
  %t89 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  %t92 = icmp eq i64 %t90, 0
  br i1 %t92, label %bb20, label %bb21
bb20:
  %t94 = load ptr, ptr %l0, !tbaa !29
  store ptr %t94, ptr %l62, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %l63, ptr %l11, i64 280, i1 false)
  call void @olang_2emir_2eHelperKind_2eCopy_2ecompiler_2feval_3agenRec(ptr %t95, ptr %s2, ptr %l63)
  call void @llvm.memmove.p0.p0.i64(ptr %l65, ptr %t95, i64 280, i1 false)
  br label %bb22
bb21:
  store i1 false, ptr %l61, !tbaa !21
  br label %bb24
bb22:
  %t97 = load ptr, ptr %l62, !tbaa !29
  call void @llvm.memmove.p0.p0.i64(ptr %t98, ptr %l65, i64 280, i1 false)
  %t99 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshWork(ptr %v0, ptr %s2, ptr %t97, ptr %t98)
  store i1 %t99, ptr %l66
  br label %bb23
bb23:
  %t100 = load i1, ptr %l66, !tbaa !21
  store i1 %t100, ptr %l61, !tbaa !21
  br label %bb24
bb24:
  %t101 = load i1, ptr %l61, !tbaa !21
  br i1 %t101, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l67, !tbaa !21
  br label %bb31
bb26:
  %t102 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 0
  %t103 = load i64, ptr %t102, !tbaa !24
  %t105 = icmp eq i64 %t103, 1
  br i1 %t105, label %bb27, label %bb28
bb27:
  %t107 = load ptr, ptr %l0, !tbaa !29
  %t108 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 1
  %t109 = load i64, ptr %t108, !tbaa !24
  %t110 = getelementptr %"compiler/eval:genRec", ptr %l11, i32 0, i32 3
  %t111 = load i64, ptr %t110, !tbaa !24
  %t115 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2edropWork(ptr %v0, ptr %t107, i64 %t109, i64 %t111)
  store i1 %t115, ptr %l74
  br label %bb29
bb28:
  store i1 false, ptr %l70, !tbaa !21
  br label %bb30
bb29:
  %t116 = load i1, ptr %l74, !tbaa !21
  store i1 %t116, ptr %l70, !tbaa !21
  br label %bb30
bb30:
  %t117 = load i1, ptr %l70, !tbaa !21
  store i1 %t117, ptr %l67, !tbaa !21
  br label %bb31
bb31:
  %t118 = load i1, ptr %l67, !tbaa !21
  br i1 %t118, label %bb32, label %bb33
bb32:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb34
bb33:
  br label %bb34
bb34:
  call void @__olang_scope_close(ptr %s2)
  br label %bb35
bb35:
  %t119 = load i64, ptr %l6, !tbaa !24
  %t121 = add i64 %t119, 1
  store i64 %t121, ptr %l6, !tbaa !24
  br label %bb8
bb36:
  %t123 = load i1, ptr %l1, !tbaa !21
  store i1 %t123, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = load i64, ptr %l2, !tbaa !24
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eat(ptr %v0, ptr %t1, %"compiler/eval:Ptr" %a1, i64 %t3, i1 true)
  store i64 %t7, ptr %l8
  br label %bb1
bb1:
  %t8 = load i64, ptr %l8, !tbaa !24
  store i64 %t8, ptr %l4, !tbaa !24
  %t9 = load i64, ptr %l4, !tbaa !24
  %t11 = icmp slt i64 %t9, 0
  br i1 %t11, label %bb2, label %bb3
bb2:
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t15 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %t13, i64 %t14, i64 %t15)
  br label %bb5
bb5:
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t20 = load i64, ptr %l4, !tbaa !24
  %t21 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %t19, i64 %t20, i64 %t21, i64 %a3)
  br label %bb6
bb6:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrite(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2, i32 %a3, { i64, [4 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l3 = alloca i32
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca i64
  %l6 = alloca i32
  %l8 = alloca { %"compiler/eval:Ptr", i64 }
  %l9 = alloca %"compiler/eval:Ptr"
  %l10 = alloca i64
  %l11 = alloca i64
  %l12 = alloca i64
  %l13 = alloca i64
  %l14 = alloca i64
  %l15 = alloca i64
  %l18 = alloca { %"compiler/eval:Ptr", i64 }
  %l19 = alloca %"compiler/eval:Ptr"
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l24 = alloca i64
  %l25 = alloca i64
  %l27 = alloca { i64, i64 }
  %l33 = alloca i64
  %l36 = alloca i1
  %l43 = alloca i32
  %l49 = alloca %"compiler/eval:Ptr"
  %l53 = alloca { %"compiler/eval:Ptr", i64 }
  %l62 = alloca i64
  %l65 = alloca i64
  %l83 = alloca ptr
  %l84 = alloca i64
  %l85 = alloca ptr
  %l90 = alloca %"compiler/eval:Ptr"
  %l91 = alloca i64
  %l96 = alloca ptr
  %l97 = alloca i64
  %l101 = alloca i64
  %l107 = alloca %"compiler/eval:Ptr"
  %l111 = alloca { %"compiler/eval:Ptr", i64 }
  %l122 = alloca i64
  %l125 = alloca i64
  %l143 = alloca ptr
  %l144 = alloca i64
  %l145 = alloca ptr
  %l150 = alloca %"compiler/eval:Ptr"
  %l151 = alloca i64
  %l160 = alloca ptr
  %l161 = alloca i64
  %l165 = alloca i64
  %l170 = alloca ptr
  %l171 = alloca i64
  %l175 = alloca i64
  %l177 = alloca { i64, ptr }
  %l184 = alloca i64
  %l190 = alloca { i64, i64 }
  %l193 = alloca ptr
  %l194 = alloca i64
  %l199 = alloca { i64, ptr }
  %l203 = alloca ptr
  %l204 = alloca i64
  %l205 = alloca ptr
  %l209 = alloca i64
  %l211 = alloca i64
  %l214 = alloca ptr
  %l215 = alloca i64
  %l219 = alloca i64
  %l225 = alloca ptr
  %l226 = alloca i64
  %l227 = alloca ptr
  %l231 = alloca i64
  %l233 = alloca { i64, ptr }
  %s5 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s18 = alloca %olang.scope
  %s20 = alloca %olang.scope
  %s22 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i32 %a3, ptr %l3
  store { i64, [4 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i64, ptr %l1, !tbaa !24
  %t7 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %t1, i64 %t2, { i64, [1 x i64] } %a2)
  store i64 %t7, ptr %l33
  br label %bb1
bb1:
  %t8 = load i64, ptr %l33, !tbaa !24
  store i64 %t8, ptr %l5, !tbaa !24
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t10 = load i64, ptr %l5, !tbaa !24
  %t13 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %t9, i64 %t10)
  store i1 %t13, ptr %l36
  br label %bb2
bb2:
  %t14 = load i1, ptr %l36, !tbaa !21
  %t15 = xor i1 %t14, true
  br i1 %t15, label %bb3, label %bb4
bb3:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t18 = load { i64, ptr }, ptr @G_2ecompiler_2feval_2eWhyClosed, !tbaa !27
  %t19 = load ptr, ptr @__olang_prog_scope
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %t19, ptr %t17, { i64, ptr } %t18)
  br label %bb5
bb4:
  br label %bb6
bb5:
  br label %ret
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t23 = load i64, ptr %l1, !tbaa !24
  %t24 = load { i64, [4 x i64] }, ptr %l4
  %t28 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %t22, i64 %t23, { i64, [4 x i64] } %t24)
  store i32 %t28, ptr %l43
  br label %bb7
bb7:
  %t29 = load i32, ptr %l43, !tbaa !23
  store i32 %t29, ptr %l6, !tbaa !23
  %t30 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t32 = trunc i64 0 to i32
  %t33 = icmp eq i32 %t30, %t32
  br i1 %t33, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb31
bb10:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load i64, ptr %l1, !tbaa !24
  %t37 = load { i64, [4 x i64] }, ptr %l4
  %t41 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t35, i64 %t36, { i64, [4 x i64] } %t37, i64 1)
  store %"compiler/eval:Ptr" %t41, ptr %l49
  br label %bb11
bb11:
  %t42 = load %"compiler/eval:Ptr", ptr %l49
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = load i32, ptr %l6, !tbaa !23
  %t49 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t43, %"compiler/eval:Ptr" %t42, i32 %t45)
  store { %"compiler/eval:Ptr", i64 } %t49, ptr %l53
  br label %bb12
bb12:
  %t50 = load { %"compiler/eval:Ptr", i64 }, ptr %l53
  store { %"compiler/eval:Ptr", i64 } %t50, ptr %l8
  %t51 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 0
  %t52 = load %"compiler/eval:Ptr", ptr %t51
  store %"compiler/eval:Ptr" %t52, ptr %l9
  %t54 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l8, i32 0, i32 1
  %t55 = load i64, ptr %t54, !tbaa !24
  store i64 %t55, ptr %l10, !tbaa !24
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/eval:Machine", ptr %t57, i32 0, i32 22
  %t60 = load i1, ptr %t59, !tbaa !21
  br i1 %t60, label %bb13, label %bb14
bb13:
  br label %ret
bb14:
  br label %bb15
bb15:
  store i64 0, ptr %l11, !tbaa !24
  %t62 = load i64, ptr %l10, !tbaa !24
  store i64 %t62, ptr %l12, !tbaa !24
  store i64 1, ptr %l13, !tbaa !24
  %t64 = load i64, ptr %l12, !tbaa !24
  %t65 = load i64, ptr %l11, !tbaa !24
  %t68 = icmp sgt i64 %t64, %t65
  br i1 %t68, label %bb16, label %bb17
bb16:
  %t70 = load i64, ptr %l13, !tbaa !24
  %t72 = icmp sgt i64 %t70, 0
  br i1 %t72, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l62, !tbaa !24
  br label %bb21
bb18:
  %t74 = load i64, ptr %l12, !tbaa !24
  %t75 = load i64, ptr %l11, !tbaa !24
  %t78 = sub i64 %t74, %t75
  %t79 = load i64, ptr %l13, !tbaa !24
  %t82 = add i64 %t78, %t79
  %t84 = sub i64 %t82, 1
  %t85 = load i64, ptr %l13, !tbaa !24
  %t88 = sdiv i64 %t84, %t85
  store i64 %t88, ptr %l65, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l65, !tbaa !24
  br label %bb20
bb20:
  %t90 = load i64, ptr %l65, !tbaa !24
  store i64 %t90, ptr %l62, !tbaa !24
  br label %bb21
bb21:
  %t91 = load i64, ptr %l62, !tbaa !24
  store i64 %t91, ptr %l14, !tbaa !24
  store i64 0, ptr %l15, !tbaa !24
  br label %bb22
bb22:
  store %olang.scope zeroinitializer, ptr %s5
  %t92 = load i64, ptr %l15, !tbaa !24
  %t93 = load i64, ptr %l14, !tbaa !24
  %t96 = icmp slt i64 %t92, %t93
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb23, label %bb24
bb23:
  call void @__olang_scope_close(ptr %s5)
  br label %bb30
bb24:
  br label %bb25
bb25:
  %t100 = load i64, ptr %l11, !tbaa !24
  %t101 = load i64, ptr %l15, !tbaa !24
  %t102 = load i64, ptr %l13, !tbaa !24
  %t105 = mul i64 %t101, %t102
  %t108 = add i64 %t100, %t105
  %t110 = load ptr, ptr %l0, !tbaa !29
  store ptr %t110, ptr %l83, !tbaa !29
  %t111 = load i64, ptr %l5, !tbaa !24
  store i64 %t111, ptr %l84, !tbaa !24
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l85, !tbaa !29
  %t113 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 0
  %t114 = load i64, ptr %t113, !tbaa !24
  %t115 = getelementptr %"compiler/eval:Ptr", ptr %l9, i32 0, i32 1
  %t116 = load i64, ptr %t115, !tbaa !24
  %t120 = add i64 %t116, %t108
  %t123 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s5, i64 %t114, i64 %t120)
  store %"compiler/eval:Ptr" %t123, ptr %l90
  br label %bb26
bb26:
  %t124 = load ptr, ptr %l85, !tbaa !29
  %t125 = load %"compiler/eval:Ptr", ptr %l90
  %t126 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t124, %"compiler/eval:Ptr" %t125, i64 1)
  store i64 %t126, ptr %l91
  br label %bb27
bb27:
  %t127 = load ptr, ptr %l83, !tbaa !29
  %t128 = load i64, ptr %l84, !tbaa !24
  %t129 = load i64, ptr %l91, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t127, i64 %t128, i64 %t129)
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s5)
  br label %bb29
bb29:
  %t130 = load i64, ptr %l15, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l15, !tbaa !24
  br label %bb22
bb30:
  br label %bb109
bb31:
  %t134 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t136 = trunc i64 2 to i32
  %t137 = icmp eq i32 %t134, %t136
  br i1 %t137, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb37
bb34:
  %t139 = load ptr, ptr %l0, !tbaa !29
  store ptr %t139, ptr %l96, !tbaa !29
  %t140 = load i64, ptr %l5, !tbaa !24
  store i64 %t140, ptr %l97, !tbaa !24
  %t141 = load ptr, ptr %l0, !tbaa !29
  %t142 = load i64, ptr %l1, !tbaa !24
  %t143 = load { i64, [4 x i64] }, ptr %l4
  %t147 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t141, i64 %t142, { i64, [4 x i64] } %t143)
  store i64 %t147, ptr %l101
  br label %bb35
bb35:
  %t148 = load ptr, ptr %l96, !tbaa !29
  %t149 = load i64, ptr %l97, !tbaa !24
  %t150 = load i64, ptr %l101, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t148, i64 %t149, i64 %t150)
  br label %bb36
bb36:
  br label %bb109
bb37:
  %t151 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t153 = trunc i64 1 to i32
  %t154 = icmp eq i32 %t151, %t153
  br i1 %t154, label %bb38, label %bb39
bb38:
  br label %bb40
bb39:
  br label %bb63
bb40:
  %t156 = load ptr, ptr %l0, !tbaa !29
  %t157 = load i64, ptr %l1, !tbaa !24
  %t158 = load { i64, [4 x i64] }, ptr %l4
  %t162 = call %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %t156, i64 %t157, { i64, [4 x i64] } %t158, i64 1)
  store %"compiler/eval:Ptr" %t162, ptr %l107
  br label %bb41
bb41:
  %t163 = load %"compiler/eval:Ptr", ptr %l107
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = load i32, ptr %l6, !tbaa !23
  %t170 = call { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %t164, %"compiler/eval:Ptr" %t163, i32 %t166)
  store { %"compiler/eval:Ptr", i64 } %t170, ptr %l111
  br label %bb42
bb42:
  %t171 = load { %"compiler/eval:Ptr", i64 }, ptr %l111
  store { %"compiler/eval:Ptr", i64 } %t171, ptr %l18
  %t172 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l18, i32 0, i32 0
  %t173 = load %"compiler/eval:Ptr", ptr %t172
  store %"compiler/eval:Ptr" %t173, ptr %l19
  %t175 = getelementptr { %"compiler/eval:Ptr", i64 }, ptr %l18, i32 0, i32 1
  %t176 = load i64, ptr %t175, !tbaa !24
  store i64 %t176, ptr %l20, !tbaa !24
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t180 = getelementptr %"compiler/eval:Machine", ptr %t178, i32 0, i32 22
  %t181 = load i1, ptr %t180, !tbaa !21
  br i1 %t181, label %bb43, label %bb44
bb43:
  br label %ret
bb44:
  br label %bb45
bb45:
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t183, i64 %t184, i64 34)
  br label %bb46
bb46:
  store i64 0, ptr %l21, !tbaa !24
  %t187 = load i64, ptr %l20, !tbaa !24
  store i64 %t187, ptr %l22, !tbaa !24
  store i64 1, ptr %l23, !tbaa !24
  %t189 = load i64, ptr %l22, !tbaa !24
  %t190 = load i64, ptr %l21, !tbaa !24
  %t193 = icmp sgt i64 %t189, %t190
  br i1 %t193, label %bb47, label %bb48
bb47:
  %t195 = load i64, ptr %l23, !tbaa !24
  %t197 = icmp sgt i64 %t195, 0
  br i1 %t197, label %bb49, label %bb50
bb48:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb52
bb49:
  %t199 = load i64, ptr %l22, !tbaa !24
  %t200 = load i64, ptr %l21, !tbaa !24
  %t203 = sub i64 %t199, %t200
  %t204 = load i64, ptr %l23, !tbaa !24
  %t207 = add i64 %t203, %t204
  %t209 = sub i64 %t207, 1
  %t210 = load i64, ptr %l23, !tbaa !24
  %t213 = sdiv i64 %t209, %t210
  store i64 %t213, ptr %l125, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l125, !tbaa !24
  br label %bb51
bb51:
  %t215 = load i64, ptr %l125, !tbaa !24
  store i64 %t215, ptr %l122, !tbaa !24
  br label %bb52
bb52:
  %t216 = load i64, ptr %l122, !tbaa !24
  store i64 %t216, ptr %l24, !tbaa !24
  store i64 0, ptr %l25, !tbaa !24
  br label %bb53
bb53:
  store %olang.scope zeroinitializer, ptr %s11
  %t217 = load i64, ptr %l25, !tbaa !24
  %t218 = load i64, ptr %l24, !tbaa !24
  %t221 = icmp slt i64 %t217, %t218
  %t223 = xor i1 %t221, true
  br i1 %t223, label %bb54, label %bb55
bb54:
  call void @__olang_scope_close(ptr %s11)
  br label %bb61
bb55:
  br label %bb56
bb56:
  %t225 = load i64, ptr %l21, !tbaa !24
  %t226 = load i64, ptr %l25, !tbaa !24
  %t227 = load i64, ptr %l23, !tbaa !24
  %t230 = mul i64 %t226, %t227
  %t233 = add i64 %t225, %t230
  %t235 = load ptr, ptr %l0, !tbaa !29
  store ptr %t235, ptr %l143, !tbaa !29
  %t236 = load i64, ptr %l5, !tbaa !24
  store i64 %t236, ptr %l144, !tbaa !24
  %t237 = load ptr, ptr %l0, !tbaa !29
  store ptr %t237, ptr %l145, !tbaa !29
  %t238 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 0
  %t239 = load i64, ptr %t238, !tbaa !24
  %t240 = getelementptr %"compiler/eval:Ptr", ptr %l19, i32 0, i32 1
  %t241 = load i64, ptr %t240, !tbaa !24
  %t245 = add i64 %t241, %t233
  %t248 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s11, i64 %t239, i64 %t245)
  store %"compiler/eval:Ptr" %t248, ptr %l150
  br label %bb57
bb57:
  %t249 = load ptr, ptr %l145, !tbaa !29
  %t250 = load %"compiler/eval:Ptr", ptr %l150
  %t251 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %t249, %"compiler/eval:Ptr" %t250, i64 1)
  store i64 %t251, ptr %l151
  br label %bb58
bb58:
  %t252 = load ptr, ptr %l143, !tbaa !29
  %t253 = load i64, ptr %l144, !tbaa !24
  %t254 = load i64, ptr %l151, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendEscaped(ptr %v0, ptr %t252, i64 %t253, i64 %t254, i64 34)
  br label %bb59
bb59:
  call void @__olang_scope_close(ptr %s11)
  br label %bb60
bb60:
  %t255 = load i64, ptr %l25, !tbaa !24
  %t257 = add i64 %t255, 1
  store i64 %t257, ptr %l25, !tbaa !24
  br label %bb53
bb61:
  %t259 = load ptr, ptr %l0, !tbaa !29
  %t260 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t259, i64 %t260, i64 34)
  br label %bb62
bb62:
  br label %bb109
bb63:
  %t263 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t265 = trunc i64 3 to i32
  %t266 = icmp eq i32 %t263, %t265
  br i1 %t266, label %bb64, label %bb65
bb64:
  br label %bb66
bb65:
  br label %bb71
bb66:
  %t268 = load ptr, ptr %l0, !tbaa !29
  %t269 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t268, i64 %t269, i64 39)
  br label %bb67
bb67:
  %t272 = load ptr, ptr %l0, !tbaa !29
  store ptr %t272, ptr %l160, !tbaa !29
  %t273 = load i64, ptr %l5, !tbaa !24
  store i64 %t273, ptr %l161, !tbaa !24
  %t274 = load ptr, ptr %l0, !tbaa !29
  %t275 = load i64, ptr %l1, !tbaa !24
  %t276 = load { i64, [4 x i64] }, ptr %l4
  %t280 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t274, i64 %t275, { i64, [4 x i64] } %t276)
  store i64 %t280, ptr %l165
  br label %bb68
bb68:
  %t281 = load ptr, ptr %l160, !tbaa !29
  %t282 = load i64, ptr %l161, !tbaa !24
  %t283 = load i64, ptr %l165, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendEscaped(ptr %v0, ptr %t281, i64 %t282, i64 %t283, i64 39)
  br label %bb69
bb69:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load i64, ptr %l5, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %t284, i64 %t285, i64 39)
  br label %bb70
bb70:
  br label %bb109
bb71:
  %t288 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t290 = trunc i64 7 to i32
  %t291 = icmp eq i32 %t288, %t290
  br i1 %t291, label %bb72, label %bb73
bb72:
  br label %bb74
bb73:
  br label %bb80
bb74:
  store %olang.scope zeroinitializer, ptr %s14
  %t293 = load ptr, ptr %l0, !tbaa !29
  store ptr %t293, ptr %l170, !tbaa !29
  %t294 = load i64, ptr %l5, !tbaa !24
  store i64 %t294, ptr %l171, !tbaa !24
  %t295 = load ptr, ptr %l0, !tbaa !29
  %t296 = load i64, ptr %l1, !tbaa !24
  %t297 = load { i64, [4 x i64] }, ptr %l4
  %t301 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t295, i64 %t296, { i64, [4 x i64] } %t297)
  store i64 %t301, ptr %l175
  br label %bb75
bb75:
  %t302 = load i64, ptr %l175, !tbaa !24
  %t303 = icmp ne i64 %t302, 0
  br i1 %t303, label %bb76, label %bb77
bb76:
  store { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d9, i32 0, i32 1) }, ptr %l177, !tbaa !27
  br label %bb78
bb77:
  store { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d10, i32 0, i32 1) }, ptr %l177, !tbaa !27
  br label %bb78
bb78:
  %t305 = load ptr, ptr %l170, !tbaa !29
  %t306 = load i64, ptr %l171, !tbaa !24
  %t307 = load { i64, ptr }, ptr %l177, !tbaa !27
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %s14, ptr %t305, i64 %t306, { i64, ptr } %t307)
  br label %bb79
bb79:
  call void @__olang_scope_close(ptr %s14)
  br label %bb109
bb80:
  %t308 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t310 = trunc i64 4 to i32
  %t311 = icmp eq i32 %t308, %t310
  br i1 %t311, label %bb81, label %bb82
bb81:
  br label %bb85
bb82:
  %t313 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t315 = trunc i64 5 to i32
  %t316 = icmp eq i32 %t313, %t315
  br i1 %t316, label %bb83, label %bb84
bb83:
  br label %bb85
bb84:
  br label %bb101
bb85:
  %t318 = load ptr, ptr %l0, !tbaa !29
  %t319 = load i32, ptr %l6, !tbaa !23
  %t322 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %t318, i32 %t319)
  store i64 %t322, ptr %l184
  br label %bb86
bb86:
  %t323 = load i64, ptr @G_2ecompiler_2feval_2evWide, !tbaa !24
  %t324 = load i64, ptr %l184, !tbaa !24
  %t326 = icmp eq i64 %t324, %t323
  br i1 %t326, label %bb87, label %bb88
bb87:
  store %olang.scope zeroinitializer, ptr %s16
  %t328 = load ptr, ptr %l0, !tbaa !29
  %t329 = load i64, ptr %l1, !tbaa !24
  %t330 = load { i64, [4 x i64] }, ptr %l4
  %t334 = call { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %t328, i64 %t329, { i64, [4 x i64] } %t330)
  store { i64, i64 } %t334, ptr %l190
  br label %bb89
bb88:
  %t335 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t337 = trunc i64 4 to i32
  %t338 = icmp eq i32 %t335, %t337
  br i1 %t338, label %bb92, label %bb93
bb89:
  %t340 = load { i64, i64 }, ptr %l190
  store { i64, i64 } %t340, ptr %l27
  %t341 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 0
  %t342 = load i64, ptr %t341, !tbaa !24
  %t344 = getelementptr { i64, i64 }, ptr %l27, i32 0, i32 1
  %t345 = load i64, ptr %t344, !tbaa !24
  %t347 = load ptr, ptr %l0, !tbaa !29
  store ptr %t347, ptr %l193, !tbaa !29
  %t348 = load i64, ptr %l5, !tbaa !24
  store i64 %t348, ptr %l194, !tbaa !24
  %t351 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t353 = trunc i64 4 to i32
  %t354 = icmp eq i32 %t351, %t353
  %t358 = call { i64, ptr } @compiler_2feval_2ewideText(ptr %s16, i64 %t342, i64 %t345, i1 %t354)
  store { i64, ptr } %t358, ptr %l199
  br label %bb90
bb90:
  %t359 = load { i64, ptr }, ptr %l199, !tbaa !27
  %t360 = extractvalue { i64, ptr } %t359, 0
  %t361 = extractvalue { i64, ptr } %t359, 1
  %t362 = mul i64 %t360, 1
  %t363 = call ptr @__olang_scope_alloc(ptr %s16, i64 %t362)
  call void @llvm.memcpy.p0.p0.i64(ptr %t363, ptr %t361, i64 %t362, i1 false)
  %t364 = insertvalue { i64, ptr } undef, i64 %t360, 0
  %t365 = insertvalue { i64, ptr } %t364, ptr %t363, 1
  %t366 = load ptr, ptr %l193, !tbaa !29
  %t367 = load i64, ptr %l194, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %s16, ptr %t366, i64 %t367, { i64, ptr } %t365)
  br label %bb91
bb91:
  call void @__olang_scope_close(ptr %s16)
  br label %bb100
bb92:
  store %olang.scope zeroinitializer, ptr %s18
  %t369 = load ptr, ptr %l0, !tbaa !29
  store ptr %t369, ptr %l203, !tbaa !29
  %t370 = load i64, ptr %l5, !tbaa !24
  store i64 %t370, ptr %l204, !tbaa !24
  %t371 = load ptr, ptr %l0, !tbaa !29
  store ptr %t371, ptr %l205, !tbaa !29
  %t372 = load ptr, ptr %l0, !tbaa !29
  %t373 = load i64, ptr %l1, !tbaa !24
  %t374 = load { i64, [4 x i64] }, ptr %l4
  %t378 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t372, i64 %t373, { i64, [4 x i64] } %t374)
  store i64 %t378, ptr %l209
  br label %bb94
bb93:
  store %olang.scope zeroinitializer, ptr %s20
  %t379 = load ptr, ptr %l0, !tbaa !29
  store ptr %t379, ptr %l214, !tbaa !29
  %t380 = load i64, ptr %l5, !tbaa !24
  store i64 %t380, ptr %l215, !tbaa !24
  %t381 = load ptr, ptr %l0, !tbaa !29
  %t382 = load i64, ptr %l1, !tbaa !24
  %t383 = load { i64, [4 x i64] }, ptr %l4
  %t387 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t381, i64 %t382, { i64, [4 x i64] } %t383)
  store i64 %t387, ptr %l219
  br label %bb97
bb94:
  %t388 = load i32, ptr %l6, !tbaa !23
  %t389 = load ptr, ptr %l205, !tbaa !29
  %t390 = load i64, ptr %l209, !tbaa !24
  %t392 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %t389, i64 %t390, i32 %t388)
  store i64 %t392, ptr %l211
  br label %bb95
bb95:
  %t393 = load i64, ptr %l211, !tbaa !24
  %t394 = call i64 @__olang_fmt_i64(ptr null, i64 %t393)
  %t395 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t394)
  %t396 = call i64 @__olang_fmt_i64(ptr %t395, i64 %t393)
  %t397 = insertvalue { i64, ptr } undef, i64 %t394, 0
  %t398 = insertvalue { i64, ptr } %t397, ptr %t395, 1
  %t400 = extractvalue { i64, ptr } %t398, 0
  %t401 = extractvalue { i64, ptr } %t398, 1
  %t402 = mul i64 %t400, 1
  %t403 = call ptr @__olang_scope_alloc(ptr %s18, i64 %t402)
  call void @llvm.memcpy.p0.p0.i64(ptr %t403, ptr %t401, i64 %t402, i1 false)
  %t404 = insertvalue { i64, ptr } undef, i64 %t400, 0
  %t405 = insertvalue { i64, ptr } %t404, ptr %t403, 1
  %t406 = load ptr, ptr %l203, !tbaa !29
  %t407 = load i64, ptr %l204, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %s18, ptr %t406, i64 %t407, { i64, ptr } %t405)
  br label %bb96
bb96:
  call void @__olang_scope_close(ptr %s18)
  br label %bb99
bb97:
  %t409 = load i64, ptr %l219, !tbaa !24
  %t411 = call i64 @__olang_fmt_u64(ptr null, i64 %t409)
  %t412 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t411)
  %t413 = call i64 @__olang_fmt_u64(ptr %t412, i64 %t409)
  %t414 = insertvalue { i64, ptr } undef, i64 %t411, 0
  %t415 = insertvalue { i64, ptr } %t414, ptr %t412, 1
  %t417 = extractvalue { i64, ptr } %t415, 0
  %t418 = extractvalue { i64, ptr } %t415, 1
  %t419 = mul i64 %t417, 1
  %t420 = call ptr @__olang_scope_alloc(ptr %s20, i64 %t419)
  call void @llvm.memcpy.p0.p0.i64(ptr %t420, ptr %t418, i64 %t419, i1 false)
  %t421 = insertvalue { i64, ptr } undef, i64 %t417, 0
  %t422 = insertvalue { i64, ptr } %t421, ptr %t420, 1
  %t423 = load ptr, ptr %l214, !tbaa !29
  %t424 = load i64, ptr %l215, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %s20, ptr %t423, i64 %t424, { i64, ptr } %t422)
  br label %bb98
bb98:
  call void @__olang_scope_close(ptr %s20)
  br label %bb99
bb99:
  br label %bb100
bb100:
  br label %bb109
bb101:
  %t426 = load i32, ptr %l3, !range !{i32 0, i32 8}
  %t428 = trunc i64 6 to i32
  %t429 = icmp eq i32 %t426, %t428
  br i1 %t429, label %bb102, label %bb103
bb102:
  br label %bb104
bb103:
  br label %bb108
bb104:
  store %olang.scope zeroinitializer, ptr %s22
  %t431 = load ptr, ptr %l0, !tbaa !29
  store ptr %t431, ptr %l225, !tbaa !29
  %t432 = load i64, ptr %l5, !tbaa !24
  store i64 %t432, ptr %l226, !tbaa !24
  %t433 = load ptr, ptr %l0, !tbaa !29
  store ptr %t433, ptr %l227, !tbaa !29
  %t434 = load ptr, ptr %l0, !tbaa !29
  %t435 = load i64, ptr %l1, !tbaa !24
  %t436 = load { i64, [4 x i64] }, ptr %l4
  %t440 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %t434, i64 %t435, { i64, [4 x i64] } %t436)
  store i64 %t440, ptr %l231
  br label %bb105
bb105:
  %t441 = load i32, ptr %l6, !tbaa !23
  %t442 = load ptr, ptr %l227, !tbaa !29
  %t443 = load i64, ptr %l231, !tbaa !24
  %t445 = call { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatText(ptr %v0, ptr %s22, ptr %t442, i64 %t443, i32 %t441)
  store { i64, ptr } %t445, ptr %l233
  br label %bb106
bb106:
  %t446 = load { i64, ptr }, ptr %l233, !tbaa !27
  %t447 = extractvalue { i64, ptr } %t446, 0
  %t448 = extractvalue { i64, ptr } %t446, 1
  %t449 = mul i64 %t447, 1
  %t450 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t449)
  call void @llvm.memcpy.p0.p0.i64(ptr %t450, ptr %t448, i64 %t449, i1 false)
  %t451 = insertvalue { i64, ptr } undef, i64 %t447, 0
  %t452 = insertvalue { i64, ptr } %t451, ptr %t450, 1
  %t453 = load ptr, ptr %l225, !tbaa !29
  %t454 = load i64, ptr %l226, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %s22, ptr %t453, i64 %t454, { i64, ptr } %t452)
  br label %bb107
bb107:
  call void @__olang_scope_close(ptr %s22)
  br label %bb109
bb108:
  call void @__olang_check_failed(ptr @olang_loc_8ccc3ef59c04d332_c9a1f89b24f6a8f6)
  unreachable
bb109:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteElems(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [1 x i64] } %a4) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i32
  %l4 = alloca { i64, [1 x i64] }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca %"compiler/mir:Range"
  %l8 = alloca i32
  %l9 = alloca i32
  %l10 = alloca i32
  %l11 = alloca i32
  %l12 = alloca i32
  %l13 = alloca i32
  %l14 = alloca %"compiler/mir:Range"
  %l15 = alloca i32
  %l16 = alloca i32
  %l17 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %l20 = alloca i32
  %l21 = alloca { i64, [1 x i64] }
  %l24 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca %"compiler/eval:Ptr"
  %l32 = alloca i64
  %l41 = alloca i32
  %l44 = alloca i32
  %l62 = alloca ptr
  %l68 = alloca %"compiler/eval:Ptr"
  %l76 = alloca i8
  %l87 = alloca i32
  %l90 = alloca i32
  %l109 = alloca ptr
  %l117 = alloca i32
  %l119 = alloca { i64, [1 x i64] }
  %l120 = alloca ptr
  %l121 = alloca ptr
  %l129 = alloca %"compiler/eval:Ptr"
  %l132 = alloca i32
  %l134 = alloca i1
  %s4 = alloca %olang.scope
  %s8 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store %"compiler/eval:Ptr" %a2, ptr %l2
  store i32 %a3, ptr %l3
  store { i64, [1 x i64] } %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load i32, ptr %l3, !tbaa !23
  %t5 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2esize(ptr %v0, ptr %t1, i32 %t2)
  store i64 %t5, ptr %l24
  br label %bb1
bb1:
  %t6 = load i64, ptr %l24, !tbaa !24
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
  br label %bb4
bb3:
  br label %bb7
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l28, !tbaa !29
  %t17 = load %"compiler/eval:Ptr", ptr %l2
  store %"compiler/eval:Ptr" %t17, ptr %l29
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l3, !tbaa !23
  %t22 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %t18, i32 %t19)
  store i64 %t22, ptr %l32
  br label %bb5
bb5:
  %t23 = load i64, ptr %l6, !tbaa !24
  %t24 = load ptr, ptr %l28, !tbaa !29
  %t25 = load %"compiler/eval:Ptr", ptr %l29
  %t26 = load i64, ptr %l32, !tbaa !24
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t24, %"compiler/eval:Ptr" %t25, i64 %t26, i64 %t23)
  br label %bb6
bb6:
  br label %bb50
bb7:
  %t28 = load { i64, [1 x i64] }, ptr %l4
  %t30 = extractvalue { i64, [1 x i64] } %t28, 0
  %t31 = icmp eq i64 %t30, 1
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t33 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t34 = getelementptr { %"compiler/mir:Range" }, ptr %t33, i32 0, i32 0
  %t35 = load %"compiler/mir:Range", ptr %t34
  store %"compiler/mir:Range" %t35, ptr %l7
  br label %bb10
bb9:
  br label %bb26
bb10:
  store i32 0, ptr %l8, !tbaa !23
  %t37 = getelementptr %"compiler/mir:Range", ptr %l7, i32 0, i32 1
  %t38 = load i32, ptr %t37, !tbaa !23
  store i32 %t38, ptr %l9, !tbaa !23
  store i32 1, ptr %l10, !tbaa !23
  %t40 = load i32, ptr %l9, !tbaa !23
  %t41 = load i32, ptr %l8, !tbaa !23
  %t44 = icmp sgt i32 %t40, %t41
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = load i32, ptr %l10, !tbaa !23
  %t48 = icmp sgt i32 %t46, 0
  br i1 %t48, label %bb13, label %bb14
bb12:
  store i32 0, ptr %l41, !tbaa !23
  br label %bb16
bb13:
  %t50 = load i32, ptr %l9, !tbaa !23
  %t51 = load i32, ptr %l8, !tbaa !23
  %t54 = sub i32 %t50, %t51
  %t55 = load i32, ptr %l10, !tbaa !23
  %t58 = add i32 %t54, %t55
  %t60 = sub i32 %t58, 1
  %t61 = load i32, ptr %l10, !tbaa !23
  %t64 = sdiv i32 %t60, %t61
  store i32 %t64, ptr %l44, !tbaa !23
  br label %bb15
bb14:
  store i32 0, ptr %l44, !tbaa !23
  br label %bb15
bb15:
  %t66 = load i32, ptr %l44, !tbaa !23
  store i32 %t66, ptr %l41, !tbaa !23
  br label %bb16
bb16:
  %t67 = load i32, ptr %l41, !tbaa !23
  store i32 %t67, ptr %l11, !tbaa !23
  store i32 0, ptr %l12, !tbaa !23
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s4
  %t68 = load i32, ptr %l12, !tbaa !23
  %t69 = load i32, ptr %l11, !tbaa !23
  %t72 = icmp slt i32 %t68, %t69
  %t74 = xor i1 %t72, true
  br i1 %t74, label %bb18, label %bb19
bb18:
  call void @__olang_scope_close(ptr %s4)
  br label %bb25
bb19:
  br label %bb20
bb20:
  %t76 = load i32, ptr %l8, !tbaa !23
  %t77 = load i32, ptr %l12, !tbaa !23
  %t78 = load i32, ptr %l10, !tbaa !23
  %t81 = mul i32 %t77, %t78
  %t84 = add i32 %t76, %t81
  store i32 %t84, ptr %l13, !tbaa !23
  %t86 = load ptr, ptr %l0, !tbaa !29
  store ptr %t86, ptr %l62, !tbaa !29
  %t87 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t88 = load i64, ptr %t87, !tbaa !24
  %t89 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t90 = load i64, ptr %t89, !tbaa !24
  %t91 = load i32, ptr %l13, !tbaa !23
  %t93 = sext i32 %t91 to i64
  %t96 = add i64 %t90, %t93
  %t99 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s4, i64 %t88, i64 %t96)
  store %"compiler/eval:Ptr" %t99, ptr %l68
  br label %bb21
bb21:
  %t100 = load ptr, ptr %l1, !tbaa !29
  %t102 = getelementptr %"compiler/mir:Fn", ptr %t100, i32 0, i32 21
  %t103 = getelementptr %"compiler/mir:Range", ptr %l7, i32 0, i32 0
  %t104 = load i32, ptr %t103, !tbaa !23
  %t106 = sext i32 %t104 to i64
  %t107 = load i32, ptr %l13, !tbaa !23
  %t109 = sext i32 %t107 to i64
  %t112 = add i64 %t106, %t109
  %t115 = call i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v1, ptr %t102, i64 %t112)
  store i8 %t115, ptr %l76
  br label %bb22
bb22:
  %t116 = load i8, ptr %l76, !tbaa !22
  %t117 = zext i8 %t116 to i64
  %t118 = load ptr, ptr %l62, !tbaa !29
  %t119 = load %"compiler/eval:Ptr", ptr %l68
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %v0, ptr %t118, %"compiler/eval:Ptr" %t119, i64 1, i64 %t117)
  br label %bb23
bb23:
  call void @__olang_scope_close(ptr %s4)
  br label %bb24
bb24:
  %t121 = load i32, ptr %l12, !tbaa !23
  %t123 = add i32 %t121, 1
  store i32 %t123, ptr %l12, !tbaa !23
  br label %bb17
bb25:
  br label %bb50
bb26:
  %t125 = load { i64, [1 x i64] }, ptr %l4
  %t127 = extractvalue { i64, [1 x i64] } %t125, 0
  %t128 = icmp eq i64 %t127, 2
  br i1 %t128, label %bb27, label %bb28
bb27:
  %t130 = getelementptr { i64, [1 x i64] }, ptr %l4, i32 0, i32 1
  %t131 = getelementptr { %"compiler/mir:Range" }, ptr %t130, i32 0, i32 0
  %t132 = load %"compiler/mir:Range", ptr %t131
  store %"compiler/mir:Range" %t132, ptr %l14
  br label %bb29
bb28:
  br label %bb49
bb29:
  store i32 0, ptr %l15, !tbaa !23
  %t134 = getelementptr %"compiler/mir:Range", ptr %l14, i32 0, i32 1
  %t135 = load i32, ptr %t134, !tbaa !23
  store i32 %t135, ptr %l16, !tbaa !23
  store i32 1, ptr %l17, !tbaa !23
  %t137 = load i32, ptr %l16, !tbaa !23
  %t138 = load i32, ptr %l15, !tbaa !23
  %t141 = icmp sgt i32 %t137, %t138
  br i1 %t141, label %bb30, label %bb31
bb30:
  %t143 = load i32, ptr %l17, !tbaa !23
  %t145 = icmp sgt i32 %t143, 0
  br i1 %t145, label %bb32, label %bb33
bb31:
  store i32 0, ptr %l87, !tbaa !23
  br label %bb35
bb32:
  %t147 = load i32, ptr %l16, !tbaa !23
  %t148 = load i32, ptr %l15, !tbaa !23
  %t151 = sub i32 %t147, %t148
  %t152 = load i32, ptr %l17, !tbaa !23
  %t155 = add i32 %t151, %t152
  %t157 = sub i32 %t155, 1
  %t158 = load i32, ptr %l17, !tbaa !23
  %t161 = sdiv i32 %t157, %t158
  store i32 %t161, ptr %l90, !tbaa !23
  br label %bb34
bb33:
  store i32 0, ptr %l90, !tbaa !23
  br label %bb34
bb34:
  %t163 = load i32, ptr %l90, !tbaa !23
  store i32 %t163, ptr %l87, !tbaa !23
  br label %bb35
bb35:
  %t164 = load i32, ptr %l87, !tbaa !23
  store i32 %t164, ptr %l18, !tbaa !23
  store i32 0, ptr %l19, !tbaa !23
  br label %bb36
bb36:
  store %olang.scope zeroinitializer, ptr %s8
  %t165 = load i32, ptr %l19, !tbaa !23
  %t166 = load i32, ptr %l18, !tbaa !23
  %t169 = icmp slt i32 %t165, %t166
  %t171 = xor i1 %t169, true
  br i1 %t171, label %bb37, label %bb38
bb37:
  call void @__olang_scope_close(ptr %s8)
  br label %bb48
bb38:
  br label %bb39
bb39:
  %t173 = load i32, ptr %l15, !tbaa !23
  %t174 = load i32, ptr %l19, !tbaa !23
  %t175 = load i32, ptr %l17, !tbaa !23
  %t178 = mul i32 %t174, %t175
  %t181 = add i32 %t173, %t178
  store i32 %t181, ptr %l20, !tbaa !23
  %t183 = load ptr, ptr %l1, !tbaa !29
  %t185 = getelementptr %"compiler/mir:Fn", ptr %t183, i32 0, i32 19
  store ptr %t185, ptr %l109, !tbaa !29
  %t186 = load ptr, ptr %l1, !tbaa !29
  %t188 = getelementptr %"compiler/mir:Fn", ptr %t186, i32 0, i32 20
  %t189 = getelementptr %"compiler/mir:Range", ptr %l14, i32 0, i32 0
  %t190 = load i32, ptr %t189, !tbaa !23
  %t192 = sext i32 %t190 to i64
  %t193 = load i32, ptr %l20, !tbaa !23
  %t195 = sext i32 %t193 to i64
  %t198 = add i64 %t192, %t195
  %t201 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v1, ptr %t188, i64 %t198)
  store i32 %t201, ptr %l117
  br label %bb40
bb40:
  %t202 = load i32, ptr %l117, !tbaa !23
  %t203 = sext i32 %t202 to i64
  %t204 = load ptr, ptr %l109, !tbaa !29
  %t206 = call { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v1, ptr %t204, i64 %t203)
  store { i64, [1 x i64] } %t206, ptr %l119
  br label %bb41
bb41:
  %t207 = load { i64, [1 x i64] }, ptr %l119
  store { i64, [1 x i64] } %t207, ptr %l21
  %t208 = load ptr, ptr %l0, !tbaa !29
  store ptr %t208, ptr %l120, !tbaa !29
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l121, !tbaa !29
  %t210 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 0
  %t211 = load i64, ptr %t210, !tbaa !24
  %t212 = getelementptr %"compiler/eval:Ptr", ptr %l2, i32 0, i32 1
  %t213 = load i64, ptr %t212, !tbaa !24
  %t214 = load i32, ptr %l20, !tbaa !23
  %t216 = sext i32 %t214 to i64
  %t217 = load i64, ptr %l5, !tbaa !24
  %t220 = mul i64 %t216, %t217
  %t223 = add i64 %t213, %t220
  %t226 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s8, i64 %t211, i64 %t223)
  store %"compiler/eval:Ptr" %t226, ptr %l129
  br label %bb42
bb42:
  %t227 = load i32, ptr %l3, !tbaa !23
  %t228 = load { i64, [1 x i64] }, ptr %l21
  %t229 = load ptr, ptr %l120, !tbaa !29
  %t230 = load ptr, ptr %l121, !tbaa !29
  %t231 = load %"compiler/eval:Ptr", ptr %l129
  %t234 = call i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteItem(ptr %v0, ptr %v1, ptr %t229, ptr %t230, %"compiler/eval:Ptr" %t231, i32 %t227, { i64, [1 x i64] } %t228)
  store i32 %t234, ptr %l132
  %t235 = icmp ne i32 %t234, 0
  br i1 %t235, label %bb44, label %ok.236, !prof !99
ok.236:
  br label %bb43
bb43:
  br label %bb46
bb44:
  %t237 = load i32, ptr %l132, !tbaa !23
  %t238 = ashr i32 %t237, 16
  %t240 = icmp eq i32 %t238, 1
  store i1 %t240, ptr %l134, !tbaa !21
  br label %bb45
bb45:
  call void @__olang_scope_close(ptr %s8)
  br label %ret
bb46:
  call void @__olang_scope_close(ptr %s8)
  br label %bb47
bb47:
  %t241 = load i32, ptr %l19, !tbaa !23
  %t243 = add i32 %t241, 1
  store i32 %t243, ptr %l19, !tbaa !23
  br label %bb36
bb48:
  br label %bb50
bb49:
  call void @__olang_check_failed(ptr @olang_loc_3aba056b97310e62_2c3874c5956ac10e)
  unreachable
bb50:
  br label %ret
ret:
  ret void
}

define dso_local { i64, i64 } @compiler_2feval_2eextend128(i64 %a0, i64 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i1
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l16 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i1
  %l24 = alloca i64
  %l28 = alloca i64
  %l30 = alloca i64
  %l36 = alloca i64
  %l38 = alloca i64
  %l41 = alloca i1
  %l44 = alloca i64
  %l48 = alloca i64
  %l50 = alloca i64
  %l53 = alloca i64
  %l56 = alloca i64
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
  %t3 = icmp sge i64 %t1, 128
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
  %t14 = icmp sgt i64 %t12, 64
  br i1 %t14, label %bb4, label %bb5
bb4:
  %t16 = load i64, ptr %l2, !tbaa !24
  %t18 = sub i64 %t16, 64
  store i64 %t18, ptr %l4, !tbaa !24
  %t20 = load i64, ptr %l1, !tbaa !24
  store i64 %t20, ptr %l16, !tbaa !24
  %t21 = load i64, ptr %l4, !tbaa !24
  %t23 = call i64 @compiler_2feval_2ebmask(i64 %t21)
  store i64 %t23, ptr %l18
  br label %bb6
bb5:
  br label %bb14
bb6:
  %t24 = load i64, ptr %l16, !tbaa !24
  %t25 = load i64, ptr %l18, !tbaa !24
  %t26 = and i64 %t24, %t25
  store i64 %t26, ptr %l5, !tbaa !24
  %t28 = load i1, ptr %l3, !tbaa !21
  br i1 %t28, label %bb7, label %bb8
bb7:
  %t30 = load i64, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l4, !tbaa !24
  %t33 = sub i64 %t31, 1
  store i64 %t33, ptr %l24, !tbaa !24
  %t35 = load i64, ptr %l24, !tbaa !24
  %t36 = load i64, ptr %l24, !tbaa !24
  %t37 = ashr i64 %t30, %t36
  %t39 = and i64 %t37, 1
  %t41 = icmp eq i64 %t39, 1
  store i1 %t41, ptr %l21, !tbaa !21
  br label %bb9
bb8:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t43 = load i1, ptr %l21, !tbaa !21
  br i1 %t43, label %bb10, label %bb11
bb10:
  %t44 = load i64, ptr %l5, !tbaa !24
  store i64 %t44, ptr %l28, !tbaa !24
  %t45 = load i64, ptr %l4, !tbaa !24
  %t47 = call i64 @compiler_2feval_2ebmask(i64 %t45)
  store i64 %t47, ptr %l30
  br label %bb12
bb11:
  br label %bb13
bb12:
  %t48 = load i64, ptr %l30, !tbaa !24
  %t49 = xor i64 %t48, -1
  %t50 = load i64, ptr %l28, !tbaa !24
  %t52 = or i64 %t50, %t49
  store i64 %t52, ptr %l5, !tbaa !24
  br label %bb13
bb13:
  %t54 = load i64, ptr %l0, !tbaa !24
  %t55 = load i64, ptr %l5, !tbaa !24
  %t57 = insertvalue { i64, i64 } undef, i64 %t54, 0
  %t59 = insertvalue { i64, i64 } %t57, i64 %t55, 1
  store { i64, i64 } %t59, ptr %rv
  br label %ret
bb14:
  %t61 = load i64, ptr %l0, !tbaa !24
  store i64 %t61, ptr %l36, !tbaa !24
  %t62 = load i64, ptr %l2, !tbaa !24
  %t64 = call i64 @compiler_2feval_2ebmask(i64 %t62)
  store i64 %t64, ptr %l38
  br label %bb15
bb15:
  %t65 = load i64, ptr %l36, !tbaa !24
  %t66 = load i64, ptr %l38, !tbaa !24
  %t67 = and i64 %t65, %t66
  store i64 %t67, ptr %l6, !tbaa !24
  %t69 = load i1, ptr %l3, !tbaa !21
  br i1 %t69, label %bb16, label %bb17
bb16:
  %t71 = load i64, ptr %l6, !tbaa !24
  %t72 = load i64, ptr %l2, !tbaa !24
  %t74 = sub i64 %t72, 1
  store i64 %t74, ptr %l44, !tbaa !24
  %t76 = load i64, ptr %l44, !tbaa !24
  %t77 = load i64, ptr %l44, !tbaa !24
  %t78 = ashr i64 %t71, %t77
  %t80 = and i64 %t78, 1
  %t82 = icmp eq i64 %t80, 1
  store i1 %t82, ptr %l41, !tbaa !21
  br label %bb18
bb17:
  store i1 false, ptr %l41, !tbaa !21
  br label %bb18
bb18:
  %t84 = load i1, ptr %l41, !tbaa !21
  br i1 %t84, label %bb19, label %bb20
bb19:
  %t85 = load i64, ptr %l6, !tbaa !24
  store i64 %t85, ptr %l48, !tbaa !24
  %t86 = load i64, ptr %l2, !tbaa !24
  %t88 = call i64 @compiler_2feval_2ebmask(i64 %t86)
  store i64 %t88, ptr %l50
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t89 = load i64, ptr %l50, !tbaa !24
  %t90 = xor i64 %t89, -1
  %t91 = load i64, ptr %l48, !tbaa !24
  %t93 = or i64 %t91, %t90
  store i64 %t93, ptr %l6, !tbaa !24
  br label %bb22
bb22:
  %t95 = load i64, ptr %l6, !tbaa !24
  store i64 %t95, ptr %l53, !tbaa !24
  %t96 = load i1, ptr %l3, !tbaa !21
  %t98 = xor i1 %t96, true
  br i1 %t98, label %bb23, label %bb24
bb23:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb25
bb24:
  %t100 = load i64, ptr %l6, !tbaa !24
  %t102 = ashr i64 %t100, 63
  store i64 %t102, ptr %l56, !tbaa !24
  br label %bb25
bb25:
  %t104 = load i64, ptr %l53, !tbaa !24
  %t105 = insertvalue { i64, i64 } undef, i64 %t104, 0
  %t106 = load i64, ptr %l56, !tbaa !24
  %t107 = insertvalue { i64, i64 } %t105, i64 %t106, 1
  store { i64, i64 } %t107, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
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
  %t3 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %s0, ptr %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d11, i32 0, i32 1) })
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
  %t108 = load i32, ptr %l65, !range !{i32 0, i32 51}
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
  %t186 = load i32, ptr %l93, !range !{i32 0, i32 51}
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
  %t276 = load i32, ptr %l126, !range !{i32 0, i32 51}
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
  %t375 = load i32, ptr %l159, !range !{i32 0, i32 51}
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

define dso_local i1 @compiler_2feval_2efits128(i64 %a0, i64 %a1, i1 %a2, i64 %a3, i1 %a4) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i1
  %l5 = alloca { i64, i64 }
  %l8 = alloca { i64, i64 }
  %l12 = alloca i1
  %l19 = alloca { i64, i64 }
  %l26 = alloca i64
  %l30 = alloca { i64, i64 }
  %l37 = alloca i64
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a3, ptr %l3
  store i1 %a4, ptr %l4
  br label %start
start:
  br label %bb0
bb0:
  br i1 %a2, label %bb1, label %bb2
bb1:
  %t3 = load i64, ptr %l1, !tbaa !24
  %t5 = icmp slt i64 %t3, 0
  store i1 %t5, ptr %l12, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb3
bb3:
  %t7 = load i1, ptr %l12, !tbaa !21
  br i1 %t7, label %bb4, label %bb5
bb4:
  %t8 = load i1, ptr %l4, !tbaa !21
  %t10 = xor i1 %t8, true
  br i1 %t10, label %bb6, label %bb7
bb5:
  br label %bb11
bb6:
  store i1 false, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  %t13 = load i64, ptr %l3, !tbaa !24
  %t15 = call { i64, i64 } @compiler_2feval_2ewideMin(i64 %t13)
  store { i64, i64 } %t15, ptr %l19
  br label %bb9
bb9:
  %t16 = load { i64, i64 }, ptr %l19
  store { i64, i64 } %t16, ptr %l5
  %t17 = getelementptr { i64, i64 }, ptr %l5, i32 0, i32 0
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = getelementptr { i64, i64 }, ptr %l5, i32 0, i32 1
  %t21 = load i64, ptr %t20, !tbaa !24
  %t23 = load i64, ptr %l0, !tbaa !24
  %t24 = load i64, ptr %l1, !tbaa !24
  %t31 = call i64 @compiler_2feval_2ecmp128(i64 %t23, i64 %t24, i64 %t18, i64 %t21, i1 true)
  store i64 %t31, ptr %l26
  br label %bb10
bb10:
  %t32 = load i64, ptr %l26, !tbaa !24
  %t33 = icmp sge i64 %t32, 0
  store i1 %t33, ptr %rv
  br label %ret
bb11:
  %t35 = load i64, ptr %l3, !tbaa !24
  %t36 = load i1, ptr %l4, !tbaa !21
  %t39 = call { i64, i64 } @compiler_2feval_2ewideMax(i64 %t35, i1 %t36)
  store { i64, i64 } %t39, ptr %l30
  br label %bb12
bb12:
  %t40 = load { i64, i64 }, ptr %l30
  store { i64, i64 } %t40, ptr %l8
  %t41 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 0
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = getelementptr { i64, i64 }, ptr %l8, i32 0, i32 1
  %t45 = load i64, ptr %t44, !tbaa !24
  %t47 = load i64, ptr %l0, !tbaa !24
  %t48 = load i64, ptr %l1, !tbaa !24
  %t55 = call i64 @compiler_2feval_2ecmp128(i64 %t47, i64 %t48, i64 %t42, i64 %t45, i1 false)
  store i64 %t55, ptr %l37
  br label %bb13
bb13:
  %t56 = load i64, ptr %l37, !tbaa !24
  %t57 = icmp sle i64 %t56, 0
  store i1 %t57, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2feval_2eisNaNBits(ptr %v0, i64 %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca i64
  %l1 = alloca { i64, ptr }
  %l2 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i1
  %l7 = alloca i64
  %l9 = alloca i1
  %l10 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i64
  %l15 = alloca i1
  %l16 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i64
  %l21 = alloca i1
  %l22 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l36 = alloca i1
  %l38 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i1
  store i64 %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t3 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t1, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d12, i32 0, i32 1) })
  store i1 %t3, ptr %l6
  br label %bb1
bb1:
  %t4 = load i1, ptr %l6, !tbaa !21
  br i1 %t4, label %bb2, label %bb3
bb2:
  store i64 10, ptr %l7, !tbaa !24
  br label %bb12
bb3:
  %t5 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t7 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t5, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d13, i32 0, i32 1) })
  store i1 %t7, ptr %l9
  br label %bb4
bb4:
  %t8 = load i1, ptr %l9, !tbaa !21
  br i1 %t8, label %bb5, label %bb6
bb5:
  store i64 7, ptr %l10, !tbaa !24
  br label %bb11
bb6:
  %t9 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t11 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t9, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d14, i32 0, i32 1) })
  store i1 %t11, ptr %l12
  br label %bb7
bb7:
  %t12 = load i1, ptr %l12, !tbaa !21
  br i1 %t12, label %bb8, label %bb9
bb8:
  store i64 23, ptr %l13, !tbaa !24
  br label %bb10
bb9:
  store i64 52, ptr %l13, !tbaa !24
  br label %bb10
bb10:
  %t13 = load i64, ptr %l13, !tbaa !24
  store i64 %t13, ptr %l10, !tbaa !24
  br label %bb11
bb11:
  %t14 = load i64, ptr %l10, !tbaa !24
  store i64 %t14, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t15 = load i64, ptr %l7, !tbaa !24
  store i64 %t15, ptr %l2, !tbaa !24
  %t16 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t18 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t16, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d15, i32 0, i32 1) })
  store i1 %t18, ptr %l15
  br label %bb13
bb13:
  %t19 = load i1, ptr %l15, !tbaa !21
  br i1 %t19, label %bb14, label %bb15
bb14:
  store i1 true, ptr %l16, !tbaa !21
  br label %bb17
bb15:
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t22 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t20, { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d16, i32 0, i32 1) })
  store i1 %t22, ptr %l18
  br label %bb16
bb16:
  %t23 = load i1, ptr %l18, !tbaa !21
  store i1 %t23, ptr %l16, !tbaa !21
  br label %bb17
bb17:
  %t24 = load i1, ptr %l16, !tbaa !21
  br i1 %t24, label %bb18, label %bb19
bb18:
  store i64 16, ptr %l19, !tbaa !24
  br label %bb24
bb19:
  %t25 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t27 = call i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %s0, { i64, ptr } %t25, { i64, ptr } { i64 3, ptr getelementptr inbounds (<{ i64, [3 x i8] }>, ptr @.d17, i32 0, i32 1) })
  store i1 %t27, ptr %l21
  br label %bb20
bb20:
  %t28 = load i1, ptr %l21, !tbaa !21
  br i1 %t28, label %bb21, label %bb22
bb21:
  store i64 32, ptr %l22, !tbaa !24
  br label %bb23
bb22:
  store i64 64, ptr %l22, !tbaa !24
  br label %bb23
bb23:
  %t29 = load i64, ptr %l22, !tbaa !24
  store i64 %t29, ptr %l19, !tbaa !24
  br label %bb24
bb24:
  %t30 = load i64, ptr %l19, !tbaa !24
  %t33 = sub i64 %t30, 1
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = sub i64 %t33, %t34
  store i64 %t37, ptr %l26, !tbaa !24
  %t38 = load i64, ptr %l26, !tbaa !24
  %t39 = load i64, ptr %l26, !tbaa !24
  %t40 = shl i64 1, %t39
  %t42 = sub i64 %t40, 1
  %t43 = load i64, ptr %l2, !tbaa !24
  store i64 %t43, ptr %l29, !tbaa !24
  %t45 = load i64, ptr %l29, !tbaa !24
  %t46 = load i64, ptr %l29, !tbaa !24
  %t47 = shl i64 %t42, %t46
  store i64 %t47, ptr %l4, !tbaa !24
  %t49 = load i64, ptr %l0, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = and i64 %t49, %t50
  %t54 = load i64, ptr %l4, !tbaa !24
  %t57 = icmp eq i64 %t53, %t54
  br i1 %t57, label %bb25, label %bb26
bb25:
  %t59 = load i64, ptr %l0, !tbaa !24
  %t60 = load i64, ptr %l2, !tbaa !24
  store i64 %t60, ptr %l38, !tbaa !24
  %t61 = load i64, ptr %l38, !tbaa !24
  %t62 = load i64, ptr %l38, !tbaa !24
  %t63 = shl i64 1, %t62
  %t65 = sub i64 %t63, 1
  %t68 = and i64 %t59, %t65
  %t70 = icmp ne i64 %t68, 0
  store i1 %t70, ptr %l36, !tbaa !21
  br label %bb27
bb26:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb27
bb27:
  call void @__olang_scope_close(ptr %s0)
  %t72 = load i1, ptr %l36, !tbaa !21
  store i1 %t72, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
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

define dso_local void @compiler_2feval_2eopFn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4, i1 %a5) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i32
  %l4 = alloca i32
  %l5 = alloca i1
  %lp7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca %"compiler/mir:Range"
  %l11 = alloca i32
  %l15 = alloca { i64, ptr }
  %l16 = alloca i32
  %l19 = alloca i32
  %l20 = alloca ptr
  %l21 = alloca i64
  %l25 = alloca i32
  %l26 = alloca %"compiler/mir:Fn"
  %l30 = alloca i32
  %l32 = alloca %"compiler/mir:Range"
  %l33 = alloca ptr
  %l34 = alloca { i64, [4 x i64] }
  %l35 = alloca { i64, [4 x i64] }
  %l36 = alloca { i64, ptr }
  %l37 = alloca %"compiler/mir:Range"
  %l38 = alloca ptr
  %l39 = alloca { i64, [4 x i64] }
  %l40 = alloca { i64, ptr }
  %l41 = alloca %"compiler/mir:Range"
  %l42 = alloca ptr
  %l43 = alloca i32
  %l44 = alloca %"compiler/source:Span"
  %l46 = alloca %"compiler/mir:Lvalue"
  %l51 = alloca { i64, [21 x i64] }
  %l57 = alloca { i64, [21 x i64] }
  %l59 = alloca ptr
  %l60 = alloca i32
  %l61 = alloca %"compiler/source:Span"
  %l63 = alloca %"compiler/mir:Lvalue"
  %l66 = alloca %"compiler/mir:Fn"
  %s0 = alloca %olang.scope
  %t38 = alloca %"compiler/mir:Fn", align 8
  %t97 = alloca { i64, [15 x i64] }, align 8
  %t107 = alloca { i64, [21 x i64] }, align 8
  %t124 = alloca { i64, [21 x i64] }, align 8
  %t141 = alloca { i64, [4 x i64] }, align 8
  %t147 = alloca { i64, [8 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a3, ptr %l3
  store i32 %a4, ptr %l4
  store i1 %a5, ptr %l5
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load i1, ptr %l5, !tbaa !21
  br i1 %t1, label %bb1, label %bb2
bb1:
  %t3 = load ptr, ptr %l0, !tbaa !29
  %t4 = load i32, ptr %l3, !tbaa !23
  %t5 = load i32, ptr %l3, !tbaa !23
  %t6 = mul i64 2, 4
  %t7 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t6)
  %t8 = insertvalue { i64, ptr } undef, i64 2, 0
  %t9 = insertvalue { i64, ptr } %t8, ptr %t7, 1
  store { i64, ptr } %t9, ptr %l15, !tbaa !27
  %t11 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t12 = load ptr, ptr %t11, !tbaa !27
  %t13 = getelementptr i32, ptr %t12, i64 0
  store i32 %t4, ptr %t13, !tbaa !33
  %t15 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = getelementptr i32, ptr %t16, i64 1
  store i32 %t5, ptr %t17, !tbaa !33
  %t19 = load { i64, ptr }, ptr %l15, !tbaa !27
  %t20 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %s0, ptr %t3, { i64, ptr } %t19)
  store i32 %t20, ptr %l16
  br label %bb3
bb2:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t22 = load i32, ptr %l3, !tbaa !23
  %t25 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %t21, i32 %t22)
  store i32 %t25, ptr %l19
  br label %bb4
bb3:
  %t26 = load i32, ptr %l16, !tbaa !23
  store i32 %t26, ptr %l11, !tbaa !23
  br label %bb5
bb4:
  %t27 = load i32, ptr %l19, !tbaa !23
  store i32 %t27, ptr %l11, !tbaa !23
  br label %bb5
bb5:
  %t28 = load i32, ptr %l11, !tbaa !23
  %t29 = load ptr, ptr %l0, !tbaa !29
  store ptr %t29, ptr %l20, !tbaa !29
  store i64 %a1, ptr %l21, !tbaa !24
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = load i32, ptr %l4, !tbaa !23
  %t37 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %t31, i32 %t28, i32 %t33, i32 0, i32 0, i64 0, i1 false, i32 0, i64 0)
  store i32 %t37, ptr %l25
  br label %bb6
bb6:
  %t39 = load ptr, ptr %l20, !tbaa !29
  %t40 = load i64, ptr %l21, !tbaa !24
  %t41 = load i32, ptr %l25, !tbaa !23
  call void @compiler_2feval_2etfn(ptr %t38, ptr %v0, ptr %v1, ptr %t39, i64 %t40, i32 %t41)
  call void @llvm.memmove.p0.p0.i64(ptr %l26, ptr %t38, i64 800, i1 false)
  br label %bb7
bb7:
  %t42 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 800, i64 8)
  store ptr %t42, ptr %lp7
  %t43 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %t43, ptr %l26, i64 800, i1 false)
  %t44 = load ptr, ptr %lp7
  %t45 = load i32, ptr %l4, !tbaa !23
  %t46 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t50 = call i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v1, ptr %t44, i32 %t45, %"compiler/source:Span" %t46)
  store i32 %t50, ptr %l30
  br label %bb8
bb8:
  %t51 = load i32, ptr %l30, !tbaa !23
  store i32 %t51, ptr %l8, !tbaa !23
  %t52 = load i1, ptr %l5, !tbaa !21
  br i1 %t52, label %bb9, label %bb10
bb9:
  %t54 = load ptr, ptr %lp7
  store ptr %t54, ptr %l33, !tbaa !29
  %t55 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t55, ptr %l34
  br label %bb11
bb10:
  %t56 = load ptr, ptr %lp7
  store ptr %t56, ptr %l38, !tbaa !29
  %t57 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 0)
  store { i64, [4 x i64] } %t57, ptr %l39
  br label %bb14
bb11:
  %t58 = call { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 1)
  store { i64, [4 x i64] } %t58, ptr %l35
  br label %bb12
bb12:
  %t59 = mul i64 2, 40
  %t60 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t59)
  %t61 = insertvalue { i64, ptr } undef, i64 2, 0
  %t62 = insertvalue { i64, ptr } %t61, ptr %t60, 1
  store { i64, ptr } %t62, ptr %l36, !tbaa !27
  %t63 = load { i64, [4 x i64] }, ptr %l34
  %t64 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !27
  %t66 = getelementptr { i64, [4 x i64] }, ptr %t65, i64 0
  store { i64, [4 x i64] } %t63, ptr %t66
  %t67 = load { i64, [4 x i64] }, ptr %l35
  %t68 = getelementptr { i64, ptr }, ptr %l36, i32 0, i32 1
  %t69 = load ptr, ptr %t68, !tbaa !27
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t69, i64 1
  store { i64, [4 x i64] } %t67, ptr %t70
  %t71 = load ptr, ptr %l33, !tbaa !29
  %t72 = load { i64, ptr }, ptr %l36, !tbaa !27
  %t73 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t71, { i64, ptr } %t72)
  store %"compiler/mir:Range" %t73, ptr %l37
  br label %bb13
bb13:
  %t74 = load %"compiler/mir:Range", ptr %l37
  store %"compiler/mir:Range" %t74, ptr %l32
  br label %bb16
bb14:
  %t75 = mul i64 1, 40
  %t76 = call ptr @__olang_scope_alloc_zeroed(ptr %s0, i64 %t75)
  %t77 = insertvalue { i64, ptr } undef, i64 1, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t76, 1
  store { i64, ptr } %t78, ptr %l40, !tbaa !27
  %t79 = load { i64, [4 x i64] }, ptr %l39
  %t80 = getelementptr { i64, ptr }, ptr %l40, i32 0, i32 1
  %t81 = load ptr, ptr %t80, !tbaa !27
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t81, i64 0
  store { i64, [4 x i64] } %t79, ptr %t82
  %t83 = load ptr, ptr %l38, !tbaa !29
  %t84 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t85 = call %"compiler/mir:Range" @compiler_2fmir_2ecompiler_2fmir_3aFn_2eArgs(ptr %v1, ptr %s0, ptr %t83, { i64, ptr } %t84)
  store %"compiler/mir:Range" %t85, ptr %l41
  br label %bb15
bb15:
  %t86 = load %"compiler/mir:Range", ptr %l41
  store %"compiler/mir:Range" %t86, ptr %l32
  br label %bb16
bb16:
  %t87 = load %"compiler/mir:Range", ptr %l32
  store %"compiler/mir:Range" %t87, ptr %l9
  %t88 = load ptr, ptr %lp7
  store ptr %t88, ptr %l42, !tbaa !29
  %t89 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t89, ptr %l43, !tbaa !23
  %t90 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t90, ptr %l44
  %t91 = load i32, ptr %l8, !tbaa !23
  %t93 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t91)
  store %"compiler/mir:Lvalue" %t93, ptr %l46
  br label %bb17
bb17:
  %t95 = load i32, ptr %l4, !tbaa !23
  %t96 = load %"compiler/mir:Range", ptr %l9
  store { i64, [15 x i64] } zeroinitializer, ptr %t97
  %t98 = getelementptr { i64, [15 x i64] }, ptr %t97, i32 0, i32 0
  store i64 3, ptr %t98
  %t100 = insertvalue { i32, i32, %"compiler/mir:Range" } undef, i32 %a2, 0
  %t102 = insertvalue { i32, i32, %"compiler/mir:Range" } %t100, i32 %t95, 1
  %t104 = insertvalue { i32, i32, %"compiler/mir:Range" } %t102, %"compiler/mir:Range" %t96, 2
  %t105 = getelementptr { i64, [15 x i64] }, ptr %t97, i32 0, i32 1
  store { i32, i32, %"compiler/mir:Range" } %t104, ptr %t105
  %t106 = load { i64, [15 x i64] }, ptr %t97
  store { i64, [21 x i64] } zeroinitializer, ptr %t107
  %t108 = getelementptr { i64, [21 x i64] }, ptr %t107, i32 0, i32 0
  store i64 0, ptr %t108
  %t109 = load %"compiler/source:Span", ptr %l44
  %t110 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } undef, %"compiler/source:Span" %t109, 0
  %t111 = load %"compiler/mir:Lvalue", ptr %l46
  %t112 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t110, %"compiler/mir:Lvalue" %t111, 1
  %t114 = insertvalue { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t112, { i64, [15 x i64] } %t106, 2
  %t115 = getelementptr { i64, [21 x i64] }, ptr %t107, i32 0, i32 1
  store { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } } %t114, ptr %t115
  %t116 = load { i64, [21 x i64] }, ptr %t107
  store { i64, [21 x i64] } %t116, ptr %l51
  %t117 = load ptr, ptr %l42, !tbaa !29
  %t118 = load i32, ptr %l43, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t117, i32 %t118, ptr %l51)
  br label %bb18
bb18:
  %t120 = load ptr, ptr %lp7
  %t121 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  %t122 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  %t123 = load i32, ptr @G_2ecompiler_2feval_2eS0, !tbaa !23
  store { i64, [21 x i64] } zeroinitializer, ptr %t124
  %t125 = getelementptr { i64, [21 x i64] }, ptr %t124, i32 0, i32 0
  store i64 4, ptr %t125
  %t127 = insertvalue { %"compiler/source:Span", i32 } undef, %"compiler/source:Span" %t122, 0
  %t129 = insertvalue { %"compiler/source:Span", i32 } %t127, i32 %t123, 1
  %t130 = getelementptr { i64, [21 x i64] }, ptr %t124, i32 0, i32 1
  store { %"compiler/source:Span", i32 } %t129, ptr %t130
  %t131 = load { i64, [21 x i64] }, ptr %t124
  store { i64, [21 x i64] } %t131, ptr %l57
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAdd(ptr %v1, ptr %s0, ptr %t120, i32 %t121, ptr %l57)
  br label %bb19
bb19:
  %t135 = load ptr, ptr %lp7
  store ptr %t135, ptr %l59, !tbaa !29
  %t136 = load i32, ptr @G_2ecompiler_2feval_2eB0, !tbaa !23
  store i32 %t136, ptr %l60, !tbaa !23
  %t137 = load %"compiler/source:Span", ptr @G_2ecompiler_2feval_2eSp0
  store %"compiler/source:Span" %t137, ptr %l61
  %t138 = load i32, ptr %l8, !tbaa !23
  %t140 = call %"compiler/mir:Lvalue" @compiler_2fmir_2eLvalue_2eL(i32 %t138)
  store %"compiler/mir:Lvalue" %t140, ptr %l63
  br label %bb20
bb20:
  store { i64, [4 x i64] } zeroinitializer, ptr %t141
  %t142 = getelementptr { i64, [4 x i64] }, ptr %t141, i32 0, i32 0
  store i64 1, ptr %t142
  %t143 = load %"compiler/mir:Lvalue", ptr %l63
  %t144 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t143, 0
  %t145 = getelementptr { i64, [4 x i64] }, ptr %t141, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t144, ptr %t145
  %t146 = load { i64, [4 x i64] }, ptr %t141
  store { i64, [8 x i64] } zeroinitializer, ptr %t147
  %t148 = getelementptr { i64, [8 x i64] }, ptr %t147, i32 0, i32 0
  store i64 5, ptr %t148
  %t149 = load %"compiler/source:Span", ptr %l61
  %t150 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } undef, %"compiler/source:Span" %t149, 0
  %t152 = insertvalue { %"compiler/source:Span", { i64, [4 x i64] } } %t150, { i64, [4 x i64] } %t146, 1
  %t153 = getelementptr { i64, [8 x i64] }, ptr %t147, i32 0, i32 1
  store { %"compiler/source:Span", { i64, [4 x i64] } } %t152, ptr %t153
  %t154 = load { i64, [8 x i64] }, ptr %t147
  %t155 = load ptr, ptr %l59, !tbaa !29
  %t156 = load i32, ptr %l60, !tbaa !23
  call void @compiler_2fmir_2ecompiler_2fmir_3aFn_2eEnd(ptr %v1, ptr %t155, i32 %t156, { i64, [8 x i64] } %t154)
  br label %bb21
bb21:
  %t158 = load ptr, ptr %lp7
  call void @llvm.memmove.p0.p0.i64(ptr %l66, ptr %t158, i64 800, i1 false)
  call void @__olang_scope_close(ptr %s0)
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l66, i64 800, i1 false)
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
  %t3 = load i32, ptr %l0, !range !{i32 0, i32 51}
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
  %t30 = load i32, ptr %l0, !range !{i32 0, i32 51}
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
  %t113 = load i32, ptr %l0, !range !{i32 0, i32 51}
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
  %t128 = load i32, ptr %l0, !range !{i32 0, i32 51}
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

define dso_local i64 @compiler_2feval_2eplainLocal(%"compiler/mir:Lvalue" %a0) #0 {
entry:
  %l0 = alloca %"compiler/mir:Lvalue"
  %l1 = alloca { i64, [2 x i64] }
  %l2 = alloca i32
  %l4 = alloca i64
  %rv = alloca i64
  store %"compiler/mir:Lvalue" %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/mir:Lvalue", ptr %l0, i32 0, i32 0
  %t2 = load { i64, [2 x i64] }, ptr %t1
  store { i64, [2 x i64] } %t2, ptr %l1
  %t4 = load { i64, [2 x i64] }, ptr %l1
  %t6 = extractvalue { i64, [2 x i64] } %t4, 0
  %t7 = icmp eq i64 %t6, 1
  br i1 %t7, label %bb1, label %bb2
bb1:
  %t9 = getelementptr { i64, [2 x i64] }, ptr %l1, i32 0, i32 1
  %t10 = getelementptr { i32 }, ptr %t9, i32 0, i32 0
  %t11 = load i32, ptr %t10
  store i32 %t11, ptr %l2, !tbaa !23
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t13 = load i32, ptr %l2, !tbaa !23
  %t15 = sext i32 %t13 to i64
  store i64 %t15, ptr %l4, !tbaa !24
  br label %bb9
bb4:
  br i1 true, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb9
bb8:
  call void @__olang_check_failed(ptr @olang_loc_c25b9553ef801192_ed4b8566966f1316)
  unreachable
bb9:
  %t17 = load i64, ptr %l4, !tbaa !24
  store i64 %t17, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2estmtNamesGlobal(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca %"compiler/mir:Lvalue"
  %l3 = alloca { i64, [15 x i64] }
  %l4 = alloca { i64, [4 x i64] }
  %l5 = alloca %"compiler/mir:Lvalue"
  %l6 = alloca %"compiler/mir:Lvalue"
  %l7 = alloca { i64, [4 x i64] }
  %l8 = alloca { i64, [4 x i64] }
  %l9 = alloca %"compiler/mir:Range"
  %l10 = alloca { i64, [4 x i64] }
  %l11 = alloca { i64, [4 x i64] }
  %l12 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l22 = alloca i1
  %l23 = alloca i1
  %l24 = alloca i1
  %l35 = alloca i1
  %l46 = alloca i1
  %l53 = alloca i1
  %l54 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l59 = alloca i1
  %l74 = alloca i1
  %l80 = alloca i1
  %l81 = alloca i1
  %l83 = alloca i1
  %rv = alloca i1
  store ptr %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 19}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l14, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l14, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [21 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t12, i32 0, i32 1
  %t14 = load %"compiler/mir:Lvalue", ptr %t13
  store %"compiler/mir:Lvalue" %t14, ptr %l2
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [21 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", %"compiler/mir:Lvalue", { i64, [15 x i64] } }, ptr %t18, i32 0, i32 2
  %t20 = load { i64, [15 x i64] }, ptr %t19
  store { i64, [15 x i64] } %t20, ptr %l3
  br label %bb5
bb4:
  br label %bb66
bb5:
  %t22 = load %"compiler/mir:Lvalue", ptr %l2
  %t24 = call i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %t22)
  store i1 %t24, ptr %l22
  br label %bb6
bb6:
  %t25 = load i1, ptr %l22, !tbaa !21
  br i1 %t25, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb65
bb8:
  %t26 = load { i64, [15 x i64] }, ptr %l3
  %t28 = extractvalue { i64, [15 x i64] } %t26, 0
  %t29 = icmp eq i64 %t28, 0
  br i1 %t29, label %bb9, label %bb10
bb9:
  %t31 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t32 = getelementptr { { i64, [4 x i64] } }, ptr %t31, i32 0, i32 0
  %t33 = load { i64, [4 x i64] }, ptr %t32
  store { i64, [4 x i64] } %t33, ptr %l4
  br label %bb15
bb10:
  %t35 = load { i64, [15 x i64] }, ptr %l3
  %t37 = extractvalue { i64, [15 x i64] } %t35, 0
  %t38 = icmp eq i64 %t37, 7
  br i1 %t38, label %bb11, label %bb12
bb11:
  %t40 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t41 = getelementptr { { i64, [1 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t40, i32 0, i32 1
  %t42 = load { i64, [4 x i64] }, ptr %t41
  store { i64, [4 x i64] } %t42, ptr %l4
  br label %bb15
bb12:
  %t44 = load { i64, [15 x i64] }, ptr %l3
  %t46 = extractvalue { i64, [15 x i64] } %t44, 0
  %t47 = icmp eq i64 %t46, 11
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t49 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t50 = getelementptr { { i64, [4 x i64] }, i32, i32 }, ptr %t49, i32 0, i32 0
  %t51 = load { i64, [4 x i64] }, ptr %t50
  store { i64, [4 x i64] } %t51, ptr %l4
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t53 = load { i64, [4 x i64] }, ptr %l4
  %t55 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t53)
  store i1 %t55, ptr %l35
  br label %bb16
bb16:
  %t56 = load i1, ptr %l35, !tbaa !21
  store i1 %t56, ptr %l24, !tbaa !21
  br label %bb64
bb17:
  %t57 = load { i64, [15 x i64] }, ptr %l3
  %t59 = extractvalue { i64, [15 x i64] } %t57, 0
  %t60 = icmp eq i64 %t59, 1
  br i1 %t60, label %bb18, label %bb19
bb18:
  %t62 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t63 = getelementptr { %"compiler/mir:Lvalue", i32 }, ptr %t62, i32 0, i32 0
  %t64 = load %"compiler/mir:Lvalue", ptr %t63
  store %"compiler/mir:Lvalue" %t64, ptr %l5
  br label %bb24
bb19:
  %t66 = load { i64, [15 x i64] }, ptr %l3
  %t68 = extractvalue { i64, [15 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 2
  br i1 %t69, label %bb20, label %bb21
bb20:
  %t71 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t72 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t71, i32 0, i32 0
  %t73 = load %"compiler/mir:Lvalue", ptr %t72
  store %"compiler/mir:Lvalue" %t73, ptr %l5
  br label %bb24
bb21:
  %t75 = load { i64, [15 x i64] }, ptr %l3
  %t77 = extractvalue { i64, [15 x i64] } %t75, 0
  %t78 = icmp eq i64 %t77, 5
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t80 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t81 = getelementptr { %"compiler/mir:Lvalue" }, ptr %t80, i32 0, i32 0
  %t82 = load %"compiler/mir:Lvalue", ptr %t81
  store %"compiler/mir:Lvalue" %t82, ptr %l5
  br label %bb24
bb23:
  br label %bb26
bb24:
  %t84 = load %"compiler/mir:Lvalue", ptr %l5
  %t86 = call i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %t84)
  store i1 %t86, ptr %l46
  br label %bb25
bb25:
  %t87 = load i1, ptr %l46, !tbaa !21
  store i1 %t87, ptr %l24, !tbaa !21
  br label %bb64
bb26:
  %t88 = load { i64, [15 x i64] }, ptr %l3
  %t90 = extractvalue { i64, [15 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 9
  br i1 %t91, label %bb27, label %bb28
bb27:
  %t93 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t94 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t93, i32 0, i32 0
  %t95 = load %"compiler/mir:Lvalue", ptr %t94
  store %"compiler/mir:Lvalue" %t95, ptr %l6
  %t97 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t98 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t97, i32 0, i32 1
  %t99 = load { i64, [4 x i64] }, ptr %t98
  store { i64, [4 x i64] } %t99, ptr %l7
  %t101 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t102 = getelementptr { %"compiler/mir:Lvalue", { i64, [4 x i64] }, { i64, [4 x i64] }, i32 }, ptr %t101, i32 0, i32 2
  %t103 = load { i64, [4 x i64] }, ptr %t102
  store { i64, [4 x i64] } %t103, ptr %l8
  br label %bb29
bb28:
  br label %bb39
bb29:
  %t105 = load %"compiler/mir:Lvalue", ptr %l6
  %t107 = call i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %t105)
  store i1 %t107, ptr %l53
  br label %bb30
bb30:
  %t108 = load i1, ptr %l53, !tbaa !21
  br i1 %t108, label %bb31, label %bb32
bb31:
  store i1 true, ptr %l54, !tbaa !21
  br label %bb34
bb32:
  %t109 = load { i64, [4 x i64] }, ptr %l7
  %t111 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t109)
  store i1 %t111, ptr %l56
  br label %bb33
bb33:
  %t112 = load i1, ptr %l56, !tbaa !21
  store i1 %t112, ptr %l54, !tbaa !21
  br label %bb34
bb34:
  %t113 = load i1, ptr %l54, !tbaa !21
  br i1 %t113, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb38
bb36:
  %t114 = load { i64, [4 x i64] }, ptr %l8
  %t116 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t114)
  store i1 %t116, ptr %l59
  br label %bb37
bb37:
  %t117 = load i1, ptr %l59, !tbaa !21
  store i1 %t117, ptr %l57, !tbaa !21
  br label %bb38
bb38:
  %t118 = load i1, ptr %l57, !tbaa !21
  store i1 %t118, ptr %l24, !tbaa !21
  br label %bb64
bb39:
  %t119 = load { i64, [15 x i64] }, ptr %l3
  %t121 = extractvalue { i64, [15 x i64] } %t119, 0
  %t122 = icmp eq i64 %t121, 3
  br i1 %t122, label %bb40, label %bb41
bb40:
  %t124 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t125 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t124, i32 0, i32 2
  %t126 = load %"compiler/mir:Range", ptr %t125
  store %"compiler/mir:Range" %t126, ptr %l9
  br label %bb48
bb41:
  %t128 = load { i64, [15 x i64] }, ptr %l3
  %t130 = extractvalue { i64, [15 x i64] } %t128, 0
  %t131 = icmp eq i64 %t130, 4
  br i1 %t131, label %bb42, label %bb43
bb42:
  %t133 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t134 = getelementptr { i32, i32, %"compiler/mir:Range" }, ptr %t133, i32 0, i32 2
  %t135 = load %"compiler/mir:Range", ptr %t134
  store %"compiler/mir:Range" %t135, ptr %l9
  br label %bb48
bb43:
  %t137 = load { i64, [15 x i64] }, ptr %l3
  %t139 = extractvalue { i64, [15 x i64] } %t137, 0
  %t140 = icmp eq i64 %t139, 6
  br i1 %t140, label %bb44, label %bb45
bb44:
  %t142 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t143 = getelementptr { i32, i64, %"compiler/mir:Range" }, ptr %t142, i32 0, i32 2
  %t144 = load %"compiler/mir:Range", ptr %t143
  store %"compiler/mir:Range" %t144, ptr %l9
  br label %bb48
bb45:
  %t146 = load { i64, [15 x i64] }, ptr %l3
  %t148 = extractvalue { i64, [15 x i64] } %t146, 0
  %t149 = icmp eq i64 %t148, 10
  br i1 %t149, label %bb46, label %bb47
bb46:
  %t151 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t152 = getelementptr { { i64, [2 x i64] }, i32, { i64, [1 x i64] }, %"compiler/mir:Range", %"compiler/mir:Range" }, ptr %t151, i32 0, i32 3
  %t153 = load %"compiler/mir:Range", ptr %t152
  store %"compiler/mir:Range" %t153, ptr %l9
  br label %bb48
bb47:
  br label %bb50
bb48:
  %t156 = load %"compiler/mir:Range", ptr %l9
  %t159 = call i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %a0, %"compiler/mir:Range" %t156)
  store i1 %t159, ptr %l74
  br label %bb49
bb49:
  %t160 = load i1, ptr %l74, !tbaa !21
  store i1 %t160, ptr %l24, !tbaa !21
  br label %bb64
bb50:
  %t161 = load { i64, [15 x i64] }, ptr %l3
  %t163 = extractvalue { i64, [15 x i64] } %t161, 0
  %t164 = icmp eq i64 %t163, 8
  br i1 %t164, label %bb51, label %bb52
bb51:
  %t166 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t167 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t166, i32 0, i32 2
  %t168 = load { i64, [4 x i64] }, ptr %t167
  store { i64, [4 x i64] } %t168, ptr %l10
  %t170 = getelementptr { i64, [15 x i64] }, ptr %l3, i32 0, i32 1
  %t171 = getelementptr { { i64, [1 x i64] }, i32, { i64, [4 x i64] }, { i64, [4 x i64] } }, ptr %t170, i32 0, i32 3
  %t172 = load { i64, [4 x i64] }, ptr %t171
  store { i64, [4 x i64] } %t172, ptr %l11
  br label %bb53
bb52:
  br label %bb59
bb53:
  %t174 = load { i64, [4 x i64] }, ptr %l10
  %t176 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t174)
  store i1 %t176, ptr %l80
  br label %bb54
bb54:
  %t177 = load i1, ptr %l80, !tbaa !21
  br i1 %t177, label %bb55, label %bb56
bb55:
  store i1 true, ptr %l81, !tbaa !21
  br label %bb58
bb56:
  %t178 = load { i64, [4 x i64] }, ptr %l11
  %t180 = call i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %t178)
  store i1 %t180, ptr %l83
  br label %bb57
bb57:
  %t181 = load i1, ptr %l83, !tbaa !21
  store i1 %t181, ptr %l81, !tbaa !21
  br label %bb58
bb58:
  %t182 = load i1, ptr %l81, !tbaa !21
  store i1 %t182, ptr %l24, !tbaa !21
  br label %bb64
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb63
bb62:
  store i1 false, ptr %l24, !tbaa !21
  br label %bb64
bb63:
  call void @__olang_check_failed(ptr @olang_loc_5c3972130c0b0906_e6fe5489c867bc1a)
  unreachable
bb64:
  %t183 = load i1, ptr %l24, !tbaa !21
  store i1 %t183, ptr %l23, !tbaa !21
  br label %bb65
bb65:
  %t184 = load i1, ptr %l23, !tbaa !21
  store i1 %t184, ptr %l12, !tbaa !21
  br label %bb71
bb66:
  br i1 true, label %bb67, label %bb68
bb67:
  br label %bb69
bb68:
  br label %bb70
bb69:
  store i1 false, ptr %l12, !tbaa !21
  br label %bb71
bb70:
  call void @__olang_check_failed(ptr @olang_loc_108ebfb6784b13e7_2381776f1f64d61b)
  unreachable
bb71:
  %t185 = load i1, ptr %l12, !tbaa !21
  store i1 %t185, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, i64 } @compiler_2feval_2esub128(i64 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca i64
  %l2 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l12 = alloca i1
  %l13 = alloca i64
  %rv = alloca { i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l0, !tbaa !24
  %t2 = load i64, ptr %l2, !tbaa !24
  %t5 = sub i64 %t1, %t2
  store i64 %t5, ptr %l6, !tbaa !24
  %t10 = sub i64 %a1, %a3
  store i64 %t10, ptr %l9, !tbaa !24
  %t11 = load i64, ptr %l0, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t15 = call i1 @compiler_2feval_2eult64(i64 %t11, i64 %t12)
  store i1 %t15, ptr %l12
  br label %bb1
bb1:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb2, label %bb3
bb2:
  store i64 1, ptr %l13, !tbaa !24
  br label %bb4
bb3:
  store i64 0, ptr %l13, !tbaa !24
  br label %bb4
bb4:
  %t17 = load i64, ptr %l9, !tbaa !24
  %t18 = load i64, ptr %l13, !tbaa !24
  %t19 = sub i64 %t17, %t18
  %t20 = load i64, ptr %l6, !tbaa !24
  %t21 = insertvalue { i64, i64 } undef, i64 %t20, 0
  %t23 = insertvalue { i64, i64 } %t21, i64 %t19, 1
  store { i64, i64 } %t23, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64 }, ptr %rv
  ret { i64, i64 } %rr
}

define dso_local { i64, [4 x i64] } @compiler_2feval_2etcopy(i64 %a0) #0 {
entry:
  %l2 = alloca %"compiler/mir:Lvalue"
  %rv = alloca { i64, [4 x i64] }
  %t4 = alloca { i64, [4 x i64] }, align 8
  br label %start
start:
  br label %bb0
bb0:
  %t3 = call %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0)
  store %"compiler/mir:Lvalue" %t3, ptr %l2
  br label %bb1
bb1:
  store { i64, [4 x i64] } zeroinitializer, ptr %t4
  %t5 = getelementptr { i64, [4 x i64] }, ptr %t4, i32 0, i32 0
  store i64 1, ptr %t5
  %t6 = load %"compiler/mir:Lvalue", ptr %l2
  %t7 = insertvalue { %"compiler/mir:Lvalue" } undef, %"compiler/mir:Lvalue" %t6, 0
  %t8 = getelementptr { i64, [4 x i64] }, ptr %t4, i32 0, i32 1
  store { %"compiler/mir:Lvalue" } %t7, ptr %t8
  %t9 = load { i64, [4 x i64] }, ptr %t4
  store { i64, [4 x i64] } %t9, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [4 x i64] }, ptr %rv
  ret { i64, [4 x i64] } %rr
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

define dso_local i32 @compiler_2feval_2eterr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l4 = alloca ptr
  %l5 = alloca i64
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca i64
  %l16 = alloca i32
  %l18 = alloca i32
  %l19 = alloca i32
  %rv = alloca i32
  store ptr %a0, ptr %l0
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l4, !tbaa !29
  %t2 = ptrtoint ptr %v0 to i64
  store i64 %t2, ptr %l5, !tbaa !24
  %t3 = load i1, ptr @olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = call ptr @__olang_region_make(ptr %v0)
  %t6 = ptrtoint ptr %t5 to i64
  store i64 %t6, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t7 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t8 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t9 = extractvalue { i64, ptr } { i64 10, ptr getelementptr inbounds (<{ i64, [10 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t11 = extractvalue { i64, ptr } %t7, 1
  %t12 = extractvalue { i64, ptr } %t7, 0
  %t13 = add i64 %t9, %t12
  %t14 = load i64, ptr %l5
  %t15 = inttoptr i64 %t14 to ptr
  %t16 = call ptr @__olang_scope_alloc(ptr %t15, i64 %t13)
  call void @olang_textcopy(ptr %t16, ptr %t8, i64 %t9)
  %t17 = getelementptr i8, ptr %t16, i64 %t9
  call void @olang_textcopy(ptr %t17, ptr %t11, i64 %t12)
  %t18 = insertvalue { i64, ptr } undef, i64 %t13, 0
  %t19 = insertvalue { i64, ptr } %t18, ptr %t16, 1
  %t21 = load i64, ptr %l5
  %t22 = inttoptr i64 %t21 to ptr
  %t23 = extractvalue { i64, ptr } %t19, 0
  %t24 = extractvalue { i64, ptr } %t19, 1
  %t25 = mul i64 %t23, 1
  %t26 = call ptr @__olang_scope_alloc(ptr %t22, i64 %t25)
  call void @llvm.memcpy.p0.p0.i64(ptr %t26, ptr %t24, i64 %t25, i1 false)
  %t27 = insertvalue { i64, ptr } undef, i64 %t23, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  %t29 = load ptr, ptr %l4, !tbaa !29
  %t31 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v0, ptr %t29, { i64, ptr } %t28)
  store i64 %t31, ptr %l10
  br label %bb3
bb3:
  %t32 = load i64, ptr %l10, !tbaa !24
  %t33 = load ptr, ptr %l0, !tbaa !29
  store ptr %t33, ptr %l11, !tbaa !29
  %t34 = load ptr, ptr %l0, !tbaa !29
  store ptr %t34, ptr %l12, !tbaa !29
  store i64 %t32, ptr %l13, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t40 = call i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v1, ptr %v2, ptr %a1, { i64, ptr } %t37)
  store i32 %t40, ptr %l16
  br label %bb4
bb4:
  %t41 = load ptr, ptr %l12, !tbaa !29
  %t42 = load i64, ptr %l13, !tbaa !24
  %t43 = load i32, ptr %l16, !tbaa !23
  %t45 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v3, ptr %t41, i64 %t42, i32 %t43, i32 2, i32 0)
  store i32 %t45, ptr %l18
  br label %bb5
bb5:
  %t46 = load ptr, ptr %l11, !tbaa !29
  %t47 = load i32, ptr %l18, !tbaa !23
  %t48 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %t46, i32 %t47, i32 0)
  store i32 %t48, ptr %l19
  br label %bb6
bb6:
  %t49 = load i32, ptr %l19, !tbaa !23
  store i32 %t49, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
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

define dso_local { i64, i64, i64, i64 } @compiler_2feval_2eudivmod128(i64 %a0, i64 %a1, i64 %a2, i64 %a3) #0 {
entry:
  %l0 = alloca i64
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
  %l14 = alloca i64
  %l15 = alloca { i64, i64 }
  %l16 = alloca { i64, i64 }
  %l18 = alloca { i64, i64 }
  %l21 = alloca i1
  %l40 = alloca i64
  %l43 = alloca i64
  %l65 = alloca { i64, i64 }
  %l71 = alloca { i64, i64 }
  %l81 = alloca i64
  %l87 = alloca { i64, i64 }
  %l94 = alloca i64
  %l98 = alloca i64
  %rv = alloca { i64, i64, i64, i64 }
  store i64 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  store i64 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp eq i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load i64, ptr %l3, !tbaa !24
  %t7 = icmp eq i64 %t5, 0
  store i1 %t7, ptr %l21, !tbaa !21
  br label %bb3
bb2:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb3
bb3:
  %t9 = load i1, ptr %l21, !tbaa !21
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t10 = load i64, ptr %l0, !tbaa !24
  %t12 = load i64, ptr %l2, !tbaa !24
  %t16 = udiv i64 %t10, %t12
  %t18 = load i64, ptr %l0, !tbaa !24
  %t20 = load i64, ptr %l2, !tbaa !24
  %t24 = urem i64 %t18, %t20
  %t27 = insertvalue { i64, i64, i64, i64 } undef, i64 %t16, 0
  %t28 = insertvalue { i64, i64, i64, i64 } %t27, i64 0, 1
  %t30 = insertvalue { i64, i64, i64, i64 } %t28, i64 %t24, 2
  %t31 = insertvalue { i64, i64, i64, i64 } %t30, i64 0, 3
  store { i64, i64, i64, i64 } %t31, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  store i64 0, ptr %l4, !tbaa !24
  store i64 0, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  store i64 0, ptr %l8, !tbaa !24
  store i64 128, ptr %l9, !tbaa !24
  store i64 1, ptr %l10, !tbaa !24
  %t33 = load i64, ptr %l9, !tbaa !24
  %t34 = load i64, ptr %l8, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb7, label %bb8
bb7:
  %t39 = load i64, ptr %l10, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb9, label %bb10
bb8:
  store i64 0, ptr %l40, !tbaa !24
  br label %bb12
bb9:
  %t43 = load i64, ptr %l9, !tbaa !24
  %t44 = load i64, ptr %l8, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l10, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l10, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l43, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb11
bb11:
  %t59 = load i64, ptr %l43, !tbaa !24
  store i64 %t59, ptr %l40, !tbaa !24
  br label %bb12
bb12:
  %t60 = load i64, ptr %l40, !tbaa !24
  store i64 %t60, ptr %l11, !tbaa !24
  store i64 0, ptr %l12, !tbaa !24
  br label %bb13
bb13:
  %t61 = load i64, ptr %l12, !tbaa !24
  %t62 = load i64, ptr %l11, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb14, label %bb15
bb14:
  br label %bb28
bb15:
  br label %bb16
bb16:
  %t69 = load i64, ptr %l8, !tbaa !24
  %t70 = load i64, ptr %l12, !tbaa !24
  %t71 = load i64, ptr %l10, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  %t81 = sub i64 127, %t77
  store i64 %t81, ptr %l14, !tbaa !24
  %t83 = load i64, ptr %l6, !tbaa !24
  %t84 = load i64, ptr %l7, !tbaa !24
  %t87 = call { i64, i64 } @compiler_2feval_2eshl128(i64 %t83, i64 %t84, i64 1)
  store { i64, i64 } %t87, ptr %l65
  br label %bb17
bb17:
  %t88 = load { i64, i64 }, ptr %l65
  store { i64, i64 } %t88, ptr %l15
  %t89 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 0
  %t90 = load i64, ptr %t89, !tbaa !24
  store i64 %t90, ptr %l6, !tbaa !24
  %t92 = getelementptr { i64, i64 }, ptr %l15, i32 0, i32 1
  %t93 = load i64, ptr %t92, !tbaa !24
  store i64 %t93, ptr %l7, !tbaa !24
  %t95 = load i64, ptr %l0, !tbaa !24
  %t96 = load i64, ptr %l1, !tbaa !24
  %t97 = load i64, ptr %l14, !tbaa !24
  %t101 = call { i64, i64 } @compiler_2feval_2eshr128(i64 %t95, i64 %t96, i64 %t97, i1 false)
  store { i64, i64 } %t101, ptr %l71
  br label %bb18
bb18:
  %t102 = load { i64, i64 }, ptr %l71
  store { i64, i64 } %t102, ptr %l16
  %t103 = getelementptr { i64, i64 }, ptr %l16, i32 0, i32 0
  %t104 = load i64, ptr %t103, !tbaa !24
  %t106 = load i64, ptr %l6, !tbaa !24
  %t109 = and i64 %t104, 1
  %t112 = or i64 %t106, %t109
  store i64 %t112, ptr %l6, !tbaa !24
  %t114 = load i64, ptr %l6, !tbaa !24
  %t115 = load i64, ptr %l7, !tbaa !24
  %t116 = load i64, ptr %l2, !tbaa !24
  %t117 = load i64, ptr %l3, !tbaa !24
  %t122 = call i64 @compiler_2feval_2ecmp128(i64 %t114, i64 %t115, i64 %t116, i64 %t117, i1 false)
  store i64 %t122, ptr %l81
  br label %bb19
bb19:
  %t123 = load i64, ptr %l81, !tbaa !24
  %t124 = icmp sge i64 %t123, 0
  br i1 %t124, label %bb20, label %bb21
bb20:
  %t126 = load i64, ptr %l6, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t128 = load i64, ptr %l2, !tbaa !24
  %t129 = load i64, ptr %l3, !tbaa !24
  %t134 = call { i64, i64 } @compiler_2feval_2esub128(i64 %t126, i64 %t127, i64 %t128, i64 %t129)
  store { i64, i64 } %t134, ptr %l87
  br label %bb22
bb21:
  br label %bb26
bb22:
  %t135 = load { i64, i64 }, ptr %l87
  store { i64, i64 } %t135, ptr %l18
  %t136 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 0
  %t137 = load i64, ptr %t136, !tbaa !24
  store i64 %t137, ptr %l6, !tbaa !24
  %t139 = getelementptr { i64, i64 }, ptr %l18, i32 0, i32 1
  %t140 = load i64, ptr %t139, !tbaa !24
  store i64 %t140, ptr %l7, !tbaa !24
  %t142 = load i64, ptr %l14, !tbaa !24
  %t144 = icmp sge i64 %t142, 64
  br i1 %t144, label %bb23, label %bb24
bb23:
  %t146 = load i64, ptr %l5, !tbaa !24
  %t147 = load i64, ptr %l14, !tbaa !24
  %t149 = sub i64 %t147, 64
  store i64 %t149, ptr %l94, !tbaa !24
  %t150 = load i64, ptr %l94, !tbaa !24
  %t151 = load i64, ptr %l94, !tbaa !24
  %t152 = shl i64 1, %t151
  %t155 = or i64 %t146, %t152
  store i64 %t155, ptr %l5, !tbaa !24
  br label %bb25
bb24:
  %t157 = load i64, ptr %l4, !tbaa !24
  %t158 = load i64, ptr %l14, !tbaa !24
  store i64 %t158, ptr %l98, !tbaa !24
  %t159 = load i64, ptr %l98, !tbaa !24
  %t160 = load i64, ptr %l98, !tbaa !24
  %t161 = shl i64 1, %t160
  %t164 = or i64 %t157, %t161
  store i64 %t164, ptr %l4, !tbaa !24
  br label %bb25
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t166 = load i64, ptr %l12, !tbaa !24
  %t168 = add i64 %t166, 1
  store i64 %t168, ptr %l12, !tbaa !24
  br label %bb13
bb28:
  %t170 = load i64, ptr %l4, !tbaa !24
  %t171 = load i64, ptr %l5, !tbaa !24
  %t172 = load i64, ptr %l6, !tbaa !24
  %t173 = load i64, ptr %l7, !tbaa !24
  %t175 = insertvalue { i64, i64, i64, i64 } undef, i64 %t170, 0
  %t177 = insertvalue { i64, i64, i64, i64 } %t175, i64 %t171, 1
  %t179 = insertvalue { i64, i64, i64, i64 } %t177, i64 %t172, 2
  %t181 = insertvalue { i64, i64, i64, i64 } %t179, i64 %t173, 3
  store { i64, i64, i64, i64 } %t181, ptr %rv
  br label %ret
ret:
  %rr = load { i64, i64, i64, i64 }, ptr %rv
  ret { i64, i64, i64, i64 } %rr
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

define dso_local i1 @compiler_2feval_2ewordOp(i32 %a0) #0 {
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
  %t3 = trunc i64 3 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb25
bb2:
  %t6 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t8 = trunc i64 4 to i32
  %t9 = icmp eq i32 %t6, %t8
  br i1 %t9, label %bb3, label %bb4
bb3:
  br label %bb25
bb4:
  %t11 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t13 = trunc i64 5 to i32
  %t14 = icmp eq i32 %t11, %t13
  br i1 %t14, label %bb5, label %bb6
bb5:
  br label %bb25
bb6:
  %t16 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t18 = trunc i64 10 to i32
  %t19 = icmp eq i32 %t16, %t18
  br i1 %t19, label %bb7, label %bb8
bb7:
  br label %bb25
bb8:
  %t21 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t23 = trunc i64 11 to i32
  %t24 = icmp eq i32 %t21, %t23
  br i1 %t24, label %bb9, label %bb10
bb9:
  br label %bb25
bb10:
  %t26 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t28 = trunc i64 12 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb11, label %bb12
bb11:
  br label %bb25
bb12:
  %t31 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t33 = trunc i64 13 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb13, label %bb14
bb13:
  br label %bb25
bb14:
  %t36 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t38 = trunc i64 14 to i32
  %t39 = icmp eq i32 %t36, %t38
  br i1 %t39, label %bb15, label %bb16
bb15:
  br label %bb25
bb16:
  %t41 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t43 = trunc i64 15 to i32
  %t44 = icmp eq i32 %t41, %t43
  br i1 %t44, label %bb17, label %bb18
bb17:
  br label %bb25
bb18:
  %t46 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t48 = trunc i64 16 to i32
  %t49 = icmp eq i32 %t46, %t48
  br i1 %t49, label %bb19, label %bb20
bb19:
  br label %bb25
bb20:
  %t51 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t53 = trunc i64 17 to i32
  %t54 = icmp eq i32 %t51, %t53
  br i1 %t54, label %bb21, label %bb22
bb21:
  br label %bb25
bb22:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t58 = trunc i64 18 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i1 true, ptr %l1, !tbaa !21
  br label %bb31
bb26:
  br i1 true, label %bb27, label %bb28
bb27:
  br label %bb29
bb28:
  br label %bb30
bb29:
  store i1 false, ptr %l1, !tbaa !21
  br label %bb31
bb30:
  call void @__olang_check_failed(ptr @olang_loc_ab914fb6864a784e_7aa15624a1f173ba)
  unreachable
bb31:
  %t61 = load i1, ptr %l1, !tbaa !21
  store i1 %t61, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2feval_2ewordValue(i32 %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca i32
  %l1 = alloca i64
  %l2 = alloca i64
  %l3 = alloca i64
  %l39 = alloca i64
  %l45 = alloca i64
  %l51 = alloca i64
  %l57 = alloca i64
  %l63 = alloca i64
  %l67 = alloca i64
  %rv = alloca i64
  store i32 %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t3 = trunc i64 3 to i32
  %t4 = icmp eq i32 %t1, %t3
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %bb3
bb2:
  br label %bb4
bb3:
  %t6 = load i64, ptr %l1, !tbaa !24
  %t7 = load i64, ptr %l2, !tbaa !24
  %t10 = add i64 %t6, %t7
  store i64 %t10, ptr %l3, !tbaa !24
  br label %bb67
bb4:
  %t12 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t14 = trunc i64 4 to i32
  %t15 = icmp eq i32 %t12, %t14
  br i1 %t15, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb8
bb7:
  %t17 = load i64, ptr %l1, !tbaa !24
  %t18 = load i64, ptr %l2, !tbaa !24
  %t21 = sub i64 %t17, %t18
  store i64 %t21, ptr %l3, !tbaa !24
  br label %bb67
bb8:
  %t23 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t25 = trunc i64 5 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb9, label %bb10
bb9:
  br label %bb11
bb10:
  br label %bb12
bb11:
  %t28 = load i64, ptr %l1, !tbaa !24
  %t29 = load i64, ptr %l2, !tbaa !24
  %t32 = mul i64 %t28, %t29
  store i64 %t32, ptr %l3, !tbaa !24
  br label %bb67
bb12:
  %t34 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t36 = trunc i64 10 to i32
  %t37 = icmp eq i32 %t34, %t36
  br i1 %t37, label %bb13, label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  %t39 = load i64, ptr %l1, !tbaa !24
  %t40 = load i64, ptr %l2, !tbaa !24
  %t43 = and i64 %t39, %t40
  store i64 %t43, ptr %l3, !tbaa !24
  br label %bb67
bb16:
  %t45 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t47 = trunc i64 11 to i32
  %t48 = icmp eq i32 %t45, %t47
  br i1 %t48, label %bb17, label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb20
bb19:
  %t50 = load i64, ptr %l1, !tbaa !24
  %t51 = load i64, ptr %l2, !tbaa !24
  %t54 = or i64 %t50, %t51
  store i64 %t54, ptr %l3, !tbaa !24
  br label %bb67
bb20:
  %t56 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t58 = trunc i64 12 to i32
  %t59 = icmp eq i32 %t56, %t58
  br i1 %t59, label %bb21, label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb24
bb23:
  %t61 = load i64, ptr %l1, !tbaa !24
  %t62 = load i64, ptr %l2, !tbaa !24
  %t65 = xor i64 %t61, %t62
  store i64 %t65, ptr %l3, !tbaa !24
  br label %bb67
bb24:
  %t67 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t69 = trunc i64 13 to i32
  %t70 = icmp eq i32 %t67, %t69
  br i1 %t70, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb31
bb27:
  %t72 = load i64, ptr %l1, !tbaa !24
  %t73 = load i64, ptr %l2, !tbaa !24
  %t76 = icmp eq i64 %t72, %t73
  br i1 %t76, label %bb28, label %bb29
bb28:
  store i64 1, ptr %l39, !tbaa !24
  br label %bb30
bb29:
  store i64 0, ptr %l39, !tbaa !24
  br label %bb30
bb30:
  %t78 = load i64, ptr %l39, !tbaa !24
  store i64 %t78, ptr %l3, !tbaa !24
  br label %bb67
bb31:
  %t79 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t81 = trunc i64 14 to i32
  %t82 = icmp eq i32 %t79, %t81
  br i1 %t82, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb38
bb34:
  %t84 = load i64, ptr %l1, !tbaa !24
  %t85 = load i64, ptr %l2, !tbaa !24
  %t88 = icmp ne i64 %t84, %t85
  br i1 %t88, label %bb35, label %bb36
bb35:
  store i64 1, ptr %l45, !tbaa !24
  br label %bb37
bb36:
  store i64 0, ptr %l45, !tbaa !24
  br label %bb37
bb37:
  %t90 = load i64, ptr %l45, !tbaa !24
  store i64 %t90, ptr %l3, !tbaa !24
  br label %bb67
bb38:
  %t91 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t93 = trunc i64 15 to i32
  %t94 = icmp eq i32 %t91, %t93
  br i1 %t94, label %bb39, label %bb40
bb39:
  br label %bb41
bb40:
  br label %bb45
bb41:
  %t96 = load i64, ptr %l1, !tbaa !24
  %t97 = load i64, ptr %l2, !tbaa !24
  %t100 = icmp slt i64 %t96, %t97
  br i1 %t100, label %bb42, label %bb43
bb42:
  store i64 1, ptr %l51, !tbaa !24
  br label %bb44
bb43:
  store i64 0, ptr %l51, !tbaa !24
  br label %bb44
bb44:
  %t102 = load i64, ptr %l51, !tbaa !24
  store i64 %t102, ptr %l3, !tbaa !24
  br label %bb67
bb45:
  %t103 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t105 = trunc i64 16 to i32
  %t106 = icmp eq i32 %t103, %t105
  br i1 %t106, label %bb46, label %bb47
bb46:
  br label %bb48
bb47:
  br label %bb52
bb48:
  %t108 = load i64, ptr %l1, !tbaa !24
  %t109 = load i64, ptr %l2, !tbaa !24
  %t112 = icmp sle i64 %t108, %t109
  br i1 %t112, label %bb49, label %bb50
bb49:
  store i64 1, ptr %l57, !tbaa !24
  br label %bb51
bb50:
  store i64 0, ptr %l57, !tbaa !24
  br label %bb51
bb51:
  %t114 = load i64, ptr %l57, !tbaa !24
  store i64 %t114, ptr %l3, !tbaa !24
  br label %bb67
bb52:
  %t115 = load i32, ptr %l0, !range !{i32 0, i32 51}
  %t117 = trunc i64 17 to i32
  %t118 = icmp eq i32 %t115, %t117
  br i1 %t118, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb59
bb55:
  %t120 = load i64, ptr %l1, !tbaa !24
  %t121 = load i64, ptr %l2, !tbaa !24
  %t124 = icmp sgt i64 %t120, %t121
  br i1 %t124, label %bb56, label %bb57
bb56:
  store i64 1, ptr %l63, !tbaa !24
  br label %bb58
bb57:
  store i64 0, ptr %l63, !tbaa !24
  br label %bb58
bb58:
  %t126 = load i64, ptr %l63, !tbaa !24
  store i64 %t126, ptr %l3, !tbaa !24
  br label %bb67
bb59:
  br i1 true, label %bb60, label %bb61
bb60:
  br label %bb62
bb61:
  br label %bb66
bb62:
  %t127 = load i64, ptr %l1, !tbaa !24
  %t128 = load i64, ptr %l2, !tbaa !24
  %t131 = icmp sge i64 %t127, %t128
  br i1 %t131, label %bb63, label %bb64
bb63:
  store i64 1, ptr %l67, !tbaa !24
  br label %bb65
bb64:
  store i64 0, ptr %l67, !tbaa !24
  br label %bb65
bb65:
  %t133 = load i64, ptr %l67, !tbaa !24
  store i64 %t133, ptr %l3, !tbaa !24
  br label %bb67
bb66:
  call void @__olang_check_failed(ptr @olang_loc_fe51c7873558f7ce_2759982fc28bb82a)
  unreachable
bb67:
  %t134 = load i64, ptr %l3, !tbaa !24
  store i64 %t134, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2feval_2ewritesGlobal(ptr %v0, ptr %a0, i64 %a1, i32 %a2) #0 {
entry:
  %l3 = alloca { i64, [2 x i64] }
  %l4 = alloca i64
  %l5 = alloca i32
  %l8 = alloca i1
  %l16 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/mir:Lvalue", ptr %a0, i32 0, i32 0
  %t4 = load { i64, [2 x i64] }, ptr %t3
  store { i64, [2 x i64] } %t4, ptr %l3
  %t6 = load { i64, [2 x i64] }, ptr %l3
  %t8 = extractvalue { i64, [2 x i64] } %t6, 0
  %t9 = icmp eq i64 %t8, 2
  br i1 %t9, label %bb1, label %bb2
bb1:
  %t11 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t12 = getelementptr { i64, i32, i32 }, ptr %t11, i32 0, i32 0
  %t13 = load i64, ptr %t12
  store i64 %t13, ptr %l4, !tbaa !24
  %t15 = getelementptr { i64, [2 x i64] }, ptr %l3, i32 0, i32 1
  %t16 = getelementptr { i64, i32, i32 }, ptr %t15, i32 0, i32 1
  %t17 = load i32, ptr %t16
  store i32 %t17, ptr %l5, !tbaa !23
  br label %bb3
bb2:
  br label %bb7
bb3:
  %t19 = load i64, ptr %l4, !tbaa !24
  %t23 = icmp eq i64 %t19, %a1
  br i1 %t23, label %bb4, label %bb5
bb4:
  %t25 = load i32, ptr %l5, !tbaa !23
  %t29 = icmp eq i32 %t25, %a2
  store i1 %t29, ptr %l16, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t31 = load i1, ptr %l16, !tbaa !21
  store i1 %t31, ptr %l8, !tbaa !21
  br label %bb12
bb7:
  br i1 true, label %bb8, label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb11
bb10:
  store i1 false, ptr %l8, !tbaa !21
  br label %bb12
bb11:
  call void @__olang_check_failed(ptr @olang_loc_41dd4bca4c506122_a0bb47eb0681cd66)
  unreachable
bb12:
  %t32 = load i1, ptr %l8, !tbaa !21
  store i1 %t32, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2feval_3aSnapshot_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca i64
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
  %l28 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l30 = alloca %"compiler/eval:Snapshot"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l6, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l6
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l8
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l6
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8, i32 0, i32 0
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
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l0
  %t22 = ptrtoint ptr %v0 to i64
  store i64 %t22, ptr %l10, !tbaa !24
  %t23 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e1
  br i1 %t23, label %bb6, label %bb7
bb6:
  %t25 = call ptr @__olang_region_make(ptr %v0)
  %t26 = ptrtoint ptr %t25 to i64
  store i64 %t26, ptr %l10, !tbaa !24
  br label %bb7
bb7:
  %t27 = load i64, ptr %l10
  %t28 = inttoptr i64 %t27 to ptr
  %t29 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t28, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %l12
  br label %bb8
bb8:
  %t30 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e1
  br i1 %t30, label %bb9, label %bb10
bb9:
  %t32 = load i64, ptr %l10
  %t33 = inttoptr i64 %t32 to ptr
  %t34 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12, i32 0, i32 0
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
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l12
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %l1
  %t43 = ptrtoint ptr %v0 to i64
  store i64 %t43, ptr %l14, !tbaa !24
  %t44 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e2
  br i1 %t44, label %bb11, label %bb12
bb11:
  %t46 = call ptr @__olang_region_make(ptr %v0)
  %t47 = ptrtoint ptr %t46 to i64
  store i64 %t47, ptr %l14, !tbaa !24
  br label %bb12
bb12:
  %t48 = load i64, ptr %l14
  %t49 = inttoptr i64 %t48 to ptr
  %t50 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t49, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t50, ptr %l16
  br label %bb13
bb13:
  %t51 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e2
  br i1 %t51, label %bb14, label %bb15
bb14:
  %t53 = load i64, ptr %l14
  %t54 = inttoptr i64 %t53 to ptr
  %t55 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16, i32 0, i32 0
  %t56 = load { i64, ptr }, ptr %t55
  %t57 = extractvalue { i64, ptr } %t56, 1
  %t58 = call ptr @__olang_region_or(ptr %t57, ptr null)
  %t59 = call ptr @__olang_region_home(ptr %t58)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr null
  %t62 = icmp eq ptr %t61, %t54
  call void @__olang_region_settle(ptr %t54, i1 %t62)
  br label %bb15
bb15:
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l2
  %t64 = ptrtoint ptr %v0 to i64
  store i64 %t64, ptr %l18, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e3
  br i1 %t65, label %bb16, label %bb17
bb16:
  %t67 = call ptr @__olang_region_make(ptr %v0)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l18, !tbaa !24
  br label %bb17
bb17:
  %t69 = load i64, ptr %l18
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t70, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l20
  br label %bb18
bb18:
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e3
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load i64, ptr %l18
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = call ptr @__olang_region_home(ptr %t79)
  %t81 = icmp ne ptr %t80, null
  %t82 = select i1 %t81, ptr %t80, ptr null
  %t83 = icmp eq ptr %t82, %t75
  call void @__olang_region_settle(ptr %t75, i1 %t83)
  br label %bb20
bb20:
  %t84 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l3
  %t85 = ptrtoint ptr %v0 to i64
  store i64 %t85, ptr %l22, !tbaa !24
  %t86 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e4
  br i1 %t86, label %bb21, label %bb22
bb21:
  %t88 = call ptr @__olang_region_make(ptr %v0)
  %t89 = ptrtoint ptr %t88 to i64
  store i64 %t89, ptr %l22, !tbaa !24
  br label %bb22
bb22:
  %t90 = load i64, ptr %l22
  %t91 = inttoptr i64 %t90 to ptr
  %t92 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t91, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t92, ptr %l24
  br label %bb23
bb23:
  %t93 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e4
  br i1 %t93, label %bb24, label %bb25
bb24:
  %t95 = load i64, ptr %l22
  %t96 = inttoptr i64 %t95 to ptr
  %t97 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24, i32 0, i32 0
  %t98 = load { i64, ptr }, ptr %t97
  %t99 = extractvalue { i64, ptr } %t98, 1
  %t100 = call ptr @__olang_region_or(ptr %t99, ptr null)
  %t101 = call ptr @__olang_region_home(ptr %t100)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr null
  %t104 = icmp eq ptr %t103, %t96
  call void @__olang_region_settle(ptr %t96, i1 %t104)
  br label %bb25
bb25:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l4
  %t106 = ptrtoint ptr %v0 to i64
  store i64 %t106, ptr %l26, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e5
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = call ptr @__olang_region_make(ptr %v0)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l26, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l26
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t113, ptr %l28
  br label %bb28
bb28:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2feval_3aSnapshot_2e5
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l26
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = call ptr @__olang_region_home(ptr %t121)
  %t123 = icmp ne ptr %t122, null
  %t124 = select i1 %t123, ptr %t122, ptr null
  %t125 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 1
  %t126 = load { i64, ptr }, ptr %t125
  %t127 = extractvalue { i64, ptr } %t126, 1
  %t128 = call ptr @__olang_region_or(ptr %t127, ptr null)
  %t129 = call ptr @__olang_region_home(ptr %t128)
  %t130 = icmp ne ptr %t129, null
  %t131 = select i1 %t130, ptr %t129, ptr %t124
  %t132 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28, i32 0, i32 0
  %t133 = load { i64, ptr }, ptr %t132
  %t134 = extractvalue { i64, ptr } %t133, 1
  %t135 = call ptr @__olang_region_or(ptr %t134, ptr null)
  %t136 = call ptr @__olang_region_home(ptr %t135)
  %t137 = icmp ne ptr %t136, null
  %t138 = select i1 %t137, ptr %t136, ptr %t131
  %t139 = icmp eq ptr %t138, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t139)
  br label %bb30
bb30:
  %t140 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l28
  %t141 = getelementptr %"compiler/eval:Snapshot", ptr %l30, i32 0, i32 0
  %t142 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l0
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t142, ptr %t141
  %t143 = getelementptr %"compiler/eval:Snapshot", ptr %l30, i32 0, i32 1
  %t144 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t144, ptr %t143
  %t145 = getelementptr %"compiler/eval:Snapshot", ptr %l30, i32 0, i32 2
  %t146 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t146, ptr %t145
  %t147 = getelementptr %"compiler/eval:Snapshot", ptr %l30, i32 0, i32 3
  %t148 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t148, ptr %t147
  %t149 = getelementptr %"compiler/eval:Snapshot", ptr %l30, i32 0, i32 4
  %t150 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t150, ptr %t149
  %t151 = getelementptr %"compiler/eval:Snapshot", ptr %l30, i32 0, i32 5
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t140, ptr %t151
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l30, i64 232, i1 false)
  br label %ret
ret:
  ret void
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
  %t20 = call ptr @__olang_region_home(ptr %t19)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t15
  call void @__olang_region_settle(ptr %t15, i1 %t23)
  br label %bb6
bb6:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l6
  %t25 = ptrtoint ptr %v0 to i64
  store i64 %t25, ptr %l18, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2feval_3agenRec_2e7
  br i1 %t26, label %bb7, label %bb8
bb7:
  %t28 = call ptr @__olang_region_make(ptr %v0)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t30 = load i64, ptr %l18
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l20
  br label %bb9
bb9:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2feval_3agenRec_2e7
  br i1 %t33, label %bb10, label %bb11
bb10:
  %t35 = load i64, ptr %l18
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = call ptr @__olang_region_home(ptr %t40)
  %t42 = icmp ne ptr %t41, null
  %t43 = select i1 %t42, ptr %t41, ptr null
  %t44 = icmp eq ptr %t43, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t44)
  br label %bb11
bb11:
  %t45 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  %t46 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 0
  %t47 = load i64, ptr %l0, !tbaa !24
  store i64 %t47, ptr %t46, !tbaa !24
  %t48 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 1
  %t49 = load i64, ptr %l1, !tbaa !24
  store i64 %t49, ptr %t48, !tbaa !24
  %t50 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 2
  call void @llvm.memmove.p0.p0.i64(ptr %t50, ptr %l2, i64 136, i1 false)
  %t51 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 3
  %t52 = load i64, ptr %l3, !tbaa !24
  store i64 %t52, ptr %t51, !tbaa !24
  %t53 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 4
  %t54 = load %"compiler/eval:Ptr", ptr %l4
  store %"compiler/eval:Ptr" %t54, ptr %t53
  %t55 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 5
  %t56 = load i1, ptr %l5, !tbaa !21
  store i1 %t56, ptr %t55, !tbaa !21
  %t57 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 6
  %t58 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t58, ptr %t57
  %t59 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t45, ptr %t59
  %t61 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 8
  store i64 -1, ptr %t61, !tbaa !24
  %t63 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 9
  store i64 0, ptr %t63, !tbaa !24
  %t65 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 10
  store i64 0, ptr %t65, !tbaa !24
  %t67 = getelementptr %"compiler/eval:genRec", ptr %l22, i32 0, i32 11
  store i64 -1, ptr %t67, !tbaa !24
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

define dso_local void @compiler_2feval_3ascope_2ector(ptr %out, ptr %v0) #0 {
entry:
  %l20 = alloca %"compiler/eval:scope"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 0
  store i64 0, ptr %t1, !tbaa !24
  %t3 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 1
  store i1 false, ptr %t3, !tbaa !21
  %t5 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 2
  store i64 0, ptr %t5, !tbaa !24
  %t7 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 3
  store i64 0, ptr %t7, !tbaa !24
  %t9 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 4
  store i64 -1, ptr %t9, !tbaa !24
  %t11 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 5
  store i64 0, ptr %t11, !tbaa !24
  %t13 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 6
  store i64 0, ptr %t13, !tbaa !24
  %t15 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 7
  store i64 0, ptr %t15, !tbaa !24
  %t17 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 8
  store i64 0, ptr %t17, !tbaa !24
  %t19 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 9
  store i64 0, ptr %t19, !tbaa !24
  %t21 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 10
  store i64 -1, ptr %t21, !tbaa !24
  %t23 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 11
  store i64 -1, ptr %t23, !tbaa !24
  %t25 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 12
  store i64 0, ptr %t25, !tbaa !24
  %t27 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 13
  store i64 0, ptr %t27, !tbaa !24
  %t29 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 14
  store i64 0, ptr %t29, !tbaa !24
  %t31 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 15
  store i1 false, ptr %t31, !tbaa !21
  %t33 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 16
  store i64 0, ptr %t33, !tbaa !24
  %t35 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 17
  store i64 -1, ptr %t35, !tbaa !24
  %t37 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 18
  store i1 false, ptr %t37, !tbaa !21
  %t39 = getelementptr %"compiler/eval:scope", ptr %l20, i32 0, i32 19
  store i1 false, ptr %t39, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l20, i64 152, i1 false)
  br label %ret
ret:
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
@__olang_prog_scope = external thread_local(initialexec) global ptr
declare void @__olang_check_failed(ptr) cold noreturn
@.d0 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@__olang_empty_array = external constant [16 x i64]
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
declare void @llvm.memmove.p0.p0.i64(ptr, ptr, i64, i1)
@.d1 = private constant <{ i64, [37 x i8] }> <{ i64 0, [37 x i8] c"olang: internal compiler error: file " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d2 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c" at " }>, align 8
@.d3 = private constant <{ i64, [2 x i8] }> <{ i64 0, [2 x i8] c": " }>, align 8
@.d4 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"\0A" }>, align 8
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
declare void @__olang_errpay_pop()
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
define internal void @olang_lambda_5(ptr %env, %"compiler/eval:Ptr" %a0) #0 {
entry:
  %l0 = alloca %"compiler/eval:Ptr"
  %l1 = alloca %"compiler/eval:Ptr"
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l6 = alloca i64
  %l12 = alloca %"compiler/eval:Ptr"
  %l15 = alloca i64
  %l21 = alloca i1
  %l29 = alloca i64
  %l32 = alloca i64
  %l43 = alloca i1
  %l46 = alloca i1
  %s0 = alloca %olang.scope
  store %"compiler/eval:Ptr" %a0, ptr %l0
  %cp0 = getelementptr { ptr, i64, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l2
  %cp1 = getelementptr { ptr, i64, ptr }, ptr %env, i32 0, i32 1
  %cv1 = load i64, ptr %cp1, !tbaa !28
  %vq0 = getelementptr { ptr, i64, ptr }, ptr %env, i32 0, i32 2
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 0
  %t7 = load i64, ptr %t6, !tbaa !24
  %t8 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 1
  %t9 = load i64, ptr %t8, !tbaa !24
  %t11 = sub i64 %t9, 8
  %t14 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t7, i64 %t11)
  store %"compiler/eval:Ptr" %t14, ptr %l12
  br label %bb4
bb4:
  %t15 = load %"compiler/eval:Ptr", ptr %l12
  store %"compiler/eval:Ptr" %t15, ptr %l1
  %t16 = load ptr, ptr %l2, !tbaa !29
  %t17 = load %"compiler/eval:Ptr", ptr %l1
  %t20 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %vc0, ptr %t16, %"compiler/eval:Ptr" %t17, i64 8)
  store i64 %t20, ptr %l15
  br label %bb5
bb5:
  %t21 = load i64, ptr %l15, !tbaa !24
  store i64 %t21, ptr %l3, !tbaa !24
  %t22 = load i64, ptr %l3, !tbaa !24
  %t24 = ashr i64 %t22, 16
  %t26 = and i64 %t24, 3
  store i64 %t26, ptr %l4, !tbaa !24
  %t28 = load i64, ptr %l4, !tbaa !24
  %t30 = icmp eq i64 %t28, 3
  br i1 %t30, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l21, !tbaa !21
  br label %bb8
bb7:
  %t32 = load ptr, ptr %l2, !tbaa !29
  %t34 = getelementptr %"compiler/eval:Machine", ptr %t32, i32 0, i32 22
  %t35 = load i1, ptr %t34, !tbaa !21
  store i1 %t35, ptr %l21, !tbaa !21
  br label %bb8
bb8:
  %t37 = load i1, ptr %l21, !tbaa !21
  br i1 %t37, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb10:
  br label %bb11
bb11:
  %t38 = load i64, ptr %l4, !tbaa !24
  %t42 = add i64 %t38, %cv1
  store i64 %t42, ptr %l6, !tbaa !24
  %t44 = load i64, ptr %l6, !tbaa !24
  %t46 = icmp slt i64 %t44, 0
  br i1 %t46, label %bb12, label %bb13
bb12:
  store i64 0, ptr %l29, !tbaa !24
  br label %bb17
bb13:
  %t48 = load i64, ptr %l6, !tbaa !24
  %t50 = icmp sgt i64 %t48, 3
  br i1 %t50, label %bb14, label %bb15
bb14:
  store i64 3, ptr %l32, !tbaa !24
  br label %bb16
bb15:
  %t52 = load i64, ptr %l6, !tbaa !24
  store i64 %t52, ptr %l32, !tbaa !24
  br label %bb16
bb16:
  %t54 = load i64, ptr %l32, !tbaa !24
  store i64 %t54, ptr %l29, !tbaa !24
  br label %bb17
bb17:
  %t55 = load i64, ptr %l29, !tbaa !24
  store i64 %t55, ptr %l6, !tbaa !24
  %t56 = load ptr, ptr %l2, !tbaa !29
  %t57 = load %"compiler/eval:Ptr", ptr %l1
  %t58 = load i64, ptr %l3, !tbaa !24
  %t60 = and i64 %t58, -196609
  %t61 = load i64, ptr %l6, !tbaa !24
  %t63 = shl i64 %t61, 16
  %t66 = or i64 %t60, %t63
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %vc0, ptr %t56, %"compiler/eval:Ptr" %t57, i64 8, i64 %t66)
  br label %bb18
bb18:
  %t70 = load i64, ptr %l6, !tbaa !24
  %t72 = icmp eq i64 %t70, 0
  br i1 %t72, label %bb19, label %bb20
bb19:
  %t74 = load i64, ptr %l4, !tbaa !24
  %t76 = icmp sgt i64 %t74, 0
  store i1 %t76, ptr %l43, !tbaa !21
  br label %bb21
bb20:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb21
bb21:
  %t78 = load i1, ptr %l43, !tbaa !21
  br i1 %t78, label %bb22, label %bb23
bb22:
  %t79 = load ptr, ptr %l2, !tbaa !29
  %t81 = getelementptr %"compiler/eval:Machine", ptr %t79, i32 0, i32 16
  %t82 = load i1, ptr %t81, !tbaa !21
  store i1 %t82, ptr %l46, !tbaa !21
  br label %bb24
bb23:
  store i1 false, ptr %l46, !tbaa !21
  br label %bb24
bb24:
  %t84 = load i1, ptr %l46, !tbaa !21
  br i1 %t84, label %bb25, label %bb26
bb25:
  %t85 = load ptr, ptr %l2, !tbaa !29
  %t86 = load %"compiler/eval:Ptr", ptr %l0
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholderCheck(ptr %vc0, ptr %t85, %"compiler/eval:Ptr" %t86)
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare void @llvm.memcpy.p0.p0.i64(ptr, ptr, i64, i1)
declare void @__olang_bang_failed_plain(ptr) cold noreturn
define internal void @olang_lambda_7(ptr %env, %"compiler/eval:Ptr" %a0) #0 {
entry:
  %l0 = alloca %"compiler/eval:Ptr"
  %l1 = alloca ptr
  %l2 = alloca %"compiler/eval:Ptr"
  %l3 = alloca i64
  %l4 = alloca i64
  %l7 = alloca i1
  %l10 = alloca i1
  %l15 = alloca %"compiler/eval:Ptr"
  %l18 = alloca i64
  %l24 = alloca i1
  %s0 = alloca %olang.scope
  store %"compiler/eval:Ptr" %a0, ptr %l0
  %cp0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 0
  %cv0 = load ptr, ptr %cp0, !tbaa !28
  store ptr %cv0, ptr %l1
  %vq0 = getelementptr { ptr, ptr }, ptr %env, i32 0, i32 1
  %vr0 = load ptr, ptr %vq0, !tbaa !28
  %vc0 = call ptr @__olang_capture_scope(ptr %vr0)
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 0
  %t2 = load i64, ptr %t1, !tbaa !24
  %t4 = icmp eq i64 %t2, 0
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb4
bb2:
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t7 = load %"compiler/eval:Ptr", ptr %l0
  %t10 = call i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenLive(ptr %vc0, ptr %t6, %"compiler/eval:Ptr" %t7)
  store i1 %t10, ptr %l10
  br label %bb3
bb3:
  %t11 = load i1, ptr %l10, !tbaa !21
  %t12 = xor i1 %t11, true
  store i1 %t12, ptr %l7, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb6:
  br label %bb7
bb7:
  %t15 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 0
  %t16 = load i64, ptr %t15, !tbaa !24
  %t17 = getelementptr %"compiler/eval:Ptr", ptr %l0, i32 0, i32 1
  %t18 = load i64, ptr %t17, !tbaa !24
  %t20 = sub i64 %t18, 8
  %t23 = call %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %s0, i64 %t16, i64 %t20)
  store %"compiler/eval:Ptr" %t23, ptr %l15
  br label %bb8
bb8:
  %t24 = load %"compiler/eval:Ptr", ptr %l15
  store %"compiler/eval:Ptr" %t24, ptr %l2
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t26 = load %"compiler/eval:Ptr", ptr %l2
  %t29 = call i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %vc0, ptr %t25, %"compiler/eval:Ptr" %t26, i64 8)
  store i64 %t29, ptr %l18
  br label %bb9
bb9:
  %t30 = load i64, ptr %l18, !tbaa !24
  store i64 %t30, ptr %l3, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = ashr i64 %t31, 16
  %t35 = and i64 %t33, 3
  store i64 %t35, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l4, !tbaa !24
  %t39 = icmp eq i64 %t37, 0
  br i1 %t39, label %bb10, label %bb11
bb10:
  store i1 true, ptr %l24, !tbaa !21
  br label %bb12
bb11:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t43 = icmp eq i64 %t41, 3
  store i1 %t43, ptr %l24, !tbaa !21
  br label %bb12
bb12:
  %t45 = load i1, ptr %l24, !tbaa !21
  br i1 %t45, label %bb13, label %bb14
bb13:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
bb14:
  br label %bb15
bb15:
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t47 = load %"compiler/eval:Ptr", ptr %l2
  %t48 = load i64, ptr %l3, !tbaa !24
  %t50 = sub i64 %t48, 65536
  call void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewr(ptr %vc0, ptr %t46, %"compiler/eval:Ptr" %t47, i64 8, i64 %t50)
  br label %bb16
bb16:
  %t54 = load i64, ptr %l4, !tbaa !24
  %t56 = icmp eq i64 %t54, 1
  br i1 %t56, label %bb17, label %bb18
bb17:
  %t58 = load ptr, ptr %l1, !tbaa !29
  %t60 = getelementptr %"compiler/eval:Machine", ptr %t58, i32 0, i32 8
  %t61 = load %"compiler/eval:Ptr", ptr %l0
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %vc0, ptr %t60, %"compiler/eval:Ptr" %t61)
  br label %bb19
bb18:
  br label %bb20
bb19:
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

@.d8 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"unhandled error" }>, align 8
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

@.d9 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"true" }>, align 8
@.d10 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"false" }>, align 8
declare i64 @__olang_fmt_u64(ptr, i64)
@.d11 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"I64" }>, align 8
@.d12 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d13 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d14 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@.d15 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F16" }>, align 8
@.d16 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"BF16" }>, align 8
@.d17 = private constant <{ i64, [3 x i8] }> <{ i64 0, [3 x i8] c"F32" }>, align 8
@olang_2esole_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2e_2d1 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
@.d18 = private constant <{ i64, [10 x i8] }> <{ i64 0, [10 x i8] c"eval_test_" }>, align 8
@olang_2esole_2ecompiler_2feval_3aSnapshot_2e0 = weak hidden constant i1 false
declare ptr @__olang_region_or(ptr, ptr)
declare ptr @__olang_region_home(ptr)
declare void @__olang_region_settle(ptr, i1)
@olang_2esole_2ecompiler_2feval_3aSnapshot_2e1 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aSnapshot_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aSnapshot_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3aSnapshot_2e4 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2feval_3agenRec_2e6 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2feval_3agenRec_2e7 = weak hidden constant i1 false
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
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3agkey_2c_20I64_3e_2eG_H841bd46d30f67641fdfac3080f15aea1(ptr %v0, ptr %a0, %"compiler/eval:gkey" %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eRefMut_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2ftext_3aString_Hc3dff1927e5c626a9d95abfdf4e9a462(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2feval_2eWhyNoBody = external constant <{ [8 x i8], ptr }>
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erefuse(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"compiler/eval:global" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eAt_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloop(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [5 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2eEval(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, [2 x i64] } %a1, { i64, ptr } %a2)
declare { i32, { %"compiler/eval:Ptr", i32 } } @compiler_2feval_2ecompiler_2feval_3aMachine_2eGlobalAt(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare { i32, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveAlloc(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i1 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aSnapshot_2edrop(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_e7a4fa5689cb83c4_e9f49c5f7d359a08 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2esaveWords(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2)
@olang_loc_75b3dda1da275889_df5a5485a99f3eed = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eLen_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2e_H2711111a2c34fd187b8c2034b3d60e52(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ezero(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePacked(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFields(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBitOffsets(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare { i64, [4 x i64] } @compiler_2feval_2ecompiler_2feval_3aMachine_2earg(ptr %v0, ptr %a0, i64 %a1, %"compiler/mir:Range" %a2, i64 %a3)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eaddr(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackInto(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2, i32 %a3, %"compiler/eval:Ptr" %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eshape(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evFixed = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0B\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eelemOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evEnum = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\08\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_3aPtr_2ector(ptr %v0, i64 %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eput(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [4 x i64] } %a4)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2epayloadType(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epartOffset(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2feval_2evOrd = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\09\00\00\00\00\00\00\00" }>, align 8
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAnchors(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eOwnedPart(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_1af190ed0f8ad609_3dab539ded9f1c85 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2ePush_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eLen_3cArray_3cI64_3e_3e(ptr %v0, ptr %a0)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cArray_3cI64_3e_3e_2eAt_3cArray_3cI64_3e_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectAt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionOfObject(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregionHomeOf(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eref(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, i32 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epackedOp(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eUnknownT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2econvertArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [4 x i64] } %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2evAgg = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0A\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2erdPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escalar(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrPtr(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, %"compiler/eval:Ptr" %a2)
@G_2ecompiler_2feval_2eNullPtr = available_externally constant <{ [16 x i8] }> <{ [16 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2etable(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2esatOp(i32 %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOp(ptr %v0, ptr %a0, i64 %a1, i32 %a2, %"compiler/mir:Range" %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eprimWide(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, i32 %a3, i32 %a4, %"compiler/mir:Range" %a5)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewidth(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eprim(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2eoverflowsWide(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3, %"compiler/mir:Range" %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2etagOf(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewRef(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, { i64, [4 x i64] } %a4, i32 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2enewArray(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, i32 %a4, { i64, [4 x i64] } %a5, { i64, [4 x i64] } %a6)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eslice(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3, { i64, [4 x i64] } %a4, { i64, [4 x i64] } %a5, i32 %a6)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eclosure(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [2 x i64] } %a3, { i64, [1 x i64] } %a4, %"compiler/mir:Range" %a5)
@G_2ecompiler_2fmir_2eI32T = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\05\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintValue(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erecode(ptr %v0, ptr %a0, i64 %a1, i32 %a2, i32 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2etext(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, { i64, [1 x i64] } %a3, { i64, [1 x i64] } %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2ebuildScope(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eregion(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eslotMask = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eRefMut_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eobjectOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2escopeOf(ptr %v0, ptr %a0, i64 %a1, { i64, [1 x i64] } %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efoundScope(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2esRegion = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2enewScope(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePush_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eLen_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eWhyNotModelled = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:Ptr" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eAt_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eweakRead(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:Ptr" %a2, %"compiler/mir:Lvalue" %a3)
@olang_loc_140721f2aee0298e_beee5014d741f7d2 = external constant [0 x i8]
@G_2ecompiler_2feval_2eWhyNull = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eForeignId = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\FF\FF\FF\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyForeign = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyClosed = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eaFree = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eslotBits = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\18\00\00\00\00\00\00\00" }>, align 8
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2eHas_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyBeyond = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyStale = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyReadOnly = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2eWhyWritesGlobal = external constant <{ [8 x i8], ptr }>
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eReferent(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erd(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i64 %a2)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2emask(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_561376b2ca02a7ba_25f299f9320c8ad6 = external constant [0 x i8]
@G_2ecompiler_2feval_2evInt = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evUint = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\03\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ebmask(i64 %a0)
@G_2ecompiler_2feval_2evWide = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\0D\00\00\00\00\00\00\00" }>, align 8
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eG_H6ffe2eb17daa971b2c9d564ad72358b1(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eLen_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2fmir_3aFnKey_2c_20I64_3e_2eP_H79a97b7337c7adf08bdd37311af7e171(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2ePush_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
@G_2ecompiler_2feval_2evFloat = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2evBool = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintToFloat(ptr %v0, ptr %a0, i64 %a1, i1 %a2, i32 %a3)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efromF64(ptr %v0, ptr %a0, double %a1, i32 %a2)
declare i1 @compiler_2feval_2efloatFits(double %a0, i64 %a1, i1 %a2)
@G_2ecompiler_2feval_2eWhyConvert = external constant <{ [8 x i8], ptr }>
declare %"compiler/eval:dkey" @compiler_2feval_3adkey_2ector(ptr %v0, i64 %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2eG_H537d495038c4cf6799e621bee696b05f(ptr %v0, ptr %a0, %"compiler/eval:dkey" %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aConstNode_3e_2eAt_3ccompiler_2fmir_3aConstNode_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2econstLen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2)
@G_2ecompiler_2feval_2eaData = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2eallocate(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2feval_3adkey_2c_20I64_3e_2eP_H91b95c77ac9fc5702101e9e6061f40cd(ptr %v0, ptr %a0, %"compiler/eval:dkey" %a1, i64 %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eAt_3ccompiler_2feval_3ascope_3e(ptr %out, ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:reg" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eAt_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erelease(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3ascope_3e_2eSetAt_3ccompiler_2feval_3ascope_3e(ptr %v0, ptr %a0, i64 %a1, ptr %a2)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsNumber(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eBoolT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\02\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eVoidT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\01\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNoreturnT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\11\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eConstValue(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2efConst = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare %"compiler/mir:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLocal_3e_2eAt_3ccompiler_2fmir_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2efCopy = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eflattenLoad(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Lvalue" %a2, i64 %a3, i64 %a4, ptr %a5, i64 %a6)
@olang_loc_fa5d44bd34a52c36_2176aa5fee74345a = external constant [0 x i8]
@olang_loc_9ff5c0c5c0f3031a_9845a0a415f7f056 = external constant [0 x i8]
@olang_loc_dc78e3ab17f01d1b_791cd762b2865477 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eDeclKindOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2eWhyFreedEarly = external constant <{ [8 x i8], ptr }>
declare i32 @std_2fio_2ePutErr_3cstd_2fprelude_2ftext_3aString_3e({ i64, ptr } %a0)
declare void @std_2fos_2eExit(i32 %a0)
@olang_loc_c25616630356082_96e485ee4d1c8d36 = external constant [0 x i8]
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eHoldsGen(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2)
declare { %"compiler/eval:Ptr", i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2earrayView(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eElem(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2eHasFields(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2fmir_2ecompiler_2fmir_3aGenInfo_2eWeakField(ptr %v0, ptr %v1, ptr %a0, ptr %a1, i32 %a2, i64 %a3)
declare i1 @compiler_2fmir_2eHasCases(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsInt(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eBits(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2feval_2erGlobal = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\05\00\00\00\00\00\00\00" }>, align 8
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFn_26_3e_2eAt_3ccompiler_2fmir_3aFn_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eLen_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aVarKind_3e_2eAt_3ccompiler_2fmir_3aVarKind_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_a8aea866c7f3b59a_8137d523407c73ee = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edeliver(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elive(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2epopFrame(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ereturned(ptr %v0, ptr %a0, ptr %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2erdRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ewrRaw(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare %"compiler/eval:task" @compiler_2feval_3atask_2ector(ptr %v0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2ePush_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, %"compiler/eval:task" %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eLen_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2eintOp(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i32 %a4, i32 %a5)
@olang_loc_590198b1bba6f342_437268d8e9153c4e = external constant [0 x i8]
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2eopType(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare i1 @compiler_2feval_2efitsBits(i64 %a0, i1 %a1, i64 %a2, i1 %a3)
declare i64 @compiler_2feval_2eminBits(i64 %a0)
@olang_loc_63a030dc495bebe2_de58b898255fa7b6 = external constant [0 x i8]
@olang_loc_ffc454b782ecc9e3_c14f69603a3a3b57 = external constant [0 x i8]
@olang_loc_4df6f2ee185eb0d1_4c6469cdbf591dfd = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2elay(ptr %v0, ptr %a0, i32 %a1)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAlign(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_d4aeb51afef739b6_d573fd1fa5ffe912 = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eTruncate_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseRegion(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/eval:Ptr" @compiler_2feval_2ecompiler_2feval_3aMachine_2elocalPtr(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2feval_2eWhyNoGlobal = external constant <{ [8 x i8], ptr }>
@olang_loc_de6102181a77a536_5fca55a0d6277082 = external constant [0 x i8]
declare { %"compiler/eval:Ptr", i32 } @compiler_2feval_2ecompiler_2feval_3aMachine_2eelement(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3)
@G_2ecompiler_2feval_2eWhyPayload = external constant <{ [8 x i8], ptr }>
@olang_loc_c157b2e02f5238d7_241c429033d52203 = external constant [0 x i8]
@olang_loc_48067455946c0246_37fc1727e867ffc2 = external constant [0 x i8]
@olang_loc_ed29d0e1fe37827_73f8bd43b4184743 = external constant [0 x i8]
declare { i64, [4 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aOperand_3e_2eAt_3ccompiler_2fmir_3aOperand_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2emutableGlobal(ptr %v0, ptr %a0, %"compiler/mir:Lvalue" %a1)
@olang_loc_4b87b113311cbcf6_8401054b0e12d93a = external constant [0 x i8]
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsUnsigned(ptr %v0, ptr %a0, i32 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_Hb3133f486435530b533aaf49461c92b5(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i1 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H257d83b06934604763b32ef91c51c1d2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20Bool_3e_H64d9be73b6c9bed004c541bdf7f0ca0a(ptr %v0, ptr %a0, i32 %a1, i1 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eShapeCases(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCases(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_a8af958fc51ac952_dd02768cc282434e = external constant [0 x i8]
@olang_loc_5132488ea4d5a24a_c872bd4e98b932a6 = external constant [0 x i8]
@olang_loc_9194ffe5f5e47ba_f46397cb96638a2e = external constant [0 x i8]
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cstd_2fprelude_2ftext_3aString_26_2c_20_H6b5ccacad8db807339a3579aa8c82ff8(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ector(ptr %v0, i64 %a0)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenRefOp(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2eClear_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
declare { i32, %"compiler/eval:Ptr" } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aPtr_3e_2ePop_3ccompiler_2feval_3aPtr_3e(ptr %v0, ptr %a0)
@olang_loc_bbf1272d2dbbb844_d68a0a76eda92190 = external constant [0 x i8]
@olang_loc_68f2e3273b0c13ff_def2be11df69fc2b = external constant [0 x i8]
@olang_loc_3d1de3bd3de1c4f9_119b8890932091e5 = external constant [0 x i8]
@olang_loc_1fd2133d584b20bd_c0a743cadb5dd151 = external constant [0 x i8]
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenLive(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2egenHeld(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ekept(ptr %v0, ptr %v1, ptr %a0, %"compiler/eval:Ptr" %a1, ptr %a2)
declare { i64, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2ewideOf(ptr %v0, ptr %a0, i64 %a1, { i64, [4 x i64] } %a2)
@G_2ecompiler_2feval_2eWhyShift = external constant <{ [8 x i8], ptr }>
declare { i64, i64 } @compiler_2feval_2eshl128(i64 %a0, i64 %a1, i64 %a2)
declare { i64, i64 } @compiler_2feval_2eshr128(i64 %a0, i64 %a1, i64 %a2, i1 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputInt(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i64 %a4)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eputLimit(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1, i32 %a2, i64 %a3, i1 %a4, i1 %a5)
@olang_loc_29dd04e5370cce06_39cab22b02d0561a = external constant [0 x i8]
declare { i64, i64 } @compiler_2feval_2eadd128(i64 %a0, i64 %a1, i64 %a2, i64 %a3)
@olang_loc_de325288a34cd8e7_764dd51059cd701b = external constant [0 x i8]
@G_2ecompiler_2feval_2eaValue = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2ftypes_2eNullT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\0F\00\00\00" }>, align 8
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSize(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2esettled(ptr %v0, ptr %a0, i32 %a1)
declare ptr @compiler_2feval_2ecompiler_2feval_3aMachine_2efnOfFrame(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"compiler/mir:Task" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTask_3e_2eAt_3ccompiler_2fmir_3aTask_3e(ptr %v0, ptr %a0, i64 %a1)
declare { { i64, ptr }, i64 } @compiler_2feval_2ecompiler_2feval_3aMachine_2etaskLayout(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, %"compiler/mir:Task" %a2, i64 %a3)
declare %"compiler/mir:Lvalue" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aLvalue_3e_2eAt_3ccompiler_2fmir_3aLvalue_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"compiler/mir:TaskClause" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aTaskClause_3e_2eAt_3ccompiler_2fmir_3aTaskClause_3e(ptr %v0, ptr %a0, i64 %a1)
declare { i64, [1 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aScopeRef_3e_2eAt_3ccompiler_2fmir_3aScopeRef_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_c730e5cddf41927a_cc9c5d5e6e4d10a6 = external constant [0 x i8]
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eSetAt_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %a0, i64 %a1, %"compiler/eval:task" %a2)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3atask_3e_2eRefMut_3ccompiler_2feval_3atask_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aFnKey_3e_2eAt_3ccompiler_2fmir_3aFnKey_3e(ptr %v0, ptr %a0, i64 %a1)
declare i64 @compiler_2feval_2ecompiler_2feval_3aMachine_2epushFrame(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2ecaseHolds(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i64 %a3, i64 %a4, i64 %a5)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2efreeTask(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_da2497658df77092_f2a1f3138ef6e43e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eErrors(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eDefaultErrT = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\10\00\00\00" }>, align 8
declare %"compiler/typed:Item" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aItem_3e_2eAt_3ccompiler_2ftyped_3aItem_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@G_2ecompiler_2feval_2eaCode = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@G_2ecompiler_2feval_2eWhyNullCall = external constant <{ [8 x i8], ptr }>
@G_2ecompiler_2feval_2erClause = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\04\00\00\00\00\00\00\00" }>, align 8
@olang_loc_1763d3aa4dbf9a93_91ae1790a76dd73f = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eloadCaptures(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, %"compiler/eval:Ptr" %a3, i64 %a4)
@olang_loc_2ee13faba4731678_f9595c1938ce6204 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estop(ptr %v0, ptr %v1, ptr %a0, { i64, [5 x i64] } %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eexit(ptr %v0, ptr %a0, i64 %a1, i64 %a2, %"compiler/source:Span" %a3, i32 %a4, { i64, [4 x i64] } %a5)
declare %"compiler/mir:BasicBlock" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aBasicBlock_3e_2eAt_3ccompiler_2fmir_3aBasicBlock_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@G_2ecompiler_2feval_2eWhyNoClause = external constant <{ [8 x i8], ptr }>
@olang_loc_295f7f77f101c149_2aa6184739b6cdf5 = external constant [0 x i8]
@olang_loc_176c1f0c53cca04e_ded73198e701b2e2 = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePlain(ptr %v0, ptr %a0, i32 %a1)
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__H165e1ff795edcbb725e28dde18fd1dc2(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3ccompiler_2ftypes_3aTypeId_2c_20I64_3e__Hccd9659a44f570da1fa06b019882a84d(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@olang_loc_bb58ffa16789d1e6_53f99027aa0e2dd2 = external constant [0 x i8]
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3areg_3e_2eRefMut_3ccompiler_2feval_3areg_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2erunCleanups(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ecloseOpen(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_f4c8d7149bd44e26_572dd2a903112792 = external constant [0 x i8]
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2edropFrame(ptr %v0, ptr %a0)
@olang_loc_2654da324b88ad87_946d0eedc2d95193 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3aglobal_3e_2eLen_3ccompiler_2feval_3aglobal_3e(ptr %v0, ptr %a0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2estartTask(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@G_2ecompiler_2fmir_2eNoBlock = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\FF\FF\FF\FF" }>, align 8
@G_2ecompiler_2feval_2etJoin = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\02\00\00\00\00\00\00\00" }>, align 8
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2efailedHere(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2ejump(ptr %v0, ptr %a0, i64 %a1, i32 %a2)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eLen_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eAt_3ccompiler_2feval_3agenRec_3e(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2feval_3agenRec_3e_2eRefMut_3ccompiler_2feval_3agenRec_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2efreshWork(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2feval_2ecompiler_2feval_3aMachine_2edropWork(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eunmark(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendByte(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendEscaped(ptr %v0, ptr %a0, i64 %a1, i64 %a2, i64 %a3)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eappendText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, { i64, ptr } %a2)
declare { i64, ptr } @compiler_2feval_2ewideText(ptr %v0, i64 %a0, i64 %a1, i1 %a2)
declare { i64, ptr } @compiler_2feval_2ecompiler_2feval_3aMachine_2efloatText(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@olang_loc_8ccc3ef59c04d332_c9a1f89b24f6a8f6 = external constant [0 x i8]
declare i8 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cU8_3e_2eAt_3cU8_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI32_3e_2eAt_3cI32_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @compiler_2feval_2ecompiler_2feval_3aMachine_2ewriteItem(ptr %v0, ptr %v1, ptr %a0, ptr %a1, %"compiler/eval:Ptr" %a2, i32 %a3, { i64, [1 x i64] } %a4)
@olang_loc_3aba056b97310e62_2c3874c5956ac10e = external constant [0 x i8]
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePrim(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList1(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eFunc(ptr %v0, ptr %a0, i32 %a1, i32 %a2, i32 %a3, i32 %a4, i64 %a5, i1 %a6, i32 %a7, i64 %a8)
declare void @compiler_2feval_2etfn(ptr %out, ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2)
@G_2ecompiler_2feval_2eSp0 = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\00\00\00\00\00\00\00\00" }>, align 8
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eAddTemp(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2)
declare i32 @compiler_2fmir_2ecompiler_2fmir_3aFn_2eNewBlock(ptr %v0, ptr %a0)
@G_2ecompiler_2feval_2eB0 = available_externally constant <{ [4 x i8] }> <{ [4 x i8] c"\00\00\00\00" }>, align 8
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
declare i64 @compiler_2feval_2ecmp128(i64 %a0, i64 %a1, i64 %a2, i64 %a3, i1 %a4)
declare { i64, i64 } @compiler_2feval_2ewideMax(i64 %a0, i1 %a1)
declare i1 @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aString_2eEq(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare { i64, i64 } @compiler_2feval_2emul64(i64 %a0, i64 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eList(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
@olang_loc_c25b9553ef801192_ed4b8566966f1316 = external constant [0 x i8]
declare i1 @compiler_2feval_2eplaceNamesGlobal(%"compiler/mir:Lvalue" %a0)
declare i1 @compiler_2feval_2eopNamesGlobal({ i64, [4 x i64] } %a0)
declare i1 @compiler_2feval_2erangeNamesGlobal(ptr %v0, ptr %a0, %"compiler/mir:Range" %a1)
@olang_loc_5c3972130c0b0906_e6fe5489c867bc1a = external constant [0 x i8]
@olang_loc_108ebfb6784b13e7_2381776f1f64d61b = external constant [0 x i8]
declare %"compiler/mir:Lvalue" @compiler_2feval_2etl(i64 %a0)
declare %"compiler/mir:Call" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fmir_3aCall_3e_2eAt_3ccompiler_2fmir_3aCall_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_70d3567da39f3a7a_be006e6544252cae = external constant [0 x i8]
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddModule(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2fsource_2ecompiler_2fsource_3aNames_2eIntern(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eAddDecl(ptr %v0, ptr %v1, ptr %a0, i64 %a1, i32 %a2, i32 %a3, i32 %a4)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eNamed(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_ab914fb6864a784e_7aa15624a1f173ba = external constant [0 x i8]
@olang_loc_fe51c7873558f7ce_2759982fc28bb82a = external constant [0 x i8]
@olang_loc_41dd4bca4c506122_a0bb47eb0681cd66 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2feval_3aframe_2ector(ptr %out, ptr %v0)
declare void @compiler_2feval_2ecompiler_2feval_3aMachine_2eholderCheck(ptr %v0, ptr %a0, %"compiler/eval:Ptr" %a1)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)

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
