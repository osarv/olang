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
%"compiler/typed:Call" = type { ptr, { i64, ptr }, i32, i1, i1 }
%"compiler/typed:DropHolding" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" = type { { i64, ptr }, i64, i64 }
%"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, i64, i64, i64 }
%"compiler/typed:dropWalk" = type { ptr, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Body" = type { i32, { i64, [2 x i64] }, i32, i64, %"compiler/source:Span", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, i32, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/source:Span" = type { i32, i32 }
%"compiler/typed:Plan" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", { i64, ptr }, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Arm" = type { %"compiler/source:Span", { i64, ptr }, ptr, ptr, ptr }
%"compiler/typed:Alt" = type { ptr, { i64, ptr } }
%"compiler/typed:Bind" = type { i32, ptr }
%"compiler/typed:Local" = type { i32, %"compiler/source:Span", i32, i32, i32, { i64, [1 x i64] }, i1, i1 }
%"compiler/typed:SiteInfo" = type { i32, %"compiler/source:Span" }
%"compiler/typed:Landings" = type { { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, { i64, ptr }, i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i64, %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64 }
%"compiler/typed:landState" = type { { i64, ptr }, i1 }
%"compiler/typed:LastUses" = type { i64, { i64, ptr }, { i64, ptr }, i64, i64, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" }
%"compiler/typed:Elem" = type { ptr, ptr, i32 }
%"compiler/typed:Payload" = type { ptr, i64, i32 }
%"compiler/typed:LocalUses" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, i32 }
%"compiler/typed:Promote" = type { ptr, i32 }
%"compiler/typed:Versions" = type { ptr, { i64, ptr }, { i64, ptr }, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1 }
%"compiler/typed:If" = type { ptr, ptr, ptr }
%"compiler/typed:Join" = type { ptr, i1, { i64, ptr } }
%"compiler/typed:Spawn" = type { { i64, ptr }, ptr, { i64, ptr }, i32 }
%"compiler/typed:TaskClause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr }
%"compiler/typed:ViewWalk" = type { ptr, ptr, i64, { ptr, ptr }, { ptr, ptr } }
%"compiler/typed:Slice" = type { ptr, ptr, ptr, i32 }
%"compiler/typed:Seq" = type { { i64, ptr }, ptr, i1 }
%"compiler/typed:Block" = type { i32, { i64, ptr } }
%"compiler/typed:Clause" = type { %"compiler/source:Span", { i64, ptr }, i1, ptr, { i64, ptr }, i64, i32 }
%"compiler/typed:holdWalk" = type { ptr, ptr, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", i1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Capture" = type { i32, ptr }
%"compiler/typed:printer" = type { ptr, %"std/prelude/text:StringBuilder" }
%"std/prelude/text:StringBuilder" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:Make" = type { i32, i64, { i64, ptr }, ptr, i32, i32, i1 }
%"compiler/typed:Collect" = type { ptr, ptr, i32, i32, i1 }
%"compiler/typed:Cond" = type { ptr, ptr, ptr }
%"compiler/typed:Match" = type { { i64, ptr }, { i64, ptr }, ptr, i1 }
%"compiler/typed:Try" = type { ptr, { i64, ptr }, i1, i1, i1 }
%"compiler/typed:Text" = type { { i64, ptr }, i32 }
%"compiler/typed:leaveWalk" = type { %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
%"compiler/typed:ContractInfo" = type { { i64, ptr }, i64, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" }
define dso_local i64 @compiler_2ftyped_2eCalleeBody(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i1
  %rv = alloca i64
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Call", ptr %a0, i32 0, i32 0
  %t4 = load ptr, ptr %t3, !tbaa !29
  store ptr %t4, ptr %l1, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  store ptr %t6, ptr %l6, !tbaa !29
  store i1 false, ptr %l7, !tbaa !21
  %t7 = load ptr, ptr %l6, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load ptr, ptr %l6, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 5}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l7, !tbaa !21
  br label %bb2
bb2:
  %t14 = load i1, ptr %l7, !tbaa !21
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  %t17 = getelementptr { i64, [3 x i64] }, ptr %t15, i32 0, i32 1
  %t18 = getelementptr { i32 }, ptr %t17, i32 0, i32 0
  %t19 = load i32, ptr %t18
  store i32 %t19, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb6
bb5:
  %t21 = load i32, ptr %l2, !tbaa !23
  %t23 = sext i32 %t21 to i64
  store i64 %t23, ptr %l5, !tbaa !24
  br label %bb11
bb6:
  br i1 true, label %bb7, label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb10
bb9:
  store i64 -1, ptr %l5, !tbaa !24
  br label %bb11
bb10:
  call void @__olang_check_failed(ptr @olang_loc_4e05db95f2fd54c5_981a3a3cc6318dd9)
  unreachable
bb11:
  %t25 = load i64, ptr %l5, !tbaa !24
  store i64 %t25, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2eDropHolding_2eJudged(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l4 = alloca %"compiler/typed:DropHolding"
  %t3 = alloca %"compiler/typed:DropHolding", align 8
  br label %start
start:
  br label %bb0
bb0:
  call void @compiler_2ftyped_2eDropHolding_2eholding(ptr %t3, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 true)
  call void @llvm.memmove.p0.p0.i64(ptr %l4, ptr %t3, i64 224, i1 false)
  br label %bb1
bb1:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l4, i64 224, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @compiler_2ftyped_2eDropsRun(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l3 = alloca %"compiler/typed:dropWalk"
  %l8 = alloca i64
  %l10 = alloca i1
  %l15 = alloca ptr
  %l22 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l24 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %t2 = alloca %"compiler/typed:dropWalk", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_3adropWalk_2ector(ptr %t2, ptr %v0, ptr %v1, ptr %t1)
  call void @llvm.memmove.p0.p0.i64(ptr %l3, ptr %t2, i64 488, i1 false)
  br label %bb1
bb1:
  %t4 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 488, i64 8)
  store ptr %t4, ptr %lp1
  %t5 = load ptr, ptr %lp1
  call void @llvm.memmove.p0.p0.i64(ptr %t5, ptr %l3, i64 488, i1 false)
  %t6 = load ptr, ptr %lp1
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Body", ptr %t7, i32 0, i32 11
  %t10 = load ptr, ptr %t9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v1, ptr %v0, ptr %t6, ptr %t10)
  br label %bb2
bb2:
  %t13 = load ptr, ptr %lp1
  %t14 = getelementptr %"compiler/typed:dropWalk", ptr %t13, i32 0, i32 1
  %t16 = call i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v1, ptr %t14)
  store i64 %t16, ptr %l8
  br label %bb3
bb3:
  %t17 = load i64, ptr %l8, !tbaa !24
  %t18 = icmp sgt i64 %t17, 0
  br i1 %t18, label %bb4, label %bb5
bb4:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Body", ptr %t20, i32 0, i32 11
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t25 = icmp eq ptr %t23, null
  %t27 = xor i1 %t25, true
  store i1 %t27, ptr %l10, !tbaa !21
  br label %bb6
bb5:
  store i1 false, ptr %l10, !tbaa !21
  br label %bb6
bb6:
  %t29 = load i1, ptr %l10, !tbaa !21
  br i1 %t29, label %bb7, label %bb8
bb7:
  %t30 = load ptr, ptr %lp1
  store ptr %t30, ptr %l15, !tbaa !29
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Body", ptr %t31, i32 0, i32 11
  %t34 = load ptr, ptr %t33, !tbaa !29
  %t36 = icmp eq ptr %t34, null
  br i1 %t36, label %bb9, label %bb10
bb8:
  br label %bb13
bb9:
  call void @__olang_check_failed(ptr @olang_loc_bcb9fe3b91f750d3_ca64047ead3323e7)
  unreachable
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Body", ptr %t38, i32 0, i32 11
  %t41 = load ptr, ptr %t40, !tbaa !29
  %t43 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v1, ptr %v0, ptr %t43, ptr %t41)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t45 = load ptr, ptr %lp1
  %t46 = getelementptr %"compiler/typed:dropWalk", ptr %t45, i32 0, i32 14
  %t47 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %t46
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t47, ptr %l22
  %t49 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v1, ptr %l22)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t49, ptr %l24
  br label %bb14
bb14:
  %t50 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l24
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t50, ptr %l22
  %t51 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l22
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t51, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

define dso_local i1 @compiler_2ftyped_2eHoldsOwned(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l4 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t5 = call i1 @compiler_2ftyped_2eholdsOwned(ptr %v0, ptr %a0, i32 %a1, i64 0)
  store i1 %t5, ptr %l4
  br label %bb1
bb1:
  %t6 = load i1, ptr %l4, !tbaa !21
  store i1 %t6, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eNoCallbackExtern(ptr %v0, { i64, ptr } %a0) #0 {
entry:
  %l6 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t4 = insertvalue { i64, ptr } undef, i64 95, 0
  %t5 = insertvalue { i64, ptr } %t4, ptr @G_2ecompiler_2ftyped_2enoCallbackNames, 1
  %t7 = load ptr, ptr @__olang_prog_scope
  %t10 = call i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %t7, ptr %v0, { i64, ptr } %t5, { i64, ptr } %a0)
  store i1 %t10, ptr %l6
  br label %bb1
bb1:
  %t11 = load i1, ptr %l6, !tbaa !21
  store i1 %t11, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ePlan_2eNew(ptr %out, ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l6 = alloca i64
  %l9 = alloca i64
  %l10 = alloca %"compiler/typed:Plan"
  %t16 = alloca %"compiler/typed:Plan", align 8
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 9
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l3
  br label %bb1
bb1:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Body", ptr %t6, i32 0, i32 7
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l6
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 6
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l9
  br label %bb3
bb3:
  %t17 = load i64, ptr %l3, !tbaa !24
  %t18 = load i64, ptr %l6, !tbaa !24
  %t19 = load i64, ptr %l9, !tbaa !24
  call void @compiler_2ftyped_3aPlan_2ector(ptr %t16, ptr %v1, i64 %t17, i64 %t18, i64 %t19)
  call void @llvm.memmove.p0.p0.i64(ptr %l10, ptr %t16, i64 536, i1 false)
  br label %bb4
bb4:
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l10, i64 536, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2earenaArray(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l10 = alloca i32
  %l13 = alloca i32
  %l18 = alloca i32
  %l24 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca { i64, ptr }
  %l35 = alloca { i64, ptr }
  %l40 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t5 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %t1, i32 %a1)
  store i32 %t5, ptr %l10
  br label %bb1
bb1:
  %t6 = load i32, ptr %l10, !tbaa !23
  store i32 %t6, ptr %l2, !tbaa !23
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t8 = load i32, ptr %l2, !tbaa !23
  %t11 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %t7, i32 %t8)
  store i32 %t11, ptr %l13
  br label %bb2
bb2:
  %t12 = load i32, ptr %l13, !range !{i32 0, i32 33}
  store i32 %t12, ptr %l3
  %t13 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t15 = trunc i64 19 to i32
  %t16 = icmp eq i32 %t13, %t15
  br i1 %t16, label %bb3, label %bb4
bb3:
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t19 = load i32, ptr %l2, !tbaa !23
  %t22 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %t18, i32 %t19)
  store i32 %t22, ptr %l18
  br label %bb6
bb6:
  %t23 = load i32, ptr %l18, !tbaa !23
  %t24 = icmp eq i32 %t23, 0
  store i1 %t24, ptr %rv
  br label %ret
bb7:
  %t26 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t28 = trunc i64 22 to i32
  %t29 = icmp eq i32 %t26, %t28
  br i1 %t29, label %bb8, label %bb9
bb8:
  br label %bb12
bb9:
  %t31 = load i32, ptr %l3, !range !{i32 0, i32 33}
  %t33 = trunc i64 23 to i32
  %t34 = icmp eq i32 %t31, %t33
  br i1 %t34, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb25
bb12:
  %t36 = load ptr, ptr %l0, !tbaa !29
  store ptr %t36, ptr %l24, !tbaa !29
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load i32, ptr %l2, !tbaa !23
  %t41 = call i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %t37, i32 %t38)
  store i32 %t41, ptr %l27
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = load i32, ptr %l27, !tbaa !23
  %t44 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v0, ptr %t42, i32 %t43)
  store { i64, ptr } %t44, ptr %l28
  br label %bb14
bb14:
  %t45 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t45, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t46 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t48 = extractvalue { i64, ptr } %t46, 0
  store i64 %t48, ptr %l6, !tbaa !24
  br label %bb15
bb15:
  %t50 = load i64, ptr %l5, !tbaa !24
  %t51 = load i64, ptr %l6, !tbaa !24
  %t54 = icmp slt i64 %t50, %t51
  %t56 = xor i1 %t54, true
  br i1 %t56, label %bb16, label %bb17
bb16:
  br label %bb24
bb17:
  br label %bb18
bb18:
  %t58 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t58, ptr %l35, !tbaa !27
  %t59 = load i64, ptr %l5, !tbaa !24
  %t61 = getelementptr { i64, ptr }, ptr %l35, i32 0, i32 1
  %t62 = load ptr, ptr %t61, !tbaa !27
  %t63 = getelementptr i32, ptr %t62, i64 %t59
  %t64 = load i32, ptr %t63, !tbaa !33
  %t66 = load ptr, ptr %l0, !tbaa !29
  %t70 = call i1 @compiler_2ftyped_2earenaArray(ptr %v0, ptr %t66, i32 %t64)
  store i1 %t70, ptr %l40
  br label %bb19
bb19:
  %t71 = load i1, ptr %l40, !tbaa !21
  br i1 %t71, label %bb20, label %bb21
bb20:
  store i1 true, ptr %rv
  br label %ret
bb21:
  br label %bb22
bb22:
  br label %bb23
bb23:
  %t73 = load i64, ptr %l5, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l5, !tbaa !24
  br label %bb15
bb24:
  store i1 false, ptr %rv
  br label %ret
bb25:
  br i1 true, label %bb26, label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb29
bb28:
  store i1 false, ptr %rv
  br label %ret
bb29:
  call void @__olang_check_failed(ptr @olang_loc_ecb034f719e18c1b_985175307bfdc34f)
  unreachable
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2earmBreaks(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l13 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %l33 = alloca { i64, ptr }
  %l40 = alloca i1
  %l50 = alloca { i64, ptr }
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Arm", ptr %t1, i32 0, i32 2
  %t4 = load ptr, ptr %t3, !tbaa !29
  %t5 = load i32, ptr %l1, !tbaa !23
  %t8 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t4, i32 %t5)
  store i1 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Arm", ptr %t10, i32 0, i32 3
  %t13 = load ptr, ptr %t12, !tbaa !29
  %t14 = load i32, ptr %l1, !tbaa !23
  %t17 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t13, i32 %t14)
  store i1 %t17, ptr %l18
  br label %bb4
bb4:
  %t18 = load i1, ptr %l18, !tbaa !21
  store i1 %t18, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Arm", ptr %t20, i32 0, i32 4
  %t23 = load ptr, ptr %t22, !tbaa !29
  %t24 = load i32, ptr %l1, !tbaa !23
  %t27 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t23, i32 %t24)
  store i1 %t27, ptr %l23
  br label %bb8
bb8:
  %t28 = load i1, ptr %l23, !tbaa !21
  store i1 %t28, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Arm", ptr %t31, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb14, label %bb15
bb14:
  br label %bb32
bb15:
  br label %bb16
bb16:
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t48, ptr %l33, !tbaa !27
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr ptr, ptr %t52, i64 %t49
  %t54 = load ptr, ptr %t53, !tbaa !39
  store ptr %t54, ptr %l5, !tbaa !29
  %t56 = load ptr, ptr %l5, !tbaa !29
  %t58 = getelementptr %"compiler/typed:Alt", ptr %t56, i32 0, i32 0
  %t59 = load ptr, ptr %t58, !tbaa !29
  %t61 = load i32, ptr %l1, !tbaa !23
  %t64 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t59, i32 %t61)
  store i1 %t64, ptr %l40
  br label %bb17
bb17:
  %t65 = load i1, ptr %l40, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Alt", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  store i64 %t74, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = icmp slt i64 %t76, %t77
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  br label %bb24
bb24:
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t84, ptr %l50, !tbaa !27
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 %t85
  %t90 = load ptr, ptr %t89, !tbaa !39
  %t94 = getelementptr %"compiler/typed:Bind", ptr %t90, i32 0, i32 1
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t97 = load i32, ptr %l1, !tbaa !23
  %t100 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t95, i32 %t97)
  store i1 %t100, ptr %l57
  br label %bb25
bb25:
  %t101 = load i1, ptr %l57, !tbaa !21
  br i1 %t101, label %bb26, label %bb27
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l7, !tbaa !24
  br label %bb21
bb30:
  br label %bb31
bb31:
  %t107 = load i64, ptr %l3, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l3, !tbaa !24
  br label %bb13
bb32:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddLocal(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l7 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2ePush_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t3, %"compiler/typed:Local" %a1)
  br label %bb1
bb1:
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:Body", ptr %t7, i32 0, i32 7
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l7
  br label %bb2
bb2:
  %t12 = load i64, ptr %l7, !tbaa !24
  %t13 = sub i64 %t12, 1
  %t15 = trunc i64 %t13 to i32
  store i32 %t15, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eAddSite(ptr %v0, ptr %a0, i32 %a1, %"compiler/source:Span" %a2) #0 {
entry:
  %l0 = alloca ptr
  %l4 = alloca ptr
  %l7 = alloca %"compiler/typed:SiteInfo"
  %l10 = alloca i64
  %s0 = alloca %olang.scope
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Body", ptr %t1, i32 0, i32 9
  store ptr %t3, ptr %l4, !tbaa !29
  %t8 = call %"compiler/typed:SiteInfo" @compiler_2ftyped_3aSiteInfo_2ector(ptr %s0, i32 %a1, %"compiler/source:Span" %a2)
  store %"compiler/typed:SiteInfo" %t8, ptr %l7
  br label %bb1
bb1:
  %t9 = load ptr, ptr %l4, !tbaa !29
  %t10 = load %"compiler/typed:SiteInfo", ptr %l7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2ePush_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t9, %"compiler/typed:SiteInfo" %t10)
  br label %bb2
bb2:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Body", ptr %t11, i32 0, i32 9
  %t15 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %t13)
  store i64 %t15, ptr %l10
  br label %bb3
bb3:
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = sub i64 %t16, 1
  %t19 = trunc i64 %t17 to i32
  call void @__olang_scope_close(ptr %s0)
  store i32 %t19, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l32 = alloca ptr
  %l33 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l57 = alloca ptr
  %l58 = alloca i1
  %l63 = alloca ptr
  %l64 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l113 = alloca ptr
  %l114 = alloca i1
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb17
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 18}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [5 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb17
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 18}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [5 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb17
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 18}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [5 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb17
bb16:
  br label %bb18
bb17:
  %t61 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t61, ptr %l6
  br label %bb83
bb18:
  %t63 = load ptr, ptr %l0, !tbaa !29
  store ptr %t63, ptr %l32, !tbaa !29
  store i1 false, ptr %l33, !tbaa !21
  %t64 = load ptr, ptr %l32, !tbaa !29
  %t65 = icmp ne ptr %t64, null
  br i1 %t65, label %bb19, label %bb20
bb19:
  %t67 = load ptr, ptr %l32, !tbaa !29
  %t68 = load i64, ptr %t67, !range !{i64 0, i64 18}
  %t70 = icmp eq i64 %t68, 4
  store i1 %t70, ptr %l33, !tbaa !21
  br label %bb20
bb20:
  %t71 = load i1, ptr %l33, !tbaa !21
  br i1 %t71, label %bb21, label %bb22
bb21:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = getelementptr { i64, [5 x i64] }, ptr %t72, i32 0, i32 1
  %t75 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t74, i32 0, i32 0
  %t76 = load %"compiler/source:Span", ptr %t75
  store %"compiler/source:Span" %t76, ptr %l2
  br label %bb35
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 18}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l39, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [5 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb35
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l44, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 18}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l45, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [5 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb35
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t109 = load ptr, ptr %l50, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 18}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l51, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [5 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb35
bb34:
  br label %bb36
bb35:
  %t123 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t123, ptr %l6
  br label %bb83
bb36:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l57, !tbaa !29
  store i1 false, ptr %l58, !tbaa !21
  %t126 = load ptr, ptr %l57, !tbaa !29
  %t127 = icmp ne ptr %t126, null
  br i1 %t127, label %bb37, label %bb38
bb37:
  %t129 = load ptr, ptr %l57, !tbaa !29
  %t130 = load i64, ptr %t129, !range !{i64 0, i64 18}
  %t132 = icmp eq i64 %t130, 8
  store i1 %t132, ptr %l58, !tbaa !21
  br label %bb38
bb38:
  %t133 = load i1, ptr %l58, !tbaa !21
  br i1 %t133, label %bb39, label %bb40
bb39:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t136 = getelementptr { i64, [5 x i64] }, ptr %t134, i32 0, i32 1
  %t137 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t136, i32 0, i32 0
  %t138 = load %"compiler/source:Span", ptr %t137
  store %"compiler/source:Span" %t138, ptr %l3
  br label %bb53
bb40:
  %t140 = load ptr, ptr %l0, !tbaa !29
  store ptr %t140, ptr %l63, !tbaa !29
  store i1 false, ptr %l64, !tbaa !21
  %t141 = load ptr, ptr %l63, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb41, label %bb42
bb41:
  %t144 = load ptr, ptr %l63, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 18}
  %t147 = icmp eq i64 %t145, 9
  store i1 %t147, ptr %l64, !tbaa !21
  br label %bb42
bb42:
  %t148 = load i1, ptr %l64, !tbaa !21
  br i1 %t148, label %bb43, label %bb44
bb43:
  %t149 = load ptr, ptr %l0, !tbaa !29
  %t151 = getelementptr { i64, [5 x i64] }, ptr %t149, i32 0, i32 1
  %t152 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t151, i32 0, i32 0
  %t153 = load %"compiler/source:Span", ptr %t152
  store %"compiler/source:Span" %t153, ptr %l3
  br label %bb53
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t156 = load ptr, ptr %l69, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l69, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 18}
  %t162 = icmp eq i64 %t160, 10
  store i1 %t162, ptr %l70, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l70, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [5 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t166, i32 0, i32 0
  %t168 = load %"compiler/source:Span", ptr %t167
  store %"compiler/source:Span" %t168, ptr %l3
  br label %bb53
bb48:
  %t170 = load ptr, ptr %l0, !tbaa !29
  store ptr %t170, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t171 = load ptr, ptr %l75, !tbaa !29
  %t172 = icmp ne ptr %t171, null
  br i1 %t172, label %bb49, label %bb50
bb49:
  %t174 = load ptr, ptr %l75, !tbaa !29
  %t175 = load i64, ptr %t174, !range !{i64 0, i64 18}
  %t177 = icmp eq i64 %t175, 11
  store i1 %t177, ptr %l76, !tbaa !21
  br label %bb50
bb50:
  %t178 = load i1, ptr %l76, !tbaa !21
  br i1 %t178, label %bb51, label %bb52
bb51:
  %t179 = load ptr, ptr %l0, !tbaa !29
  %t181 = getelementptr { i64, [5 x i64] }, ptr %t179, i32 0, i32 1
  %t182 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t181, i32 0, i32 0
  %t183 = load %"compiler/source:Span", ptr %t182
  store %"compiler/source:Span" %t183, ptr %l3
  br label %bb53
bb52:
  br label %bb54
bb53:
  %t185 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t185, ptr %l6
  br label %bb83
bb54:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t188 = load ptr, ptr %l82, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb55, label %bb56
bb55:
  %t191 = load ptr, ptr %l82, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 18}
  %t194 = icmp eq i64 %t192, 12
  store i1 %t194, ptr %l83, !tbaa !21
  br label %bb56
bb56:
  %t195 = load i1, ptr %l83, !tbaa !21
  br i1 %t195, label %bb57, label %bb58
bb57:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr { i64, [5 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t198, i32 0, i32 0
  %t200 = load %"compiler/source:Span", ptr %t199
  store %"compiler/source:Span" %t200, ptr %l4
  br label %bb75
bb58:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t203 = load ptr, ptr %l88, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb59, label %bb60
bb59:
  %t206 = load ptr, ptr %l88, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 18}
  %t209 = icmp eq i64 %t207, 13
  store i1 %t209, ptr %l89, !tbaa !21
  br label %bb60
bb60:
  %t210 = load i1, ptr %l89, !tbaa !21
  br i1 %t210, label %bb61, label %bb62
bb61:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr { i64, [5 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t213, i32 0, i32 0
  %t215 = load %"compiler/source:Span", ptr %t214
  store %"compiler/source:Span" %t215, ptr %l4
  br label %bb75
bb62:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t218 = load ptr, ptr %l94, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t221 = load ptr, ptr %l94, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 18}
  %t224 = icmp eq i64 %t222, 14
  store i1 %t224, ptr %l95, !tbaa !21
  br label %bb64
bb64:
  %t225 = load i1, ptr %l95, !tbaa !21
  br i1 %t225, label %bb65, label %bb66
bb65:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [5 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l4
  br label %bb75
bb66:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t233 = load ptr, ptr %l100, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l100, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 18}
  %t239 = icmp eq i64 %t237, 15
  store i1 %t239, ptr %l101, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l101, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr { i64, [5 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t243, i32 0, i32 0
  %t245 = load %"compiler/source:Span", ptr %t244
  store %"compiler/source:Span" %t245, ptr %l4
  br label %bb75
bb70:
  %t247 = load ptr, ptr %l0, !tbaa !29
  store ptr %t247, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t248 = load ptr, ptr %l106, !tbaa !29
  %t249 = icmp ne ptr %t248, null
  br i1 %t249, label %bb71, label %bb72
bb71:
  %t251 = load ptr, ptr %l106, !tbaa !29
  %t252 = load i64, ptr %t251, !range !{i64 0, i64 18}
  %t254 = icmp eq i64 %t252, 16
  store i1 %t254, ptr %l107, !tbaa !21
  br label %bb72
bb72:
  %t255 = load i1, ptr %l107, !tbaa !21
  br i1 %t255, label %bb73, label %bb74
bb73:
  %t256 = load ptr, ptr %l0, !tbaa !29
  %t258 = getelementptr { i64, [5 x i64] }, ptr %t256, i32 0, i32 1
  %t259 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t258, i32 0, i32 0
  %t260 = load %"compiler/source:Span", ptr %t259
  store %"compiler/source:Span" %t260, ptr %l4
  br label %bb75
bb74:
  br label %bb76
bb75:
  %t262 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t262, ptr %l6
  br label %bb83
bb76:
  %t264 = load ptr, ptr %l0, !tbaa !29
  store ptr %t264, ptr %l113, !tbaa !29
  store i1 false, ptr %l114, !tbaa !21
  %t265 = load ptr, ptr %l113, !tbaa !29
  %t266 = icmp ne ptr %t265, null
  br i1 %t266, label %bb77, label %bb78
bb77:
  %t268 = load ptr, ptr %l113, !tbaa !29
  %t269 = load i64, ptr %t268, !range !{i64 0, i64 18}
  %t271 = icmp eq i64 %t269, 17
  store i1 %t271, ptr %l114, !tbaa !21
  br label %bb78
bb78:
  %t272 = load i1, ptr %l114, !tbaa !21
  br i1 %t272, label %bb79, label %bb80
bb79:
  %t273 = load ptr, ptr %l0, !tbaa !29
  %t275 = getelementptr { i64, [5 x i64] }, ptr %t273, i32 0, i32 1
  %t276 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t275, i32 0, i32 0
  %t277 = load %"compiler/source:Span", ptr %t276
  store %"compiler/source:Span" %t277, ptr %l5
  br label %bb81
bb80:
  br label %bb82
bb81:
  %t279 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t279, ptr %l6
  br label %bb83
bb82:
  call void @__olang_check_failed(ptr @olang_loc_6690d985632b6de7_b13460b3c8232d4b)
  unreachable
bb83:
  %t281 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t281, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2edeferredLanding(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l12 = alloca i1
  %l15 = alloca i64
  %l17 = alloca i1
  %l28 = alloca i64
  %l31 = alloca i64
  %l50 = alloca { i64, ptr }
  %l55 = alloca i1
  %l57 = alloca { i64, ptr }
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 10
  %t4 = load i64, ptr %t3, !tbaa !24
  %t6 = icmp sgt i64 %t4, 0
  br i1 %t6, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l12, !tbaa !21
  br label %bb4
bb2:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Landings", ptr %t8, i32 0, i32 8
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eLen_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l15
  br label %bb3
bb3:
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = icmp sgt i64 %t13, 0
  store i1 %t14, ptr %l12, !tbaa !21
  br label %bb4
bb4:
  %t16 = load i1, ptr %l12, !tbaa !21
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i1 true, ptr %l17, !tbaa !21
  br label %bb7
bb6:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Landings", ptr %t17, i32 0, i32 23
  %t20 = load i64, ptr %t19, !tbaa !24
  %t22 = icmp sge i64 %t20, 0
  store i1 %t22, ptr %l17, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l17, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  store i1 false, ptr %rv
  br label %ret
bb9:
  br label %bb10
bb10:
  store i64 0, ptr %l3, !tbaa !24
  %t26 = load ptr, ptr %l0, !tbaa !29
  %t28 = getelementptr %"compiler/typed:Landings", ptr %t26, i32 0, i32 0
  %t29 = load { i64, ptr }, ptr %t28, !tbaa !27
  %t31 = extractvalue { i64, ptr } %t29, 0
  store i64 %t31, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t33 = load i64, ptr %l4, !tbaa !24
  %t34 = load i64, ptr %l3, !tbaa !24
  %t37 = icmp sgt i64 %t33, %t34
  br i1 %t37, label %bb11, label %bb12
bb11:
  %t39 = load i64, ptr %l5, !tbaa !24
  %t41 = icmp sgt i64 %t39, 0
  br i1 %t41, label %bb13, label %bb14
bb12:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb16
bb13:
  %t43 = load i64, ptr %l4, !tbaa !24
  %t44 = load i64, ptr %l3, !tbaa !24
  %t47 = sub i64 %t43, %t44
  %t48 = load i64, ptr %l5, !tbaa !24
  %t51 = add i64 %t47, %t48
  %t53 = sub i64 %t51, 1
  %t54 = load i64, ptr %l5, !tbaa !24
  %t57 = sdiv i64 %t53, %t54
  store i64 %t57, ptr %l31, !tbaa !24
  br label %bb15
bb14:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb15
bb15:
  %t59 = load i64, ptr %l31, !tbaa !24
  store i64 %t59, ptr %l28, !tbaa !24
  br label %bb16
bb16:
  %t60 = load i64, ptr %l28, !tbaa !24
  store i64 %t60, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb17
bb17:
  %t61 = load i64, ptr %l7, !tbaa !24
  %t62 = load i64, ptr %l6, !tbaa !24
  %t65 = icmp slt i64 %t61, %t62
  %t67 = xor i1 %t65, true
  br i1 %t67, label %bb18, label %bb19
bb18:
  br label %bb28
bb19:
  br label %bb20
bb20:
  %t69 = load i64, ptr %l3, !tbaa !24
  %t70 = load i64, ptr %l7, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t74 = mul i64 %t70, %t71
  %t77 = add i64 %t69, %t74
  store i64 %t77, ptr %l8, !tbaa !24
  %t79 = load ptr, ptr %l0, !tbaa !29
  %t81 = getelementptr %"compiler/typed:Landings", ptr %t79, i32 0, i32 0
  %t82 = load { i64, ptr }, ptr %t81, !tbaa !27
  store { i64, ptr } %t82, ptr %l50, !tbaa !27
  %t83 = load i64, ptr %l8, !tbaa !24
  %t85 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t86 = load ptr, ptr %t85, !tbaa !27
  %t87 = getelementptr i64, ptr %t86, i64 %t83
  %t88 = load i64, ptr %t87, !tbaa !34
  %t92 = icmp eq i64 %t88, %a1
  br i1 %t92, label %bb21, label %bb22
bb21:
  %t94 = load ptr, ptr %l0, !tbaa !29
  %t96 = getelementptr %"compiler/typed:Landings", ptr %t94, i32 0, i32 1
  %t97 = load { i64, ptr }, ptr %t96, !tbaa !27
  store { i64, ptr } %t97, ptr %l57, !tbaa !27
  %t98 = load i64, ptr %l8, !tbaa !24
  %t100 = getelementptr { i64, ptr }, ptr %l57, i32 0, i32 1
  %t101 = load ptr, ptr %t100, !tbaa !27
  %t102 = getelementptr i64, ptr %t101, i64 %t98
  %t103 = load i64, ptr %t102, !tbaa !34
  %t107 = icmp eq i64 %t103, %a2
  store i1 %t107, ptr %l55, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l55, !tbaa !21
  br label %bb23
bb23:
  %t109 = load i1, ptr %l55, !tbaa !21
  br i1 %t109, label %bb24, label %bb25
bb24:
  store i1 true, ptr %rv
  br label %ret
bb25:
  br label %bb26
bb26:
  br label %bb27
bb27:
  %t111 = load i64, ptr %l7, !tbaa !24
  %t113 = add i64 %t111, 1
  store i64 %t113, ptr %l7, !tbaa !24
  br label %bb17
bb28:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emention(ptr %v0, ptr %a0, i32 %a1, i64 %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i1
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
  %l19 = alloca i64
  %l20 = alloca i64
  %l21 = alloca i64
  %l22 = alloca i64
  %l23 = alloca i64
  %l36 = alloca ptr
  %l38 = alloca i1
  %l42 = alloca i1
  %l47 = alloca ptr
  %l51 = alloca i1
  %l57 = alloca i64
  %l61 = alloca i64
  %l64 = alloca i64
  %l85 = alloca i64
  %l90 = alloca ptr
  %l93 = alloca i64
  %l96 = alloca ptr
  %l100 = alloca i64
  %l112 = alloca i1
  %l116 = alloca i1
  %l142 = alloca i64
  %l145 = alloca i64
  %l164 = alloca { i64, ptr }
  %l169 = alloca i1
  %l171 = alloca { i64, ptr }
  %l176 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l193 = alloca i64
  %l196 = alloca i64
  %l215 = alloca { i64, ptr }
  %l220 = alloca i1
  %l222 = alloca { i64, ptr }
  %l228 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i64 %a2, ptr %l2
  store i1 %a3, ptr %l3
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a1 to i64
  store i64 %t3, ptr %l4, !tbaa !24
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Landings", ptr %t5, i32 0, i32 15
  %t8 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb1:
  %t11 = load ptr, ptr %l0, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Landings", ptr %t11, i32 0, i32 16
  %t14 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t13, i64 %t14)
  br label %bb2
bb2:
  %t17 = load ptr, ptr %l0, !tbaa !29
  %t19 = getelementptr %"compiler/typed:Landings", ptr %t17, i32 0, i32 17
  %t20 = load i1, ptr %l3, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t19, i1 %t20)
  br label %bb3
bb3:
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t25 = getelementptr %"compiler/typed:Landings", ptr %t23, i32 0, i32 18
  store ptr %t25, ptr %l36, !tbaa !29
  %t26 = load i1, ptr %l3, !tbaa !21
  br i1 %t26, label %bb4, label %bb5
bb4:
  store i1 true, ptr %l38, !tbaa !21
  br label %bb6
bb5:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/typed:Landings", ptr %t28, i32 0, i32 20
  %t31 = load i64, ptr %t30, !tbaa !24
  %t33 = icmp sgt i64 %t31, 0
  store i1 %t33, ptr %l38, !tbaa !21
  br label %bb6
bb6:
  %t35 = load i1, ptr %l38, !tbaa !21
  br i1 %t35, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l42, !tbaa !21
  br label %bb9
bb8:
  %t36 = load ptr, ptr %l0, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Landings", ptr %t36, i32 0, i32 23
  %t39 = load i64, ptr %t38, !tbaa !24
  %t41 = icmp sge i64 %t39, 0
  store i1 %t41, ptr %l42, !tbaa !21
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l36, !tbaa !29
  %t44 = load i1, ptr %l42, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t43, i1 %t44)
  br label %bb10
bb10:
  %t45 = load ptr, ptr %l0, !tbaa !29
  %t47 = getelementptr %"compiler/typed:Landings", ptr %t45, i32 0, i32 19
  store ptr %t47, ptr %l47, !tbaa !29
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Landings", ptr %t48, i32 0, i32 20
  %t51 = load i64, ptr %t50, !tbaa !24
  %t53 = icmp sgt i64 %t51, 0
  br i1 %t53, label %bb11, label %bb12
bb11:
  store i1 true, ptr %l51, !tbaa !21
  br label %bb13
bb12:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:Landings", ptr %t55, i32 0, i32 23
  %t58 = load i64, ptr %t57, !tbaa !24
  %t60 = icmp sge i64 %t58, 0
  store i1 %t60, ptr %l51, !tbaa !21
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l47, !tbaa !29
  %t63 = load i1, ptr %l51, !tbaa !21
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t62, i1 %t63)
  br label %bb14
bb14:
  store i64 0, ptr %l5, !tbaa !24
  %t64 = load ptr, ptr %l0, !tbaa !29
  %t66 = getelementptr %"compiler/typed:Landings", ptr %t64, i32 0, i32 21
  %t68 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t66)
  store i64 %t68, ptr %l57
  br label %bb15
bb15:
  %t69 = load i64, ptr %l57, !tbaa !24
  store i64 %t69, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t70 = load i64, ptr %l6, !tbaa !24
  %t71 = load i64, ptr %l5, !tbaa !24
  %t74 = icmp sgt i64 %t70, %t71
  br i1 %t74, label %bb16, label %bb17
bb16:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t78 = icmp sgt i64 %t76, 0
  br i1 %t78, label %bb18, label %bb19
bb17:
  store i64 0, ptr %l61, !tbaa !24
  br label %bb21
bb18:
  %t80 = load i64, ptr %l6, !tbaa !24
  %t81 = load i64, ptr %l5, !tbaa !24
  %t84 = sub i64 %t80, %t81
  %t85 = load i64, ptr %l7, !tbaa !24
  %t88 = add i64 %t84, %t85
  %t90 = sub i64 %t88, 1
  %t91 = load i64, ptr %l7, !tbaa !24
  %t94 = sdiv i64 %t90, %t91
  store i64 %t94, ptr %l64, !tbaa !24
  br label %bb20
bb19:
  store i64 0, ptr %l64, !tbaa !24
  br label %bb20
bb20:
  %t96 = load i64, ptr %l64, !tbaa !24
  store i64 %t96, ptr %l61, !tbaa !24
  br label %bb21
bb21:
  %t97 = load i64, ptr %l61, !tbaa !24
  store i64 %t97, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb22
bb22:
  %t98 = load i64, ptr %l9, !tbaa !24
  %t99 = load i64, ptr %l8, !tbaa !24
  %t102 = icmp slt i64 %t98, %t99
  %t104 = xor i1 %t102, true
  br i1 %t104, label %bb23, label %bb24
bb23:
  br label %bb36
bb24:
  br label %bb25
bb25:
  %t106 = load i64, ptr %l5, !tbaa !24
  %t107 = load i64, ptr %l9, !tbaa !24
  %t108 = load i64, ptr %l7, !tbaa !24
  %t111 = mul i64 %t107, %t108
  %t114 = add i64 %t106, %t111
  store i64 %t114, ptr %l10, !tbaa !24
  %t116 = load ptr, ptr %l0, !tbaa !29
  %t118 = getelementptr %"compiler/typed:Landings", ptr %t116, i32 0, i32 21
  %t119 = load i64, ptr %l10, !tbaa !24
  %t122 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t118, i64 %t119)
  store i64 %t122, ptr %l85
  br label %bb26
bb26:
  %t123 = load i64, ptr %l4, !tbaa !24
  %t124 = load i64, ptr %l85, !tbaa !24
  %t126 = icmp ne i64 %t124, %t123
  br i1 %t126, label %bb27, label %bb28
bb27:
  br label %bb35
bb28:
  br label %bb29
bb29:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/typed:Landings", ptr %t128, i32 0, i32 23
  %t131 = load i64, ptr %t130, !tbaa !24
  store i64 %t131, ptr %l11, !tbaa !24
  %t133 = load ptr, ptr %l0, !tbaa !29
  store ptr %t133, ptr %l90, !tbaa !29
  %t134 = load i64, ptr %l11, !tbaa !24
  %t136 = icmp slt i64 %t134, 0
  br i1 %t136, label %bb30, label %bb31
bb30:
  %t138 = load i64, ptr %l4, !tbaa !24
  store i64 %t138, ptr %l93, !tbaa !24
  br label %bb32
bb31:
  %t140 = load i64, ptr %l11, !tbaa !24
  store i64 %t140, ptr %l93, !tbaa !24
  br label %bb32
bb32:
  %t142 = load i64, ptr %l93, !tbaa !24
  %t143 = load ptr, ptr %l90, !tbaa !29
  %t144 = getelementptr %"compiler/typed:Landings", ptr %t143, i32 0, i32 23
  store i64 %t142, ptr %t144, !tbaa !24
  %t145 = load ptr, ptr %l0, !tbaa !29
  store ptr %t145, ptr %l96, !tbaa !29
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t148 = getelementptr %"compiler/typed:Landings", ptr %t146, i32 0, i32 22
  %t149 = load i64, ptr %l10, !tbaa !24
  %t152 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t148, i64 %t149)
  store i64 %t152, ptr %l100
  br label %bb33
bb33:
  %t153 = load i64, ptr %l100, !tbaa !24
  %t154 = trunc i64 %t153 to i32
  %t156 = load i64, ptr %l2, !tbaa !24
  %t157 = load ptr, ptr %l96, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2emention(ptr %v0, ptr %t157, i32 %t154, i64 %t156, i1 false)
  br label %bb34
bb34:
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load i64, ptr %l11, !tbaa !24
  %t164 = getelementptr %"compiler/typed:Landings", ptr %t160, i32 0, i32 23
  store i64 %t161, ptr %t164, !tbaa !24
  br label %bb35
bb35:
  %t165 = load i64, ptr %l9, !tbaa !24
  %t167 = add i64 %t165, 1
  store i64 %t167, ptr %l9, !tbaa !24
  br label %bb22
bb36:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Landings", ptr %t169, i32 0, i32 9
  %t172 = load i64, ptr %t171, !tbaa !24
  %t174 = icmp sgt i64 %t172, 0
  br i1 %t174, label %bb37, label %bb38
bb37:
  %t176 = load i1, ptr %l3, !tbaa !21
  br i1 %t176, label %bb39, label %bb40
bb38:
  br label %bb53
bb39:
  %t178 = load ptr, ptr %l0, !tbaa !29
  %t179 = load i64, ptr %l4, !tbaa !24
  %t180 = load i64, ptr %l2, !tbaa !24
  %t184 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2edeferredLanding(ptr %v0, ptr %t178, i64 %t179, i64 %t180)
  store i1 %t184, ptr %l116
  br label %bb41
bb40:
  store i1 false, ptr %l112, !tbaa !21
  br label %bb42
bb41:
  %t185 = load i1, ptr %l116, !tbaa !21
  store i1 %t185, ptr %l112, !tbaa !21
  br label %bb42
bb42:
  %t186 = load i1, ptr %l112, !tbaa !21
  br i1 %t186, label %bb43, label %bb44
bb43:
  %t187 = load ptr, ptr %l0, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Landings", ptr %t187, i32 0, i32 13
  %t190 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t189, i64 %t190)
  br label %bb45
bb44:
  br label %bb47
bb45:
  %t193 = load ptr, ptr %l0, !tbaa !29
  %t195 = getelementptr %"compiler/typed:Landings", ptr %t193, i32 0, i32 14
  %t196 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t195, i64 %t196)
  br label %bb46
bb46:
  br label %ret
bb47:
  %t199 = load ptr, ptr %l0, !tbaa !29
  %t201 = getelementptr %"compiler/typed:Landings", ptr %t199, i32 0, i32 11
  %t202 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t201, i64 %t202, i1 true)
  br label %bb48
bb48:
  %t205 = load ptr, ptr %l0, !tbaa !29
  %t207 = getelementptr %"compiler/typed:Landings", ptr %t205, i32 0, i32 23
  %t208 = load i64, ptr %t207, !tbaa !24
  %t210 = icmp sge i64 %t208, 0
  br i1 %t210, label %bb49, label %bb50
bb49:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr %"compiler/typed:Landings", ptr %t212, i32 0, i32 12
  %t215 = load i64, ptr %l4, !tbaa !24
  %t216 = load ptr, ptr %l0, !tbaa !29
  %t218 = getelementptr %"compiler/typed:Landings", ptr %t216, i32 0, i32 23
  %t219 = load i64, ptr %t218, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %t214, i64 %t215, i64 %t219)
  br label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb52
bb52:
  br label %ret
bb53:
  %t223 = load ptr, ptr %l0, !tbaa !29
  %t225 = getelementptr %"compiler/typed:Landings", ptr %t223, i32 0, i32 7
  %t226 = load i1, ptr %t225, !tbaa !21
  br i1 %t226, label %bb54, label %bb55
bb54:
  br label %ret
bb55:
  br label %bb56
bb56:
  store i64 0, ptr %l12, !tbaa !24
  %t228 = load ptr, ptr %l0, !tbaa !29
  %t230 = getelementptr %"compiler/typed:Landings", ptr %t228, i32 0, i32 0
  %t231 = load { i64, ptr }, ptr %t230, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t231, 0
  store i64 %t233, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t235 = load i64, ptr %l13, !tbaa !24
  %t236 = load i64, ptr %l12, !tbaa !24
  %t239 = icmp sgt i64 %t235, %t236
  br i1 %t239, label %bb57, label %bb58
bb57:
  %t241 = load i64, ptr %l14, !tbaa !24
  %t243 = icmp sgt i64 %t241, 0
  br i1 %t243, label %bb59, label %bb60
bb58:
  store i64 0, ptr %l142, !tbaa !24
  br label %bb62
bb59:
  %t245 = load i64, ptr %l13, !tbaa !24
  %t246 = load i64, ptr %l12, !tbaa !24
  %t249 = sub i64 %t245, %t246
  %t250 = load i64, ptr %l14, !tbaa !24
  %t253 = add i64 %t249, %t250
  %t255 = sub i64 %t253, 1
  %t256 = load i64, ptr %l14, !tbaa !24
  %t259 = sdiv i64 %t255, %t256
  store i64 %t259, ptr %l145, !tbaa !24
  br label %bb61
bb60:
  store i64 0, ptr %l145, !tbaa !24
  br label %bb61
bb61:
  %t261 = load i64, ptr %l145, !tbaa !24
  store i64 %t261, ptr %l142, !tbaa !24
  br label %bb62
bb62:
  %t262 = load i64, ptr %l142, !tbaa !24
  store i64 %t262, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb63
bb63:
  %t263 = load i64, ptr %l16, !tbaa !24
  %t264 = load i64, ptr %l15, !tbaa !24
  %t267 = icmp slt i64 %t263, %t264
  %t269 = xor i1 %t267, true
  br i1 %t269, label %bb64, label %bb65
bb64:
  br label %bb74
bb65:
  br label %bb66
bb66:
  %t271 = load i64, ptr %l12, !tbaa !24
  %t272 = load i64, ptr %l16, !tbaa !24
  %t273 = load i64, ptr %l14, !tbaa !24
  %t276 = mul i64 %t272, %t273
  %t279 = add i64 %t271, %t276
  store i64 %t279, ptr %l17, !tbaa !24
  %t281 = load ptr, ptr %l0, !tbaa !29
  %t283 = getelementptr %"compiler/typed:Landings", ptr %t281, i32 0, i32 0
  %t284 = load { i64, ptr }, ptr %t283, !tbaa !27
  store { i64, ptr } %t284, ptr %l164, !tbaa !27
  %t285 = load i64, ptr %l17, !tbaa !24
  %t287 = getelementptr { i64, ptr }, ptr %l164, i32 0, i32 1
  %t288 = load ptr, ptr %t287, !tbaa !27
  %t289 = getelementptr i64, ptr %t288, i64 %t285
  %t290 = load i64, ptr %t289, !tbaa !34
  %t291 = load i64, ptr %l4, !tbaa !24
  %t294 = icmp ne i64 %t290, %t291
  br i1 %t294, label %bb67, label %bb68
bb67:
  store i1 true, ptr %l169, !tbaa !21
  br label %bb69
bb68:
  %t296 = load ptr, ptr %l0, !tbaa !29
  %t298 = getelementptr %"compiler/typed:Landings", ptr %t296, i32 0, i32 6
  %t299 = load { i64, ptr }, ptr %t298, !tbaa !27
  store { i64, ptr } %t299, ptr %l171, !tbaa !27
  %t300 = load i64, ptr %l17, !tbaa !24
  %t302 = getelementptr { i64, ptr }, ptr %l171, i32 0, i32 1
  %t303 = load ptr, ptr %t302, !tbaa !27
  %t304 = getelementptr i1, ptr %t303, i64 %t300
  %t305 = load i1, ptr %t304, !tbaa !31
  %t307 = xor i1 %t305, true
  store i1 %t307, ptr %l169, !tbaa !21
  br label %bb69
bb69:
  %t309 = load i1, ptr %l169, !tbaa !21
  br i1 %t309, label %bb70, label %bb71
bb70:
  br label %bb73
bb71:
  br label %bb72
bb72:
  %t310 = load ptr, ptr %l0, !tbaa !29
  %t312 = getelementptr %"compiler/typed:Landings", ptr %t310, i32 0, i32 3
  %t313 = load { i64, ptr }, ptr %t312, !tbaa !27
  store { i64, ptr } %t313, ptr %l176, !tbaa !27
  %t314 = load i64, ptr %l17, !tbaa !24
  %t316 = getelementptr { i64, ptr }, ptr %l176, i32 0, i32 1
  %t317 = load ptr, ptr %t316, !tbaa !27
  %t318 = getelementptr i1, ptr %t317, i64 %t314
  store i1 true, ptr %t318, !tbaa !31
  %t319 = load ptr, ptr %l0, !tbaa !29
  %t321 = getelementptr %"compiler/typed:Landings", ptr %t319, i32 0, i32 4
  %t322 = load { i64, ptr }, ptr %t321, !tbaa !27
  store { i64, ptr } %t322, ptr %l179, !tbaa !27
  %t323 = load i64, ptr %l17, !tbaa !24
  %t324 = load ptr, ptr %l0, !tbaa !29
  %t326 = getelementptr %"compiler/typed:Landings", ptr %t324, i32 0, i32 23
  %t327 = load i64, ptr %t326, !tbaa !24
  %t330 = getelementptr { i64, ptr }, ptr %l179, i32 0, i32 1
  %t331 = load ptr, ptr %t330, !tbaa !27
  %t332 = getelementptr i64, ptr %t331, i64 %t323
  store i64 %t327, ptr %t332, !tbaa !34
  br label %bb73
bb73:
  %t333 = load i64, ptr %l16, !tbaa !24
  %t335 = add i64 %t333, 1
  store i64 %t335, ptr %l16, !tbaa !24
  br label %bb63
bb74:
  %t337 = load i1, ptr %l3, !tbaa !21
  %t339 = xor i1 %t337, true
  br i1 %t339, label %bb75, label %bb76
bb75:
  br label %ret
bb76:
  br label %bb77
bb77:
  store i64 0, ptr %l18, !tbaa !24
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/typed:Landings", ptr %t341, i32 0, i32 0
  %t344 = load { i64, ptr }, ptr %t343, !tbaa !27
  %t346 = extractvalue { i64, ptr } %t344, 0
  store i64 %t346, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t348 = load i64, ptr %l19, !tbaa !24
  %t349 = load i64, ptr %l18, !tbaa !24
  %t352 = icmp sgt i64 %t348, %t349
  br i1 %t352, label %bb78, label %bb79
bb78:
  %t354 = load i64, ptr %l20, !tbaa !24
  %t356 = icmp sgt i64 %t354, 0
  br i1 %t356, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l193, !tbaa !24
  br label %bb83
bb80:
  %t358 = load i64, ptr %l19, !tbaa !24
  %t359 = load i64, ptr %l18, !tbaa !24
  %t362 = sub i64 %t358, %t359
  %t363 = load i64, ptr %l20, !tbaa !24
  %t366 = add i64 %t362, %t363
  %t368 = sub i64 %t366, 1
  %t369 = load i64, ptr %l20, !tbaa !24
  %t372 = sdiv i64 %t368, %t369
  store i64 %t372, ptr %l196, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l196, !tbaa !24
  br label %bb82
bb82:
  %t374 = load i64, ptr %l196, !tbaa !24
  store i64 %t374, ptr %l193, !tbaa !24
  br label %bb83
bb83:
  %t375 = load i64, ptr %l193, !tbaa !24
  store i64 %t375, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb84
bb84:
  %t376 = load i64, ptr %l22, !tbaa !24
  %t377 = load i64, ptr %l21, !tbaa !24
  %t380 = icmp slt i64 %t376, %t377
  %t382 = xor i1 %t380, true
  br i1 %t382, label %bb85, label %bb86
bb85:
  br label %bb95
bb86:
  br label %bb87
bb87:
  %t384 = load i64, ptr %l18, !tbaa !24
  %t385 = load i64, ptr %l22, !tbaa !24
  %t386 = load i64, ptr %l20, !tbaa !24
  %t389 = mul i64 %t385, %t386
  %t392 = add i64 %t384, %t389
  store i64 %t392, ptr %l23, !tbaa !24
  %t394 = load ptr, ptr %l0, !tbaa !29
  %t396 = getelementptr %"compiler/typed:Landings", ptr %t394, i32 0, i32 0
  %t397 = load { i64, ptr }, ptr %t396, !tbaa !27
  store { i64, ptr } %t397, ptr %l215, !tbaa !27
  %t398 = load i64, ptr %l23, !tbaa !24
  %t400 = getelementptr { i64, ptr }, ptr %l215, i32 0, i32 1
  %t401 = load ptr, ptr %t400, !tbaa !27
  %t402 = getelementptr i64, ptr %t401, i64 %t398
  %t403 = load i64, ptr %t402, !tbaa !34
  %t404 = load i64, ptr %l4, !tbaa !24
  %t407 = icmp eq i64 %t403, %t404
  br i1 %t407, label %bb88, label %bb89
bb88:
  %t409 = load ptr, ptr %l0, !tbaa !29
  %t411 = getelementptr %"compiler/typed:Landings", ptr %t409, i32 0, i32 1
  %t412 = load { i64, ptr }, ptr %t411, !tbaa !27
  store { i64, ptr } %t412, ptr %l222, !tbaa !27
  %t413 = load i64, ptr %l23, !tbaa !24
  %t415 = getelementptr { i64, ptr }, ptr %l222, i32 0, i32 1
  %t416 = load ptr, ptr %t415, !tbaa !27
  %t417 = getelementptr i64, ptr %t416, i64 %t413
  %t418 = load i64, ptr %t417, !tbaa !34
  %t419 = load i64, ptr %l2, !tbaa !24
  %t422 = icmp eq i64 %t418, %t419
  store i1 %t422, ptr %l220, !tbaa !21
  br label %bb90
bb89:
  store i1 false, ptr %l220, !tbaa !21
  br label %bb90
bb90:
  %t424 = load i1, ptr %l220, !tbaa !21
  br i1 %t424, label %bb91, label %bb92
bb91:
  %t425 = load ptr, ptr %l0, !tbaa !29
  %t427 = getelementptr %"compiler/typed:Landings", ptr %t425, i32 0, i32 6
  %t428 = load { i64, ptr }, ptr %t427, !tbaa !27
  store { i64, ptr } %t428, ptr %l228, !tbaa !27
  %t429 = load i64, ptr %l23, !tbaa !24
  %t431 = getelementptr { i64, ptr }, ptr %l228, i32 0, i32 1
  %t432 = load ptr, ptr %t431, !tbaa !27
  %t433 = getelementptr i1, ptr %t432, i64 %t429
  store i1 true, ptr %t433, !tbaa !31
  br label %bb93
bb92:
  br label %bb93
bb93:
  br label %bb94
bb94:
  %t434 = load i64, ptr %l22, !tbaa !24
  %t436 = add i64 %t434, 1
  store i64 %t436, ptr %l22, !tbaa !24
  br label %bb84
bb95:
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:landState" @compiler_2ftyped_2ecompiler_2ftyped_3aLandings_2esave(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l10 = alloca i64
  %l18 = alloca i64
  %l21 = alloca i64
  %l41 = alloca { i64, ptr }
  %l49 = alloca %"compiler/typed:landState"
  %rv = alloca %"compiler/typed:landState"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Landings", ptr %t1, i32 0, i32 6
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  %t6 = extractvalue { i64, ptr } %t4, 0
  store i64 %t6, ptr %l10, !tbaa !24
  %t7 = load i64, ptr %l10, !tbaa !24
  %t8 = icmp sge i64 %t7, 0
  br i1 %t8, label %bb1, label %bb2
bb1:
  %t10 = load i64, ptr %l10, !tbaa !24
  %t11 = mul i64 %t10, 1
  %t12 = call ptr @__olang_scope_alloc_zeroed(ptr %v1, i64 %t11)
  %t13 = insertvalue { i64, ptr } undef, i64 %t10, 0
  %t14 = insertvalue { i64, ptr } %t13, ptr %t12, 1
  %t15 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 16, i64 8)
  store ptr %t15, ptr %lp1
  %t17 = load ptr, ptr %lp1
  store { i64, ptr } %t14, ptr %t17, !tbaa !27
  store i64 0, ptr %l2, !tbaa !24
  %t18 = load ptr, ptr %lp1
  %t19 = load { i64, ptr }, ptr %t18, !tbaa !27
  %t21 = extractvalue { i64, ptr } %t19, 0
  store i64 %t21, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t23 = load i64, ptr %l3, !tbaa !24
  %t24 = load i64, ptr %l2, !tbaa !24
  %t27 = icmp sgt i64 %t23, %t24
  br i1 %t27, label %bb3, label %bb4
bb2:
  call void @__olang_check_failed(ptr @olang_loc_e933c796b27591a8_e869c9717a33729c)
  unreachable
bb3:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t31 = icmp sgt i64 %t29, 0
  br i1 %t31, label %bb5, label %bb6
bb4:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb8
bb5:
  %t33 = load i64, ptr %l3, !tbaa !24
  %t34 = load i64, ptr %l2, !tbaa !24
  %t37 = sub i64 %t33, %t34
  %t38 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t37, %t38
  %t43 = sub i64 %t41, 1
  %t44 = load i64, ptr %l4, !tbaa !24
  %t47 = sdiv i64 %t43, %t44
  store i64 %t47, ptr %l21, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb7
bb7:
  %t49 = load i64, ptr %l21, !tbaa !24
  store i64 %t49, ptr %l18, !tbaa !24
  br label %bb8
bb8:
  %t50 = load i64, ptr %l18, !tbaa !24
  store i64 %t50, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb9
bb9:
  %t51 = load i64, ptr %l6, !tbaa !24
  %t52 = load i64, ptr %l5, !tbaa !24
  %t55 = icmp slt i64 %t51, %t52
  %t57 = xor i1 %t55, true
  br i1 %t57, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t59 = load i64, ptr %l2, !tbaa !24
  %t60 = load i64, ptr %l6, !tbaa !24
  %t61 = load i64, ptr %l4, !tbaa !24
  %t64 = mul i64 %t60, %t61
  %t67 = add i64 %t59, %t64
  store i64 %t67, ptr %l7, !tbaa !24
  %t69 = load i64, ptr %l7, !tbaa !24
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Landings", ptr %t70, i32 0, i32 6
  %t73 = load { i64, ptr }, ptr %t72, !tbaa !27
  store { i64, ptr } %t73, ptr %l41, !tbaa !27
  %t74 = load i64, ptr %l7, !tbaa !24
  %t76 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t77 = load ptr, ptr %t76, !tbaa !27
  %t78 = getelementptr i1, ptr %t77, i64 %t74
  %t79 = load i1, ptr %t78, !tbaa !31
  %t81 = load ptr, ptr %lp1
  %t83 = getelementptr { i64, ptr }, ptr %t81, i32 0, i32 1
  %t84 = load ptr, ptr %t83, !tbaa !27
  %t85 = getelementptr i1, ptr %t84, i64 %t69
  store i1 %t79, ptr %t85, !tbaa !31
  br label %bb13
bb13:
  %t86 = load i64, ptr %l6, !tbaa !24
  %t88 = add i64 %t86, 1
  store i64 %t88, ptr %l6, !tbaa !24
  br label %bb9
bb14:
  %t90 = load ptr, ptr %lp1
  %t91 = load { i64, ptr }, ptr %t90, !tbaa !27
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Landings", ptr %t92, i32 0, i32 7
  %t95 = load i1, ptr %t94, !tbaa !21
  %t98 = call %"compiler/typed:landState" @compiler_2ftyped_3alandState_2ector(ptr %v1, ptr %v1, { i64, ptr } %t91, i1 %t95)
  store %"compiler/typed:landState" %t98, ptr %l49
  br label %bb15
bb15:
  %t99 = load %"compiler/typed:landState", ptr %l49
  store %"compiler/typed:landState" %t99, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:landState", ptr %rv
  ret %"compiler/typed:landState" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2emention(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l7 = alloca i1
  %l12 = alloca ptr
  %l19 = alloca { i64, ptr }
  %l20 = alloca i64
  %l24 = alloca i64
  %l26 = alloca { i64, ptr }
  %l31 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t3 = sext i32 %a1 to i64
  store i64 %t3, ptr %l2, !tbaa !24
  %t5 = load i64, ptr %l2, !tbaa !24
  %t7 = icmp slt i64 %t5, 0
  br i1 %t7, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l7, !tbaa !21
  br label %bb3
bb2:
  %t9 = load i64, ptr %l2, !tbaa !24
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:LastUses", ptr %t10, i32 0, i32 0
  %t13 = load i64, ptr %t12, !tbaa !24
  %t16 = icmp sge i64 %t9, %t13
  store i1 %t16, ptr %l7, !tbaa !21
  br label %bb3
bb3:
  %t18 = load i1, ptr %l7, !tbaa !21
  br i1 %t18, label %bb4, label %bb5
bb4:
  br label %ret
bb5:
  br label %bb6
bb6:
  %t19 = load ptr, ptr %l0, !tbaa !29
  store ptr %t19, ptr %l12, !tbaa !29
  %t20 = load ptr, ptr %l12, !tbaa !29
  %t21 = getelementptr %"compiler/typed:LastUses", ptr %t20, i32 0, i32 3
  %t22 = load i64, ptr %t21, !tbaa !24
  %t24 = add i64 %t22, 1
  %t26 = load ptr, ptr %l12, !tbaa !29
  %t27 = getelementptr %"compiler/typed:LastUses", ptr %t26, i32 0, i32 3
  store i64 %t24, ptr %t27, !tbaa !24
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t30 = getelementptr %"compiler/typed:LastUses", ptr %t28, i32 0, i32 9
  %t31 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t30, i64 %t31)
  br label %bb7
bb7:
  %t34 = load ptr, ptr %l0, !tbaa !29
  %t36 = getelementptr %"compiler/typed:LastUses", ptr %t34, i32 0, i32 1
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l19, !tbaa !27
  %t38 = load i64, ptr %l2, !tbaa !24
  store i64 %t38, ptr %l20, !tbaa !24
  %t39 = load ptr, ptr %l0, !tbaa !29
  %t41 = getelementptr %"compiler/typed:LastUses", ptr %t39, i32 0, i32 5
  %t42 = load i64, ptr %t41, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb8, label %bb9
bb8:
  store i64 9223372036854775807, ptr %l24, !tbaa !24
  br label %bb11
bb9:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/typed:LastUses", ptr %t46, i32 0, i32 1
  %t49 = load { i64, ptr }, ptr %t48, !tbaa !27
  store { i64, ptr } %t49, ptr %l26, !tbaa !27
  %t50 = load i64, ptr %l2, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l26, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr i64, ptr %t53, i64 %t50
  %t55 = load i64, ptr %t54, !tbaa !34
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t58 = getelementptr %"compiler/typed:LastUses", ptr %t56, i32 0, i32 3
  %t59 = load i64, ptr %t58, !tbaa !24
  %t62 = call i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %t55, i64 %t59)
  store i64 %t62, ptr %l31
  br label %bb10
bb10:
  %t63 = load i64, ptr %l31, !tbaa !24
  store i64 %t63, ptr %l24, !tbaa !24
  br label %bb11
bb11:
  %t64 = load i64, ptr %l24, !tbaa !24
  %t65 = load i64, ptr %l20, !tbaa !24
  %t66 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t67 = load ptr, ptr %t66, !tbaa !27
  %t68 = getelementptr i64, ptr %t67, i64 %t65
  store i64 %t64, ptr %t68, !tbaa !34
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca ptr
  %l34 = alloca i1
  %l46 = alloca ptr
  %l47 = alloca i1
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca ptr
  %l65 = alloca i1
  %l68 = alloca ptr
  %l69 = alloca i1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2emention(ptr %v0, ptr %t16, i32 %t17)
  br label %bb6
bb6:
  br label %bb54
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l16, !tbaa !29
  store i1 false, ptr %l17, !tbaa !21
  %t21 = load ptr, ptr %l16, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l16, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 2
  store i1 %t27, ptr %l17, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l17, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t35, ptr %t36)
  br label %bb13
bb13:
  br label %bb54
bb14:
  %t40 = load ptr, ptr %l1, !tbaa !29
  store ptr %t40, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t41 = load ptr, ptr %l25, !tbaa !29
  %t42 = icmp ne ptr %t41, null
  br i1 %t42, label %bb15, label %bb16
bb15:
  %t44 = load ptr, ptr %l25, !tbaa !29
  %t45 = load i64, ptr %t44, !range !{i64 0, i64 8}
  %t47 = icmp eq i64 %t45, 3
  store i1 %t47, ptr %l26, !tbaa !21
  br label %bb16
bb16:
  %t48 = load i1, ptr %l26, !tbaa !21
  br i1 %t48, label %bb17, label %bb18
bb17:
  %t49 = load ptr, ptr %l1, !tbaa !29
  %t51 = getelementptr { i64, [4 x i64] }, ptr %t49, i32 0, i32 1
  %t52 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t51, i32 0, i32 2
  %t53 = load ptr, ptr %t52
  store ptr %t53, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t56 = load ptr, ptr %l4, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t55, ptr %t56)
  br label %bb20
bb20:
  br label %bb54
bb21:
  %t59 = load ptr, ptr %l1, !tbaa !29
  store ptr %t59, ptr %l33, !tbaa !29
  store i1 false, ptr %l34, !tbaa !21
  %t60 = load ptr, ptr %l33, !tbaa !29
  %t61 = icmp ne ptr %t60, null
  br i1 %t61, label %bb22, label %bb23
bb22:
  %t63 = load ptr, ptr %l33, !tbaa !29
  %t64 = load i64, ptr %t63, !range !{i64 0, i64 8}
  %t66 = icmp eq i64 %t64, 4
  store i1 %t66, ptr %l34, !tbaa !21
  br label %bb23
bb23:
  %t67 = load i1, ptr %l34, !tbaa !21
  br i1 %t67, label %bb24, label %bb25
bb24:
  %t68 = load ptr, ptr %l1, !tbaa !29
  %t70 = getelementptr { i64, [4 x i64] }, ptr %t68, i32 0, i32 1
  %t71 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t70, i32 0, i32 2
  %t72 = load ptr, ptr %t71
  store ptr %t72, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb29
bb26:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t75 = load ptr, ptr %l5, !tbaa !29
  %t77 = getelementptr %"compiler/typed:Elem", ptr %t75, i32 0, i32 0
  %t78 = load ptr, ptr %t77, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t74, ptr %t78)
  br label %bb27
bb27:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l5, !tbaa !29
  %t84 = getelementptr %"compiler/typed:Elem", ptr %t82, i32 0, i32 1
  %t85 = load ptr, ptr %t84, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t81, ptr %t85)
  br label %bb28
bb28:
  br label %bb54
bb29:
  %t89 = load ptr, ptr %l1, !tbaa !29
  store ptr %t89, ptr %l46, !tbaa !29
  store i1 false, ptr %l47, !tbaa !21
  %t90 = load ptr, ptr %l46, !tbaa !29
  %t91 = icmp ne ptr %t90, null
  br i1 %t91, label %bb30, label %bb31
bb30:
  %t93 = load ptr, ptr %l46, !tbaa !29
  %t94 = load i64, ptr %t93, !range !{i64 0, i64 8}
  %t96 = icmp eq i64 %t94, 5
  store i1 %t96, ptr %l47, !tbaa !21
  br label %bb31
bb31:
  %t97 = load i1, ptr %l47, !tbaa !21
  br i1 %t97, label %bb32, label %bb33
bb32:
  %t98 = load ptr, ptr %l1, !tbaa !29
  %t100 = getelementptr { i64, [4 x i64] }, ptr %t98, i32 0, i32 1
  %t101 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t100, i32 0, i32 2
  %t102 = load ptr, ptr %t101
  store ptr %t102, ptr %l6, !tbaa !29
  br label %bb34
bb33:
  br label %bb36
bb34:
  %t104 = load ptr, ptr %l0, !tbaa !29
  %t105 = load ptr, ptr %l6, !tbaa !29
  %t107 = getelementptr %"compiler/typed:Payload", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eplace(ptr %v0, ptr %v1, ptr %t104, ptr %t108)
  br label %bb35
bb35:
  br label %bb54
bb36:
  %t111 = load ptr, ptr %l1, !tbaa !29
  store ptr %t111, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t112 = load ptr, ptr %l55, !tbaa !29
  %t113 = icmp ne ptr %t112, null
  br i1 %t113, label %bb37, label %bb38
bb37:
  %t115 = load ptr, ptr %l55, !tbaa !29
  %t116 = load i64, ptr %t115, !range !{i64 0, i64 8}
  %t118 = icmp eq i64 %t116, 6
  store i1 %t118, ptr %l56, !tbaa !21
  br label %bb38
bb38:
  %t119 = load i1, ptr %l56, !tbaa !21
  br i1 %t119, label %bb39, label %bb40
bb39:
  %t120 = load ptr, ptr %l1, !tbaa !29
  %t122 = getelementptr { i64, [4 x i64] }, ptr %t120, i32 0, i32 1
  %t123 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t122, i32 0, i32 2
  %t124 = load ptr, ptr %t123
  store ptr %t124, ptr %l7, !tbaa !29
  br label %bb41
bb40:
  br label %bb43
bb41:
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %t126, ptr %t127)
  br label %bb42
bb42:
  br label %bb54
bb43:
  %t131 = load ptr, ptr %l1, !tbaa !29
  store ptr %t131, ptr %l64, !tbaa !29
  store i1 false, ptr %l65, !tbaa !21
  %t132 = load ptr, ptr %l64, !tbaa !29
  %t133 = icmp ne ptr %t132, null
  br i1 %t133, label %bb44, label %bb45
bb44:
  %t135 = load ptr, ptr %l64, !tbaa !29
  %t136 = load i64, ptr %t135, !range !{i64 0, i64 8}
  %t138 = icmp eq i64 %t136, 1
  store i1 %t138, ptr %l65, !tbaa !21
  br label %bb45
bb45:
  %t139 = load i1, ptr %l65, !tbaa !21
  br i1 %t139, label %bb46, label %bb47
bb46:
  br label %bb52
bb47:
  %t140 = load ptr, ptr %l1, !tbaa !29
  store ptr %t140, ptr %l68, !tbaa !29
  store i1 false, ptr %l69, !tbaa !21
  %t141 = load ptr, ptr %l68, !tbaa !29
  %t142 = icmp ne ptr %t141, null
  br i1 %t142, label %bb48, label %bb49
bb48:
  %t144 = load ptr, ptr %l68, !tbaa !29
  %t145 = load i64, ptr %t144, !range !{i64 0, i64 8}
  %t147 = icmp eq i64 %t145, 7
  store i1 %t147, ptr %l69, !tbaa !21
  br label %bb49
bb49:
  %t148 = load i1, ptr %l69, !tbaa !21
  br i1 %t148, label %bb50, label %bb51
bb50:
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb54
bb53:
  call void @__olang_check_failed(ptr @olang_loc_4860703a134569c9_d00fc34d053d5355)
  unreachable
bb54:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ealiasInto(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
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
  %l25 = alloca i1
  %l26 = alloca i1
  %l30 = alloca i1
  %l37 = alloca i1
  %l44 = alloca i1
  %l45 = alloca i1
  %l49 = alloca i1
  %l56 = alloca i1
  %l57 = alloca i1
  %l61 = alloca i1
  %l67 = alloca i64
  %l71 = alloca i64
  %l74 = alloca i64
  %l95 = alloca i64
  %l102 = alloca ptr
  %l106 = alloca i64
  %l108 = alloca ptr
  %l112 = alloca i64
  %l117 = alloca i64
  %l122 = alloca i64
  %l125 = alloca i64
  %l146 = alloca i64
  %l153 = alloca ptr
  %l157 = alloca i64
  %l159 = alloca ptr
  %l163 = alloca i64
  %l168 = alloca i64
  %l172 = alloca i64
  %l175 = alloca i64
  %l196 = alloca i64
  store ptr %a0, ptr %l0
  store i64 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 2
  %t4 = load i64, ptr %l1, !tbaa !24
  %t7 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t3, i64 %t4)
  store i1 %t7, ptr %l25
  br label %bb1
bb1:
  %t8 = load i1, ptr %l25, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l26, !tbaa !21
  br label %bb5
bb3:
  %t9 = load ptr, ptr %l0, !tbaa !29
  %t11 = getelementptr %"compiler/typed:LocalUses", ptr %t9, i32 0, i32 4
  %t12 = load i64, ptr %l1, !tbaa !24
  %t15 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t11, i64 %t12)
  store i1 %t15, ptr %l30
  br label %bb4
bb4:
  %t16 = load i1, ptr %l30, !tbaa !21
  store i1 %t16, ptr %l26, !tbaa !21
  br label %bb5
bb5:
  %t17 = load i1, ptr %l26, !tbaa !21
  br i1 %t17, label %bb6, label %bb7
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/typed:LocalUses", ptr %t18, i32 0, i32 2
  %t21 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t20, i64 %t21, i1 true)
  br label %bb8
bb7:
  br label %bb9
bb8:
  br label %bb9
bb9:
  %t24 = load ptr, ptr %l0, !tbaa !29
  %t26 = getelementptr %"compiler/typed:LocalUses", ptr %t24, i32 0, i32 3
  %t27 = load i64, ptr %l1, !tbaa !24
  %t30 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t26, i64 %t27)
  store i1 %t30, ptr %l37
  br label %bb10
bb10:
  %t31 = load i1, ptr %l37, !tbaa !21
  br i1 %t31, label %bb11, label %bb12
bb11:
  %t32 = load ptr, ptr %l0, !tbaa !29
  %t34 = getelementptr %"compiler/typed:LocalUses", ptr %t32, i32 0, i32 3
  %t35 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t34, i64 %t35, i1 true)
  br label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb14
bb14:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/typed:LocalUses", ptr %t38, i32 0, i32 5
  %t41 = load i64, ptr %l1, !tbaa !24
  %t44 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t40, i64 %t41)
  store i1 %t44, ptr %l44
  br label %bb15
bb15:
  %t45 = load i1, ptr %l44, !tbaa !21
  br i1 %t45, label %bb16, label %bb17
bb16:
  store i1 true, ptr %l45, !tbaa !21
  br label %bb19
bb17:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/typed:LocalUses", ptr %t46, i32 0, i32 7
  %t49 = load i64, ptr %l1, !tbaa !24
  %t52 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t48, i64 %t49)
  store i1 %t52, ptr %l49
  br label %bb18
bb18:
  %t53 = load i1, ptr %l49, !tbaa !21
  store i1 %t53, ptr %l45, !tbaa !21
  br label %bb19
bb19:
  %t54 = load i1, ptr %l45, !tbaa !21
  br i1 %t54, label %bb20, label %bb21
bb20:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr %"compiler/typed:LocalUses", ptr %t55, i32 0, i32 5
  %t58 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t57, i64 %t58, i1 true)
  br label %bb22
bb21:
  br label %bb23
bb22:
  br label %bb23
bb23:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t63 = getelementptr %"compiler/typed:LocalUses", ptr %t61, i32 0, i32 6
  %t64 = load i64, ptr %l1, !tbaa !24
  %t67 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t63, i64 %t64)
  store i1 %t67, ptr %l56
  br label %bb24
bb24:
  %t68 = load i1, ptr %l56, !tbaa !21
  br i1 %t68, label %bb25, label %bb26
bb25:
  store i1 true, ptr %l57, !tbaa !21
  br label %bb28
bb26:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/typed:LocalUses", ptr %t69, i32 0, i32 7
  %t72 = load i64, ptr %l1, !tbaa !24
  %t75 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t71, i64 %t72)
  store i1 %t75, ptr %l61
  br label %bb27
bb27:
  %t76 = load i1, ptr %l61, !tbaa !21
  store i1 %t76, ptr %l57, !tbaa !21
  br label %bb28
bb28:
  %t77 = load i1, ptr %l57, !tbaa !21
  br i1 %t77, label %bb29, label %bb30
bb29:
  %t78 = load ptr, ptr %l0, !tbaa !29
  %t80 = getelementptr %"compiler/typed:LocalUses", ptr %t78, i32 0, i32 6
  %t81 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t80, i64 %t81, i1 true)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  store i64 0, ptr %l3, !tbaa !24
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr %"compiler/typed:LocalUses", ptr %t84, i32 0, i32 15
  %t88 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t86)
  store i64 %t88, ptr %l67
  br label %bb33
bb33:
  %t89 = load i64, ptr %l67, !tbaa !24
  store i64 %t89, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t90 = load i64, ptr %l4, !tbaa !24
  %t91 = load i64, ptr %l3, !tbaa !24
  %t94 = icmp sgt i64 %t90, %t91
  br i1 %t94, label %bb34, label %bb35
bb34:
  %t96 = load i64, ptr %l5, !tbaa !24
  %t98 = icmp sgt i64 %t96, 0
  br i1 %t98, label %bb36, label %bb37
bb35:
  store i64 0, ptr %l71, !tbaa !24
  br label %bb39
bb36:
  %t100 = load i64, ptr %l4, !tbaa !24
  %t101 = load i64, ptr %l3, !tbaa !24
  %t104 = sub i64 %t100, %t101
  %t105 = load i64, ptr %l5, !tbaa !24
  %t108 = add i64 %t104, %t105
  %t110 = sub i64 %t108, 1
  %t111 = load i64, ptr %l5, !tbaa !24
  %t114 = sdiv i64 %t110, %t111
  store i64 %t114, ptr %l74, !tbaa !24
  br label %bb38
bb37:
  store i64 0, ptr %l74, !tbaa !24
  br label %bb38
bb38:
  %t116 = load i64, ptr %l74, !tbaa !24
  store i64 %t116, ptr %l71, !tbaa !24
  br label %bb39
bb39:
  %t117 = load i64, ptr %l71, !tbaa !24
  store i64 %t117, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb40
bb40:
  %t118 = load i64, ptr %l7, !tbaa !24
  %t119 = load i64, ptr %l6, !tbaa !24
  %t122 = icmp slt i64 %t118, %t119
  %t124 = xor i1 %t122, true
  br i1 %t124, label %bb41, label %bb42
bb41:
  br label %bb54
bb42:
  br label %bb43
bb43:
  %t126 = load i64, ptr %l3, !tbaa !24
  %t127 = load i64, ptr %l7, !tbaa !24
  %t128 = load i64, ptr %l5, !tbaa !24
  %t131 = mul i64 %t127, %t128
  %t134 = add i64 %t126, %t131
  store i64 %t134, ptr %l8, !tbaa !24
  %t136 = load ptr, ptr %l0, !tbaa !29
  %t138 = getelementptr %"compiler/typed:LocalUses", ptr %t136, i32 0, i32 15
  %t139 = load i64, ptr %l8, !tbaa !24
  %t142 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t138, i64 %t139)
  store i64 %t142, ptr %l95
  br label %bb44
bb44:
  %t143 = load i64, ptr %l1, !tbaa !24
  %t144 = load i64, ptr %l95, !tbaa !24
  %t146 = icmp ne i64 %t144, %t143
  br i1 %t146, label %bb45, label %bb46
bb45:
  br label %bb53
bb46:
  br label %bb47
bb47:
  %t148 = load ptr, ptr %l0, !tbaa !29
  %t150 = getelementptr %"compiler/typed:LocalUses", ptr %t148, i32 0, i32 15
  %t151 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t150, i64 %t151)
  br label %bb48
bb48:
  %t154 = load ptr, ptr %l0, !tbaa !29
  %t156 = getelementptr %"compiler/typed:LocalUses", ptr %t154, i32 0, i32 16
  store ptr %t156, ptr %l102, !tbaa !29
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/typed:LocalUses", ptr %t157, i32 0, i32 16
  %t160 = load i64, ptr %l8, !tbaa !24
  %t163 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t159, i64 %t160)
  store i64 %t163, ptr %l106
  br label %bb49
bb49:
  %t164 = load ptr, ptr %l102, !tbaa !29
  %t165 = load i64, ptr %l106, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t164, i64 %t165)
  br label %bb50
bb50:
  %t166 = load ptr, ptr %l0, !tbaa !29
  %t168 = getelementptr %"compiler/typed:LocalUses", ptr %t166, i32 0, i32 17
  store ptr %t168, ptr %l108, !tbaa !29
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t171 = getelementptr %"compiler/typed:LocalUses", ptr %t169, i32 0, i32 17
  %t172 = load i64, ptr %l8, !tbaa !24
  %t175 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t171, i64 %t172)
  store i64 %t175, ptr %l112
  br label %bb51
bb51:
  %t176 = load ptr, ptr %l108, !tbaa !29
  %t177 = load i64, ptr %l112, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t176, i64 %t177)
  br label %bb52
bb52:
  br label %bb53
bb53:
  %t178 = load i64, ptr %l7, !tbaa !24
  %t180 = add i64 %t178, 1
  store i64 %t180, ptr %l7, !tbaa !24
  br label %bb40
bb54:
  %t182 = load ptr, ptr %l0, !tbaa !29
  %t184 = getelementptr %"compiler/typed:LocalUses", ptr %t182, i32 0, i32 12
  %t186 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t184)
  store i64 %t186, ptr %l117
  br label %bb55
bb55:
  %t187 = load i64, ptr %l117, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  store i64 %t187, ptr %l11, !tbaa !24
  store i64 1, ptr %l12, !tbaa !24
  %t190 = load i64, ptr %l11, !tbaa !24
  %t191 = load i64, ptr %l10, !tbaa !24
  %t194 = icmp sgt i64 %t190, %t191
  br i1 %t194, label %bb56, label %bb57
bb56:
  %t196 = load i64, ptr %l12, !tbaa !24
  %t198 = icmp sgt i64 %t196, 0
  br i1 %t198, label %bb58, label %bb59
bb57:
  store i64 0, ptr %l122, !tbaa !24
  br label %bb61
bb58:
  %t200 = load i64, ptr %l11, !tbaa !24
  %t201 = load i64, ptr %l10, !tbaa !24
  %t204 = sub i64 %t200, %t201
  %t205 = load i64, ptr %l12, !tbaa !24
  %t208 = add i64 %t204, %t205
  %t210 = sub i64 %t208, 1
  %t211 = load i64, ptr %l12, !tbaa !24
  %t214 = sdiv i64 %t210, %t211
  store i64 %t214, ptr %l125, !tbaa !24
  br label %bb60
bb59:
  store i64 0, ptr %l125, !tbaa !24
  br label %bb60
bb60:
  %t216 = load i64, ptr %l125, !tbaa !24
  store i64 %t216, ptr %l122, !tbaa !24
  br label %bb61
bb61:
  %t217 = load i64, ptr %l122, !tbaa !24
  store i64 %t217, ptr %l13, !tbaa !24
  store i64 0, ptr %l14, !tbaa !24
  br label %bb62
bb62:
  %t218 = load i64, ptr %l14, !tbaa !24
  %t219 = load i64, ptr %l13, !tbaa !24
  %t222 = icmp slt i64 %t218, %t219
  %t224 = xor i1 %t222, true
  br i1 %t224, label %bb63, label %bb64
bb63:
  br label %bb76
bb64:
  br label %bb65
bb65:
  %t226 = load i64, ptr %l10, !tbaa !24
  %t227 = load i64, ptr %l14, !tbaa !24
  %t228 = load i64, ptr %l12, !tbaa !24
  %t231 = mul i64 %t227, %t228
  %t234 = add i64 %t226, %t231
  store i64 %t234, ptr %l15, !tbaa !24
  %t236 = load ptr, ptr %l0, !tbaa !29
  %t238 = getelementptr %"compiler/typed:LocalUses", ptr %t236, i32 0, i32 12
  %t239 = load i64, ptr %l15, !tbaa !24
  %t242 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t238, i64 %t239)
  store i64 %t242, ptr %l146
  br label %bb66
bb66:
  %t243 = load i64, ptr %l1, !tbaa !24
  %t244 = load i64, ptr %l146, !tbaa !24
  %t246 = icmp ne i64 %t244, %t243
  br i1 %t246, label %bb67, label %bb68
bb67:
  br label %bb75
bb68:
  br label %bb69
bb69:
  %t248 = load ptr, ptr %l0, !tbaa !29
  %t250 = getelementptr %"compiler/typed:LocalUses", ptr %t248, i32 0, i32 12
  %t251 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t250, i64 %t251)
  br label %bb70
bb70:
  %t254 = load ptr, ptr %l0, !tbaa !29
  %t256 = getelementptr %"compiler/typed:LocalUses", ptr %t254, i32 0, i32 13
  store ptr %t256, ptr %l153, !tbaa !29
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/typed:LocalUses", ptr %t257, i32 0, i32 13
  %t260 = load i64, ptr %l15, !tbaa !24
  %t263 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t259, i64 %t260)
  store i64 %t263, ptr %l157
  br label %bb71
bb71:
  %t264 = load ptr, ptr %l153, !tbaa !29
  %t265 = load i64, ptr %l157, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t264, i64 %t265)
  br label %bb72
bb72:
  %t266 = load ptr, ptr %l0, !tbaa !29
  %t268 = getelementptr %"compiler/typed:LocalUses", ptr %t266, i32 0, i32 14
  store ptr %t268, ptr %l159, !tbaa !29
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t271 = getelementptr %"compiler/typed:LocalUses", ptr %t269, i32 0, i32 14
  %t272 = load i64, ptr %l15, !tbaa !24
  %t275 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t271, i64 %t272)
  store i64 %t275, ptr %l163
  br label %bb73
bb73:
  %t276 = load ptr, ptr %l159, !tbaa !29
  %t277 = load i64, ptr %l163, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t276, i64 %t277)
  br label %bb74
bb74:
  br label %bb75
bb75:
  %t278 = load i64, ptr %l14, !tbaa !24
  %t280 = add i64 %t278, 1
  store i64 %t280, ptr %l14, !tbaa !24
  br label %bb62
bb76:
  store i64 0, ptr %l16, !tbaa !24
  %t282 = load ptr, ptr %l0, !tbaa !29
  %t284 = getelementptr %"compiler/typed:LocalUses", ptr %t282, i32 0, i32 10
  %t286 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t284)
  store i64 %t286, ptr %l168
  br label %bb77
bb77:
  %t287 = load i64, ptr %l168, !tbaa !24
  store i64 %t287, ptr %l17, !tbaa !24
  store i64 1, ptr %l18, !tbaa !24
  %t288 = load i64, ptr %l17, !tbaa !24
  %t289 = load i64, ptr %l16, !tbaa !24
  %t292 = icmp sgt i64 %t288, %t289
  br i1 %t292, label %bb78, label %bb79
bb78:
  %t294 = load i64, ptr %l18, !tbaa !24
  %t296 = icmp sgt i64 %t294, 0
  br i1 %t296, label %bb80, label %bb81
bb79:
  store i64 0, ptr %l172, !tbaa !24
  br label %bb83
bb80:
  %t298 = load i64, ptr %l17, !tbaa !24
  %t299 = load i64, ptr %l16, !tbaa !24
  %t302 = sub i64 %t298, %t299
  %t303 = load i64, ptr %l18, !tbaa !24
  %t306 = add i64 %t302, %t303
  %t308 = sub i64 %t306, 1
  %t309 = load i64, ptr %l18, !tbaa !24
  %t312 = sdiv i64 %t308, %t309
  store i64 %t312, ptr %l175, !tbaa !24
  br label %bb82
bb81:
  store i64 0, ptr %l175, !tbaa !24
  br label %bb82
bb82:
  %t314 = load i64, ptr %l175, !tbaa !24
  store i64 %t314, ptr %l172, !tbaa !24
  br label %bb83
bb83:
  %t315 = load i64, ptr %l172, !tbaa !24
  store i64 %t315, ptr %l19, !tbaa !24
  store i64 0, ptr %l20, !tbaa !24
  br label %bb84
bb84:
  %t316 = load i64, ptr %l20, !tbaa !24
  %t317 = load i64, ptr %l19, !tbaa !24
  %t320 = icmp slt i64 %t316, %t317
  %t322 = xor i1 %t320, true
  br i1 %t322, label %bb85, label %bb86
bb85:
  br label %bb94
bb86:
  br label %bb87
bb87:
  %t324 = load i64, ptr %l16, !tbaa !24
  %t325 = load i64, ptr %l20, !tbaa !24
  %t326 = load i64, ptr %l18, !tbaa !24
  %t329 = mul i64 %t325, %t326
  %t332 = add i64 %t324, %t329
  %t334 = load ptr, ptr %l0, !tbaa !29
  %t336 = getelementptr %"compiler/typed:LocalUses", ptr %t334, i32 0, i32 10
  %t340 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t336, i64 %t332)
  store i64 %t340, ptr %l196
  br label %bb88
bb88:
  %t341 = load i64, ptr %l1, !tbaa !24
  %t342 = load i64, ptr %l196, !tbaa !24
  %t344 = icmp eq i64 %t342, %t341
  br i1 %t344, label %bb89, label %bb90
bb89:
  %t346 = load ptr, ptr %l0, !tbaa !29
  %t348 = getelementptr %"compiler/typed:LocalUses", ptr %t346, i32 0, i32 2
  %t349 = load i64, ptr %l2, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t348, i64 %t349, i1 true)
  br label %bb91
bb90:
  br label %bb92
bb91:
  br label %bb92
bb92:
  br label %bb93
bb93:
  %t352 = load i64, ptr %l20, !tbaa !24
  %t354 = add i64 %t352, 1
  store i64 %t354, ptr %l20, !tbaa !24
  br label %bb84
bb94:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eassign(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca i32
  %l6 = alloca i32
  %l11 = alloca i64
  %l14 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l30 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l36 = alloca i1
  %l38 = alloca ptr
  %l40 = alloca i32
  %l42 = alloca i1
  %l44 = alloca i1
  %l47 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t1, ptr %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2evalueRoot(ptr %v0, ptr %v1, ptr %t5, ptr %t6)
  store i64 %t9, ptr %l11
  br label %bb2
bb2:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l3, !tbaa !24
  %t11 = load i64, ptr %l3, !tbaa !24
  %t13 = icmp sge i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t16 = load ptr, ptr %l15, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb5, label %bb6
bb4:
  store i1 false, ptr %l14, !tbaa !21
  br label %bb7
bb5:
  %t19 = load ptr, ptr %l15, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 8}
  %t22 = icmp eq i64 %t20, 0
  store i1 %t22, ptr %l16, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l16, !tbaa !21
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb7
bb7:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = getelementptr { i64, [4 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l4
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t33, i32 0, i32 1
  %t35 = load i32, ptr %t34
  store i32 %t35, ptr %l5, !tbaa !23
  %t37 = load ptr, ptr %l1, !tbaa !29
  %t39 = getelementptr { i64, [4 x i64] }, ptr %t37, i32 0, i32 1
  %t40 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t39, i32 0, i32 2
  %t41 = load i32, ptr %t40
  store i32 %t41, ptr %l6, !tbaa !23
  %t43 = load ptr, ptr %l0, !tbaa !29
  %t45 = getelementptr %"compiler/typed:LocalUses", ptr %t43, i32 0, i32 4
  %t46 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t45, i64 %t46, i1 true)
  br label %bb10
bb9:
  br label %bb11
bb10:
  br label %ret
bb11:
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = icmp sge i64 %t49, 0
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t53 = load ptr, ptr %l1, !tbaa !29
  store ptr %t53, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t54 = load ptr, ptr %l31, !tbaa !29
  %t55 = icmp ne ptr %t54, null
  br i1 %t55, label %bb14, label %bb15
bb13:
  store i1 false, ptr %l30, !tbaa !21
  br label %bb16
bb14:
  %t57 = load ptr, ptr %l31, !tbaa !29
  %t58 = load i64, ptr %t57, !range !{i64 0, i64 8}
  %t60 = icmp eq i64 %t58, 0
  store i1 %t60, ptr %l32, !tbaa !21
  br label %bb15
bb15:
  %t61 = load i1, ptr %l32, !tbaa !21
  %t62 = xor i1 %t61, true
  store i1 %t62, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t64 = load i1, ptr %l30, !tbaa !21
  br i1 %t64, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:LocalUses", ptr %t65, i32 0, i32 0
  %t68 = load ptr, ptr %t67, !tbaa !29
  store ptr %t68, ptr %l38, !tbaa !29
  %t69 = load ptr, ptr %l1, !tbaa !29
  %t71 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v1, ptr %t69)
  store i32 %t71, ptr %l40
  br label %bb19
bb18:
  store i1 false, ptr %l36, !tbaa !21
  br label %bb21
bb19:
  %t72 = load ptr, ptr %l38, !tbaa !29
  %t73 = call ptr @__olang_scope_or(ptr %v3, ptr %t72)
  %t74 = ptrtoint ptr %t73 to i64
  %t76 = inttoptr i64 %t74 to ptr
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = load i32, ptr %l40, !tbaa !23
  %t79 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t76, ptr %t77, i32 %t78)
  store i1 %t79, ptr %l42
  br label %bb20
bb20:
  %t80 = load i1, ptr %l42, !tbaa !21
  %t81 = xor i1 %t80, true
  store i1 %t81, ptr %l36, !tbaa !21
  br label %bb21
bb21:
  %t83 = load i1, ptr %l36, !tbaa !21
  br i1 %t83, label %bb22, label %bb23
bb22:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t88 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2escalarField(ptr %v0, ptr %v1, ptr %v3, ptr %t84, ptr %t85)
  store i1 %t88, ptr %l47
  br label %bb24
bb23:
  store i1 false, ptr %l44, !tbaa !21
  br label %bb25
bb24:
  %t89 = load i1, ptr %l47, !tbaa !21
  %t90 = xor i1 %t89, true
  store i1 %t90, ptr %l44, !tbaa !21
  br label %bb25
bb25:
  %t92 = load i1, ptr %l44, !tbaa !21
  br i1 %t92, label %bb26, label %bb27
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:LocalUses", ptr %t93, i32 0, i32 10
  %t96 = load i64, ptr %l3, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t95, i64 %t96)
  br label %bb28
bb27:
  br label %bb30
bb28:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/typed:LocalUses", ptr %t99, i32 0, i32 11
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v2, ptr %t101, ptr %a2)
  br label %bb29
bb29:
  br label %ret
bb30:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t106 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v3, ptr %v4, ptr %t105, ptr %t106, i1 false)
  br label %bb31
bb31:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ecloseAliases(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i64
  %l2 = alloca i64
  %l5 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:LocalUses", ptr %t1, i32 0, i32 8
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l5
  br label %bb1
bb1:
  %t6 = load i64, ptr %l5, !tbaa !24
  %t7 = sub i64 %t6, 1
  store i64 %t7, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t9 = load i64, ptr %l1, !tbaa !24
  %t11 = icmp sge i64 %t9, 0
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb3, label %bb4
bb3:
  br label %bb15
bb4:
  br label %bb5
bb5:
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/typed:LocalUses", ptr %t15, i32 0, i32 8
  %t18 = load i64, ptr %l1, !tbaa !24
  %t21 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t17, i64 %t18)
  store i64 %t21, ptr %l13
  br label %bb6
bb6:
  %t22 = load i64, ptr %l13, !tbaa !24
  store i64 %t22, ptr %l2, !tbaa !24
  %t23 = load i64, ptr %l1, !tbaa !24
  %t25 = sub i64 %t23, 1
  store i64 %t25, ptr %l1, !tbaa !24
  %t27 = load i64, ptr %l2, !tbaa !24
  %t29 = icmp slt i64 %t27, 0
  br i1 %t29, label %bb7, label %bb8
bb7:
  store i1 true, ptr %l18, !tbaa !21
  br label %bb9
bb8:
  %t31 = load i64, ptr %l2, !tbaa !24
  %t32 = load i64, ptr %l1, !tbaa !24
  %t35 = icmp sgt i64 %t31, %t32
  store i1 %t35, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t37 = load i1, ptr %l18, !tbaa !21
  br i1 %t37, label %bb10, label %bb11
bb10:
  br label %bb14
bb11:
  br label %bb12
bb12:
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t39 = load i64, ptr %l1, !tbaa !24
  %t41 = add i64 %t39, 1
  %t42 = load i64, ptr %l2, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ealiasInto(ptr %v0, ptr %t38, i64 %t41, i64 %t42)
  br label %bb13
bb13:
  br label %bb14
bb14:
  br label %bb2
bb15:
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2elendOf(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca i32
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca i32
  %l9 = alloca ptr
  %l10 = alloca i1
  %l18 = alloca ptr
  %l21 = alloca i64
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l35 = alloca ptr
  %l36 = alloca i1
  %l43 = alloca i64
  %l44 = alloca ptr
  %l45 = alloca i1
  %l53 = alloca ptr
  %l56 = alloca i1
  %l58 = alloca i1
  %l60 = alloca ptr
  %l63 = alloca i64
  %l68 = alloca i64
  %l69 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca ptr
  %l78 = alloca ptr
  %l81 = alloca %"compiler/typed:Local"
  %l84 = alloca i1
  %l85 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l9, !tbaa !29
  store i1 false, ptr %l10, !tbaa !21
  %t2 = load ptr, ptr %l9, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l9, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l10, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l10, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb28
bb5:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:LocalUses", ptr %t22, i32 0, i32 0
  %t25 = load ptr, ptr %t24, !tbaa !29
  store ptr %t25, ptr %l18, !tbaa !29
  %t26 = load i32, ptr %l2, !tbaa !23
  %t27 = load ptr, ptr %l18, !tbaa !29
  %t28 = call ptr @__olang_scope_or(ptr %v2, ptr %t27)
  %t29 = ptrtoint ptr %t28 to i64
  %t31 = inttoptr i64 %t29 to ptr
  %t32 = load ptr, ptr %l18, !tbaa !29
  %t34 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t31, ptr %t32, i32 %t26)
  store i64 %t34, ptr %l21
  br label %bb6
bb6:
  %t35 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t36 = load i64, ptr %l21, !tbaa !24
  %t38 = and i64 %t36, %t35
  %t40 = icmp eq i64 %t38, 0
  br i1 %t40, label %bb7, label %bb8
bb7:
  store i64 -1, ptr %rv
  br label %ret
bb8:
  br label %bb9
bb9:
  %t43 = load ptr, ptr %l3, !tbaa !29
  store ptr %t43, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t44 = load ptr, ptr %l27, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = load ptr, ptr %l27, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 8}
  %t50 = icmp eq i64 %t48, 0
  store i1 %t50, ptr %l28, !tbaa !21
  br label %bb11
bb11:
  %t51 = load i1, ptr %l28, !tbaa !21
  br i1 %t51, label %bb12, label %bb13
bb12:
  %t52 = load ptr, ptr %l3, !tbaa !29
  %t54 = getelementptr { i64, [4 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t54, i32 0, i32 2
  %t56 = load i32, ptr %t55
  store i32 %t56, ptr %l4, !tbaa !23
  br label %bb14
bb13:
  br label %bb15
bb14:
  %t58 = load i32, ptr %l4, !tbaa !23
  %t60 = sext i32 %t58 to i64
  store i64 %t60, ptr %l26, !tbaa !24
  br label %bb27
bb15:
  %t62 = load ptr, ptr %l3, !tbaa !29
  store ptr %t62, ptr %l35, !tbaa !29
  store i1 false, ptr %l36, !tbaa !21
  %t63 = load ptr, ptr %l35, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb16, label %bb17
bb16:
  %t66 = load ptr, ptr %l35, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 8}
  %t69 = icmp eq i64 %t67, 2
  store i1 %t69, ptr %l36, !tbaa !21
  br label %bb17
bb17:
  %t70 = load i1, ptr %l36, !tbaa !21
  br i1 %t70, label %bb18, label %bb19
bb18:
  %t71 = load ptr, ptr %l3, !tbaa !29
  %t73 = getelementptr { i64, [4 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 2
  %t75 = load ptr, ptr %t74
  store ptr %t75, ptr %l5, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t78 = load ptr, ptr %l5, !tbaa !29
  %t81 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %t77, ptr %t78)
  store i64 %t81, ptr %l43
  br label %bb21
bb21:
  %t82 = load i64, ptr %l43, !tbaa !24
  store i64 %t82, ptr %l26, !tbaa !24
  br label %bb27
bb22:
  br i1 true, label %bb23, label %bb24
bb23:
  br label %bb25
bb24:
  br label %bb26
bb25:
  store i64 -1, ptr %l26, !tbaa !24
  br label %bb27
bb26:
  call void @__olang_check_failed(ptr @olang_loc_b9f0b2a15b6670eb_2e1d369e87bd8cdf)
  unreachable
bb27:
  %t83 = load i64, ptr %l26, !tbaa !24
  store i64 %t83, ptr %rv
  br label %ret
bb28:
  %t84 = load ptr, ptr %l1, !tbaa !29
  store ptr %t84, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t85 = load ptr, ptr %l44, !tbaa !29
  %t86 = icmp ne ptr %t85, null
  br i1 %t86, label %bb29, label %bb30
bb29:
  %t88 = load ptr, ptr %l44, !tbaa !29
  %t89 = load i64, ptr %t88, !range !{i64 0, i64 18}
  %t91 = icmp eq i64 %t89, 2
  store i1 %t91, ptr %l45, !tbaa !21
  br label %bb30
bb30:
  %t92 = load i1, ptr %l45, !tbaa !21
  br i1 %t92, label %bb31, label %bb32
bb31:
  %t93 = load ptr, ptr %l1, !tbaa !29
  %t95 = getelementptr { i64, [5 x i64] }, ptr %t93, i32 0, i32 1
  %t96 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t95, i32 0, i32 1
  %t97 = load i32, ptr %t96
  store i32 %t97, ptr %l6, !tbaa !23
  %t99 = load ptr, ptr %l1, !tbaa !29
  %t101 = getelementptr { i64, [5 x i64] }, ptr %t99, i32 0, i32 1
  %t102 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t101, i32 0, i32 2
  %t103 = load ptr, ptr %t102
  store ptr %t103, ptr %l7, !tbaa !29
  br label %bb33
bb32:
  br label %bb58
bb33:
  %t105 = load ptr, ptr %l0, !tbaa !29
  %t107 = getelementptr %"compiler/typed:LocalUses", ptr %t105, i32 0, i32 0
  %t108 = load ptr, ptr %t107, !tbaa !29
  store ptr %t108, ptr %l53, !tbaa !29
  %t109 = load i32, ptr %l6, !tbaa !23
  %t110 = load ptr, ptr %l53, !tbaa !29
  %t111 = call ptr @__olang_scope_or(ptr %v2, ptr %t110)
  %t112 = ptrtoint ptr %t111 to i64
  %t114 = inttoptr i64 %t112 to ptr
  %t115 = load ptr, ptr %l53, !tbaa !29
  %t117 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t114, ptr %t115, i32 %t109)
  store i1 %t117, ptr %l56
  br label %bb34
bb34:
  %t118 = load i1, ptr %l56, !tbaa !21
  %t119 = xor i1 %t118, true
  br i1 %t119, label %bb35, label %bb36
bb35:
  store i1 true, ptr %l58, !tbaa !21
  br label %bb38
bb36:
  %t121 = load ptr, ptr %l0, !tbaa !29
  %t123 = getelementptr %"compiler/typed:LocalUses", ptr %t121, i32 0, i32 0
  %t124 = load ptr, ptr %t123, !tbaa !29
  store ptr %t124, ptr %l60, !tbaa !29
  %t125 = load i32, ptr %l6, !tbaa !23
  %t126 = load ptr, ptr %l60, !tbaa !29
  %t127 = call ptr @__olang_scope_or(ptr %v2, ptr %t126)
  %t128 = ptrtoint ptr %t127 to i64
  %t130 = inttoptr i64 %t128 to ptr
  %t131 = load ptr, ptr %l60, !tbaa !29
  %t133 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t130, ptr %t131, i32 %t125)
  store i64 %t133, ptr %l63
  br label %bb37
bb37:
  %t134 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t135 = load i64, ptr %l63, !tbaa !24
  %t137 = and i64 %t135, %t134
  %t139 = icmp eq i64 %t137, 0
  store i1 %t139, ptr %l58, !tbaa !21
  br label %bb38
bb38:
  %t141 = load i1, ptr %l58, !tbaa !21
  br i1 %t141, label %bb39, label %bb40
bb39:
  store i64 -1, ptr %rv
  br label %ret
bb40:
  br label %bb41
bb41:
  %t143 = load ptr, ptr %l7, !tbaa !29
  store ptr %t143, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t144 = load ptr, ptr %l69, !tbaa !29
  %t145 = icmp ne ptr %t144, null
  br i1 %t145, label %bb42, label %bb43
bb42:
  %t147 = load ptr, ptr %l69, !tbaa !29
  %t148 = load i64, ptr %t147, !range !{i64 0, i64 8}
  %t150 = icmp eq i64 %t148, 0
  store i1 %t150, ptr %l70, !tbaa !21
  br label %bb43
bb43:
  %t151 = load i1, ptr %l70, !tbaa !21
  br i1 %t151, label %bb44, label %bb45
bb44:
  %t152 = load ptr, ptr %l7, !tbaa !29
  %t154 = getelementptr { i64, [4 x i64] }, ptr %t152, i32 0, i32 1
  %t155 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t154, i32 0, i32 2
  %t156 = load i32, ptr %t155
  store i32 %t156, ptr %l8, !tbaa !23
  br label %bb46
bb45:
  br label %bb52
bb46:
  %t158 = load ptr, ptr %l0, !tbaa !29
  %t160 = getelementptr %"compiler/typed:LocalUses", ptr %t158, i32 0, i32 0
  %t161 = load ptr, ptr %t160, !tbaa !29
  store ptr %t161, ptr %l76, !tbaa !29
  %t162 = load ptr, ptr %l0, !tbaa !29
  %t164 = getelementptr %"compiler/typed:LocalUses", ptr %t162, i32 0, i32 1
  %t165 = load ptr, ptr %t164, !tbaa !29
  store ptr %t165, ptr %l78, !tbaa !29
  %t166 = load i32, ptr %l8, !tbaa !23
  %t167 = load ptr, ptr %l78, !tbaa !29
  %t168 = call ptr @__olang_scope_or(ptr %v3, ptr %t167)
  %t169 = ptrtoint ptr %t168 to i64
  %t171 = inttoptr i64 %t169 to ptr
  %t172 = load ptr, ptr %l78, !tbaa !29
  %t174 = call %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %t171, ptr %t172, i32 %t166)
  store %"compiler/typed:Local" %t174, ptr %l81
  br label %bb47
bb47:
  %t175 = getelementptr %"compiler/typed:Local", ptr %l81, i32 0, i32 2
  %t176 = load i32, ptr %t175, !tbaa !23
  %t177 = load ptr, ptr %l76, !tbaa !29
  %t178 = call ptr @__olang_scope_or(ptr %v2, ptr %t177)
  %t179 = ptrtoint ptr %t178 to i64
  %t181 = inttoptr i64 %t179 to ptr
  %t182 = load ptr, ptr %l76, !tbaa !29
  %t184 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %t181, ptr %t182, i32 %t176)
  store i1 %t184, ptr %l84
  br label %bb48
bb48:
  %t185 = load i1, ptr %l84, !tbaa !21
  br i1 %t185, label %bb49, label %bb50
bb49:
  %t186 = load i32, ptr %l8, !tbaa !23
  %t188 = sext i32 %t186 to i64
  store i64 %t188, ptr %l85, !tbaa !24
  br label %bb51
bb50:
  store i64 -1, ptr %l85, !tbaa !24
  br label %bb51
bb51:
  %t190 = load i64, ptr %l85, !tbaa !24
  store i64 %t190, ptr %l68, !tbaa !24
  br label %bb57
bb52:
  br i1 true, label %bb53, label %bb54
bb53:
  br label %bb55
bb54:
  br label %bb56
bb55:
  store i64 -1, ptr %l68, !tbaa !24
  br label %bb57
bb56:
  call void @__olang_check_failed(ptr @olang_loc_5437ab06fdd2422a_119d1d559b7fc05e)
  unreachable
bb57:
  %t191 = load i64, ptr %l68, !tbaa !24
  store i64 %t191, ptr %rv
  br label %ret
bb58:
  br i1 true, label %bb59, label %bb60
bb59:
  br label %bb61
bb60:
  br label %bb62
bb61:
  store i64 -1, ptr %rv
  br label %ret
bb62:
  call void @__olang_check_failed(ptr @olang_loc_ef0de602c5122041_f82f60a1eb2bb195)
  unreachable
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca i1
  %l15 = alloca ptr
  %l16 = alloca i1
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l46 = alloca i64
  %l52 = alloca ptr
  %l53 = alloca i1
  %t48 = alloca { i64, [1 x i64] }, align 8
  %t102 = alloca { i64, [1 x i64] }, align 8
  %t126 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t17)
  br label %bb6
bb6:
  br label %bb45
bb7:
  %t20 = load ptr, ptr %l1, !tbaa !29
  store ptr %t20, ptr %l15, !tbaa !29
  store i1 false, ptr %l16, !tbaa !21
  %t21 = load ptr, ptr %l15, !tbaa !29
  %t22 = icmp ne ptr %t21, null
  br i1 %t22, label %bb8, label %bb9
bb8:
  %t24 = load ptr, ptr %l15, !tbaa !29
  %t25 = load i64, ptr %t24, !range !{i64 0, i64 8}
  %t27 = icmp eq i64 %t25, 4
  store i1 %t27, ptr %l16, !tbaa !21
  br label %bb9
bb9:
  %t28 = load i1, ptr %l16, !tbaa !21
  br i1 %t28, label %bb10, label %bb11
bb10:
  %t29 = load ptr, ptr %l1, !tbaa !29
  %t31 = getelementptr { i64, [4 x i64] }, ptr %t29, i32 0, i32 1
  %t32 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t31, i32 0, i32 2
  %t33 = load ptr, ptr %t32
  store ptr %t33, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb15
bb12:
  %t35 = load ptr, ptr %l0, !tbaa !29
  %t36 = load ptr, ptr %l3, !tbaa !29
  %t38 = getelementptr %"compiler/typed:Elem", ptr %t36, i32 0, i32 0
  %t39 = load ptr, ptr %t38, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t35, ptr %t39)
  br label %bb13
bb13:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t43 = load ptr, ptr %l3, !tbaa !29
  %t45 = getelementptr %"compiler/typed:Elem", ptr %t43, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t48
  %t49 = getelementptr { i64, [1 x i64] }, ptr %t48, i32 0, i32 0
  store i64 0, ptr %t49
  %t50 = load { i64, [1 x i64] }, ptr %t48
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t42, ptr %t46, { i64, [1 x i64] } %t50)
  br label %bb14
bb14:
  br label %bb45
bb15:
  %t54 = load ptr, ptr %l1, !tbaa !29
  store ptr %t54, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t55 = load ptr, ptr %l29, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb16, label %bb17
bb16:
  %t58 = load ptr, ptr %l29, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 8}
  %t61 = icmp eq i64 %t59, 5
  store i1 %t61, ptr %l30, !tbaa !21
  br label %bb17
bb17:
  %t62 = load i1, ptr %l30, !tbaa !21
  br i1 %t62, label %bb18, label %bb19
bb18:
  %t63 = load ptr, ptr %l1, !tbaa !29
  %t65 = getelementptr { i64, [4 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l4, !tbaa !29
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t70 = load ptr, ptr %l4, !tbaa !29
  %t72 = getelementptr %"compiler/typed:Payload", ptr %t70, i32 0, i32 0
  %t73 = load ptr, ptr %t72, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t69, ptr %t73)
  br label %bb21
bb21:
  br label %bb45
bb22:
  %t76 = load ptr, ptr %l1, !tbaa !29
  store ptr %t76, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t77 = load ptr, ptr %l38, !tbaa !29
  %t78 = icmp ne ptr %t77, null
  br i1 %t78, label %bb23, label %bb24
bb23:
  %t80 = load ptr, ptr %l38, !tbaa !29
  %t81 = load i64, ptr %t80, !range !{i64 0, i64 8}
  %t83 = icmp eq i64 %t81, 2
  store i1 %t83, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t84 = load i1, ptr %l39, !tbaa !21
  br i1 %t84, label %bb25, label %bb26
bb25:
  %t85 = load ptr, ptr %l1, !tbaa !29
  %t87 = getelementptr { i64, [4 x i64] }, ptr %t85, i32 0, i32 1
  %t88 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t87, i32 0, i32 2
  %t89 = load ptr, ptr %t88
  store ptr %t89, ptr %l5, !tbaa !29
  br label %bb27
bb26:
  br label %bb33
bb27:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t95 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %t91, ptr %t92)
  store i64 %t95, ptr %l46
  br label %bb28
bb28:
  %t96 = load i64, ptr %l46, !tbaa !24
  %t97 = icmp slt i64 %t96, 0
  br i1 %t97, label %bb29, label %bb30
bb29:
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t100 = load ptr, ptr %l5, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t102
  %t103 = getelementptr { i64, [1 x i64] }, ptr %t102, i32 0, i32 0
  store i64 0, ptr %t103
  %t104 = load { i64, [1 x i64] }, ptr %t102
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t99, ptr %t100, { i64, [1 x i64] } %t104)
  br label %bb31
bb30:
  br label %bb32
bb31:
  br label %bb32
bb32:
  br label %bb45
bb33:
  %t108 = load ptr, ptr %l1, !tbaa !29
  store ptr %t108, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t109 = load ptr, ptr %l52, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb34, label %bb35
bb34:
  %t112 = load ptr, ptr %l52, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 8}
  %t115 = icmp eq i64 %t113, 6
  store i1 %t115, ptr %l53, !tbaa !21
  br label %bb35
bb35:
  %t116 = load i1, ptr %l53, !tbaa !21
  br i1 %t116, label %bb36, label %bb37
bb36:
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [4 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t119, i32 0, i32 2
  %t121 = load ptr, ptr %t120
  store ptr %t121, ptr %l6, !tbaa !29
  br label %bb38
bb37:
  br label %bb40
bb38:
  %t123 = load ptr, ptr %l0, !tbaa !29
  %t124 = load ptr, ptr %l6, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t126
  %t127 = getelementptr { i64, [1 x i64] }, ptr %t126, i32 0, i32 0
  store i64 0, ptr %t127
  %t128 = load { i64, [1 x i64] }, ptr %t126
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t123, ptr %t124, { i64, [1 x i64] } %t128)
  br label %bb39
bb39:
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_572ff0c594eb7d28_3eb561bfca5d9eb4)
  unreachable
bb45:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eprim(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, i32 %a1, { i64, ptr } %a2, { i64, [1 x i64] } %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l4 = alloca { i64, ptr }
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca ptr
  %l15 = alloca { i64, ptr }
  %t43 = alloca { i64, [1 x i64] }, align 8
  %t57 = alloca { i64, [1 x i64] }, align 8
  %t66 = alloca { i64, [1 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a2, ptr %l4, !tbaa !27
  store i64 0, ptr %l5, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l4, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l6, !tbaa !24
  br label %bb1
bb1:
  %t7 = load i64, ptr %l5, !tbaa !24
  %t8 = load i64, ptr %l6, !tbaa !24
  %t11 = icmp slt i64 %t7, %t8
  %t13 = xor i1 %t11, true
  br i1 %t13, label %bb2, label %bb3
bb2:
  br label %bb27
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t15, ptr %l15, !tbaa !27
  %t16 = load i64, ptr %l5, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l15, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l7, !tbaa !29
  %t23 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t25 = trunc i64 20 to i32
  %t26 = icmp eq i32 %t23, %t25
  br i1 %t26, label %bb5, label %bb6
bb5:
  br label %bb7
bb6:
  br label %bb9
bb7:
  %t28 = load ptr, ptr %l0, !tbaa !29
  %t29 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t28, ptr %t29, { i64, [1 x i64] } %a3)
  br label %bb8
bb8:
  br label %bb25
bb9:
  %t35 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t37 = trunc i64 42 to i32
  %t38 = icmp eq i32 %t35, %t37
  br i1 %t38, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t41 = load ptr, ptr %l7, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t43
  %t44 = getelementptr { i64, [1 x i64] }, ptr %t43, i32 0, i32 0
  store i64 5, ptr %t44
  %t45 = load { i64, [1 x i64] }, ptr %t43
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t40, ptr %t41, { i64, [1 x i64] } %t45)
  br label %bb13
bb13:
  br label %bb25
bb14:
  %t49 = load i32, ptr %l1, !range !{i32 0, i32 52}
  %t51 = trunc i64 30 to i32
  %t52 = icmp eq i32 %t49, %t51
  br i1 %t52, label %bb15, label %bb16
bb15:
  br label %bb17
bb16:
  br label %bb19
bb17:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t55 = load ptr, ptr %l7, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t57
  %t58 = getelementptr { i64, [1 x i64] }, ptr %t57, i32 0, i32 0
  store i64 1, ptr %t58
  %t59 = load { i64, [1 x i64] }, ptr %t57
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t54, ptr %t55, { i64, [1 x i64] } %t59)
  br label %bb18
bb18:
  br label %bb25
bb19:
  br i1 true, label %bb20, label %bb21
bb20:
  br label %bb22
bb21:
  br label %bb24
bb22:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t64 = load ptr, ptr %l7, !tbaa !29
  store { i64, [1 x i64] } zeroinitializer, ptr %t66
  %t67 = getelementptr { i64, [1 x i64] }, ptr %t66, i32 0, i32 0
  store i64 0, ptr %t67
  %t68 = load { i64, [1 x i64] }, ptr %t66
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t63, ptr %t64, { i64, [1 x i64] } %t68)
  br label %bb23
bb23:
  br label %bb25
bb24:
  call void @__olang_check_failed(ptr @olang_loc_dac0899521d00a27_f5966ad5b7471ec3)
  unreachable
bb25:
  br label %bb26
bb26:
  %t72 = load i64, ptr %l5, !tbaa !24
  %t74 = add i64 %t72, 1
  store i64 %t74, ptr %l5, !tbaa !24
  br label %bb1
bb27:
  br label %ret
ret:
  ret void
}

define dso_local ptr @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2etempLent(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca i32
  %l6 = alloca ptr
  %l7 = alloca ptr
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca i1
  %l24 = alloca ptr
  %l27 = alloca i64
  %l31 = alloca ptr
  %l34 = alloca ptr
  %l35 = alloca i1
  %l43 = alloca ptr
  %l46 = alloca i64
  %l50 = alloca ptr
  %rv = alloca ptr
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 3
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb21
bb5:
  %t22 = load ptr, ptr %l3, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb6, label %bb7
bb6:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 6
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb8, label %bb9
bb8:
  %t31 = load ptr, ptr %l3, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l4, !tbaa !29
  br label %bb10
bb9:
  br label %bb15
bb10:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/typed:LocalUses", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l24, !tbaa !29
  %t41 = load i32, ptr %l2, !tbaa !23
  %t42 = load ptr, ptr %l24, !tbaa !29
  %t43 = call ptr @__olang_scope_or(ptr %v3, ptr %t42)
  %t44 = ptrtoint ptr %t43 to i64
  %t46 = inttoptr i64 %t44 to ptr
  %t47 = load ptr, ptr %l24, !tbaa !29
  %t49 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t46, ptr %t47, i32 %t41)
  store i64 %t49, ptr %l27
  br label %bb11
bb11:
  %t50 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t51 = load i64, ptr %l27, !tbaa !24
  %t53 = and i64 %t51, %t50
  %t55 = icmp ne i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  %t57 = load ptr, ptr %l4, !tbaa !29
  store ptr %t57, ptr %l31, !tbaa !29
  br label %bb14
bb13:
  store ptr null, ptr %l31, !tbaa !29
  br label %bb14
bb14:
  %t60 = load ptr, ptr %l31, !tbaa !29
  store ptr %t60, ptr %l16, !tbaa !29
  br label %bb20
bb15:
  br i1 true, label %bb16, label %bb17
bb16:
  br label %bb18
bb17:
  br label %bb19
bb18:
  store ptr null, ptr %l16, !tbaa !29
  br label %bb20
bb19:
  call void @__olang_check_failed(ptr @olang_loc_43639d7480e3f1b2_6970610da298d01e)
  unreachable
bb20:
  %t61 = load ptr, ptr %l16, !tbaa !29
  store ptr %t61, ptr %l7, !tbaa !29
  br label %bb36
bb21:
  %t62 = load ptr, ptr %l1, !tbaa !29
  store ptr %t62, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t63 = load ptr, ptr %l34, !tbaa !29
  %t64 = icmp ne ptr %t63, null
  br i1 %t64, label %bb22, label %bb23
bb22:
  %t66 = load ptr, ptr %l34, !tbaa !29
  %t67 = load i64, ptr %t66, !range !{i64 0, i64 18}
  %t69 = icmp eq i64 %t67, 5
  store i1 %t69, ptr %l35, !tbaa !21
  br label %bb23
bb23:
  %t70 = load i1, ptr %l35, !tbaa !21
  br i1 %t70, label %bb24, label %bb25
bb24:
  %t71 = load ptr, ptr %l1, !tbaa !29
  %t73 = getelementptr { i64, [5 x i64] }, ptr %t71, i32 0, i32 1
  %t74 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t73, i32 0, i32 1
  %t75 = load i32, ptr %t74
  store i32 %t75, ptr %l5, !tbaa !23
  %t77 = load ptr, ptr %l1, !tbaa !29
  %t79 = getelementptr { i64, [5 x i64] }, ptr %t77, i32 0, i32 1
  %t80 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t79, i32 0, i32 2
  %t81 = load ptr, ptr %t80
  store ptr %t81, ptr %l6, !tbaa !29
  br label %bb26
bb25:
  br label %bb31
bb26:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/typed:LocalUses", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  store ptr %t86, ptr %l43, !tbaa !29
  %t87 = load i32, ptr %l5, !tbaa !23
  %t88 = load ptr, ptr %l43, !tbaa !29
  %t89 = call ptr @__olang_scope_or(ptr %v3, ptr %t88)
  %t90 = ptrtoint ptr %t89 to i64
  %t92 = inttoptr i64 %t90 to ptr
  %t93 = load ptr, ptr %l43, !tbaa !29
  %t95 = call i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %t92, ptr %t93, i32 %t87)
  store i64 %t95, ptr %l46
  br label %bb27
bb27:
  %t96 = load i64, ptr @G_2ecompiler_2ftypes_2eWritable, !tbaa !24
  %t97 = load i64, ptr %l46, !tbaa !24
  %t99 = and i64 %t97, %t96
  %t101 = icmp ne i64 %t99, 0
  br i1 %t101, label %bb28, label %bb29
bb28:
  %t103 = load ptr, ptr %l6, !tbaa !29
  %t105 = getelementptr %"compiler/typed:Promote", ptr %t103, i32 0, i32 0
  %t106 = load ptr, ptr %t105, !tbaa !29
  store ptr %t106, ptr %l50, !tbaa !29
  br label %bb30
bb29:
  store ptr null, ptr %l50, !tbaa !29
  br label %bb30
bb30:
  %t109 = load ptr, ptr %l50, !tbaa !29
  store ptr %t109, ptr %l7, !tbaa !29
  br label %bb36
bb31:
  br i1 true, label %bb32, label %bb33
bb32:
  br label %bb34
bb33:
  br label %bb35
bb34:
  store ptr null, ptr %l7, !tbaa !29
  br label %bb36
bb35:
  call void @__olang_check_failed(ptr @olang_loc_13022d0d55ff9b33_d1cf61a4f0453a9f)
  unreachable
bb36:
  %t110 = load ptr, ptr %l7, !tbaa !29
  store ptr %t110, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2euse(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2, i1 %a3) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [1 x i64] }
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca i32
  %l11 = alloca i64
  %l14 = alloca ptr
  %l15 = alloca i1
  %l54 = alloca i64
  %l56 = alloca i1
  %l61 = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [1 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eplaceExprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t1, ptr %t2)
  br label %bb1
bb1:
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t6 = load ptr, ptr %l1, !tbaa !29
  %t9 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %t5, ptr %t6)
  store i64 %t9, ptr %l11
  br label %bb2
bb2:
  %t10 = load i64, ptr %l11, !tbaa !24
  store i64 %t10, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l4, !tbaa !24
  %t13 = icmp slt i64 %t11, 0
  br i1 %t13, label %bb3, label %bb4
bb3:
  %t15 = load ptr, ptr %l1, !tbaa !29
  store ptr %t15, ptr %l14, !tbaa !29
  store i1 false, ptr %l15, !tbaa !21
  %t16 = load ptr, ptr %l14, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb5, label %bb6
bb4:
  br label %bb17
bb5:
  %t19 = load ptr, ptr %l14, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 8}
  %t22 = icmp eq i64 %t20, 6
  store i1 %t22, ptr %l15, !tbaa !21
  br label %bb6
bb6:
  %t23 = load i1, ptr %l15, !tbaa !21
  br i1 %t23, label %bb7, label %bb8
bb7:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr { i64, [4 x i64] }, ptr %t24, i32 0, i32 1
  %t27 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t26, i32 0, i32 2
  %t28 = load ptr, ptr %t27
  store ptr %t28, ptr %l5, !tbaa !29
  br label %bb9
bb8:
  br label %bb11
bb9:
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t33 = load { i64, [1 x i64] }, ptr %l2
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t30, ptr %t31, { i64, [1 x i64] } %t33)
  br label %bb10
bb10:
  br label %bb16
bb11:
  br i1 true, label %bb12, label %bb13
bb12:
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_check_failed(ptr @olang_loc_4f6de7c744c3571c_6f8dca6bf99a5cd8)
  unreachable
bb16:
  br label %ret
bb17:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/typed:LocalUses", ptr %t37, i32 0, i32 23
  %t40 = load i64, ptr %t39, !tbaa !24
  %t42 = icmp sgt i64 %t40, 0
  br i1 %t42, label %bb18, label %bb19
bb18:
  %t44 = load ptr, ptr %l0, !tbaa !29
  %t46 = getelementptr %"compiler/typed:LocalUses", ptr %t44, i32 0, i32 5
  %t47 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t46, i64 %t47, i1 true)
  br label %bb20
bb19:
  br label %bb22
bb20:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/typed:LocalUses", ptr %t50, i32 0, i32 6
  %t53 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t52, i64 %t53, i1 true)
  br label %bb21
bb21:
  br label %ret
bb22:
  %t56 = load { i64, [1 x i64] }, ptr %l2
  %t58 = extractvalue { i64, [1 x i64] } %t56, 0
  %t59 = icmp eq i64 %t58, 0
  br i1 %t59, label %bb23, label %bb24
bb23:
  br label %bb27
bb24:
  %t61 = load { i64, [1 x i64] }, ptr %l2
  %t63 = extractvalue { i64, [1 x i64] } %t61, 0
  %t64 = icmp eq i64 %t63, 1
  br i1 %t64, label %bb25, label %bb26
bb25:
  br label %bb27
bb26:
  br label %bb28
bb27:
  br label %bb61
bb28:
  %t66 = load { i64, [1 x i64] }, ptr %l2
  %t68 = extractvalue { i64, [1 x i64] } %t66, 0
  %t69 = icmp eq i64 %t68, 2
  br i1 %t69, label %bb29, label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb36
bb31:
  br i1 %a3, label %bb32, label %bb33
bb32:
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t74 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eescape(ptr %v0, ptr %t73, i64 %t74)
  br label %bb34
bb33:
  br label %bb35
bb34:
  br label %bb35
bb35:
  br label %bb61
bb36:
  %t77 = load { i64, [1 x i64] }, ptr %l2
  %t79 = extractvalue { i64, [1 x i64] } %t77, 0
  %t80 = icmp eq i64 %t79, 3
  br i1 %t80, label %bb37, label %bb38
bb37:
  br label %bb39
bb38:
  br label %bb41
bb39:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/typed:LocalUses", ptr %t82, i32 0, i32 7
  %t85 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t84, i64 %t85, i1 true)
  br label %bb40
bb40:
  br label %bb61
bb41:
  %t88 = load { i64, [1 x i64] }, ptr %l2
  %t90 = extractvalue { i64, [1 x i64] } %t88, 0
  %t91 = icmp eq i64 %t90, 4
  br i1 %t91, label %bb42, label %bb43
bb42:
  %t93 = getelementptr { i64, [1 x i64] }, ptr %l2, i32 0, i32 1
  %t94 = getelementptr { i32 }, ptr %t93, i32 0, i32 0
  %t95 = load i32, ptr %t94
  store i32 %t95, ptr %l6, !tbaa !23
  br label %bb44
bb43:
  br label %bb55
bb44:
  %t97 = load ptr, ptr %l0, !tbaa !29
  %t99 = getelementptr %"compiler/typed:LocalUses", ptr %t97, i32 0, i32 8
  %t100 = load i32, ptr %l6, !tbaa !23
  %t102 = sext i32 %t100 to i64
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t99, i64 %t102)
  store i64 %t105, ptr %l54
  br label %bb45
bb45:
  %t106 = load i64, ptr %l54, !tbaa !24
  %t107 = icmp sge i64 %t106, 0
  br i1 %t107, label %bb46, label %bb47
bb46:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr %"compiler/typed:LocalUses", ptr %t109, i32 0, i32 8
  %t112 = load i32, ptr %l6, !tbaa !23
  %t114 = sext i32 %t112 to i64
  %t117 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t111, i64 %t114)
  store i64 %t117, ptr %l61
  br label %bb48
bb47:
  store i1 false, ptr %l56, !tbaa !21
  br label %bb49
bb48:
  %t118 = load i64, ptr %l4, !tbaa !24
  %t119 = load i64, ptr %l61, !tbaa !24
  %t121 = icmp ne i64 %t119, %t118
  store i1 %t121, ptr %l56, !tbaa !21
  br label %bb49
bb49:
  %t123 = load i1, ptr %l56, !tbaa !21
  br i1 %t123, label %bb50, label %bb51
bb50:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eescape(ptr %v0, ptr %t124, i64 %t125)
  br label %bb52
bb51:
  br label %bb53
bb52:
  br label %bb53
bb53:
  %t128 = load ptr, ptr %l0, !tbaa !29
  %t130 = getelementptr %"compiler/typed:LocalUses", ptr %t128, i32 0, i32 8
  %t131 = load i32, ptr %l6, !tbaa !23
  %t133 = sext i32 %t131 to i64
  %t134 = load i64, ptr %l4, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %t130, i64 %t133, i64 %t134)
  br label %bb54
bb54:
  br label %bb61
bb55:
  %t138 = load { i64, [1 x i64] }, ptr %l2
  %t140 = extractvalue { i64, [1 x i64] } %t138, 0
  %t141 = icmp eq i64 %t140, 5
  br i1 %t141, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb60
bb58:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t144 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eescape(ptr %v0, ptr %t143, i64 %t144)
  br label %bb59
bb59:
  br label %bb61
bb60:
  call void @__olang_check_failed(ptr @olang_loc_2bdab9da3f4d_ded05e4518f32fa9)
  unreachable
bb61:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropDerivedOf(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
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
  %l44 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l49 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s2 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l2, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 18
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
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
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
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
  %t55 = getelementptr %"compiler/typed:Plan", ptr %t53, i32 0, i32 18
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l38
  br label %bb12
bb12:
  %t61 = load ptr, ptr %l38, !tbaa !29
  %t63 = icmp eq ptr %t61, %a1
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Plan", ptr %t65, i32 0, i32 19
  %t68 = load i64, ptr %l7, !tbaa !24
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hb773ac01a07f3f9e7f749c328573d0ee(ptr %v0, ptr %v2, ptr %t67, i64 %t68)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l44
  br label %bb15
bb14:
  br label %bb17
bb15:
  %t73 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v2, ptr %l44)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t73, ptr %l46
  br label %bb16
bb16:
  call void @__olang_scope_close(ptr %s2)
  %t74 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t74, ptr %rv
  br label %ret
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t75 = load i64, ptr %l6, !tbaa !24
  %t77 = add i64 %t75, 1
  store i64 %t77, ptr %l6, !tbaa !24
  br label %bb8
bb19:
  %t79 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t79, ptr %l49
  br label %bb20
bb20:
  %t80 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l49
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t80, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eDropHome(ptr %v0, ptr %v1, ptr %a0, ptr %a1, { i64, [2 x i64] } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, [2 x i64] }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l11 = alloca i64
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca ptr
  %s2 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store { i64, [2 x i64] } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  store i64 0, ptr %l3, !tbaa !24
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 20
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l11
  br label %bb1
bb1:
  %t6 = load i64, ptr %l11, !tbaa !24
  store i64 %t6, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l15, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t55 = getelementptr %"compiler/typed:Plan", ptr %t53, i32 0, i32 20
  %t56 = load i64, ptr %l8, !tbaa !24
  %t59 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %s2, ptr %t55, i64 %t56)
  store ptr %t59, ptr %l39
  br label %bb12
bb12:
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t61 = load ptr, ptr %l39, !tbaa !29
  %t63 = icmp eq ptr %t61, %t60
  br i1 %t63, label %bb13, label %bb14
bb13:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr %"compiler/typed:Plan", ptr %t65, i32 0, i32 21
  %t68 = load i64, ptr %l8, !tbaa !24
  %t69 = load { i64, [2 x i64] }, ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eSetAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t67, i64 %t68, { i64, [2 x i64] } %t69)
  br label %bb15
bb14:
  br label %bb16
bb15:
  call void @__olang_scope_close(ptr %s2)
  br label %ret
bb16:
  call void @__olang_scope_close(ptr %s2)
  br label %bb17
bb17:
  %t73 = load i64, ptr %l7, !tbaa !24
  %t75 = add i64 %t73, 1
  store i64 %t75, ptr %l7, !tbaa !24
  br label %bb8
bb18:
  %t77 = load ptr, ptr %l0, !tbaa !29
  %t79 = getelementptr %"compiler/typed:Plan", ptr %t77, i32 0, i32 20
  %t80 = load ptr, ptr %l1, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %t79, ptr %t80)
  br label %bb19
bb19:
  %t83 = load ptr, ptr %l0, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Plan", ptr %t83, i32 0, i32 21
  %t86 = load { i64, [2 x i64] }, ptr %l2
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ePush_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t85, { i64, [2 x i64] } %t86)
  br label %bb20
bb20:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePass(ptr %v0, ptr %v1, ptr %a0, i32 %a1, { i64, ptr } %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca { i64, ptr }
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l8 = alloca { i64, ptr }
  %l10 = alloca i64
  %l13 = alloca i64
  %l16 = alloca { i64, ptr }
  %l28 = alloca { i64, ptr }
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store { i64, ptr } %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 12
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l8, !tbaa !27
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  store i64 %t7, ptr %l10, !tbaa !24
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Plan", ptr %t8, i32 0, i32 14
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eLen_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l13
  br label %bb1
bb1:
  %t13 = load i64, ptr %l13, !tbaa !24
  %t14 = add i64 %t13, 1
  %t16 = load i64, ptr %l10, !tbaa !24
  %t17 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t18 = load ptr, ptr %t17, !tbaa !27
  %t19 = getelementptr i64, ptr %t18, i64 %t16
  store i64 %t14, ptr %t19, !tbaa !34
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Plan", ptr %t20, i32 0, i32 13
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l16, !tbaa !27
  %t24 = load i32, ptr %l1, !tbaa !23
  %t26 = sext i32 %t24 to i64
  %t27 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t32 = getelementptr { i64, ptr }, ptr %l16, i32 0, i32 1
  %t33 = load ptr, ptr %t32, !tbaa !27
  %t34 = getelementptr i64, ptr %t33, i64 %t26
  store i64 %t29, ptr %t34, !tbaa !34
  %t35 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t35, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t39 = extractvalue { i64, ptr } %t37, 0
  store i64 %t39, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t41 = load i64, ptr %l4, !tbaa !24
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = icmp slt i64 %t41, %t42
  %t47 = xor i1 %t45, true
  br i1 %t47, label %bb3, label %bb4
bb3:
  br label %bb8
bb4:
  br label %bb5
bb5:
  %t49 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t49, ptr %l28, !tbaa !27
  %t50 = load i64, ptr %l4, !tbaa !24
  %t52 = getelementptr { i64, ptr }, ptr %l28, i32 0, i32 1
  %t53 = load ptr, ptr %t52, !tbaa !27
  %t54 = getelementptr { i64, [2 x i64] }, ptr %t53, i64 %t50
  %t55 = load { i64, [2 x i64] }, ptr %t54
  %t57 = load ptr, ptr %l0, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Plan", ptr %t57, i32 0, i32 14
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ePush_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t59, { i64, [2 x i64] } %t55)
  br label %bb6
bb6:
  br label %bb7
bb7:
  %t63 = load i64, ptr %l4, !tbaa !24
  %t65 = add i64 %t63, 1
  store i64 %t65, ptr %l4, !tbaa !24
  br label %bb2
bb8:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassDerived(ptr %v0, ptr %v1, ptr %a0, i32 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2) #0 {
entry:
  %l4 = alloca ptr
  %l6 = alloca i64
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s0 = alloca %olang.scope
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t3 = getelementptr %"compiler/typed:Plan", ptr %a0, i32 0, i32 17
  store ptr %t3, ptr %l4, !tbaa !29
  %t6 = sext i32 %a1 to i64
  store i64 %t6, ptr %l6, !tbaa !24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2, ptr %l7
  %t9 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %s0, ptr %l7)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t9, ptr %l9
  br label %bb1
bb1:
  %t10 = load ptr, ptr %l4, !tbaa !29
  %t11 = load i64, ptr %l6, !tbaa !24
  %t12 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hca132088ebdf08d0820c179196416125(ptr %v0, ptr %s0, ptr %t10, i64 %t11, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12)
  br label %bb2
bb2:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local { i64, [2 x i64] } @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2ePassed(ptr %v0, ptr %a0, i32 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca i64
  %l3 = alloca i64
  %l5 = alloca { i64, ptr }
  %l11 = alloca i1
  %l14 = alloca { i64, ptr }
  %l26 = alloca { i64, [2 x i64] }
  %rv = alloca { i64, [2 x i64] }
  %t36 = alloca { i64, [2 x i64] }, align 8
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  store i64 %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Plan", ptr %t1, i32 0, i32 12
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l5, !tbaa !27
  %t5 = load i32, ptr %l1, !tbaa !23
  %t7 = sext i32 %t5 to i64
  %t9 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t10 = load ptr, ptr %t9, !tbaa !27
  %t11 = getelementptr i64, ptr %t10, i64 %t7
  %t12 = load i64, ptr %t11, !tbaa !34
  store i64 %t12, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp eq i64 %t14, 0
  br i1 %t16, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l11, !tbaa !21
  br label %bb3
bb2:
  %t18 = load i64, ptr %l2, !tbaa !24
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Plan", ptr %t19, i32 0, i32 13
  %t22 = load { i64, ptr }, ptr %t21, !tbaa !27
  store { i64, ptr } %t22, ptr %l14, !tbaa !27
  %t23 = load i32, ptr %l1, !tbaa !23
  %t25 = sext i32 %t23 to i64
  %t27 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i64, ptr %t28, i64 %t25
  %t30 = load i64, ptr %t29, !tbaa !34
  %t33 = icmp sge i64 %t18, %t30
  store i1 %t33, ptr %l11, !tbaa !21
  br label %bb3
bb3:
  %t35 = load i1, ptr %l11, !tbaa !21
  br i1 %t35, label %bb4, label %bb5
bb4:
  store { i64, [2 x i64] } zeroinitializer, ptr %t36
  %t37 = getelementptr { i64, [2 x i64] }, ptr %t36, i32 0, i32 0
  store i64 0, ptr %t37
  %t38 = load { i64, [2 x i64] }, ptr %t36
  store { i64, [2 x i64] } %t38, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr %"compiler/typed:Plan", ptr %t40, i32 0, i32 14
  %t43 = load i64, ptr %l3, !tbaa !24
  %t45 = sub i64 %t43, 1
  %t46 = load i64, ptr %l2, !tbaa !24
  %t49 = add i64 %t45, %t46
  %t52 = call { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %t42, i64 %t49)
  store { i64, [2 x i64] } %t52, ptr %l26
  br label %bb7
bb7:
  %t53 = load { i64, [2 x i64] }, ptr %l26
  store { i64, [2 x i64] } %t53, ptr %rv
  br label %ret
ret:
  %rr = load { i64, [2 x i64] }, ptr %rv
  ret { i64, [2 x i64] } %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aPlan_2eTwin(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l5 = alloca i1
  %l14 = alloca { i64, ptr }
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i32, ptr %l1, !tbaa !23
  %t3 = sext i32 %t1 to i64
  %t5 = icmp slt i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 true, ptr %l5, !tbaa !21
  br label %bb3
bb2:
  %t7 = load i32, ptr %l1, !tbaa !23
  %t9 = sext i32 %t7 to i64
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr %"compiler/typed:Plan", ptr %t10, i32 0, i32 11
  %t13 = load { i64, ptr }, ptr %t12, !tbaa !27
  %t15 = extractvalue { i64, ptr } %t13, 0
  %t18 = icmp sge i64 %t9, %t15
  store i1 %t18, ptr %l5, !tbaa !21
  br label %bb3
bb3:
  %t20 = load i1, ptr %l5, !tbaa !21
  br i1 %t20, label %bb4, label %bb5
bb4:
  store i64 -1, ptr %rv
  br label %ret
bb5:
  br label %bb6
bb6:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Plan", ptr %t22, i32 0, i32 11
  %t25 = load { i64, ptr }, ptr %t24, !tbaa !27
  store { i64, ptr } %t25, ptr %l14, !tbaa !27
  %t26 = load i32, ptr %l1, !tbaa !23
  %t28 = sext i32 %t26 to i64
  %t30 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t31 = load ptr, ptr %t30, !tbaa !27
  %t32 = getelementptr i64, ptr %t31, i64 %t28
  %t33 = load i64, ptr %t32, !tbaa !34
  store i64 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca %"compiler/source:Span"
  %l4 = alloca %"compiler/source:Span"
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca %"compiler/source:Span"
  %l7 = alloca ptr
  %l8 = alloca i1
  %l13 = alloca ptr
  %l14 = alloca i1
  %l19 = alloca ptr
  %l20 = alloca i1
  %l25 = alloca ptr
  %l26 = alloca i1
  %l31 = alloca ptr
  %l32 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %l44 = alloca ptr
  %l45 = alloca i1
  %l50 = alloca ptr
  %l51 = alloca i1
  %l56 = alloca ptr
  %l57 = alloca i1
  %l62 = alloca ptr
  %l63 = alloca i1
  %l69 = alloca ptr
  %l70 = alloca i1
  %l76 = alloca ptr
  %l77 = alloca i1
  %l82 = alloca ptr
  %l83 = alloca i1
  %l88 = alloca ptr
  %l89 = alloca i1
  %l94 = alloca ptr
  %l95 = alloca i1
  %l100 = alloca ptr
  %l101 = alloca i1
  %l107 = alloca ptr
  %l108 = alloca i1
  %rv = alloca %"compiler/source:Span"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  store ptr %t1, ptr %l7, !tbaa !29
  store i1 false, ptr %l8, !tbaa !21
  %t2 = load ptr, ptr %l7, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l7, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l8, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l8, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l1
  br label %bb21
bb4:
  %t16 = load ptr, ptr %l0, !tbaa !29
  store ptr %t16, ptr %l13, !tbaa !29
  store i1 false, ptr %l14, !tbaa !21
  %t17 = load ptr, ptr %l13, !tbaa !29
  %t18 = icmp ne ptr %t17, null
  br i1 %t18, label %bb5, label %bb6
bb5:
  %t20 = load ptr, ptr %l13, !tbaa !29
  %t21 = load i64, ptr %t20, !range !{i64 0, i64 17}
  %t23 = icmp eq i64 %t21, 1
  store i1 %t23, ptr %l14, !tbaa !21
  br label %bb6
bb6:
  %t24 = load i1, ptr %l14, !tbaa !21
  br i1 %t24, label %bb7, label %bb8
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr { i64, [3 x i64] }, ptr %t25, i32 0, i32 1
  %t28 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t27, i32 0, i32 0
  %t29 = load %"compiler/source:Span", ptr %t28
  store %"compiler/source:Span" %t29, ptr %l1
  br label %bb21
bb8:
  %t31 = load ptr, ptr %l0, !tbaa !29
  store ptr %t31, ptr %l19, !tbaa !29
  store i1 false, ptr %l20, !tbaa !21
  %t32 = load ptr, ptr %l19, !tbaa !29
  %t33 = icmp ne ptr %t32, null
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load ptr, ptr %l19, !tbaa !29
  %t36 = load i64, ptr %t35, !range !{i64 0, i64 17}
  %t38 = icmp eq i64 %t36, 2
  store i1 %t38, ptr %l20, !tbaa !21
  br label %bb10
bb10:
  %t39 = load i1, ptr %l20, !tbaa !21
  br i1 %t39, label %bb11, label %bb12
bb11:
  %t40 = load ptr, ptr %l0, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", ptr }, ptr %t42, i32 0, i32 0
  %t44 = load %"compiler/source:Span", ptr %t43
  store %"compiler/source:Span" %t44, ptr %l1
  br label %bb21
bb12:
  %t46 = load ptr, ptr %l0, !tbaa !29
  store ptr %t46, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t47 = load ptr, ptr %l25, !tbaa !29
  %t48 = icmp ne ptr %t47, null
  br i1 %t48, label %bb13, label %bb14
bb13:
  %t50 = load ptr, ptr %l25, !tbaa !29
  %t51 = load i64, ptr %t50, !range !{i64 0, i64 17}
  %t53 = icmp eq i64 %t51, 3
  store i1 %t53, ptr %l26, !tbaa !21
  br label %bb14
bb14:
  %t54 = load i1, ptr %l26, !tbaa !21
  br i1 %t54, label %bb15, label %bb16
bb15:
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t57 = getelementptr { i64, [3 x i64] }, ptr %t55, i32 0, i32 1
  %t58 = getelementptr { %"compiler/source:Span", ptr }, ptr %t57, i32 0, i32 0
  %t59 = load %"compiler/source:Span", ptr %t58
  store %"compiler/source:Span" %t59, ptr %l1
  br label %bb21
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  store ptr %t61, ptr %l31, !tbaa !29
  store i1 false, ptr %l32, !tbaa !21
  %t62 = load ptr, ptr %l31, !tbaa !29
  %t63 = icmp ne ptr %t62, null
  br i1 %t63, label %bb17, label %bb18
bb17:
  %t65 = load ptr, ptr %l31, !tbaa !29
  %t66 = load i64, ptr %t65, !range !{i64 0, i64 17}
  %t68 = icmp eq i64 %t66, 4
  store i1 %t68, ptr %l32, !tbaa !21
  br label %bb18
bb18:
  %t69 = load i1, ptr %l32, !tbaa !21
  br i1 %t69, label %bb19, label %bb20
bb19:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr { i64, [3 x i64] }, ptr %t70, i32 0, i32 1
  %t73 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t72, i32 0, i32 0
  %t74 = load %"compiler/source:Span", ptr %t73
  store %"compiler/source:Span" %t74, ptr %l1
  br label %bb21
bb20:
  br label %bb22
bb21:
  %t76 = load %"compiler/source:Span", ptr %l1
  store %"compiler/source:Span" %t76, ptr %l6
  br label %bb79
bb22:
  %t78 = load ptr, ptr %l0, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb23, label %bb24
bb23:
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 17}
  %t85 = icmp eq i64 %t83, 5
  store i1 %t85, ptr %l39, !tbaa !21
  br label %bb24
bb24:
  %t86 = load i1, ptr %l39, !tbaa !21
  br i1 %t86, label %bb25, label %bb26
bb25:
  %t87 = load ptr, ptr %l0, !tbaa !29
  %t89 = getelementptr { i64, [3 x i64] }, ptr %t87, i32 0, i32 1
  %t90 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t89, i32 0, i32 0
  %t91 = load %"compiler/source:Span", ptr %t90
  store %"compiler/source:Span" %t91, ptr %l2
  br label %bb43
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  store ptr %t93, ptr %l44, !tbaa !29
  store i1 false, ptr %l45, !tbaa !21
  %t94 = load ptr, ptr %l44, !tbaa !29
  %t95 = icmp ne ptr %t94, null
  br i1 %t95, label %bb27, label %bb28
bb27:
  %t97 = load ptr, ptr %l44, !tbaa !29
  %t98 = load i64, ptr %t97, !range !{i64 0, i64 17}
  %t100 = icmp eq i64 %t98, 6
  store i1 %t100, ptr %l45, !tbaa !21
  br label %bb28
bb28:
  %t101 = load i1, ptr %l45, !tbaa !21
  br i1 %t101, label %bb29, label %bb30
bb29:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t104 = getelementptr { i64, [3 x i64] }, ptr %t102, i32 0, i32 1
  %t105 = getelementptr { %"compiler/source:Span", ptr }, ptr %t104, i32 0, i32 0
  %t106 = load %"compiler/source:Span", ptr %t105
  store %"compiler/source:Span" %t106, ptr %l2
  br label %bb43
bb30:
  %t108 = load ptr, ptr %l0, !tbaa !29
  store ptr %t108, ptr %l50, !tbaa !29
  store i1 false, ptr %l51, !tbaa !21
  %t109 = load ptr, ptr %l50, !tbaa !29
  %t110 = icmp ne ptr %t109, null
  br i1 %t110, label %bb31, label %bb32
bb31:
  %t112 = load ptr, ptr %l50, !tbaa !29
  %t113 = load i64, ptr %t112, !range !{i64 0, i64 17}
  %t115 = icmp eq i64 %t113, 7
  store i1 %t115, ptr %l51, !tbaa !21
  br label %bb32
bb32:
  %t116 = load i1, ptr %l51, !tbaa !21
  br i1 %t116, label %bb33, label %bb34
bb33:
  %t117 = load ptr, ptr %l0, !tbaa !29
  %t119 = getelementptr { i64, [3 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t119, i32 0, i32 0
  %t121 = load %"compiler/source:Span", ptr %t120
  store %"compiler/source:Span" %t121, ptr %l2
  br label %bb43
bb34:
  %t123 = load ptr, ptr %l0, !tbaa !29
  store ptr %t123, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t124 = load ptr, ptr %l56, !tbaa !29
  %t125 = icmp ne ptr %t124, null
  br i1 %t125, label %bb35, label %bb36
bb35:
  %t127 = load ptr, ptr %l56, !tbaa !29
  %t128 = load i64, ptr %t127, !range !{i64 0, i64 17}
  %t130 = icmp eq i64 %t128, 9
  store i1 %t130, ptr %l57, !tbaa !21
  br label %bb36
bb36:
  %t131 = load i1, ptr %l57, !tbaa !21
  br i1 %t131, label %bb37, label %bb38
bb37:
  %t132 = load ptr, ptr %l0, !tbaa !29
  %t134 = getelementptr { i64, [3 x i64] }, ptr %t132, i32 0, i32 1
  %t135 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t134, i32 0, i32 0
  %t136 = load %"compiler/source:Span", ptr %t135
  store %"compiler/source:Span" %t136, ptr %l2
  br label %bb43
bb38:
  %t138 = load ptr, ptr %l0, !tbaa !29
  store ptr %t138, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t139 = load ptr, ptr %l62, !tbaa !29
  %t140 = icmp ne ptr %t139, null
  br i1 %t140, label %bb39, label %bb40
bb39:
  %t142 = load ptr, ptr %l62, !tbaa !29
  %t143 = load i64, ptr %t142, !range !{i64 0, i64 17}
  %t145 = icmp eq i64 %t143, 10
  store i1 %t145, ptr %l63, !tbaa !21
  br label %bb40
bb40:
  %t146 = load i1, ptr %l63, !tbaa !21
  br i1 %t146, label %bb41, label %bb42
bb41:
  %t147 = load ptr, ptr %l0, !tbaa !29
  %t149 = getelementptr { i64, [3 x i64] }, ptr %t147, i32 0, i32 1
  %t150 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t149, i32 0, i32 0
  %t151 = load %"compiler/source:Span", ptr %t150
  store %"compiler/source:Span" %t151, ptr %l2
  br label %bb43
bb42:
  br label %bb44
bb43:
  %t153 = load %"compiler/source:Span", ptr %l2
  store %"compiler/source:Span" %t153, ptr %l6
  br label %bb79
bb44:
  %t155 = load ptr, ptr %l0, !tbaa !29
  store ptr %t155, ptr %l69, !tbaa !29
  store i1 false, ptr %l70, !tbaa !21
  %t156 = load ptr, ptr %l69, !tbaa !29
  %t157 = icmp ne ptr %t156, null
  br i1 %t157, label %bb45, label %bb46
bb45:
  %t159 = load ptr, ptr %l69, !tbaa !29
  %t160 = load i64, ptr %t159, !range !{i64 0, i64 17}
  %t162 = icmp eq i64 %t160, 8
  store i1 %t162, ptr %l70, !tbaa !21
  br label %bb46
bb46:
  %t163 = load i1, ptr %l70, !tbaa !21
  br i1 %t163, label %bb47, label %bb48
bb47:
  %t164 = load ptr, ptr %l0, !tbaa !29
  %t166 = getelementptr { i64, [3 x i64] }, ptr %t164, i32 0, i32 1
  %t167 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t166, i32 0, i32 0
  %t168 = load %"compiler/source:Span", ptr %t167
  store %"compiler/source:Span" %t168, ptr %l3
  br label %bb49
bb48:
  br label %bb50
bb49:
  %t170 = load %"compiler/source:Span", ptr %l3
  store %"compiler/source:Span" %t170, ptr %l6
  br label %bb79
bb50:
  %t172 = load ptr, ptr %l0, !tbaa !29
  store ptr %t172, ptr %l76, !tbaa !29
  store i1 false, ptr %l77, !tbaa !21
  %t173 = load ptr, ptr %l76, !tbaa !29
  %t174 = icmp ne ptr %t173, null
  br i1 %t174, label %bb51, label %bb52
bb51:
  %t176 = load ptr, ptr %l76, !tbaa !29
  %t177 = load i64, ptr %t176, !range !{i64 0, i64 17}
  %t179 = icmp eq i64 %t177, 11
  store i1 %t179, ptr %l77, !tbaa !21
  br label %bb52
bb52:
  %t180 = load i1, ptr %l77, !tbaa !21
  br i1 %t180, label %bb53, label %bb54
bb53:
  %t181 = load ptr, ptr %l0, !tbaa !29
  %t183 = getelementptr { i64, [3 x i64] }, ptr %t181, i32 0, i32 1
  %t184 = getelementptr { %"compiler/source:Span", ptr }, ptr %t183, i32 0, i32 0
  %t185 = load %"compiler/source:Span", ptr %t184
  store %"compiler/source:Span" %t185, ptr %l4
  br label %bb71
bb54:
  %t187 = load ptr, ptr %l0, !tbaa !29
  store ptr %t187, ptr %l82, !tbaa !29
  store i1 false, ptr %l83, !tbaa !21
  %t188 = load ptr, ptr %l82, !tbaa !29
  %t189 = icmp ne ptr %t188, null
  br i1 %t189, label %bb55, label %bb56
bb55:
  %t191 = load ptr, ptr %l82, !tbaa !29
  %t192 = load i64, ptr %t191, !range !{i64 0, i64 17}
  %t194 = icmp eq i64 %t192, 12
  store i1 %t194, ptr %l83, !tbaa !21
  br label %bb56
bb56:
  %t195 = load i1, ptr %l83, !tbaa !21
  br i1 %t195, label %bb57, label %bb58
bb57:
  %t196 = load ptr, ptr %l0, !tbaa !29
  %t198 = getelementptr { i64, [3 x i64] }, ptr %t196, i32 0, i32 1
  %t199 = getelementptr { %"compiler/source:Span", ptr }, ptr %t198, i32 0, i32 0
  %t200 = load %"compiler/source:Span", ptr %t199
  store %"compiler/source:Span" %t200, ptr %l4
  br label %bb71
bb58:
  %t202 = load ptr, ptr %l0, !tbaa !29
  store ptr %t202, ptr %l88, !tbaa !29
  store i1 false, ptr %l89, !tbaa !21
  %t203 = load ptr, ptr %l88, !tbaa !29
  %t204 = icmp ne ptr %t203, null
  br i1 %t204, label %bb59, label %bb60
bb59:
  %t206 = load ptr, ptr %l88, !tbaa !29
  %t207 = load i64, ptr %t206, !range !{i64 0, i64 17}
  %t209 = icmp eq i64 %t207, 13
  store i1 %t209, ptr %l89, !tbaa !21
  br label %bb60
bb60:
  %t210 = load i1, ptr %l89, !tbaa !21
  br i1 %t210, label %bb61, label %bb62
bb61:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t213 = getelementptr { i64, [3 x i64] }, ptr %t211, i32 0, i32 1
  %t214 = getelementptr { %"compiler/source:Span", ptr }, ptr %t213, i32 0, i32 0
  %t215 = load %"compiler/source:Span", ptr %t214
  store %"compiler/source:Span" %t215, ptr %l4
  br label %bb71
bb62:
  %t217 = load ptr, ptr %l0, !tbaa !29
  store ptr %t217, ptr %l94, !tbaa !29
  store i1 false, ptr %l95, !tbaa !21
  %t218 = load ptr, ptr %l94, !tbaa !29
  %t219 = icmp ne ptr %t218, null
  br i1 %t219, label %bb63, label %bb64
bb63:
  %t221 = load ptr, ptr %l94, !tbaa !29
  %t222 = load i64, ptr %t221, !range !{i64 0, i64 17}
  %t224 = icmp eq i64 %t222, 14
  store i1 %t224, ptr %l95, !tbaa !21
  br label %bb64
bb64:
  %t225 = load i1, ptr %l95, !tbaa !21
  br i1 %t225, label %bb65, label %bb66
bb65:
  %t226 = load ptr, ptr %l0, !tbaa !29
  %t228 = getelementptr { i64, [3 x i64] }, ptr %t226, i32 0, i32 1
  %t229 = getelementptr { %"compiler/source:Span", ptr }, ptr %t228, i32 0, i32 0
  %t230 = load %"compiler/source:Span", ptr %t229
  store %"compiler/source:Span" %t230, ptr %l4
  br label %bb71
bb66:
  %t232 = load ptr, ptr %l0, !tbaa !29
  store ptr %t232, ptr %l100, !tbaa !29
  store i1 false, ptr %l101, !tbaa !21
  %t233 = load ptr, ptr %l100, !tbaa !29
  %t234 = icmp ne ptr %t233, null
  br i1 %t234, label %bb67, label %bb68
bb67:
  %t236 = load ptr, ptr %l100, !tbaa !29
  %t237 = load i64, ptr %t236, !range !{i64 0, i64 17}
  %t239 = icmp eq i64 %t237, 15
  store i1 %t239, ptr %l101, !tbaa !21
  br label %bb68
bb68:
  %t240 = load i1, ptr %l101, !tbaa !21
  br i1 %t240, label %bb69, label %bb70
bb69:
  %t241 = load ptr, ptr %l0, !tbaa !29
  %t243 = getelementptr { i64, [3 x i64] }, ptr %t241, i32 0, i32 1
  %t244 = getelementptr { %"compiler/source:Span", ptr }, ptr %t243, i32 0, i32 0
  %t245 = load %"compiler/source:Span", ptr %t244
  store %"compiler/source:Span" %t245, ptr %l4
  br label %bb71
bb70:
  br label %bb72
bb71:
  %t247 = load %"compiler/source:Span", ptr %l4
  store %"compiler/source:Span" %t247, ptr %l6
  br label %bb79
bb72:
  %t249 = load ptr, ptr %l0, !tbaa !29
  store ptr %t249, ptr %l107, !tbaa !29
  store i1 false, ptr %l108, !tbaa !21
  %t250 = load ptr, ptr %l107, !tbaa !29
  %t251 = icmp ne ptr %t250, null
  br i1 %t251, label %bb73, label %bb74
bb73:
  %t253 = load ptr, ptr %l107, !tbaa !29
  %t254 = load i64, ptr %t253, !range !{i64 0, i64 17}
  %t256 = icmp eq i64 %t254, 16
  store i1 %t256, ptr %l108, !tbaa !21
  br label %bb74
bb74:
  %t257 = load i1, ptr %l108, !tbaa !21
  br i1 %t257, label %bb75, label %bb76
bb75:
  %t258 = load ptr, ptr %l0, !tbaa !29
  %t260 = getelementptr { i64, [3 x i64] }, ptr %t258, i32 0, i32 1
  %t261 = getelementptr { %"compiler/source:Span", ptr }, ptr %t260, i32 0, i32 0
  %t262 = load %"compiler/source:Span", ptr %t261
  store %"compiler/source:Span" %t262, ptr %l5
  br label %bb77
bb76:
  br label %bb78
bb77:
  %t264 = load %"compiler/source:Span", ptr %l5
  store %"compiler/source:Span" %t264, ptr %l6
  br label %bb79
bb78:
  call void @__olang_check_failed(ptr @olang_loc_d42dce2e5a8639a6_22ec82fe09d5fbba)
  unreachable
bb79:
  %t266 = load %"compiler/source:Span", ptr %l6
  store %"compiler/source:Span" %t266, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/source:Span", ptr %rv
  ret %"compiler/source:Span" %rr
}

define dso_local i32 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eAcross(ptr %v0, ptr %a0, i64 %a1, i64 %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i32
  %l12 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca i64
  %l18 = alloca i64
  %l22 = alloca i64
  %rv = alloca i32
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 10
  %t7 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  %t8 = extractvalue { i32, i64 } %t7, 1
  %t9 = extractvalue { i32, i64 } %t7, 0
  store i32 %t9, ptr %l9
  %t10 = icmp ne i32 %t9, 0
  br i1 %t10, label %bb2, label %ok.11, !prof !99
ok.11:
  store i64 %t8, ptr %l8
  br label %bb1
bb1:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  br label %bb3
bb3:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %l3, !tbaa !24
  %t14 = load i64, ptr %l3, !tbaa !24
  %t16 = icmp slt i64 %t14, 0
  br i1 %t16, label %bb5, label %bb6
bb5:
  store i32 -1, ptr %l12, !tbaa !23
  br label %bb9
bb6:
  %t18 = load ptr, ptr %l0, !tbaa !29
  %t20 = getelementptr %"compiler/typed:Versions", ptr %t18, i32 0, i32 11
  store ptr %t20, ptr %l14, !tbaa !29
  %t21 = load i64, ptr %l3, !tbaa !24
  store i64 %t21, ptr %l15, !tbaa !24
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Versions", ptr %t22, i32 0, i32 3
  %t26 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t24)
  store i64 %t26, ptr %l18
  br label %bb7
bb7:
  %t27 = load i64, ptr %l15, !tbaa !24
  %t28 = load i64, ptr %l18, !tbaa !24
  %t29 = mul i64 %t27, %t28
  %t33 = add i64 %t29, %a2
  %t34 = load ptr, ptr %l14, !tbaa !29
  %t36 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t34, i64 %t33)
  store i64 %t36, ptr %l22
  br label %bb8
bb8:
  %t37 = load i64, ptr %l22, !tbaa !24
  %t38 = trunc i64 %t37 to i32
  store i32 %t38, ptr %l12, !tbaa !23
  br label %bb9
bb9:
  %t41 = load i32, ptr %l12, !tbaa !23
  store i32 %t41, ptr %rv
  br label %ret
ret:
  %rr = load i32, ptr %rv
  ret i32 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eNamed(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l5 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  %t3 = getelementptr %"compiler/typed:Versions", ptr %a0, i32 0, i32 10
  %t7 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %t3, i64 %a1)
  store i1 %t7, ptr %l5
  br label %bb1
bb1:
  %t8 = load i1, ptr %l5, !tbaa !21
  store i1 %t8, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eSigOf(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  %l4 = alloca i64
  %l8 = alloca i64
  %rv = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load i64, ptr %l1, !tbaa !24
  %t3 = icmp slt i64 %t1, 0
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 -1, ptr %l4, !tbaa !24
  br label %bb4
bb2:
  %t7 = getelementptr %"compiler/typed:Versions", ptr %a0, i32 0, i32 12
  %t8 = load i64, ptr %l1, !tbaa !24
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t7, i64 %t8)
  store i64 %t11, ptr %l8
  br label %bb3
bb3:
  %t12 = load i64, ptr %l8, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t13 = load i64, ptr %l4, !tbaa !24
  store i64 %t13, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %v1, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %lp1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l11 = alloca i64
  %l13 = alloca i64
  %l18 = alloca i64
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l5
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v1, i64 32, i64 8)
  store ptr %t2, ptr %lp1
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t4 = load ptr, ptr %lp1
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  %t5 = load ptr, ptr %l0, !tbaa !29
  %t7 = getelementptr %"compiler/typed:Versions", ptr %t5, i32 0, i32 20
  %t8 = load i1, ptr %t7, !tbaa !21
  br i1 %t8, label %bb2, label %bb3
bb2:
  %t10 = load ptr, ptr %lp1
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %rv
  br label %ret
bb3:
  br label %bb4
bb4:
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:Versions", ptr %t13, i32 0, i32 14
  store ptr %t15, ptr %l2, !tbaa !29
  store i64 0, ptr %l3, !tbaa !24
  br label %bb5
bb5:
  %t17 = load i64, ptr %l3, !tbaa !24
  store i64 %t17, ptr %l11, !tbaa !24
  %t18 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t18)
  store i64 %t20, ptr %l13
  br label %bb6
bb6:
  %t21 = load i64, ptr %l11, !tbaa !24
  %t22 = load i64, ptr %l13, !tbaa !24
  %t23 = icmp slt i64 %t21, %t22
  %t25 = xor i1 %t23, true
  br i1 %t25, label %bb7, label %bb8
bb7:
  br label %bb13
bb8:
  br label %bb9
bb9:
  %t27 = load ptr, ptr %l2, !tbaa !29
  %t28 = load i64, ptr %l3, !tbaa !24
  %t31 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t27, i64 %t28)
  store i64 %t31, ptr %l18
  br label %bb10
bb10:
  %t32 = load i64, ptr %l18, !tbaa !24
  %t33 = load ptr, ptr %lp1
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v1, ptr %t33, i64 %t32)
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t37 = load i64, ptr %l3, !tbaa !24
  %t39 = add i64 %t37, 1
  store i64 %t39, ptr %l3, !tbaa !24
  br label %bb5
bb13:
  %t41 = load ptr, ptr %lp1
  %t42 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t42, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esettle(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l2 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %lp4 = alloca ptr
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
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
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l26 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l28 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l30 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l32 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l34 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l36 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l38 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l52 = alloca i64
  %l56 = alloca i64
  %l59 = alloca i64
  %l78 = alloca { i64, ptr }
  %l81 = alloca i64
  %l83 = alloca ptr
  %l86 = alloca %"compiler/source:Span"
  %l89 = alloca i64
  %l92 = alloca i32
  %l95 = alloca ptr
  %l98 = alloca i1
  %l103 = alloca i64
  %l107 = alloca i64
  %l110 = alloca i64
  %l131 = alloca i64
  %l135 = alloca i1
  %l138 = alloca ptr
  %l139 = alloca i64
  %l140 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l141 = alloca ptr
  %l145 = alloca ptr
  %l146 = alloca i32
  %l153 = alloca i64
  %s0 = alloca %olang.scope
  %s7 = alloca %olang.scope
  %rv = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 3
  %t4 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t3
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t4, ptr %l20
  %t6 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s0, ptr %l20)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t6, ptr %l22
  br label %bb1
bb1:
  %t7 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l22
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t7, ptr %l1
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:Versions", ptr %t8, i32 0, i32 4
  %t11 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t10
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t11, ptr %l24
  %t13 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l24)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t13, ptr %l26
  br label %bb2
bb2:
  %t14 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l26
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t14, ptr %l2
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = getelementptr %"compiler/typed:Versions", ptr %t15, i32 0, i32 5
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l28
  %t20 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %s0, ptr %l28)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, ptr %l30
  br label %bb3
bb3:
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l30
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %l3
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Versions", ptr %t22, i32 0, i32 6
  %t25 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t24
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t25, ptr %l32
  %t27 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e(ptr %v0, ptr %l32)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t27, ptr %l34
  br label %bb4
bb4:
  %t28 = call ptr @__olang_scope_alloc_a(ptr %v0, i64 32, i64 8)
  store ptr %t28, ptr %lp4
  %t29 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l34
  %t30 = load ptr, ptr %lp4
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t29, ptr %t30
  %t31 = load ptr, ptr %l0, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Versions", ptr %t31, i32 0, i32 7
  %t34 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t34, ptr %l36
  %t36 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cBool_3e(ptr %s0, ptr %l36)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t36, ptr %l38
  br label %bb5
bb5:
  %t37 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l38
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t37, ptr %l5
  %t38 = load ptr, ptr %l0, !tbaa !29
  %t40 = getelementptr %"compiler/typed:Versions", ptr %t38, i32 0, i32 3
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %t40)
  br label %bb6
bb6:
  %t42 = load ptr, ptr %l0, !tbaa !29
  %t44 = getelementptr %"compiler/typed:Versions", ptr %t42, i32 0, i32 4
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %t44)
  br label %bb7
bb7:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t48 = getelementptr %"compiler/typed:Versions", ptr %t46, i32 0, i32 5
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t48)
  br label %bb8
bb8:
  %t50 = load ptr, ptr %l0, !tbaa !29
  %t52 = getelementptr %"compiler/typed:Versions", ptr %t50, i32 0, i32 6
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eCle_H9e31dbf06df58c38226424712d120dfe(ptr %v0, ptr %t52)
  br label %bb9
bb9:
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/typed:Versions", ptr %t54, i32 0, i32 7
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %t56)
  br label %bb10
bb10:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Versions", ptr %t58, i32 0, i32 8
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %t60)
  br label %bb11
bb11:
  store i64 0, ptr %l6, !tbaa !24
  %t63 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s0, ptr %l1)
  store i64 %t63, ptr %l52
  br label %bb12
bb12:
  %t64 = load i64, ptr %l52, !tbaa !24
  store i64 %t64, ptr %l7, !tbaa !24
  store i64 1, ptr %l8, !tbaa !24
  %t65 = load i64, ptr %l7, !tbaa !24
  %t66 = load i64, ptr %l6, !tbaa !24
  %t69 = icmp sgt i64 %t65, %t66
  br i1 %t69, label %bb13, label %bb14
bb13:
  %t71 = load i64, ptr %l8, !tbaa !24
  %t73 = icmp sgt i64 %t71, 0
  br i1 %t73, label %bb15, label %bb16
bb14:
  store i64 0, ptr %l56, !tbaa !24
  br label %bb18
bb15:
  %t75 = load i64, ptr %l7, !tbaa !24
  %t76 = load i64, ptr %l6, !tbaa !24
  %t79 = sub i64 %t75, %t76
  %t80 = load i64, ptr %l8, !tbaa !24
  %t83 = add i64 %t79, %t80
  %t85 = sub i64 %t83, 1
  %t86 = load i64, ptr %l8, !tbaa !24
  %t89 = sdiv i64 %t85, %t86
  store i64 %t89, ptr %l59, !tbaa !24
  br label %bb17
bb16:
  store i64 0, ptr %l59, !tbaa !24
  br label %bb17
bb17:
  %t91 = load i64, ptr %l59, !tbaa !24
  store i64 %t91, ptr %l56, !tbaa !24
  br label %bb18
bb18:
  %t92 = load i64, ptr %l56, !tbaa !24
  store i64 %t92, ptr %l9, !tbaa !24
  store i64 0, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  %t93 = load i64, ptr %l10, !tbaa !24
  %t94 = load i64, ptr %l9, !tbaa !24
  %t97 = icmp slt i64 %t93, %t94
  %t99 = xor i1 %t97, true
  br i1 %t99, label %bb20, label %bb21
bb20:
  br label %bb34
bb21:
  br label %bb22
bb22:
  %t101 = load i64, ptr %l6, !tbaa !24
  %t102 = load i64, ptr %l10, !tbaa !24
  %t103 = load i64, ptr %l8, !tbaa !24
  %t106 = mul i64 %t102, %t103
  %t109 = add i64 %t101, %t106
  store i64 %t109, ptr %l11, !tbaa !24
  %t111 = load ptr, ptr %l0, !tbaa !29
  %t113 = getelementptr %"compiler/typed:Versions", ptr %t111, i32 0, i32 2
  %t114 = load { i64, ptr }, ptr %t113, !tbaa !27
  store { i64, ptr } %t114, ptr %l78, !tbaa !27
  %t115 = load i64, ptr %l11, !tbaa !24
  %t118 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l1, i64 %t115)
  store i64 %t118, ptr %l81
  br label %bb23
bb23:
  %t119 = load i64, ptr %l81, !tbaa !24
  %t120 = getelementptr { i64, ptr }, ptr %l78, i32 0, i32 1
  %t121 = load ptr, ptr %t120, !tbaa !27
  %t122 = getelementptr i1, ptr %t121, i64 %t119
  %t123 = load i1, ptr %t122, !tbaa !31
  br i1 %t123, label %bb24, label %bb25
bb24:
  %t125 = load ptr, ptr %l0, !tbaa !29
  store ptr %t125, ptr %l83, !tbaa !29
  %t126 = load i64, ptr %l11, !tbaa !24
  %t129 = call %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %s0, ptr %l2, i64 %t126)
  store %"compiler/source:Span" %t129, ptr %l86
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t130 = load i64, ptr %l11, !tbaa !24
  %t133 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s0, ptr %l1, i64 %t130)
  store i64 %t133, ptr %l89
  br label %bb27
bb27:
  %t134 = load i64, ptr %l11, !tbaa !24
  %t137 = call i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %s0, ptr %l3, i64 %t134)
  store i32 %t137, ptr %l92
  br label %bb28
bb28:
  %t138 = load ptr, ptr %lp4
  %t139 = load i64, ptr %l11, !tbaa !24
  %t142 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v0, ptr %t138, i64 %t139)
  store ptr %t142, ptr %l95
  br label %bb29
bb29:
  %t143 = load i64, ptr %l11, !tbaa !24
  %t146 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %s0, ptr %l5, i64 %t143)
  store i1 %t146, ptr %l98
  br label %bb30
bb30:
  %t147 = load ptr, ptr %l83, !tbaa !29
  %t148 = load %"compiler/source:Span", ptr %l86
  %t149 = load i64, ptr %l89, !tbaa !24
  %t150 = load i32, ptr %l92, !tbaa !23
  %t151 = load ptr, ptr %l95, !tbaa !29
  %t152 = load i1, ptr %l98, !tbaa !21
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eaddDef(ptr %v0, ptr %v0, ptr %t147, %"compiler/source:Span" %t148, i64 %t149, i32 %t150, ptr %t151, i1 %t152)
  br label %bb31
bb31:
  br label %bb32
bb32:
  br label %bb33
bb33:
  %t153 = load i64, ptr %l10, !tbaa !24
  %t155 = add i64 %t153, 1
  store i64 %t155, ptr %l10, !tbaa !24
  br label %bb19
bb34:
  store i64 0, ptr %l12, !tbaa !24
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t159 = getelementptr %"compiler/typed:Versions", ptr %t157, i32 0, i32 3
  %t161 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t159)
  store i64 %t161, ptr %l103
  br label %bb35
bb35:
  %t162 = load i64, ptr %l103, !tbaa !24
  store i64 %t162, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t163 = load i64, ptr %l13, !tbaa !24
  %t164 = load i64, ptr %l12, !tbaa !24
  %t167 = icmp sgt i64 %t163, %t164
  br i1 %t167, label %bb36, label %bb37
bb36:
  %t169 = load i64, ptr %l14, !tbaa !24
  %t171 = icmp sgt i64 %t169, 0
  br i1 %t171, label %bb38, label %bb39
bb37:
  store i64 0, ptr %l107, !tbaa !24
  br label %bb41
bb38:
  %t173 = load i64, ptr %l13, !tbaa !24
  %t174 = load i64, ptr %l12, !tbaa !24
  %t177 = sub i64 %t173, %t174
  %t178 = load i64, ptr %l14, !tbaa !24
  %t181 = add i64 %t177, %t178
  %t183 = sub i64 %t181, 1
  %t184 = load i64, ptr %l14, !tbaa !24
  %t187 = sdiv i64 %t183, %t184
  store i64 %t187, ptr %l110, !tbaa !24
  br label %bb40
bb39:
  store i64 0, ptr %l110, !tbaa !24
  br label %bb40
bb40:
  %t189 = load i64, ptr %l110, !tbaa !24
  store i64 %t189, ptr %l107, !tbaa !24
  br label %bb41
bb41:
  %t190 = load i64, ptr %l107, !tbaa !24
  store i64 %t190, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb42
bb42:
  %t191 = load i64, ptr %l16, !tbaa !24
  %t192 = load i64, ptr %l15, !tbaa !24
  %t195 = icmp slt i64 %t191, %t192
  %t197 = xor i1 %t195, true
  br i1 %t197, label %bb43, label %bb44
bb43:
  br label %bb60
bb44:
  br label %bb45
bb45:
  %t199 = load i64, ptr %l12, !tbaa !24
  %t200 = load i64, ptr %l16, !tbaa !24
  %t201 = load i64, ptr %l14, !tbaa !24
  %t204 = mul i64 %t200, %t201
  %t207 = add i64 %t199, %t204
  store i64 %t207, ptr %l17, !tbaa !24
  %t209 = load ptr, ptr %l0, !tbaa !29
  %t211 = getelementptr %"compiler/typed:Versions", ptr %t209, i32 0, i32 3
  %t212 = load i64, ptr %l17, !tbaa !24
  %t215 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t211, i64 %t212)
  store i64 %t215, ptr %l131
  br label %bb46
bb46:
  %t216 = load i64, ptr %l131, !tbaa !24
  store i64 %t216, ptr %l18, !tbaa !24
  %t217 = load ptr, ptr %l0, !tbaa !29
  %t219 = getelementptr %"compiler/typed:Versions", ptr %t217, i32 0, i32 9
  %t220 = load i64, ptr %l18, !tbaa !24
  %t223 = call i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %t219, i64 %t220)
  store i1 %t223, ptr %l135
  br label %bb47
bb47:
  %t224 = load i1, ptr %l135, !tbaa !21
  %t225 = xor i1 %t224, true
  br i1 %t225, label %bb48, label %bb49
bb48:
  store %olang.scope zeroinitializer, ptr %s7
  %t227 = load ptr, ptr %l0, !tbaa !29
  %t229 = getelementptr %"compiler/typed:Versions", ptr %t227, i32 0, i32 9
  store ptr %t229, ptr %l138, !tbaa !29
  %t230 = load i64, ptr %l18, !tbaa !24
  store i64 %t230, ptr %l139, !tbaa !24
  %t231 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %s7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t231, ptr %l140
  br label %bb50
bb49:
  br label %bb52
bb50:
  %t232 = load ptr, ptr %l138, !tbaa !29
  %t233 = load i64, ptr %l139, !tbaa !24
  %t234 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l140
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H5b4ed7dba3fb4e44f8784ebbf4461977(ptr %v0, ptr %s7, ptr %t232, i64 %t233, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t234)
  br label %bb51
bb51:
  call void @__olang_scope_close(ptr %s7)
  br label %bb52
bb52:
  %t235 = load ptr, ptr %l0, !tbaa !29
  %t237 = getelementptr %"compiler/typed:Versions", ptr %t235, i32 0, i32 9
  %t238 = load i64, ptr %l18, !tbaa !24
  %t241 = call { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hdc84c10e1af960a666eeb267120f3ec3(ptr %v0, ptr %v0, ptr %t237, i64 %t238)
  %t242 = extractvalue { i32, ptr } %t241, 1
  %t243 = extractvalue { i32, ptr } %t241, 0
  store i32 %t243, ptr %l146
  %t244 = icmp ne i32 %t243, 0
  br i1 %t244, label %bb54, label %ok.245, !prof !99
ok.245:
  store ptr %t242, ptr %l145
  br label %bb53
bb53:
  %t246 = load ptr, ptr %l145, !tbaa !29
  store ptr %t246, ptr %l141, !tbaa !29
  br label %bb57
bb54:
  %t247 = load i32, ptr %l146, !tbaa !23
  %t248 = icmp eq i32 %t247, 65536
  br i1 %t248, label %bb55, label %bb56
bb55:
  call void @__olang_bang_failed_plain(ptr @olang_loc_59830ee0ec754a32_f5aff824d93b155e)
  unreachable
bb56:
  call void @__olang_bang_failed_plain(ptr @olang_loc_b8ff85e818b1a126_11cf17c421c4721a)
  unreachable
bb57:
  %t250 = load i64, ptr %l17, !tbaa !24
  %t251 = load ptr, ptr %l141, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t251, i64 %t250)
  br label %bb58
bb58:
  br label %bb59
bb59:
  %t253 = load i64, ptr %l16, !tbaa !24
  %t255 = add i64 %t253, 1
  store i64 %t255, ptr %l16, !tbaa !24
  br label %bb42
bb60:
  %t257 = load ptr, ptr %l0, !tbaa !29
  %t259 = getelementptr %"compiler/typed:Versions", ptr %t257, i32 0, i32 3
  %t261 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t259)
  store i64 %t261, ptr %l153
  br label %bb61
bb61:
  %t262 = load i64, ptr %l153, !tbaa !24
  %t263 = icmp sgt i64 %t262, 0
  call void @__olang_scope_close(ptr %s0)
  store i1 %t263, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i1
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l4 = alloca i64
  %l5 = alloca %"compiler/source:Span"
  %l6 = alloca i32
  %l7 = alloca ptr
  %l8 = alloca %"compiler/source:Span"
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca %"compiler/source:Span"
  %l12 = alloca i32
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l16 = alloca ptr
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l22 = alloca ptr
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l24 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca ptr
  %l26 = alloca ptr
  %l27 = alloca i32
  %l28 = alloca i32
  %l29 = alloca ptr
  %l30 = alloca ptr
  %l31 = alloca ptr
  %l32 = alloca ptr
  %l33 = alloca { i64, ptr }
  %l34 = alloca i64
  %l35 = alloca i64
  %l36 = alloca ptr
  %l37 = alloca %"compiler/source:Span"
  %l38 = alloca i32
  %l39 = alloca i32
  %l40 = alloca { i64, ptr }
  %l41 = alloca i64
  %l42 = alloca i64
  %l47 = alloca i1
  %l49 = alloca i1
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l55 = alloca i64
  %l56 = alloca ptr
  %l57 = alloca i1
  %l80 = alloca %"compiler/typed:Local"
  %l89 = alloca ptr
  %l90 = alloca i1
  %l99 = alloca ptr
  %l100 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l131 = alloca ptr
  %l132 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
  %l146 = alloca ptr
  %l147 = alloca i1
  %l154 = alloca ptr
  %l155 = alloca i1
  %l163 = alloca ptr
  %l164 = alloca i1
  %l173 = alloca ptr
  %l174 = alloca i1
  %l178 = alloca ptr
  %l179 = alloca i1
  %l187 = alloca ptr
  %l188 = alloca i1
  %l199 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l204 = alloca ptr
  %l205 = alloca i1
  %l215 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l221 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l229 = alloca ptr
  %l230 = alloca i1
  %l240 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l241 = alloca ptr
  %l242 = alloca i1
  %l252 = alloca ptr
  %l253 = alloca i1
  %l261 = alloca ptr
  %l262 = alloca i1
  %l270 = alloca ptr
  %l271 = alloca i1
  %l280 = alloca ptr
  %l282 = alloca { i64, ptr }
  %l284 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l286 = alloca ptr
  %l287 = alloca i1
  %l300 = alloca { i64, ptr }
  %l305 = alloca ptr
  %l306 = alloca i1
  %l320 = alloca i1
  %l328 = alloca { i64, ptr }
  %l345 = alloca { i64, ptr }
  %l354 = alloca ptr
  %l356 = alloca %"compiler/source:Span"
  %s0 = alloca %olang.scope
  %s14 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s16 = alloca %olang.scope
  %s20 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Versions", ptr %t1, i32 0, i32 20
  %t4 = load i1, ptr %t3, !tbaa !21
  %t6 = xor i1 %t4, true
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %t8)
  store i1 %t10, ptr %l49
  br label %bb3
bb2:
  store i1 false, ptr %l47, !tbaa !21
  br label %bb4
bb3:
  %t11 = load i1, ptr %l49, !tbaa !21
  %t12 = xor i1 %t11, true
  store i1 %t12, ptr %l47, !tbaa !21
  br label %bb4
bb4:
  %t14 = load i1, ptr %l47, !tbaa !21
  store i1 %t14, ptr %l2, !tbaa !21
  %t15 = load ptr, ptr %l0, !tbaa !29
  %t17 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s0, ptr %t15)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t17, ptr %l52
  br label %bb5
bb5:
  %t18 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t18, ptr %l3
  %t19 = load ptr, ptr %l0, !tbaa !29
  %t21 = getelementptr %"compiler/typed:Versions", ptr %t19, i32 0, i32 15
  %t23 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t21)
  store i64 %t23, ptr %l55
  br label %bb6
bb6:
  %t24 = load i64, ptr %l55, !tbaa !24
  store i64 %t24, ptr %l4, !tbaa !24
  %t25 = load ptr, ptr %l1, !tbaa !29
  store ptr %t25, ptr %l56, !tbaa !29
  store i1 false, ptr %l57, !tbaa !21
  %t26 = load ptr, ptr %l56, !tbaa !29
  %t27 = icmp ne ptr %t26, null
  br i1 %t27, label %bb7, label %bb8
bb7:
  %t29 = load ptr, ptr %l56, !tbaa !29
  %t30 = load i64, ptr %t29, !range !{i64 0, i64 17}
  %t32 = icmp eq i64 %t30, 0
  store i1 %t32, ptr %l57, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l57, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr { i64, [3 x i64] }, ptr %t34, i32 0, i32 1
  %t37 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t36, i32 0, i32 0
  %t38 = load %"compiler/source:Span", ptr %t37
  store %"compiler/source:Span" %t38, ptr %l5
  %t40 = load ptr, ptr %l1, !tbaa !29
  %t42 = getelementptr { i64, [3 x i64] }, ptr %t40, i32 0, i32 1
  %t43 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t42, i32 0, i32 1
  %t44 = load i32, ptr %t43
  store i32 %t44, ptr %l6, !tbaa !23
  %t46 = load ptr, ptr %l1, !tbaa !29
  %t48 = getelementptr { i64, [3 x i64] }, ptr %t46, i32 0, i32 1
  %t49 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t48, i32 0, i32 2
  %t50 = load ptr, ptr %t49
  store ptr %t50, ptr %l7, !tbaa !29
  br label %bb11
bb10:
  br label %bb22
bb11:
  %t52 = load ptr, ptr %l0, !tbaa !29
  %t53 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t52, ptr %t53)
  br label %bb12
bb12:
  %t57 = load i1, ptr %l2, !tbaa !21
  br i1 %t57, label %bb13, label %bb14
bb13:
  %t59 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/source:Span", ptr %l5, i32 0, i32 0
  %t61 = load i32, ptr %t60, !tbaa !23
  %t63 = sext i32 %t61 to i64
  %t64 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erecord(ptr %v0, ptr %s0, ptr %t59, i64 %t63, ptr %l3, i64 %t64)
  br label %bb15
bb14:
  br label %bb16
bb15:
  br label %bb16
bb16:
  store i1 false, ptr %l2, !tbaa !21
  %t69 = load ptr, ptr %l0, !tbaa !29
  %t71 = getelementptr %"compiler/typed:Versions", ptr %t69, i32 0, i32 0
  %t72 = load ptr, ptr %t71, !tbaa !29
  %t74 = getelementptr %"compiler/typed:Body", ptr %t72, i32 0, i32 7
  %t75 = load i32, ptr %l6, !tbaa !23
  %t77 = sext i32 %t75 to i64
  %t80 = call %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %t74, i64 %t77)
  store %"compiler/typed:Local" %t80, ptr %l80
  br label %bb17
bb17:
  %t81 = getelementptr %"compiler/typed:Local", ptr %l80, i32 0, i32 6
  %t82 = load i1, ptr %t81, !tbaa !21
  %t84 = xor i1 %t82, true
  br i1 %t84, label %bb18, label %bb19
bb18:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load %"compiler/source:Span", ptr %l5
  %t88 = load i32, ptr %l6, !tbaa !23
  %t90 = sext i32 %t88 to i64
  %t91 = load ptr, ptr %l7, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edefine(ptr %v0, ptr %v1, ptr %t86, %"compiler/source:Span" %t87, i64 %t90, ptr %t91, i1 true)
  br label %bb20
bb19:
  br label %bb21
bb20:
  br label %bb21
bb21:
  br label %bb190
bb22:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l89, !tbaa !29
  store i1 false, ptr %l90, !tbaa !21
  %t98 = load ptr, ptr %l89, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb23, label %bb24
bb23:
  %t101 = load ptr, ptr %l89, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 17}
  %t104 = icmp eq i64 %t102, 1
  store i1 %t104, ptr %l90, !tbaa !21
  br label %bb24
bb24:
  %t105 = load i1, ptr %l90, !tbaa !21
  br i1 %t105, label %bb25, label %bb26
bb25:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [3 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t108, i32 0, i32 0
  %t110 = load %"compiler/source:Span", ptr %t109
  store %"compiler/source:Span" %t110, ptr %l8
  %t112 = load ptr, ptr %l1, !tbaa !29
  %t114 = getelementptr { i64, [3 x i64] }, ptr %t112, i32 0, i32 1
  %t115 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t114, i32 0, i32 1
  %t116 = load ptr, ptr %t115
  store ptr %t116, ptr %l9, !tbaa !29
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [3 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t120, i32 0, i32 2
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l10, !tbaa !29
  br label %bb27
bb26:
  br label %bb45
bb27:
  %t124 = load ptr, ptr %l9, !tbaa !29
  store ptr %t124, ptr %l99, !tbaa !29
  store i1 false, ptr %l100, !tbaa !21
  %t125 = load ptr, ptr %l99, !tbaa !29
  %t126 = icmp ne ptr %t125, null
  br i1 %t126, label %bb28, label %bb29
bb28:
  %t128 = load ptr, ptr %l99, !tbaa !29
  %t129 = load i64, ptr %t128, !range !{i64 0, i64 8}
  %t131 = icmp eq i64 %t129, 0
  store i1 %t131, ptr %l100, !tbaa !21
  br label %bb29
bb29:
  %t132 = load i1, ptr %l100, !tbaa !21
  %t133 = xor i1 %t132, true
  br i1 %t133, label %bb30, label %bb31
bb30:
  %t135 = load ptr, ptr %l0, !tbaa !29
  %t136 = load ptr, ptr %l9, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t135, ptr %t136)
  br label %bb32
bb31:
  br label %bb33
bb32:
  br label %bb33
bb33:
  %t139 = load ptr, ptr %l0, !tbaa !29
  %t140 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t139, ptr %t140)
  br label %bb34
bb34:
  %t144 = load i1, ptr %l2, !tbaa !21
  br i1 %t144, label %bb35, label %bb36
bb35:
  %t146 = load ptr, ptr %l0, !tbaa !29
  %t147 = getelementptr %"compiler/source:Span", ptr %l8, i32 0, i32 0
  %t148 = load i32, ptr %t147, !tbaa !23
  %t150 = sext i32 %t148 to i64
  %t151 = load i64, ptr %l4, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erecord(ptr %v0, ptr %s0, ptr %t146, i64 %t150, ptr %l3, i64 %t151)
  br label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb38
bb38:
  store i1 false, ptr %l2, !tbaa !21
  %t156 = load ptr, ptr %l9, !tbaa !29
  store ptr %t156, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t157 = load ptr, ptr %l115, !tbaa !29
  %t158 = icmp ne ptr %t157, null
  br i1 %t158, label %bb39, label %bb40
bb39:
  %t160 = load ptr, ptr %l115, !tbaa !29
  %t161 = load i64, ptr %t160, !range !{i64 0, i64 8}
  %t163 = icmp eq i64 %t161, 0
  store i1 %t163, ptr %l116, !tbaa !21
  br label %bb40
bb40:
  %t164 = load i1, ptr %l116, !tbaa !21
  br i1 %t164, label %bb41, label %bb42
bb41:
  %t165 = load ptr, ptr %l9, !tbaa !29
  %t167 = getelementptr { i64, [4 x i64] }, ptr %t165, i32 0, i32 1
  %t168 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t167, i32 0, i32 0
  %t169 = load %"compiler/source:Span", ptr %t168
  store %"compiler/source:Span" %t169, ptr %l11
  %t171 = load ptr, ptr %l9, !tbaa !29
  %t173 = getelementptr { i64, [4 x i64] }, ptr %t171, i32 0, i32 1
  %t174 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t173, i32 0, i32 1
  %t175 = load i32, ptr %t174
  store i32 %t175, ptr %l12, !tbaa !23
  %t177 = load ptr, ptr %l9, !tbaa !29
  %t179 = getelementptr { i64, [4 x i64] }, ptr %t177, i32 0, i32 1
  %t180 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t179, i32 0, i32 2
  %t181 = load i32, ptr %t180
  %t183 = load ptr, ptr %l0, !tbaa !29
  %t184 = load %"compiler/source:Span", ptr %l8
  %t187 = sext i32 %t181 to i64
  %t188 = load ptr, ptr %l10, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edefine(ptr %v0, ptr %v1, ptr %t183, %"compiler/source:Span" %t184, i64 %t187, ptr %t188, i1 false)
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb44
bb44:
  br label %bb190
bb45:
  %t194 = load ptr, ptr %l1, !tbaa !29
  store ptr %t194, ptr %l131, !tbaa !29
  store i1 false, ptr %l132, !tbaa !21
  %t195 = load ptr, ptr %l131, !tbaa !29
  %t196 = icmp ne ptr %t195, null
  br i1 %t196, label %bb46, label %bb47
bb46:
  %t198 = load ptr, ptr %l131, !tbaa !29
  %t199 = load i64, ptr %t198, !range !{i64 0, i64 17}
  %t201 = icmp eq i64 %t199, 2
  store i1 %t201, ptr %l132, !tbaa !21
  br label %bb47
bb47:
  %t202 = load i1, ptr %l132, !tbaa !21
  br i1 %t202, label %bb48, label %bb49
bb48:
  %t203 = load ptr, ptr %l1, !tbaa !29
  %t205 = getelementptr { i64, [3 x i64] }, ptr %t203, i32 0, i32 1
  %t206 = getelementptr { %"compiler/source:Span", ptr }, ptr %t205, i32 0, i32 1
  %t207 = load ptr, ptr %t206
  store ptr %t207, ptr %l14, !tbaa !29
  br label %bb54
bb49:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t210 = load ptr, ptr %l137, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb50, label %bb51
bb50:
  %t213 = load ptr, ptr %l137, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 17}
  %t216 = icmp eq i64 %t214, 15
  store i1 %t216, ptr %l138, !tbaa !21
  br label %bb51
bb51:
  %t217 = load i1, ptr %l138, !tbaa !21
  br i1 %t217, label %bb52, label %bb53
bb52:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [3 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", ptr }, ptr %t220, i32 0, i32 1
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l14, !tbaa !29
  br label %bb54
bb53:
  br label %bb56
bb54:
  %t224 = load ptr, ptr %l0, !tbaa !29
  %t225 = load ptr, ptr %l14, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t224, ptr %t225)
  br label %bb55
bb55:
  br label %bb190
bb56:
  %t229 = load ptr, ptr %l1, !tbaa !29
  store ptr %t229, ptr %l146, !tbaa !29
  store i1 false, ptr %l147, !tbaa !21
  %t230 = load ptr, ptr %l146, !tbaa !29
  %t231 = icmp ne ptr %t230, null
  br i1 %t231, label %bb57, label %bb58
bb57:
  %t233 = load ptr, ptr %l146, !tbaa !29
  %t234 = load i64, ptr %t233, !range !{i64 0, i64 17}
  %t236 = icmp eq i64 %t234, 16
  store i1 %t236, ptr %l147, !tbaa !21
  br label %bb58
bb58:
  %t237 = load i1, ptr %l147, !tbaa !21
  br i1 %t237, label %bb59, label %bb60
bb59:
  %t238 = load ptr, ptr %l1, !tbaa !29
  %t240 = getelementptr { i64, [3 x i64] }, ptr %t238, i32 0, i32 1
  %t241 = getelementptr { %"compiler/source:Span", ptr }, ptr %t240, i32 0, i32 1
  %t242 = load ptr, ptr %t241
  store ptr %t242, ptr %l15, !tbaa !29
  br label %bb61
bb60:
  br label %bb63
bb61:
  %t244 = load ptr, ptr %l0, !tbaa !29
  %t245 = load ptr, ptr %l15, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t244, ptr %t245)
  br label %bb62
bb62:
  br label %bb190
bb63:
  %t248 = load ptr, ptr %l1, !tbaa !29
  store ptr %t248, ptr %l154, !tbaa !29
  store i1 false, ptr %l155, !tbaa !21
  %t249 = load ptr, ptr %l154, !tbaa !29
  %t250 = icmp ne ptr %t249, null
  br i1 %t250, label %bb64, label %bb65
bb64:
  %t252 = load ptr, ptr %l154, !tbaa !29
  %t253 = load i64, ptr %t252, !range !{i64 0, i64 17}
  %t255 = icmp eq i64 %t253, 6
  store i1 %t255, ptr %l155, !tbaa !21
  br label %bb65
bb65:
  %t256 = load i1, ptr %l155, !tbaa !21
  br i1 %t256, label %bb66, label %bb67
bb66:
  %t257 = load ptr, ptr %l1, !tbaa !29
  %t259 = getelementptr { i64, [3 x i64] }, ptr %t257, i32 0, i32 1
  %t260 = getelementptr { %"compiler/source:Span", ptr }, ptr %t259, i32 0, i32 1
  %t261 = load ptr, ptr %t260
  store ptr %t261, ptr %l16, !tbaa !29
  br label %bb68
bb67:
  br label %bb71
bb68:
  %t263 = load ptr, ptr %l0, !tbaa !29
  %t264 = load ptr, ptr %l16, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t263, ptr %t264)
  br label %bb69
bb69:
  %t267 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %t267)
  br label %bb70
bb70:
  br label %bb190
bb71:
  %t269 = load ptr, ptr %l1, !tbaa !29
  store ptr %t269, ptr %l163, !tbaa !29
  store i1 false, ptr %l164, !tbaa !21
  %t270 = load ptr, ptr %l163, !tbaa !29
  %t271 = icmp ne ptr %t270, null
  br i1 %t271, label %bb72, label %bb73
bb72:
  %t273 = load ptr, ptr %l163, !tbaa !29
  %t274 = load i64, ptr %t273, !range !{i64 0, i64 17}
  %t276 = icmp eq i64 %t274, 8
  store i1 %t276, ptr %l164, !tbaa !21
  br label %bb73
bb73:
  %t277 = load i1, ptr %l164, !tbaa !21
  br i1 %t277, label %bb74, label %bb75
bb74:
  %t278 = load ptr, ptr %l1, !tbaa !29
  %t280 = getelementptr { i64, [3 x i64] }, ptr %t278, i32 0, i32 1
  %t281 = getelementptr { %"compiler/source:Span", ptr, i32 }, ptr %t280, i32 0, i32 1
  %t282 = load ptr, ptr %t281
  store ptr %t282, ptr %l17, !tbaa !29
  br label %bb76
bb75:
  br label %bb79
bb76:
  %t284 = load ptr, ptr %l0, !tbaa !29
  %t285 = load ptr, ptr %l17, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t284, ptr %t285)
  br label %bb77
bb77:
  %t289 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %t289)
  br label %bb78
bb78:
  br label %bb190
bb79:
  %t291 = load ptr, ptr %l1, !tbaa !29
  store ptr %t291, ptr %l173, !tbaa !29
  store i1 false, ptr %l174, !tbaa !21
  %t292 = load ptr, ptr %l173, !tbaa !29
  %t293 = icmp ne ptr %t292, null
  br i1 %t293, label %bb80, label %bb81
bb80:
  %t295 = load ptr, ptr %l173, !tbaa !29
  %t296 = load i64, ptr %t295, !range !{i64 0, i64 17}
  %t298 = icmp eq i64 %t296, 7
  store i1 %t298, ptr %l174, !tbaa !21
  br label %bb81
bb81:
  %t299 = load i1, ptr %l174, !tbaa !21
  br i1 %t299, label %bb82, label %bb83
bb82:
  br label %bb84
bb83:
  br label %bb86
bb84:
  %t300 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %t300)
  br label %bb85
bb85:
  br label %bb190
bb86:
  %t302 = load ptr, ptr %l1, !tbaa !29
  store ptr %t302, ptr %l178, !tbaa !29
  store i1 false, ptr %l179, !tbaa !21
  %t303 = load ptr, ptr %l178, !tbaa !29
  %t304 = icmp ne ptr %t303, null
  br i1 %t304, label %bb87, label %bb88
bb87:
  %t306 = load ptr, ptr %l178, !tbaa !29
  %t307 = load i64, ptr %t306, !range !{i64 0, i64 17}
  %t309 = icmp eq i64 %t307, 9
  store i1 %t309, ptr %l179, !tbaa !21
  br label %bb88
bb88:
  %t310 = load i1, ptr %l179, !tbaa !21
  br i1 %t310, label %bb89, label %bb90
bb89:
  %t311 = load ptr, ptr %l1, !tbaa !29
  %t313 = getelementptr { i64, [3 x i64] }, ptr %t311, i32 0, i32 1
  %t314 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t313, i32 0, i32 2
  %t315 = load ptr, ptr %t314
  store ptr %t315, ptr %l18, !tbaa !29
  br label %bb91
bb90:
  br label %bb94
bb91:
  %t317 = load ptr, ptr %l0, !tbaa !29
  %t318 = load ptr, ptr %l18, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t317, ptr %t318)
  br label %bb92
bb92:
  %t321 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %t321)
  br label %bb93
bb93:
  br label %bb190
bb94:
  %t323 = load ptr, ptr %l1, !tbaa !29
  store ptr %t323, ptr %l187, !tbaa !29
  store i1 false, ptr %l188, !tbaa !21
  %t324 = load ptr, ptr %l187, !tbaa !29
  %t325 = icmp ne ptr %t324, null
  br i1 %t325, label %bb95, label %bb96
bb95:
  %t327 = load ptr, ptr %l187, !tbaa !29
  %t328 = load i64, ptr %t327, !range !{i64 0, i64 17}
  %t330 = icmp eq i64 %t328, 10
  store i1 %t330, ptr %l188, !tbaa !21
  br label %bb96
bb96:
  %t331 = load i1, ptr %l188, !tbaa !21
  br i1 %t331, label %bb97, label %bb98
bb97:
  %t332 = load ptr, ptr %l1, !tbaa !29
  %t334 = getelementptr { i64, [3 x i64] }, ptr %t332, i32 0, i32 1
  %t335 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t334, i32 0, i32 1
  %t336 = load ptr, ptr %t335
  store ptr %t336, ptr %l19, !tbaa !29
  %t338 = load ptr, ptr %l1, !tbaa !29
  %t340 = getelementptr { i64, [3 x i64] }, ptr %t338, i32 0, i32 1
  %t341 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t340, i32 0, i32 2
  %t342 = load ptr, ptr %t341
  store ptr %t342, ptr %l20, !tbaa !29
  br label %bb99
bb98:
  br label %bb104
bb99:
  store %olang.scope zeroinitializer, ptr %s14
  %t344 = load ptr, ptr %l0, !tbaa !29
  %t345 = load ptr, ptr %l19, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t344, ptr %t345)
  br label %bb100
bb100:
  %t349 = load ptr, ptr %l0, !tbaa !29
  %t351 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s14, ptr %t349)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t351, ptr %l199
  br label %bb101
bb101:
  %t352 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l199
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t352, ptr %l21
  %t353 = load ptr, ptr %l0, !tbaa !29
  %t354 = load ptr, ptr %l20, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t353, ptr %t354)
  br label %bb102
bb102:
  %t357 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s14, ptr %t357, ptr %l21)
  br label %bb103
bb103:
  call void @__olang_scope_close(ptr %s14)
  br label %bb190
bb104:
  %t360 = load ptr, ptr %l1, !tbaa !29
  store ptr %t360, ptr %l204, !tbaa !29
  store i1 false, ptr %l205, !tbaa !21
  %t361 = load ptr, ptr %l204, !tbaa !29
  %t362 = icmp ne ptr %t361, null
  br i1 %t362, label %bb105, label %bb106
bb105:
  %t364 = load ptr, ptr %l204, !tbaa !29
  %t365 = load i64, ptr %t364, !range !{i64 0, i64 17}
  %t367 = icmp eq i64 %t365, 3
  store i1 %t367, ptr %l205, !tbaa !21
  br label %bb106
bb106:
  %t368 = load i1, ptr %l205, !tbaa !21
  br i1 %t368, label %bb107, label %bb108
bb107:
  %t369 = load ptr, ptr %l1, !tbaa !29
  %t371 = getelementptr { i64, [3 x i64] }, ptr %t369, i32 0, i32 1
  %t372 = getelementptr { %"compiler/source:Span", ptr }, ptr %t371, i32 0, i32 1
  %t373 = load ptr, ptr %t372
  store ptr %t373, ptr %l22, !tbaa !29
  br label %bb109
bb108:
  br label %bb117
bb109:
  store %olang.scope zeroinitializer, ptr %s15
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load ptr, ptr %l22, !tbaa !29
  %t378 = getelementptr %"compiler/typed:If", ptr %t376, i32 0, i32 0
  %t379 = load ptr, ptr %t378, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t375, ptr %t379)
  br label %bb110
bb110:
  %t383 = load ptr, ptr %l0, !tbaa !29
  %t385 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s15, ptr %t383)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t385, ptr %l215
  br label %bb111
bb111:
  %t386 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l215
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t386, ptr %l23
  %t387 = load ptr, ptr %l0, !tbaa !29
  %t388 = load ptr, ptr %l22, !tbaa !29
  %t390 = getelementptr %"compiler/typed:If", ptr %t388, i32 0, i32 1
  %t391 = load ptr, ptr %t390, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t387, ptr %t391)
  br label %bb112
bb112:
  %t395 = load ptr, ptr %l0, !tbaa !29
  %t397 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s15, ptr %t395)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %l221
  br label %bb113
bb113:
  %t398 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l221
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t398, ptr %l24
  %t399 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %s15, ptr %t399, ptr %l23)
  br label %bb114
bb114:
  %t402 = load ptr, ptr %l0, !tbaa !29
  %t403 = load ptr, ptr %l22, !tbaa !29
  %t405 = getelementptr %"compiler/typed:If", ptr %t403, i32 0, i32 2
  %t406 = load ptr, ptr %t405, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t402, ptr %t406)
  br label %bb115
bb115:
  %t409 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %s15, ptr %t409, ptr %l24)
  br label %bb116
bb116:
  call void @__olang_scope_close(ptr %s15)
  br label %bb190
bb117:
  %t412 = load ptr, ptr %l1, !tbaa !29
  store ptr %t412, ptr %l229, !tbaa !29
  store i1 false, ptr %l230, !tbaa !21
  %t413 = load ptr, ptr %l229, !tbaa !29
  %t414 = icmp ne ptr %t413, null
  br i1 %t414, label %bb118, label %bb119
bb118:
  %t416 = load ptr, ptr %l229, !tbaa !29
  %t417 = load i64, ptr %t416, !range !{i64 0, i64 17}
  %t419 = icmp eq i64 %t417, 4
  store i1 %t419, ptr %l230, !tbaa !21
  br label %bb119
bb119:
  %t420 = load i1, ptr %l230, !tbaa !21
  br i1 %t420, label %bb120, label %bb121
bb120:
  %t421 = load ptr, ptr %l1, !tbaa !29
  %t423 = getelementptr { i64, [3 x i64] }, ptr %t421, i32 0, i32 1
  %t424 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t423, i32 0, i32 1
  %t425 = load ptr, ptr %t424
  store ptr %t425, ptr %l25, !tbaa !29
  %t427 = load ptr, ptr %l1, !tbaa !29
  %t429 = getelementptr { i64, [3 x i64] }, ptr %t427, i32 0, i32 1
  %t430 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t429, i32 0, i32 2
  %t431 = load ptr, ptr %t430
  store ptr %t431, ptr %l26, !tbaa !29
  br label %bb122
bb121:
  br label %bb124
bb122:
  store %olang.scope zeroinitializer, ptr %s16
  %t433 = load ptr, ptr %l0, !tbaa !29
  %t434 = load ptr, ptr %l25, !tbaa !29
  %t435 = load ptr, ptr %l26, !tbaa !29
  %t439 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eloop(ptr %v0, ptr %v1, ptr %v1, ptr %s16, ptr %t433, ptr %t434, ptr %t435)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t439, ptr %l240
  br label %bb123
bb123:
  call void @__olang_scope_close(ptr %s16)
  br label %bb190
bb124:
  %t440 = load ptr, ptr %l1, !tbaa !29
  store ptr %t440, ptr %l241, !tbaa !29
  store i1 false, ptr %l242, !tbaa !21
  %t441 = load ptr, ptr %l241, !tbaa !29
  %t442 = icmp ne ptr %t441, null
  br i1 %t442, label %bb125, label %bb126
bb125:
  %t444 = load ptr, ptr %l241, !tbaa !29
  %t445 = load i64, ptr %t444, !range !{i64 0, i64 17}
  %t447 = icmp eq i64 %t445, 5
  store i1 %t447, ptr %l242, !tbaa !21
  br label %bb126
bb126:
  %t448 = load i1, ptr %l242, !tbaa !21
  br i1 %t448, label %bb127, label %bb128
bb127:
  %t449 = load ptr, ptr %l1, !tbaa !29
  %t451 = getelementptr { i64, [3 x i64] }, ptr %t449, i32 0, i32 1
  %t452 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t451, i32 0, i32 1
  %t453 = load i32, ptr %t452, !range !{i32 0, i32 2}
  store i32 %t453, ptr %l27
  %t455 = load ptr, ptr %l1, !tbaa !29
  %t457 = getelementptr { i64, [3 x i64] }, ptr %t455, i32 0, i32 1
  %t458 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t457, i32 0, i32 2
  %t459 = load i32, ptr %t458
  store i32 %t459, ptr %l28, !tbaa !23
  br label %bb129
bb128:
  br label %bb131
bb129:
  %t461 = load ptr, ptr %l0, !tbaa !29
  %t462 = load i32, ptr %l27, !range !{i32 0, i32 2}
  %t463 = load i32, ptr %l28, !tbaa !23
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ejump(ptr %v0, ptr %t461, i32 %t462, i32 %t463)
  br label %bb130
bb130:
  br label %bb190
bb131:
  %t467 = load ptr, ptr %l1, !tbaa !29
  store ptr %t467, ptr %l252, !tbaa !29
  store i1 false, ptr %l253, !tbaa !21
  %t468 = load ptr, ptr %l252, !tbaa !29
  %t469 = icmp ne ptr %t468, null
  br i1 %t469, label %bb132, label %bb133
bb132:
  %t471 = load ptr, ptr %l252, !tbaa !29
  %t472 = load i64, ptr %t471, !range !{i64 0, i64 17}
  %t474 = icmp eq i64 %t472, 11
  store i1 %t474, ptr %l253, !tbaa !21
  br label %bb133
bb133:
  %t475 = load i1, ptr %l253, !tbaa !21
  br i1 %t475, label %bb134, label %bb135
bb134:
  %t476 = load ptr, ptr %l1, !tbaa !29
  %t478 = getelementptr { i64, [3 x i64] }, ptr %t476, i32 0, i32 1
  %t479 = getelementptr { %"compiler/source:Span", ptr }, ptr %t478, i32 0, i32 1
  %t480 = load ptr, ptr %t479
  store ptr %t480, ptr %l29, !tbaa !29
  br label %bb136
bb135:
  br label %bb138
bb136:
  %t482 = load ptr, ptr %l0, !tbaa !29
  %t483 = load ptr, ptr %l29, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t482, ptr %t483)
  br label %bb137
bb137:
  br label %bb190
bb138:
  %t487 = load ptr, ptr %l1, !tbaa !29
  store ptr %t487, ptr %l261, !tbaa !29
  store i1 false, ptr %l262, !tbaa !21
  %t488 = load ptr, ptr %l261, !tbaa !29
  %t489 = icmp ne ptr %t488, null
  br i1 %t489, label %bb139, label %bb140
bb139:
  %t491 = load ptr, ptr %l261, !tbaa !29
  %t492 = load i64, ptr %t491, !range !{i64 0, i64 17}
  %t494 = icmp eq i64 %t492, 12
  store i1 %t494, ptr %l262, !tbaa !21
  br label %bb140
bb140:
  %t495 = load i1, ptr %l262, !tbaa !21
  br i1 %t495, label %bb141, label %bb142
bb141:
  %t496 = load ptr, ptr %l1, !tbaa !29
  %t498 = getelementptr { i64, [3 x i64] }, ptr %t496, i32 0, i32 1
  %t499 = getelementptr { %"compiler/source:Span", ptr }, ptr %t498, i32 0, i32 1
  %t500 = load ptr, ptr %t499
  store ptr %t500, ptr %l30, !tbaa !29
  br label %bb143
bb142:
  br label %bb145
bb143:
  %t502 = load ptr, ptr %l0, !tbaa !29
  %t503 = load ptr, ptr %l30, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2elater(ptr %v0, ptr %v1, ptr %t502, ptr %t503)
  br label %bb144
bb144:
  br label %bb190
bb145:
  %t507 = load ptr, ptr %l1, !tbaa !29
  store ptr %t507, ptr %l270, !tbaa !29
  store i1 false, ptr %l271, !tbaa !21
  %t508 = load ptr, ptr %l270, !tbaa !29
  %t509 = icmp ne ptr %t508, null
  br i1 %t509, label %bb146, label %bb147
bb146:
  %t511 = load ptr, ptr %l270, !tbaa !29
  %t512 = load i64, ptr %t511, !range !{i64 0, i64 17}
  %t514 = icmp eq i64 %t512, 13
  store i1 %t514, ptr %l271, !tbaa !21
  br label %bb147
bb147:
  %t515 = load i1, ptr %l271, !tbaa !21
  br i1 %t515, label %bb148, label %bb149
bb148:
  %t516 = load ptr, ptr %l1, !tbaa !29
  %t518 = getelementptr { i64, [3 x i64] }, ptr %t516, i32 0, i32 1
  %t519 = getelementptr { %"compiler/source:Span", ptr }, ptr %t518, i32 0, i32 1
  %t520 = load ptr, ptr %t519
  store ptr %t520, ptr %l31, !tbaa !29
  br label %bb150
bb149:
  br label %bb154
bb150:
  store %olang.scope zeroinitializer, ptr %s20
  %t522 = load ptr, ptr %l0, !tbaa !29
  %t523 = load ptr, ptr %l31, !tbaa !29
  %t525 = getelementptr %"compiler/typed:Join", ptr %t523, i32 0, i32 0
  %t526 = load ptr, ptr %t525, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %t522, ptr %t526)
  br label %bb151
bb151:
  %t530 = load ptr, ptr %l0, !tbaa !29
  store ptr %t530, ptr %l280, !tbaa !29
  %t531 = load ptr, ptr %l31, !tbaa !29
  %t533 = getelementptr %"compiler/typed:Join", ptr %t531, i32 0, i32 2
  %t534 = load { i64, ptr }, ptr %t533, !tbaa !27
  store { i64, ptr } %t534, ptr %l282, !tbaa !27
  %t535 = load ptr, ptr %l0, !tbaa !29
  %t537 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2esave(ptr %v0, ptr %s20, ptr %t535)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t537, ptr %l284
  br label %bb152
bb152:
  %t538 = load ptr, ptr %l280, !tbaa !29
  %t539 = load { i64, ptr }, ptr %l282, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclauses(ptr %v0, ptr %v1, ptr %s20, ptr %t538, { i64, ptr } %t539, ptr %l284, i1 true)
  br label %bb153
bb153:
  call void @__olang_scope_close(ptr %s20)
  br label %bb190
bb154:
  %t541 = load ptr, ptr %l1, !tbaa !29
  store ptr %t541, ptr %l286, !tbaa !29
  store i1 false, ptr %l287, !tbaa !21
  %t542 = load ptr, ptr %l286, !tbaa !29
  %t543 = icmp ne ptr %t542, null
  br i1 %t543, label %bb155, label %bb156
bb155:
  %t545 = load ptr, ptr %l286, !tbaa !29
  %t546 = load i64, ptr %t545, !range !{i64 0, i64 17}
  %t548 = icmp eq i64 %t546, 14
  store i1 %t548, ptr %l287, !tbaa !21
  br label %bb156
bb156:
  %t549 = load i1, ptr %l287, !tbaa !21
  br i1 %t549, label %bb157, label %bb158
bb157:
  %t550 = load ptr, ptr %l1, !tbaa !29
  %t552 = getelementptr { i64, [3 x i64] }, ptr %t550, i32 0, i32 1
  %t553 = getelementptr { %"compiler/source:Span", ptr }, ptr %t552, i32 0, i32 1
  %t554 = load ptr, ptr %t553
  store ptr %t554, ptr %l32, !tbaa !29
  br label %bb159
bb158:
  br label %bb189
bb159:
  %t556 = load ptr, ptr %l32, !tbaa !29
  %t558 = getelementptr %"compiler/typed:Spawn", ptr %t556, i32 0, i32 0
  %t559 = load { i64, ptr }, ptr %t558, !tbaa !27
  store { i64, ptr } %t559, ptr %l33, !tbaa !27
  store i64 0, ptr %l34, !tbaa !24
  %t561 = load { i64, ptr }, ptr %l33, !tbaa !27
  %t563 = extractvalue { i64, ptr } %t561, 0
  store i64 %t563, ptr %l35, !tbaa !24
  br label %bb160
bb160:
  %t565 = load i64, ptr %l34, !tbaa !24
  %t566 = load i64, ptr %l35, !tbaa !24
  %t569 = icmp slt i64 %t565, %t566
  %t571 = xor i1 %t569, true
  br i1 %t571, label %bb161, label %bb162
bb161:
  br label %bb180
bb162:
  br label %bb163
bb163:
  %t573 = load { i64, ptr }, ptr %l33, !tbaa !27
  store { i64, ptr } %t573, ptr %l300, !tbaa !27
  %t574 = load i64, ptr %l34, !tbaa !24
  %t576 = getelementptr { i64, ptr }, ptr %l300, i32 0, i32 1
  %t577 = load ptr, ptr %t576, !tbaa !27
  %t578 = getelementptr ptr, ptr %t577, i64 %t574
  %t579 = load ptr, ptr %t578, !tbaa !39
  store ptr %t579, ptr %l36, !tbaa !29
  %t581 = load ptr, ptr %l36, !tbaa !29
  %t583 = icmp eq ptr %t581, null
  br i1 %t583, label %bb164, label %bb165
bb164:
  br label %bb179
bb165:
  br label %bb166
bb166:
  %t585 = load ptr, ptr %l36, !tbaa !29
  store ptr %t585, ptr %l305, !tbaa !29
  store i1 false, ptr %l306, !tbaa !21
  %t586 = load ptr, ptr %l305, !tbaa !29
  %t587 = icmp ne ptr %t586, null
  br i1 %t587, label %bb167, label %bb168
bb167:
  %t589 = load ptr, ptr %l305, !tbaa !29
  %t590 = load i64, ptr %t589, !range !{i64 0, i64 8}
  %t592 = icmp eq i64 %t590, 0
  store i1 %t592, ptr %l306, !tbaa !21
  br label %bb168
bb168:
  %t593 = load i1, ptr %l306, !tbaa !21
  %t594 = xor i1 %t593, true
  br i1 %t594, label %bb169, label %bb170
bb169:
  %t596 = load ptr, ptr %l0, !tbaa !29
  %t597 = load ptr, ptr %l36, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %t596, ptr %t597)
  br label %bb171
bb170:
  %t600 = load ptr, ptr %l36, !tbaa !29
  %t602 = getelementptr { i64, [4 x i64] }, ptr %t600, i32 0, i32 1
  %t603 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t602, i32 0, i32 0
  %t604 = load %"compiler/source:Span", ptr %t603
  store %"compiler/source:Span" %t604, ptr %l37
  %t606 = load ptr, ptr %l36, !tbaa !29
  %t608 = getelementptr { i64, [4 x i64] }, ptr %t606, i32 0, i32 1
  %t609 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t608, i32 0, i32 1
  %t610 = load i32, ptr %t609
  store i32 %t610, ptr %l38, !tbaa !23
  %t612 = load ptr, ptr %l36, !tbaa !29
  %t614 = getelementptr { i64, [4 x i64] }, ptr %t612, i32 0, i32 1
  %t615 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t614, i32 0, i32 2
  %t616 = load i32, ptr %t615
  store i32 %t616, ptr %l39, !tbaa !23
  %t618 = load ptr, ptr %l0, !tbaa !29
  %t620 = getelementptr %"compiler/typed:Versions", ptr %t618, i32 0, i32 20
  %t621 = load i1, ptr %t620, !tbaa !21
  br i1 %t621, label %bb172, label %bb173
bb171:
  br label %bb178
bb172:
  %t623 = load i32, ptr %l39, !tbaa !23
  %t625 = sext i32 %t623 to i64
  %t626 = load ptr, ptr %l0, !tbaa !29
  %t628 = getelementptr %"compiler/typed:Versions", ptr %t626, i32 0, i32 2
  %t629 = load { i64, ptr }, ptr %t628, !tbaa !27
  %t631 = extractvalue { i64, ptr } %t629, 0
  %t634 = icmp slt i64 %t625, %t631
  store i1 %t634, ptr %l320, !tbaa !21
  br label %bb174
bb173:
  store i1 false, ptr %l320, !tbaa !21
  br label %bb174
bb174:
  %t636 = load i1, ptr %l320, !tbaa !21
  br i1 %t636, label %bb175, label %bb176
bb175:
  %t637 = load ptr, ptr %l0, !tbaa !29
  %t639 = getelementptr %"compiler/typed:Versions", ptr %t637, i32 0, i32 2
  %t640 = load { i64, ptr }, ptr %t639, !tbaa !27
  store { i64, ptr } %t640, ptr %l328, !tbaa !27
  %t641 = load i32, ptr %l39, !tbaa !23
  %t643 = sext i32 %t641 to i64
  %t645 = getelementptr { i64, ptr }, ptr %l328, i32 0, i32 1
  %t646 = load ptr, ptr %t645, !tbaa !27
  %t647 = getelementptr i1, ptr %t646, i64 %t643
  store i1 false, ptr %t647, !tbaa !31
  br label %bb177
bb176:
  br label %bb177
bb177:
  br label %bb178
bb178:
  br label %bb179
bb179:
  %t648 = load i64, ptr %l34, !tbaa !24
  %t650 = add i64 %t648, 1
  store i64 %t650, ptr %l34, !tbaa !24
  br label %bb160
bb180:
  %t652 = load ptr, ptr %l0, !tbaa !29
  %t653 = load ptr, ptr %l32, !tbaa !29
  %t655 = getelementptr %"compiler/typed:Spawn", ptr %t653, i32 0, i32 1
  %t656 = load ptr, ptr %t655, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t652, ptr %t656)
  br label %bb181
bb181:
  %t660 = load ptr, ptr %l32, !tbaa !29
  %t662 = getelementptr %"compiler/typed:Spawn", ptr %t660, i32 0, i32 2
  %t663 = load { i64, ptr }, ptr %t662, !tbaa !27
  store { i64, ptr } %t663, ptr %l40, !tbaa !27
  store i64 0, ptr %l41, !tbaa !24
  %t665 = load { i64, ptr }, ptr %l40, !tbaa !27
  %t667 = extractvalue { i64, ptr } %t665, 0
  store i64 %t667, ptr %l42, !tbaa !24
  br label %bb182
bb182:
  %t669 = load i64, ptr %l41, !tbaa !24
  %t670 = load i64, ptr %l42, !tbaa !24
  %t673 = icmp slt i64 %t669, %t670
  %t675 = xor i1 %t673, true
  br i1 %t675, label %bb183, label %bb184
bb183:
  br label %bb188
bb184:
  br label %bb185
bb185:
  %t677 = load { i64, ptr }, ptr %l40, !tbaa !27
  store { i64, ptr } %t677, ptr %l345, !tbaa !27
  %t678 = load i64, ptr %l41, !tbaa !24
  %t680 = getelementptr { i64, ptr }, ptr %l345, i32 0, i32 1
  %t681 = load ptr, ptr %t680, !tbaa !27
  %t682 = getelementptr ptr, ptr %t681, i64 %t678
  %t683 = load ptr, ptr %t682, !tbaa !39
  %t685 = load ptr, ptr %l0, !tbaa !29
  %t688 = getelementptr %"compiler/typed:TaskClause", ptr %t683, i32 0, i32 3
  %t689 = load ptr, ptr %t688, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %t685, ptr %t689)
  br label %bb186
bb186:
  br label %bb187
bb187:
  %t692 = load i64, ptr %l41, !tbaa !24
  %t694 = add i64 %t692, 1
  store i64 %t694, ptr %l41, !tbaa !24
  br label %bb182
bb188:
  br label %bb190
bb189:
  call void @__olang_check_failed(ptr @olang_loc_89804b2e92d33dd7_8d0f976d28b858c3)
  unreachable
bb190:
  %t696 = load i1, ptr %l2, !tbaa !21
  br i1 %t696, label %bb191, label %bb192
bb191:
  %t698 = load ptr, ptr %l0, !tbaa !29
  store ptr %t698, ptr %l354, !tbaa !29
  %t699 = load ptr, ptr %l1, !tbaa !29
  %t701 = call %"compiler/source:Span" @compiler_2ftyped_2ecompiler_2ftyped_3aStmt_2eSpan(ptr %v1, ptr %t699)
  store %"compiler/source:Span" %t701, ptr %l356
  br label %bb193
bb192:
  br label %bb195
bb193:
  %t702 = getelementptr %"compiler/source:Span", ptr %l356, i32 0, i32 0
  %t703 = load i32, ptr %t702, !tbaa !23
  %t705 = sext i32 %t703 to i64
  %t706 = load i64, ptr %l4, !tbaa !24
  %t707 = load ptr, ptr %l354, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erecord(ptr %v0, ptr %s0, ptr %t707, i64 %t705, ptr %l3, i64 %t706)
  br label %bb194
bb194:
  br label %bb195
bb195:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2ecopyViews(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l8 = alloca ptr
  %l11 = alloca ptr
  %l18 = alloca i64
  %l21 = alloca i64
  %rv = alloca i64
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
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:ViewWalk", ptr %t6, i32 0, i32 0
  %t9 = load ptr, ptr %t8, !tbaa !29
  store ptr %t9, ptr %l8, !tbaa !29
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t11 = load ptr, ptr %l8, !tbaa !29
  %t12 = call ptr @__olang_scope_or(ptr %v2, ptr %t11)
  %t13 = ptrtoint ptr %t12 to i64
  %t15 = inttoptr i64 %t13 to ptr
  %t16 = load ptr, ptr %l8, !tbaa !29
  %t18 = call ptr @compiler_2ftyped_2ecopied(ptr %t15, ptr %v1, ptr %v1, ptr %t16, ptr %t10)
  store ptr %t18, ptr %l11
  br label %bb4
bb4:
  %t19 = load ptr, ptr %l11, !tbaa !29
  store ptr %t19, ptr %l2, !tbaa !29
  %t20 = load ptr, ptr %l2, !tbaa !29
  %t22 = icmp eq ptr %t20, null
  br i1 %t22, label %bb5, label %bb6
bb5:
  store i64 0, ptr %rv
  br label %ret
bb6:
  br label %bb7
bb7:
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t26 = load ptr, ptr %l2, !tbaa !29
  %t30 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v3, ptr %v2, ptr %t25, ptr %t26)
  store i64 %t30, ptr %l18
  br label %bb8
bb8:
  %t31 = load i64, ptr %l18, !tbaa !24
  store i64 %t31, ptr %l3, !tbaa !24
  %t32 = load i64, ptr %l3, !tbaa !24
  %t34 = icmp sgt i64 %t32, 0
  br i1 %t34, label %bb9, label %bb10
bb9:
  %t36 = load i64, ptr %l3, !tbaa !24
  store i64 %t36, ptr %l21, !tbaa !24
  br label %bb11
bb10:
  store i64 0, ptr %l21, !tbaa !24
  br label %bb11
bb11:
  %t38 = load i64, ptr %l21, !tbaa !24
  store i64 %t38, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eholderRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i1
  %l16 = alloca i64
  %l17 = alloca ptr
  %l18 = alloca i1
  %l26 = alloca i64
  %l27 = alloca ptr
  %l28 = alloca i1
  %l37 = alloca i64
  %l38 = alloca ptr
  %l39 = alloca i1
  %l48 = alloca i64
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 8}
  %t8 = icmp eq i64 %t6, 0
  store i1 %t8, ptr %l9, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l9, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [4 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load i32, ptr %l2, !tbaa !23
  %t20 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eparamBit(ptr %v0, ptr %v2, ptr %t16, i32 %t17)
  store i64 %t20, ptr %l16
  br label %bb6
bb6:
  %t21 = load i64, ptr %l16, !tbaa !24
  store i64 %t21, ptr %l7, !tbaa !24
  br label %bb40
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t23 = load ptr, ptr %l17, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l17, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 8}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l18, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l18, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [4 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr, i64 }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t40 = inttoptr i64 0 to ptr
  %t43 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eholderRoots(ptr %v0, ptr %v1, ptr %v2, ptr %t40, ptr %t37, ptr %t38)
  store i64 %t43, ptr %l26
  br label %bb13
bb13:
  %t44 = load i64, ptr %l26, !tbaa !24
  store i64 %t44, ptr %l7, !tbaa !24
  br label %bb40
bb14:
  %t45 = load ptr, ptr %l1, !tbaa !29
  store ptr %t45, ptr %l27, !tbaa !29
  store i1 false, ptr %l28, !tbaa !21
  %t46 = load ptr, ptr %l27, !tbaa !29
  %t47 = icmp ne ptr %t46, null
  br i1 %t47, label %bb15, label %bb16
bb15:
  %t49 = load ptr, ptr %l27, !tbaa !29
  %t50 = load i64, ptr %t49, !range !{i64 0, i64 8}
  %t52 = icmp eq i64 %t50, 4
  store i1 %t52, ptr %l28, !tbaa !21
  br label %bb16
bb16:
  %t53 = load i1, ptr %l28, !tbaa !21
  br i1 %t53, label %bb17, label %bb18
bb17:
  %t54 = load ptr, ptr %l1, !tbaa !29
  %t56 = getelementptr { i64, [4 x i64] }, ptr %t54, i32 0, i32 1
  %t57 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t56, i32 0, i32 2
  %t58 = load ptr, ptr %t57
  store ptr %t58, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t60 = load ptr, ptr %l0, !tbaa !29
  %t61 = load ptr, ptr %l4, !tbaa !29
  %t63 = getelementptr %"compiler/typed:Elem", ptr %t61, i32 0, i32 0
  %t64 = load ptr, ptr %t63, !tbaa !29
  %t66 = inttoptr i64 0 to ptr
  %t69 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eholderRoots(ptr %v0, ptr %v1, ptr %v2, ptr %t66, ptr %t60, ptr %t64)
  store i64 %t69, ptr %l37
  br label %bb20
bb20:
  %t70 = load i64, ptr %l37, !tbaa !24
  store i64 %t70, ptr %l7, !tbaa !24
  br label %bb40
bb21:
  %t71 = load ptr, ptr %l1, !tbaa !29
  store ptr %t71, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t72 = load ptr, ptr %l38, !tbaa !29
  %t73 = icmp ne ptr %t72, null
  br i1 %t73, label %bb22, label %bb23
bb22:
  %t75 = load ptr, ptr %l38, !tbaa !29
  %t76 = load i64, ptr %t75, !range !{i64 0, i64 8}
  %t78 = icmp eq i64 %t76, 5
  store i1 %t78, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t79 = load i1, ptr %l39, !tbaa !21
  br i1 %t79, label %bb24, label %bb25
bb24:
  %t80 = load ptr, ptr %l1, !tbaa !29
  %t82 = getelementptr { i64, [4 x i64] }, ptr %t80, i32 0, i32 1
  %t83 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t82, i32 0, i32 2
  %t84 = load ptr, ptr %t83
  store ptr %t84, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t86 = load ptr, ptr %l0, !tbaa !29
  %t87 = load ptr, ptr %l5, !tbaa !29
  %t89 = getelementptr %"compiler/typed:Payload", ptr %t87, i32 0, i32 0
  %t90 = load ptr, ptr %t89, !tbaa !29
  %t92 = inttoptr i64 0 to ptr
  %t95 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eholderRoots(ptr %v0, ptr %v1, ptr %v2, ptr %t92, ptr %t86, ptr %t90)
  store i64 %t95, ptr %l48
  br label %bb27
bb27:
  %t96 = load i64, ptr %l48, !tbaa !24
  store i64 %t96, ptr %l7, !tbaa !24
  br label %bb40
bb28:
  %t97 = load ptr, ptr %l1, !tbaa !29
  store ptr %t97, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t98 = load ptr, ptr %l49, !tbaa !29
  %t99 = icmp ne ptr %t98, null
  br i1 %t99, label %bb29, label %bb30
bb29:
  %t101 = load ptr, ptr %l49, !tbaa !29
  %t102 = load i64, ptr %t101, !range !{i64 0, i64 8}
  %t104 = icmp eq i64 %t102, 2
  store i1 %t104, ptr %l50, !tbaa !21
  br label %bb30
bb30:
  %t105 = load i1, ptr %l50, !tbaa !21
  br i1 %t105, label %bb31, label %bb32
bb31:
  %t106 = load ptr, ptr %l1, !tbaa !29
  %t108 = getelementptr { i64, [4 x i64] }, ptr %t106, i32 0, i32 1
  %t109 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t108, i32 0, i32 2
  %t110 = load ptr, ptr %t109
  store ptr %t110, ptr %l6, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t112 = load ptr, ptr %l0, !tbaa !29
  %t113 = load ptr, ptr %l6, !tbaa !29
  %t116 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t112, ptr %t113)
  store i64 %t116, ptr %l57
  br label %bb34
bb34:
  %t117 = load i64, ptr %l57, !tbaa !24
  store i64 %t117, ptr %l7, !tbaa !24
  br label %bb40
bb35:
  br i1 true, label %bb36, label %bb37
bb36:
  br label %bb38
bb37:
  br label %bb39
bb38:
  store i64 -1, ptr %l7, !tbaa !24
  br label %bb40
bb39:
  call void @__olang_check_failed(ptr @olang_loc_34c65fd26df9bfcd_2dc4d2164b9a2f69)
  unreachable
bb40:
  %t118 = load i64, ptr %l7, !tbaa !24
  store i64 %t118, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i32
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca i64
  %l11 = alloca ptr
  %l12 = alloca i1
  %l19 = alloca i64
  %l20 = alloca ptr
  %l21 = alloca i1
  %l28 = alloca i64
  %l29 = alloca ptr
  %l30 = alloca i1
  %l38 = alloca i64
  %l39 = alloca ptr
  %l40 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i64
  %l54 = alloca i64
  %l55 = alloca ptr
  %l56 = alloca i1
  %l64 = alloca i1
  %l65 = alloca i1
  %l69 = alloca i64
  %l71 = alloca { i64, ptr }
  %l73 = alloca i64
  %l74 = alloca ptr
  %l75 = alloca i1
  %l84 = alloca i1
  %l89 = alloca i64
  %l90 = alloca ptr
  %l96 = alloca i64
  %l97 = alloca ptr
  %l98 = alloca i1
  %l105 = alloca i64
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l11, !tbaa !29
  store i1 false, ptr %l12, !tbaa !21
  %t2 = load ptr, ptr %l11, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l11, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 2
  store i1 %t8, ptr %l12, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l12, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l2, !tbaa !29
  br label %bb5
bb4:
  br label %bb7
bb5:
  %t16 = load ptr, ptr %l0, !tbaa !29
  %t17 = load ptr, ptr %l2, !tbaa !29
  %t20 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eholderRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t16, ptr %t17)
  store i64 %t20, ptr %l19
  br label %bb6
bb6:
  %t21 = load i64, ptr %l19, !tbaa !24
  store i64 %t21, ptr %l10, !tbaa !24
  br label %bb74
bb7:
  %t22 = load ptr, ptr %l1, !tbaa !29
  store ptr %t22, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t23 = load ptr, ptr %l20, !tbaa !29
  %t24 = icmp ne ptr %t23, null
  br i1 %t24, label %bb8, label %bb9
bb8:
  %t26 = load ptr, ptr %l20, !tbaa !29
  %t27 = load i64, ptr %t26, !range !{i64 0, i64 18}
  %t29 = icmp eq i64 %t27, 3
  store i1 %t29, ptr %l21, !tbaa !21
  br label %bb9
bb9:
  %t30 = load i1, ptr %l21, !tbaa !21
  br i1 %t30, label %bb10, label %bb11
bb10:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr { i64, [5 x i64] }, ptr %t31, i32 0, i32 1
  %t34 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t33, i32 0, i32 2
  %t35 = load ptr, ptr %t34
  store ptr %t35, ptr %l3, !tbaa !29
  br label %bb12
bb11:
  br label %bb14
bb12:
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t38 = load ptr, ptr %l3, !tbaa !29
  %t41 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t37, ptr %t38)
  store i64 %t41, ptr %l28
  br label %bb13
bb13:
  %t42 = load i64, ptr %l28, !tbaa !24
  store i64 %t42, ptr %l10, !tbaa !24
  br label %bb74
bb14:
  %t43 = load ptr, ptr %l1, !tbaa !29
  store ptr %t43, ptr %l29, !tbaa !29
  store i1 false, ptr %l30, !tbaa !21
  %t44 = load ptr, ptr %l29, !tbaa !29
  %t45 = icmp ne ptr %t44, null
  br i1 %t45, label %bb15, label %bb16
bb15:
  %t47 = load ptr, ptr %l29, !tbaa !29
  %t48 = load i64, ptr %t47, !range !{i64 0, i64 18}
  %t50 = icmp eq i64 %t48, 10
  store i1 %t50, ptr %l30, !tbaa !21
  br label %bb16
bb16:
  %t51 = load i1, ptr %l30, !tbaa !21
  br i1 %t51, label %bb17, label %bb18
bb17:
  %t52 = load ptr, ptr %l1, !tbaa !29
  %t54 = getelementptr { i64, [5 x i64] }, ptr %t52, i32 0, i32 1
  %t55 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t54, i32 0, i32 2
  %t56 = load ptr, ptr %t55
  store ptr %t56, ptr %l4, !tbaa !29
  br label %bb19
bb18:
  br label %bb21
bb19:
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t59 = load ptr, ptr %l4, !tbaa !29
  %t61 = getelementptr %"compiler/typed:Slice", ptr %t59, i32 0, i32 0
  %t62 = load ptr, ptr %t61, !tbaa !29
  %t65 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t58, ptr %t62)
  store i64 %t65, ptr %l38
  br label %bb20
bb20:
  %t66 = load i64, ptr %l38, !tbaa !24
  store i64 %t66, ptr %l10, !tbaa !24
  br label %bb74
bb21:
  %t67 = load ptr, ptr %l1, !tbaa !29
  store ptr %t67, ptr %l39, !tbaa !29
  store i1 false, ptr %l40, !tbaa !21
  %t68 = load ptr, ptr %l39, !tbaa !29
  %t69 = icmp ne ptr %t68, null
  br i1 %t69, label %bb22, label %bb23
bb22:
  %t71 = load ptr, ptr %l39, !tbaa !29
  %t72 = load i64, ptr %t71, !range !{i64 0, i64 18}
  %t74 = icmp eq i64 %t72, 5
  store i1 %t74, ptr %l40, !tbaa !21
  br label %bb23
bb23:
  %t75 = load i1, ptr %l40, !tbaa !21
  br i1 %t75, label %bb24, label %bb25
bb24:
  %t76 = load ptr, ptr %l1, !tbaa !29
  %t78 = getelementptr { i64, [5 x i64] }, ptr %t76, i32 0, i32 1
  %t79 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t78, i32 0, i32 2
  %t80 = load ptr, ptr %t79
  store ptr %t80, ptr %l5, !tbaa !29
  br label %bb26
bb25:
  br label %bb32
bb26:
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t83 = load ptr, ptr %l5, !tbaa !29
  %t85 = getelementptr %"compiler/typed:Promote", ptr %t83, i32 0, i32 0
  %t86 = load ptr, ptr %t85, !tbaa !29
  %t89 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2earrayValue(ptr %v0, ptr %v1, ptr %v3, ptr %t82, ptr %t86)
  store i1 %t89, ptr %l48
  br label %bb27
bb27:
  %t90 = load i1, ptr %l48, !tbaa !21
  br i1 %t90, label %bb28, label %bb29
bb28:
  %t91 = load ptr, ptr %l0, !tbaa !29
  %t92 = load ptr, ptr %l5, !tbaa !29
  %t94 = getelementptr %"compiler/typed:Promote", ptr %t92, i32 0, i32 0
  %t95 = load ptr, ptr %t94, !tbaa !29
  %t99 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t91, ptr %t95)
  store i64 %t99, ptr %l54
  br label %bb30
bb29:
  store i64 -1, ptr %l49, !tbaa !24
  br label %bb31
bb30:
  %t100 = load i64, ptr %l54, !tbaa !24
  store i64 %t100, ptr %l49, !tbaa !24
  br label %bb31
bb31:
  %t101 = load i64, ptr %l49, !tbaa !24
  store i64 %t101, ptr %l10, !tbaa !24
  br label %bb74
bb32:
  %t102 = load ptr, ptr %l1, !tbaa !29
  store ptr %t102, ptr %l55, !tbaa !29
  store i1 false, ptr %l56, !tbaa !21
  %t103 = load ptr, ptr %l55, !tbaa !29
  %t104 = icmp ne ptr %t103, null
  br i1 %t104, label %bb33, label %bb34
bb33:
  %t106 = load ptr, ptr %l55, !tbaa !29
  %t107 = load i64, ptr %t106, !range !{i64 0, i64 18}
  %t109 = icmp eq i64 %t107, 9
  store i1 %t109, ptr %l56, !tbaa !21
  br label %bb34
bb34:
  %t110 = load i1, ptr %l56, !tbaa !21
  br i1 %t110, label %bb35, label %bb36
bb35:
  %t111 = load ptr, ptr %l1, !tbaa !29
  %t113 = getelementptr { i64, [5 x i64] }, ptr %t111, i32 0, i32 1
  %t114 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t113, i32 0, i32 2
  %t115 = load i32, ptr %t114, !range !{i32 0, i32 52}
  store i32 %t115, ptr %l6
  %t117 = load ptr, ptr %l1, !tbaa !29
  %t119 = getelementptr { i64, [5 x i64] }, ptr %t117, i32 0, i32 1
  %t120 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t119, i32 0, i32 4
  %t121 = load { i64, ptr }, ptr %t120
  store { i64, ptr } %t121, ptr %l7, !tbaa !27
  br label %bb37
bb36:
  br label %bb46
bb37:
  %t123 = load i32, ptr %l6, !range !{i32 0, i32 52}
  %t125 = call i1 @compiler_2ftyped_2ePassesRefs(i32 %t123)
  store i1 %t125, ptr %l64
  br label %bb38
bb38:
  %t126 = load i1, ptr %l64, !tbaa !21
  br i1 %t126, label %bb39, label %bb40
bb39:
  %t127 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t129 = extractvalue { i64, ptr } %t127, 0
  %t131 = icmp sgt i64 %t129, 0
  store i1 %t131, ptr %l65, !tbaa !21
  br label %bb41
bb40:
  store i1 false, ptr %l65, !tbaa !21
  br label %bb41
bb41:
  %t133 = load i1, ptr %l65, !tbaa !21
  br i1 %t133, label %bb42, label %bb43
bb42:
  %t134 = load ptr, ptr %l0, !tbaa !29
  %t135 = load { i64, ptr }, ptr %l7, !tbaa !27
  store { i64, ptr } %t135, ptr %l71, !tbaa !27
  %t136 = getelementptr { i64, ptr }, ptr %l71, i32 0, i32 1
  %t137 = load ptr, ptr %t136, !tbaa !27
  %t138 = getelementptr ptr, ptr %t137, i64 0
  %t139 = load ptr, ptr %t138, !tbaa !39
  %t142 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t134, ptr %t139)
  store i64 %t142, ptr %l73
  br label %bb44
bb43:
  store i64 -1, ptr %l69, !tbaa !24
  br label %bb45
bb44:
  %t143 = load i64, ptr %l73, !tbaa !24
  store i64 %t143, ptr %l69, !tbaa !24
  br label %bb45
bb45:
  %t144 = load i64, ptr %l69, !tbaa !24
  store i64 %t144, ptr %l10, !tbaa !24
  br label %bb74
bb46:
  %t145 = load ptr, ptr %l1, !tbaa !29
  store ptr %t145, ptr %l74, !tbaa !29
  store i1 false, ptr %l75, !tbaa !21
  %t146 = load ptr, ptr %l74, !tbaa !29
  %t147 = icmp ne ptr %t146, null
  br i1 %t147, label %bb47, label %bb48
bb47:
  %t149 = load ptr, ptr %l74, !tbaa !29
  %t150 = load i64, ptr %t149, !range !{i64 0, i64 18}
  %t152 = icmp eq i64 %t150, 12
  store i1 %t152, ptr %l75, !tbaa !21
  br label %bb48
bb48:
  %t153 = load i1, ptr %l75, !tbaa !21
  br i1 %t153, label %bb49, label %bb50
bb49:
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t156, i32 0, i32 2
  %t158 = load ptr, ptr %t157
  store ptr %t158, ptr %l8, !tbaa !29
  br label %bb51
bb50:
  br label %bb62
bb51:
  %t160 = load ptr, ptr %l8, !tbaa !29
  %t162 = getelementptr %"compiler/typed:Seq", ptr %t160, i32 0, i32 1
  %t163 = load ptr, ptr %t162, !tbaa !29
  %t165 = icmp eq ptr %t163, null
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb52, label %bb53
bb52:
  %t169 = load ptr, ptr %l8, !tbaa !29
  %t171 = getelementptr %"compiler/typed:Seq", ptr %t169, i32 0, i32 0
  %t172 = load { i64, ptr }, ptr %t171, !tbaa !27
  %t174 = extractvalue { i64, ptr } %t172, 0
  %t176 = icmp eq i64 %t174, 0
  store i1 %t176, ptr %l84, !tbaa !21
  br label %bb54
bb53:
  store i1 false, ptr %l84, !tbaa !21
  br label %bb54
bb54:
  %t178 = load i1, ptr %l84, !tbaa !21
  br i1 %t178, label %bb55, label %bb56
bb55:
  %t179 = load ptr, ptr %l0, !tbaa !29
  store ptr %t179, ptr %l90, !tbaa !29
  %t180 = load ptr, ptr %l8, !tbaa !29
  %t182 = getelementptr %"compiler/typed:Seq", ptr %t180, i32 0, i32 1
  %t183 = load ptr, ptr %t182, !tbaa !29
  %t185 = icmp eq ptr %t183, null
  br i1 %t185, label %bb57, label %bb58
bb56:
  store i64 -1, ptr %l89, !tbaa !24
  br label %bb61
bb57:
  call void @__olang_check_failed(ptr @olang_loc_859ef9a416eafd63_e1a98b601ef27d27)
  unreachable
bb58:
  br label %bb59
bb59:
  %t187 = load ptr, ptr %l8, !tbaa !29
  %t189 = getelementptr %"compiler/typed:Seq", ptr %t187, i32 0, i32 1
  %t190 = load ptr, ptr %t189, !tbaa !29
  %t191 = load ptr, ptr %l90, !tbaa !29
  %t193 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t191, ptr %t190)
  store i64 %t193, ptr %l96
  br label %bb60
bb60:
  %t194 = load i64, ptr %l96, !tbaa !24
  store i64 %t194, ptr %l89, !tbaa !24
  br label %bb61
bb61:
  %t195 = load i64, ptr %l89, !tbaa !24
  store i64 %t195, ptr %l10, !tbaa !24
  br label %bb74
bb62:
  %t196 = load ptr, ptr %l1, !tbaa !29
  store ptr %t196, ptr %l97, !tbaa !29
  store i1 false, ptr %l98, !tbaa !21
  %t197 = load ptr, ptr %l97, !tbaa !29
  %t198 = icmp ne ptr %t197, null
  br i1 %t198, label %bb63, label %bb64
bb63:
  %t200 = load ptr, ptr %l97, !tbaa !29
  %t201 = load i64, ptr %t200, !range !{i64 0, i64 18}
  %t203 = icmp eq i64 %t201, 17
  store i1 %t203, ptr %l98, !tbaa !21
  br label %bb64
bb64:
  %t204 = load i1, ptr %l98, !tbaa !21
  br i1 %t204, label %bb65, label %bb66
bb65:
  %t205 = load ptr, ptr %l1, !tbaa !29
  %t207 = getelementptr { i64, [5 x i64] }, ptr %t205, i32 0, i32 1
  %t208 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t207, i32 0, i32 2
  %t209 = load ptr, ptr %t208
  store ptr %t209, ptr %l9, !tbaa !29
  br label %bb67
bb66:
  br label %bb69
bb67:
  %t211 = load ptr, ptr %l0, !tbaa !29
  %t212 = load ptr, ptr %l9, !tbaa !29
  %t215 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2erefRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t211, ptr %t212)
  store i64 %t215, ptr %l105
  br label %bb68
bb68:
  %t216 = load i64, ptr %l105, !tbaa !24
  store i64 %t216, ptr %l10, !tbaa !24
  br label %bb74
bb69:
  br i1 true, label %bb70, label %bb71
bb70:
  br label %bb72
bb71:
  br label %bb73
bb72:
  store i64 -1, ptr %l10, !tbaa !24
  br label %bb74
bb73:
  call void @__olang_check_failed(ptr @olang_loc_21fa85d53b5eac7b_5a0125da6c5c013f)
  unreachable
bb74:
  %t217 = load i64, ptr %l10, !tbaa !24
  store i64 %t217, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l9 = alloca ptr
  %l14 = alloca i64
  %l23 = alloca { i64, ptr }
  %l36 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i64
  %l44 = alloca i32
  %l48 = alloca i64
  %l51 = alloca i64
  %l52 = alloca i32
  %l56 = alloca ptr
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
  %t5 = load ptr, ptr %l0, !tbaa !29
  store ptr %t5, ptr %l9, !tbaa !29
  %t6 = load ptr, ptr %l9, !tbaa !29
  %t7 = getelementptr %"compiler/typed:dropWalk", ptr %t6, i32 0, i32 4
  %t8 = load i64, ptr %t7, !tbaa !24
  %t10 = add i64 %t8, 1
  %t12 = load ptr, ptr %l9, !tbaa !29
  %t13 = getelementptr %"compiler/typed:dropWalk", ptr %t12, i32 0, i32 4
  store i64 %t10, ptr %t13, !tbaa !24
  %t14 = load ptr, ptr %l0, !tbaa !29
  %t16 = getelementptr %"compiler/typed:dropWalk", ptr %t14, i32 0, i32 5
  %t18 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t16)
  store i64 %t18, ptr %l14
  br label %bb4
bb4:
  %t19 = load i64, ptr %l14, !tbaa !24
  store i64 %t19, ptr %l2, !tbaa !24
  %t20 = load ptr, ptr %l1, !tbaa !29
  %t22 = getelementptr %"compiler/typed:Block", ptr %t20, i32 0, i32 1
  %t23 = load { i64, ptr }, ptr %t22, !tbaa !27
  store { i64, ptr } %t23, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t25 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t27 = extractvalue { i64, ptr } %t25, 0
  store i64 %t27, ptr %l5, !tbaa !24
  br label %bb5
bb5:
  %t29 = load i64, ptr %l4, !tbaa !24
  %t30 = load i64, ptr %l5, !tbaa !24
  %t33 = icmp slt i64 %t29, %t30
  %t35 = xor i1 %t33, true
  br i1 %t35, label %bb6, label %bb7
bb6:
  br label %bb11
bb7:
  br label %bb8
bb8:
  %t37 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t37, ptr %l23, !tbaa !27
  %t38 = load i64, ptr %l4, !tbaa !24
  %t40 = getelementptr { i64, ptr }, ptr %l23, i32 0, i32 1
  %t41 = load ptr, ptr %t40, !tbaa !27
  %t42 = getelementptr ptr, ptr %t41, i64 %t38
  %t43 = load ptr, ptr %t42, !tbaa !39
  %t45 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %t45, ptr %t43)
  br label %bb9
bb9:
  br label %bb10
bb10:
  %t49 = load i64, ptr %l4, !tbaa !24
  %t51 = add i64 %t49, 1
  store i64 %t51, ptr %l4, !tbaa !24
  br label %bb5
bb11:
  %t53 = load ptr, ptr %l0, !tbaa !29
  %t54 = load ptr, ptr %l0, !tbaa !29
  %t56 = getelementptr %"compiler/typed:dropWalk", ptr %t54, i32 0, i32 4
  %t57 = load i64, ptr %t56, !tbaa !24
  %t59 = sub i64 %t57, 1
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %t53, i64 %t59)
  br label %bb12
bb12:
  br label %bb13
bb13:
  %t62 = load ptr, ptr %l0, !tbaa !29
  %t64 = getelementptr %"compiler/typed:dropWalk", ptr %t62, i32 0, i32 5
  %t66 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t64)
  store i64 %t66, ptr %l36
  br label %bb14
bb14:
  %t67 = load i64, ptr %l2, !tbaa !24
  %t68 = load i64, ptr %l36, !tbaa !24
  %t70 = icmp sgt i64 %t68, %t67
  %t72 = xor i1 %t70, true
  br i1 %t72, label %bb15, label %bb16
bb15:
  br label %bb37
bb16:
  br label %bb17
bb17:
  %t74 = load ptr, ptr %l0, !tbaa !29
  %t76 = getelementptr %"compiler/typed:dropWalk", ptr %t74, i32 0, i32 5
  %t78 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t76)
  %t79 = extractvalue { i32, i64 } %t78, 1
  %t80 = extractvalue { i32, i64 } %t78, 0
  store i32 %t80, ptr %l44
  %t81 = icmp ne i32 %t80, 0
  br i1 %t81, label %bb19, label %ok.82, !prof !99
ok.82:
  store i64 %t79, ptr %l43
  br label %bb18
bb18:
  %t83 = load i64, ptr %l43, !tbaa !24
  store i64 %t83, ptr %l40, !tbaa !24
  br label %bb26
bb19:
  %t84 = load i32, ptr %l44, !tbaa !23
  %t85 = icmp eq i32 %t84, 65536
  br i1 %t85, label %bb20, label %bb21
bb20:
  call void @__olang_bang_failed_plain(ptr @olang_loc_17c315ca28f40c4c_14b80e258f8c2b0)
  unreachable
bb21:
  %t87 = load i32, ptr %l44, !tbaa !23
  %t88 = icmp eq i32 %t87, 65537
  br i1 %t88, label %bb22, label %bb23
bb22:
  call void @__olang_bang_failed_plain(ptr @olang_loc_db2d0e7e8bf65551_fc4da676f7c58ce5)
  unreachable
bb23:
  %t90 = load i32, ptr %l44, !tbaa !23
  %t91 = icmp eq i32 %t90, 65538
  br i1 %t91, label %bb24, label %bb25
bb24:
  call void @__olang_bang_failed_plain(ptr @olang_loc_6fe9eb3ff5642bc1_33392e6f48613205)
  unreachable
bb25:
  call void @__olang_bang_failed_plain(ptr @olang_loc_5f1ddc7ef7469727_e10177d23ca0510b)
  unreachable
bb26:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:dropWalk", ptr %t93, i32 0, i32 6
  %t97 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t95)
  %t98 = extractvalue { i32, i64 } %t97, 1
  %t99 = extractvalue { i32, i64 } %t97, 0
  store i32 %t99, ptr %l52
  %t100 = icmp ne i32 %t99, 0
  br i1 %t100, label %bb28, label %ok.101, !prof !99
ok.101:
  store i64 %t98, ptr %l51
  br label %bb27
bb27:
  %t102 = load i64, ptr %l51, !tbaa !24
  store i64 %t102, ptr %l48, !tbaa !24
  br label %bb35
bb28:
  %t103 = load i32, ptr %l52, !tbaa !23
  %t104 = icmp eq i32 %t103, 65536
  br i1 %t104, label %bb29, label %bb30
bb29:
  call void @__olang_bang_failed_plain(ptr @olang_loc_24a3ccdd47c97c70_8558c77bc7af118c)
  unreachable
bb30:
  %t106 = load i32, ptr %l52, !tbaa !23
  %t107 = icmp eq i32 %t106, 65537
  br i1 %t107, label %bb31, label %bb32
bb31:
  call void @__olang_bang_failed_plain(ptr @olang_loc_130a89b2782f12a5_38e9334e27b56d91)
  unreachable
bb32:
  %t109 = load i32, ptr %l52, !tbaa !23
  %t110 = icmp eq i32 %t109, 65538
  br i1 %t110, label %bb33, label %bb34
bb33:
  call void @__olang_bang_failed_plain(ptr @olang_loc_1916e27cc0da8fc5_b948d7408e366d01)
  unreachable
bb34:
  call void @__olang_bang_failed_plain(ptr @olang_loc_567e5689d7ac5ccb_d57870be630e767)
  unreachable
bb35:
  br label %bb36
bb36:
  br label %bb13
bb37:
  %t112 = load ptr, ptr %l0, !tbaa !29
  store ptr %t112, ptr %l56, !tbaa !29
  %t113 = load ptr, ptr %l56, !tbaa !29
  %t114 = getelementptr %"compiler/typed:dropWalk", ptr %t113, i32 0, i32 4
  %t115 = load i64, ptr %t114, !tbaa !24
  %t117 = sub i64 %t115, 1
  %t119 = load ptr, ptr %l56, !tbaa !29
  %t120 = getelementptr %"compiler/typed:dropWalk", ptr %t119, i32 0, i32 4
  store i64 %t117, ptr %t120, !tbaa !24
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eleave(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca i64
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l12 = alloca i64
  %l16 = alloca i64
  %l19 = alloca i64
  %l40 = alloca i64
  %l43 = alloca i1
  %l45 = alloca ptr
  %l46 = alloca i64
  %l48 = alloca ptr
  %l52 = alloca i64
  %l53 = alloca i64
  %l54 = alloca i32
  %l55 = alloca i1
  %l57 = alloca ptr
  %l61 = alloca i64
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 3
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  br label %ret
bb2:
  br label %bb3
bb3:
  store i64 0, ptr %l2, !tbaa !24
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:dropWalk", ptr %t6, i32 0, i32 5
  %t10 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %t8)
  store i64 %t10, ptr %l12
  br label %bb4
bb4:
  %t11 = load i64, ptr %l12, !tbaa !24
  store i64 %t11, ptr %l3, !tbaa !24
  store i64 1, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l3, !tbaa !24
  %t13 = load i64, ptr %l2, !tbaa !24
  %t16 = icmp sgt i64 %t12, %t13
  br i1 %t16, label %bb5, label %bb6
bb5:
  %t18 = load i64, ptr %l4, !tbaa !24
  %t20 = icmp sgt i64 %t18, 0
  br i1 %t20, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l16, !tbaa !24
  br label %bb10
bb7:
  %t22 = load i64, ptr %l3, !tbaa !24
  %t23 = load i64, ptr %l2, !tbaa !24
  %t26 = sub i64 %t22, %t23
  %t27 = load i64, ptr %l4, !tbaa !24
  %t30 = add i64 %t26, %t27
  %t32 = sub i64 %t30, 1
  %t33 = load i64, ptr %l4, !tbaa !24
  %t36 = sdiv i64 %t32, %t33
  store i64 %t36, ptr %l19, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l19, !tbaa !24
  br label %bb9
bb9:
  %t38 = load i64, ptr %l19, !tbaa !24
  store i64 %t38, ptr %l16, !tbaa !24
  br label %bb10
bb10:
  %t39 = load i64, ptr %l16, !tbaa !24
  store i64 %t39, ptr %l5, !tbaa !24
  store i64 0, ptr %l6, !tbaa !24
  br label %bb11
bb11:
  %t40 = load i64, ptr %l6, !tbaa !24
  %t41 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb12, label %bb13
bb12:
  br label %bb31
bb13:
  br label %bb14
bb14:
  %t48 = load i64, ptr %l2, !tbaa !24
  %t49 = load i64, ptr %l6, !tbaa !24
  %t50 = load i64, ptr %l4, !tbaa !24
  %t53 = mul i64 %t49, %t50
  %t56 = add i64 %t48, %t53
  store i64 %t56, ptr %l7, !tbaa !24
  %t58 = load ptr, ptr %l0, !tbaa !29
  %t60 = getelementptr %"compiler/typed:dropWalk", ptr %t58, i32 0, i32 6
  %t61 = load i64, ptr %l7, !tbaa !24
  %t64 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t60, i64 %t61)
  store i64 %t64, ptr %l40
  br label %bb15
bb15:
  %t66 = load i64, ptr %l40, !tbaa !24
  %t68 = icmp sgt i64 %t66, %a1
  br i1 %t68, label %bb16, label %bb17
bb16:
  %t70 = load ptr, ptr %l0, !tbaa !29
  %t72 = getelementptr %"compiler/typed:dropWalk", ptr %t70, i32 0, i32 2
  store ptr %t72, ptr %l45, !tbaa !29
  %t73 = load ptr, ptr %l0, !tbaa !29
  %t75 = getelementptr %"compiler/typed:dropWalk", ptr %t73, i32 0, i32 1
  store ptr %t75, ptr %l48, !tbaa !29
  %t76 = load ptr, ptr %l0, !tbaa !29
  %t78 = getelementptr %"compiler/typed:dropWalk", ptr %t76, i32 0, i32 5
  %t79 = load i64, ptr %l7, !tbaa !24
  %t82 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t78, i64 %t79)
  store i64 %t82, ptr %l52
  br label %bb18
bb17:
  store i1 false, ptr %l43, !tbaa !21
  br label %bb24
bb18:
  %t83 = load ptr, ptr %l48, !tbaa !29
  %t84 = load i64, ptr %l52, !tbaa !24
  %t85 = call { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %t83, i64 %t84)
  %t86 = extractvalue { i32, i64 } %t85, 1
  %t87 = extractvalue { i32, i64 } %t85, 0
  store i32 %t87, ptr %l54
  %t88 = icmp ne i32 %t87, 0
  br i1 %t88, label %bb20, label %ok.89, !prof !99
ok.89:
  store i64 %t86, ptr %l53
  br label %bb19
bb19:
  %t90 = load i64, ptr %l53, !tbaa !24
  store i64 %t90, ptr %l46, !tbaa !24
  br label %bb22
bb20:
  br label %bb21
bb21:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb22
bb22:
  %t91 = load ptr, ptr %l45, !tbaa !29
  %t92 = load i64, ptr %l46, !tbaa !24
  %t93 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t91, i64 %t92)
  store i1 %t93, ptr %l55
  br label %bb23
bb23:
  %t94 = load i1, ptr %l55, !tbaa !21
  store i1 %t94, ptr %l43, !tbaa !21
  br label %bb24
bb24:
  %t95 = load i1, ptr %l43, !tbaa !21
  br i1 %t95, label %bb25, label %bb26
bb25:
  %t96 = load ptr, ptr %l0, !tbaa !29
  %t98 = getelementptr %"compiler/typed:dropWalk", ptr %t96, i32 0, i32 14
  store ptr %t98, ptr %l57, !tbaa !29
  %t99 = load ptr, ptr %l0, !tbaa !29
  %t101 = getelementptr %"compiler/typed:dropWalk", ptr %t99, i32 0, i32 5
  %t102 = load i64, ptr %l7, !tbaa !24
  %t105 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %t101, i64 %t102)
  store i64 %t105, ptr %l61
  br label %bb27
bb26:
  br label %bb29
bb27:
  %t106 = load ptr, ptr %l57, !tbaa !29
  %t107 = load i64, ptr %l61, !tbaa !24
  call void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %t106, i64 %t107, i1 true)
  br label %bb28
bb28:
  br label %bb29
bb29:
  br label %bb30
bb30:
  %t108 = load i64, ptr %l6, !tbaa !24
  %t110 = add i64 %t108, 1
  store i64 %t110, ptr %l6, !tbaa !24
  br label %bb11
bb31:
  br label %ret
ret:
  ret void
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca { i64, ptr }
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
  %l22 = alloca i64
  %l23 = alloca i64
  %l26 = alloca i64
  %l29 = alloca i64
  %l43 = alloca i64
  %l46 = alloca i64
  %l79 = alloca { i64, ptr }
  %l80 = alloca i64
  %l81 = alloca { i64, ptr }
  %l89 = alloca i64
  %l92 = alloca i64
  %l126 = alloca ptr
  %l129 = alloca { i64, ptr }
  %l135 = alloca i64
  %l137 = alloca ptr
  %l140 = alloca { i64, ptr }
  %l142 = alloca i32
  %l145 = alloca i32
  %l146 = alloca i32
  %l150 = alloca i64
  %l153 = alloca i64
  %l154 = alloca i32
  %l163 = alloca i64
  %l166 = alloca i64
  %l184 = alloca i1
  %l187 = alloca i1
  %l188 = alloca i32
  %l192 = alloca i1
  %l195 = alloca i1
  %l196 = alloca i32
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 2
  %t5 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t3)
  store i64 %t5, ptr %l26
  br label %bb1
bb1:
  %t6 = load i64, ptr %l26, !tbaa !24
  store i64 %t6, ptr %l3, !tbaa !24
  %t7 = load ptr, ptr %l0, !tbaa !29
  %t9 = getelementptr %"compiler/typed:dropWalk", ptr %t7, i32 0, i32 7
  %t11 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t9)
  store i64 %t11, ptr %l29
  br label %bb2
bb2:
  %t12 = load i64, ptr %l29, !tbaa !24
  store i64 %t12, ptr %l4, !tbaa !24
  %t13 = load ptr, ptr %l0, !tbaa !29
  %t15 = getelementptr %"compiler/typed:dropWalk", ptr %t13, i32 0, i32 7
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Block", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t15, i32 %t19)
  br label %bb3
bb3:
  %t22 = load ptr, ptr %l0, !tbaa !29
  %t24 = getelementptr %"compiler/typed:dropWalk", ptr %t22, i32 0, i32 8
  %t25 = load ptr, ptr %l0, !tbaa !29
  %t27 = getelementptr %"compiler/typed:dropWalk", ptr %t25, i32 0, i32 4
  %t28 = load i64, ptr %t27, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %t24, i64 %t28)
  br label %bb4
bb4:
  store i64 0, ptr %l5, !tbaa !24
  %t31 = load i64, ptr %l3, !tbaa !24
  %t33 = add i64 %t31, 1
  store i64 %t33, ptr %l6, !tbaa !24
  store i64 1, ptr %l7, !tbaa !24
  %t35 = load i64, ptr %l6, !tbaa !24
  %t36 = load i64, ptr %l5, !tbaa !24
  %t39 = icmp sgt i64 %t35, %t36
  br i1 %t39, label %bb5, label %bb6
bb5:
  %t41 = load i64, ptr %l7, !tbaa !24
  %t43 = icmp sgt i64 %t41, 0
  br i1 %t43, label %bb7, label %bb8
bb6:
  store i64 0, ptr %l43, !tbaa !24
  br label %bb10
bb7:
  %t45 = load i64, ptr %l6, !tbaa !24
  %t46 = load i64, ptr %l5, !tbaa !24
  %t49 = sub i64 %t45, %t46
  %t50 = load i64, ptr %l7, !tbaa !24
  %t53 = add i64 %t49, %t50
  %t55 = sub i64 %t53, 1
  %t56 = load i64, ptr %l7, !tbaa !24
  %t59 = sdiv i64 %t55, %t56
  store i64 %t59, ptr %l46, !tbaa !24
  br label %bb9
bb8:
  store i64 0, ptr %l46, !tbaa !24
  br label %bb9
bb9:
  %t61 = load i64, ptr %l46, !tbaa !24
  store i64 %t61, ptr %l43, !tbaa !24
  br label %bb10
bb10:
  %t62 = load i64, ptr %l43, !tbaa !24
  store i64 %t62, ptr %l8, !tbaa !24
  store i64 0, ptr %l9, !tbaa !24
  br label %bb11
bb11:
  %t63 = load i64, ptr %l9, !tbaa !24
  %t64 = load i64, ptr %l8, !tbaa !24
  %t67 = icmp slt i64 %t63, %t64
  %t69 = xor i1 %t67, true
  br i1 %t69, label %bb12, label %bb13
bb12:
  br label %bb18
bb13:
  br label %bb14
bb14:
  %t71 = load i64, ptr %l5, !tbaa !24
  %t72 = load i64, ptr %l9, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t76 = mul i64 %t72, %t73
  %t79 = add i64 %t71, %t76
  store i64 %t79, ptr %l10, !tbaa !24
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t83 = getelementptr %"compiler/typed:dropWalk", ptr %t81, i32 0, i32 9
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t83, i1 false)
  br label %bb15
bb15:
  %t85 = load ptr, ptr %l0, !tbaa !29
  %t87 = getelementptr %"compiler/typed:dropWalk", ptr %t85, i32 0, i32 10
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %t87, i1 false)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t89 = load i64, ptr %l9, !tbaa !24
  %t91 = add i64 %t89, 1
  store i64 %t91, ptr %l9, !tbaa !24
  br label %bb11
bb18:
  %t93 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:dropWalk", ptr %t93, i32 0, i32 9
  %t96 = load i64, ptr %l4, !tbaa !24
  %t97 = load i64, ptr %l3, !tbaa !24
  %t99 = add i64 %t97, 1
  %t102 = mul i64 %t96, %t99
  %t103 = load i64, ptr %l3, !tbaa !24
  %t106 = add i64 %t102, %t103
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t95, i64 %t106, i1 true)
  br label %bb19
bb19:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %s0, ptr %t109)
  store { i64, ptr } %t111, ptr %l79
  br label %bb20
bb20:
  %t112 = load { i64, ptr }, ptr %l79, !tbaa !27
  %t113 = extractvalue { i64, ptr } %t112, 0
  store i64 %t113, ptr %l80, !tbaa !24
  %t114 = load i64, ptr %l80, !tbaa !24
  %t115 = mul i64 %t114, 1
  %t116 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t115)
  %t117 = insertvalue { i64, ptr } undef, i64 %t114, 0
  %t118 = insertvalue { i64, ptr } %t117, ptr %t116, 1
  store { i64, ptr } %t118, ptr %l81, !tbaa !27
  %t119 = getelementptr { i64, ptr }, ptr %l81, i32 0, i32 1
  %t120 = load ptr, ptr %t119, !tbaa !27
  %t121 = getelementptr { i64, ptr }, ptr %l79, i32 0, i32 1
  %t122 = load ptr, ptr %t121, !tbaa !27
  %t123 = load i64, ptr %l80, !tbaa !24
  %t124 = mul i64 %t123, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t120, ptr %t122, i64 %t124, i1 false)
  %t125 = load { i64, ptr }, ptr %l81, !tbaa !27
  store { i64, ptr } %t125, ptr %l11, !tbaa !27
  br label %bb21
bb21:
  store %olang.scope zeroinitializer, ptr %s4
  %t126 = load ptr, ptr %l0, !tbaa !29
  %t127 = load { i64, ptr }, ptr %l11, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s0, ptr %t126, { i64, ptr } %t127)
  br label %bb22
bb22:
  store i64 0, ptr %l12, !tbaa !24
  %t130 = load i64, ptr %l3, !tbaa !24
  %t132 = add i64 %t130, 1
  store i64 %t132, ptr %l13, !tbaa !24
  store i64 1, ptr %l14, !tbaa !24
  %t134 = load i64, ptr %l13, !tbaa !24
  %t135 = load i64, ptr %l12, !tbaa !24
  %t138 = icmp sgt i64 %t134, %t135
  br i1 %t138, label %bb23, label %bb24
bb23:
  %t140 = load i64, ptr %l14, !tbaa !24
  %t142 = icmp sgt i64 %t140, 0
  br i1 %t142, label %bb25, label %bb26
bb24:
  store i64 0, ptr %l89, !tbaa !24
  br label %bb28
bb25:
  %t144 = load i64, ptr %l13, !tbaa !24
  %t145 = load i64, ptr %l12, !tbaa !24
  %t148 = sub i64 %t144, %t145
  %t149 = load i64, ptr %l14, !tbaa !24
  %t152 = add i64 %t148, %t149
  %t154 = sub i64 %t152, 1
  %t155 = load i64, ptr %l14, !tbaa !24
  %t158 = sdiv i64 %t154, %t155
  store i64 %t158, ptr %l92, !tbaa !24
  br label %bb27
bb26:
  store i64 0, ptr %l92, !tbaa !24
  br label %bb27
bb27:
  %t160 = load i64, ptr %l92, !tbaa !24
  store i64 %t160, ptr %l89, !tbaa !24
  br label %bb28
bb28:
  %t161 = load i64, ptr %l89, !tbaa !24
  store i64 %t161, ptr %l15, !tbaa !24
  store i64 0, ptr %l16, !tbaa !24
  br label %bb29
bb29:
  %t162 = load i64, ptr %l16, !tbaa !24
  %t163 = load i64, ptr %l15, !tbaa !24
  %t166 = icmp slt i64 %t162, %t163
  %t168 = xor i1 %t166, true
  br i1 %t168, label %bb30, label %bb31
bb30:
  br label %bb35
bb31:
  br label %bb32
bb32:
  %t170 = load i64, ptr %l12, !tbaa !24
  %t171 = load i64, ptr %l16, !tbaa !24
  %t172 = load i64, ptr %l14, !tbaa !24
  %t175 = mul i64 %t171, %t172
  %t178 = add i64 %t170, %t175
  store i64 %t178, ptr %l17, !tbaa !24
  %t180 = load ptr, ptr %l0, !tbaa !29
  %t182 = getelementptr %"compiler/typed:dropWalk", ptr %t180, i32 0, i32 10
  %t183 = load i64, ptr %l4, !tbaa !24
  %t184 = load i64, ptr %l3, !tbaa !24
  %t186 = add i64 %t184, 1
  %t189 = mul i64 %t183, %t186
  %t190 = load i64, ptr %l17, !tbaa !24
  %t193 = add i64 %t189, %t190
  %t194 = load i64, ptr %l17, !tbaa !24
  %t195 = load i64, ptr %l3, !tbaa !24
  %t198 = icmp eq i64 %t194, %t195
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %t182, i64 %t193, i1 %t198)
  br label %bb33
bb33:
  br label %bb34
bb34:
  %t202 = load i64, ptr %l16, !tbaa !24
  %t204 = add i64 %t202, 1
  store i64 %t204, ptr %l16, !tbaa !24
  br label %bb29
bb35:
  %t206 = load ptr, ptr %l0, !tbaa !29
  %t207 = load ptr, ptr %l1, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v1, ptr %t206, ptr %t207)
  br label %bb36
bb36:
  %t211 = load ptr, ptr %l0, !tbaa !29
  store ptr %t211, ptr %l126, !tbaa !29
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t213 = load i64, ptr %l4, !tbaa !24
  %t216 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloopState(ptr %v0, ptr %s4, ptr %t212, i1 false, i64 %t213)
  store { i64, ptr } %t216, ptr %l129
  br label %bb37
bb37:
  %t217 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t218 = extractvalue { i64, ptr } %t217, 0
  %t219 = extractvalue { i64, ptr } %t217, 1
  %t220 = mul i64 %t218, 1
  %t221 = call ptr @__olang_scope_alloc(ptr %s4, i64 %t220)
  call void @llvm.memcpy.p0.p0.i64(ptr %t221, ptr %t219, i64 %t220, i1 false)
  %t222 = insertvalue { i64, ptr } undef, i64 %t218, 0
  %t223 = insertvalue { i64, ptr } %t222, ptr %t221, 1
  %t224 = load ptr, ptr %l126, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %s4, ptr %t224, { i64, ptr } %t223)
  br label %bb38
bb38:
  %t226 = load ptr, ptr %l0, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eblock(ptr %v0, ptr %v2, ptr %t226, ptr %a2)
  br label %bb39
bb39:
  %t230 = load ptr, ptr %l0, !tbaa !29
  %t231 = load { i64, ptr }, ptr %l11, !tbaa !27
  %t234 = call i64 @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ewiden(ptr %v0, ptr %s0, ptr %t230, { i64, ptr } %t231)
  store i64 %t234, ptr %l135
  br label %bb40
bb40:
  %t235 = load i64, ptr %l135, !tbaa !24
  %t236 = icmp eq i64 %t235, 0
  br i1 %t236, label %bb41, label %bb42
bb41:
  call void @__olang_scope_close(ptr %s4)
  br label %bb45
bb42:
  br label %bb43
bb43:
  call void @__olang_scope_close(ptr %s4)
  br label %bb44
bb44:
  br label %bb21
bb45:
  %t238 = load ptr, ptr %l0, !tbaa !29
  store ptr %t238, ptr %l137, !tbaa !29
  %t239 = load ptr, ptr %l0, !tbaa !29
  %t240 = load i64, ptr %l4, !tbaa !24
  %t243 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloopState(ptr %v0, ptr %s0, ptr %t239, i1 true, i64 %t240)
  store { i64, ptr } %t243, ptr %l140
  br label %bb46
bb46:
  %t244 = load { i64, ptr }, ptr %l140, !tbaa !27
  %t245 = extractvalue { i64, ptr } %t244, 0
  %t246 = extractvalue { i64, ptr } %t244, 1
  %t247 = mul i64 %t245, 1
  %t248 = call ptr @__olang_scope_alloc(ptr %s0, i64 %t247)
  call void @llvm.memcpy.p0.p0.i64(ptr %t248, ptr %t246, i64 %t247, i1 false)
  %t249 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t250 = insertvalue { i64, ptr } %t249, ptr %t248, 1
  %t251 = load ptr, ptr %l137, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %s0, ptr %t251, { i64, ptr } %t250)
  br label %bb47
bb47:
  %t253 = load ptr, ptr %l0, !tbaa !29
  %t255 = getelementptr %"compiler/typed:dropWalk", ptr %t253, i32 0, i32 7
  %t257 = call { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %t255)
  %t258 = extractvalue { i32, i32 } %t257, 1
  %t259 = extractvalue { i32, i32 } %t257, 0
  store i32 %t259, ptr %l146
  %t260 = icmp ne i32 %t259, 0
  br i1 %t260, label %bb49, label %ok.261, !prof !99
ok.261:
  store i32 %t258, ptr %l145
  br label %bb48
bb48:
  %t262 = load i32, ptr %l145, !tbaa !23
  store i32 %t262, ptr %l142, !tbaa !23
  br label %bb56
bb49:
  %t263 = load i32, ptr %l146, !tbaa !23
  %t264 = icmp eq i32 %t263, 65536
  br i1 %t264, label %bb50, label %bb51
bb50:
  call void @__olang_bang_failed_plain(ptr @olang_loc_1a9a85648681e97_fcf9d2fab7c32a6b)
  unreachable
bb51:
  %t266 = load i32, ptr %l146, !tbaa !23
  %t267 = icmp eq i32 %t266, 65537
  br i1 %t267, label %bb52, label %bb53
bb52:
  call void @__olang_bang_failed_plain(ptr @olang_loc_54fd08b205476dc4_657f8db756d05b08)
  unreachable
bb53:
  %t269 = load i32, ptr %l146, !tbaa !23
  %t270 = icmp eq i32 %t269, 65538
  br i1 %t270, label %bb54, label %bb55
bb54:
  call void @__olang_bang_failed_plain(ptr @olang_loc_923c0e7922172d2c_3d5b7ddd1cd85e60)
  unreachable
bb55:
  call void @__olang_bang_failed_plain(ptr @olang_loc_3398753e62525e0a_a26aec7fb7dfed8e)
  unreachable
bb56:
  %t272 = load ptr, ptr %l0, !tbaa !29
  %t274 = getelementptr %"compiler/typed:dropWalk", ptr %t272, i32 0, i32 8
  %t276 = call { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %t274)
  %t277 = extractvalue { i32, i64 } %t276, 1
  %t278 = extractvalue { i32, i64 } %t276, 0
  store i32 %t278, ptr %l154
  %t279 = icmp ne i32 %t278, 0
  br i1 %t279, label %bb58, label %ok.280, !prof !99
ok.280:
  store i64 %t277, ptr %l153
  br label %bb57
bb57:
  %t281 = load i64, ptr %l153, !tbaa !24
  store i64 %t281, ptr %l150, !tbaa !24
  br label %bb65
bb58:
  %t282 = load i32, ptr %l154, !tbaa !23
  %t283 = icmp eq i32 %t282, 65536
  br i1 %t283, label %bb59, label %bb60
bb59:
  call void @__olang_bang_failed_plain(ptr @olang_loc_8b9fe86f9939495b_ac6312ba480f0d67)
  unreachable
bb60:
  %t285 = load i32, ptr %l154, !tbaa !23
  %t286 = icmp eq i32 %t285, 65537
  br i1 %t286, label %bb61, label %bb62
bb61:
  call void @__olang_bang_failed_plain(ptr @olang_loc_3f464ddbb91b0a38_82918aeeacdcc614)
  unreachable
bb62:
  %t288 = load i32, ptr %l154, !tbaa !23
  %t289 = icmp eq i32 %t288, 65538
  br i1 %t289, label %bb63, label %bb64
bb63:
  call void @__olang_bang_failed_plain(ptr @olang_loc_29167372d5c184b0_5aaac5f2b3f16f1c)
  unreachable
bb64:
  call void @__olang_bang_failed_plain(ptr @olang_loc_18d2a0b724f39c7e_37ab118f04dce49a)
  unreachable
bb65:
  store i64 0, ptr %l18, !tbaa !24
  %t291 = load i64, ptr %l3, !tbaa !24
  %t293 = add i64 %t291, 1
  store i64 %t293, ptr %l19, !tbaa !24
  store i64 1, ptr %l20, !tbaa !24
  %t295 = load i64, ptr %l19, !tbaa !24
  %t296 = load i64, ptr %l18, !tbaa !24
  %t299 = icmp sgt i64 %t295, %t296
  br i1 %t299, label %bb66, label %bb67
bb66:
  %t301 = load i64, ptr %l20, !tbaa !24
  %t303 = icmp sgt i64 %t301, 0
  br i1 %t303, label %bb68, label %bb69
bb67:
  store i64 0, ptr %l163, !tbaa !24
  br label %bb71
bb68:
  %t305 = load i64, ptr %l19, !tbaa !24
  %t306 = load i64, ptr %l18, !tbaa !24
  %t309 = sub i64 %t305, %t306
  %t310 = load i64, ptr %l20, !tbaa !24
  %t313 = add i64 %t309, %t310
  %t315 = sub i64 %t313, 1
  %t316 = load i64, ptr %l20, !tbaa !24
  %t319 = sdiv i64 %t315, %t316
  store i64 %t319, ptr %l166, !tbaa !24
  br label %bb70
bb69:
  store i64 0, ptr %l166, !tbaa !24
  br label %bb70
bb70:
  %t321 = load i64, ptr %l166, !tbaa !24
  store i64 %t321, ptr %l163, !tbaa !24
  br label %bb71
bb71:
  %t322 = load i64, ptr %l163, !tbaa !24
  store i64 %t322, ptr %l21, !tbaa !24
  store i64 0, ptr %l22, !tbaa !24
  br label %bb72
bb72:
  %t323 = load i64, ptr %l22, !tbaa !24
  %t324 = load i64, ptr %l21, !tbaa !24
  %t327 = icmp slt i64 %t323, %t324
  %t329 = xor i1 %t327, true
  br i1 %t329, label %bb73, label %bb74
bb73:
  br label %bb95
bb74:
  br label %bb75
bb75:
  %t331 = load i64, ptr %l18, !tbaa !24
  %t332 = load i64, ptr %l22, !tbaa !24
  %t333 = load i64, ptr %l20, !tbaa !24
  %t336 = mul i64 %t332, %t333
  %t339 = add i64 %t331, %t336
  store i64 %t339, ptr %l23, !tbaa !24
  %t341 = load ptr, ptr %l0, !tbaa !29
  %t343 = getelementptr %"compiler/typed:dropWalk", ptr %t341, i32 0, i32 9
  %t345 = call { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %t343)
  %t346 = extractvalue { i32, i1 } %t345, 1
  %t347 = extractvalue { i32, i1 } %t345, 0
  store i32 %t347, ptr %l188
  %t348 = icmp ne i32 %t347, 0
  br i1 %t348, label %bb77, label %ok.349, !prof !99
ok.349:
  store i1 %t346, ptr %l187
  br label %bb76
bb76:
  %t350 = load i1, ptr %l187, !tbaa !21
  store i1 %t350, ptr %l184, !tbaa !21
  br label %bb84
bb77:
  %t351 = load i32, ptr %l188, !tbaa !23
  %t352 = icmp eq i32 %t351, 65536
  br i1 %t352, label %bb78, label %bb79
bb78:
  call void @__olang_bang_failed_plain(ptr @olang_loc_fb0720d2dfee7f_1f99818eb62f02f3)
  unreachable
bb79:
  %t354 = load i32, ptr %l188, !tbaa !23
  %t355 = icmp eq i32 %t354, 65537
  br i1 %t355, label %bb80, label %bb81
bb80:
  call void @__olang_bang_failed_plain(ptr @olang_loc_3cd7aa482e25463c_a46dd5e6d10de4a0)
  unreachable
bb81:
  %t357 = load i32, ptr %l188, !tbaa !23
  %t358 = icmp eq i32 %t357, 65538
  br i1 %t358, label %bb82, label %bb83
bb82:
  call void @__olang_bang_failed_plain(ptr @olang_loc_65fecb72da6e9be9_e6833fce5f1f4ea5)
  unreachable
bb83:
  call void @__olang_bang_failed_plain(ptr @olang_loc_313fe9555679a06f_fa589a226c49c6eb)
  unreachable
bb84:
  %t360 = load ptr, ptr %l0, !tbaa !29
  %t362 = getelementptr %"compiler/typed:dropWalk", ptr %t360, i32 0, i32 10
  %t364 = call { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %t362)
  %t365 = extractvalue { i32, i1 } %t364, 1
  %t366 = extractvalue { i32, i1 } %t364, 0
  store i32 %t366, ptr %l196
  %t367 = icmp ne i32 %t366, 0
  br i1 %t367, label %bb86, label %ok.368, !prof !99
ok.368:
  store i1 %t365, ptr %l195
  br label %bb85
bb85:
  %t369 = load i1, ptr %l195, !tbaa !21
  store i1 %t369, ptr %l192, !tbaa !21
  br label %bb93
bb86:
  %t370 = load i32, ptr %l196, !tbaa !23
  %t371 = icmp eq i32 %t370, 65536
  br i1 %t371, label %bb87, label %bb88
bb87:
  call void @__olang_bang_failed_plain(ptr @olang_loc_f3df993f4c7e1fd4_8419908bae6ac650)
  unreachable
bb88:
  %t373 = load i32, ptr %l196, !tbaa !23
  %t374 = icmp eq i32 %t373, 65537
  br i1 %t374, label %bb89, label %bb90
bb89:
  call void @__olang_bang_failed_plain(ptr @olang_loc_e306d5ccad957c29_6b95b0de26f94a45)
  unreachable
bb90:
  %t376 = load i32, ptr %l196, !tbaa !23
  %t377 = icmp eq i32 %t376, 65538
  br i1 %t377, label %bb91, label %bb92
bb91:
  call void @__olang_bang_failed_plain(ptr @olang_loc_d73b6870bbe51a4d_d845c63f23993221)
  unreachable
bb92:
  call void @__olang_bang_failed_plain(ptr @olang_loc_2545ce011bc2e3f3_a4cac8bc0a2d8747)
  unreachable
bb93:
  br label %bb94
bb94:
  %t379 = load i64, ptr %l22, !tbaa !24
  %t381 = add i64 %t379, 1
  store i64 %t381, ptr %l22, !tbaa !24
  br label %bb72
bb95:
  call void @__olang_scope_close(ptr %s0)
  br label %ret
ret:
  ret void
}

define dso_local i64 @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ewiden(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
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
  %l12 = alloca { i64, ptr }
  %l15 = alloca i64
  %l17 = alloca i64
  %l18 = alloca { i64, ptr }
  %l21 = alloca i64
  %l24 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l52 = alloca i1
  %l53 = alloca i1
  %l54 = alloca { i64, ptr }
  %l60 = alloca { i64, ptr }
  %l61 = alloca i64
  %l62 = alloca { i64, ptr }
  %l65 = alloca i1
  %l69 = alloca i1
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = getelementptr %"compiler/typed:dropWalk", ptr %t1, i32 0, i32 3
  %t4 = load i1, ptr %t3, !tbaa !21
  br i1 %t4, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t7 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t7, ptr %l12, !tbaa !27
  %t8 = load ptr, ptr %l0, !tbaa !29
  %t10 = getelementptr %"compiler/typed:dropWalk", ptr %t8, i32 0, i32 2
  %t12 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t10)
  store i64 %t12, ptr %l15
  br label %bb4
bb4:
  %t13 = load i64, ptr %l15, !tbaa !24
  %t14 = getelementptr { i64, ptr }, ptr %l12, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = getelementptr i1, ptr %t15, i64 %t13
  %t17 = load i1, ptr %t16, !tbaa !31
  br i1 %t17, label %bb5, label %bb6
bb5:
  store i64 1, ptr %l17, !tbaa !24
  br label %bb7
bb6:
  store i64 0, ptr %l17, !tbaa !24
  br label %bb7
bb7:
  %t19 = load i64, ptr %l17, !tbaa !24
  store i64 %t19, ptr %l2, !tbaa !24
  %t20 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t20, ptr %l18, !tbaa !27
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:dropWalk", ptr %t21, i32 0, i32 2
  %t25 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t23)
  store i64 %t25, ptr %l21
  br label %bb8
bb8:
  %t26 = load i64, ptr %l21, !tbaa !24
  %t27 = getelementptr { i64, ptr }, ptr %l18, i32 0, i32 1
  %t28 = load ptr, ptr %t27, !tbaa !27
  %t29 = getelementptr i1, ptr %t28, i64 %t26
  store i1 false, ptr %t29, !tbaa !31
  store i64 0, ptr %l3, !tbaa !24
  %t30 = load ptr, ptr %l0, !tbaa !29
  %t32 = getelementptr %"compiler/typed:dropWalk", ptr %t30, i32 0, i32 2
  %t34 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %t32)
  store i64 %t34, ptr %l24
  br label %bb9
bb9:
  %t35 = load i64, ptr %l24, !tbaa !24
  store i64 %t35, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t36 = load i64, ptr %l4, !tbaa !24
  %t37 = load i64, ptr %l3, !tbaa !24
  %t40 = icmp sgt i64 %t36, %t37
  br i1 %t40, label %bb10, label %bb11
bb10:
  %t42 = load i64, ptr %l5, !tbaa !24
  %t44 = icmp sgt i64 %t42, 0
  br i1 %t44, label %bb12, label %bb13
bb11:
  store i64 0, ptr %l28, !tbaa !24
  br label %bb15
bb12:
  %t46 = load i64, ptr %l4, !tbaa !24
  %t47 = load i64, ptr %l3, !tbaa !24
  %t50 = sub i64 %t46, %t47
  %t51 = load i64, ptr %l5, !tbaa !24
  %t54 = add i64 %t50, %t51
  %t56 = sub i64 %t54, 1
  %t57 = load i64, ptr %l5, !tbaa !24
  %t60 = sdiv i64 %t56, %t57
  store i64 %t60, ptr %l31, !tbaa !24
  br label %bb14
bb13:
  store i64 0, ptr %l31, !tbaa !24
  br label %bb14
bb14:
  %t62 = load i64, ptr %l31, !tbaa !24
  store i64 %t62, ptr %l28, !tbaa !24
  br label %bb15
bb15:
  %t63 = load i64, ptr %l28, !tbaa !24
  store i64 %t63, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb16
bb16:
  %t64 = load i64, ptr %l7, !tbaa !24
  %t65 = load i64, ptr %l6, !tbaa !24
  %t68 = icmp slt i64 %t64, %t65
  %t70 = xor i1 %t68, true
  br i1 %t70, label %bb17, label %bb18
bb17:
  br label %bb32
bb18:
  br label %bb19
bb19:
  %t72 = load i64, ptr %l3, !tbaa !24
  %t73 = load i64, ptr %l7, !tbaa !24
  %t74 = load i64, ptr %l5, !tbaa !24
  %t77 = mul i64 %t73, %t74
  %t80 = add i64 %t72, %t77
  store i64 %t80, ptr %l8, !tbaa !24
  %t82 = load ptr, ptr %l0, !tbaa !29
  %t84 = getelementptr %"compiler/typed:dropWalk", ptr %t82, i32 0, i32 2
  %t85 = load i64, ptr %l8, !tbaa !24
  %t88 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t84, i64 %t85)
  store i1 %t88, ptr %l52
  br label %bb20
bb20:
  %t89 = load i1, ptr %l52, !tbaa !21
  br i1 %t89, label %bb21, label %bb22
bb21:
  %t90 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t90, ptr %l54, !tbaa !27
  %t91 = load i64, ptr %l8, !tbaa !24
  %t93 = getelementptr { i64, ptr }, ptr %l54, i32 0, i32 1
  %t94 = load ptr, ptr %t93, !tbaa !27
  %t95 = getelementptr i1, ptr %t94, i64 %t91
  %t96 = load i1, ptr %t95, !tbaa !31
  %t98 = xor i1 %t96, true
  store i1 %t98, ptr %l53, !tbaa !21
  br label %bb23
bb22:
  store i1 false, ptr %l53, !tbaa !21
  br label %bb23
bb23:
  %t100 = load i1, ptr %l53, !tbaa !21
  br i1 %t100, label %bb24, label %bb25
bb24:
  %t101 = load i64, ptr %l2, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l2, !tbaa !24
  br label %bb26
bb25:
  br label %bb26
bb26:
  %t105 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t105, ptr %l60, !tbaa !27
  %t106 = load i64, ptr %l8, !tbaa !24
  store i64 %t106, ptr %l61, !tbaa !24
  %t107 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t107, ptr %l62, !tbaa !27
  %t108 = load i64, ptr %l8, !tbaa !24
  %t110 = getelementptr { i64, ptr }, ptr %l62, i32 0, i32 1
  %t111 = load ptr, ptr %t110, !tbaa !27
  %t112 = getelementptr i1, ptr %t111, i64 %t108
  %t113 = load i1, ptr %t112, !tbaa !31
  br i1 %t113, label %bb27, label %bb28
bb27:
  store i1 true, ptr %l65, !tbaa !21
  br label %bb30
bb28:
  %t115 = load ptr, ptr %l0, !tbaa !29
  %t117 = getelementptr %"compiler/typed:dropWalk", ptr %t115, i32 0, i32 2
  %t118 = load i64, ptr %l8, !tbaa !24
  %t121 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %t117, i64 %t118)
  store i1 %t121, ptr %l69
  br label %bb29
bb29:
  %t122 = load i1, ptr %l69, !tbaa !21
  store i1 %t122, ptr %l65, !tbaa !21
  br label %bb30
bb30:
  %t123 = load i1, ptr %l65, !tbaa !21
  %t124 = load i64, ptr %l61, !tbaa !24
  %t125 = getelementptr { i64, ptr }, ptr %l60, i32 0, i32 1
  %t126 = load ptr, ptr %t125, !tbaa !27
  %t127 = getelementptr i1, ptr %t126, i64 %t124
  store i1 %t123, ptr %t127, !tbaa !31
  br label %bb31
bb31:
  %t128 = load i64, ptr %l7, !tbaa !24
  %t130 = add i64 %t128, 1
  store i64 %t130, ptr %l7, !tbaa !24
  br label %bb16
bb32:
  %t132 = load i64, ptr %l2, !tbaa !24
  store i64 %t132, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l0 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca { i64, ptr }
  %l7 = alloca i64
  %l8 = alloca i64
  %l17 = alloca { i64, ptr }
  %l31 = alloca { i64, ptr }
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s4 = alloca %olang.scope
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l2, !tbaa !27
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
  br label %bb14
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t15, ptr %l17, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr ptr, ptr %t19, i64 %t16
  %t21 = load ptr, ptr %t20, !tbaa !39
  store ptr %t21, ptr %l5, !tbaa !29
  %t23 = load ptr, ptr %l0, !tbaa !29
  %t24 = load ptr, ptr %l5, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Clause", ptr %t24, i32 0, i32 3
  %t27 = load ptr, ptr %t26, !tbaa !29
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %t23, ptr %t27)
  br label %bb5
bb5:
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Clause", ptr %t30, i32 0, i32 4
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  store { i64, ptr } %t33, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t35 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t37 = extractvalue { i64, ptr } %t35, 0
  store i64 %t37, ptr %l8, !tbaa !24
  br label %bb6
bb6:
  store %olang.scope zeroinitializer, ptr %s4
  %t39 = load i64, ptr %l7, !tbaa !24
  %t40 = load i64, ptr %l8, !tbaa !24
  %t43 = icmp slt i64 %t39, %t40
  %t45 = xor i1 %t43, true
  br i1 %t45, label %bb7, label %bb8
bb7:
  call void @__olang_scope_close(ptr %s4)
  br label %bb12
bb8:
  br label %bb9
bb9:
  %t47 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t47, ptr %l31, !tbaa !27
  %t48 = load i64, ptr %l7, !tbaa !24
  %t50 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t51 = load ptr, ptr %t50, !tbaa !27
  %t52 = getelementptr ptr, ptr %t51, i64 %t48
  %t53 = load ptr, ptr %t52, !tbaa !39
  %t55 = load ptr, ptr %l0, !tbaa !29
  %t60 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %s4, ptr %v2, ptr %v3, ptr %t55, ptr %t53)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t60, ptr %l37
  br label %bb10
bb10:
  call void @__olang_scope_close(ptr %s4)
  br label %bb11
bb11:
  %t61 = load i64, ptr %l7, !tbaa !24
  %t63 = add i64 %t61, 1
  store i64 %t63, ptr %l7, !tbaa !24
  br label %bb6
bb12:
  br label %bb13
bb13:
  %t65 = load i64, ptr %l3, !tbaa !24
  %t67 = add i64 %t65, 1
  store i64 %t67, ptr %l3, !tbaa !24
  br label %bb1
bb14:
  br label %ret
ret:
  ret void
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eclosure(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca ptr
  %l9 = alloca i64
  %l10 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l30 = alloca i64
  %l32 = alloca i64
  %l36 = alloca ptr
  %l39 = alloca i64
  %l40 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l42 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca i64
  %l51 = alloca i64
  %l54 = alloca i1
  %s7 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t1, ptr %l11
  br label %bb1
bb1:
  %t2 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t2, ptr %lp2
  %t3 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  %t4 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t3, ptr %t4
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t7 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t9 = extractvalue { i64, ptr } %t7, 0
  store i64 %t9, ptr %l5, !tbaa !24
  br label %bb2
bb2:
  %t11 = load i64, ptr %l4, !tbaa !24
  %t12 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp slt i64 %t11, %t12
  %t17 = xor i1 %t15, true
  br i1 %t17, label %bb3, label %bb4
bb3:
  br label %bb12
bb4:
  br label %bb5
bb5:
  %t19 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t19, ptr %l19, !tbaa !27
  %t20 = load i64, ptr %l4, !tbaa !24
  %t22 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t23 = load ptr, ptr %t22, !tbaa !27
  %t24 = getelementptr i64, ptr %t23, i64 %t20
  %t25 = load i64, ptr %t24, !tbaa !34
  store i64 %t25, ptr %l6, !tbaa !24
  %t27 = load ptr, ptr %lp2
  %t28 = load i64, ptr %l6, !tbaa !24
  %t31 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v2, ptr %t27, i64 %t28)
  store i1 %t31, ptr %l24
  br label %bb6
bb6:
  %t32 = load i1, ptr %l24, !tbaa !21
  %t33 = xor i1 %t32, true
  br i1 %t33, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %lp2
  %t36 = load i64, ptr %l6, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t35, i64 %t36)
  br label %bb9
bb8:
  br label %bb10
bb9:
  br label %bb10
bb10:
  br label %bb11
bb11:
  %t39 = load i64, ptr %l4, !tbaa !24
  %t41 = add i64 %t39, 1
  store i64 %t41, ptr %l4, !tbaa !24
  br label %bb2
bb12:
  store i64 0, ptr %l7, !tbaa !24
  br label %bb13
bb13:
  %t43 = load i64, ptr %l7, !tbaa !24
  store i64 %t43, ptr %l30, !tbaa !24
  %t44 = load ptr, ptr %lp2
  %t46 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t44)
  store i64 %t46, ptr %l32
  br label %bb14
bb14:
  %t47 = load i64, ptr %l30, !tbaa !24
  %t48 = load i64, ptr %l32, !tbaa !24
  %t49 = icmp slt i64 %t47, %t48
  %t51 = xor i1 %t49, true
  br i1 %t51, label %bb15, label %bb16
bb15:
  br label %bb35
bb16:
  br label %bb17
bb17:
  store %olang.scope zeroinitializer, ptr %s7
  %t55 = getelementptr %"compiler/typed:holdWalk", ptr %a0, i32 0, i32 2
  store ptr %t55, ptr %l36, !tbaa !29
  %t56 = load ptr, ptr %lp2
  %t57 = load i64, ptr %l7, !tbaa !24
  %t60 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t56, i64 %t57)
  store i64 %t60, ptr %l39
  br label %bb18
bb18:
  %t61 = load ptr, ptr %l36, !tbaa !29
  %t62 = load i64, ptr %l39, !tbaa !24
  %t63 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %s7, ptr %t61, i64 %t62)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l40
  br label %bb19
bb19:
  %t65 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3cI64_3e(ptr %s7, ptr %l40)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t65, ptr %l42
  br label %bb20
bb20:
  %t66 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l42
  %t67 = call ptr @__olang_scope_alloc_a(ptr %s7, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t66, ptr %t67
  store ptr %t67, ptr %l8, !tbaa !29
  store i64 0, ptr %l9, !tbaa !24
  br label %bb21
bb21:
  %t69 = load i64, ptr %l9, !tbaa !24
  store i64 %t69, ptr %l44, !tbaa !24
  %t70 = load ptr, ptr %l8, !tbaa !29
  %t72 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %s7, ptr %t70)
  store i64 %t72, ptr %l46
  br label %bb22
bb22:
  %t73 = load i64, ptr %l44, !tbaa !24
  %t74 = load i64, ptr %l46, !tbaa !24
  %t75 = icmp slt i64 %t73, %t74
  %t77 = xor i1 %t75, true
  br i1 %t77, label %bb23, label %bb24
bb23:
  br label %bb33
bb24:
  br label %bb25
bb25:
  %t79 = load ptr, ptr %l8, !tbaa !29
  %t80 = load i64, ptr %l9, !tbaa !24
  %t83 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %s7, ptr %t79, i64 %t80)
  store i64 %t83, ptr %l51
  br label %bb26
bb26:
  %t84 = load i64, ptr %l51, !tbaa !24
  store i64 %t84, ptr %l10, !tbaa !24
  %t85 = load ptr, ptr %lp2
  %t86 = load i64, ptr %l10, !tbaa !24
  %t89 = call i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v2, ptr %t85, i64 %t86)
  store i1 %t89, ptr %l54
  br label %bb27
bb27:
  %t90 = load i1, ptr %l54, !tbaa !21
  %t91 = xor i1 %t90, true
  br i1 %t91, label %bb28, label %bb29
bb28:
  %t93 = load ptr, ptr %lp2
  %t94 = load i64, ptr %l10, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t93, i64 %t94)
  br label %bb30
bb29:
  br label %bb31
bb30:
  br label %bb31
bb31:
  br label %bb32
bb32:
  %t97 = load i64, ptr %l9, !tbaa !24
  %t99 = add i64 %t97, 1
  store i64 %t99, ptr %l9, !tbaa !24
  br label %bb21
bb33:
  call void @__olang_scope_close(ptr %s7)
  br label %bb34
bb34:
  %t101 = load i64, ptr %l7, !tbaa !24
  %t103 = add i64 %t101, 1
  store i64 %t103, ptr %l7, !tbaa !24
  br label %bb13
bb35:
  %t105 = load ptr, ptr %lp2
  %t106 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t105
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t106, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2efnVal(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %lp2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca i64
  %l9 = alloca ptr
  %l10 = alloca i64
  %l12 = alloca ptr
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca ptr
  %l18 = alloca i1
  %l23 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l31 = alloca { i64, ptr }
  %l40 = alloca i64
  %l42 = alloca i64
  %l47 = alloca ptr
  %l48 = alloca ptr
  %l52 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l56 = alloca ptr
  %l58 = alloca { i64, ptr }
  %l59 = alloca ptr
  %l60 = alloca i1
  %l68 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l69 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %s1 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %rv = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v2 to i64
  store i64 %t1, ptr %l13, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2efnVal_2elocal_2e2
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v2)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l13, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l13
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l15
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2efnVal_2elocal_2e2
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l13
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = call ptr @__olang_scope_alloc_a(ptr %v2, i64 32, i64 8)
  store ptr %t20, ptr %lp2
  %t21 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  %t22 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t21, ptr %t22
  %t23 = load ptr, ptr %l1, !tbaa !29
  store ptr %t23, ptr %l17, !tbaa !29
  store i1 false, ptr %l18, !tbaa !21
  %t24 = load ptr, ptr %l17, !tbaa !29
  %t25 = icmp ne ptr %t24, null
  br i1 %t25, label %bb6, label %bb7
bb6:
  %t27 = load ptr, ptr %l17, !tbaa !29
  %t28 = load i64, ptr %t27, !range !{i64 0, i64 3}
  %t30 = icmp eq i64 %t28, 1
  store i1 %t30, ptr %l18, !tbaa !21
  br label %bb7
bb7:
  %t31 = load i1, ptr %l18, !tbaa !21
  br i1 %t31, label %bb8, label %bb9
bb8:
  %t32 = load ptr, ptr %l1, !tbaa !29
  %t34 = getelementptr { i64, [4 x i64] }, ptr %t32, i32 0, i32 1
  %t35 = getelementptr { i32, { i64, ptr }, i32 }, ptr %t34, i32 0, i32 1
  %t36 = load { i64, ptr }, ptr %t35
  store { i64, ptr } %t36, ptr %l3, !tbaa !27
  br label %bb10
bb9:
  br label %bb31
bb10:
  store %olang.scope zeroinitializer, ptr %s1
  %t38 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %s1, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t38, ptr %l23
  br label %bb11
bb11:
  %t39 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l23
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t39, ptr %l4
  %t40 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t40, ptr %l5, !tbaa !27
  store i64 0, ptr %l6, !tbaa !24
  %t42 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t44 = extractvalue { i64, ptr } %t42, 0
  store i64 %t44, ptr %l7, !tbaa !24
  br label %bb12
bb12:
  %t46 = load i64, ptr %l6, !tbaa !24
  %t47 = load i64, ptr %l7, !tbaa !24
  %t50 = icmp slt i64 %t46, %t47
  %t52 = xor i1 %t50, true
  br i1 %t52, label %bb13, label %bb14
bb13:
  br label %bb18
bb14:
  br label %bb15
bb15:
  %t54 = load { i64, ptr }, ptr %l5, !tbaa !27
  store { i64, ptr } %t54, ptr %l31, !tbaa !27
  %t55 = load i64, ptr %l6, !tbaa !24
  %t57 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t58 = load ptr, ptr %t57, !tbaa !27
  %t59 = getelementptr ptr, ptr %t58, i64 %t55
  %t60 = load ptr, ptr %t59, !tbaa !39
  %t64 = getelementptr %"compiler/typed:Capture", ptr %t60, i32 0, i32 1
  %t65 = load ptr, ptr %t64, !tbaa !29
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s1, ptr %v1, ptr %l4, ptr %t65)
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t68 = load i64, ptr %l6, !tbaa !24
  %t70 = add i64 %t68, 1
  store i64 %t70, ptr %l6, !tbaa !24
  br label %bb12
bb18:
  store ptr %l4, ptr %l9, !tbaa !29
  store i64 0, ptr %l10, !tbaa !24
  br label %bb19
bb19:
  store %olang.scope zeroinitializer, ptr %s6
  %t73 = load i64, ptr %l10, !tbaa !24
  store i64 %t73, ptr %l40, !tbaa !24
  %t74 = load ptr, ptr %l9, !tbaa !29
  %t76 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s1, ptr %t74)
  store i64 %t76, ptr %l42
  br label %bb20
bb20:
  %t77 = load i64, ptr %l40, !tbaa !24
  %t78 = load i64, ptr %l42, !tbaa !24
  %t79 = icmp slt i64 %t77, %t78
  %t81 = xor i1 %t79, true
  br i1 %t81, label %bb21, label %bb22
bb21:
  call void @__olang_scope_close(ptr %s6)
  br label %bb28
bb22:
  br label %bb23
bb23:
  %t83 = load ptr, ptr %l9, !tbaa !29
  %t84 = load i64, ptr %l10, !tbaa !24
  %t87 = call ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %s1, ptr %s1, ptr %t83, i64 %t84)
  store ptr %t87, ptr %l47
  br label %bb24
bb24:
  %t88 = load ptr, ptr %l47, !tbaa !29
  %t89 = load ptr, ptr %lp2
  store ptr %t89, ptr %l48, !tbaa !29
  %t90 = load ptr, ptr %l0, !tbaa !29
  %t95 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %s1, ptr %v0, ptr %v3, ptr %v4, ptr %t90, ptr %t88)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t95, ptr %l52
  br label %bb25
bb25:
  %t96 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l52
  %t97 = call ptr @__olang_scope_alloc_a(ptr %s6, i64 32, i64 8)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t96, ptr %t97
  %t98 = load ptr, ptr %l48, !tbaa !29
  call void @compiler_2ftyped_2eunion(ptr %v2, ptr %v0, ptr %t98, ptr %t97)
  br label %bb26
bb26:
  call void @__olang_scope_close(ptr %s6)
  br label %bb27
bb27:
  %t100 = load i64, ptr %l10, !tbaa !24
  %t102 = add i64 %t100, 1
  store i64 %t102, ptr %l10, !tbaa !24
  br label %bb19
bb28:
  %t104 = load ptr, ptr %l0, !tbaa !29
  store ptr %t104, ptr %l56, !tbaa !29
  %t106 = call { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %s1, ptr %s1, ptr %l4)
  store { i64, ptr } %t106, ptr %l58
  br label %bb29
bb29:
  %t107 = load ptr, ptr %l56, !tbaa !29
  %t108 = load { i64, ptr }, ptr %l58, !tbaa !27
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2emix(ptr %v0, ptr %s1, ptr %v3, ptr %v4, ptr %t107, { i64, ptr } %t108)
  br label %bb30
bb30:
  call void @__olang_scope_close(ptr %s1)
  br label %bb45
bb31:
  %t109 = load ptr, ptr %l1, !tbaa !29
  store ptr %t109, ptr %l59, !tbaa !29
  store i1 false, ptr %l60, !tbaa !21
  %t110 = load ptr, ptr %l59, !tbaa !29
  %t111 = icmp ne ptr %t110, null
  br i1 %t111, label %bb32, label %bb33
bb32:
  %t113 = load ptr, ptr %l59, !tbaa !29
  %t114 = load i64, ptr %t113, !range !{i64 0, i64 3}
  %t116 = icmp eq i64 %t114, 2
  store i1 %t116, ptr %l60, !tbaa !21
  br label %bb33
bb33:
  %t117 = load i1, ptr %l60, !tbaa !21
  br i1 %t117, label %bb34, label %bb35
bb34:
  %t118 = load ptr, ptr %l1, !tbaa !29
  %t120 = getelementptr { i64, [4 x i64] }, ptr %t118, i32 0, i32 1
  %t121 = getelementptr { i32, ptr, i32 }, ptr %t120, i32 0, i32 1
  %t122 = load ptr, ptr %t121
  store ptr %t122, ptr %l12, !tbaa !29
  br label %bb36
bb35:
  br label %bb40
bb36:
  %t124 = load ptr, ptr %l0, !tbaa !29
  %t125 = load ptr, ptr %l12, !tbaa !29
  %t129 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %t124, ptr %t125)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t129, ptr %l68
  br label %bb37
bb37:
  %t130 = load ptr, ptr %lp2
  %t131 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t130
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t131, ptr %l69
  %t132 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l68
  %t133 = load ptr, ptr %lp2
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t132, ptr %t133
  %t134 = load i1, ptr @olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2efnVal_2elocal_2e2
  br i1 %t134, label %bb38, label %bb39
bb38:
  %t136 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l69, i32 0, i32 0
  %t137 = load { i64, ptr }, ptr %t136
  %t138 = extractvalue { i64, ptr } %t137, 1
  %t139 = call ptr @__olang_region_or(ptr %t138, ptr null)
  %t140 = icmp ne ptr %t139, null
  %t141 = select i1 %t140, ptr %t139, ptr null
  call void @__olang_region_drop(ptr %t141)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" zeroinitializer, ptr %l69
  br label %bb39
bb39:
  br label %bb45
bb40:
  br i1 true, label %bb41, label %bb42
bb41:
  br label %bb43
bb42:
  br label %bb44
bb43:
  br label %bb45
bb44:
  call void @__olang_check_failed(ptr @olang_loc_3d59d966d65a5e81_dc9cdefe852f3965)
  unreachable
bb45:
  %t142 = load ptr, ptr %lp2
  %t143 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %t142
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t143, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %rv
  ret %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %rr
}

define dso_local void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estore(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca ptr
  %l7 = alloca i64
  %l8 = alloca i64
  %l10 = alloca i64
  %l12 = alloca i64
  %l17 = alloca i64
  %l19 = alloca i64
  %l21 = alloca i64
  %l26 = alloca i64
  %l28 = alloca ptr
  %l31 = alloca i32
  %l34 = alloca i32
  %l36 = alloca i1
  store ptr %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a1, ptr %l3, !tbaa !29
  store i64 0, ptr %l4, !tbaa !24
  br label %bb1
bb1:
  %t3 = load i64, ptr %l4, !tbaa !24
  store i64 %t3, ptr %l10, !tbaa !24
  %t4 = load ptr, ptr %l3, !tbaa !29
  %t6 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v1, ptr %t4)
  store i64 %t6, ptr %l12
  br label %bb2
bb2:
  %t7 = load i64, ptr %l10, !tbaa !24
  %t8 = load i64, ptr %l12, !tbaa !24
  %t9 = icmp slt i64 %t7, %t8
  %t11 = xor i1 %t9, true
  br i1 %t11, label %bb3, label %bb4
bb3:
  br label %bb23
bb4:
  br label %bb5
bb5:
  %t13 = load ptr, ptr %l3, !tbaa !29
  %t14 = load i64, ptr %l4, !tbaa !24
  %t17 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v1, ptr %t13, i64 %t14)
  store i64 %t17, ptr %l17
  br label %bb6
bb6:
  %t18 = load i64, ptr %l17, !tbaa !24
  store i64 %t18, ptr %l5, !tbaa !24
  store ptr %a2, ptr %l6, !tbaa !29
  store i64 0, ptr %l7, !tbaa !24
  br label %bb7
bb7:
  %t21 = load i64, ptr %l7, !tbaa !24
  store i64 %t21, ptr %l19, !tbaa !24
  %t22 = load ptr, ptr %l6, !tbaa !29
  %t24 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v2, ptr %t22)
  store i64 %t24, ptr %l21
  br label %bb8
bb8:
  %t25 = load i64, ptr %l19, !tbaa !24
  %t26 = load i64, ptr %l21, !tbaa !24
  %t27 = icmp slt i64 %t25, %t26
  %t29 = xor i1 %t27, true
  br i1 %t29, label %bb9, label %bb10
bb9:
  br label %bb21
bb10:
  br label %bb11
bb11:
  %t31 = load ptr, ptr %l6, !tbaa !29
  %t32 = load i64, ptr %l7, !tbaa !24
  %t35 = call i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v2, ptr %t31, i64 %t32)
  store i64 %t35, ptr %l26
  br label %bb12
bb12:
  %t36 = load i64, ptr %l26, !tbaa !24
  store i64 %t36, ptr %l8, !tbaa !24
  %t37 = load ptr, ptr %l0, !tbaa !29
  %t39 = getelementptr %"compiler/typed:holdWalk", ptr %t37, i32 0, i32 0
  %t40 = load ptr, ptr %t39, !tbaa !29
  store ptr %t40, ptr %l28, !tbaa !29
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load i64, ptr %l5, !tbaa !24
  %t45 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v3, ptr %v4, ptr %t41, i64 %t42)
  store i32 %t45, ptr %l31
  br label %bb13
bb13:
  %t46 = load ptr, ptr %l0, !tbaa !29
  %t47 = load i64, ptr %l8, !tbaa !24
  %t50 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v3, ptr %v4, ptr %t46, i64 %t47)
  store i32 %t50, ptr %l34
  br label %bb14
bb14:
  %t51 = load ptr, ptr %l28, !tbaa !29
  %t52 = call ptr @__olang_scope_or(ptr %v4, ptr %t51)
  %t53 = ptrtoint ptr %t52 to i64
  %t55 = inttoptr i64 %t53 to ptr
  %t56 = load ptr, ptr %l28, !tbaa !29
  %t57 = load i32, ptr %l31, !tbaa !23
  %t58 = load i32, ptr %l34, !tbaa !23
  %t59 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefInto(ptr %t55, ptr %t56, i32 %t57, i32 %t58)
  store i1 %t59, ptr %l36
  br label %bb15
bb15:
  %t60 = load i1, ptr %l36, !tbaa !21
  br i1 %t60, label %bb16, label %bb17
bb16:
  %t61 = load ptr, ptr %l0, !tbaa !29
  %t62 = load i64, ptr %l5, !tbaa !24
  %t63 = load i64, ptr %l8, !tbaa !24
  call void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eadd(ptr %v0, ptr %t61, i64 %t62, i64 %t63)
  br label %bb18
bb17:
  br label %bb19
bb18:
  br label %bb19
bb19:
  br label %bb20
bb20:
  %t67 = load i64, ptr %l7, !tbaa !24
  %t69 = add i64 %t67, 1
  store i64 %t69, ptr %l7, !tbaa !24
  br label %bb7
bb21:
  br label %bb22
bb22:
  %t71 = load i64, ptr %l4, !tbaa !24
  %t73 = add i64 %t71, 1
  store i64 %t73, ptr %l4, !tbaa !24
  br label %bb1
bb23:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2earmLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1) #0 {
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
  %l13 = alloca i1
  %l14 = alloca i1
  %l18 = alloca i1
  %l19 = alloca i1
  %l23 = alloca i1
  %l33 = alloca { i64, ptr }
  %l40 = alloca i1
  %l50 = alloca { i64, ptr }
  %l57 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t2 = load ptr, ptr %l1, !tbaa !29
  %t4 = getelementptr %"compiler/typed:Arm", ptr %t2, i32 0, i32 2
  %t5 = load ptr, ptr %t4, !tbaa !29
  %t8 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t1, ptr %t5)
  store i1 %t8, ptr %l13
  br label %bb1
bb1:
  %t9 = load i1, ptr %l13, !tbaa !21
  br i1 %t9, label %bb2, label %bb3
bb2:
  store i1 true, ptr %l14, !tbaa !21
  br label %bb5
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t11 = load ptr, ptr %l1, !tbaa !29
  %t13 = getelementptr %"compiler/typed:Arm", ptr %t11, i32 0, i32 3
  %t14 = load ptr, ptr %t13, !tbaa !29
  %t17 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %t10, ptr %t14)
  store i1 %t17, ptr %l18
  br label %bb4
bb4:
  %t18 = load i1, ptr %l18, !tbaa !21
  store i1 %t18, ptr %l14, !tbaa !21
  br label %bb5
bb5:
  %t19 = load i1, ptr %l14, !tbaa !21
  br i1 %t19, label %bb6, label %bb7
bb6:
  store i1 true, ptr %l19, !tbaa !21
  br label %bb9
bb7:
  %t20 = load ptr, ptr %l0, !tbaa !29
  %t21 = load ptr, ptr %l1, !tbaa !29
  %t23 = getelementptr %"compiler/typed:Arm", ptr %t21, i32 0, i32 4
  %t24 = load ptr, ptr %t23, !tbaa !29
  %t27 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t20, ptr %t24)
  store i1 %t27, ptr %l23
  br label %bb8
bb8:
  %t28 = load i1, ptr %l23, !tbaa !21
  store i1 %t28, ptr %l19, !tbaa !21
  br label %bb9
bb9:
  %t29 = load i1, ptr %l19, !tbaa !21
  br i1 %t29, label %bb10, label %bb11
bb10:
  store i1 true, ptr %rv
  br label %ret
bb11:
  br label %bb12
bb12:
  %t31 = load ptr, ptr %l1, !tbaa !29
  %t33 = getelementptr %"compiler/typed:Arm", ptr %t31, i32 0, i32 1
  %t34 = load { i64, ptr }, ptr %t33, !tbaa !27
  store { i64, ptr } %t34, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t36 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t38 = extractvalue { i64, ptr } %t36, 0
  store i64 %t38, ptr %l4, !tbaa !24
  br label %bb13
bb13:
  %t40 = load i64, ptr %l3, !tbaa !24
  %t41 = load i64, ptr %l4, !tbaa !24
  %t44 = icmp slt i64 %t40, %t41
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb14, label %bb15
bb14:
  br label %bb32
bb15:
  br label %bb16
bb16:
  %t48 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t48, ptr %l33, !tbaa !27
  %t49 = load i64, ptr %l3, !tbaa !24
  %t51 = getelementptr { i64, ptr }, ptr %l33, i32 0, i32 1
  %t52 = load ptr, ptr %t51, !tbaa !27
  %t53 = getelementptr ptr, ptr %t52, i64 %t49
  %t54 = load ptr, ptr %t53, !tbaa !39
  store ptr %t54, ptr %l5, !tbaa !29
  %t56 = load ptr, ptr %l0, !tbaa !29
  %t57 = load ptr, ptr %l5, !tbaa !29
  %t59 = getelementptr %"compiler/typed:Alt", ptr %t57, i32 0, i32 0
  %t60 = load ptr, ptr %t59, !tbaa !29
  %t64 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t56, ptr %t60)
  store i1 %t64, ptr %l40
  br label %bb17
bb17:
  %t65 = load i1, ptr %l40, !tbaa !21
  br i1 %t65, label %bb18, label %bb19
bb18:
  store i1 true, ptr %rv
  br label %ret
bb19:
  br label %bb20
bb20:
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t69 = getelementptr %"compiler/typed:Alt", ptr %t67, i32 0, i32 1
  %t70 = load { i64, ptr }, ptr %t69, !tbaa !27
  store { i64, ptr } %t70, ptr %l6, !tbaa !27
  store i64 0, ptr %l7, !tbaa !24
  %t72 = load { i64, ptr }, ptr %l6, !tbaa !27
  %t74 = extractvalue { i64, ptr } %t72, 0
  store i64 %t74, ptr %l8, !tbaa !24
  br label %bb21
bb21:
  %t76 = load i64, ptr %l7, !tbaa !24
  %t77 = load i64, ptr %l8, !tbaa !24
  %t80 = icmp slt i64 %t76, %t77
  %t82 = xor i1 %t80, true
  br i1 %t82, label %bb22, label %bb23
bb22:
  br label %bb30
bb23:
  br label %bb24
bb24:
  %t84 = load { i64, ptr }, ptr %l6, !tbaa !27
  store { i64, ptr } %t84, ptr %l50, !tbaa !27
  %t85 = load i64, ptr %l7, !tbaa !24
  %t87 = getelementptr { i64, ptr }, ptr %l50, i32 0, i32 1
  %t88 = load ptr, ptr %t87, !tbaa !27
  %t89 = getelementptr ptr, ptr %t88, i64 %t85
  %t90 = load ptr, ptr %t89, !tbaa !39
  %t92 = load ptr, ptr %l0, !tbaa !29
  %t95 = getelementptr %"compiler/typed:Bind", ptr %t90, i32 0, i32 1
  %t96 = load ptr, ptr %t95, !tbaa !29
  %t100 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %t92, ptr %t96)
  store i1 %t100, ptr %l57
  br label %bb25
bb25:
  %t101 = load i1, ptr %l57, !tbaa !21
  br i1 %t101, label %bb26, label %bb27
bb26:
  store i1 true, ptr %rv
  br label %ret
bb27:
  br label %bb28
bb28:
  br label %bb29
bb29:
  %t103 = load i64, ptr %l7, !tbaa !24
  %t105 = add i64 %t103, 1
  store i64 %t105, ptr %l7, !tbaa !24
  br label %bb21
bb30:
  br label %bb31
bb31:
  %t107 = load i64, ptr %l3, !tbaa !24
  %t109 = add i64 %t107, 1
  store i64 %t109, ptr %l3, !tbaa !24
  br label %bb13
bb32:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprsLeave(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %rv = alloca i1
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
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb13
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  %t35 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %t28)
  store i1 %t35, ptr %l23
  br label %bb8
bb8:
  %t36 = load i1, ptr %l23, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  br label %bb12
bb12:
  %t38 = load i64, ptr %l3, !tbaa !24
  %t40 = add i64 %t38, 1
  store i64 %t40, ptr %l3, !tbaa !24
  br label %bb4
bb13:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca i32
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca i32
  %l15 = alloca i32
  %l16 = alloca { i64, ptr }
  %l17 = alloca ptr
  %l18 = alloca ptr
  %l19 = alloca ptr
  %l20 = alloca ptr
  %l21 = alloca ptr
  %l22 = alloca ptr
  %l23 = alloca ptr
  %l24 = alloca i64
  %l25 = alloca ptr
  %l28 = alloca { i64, ptr }
  %l29 = alloca { i64, ptr }
  %l30 = alloca i64
  %l31 = alloca { i64, ptr }
  %l33 = alloca ptr
  %l35 = alloca i32
  %l38 = alloca { i64, ptr }
  %l39 = alloca { i64, ptr }
  %l40 = alloca ptr
  %l41 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l57 = alloca { i64, ptr }
  %l58 = alloca i64
  %l60 = alloca { i64, ptr }
  %l62 = alloca ptr
  %l63 = alloca i1
  %l72 = alloca { i64, ptr }
  %l75 = alloca { i64, ptr }
  %l80 = alloca ptr
  %l81 = alloca i1
  %l86 = alloca { i64, ptr }
  %l89 = alloca { i64, ptr }
  %l91 = alloca ptr
  %l92 = alloca i1
  %l99 = alloca { i64, ptr }
  %l101 = alloca ptr
  %l102 = alloca i1
  %l107 = alloca { i64, ptr }
  %l112 = alloca { i64, ptr }
  %l116 = alloca ptr
  %l117 = alloca i1
  %l125 = alloca { i64, ptr }
  %l129 = alloca { i64, ptr }
  %l133 = alloca ptr
  %l134 = alloca i1
  %l140 = alloca i32
  %l142 = alloca { i64, ptr }
  %l144 = alloca { i64, ptr }
  %l145 = alloca { i64, ptr }
  %l149 = alloca { i64, ptr }
  %l151 = alloca ptr
  %l152 = alloca i1
  %l161 = alloca ptr
  %l162 = alloca i1
  %l171 = alloca i32
  %l173 = alloca { i64, ptr }
  %l175 = alloca { i64, ptr }
  %l179 = alloca { i64, ptr }
  %l180 = alloca i32
  %l182 = alloca { i64, ptr }
  %l184 = alloca { i64, ptr }
  %l187 = alloca { i64, ptr }
  %l190 = alloca { i64, ptr }
  %l192 = alloca ptr
  %l193 = alloca i1
  %l201 = alloca { i64, ptr }
  %l206 = alloca { i64, ptr }
  %l211 = alloca { i64, ptr }
  %l213 = alloca ptr
  %l214 = alloca i1
  %l223 = alloca { i64, ptr }
  %l227 = alloca { i64, ptr }
  %l232 = alloca { i64, ptr }
  %l234 = alloca ptr
  %l235 = alloca i1
  %l242 = alloca i64
  %l246 = alloca { i64, ptr }
  %l248 = alloca ptr
  %l249 = alloca i1
  %l256 = alloca i64
  %l271 = alloca ptr
  %l272 = alloca i1
  %l280 = alloca { i64, ptr }
  %l285 = alloca ptr
  %l286 = alloca i1
  %l291 = alloca ptr
  %l292 = alloca i1
  %l303 = alloca ptr
  %l304 = alloca i1
  %l311 = alloca i64
  %l315 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s4 = alloca %olang.scope
  %s6 = alloca %olang.scope
  %s9 = alloca %olang.scope
  %s11 = alloca %olang.scope
  %s13 = alloca %olang.scope
  %s15 = alloca %olang.scope
  %s17 = alloca %olang.scope
  %s18 = alloca %olang.builder
  %s18room = alloca [64 x i8], align 8
  %s22 = alloca %olang.scope
  %s23 = alloca %olang.builder
  %s23room = alloca [64 x i8], align 8
  %s24 = alloca %olang.builder
  %s24room = alloca [64 x i8], align 8
  %s27 = alloca %olang.scope
  %s29 = alloca %olang.scope
  %s31 = alloca %olang.scope
  %s35 = alloca %olang.scope
  %s41 = alloca %olang.scope
  %rv = alloca { i64, ptr }
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
  store { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d0, i32 0, i32 1) }, ptr %l28, !tbaa !27
  %t5 = load { i64, ptr }, ptr %l28, !tbaa !27
  store { i64, ptr } %t5, ptr %l29, !tbaa !27
  %t6 = load { i64, ptr }, ptr %l29, !tbaa !27
  %t7 = extractvalue { i64, ptr } %t6, 0
  store i64 %t7, ptr %l30, !tbaa !24
  %t8 = load i64, ptr %l30, !tbaa !24
  %t9 = mul i64 %t8, 1
  %t10 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t9)
  %t11 = insertvalue { i64, ptr } undef, i64 %t8, 0
  %t12 = insertvalue { i64, ptr } %t11, ptr %t10, 1
  store { i64, ptr } %t12, ptr %l31, !tbaa !27
  %t13 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t14 = load ptr, ptr %t13, !tbaa !27
  %t15 = getelementptr { i64, ptr }, ptr %l29, i32 0, i32 1
  %t16 = load ptr, ptr %t15, !tbaa !27
  %t17 = load i64, ptr %l30, !tbaa !24
  %t18 = mul i64 %t17, 1
  call void @llvm.memmove.p0.p0.i64(ptr %t14, ptr %t16, i64 %t18, i1 false)
  %t19 = load { i64, ptr }, ptr %l31, !tbaa !27
  store { i64, ptr } %t19, ptr %l29, !tbaa !27
  call void @__olang_scope_close(ptr %s0)
  %t20 = load { i64, ptr }, ptr %l29, !tbaa !27
  store { i64, ptr } %t20, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t21 = load ptr, ptr %l0, !tbaa !29
  %t23 = getelementptr %"compiler/typed:printer", ptr %t21, i32 0, i32 0
  %t24 = load ptr, ptr %t23, !tbaa !29
  store ptr %t24, ptr %l33, !tbaa !29
  %t25 = load ptr, ptr %l1, !tbaa !29
  %t27 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t25)
  store i32 %t27, ptr %l35
  br label %bb4
bb4:
  %t28 = load ptr, ptr %l33, !tbaa !29
  %t29 = call ptr @__olang_scope_or(ptr %v3, ptr %t28)
  %t30 = ptrtoint ptr %t29 to i64
  %t32 = inttoptr i64 %t30 to ptr
  %t34 = inttoptr i64 0 to ptr
  %t35 = load ptr, ptr %l33, !tbaa !29
  %t36 = load i32, ptr %l35, !tbaa !23
  %t37 = call { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %t32, ptr %s0, ptr %t34, ptr %t35, i32 %t36)
  store { i64, ptr } %t37, ptr %l38
  br label %bb5
bb5:
  %t38 = load { i64, ptr }, ptr %l38, !tbaa !27
  store { i64, ptr } %t38, ptr %l2, !tbaa !27
  %t39 = load ptr, ptr %l1, !tbaa !29
  store ptr %t39, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t40 = load ptr, ptr %l40, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb6, label %bb7
bb6:
  %t43 = load ptr, ptr %l40, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 0
  store i1 %t46, ptr %l41, !tbaa !21
  br label %bb7
bb7:
  %t47 = load i1, ptr %l41, !tbaa !21
  br i1 %t47, label %bb8, label %bb9
bb8:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, i64 }, ptr %t50, i32 0, i32 2
  %t52 = load i64, ptr %t51
  store i64 %t52, ptr %l3, !tbaa !24
  br label %bb10
bb9:
  br label %bb11
bb10:
  %t54 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t55 = load i64, ptr %l3, !tbaa !24
  %t56 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 1
  %t57 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d1, i32 0, i32 1) }, 0
  %t59 = extractvalue { i64, ptr } %t54, 1
  %t60 = extractvalue { i64, ptr } %t54, 0
  %t61 = add i64 %t57, %t60
  %t62 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 1
  %t63 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d2, i32 0, i32 1) }, 0
  %t64 = add i64 %t61, %t63
  %t66 = call i64 @__olang_fmt_i64(ptr null, i64 %t55)
  %t67 = add i64 %t64, %t66
  %t68 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 1
  %t69 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d3, i32 0, i32 1) }, 0
  %t70 = add i64 %t67, %t69
  %t71 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t70)
  call void @olang_textcopy(ptr %t71, ptr %t56, i64 %t57)
  %t72 = getelementptr i8, ptr %t71, i64 %t57
  call void @olang_textcopy(ptr %t72, ptr %t59, i64 %t60)
  %t73 = getelementptr i8, ptr %t72, i64 %t60
  call void @olang_textcopy(ptr %t73, ptr %t62, i64 %t63)
  %t74 = getelementptr i8, ptr %t73, i64 %t63
  %t75 = call i64 @__olang_fmt_i64(ptr %t74, i64 %t55)
  %t76 = getelementptr i8, ptr %t74, i64 %t66
  call void @olang_textcopy(ptr %t76, ptr %t68, i64 %t69)
  %t77 = insertvalue { i64, ptr } undef, i64 %t70, 0
  %t78 = insertvalue { i64, ptr } %t77, ptr %t71, 1
  store { i64, ptr } %t78, ptr %l39, !tbaa !27
  br label %bb150
bb11:
  %t80 = load ptr, ptr %l1, !tbaa !29
  store ptr %t80, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t81 = load ptr, ptr %l49, !tbaa !29
  %t82 = icmp ne ptr %t81, null
  br i1 %t82, label %bb12, label %bb13
bb12:
  %t84 = load ptr, ptr %l49, !tbaa !29
  %t85 = load i64, ptr %t84, !range !{i64 0, i64 18}
  %t87 = icmp eq i64 %t85, 1
  store i1 %t87, ptr %l50, !tbaa !21
  br label %bb13
bb13:
  %t88 = load i1, ptr %l50, !tbaa !21
  br i1 %t88, label %bb14, label %bb15
bb14:
  %t89 = load ptr, ptr %l1, !tbaa !29
  %t91 = getelementptr { i64, [5 x i64] }, ptr %t89, i32 0, i32 1
  %t92 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t91, i32 0, i32 2
  %t93 = load i64, ptr %t92
  store i64 %t93, ptr %l4, !tbaa !24
  %t95 = load ptr, ptr %l1, !tbaa !29
  %t97 = getelementptr { i64, [5 x i64] }, ptr %t95, i32 0, i32 1
  %t98 = getelementptr { %"compiler/source:Span", i32, i64, ptr }, ptr %t97, i32 0, i32 3
  %t99 = load ptr, ptr %t98
  store ptr %t99, ptr %l5, !tbaa !29
  br label %bb16
bb15:
  br label %bb18
bb16:
  store %olang.scope zeroinitializer, ptr %s4
  %t101 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t101, ptr %l57, !tbaa !27
  %t102 = load i64, ptr %l4, !tbaa !24
  store i64 %t102, ptr %l58, !tbaa !24
  %t103 = load ptr, ptr %l5, !tbaa !29
  %t105 = call { i64, ptr } @compiler_2ftyped_2econstText(ptr %v1, ptr %s4, ptr %t103)
  store { i64, ptr } %t105, ptr %l60
  br label %bb17
bb17:
  %t106 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) }, 1
  %t107 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d4, i32 0, i32 1) }, 0
  %t108 = load { i64, ptr }, ptr %l57, !tbaa !27
  %t109 = extractvalue { i64, ptr } %t108, 1
  %t110 = extractvalue { i64, ptr } %t108, 0
  %t111 = add i64 %t107, %t110
  %t112 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t113 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t114 = add i64 %t111, %t113
  %t115 = load i64, ptr %l58, !tbaa !24
  %t116 = call i64 @__olang_fmt_i64(ptr null, i64 %t115)
  %t117 = add i64 %t114, %t116
  %t118 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 1
  %t119 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d5, i32 0, i32 1) }, 0
  %t120 = add i64 %t117, %t119
  %t121 = load { i64, ptr }, ptr %l60, !tbaa !27
  %t122 = extractvalue { i64, ptr } %t121, 1
  %t123 = extractvalue { i64, ptr } %t121, 0
  %t124 = add i64 %t120, %t123
  %t125 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 1
  %t126 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d6, i32 0, i32 1) }, 0
  %t127 = add i64 %t124, %t126
  %t128 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t127)
  call void @olang_textcopy(ptr %t128, ptr %t106, i64 %t107)
  %t129 = getelementptr i8, ptr %t128, i64 %t107
  call void @olang_textcopy(ptr %t129, ptr %t109, i64 %t110)
  %t130 = getelementptr i8, ptr %t129, i64 %t110
  call void @olang_textcopy(ptr %t130, ptr %t112, i64 %t113)
  %t131 = getelementptr i8, ptr %t130, i64 %t113
  %t132 = call i64 @__olang_fmt_i64(ptr %t131, i64 %t115)
  %t133 = getelementptr i8, ptr %t131, i64 %t116
  call void @olang_textcopy(ptr %t133, ptr %t118, i64 %t119)
  %t134 = getelementptr i8, ptr %t133, i64 %t119
  call void @olang_textcopy(ptr %t134, ptr %t122, i64 %t123)
  %t135 = getelementptr i8, ptr %t134, i64 %t123
  call void @olang_textcopy(ptr %t135, ptr %t125, i64 %t126)
  %t136 = insertvalue { i64, ptr } undef, i64 %t127, 0
  %t137 = insertvalue { i64, ptr } %t136, ptr %t128, 1
  store { i64, ptr } %t137, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s4)
  br label %bb150
bb18:
  %t139 = load ptr, ptr %l1, !tbaa !29
  store ptr %t139, ptr %l62, !tbaa !29
  store i1 false, ptr %l63, !tbaa !21
  %t140 = load ptr, ptr %l62, !tbaa !29
  %t141 = icmp ne ptr %t140, null
  br i1 %t141, label %bb19, label %bb20
bb19:
  %t143 = load ptr, ptr %l62, !tbaa !29
  %t144 = load i64, ptr %t143, !range !{i64 0, i64 18}
  %t146 = icmp eq i64 %t144, 2
  store i1 %t146, ptr %l63, !tbaa !21
  br label %bb20
bb20:
  %t147 = load i1, ptr %l63, !tbaa !21
  br i1 %t147, label %bb21, label %bb22
bb21:
  %t148 = load ptr, ptr %l1, !tbaa !29
  %t150 = getelementptr { i64, [5 x i64] }, ptr %t148, i32 0, i32 1
  %t151 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t150, i32 0, i32 2
  %t152 = load ptr, ptr %t151
  store ptr %t152, ptr %l6, !tbaa !29
  %t154 = load ptr, ptr %l1, !tbaa !29
  %t156 = getelementptr { i64, [5 x i64] }, ptr %t154, i32 0, i32 1
  %t157 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t156, i32 0, i32 3
  %t158 = load i32, ptr %t157
  store i32 %t158, ptr %l7, !tbaa !23
  br label %bb23
bb22:
  br label %bb28
bb23:
  store %olang.scope zeroinitializer, ptr %s6
  %t160 = load ptr, ptr %l0, !tbaa !29
  %t161 = load ptr, ptr %l6, !tbaa !29
  %t164 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s6, ptr %v3, ptr %t160, ptr %t161)
  store { i64, ptr } %t164, ptr %l72
  br label %bb24
bb24:
  %t165 = load i32, ptr %l7, !tbaa !23
  %t167 = icmp sge i32 %t165, 0
  br i1 %t167, label %bb25, label %bb26
bb25:
  %t169 = load i32, ptr %l7, !tbaa !23
  %t170 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, 1
  %t171 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d7, i32 0, i32 1) }, 0
  %t173 = sext i32 %t169 to i64
  %t174 = call i64 @__olang_fmt_i64(ptr null, i64 %t173)
  %t175 = add i64 %t171, %t174
  %t176 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t175)
  call void @olang_textcopy(ptr %t176, ptr %t170, i64 %t171)
  %t177 = getelementptr i8, ptr %t176, i64 %t171
  %t178 = call i64 @__olang_fmt_i64(ptr %t177, i64 %t173)
  %t179 = insertvalue { i64, ptr } undef, i64 %t175, 0
  %t180 = insertvalue { i64, ptr } %t179, ptr %t176, 1
  %t182 = extractvalue { i64, ptr } %t180, 0
  %t183 = extractvalue { i64, ptr } %t180, 1
  %t184 = mul i64 %t182, 1
  %t185 = call ptr @__olang_scope_alloc(ptr %s6, i64 %t184)
  call void @llvm.memcpy.p0.p0.i64(ptr %t185, ptr %t183, i64 %t184, i1 false)
  %t186 = insertvalue { i64, ptr } undef, i64 %t182, 0
  %t187 = insertvalue { i64, ptr } %t186, ptr %t185, 1
  store { i64, ptr } %t187, ptr %l75, !tbaa !27
  br label %bb27
bb26:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d8, i32 0, i32 1) }, ptr %l75, !tbaa !27
  br label %bb27
bb27:
  %t189 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 1
  %t190 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d9, i32 0, i32 1) }, 0
  %t191 = load { i64, ptr }, ptr %l72, !tbaa !27
  %t192 = extractvalue { i64, ptr } %t191, 1
  %t193 = extractvalue { i64, ptr } %t191, 0
  %t194 = add i64 %t190, %t193
  %t195 = load { i64, ptr }, ptr %l75, !tbaa !27
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = extractvalue { i64, ptr } %t195, 0
  %t198 = add i64 %t194, %t197
  %t199 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 1
  %t200 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d10, i32 0, i32 1) }, 0
  %t201 = add i64 %t198, %t200
  %t202 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t201)
  call void @olang_textcopy(ptr %t202, ptr %t189, i64 %t190)
  %t203 = getelementptr i8, ptr %t202, i64 %t190
  call void @olang_textcopy(ptr %t203, ptr %t192, i64 %t193)
  %t204 = getelementptr i8, ptr %t203, i64 %t193
  call void @olang_textcopy(ptr %t204, ptr %t196, i64 %t197)
  %t205 = getelementptr i8, ptr %t204, i64 %t197
  call void @olang_textcopy(ptr %t205, ptr %t199, i64 %t200)
  %t206 = insertvalue { i64, ptr } undef, i64 %t201, 0
  %t207 = insertvalue { i64, ptr } %t206, ptr %t202, 1
  store { i64, ptr } %t207, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s6)
  br label %bb150
bb28:
  %t209 = load ptr, ptr %l1, !tbaa !29
  store ptr %t209, ptr %l80, !tbaa !29
  store i1 false, ptr %l81, !tbaa !21
  %t210 = load ptr, ptr %l80, !tbaa !29
  %t211 = icmp ne ptr %t210, null
  br i1 %t211, label %bb29, label %bb30
bb29:
  %t213 = load ptr, ptr %l80, !tbaa !29
  %t214 = load i64, ptr %t213, !range !{i64 0, i64 18}
  %t216 = icmp eq i64 %t214, 3
  store i1 %t216, ptr %l81, !tbaa !21
  br label %bb30
bb30:
  %t217 = load i1, ptr %l81, !tbaa !21
  br i1 %t217, label %bb31, label %bb32
bb31:
  %t218 = load ptr, ptr %l1, !tbaa !29
  %t220 = getelementptr { i64, [5 x i64] }, ptr %t218, i32 0, i32 1
  %t221 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t220, i32 0, i32 2
  %t222 = load ptr, ptr %t221
  store ptr %t222, ptr %l8, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  store %olang.scope zeroinitializer, ptr %s9
  %t224 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t224, ptr %l86, !tbaa !27
  %t225 = load ptr, ptr %l0, !tbaa !29
  %t226 = load ptr, ptr %l8, !tbaa !29
  %t229 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s9, ptr %v3, ptr %t225, ptr %t226)
  store { i64, ptr } %t229, ptr %l89
  br label %bb34
bb34:
  %t230 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d11, i32 0, i32 1) }, 1
  %t231 = extractvalue { i64, ptr } { i64 8, ptr getelementptr inbounds (<{ i64, [8 x i8] }>, ptr @.d11, i32 0, i32 1) }, 0
  %t232 = load { i64, ptr }, ptr %l86, !tbaa !27
  %t233 = extractvalue { i64, ptr } %t232, 1
  %t234 = extractvalue { i64, ptr } %t232, 0
  %t235 = add i64 %t231, %t234
  %t236 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 1
  %t237 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d12, i32 0, i32 1) }, 0
  %t238 = add i64 %t235, %t237
  %t239 = load { i64, ptr }, ptr %l89, !tbaa !27
  %t240 = extractvalue { i64, ptr } %t239, 1
  %t241 = extractvalue { i64, ptr } %t239, 0
  %t242 = add i64 %t238, %t241
  %t243 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 1
  %t244 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d13, i32 0, i32 1) }, 0
  %t245 = add i64 %t242, %t244
  %t246 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t245)
  call void @olang_textcopy(ptr %t246, ptr %t230, i64 %t231)
  %t247 = getelementptr i8, ptr %t246, i64 %t231
  call void @olang_textcopy(ptr %t247, ptr %t233, i64 %t234)
  %t248 = getelementptr i8, ptr %t247, i64 %t234
  call void @olang_textcopy(ptr %t248, ptr %t236, i64 %t237)
  %t249 = getelementptr i8, ptr %t248, i64 %t237
  call void @olang_textcopy(ptr %t249, ptr %t240, i64 %t241)
  %t250 = getelementptr i8, ptr %t249, i64 %t241
  call void @olang_textcopy(ptr %t250, ptr %t243, i64 %t244)
  %t251 = insertvalue { i64, ptr } undef, i64 %t245, 0
  %t252 = insertvalue { i64, ptr } %t251, ptr %t246, 1
  store { i64, ptr } %t252, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s9)
  br label %bb150
bb35:
  %t254 = load ptr, ptr %l1, !tbaa !29
  store ptr %t254, ptr %l91, !tbaa !29
  store i1 false, ptr %l92, !tbaa !21
  %t255 = load ptr, ptr %l91, !tbaa !29
  %t256 = icmp ne ptr %t255, null
  br i1 %t256, label %bb36, label %bb37
bb36:
  %t258 = load ptr, ptr %l91, !tbaa !29
  %t259 = load i64, ptr %t258, !range !{i64 0, i64 18}
  %t261 = icmp eq i64 %t259, 4
  store i1 %t261, ptr %l92, !tbaa !21
  br label %bb37
bb37:
  %t262 = load i1, ptr %l92, !tbaa !21
  br i1 %t262, label %bb38, label %bb39
bb38:
  %t263 = load ptr, ptr %l1, !tbaa !29
  %t265 = getelementptr { i64, [5 x i64] }, ptr %t263, i32 0, i32 1
  %t266 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t265, i32 0, i32 2
  %t267 = load ptr, ptr %t266
  store ptr %t267, ptr %l9, !tbaa !29
  br label %bb40
bb39:
  br label %bb42
bb40:
  store %olang.scope zeroinitializer, ptr %s11
  %t269 = load ptr, ptr %l0, !tbaa !29
  %t270 = load ptr, ptr %l9, !tbaa !29
  %t273 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s11, ptr %v3, ptr %t269, ptr %t270)
  store { i64, ptr } %t273, ptr %l99
  br label %bb41
bb41:
  %t274 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 1
  %t275 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d14, i32 0, i32 1) }, 0
  %t276 = load { i64, ptr }, ptr %l99, !tbaa !27
  %t277 = extractvalue { i64, ptr } %t276, 1
  %t278 = extractvalue { i64, ptr } %t276, 0
  %t279 = add i64 %t275, %t278
  %t280 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 1
  %t281 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d15, i32 0, i32 1) }, 0
  %t282 = add i64 %t279, %t281
  %t283 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t282)
  call void @olang_textcopy(ptr %t283, ptr %t274, i64 %t275)
  %t284 = getelementptr i8, ptr %t283, i64 %t275
  call void @olang_textcopy(ptr %t284, ptr %t277, i64 %t278)
  %t285 = getelementptr i8, ptr %t284, i64 %t278
  call void @olang_textcopy(ptr %t285, ptr %t280, i64 %t281)
  %t286 = insertvalue { i64, ptr } undef, i64 %t282, 0
  %t287 = insertvalue { i64, ptr } %t286, ptr %t283, 1
  store { i64, ptr } %t287, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s11)
  br label %bb150
bb42:
  %t289 = load ptr, ptr %l1, !tbaa !29
  store ptr %t289, ptr %l101, !tbaa !29
  store i1 false, ptr %l102, !tbaa !21
  %t290 = load ptr, ptr %l101, !tbaa !29
  %t291 = icmp ne ptr %t290, null
  br i1 %t291, label %bb43, label %bb44
bb43:
  %t293 = load ptr, ptr %l101, !tbaa !29
  %t294 = load i64, ptr %t293, !range !{i64 0, i64 18}
  %t296 = icmp eq i64 %t294, 5
  store i1 %t296, ptr %l102, !tbaa !21
  br label %bb44
bb44:
  %t297 = load i1, ptr %l102, !tbaa !21
  br i1 %t297, label %bb45, label %bb46
bb45:
  %t298 = load ptr, ptr %l1, !tbaa !29
  %t300 = getelementptr { i64, [5 x i64] }, ptr %t298, i32 0, i32 1
  %t301 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t300, i32 0, i32 2
  %t302 = load ptr, ptr %t301
  store ptr %t302, ptr %l10, !tbaa !29
  br label %bb47
bb46:
  br label %bb49
bb47:
  store %olang.scope zeroinitializer, ptr %s13
  %t304 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t304, ptr %l107, !tbaa !27
  %t305 = load ptr, ptr %l0, !tbaa !29
  %t306 = load ptr, ptr %l10, !tbaa !29
  %t308 = getelementptr %"compiler/typed:Promote", ptr %t306, i32 0, i32 0
  %t309 = load ptr, ptr %t308, !tbaa !29
  %t313 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s13, ptr %v3, ptr %t305, ptr %t309)
  store { i64, ptr } %t313, ptr %l112
  br label %bb48
bb48:
  %t314 = load ptr, ptr %l10, !tbaa !29
  %t316 = getelementptr %"compiler/typed:Promote", ptr %t314, i32 0, i32 1
  %t317 = load i32, ptr %t316, !tbaa !23
  %t318 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d16, i32 0, i32 1) }, 1
  %t319 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d16, i32 0, i32 1) }, 0
  %t320 = load { i64, ptr }, ptr %l107, !tbaa !27
  %t321 = extractvalue { i64, ptr } %t320, 1
  %t322 = extractvalue { i64, ptr } %t320, 0
  %t323 = add i64 %t319, %t322
  %t324 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 1
  %t325 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d17, i32 0, i32 1) }, 0
  %t326 = add i64 %t323, %t325
  %t327 = load { i64, ptr }, ptr %l112, !tbaa !27
  %t328 = extractvalue { i64, ptr } %t327, 1
  %t329 = extractvalue { i64, ptr } %t327, 0
  %t330 = add i64 %t326, %t329
  %t331 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 1
  %t332 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d18, i32 0, i32 1) }, 0
  %t333 = add i64 %t330, %t332
  %t335 = sext i32 %t317 to i64
  %t336 = call i64 @__olang_fmt_i64(ptr null, i64 %t335)
  %t337 = add i64 %t333, %t336
  %t338 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 1
  %t339 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d19, i32 0, i32 1) }, 0
  %t340 = add i64 %t337, %t339
  %t341 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t340)
  call void @olang_textcopy(ptr %t341, ptr %t318, i64 %t319)
  %t342 = getelementptr i8, ptr %t341, i64 %t319
  call void @olang_textcopy(ptr %t342, ptr %t321, i64 %t322)
  %t343 = getelementptr i8, ptr %t342, i64 %t322
  call void @olang_textcopy(ptr %t343, ptr %t324, i64 %t325)
  %t344 = getelementptr i8, ptr %t343, i64 %t325
  call void @olang_textcopy(ptr %t344, ptr %t328, i64 %t329)
  %t345 = getelementptr i8, ptr %t344, i64 %t329
  call void @olang_textcopy(ptr %t345, ptr %t331, i64 %t332)
  %t346 = getelementptr i8, ptr %t345, i64 %t332
  %t347 = call i64 @__olang_fmt_i64(ptr %t346, i64 %t335)
  %t348 = getelementptr i8, ptr %t346, i64 %t336
  call void @olang_textcopy(ptr %t348, ptr %t338, i64 %t339)
  %t349 = insertvalue { i64, ptr } undef, i64 %t340, 0
  %t350 = insertvalue { i64, ptr } %t349, ptr %t341, 1
  store { i64, ptr } %t350, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s13)
  br label %bb150
bb49:
  %t352 = load ptr, ptr %l1, !tbaa !29
  store ptr %t352, ptr %l116, !tbaa !29
  store i1 false, ptr %l117, !tbaa !21
  %t353 = load ptr, ptr %l116, !tbaa !29
  %t354 = icmp ne ptr %t353, null
  br i1 %t354, label %bb50, label %bb51
bb50:
  %t356 = load ptr, ptr %l116, !tbaa !29
  %t357 = load i64, ptr %t356, !range !{i64 0, i64 18}
  %t359 = icmp eq i64 %t357, 6
  store i1 %t359, ptr %l117, !tbaa !21
  br label %bb51
bb51:
  %t360 = load i1, ptr %l117, !tbaa !21
  br i1 %t360, label %bb52, label %bb53
bb52:
  %t361 = load ptr, ptr %l1, !tbaa !29
  %t363 = getelementptr { i64, [5 x i64] }, ptr %t361, i32 0, i32 1
  %t364 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t363, i32 0, i32 2
  %t365 = load ptr, ptr %t364
  store ptr %t365, ptr %l11, !tbaa !29
  br label %bb54
bb53:
  br label %bb57
bb54:
  store %olang.scope zeroinitializer, ptr %s15
  %t367 = load ptr, ptr %l0, !tbaa !29
  %t368 = load ptr, ptr %l11, !tbaa !29
  %t370 = getelementptr %"compiler/typed:Call", ptr %t368, i32 0, i32 0
  %t371 = load ptr, ptr %t370, !tbaa !29
  %t374 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2ecallee(ptr %v0, ptr %v1, ptr %s15, ptr %v3, ptr %t367, ptr %t371)
  store { i64, ptr } %t374, ptr %l125
  br label %bb55
bb55:
  %t375 = load ptr, ptr %l0, !tbaa !29
  %t376 = load ptr, ptr %l11, !tbaa !29
  %t378 = getelementptr %"compiler/typed:Call", ptr %t376, i32 0, i32 1
  %t379 = load { i64, ptr }, ptr %t378, !tbaa !27
  %t382 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexprs(ptr %v0, ptr %v1, ptr %s15, ptr %v3, ptr %t375, { i64, ptr } %t379)
  store { i64, ptr } %t382, ptr %l129
  br label %bb56
bb56:
  %t383 = load ptr, ptr %l11, !tbaa !29
  %t385 = getelementptr %"compiler/typed:Call", ptr %t383, i32 0, i32 2
  %t386 = load i32, ptr %t385, !tbaa !23
  %t387 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, 1
  %t388 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d20, i32 0, i32 1) }, 0
  %t389 = load { i64, ptr }, ptr %l125, !tbaa !27
  %t390 = extractvalue { i64, ptr } %t389, 1
  %t391 = extractvalue { i64, ptr } %t389, 0
  %t392 = add i64 %t388, %t391
  %t393 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 1
  %t394 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d21, i32 0, i32 1) }, 0
  %t395 = add i64 %t392, %t394
  %t396 = load { i64, ptr }, ptr %l129, !tbaa !27
  %t397 = extractvalue { i64, ptr } %t396, 1
  %t398 = extractvalue { i64, ptr } %t396, 0
  %t399 = add i64 %t395, %t398
  %t400 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) }, 1
  %t401 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d22, i32 0, i32 1) }, 0
  %t402 = add i64 %t399, %t401
  %t404 = sext i32 %t386 to i64
  %t405 = call i64 @__olang_fmt_i64(ptr null, i64 %t404)
  %t406 = add i64 %t402, %t405
  %t407 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 1
  %t408 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d23, i32 0, i32 1) }, 0
  %t409 = add i64 %t406, %t408
  %t410 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t409)
  call void @olang_textcopy(ptr %t410, ptr %t387, i64 %t388)
  %t411 = getelementptr i8, ptr %t410, i64 %t388
  call void @olang_textcopy(ptr %t411, ptr %t390, i64 %t391)
  %t412 = getelementptr i8, ptr %t411, i64 %t391
  call void @olang_textcopy(ptr %t412, ptr %t393, i64 %t394)
  %t413 = getelementptr i8, ptr %t412, i64 %t394
  call void @olang_textcopy(ptr %t413, ptr %t397, i64 %t398)
  %t414 = getelementptr i8, ptr %t413, i64 %t398
  call void @olang_textcopy(ptr %t414, ptr %t400, i64 %t401)
  %t415 = getelementptr i8, ptr %t414, i64 %t401
  %t416 = call i64 @__olang_fmt_i64(ptr %t415, i64 %t404)
  %t417 = getelementptr i8, ptr %t415, i64 %t405
  call void @olang_textcopy(ptr %t417, ptr %t407, i64 %t408)
  %t418 = insertvalue { i64, ptr } undef, i64 %t409, 0
  %t419 = insertvalue { i64, ptr } %t418, ptr %t410, 1
  store { i64, ptr } %t419, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s15)
  br label %bb150
bb57:
  %t421 = load ptr, ptr %l1, !tbaa !29
  store ptr %t421, ptr %l133, !tbaa !29
  store i1 false, ptr %l134, !tbaa !21
  %t422 = load ptr, ptr %l133, !tbaa !29
  %t423 = icmp ne ptr %t422, null
  br i1 %t423, label %bb58, label %bb59
bb58:
  %t425 = load ptr, ptr %l133, !tbaa !29
  %t426 = load i64, ptr %t425, !range !{i64 0, i64 18}
  %t428 = icmp eq i64 %t426, 7
  store i1 %t428, ptr %l134, !tbaa !21
  br label %bb59
bb59:
  %t429 = load i1, ptr %l134, !tbaa !21
  br i1 %t429, label %bb60, label %bb61
bb60:
  %t430 = load ptr, ptr %l1, !tbaa !29
  %t432 = getelementptr { i64, [5 x i64] }, ptr %t430, i32 0, i32 1
  %t433 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t432, i32 0, i32 2
  %t434 = load ptr, ptr %t433
  store ptr %t434, ptr %l12, !tbaa !29
  br label %bb62
bb61:
  br label %bb66
bb62:
  store %olang.scope zeroinitializer, ptr %s17
  %t436 = load ptr, ptr %l12, !tbaa !29
  %t438 = getelementptr %"compiler/typed:Make", ptr %t436, i32 0, i32 0
  %t439 = load i32, ptr %t438, !range !{i32 0, i32 5}
  store i32 %t439, ptr %l140
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s18
  store ptr %s18room, ptr %s18
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aMakeKind(ptr %s18, ptr %l140, i64 0)
  br label %bb63
bb63:
  %t441 = load ptr, ptr %s18
  %t442 = getelementptr %olang.builder, ptr %s18, i32 0, i32 1
  %t443 = load i64, ptr %t442
  %t444 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t443)
  call void @olang_textcopy(ptr %t444, ptr %t441, i64 %t443)
  %t445 = insertvalue { i64, ptr } undef, i64 %t443, 0
  %t446 = insertvalue { i64, ptr } %t445, ptr %t444, 1
  store { i64, ptr } %t446, ptr %l142, !tbaa !27
  %t447 = getelementptr %olang.builder, ptr %s18, i32 0, i32 3
  %t448 = load ptr, ptr %t447
  %t449 = icmp ne ptr %t448, null
  br i1 %t449, label %sbgrew.450, label %sbdone.451
sbgrew.450:
  call void @__olang_sb_done(ptr %s18)
  br label %sbdone.451
sbdone.451:
  %t452 = load { i64, ptr }, ptr %l142, !tbaa !27
  %t453 = extractvalue { i64, ptr } %t452, 0
  %t454 = extractvalue { i64, ptr } %t452, 1
  %t455 = mul i64 %t453, 1
  %t456 = call ptr @__olang_scope_alloc(ptr %s17, i64 %t455)
  call void @llvm.memcpy.p0.p0.i64(ptr %t456, ptr %t454, i64 %t455, i1 false)
  %t457 = insertvalue { i64, ptr } undef, i64 %t453, 0
  %t458 = insertvalue { i64, ptr } %t457, ptr %t456, 1
  %t460 = call { i64, ptr } @compiler_2ftyped_2eshort(ptr %s17, ptr %s17, { i64, ptr } %t458)
  store { i64, ptr } %t460, ptr %l144
  br label %bb64
bb64:
  %t461 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t461, ptr %l145, !tbaa !27
  %t462 = load ptr, ptr %l0, !tbaa !29
  %t463 = load ptr, ptr %l12, !tbaa !29
  %t465 = getelementptr %"compiler/typed:Make", ptr %t463, i32 0, i32 2
  %t466 = load { i64, ptr }, ptr %t465, !tbaa !27
  %t469 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexprs(ptr %v0, ptr %v1, ptr %s17, ptr %v3, ptr %t462, { i64, ptr } %t466)
  store { i64, ptr } %t469, ptr %l149
  br label %bb65
bb65:
  %t470 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 1
  %t471 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d24, i32 0, i32 1) }, 0
  %t472 = load { i64, ptr }, ptr %l144, !tbaa !27
  %t473 = extractvalue { i64, ptr } %t472, 1
  %t474 = extractvalue { i64, ptr } %t472, 0
  %t475 = add i64 %t471, %t474
  %t476 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t477 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t478 = add i64 %t475, %t477
  %t479 = load { i64, ptr }, ptr %l145, !tbaa !27
  %t480 = extractvalue { i64, ptr } %t479, 1
  %t481 = extractvalue { i64, ptr } %t479, 0
  %t482 = add i64 %t478, %t481
  %t483 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 1
  %t484 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d25, i32 0, i32 1) }, 0
  %t485 = add i64 %t482, %t484
  %t486 = load { i64, ptr }, ptr %l149, !tbaa !27
  %t487 = extractvalue { i64, ptr } %t486, 1
  %t488 = extractvalue { i64, ptr } %t486, 0
  %t489 = add i64 %t485, %t488
  %t490 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 1
  %t491 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d26, i32 0, i32 1) }, 0
  %t492 = add i64 %t489, %t491
  %t493 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t492)
  call void @olang_textcopy(ptr %t493, ptr %t470, i64 %t471)
  %t494 = getelementptr i8, ptr %t493, i64 %t471
  call void @olang_textcopy(ptr %t494, ptr %t473, i64 %t474)
  %t495 = getelementptr i8, ptr %t494, i64 %t474
  call void @olang_textcopy(ptr %t495, ptr %t476, i64 %t477)
  %t496 = getelementptr i8, ptr %t495, i64 %t477
  call void @olang_textcopy(ptr %t496, ptr %t480, i64 %t481)
  %t497 = getelementptr i8, ptr %t496, i64 %t481
  call void @olang_textcopy(ptr %t497, ptr %t483, i64 %t484)
  %t498 = getelementptr i8, ptr %t497, i64 %t484
  call void @olang_textcopy(ptr %t498, ptr %t487, i64 %t488)
  %t499 = getelementptr i8, ptr %t498, i64 %t488
  call void @olang_textcopy(ptr %t499, ptr %t490, i64 %t491)
  %t500 = insertvalue { i64, ptr } undef, i64 %t492, 0
  %t501 = insertvalue { i64, ptr } %t500, ptr %t493, 1
  store { i64, ptr } %t501, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s17)
  br label %bb150
bb66:
  %t503 = load ptr, ptr %l1, !tbaa !29
  store ptr %t503, ptr %l151, !tbaa !29
  store i1 false, ptr %l152, !tbaa !21
  %t504 = load ptr, ptr %l151, !tbaa !29
  %t505 = icmp ne ptr %t504, null
  br i1 %t505, label %bb67, label %bb68
bb67:
  %t507 = load ptr, ptr %l151, !tbaa !29
  %t508 = load i64, ptr %t507, !range !{i64 0, i64 18}
  %t510 = icmp eq i64 %t508, 8
  store i1 %t510, ptr %l152, !tbaa !21
  br label %bb68
bb68:
  %t511 = load i1, ptr %l152, !tbaa !21
  br i1 %t511, label %bb69, label %bb70
bb69:
  %t512 = load ptr, ptr %l1, !tbaa !29
  %t514 = getelementptr { i64, [5 x i64] }, ptr %t512, i32 0, i32 1
  %t515 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t514, i32 0, i32 2
  %t516 = load ptr, ptr %t515
  store ptr %t516, ptr %l13, !tbaa !29
  br label %bb71
bb70:
  br label %bb72
bb71:
  %t518 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t519 = load ptr, ptr %l13, !tbaa !29
  %t521 = getelementptr %"compiler/typed:Collect", ptr %t519, i32 0, i32 2
  %t522 = load i32, ptr %t521, !tbaa !23
  %t523 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) }, 1
  %t524 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d27, i32 0, i32 1) }, 0
  %t526 = extractvalue { i64, ptr } %t518, 1
  %t527 = extractvalue { i64, ptr } %t518, 0
  %t528 = add i64 %t524, %t527
  %t529 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 1
  %t530 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d28, i32 0, i32 1) }, 0
  %t531 = add i64 %t528, %t530
  %t533 = sext i32 %t522 to i64
  %t534 = call i64 @__olang_fmt_i64(ptr null, i64 %t533)
  %t535 = add i64 %t531, %t534
  %t536 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 1
  %t537 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d29, i32 0, i32 1) }, 0
  %t538 = add i64 %t535, %t537
  %t539 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t538)
  call void @olang_textcopy(ptr %t539, ptr %t523, i64 %t524)
  %t540 = getelementptr i8, ptr %t539, i64 %t524
  call void @olang_textcopy(ptr %t540, ptr %t526, i64 %t527)
  %t541 = getelementptr i8, ptr %t540, i64 %t527
  call void @olang_textcopy(ptr %t541, ptr %t529, i64 %t530)
  %t542 = getelementptr i8, ptr %t541, i64 %t530
  %t543 = call i64 @__olang_fmt_i64(ptr %t542, i64 %t533)
  %t544 = getelementptr i8, ptr %t542, i64 %t534
  call void @olang_textcopy(ptr %t544, ptr %t536, i64 %t537)
  %t545 = insertvalue { i64, ptr } undef, i64 %t538, 0
  %t546 = insertvalue { i64, ptr } %t545, ptr %t539, 1
  store { i64, ptr } %t546, ptr %l39, !tbaa !27
  br label %bb150
bb72:
  %t548 = load ptr, ptr %l1, !tbaa !29
  store ptr %t548, ptr %l161, !tbaa !29
  store i1 false, ptr %l162, !tbaa !21
  %t549 = load ptr, ptr %l161, !tbaa !29
  %t550 = icmp ne ptr %t549, null
  br i1 %t550, label %bb73, label %bb74
bb73:
  %t552 = load ptr, ptr %l161, !tbaa !29
  %t553 = load i64, ptr %t552, !range !{i64 0, i64 18}
  %t555 = icmp eq i64 %t553, 9
  store i1 %t555, ptr %l162, !tbaa !21
  br label %bb74
bb74:
  %t556 = load i1, ptr %l162, !tbaa !21
  br i1 %t556, label %bb75, label %bb76
bb75:
  %t557 = load ptr, ptr %l1, !tbaa !29
  %t559 = getelementptr { i64, [5 x i64] }, ptr %t557, i32 0, i32 1
  %t560 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t559, i32 0, i32 2
  %t561 = load i32, ptr %t560, !range !{i32 0, i32 52}
  store i32 %t561, ptr %l14
  %t563 = load ptr, ptr %l1, !tbaa !29
  %t565 = getelementptr { i64, [5 x i64] }, ptr %t563, i32 0, i32 1
  %t566 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t565, i32 0, i32 3
  %t567 = load i32, ptr %t566, !range !{i32 0, i32 3}
  store i32 %t567, ptr %l15
  %t569 = load ptr, ptr %l1, !tbaa !29
  %t571 = getelementptr { i64, [5 x i64] }, ptr %t569, i32 0, i32 1
  %t572 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t571, i32 0, i32 4
  %t573 = load { i64, ptr }, ptr %t572
  store { i64, ptr } %t573, ptr %l16, !tbaa !27
  br label %bb77
bb76:
  br label %bb86
bb77:
  store %olang.scope zeroinitializer, ptr %s22
  %t575 = load i32, ptr %l14, !range !{i32 0, i32 52}
  store i32 %t575, ptr %l171
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s23
  store ptr %s23room, ptr %s23
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %s23, ptr %l171, i64 0)
  br label %bb78
bb78:
  %t577 = load ptr, ptr %s23
  %t578 = getelementptr %olang.builder, ptr %s23, i32 0, i32 1
  %t579 = load i64, ptr %t578
  %t580 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t579)
  call void @olang_textcopy(ptr %t580, ptr %t577, i64 %t579)
  %t581 = insertvalue { i64, ptr } undef, i64 %t579, 0
  %t582 = insertvalue { i64, ptr } %t581, ptr %t580, 1
  store { i64, ptr } %t582, ptr %l173, !tbaa !27
  %t583 = getelementptr %olang.builder, ptr %s23, i32 0, i32 3
  %t584 = load ptr, ptr %t583
  %t585 = icmp ne ptr %t584, null
  br i1 %t585, label %sbgrew.586, label %sbdone.587
sbgrew.586:
  call void @__olang_sb_done(ptr %s23)
  br label %sbdone.587
sbdone.587:
  %t588 = load { i64, ptr }, ptr %l173, !tbaa !27
  %t589 = extractvalue { i64, ptr } %t588, 0
  %t590 = extractvalue { i64, ptr } %t588, 1
  %t591 = mul i64 %t589, 1
  %t592 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t591)
  call void @llvm.memcpy.p0.p0.i64(ptr %t592, ptr %t590, i64 %t591, i1 false)
  %t593 = insertvalue { i64, ptr } undef, i64 %t589, 0
  %t594 = insertvalue { i64, ptr } %t593, ptr %t592, 1
  %t596 = call { i64, ptr } @compiler_2ftyped_2eshort(ptr %s22, ptr %s22, { i64, ptr } %t594)
  store { i64, ptr } %t596, ptr %l175
  br label %bb79
bb79:
  %t597 = load i32, ptr %l15, !range !{i32 0, i32 3}
  %t599 = trunc i64 0 to i32
  %t600 = icmp eq i32 %t597, %t599
  %t602 = xor i1 %t600, true
  br i1 %t602, label %bb80, label %bb81
bb80:
  %t604 = load i32, ptr %l15, !range !{i32 0, i32 3}
  store i32 %t604, ptr %l180
  store %olang.builder { ptr null, i64 0, i64 64, ptr null, ptr null }, ptr %s24
  store ptr %s24room, ptr %s24
  call void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aCheck(ptr %s24, ptr %l180, i64 0)
  br label %bb82
bb81:
  store { i64, ptr } { i64 0, ptr getelementptr inbounds (<{ i64, [0 x i8] }>, ptr @.d30, i32 0, i32 1) }, ptr %l179, !tbaa !27
  br label %bb84
bb82:
  %t606 = load ptr, ptr %s24
  %t607 = getelementptr %olang.builder, ptr %s24, i32 0, i32 1
  %t608 = load i64, ptr %t607
  %t609 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t608)
  call void @olang_textcopy(ptr %t609, ptr %t606, i64 %t608)
  %t610 = insertvalue { i64, ptr } undef, i64 %t608, 0
  %t611 = insertvalue { i64, ptr } %t610, ptr %t609, 1
  store { i64, ptr } %t611, ptr %l182, !tbaa !27
  %t612 = getelementptr %olang.builder, ptr %s24, i32 0, i32 3
  %t613 = load ptr, ptr %t612
  %t614 = icmp ne ptr %t613, null
  br i1 %t614, label %sbgrew.615, label %sbdone.616
sbgrew.615:
  call void @__olang_sb_done(ptr %s24)
  br label %sbdone.616
sbdone.616:
  %t617 = load { i64, ptr }, ptr %l182, !tbaa !27
  %t618 = extractvalue { i64, ptr } %t617, 0
  %t619 = extractvalue { i64, ptr } %t617, 1
  %t620 = mul i64 %t618, 1
  %t621 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t620)
  call void @llvm.memcpy.p0.p0.i64(ptr %t621, ptr %t619, i64 %t620, i1 false)
  %t622 = insertvalue { i64, ptr } undef, i64 %t618, 0
  %t623 = insertvalue { i64, ptr } %t622, ptr %t621, 1
  %t625 = call { i64, ptr } @compiler_2ftyped_2eshort(ptr %s22, ptr %s22, { i64, ptr } %t623)
  store { i64, ptr } %t625, ptr %l184
  br label %bb83
bb83:
  %t626 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 1
  %t627 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d31, i32 0, i32 1) }, 0
  %t628 = load { i64, ptr }, ptr %l184, !tbaa !27
  %t629 = extractvalue { i64, ptr } %t628, 1
  %t630 = extractvalue { i64, ptr } %t628, 0
  %t631 = add i64 %t627, %t630
  %t632 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t631)
  call void @olang_textcopy(ptr %t632, ptr %t626, i64 %t627)
  %t633 = getelementptr i8, ptr %t632, i64 %t627
  call void @olang_textcopy(ptr %t633, ptr %t629, i64 %t630)
  %t634 = insertvalue { i64, ptr } undef, i64 %t631, 0
  %t635 = insertvalue { i64, ptr } %t634, ptr %t632, 1
  %t637 = extractvalue { i64, ptr } %t635, 0
  %t638 = extractvalue { i64, ptr } %t635, 1
  %t639 = mul i64 %t637, 1
  %t640 = call ptr @__olang_scope_alloc(ptr %s22, i64 %t639)
  call void @llvm.memcpy.p0.p0.i64(ptr %t640, ptr %t638, i64 %t639, i1 false)
  %t641 = insertvalue { i64, ptr } undef, i64 %t637, 0
  %t642 = insertvalue { i64, ptr } %t641, ptr %t640, 1
  store { i64, ptr } %t642, ptr %l179, !tbaa !27
  br label %bb84
bb84:
  %t644 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t644, ptr %l187, !tbaa !27
  %t645 = load ptr, ptr %l0, !tbaa !29
  %t646 = load { i64, ptr }, ptr %l16, !tbaa !27
  %t649 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexprs(ptr %v0, ptr %v1, ptr %s22, ptr %v3, ptr %t645, { i64, ptr } %t646)
  store { i64, ptr } %t649, ptr %l190
  br label %bb85
bb85:
  %t650 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 1
  %t651 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d32, i32 0, i32 1) }, 0
  %t652 = load { i64, ptr }, ptr %l175, !tbaa !27
  %t653 = extractvalue { i64, ptr } %t652, 1
  %t654 = extractvalue { i64, ptr } %t652, 0
  %t655 = add i64 %t651, %t654
  %t656 = load { i64, ptr }, ptr %l179, !tbaa !27
  %t657 = extractvalue { i64, ptr } %t656, 1
  %t658 = extractvalue { i64, ptr } %t656, 0
  %t659 = add i64 %t655, %t658
  %t660 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t661 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t662 = add i64 %t659, %t661
  %t663 = load { i64, ptr }, ptr %l187, !tbaa !27
  %t664 = extractvalue { i64, ptr } %t663, 1
  %t665 = extractvalue { i64, ptr } %t663, 0
  %t666 = add i64 %t662, %t665
  %t667 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 1
  %t668 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d33, i32 0, i32 1) }, 0
  %t669 = add i64 %t666, %t668
  %t670 = load { i64, ptr }, ptr %l190, !tbaa !27
  %t671 = extractvalue { i64, ptr } %t670, 1
  %t672 = extractvalue { i64, ptr } %t670, 0
  %t673 = add i64 %t669, %t672
  %t674 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 1
  %t675 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d34, i32 0, i32 1) }, 0
  %t676 = add i64 %t673, %t675
  %t677 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t676)
  call void @olang_textcopy(ptr %t677, ptr %t650, i64 %t651)
  %t678 = getelementptr i8, ptr %t677, i64 %t651
  call void @olang_textcopy(ptr %t678, ptr %t653, i64 %t654)
  %t679 = getelementptr i8, ptr %t678, i64 %t654
  call void @olang_textcopy(ptr %t679, ptr %t657, i64 %t658)
  %t680 = getelementptr i8, ptr %t679, i64 %t658
  call void @olang_textcopy(ptr %t680, ptr %t660, i64 %t661)
  %t681 = getelementptr i8, ptr %t680, i64 %t661
  call void @olang_textcopy(ptr %t681, ptr %t664, i64 %t665)
  %t682 = getelementptr i8, ptr %t681, i64 %t665
  call void @olang_textcopy(ptr %t682, ptr %t667, i64 %t668)
  %t683 = getelementptr i8, ptr %t682, i64 %t668
  call void @olang_textcopy(ptr %t683, ptr %t671, i64 %t672)
  %t684 = getelementptr i8, ptr %t683, i64 %t672
  call void @olang_textcopy(ptr %t684, ptr %t674, i64 %t675)
  %t685 = insertvalue { i64, ptr } undef, i64 %t676, 0
  %t686 = insertvalue { i64, ptr } %t685, ptr %t677, 1
  store { i64, ptr } %t686, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s22)
  br label %bb150
bb86:
  %t688 = load ptr, ptr %l1, !tbaa !29
  store ptr %t688, ptr %l192, !tbaa !29
  store i1 false, ptr %l193, !tbaa !21
  %t689 = load ptr, ptr %l192, !tbaa !29
  %t690 = icmp ne ptr %t689, null
  br i1 %t690, label %bb87, label %bb88
bb87:
  %t692 = load ptr, ptr %l192, !tbaa !29
  %t693 = load i64, ptr %t692, !range !{i64 0, i64 18}
  %t695 = icmp eq i64 %t693, 10
  store i1 %t695, ptr %l193, !tbaa !21
  br label %bb88
bb88:
  %t696 = load i1, ptr %l193, !tbaa !21
  br i1 %t696, label %bb89, label %bb90
bb89:
  %t697 = load ptr, ptr %l1, !tbaa !29
  %t699 = getelementptr { i64, [5 x i64] }, ptr %t697, i32 0, i32 1
  %t700 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t699, i32 0, i32 2
  %t701 = load ptr, ptr %t700
  store ptr %t701, ptr %l17, !tbaa !29
  br label %bb91
bb90:
  br label %bb95
bb91:
  store %olang.scope zeroinitializer, ptr %s27
  %t703 = load ptr, ptr %l0, !tbaa !29
  %t704 = load ptr, ptr %l17, !tbaa !29
  %t706 = getelementptr %"compiler/typed:Slice", ptr %t704, i32 0, i32 0
  %t707 = load ptr, ptr %t706, !tbaa !29
  %t710 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %s27, ptr %v3, ptr %t703, ptr %t707)
  store { i64, ptr } %t710, ptr %l201
  br label %bb92
bb92:
  %t711 = load ptr, ptr %l0, !tbaa !29
  %t712 = load ptr, ptr %l17, !tbaa !29
  %t714 = getelementptr %"compiler/typed:Slice", ptr %t712, i32 0, i32 1
  %t715 = load ptr, ptr %t714, !tbaa !29
  %t719 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s27, ptr %v3, ptr %t711, ptr %t715)
  store { i64, ptr } %t719, ptr %l206
  br label %bb93
bb93:
  %t720 = load ptr, ptr %l0, !tbaa !29
  %t721 = load ptr, ptr %l17, !tbaa !29
  %t723 = getelementptr %"compiler/typed:Slice", ptr %t721, i32 0, i32 2
  %t724 = load ptr, ptr %t723, !tbaa !29
  %t728 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s27, ptr %v3, ptr %t720, ptr %t724)
  store { i64, ptr } %t728, ptr %l211
  br label %bb94
bb94:
  %t729 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d35, i32 0, i32 1) }, 1
  %t730 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d35, i32 0, i32 1) }, 0
  %t731 = load { i64, ptr }, ptr %l201, !tbaa !27
  %t732 = extractvalue { i64, ptr } %t731, 1
  %t733 = extractvalue { i64, ptr } %t731, 0
  %t734 = add i64 %t730, %t733
  %t735 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t736 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t737 = add i64 %t734, %t736
  %t738 = load { i64, ptr }, ptr %l206, !tbaa !27
  %t739 = extractvalue { i64, ptr } %t738, 1
  %t740 = extractvalue { i64, ptr } %t738, 0
  %t741 = add i64 %t737, %t740
  %t742 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 1
  %t743 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d36, i32 0, i32 1) }, 0
  %t744 = add i64 %t741, %t743
  %t745 = load { i64, ptr }, ptr %l211, !tbaa !27
  %t746 = extractvalue { i64, ptr } %t745, 1
  %t747 = extractvalue { i64, ptr } %t745, 0
  %t748 = add i64 %t744, %t747
  %t749 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 1
  %t750 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d37, i32 0, i32 1) }, 0
  %t751 = add i64 %t748, %t750
  %t752 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t751)
  call void @olang_textcopy(ptr %t752, ptr %t729, i64 %t730)
  %t753 = getelementptr i8, ptr %t752, i64 %t730
  call void @olang_textcopy(ptr %t753, ptr %t732, i64 %t733)
  %t754 = getelementptr i8, ptr %t753, i64 %t733
  call void @olang_textcopy(ptr %t754, ptr %t735, i64 %t736)
  %t755 = getelementptr i8, ptr %t754, i64 %t736
  call void @olang_textcopy(ptr %t755, ptr %t739, i64 %t740)
  %t756 = getelementptr i8, ptr %t755, i64 %t740
  call void @olang_textcopy(ptr %t756, ptr %t742, i64 %t743)
  %t757 = getelementptr i8, ptr %t756, i64 %t743
  call void @olang_textcopy(ptr %t757, ptr %t746, i64 %t747)
  %t758 = getelementptr i8, ptr %t757, i64 %t747
  call void @olang_textcopy(ptr %t758, ptr %t749, i64 %t750)
  %t759 = insertvalue { i64, ptr } undef, i64 %t751, 0
  %t760 = insertvalue { i64, ptr } %t759, ptr %t752, 1
  store { i64, ptr } %t760, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s27)
  br label %bb150
bb95:
  %t762 = load ptr, ptr %l1, !tbaa !29
  store ptr %t762, ptr %l213, !tbaa !29
  store i1 false, ptr %l214, !tbaa !21
  %t763 = load ptr, ptr %l213, !tbaa !29
  %t764 = icmp ne ptr %t763, null
  br i1 %t764, label %bb96, label %bb97
bb96:
  %t766 = load ptr, ptr %l213, !tbaa !29
  %t767 = load i64, ptr %t766, !range !{i64 0, i64 18}
  %t769 = icmp eq i64 %t767, 11
  store i1 %t769, ptr %l214, !tbaa !21
  br label %bb97
bb97:
  %t770 = load i1, ptr %l214, !tbaa !21
  br i1 %t770, label %bb98, label %bb99
bb98:
  %t771 = load ptr, ptr %l1, !tbaa !29
  %t773 = getelementptr { i64, [5 x i64] }, ptr %t771, i32 0, i32 1
  %t774 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t773, i32 0, i32 2
  %t775 = load ptr, ptr %t774
  store ptr %t775, ptr %l18, !tbaa !29
  br label %bb100
bb99:
  br label %bb104
bb100:
  store %olang.scope zeroinitializer, ptr %s29
  %t777 = load ptr, ptr %l0, !tbaa !29
  %t778 = load ptr, ptr %l18, !tbaa !29
  %t780 = getelementptr %"compiler/typed:Cond", ptr %t778, i32 0, i32 0
  %t781 = load ptr, ptr %t780, !tbaa !29
  %t785 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %v3, ptr %t777, ptr %t781)
  store { i64, ptr } %t785, ptr %l223
  br label %bb101
bb101:
  %t786 = load ptr, ptr %l0, !tbaa !29
  %t787 = load ptr, ptr %l18, !tbaa !29
  %t789 = getelementptr %"compiler/typed:Cond", ptr %t787, i32 0, i32 1
  %t790 = load ptr, ptr %t789, !tbaa !29
  %t793 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %v3, ptr %t786, ptr %t790)
  store { i64, ptr } %t793, ptr %l227
  br label %bb102
bb102:
  %t794 = load ptr, ptr %l0, !tbaa !29
  %t795 = load ptr, ptr %l18, !tbaa !29
  %t797 = getelementptr %"compiler/typed:Cond", ptr %t795, i32 0, i32 2
  %t798 = load ptr, ptr %t797, !tbaa !29
  %t802 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s29, ptr %v3, ptr %t794, ptr %t798)
  store { i64, ptr } %t802, ptr %l232
  br label %bb103
bb103:
  %t803 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, 1
  %t804 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d38, i32 0, i32 1) }, 0
  %t805 = load { i64, ptr }, ptr %l223, !tbaa !27
  %t806 = extractvalue { i64, ptr } %t805, 1
  %t807 = extractvalue { i64, ptr } %t805, 0
  %t808 = add i64 %t804, %t807
  %t809 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t810 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t811 = add i64 %t808, %t810
  %t812 = load { i64, ptr }, ptr %l227, !tbaa !27
  %t813 = extractvalue { i64, ptr } %t812, 1
  %t814 = extractvalue { i64, ptr } %t812, 0
  %t815 = add i64 %t811, %t814
  %t816 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 1
  %t817 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d39, i32 0, i32 1) }, 0
  %t818 = add i64 %t815, %t817
  %t819 = load { i64, ptr }, ptr %l232, !tbaa !27
  %t820 = extractvalue { i64, ptr } %t819, 1
  %t821 = extractvalue { i64, ptr } %t819, 0
  %t822 = add i64 %t818, %t821
  %t823 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 1
  %t824 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d40, i32 0, i32 1) }, 0
  %t825 = add i64 %t822, %t824
  %t826 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t825)
  call void @olang_textcopy(ptr %t826, ptr %t803, i64 %t804)
  %t827 = getelementptr i8, ptr %t826, i64 %t804
  call void @olang_textcopy(ptr %t827, ptr %t806, i64 %t807)
  %t828 = getelementptr i8, ptr %t827, i64 %t807
  call void @olang_textcopy(ptr %t828, ptr %t809, i64 %t810)
  %t829 = getelementptr i8, ptr %t828, i64 %t810
  call void @olang_textcopy(ptr %t829, ptr %t813, i64 %t814)
  %t830 = getelementptr i8, ptr %t829, i64 %t814
  call void @olang_textcopy(ptr %t830, ptr %t816, i64 %t817)
  %t831 = getelementptr i8, ptr %t830, i64 %t817
  call void @olang_textcopy(ptr %t831, ptr %t820, i64 %t821)
  %t832 = getelementptr i8, ptr %t831, i64 %t821
  call void @olang_textcopy(ptr %t832, ptr %t823, i64 %t824)
  %t833 = insertvalue { i64, ptr } undef, i64 %t825, 0
  %t834 = insertvalue { i64, ptr } %t833, ptr %t826, 1
  store { i64, ptr } %t834, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s29)
  br label %bb150
bb104:
  %t836 = load ptr, ptr %l1, !tbaa !29
  store ptr %t836, ptr %l234, !tbaa !29
  store i1 false, ptr %l235, !tbaa !21
  %t837 = load ptr, ptr %l234, !tbaa !29
  %t838 = icmp ne ptr %t837, null
  br i1 %t838, label %bb105, label %bb106
bb105:
  %t840 = load ptr, ptr %l234, !tbaa !29
  %t841 = load i64, ptr %t840, !range !{i64 0, i64 18}
  %t843 = icmp eq i64 %t841, 12
  store i1 %t843, ptr %l235, !tbaa !21
  br label %bb106
bb106:
  %t844 = load i1, ptr %l235, !tbaa !21
  br i1 %t844, label %bb107, label %bb108
bb107:
  %t845 = load ptr, ptr %l1, !tbaa !29
  %t847 = getelementptr { i64, [5 x i64] }, ptr %t845, i32 0, i32 1
  %t848 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t847, i32 0, i32 2
  %t849 = load ptr, ptr %t848
  store ptr %t849, ptr %l19, !tbaa !29
  br label %bb109
bb108:
  br label %bb111
bb109:
  store %olang.scope zeroinitializer, ptr %s31
  %t851 = load ptr, ptr %l19, !tbaa !29
  %t853 = getelementptr %"compiler/typed:Seq", ptr %t851, i32 0, i32 0
  %t854 = load { i64, ptr }, ptr %t853, !tbaa !27
  %t856 = extractvalue { i64, ptr } %t854, 0
  store i64 %t856, ptr %l242, !tbaa !24
  %t857 = load ptr, ptr %l0, !tbaa !29
  %t858 = load ptr, ptr %l19, !tbaa !29
  %t860 = getelementptr %"compiler/typed:Seq", ptr %t858, i32 0, i32 1
  %t861 = load ptr, ptr %t860, !tbaa !29
  %t864 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s31, ptr %v3, ptr %t857, ptr %t861)
  store { i64, ptr } %t864, ptr %l246
  br label %bb110
bb110:
  %t865 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) }, 1
  %t866 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d41, i32 0, i32 1) }, 0
  %t867 = load i64, ptr %l242, !tbaa !24
  %t868 = call i64 @__olang_fmt_i64(ptr null, i64 %t867)
  %t869 = add i64 %t866, %t868
  %t870 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 1
  %t871 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d42, i32 0, i32 1) }, 0
  %t872 = add i64 %t869, %t871
  %t873 = load { i64, ptr }, ptr %l246, !tbaa !27
  %t874 = extractvalue { i64, ptr } %t873, 1
  %t875 = extractvalue { i64, ptr } %t873, 0
  %t876 = add i64 %t872, %t875
  %t877 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 1
  %t878 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d43, i32 0, i32 1) }, 0
  %t879 = add i64 %t876, %t878
  %t880 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t879)
  call void @olang_textcopy(ptr %t880, ptr %t865, i64 %t866)
  %t881 = getelementptr i8, ptr %t880, i64 %t866
  %t882 = call i64 @__olang_fmt_i64(ptr %t881, i64 %t867)
  %t883 = getelementptr i8, ptr %t881, i64 %t868
  call void @olang_textcopy(ptr %t883, ptr %t870, i64 %t871)
  %t884 = getelementptr i8, ptr %t883, i64 %t871
  call void @olang_textcopy(ptr %t884, ptr %t874, i64 %t875)
  %t885 = getelementptr i8, ptr %t884, i64 %t875
  call void @olang_textcopy(ptr %t885, ptr %t877, i64 %t878)
  %t886 = insertvalue { i64, ptr } undef, i64 %t879, 0
  %t887 = insertvalue { i64, ptr } %t886, ptr %t880, 1
  store { i64, ptr } %t887, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s31)
  br label %bb150
bb111:
  %t889 = load ptr, ptr %l1, !tbaa !29
  store ptr %t889, ptr %l248, !tbaa !29
  store i1 false, ptr %l249, !tbaa !21
  %t890 = load ptr, ptr %l248, !tbaa !29
  %t891 = icmp ne ptr %t890, null
  br i1 %t891, label %bb112, label %bb113
bb112:
  %t893 = load ptr, ptr %l248, !tbaa !29
  %t894 = load i64, ptr %t893, !range !{i64 0, i64 18}
  %t896 = icmp eq i64 %t894, 13
  store i1 %t896, ptr %l249, !tbaa !21
  br label %bb113
bb113:
  %t897 = load i1, ptr %l249, !tbaa !21
  br i1 %t897, label %bb114, label %bb115
bb114:
  %t898 = load ptr, ptr %l1, !tbaa !29
  %t900 = getelementptr { i64, [5 x i64] }, ptr %t898, i32 0, i32 1
  %t901 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t900, i32 0, i32 2
  %t902 = load ptr, ptr %t901
  store ptr %t902, ptr %l20, !tbaa !29
  br label %bb116
bb115:
  br label %bb123
bb116:
  %t904 = load ptr, ptr %l20, !tbaa !29
  %t906 = getelementptr %"compiler/typed:Match", ptr %t904, i32 0, i32 1
  %t907 = load { i64, ptr }, ptr %t906, !tbaa !27
  %t909 = extractvalue { i64, ptr } %t907, 0
  store i64 %t909, ptr %l256, !tbaa !24
  %t910 = load ptr, ptr %l20, !tbaa !29
  %t912 = getelementptr %"compiler/typed:Match", ptr %t910, i32 0, i32 2
  %t913 = load ptr, ptr %t912, !tbaa !29
  %t915 = icmp eq ptr %t913, null
  br i1 %t915, label %bb117, label %bb118
bb117:
  call void @__olang_check_failed(ptr @olang_loc_a4fa64762613be8a_d12da9b666f393e6)
  unreachable
bb118:
  br label %bb119
bb119:
  %t917 = load ptr, ptr %l20, !tbaa !29
  %t919 = getelementptr %"compiler/typed:Match", ptr %t917, i32 0, i32 2
  %t920 = load ptr, ptr %t919, !tbaa !29
  %t923 = getelementptr %"compiler/typed:Arm", ptr %t920, i32 0, i32 3
  %t924 = load ptr, ptr %t923, !tbaa !29
  store ptr %t924, ptr %l21, !tbaa !29
  %t926 = load ptr, ptr %l21, !tbaa !29
  %t928 = icmp eq ptr %t926, null
  br i1 %t928, label %bb120, label %bb121
bb120:
  call void @__olang_check_failed(ptr @olang_loc_a4fa64762613be8a_d12da9b666f393e6)
  unreachable
bb121:
  br label %bb122
bb122:
  %t930 = load ptr, ptr %l21, !tbaa !29
  %t933 = getelementptr %"compiler/typed:Block", ptr %t930, i32 0, i32 1
  %t934 = load { i64, ptr }, ptr %t933, !tbaa !27
  %t936 = extractvalue { i64, ptr } %t934, 0
  %t937 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) }, 1
  %t938 = extractvalue { i64, ptr } { i64 7, ptr getelementptr inbounds (<{ i64, [7 x i8] }>, ptr @.d44, i32 0, i32 1) }, 0
  %t939 = load i64, ptr %l256, !tbaa !24
  %t940 = call i64 @__olang_fmt_i64(ptr null, i64 %t939)
  %t941 = add i64 %t938, %t940
  %t942 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d45, i32 0, i32 1) }, 1
  %t943 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d45, i32 0, i32 1) }, 0
  %t944 = add i64 %t941, %t943
  %t946 = call i64 @__olang_fmt_i64(ptr null, i64 %t936)
  %t947 = add i64 %t944, %t946
  %t948 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 1
  %t949 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d46, i32 0, i32 1) }, 0
  %t950 = add i64 %t947, %t949
  %t951 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t950)
  call void @olang_textcopy(ptr %t951, ptr %t937, i64 %t938)
  %t952 = getelementptr i8, ptr %t951, i64 %t938
  %t953 = call i64 @__olang_fmt_i64(ptr %t952, i64 %t939)
  %t954 = getelementptr i8, ptr %t952, i64 %t940
  call void @olang_textcopy(ptr %t954, ptr %t942, i64 %t943)
  %t955 = getelementptr i8, ptr %t954, i64 %t943
  %t956 = call i64 @__olang_fmt_i64(ptr %t955, i64 %t936)
  %t957 = getelementptr i8, ptr %t955, i64 %t946
  call void @olang_textcopy(ptr %t957, ptr %t948, i64 %t949)
  %t958 = insertvalue { i64, ptr } undef, i64 %t950, 0
  %t959 = insertvalue { i64, ptr } %t958, ptr %t951, 1
  store { i64, ptr } %t959, ptr %l39, !tbaa !27
  br label %bb150
bb123:
  %t961 = load ptr, ptr %l1, !tbaa !29
  store ptr %t961, ptr %l271, !tbaa !29
  store i1 false, ptr %l272, !tbaa !21
  %t962 = load ptr, ptr %l271, !tbaa !29
  %t963 = icmp ne ptr %t962, null
  br i1 %t963, label %bb124, label %bb125
bb124:
  %t965 = load ptr, ptr %l271, !tbaa !29
  %t966 = load i64, ptr %t965, !range !{i64 0, i64 18}
  %t968 = icmp eq i64 %t966, 14
  store i1 %t968, ptr %l272, !tbaa !21
  br label %bb125
bb125:
  %t969 = load i1, ptr %l272, !tbaa !21
  br i1 %t969, label %bb126, label %bb127
bb126:
  %t970 = load ptr, ptr %l1, !tbaa !29
  %t972 = getelementptr { i64, [5 x i64] }, ptr %t970, i32 0, i32 1
  %t973 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t972, i32 0, i32 2
  %t974 = load ptr, ptr %t973
  store ptr %t974, ptr %l22, !tbaa !29
  br label %bb128
bb127:
  br label %bb130
bb128:
  store %olang.scope zeroinitializer, ptr %s35
  %t976 = load ptr, ptr %l0, !tbaa !29
  %t977 = load ptr, ptr %l22, !tbaa !29
  %t979 = getelementptr %"compiler/typed:Try", ptr %t977, i32 0, i32 0
  %t980 = load ptr, ptr %t979, !tbaa !29
  %t983 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s35, ptr %v3, ptr %t976, ptr %t980)
  store { i64, ptr } %t983, ptr %l280
  br label %bb129
bb129:
  %t984 = load ptr, ptr %l22, !tbaa !29
  %t986 = getelementptr %"compiler/typed:Try", ptr %t984, i32 0, i32 1
  %t987 = load { i64, ptr }, ptr %t986, !tbaa !27
  %t989 = extractvalue { i64, ptr } %t987, 0
  %t990 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) }, 1
  %t991 = extractvalue { i64, ptr } { i64 5, ptr getelementptr inbounds (<{ i64, [5 x i8] }>, ptr @.d47, i32 0, i32 1) }, 0
  %t992 = load { i64, ptr }, ptr %l280, !tbaa !27
  %t993 = extractvalue { i64, ptr } %t992, 1
  %t994 = extractvalue { i64, ptr } %t992, 0
  %t995 = add i64 %t991, %t994
  %t996 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 1
  %t997 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d48, i32 0, i32 1) }, 0
  %t998 = add i64 %t995, %t997
  %t1000 = call i64 @__olang_fmt_i64(ptr null, i64 %t989)
  %t1001 = add i64 %t998, %t1000
  %t1002 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d49, i32 0, i32 1) }, 1
  %t1003 = extractvalue { i64, ptr } { i64 9, ptr getelementptr inbounds (<{ i64, [9 x i8] }>, ptr @.d49, i32 0, i32 1) }, 0
  %t1004 = add i64 %t1001, %t1003
  %t1005 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1004)
  call void @olang_textcopy(ptr %t1005, ptr %t990, i64 %t991)
  %t1006 = getelementptr i8, ptr %t1005, i64 %t991
  call void @olang_textcopy(ptr %t1006, ptr %t993, i64 %t994)
  %t1007 = getelementptr i8, ptr %t1006, i64 %t994
  call void @olang_textcopy(ptr %t1007, ptr %t996, i64 %t997)
  %t1008 = getelementptr i8, ptr %t1007, i64 %t997
  %t1009 = call i64 @__olang_fmt_i64(ptr %t1008, i64 %t989)
  %t1010 = getelementptr i8, ptr %t1008, i64 %t1000
  call void @olang_textcopy(ptr %t1010, ptr %t1002, i64 %t1003)
  %t1011 = insertvalue { i64, ptr } undef, i64 %t1004, 0
  %t1012 = insertvalue { i64, ptr } %t1011, ptr %t1005, 1
  store { i64, ptr } %t1012, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s35)
  br label %bb150
bb130:
  %t1014 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1014, ptr %l285, !tbaa !29
  store i1 false, ptr %l286, !tbaa !21
  %t1015 = load ptr, ptr %l285, !tbaa !29
  %t1016 = icmp ne ptr %t1015, null
  br i1 %t1016, label %bb131, label %bb132
bb131:
  %t1018 = load ptr, ptr %l285, !tbaa !29
  %t1019 = load i64, ptr %t1018, !range !{i64 0, i64 18}
  %t1021 = icmp eq i64 %t1019, 15
  store i1 %t1021, ptr %l286, !tbaa !21
  br label %bb132
bb132:
  %t1022 = load i1, ptr %l286, !tbaa !21
  br i1 %t1022, label %bb133, label %bb134
bb133:
  br label %bb135
bb134:
  br label %bb136
bb135:
  %t1023 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t1024 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 1
  %t1025 = extractvalue { i64, ptr } { i64 4, ptr getelementptr inbounds (<{ i64, [4 x i8] }>, ptr @.d50, i32 0, i32 1) }, 0
  %t1027 = extractvalue { i64, ptr } %t1023, 1
  %t1028 = extractvalue { i64, ptr } %t1023, 0
  %t1029 = add i64 %t1025, %t1028
  %t1030 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 1
  %t1031 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d51, i32 0, i32 1) }, 0
  %t1032 = add i64 %t1029, %t1031
  %t1033 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1032)
  call void @olang_textcopy(ptr %t1033, ptr %t1024, i64 %t1025)
  %t1034 = getelementptr i8, ptr %t1033, i64 %t1025
  call void @olang_textcopy(ptr %t1034, ptr %t1027, i64 %t1028)
  %t1035 = getelementptr i8, ptr %t1034, i64 %t1028
  call void @olang_textcopy(ptr %t1035, ptr %t1030, i64 %t1031)
  %t1036 = insertvalue { i64, ptr } undef, i64 %t1032, 0
  %t1037 = insertvalue { i64, ptr } %t1036, ptr %t1033, 1
  store { i64, ptr } %t1037, ptr %l39, !tbaa !27
  br label %bb150
bb136:
  %t1039 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1039, ptr %l291, !tbaa !29
  store i1 false, ptr %l292, !tbaa !21
  %t1040 = load ptr, ptr %l291, !tbaa !29
  %t1041 = icmp ne ptr %t1040, null
  br i1 %t1041, label %bb137, label %bb138
bb137:
  %t1043 = load ptr, ptr %l291, !tbaa !29
  %t1044 = load i64, ptr %t1043, !range !{i64 0, i64 18}
  %t1046 = icmp eq i64 %t1044, 16
  store i1 %t1046, ptr %l292, !tbaa !21
  br label %bb138
bb138:
  %t1047 = load i1, ptr %l292, !tbaa !21
  br i1 %t1047, label %bb139, label %bb140
bb139:
  %t1048 = load ptr, ptr %l1, !tbaa !29
  %t1050 = getelementptr { i64, [5 x i64] }, ptr %t1048, i32 0, i32 1
  %t1051 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t1050, i32 0, i32 2
  %t1052 = load ptr, ptr %t1051
  store ptr %t1052, ptr %l23, !tbaa !29
  br label %bb141
bb140:
  br label %bb142
bb141:
  %t1054 = load ptr, ptr %l23, !tbaa !29
  %t1056 = getelementptr %"compiler/typed:Text", ptr %t1054, i32 0, i32 0
  %t1057 = load { i64, ptr }, ptr %t1056, !tbaa !27
  %t1059 = extractvalue { i64, ptr } %t1057, 0
  %t1060 = load ptr, ptr %l23, !tbaa !29
  %t1062 = getelementptr %"compiler/typed:Text", ptr %t1060, i32 0, i32 1
  %t1063 = load i32, ptr %t1062, !tbaa !23
  %t1064 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 1
  %t1065 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d52, i32 0, i32 1) }, 0
  %t1067 = call i64 @__olang_fmt_i64(ptr null, i64 %t1059)
  %t1068 = add i64 %t1065, %t1067
  %t1069 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 1
  %t1070 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d53, i32 0, i32 1) }, 0
  %t1071 = add i64 %t1068, %t1070
  %t1073 = sext i32 %t1063 to i64
  %t1074 = call i64 @__olang_fmt_i64(ptr null, i64 %t1073)
  %t1075 = add i64 %t1071, %t1074
  %t1076 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 1
  %t1077 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d54, i32 0, i32 1) }, 0
  %t1078 = add i64 %t1075, %t1077
  %t1079 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1078)
  call void @olang_textcopy(ptr %t1079, ptr %t1064, i64 %t1065)
  %t1080 = getelementptr i8, ptr %t1079, i64 %t1065
  %t1081 = call i64 @__olang_fmt_i64(ptr %t1080, i64 %t1059)
  %t1082 = getelementptr i8, ptr %t1080, i64 %t1067
  call void @olang_textcopy(ptr %t1082, ptr %t1069, i64 %t1070)
  %t1083 = getelementptr i8, ptr %t1082, i64 %t1070
  %t1084 = call i64 @__olang_fmt_i64(ptr %t1083, i64 %t1073)
  %t1085 = getelementptr i8, ptr %t1083, i64 %t1074
  call void @olang_textcopy(ptr %t1085, ptr %t1076, i64 %t1077)
  %t1086 = insertvalue { i64, ptr } undef, i64 %t1078, 0
  %t1087 = insertvalue { i64, ptr } %t1086, ptr %t1079, 1
  store { i64, ptr } %t1087, ptr %l39, !tbaa !27
  br label %bb150
bb142:
  %t1089 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1089, ptr %l303, !tbaa !29
  store i1 false, ptr %l304, !tbaa !21
  %t1090 = load ptr, ptr %l303, !tbaa !29
  %t1091 = icmp ne ptr %t1090, null
  br i1 %t1091, label %bb143, label %bb144
bb143:
  %t1093 = load ptr, ptr %l303, !tbaa !29
  %t1094 = load i64, ptr %t1093, !range !{i64 0, i64 18}
  %t1096 = icmp eq i64 %t1094, 17
  store i1 %t1096, ptr %l304, !tbaa !21
  br label %bb144
bb144:
  %t1097 = load i1, ptr %l304, !tbaa !21
  br i1 %t1097, label %bb145, label %bb146
bb145:
  %t1098 = load ptr, ptr %l1, !tbaa !29
  %t1100 = getelementptr { i64, [5 x i64] }, ptr %t1098, i32 0, i32 1
  %t1101 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t1100, i32 0, i32 1
  %t1102 = load i64, ptr %t1101
  store i64 %t1102, ptr %l24, !tbaa !24
  %t1104 = load ptr, ptr %l1, !tbaa !29
  %t1106 = getelementptr { i64, [5 x i64] }, ptr %t1104, i32 0, i32 1
  %t1107 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t1106, i32 0, i32 2
  %t1108 = load ptr, ptr %t1107
  store ptr %t1108, ptr %l25, !tbaa !29
  br label %bb147
bb146:
  br label %bb149
bb147:
  store %olang.scope zeroinitializer, ptr %s41
  %t1110 = load i64, ptr %l24, !tbaa !24
  store i64 %t1110, ptr %l311, !tbaa !24
  %t1111 = load ptr, ptr %l0, !tbaa !29
  %t1112 = load ptr, ptr %l25, !tbaa !29
  %t1116 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s41, ptr %v3, ptr %t1111, ptr %t1112)
  store { i64, ptr } %t1116, ptr %l315
  br label %bb148
bb148:
  %t1117 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 1
  %t1118 = extractvalue { i64, ptr } { i64 6, ptr getelementptr inbounds (<{ i64, [6 x i8] }>, ptr @.d55, i32 0, i32 1) }, 0
  %t1119 = load i64, ptr %l311, !tbaa !24
  %t1120 = call i64 @__olang_fmt_i64(ptr null, i64 %t1119)
  %t1121 = add i64 %t1118, %t1120
  %t1122 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 1
  %t1123 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d56, i32 0, i32 1) }, 0
  %t1124 = add i64 %t1121, %t1123
  %t1125 = load { i64, ptr }, ptr %l315, !tbaa !27
  %t1126 = extractvalue { i64, ptr } %t1125, 1
  %t1127 = extractvalue { i64, ptr } %t1125, 0
  %t1128 = add i64 %t1124, %t1127
  %t1129 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 1
  %t1130 = extractvalue { i64, ptr } { i64 1, ptr getelementptr inbounds (<{ i64, [1 x i8] }>, ptr @.d57, i32 0, i32 1) }, 0
  %t1131 = add i64 %t1128, %t1130
  %t1132 = call ptr @__olang_scope_alloc(ptr %v2, i64 %t1131)
  call void @olang_textcopy(ptr %t1132, ptr %t1117, i64 %t1118)
  %t1133 = getelementptr i8, ptr %t1132, i64 %t1118
  %t1134 = call i64 @__olang_fmt_i64(ptr %t1133, i64 %t1119)
  %t1135 = getelementptr i8, ptr %t1133, i64 %t1120
  call void @olang_textcopy(ptr %t1135, ptr %t1122, i64 %t1123)
  %t1136 = getelementptr i8, ptr %t1135, i64 %t1123
  call void @olang_textcopy(ptr %t1136, ptr %t1126, i64 %t1127)
  %t1137 = getelementptr i8, ptr %t1136, i64 %t1127
  call void @olang_textcopy(ptr %t1137, ptr %t1129, i64 %t1130)
  %t1138 = insertvalue { i64, ptr } undef, i64 %t1131, 0
  %t1139 = insertvalue { i64, ptr } %t1138, ptr %t1132, 1
  store { i64, ptr } %t1139, ptr %l39, !tbaa !27
  call void @__olang_scope_close(ptr %s41)
  br label %bb150
bb149:
  call void @__olang_check_failed(ptr @olang_loc_a387a9465b9f2118_49b9af8105801174)
  unreachable
bb150:
  call void @__olang_scope_close(ptr %s0)
  %t1141 = load { i64, ptr }, ptr %l39, !tbaa !27
  store { i64, ptr } %t1141, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexprs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca %"std/prelude/text:StringBuilder"
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca i64
  %l6 = alloca i64
  %l7 = alloca i64
  %l8 = alloca i64
  %l9 = alloca %"std/prelude/text:StringBuilder"
  %l15 = alloca i64
  %l18 = alloca i64
  %l39 = alloca ptr
  %l41 = alloca { i64, ptr }
  %l45 = alloca { i64, ptr }
  %l50 = alloca { i64, ptr }
  %s0 = alloca %olang.scope
  %s2 = alloca %olang.scope
  %rv = alloca { i64, ptr }
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store %olang.scope zeroinitializer, ptr %s0
  %t1 = call %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %s0)
  store %"std/prelude/text:StringBuilder" %t1, ptr %l9
  br label %bb1
bb1:
  %t2 = load %"std/prelude/text:StringBuilder", ptr %l9
  store %"std/prelude/text:StringBuilder" %t2, ptr %l2
  store i64 0, ptr %l3, !tbaa !24
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t5 = extractvalue { i64, ptr } %t3, 0
  store i64 %t5, ptr %l4, !tbaa !24
  store i64 1, ptr %l5, !tbaa !24
  %t7 = load i64, ptr %l4, !tbaa !24
  %t8 = load i64, ptr %l3, !tbaa !24
  %t11 = icmp sgt i64 %t7, %t8
  br i1 %t11, label %bb2, label %bb3
bb2:
  %t13 = load i64, ptr %l5, !tbaa !24
  %t15 = icmp sgt i64 %t13, 0
  br i1 %t15, label %bb4, label %bb5
bb3:
  store i64 0, ptr %l15, !tbaa !24
  br label %bb7
bb4:
  %t17 = load i64, ptr %l4, !tbaa !24
  %t18 = load i64, ptr %l3, !tbaa !24
  %t21 = sub i64 %t17, %t18
  %t22 = load i64, ptr %l5, !tbaa !24
  %t25 = add i64 %t21, %t22
  %t27 = sub i64 %t25, 1
  %t28 = load i64, ptr %l5, !tbaa !24
  %t31 = sdiv i64 %t27, %t28
  store i64 %t31, ptr %l18, !tbaa !24
  br label %bb6
bb5:
  store i64 0, ptr %l18, !tbaa !24
  br label %bb6
bb6:
  %t33 = load i64, ptr %l18, !tbaa !24
  store i64 %t33, ptr %l15, !tbaa !24
  br label %bb7
bb7:
  %t34 = load i64, ptr %l15, !tbaa !24
  store i64 %t34, ptr %l6, !tbaa !24
  store i64 0, ptr %l7, !tbaa !24
  br label %bb8
bb8:
  store %olang.scope zeroinitializer, ptr %s2
  %t35 = load i64, ptr %l7, !tbaa !24
  %t36 = load i64, ptr %l6, !tbaa !24
  %t39 = icmp slt i64 %t35, %t36
  %t41 = xor i1 %t39, true
  br i1 %t41, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s2)
  br label %bb19
bb10:
  br label %bb11
bb11:
  %t43 = load i64, ptr %l3, !tbaa !24
  %t44 = load i64, ptr %l7, !tbaa !24
  %t45 = load i64, ptr %l5, !tbaa !24
  %t48 = mul i64 %t44, %t45
  %t51 = add i64 %t43, %t48
  store i64 %t51, ptr %l8, !tbaa !24
  %t53 = load i64, ptr %l8, !tbaa !24
  %t55 = icmp sgt i64 %t53, 0
  br i1 %t55, label %bb12, label %bb13
bb12:
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %s0, ptr %l2, i8 32)
  br label %bb14
bb13:
  br label %bb15
bb14:
  br label %bb15
bb15:
  store ptr %l2, ptr %l39, !tbaa !29
  %t59 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t59, ptr %l41, !tbaa !27
  %t60 = load i64, ptr %l8, !tbaa !24
  %t62 = getelementptr { i64, ptr }, ptr %l41, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 %t60
  %t65 = load ptr, ptr %t64, !tbaa !39
  %t69 = call { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eexpr(ptr %v0, ptr %v1, ptr %s2, ptr %v3, ptr %a0, ptr %t65)
  store { i64, ptr } %t69, ptr %l45
  br label %bb16
bb16:
  %t70 = load { i64, ptr }, ptr %l45, !tbaa !27
  %t71 = extractvalue { i64, ptr } %t70, 0
  %t72 = extractvalue { i64, ptr } %t70, 1
  %t73 = mul i64 %t71, 1
  %t74 = call ptr @__olang_scope_alloc(ptr %s2, i64 %t73)
  call void @llvm.memcpy.p0.p0.i64(ptr %t74, ptr %t72, i64 %t73, i1 false)
  %t75 = insertvalue { i64, ptr } undef, i64 %t71, 0
  %t76 = insertvalue { i64, ptr } %t75, ptr %t74, 1
  %t77 = load ptr, ptr %l39, !tbaa !29
  call void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %s0, ptr %s2, ptr %t77, { i64, ptr } %t76)
  br label %bb17
bb17:
  call void @__olang_scope_close(ptr %s2)
  br label %bb18
bb18:
  %t79 = load i64, ptr %l7, !tbaa !24
  %t81 = add i64 %t79, 1
  store i64 %t81, ptr %l7, !tbaa !24
  br label %bb8
bb19:
  %t84 = call { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %s0, ptr %v2, ptr %l2)
  store { i64, ptr } %t84, ptr %l50
  br label %bb20
bb20:
  call void @__olang_scope_close(ptr %s0)
  %t85 = load { i64, ptr }, ptr %l50, !tbaa !27
  store { i64, ptr } %t85, ptr %rv
  br label %ret
ret:
  %rr = load { i64, ptr }, ptr %rv
  ret { i64, ptr } %rr
}

define dso_local ptr @compiler_2ftyped_2ecopied(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1) #0 {
entry:
  %l1 = alloca ptr
  %l2 = alloca i32
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca i1
  %l16 = alloca i1
  %l21 = alloca i1
  %l22 = alloca ptr
  %l24 = alloca { i64, ptr }
  %l26 = alloca i32
  %l28 = alloca i1
  %l29 = alloca ptr
  %l31 = alloca { i64, ptr }
  %l34 = alloca ptr
  %l35 = alloca i1
  %l38 = alloca ptr
  %l39 = alloca i1
  %rv = alloca ptr
  store ptr %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  store ptr %t1, ptr %l5, !tbaa !29
  store i1 false, ptr %l6, !tbaa !21
  %t2 = load ptr, ptr %l5, !tbaa !29
  %t3 = icmp ne ptr %t2, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  %t5 = load ptr, ptr %l5, !tbaa !29
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l6, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l6, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l1, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 1
  %t14 = load i32, ptr %t13
  store i32 %t14, ptr %l2, !tbaa !23
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr { i64, [5 x i64] }, ptr %t16, i32 0, i32 1
  %t19 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t18, i32 0, i32 2
  %t20 = load ptr, ptr %t19
  store ptr %t20, ptr %l3, !tbaa !29
  br label %bb5
bb4:
  br label %bb17
bb5:
  %t22 = load ptr, ptr %l3, !tbaa !29
  %t24 = getelementptr %"compiler/typed:Make", ptr %t22, i32 0, i32 0
  %t25 = load i32, ptr %t24, !range !{i32 0, i32 5}
  %t27 = trunc i64 4 to i32
  %t28 = icmp eq i32 %t25, %t27
  br i1 %t28, label %bb6, label %bb7
bb6:
  %t30 = load ptr, ptr %l3, !tbaa !29
  %t32 = getelementptr %"compiler/typed:Make", ptr %t30, i32 0, i32 2
  %t33 = load { i64, ptr }, ptr %t32, !tbaa !27
  %t35 = extractvalue { i64, ptr } %t33, 0
  %t37 = icmp eq i64 %t35, 1
  store i1 %t37, ptr %l16, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l16, !tbaa !21
  br label %bb8
bb8:
  %t39 = load i1, ptr %l16, !tbaa !21
  br i1 %t39, label %bb9, label %bb10
bb9:
  store ptr %a0, ptr %l22, !tbaa !29
  %t41 = load ptr, ptr %l3, !tbaa !29
  %t43 = getelementptr %"compiler/typed:Make", ptr %t41, i32 0, i32 2
  %t44 = load { i64, ptr }, ptr %t43, !tbaa !27
  store { i64, ptr } %t44, ptr %l24, !tbaa !27
  %t45 = getelementptr { i64, ptr }, ptr %l24, i32 0, i32 1
  %t46 = load ptr, ptr %t45, !tbaa !27
  %t47 = getelementptr ptr, ptr %t46, i64 0
  %t48 = load ptr, ptr %t47, !tbaa !39
  %t50 = call i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v1, ptr %t48)
  store i32 %t50, ptr %l26
  br label %bb11
bb10:
  store i1 false, ptr %l21, !tbaa !21
  br label %bb13
bb11:
  %t51 = load i32, ptr %l2, !tbaa !23
  %t52 = load ptr, ptr %l22, !tbaa !29
  %t53 = load i32, ptr %l26, !tbaa !23
  %t55 = call i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %t52, i32 %t53, i32 %t51)
  store i1 %t55, ptr %l28
  br label %bb12
bb12:
  %t56 = load i1, ptr %l28, !tbaa !21
  store i1 %t56, ptr %l21, !tbaa !21
  br label %bb13
bb13:
  %t57 = load i1, ptr %l21, !tbaa !21
  br i1 %t57, label %bb14, label %bb15
bb14:
  %t58 = load ptr, ptr %l3, !tbaa !29
  %t60 = getelementptr %"compiler/typed:Make", ptr %t58, i32 0, i32 2
  %t61 = load { i64, ptr }, ptr %t60, !tbaa !27
  store { i64, ptr } %t61, ptr %l31, !tbaa !27
  %t62 = getelementptr { i64, ptr }, ptr %l31, i32 0, i32 1
  %t63 = load ptr, ptr %t62, !tbaa !27
  %t64 = getelementptr ptr, ptr %t63, i64 0
  %t65 = load ptr, ptr %t64, !tbaa !39
  store ptr %t65, ptr %l29, !tbaa !29
  br label %bb16
bb15:
  store ptr null, ptr %l29, !tbaa !29
  br label %bb16
bb16:
  %t68 = load ptr, ptr %l29, !tbaa !29
  store ptr %t68, ptr %l4, !tbaa !29
  br label %bb32
bb17:
  %t69 = load ptr, ptr %l1, !tbaa !29
  store ptr %t69, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t70 = load ptr, ptr %l34, !tbaa !29
  %t71 = icmp ne ptr %t70, null
  br i1 %t71, label %bb18, label %bb19
bb18:
  %t73 = load ptr, ptr %l34, !tbaa !29
  %t74 = load i64, ptr %t73, !range !{i64 0, i64 18}
  %t76 = icmp eq i64 %t74, 2
  store i1 %t76, ptr %l35, !tbaa !21
  br label %bb19
bb19:
  %t77 = load i1, ptr %l35, !tbaa !21
  br i1 %t77, label %bb20, label %bb21
bb20:
  br label %bb26
bb21:
  %t78 = load ptr, ptr %l1, !tbaa !29
  store ptr %t78, ptr %l38, !tbaa !29
  store i1 false, ptr %l39, !tbaa !21
  %t79 = load ptr, ptr %l38, !tbaa !29
  %t80 = icmp ne ptr %t79, null
  br i1 %t80, label %bb22, label %bb23
bb22:
  %t82 = load ptr, ptr %l38, !tbaa !29
  %t83 = load i64, ptr %t82, !range !{i64 0, i64 18}
  %t85 = icmp eq i64 %t83, 10
  store i1 %t85, ptr %l39, !tbaa !21
  br label %bb23
bb23:
  %t86 = load i1, ptr %l39, !tbaa !21
  br i1 %t86, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  %t87 = load ptr, ptr %l1, !tbaa !29
  store ptr %t87, ptr %l4, !tbaa !29
  br label %bb32
bb27:
  br i1 true, label %bb28, label %bb29
bb28:
  br label %bb30
bb29:
  br label %bb31
bb30:
  store ptr null, ptr %l4, !tbaa !29
  br label %bb32
bb31:
  call void @__olang_check_failed(ptr @olang_loc_8a62bacdff20949b_383b5959755ced57)
  unreachable
bb32:
  %t90 = load ptr, ptr %l4, !tbaa !29
  store ptr %t90, ptr %rv
  br label %ret
ret:
  %rr = load ptr, ptr %rv
  ret ptr %rr
}

define dso_local i64 @compiler_2ftyped_2ecopySite(ptr %v0, ptr %a0) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
  %l3 = alloca i64
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %l18 = alloca i1
  %l20 = alloca { i64, ptr }
  %l22 = alloca i64
  %l24 = alloca i64
  %l28 = alloca ptr
  %l29 = alloca i1
  %l35 = alloca i64
  %rv = alloca i64
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 18}
  %t8 = icmp eq i64 %t6, 7
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [5 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t12, i32 0, i32 2
  %t14 = load ptr, ptr %t13
  store ptr %t14, ptr %l1, !tbaa !29
  br label %bb5
bb4:
  br label %bb16
bb5:
  %t16 = load ptr, ptr %l1, !tbaa !29
  %t18 = getelementptr %"compiler/typed:Make", ptr %t16, i32 0, i32 0
  %t19 = load i32, ptr %t18, !range !{i32 0, i32 5}
  %t21 = trunc i64 4 to i32
  %t22 = icmp eq i32 %t19, %t21
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = load ptr, ptr %l1, !tbaa !29
  %t26 = getelementptr %"compiler/typed:Make", ptr %t24, i32 0, i32 2
  %t27 = load { i64, ptr }, ptr %t26, !tbaa !27
  %t29 = extractvalue { i64, ptr } %t27, 0
  %t31 = icmp eq i64 %t29, 1
  store i1 %t31, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t33 = load i1, ptr %l13, !tbaa !21
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t34 = load ptr, ptr %l1, !tbaa !29
  %t36 = getelementptr %"compiler/typed:Make", ptr %t34, i32 0, i32 2
  %t37 = load { i64, ptr }, ptr %t36, !tbaa !27
  store { i64, ptr } %t37, ptr %l20, !tbaa !27
  %t38 = getelementptr { i64, ptr }, ptr %l20, i32 0, i32 1
  %t39 = load ptr, ptr %t38, !tbaa !27
  %t40 = getelementptr ptr, ptr %t39, i64 0
  %t41 = load ptr, ptr %t40, !tbaa !39
  %t43 = call i64 @compiler_2ftyped_2ewholeLocal(ptr %v0, ptr %t41)
  store i64 %t43, ptr %l22
  br label %bb11
bb10:
  store i1 false, ptr %l18, !tbaa !21
  br label %bb12
bb11:
  %t44 = load i64, ptr %l22, !tbaa !24
  %t45 = icmp sge i64 %t44, 0
  store i1 %t45, ptr %l18, !tbaa !21
  br label %bb12
bb12:
  %t47 = load i1, ptr %l18, !tbaa !21
  br i1 %t47, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l1, !tbaa !29
  %t50 = getelementptr %"compiler/typed:Make", ptr %t48, i32 0, i32 4
  %t51 = load i32, ptr %t50, !tbaa !23
  %t53 = sext i32 %t51 to i64
  store i64 %t53, ptr %l24, !tbaa !24
  br label %bb15
bb14:
  store i64 -1, ptr %l24, !tbaa !24
  br label %bb15
bb15:
  %t55 = load i64, ptr %l24, !tbaa !24
  store i64 %t55, ptr %l3, !tbaa !24
  br label %bb28
bb16:
  %t56 = load ptr, ptr %l0, !tbaa !29
  store ptr %t56, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t57 = load ptr, ptr %l28, !tbaa !29
  %t58 = icmp ne ptr %t57, null
  br i1 %t58, label %bb17, label %bb18
bb17:
  %t60 = load ptr, ptr %l28, !tbaa !29
  %t61 = load i64, ptr %t60, !range !{i64 0, i64 18}
  %t63 = icmp eq i64 %t61, 17
  store i1 %t63, ptr %l29, !tbaa !21
  br label %bb18
bb18:
  %t64 = load i1, ptr %l29, !tbaa !21
  br i1 %t64, label %bb19, label %bb20
bb19:
  %t65 = load ptr, ptr %l0, !tbaa !29
  %t67 = getelementptr { i64, [5 x i64] }, ptr %t65, i32 0, i32 1
  %t68 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t67, i32 0, i32 2
  %t69 = load ptr, ptr %t68
  store ptr %t69, ptr %l2, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t71 = load ptr, ptr %l2, !tbaa !29
  %t73 = call i64 @compiler_2ftyped_2ecopySite(ptr %v0, ptr %t71)
  store i64 %t73, ptr %l35
  br label %bb22
bb22:
  %t74 = load i64, ptr %l35, !tbaa !24
  store i64 %t74, ptr %l3, !tbaa !24
  br label %bb28
bb23:
  br i1 true, label %bb24, label %bb25
bb24:
  br label %bb26
bb25:
  br label %bb27
bb26:
  store i64 -1, ptr %l3, !tbaa !24
  br label %bb28
bb27:
  call void @__olang_check_failed(ptr @olang_loc_c89b2ac703a55b51_f16b1206186d62d)
  unreachable
bb28:
  %t75 = load i64, ptr %l3, !tbaa !24
  store i64 %t75, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %a0, i32 %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca i32
  %l2 = alloca ptr
  %l3 = alloca ptr
  %l4 = alloca ptr
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca { i64, ptr }
  %l8 = alloca ptr
  %l9 = alloca ptr
  %l10 = alloca ptr
  %l11 = alloca ptr
  %l12 = alloca ptr
  %l13 = alloca ptr
  %l14 = alloca ptr
  %l15 = alloca ptr
  %l19 = alloca i1
  %l20 = alloca ptr
  %l21 = alloca i1
  %l24 = alloca ptr
  %l25 = alloca i1
  %l28 = alloca ptr
  %l29 = alloca i1
  %l34 = alloca ptr
  %l35 = alloca i1
  %l40 = alloca ptr
  %l41 = alloca i1
  %l48 = alloca i1
  %l49 = alloca ptr
  %l50 = alloca i1
  %l59 = alloca i1
  %l60 = alloca ptr
  %l61 = alloca i1
  %l69 = alloca i1
  %l70 = alloca i1
  %l74 = alloca i1
  %l75 = alloca ptr
  %l76 = alloca i1
  %l84 = alloca i1
  %l85 = alloca i1
  %l89 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  %l99 = alloca i1
  %l100 = alloca i1
  %l105 = alloca i1
  %l106 = alloca ptr
  %l107 = alloca i1
  %l114 = alloca i1
  %l115 = alloca ptr
  %l116 = alloca i1
  %l124 = alloca i1
  %l125 = alloca i1
  %l130 = alloca i1
  %l131 = alloca i1
  %l136 = alloca i1
  %l137 = alloca ptr
  %l138 = alloca i1
  %l147 = alloca i1
  %l148 = alloca i1
  %l152 = alloca i1
  %l153 = alloca i1
  %l158 = alloca i1
  %l159 = alloca ptr
  %l160 = alloca i1
  %l168 = alloca i1
  %l169 = alloca i1
  %l173 = alloca i1
  %l174 = alloca ptr
  %l175 = alloca i1
  %l183 = alloca i1
  %l184 = alloca i1
  %l188 = alloca i1
  %l189 = alloca i1
  %l194 = alloca i1
  %l201 = alloca i1
  %l202 = alloca ptr
  %l203 = alloca i1
  %l211 = alloca i1
  %l212 = alloca i1
  %l216 = alloca i1
  %l217 = alloca ptr
  %l218 = alloca i1
  %l225 = alloca i1
  %l226 = alloca ptr
  %l227 = alloca i1
  %l235 = alloca i1
  %l236 = alloca ptr
  %l237 = alloca i1
  %l245 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store i32 %a1, ptr %l1
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
  store ptr %t6, ptr %l20, !tbaa !29
  store i1 false, ptr %l21, !tbaa !21
  %t7 = load ptr, ptr %l20, !tbaa !29
  %t8 = icmp ne ptr %t7, null
  br i1 %t8, label %bb4, label %bb5
bb4:
  %t10 = load ptr, ptr %l20, !tbaa !29
  %t11 = load i64, ptr %t10, !range !{i64 0, i64 18}
  %t13 = icmp eq i64 %t11, 0
  store i1 %t13, ptr %l21, !tbaa !21
  br label %bb5
bb5:
  %t14 = load i1, ptr %l21, !tbaa !21
  br i1 %t14, label %bb6, label %bb7
bb6:
  br label %bb12
bb7:
  %t15 = load ptr, ptr %l0, !tbaa !29
  store ptr %t15, ptr %l24, !tbaa !29
  store i1 false, ptr %l25, !tbaa !21
  %t16 = load ptr, ptr %l24, !tbaa !29
  %t17 = icmp ne ptr %t16, null
  br i1 %t17, label %bb8, label %bb9
bb8:
  %t19 = load ptr, ptr %l24, !tbaa !29
  %t20 = load i64, ptr %t19, !range !{i64 0, i64 18}
  %t22 = icmp eq i64 %t20, 1
  store i1 %t22, ptr %l25, !tbaa !21
  br label %bb9
bb9:
  %t23 = load i1, ptr %l25, !tbaa !21
  br i1 %t23, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l19, !tbaa !21
  br label %bb170
bb13:
  %t24 = load ptr, ptr %l0, !tbaa !29
  store ptr %t24, ptr %l28, !tbaa !29
  store i1 false, ptr %l29, !tbaa !21
  %t25 = load ptr, ptr %l28, !tbaa !29
  %t26 = icmp ne ptr %t25, null
  br i1 %t26, label %bb14, label %bb15
bb14:
  %t28 = load ptr, ptr %l28, !tbaa !29
  %t29 = load i64, ptr %t28, !range !{i64 0, i64 18}
  %t31 = icmp eq i64 %t29, 2
  store i1 %t31, ptr %l29, !tbaa !21
  br label %bb15
bb15:
  %t32 = load i1, ptr %l29, !tbaa !21
  br i1 %t32, label %bb16, label %bb17
bb16:
  %t33 = load ptr, ptr %l0, !tbaa !29
  %t35 = getelementptr { i64, [5 x i64] }, ptr %t33, i32 0, i32 1
  %t36 = getelementptr { %"compiler/source:Span", i32, ptr, i32 }, ptr %t35, i32 0, i32 2
  %t37 = load ptr, ptr %t36
  store ptr %t37, ptr %l2, !tbaa !29
  br label %bb26
bb17:
  %t39 = load ptr, ptr %l0, !tbaa !29
  store ptr %t39, ptr %l34, !tbaa !29
  store i1 false, ptr %l35, !tbaa !21
  %t40 = load ptr, ptr %l34, !tbaa !29
  %t41 = icmp ne ptr %t40, null
  br i1 %t41, label %bb18, label %bb19
bb18:
  %t43 = load ptr, ptr %l34, !tbaa !29
  %t44 = load i64, ptr %t43, !range !{i64 0, i64 18}
  %t46 = icmp eq i64 %t44, 3
  store i1 %t46, ptr %l35, !tbaa !21
  br label %bb19
bb19:
  %t47 = load i1, ptr %l35, !tbaa !21
  br i1 %t47, label %bb20, label %bb21
bb20:
  %t48 = load ptr, ptr %l0, !tbaa !29
  %t50 = getelementptr { i64, [5 x i64] }, ptr %t48, i32 0, i32 1
  %t51 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t50, i32 0, i32 2
  %t52 = load ptr, ptr %t51
  store ptr %t52, ptr %l2, !tbaa !29
  br label %bb26
bb21:
  %t54 = load ptr, ptr %l0, !tbaa !29
  store ptr %t54, ptr %l40, !tbaa !29
  store i1 false, ptr %l41, !tbaa !21
  %t55 = load ptr, ptr %l40, !tbaa !29
  %t56 = icmp ne ptr %t55, null
  br i1 %t56, label %bb22, label %bb23
bb22:
  %t58 = load ptr, ptr %l40, !tbaa !29
  %t59 = load i64, ptr %t58, !range !{i64 0, i64 18}
  %t61 = icmp eq i64 %t59, 4
  store i1 %t61, ptr %l41, !tbaa !21
  br label %bb23
bb23:
  %t62 = load i1, ptr %l41, !tbaa !21
  br i1 %t62, label %bb24, label %bb25
bb24:
  %t63 = load ptr, ptr %l0, !tbaa !29
  %t65 = getelementptr { i64, [5 x i64] }, ptr %t63, i32 0, i32 1
  %t66 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t65, i32 0, i32 2
  %t67 = load ptr, ptr %t66
  store ptr %t67, ptr %l2, !tbaa !29
  br label %bb26
bb25:
  br label %bb28
bb26:
  %t69 = load ptr, ptr %l2, !tbaa !29
  %t70 = load i32, ptr %l1, !tbaa !23
  %t73 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t69, i32 %t70)
  store i1 %t73, ptr %l48
  br label %bb27
bb27:
  %t74 = load i1, ptr %l48, !tbaa !21
  store i1 %t74, ptr %l19, !tbaa !21
  br label %bb170
bb28:
  %t75 = load ptr, ptr %l0, !tbaa !29
  store ptr %t75, ptr %l49, !tbaa !29
  store i1 false, ptr %l50, !tbaa !21
  %t76 = load ptr, ptr %l49, !tbaa !29
  %t77 = icmp ne ptr %t76, null
  br i1 %t77, label %bb29, label %bb30
bb29:
  %t79 = load ptr, ptr %l49, !tbaa !29
  %t80 = load i64, ptr %t79, !range !{i64 0, i64 18}
  %t82 = icmp eq i64 %t80, 5
  store i1 %t82, ptr %l50, !tbaa !21
  br label %bb30
bb30:
  %t83 = load i1, ptr %l50, !tbaa !21
  br i1 %t83, label %bb31, label %bb32
bb31:
  %t84 = load ptr, ptr %l0, !tbaa !29
  %t86 = getelementptr { i64, [5 x i64] }, ptr %t84, i32 0, i32 1
  %t87 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t86, i32 0, i32 2
  %t88 = load ptr, ptr %t87
  store ptr %t88, ptr %l3, !tbaa !29
  br label %bb33
bb32:
  br label %bb35
bb33:
  %t90 = load ptr, ptr %l3, !tbaa !29
  %t92 = getelementptr %"compiler/typed:Promote", ptr %t90, i32 0, i32 0
  %t93 = load ptr, ptr %t92, !tbaa !29
  %t95 = load i32, ptr %l1, !tbaa !23
  %t98 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t93, i32 %t95)
  store i1 %t98, ptr %l59
  br label %bb34
bb34:
  %t99 = load i1, ptr %l59, !tbaa !21
  store i1 %t99, ptr %l19, !tbaa !21
  br label %bb170
bb35:
  %t100 = load ptr, ptr %l0, !tbaa !29
  store ptr %t100, ptr %l60, !tbaa !29
  store i1 false, ptr %l61, !tbaa !21
  %t101 = load ptr, ptr %l60, !tbaa !29
  %t102 = icmp ne ptr %t101, null
  br i1 %t102, label %bb36, label %bb37
bb36:
  %t104 = load ptr, ptr %l60, !tbaa !29
  %t105 = load i64, ptr %t104, !range !{i64 0, i64 18}
  %t107 = icmp eq i64 %t105, 6
  store i1 %t107, ptr %l61, !tbaa !21
  br label %bb37
bb37:
  %t108 = load i1, ptr %l61, !tbaa !21
  br i1 %t108, label %bb38, label %bb39
bb38:
  %t109 = load ptr, ptr %l0, !tbaa !29
  %t111 = getelementptr { i64, [5 x i64] }, ptr %t109, i32 0, i32 1
  %t112 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t111, i32 0, i32 2
  %t113 = load ptr, ptr %t112
  store ptr %t113, ptr %l4, !tbaa !29
  br label %bb40
bb39:
  br label %bb46
bb40:
  %t115 = load ptr, ptr %l4, !tbaa !29
  %t117 = getelementptr %"compiler/typed:Call", ptr %t115, i32 0, i32 0
  %t118 = load ptr, ptr %t117, !tbaa !29
  %t119 = load i32, ptr %l1, !tbaa !23
  %t122 = call i1 @compiler_2ftyped_2ecalleeBreaks(ptr %v0, ptr %t118, i32 %t119)
  store i1 %t122, ptr %l69
  br label %bb41
bb41:
  %t123 = load i1, ptr %l69, !tbaa !21
  br i1 %t123, label %bb42, label %bb43
bb42:
  store i1 true, ptr %l70, !tbaa !21
  br label %bb45
bb43:
  %t124 = load ptr, ptr %l4, !tbaa !29
  %t126 = getelementptr %"compiler/typed:Call", ptr %t124, i32 0, i32 1
  %t127 = load { i64, ptr }, ptr %t126, !tbaa !27
  %t128 = load i32, ptr %l1, !tbaa !23
  %t131 = call i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %t127, i32 %t128)
  store i1 %t131, ptr %l74
  br label %bb44
bb44:
  %t132 = load i1, ptr %l74, !tbaa !21
  store i1 %t132, ptr %l70, !tbaa !21
  br label %bb45
bb45:
  %t133 = load i1, ptr %l70, !tbaa !21
  store i1 %t133, ptr %l19, !tbaa !21
  br label %bb170
bb46:
  %t134 = load ptr, ptr %l0, !tbaa !29
  store ptr %t134, ptr %l75, !tbaa !29
  store i1 false, ptr %l76, !tbaa !21
  %t135 = load ptr, ptr %l75, !tbaa !29
  %t136 = icmp ne ptr %t135, null
  br i1 %t136, label %bb47, label %bb48
bb47:
  %t138 = load ptr, ptr %l75, !tbaa !29
  %t139 = load i64, ptr %t138, !range !{i64 0, i64 18}
  %t141 = icmp eq i64 %t139, 7
  store i1 %t141, ptr %l76, !tbaa !21
  br label %bb48
bb48:
  %t142 = load i1, ptr %l76, !tbaa !21
  br i1 %t142, label %bb49, label %bb50
bb49:
  %t143 = load ptr, ptr %l0, !tbaa !29
  %t145 = getelementptr { i64, [5 x i64] }, ptr %t143, i32 0, i32 1
  %t146 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t145, i32 0, i32 2
  %t147 = load ptr, ptr %t146
  store ptr %t147, ptr %l5, !tbaa !29
  br label %bb51
bb50:
  br label %bb57
bb51:
  %t149 = load ptr, ptr %l5, !tbaa !29
  %t151 = getelementptr %"compiler/typed:Make", ptr %t149, i32 0, i32 2
  %t152 = load { i64, ptr }, ptr %t151, !tbaa !27
  %t153 = load i32, ptr %l1, !tbaa !23
  %t156 = call i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %t152, i32 %t153)
  store i1 %t156, ptr %l84
  br label %bb52
bb52:
  %t157 = load i1, ptr %l84, !tbaa !21
  br i1 %t157, label %bb53, label %bb54
bb53:
  store i1 true, ptr %l85, !tbaa !21
  br label %bb56
bb54:
  %t158 = load ptr, ptr %l5, !tbaa !29
  %t160 = getelementptr %"compiler/typed:Make", ptr %t158, i32 0, i32 3
  %t161 = load ptr, ptr %t160, !tbaa !29
  %t162 = load i32, ptr %l1, !tbaa !23
  %t165 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t161, i32 %t162)
  store i1 %t165, ptr %l89
  br label %bb55
bb55:
  %t166 = load i1, ptr %l89, !tbaa !21
  store i1 %t166, ptr %l85, !tbaa !21
  br label %bb56
bb56:
  %t167 = load i1, ptr %l85, !tbaa !21
  store i1 %t167, ptr %l19, !tbaa !21
  br label %bb170
bb57:
  %t168 = load ptr, ptr %l0, !tbaa !29
  store ptr %t168, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t169 = load ptr, ptr %l90, !tbaa !29
  %t170 = icmp ne ptr %t169, null
  br i1 %t170, label %bb58, label %bb59
bb58:
  %t172 = load ptr, ptr %l90, !tbaa !29
  %t173 = load i64, ptr %t172, !range !{i64 0, i64 18}
  %t175 = icmp eq i64 %t173, 8
  store i1 %t175, ptr %l91, !tbaa !21
  br label %bb59
bb59:
  %t176 = load i1, ptr %l91, !tbaa !21
  br i1 %t176, label %bb60, label %bb61
bb60:
  %t177 = load ptr, ptr %l0, !tbaa !29
  %t179 = getelementptr { i64, [5 x i64] }, ptr %t177, i32 0, i32 1
  %t180 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t179, i32 0, i32 2
  %t181 = load ptr, ptr %t180
  store ptr %t181, ptr %l6, !tbaa !29
  br label %bb62
bb61:
  br label %bb68
bb62:
  %t183 = load ptr, ptr %l6, !tbaa !29
  %t185 = getelementptr %"compiler/typed:Collect", ptr %t183, i32 0, i32 0
  %t186 = load ptr, ptr %t185, !tbaa !29
  %t187 = load i32, ptr %l1, !tbaa !23
  %t190 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t186, i32 %t187)
  store i1 %t190, ptr %l99
  br label %bb63
bb63:
  %t191 = load i1, ptr %l99, !tbaa !21
  br i1 %t191, label %bb64, label %bb65
bb64:
  store i1 true, ptr %l100, !tbaa !21
  br label %bb67
bb65:
  %t192 = load ptr, ptr %l6, !tbaa !29
  %t194 = getelementptr %"compiler/typed:Collect", ptr %t192, i32 0, i32 1
  %t195 = load ptr, ptr %t194, !tbaa !29
  %t197 = load i32, ptr %l1, !tbaa !23
  %t200 = call i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %t195, i32 %t197)
  store i1 %t200, ptr %l105
  br label %bb66
bb66:
  %t201 = load i1, ptr %l105, !tbaa !21
  store i1 %t201, ptr %l100, !tbaa !21
  br label %bb67
bb67:
  %t202 = load i1, ptr %l100, !tbaa !21
  store i1 %t202, ptr %l19, !tbaa !21
  br label %bb170
bb68:
  %t203 = load ptr, ptr %l0, !tbaa !29
  store ptr %t203, ptr %l106, !tbaa !29
  store i1 false, ptr %l107, !tbaa !21
  %t204 = load ptr, ptr %l106, !tbaa !29
  %t205 = icmp ne ptr %t204, null
  br i1 %t205, label %bb69, label %bb70
bb69:
  %t207 = load ptr, ptr %l106, !tbaa !29
  %t208 = load i64, ptr %t207, !range !{i64 0, i64 18}
  %t210 = icmp eq i64 %t208, 9
  store i1 %t210, ptr %l107, !tbaa !21
  br label %bb70
bb70:
  %t211 = load i1, ptr %l107, !tbaa !21
  br i1 %t211, label %bb71, label %bb72
bb71:
  %t212 = load ptr, ptr %l0, !tbaa !29
  %t214 = getelementptr { i64, [5 x i64] }, ptr %t212, i32 0, i32 1
  %t215 = getelementptr { %"compiler/source:Span", i32, i32, i32, { i64, ptr } }, ptr %t214, i32 0, i32 4
  %t216 = load { i64, ptr }, ptr %t215
  store { i64, ptr } %t216, ptr %l7, !tbaa !27
  br label %bb73
bb72:
  br label %bb75
bb73:
  %t218 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t219 = load i32, ptr %l1, !tbaa !23
  %t222 = call i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %t218, i32 %t219)
  store i1 %t222, ptr %l114
  br label %bb74
bb74:
  %t223 = load i1, ptr %l114, !tbaa !21
  store i1 %t223, ptr %l19, !tbaa !21
  br label %bb170
bb75:
  %t224 = load ptr, ptr %l0, !tbaa !29
  store ptr %t224, ptr %l115, !tbaa !29
  store i1 false, ptr %l116, !tbaa !21
  %t225 = load ptr, ptr %l115, !tbaa !29
  %t226 = icmp ne ptr %t225, null
  br i1 %t226, label %bb76, label %bb77
bb76:
  %t228 = load ptr, ptr %l115, !tbaa !29
  %t229 = load i64, ptr %t228, !range !{i64 0, i64 18}
  %t231 = icmp eq i64 %t229, 10
  store i1 %t231, ptr %l116, !tbaa !21
  br label %bb77
bb77:
  %t232 = load i1, ptr %l116, !tbaa !21
  br i1 %t232, label %bb78, label %bb79
bb78:
  %t233 = load ptr, ptr %l0, !tbaa !29
  %t235 = getelementptr { i64, [5 x i64] }, ptr %t233, i32 0, i32 1
  %t236 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t235, i32 0, i32 2
  %t237 = load ptr, ptr %t236
  store ptr %t237, ptr %l8, !tbaa !29
  br label %bb80
bb79:
  br label %bb90
bb80:
  %t239 = load ptr, ptr %l8, !tbaa !29
  %t241 = getelementptr %"compiler/typed:Slice", ptr %t239, i32 0, i32 0
  %t242 = load ptr, ptr %t241, !tbaa !29
  %t243 = load i32, ptr %l1, !tbaa !23
  %t246 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t242, i32 %t243)
  store i1 %t246, ptr %l124
  br label %bb81
bb81:
  %t247 = load i1, ptr %l124, !tbaa !21
  br i1 %t247, label %bb82, label %bb83
bb82:
  store i1 true, ptr %l125, !tbaa !21
  br label %bb85
bb83:
  %t248 = load ptr, ptr %l8, !tbaa !29
  %t250 = getelementptr %"compiler/typed:Slice", ptr %t248, i32 0, i32 1
  %t251 = load ptr, ptr %t250, !tbaa !29
  %t253 = load i32, ptr %l1, !tbaa !23
  %t256 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t251, i32 %t253)
  store i1 %t256, ptr %l130
  br label %bb84
bb84:
  %t257 = load i1, ptr %l130, !tbaa !21
  store i1 %t257, ptr %l125, !tbaa !21
  br label %bb85
bb85:
  %t258 = load i1, ptr %l125, !tbaa !21
  br i1 %t258, label %bb86, label %bb87
bb86:
  store i1 true, ptr %l131, !tbaa !21
  br label %bb89
bb87:
  %t259 = load ptr, ptr %l8, !tbaa !29
  %t261 = getelementptr %"compiler/typed:Slice", ptr %t259, i32 0, i32 2
  %t262 = load ptr, ptr %t261, !tbaa !29
  %t264 = load i32, ptr %l1, !tbaa !23
  %t267 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t262, i32 %t264)
  store i1 %t267, ptr %l136
  br label %bb88
bb88:
  %t268 = load i1, ptr %l136, !tbaa !21
  store i1 %t268, ptr %l131, !tbaa !21
  br label %bb89
bb89:
  %t269 = load i1, ptr %l131, !tbaa !21
  store i1 %t269, ptr %l19, !tbaa !21
  br label %bb170
bb90:
  %t270 = load ptr, ptr %l0, !tbaa !29
  store ptr %t270, ptr %l137, !tbaa !29
  store i1 false, ptr %l138, !tbaa !21
  %t271 = load ptr, ptr %l137, !tbaa !29
  %t272 = icmp ne ptr %t271, null
  br i1 %t272, label %bb91, label %bb92
bb91:
  %t274 = load ptr, ptr %l137, !tbaa !29
  %t275 = load i64, ptr %t274, !range !{i64 0, i64 18}
  %t277 = icmp eq i64 %t275, 11
  store i1 %t277, ptr %l138, !tbaa !21
  br label %bb92
bb92:
  %t278 = load i1, ptr %l138, !tbaa !21
  br i1 %t278, label %bb93, label %bb94
bb93:
  %t279 = load ptr, ptr %l0, !tbaa !29
  %t281 = getelementptr { i64, [5 x i64] }, ptr %t279, i32 0, i32 1
  %t282 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t281, i32 0, i32 2
  %t283 = load ptr, ptr %t282
  store ptr %t283, ptr %l9, !tbaa !29
  br label %bb95
bb94:
  br label %bb105
bb95:
  %t285 = load ptr, ptr %l9, !tbaa !29
  %t287 = getelementptr %"compiler/typed:Cond", ptr %t285, i32 0, i32 0
  %t288 = load ptr, ptr %t287, !tbaa !29
  %t290 = load i32, ptr %l1, !tbaa !23
  %t293 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t288, i32 %t290)
  store i1 %t293, ptr %l147
  br label %bb96
bb96:
  %t294 = load i1, ptr %l147, !tbaa !21
  br i1 %t294, label %bb97, label %bb98
bb97:
  store i1 true, ptr %l148, !tbaa !21
  br label %bb100
bb98:
  %t295 = load ptr, ptr %l9, !tbaa !29
  %t297 = getelementptr %"compiler/typed:Cond", ptr %t295, i32 0, i32 1
  %t298 = load ptr, ptr %t297, !tbaa !29
  %t299 = load i32, ptr %l1, !tbaa !23
  %t302 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t298, i32 %t299)
  store i1 %t302, ptr %l152
  br label %bb99
bb99:
  %t303 = load i1, ptr %l152, !tbaa !21
  store i1 %t303, ptr %l148, !tbaa !21
  br label %bb100
bb100:
  %t304 = load i1, ptr %l148, !tbaa !21
  br i1 %t304, label %bb101, label %bb102
bb101:
  store i1 true, ptr %l153, !tbaa !21
  br label %bb104
bb102:
  %t305 = load ptr, ptr %l9, !tbaa !29
  %t307 = getelementptr %"compiler/typed:Cond", ptr %t305, i32 0, i32 2
  %t308 = load ptr, ptr %t307, !tbaa !29
  %t310 = load i32, ptr %l1, !tbaa !23
  %t313 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t308, i32 %t310)
  store i1 %t313, ptr %l158
  br label %bb103
bb103:
  %t314 = load i1, ptr %l158, !tbaa !21
  store i1 %t314, ptr %l153, !tbaa !21
  br label %bb104
bb104:
  %t315 = load i1, ptr %l153, !tbaa !21
  store i1 %t315, ptr %l19, !tbaa !21
  br label %bb170
bb105:
  %t316 = load ptr, ptr %l0, !tbaa !29
  store ptr %t316, ptr %l159, !tbaa !29
  store i1 false, ptr %l160, !tbaa !21
  %t317 = load ptr, ptr %l159, !tbaa !29
  %t318 = icmp ne ptr %t317, null
  br i1 %t318, label %bb106, label %bb107
bb106:
  %t320 = load ptr, ptr %l159, !tbaa !29
  %t321 = load i64, ptr %t320, !range !{i64 0, i64 18}
  %t323 = icmp eq i64 %t321, 12
  store i1 %t323, ptr %l160, !tbaa !21
  br label %bb107
bb107:
  %t324 = load i1, ptr %l160, !tbaa !21
  br i1 %t324, label %bb108, label %bb109
bb108:
  %t325 = load ptr, ptr %l0, !tbaa !29
  %t327 = getelementptr { i64, [5 x i64] }, ptr %t325, i32 0, i32 1
  %t328 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t327, i32 0, i32 2
  %t329 = load ptr, ptr %t328
  store ptr %t329, ptr %l10, !tbaa !29
  br label %bb110
bb109:
  br label %bb116
bb110:
  %t331 = load ptr, ptr %l10, !tbaa !29
  %t333 = getelementptr %"compiler/typed:Seq", ptr %t331, i32 0, i32 0
  %t334 = load { i64, ptr }, ptr %t333, !tbaa !27
  %t335 = load i32, ptr %l1, !tbaa !23
  %t338 = call i1 @compiler_2ftyped_2estmtsBreak(ptr %v0, { i64, ptr } %t334, i32 %t335)
  store i1 %t338, ptr %l168
  br label %bb111
bb111:
  %t339 = load i1, ptr %l168, !tbaa !21
  br i1 %t339, label %bb112, label %bb113
bb112:
  store i1 true, ptr %l169, !tbaa !21
  br label %bb115
bb113:
  %t340 = load ptr, ptr %l10, !tbaa !29
  %t342 = getelementptr %"compiler/typed:Seq", ptr %t340, i32 0, i32 1
  %t343 = load ptr, ptr %t342, !tbaa !29
  %t344 = load i32, ptr %l1, !tbaa !23
  %t347 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t343, i32 %t344)
  store i1 %t347, ptr %l173
  br label %bb114
bb114:
  %t348 = load i1, ptr %l173, !tbaa !21
  store i1 %t348, ptr %l169, !tbaa !21
  br label %bb115
bb115:
  %t349 = load i1, ptr %l169, !tbaa !21
  store i1 %t349, ptr %l19, !tbaa !21
  br label %bb170
bb116:
  %t350 = load ptr, ptr %l0, !tbaa !29
  store ptr %t350, ptr %l174, !tbaa !29
  store i1 false, ptr %l175, !tbaa !21
  %t351 = load ptr, ptr %l174, !tbaa !29
  %t352 = icmp ne ptr %t351, null
  br i1 %t352, label %bb117, label %bb118
bb117:
  %t354 = load ptr, ptr %l174, !tbaa !29
  %t355 = load i64, ptr %t354, !range !{i64 0, i64 18}
  %t357 = icmp eq i64 %t355, 13
  store i1 %t357, ptr %l175, !tbaa !21
  br label %bb118
bb118:
  %t358 = load i1, ptr %l175, !tbaa !21
  br i1 %t358, label %bb119, label %bb120
bb119:
  %t359 = load ptr, ptr %l0, !tbaa !29
  %t361 = getelementptr { i64, [5 x i64] }, ptr %t359, i32 0, i32 1
  %t362 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t361, i32 0, i32 2
  %t363 = load ptr, ptr %t362
  store ptr %t363, ptr %l11, !tbaa !29
  br label %bb121
bb120:
  br label %bb137
bb121:
  %t365 = load ptr, ptr %l11, !tbaa !29
  %t367 = getelementptr %"compiler/typed:Match", ptr %t365, i32 0, i32 0
  %t368 = load { i64, ptr }, ptr %t367, !tbaa !27
  %t369 = load i32, ptr %l1, !tbaa !23
  %t372 = call i1 @compiler_2ftyped_2estmtsBreak(ptr %v0, { i64, ptr } %t368, i32 %t369)
  store i1 %t372, ptr %l183
  br label %bb122
bb122:
  %t373 = load i1, ptr %l183, !tbaa !21
  br i1 %t373, label %bb123, label %bb124
bb123:
  store i1 true, ptr %l184, !tbaa !21
  br label %bb126
bb124:
  %t374 = load ptr, ptr %l11, !tbaa !29
  %t376 = getelementptr %"compiler/typed:Match", ptr %t374, i32 0, i32 1
  %t377 = load { i64, ptr }, ptr %t376, !tbaa !27
  %t378 = load i32, ptr %l1, !tbaa !23
  %t381 = call i1 @compiler_2ftyped_2earmsBreak(ptr %v0, { i64, ptr } %t377, i32 %t378)
  store i1 %t381, ptr %l188
  br label %bb125
bb125:
  %t382 = load i1, ptr %l188, !tbaa !21
  store i1 %t382, ptr %l184, !tbaa !21
  br label %bb126
bb126:
  %t383 = load i1, ptr %l184, !tbaa !21
  br i1 %t383, label %bb127, label %bb128
bb127:
  store i1 true, ptr %l189, !tbaa !21
  br label %bb136
bb128:
  %t384 = load ptr, ptr %l11, !tbaa !29
  %t386 = getelementptr %"compiler/typed:Match", ptr %t384, i32 0, i32 2
  %t387 = load ptr, ptr %t386, !tbaa !29
  %t389 = icmp eq ptr %t387, null
  %t391 = xor i1 %t389, true
  br i1 %t391, label %bb129, label %bb130
bb129:
  %t393 = load ptr, ptr %l11, !tbaa !29
  %t395 = getelementptr %"compiler/typed:Match", ptr %t393, i32 0, i32 2
  %t396 = load ptr, ptr %t395, !tbaa !29
  %t398 = icmp eq ptr %t396, null
  br i1 %t398, label %bb131, label %bb132
bb130:
  store i1 false, ptr %l194, !tbaa !21
  br label %bb135
bb131:
  call void @__olang_check_failed(ptr @olang_loc_ef1bdab68bcf0283_bb587b6d5639fda7)
  unreachable
bb132:
  br label %bb133
bb133:
  %t400 = load ptr, ptr %l11, !tbaa !29
  %t402 = getelementptr %"compiler/typed:Match", ptr %t400, i32 0, i32 2
  %t403 = load ptr, ptr %t402, !tbaa !29
  %t404 = load i32, ptr %l1, !tbaa !23
  %t407 = call i1 @compiler_2ftyped_2earmBreaks(ptr %v0, ptr %t403, i32 %t404)
  store i1 %t407, ptr %l201
  br label %bb134
bb134:
  %t408 = load i1, ptr %l201, !tbaa !21
  store i1 %t408, ptr %l194, !tbaa !21
  br label %bb135
bb135:
  %t409 = load i1, ptr %l194, !tbaa !21
  store i1 %t409, ptr %l189, !tbaa !21
  br label %bb136
bb136:
  %t410 = load i1, ptr %l189, !tbaa !21
  store i1 %t410, ptr %l19, !tbaa !21
  br label %bb170
bb137:
  %t411 = load ptr, ptr %l0, !tbaa !29
  store ptr %t411, ptr %l202, !tbaa !29
  store i1 false, ptr %l203, !tbaa !21
  %t412 = load ptr, ptr %l202, !tbaa !29
  %t413 = icmp ne ptr %t412, null
  br i1 %t413, label %bb138, label %bb139
bb138:
  %t415 = load ptr, ptr %l202, !tbaa !29
  %t416 = load i64, ptr %t415, !range !{i64 0, i64 18}
  %t418 = icmp eq i64 %t416, 14
  store i1 %t418, ptr %l203, !tbaa !21
  br label %bb139
bb139:
  %t419 = load i1, ptr %l203, !tbaa !21
  br i1 %t419, label %bb140, label %bb141
bb140:
  %t420 = load ptr, ptr %l0, !tbaa !29
  %t422 = getelementptr { i64, [5 x i64] }, ptr %t420, i32 0, i32 1
  %t423 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t422, i32 0, i32 2
  %t424 = load ptr, ptr %t423
  store ptr %t424, ptr %l12, !tbaa !29
  br label %bb142
bb141:
  br label %bb148
bb142:
  %t426 = load ptr, ptr %l12, !tbaa !29
  %t428 = getelementptr %"compiler/typed:Try", ptr %t426, i32 0, i32 0
  %t429 = load ptr, ptr %t428, !tbaa !29
  %t430 = load i32, ptr %l1, !tbaa !23
  %t433 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t429, i32 %t430)
  store i1 %t433, ptr %l211
  br label %bb143
bb143:
  %t434 = load i1, ptr %l211, !tbaa !21
  br i1 %t434, label %bb144, label %bb145
bb144:
  store i1 true, ptr %l212, !tbaa !21
  br label %bb147
bb145:
  %t435 = load ptr, ptr %l12, !tbaa !29
  %t437 = getelementptr %"compiler/typed:Try", ptr %t435, i32 0, i32 1
  %t438 = load { i64, ptr }, ptr %t437, !tbaa !27
  %t439 = load i32, ptr %l1, !tbaa !23
  %t442 = call i1 @compiler_2ftyped_2eclausesBreak(ptr %v0, { i64, ptr } %t438, i32 %t439)
  store i1 %t442, ptr %l216
  br label %bb146
bb146:
  %t443 = load i1, ptr %l216, !tbaa !21
  store i1 %t443, ptr %l212, !tbaa !21
  br label %bb147
bb147:
  %t444 = load i1, ptr %l212, !tbaa !21
  store i1 %t444, ptr %l19, !tbaa !21
  br label %bb170
bb148:
  %t445 = load ptr, ptr %l0, !tbaa !29
  store ptr %t445, ptr %l217, !tbaa !29
  store i1 false, ptr %l218, !tbaa !21
  %t446 = load ptr, ptr %l217, !tbaa !29
  %t447 = icmp ne ptr %t446, null
  br i1 %t447, label %bb149, label %bb150
bb149:
  %t449 = load ptr, ptr %l217, !tbaa !29
  %t450 = load i64, ptr %t449, !range !{i64 0, i64 18}
  %t452 = icmp eq i64 %t450, 15
  store i1 %t452, ptr %l218, !tbaa !21
  br label %bb150
bb150:
  %t453 = load i1, ptr %l218, !tbaa !21
  br i1 %t453, label %bb151, label %bb152
bb151:
  %t454 = load ptr, ptr %l0, !tbaa !29
  %t456 = getelementptr { i64, [5 x i64] }, ptr %t454, i32 0, i32 1
  %t457 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t456, i32 0, i32 2
  %t458 = load ptr, ptr %t457
  store ptr %t458, ptr %l13, !tbaa !29
  br label %bb153
bb152:
  br label %bb155
bb153:
  %t460 = load ptr, ptr %l13, !tbaa !29
  %t461 = load i32, ptr %l1, !tbaa !23
  %t464 = call i1 @compiler_2ftyped_2efnBreaks(ptr %v0, ptr %t460, i32 %t461)
  store i1 %t464, ptr %l225
  br label %bb154
bb154:
  %t465 = load i1, ptr %l225, !tbaa !21
  store i1 %t465, ptr %l19, !tbaa !21
  br label %bb170
bb155:
  %t466 = load ptr, ptr %l0, !tbaa !29
  store ptr %t466, ptr %l226, !tbaa !29
  store i1 false, ptr %l227, !tbaa !21
  %t467 = load ptr, ptr %l226, !tbaa !29
  %t468 = icmp ne ptr %t467, null
  br i1 %t468, label %bb156, label %bb157
bb156:
  %t470 = load ptr, ptr %l226, !tbaa !29
  %t471 = load i64, ptr %t470, !range !{i64 0, i64 18}
  %t473 = icmp eq i64 %t471, 16
  store i1 %t473, ptr %l227, !tbaa !21
  br label %bb157
bb157:
  %t474 = load i1, ptr %l227, !tbaa !21
  br i1 %t474, label %bb158, label %bb159
bb158:
  %t475 = load ptr, ptr %l0, !tbaa !29
  %t477 = getelementptr { i64, [5 x i64] }, ptr %t475, i32 0, i32 1
  %t478 = getelementptr { %"compiler/source:Span", i32, ptr }, ptr %t477, i32 0, i32 2
  %t479 = load ptr, ptr %t478
  store ptr %t479, ptr %l14, !tbaa !29
  br label %bb160
bb159:
  br label %bb162
bb160:
  %t481 = load ptr, ptr %l14, !tbaa !29
  %t483 = getelementptr %"compiler/typed:Text", ptr %t481, i32 0, i32 0
  %t484 = load { i64, ptr }, ptr %t483, !tbaa !27
  %t485 = load i32, ptr %l1, !tbaa !23
  %t488 = call i1 @compiler_2ftyped_2epiecesBreak(ptr %v0, { i64, ptr } %t484, i32 %t485)
  store i1 %t488, ptr %l235
  br label %bb161
bb161:
  %t489 = load i1, ptr %l235, !tbaa !21
  store i1 %t489, ptr %l19, !tbaa !21
  br label %bb170
bb162:
  %t490 = load ptr, ptr %l0, !tbaa !29
  store ptr %t490, ptr %l236, !tbaa !29
  store i1 false, ptr %l237, !tbaa !21
  %t491 = load ptr, ptr %l236, !tbaa !29
  %t492 = icmp ne ptr %t491, null
  br i1 %t492, label %bb163, label %bb164
bb163:
  %t494 = load ptr, ptr %l236, !tbaa !29
  %t495 = load i64, ptr %t494, !range !{i64 0, i64 18}
  %t497 = icmp eq i64 %t495, 17
  store i1 %t497, ptr %l237, !tbaa !21
  br label %bb164
bb164:
  %t498 = load i1, ptr %l237, !tbaa !21
  br i1 %t498, label %bb165, label %bb166
bb165:
  %t499 = load ptr, ptr %l0, !tbaa !29
  %t501 = getelementptr { i64, [5 x i64] }, ptr %t499, i32 0, i32 1
  %t502 = getelementptr { %"compiler/source:Span", i64, ptr }, ptr %t501, i32 0, i32 2
  %t503 = load ptr, ptr %t502
  store ptr %t503, ptr %l15, !tbaa !29
  br label %bb167
bb166:
  br label %bb169
bb167:
  %t505 = load ptr, ptr %l15, !tbaa !29
  %t507 = load i32, ptr %l1, !tbaa !23
  %t510 = call i1 @compiler_2ftyped_2eexprBreaks(ptr %v0, ptr %t505, i32 %t507)
  store i1 %t510, ptr %l245
  br label %bb168
bb168:
  %t511 = load i1, ptr %l245, !tbaa !21
  store i1 %t511, ptr %l19, !tbaa !21
  br label %bb170
bb169:
  call void @__olang_check_failed(ptr @olang_loc_b091697a8707c61b_ed3e4d18c76feebf)
  unreachable
bb170:
  %t512 = load i1, ptr %l19, !tbaa !21
  store i1 %t512, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, ptr %a2) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca ptr
  %l2 = alloca ptr
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
  %l13 = alloca ptr
  %l22 = alloca { i64, ptr }
  %l25 = alloca ptr
  %l26 = alloca i1
  %l33 = alloca i64
  %l43 = alloca ptr
  %l44 = alloca i1
  %l52 = alloca ptr
  %l53 = alloca i1
  %l66 = alloca ptr
  %l73 = alloca ptr
  %l74 = alloca i1
  %l90 = alloca ptr
  %l91 = alloca i1
  store ptr %a0, ptr %l0
  store ptr %a1, ptr %l1
  store ptr %a2, ptr %l2
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l1, !tbaa !29
  %t3 = getelementptr %"compiler/typed:Block", ptr %t1, i32 0, i32 1
  %t4 = load { i64, ptr }, ptr %t3, !tbaa !27
  store { i64, ptr } %t4, ptr %l3, !tbaa !27
  store i64 0, ptr %l4, !tbaa !24
  %t6 = load { i64, ptr }, ptr %l3, !tbaa !27
  %t8 = extractvalue { i64, ptr } %t6, 0
  store i64 %t8, ptr %l5, !tbaa !24
  br label %bb1
bb1:
  %t10 = load i64, ptr %l4, !tbaa !24
  %t11 = load i64, ptr %l5, !tbaa !24
  %t14 = icmp slt i64 %t10, %t11
  %t16 = xor i1 %t14, true
  br i1 %t16, label %bb2, label %bb3
bb2:
  br label %bb62
bb3:
  br label %bb4
bb4:
  %t18 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t18, ptr %l22, !tbaa !27
  %t19 = load i64, ptr %l4, !tbaa !24
  %t21 = getelementptr { i64, ptr }, ptr %l22, i32 0, i32 1
  %t22 = load ptr, ptr %t21, !tbaa !27
  %t23 = getelementptr ptr, ptr %t22, i64 %t19
  %t24 = load ptr, ptr %t23, !tbaa !39
  store ptr %t24, ptr %l6, !tbaa !29
  %t26 = load ptr, ptr %l6, !tbaa !29
  store ptr %t26, ptr %l25, !tbaa !29
  store i1 false, ptr %l26, !tbaa !21
  %t27 = load ptr, ptr %l25, !tbaa !29
  %t28 = icmp ne ptr %t27, null
  br i1 %t28, label %bb5, label %bb6
bb5:
  %t30 = load ptr, ptr %l25, !tbaa !29
  %t31 = load i64, ptr %t30, !range !{i64 0, i64 17}
  %t33 = icmp eq i64 %t31, 12
  store i1 %t33, ptr %l26, !tbaa !21
  br label %bb6
bb6:
  %t34 = load i1, ptr %l26, !tbaa !21
  br i1 %t34, label %bb7, label %bb8
bb7:
  %t35 = load ptr, ptr %l6, !tbaa !29
  %t37 = getelementptr { i64, [3 x i64] }, ptr %t35, i32 0, i32 1
  %t38 = getelementptr { %"compiler/source:Span", ptr }, ptr %t37, i32 0, i32 1
  %t39 = load ptr, ptr %t38
  store ptr %t39, ptr %l7, !tbaa !29
  br label %bb9
bb8:
  br label %bb16
bb9:
  %t41 = load ptr, ptr %l0, !tbaa !29
  %t42 = load ptr, ptr %l7, !tbaa !29
  %t45 = call i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v1, ptr %t41, ptr %t42)
  store i64 %t45, ptr %l33
  br label %bb10
bb10:
  %t46 = load i64, ptr %l33, !tbaa !24
  store i64 %t46, ptr %l8, !tbaa !24
  %t47 = load i64, ptr %l8, !tbaa !24
  %t49 = icmp sge i64 %t47, 0
  br i1 %t49, label %bb11, label %bb12
bb11:
  %t51 = load ptr, ptr %l2, !tbaa !29
  %t53 = getelementptr %"compiler/typed:DropHolding", ptr %t51, i32 0, i32 0
  %t54 = load i64, ptr %l8, !tbaa !24
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v2, ptr %t53, i64 %t54)
  br label %bb13
bb12:
  br label %bb15
bb13:
  %t57 = load ptr, ptr %l2, !tbaa !29
  %t59 = getelementptr %"compiler/typed:DropHolding", ptr %t57, i32 0, i32 1
  %t60 = load ptr, ptr %l1, !tbaa !29
  %t62 = getelementptr %"compiler/typed:Block", ptr %t60, i32 0, i32 0
  %t63 = load i32, ptr %t62, !tbaa !23
  call void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v2, ptr %t59, i32 %t63)
  br label %bb14
bb14:
  br label %bb15
bb15:
  br label %bb60
bb16:
  %t66 = load ptr, ptr %l6, !tbaa !29
  store ptr %t66, ptr %l43, !tbaa !29
  store i1 false, ptr %l44, !tbaa !21
  %t67 = load ptr, ptr %l43, !tbaa !29
  %t68 = icmp ne ptr %t67, null
  br i1 %t68, label %bb17, label %bb18
bb17:
  %t70 = load ptr, ptr %l43, !tbaa !29
  %t71 = load i64, ptr %t70, !range !{i64 0, i64 17}
  %t73 = icmp eq i64 %t71, 11
  store i1 %t73, ptr %l44, !tbaa !21
  br label %bb18
bb18:
  %t74 = load i1, ptr %l44, !tbaa !21
  br i1 %t74, label %bb19, label %bb20
bb19:
  %t75 = load ptr, ptr %l6, !tbaa !29
  %t77 = getelementptr { i64, [3 x i64] }, ptr %t75, i32 0, i32 1
  %t78 = getelementptr { %"compiler/source:Span", ptr }, ptr %t77, i32 0, i32 1
  %t79 = load ptr, ptr %t78
  store ptr %t79, ptr %l9, !tbaa !29
  br label %bb21
bb20:
  br label %bb23
bb21:
  %t81 = load ptr, ptr %l0, !tbaa !29
  %t82 = load ptr, ptr %l9, !tbaa !29
  %t83 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %t81, ptr %t82, ptr %t83)
  br label %bb22
bb22:
  br label %bb60
bb23:
  %t87 = load ptr, ptr %l6, !tbaa !29
  store ptr %t87, ptr %l52, !tbaa !29
  store i1 false, ptr %l53, !tbaa !21
  %t88 = load ptr, ptr %l52, !tbaa !29
  %t89 = icmp ne ptr %t88, null
  br i1 %t89, label %bb24, label %bb25
bb24:
  %t91 = load ptr, ptr %l52, !tbaa !29
  %t92 = load i64, ptr %t91, !range !{i64 0, i64 17}
  %t94 = icmp eq i64 %t92, 3
  store i1 %t94, ptr %l53, !tbaa !21
  br label %bb25
bb25:
  %t95 = load i1, ptr %l53, !tbaa !21
  br i1 %t95, label %bb26, label %bb27
bb26:
  %t96 = load ptr, ptr %l6, !tbaa !29
  %t98 = getelementptr { i64, [3 x i64] }, ptr %t96, i32 0, i32 1
  %t99 = getelementptr { %"compiler/source:Span", ptr }, ptr %t98, i32 0, i32 1
  %t100 = load ptr, ptr %t99
  store ptr %t100, ptr %l10, !tbaa !29
  br label %bb28
bb27:
  br label %bb37
bb28:
  %t102 = load ptr, ptr %l0, !tbaa !29
  %t103 = load ptr, ptr %l10, !tbaa !29
  %t105 = getelementptr %"compiler/typed:If", ptr %t103, i32 0, i32 1
  %t106 = load ptr, ptr %t105, !tbaa !29
  %t107 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %t102, ptr %t106, ptr %t107)
  br label %bb29
bb29:
  %t111 = load ptr, ptr %l10, !tbaa !29
  %t113 = getelementptr %"compiler/typed:If", ptr %t111, i32 0, i32 2
  %t114 = load ptr, ptr %t113, !tbaa !29
  %t116 = icmp eq ptr %t114, null
  %t118 = xor i1 %t116, true
  br i1 %t118, label %bb30, label %bb31
bb30:
  %t120 = load ptr, ptr %l0, !tbaa !29
  store ptr %t120, ptr %l66, !tbaa !29
  %t121 = load ptr, ptr %l10, !tbaa !29
  %t123 = getelementptr %"compiler/typed:If", ptr %t121, i32 0, i32 2
  %t124 = load ptr, ptr %t123, !tbaa !29
  %t126 = icmp eq ptr %t124, null
  br i1 %t126, label %bb32, label %bb33
bb31:
  br label %bb36
bb32:
  call void @__olang_check_failed(ptr @olang_loc_4baf654831ed8d80_eee61e02aec284c4)
  unreachable
bb33:
  br label %bb34
bb34:
  %t128 = load ptr, ptr %l10, !tbaa !29
  %t130 = getelementptr %"compiler/typed:If", ptr %t128, i32 0, i32 2
  %t131 = load ptr, ptr %t130, !tbaa !29
  %t132 = load ptr, ptr %l2, !tbaa !29
  %t133 = load ptr, ptr %l66, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %t133, ptr %t131, ptr %t132)
  br label %bb35
bb35:
  br label %bb36
bb36:
  br label %bb60
bb37:
  %t136 = load ptr, ptr %l6, !tbaa !29
  store ptr %t136, ptr %l73, !tbaa !29
  store i1 false, ptr %l74, !tbaa !21
  %t137 = load ptr, ptr %l73, !tbaa !29
  %t138 = icmp ne ptr %t137, null
  br i1 %t138, label %bb38, label %bb39
bb38:
  %t140 = load ptr, ptr %l73, !tbaa !29
  %t141 = load i64, ptr %t140, !range !{i64 0, i64 17}
  %t143 = icmp eq i64 %t141, 4
  store i1 %t143, ptr %l74, !tbaa !21
  br label %bb39
bb39:
  %t144 = load i1, ptr %l74, !tbaa !21
  br i1 %t144, label %bb40, label %bb41
bb40:
  %t145 = load ptr, ptr %l6, !tbaa !29
  %t147 = getelementptr { i64, [3 x i64] }, ptr %t145, i32 0, i32 1
  %t148 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t147, i32 0, i32 1
  %t149 = load ptr, ptr %t148
  store ptr %t149, ptr %l11, !tbaa !29
  %t151 = load ptr, ptr %l6, !tbaa !29
  %t153 = getelementptr { i64, [3 x i64] }, ptr %t151, i32 0, i32 1
  %t154 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t153, i32 0, i32 2
  %t155 = load ptr, ptr %t154
  store ptr %t155, ptr %l12, !tbaa !29
  br label %bb42
bb41:
  br label %bb48
bb42:
  %t157 = load ptr, ptr %l0, !tbaa !29
  %t158 = load ptr, ptr %l11, !tbaa !29
  %t159 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %t157, ptr %t158, ptr %t159)
  br label %bb43
bb43:
  %t163 = load ptr, ptr %l12, !tbaa !29
  %t165 = icmp eq ptr %t163, null
  %t167 = xor i1 %t165, true
  br i1 %t167, label %bb44, label %bb45
bb44:
  %t169 = load ptr, ptr %l0, !tbaa !29
  %t170 = load ptr, ptr %l12, !tbaa !29
  %t171 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %t169, ptr %t170, ptr %t171)
  br label %bb46
bb45:
  br label %bb47
bb46:
  br label %bb47
bb47:
  br label %bb60
bb48:
  %t175 = load ptr, ptr %l6, !tbaa !29
  store ptr %t175, ptr %l90, !tbaa !29
  store i1 false, ptr %l91, !tbaa !21
  %t176 = load ptr, ptr %l90, !tbaa !29
  %t177 = icmp ne ptr %t176, null
  br i1 %t177, label %bb49, label %bb50
bb49:
  %t179 = load ptr, ptr %l90, !tbaa !29
  %t180 = load i64, ptr %t179, !range !{i64 0, i64 17}
  %t182 = icmp eq i64 %t180, 13
  store i1 %t182, ptr %l91, !tbaa !21
  br label %bb50
bb50:
  %t183 = load i1, ptr %l91, !tbaa !21
  br i1 %t183, label %bb51, label %bb52
bb51:
  %t184 = load ptr, ptr %l6, !tbaa !29
  %t186 = getelementptr { i64, [3 x i64] }, ptr %t184, i32 0, i32 1
  %t187 = getelementptr { %"compiler/source:Span", ptr }, ptr %t186, i32 0, i32 1
  %t188 = load ptr, ptr %t187
  store ptr %t188, ptr %l13, !tbaa !29
  br label %bb53
bb52:
  br label %bb55
bb53:
  %t190 = load ptr, ptr %l0, !tbaa !29
  %t191 = load ptr, ptr %l13, !tbaa !29
  %t193 = getelementptr %"compiler/typed:Join", ptr %t191, i32 0, i32 0
  %t194 = load ptr, ptr %t193, !tbaa !29
  %t195 = load ptr, ptr %l2, !tbaa !29
  call void @compiler_2ftyped_2efindHolders(ptr %v0, ptr %v1, ptr %v2, ptr %t190, ptr %t194, ptr %t195)
  br label %bb54
bb54:
  br label %bb60
bb55:
  br i1 true, label %bb56, label %bb57
bb56:
  br label %bb58
bb57:
  br label %bb59
bb58:
  br label %bb60
bb59:
  call void @__olang_check_failed(ptr @olang_loc_f3eab8194bd11e66_e0240e140d7ed92a)
  unreachable
bb60:
  br label %bb61
bb61:
  %t199 = load i64, ptr %l4, !tbaa !24
  %t201 = add i64 %t199, 1
  store i64 %t201, ptr %l4, !tbaa !24
  br label %bb1
bb62:
  br label %ret
ret:
  ret void
}

define dso_local i1 @compiler_2ftyped_2eholds(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l22 = alloca i1
  %l23 = alloca i1
  %l25 = alloca ptr
  %l27 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
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
  %t8 = getelementptr %"compiler/typed:Block", ptr %t6, i32 0, i32 1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  br label %bb18
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t23, ptr %l17, !tbaa !27
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l5, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t35 = call i1 @compiler_2ftyped_2eisAssertAt(ptr %v0, ptr %t31, %"compiler/source:Span" %t32)
  store i1 %t35, ptr %l22
  br label %bb8
bb8:
  %t36 = load i1, ptr %l22, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  store i1 true, ptr %l23, !tbaa !21
  br label %bb13
bb10:
  %t37 = load ptr, ptr %l5, !tbaa !29
  %t39 = call ptr @compiler_2ftyped_2eBlock_2ewithin(ptr %v0, ptr %v0, ptr %t37)
  store ptr %t39, ptr %l25
  br label %bb11
bb11:
  %t40 = load %"compiler/source:Span", ptr %l1
  %t41 = load ptr, ptr %l25, !tbaa !29
  %t43 = call i1 @compiler_2ftyped_2eholds(ptr %v0, ptr %t41, %"compiler/source:Span" %t40)
  store i1 %t43, ptr %l27
  br label %bb12
bb12:
  %t44 = load i1, ptr %l27, !tbaa !21
  store i1 %t44, ptr %l23, !tbaa !21
  br label %bb13
bb13:
  %t45 = load i1, ptr %l23, !tbaa !21
  br i1 %t45, label %bb14, label %bb15
bb14:
  store i1 true, ptr %rv
  br label %ret
bb15:
  br label %bb16
bb16:
  br label %bb17
bb17:
  %t47 = load i64, ptr %l3, !tbaa !24
  %t49 = add i64 %t47, 1
  store i64 %t49, ptr %l3, !tbaa !24
  br label %bb4
bb18:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2eisAssertAt(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca %"compiler/source:Span"
  %l3 = alloca i1
  %l4 = alloca ptr
  %l5 = alloca i1
  %l13 = alloca i1
  %rv = alloca i1
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
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
  %t6 = load i64, ptr %t5, !range !{i64 0, i64 17}
  %t8 = icmp eq i64 %t6, 10
  store i1 %t8, ptr %l5, !tbaa !21
  br label %bb2
bb2:
  %t9 = load i1, ptr %l5, !tbaa !21
  br i1 %t9, label %bb3, label %bb4
bb3:
  %t10 = load ptr, ptr %l0, !tbaa !29
  %t12 = getelementptr { i64, [3 x i64] }, ptr %t10, i32 0, i32 1
  %t13 = getelementptr { %"compiler/source:Span", ptr, ptr }, ptr %t12, i32 0, i32 0
  %t14 = load %"compiler/source:Span", ptr %t13
  store %"compiler/source:Span" %t14, ptr %l2
  br label %bb5
bb4:
  br label %bb9
bb5:
  %t16 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 0
  %t17 = load i32, ptr %t16, !tbaa !23
  %t18 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 0
  %t19 = load i32, ptr %t18, !tbaa !23
  %t22 = icmp eq i32 %t17, %t19
  br i1 %t22, label %bb6, label %bb7
bb6:
  %t24 = getelementptr %"compiler/source:Span", ptr %l2, i32 0, i32 1
  %t25 = load i32, ptr %t24, !tbaa !23
  %t26 = getelementptr %"compiler/source:Span", ptr %l1, i32 0, i32 1
  %t27 = load i32, ptr %t26, !tbaa !23
  %t30 = icmp eq i32 %t25, %t27
  store i1 %t30, ptr %l13, !tbaa !21
  br label %bb8
bb7:
  store i1 false, ptr %l13, !tbaa !21
  br label %bb8
bb8:
  %t32 = load i1, ptr %l13, !tbaa !21
  store i1 %t32, ptr %l3, !tbaa !21
  br label %bb14
bb9:
  br i1 true, label %bb10, label %bb11
bb10:
  br label %bb12
bb11:
  br label %bb13
bb12:
  store i1 false, ptr %l3, !tbaa !21
  br label %bb14
bb13:
  call void @__olang_check_failed(ptr @olang_loc_4d8d49a96eb287ee_1dbcd98d7cba02aa)
  unreachable
bb14:
  %t33 = load i1, ptr %l3, !tbaa !21
  store i1 %t33, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i1 @compiler_2ftyped_2elistHoldsWritable(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1, i64 %a2) #0 {
entry:
  %l3 = alloca { i64, ptr }
  %l4 = alloca i64
  %l5 = alloca i64
  %l14 = alloca { i64, ptr }
  %l21 = alloca i1
  %rv = alloca i1
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a1, ptr %l3, !tbaa !27
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
  br label %bb10
bb3:
  br label %bb4
bb4:
  %t15 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t15, ptr %l14, !tbaa !27
  %t16 = load i64, ptr %l4, !tbaa !24
  %t18 = getelementptr { i64, ptr }, ptr %l14, i32 0, i32 1
  %t19 = load ptr, ptr %t18, !tbaa !27
  %t20 = getelementptr i32, ptr %t19, i64 %t16
  %t21 = load i32, ptr %t20, !tbaa !33
  %t27 = add i64 %a2, 1
  %t31 = call i1 @compiler_2ftyped_2eholdsWritableRef(ptr %v0, ptr %a0, i32 %t21, i64 %t27)
  store i1 %t31, ptr %l21
  br label %bb5
bb5:
  %t32 = load i1, ptr %l21, !tbaa !21
  br i1 %t32, label %bb6, label %bb7
bb6:
  store i1 true, ptr %rv
  br label %ret
bb7:
  br label %bb8
bb8:
  br label %bb9
bb9:
  %t34 = load i64, ptr %l4, !tbaa !24
  %t36 = add i64 %t34, 1
  store i64 %t36, ptr %l4, !tbaa !24
  br label %bb1
bb10:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local i64 @compiler_2ftyped_2ereached(ptr %v0, ptr %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %l0 = alloca ptr
  %l1 = alloca %"compiler/source:Span"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l6 = alloca ptr
  %l7 = alloca %"compiler/typed:leaveWalk"
  %l19 = alloca { i64, ptr }
  %l24 = alloca i1
  %l27 = alloca ptr
  %l31 = alloca i1
  %l35 = alloca i64
  %l40 = alloca i64
  %l41 = alloca %"compiler/typed:leaveWalk"
  %l44 = alloca i1
  %l48 = alloca i1
  %l49 = alloca i64
  %s3 = alloca %olang.scope
  %rv = alloca i64
  store ptr %a0, ptr %l0
  store %"compiler/source:Span" %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load ptr, ptr %l0, !tbaa !29
  %t3 = icmp eq ptr %t1, null
  br i1 %t3, label %bb1, label %bb2
bb1:
  store i64 0, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t6 = load ptr, ptr %l0, !tbaa !29
  %t8 = getelementptr %"compiler/typed:Block", ptr %t6, i32 0, i32 1
  %t9 = load { i64, ptr }, ptr %t8, !tbaa !27
  store { i64, ptr } %t9, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t11 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t13 = extractvalue { i64, ptr } %t11, 0
  store i64 %t13, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  store %olang.scope zeroinitializer, ptr %s3
  %t15 = load i64, ptr %l3, !tbaa !24
  %t16 = load i64, ptr %l4, !tbaa !24
  %t19 = icmp slt i64 %t15, %t16
  %t21 = xor i1 %t19, true
  br i1 %t21, label %bb5, label %bb6
bb5:
  call void @__olang_scope_close(ptr %s3)
  br label %bb31
bb6:
  br label %bb7
bb7:
  %t23 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t23, ptr %l19, !tbaa !27
  %t24 = load i64, ptr %l3, !tbaa !24
  %t26 = getelementptr { i64, ptr }, ptr %l19, i32 0, i32 1
  %t27 = load ptr, ptr %t26, !tbaa !27
  %t28 = getelementptr ptr, ptr %t27, i64 %t24
  %t29 = load ptr, ptr %t28, !tbaa !39
  store ptr %t29, ptr %l5, !tbaa !29
  %t31 = load ptr, ptr %l5, !tbaa !29
  %t32 = load %"compiler/source:Span", ptr %l1
  %t35 = call i1 @compiler_2ftyped_2eisAssertAt(ptr %v0, ptr %t31, %"compiler/source:Span" %t32)
  store i1 %t35, ptr %l24
  br label %bb8
bb8:
  %t36 = load i1, ptr %l24, !tbaa !21
  br i1 %t36, label %bb9, label %bb10
bb9:
  call void @__olang_scope_close(ptr %s3)
  store i64 1, ptr %rv
  br label %ret
bb10:
  br label %bb11
bb11:
  %t38 = load ptr, ptr %l5, !tbaa !29
  %t40 = call ptr @compiler_2ftyped_2eBlock_2ewithin(ptr %v0, ptr %v0, ptr %t38)
  store ptr %t40, ptr %l27
  br label %bb12
bb12:
  %t41 = load ptr, ptr %l27, !tbaa !29
  store ptr %t41, ptr %l6, !tbaa !29
  %t42 = load ptr, ptr %l6, !tbaa !29
  %t44 = icmp eq ptr %t42, null
  %t46 = xor i1 %t44, true
  br i1 %t46, label %bb13, label %bb14
bb13:
  %t48 = load ptr, ptr %l6, !tbaa !29
  %t50 = load %"compiler/source:Span", ptr %l1
  %t53 = call i64 @compiler_2ftyped_2ereached(ptr %v0, ptr %t48, %"compiler/source:Span" %t50)
  store i64 %t53, ptr %l35
  br label %bb15
bb14:
  store i1 false, ptr %l31, !tbaa !21
  br label %bb16
bb15:
  %t54 = load i64, ptr %l35, !tbaa !24
  %t55 = icmp ne i64 %t54, 0
  store i1 %t55, ptr %l31, !tbaa !21
  br label %bb16
bb16:
  %t57 = load i1, ptr %l31, !tbaa !21
  br i1 %t57, label %bb17, label %bb18
bb17:
  %t58 = load ptr, ptr %l6, !tbaa !29
  %t60 = load %"compiler/source:Span", ptr %l1
  %t63 = call i64 @compiler_2ftyped_2ereached(ptr %v0, ptr %t58, %"compiler/source:Span" %t60)
  store i64 %t63, ptr %l40
  br label %bb19
bb18:
  br label %bb20
bb19:
  call void @__olang_scope_close(ptr %s3)
  %t64 = load i64, ptr %l40, !tbaa !24
  store i64 %t64, ptr %rv
  br label %ret
bb20:
  %t65 = call %"compiler/typed:leaveWalk" @compiler_2ftyped_3aleaveWalk_2ector(ptr %s3)
  store %"compiler/typed:leaveWalk" %t65, ptr %l41
  br label %bb21
bb21:
  %t66 = load %"compiler/typed:leaveWalk", ptr %l41
  store %"compiler/typed:leaveWalk" %t66, ptr %l7
  %t67 = load ptr, ptr %l5, !tbaa !29
  %t70 = call i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtLeaves(ptr %s3, ptr %v0, ptr %l7, ptr %t67)
  store i1 %t70, ptr %l44
  br label %bb22
bb22:
  %t71 = load i1, ptr %l44, !tbaa !21
  br i1 %t71, label %bb23, label %bb24
bb23:
  %t72 = load ptr, ptr %l0, !tbaa !29
  %t74 = load %"compiler/source:Span", ptr %l1
  %t77 = call i1 @compiler_2ftyped_2eholds(ptr %v0, ptr %t72, %"compiler/source:Span" %t74)
  store i1 %t77, ptr %l48
  br label %bb25
bb24:
  br label %bb29
bb25:
  %t78 = load i1, ptr %l48, !tbaa !21
  br i1 %t78, label %bb26, label %bb27
bb26:
  store i64 -1, ptr %l49, !tbaa !24
  br label %bb28
bb27:
  store i64 0, ptr %l49, !tbaa !24
  br label %bb28
bb28:
  call void @__olang_scope_close(ptr %s3)
  %t79 = load i64, ptr %l49, !tbaa !24
  store i64 %t79, ptr %rv
  br label %ret
bb29:
  call void @__olang_scope_close(ptr %s3)
  br label %bb30
bb30:
  %t80 = load i64, ptr %l3, !tbaa !24
  %t82 = add i64 %t80, 1
  store i64 %t82, ptr %l3, !tbaa !24
  br label %bb4
bb31:
  store i64 0, ptr %rv
  br label %ret
ret:
  %rr = load i64, ptr %rv
  ret i64 %rr
}

define dso_local i1 @compiler_2ftyped_2etargetsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %l0 = alloca { i64, ptr }
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca i64
  %l5 = alloca ptr
  %l17 = alloca { i64, ptr }
  %l23 = alloca i1
  %l26 = alloca i1
  %rv = alloca i1
  store { i64, ptr } %a0, ptr %l0
  br label %start
start:
  br label %bb0
bb0:
  %t1 = load { i64, ptr }, ptr %l0, !tbaa !27
  %t3 = extractvalue { i64, ptr } %t1, 0
  %t5 = icmp eq i64 %t3, 0
  br i1 %t5, label %bb1, label %bb2
bb1:
  store i1 false, ptr %rv
  br label %ret
bb2:
  br label %bb3
bb3:
  %t8 = load { i64, ptr }, ptr %l0, !tbaa !27
  store { i64, ptr } %t8, ptr %l2, !tbaa !27
  store i64 0, ptr %l3, !tbaa !24
  %t10 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l4, !tbaa !24
  br label %bb4
bb4:
  %t14 = load i64, ptr %l3, !tbaa !24
  %t15 = load i64, ptr %l4, !tbaa !24
  %t18 = icmp slt i64 %t14, %t15
  %t20 = xor i1 %t18, true
  br i1 %t20, label %bb5, label %bb6
bb5:
  br label %bb16
bb6:
  br label %bb7
bb7:
  %t22 = load { i64, ptr }, ptr %l2, !tbaa !27
  store { i64, ptr } %t22, ptr %l17, !tbaa !27
  %t23 = load i64, ptr %l3, !tbaa !24
  %t25 = getelementptr { i64, ptr }, ptr %l17, i32 0, i32 1
  %t26 = load ptr, ptr %t25, !tbaa !27
  %t27 = getelementptr ptr, ptr %t26, i64 %t23
  %t28 = load ptr, ptr %t27, !tbaa !39
  store ptr %t28, ptr %l5, !tbaa !29
  %t30 = load ptr, ptr %l5, !tbaa !29
  %t32 = icmp eq ptr %t30, null
  %t34 = xor i1 %t32, true
  br i1 %t34, label %bb8, label %bb9
bb8:
  %t36 = load ptr, ptr %l5, !tbaa !29
  %t40 = call i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %t36, i32 %a1)
  store i1 %t40, ptr %l26
  br label %bb10
bb9:
  store i1 false, ptr %l23, !tbaa !21
  br label %bb11
bb10:
  %t41 = load i1, ptr %l26, !tbaa !21
  store i1 %t41, ptr %l23, !tbaa !21
  br label %bb11
bb11:
  %t42 = load i1, ptr %l23, !tbaa !21
  br i1 %t42, label %bb12, label %bb13
bb12:
  store i1 true, ptr %rv
  br label %ret
bb13:
  br label %bb14
bb14:
  br label %bb15
bb15:
  %t44 = load i64, ptr %l3, !tbaa !24
  %t46 = add i64 %t44, 1
  store i64 %t46, ptr %l3, !tbaa !24
  br label %bb4
bb16:
  store i1 false, ptr %rv
  br label %ret
ret:
  %rr = load i1, ptr %rv
  ret i1 %rr
}

define dso_local %"compiler/typed:Alt" @compiler_2ftyped_3aAlt_2ector(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Alt"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Alt" undef, ptr %a0, 0
  %t8 = insertvalue %"compiler/typed:Alt" %t6, { i64, ptr } %a1, 1
  store %"compiler/typed:Alt" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Alt", ptr %rv
  ret %"compiler/typed:Alt" %rr
}

define dso_local %"compiler/typed:ContractInfo" @compiler_2ftyped_3aContractInfo_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i64 %a1) #0 {
entry:
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca i64
  %l11 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l13 = alloca i64
  %l15 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca i64
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/typed:ContractInfo"
  br label %start
start:
  br label %bb0
bb0:
  store { i64, ptr } %a0, ptr %l2, !tbaa !27
  store i64 %a1, ptr %l3, !tbaa !24
  %t5 = ptrtoint ptr %v1 to i64
  store i64 %t5, ptr %l9, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v1)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l9, !tbaa !24
  br label %bb2
bb2:
  %t10 = load i64, ptr %l9
  %t11 = inttoptr i64 %t10 to ptr
  %t12 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t11, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t12, ptr %l11
  br label %bb3
bb3:
  %t13 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e2
  br i1 %t13, label %bb4, label %bb5
bb4:
  %t15 = load i64, ptr %l9
  %t16 = inttoptr i64 %t15 to ptr
  %t17 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11, i32 0, i32 0
  %t18 = load { i64, ptr }, ptr %t17
  %t19 = extractvalue { i64, ptr } %t18, 1
  %t20 = call ptr @__olang_region_or(ptr %t19, ptr null)
  %t21 = icmp ne ptr %t20, null
  %t22 = select i1 %t21, ptr %t20, ptr null
  %t23 = icmp eq ptr %t22, %t16
  call void @__olang_region_settle(ptr %t16, i1 %t23)
  br label %bb5
bb5:
  %t24 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l11
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t24, ptr %l4
  %t25 = ptrtoint ptr %v1 to i64
  store i64 %t25, ptr %l13, !tbaa !24
  %t26 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e3
  br i1 %t26, label %bb6, label %bb7
bb6:
  %t28 = call ptr @__olang_region_make(ptr %v1)
  %t29 = ptrtoint ptr %t28 to i64
  store i64 %t29, ptr %l13, !tbaa !24
  br label %bb7
bb7:
  %t30 = load i64, ptr %l13
  %t31 = inttoptr i64 %t30 to ptr
  %t32 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t31, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t32, ptr %l15
  br label %bb8
bb8:
  %t33 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e3
  br i1 %t33, label %bb9, label %bb10
bb9:
  %t35 = load i64, ptr %l13
  %t36 = inttoptr i64 %t35 to ptr
  %t37 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15, i32 0, i32 0
  %t38 = load { i64, ptr }, ptr %t37
  %t39 = extractvalue { i64, ptr } %t38, 1
  %t40 = call ptr @__olang_region_or(ptr %t39, ptr null)
  %t41 = icmp ne ptr %t40, null
  %t42 = select i1 %t41, ptr %t40, ptr null
  %t43 = icmp eq ptr %t42, %t36
  call void @__olang_region_settle(ptr %t36, i1 %t43)
  br label %bb10
bb10:
  %t44 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l15
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t44, ptr %l5
  %t45 = ptrtoint ptr %v1 to i64
  store i64 %t45, ptr %l17, !tbaa !24
  %t46 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e4
  br i1 %t46, label %bb11, label %bb12
bb11:
  %t48 = call ptr @__olang_region_make(ptr %v1)
  %t49 = ptrtoint ptr %t48 to i64
  store i64 %t49, ptr %l17, !tbaa !24
  br label %bb12
bb12:
  %t50 = load i64, ptr %l17
  %t51 = inttoptr i64 %t50 to ptr
  %t52 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %t51, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t52, ptr %l19
  br label %bb13
bb13:
  %t53 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e4
  br i1 %t53, label %bb14, label %bb15
bb14:
  %t55 = load i64, ptr %l17
  %t56 = inttoptr i64 %t55 to ptr
  %t57 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19, i32 0, i32 0
  %t58 = load { i64, ptr }, ptr %t57
  %t59 = extractvalue { i64, ptr } %t58, 1
  %t60 = call ptr @__olang_region_or(ptr %t59, ptr null)
  %t61 = icmp ne ptr %t60, null
  %t62 = select i1 %t61, ptr %t60, ptr null
  %t63 = icmp eq ptr %t62, %t56
  call void @__olang_region_settle(ptr %t56, i1 %t63)
  br label %bb15
bb15:
  %t64 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  %t65 = load { i64, ptr }, ptr %l2, !tbaa !27
  %t66 = insertvalue %"compiler/typed:ContractInfo" undef, { i64, ptr } %t65, 0
  %t67 = load i64, ptr %l3, !tbaa !24
  %t68 = insertvalue %"compiler/typed:ContractInfo" %t66, i64 %t67, 1
  %t69 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l4
  %t70 = insertvalue %"compiler/typed:ContractInfo" %t68, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t69, 2
  %t71 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  %t72 = insertvalue %"compiler/typed:ContractInfo" %t70, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, 3
  %t74 = insertvalue %"compiler/typed:ContractInfo" %t72, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t64, 4
  store %"compiler/typed:ContractInfo" %t74, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:ContractInfo", ptr %rv
  ret %"compiler/typed:ContractInfo" %rr
}

define dso_local %"compiler/typed:Local" @compiler_2ftyped_3aLocal_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1, i32 %a2, i32 %a3, i32 %a4, { i64, [1 x i64] } %a5) #0 {
entry:
  %rv = alloca %"compiler/typed:Local"
  br label %start
start:
  br label %bb0
bb0:
  %t14 = insertvalue %"compiler/typed:Local" undef, i32 %a0, 0
  %t16 = insertvalue %"compiler/typed:Local" %t14, %"compiler/source:Span" %a1, 1
  %t18 = insertvalue %"compiler/typed:Local" %t16, i32 %a2, 2
  %t20 = insertvalue %"compiler/typed:Local" %t18, i32 %a3, 3
  %t22 = insertvalue %"compiler/typed:Local" %t20, i32 %a4, 4
  %t24 = insertvalue %"compiler/typed:Local" %t22, { i64, [1 x i64] } %a5, 5
  %t26 = insertvalue %"compiler/typed:Local" %t24, i1 false, 6
  %t28 = insertvalue %"compiler/typed:Local" %t26, i1 false, 7
  store %"compiler/typed:Local" %t28, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Local", ptr %rv
  ret %"compiler/typed:Local" %rr
}

define dso_local %"compiler/typed:SiteInfo" @compiler_2ftyped_3aSiteInfo_2ector(ptr %v0, i32 %a0, %"compiler/source:Span" %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:SiteInfo"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:SiteInfo" undef, i32 %a0, 0
  %t8 = insertvalue %"compiler/typed:SiteInfo" %t6, %"compiler/source:Span" %a1, 1
  store %"compiler/typed:SiteInfo" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:SiteInfo", ptr %rv
  ret %"compiler/typed:SiteInfo" %rr
}

define dso_local %"compiler/typed:Text" @compiler_2ftyped_3aText_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i32 %a1) #0 {
entry:
  %rv = alloca %"compiler/typed:Text"
  br label %start
start:
  br label %bb0
bb0:
  %t6 = insertvalue %"compiler/typed:Text" undef, { i64, ptr } %a0, 0
  %t8 = insertvalue %"compiler/typed:Text" %t6, i32 %a1, 1
  store %"compiler/typed:Text" %t8, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:Text", ptr %rv
  ret %"compiler/typed:Text" %rr
}

define dso_local void @compiler_2ftyped_3aVersions_2ector(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1) #0 {
entry:
  %l1 = alloca { i64, ptr }
  %l2 = alloca ptr
  %l3 = alloca { i64, ptr }
  %l4 = alloca { i64, ptr }
  %l5 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l6 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l7 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l8 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l9 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l10 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l11 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l12 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l13 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l14 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l15 = alloca i64
  %l16 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l17 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l18 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l19 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l20 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l25 = alloca i64
  %l28 = alloca i64
  %l31 = alloca i64
  %l33 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l35 = alloca i64
  %l37 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l39 = alloca i64
  %l41 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l43 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l44 = alloca i64
  %l46 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l48 = alloca i64
  %l50 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l52 = alloca i64
  %l54 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l56 = alloca i64
  %l58 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l60 = alloca i64
  %l62 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l64 = alloca i64
  %l66 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l68 = alloca i64
  %l70 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l72 = alloca i64
  %l74 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l76 = alloca i64
  %l78 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l80 = alloca i64
  %l82 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l84 = alloca i64
  %l86 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l88 = alloca i64
  %l90 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %l92 = alloca %"compiler/typed:Versions"
  store { i64, ptr } %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  store ptr %a0, ptr %l2, !tbaa !29
  %t3 = load { i64, ptr }, ptr %l1, !tbaa !27
  store { i64, ptr } %t3, ptr %l3, !tbaa !27
  %t5 = ptrtoint ptr %v2 to i64
  store i64 %t5, ptr %l25, !tbaa !24
  %t6 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e2
  br i1 %t6, label %bb1, label %bb2
bb1:
  %t8 = call ptr @__olang_region_make(ptr %v2)
  %t9 = ptrtoint ptr %t8 to i64
  store i64 %t9, ptr %l25, !tbaa !24
  br label %bb2
bb2:
  %t10 = load { i64, ptr }, ptr %l1, !tbaa !27
  %t12 = extractvalue { i64, ptr } %t10, 0
  store i64 %t12, ptr %l28, !tbaa !24
  %t13 = load i64, ptr %l28, !tbaa !24
  %t14 = icmp sge i64 %t13, 0
  br i1 %t14, label %bb3, label %bb4
bb3:
  %t16 = load i64, ptr %l28, !tbaa !24
  %t17 = mul i64 %t16, 1
  %t18 = load i64, ptr %l25
  %t19 = inttoptr i64 %t18 to ptr
  %t20 = call ptr @__olang_scope_alloc_zeroed(ptr %t19, i64 %t17)
  %t21 = insertvalue { i64, ptr } undef, i64 %t16, 0
  %t22 = insertvalue { i64, ptr } %t21, ptr %t20, 1
  store { i64, ptr } %t22, ptr %l4, !tbaa !27
  %t24 = ptrtoint ptr %v2 to i64
  store i64 %t24, ptr %l31, !tbaa !24
  %t25 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e3
  br i1 %t25, label %bb5, label %bb6
bb4:
  call void @__olang_check_failed(ptr @olang_loc_a650b38034a5180c_4858ad52e7b771b8)
  unreachable
bb5:
  %t27 = call ptr @__olang_region_make(ptr %v2)
  %t28 = ptrtoint ptr %t27 to i64
  store i64 %t28, ptr %l31, !tbaa !24
  br label %bb6
bb6:
  %t29 = load i64, ptr %l31
  %t30 = inttoptr i64 %t29 to ptr
  %t31 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t30, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t31, ptr %l33
  br label %bb7
bb7:
  %t32 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e3
  br i1 %t32, label %bb8, label %bb9
bb8:
  %t34 = load i64, ptr %l31
  %t35 = inttoptr i64 %t34 to ptr
  %t36 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33, i32 0, i32 0
  %t37 = load { i64, ptr }, ptr %t36
  %t38 = extractvalue { i64, ptr } %t37, 1
  %t39 = call ptr @__olang_region_or(ptr %t38, ptr null)
  %t40 = icmp ne ptr %t39, null
  %t41 = select i1 %t40, ptr %t39, ptr null
  %t42 = icmp eq ptr %t41, %t35
  call void @__olang_region_settle(ptr %t35, i1 %t42)
  br label %bb9
bb9:
  %t43 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l33
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t43, ptr %l5
  %t44 = ptrtoint ptr %v2 to i64
  store i64 %t44, ptr %l35, !tbaa !24
  %t45 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e4
  br i1 %t45, label %bb10, label %bb11
bb10:
  %t47 = call ptr @__olang_region_make(ptr %v2)
  %t48 = ptrtoint ptr %t47 to i64
  store i64 %t48, ptr %l35, !tbaa !24
  br label %bb11
bb11:
  %t49 = load i64, ptr %l35
  %t50 = inttoptr i64 %t49 to ptr
  %t51 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %t50, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t51, ptr %l37
  br label %bb12
bb12:
  %t52 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e4
  br i1 %t52, label %bb13, label %bb14
bb13:
  %t54 = load i64, ptr %l35
  %t55 = inttoptr i64 %t54 to ptr
  %t56 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37, i32 0, i32 0
  %t57 = load { i64, ptr }, ptr %t56
  %t58 = extractvalue { i64, ptr } %t57, 1
  %t59 = call ptr @__olang_region_or(ptr %t58, ptr null)
  %t60 = icmp ne ptr %t59, null
  %t61 = select i1 %t60, ptr %t59, ptr null
  %t62 = icmp eq ptr %t61, %t55
  call void @__olang_region_settle(ptr %t55, i1 %t62)
  br label %bb14
bb14:
  %t63 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l37
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t63, ptr %l6
  %t64 = ptrtoint ptr %v2 to i64
  store i64 %t64, ptr %l39, !tbaa !24
  %t65 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e5
  br i1 %t65, label %bb15, label %bb16
bb15:
  %t67 = call ptr @__olang_region_make(ptr %v2)
  %t68 = ptrtoint ptr %t67 to i64
  store i64 %t68, ptr %l39, !tbaa !24
  br label %bb16
bb16:
  %t69 = load i64, ptr %l39
  %t70 = inttoptr i64 %t69 to ptr
  %t71 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t70, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t71, ptr %l41
  br label %bb17
bb17:
  %t72 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e5
  br i1 %t72, label %bb18, label %bb19
bb18:
  %t74 = load i64, ptr %l39
  %t75 = inttoptr i64 %t74 to ptr
  %t76 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41, i32 0, i32 0
  %t77 = load { i64, ptr }, ptr %t76
  %t78 = extractvalue { i64, ptr } %t77, 1
  %t79 = call ptr @__olang_region_or(ptr %t78, ptr null)
  %t80 = icmp ne ptr %t79, null
  %t81 = select i1 %t80, ptr %t79, ptr null
  %t82 = icmp eq ptr %t81, %t75
  call void @__olang_region_settle(ptr %t75, i1 %t82)
  br label %bb19
bb19:
  %t83 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l41
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t83, ptr %l7
  %t84 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v2, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t84, ptr %l43
  br label %bb20
bb20:
  %t85 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l43
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t85, ptr %l8
  %t86 = ptrtoint ptr %v2 to i64
  store i64 %t86, ptr %l44, !tbaa !24
  %t87 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e7
  br i1 %t87, label %bb21, label %bb22
bb21:
  %t89 = call ptr @__olang_region_make(ptr %v2)
  %t90 = ptrtoint ptr %t89 to i64
  store i64 %t90, ptr %l44, !tbaa !24
  br label %bb22
bb22:
  %t91 = load i64, ptr %l44
  %t92 = inttoptr i64 %t91 to ptr
  %t93 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %t92, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t93, ptr %l46
  br label %bb23
bb23:
  %t94 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e7
  br i1 %t94, label %bb24, label %bb25
bb24:
  %t96 = load i64, ptr %l44
  %t97 = inttoptr i64 %t96 to ptr
  %t98 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46, i32 0, i32 0
  %t99 = load { i64, ptr }, ptr %t98
  %t100 = extractvalue { i64, ptr } %t99, 1
  %t101 = call ptr @__olang_region_or(ptr %t100, ptr null)
  %t102 = icmp ne ptr %t101, null
  %t103 = select i1 %t102, ptr %t101, ptr null
  %t104 = icmp eq ptr %t103, %t97
  call void @__olang_region_settle(ptr %t97, i1 %t104)
  br label %bb25
bb25:
  %t105 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l46
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t105, ptr %l9
  %t106 = ptrtoint ptr %v2 to i64
  store i64 %t106, ptr %l48, !tbaa !24
  %t107 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e8
  br i1 %t107, label %bb26, label %bb27
bb26:
  %t109 = call ptr @__olang_region_make(ptr %v2)
  %t110 = ptrtoint ptr %t109 to i64
  store i64 %t110, ptr %l48, !tbaa !24
  br label %bb27
bb27:
  %t111 = load i64, ptr %l48
  %t112 = inttoptr i64 %t111 to ptr
  %t113 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t112)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t113, ptr %l50
  br label %bb28
bb28:
  %t114 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e8
  br i1 %t114, label %bb29, label %bb30
bb29:
  %t116 = load i64, ptr %l48
  %t117 = inttoptr i64 %t116 to ptr
  %t118 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 2
  %t119 = load { i64, ptr }, ptr %t118
  %t120 = extractvalue { i64, ptr } %t119, 1
  %t121 = call ptr @__olang_region_or(ptr %t120, ptr null)
  %t122 = icmp ne ptr %t121, null
  %t123 = select i1 %t122, ptr %t121, ptr null
  %t124 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 1
  %t125 = load { i64, ptr }, ptr %t124
  %t126 = extractvalue { i64, ptr } %t125, 1
  %t127 = call ptr @__olang_region_or(ptr %t126, ptr null)
  %t128 = icmp ne ptr %t127, null
  %t129 = select i1 %t128, ptr %t127, ptr %t123
  %t130 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50, i32 0, i32 0
  %t131 = load { i64, ptr }, ptr %t130
  %t132 = extractvalue { i64, ptr } %t131, 1
  %t133 = call ptr @__olang_region_or(ptr %t132, ptr null)
  %t134 = icmp ne ptr %t133, null
  %t135 = select i1 %t134, ptr %t133, ptr %t129
  %t136 = icmp eq ptr %t135, %t117
  call void @__olang_region_settle(ptr %t117, i1 %t136)
  br label %bb30
bb30:
  %t137 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l50
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t137, ptr %l10
  %t138 = ptrtoint ptr %v2 to i64
  store i64 %t138, ptr %l52, !tbaa !24
  %t139 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e9
  br i1 %t139, label %bb31, label %bb32
bb31:
  %t141 = call ptr @__olang_region_make(ptr %v2)
  %t142 = ptrtoint ptr %t141 to i64
  store i64 %t142, ptr %l52, !tbaa !24
  br label %bb32
bb32:
  %t143 = load i64, ptr %l52
  %t144 = inttoptr i64 %t143 to ptr
  %t145 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %t144)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t145, ptr %l54
  br label %bb33
bb33:
  %t146 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e9
  br i1 %t146, label %bb34, label %bb35
bb34:
  %t148 = load i64, ptr %l52
  %t149 = inttoptr i64 %t148 to ptr
  %t150 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 2
  %t151 = load { i64, ptr }, ptr %t150
  %t152 = extractvalue { i64, ptr } %t151, 1
  %t153 = call ptr @__olang_region_or(ptr %t152, ptr null)
  %t154 = icmp ne ptr %t153, null
  %t155 = select i1 %t154, ptr %t153, ptr null
  %t156 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 1
  %t157 = load { i64, ptr }, ptr %t156
  %t158 = extractvalue { i64, ptr } %t157, 1
  %t159 = call ptr @__olang_region_or(ptr %t158, ptr null)
  %t160 = icmp ne ptr %t159, null
  %t161 = select i1 %t160, ptr %t159, ptr %t155
  %t162 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54, i32 0, i32 0
  %t163 = load { i64, ptr }, ptr %t162
  %t164 = extractvalue { i64, ptr } %t163, 1
  %t165 = call ptr @__olang_region_or(ptr %t164, ptr null)
  %t166 = icmp ne ptr %t165, null
  %t167 = select i1 %t166, ptr %t165, ptr %t161
  %t168 = icmp eq ptr %t167, %t149
  call void @__olang_region_settle(ptr %t149, i1 %t168)
  br label %bb35
bb35:
  %t169 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l54
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t169, ptr %l11
  %t170 = ptrtoint ptr %v2 to i64
  store i64 %t170, ptr %l56, !tbaa !24
  %t171 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e10
  br i1 %t171, label %bb36, label %bb37
bb36:
  %t173 = call ptr @__olang_region_make(ptr %v2)
  %t174 = ptrtoint ptr %t173 to i64
  store i64 %t174, ptr %l56, !tbaa !24
  br label %bb37
bb37:
  %t175 = load i64, ptr %l56
  %t176 = inttoptr i64 %t175 to ptr
  %t177 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e(ptr %t176)
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t177, ptr %l58
  br label %bb38
bb38:
  %t178 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e10
  br i1 %t178, label %bb39, label %bb40
bb39:
  %t180 = load i64, ptr %l56
  %t181 = inttoptr i64 %t180 to ptr
  %t182 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 2
  %t183 = load { i64, ptr }, ptr %t182
  %t184 = extractvalue { i64, ptr } %t183, 1
  %t185 = call ptr @__olang_region_or(ptr %t184, ptr null)
  %t186 = icmp ne ptr %t185, null
  %t187 = select i1 %t186, ptr %t185, ptr null
  %t188 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 1
  %t189 = load { i64, ptr }, ptr %t188
  %t190 = extractvalue { i64, ptr } %t189, 1
  %t191 = call ptr @__olang_region_or(ptr %t190, ptr null)
  %t192 = icmp ne ptr %t191, null
  %t193 = select i1 %t192, ptr %t191, ptr %t187
  %t194 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58, i32 0, i32 0
  %t195 = load { i64, ptr }, ptr %t194
  %t196 = extractvalue { i64, ptr } %t195, 1
  %t197 = call ptr @__olang_region_or(ptr %t196, ptr null)
  %t198 = icmp ne ptr %t197, null
  %t199 = select i1 %t198, ptr %t197, ptr %t193
  %t200 = icmp eq ptr %t199, %t181
  call void @__olang_region_settle(ptr %t181, i1 %t200)
  br label %bb40
bb40:
  %t201 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l58
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t201, ptr %l12
  %t202 = ptrtoint ptr %v2 to i64
  store i64 %t202, ptr %l60, !tbaa !24
  %t203 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e11
  br i1 %t203, label %bb41, label %bb42
bb41:
  %t205 = call ptr @__olang_region_make(ptr %v2)
  %t206 = ptrtoint ptr %t205 to i64
  store i64 %t206, ptr %l60, !tbaa !24
  br label %bb42
bb42:
  %t207 = load i64, ptr %l60
  %t208 = inttoptr i64 %t207 to ptr
  %t209 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t208, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t209, ptr %l62
  br label %bb43
bb43:
  %t210 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e11
  br i1 %t210, label %bb44, label %bb45
bb44:
  %t212 = load i64, ptr %l60
  %t213 = inttoptr i64 %t212 to ptr
  %t214 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62, i32 0, i32 0
  %t215 = load { i64, ptr }, ptr %t214
  %t216 = extractvalue { i64, ptr } %t215, 1
  %t217 = call ptr @__olang_region_or(ptr %t216, ptr null)
  %t218 = icmp ne ptr %t217, null
  %t219 = select i1 %t218, ptr %t217, ptr null
  %t220 = icmp eq ptr %t219, %t213
  call void @__olang_region_settle(ptr %t213, i1 %t220)
  br label %bb45
bb45:
  %t221 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l62
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t221, ptr %l13
  %t222 = ptrtoint ptr %v2 to i64
  store i64 %t222, ptr %l64, !tbaa !24
  %t223 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e12
  br i1 %t223, label %bb46, label %bb47
bb46:
  %t225 = call ptr @__olang_region_make(ptr %v2)
  %t226 = ptrtoint ptr %t225 to i64
  store i64 %t226, ptr %l64, !tbaa !24
  br label %bb47
bb47:
  %t227 = load i64, ptr %l64
  %t228 = inttoptr i64 %t227 to ptr
  %t229 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t228, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t229, ptr %l66
  br label %bb48
bb48:
  %t230 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e12
  br i1 %t230, label %bb49, label %bb50
bb49:
  %t232 = load i64, ptr %l64
  %t233 = inttoptr i64 %t232 to ptr
  %t234 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66, i32 0, i32 0
  %t235 = load { i64, ptr }, ptr %t234
  %t236 = extractvalue { i64, ptr } %t235, 1
  %t237 = call ptr @__olang_region_or(ptr %t236, ptr null)
  %t238 = icmp ne ptr %t237, null
  %t239 = select i1 %t238, ptr %t237, ptr null
  %t240 = icmp eq ptr %t239, %t233
  call void @__olang_region_settle(ptr %t233, i1 %t240)
  br label %bb50
bb50:
  %t241 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l66
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t241, ptr %l14
  store i64 0, ptr %l15, !tbaa !24
  %t242 = ptrtoint ptr %v2 to i64
  store i64 %t242, ptr %l68, !tbaa !24
  %t243 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e14
  br i1 %t243, label %bb51, label %bb52
bb51:
  %t245 = call ptr @__olang_region_make(ptr %v2)
  %t246 = ptrtoint ptr %t245 to i64
  store i64 %t246, ptr %l68, !tbaa !24
  br label %bb52
bb52:
  %t247 = load i64, ptr %l68
  %t248 = inttoptr i64 %t247 to ptr
  %t249 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t248, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t249, ptr %l70
  br label %bb53
bb53:
  %t250 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e14
  br i1 %t250, label %bb54, label %bb55
bb54:
  %t252 = load i64, ptr %l68
  %t253 = inttoptr i64 %t252 to ptr
  %t254 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70, i32 0, i32 0
  %t255 = load { i64, ptr }, ptr %t254
  %t256 = extractvalue { i64, ptr } %t255, 1
  %t257 = call ptr @__olang_region_or(ptr %t256, ptr null)
  %t258 = icmp ne ptr %t257, null
  %t259 = select i1 %t258, ptr %t257, ptr null
  %t260 = icmp eq ptr %t259, %t253
  call void @__olang_region_settle(ptr %t253, i1 %t260)
  br label %bb55
bb55:
  %t261 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l70
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t261, ptr %l16
  %t262 = ptrtoint ptr %v2 to i64
  store i64 %t262, ptr %l72, !tbaa !24
  %t263 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e15
  br i1 %t263, label %bb56, label %bb57
bb56:
  %t265 = call ptr @__olang_region_make(ptr %v2)
  %t266 = ptrtoint ptr %t265 to i64
  store i64 %t266, ptr %l72, !tbaa !24
  br label %bb57
bb57:
  %t267 = load i64, ptr %l72
  %t268 = inttoptr i64 %t267 to ptr
  %t269 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t268, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t269, ptr %l74
  br label %bb58
bb58:
  %t270 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e15
  br i1 %t270, label %bb59, label %bb60
bb59:
  %t272 = load i64, ptr %l72
  %t273 = inttoptr i64 %t272 to ptr
  %t274 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74, i32 0, i32 0
  %t275 = load { i64, ptr }, ptr %t274
  %t276 = extractvalue { i64, ptr } %t275, 1
  %t277 = call ptr @__olang_region_or(ptr %t276, ptr null)
  %t278 = icmp ne ptr %t277, null
  %t279 = select i1 %t278, ptr %t277, ptr null
  %t280 = icmp eq ptr %t279, %t273
  call void @__olang_region_settle(ptr %t273, i1 %t280)
  br label %bb60
bb60:
  %t281 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l74
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t281, ptr %l17
  %t282 = ptrtoint ptr %v2 to i64
  store i64 %t282, ptr %l76, !tbaa !24
  %t283 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e16
  br i1 %t283, label %bb61, label %bb62
bb61:
  %t285 = call ptr @__olang_region_make(ptr %v2)
  %t286 = ptrtoint ptr %t285 to i64
  store i64 %t286, ptr %l76, !tbaa !24
  br label %bb62
bb62:
  %t287 = load i64, ptr %l76
  %t288 = inttoptr i64 %t287 to ptr
  %t289 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t288, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t289, ptr %l78
  br label %bb63
bb63:
  %t290 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e16
  br i1 %t290, label %bb64, label %bb65
bb64:
  %t292 = load i64, ptr %l76
  %t293 = inttoptr i64 %t292 to ptr
  %t294 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78, i32 0, i32 0
  %t295 = load { i64, ptr }, ptr %t294
  %t296 = extractvalue { i64, ptr } %t295, 1
  %t297 = call ptr @__olang_region_or(ptr %t296, ptr null)
  %t298 = icmp ne ptr %t297, null
  %t299 = select i1 %t298, ptr %t297, ptr null
  %t300 = icmp eq ptr %t299, %t293
  call void @__olang_region_settle(ptr %t293, i1 %t300)
  br label %bb65
bb65:
  %t301 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l78
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t301, ptr %l18
  %t302 = ptrtoint ptr %v2 to i64
  store i64 %t302, ptr %l80, !tbaa !24
  %t303 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e17
  br i1 %t303, label %bb66, label %bb67
bb66:
  %t305 = call ptr @__olang_region_make(ptr %v2)
  %t306 = ptrtoint ptr %t305 to i64
  store i64 %t306, ptr %l80, !tbaa !24
  br label %bb67
bb67:
  %t307 = load i64, ptr %l80
  %t308 = inttoptr i64 %t307 to ptr
  %t309 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t308, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t309, ptr %l82
  br label %bb68
bb68:
  %t310 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e17
  br i1 %t310, label %bb69, label %bb70
bb69:
  %t312 = load i64, ptr %l80
  %t313 = inttoptr i64 %t312 to ptr
  %t314 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82, i32 0, i32 0
  %t315 = load { i64, ptr }, ptr %t314
  %t316 = extractvalue { i64, ptr } %t315, 1
  %t317 = call ptr @__olang_region_or(ptr %t316, ptr null)
  %t318 = icmp ne ptr %t317, null
  %t319 = select i1 %t318, ptr %t317, ptr null
  %t320 = icmp eq ptr %t319, %t313
  call void @__olang_region_settle(ptr %t313, i1 %t320)
  br label %bb70
bb70:
  %t321 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l82
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t321, ptr %l19
  %t322 = ptrtoint ptr %v2 to i64
  store i64 %t322, ptr %l84, !tbaa !24
  %t323 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e18
  br i1 %t323, label %bb71, label %bb72
bb71:
  %t325 = call ptr @__olang_region_make(ptr %v2)
  %t326 = ptrtoint ptr %t325 to i64
  store i64 %t326, ptr %l84, !tbaa !24
  br label %bb72
bb72:
  %t327 = load i64, ptr %l84
  %t328 = inttoptr i64 %t327 to ptr
  %t329 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t328, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t329, ptr %l86
  br label %bb73
bb73:
  %t330 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e18
  br i1 %t330, label %bb74, label %bb75
bb74:
  %t332 = load i64, ptr %l84
  %t333 = inttoptr i64 %t332 to ptr
  %t334 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86, i32 0, i32 0
  %t335 = load { i64, ptr }, ptr %t334
  %t336 = extractvalue { i64, ptr } %t335, 1
  %t337 = call ptr @__olang_region_or(ptr %t336, ptr null)
  %t338 = icmp ne ptr %t337, null
  %t339 = select i1 %t338, ptr %t337, ptr null
  %t340 = icmp eq ptr %t339, %t333
  call void @__olang_region_settle(ptr %t333, i1 %t340)
  br label %bb75
bb75:
  %t341 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l86
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t341, ptr %l20
  %t342 = ptrtoint ptr %v2 to i64
  store i64 %t342, ptr %l88, !tbaa !24
  %t343 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e19
  br i1 %t343, label %bb76, label %bb77
bb76:
  %t345 = call ptr @__olang_region_make(ptr %v2)
  %t346 = ptrtoint ptr %t345 to i64
  store i64 %t346, ptr %l88, !tbaa !24
  br label %bb77
bb77:
  %t347 = load i64, ptr %l88
  %t348 = inttoptr i64 %t347 to ptr
  %t349 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %t348, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t349, ptr %l90
  br label %bb78
bb78:
  %t350 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aVersions_2e19
  br i1 %t350, label %bb79, label %bb80
bb79:
  %t352 = load i64, ptr %l88
  %t353 = inttoptr i64 %t352 to ptr
  %t354 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90, i32 0, i32 0
  %t355 = load { i64, ptr }, ptr %t354
  %t356 = extractvalue { i64, ptr } %t355, 1
  %t357 = call ptr @__olang_region_or(ptr %t356, ptr null)
  %t358 = icmp ne ptr %t357, null
  %t359 = select i1 %t358, ptr %t357, ptr null
  %t360 = icmp eq ptr %t359, %t353
  call void @__olang_region_settle(ptr %t353, i1 %t360)
  br label %bb80
bb80:
  %t361 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l90
  %t362 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 0
  %t363 = load ptr, ptr %l2, !tbaa !29
  store ptr %t363, ptr %t362, !tbaa !29
  %t364 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 1
  %t365 = load { i64, ptr }, ptr %l3, !tbaa !27
  store { i64, ptr } %t365, ptr %t364, !tbaa !27
  %t366 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 2
  %t367 = load { i64, ptr }, ptr %l4, !tbaa !27
  store { i64, ptr } %t367, ptr %t366, !tbaa !27
  %t368 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 3
  %t369 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l5
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t369, ptr %t368
  %t370 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 4
  %t371 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l6
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t371, ptr %t370
  %t372 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 5
  %t373 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l7
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t373, ptr %t372
  %t374 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 6
  %t375 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l8
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t375, ptr %t374
  %t376 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 7
  %t377 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l9
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t377, ptr %t376
  %t378 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 8
  %t379 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l10
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t379, ptr %t378
  %t380 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 9
  %t381 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l11
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t381, ptr %t380
  %t382 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 10
  %t383 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l12
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t383, ptr %t382
  %t384 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 11
  %t385 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l13
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t385, ptr %t384
  %t386 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 12
  %t387 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l14
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t387, ptr %t386
  %t388 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 13
  %t389 = load i64, ptr %l15, !tbaa !24
  store i64 %t389, ptr %t388, !tbaa !24
  %t390 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 14
  %t391 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l16
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t391, ptr %t390
  %t392 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 15
  %t393 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l17
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t393, ptr %t392
  %t394 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 16
  %t395 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l18
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t395, ptr %t394
  %t396 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 17
  %t397 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t397, ptr %t396
  %t398 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 18
  %t399 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l20
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t399, ptr %t398
  %t400 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 19
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t361, ptr %t400
  %t402 = getelementptr %"compiler/typed:Versions", ptr %l92, i32 0, i32 20
  store i1 true, ptr %t402, !tbaa !21
  call void @llvm.memmove.p0.p0.i64(ptr %out, ptr %l92, i64 688, i1 false)
  br label %ret
ret:
  ret void
}

define dso_local %"compiler/typed:leaveWalk" @compiler_2ftyped_3aleaveWalk_2ector(ptr %v0) #0 {
entry:
  %l1 = alloca i64
  %l3 = alloca %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44"
  %rv = alloca %"compiler/typed:leaveWalk"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = ptrtoint ptr %v0 to i64
  store i64 %t1, ptr %l1, !tbaa !24
  %t2 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aleaveWalk_2e0
  br i1 %t2, label %bb1, label %bb2
bb1:
  %t4 = call ptr @__olang_region_make(ptr %v0)
  %t5 = ptrtoint ptr %t4 to i64
  store i64 %t5, ptr %l1, !tbaa !24
  br label %bb2
bb2:
  %t6 = load i64, ptr %l1
  %t7 = inttoptr i64 %t6 to ptr
  %t8 = call %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %t7, i64 0)
  store %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t8, ptr %l3
  br label %bb3
bb3:
  %t9 = load i1, ptr @olang_2esole_2ecompiler_2ftyped_3aleaveWalk_2e0
  br i1 %t9, label %bb4, label %bb5
bb4:
  %t11 = load i64, ptr %l1
  %t12 = inttoptr i64 %t11 to ptr
  %t13 = getelementptr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3, i32 0, i32 0
  %t14 = load { i64, ptr }, ptr %t13
  %t15 = extractvalue { i64, ptr } %t14, 1
  %t16 = call ptr @__olang_region_or(ptr %t15, ptr null)
  %t17 = icmp ne ptr %t16, null
  %t18 = select i1 %t17, ptr %t16, ptr null
  %t19 = icmp eq ptr %t18, %t12
  call void @__olang_region_settle(ptr %t12, i1 %t19)
  br label %bb5
bb5:
  %t20 = load %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44", ptr %l3
  %t22 = insertvalue %"compiler/typed:leaveWalk" undef, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %t20, 0
  store %"compiler/typed:leaveWalk" %t22, ptr %rv
  br label %ret
ret:
  %rr = load %"compiler/typed:leaveWalk", ptr %rv
  ret %"compiler/typed:leaveWalk" %rr
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
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0) #0 {
entry:
  %l1 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %l2 = alloca { i64, ptr }
  %l3 = alloca i64
  %l4 = alloca { i64, ptr }
  %l5 = alloca { i64, ptr }
  %l6 = alloca i64
  %l7 = alloca { i64, ptr }
  %l8 = alloca { i64, ptr }
  %l9 = alloca i64
  %l10 = alloca { i64, ptr }
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %a0
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t2, ptr %l1
  %t3 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
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
  %t19 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 0
  store { i64, ptr } %t18, ptr %t19, !tbaa !27
  %t20 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  %t21 = load { i64, ptr }, ptr %t20, !tbaa !27
  store { i64, ptr } %t21, ptr %l5, !tbaa !27
  %t22 = load { i64, ptr }, ptr %l5, !tbaa !27
  %t23 = extractvalue { i64, ptr } %t22, 0
  store i64 %t23, ptr %l6, !tbaa !24
  %t24 = load i64, ptr %l6, !tbaa !24
  %t25 = mul i64 %t24, 8
  %t26 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t25)
  %t27 = insertvalue { i64, ptr } undef, i64 %t24, 0
  %t28 = insertvalue { i64, ptr } %t27, ptr %t26, 1
  store { i64, ptr } %t28, ptr %l7, !tbaa !27
  %t29 = getelementptr { i64, ptr }, ptr %l7, i32 0, i32 1
  %t30 = load ptr, ptr %t29, !tbaa !27
  %t31 = getelementptr { i64, ptr }, ptr %l5, i32 0, i32 1
  %t32 = load ptr, ptr %t31, !tbaa !27
  %t33 = load i64, ptr %l6, !tbaa !24
  %t34 = mul i64 %t33, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t30, ptr %t32, i64 %t34, i1 false)
  %t35 = load { i64, ptr }, ptr %l7, !tbaa !27
  %t36 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 1
  store { i64, ptr } %t35, ptr %t36, !tbaa !27
  %t37 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  %t38 = load { i64, ptr }, ptr %t37, !tbaa !27
  store { i64, ptr } %t38, ptr %l8, !tbaa !27
  %t39 = load { i64, ptr }, ptr %l8, !tbaa !27
  %t40 = extractvalue { i64, ptr } %t39, 0
  store i64 %t40, ptr %l9, !tbaa !24
  %t41 = load i64, ptr %l9, !tbaa !24
  %t42 = mul i64 %t41, 8
  %t43 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t42)
  %t44 = insertvalue { i64, ptr } undef, i64 %t41, 0
  %t45 = insertvalue { i64, ptr } %t44, ptr %t43, 1
  store { i64, ptr } %t45, ptr %l10, !tbaa !27
  %t46 = getelementptr { i64, ptr }, ptr %l10, i32 0, i32 1
  %t47 = load ptr, ptr %t46, !tbaa !27
  %t48 = getelementptr { i64, ptr }, ptr %l8, i32 0, i32 1
  %t49 = load ptr, ptr %t48, !tbaa !27
  %t50 = load i64, ptr %l9, !tbaa !24
  %t51 = mul i64 %t50, 8
  call void @llvm.memmove.p0.p0.i64(ptr %t47, ptr %t49, i64 %t51, i1 false)
  %t52 = load { i64, ptr }, ptr %l10, !tbaa !27
  %t53 = getelementptr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1, i32 0, i32 2
  store { i64, ptr } %t52, ptr %t53, !tbaa !27
  %t54 = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %l1
  store %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %t54, ptr %rv
  br label %ret
ret:
  %rr = load %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262", ptr %rv
  ret %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" %rr
}

@__olang_prog_scope = external thread_local(initialexec) global ptr
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
declare noalias ptr @__olang_scope_alloc_zeroed(ptr, i64)
declare ptr @__olang_scope_or(ptr, ptr)
define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e(ptr %v0, ptr %a0) #0 {
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
  %t8 = mul i64 %t7, 40
  %t9 = call ptr @__olang_scope_alloc(ptr %v0, i64 %t8)
  %t10 = insertvalue { i64, ptr } undef, i64 %t7, 0
  %t11 = insertvalue { i64, ptr } %t10, ptr %t9, 1
  store { i64, ptr } %t11, ptr %l4, !tbaa !27
  %t12 = getelementptr { i64, ptr }, ptr %l4, i32 0, i32 1
  %t13 = load ptr, ptr %t12, !tbaa !27
  %t14 = getelementptr { i64, ptr }, ptr %l2, i32 0, i32 1
  %t15 = load ptr, ptr %t14, !tbaa !27
  %t16 = load i64, ptr %l3, !tbaa !24
  %t17 = mul i64 %t16, 40
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0) #0 {
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

define linkonce_odr %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @olang_2emir_2eHelperKind_2eCopy_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e(ptr %v0, ptr %a0) #0 {
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

declare void @__olang_bang_failed_plain(ptr) cold noreturn
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
@olang_2esole_2ecompiler__2ftyped__2ecompiler__2ftyped__3aholdWalk__2efnVal_2elocal_2e2 = weak hidden constant i1 false
declare ptr @__olang_region_make(ptr) noinline
declare ptr @__olang_region_or(ptr, ptr)
declare void @__olang_region_settle(ptr, i1)
declare void @__olang_region_drop(ptr) noinline
@.d0 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"_" }>, align 8
@.d1 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(lit " }>, align 8
@.d2 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
declare i64 @__olang_fmt_i64(ptr, i64)
@.d3 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
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
@.d4 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(data " }>, align 8
@.d5 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d6 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d7 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d8 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d9 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(read " }>, align 8
@.d10 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d11 = private constant <{ i64, [8 x i8] }> <{ i64 0, [8 x i8] c"(borrow " }>, align 8
@.d12 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d13 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d14 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(take " }>, align 8
@.d15 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d16 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"(promote " }>, align 8
@.d17 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d18 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d19 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d20 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(call " }>, align 8
@.d21 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d22 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d23 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aMakeKind(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 5}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d58, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d58, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d59, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d59, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d60, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d60, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d61, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d61, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d62, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d62, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
ret:
  ret void
}

declare void @__olang_sb_done(ptr)
@.d24 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(make " }>, align 8
@.d25 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d26 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d27 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c"(collect " }>, align 8
@.d28 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d29 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aPrimOp(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 52}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 i64 3, label %bb5 i64 4, label %bb6 i64 5, label %bb7 i64 6, label %bb8 i64 7, label %bb9 i64 8, label %bb10 i64 9, label %bb11 i64 10, label %bb12 i64 11, label %bb13 i64 12, label %bb14 i64 13, label %bb15 i64 14, label %bb16 i64 15, label %bb17 i64 16, label %bb18 i64 17, label %bb19 i64 18, label %bb20 i64 19, label %bb21 i64 20, label %bb22 i64 21, label %bb23 i64 22, label %bb24 i64 23, label %bb25 i64 24, label %bb26 i64 25, label %bb27 i64 26, label %bb28 i64 27, label %bb29 i64 28, label %bb30 i64 29, label %bb31 i64 30, label %bb32 i64 31, label %bb33 i64 32, label %bb34 i64 33, label %bb35 i64 34, label %bb36 i64 35, label %bb37 i64 36, label %bb38 i64 37, label %bb39 i64 38, label %bb40 i64 39, label %bb41 i64 40, label %bb42 i64 41, label %bb43 i64 42, label %bb44 i64 43, label %bb45 i64 44, label %bb46 i64 45, label %bb47 i64 46, label %bb48 i64 47, label %bb49 i64 48, label %bb50 i64 49, label %bb51 i64 50, label %bb52 i64 51, label %bb53 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d63, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d63, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d64, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d64, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d65, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d65, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
bb5:
  %t11 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d66, i32 0, i32 1) }, 1
  %t12 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d66, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t11, i64 %t12)
  br label %bb1
bb6:
  %t13 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d67, i32 0, i32 1) }, 1
  %t14 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d67, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t13, i64 %t14)
  br label %bb1
bb7:
  %t15 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d68, i32 0, i32 1) }, 1
  %t16 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d68, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t15, i64 %t16)
  br label %bb1
bb8:
  %t17 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d69, i32 0, i32 1) }, 1
  %t18 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d69, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t17, i64 %t18)
  br label %bb1
bb9:
  %t19 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d70, i32 0, i32 1) }, 1
  %t20 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d70, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t19, i64 %t20)
  br label %bb1
bb10:
  %t21 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d71, i32 0, i32 1) }, 1
  %t22 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d71, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t21, i64 %t22)
  br label %bb1
bb11:
  %t23 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d72, i32 0, i32 1) }, 1
  %t24 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d72, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t23, i64 %t24)
  br label %bb1
bb12:
  %t25 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d73, i32 0, i32 1) }, 1
  %t26 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d73, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t25, i64 %t26)
  br label %bb1
bb13:
  %t27 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d74, i32 0, i32 1) }, 1
  %t28 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d74, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t27, i64 %t28)
  br label %bb1
bb14:
  %t29 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d75, i32 0, i32 1) }, 1
  %t30 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d75, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t29, i64 %t30)
  br label %bb1
bb15:
  %t31 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d76, i32 0, i32 1) }, 1
  %t32 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d76, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t31, i64 %t32)
  br label %bb1
bb16:
  %t33 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d77, i32 0, i32 1) }, 1
  %t34 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d77, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t33, i64 %t34)
  br label %bb1
bb17:
  %t35 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d78, i32 0, i32 1) }, 1
  %t36 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d78, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t35, i64 %t36)
  br label %bb1
bb18:
  %t37 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d79, i32 0, i32 1) }, 1
  %t38 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d79, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t37, i64 %t38)
  br label %bb1
bb19:
  %t39 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d80, i32 0, i32 1) }, 1
  %t40 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d80, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t39, i64 %t40)
  br label %bb1
bb20:
  %t41 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d81, i32 0, i32 1) }, 1
  %t42 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d81, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t41, i64 %t42)
  br label %bb1
bb21:
  %t43 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) }, 1
  %t44 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d82, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t43, i64 %t44)
  br label %bb1
bb22:
  %t45 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d83, i32 0, i32 1) }, 1
  %t46 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d83, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t45, i64 %t46)
  br label %bb1
bb23:
  %t47 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d84, i32 0, i32 1) }, 1
  %t48 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d84, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t47, i64 %t48)
  br label %bb1
bb24:
  %t49 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d85, i32 0, i32 1) }, 1
  %t50 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d85, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t49, i64 %t50)
  br label %bb1
bb25:
  %t51 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d86, i32 0, i32 1) }, 1
  %t52 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d86, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t51, i64 %t52)
  br label %bb1
bb26:
  %t53 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d87, i32 0, i32 1) }, 1
  %t54 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d87, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t53, i64 %t54)
  br label %bb1
bb27:
  %t55 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d88, i32 0, i32 1) }, 1
  %t56 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d88, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t55, i64 %t56)
  br label %bb1
bb28:
  %t57 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d89, i32 0, i32 1) }, 1
  %t58 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d89, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t57, i64 %t58)
  br label %bb1
bb29:
  %t59 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d90, i32 0, i32 1) }, 1
  %t60 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d90, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t59, i64 %t60)
  br label %bb1
bb30:
  %t61 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d91, i32 0, i32 1) }, 1
  %t62 = extractvalue { i64, ptr } { i64 30, ptr getelementptr inbounds (<{ i64, [30 x i8] }>, ptr @.d91, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t61, i64 %t62)
  br label %bb1
bb31:
  %t63 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d92, i32 0, i32 1) }, 1
  %t64 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d92, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t63, i64 %t64)
  br label %bb1
bb32:
  %t65 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d93, i32 0, i32 1) }, 1
  %t66 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d93, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t65, i64 %t66)
  br label %bb1
bb33:
  %t67 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d94, i32 0, i32 1) }, 1
  %t68 = extractvalue { i64, ptr } { i64 25, ptr getelementptr inbounds (<{ i64, [25 x i8] }>, ptr @.d94, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t67, i64 %t68)
  br label %bb1
bb34:
  %t69 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d95, i32 0, i32 1) }, 1
  %t70 = extractvalue { i64, ptr } { i64 26, ptr getelementptr inbounds (<{ i64, [26 x i8] }>, ptr @.d95, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t69, i64 %t70)
  br label %bb1
bb35:
  %t71 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d96, i32 0, i32 1) }, 1
  %t72 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d96, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t71, i64 %t72)
  br label %bb1
bb36:
  %t73 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d97, i32 0, i32 1) }, 1
  %t74 = extractvalue { i64, ptr } { i64 23, ptr getelementptr inbounds (<{ i64, [23 x i8] }>, ptr @.d97, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t73, i64 %t74)
  br label %bb1
bb37:
  %t75 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d98, i32 0, i32 1) }, 1
  %t76 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d98, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t75, i64 %t76)
  br label %bb1
bb38:
  %t77 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d99, i32 0, i32 1) }, 1
  %t78 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d99, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t77, i64 %t78)
  br label %bb1
bb39:
  %t79 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d100, i32 0, i32 1) }, 1
  %t80 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d100, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t79, i64 %t80)
  br label %bb1
bb40:
  %t81 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d101, i32 0, i32 1) }, 1
  %t82 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d101, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t81, i64 %t82)
  br label %bb1
bb41:
  %t83 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d102, i32 0, i32 1) }, 1
  %t84 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d102, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t83, i64 %t84)
  br label %bb1
bb42:
  %t85 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d103, i32 0, i32 1) }, 1
  %t86 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d103, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t85, i64 %t86)
  br label %bb1
bb43:
  %t87 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d104, i32 0, i32 1) }, 1
  %t88 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d104, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t87, i64 %t88)
  br label %bb1
bb44:
  %t89 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d105, i32 0, i32 1) }, 1
  %t90 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d105, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t89, i64 %t90)
  br label %bb1
bb45:
  %t91 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d106, i32 0, i32 1) }, 1
  %t92 = extractvalue { i64, ptr } { i64 24, ptr getelementptr inbounds (<{ i64, [24 x i8] }>, ptr @.d106, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t91, i64 %t92)
  br label %bb1
bb46:
  %t93 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d107, i32 0, i32 1) }, 1
  %t94 = extractvalue { i64, ptr } { i64 18, ptr getelementptr inbounds (<{ i64, [18 x i8] }>, ptr @.d107, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t93, i64 %t94)
  br label %bb1
bb47:
  %t95 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d108, i32 0, i32 1) }, 1
  %t96 = extractvalue { i64, ptr } { i64 20, ptr getelementptr inbounds (<{ i64, [20 x i8] }>, ptr @.d108, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t95, i64 %t96)
  br label %bb1
bb48:
  %t97 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d109, i32 0, i32 1) }, 1
  %t98 = extractvalue { i64, ptr } { i64 22, ptr getelementptr inbounds (<{ i64, [22 x i8] }>, ptr @.d109, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t97, i64 %t98)
  br label %bb1
bb49:
  %t99 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d110, i32 0, i32 1) }, 1
  %t100 = extractvalue { i64, ptr } { i64 21, ptr getelementptr inbounds (<{ i64, [21 x i8] }>, ptr @.d110, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t99, i64 %t100)
  br label %bb1
bb50:
  %t101 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d111, i32 0, i32 1) }, 1
  %t102 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d111, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t101, i64 %t102)
  br label %bb1
bb51:
  %t103 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d112, i32 0, i32 1) }, 1
  %t104 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d112, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t103, i64 %t104)
  br label %bb1
bb52:
  %t105 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d113, i32 0, i32 1) }, 1
  %t106 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d113, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t105, i64 %t106)
  br label %bb1
bb53:
  %t107 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d114, i32 0, i32 1) }, 1
  %t108 = extractvalue { i64, ptr } { i64 19, ptr getelementptr inbounds (<{ i64, [19 x i8] }>, ptr @.d114, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t107, i64 %t108)
  br label %bb1
ret:
  ret void
}

define linkonce_odr void @olang_2emir_2eHelperKind_2eRender_2ecompiler_2ftyped_3aCheck(ptr %v0, ptr %a0, i64 %a1) #0 {
entry:
  %l1 = alloca i64
  store i64 %a1, ptr %l1
  br label %start
start:
  br label %bb0
bb0:
  %t2 = load i32, ptr %a0, !range !{i32 0, i32 3}
  %t3 = sext i32 %t2 to i64
  switch i64 %t3, label %bb1 [ i64 0, label %bb2 i64 1, label %bb3 i64 2, label %bb4 ]
bb1:
  br label %ret
bb2:
  %t5 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d115, i32 0, i32 1) }, 1
  %t6 = extractvalue { i64, ptr } { i64 16, ptr getelementptr inbounds (<{ i64, [16 x i8] }>, ptr @.d115, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t5, i64 %t6)
  br label %bb1
bb3:
  %t7 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d116, i32 0, i32 1) }, 1
  %t8 = extractvalue { i64, ptr } { i64 17, ptr getelementptr inbounds (<{ i64, [17 x i8] }>, ptr @.d116, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t7, i64 %t8)
  br label %bb1
bb4:
  %t9 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d117, i32 0, i32 1) }, 1
  %t10 = extractvalue { i64, ptr } { i64 15, ptr getelementptr inbounds (<{ i64, [15 x i8] }>, ptr @.d117, i32 0, i32 1) }, 0
  call void @__olang_sb_put(ptr %v0, ptr %t9, i64 %t10)
  br label %bb1
ret:
  ret void
}

@.d30 = private constant <{ i64, [0 x i8] }> <{ i64 0, [0 x i8] c"" }>, align 8
@.d31 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d32 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c"(" }>, align 8
@.d33 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d34 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d35 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"(slice " }>, align 8
@.d36 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d37 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d38 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(cond " }>, align 8
@.d39 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d40 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d41 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(seq " }>, align 8
@.d42 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d43 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d44 = private constant <{ i64, [7 x i8] }> <{ i64 0, [7 x i8] c"(match " }>, align 8
@.d45 = private constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c" arms, nomatch " }>, align 8
@.d46 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d47 = private constant <{ i64, [5 x i8] }> <{ i64 0, [5 x i8] c"(try " }>, align 8
@.d48 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d49 = private constant <{ i64, [9 x i8] }> <{ i64 0, [9 x i8] c" clauses)" }>, align 8
@.d50 = private constant <{ i64, [4 x i8] }> <{ i64 0, [4 x i8] c"(fn " }>, align 8
@.d51 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d52 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(text " }>, align 8
@.d53 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c" site " }>, align 8
@.d54 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@.d55 = private constant <{ i64, [6 x i8] }> <{ i64 0, [6 x i8] c"(away " }>, align 8
@.d56 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c" " }>, align 8
@.d57 = private constant <{ i64, [1 x i8] }> <{ i64 0, [1 x i8] c")" }>, align 8
@olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aContractInfo_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e2 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e3 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e4 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e5 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e7 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e8 = weak hidden constant i1 false
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

@olang_2esole_2ecompiler_2ftyped_3aVersions_2e9 = weak hidden constant i1 false
define linkonce_odr %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @olang_2emir_2eHelperKind_2eZero_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e(ptr %v0) #0 {
entry:
  %l0 = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  %rv = alloca %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262"
  br label %start
start:
  br label %bb0
bb0:
  %t1 = call %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)
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

@olang_2esole_2ecompiler_2ftyped_3aVersions_2e10 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e11 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e12 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e14 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e15 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e16 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e17 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e18 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aVersions_2e19 = weak hidden constant i1 false
@olang_2esole_2ecompiler_2ftyped_3aleaveWalk_2e0 = weak hidden constant i1 false
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
@.d58 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.MakeKind.Tuple" }>, align 8
declare void @__olang_sb_put(ptr, ptr, i64)
@.d59 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.MakeKind.Case" }>, align 8
@.d60 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.MakeKind.Array" }>, align 8
@.d61 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.MakeKind.Fill" }>, align 8
@.d62 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.MakeKind.Copy" }>, align 8
@.d63 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Neg" }>, align 8
@.d64 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitNot" }>, align 8
@.d65 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Not" }>, align 8
@.d66 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Add" }>, align 8
@.d67 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Sub" }>, align 8
@.d68 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Mul" }>, align 8
@.d69 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Div" }>, align 8
@.d70 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Rem" }>, align 8
@.d71 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shl" }>, align 8
@.d72 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Shr" }>, align 8
@.d73 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitAnd" }>, align 8
@.d74 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.BitOr" }>, align 8
@.d75 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.BitXor" }>, align 8
@.d76 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Eq" }>, align 8
@.d77 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ne" }>, align 8
@.d78 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Lt" }>, align 8
@.d79 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Le" }>, align 8
@.d80 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Gt" }>, align 8
@.d81 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.PrimOp.Ge" }>, align 8
@.d82 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Same" }>, align 8
@.d83 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Convert" }>, align 8
@.d84 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.Bitcast" }>, align 8
@.d85 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.PrimOp.Len" }>, align 8
@.d86 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.IsCase" }>, align 8
@.d87 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicLoad" }>, align 8
@.d88 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AtomicStore" }>, align 8
@.d89 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.AtomicAdd" }>, align 8
@.d90 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.AtomicSwap" }>, align 8
@.d91 = private unnamed_addr constant <{ i64, [30 x i8] }> <{ i64 0, [30 x i8] c"typed.PrimOp.AtomicCompareSwap" }>, align 8
@.d92 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Retire" }>, align 8
@.d93 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.PrimOp.Drop" }>, align 8
@.d94 = private unnamed_addr constant <{ i64, [25 x i8] }> <{ i64 0, [25 x i8] c"typed.PrimOp.LeadingZeros" }>, align 8
@.d95 = private unnamed_addr constant <{ i64, [26 x i8] }> <{ i64 0, [26 x i8] c"typed.PrimOp.TrailingZeros" }>, align 8
@.d96 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.PopCount" }>, align 8
@.d97 = private unnamed_addr constant <{ i64, [23 x i8] }> <{ i64 0, [23 x i8] c"typed.PrimOp.RotateLeft" }>, align 8
@.d98 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.RotateRight" }>, align 8
@.d99 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ByteSwap" }>, align 8
@.d100 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.Holds" }>, align 8
@.d101 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.LaneLen" }>, align 8
@.d102 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.NonEmpty" }>, align 8
@.d103 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Unpack" }>, align 8
@.d104 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.Repack" }>, align 8
@.d105 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.AnyMake" }>, align 8
@.d106 = private unnamed_addr constant <{ i64, [24 x i8] }> <{ i64 0, [24 x i8] c"typed.PrimOp.AnyInstance" }>, align 8
@.d107 = private unnamed_addr constant <{ i64, [18 x i8] }> <{ i64 0, [18 x i8] c"typed.PrimOp.AnyIs" }>, align 8
@.d108 = private unnamed_addr constant <{ i64, [20 x i8] }> <{ i64 0, [20 x i8] c"typed.PrimOp.ErrPush" }>, align 8
@.d109 = private unnamed_addr constant <{ i64, [22 x i8] }> <{ i64 0, [22 x i8] c"typed.PrimOp.ErrCaught" }>, align 8
@.d110 = private unnamed_addr constant <{ i64, [21 x i8] }> <{ i64 0, [21 x i8] c"typed.PrimOp.ErrTaken" }>, align 8
@.d111 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatAdd" }>, align 8
@.d112 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatSub" }>, align 8
@.d113 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatMul" }>, align 8
@.d114 = private unnamed_addr constant <{ i64, [19 x i8] }> <{ i64 0, [19 x i8] c"typed.PrimOp.SatShl" }>, align 8
@.d115 = private unnamed_addr constant <{ i64, [16 x i8] }> <{ i64 0, [16 x i8] c"typed.Check.None" }>, align 8
@.d116 = private unnamed_addr constant <{ i64, [17 x i8] }> <{ i64 0, [17 x i8] c"typed.Check.Abort" }>, align 8
@.d117 = private unnamed_addr constant <{ i64, [15 x i8] }> <{ i64 0, [15 x i8] c"typed.Check.Try" }>, align 8
@olang_loc_4e05db95f2fd54c5_981a3a3cc6318dd9 = external constant [0 x i8]
declare void @compiler_2ftyped_2eDropHolding_2eholding(ptr %out, ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1, i1 %a2)
declare void @compiler_2ftyped_3adropWalk_2ector(ptr %out, ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2efind(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i64 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eLen_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
@olang_loc_bcb9fe3b91f750d3_ca64047ead3323e7 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eholdsOwned(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
@G_2ecompiler_2ftyped_2enoCallbackNames = external constant <{ [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr, [8 x i8], ptr }>
declare i1 @std_2fprelude_2farray_2eArray_3cstd_2fprelude_2ftext_3aString_26_3e_2eHas_3cstd_2fprelude_2ftext_3aString_26_3e(ptr %v0, ptr %v1, { i64, ptr } %a0, { i64, ptr } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2eLen_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eLen_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScopeVar_3e_2eLen_3ccompiler_2ftyped_3aScopeVar_3e(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_3aPlan_2ector(ptr %out, ptr %v0, i64 %a0, i64 %a1, i64 %a2)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRepr(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eKindOf(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eLength(ptr %v0, ptr %a0, i32 %a1)
declare i32 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eParts(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eItems(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_ecb034f719e18c1b_985175307bfdc34f = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eBreaksOut(ptr %v0, ptr %a0, i32 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2ePush_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, %"compiler/typed:Local" %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aSiteInfo_3e_2ePush_3ccompiler_2ftyped_3aSiteInfo_3e(ptr %v0, ptr %a0, %"compiler/typed:SiteInfo" %a1)
@olang_loc_6690d985632b6de7_b13460b3c8232d4b = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3alandLoop_3e_2eLen_3ccompiler_2ftyped_3alandLoop_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePush_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePush_3cBool_3e(ptr %v0, ptr %a0, i1 %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eLen_3cI64_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20Bool_3e_2ePut_3cI64_2c_20Bool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ePut_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_e933c796b27591a8_e869c9717a33729c = external constant [0 x i8]
declare %"compiler/typed:landState" @compiler_2ftyped_3alandState_2ector(ptr %v0, ptr %v1, { i64, ptr } %a0, i1 %a1)
declare i64 @std_2fprelude_2fnumber_2eI64_2eMax_3cI64_3e(i64 %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLastUses_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4860703a134569c9_d00fc34d053d5355 = external constant [0 x i8]
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eSetAt_3cBool_3e(ptr %v0, ptr %a0, i64 %a1, i1 %a2)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2evalueRoot(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aLvalue_2eType(ptr %v0, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eIsRef(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2escalarField(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ePush_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2ewrite(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, i1 %a2)
declare i64 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2ePermOf(ptr %v0, ptr %a0, i32 %a1)
@G_2ecompiler_2ftypes_2eWritable = available_externally constant <{ [8 x i8] }> <{ [8 x i8] c"\01\00\00\00\00\00\00\00" }>, align 8
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erefLocal(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_b9f0b2a15b6670eb_2e1d369e87bd8cdf = external constant [0 x i8]
declare %"compiler/typed:Local" @compiler_2ftyped_2ecompiler_2ftyped_3aBody_2eLocal(ptr %v0, ptr %a0, i32 %a1)
@olang_loc_5437ab06fdd2422a_119d1d559b7fc05e = external constant [0 x i8]
@olang_loc_ef0de602c5122041_f82f60a1eb2bb195 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eexpr(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, { i64, [1 x i64] } %a2)
@olang_loc_572ff0c594eb7d28_3eb561bfca5d9eb4 = external constant [0 x i8]
@olang_loc_dac0899521d00a27_f5966ad5b7471ec3 = external constant [0 x i8]
@olang_loc_43639d7480e3f1b2_6970610da298d01e = external constant [0 x i8]
@olang_loc_13022d0d55ff9b33_d1cf61a4f0453a9f = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2erootOf(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4f6de7c744c3571c_6f8dca6bf99a5cd8 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aLocalUses_2eescape(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eSetAt_3cI64_3e(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
@olang_loc_2bdab9da3f4d_ded05e4518f32fa9 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eLen_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %a0)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eAt_3ccompiler_2ftyped_3aExpr_26_3e(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3ccompiler_2_Hb773ac01a07f3f9e7f749c328573d0ee(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aDerivedArg_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eSetAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0, i64 %a1, { i64, [2 x i64] } %a2)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2ePush_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0, { i64, [2 x i64] } %a1)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eLen_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cc_Hca132088ebdf08d0820c179196416125(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i64, [2 x i64] } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aScope_3e_2eAt_3ccompiler_2ftyped_3aScope_3e(ptr %v0, ptr %a0, i64 %a1)
@olang_loc_d42dce2e5a8639a6_22ec82fe09d5fbba = external constant [0 x i8]
declare { i32, i64 } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eGet_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eHas_3cI64_2c_20I64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cI64_3e_2ector(ptr %v0, i64 %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eClear_3cI64_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eClear_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eClear_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eCle_H9e31dbf06df58c38226424712d120dfe(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eClear_3cBool_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2eClear_3cI64_2c_20I64_3e(ptr %v0, ptr %a0)
declare %"compiler/source:Span" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2eAt_3ccompiler_2fsource_3aSpan_3e(ptr %v0, ptr %a0, i64 %a1)
declare i32 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eAt_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i64 %a1)
declare ptr @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2eAt__H2e4a6474e10b73ca754517844b8d7700(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eaddDef(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, i32 %a3, ptr %a4, i1 %a5)
declare i1 @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hbd09c84b003bb96b764c8a61b7f32193(ptr %v0, ptr %a0, i64 %a1)
declare void @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_H5b4ed7dba3fb4e44f8784ebbf4461977(ptr %v0, ptr %v1, ptr %a0, i64 %a1, %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" %a2)
declare { i32, ptr } @std_2fprelude_2fmap_2estd_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI_Hdc84c10e1af960a666eeb267120f3ec3(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
@olang_loc_59830ee0ec754a32_f5aff824d93b155e = external constant [0 x i8]
@olang_loc_b8ff85e818b1a126_11cf17c421c4721a = external constant [0 x i8]
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edead(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eexpr(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erecord(ptr %v0, ptr %v1, ptr %a0, i64 %a1, ptr %a2, i64 %a3)
declare %"compiler/typed:Local" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aLocal_3e_2eAt_3ccompiler_2ftyped_3aLocal_3e(ptr %v0, ptr %a0, i64 %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2edefine(ptr %v0, ptr %v1, ptr %a0, %"compiler/source:Span" %a1, i64 %a2, ptr %a3, i1 %a4)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eplace(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eend(ptr %v0, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2erestore(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eblock(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2emeet(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eloop(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1, ptr %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2ejump(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2elater(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aVersions_2eclauses(ptr %v0, ptr %v1, ptr %v2, ptr %a0, { i64, ptr } %a1, ptr %a2, i1 %a3)
@olang_loc_89804b2e92d33dd7_8d0f976d28b858c3 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eparamBit(ptr %v0, ptr %v1, ptr %a0, i32 %a1)
@olang_loc_34c65fd26df9bfcd_2dc4d2164b9a2f69 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2eplaceRoots(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aViewWalk_2earrayValue(ptr %v0, ptr %v1, ptr %v2, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ePassesRefs(i32 %a0)
@olang_loc_859ef9a416eafd63_e1a98b601ef27d27 = external constant [0 x i8]
@olang_loc_21fa85d53b5eac7b_5a0125da6c5c013f = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2estmt(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i32, i64 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2ePop_3cI64_3e(ptr %v0, ptr %a0)
@olang_loc_17c315ca28f40c4c_14b80e258f8c2b0 = external constant [0 x i8]
@olang_loc_db2d0e7e8bf65551_fc4da676f7c58ce5 = external constant [0 x i8]
@olang_loc_6fe9eb3ff5642bc1_33392e6f48613205 = external constant [0 x i8]
@olang_loc_5f1ddc7ef7469727_e10177d23ca0510b = external constant [0 x i8]
@olang_loc_24a3ccdd47c97c70_8558c77bc7af118c = external constant [0 x i8]
@olang_loc_130a89b2782f12a5_38e9334e27b56d91 = external constant [0 x i8]
@olang_loc_1916e27cc0da8fc5_b948d7408e366d01 = external constant [0 x i8]
@olang_loc_567e5689d7ac5ccb_d57870be630e767 = external constant [0 x i8]
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2eLen_3cBool_3e(ptr %v0, ptr %a0)
declare i64 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2eLen_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
declare void @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePush_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2esave(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2erestore(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2eloopState(ptr %v0, ptr %v1, ptr %a0, i1 %a1, i64 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3adropWalk_2ejoin(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i32, i32 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ePop_3ccompiler_2ftyped_3aBlockId_3e(ptr %v0, ptr %a0)
@olang_loc_1a9a85648681e97_fcf9d2fab7c32a6b = external constant [0 x i8]
@olang_loc_54fd08b205476dc4_657f8db756d05b08 = external constant [0 x i8]
@olang_loc_923c0e7922172d2c_3d5b7ddd1cd85e60 = external constant [0 x i8]
@olang_loc_3398753e62525e0a_a26aec7fb7dfed8e = external constant [0 x i8]
@olang_loc_8b9fe86f9939495b_ac6312ba480f0d67 = external constant [0 x i8]
@olang_loc_3f464ddbb91b0a38_82918aeeacdcc614 = external constant [0 x i8]
@olang_loc_29167372d5c184b0_5aaac5f2b3f16f1c = external constant [0 x i8]
@olang_loc_18d2a0b724f39c7e_37ab118f04dce49a = external constant [0 x i8]
declare { i32, i1 } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cBool_3e_2ePop_3cBool_3e(ptr %v0, ptr %a0)
@olang_loc_fb0720d2dfee7f_1f99818eb62f02f3 = external constant [0 x i8]
@olang_loc_3cd7aa482e25463c_a46dd5e6d10de4a0 = external constant [0 x i8]
@olang_loc_65fecb72da6e9be9_e6833fce5f1f4ea5 = external constant [0 x i8]
@olang_loc_313fe9555679a06f_fa589a226c49c6eb = external constant [0 x i8]
@olang_loc_f3df993f4c7e1fd4_8419908bae6ac650 = external constant [0 x i8]
@olang_loc_e306d5ccad957c29_6b95b0de26f94a45 = external constant [0 x i8]
@olang_loc_d73b6870bbe51a4d_d845c63f23993221 = external constant [0 x i8]
@olang_loc_2545ce011bc2e3f3_a4cac8bc0a2d8747 = external constant [0 x i8]
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eblock(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2erefs(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %v4, ptr %a0, ptr %a1)
declare i1 @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cI64_3e_2eHas_3cI64_3e(ptr %v0, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3cstd_2fprelude_2fvec_3aVec_3cI64_3e_3e__H7b6d4eff6fc9c3821aae8b284e12e095(ptr %v0, ptr %v1, ptr %a0, i64 %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2ector(ptr %v0, i64 %a0)
declare void @compiler_2ftyped_2eunion(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare { i64, ptr } @std_2fprelude_2fvec_2estd_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_26_3e_2eToArra_H50cbff9caa8a2389caf3e92da7e24507(ptr %v0, ptr %v1, ptr %a0)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2emix(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, { i64, ptr } %a1)
@olang_loc_3d59d966d65a5e81_dc9cdefe852f3965 = external constant [0 x i8]
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2estTy(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i64 %a1)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eRefInto(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
declare void @compiler_2ftyped_2ecompiler_2ftyped_3aholdWalk_2eadd(ptr %v0, ptr %a0, i64 %a1, i64 %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eexprLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2eblockLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare i32 @compiler_2ftyped_2ecompiler_2ftyped_3aExpr_2eType(ptr %v0, ptr %a0)
declare { i64, ptr } @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eCanon(ptr %v0, ptr %v1, ptr %v2, ptr %a0, i32 %a1)
declare { i64, ptr } @compiler_2ftyped_2econstText(ptr %v0, ptr %v1, ptr %a0)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2eplace(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftyped_2ecompiler_2ftyped_3aprinter_2ecallee(ptr %v0, ptr %v1, ptr %v2, ptr %v3, ptr %a0, ptr %a1)
declare { i64, ptr } @compiler_2ftyped_2eshort(ptr %v0, ptr %v1, { i64, ptr } %a0)
@olang_loc_a4fa64762613be8a_d12da9b666f393e6 = external constant [0 x i8]
@olang_loc_a387a9465b9f2118_49b9af8105801174 = external constant [0 x i8]
declare %"std/prelude/text:StringBuilder" @std_2fprelude_2ftext_3aStringBuilder_2ector(ptr %v0)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePushChar(ptr %v0, ptr %a0, i8 %a1)
declare void @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2ePush(ptr %v0, ptr %v1, ptr %a0, { i64, ptr } %a1)
declare { i64, ptr } @std_2fprelude_2ftext_2estd_2fprelude_2ftext_3aStringBuilder_2eToString(ptr %v0, ptr %v1, ptr %a0)
declare i1 @compiler_2ftypes_2ecompiler_2ftypes_3aTable_2eSame(ptr %v0, ptr %a0, i32 %a1, i32 %a2)
@olang_loc_8a62bacdff20949b_383b5959755ced57 = external constant [0 x i8]
declare i64 @compiler_2ftyped_2ewholeLocal(ptr %v0, ptr %a0)
@olang_loc_c89b2ac703a55b51_f16b1206186d62d = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eplaceBreaks(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2ecalleeBreaks(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2eexprsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2ftyped_2estmtsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2ftyped_2earmsBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_ef1bdab68bcf0283_bb587b6d5639fda7 = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eclausesBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
declare i1 @compiler_2ftyped_2efnBreaks(ptr %v0, ptr %a0, i32 %a1)
declare i1 @compiler_2ftyped_2epiecesBreak(ptr %v0, { i64, ptr } %a0, i32 %a1)
@olang_loc_b091697a8707c61b_ed3e4d18c76feebf = external constant [0 x i8]
declare i64 @compiler_2ftyped_2eDropHolder(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
@olang_loc_4baf654831ed8d80_eee61e02aec284c4 = external constant [0 x i8]
@olang_loc_f3eab8194bd11e66_e0240e140d7ed92a = external constant [0 x i8]
declare ptr @compiler_2ftyped_2eBlock_2ewithin(ptr %v0, ptr %v1, ptr %a0)
@olang_loc_4d8d49a96eb287ee_1dbcd98d7cba02aa = external constant [0 x i8]
declare i1 @compiler_2ftyped_2eholdsWritableRef(ptr %v0, ptr %a0, i32 %a1, i64 %a2)
declare i1 @compiler_2ftyped_2ecompiler_2ftyped_3aleaveWalk_2estmtLeaves(ptr %v0, ptr %v1, ptr %a0, ptr %a1)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2fsource_3aSpan_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cstd_2fprelude_2ftext_3aString_26_3e_2ector(ptr %v0, i64 %a0)
@olang_loc_a650b38034a5180c_4858ad52e7b771b8 = external constant [0 x i8]
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aBlockId_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3ccompiler_2ftyped_3aExpr_3f_26_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/vec:Vec.64e7ca1f48df489627458d7bcd916e44" @std_2fprelude_2fvec_3aVec_3cBool_3e_2ector(ptr %v0, i64 %a0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20I64_3e_2ector(ptr %v0)
declare %"std/prelude/map:Map.38ecd5291a2eac158a479efae74bd262" @std_2fprelude_2fmap_3aMap_3cI64_2c_20std_2fprelude_2fvec_3aVec_3cI64_3e_3e_2ector(ptr %v0)

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
